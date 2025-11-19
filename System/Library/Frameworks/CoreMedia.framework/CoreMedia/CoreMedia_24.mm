size_t FigHEVCBridge_GetSPS_VUI_NCLC()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_10_13(*MEMORY[0x1E69E9840], v3, v4, v5, v6, v7);
  result = OUTLINED_FUNCTION_13_10();
  if (!result)
  {
    OUTLINED_FUNCTION_93();
    v1 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v1, v2);
    if (!result)
    {
      return 4294954584;
    }
  }

  return result;
}

size_t FigHEVCBridge_GetNALUnitHeader(uint64_t a1, uint64_t a2, _DWORD *a3, const char **a4, _DWORD *a5, _DWORD *a6)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_84(v24);
  OUTLINED_FUNCTION_78();
  LOWORD(v44) = 1;
  result = OUTLINED_FUNCTION_46_0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24[0], v24[1], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, a1, a2, 0, a1 + a2, v43[4], v44, a1, a1, v45, v46, v47, v48, v49);
  if (!result)
  {
    LOBYTE(v28) = 7;
    v24[0] = &v22;
    v25 = hevcbridgeGetNALUnitHeaderCallbackUnsigned;
    result = hevcbridgeParseNALUnit(v43, v24);
    if (!result)
    {
      if (a3)
      {
        *a3 = v22;
      }

      if (a4)
      {
        if (v22 > 0x3F)
        {
          v21 = "?";
        }

        else
        {
          v21 = nalUnitTypeString[v22];
        }

        *a4 = v21;
      }

      if (a5)
      {
        *a5 = HIDWORD(v22);
      }

      result = 0;
      if (a6)
      {
        *a6 = v23 - 1;
      }
    }
  }

  return result;
}

void FigHEVCBridge_GetVPSAlphaChannelNuhLayerId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t (*a12)(uint64_t a1, int a2, int a3), uint64_t (*a13)(uint64_t a1, int a2, unsigned int a3), uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31, uint64_t a32, uint64_t a33, __int16 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_111();
  a49 = v54;
  a50 = v55;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_59_0(&a30);
  bzero((v56 + 24), 0x88uLL);
  a10 = 0;
  *&a30 = v53;
  *(&a30 + 1) = v52;
  a31 = 0;
  a32 = v53 + v52;
  a34 = 1;
  a35 = v53;
  a36 = v53;
  if (!OUTLINED_FUNCTION_14_11())
  {
    LOBYTE(a16) = 1;
    *(&a16 + 4) = 50397184;
    a11 = &a10;
    a12 = hevcbridgeGetVPSAlphaChannelNuhLayerIdCallbackFlag;
    a13 = hevcbridgeGetVPSAlphaChannelNuhLayerIdCallbackUnsigned;
    v57 = OUTLINED_FUNCTION_47_0();
    if (!hevcbridgeParseNALUnit(v57, v58))
    {
      if (v51)
      {
        *v51 = BYTE4(a10);
      }

      if (v50)
      {
        *v50 = a10;
      }
    }
  }

  OUTLINED_FUNCTION_110();
}

size_t FigHEVCBridge_GetAmbientViewingEnvironment()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_59_0(v13);
  OUTLINED_FUNCTION_84(v4);
  v10[0] = 0;
  result = OUTLINED_FUNCTION_13_10();
  if (!result)
  {
    v11 = v3;
    v12 = 7;
    v10[1] = v10;
    v10[3] = hevcbridgeGetSEIAmbientViewingEnvironmentCallbackUnsigned;
    v6 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v6, v7);
    if (result <= 1)
    {
      result = 4294954584;
      if (LODWORD(v10[0]))
      {
        v8 = WORD2(v10[0]);
        if (WORD2(v10[0]))
        {
          v9 = HIWORD(v10[0]);
          if (HIWORD(v10[0]))
          {
            if (v2)
            {
              *v2 = v10[0];
            }

            if (v1)
            {
              *v1 = v8;
            }

            result = 0;
            if (v0)
            {
              *v0 = v9;
            }
          }
        }
      }
    }
  }

  return result;
}

size_t FigHEVCBridge_GetSPSProfileTierLevel()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_10_13(*MEMORY[0x1E69E9840], v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_78();
  result = OUTLINED_FUNCTION_13_10();
  if (!result)
  {
    v13 = v3;
    v14 = 1048583;
    v10 = &v8;
    v11 = hevcbridgeGetSPSProfileTierLevelCallbackFlag;
    v12 = hevcbridgeGetSPSProfileTierLevelCallbackUnsigned;
    v5 = OUTLINED_FUNCTION_47_0();
    result = hevcbridgeParseNALUnit(v5, v6);
    if (!result)
    {
      v7 = BYTE4(v8);
      *v2 = v8;
      *v1 = v9;
      *v0 = v7;
    }
  }

  return result;
}

uint64_t FigHEVCBridge_GetSPSChromaFormatAndBitDepths(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  bzero(v33, 0x88uLL);
  OUTLINED_FUNCTION_78();
  LOWORD(v50) = 1;
  result = OUTLINED_FUNCTION_46_0(v10, v11, v12, v13, v14, v15, v16, v17, v25, v28, v30, v31, v32, v33[0], v33[1], v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, a1, a2, 0, a1 + a2, v49[4], v50, a1, a1, v51, v52, v53, v54, v55);
  if (result)
  {
    return result;
  }

  LOBYTE(v34) = 1;
  OUTLINED_FUNCTION_93();
  v30 = v19;
  v31 = hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackFlag;
  v32 = hevcbridgeGetSPSChromaFormatAndBitDepthsCallbackUnsigned;
  result = hevcbridgeParseNALUnit(v49, &v30);
  if (result)
  {
    return result;
  }

  if (v26 >= 4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8423;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23);
  }

  if (v27 >= 9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8424;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23);
  }

  if (v29 >= 9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v24 = 8425;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v24, v21, v22, v23);
  }

  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = v27 + 8;
  }

  result = 0;
  if (a5)
  {
    *a5 = v29 + 8;
  }

  return result;
}

size_t FigHEVCBridge_GetSPSIsScalingListPresent(uint64_t a1, uint64_t a2, char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  bzero(v10, 0xA0uLL);
  v9 = 0;
  if (!a3)
  {
    return 4294954584;
  }

  v14 = 0u;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  *a3 = 0;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = 0;
  v13[3] = a1 + a2;
  WORD4(v14) = 1;
  v15 = a1;
  v16 = a1;
  v17 = 0;
  v18 = 0;
  v21 = 0;
  result = hevcbridgeAdvanceInBitstream(v13, 0);
  if (!result)
  {
    v11 = 1;
    v12 = 603979776;
    v10[2] = hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallbackUnsigned;
    v10[0] = &v9;
    v10[1] = hevcbridgeGetSPSScalingListEnabledAndScalingListPresentCallback;
    result = hevcbridgeParseNALUnit(v13, v10);
    if (!result)
    {
      if (v9)
      {
        v7 = HIBYTE(v9) == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = !v7;
      *a3 = v8;
    }
  }

  return result;
}

double FigHEVCBridge_Get3DLayerIDSets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  OUTLINED_FUNCTION_84(v18);
  bzero(v24, 0x8CuLL);
  v41[0] = a3;
  v41[1] = a4;
  v41[2] = 0;
  v41[3] = a3 + a4;
  WORD4(v42) = 0;
  *&v43 = a3;
  *(&v43 + 1) = a3;
  v44 = 0uLL;
  *(&v45 + 1) = 0;
  LODWORD(v46) = 0;
  if (!hevcbridgeAdvanceInBitstream(v41, 0))
  {
    v21 = 1;
    v23 = 48;
    v18[0] = v24;
    v19 = hevcbridgeGet3DLayerIDsSEICallbackUnsigned;
    v25 = -1;
    if (hevcbridgeParseSEI3DReferenceDisplaysInformation(v41, v18) <= 1)
    {
      *&v34 = a1;
      *(&v34 + 1) = a2;
      *&v35 = 0;
      *(&v35 + 1) = a1 + a2;
      WORD4(v36) = 1;
      *&v37 = a1;
      *(&v37 + 1) = a1;
      v38 = 0uLL;
      *(&v39 + 1) = 0;
      LODWORD(v40) = 0;
      if (!hevcbridgeAdvanceInBitstream(&v34, 0))
      {
        bzero(&v20, 0x88uLL);
        v21 = 1;
        v22 = 4160815104;
        v18[0] = v24;
        v18[1] = hevcbridgeGet3DLayerIDsVPSCallbackFlag;
        v19 = hevcbridgeGet3DLayerIDsVPSCallbackUnsigned;
        *&v13 = -1;
        *(&v13 + 1) = -1;
        v26 = v13;
        v27 = v13;
        v28 = v13;
        v29 = v13;
        v30 = v13;
        v31 = v13;
        v32 = v13;
        v33 = v13;
        if (!hevcbridgeParseNALUnit(&v34, v18))
        {
          v14 = v27;
          *a5 = v26;
          a5[1] = v14;
          v15 = v29;
          a5[2] = v28;
          a5[3] = v15;
          v16 = v31;
          *a6 = v30;
          a6[1] = v16;
          result = *&v32;
          v17 = v33;
          a6[2] = v32;
          a6[3] = v17;
        }
      }
    }
  }

  return result;
}

void FigHEVCBridge_Get3DLayerIDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v8 = OUTLINED_FUNCTION_73();
  v19[2] = v8;
  v19[3] = v8;
  v19[0] = v8;
  v19[1] = v8;
  FigHEVCBridge_Get3DLayerIDSets(v9, v10, v11, v12, v20, v19);
  v14 = v20[0];
  v16 = LOBYTE(v20[0]) == 0xFF || v13 != 0;
  if (LOBYTE(v19[0]) == 0xFF || v16)
  {
    v14 = -1;
  }

  if (v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = v19[0];
  }

  *a5 = v14;
  *a6 = v18;
}

_BYTE *FigHEVCBridge_AllocThreeDimensionalReferenceDisplaysInfo(unsigned int a1)
{
  if (a1 > 0x20)
  {
    return 0;
  }

  v1 = a1;
  result = malloc_type_calloc(1uLL, 40 * a1 + 8, 0x68B306DBuLL);
  if (result)
  {
    result[3] = v1 - 1;
  }

  return result;
}

uint64_t FigHEVCBridge_CreateThreeDimensionalReferenceDisplaysInfoSEI()
{
  OUTLINED_FUNCTION_22_4();
  v167 = *MEMORY[0x1E69E9840];
  bzero(v166, 0x104uLL);
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v160 = 0u;
  bzero(&v110 + 3, 0x185uLL);
  if (v0)
  {
    v159[1] = 260;
    *&v162 = v166;
    BYTE9(v161) = 0;
    OUTLINED_FUNCTION_56_0(v2, v3, v4, v5, v6, v7, v8, v9, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v166);
    OUTLINED_FUNCTION_27_5();
    result = hevcbridgeUPush(v10, v11, v12, v13);
    if (!result)
    {
      v22 = OUTLINED_FUNCTION_94(result, v15, v16, v17, v18, v19, v20, v21, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
      result = hevcbridgeUPush(v22, v23, 39, 0);
      if (!result)
      {
        OUTLINED_FUNCTION_94(result, v24, v25, v26, v27, v28, v29, v30, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
        OUTLINED_FUNCTION_27_5();
        result = hevcbridgeUPush(v31, v32, v33, v34);
        if (!result)
        {
          result = OUTLINED_FUNCTION_58_0(v159, 3);
          if (!result)
          {
            result = hevcbridgeUPush(v159, 8, 176, 0);
            if (!result)
            {
              OUTLINED_FUNCTION_27_5();
              result = hevcbridgeUPush(v35, v36, v37, v38);
              if (!result)
              {
                result = hevcbridgeUEPush(v159, *v1);
                if (!result)
                {
                  v45 = OUTLINED_FUNCTION_56_0(result, v39, v1[1], v40, v41, v42, v43, v44, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                  result = hevcbridgeUPush(v45, v46, v47, 0);
                  if (!result)
                  {
                    if (!v1[1] || (result = hevcbridgeUEPush(v159, v1[2]), !result))
                    {
                      result = hevcbridgeUEPush(v159, v1[3]);
                      if (!result)
                      {
                        v48 = v1 + 24;
                        v49 = -1;
                        while (1)
                        {
                          result = hevcbridgeUEPush(v159, *(v48 - 8));
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUEPush(v159, *(v48 - 7));
                          if (result)
                          {
                            return result;
                          }

                          v56 = OUTLINED_FUNCTION_94(result, v50, *(v48 - 12), v51, v52, v53, v54, v55, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                          result = hevcbridgeUPush(v56, v57, v58, 0);
                          if (result)
                          {
                            return result;
                          }

                          if (*(v48 - 12))
                          {
                            v61 = *v1 + *(v48 - 12);
                            v60 = v61 - 31;
                            if (v61 < 0x1F)
                            {
LABEL_19:
                              v60 = 0;
LABEL_24:
                              v62 = *(v48 - 2);
                              goto LABEL_25;
                            }
                          }

                          else
                          {
                            v59 = *v1;
                            v60 = v59 - 30;
                            if (v59 < 0x1E)
                            {
                              goto LABEL_19;
                            }
                          }

                          if (v60 < 33)
                          {
                            goto LABEL_24;
                          }

                          result = hevcbridgeUPushLong(v159, v60 - 32, *(v48 - 1), 0);
                          if (result)
                          {
                            return result;
                          }

                          v62 = *(v48 - 2);
                          v60 = 32;
LABEL_25:
                          result = hevcbridgeUPushLong(v159, v60, v62, 0);
                          if (result)
                          {
                            return result;
                          }

                          if (v1[1])
                          {
                            v69 = OUTLINED_FUNCTION_94(result, v63, *v48, v64, v65, v66, v67, v68, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                            result = hevcbridgeUPush(v69, v70, v71, 0);
                            if (result)
                            {
                              return result;
                            }

                            if (*v48)
                            {
                              v74 = v1[2] + *v48;
                              v73 = v74 - 31;
                              if (v74 >= 0x1F)
                              {
                                goto LABEL_32;
                              }

LABEL_30:
                              v73 = 0;
                            }

                            else
                            {
                              v72 = v1[2];
                              v73 = v72 - 30;
                              if (v72 < 0x1E)
                              {
                                goto LABEL_30;
                              }

LABEL_32:
                              if (v73 >= 33)
                              {
                                result = hevcbridgeUPushLong(v159, v73 - 32, *(v48 + 3), 0);
                                if (result)
                                {
                                  return result;
                                }

                                v75 = *(v48 + 2);
                                v73 = 32;
LABEL_36:
                                result = hevcbridgeUPushLong(v159, v73, v75, 0);
                                if (result)
                                {
                                  return result;
                                }

                                goto LABEL_37;
                              }
                            }

                            v75 = *(v48 + 2);
                            goto LABEL_36;
                          }

LABEL_37:
                          v76 = OUTLINED_FUNCTION_56_0(result, v63, v48[16], v64, v65, v66, v67, v68, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                          result = hevcbridgeUPush(v76, v77, v78, 0);
                          if (result)
                          {
                            return result;
                          }

                          if (v48[16])
                          {
                            result = hevcbridgeUPush(v159, 10, *(v48 + 9), 0);
                            if (result)
                            {
                              return result;
                            }
                          }

                          ++v49;
                          v48 += 40;
                          if (v49 >= v1[3])
                          {
                            v85 = OUTLINED_FUNCTION_56_0(result, v79, v1[4], v80, v81, v82, v83, v84, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                            result = hevcbridgeUPush(v85, v86, v87, 0);
                            if (!result)
                            {
                              if (HIDWORD(v163))
                              {
                                result = OUTLINED_FUNCTION_50_0(v159);
                                if (result)
                                {
                                  return result;
                                }

                                while (HIDWORD(v163))
                                {
                                  OUTLINED_FUNCTION_56_0(result, v88, v89, v90, v91, v92, v93, v94, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159[0]);
                                  OUTLINED_FUNCTION_27_5();
                                  result = hevcbridgeUPush(v95, v96, v97, v98);
                                }
                              }

                              v166[3] = v162 - LOBYTE(v159[0]) - 4;
                              result = OUTLINED_FUNCTION_50_0(v159);
                              if (!result)
                              {
                                BufferWithStartCodeEmulationBytes = generateBufferWithStartCodeEmulationBytes(v162 - v159[0] + 1, v166, &v110 + 3);
                                v100 = CFDataCreate(*MEMORY[0x1E695E480], &v110 + 3, BufferWithStartCodeEmulationBytes);
                                if (v100)
                                {
                                  v101 = v100;
                                  result = 0;
                                  *v0 = v101;
                                }

                                else
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_0();
                                  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x22E3, v107, v108, v109);
                                }
                              }
                            }

                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2290, v103, v104, v105);
  }

  return result;
}

size_t hevcbridgeUPushLong(uint64_t *a1, int a2, unsigned int a3, int a4)
{
  v5 = a3;
  v6 = a1;
  if (a2 >= 26)
  {
    result = hevcbridgeUPush(a1, a2 - 16, HIWORD(a3), a4);
    if (result)
    {
      return result;
    }

    a3 = v5;
    a1 = v6;
    a2 = 16;
  }

  return hevcbridgeUPush(a1, a2, a3, a4);
}

size_t hevcbridgeUPush(uint64_t *a1, int a2, int a3, int a4)
{
  v6 = *(a1 + 41);
  if (a4)
  {
    result = 4294954582;
    if ((a2 - 26) < 0xFFFFFFE7 || v6)
    {
      return result;
    }
  }

  else
  {
    if (*(a1 + 41))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v21 = 990;
      goto LABEL_21;
    }

    if (a2 <= 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v21 = 992;
      goto LABEL_21;
    }

    if (a2 >= 0x1A)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v21 = 994;
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 19) + a2;
  v9 = (a3 << -(*(a1 + 76) + a2)) | *(a1 + 20);
  *(a1 + 20) = v9;
  __src = bswap32(v9);
  v10 = a1[6];
  v11 = *(a1 + 2) + *a1 - v10;
  if (v11 >= 4uLL)
  {
    *v10 = __src;
    goto LABEL_14;
  }

  v12 = (v8 + 7) >> 3;
  memcpy(v10, &__src, v11);
  if (a4)
  {
    if (v12 > v11)
    {
      return 4294954582;
    }

    goto LABEL_14;
  }

  if (v12 <= v11)
  {
LABEL_14:
    v13 = *(a1 + 20) << (v8 & 0xF8);
    v14 = a1[6] + (v8 >> 3);
    a1[6] = v14;
    *(a1 + 19) = v8 & 7;
    *(a1 + 20) = v13;
    v15 = *a1;
    v16 = a1[1];
    result = 0;
    if (v16 + *a1 <= v14)
    {
      *(a1 + 41) = 1;
      a1[6] = v15 + v16;
    }

    return result;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v21 = 1007;
LABEL_21:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", v21, v18, v19, v20);
}

size_t FigHEVCBridge_CreateUpdatedHVCCWithAdditionalHEVCParameterSets(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, void *a8, __CFData **a9)
{
  v186 = a5;
  v187 = a4;
  v227 = *MEMORY[0x1E69E9840];
  v197 = 0;
  cf = 0;
  bzero(v204, 0x100uLL);
  v203 = 0;
  memset(v202, 0, sizeof(v202));
  v205 = 0x100000000;
  v206 = 2;
  v207 = 0x400000003;
  v196 = 0;
  v195 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (!v187)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9535;
    goto LABEL_117;
  }

  if (!v186)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9536;
    goto LABEL_117;
  }

  if (a6 > 4 || ((1 << a6) & 0x16) == 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9539;
LABEL_117:
    HEVCParameterSetAtIndex = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v137, "<<<< HEVCBridge >>>>", v138, v134, v135, v136);
    goto LABEL_118;
  }

  if (!a9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9541;
    goto LABEL_117;
  }

  *a9 = 0;
  if (a2)
  {
    v15 = OUTLINED_FUNCTION_91();
    HEVCParameterSetAtIndex = hevcbridge_getHEVCParameterSetAtIndex(v15, v16, 0, 0, 0, 0, v17, v18, 0, 0);
    if (HEVCParameterSetAtIndex)
    {
LABEL_118:
      v45 = HEVCParameterSetAtIndex;
      v46 = 0;
      goto LABEL_119;
    }

    if (HIDWORD(v196) != a6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v137 = 4294954584;
      v138 = 9547;
      goto LABEL_117;
    }
  }

  if (a3 > 0x4FFFB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9551;
    goto LABEL_117;
  }

  if (v197 > 0x4FFFB)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954584;
    v138 = 9553;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_89();
  v22 = malloc_type_calloc(v20 + a3, 0x20uLL, v21);
  if (!v22)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    v137 = 4294954583;
    v138 = 9557;
    goto LABEL_117;
  }

  v23 = v22;
  v184 = a2;
  v177 = a9;
  v24 = v197;
  v25 = MEMORY[0x1E695E480];
  HIDWORD(v176) = a6;
  if (!(v197 + a3))
  {
    OUTLINED_FUNCTION_43_0();
    v191 = v23;
    qsort(v23, 0, 0x20uLL, v26);
    v185 = 0;
    v27 = 0;
    v188 = 0;
    theArraya = 0;
    WORD2(v179) = 0;
    BYTE4(v182) = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -4;
    v33 = -8;
    v34 = 23;
    v35 = -8;
LABEL_18:
    Mutable = CFDataCreateMutable(*v25, v34);
    if (Mutable)
    {
      v37 = Mutable;
      bytes = 1;
      v209 = v30 | v29 | v28;
      CFDataAppendBytes(Mutable, &bytes, 2);
      LODWORD(v196) = bswap32(v196);
      CFDataAppendBytes(v37, &v196, 4);
      v195 = bswap64(v195);
      CFDataAppendBytes(v37, &v195 + 2, 6);
      bytes = BYTE4(v182);
      v209 = BYTE5(v179) | 0xF0;
      v210 = BYTE4(v179);
      v211 = -4;
      v212 = v32;
      v213 = v35;
      v214 = v33;
      *v215 = 0;
      v215[2] = v188 | theArraya | (BYTE4(v176) + 3) & 3;
      v215[3] = v31;
      CFDataAppendBytes(v37, &bytes, 11);
      for (i = 0; i != 5; ++i)
      {
        v39 = v202 + 24 * i;
        v40 = *(v39 + 6);
        if (*(v39 + 6))
        {
          *v220 = 0;
          *v199 = 0;
          bytes = v39[16] & 0x3F | 0x80;
          CFDataAppendBytes(v37, &bytes, 1);
          *v199 = bswap32(v40 - *(v39 + 7)) >> 16;
          CFDataAppendBytes(v37, v199, 2);
          v41 = 0;
          v42 = *v39;
          do
          {
            if (!v41 || *v42 != *(v42 - 32) || *(v42 + 4) != *(v42 - 28))
            {
              v43 = *(v42 + 8);
              v44 = *(v42 + 16);
              *v220 = bswap32(v44) >> 16;
              CFDataAppendBytes(v37, v220, 2);
              CFDataAppendBytes(v37, v43, v44);
            }

            ++v41;
            v42 += 32;
          }

          while (v40 != v41);
        }
      }

      v45 = 0;
      *v177 = v37;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_2_20();
      v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v155, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2654, v156, v157, v158);
    }

    v46 = v27;
    v23 = v191;
    goto LABEL_30;
  }

  v167 = a7;
  v168 = a8;
  v172 = v9;
  v47 = 0;
  v46 = 0;
  v174 = 0;
  v175 = 0;
  v48 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0xFFFFFFFF00000000;
  HIDWORD(v179) = 0;
  HIDWORD(v182) = 0;
  LODWORD(v176) = 0;
  v49 = 0;
  v50 = 0;
  v178 = 0;
  allocator = *MEMORY[0x1E695E480];
  bytesDeallocator = *MEMORY[0x1E695E498];
  v173 = xmmword_197166470;
  while (2)
  {
    v193 = 0;
    BytePtr = 0;
    v51 = &v23[32 * v49];
    v52 = v48 >= v24;
    v53 = v48 - v24;
    v192 = v50;
    if (v52)
    {
      v56 = *(v187 + 8 * v53);
      v57 = *(v186 + 8 * v53);
      v193 = v57;
      BytePtr = v56;
      v51[24] = 0;
      *(v51 + 1) = v56;
      *(v51 + 2) = v57;
      v55 = v193;
    }

    else
    {
      ArrayOfSEINALUnitsFromJumboSEINALUnit = hevcbridge_getHEVCParameterSetAtIndex(v184, 1, 0, v48, &BytePtr, &v193, 0, 0, 0, 0);
      if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
      {
        goto LABEL_113;
      }

      v51[24] = 1;
      *(v51 + 1) = BytePtr;
      v55 = v193;
      *(v51 + 2) = v193;
    }

    if (v55 >= 0x10000)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v163 = 4294954584;
      v164 = 9583;
      goto LABEL_112;
    }

    if (!v55)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v163 = 4294954584;
      v164 = 9586;
      goto LABEL_112;
    }

    v58 = BytePtr;
    if (!BytePtr)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_42();
      v163 = 4294954584;
      v164 = 9588;
      goto LABEL_112;
    }

    v59 = (*BytePtr >> 1) & 0x3F;
    switch(v59)
    {
      case ' ':
        OUTLINED_FUNCTION_8_17();
        bzero((v79 + 16), 0x90uLL);
        LODWORD(v201) = 0;
        *v199 = 0u;
        v200 = 0u;
        OUTLINED_FUNCTION_71();
        v224 = 1;
        v225 = v58;
        v226 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v217 = 1;
        *&v218 = 49;
        v219 = 1048639;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v80, v81, v82, v83, v84, v85, v86, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, bytesDeallocator, v181, v182, allocator, v184, v185, v186, v187, theArray, v192, v193, BytePtr, v195, v196, v197, cf, v199[0]);
        *&v215[1] = hevcbridgeParseVPSForHVCCCallbackFlag;
        v216 = hevcbridgeParseVPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v87 = BYTE1(v201);
        v88 = *&v199[8];
        v89 = *&v199[12];
        v90 = v200;
        v91 = HIDWORD(v200);
        v92 = DWORD2(v200) | (DWORD1(v200) << 32);
        v78 = *v199;
        v93 = *&v199[4] + 1;
        v94 = v201;
        v95 = v202 + 24 * v205;
        if (!*(v95 + 6) || *(v95 + 6) == 1 && *(v95 + 2) == *v199)
        {
          v77 = 0;
          *(&v202[1] + 24 * v205) = 32;
          LODWORD(v176) = v88;
          LODWORD(v196) = v90;
          v195 = v92;
          v175 = __PAIR64__(v87, v89);
          HIDWORD(v182) = v91;
          v174 = __PAIR64__(v93, v94);
          goto LABEL_74;
        }

        v50 = v192;
        if (v176 != *&v199[8])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9632;
          goto LABEL_112;
        }

        if (BYTE1(v201) != BYTE4(v175))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9633;
          goto LABEL_112;
        }

        if (v175 != *&v199[12])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9634;
          goto LABEL_112;
        }

        if (v196 != v200)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9635;
          goto LABEL_112;
        }

        if (v195 != v92)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9636;
          goto LABEL_112;
        }

        if (HIDWORD(v182) != HIDWORD(v200))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9637;
          goto LABEL_112;
        }

        if (HIDWORD(v174) != v93)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9638;
          goto LABEL_112;
        }

        if (v201 != v174)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9639;
          goto LABEL_112;
        }

        v77 = 0;
        goto LABEL_75;
      case '!':
        OUTLINED_FUNCTION_8_17();
        bzero((v96 + 16), 0x90uLL);
        v200 = 0u;
        v201 = 0u;
        *v199 = 0u;
        OUTLINED_FUNCTION_71();
        v224 = 1;
        v225 = v58;
        v226 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v217 = 3;
        v218 = v173;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v97, v98, v99, v100, v101, v102, v103, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, bytesDeallocator, v181, v182, allocator, v184, v185, v186, v187, theArray, v192, v193, BytePtr, v195, v196, v197, cf, v199[0]);
        *&v215[1] = hevcbridgeParseSPSForHVCCCallbackFlag;
        v216 = hevcbridgeParseSPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v78 = *&v199[4];
        if (*v199)
        {
          v77 = 0;
LABEL_74:
          v50 = v192;
LABEL_75:
          v122 = v202 + 24 * v204[v59];
          v122[16] = v59;
          ++*(v122 + 6);
          *(v122 + 2) = v78;
          if ((v77 & 1) == 0)
          {
            v123 = &v23[32 * v49];
            *v123 = v59;
            *(v123 + 1) = v78;
            ++v49;
          }

          ++v48;
          v24 = v197;
          if (v48 >= v197 + a3)
          {
            v185 = v47;
            v140 = v23;
            v27 = v46;
            v30 = v176 << 6;
            v29 = 32 * (BYTE4(v175) & 1);
            v28 = v175 & 0x1F;
            v32 = v171 | 0xFC;
            v35 = BYTE4(v170) | 0xF8;
            v33 = v170 | 0xF8;
            theArraya = 8 * (BYTE4(v174) & 7);
            v188 = 4 * (v174 & 1);
            OUTLINED_FUNCTION_43_0();
            qsort(v140, v49, 0x20uLL, v141);
            v191 = v140;
            v31 = 0;
            if (!v49)
            {
              v34 = 23;
              v25 = MEMORY[0x1E695E480];
              goto LABEL_18;
            }

            v142 = 0;
            v34 = 23;
            v143 = v140;
            v25 = MEMORY[0x1E695E480];
            while (1)
            {
              v144 = *v143;
              v145 = v204[v144];
              v146 = v202 + 3 * v145;
              if (*v146)
              {
                if (!v142)
                {
                  goto LABEL_133;
                }
              }

              else
              {
                *v146 = v143;
                v34 += 3;
                ++v31;
                if (!v142)
                {
                  goto LABEL_133;
                }
              }

              if (v144 != *(v143 - 8) || v143[1] != *(v143 - 7))
              {
LABEL_133:
                v34 += *(v143 + 2) + 2;
                goto LABEL_134;
              }

              ++*(v202 + 12 * v145 + 7);
LABEL_134:
              ++v142;
              v143 += 8;
              if (v49 == v142)
              {
                goto LABEL_18;
              }
            }
          }

          continue;
        }

        v124 = *&v199[8];
        if (*&v199[8] == 2)
        {
          v126 = -1;
          v125 = -2;
        }

        else if (*&v199[8] == 1)
        {
          v125 = -2;
          v126 = -2;
        }

        else
        {
          v125 = -1;
          v126 = -1;
        }

        v127 = *&v199[12];
        v128 = v200;
        v129 = DWORD1(v200);
        v130 = (DWORD2(v200) + (DWORD1(v201) + v201) * v125);
        v131 = (HIDWORD(v200) + (HIDWORD(v201) + DWORD2(v201)) * v126);
        if (!v192 || (v192 == 1 ? (v132 = HIDWORD(v171) == *&v199[4]) : (v132 = 0), v132))
        {
          *(&v202[1] + 24 * SHIDWORD(v205)) = 33;
          if (v167)
          {
            *v167 = v130;
          }

          LODWORD(v169) = v131;
          HIDWORD(v179) = v129;
          if (v168)
          {
            *v168 = v131;
          }

          HIDWORD(v169) = v130;
          v170 = __PAIR64__(v127, v128);
          LODWORD(v171) = v124;
LABEL_110:
          v77 = 0;
          v50 = v192 + 1;
          HIDWORD(v171) = v78;
          goto LABEL_75;
        }

        if (v171 != *&v199[8])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9681;
          goto LABEL_112;
        }

        if (HIDWORD(v170) != *&v199[12])
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9682;
          goto LABEL_112;
        }

        if (v170 != v200)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9683;
          goto LABEL_112;
        }

        if (HIDWORD(v179) != DWORD1(v200))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9684;
          goto LABEL_112;
        }

        if (HIDWORD(v169) != v130)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_42();
          v163 = 4294954584;
          v164 = 9685;
          goto LABEL_112;
        }

        if (v169 == v131)
        {
          goto LABEL_110;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_42();
        v163 = 4294954584;
        v164 = 9686;
LABEL_112:
        ArrayOfSEINALUnitsFromJumboSEINALUnit = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v159, v163, "<<<< HEVCBridge >>>>", v164, v160, v161, v162);
LABEL_113:
        v45 = ArrayOfSEINALUnitsFromJumboSEINALUnit;
LABEL_114:
        free(v23);
        if (v47)
        {
          CFRelease(v47);
        }

LABEL_119:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        return v45;
      case '""':
        OUTLINED_FUNCTION_8_17();
        OUTLINED_FUNCTION_84(v69);
        *v199 = 0;
        OUTLINED_FUNCTION_71();
        v224 = 1;
        v225 = v58;
        v226 = v58;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_22_7();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v217 = 1;
        *&v218 = 1;
        OUTLINED_FUNCTION_97(ArrayOfSEINALUnitsFromJumboSEINALUnit, v70, v71, v72, v73, v74, v75, v76, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, bytesDeallocator, v181, v182, allocator, v184, v185, v186, v187, theArray, v192, v193, BytePtr, v195, v196, v197, cf, v199[0]);
        v216 = hevcbridgeParsePPSForHVCCCallbackUnsigned;
        ArrayOfSEINALUnitsFromJumboSEINALUnit = OUTLINED_FUNCTION_106();
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        v77 = 0;
        v78 = *v199;
        goto LABEL_74;
      case '\'':
      case '(':
        if (v47)
        {
          CFRelease(v47);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v47 = CFDataCreateWithBytesNoCopy(allocator, BytePtr, v193, bytesDeallocator);
        ArrayOfSEINALUnitsFromJumboSEINALUnit = FigHEVCBridge_CreateArrayOfSEINALUnitsFromJumboSEINALUnit(v47, &cf);
        if (ArrayOfSEINALUnitsFromJumboSEINALUnit)
        {
          goto LABEL_113;
        }

        if (!v46)
        {
          v46 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!v46)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v163 = 4294954583;
            v164 = 9712;
            goto LABEL_112;
          }
        }

        theArray = v46;
        v185 = v47;
        Count = CFArrayGetCount(cf);
        v61 = Count;
        if (Count >= 2)
        {
          v62 = Count - 1;
          v63 = Count - 1 + v178;
          if (v63 >= 0x10000)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v113 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v151, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x25F8, v152, v153, v154);
LABEL_149:
            v45 = v113;
          }

          else
          {
            OUTLINED_FUNCTION_89();
            v67 = malloc_type_realloc(v64, v65, v66);
            if (v67)
            {
              v178 = v63;
              v68 = v202 + 24 * v204[v59];
              *(v68 + 6) += v62;
              v23 = v67;
              goto LABEL_65;
            }

            free(v23);
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_42();
            v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v147, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2602, v148, v149, v150);
            v23 = 0;
          }

          v46 = theArray;
LABEL_30:
          v47 = v185;
          goto LABEL_114;
        }

        if (Count != 1)
        {
          v78 = 0;
LABEL_73:
          v77 = 1;
          v46 = theArray;
          v47 = v185;
          goto LABEL_74;
        }

LABEL_65:
        v104 = 0;
        v181 = v49;
        v105 = 32 * v49;
        do
        {
          v106 = a3;
          ValueAtIndex = CFArrayGetValueAtIndex(cf, v104);
          CFArrayAppendValue(theArray, ValueAtIndex);
          if (v104)
          {
            v23[v105 + 24] = v23[v105 - 8];
          }

          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          Length = CFDataGetLength(ValueAtIndex);
          v193 = Length;
          v109 = BytePtr;
          v110 = &v23[v105];
          *(v110 + 1) = BytePtr;
          *(v110 + 2) = Length;
          v111 = v193;
          OUTLINED_FUNCTION_8_17();
          OUTLINED_FUNCTION_84(v112);
          *v199 = 0;
          *v220 = v109;
          v221 = v111;
          v222 = 0;
          v223 = &v109[v111];
          v224 = 1;
          v225 = v109;
          v226 = v109;
          v113 = OUTLINED_FUNCTION_22_7();
          if (v113)
          {
            goto LABEL_149;
          }

          v217 = 1;
          LOBYTE(v218) = 4;
          OUTLINED_FUNCTION_97(v113, v114, v115, v116, v117, v118, v119, v120, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, bytesDeallocator, v181, v182, allocator, v184, v185, v186, v187, theArray, v192, v193, BytePtr, v195, v196, v197, cf, v199[0]);
          v216 = hevcbridgeParseSEIForHVCCCallbackUnsigned;
          v113 = OUTLINED_FUNCTION_106();
          if (v113)
          {
            goto LABEL_149;
          }

          a3 = v106;
          v78 = *v199;
          v121 = &v23[v105];
          *v121 = v59;
          *(v121 + 1) = v78;
          ++v104;
          v105 += 32;
        }

        while (v61 != v104);
        v49 = v181 + v104;
        goto LABEL_73;
      default:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_42();
        v163 = 4294954584;
        v164 = 9760;
        goto LABEL_112;
    }
  }
}

size_t FigHEVCBridge_CreateArrayOfSEINALUnitsFromJumboSEINALUnit(const __CFData *a1, __CFArray **a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  bzero(v48, 0xA0uLL);
  allocator = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    *&v52 = BytePtr;
    *(&v52 + 1) = Length;
    *&v53 = 0;
    *(&v53 + 1) = &BytePtr[Length];
    WORD4(v54) = 1;
    *&v55 = BytePtr;
    *(&v55 + 1) = BytePtr;
    v6 = OUTLINED_FUNCTION_22_7();
    if (v6)
    {
      goto LABEL_45;
    }

    v49 |= 1u;
    v50 |= 1u;
    v48[0] = &theArray;
    v48[2] = hevcbridgeParseSEIForSplitterCallbackUnsigned;
    v48[4] = hevcbridgeParseSEIForSplitterCallbackCFData;
    v6 = hevcbridgeParseNALUnit(&v52, v48);
    if (v6)
    {
      goto LABEL_45;
    }

    Count = CFArrayGetCount(theArray);
    Mutable = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v43 = a2;
      if (Count == 1)
      {
        CFArrayAppendValue(Mutable, a1);
LABEL_37:
        v32 = 0;
        *v43 = Mutable;
        goto LABEL_38;
      }

      if (Count < 1)
      {
        goto LABEL_37;
      }

      v8 = 0;
      v44 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        bytes = 0x80;
        if (CFDataGetLength(a1) <= 1)
        {
          break;
        }

        v10 = CFDataGetLength(ValueAtIndex);
        v11 = CFDataCreateMutable(allocator, 0);
        if (!v11)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v30 = 4294954583;
          v31 = 7442;
          goto LABEL_32;
        }

        v12 = v11;
        v13 = v10 + 2;
        CFDataSetLength(v11, v10 + 2);
        MutableBytePtr = CFDataGetMutableBytePtr(v12);
        if (!MutableBytePtr)
        {
          v25 = 7445;
LABEL_34:
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", v25, v34, v35, v36);
          CFRelease(v12);
          goto LABEL_35;
        }

        v15 = MutableBytePtr;
        v16 = CFDataGetBytePtr(ValueAtIndex);
        v17 = a1;
        v60.location = 0;
        v60.length = 2;
        CFDataGetBytes(a1, v60, v15);
        if (v10 >= 1)
        {
          v18 = 0;
          v19 = 2;
          while (1)
          {
            v20 = v16[v18];
            if (v18 + 2 >= v10 || v20 != 0)
            {
              goto LABEL_24;
            }

            if (v16[v18 + 1] || v16[v18 + 2] > 3u)
            {
              break;
            }

            CFDataSetLength(v12, ++v13);
            v22 = CFDataGetMutableBytePtr(v12);
            if (!v22)
            {
              v25 = 7460;
              Count = v44;
              a1 = v17;
              goto LABEL_34;
            }

            v15 = v22;
            v23 = &v22[v19];
            *v23 = v16[v18];
            v23[1] = v16[v18 + 1];
            v24 = v19 + 3;
            v23[2] = 3;
            ++v18;
LABEL_25:
            ++v18;
            v19 = v24;
            if (v18 >= v10)
            {
              goto LABEL_26;
            }
          }

          LOBYTE(v20) = 0;
LABEL_24:
          v24 = v19 + 1;
          v15[v19] = v20;
          goto LABEL_25;
        }

LABEL_26:
        CFDataAppendBytes(v12, &bytes, 1);
        CFArrayAppendValue(Mutable, v12);
        CFRelease(v12);
        Count = v44;
        a1 = v17;
LABEL_27:
        if (++v8 == Count)
        {
          goto LABEL_37;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v30 = 4294954584;
      v31 = 7437;
LABEL_32:
      v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v30, "<<<< HEVCBridge >>>>", v31, v27, v28, v29);
LABEL_35:
      if (v32)
      {
        CFRelease(Mutable);
        goto LABEL_38;
      }

      CFArrayAppendValue(Mutable, 0);
      goto LABEL_27;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 10276;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 10259;
  }

  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", v42, v39, v40, v41);
LABEL_45:
  v32 = v6;
LABEL_38:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v32;
}

size_t FigHEVCBridge_GetATCSEI(const void *a1, UInt8 *a2)
{
  cf = 0;
  if (a2)
  {
    v3 = FigHEVCBridge_CopyHEVCSEIPayloadData(a1, 147, &cf);
    v4 = cf;
    if (v3)
    {
      v6 = v3;
      if (!cf)
      {
        return v6;
      }

      goto LABEL_7;
    }

    if (!cf)
    {
      return 4294954578;
    }

    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v4) == 1)
      {
        v19.location = 0;
        v19.length = 1;
        CFDataGetBytes(v4, v19, a2);
        v6 = 0;
LABEL_7:
        CFRelease(v4);
        return v6;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v16 = 10194;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v16 = 10193;
    }

    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", v16, v13, v14, v15);
    goto LABEL_7;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x27CD, v9, v10, v11);
}

size_t FigHEVCBridge_GetNALUnitHeaderLengthFromHVCC(const __CFData *a1, void *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (CFDataGetLength(a1) < 0x16)
  {
    return 4294954582;
  }

  v5 = BytePtr[21] & 3;
  *a2 = v5 + 1;
  if (v5 < 2 || v5 == 3)
  {
    return 0;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x284C, v9, v10, v11);
}

size_t hevcbridge_updateFormatDescriptionExtensionsFromHVCC(const void *a1, void *a2)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFDataGetTypeID()))
  {
    if (a2)
    {
      result = OUTLINED_FUNCTION_60_0(a1, 1, 33, v5, &v22, &v21, v6, v7, 0, 0);
      if (!result)
      {
        if (!FigHEVCBridge_GetSPSChromaFormatAndBitDepths(v22, v21, 0, &v20 + 1, &v20))
        {
          FigCFDictionarySetInt(a2, @"BitsPerComponent", HIBYTE(v20), v9, v10, v11, v12, v13);
        }

        if (!FigHEVCBridge_GetSPS_VUI_FullRangeVideo(v22, v21, &v19))
        {
          FigCFDictionarySetBoolean(a2, @"FullRangeVideo", v19);
        }

        return 0;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v18 = 10876;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v18 = 10875;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v18, v15, v16, v17);
}

void FigHEVCBridge_CreateMuxedAlphaFormatDescription(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, CFDataRef a15, CFDataRef theData, void *value, CFTypeRef cf, CMVideoFormatDescriptionRef formatDescriptionOut, int a20, __int16 a21, char a22, char a23, CFIndex a24, CFIndex a25, const UInt8 *a26, const UInt8 *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_102();
  a39 = v40;
  a40 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  a28 = *MEMORY[0x1E69E9840];
  a23 = 0;
  cf = 0;
  formatDescriptionOut = 0;
  theData = 0;
  value = 0;
  a15 = 0;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v48);
  if (CFDataGetLength(v45) <= 4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11980;
LABEL_49:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v85, "<<<< HEVCBridge >>>>", v86, v82, v83, v84);
    goto LABEL_26;
  }

  BytePtr = CFDataGetBytePtr(v45);
  Length = CFDataGetLength(v45);
  if (FigHEVCBridge_GetSEIAlphaChannelInfo(BytePtr + 4, Length - 4, &a23))
  {
    goto LABEL_26;
  }

  Extensions = CMFormatDescriptionGetExtensions(v49);
  if (!Extensions)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11986;
    goto LABEL_49;
  }

  v54 = Extensions;
  v55 = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!v55)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11989;
    goto LABEL_49;
  }

  v56 = v55;
  v57 = CFDictionaryGetValue(v55, @"hvcC");
  if (!v57)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11992;
    goto LABEL_49;
  }

  v58 = v57;
  v59 = CFGetTypeID(v57);
  if (v59 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11993;
    goto LABEL_49;
  }

  v60 = CMFormatDescriptionGetExtensions(v47);
  if (!v60)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 11997;
    goto LABEL_49;
  }

  v61 = CFDictionaryGetValue(v60, @"SampleDescriptionExtensionAtoms");
  if (!v61)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 12000;
    goto LABEL_49;
  }

  v62 = CFDictionaryGetValue(v61, @"hvcC");
  if (!v62)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 12003;
    goto LABEL_49;
  }

  v63 = v62;
  v64 = CFGetTypeID(v62);
  if (v64 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 12004;
    goto LABEL_49;
  }

  if (hevcbridgeIsHVCC8Bit420(v58) || FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(v58, 0, 0, v45, 0, &cf))
  {
    goto LABEL_26;
  }

  v77 = cf;
  if (!cf || (v78 = CFGetTypeID(cf), v78 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954581;
    v86 = 12017;
    goto LABEL_49;
  }

  if (hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC(v63, 0, 1, &theData, &a15))
  {
    goto LABEL_26;
  }

  v79 = theData;
  a26 = CFDataGetBytePtr(theData);
  v80 = a15;
  a27 = CFDataGetBytePtr(a15);
  a24 = CFDataGetLength(v79);
  a25 = CFDataGetLength(v80);
  if (hevcbridgeCreateLHVCFromHEVCParameterSets(0, &a26, &a24, &value))
  {
    goto LABEL_26;
  }

  v65 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v54);
  if (!MutableCopy)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v85 = 4294954583;
    v86 = 12039;
    goto LABEL_49;
  }

  v67 = MutableCopy;
  v68 = CFDictionaryCreateMutableCopy(v65, 0, v56);
  if (v68)
  {
    v69 = v68;
    CFDictionarySetValue(v68, @"hvcC", v77);
    CFDictionarySetValue(v69, @"lhvC", value);
    CFDictionarySetValue(v67, @"SampleDescriptionExtensionAtoms", v69);
    FigCFDictionarySetInt32(v67, @"Depth", 32, v70, v71, v72, v73, v74);
    CFDictionarySetValue(v67, @"ContainsAlphaChannel", *MEMORY[0x1E695E4D0]);
    v75 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
    if (!a23)
    {
      v75 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
    }

    CFDictionarySetValue(v67, @"AlphaChannelMode", *v75);
    CFDictionaryRemoveValue(v67, @"VerbatimSampleDescription");
    CFDictionaryRemoveValue(v67, @"VerbatimISOSampleEntry");
    if (CMVideoFormatDescriptionCreate(v65, 0x68766331u, Dimensions.width, Dimensions.height, v67, &formatDescriptionOut))
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }
    }

    else
    {
      *v43 = formatDescriptionOut;
      formatDescriptionOut = 0;
    }

    CFRelease(v67);
    v76 = v69;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2F0A, v88, v89, v90);
    v76 = v67;
  }

  CFRelease(v76);
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  OUTLINED_FUNCTION_101();
}

size_t hevcbridgeIsHVCC8Bit420(uint64_t a1)
{
  v22 = 0;
  v20 = 0;
  v18 = 0;
  if (a1 && (OUTLINED_FUNCTION_18_4(), v3 = CFGetTypeID(v2), v3 == CFDataGetTypeID()))
  {
    v21 = 0;
    v4 = OUTLINED_FUNCTION_79();
    result = OUTLINED_FUNCTION_60_0(v4, v5, 33, v6, v7, v8, v9, v10, 0, 0);
    if (!result)
    {
      result = FigHEVCBridge_GetSPSChromaFormatAndBitDepths(v21, v22, &v18, &v20, &v19);
      if (!result)
      {
        v13 = v18 == 1 && v20 == 8;
        *v1 = v13;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A08, v15, v16, v17);
  }

  return result;
}

size_t FigHEVCBridge_CreateMultiviewMuxedAlphaFormatDescription(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4, const void *a5, const __CFArray *a6, CMVideoFormatDescriptionRef *a7)
{
  v122[2] = *MEMORY[0x1E69E9840];
  v120 = 0;
  cf = 0;
  formatDescriptionOut = 0;
  v117 = 0;
  v116 = 0;
  v114 = 0;
  theData = 0;
  v113 = 0;
  v112 = 0;
  if (!a5 || (OUTLINED_FUNCTION_18_4(), CFArrayGetCount(v13) != 2))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954584;
    v69 = 12159;
LABEL_31:
    SEIAlphaChannelInfo = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v68, "<<<< HEVCBridge >>>>", v69, v65, v66, v67);
    goto LABEL_32;
  }

  if (!a6 || CFArrayGetCount(a6) != 2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954584;
    v69 = 12160;
    goto LABEL_31;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(v8);
  if (CFDataGetLength(a3) <= 4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12165;
    goto LABEL_31;
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  SEIAlphaChannelInfo = FigHEVCBridge_GetSEIAlphaChannelInfo(BytePtr + 4, Length - 4, &v120);
  if (SEIAlphaChannelInfo)
  {
LABEL_32:
    v70 = SEIAlphaChannelInfo;
    goto LABEL_49;
  }

  Extensions = CMFormatDescriptionGetExtensions(v8);
  if (!Extensions)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12171;
    goto LABEL_31;
  }

  v19 = Extensions;
  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12174;
    goto LABEL_31;
  }

  v21 = Value;
  theDict = v19;
  v22 = CFDictionaryGetValue(Value, @"hvcC");
  if (!v22)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12177;
    goto LABEL_31;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  if (v24 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12178;
    goto LABEL_31;
  }

  v25 = CFDictionaryGetValue(v21, @"lhvC");
  if (!v25)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12181;
    goto LABEL_31;
  }

  v26 = v25;
  v108 = Dimensions;
  v27 = CFGetTypeID(v25);
  if (v27 != CFDataGetTypeID())
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v68 = 4294954581;
    v69 = 12182;
    goto LABEL_31;
  }

  v28 = *MEMORY[0x1E695E480];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v26);
  if (!MutableCopy)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v68 = 4294954583;
    v69 = 12185;
    goto LABEL_31;
  }

  v29 = CMFormatDescriptionGetExtensions(v7);
  if (!v29)
  {
    v95 = 12189;
LABEL_77:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    IsHVCC8Bit420 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v96, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", v95, v97, v98, v99);
    goto LABEL_78;
  }

  v30 = CFDictionaryGetValue(v29, @"SampleDescriptionExtensionAtoms");
  if (!v30)
  {
    v95 = 12192;
    goto LABEL_77;
  }

  v31 = v30;
  v32 = CFDictionaryGetValue(v30, @"hvcC");
  if (!v32)
  {
    v95 = 12195;
    goto LABEL_77;
  }

  v33 = v32;
  v34 = CFGetTypeID(v32);
  if (v34 != CFDataGetTypeID())
  {
    v95 = 12196;
    goto LABEL_77;
  }

  v35 = CFDictionaryGetValue(v31, @"lhvC");
  if (!v35)
  {
    v95 = 12199;
    goto LABEL_77;
  }

  v36 = v35;
  v37 = CFGetTypeID(v35);
  if (v37 != CFDataGetTypeID())
  {
    v95 = 12200;
    goto LABEL_77;
  }

  FigCFArrayGetInt16AtIndex(a6, 0, &v116 + 2, v38, v39, v40, v41, v42);
  IsHVCC8Bit420 = hevcbridgeIsHVCC8Bit420(v23);
  if (IsHVCC8Bit420)
  {
LABEL_78:
    v70 = IsHVCC8Bit420;
    v85 = MutableCopy;
    goto LABEL_48;
  }

  MuxedAlphaHVCCOrLHVC = FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(v23, 0, 0, a3, HIWORD(v116), &cf);
  v45 = cf;
  if (!MuxedAlphaHVCCOrLHVC)
  {
    if (cf)
    {
      v46 = CFGetTypeID(cf);
      if (v46 == CFDataGetTypeID())
      {
        v111 = 0;
        FigCFArrayGetInt16AtIndex(a5, 1, &v111, v47, v48, v49, v50, v51);
        v52 = MutableCopy;
        v53 = OUTLINED_FUNCTION_91();
        updated = hevcbridge_updateConfigRecordNuhLayerID(v53, v54, v55);
        if (!updated)
        {
          FigCFArrayGetInt16AtIndex(a6, 1, &v116, v57, v58, v59, v60, v61);
          updated = FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC(MutableCopy, v36, 1, 0, v116, &v117);
          if (!updated)
          {
            v62 = v117;
            if (v117 && (v63 = CFGetTypeID(v117), v63 == CFDataGetTypeID()))
            {
              updated = hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC(v33, 0, HIWORD(v116), &theData, &v114);
              if (!updated)
              {
                v71 = theData;
                v122[0] = CFDataGetBytePtr(theData);
                v72 = v114;
                v122[1] = CFDataGetBytePtr(v114);
                v121[0] = CFDataGetLength(v71);
                v121[1] = CFDataGetLength(v72);
                updated = hevcbridgeCreateLHVCFromHEVCParameterSets(v62, v122, v121, &v113);
                if (!updated)
                {
                  v73 = v113;
                  v117 = v113;
                  if (v113)
                  {
                    CFRetain(v113);
                  }

                  CFRelease(v62);
                  v74 = CFDictionaryCreateMutableCopy(v28, 0, theDict);
                  if (v74)
                  {
                    v75 = v74;
                    v76 = CFDictionaryCreateMutableCopy(v28, 0, v21);
                    if (v76)
                    {
                      v77 = v76;
                      CFDictionarySetValue(v76, @"hvcC", v45);
                      CFDictionarySetValue(v77, @"lhvC", v73);
                      CFDictionarySetValue(v75, @"SampleDescriptionExtensionAtoms", v77);
                      FigCFDictionarySetInt32(v75, @"Depth", 32, v78, v79, v80, v81, v82);
                      CFDictionarySetValue(v75, @"ContainsAlphaChannel", *MEMORY[0x1E695E4D0]);
                      v83 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
                      if (!v120)
                      {
                        v83 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
                      }

                      CFDictionarySetValue(v75, @"AlphaChannelMode", *v83);
                      CFDictionaryRemoveValue(v75, @"VerbatimSampleDescription");
                      CFDictionaryRemoveValue(v75, @"VerbatimISOSampleEntry");
                      v70 = CMVideoFormatDescriptionCreate(v28, 0x68766331u, v108.width, v108.height, v75, &formatDescriptionOut);
                      if (!v70)
                      {
                        *a7 = formatDescriptionOut;
                        formatDescriptionOut = 0;
                      }

                      CFRelease(v75);
                      v84 = v77;
                    }

                    else
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v70 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v104, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2FDA, v105, v106, v107);
                      v84 = v75;
                    }

                    CFRelease(v84);
                  }

                  else
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_6_13();
                    v70 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v100, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2FD7, v101, v102, v103);
                  }

                  v52 = MutableCopy;
                  goto LABEL_46;
                }
              }
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              updated = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v91, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2FC2, v92, v93, v94);
            }
          }
        }

        v70 = updated;
LABEL_46:
        CFRelease(v52);
LABEL_47:
        v85 = v45;
LABEL_48:
        CFRelease(v85);
        goto LABEL_49;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    MuxedAlphaHVCCOrLHVC = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2FB3, v88, v89, v90);
  }

  v70 = MuxedAlphaHVCCOrLHVC;
  CFRelease(MutableCopy);
  if (v45)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (v117)
  {
    CFRelease(v117);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  return v70;
}

size_t hevcbridge_updateNuhLayerIDs(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a3)
  {
    return 0;
  }

  if (a2)
  {
    v11 = 0;
    v12 = 11467;
    while (1)
    {
      if (v11 + 6 > a2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v22 = 11452;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21);
      }

      v23 = 0;
      v13 = a1 + v11;
      v14 = bswap32(*(a1 + v11));
      if (v14 < 2)
      {
        break;
      }

      if (v11 + 4 + v14 > a2)
      {
        v12 = 11468;
        break;
      }

      v15 = bswap32(*(v13 + 4)) >> 16;
      if (v15 < 0)
      {
        v12 = 11476;
        break;
      }

      v16 = v15 & 0x7E07;
      FigCFArrayGetInt32AtIndex(a3, (v15 & 0x1F8) != 0, &v23, a4, a5, a6, a7, a8);
      *(v13 + 4) = bswap32(v16 | (8 * v23)) >> 16;
      v11 += v14 + 4;
      if (v11 >= a2)
      {
        goto LABEL_11;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = v12;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21);
  }

  v11 = 0;
LABEL_11:
  if (v11 != a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v22 = 11491;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v22, v19, v20, v21);
  }

  return 0;
}

uint64_t FigHEVCBridge_CreateAmbientViewingEnvironmentSEINAL()
{
  v79[2] = *MEMORY[0x1E69E9840];
  memset(v79, 0, 13);
  v78 = 0;
  *&v4 = OUTLINED_FUNCTION_73();
  v75 = v4;
  *bytes = 0;
  *&v73 = 0;
  *(&v73 + 5) = 0;
  if (v3)
  {
    v5 = v3;
    v6 = v2;
    v7 = v1;
    v8 = v0;
    v74[0] = v79;
    v74[1] = 13;
    v77 = v79;
    v76 = 0;
    OUTLINED_FUNCTION_27_5();
    result = hevcbridgeUPush(v9, v10, v11, v12);
    if (!result)
    {
      result = hevcbridgeUPush(v74, 6, 39, 0);
      if (!result)
      {
        OUTLINED_FUNCTION_27_5();
        result = hevcbridgeUPush(v14, v15, v16, v17);
        if (!result)
        {
          result = OUTLINED_FUNCTION_58_0(v74, 3);
          if (!result)
          {
            v25 = OUTLINED_FUNCTION_57_0(result, v18, v19, v20, v21, v22, v23, v24, v68, *bytes, v73, *(&v73 + 1), v74[0]);
            result = hevcbridgeUPush(v25, v26, 148, 0);
            if (!result)
            {
              v34 = OUTLINED_FUNCTION_57_0(result, v27, v28, v29, v30, v31, v32, v33, v69, *bytes, v73, *(&v73 + 1), v74[0]);
              result = hevcbridgeUPush(v34, v35, 8, 0);
              if (!result)
              {
                result = hevcbridgeUPushLong(v74, 32, v8, 0);
                if (!result)
                {
                  v43 = OUTLINED_FUNCTION_41_0(result, v36, v37, v38, v39, v40, v41, v42, v70, *bytes, v73, *(&v73 + 1), v74[0]);
                  result = hevcbridgeUPush(v43, v44, v7, 0);
                  if (!result)
                  {
                    v52 = OUTLINED_FUNCTION_41_0(result, v45, v46, v47, v48, v49, v50, v51, v71, *bytes, v73, *(&v73 + 1), v74[0]);
                    result = hevcbridgeUPush(v52, v53, v6, 0);
                    if (!result)
                    {
                      v54 = 0;
                      v55 = 0;
                      v56 = 0;
                      BYTE4(v79[1]) = 0x80;
                      do
                      {
                        v57 = *(v79 + v54);
                        if (v55 == 2)
                        {
                          if (v57 > 3)
                          {
                            v55 = 3;
                          }

                          else
                          {
                            bytes[v56++] = 3;
                            v55 = 1;
                          }
                        }

                        else
                        {
                          ++v55;
                        }

                        bytes[v56] = v57;
                        if (v57)
                        {
                          v55 = 0;
                        }

                        ++v56;
                        ++v54;
                      }

                      while (v54 != 13);
                      v58 = CFDataCreate(*MEMORY[0x1E695E480], bytes, v56);
                      if (v58)
                      {
                        v59 = v58;
                        result = 0;
                        *v5 = v59;
                      }

                      else
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_0();
                        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3091, v65, v66, v67);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3069, v61, v62, v63);
  }

  return result;
}

uint64_t FigHEVCBridge_MeasureSliceHeader(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  bzero(v14, 0xA0uLL);
  v19 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = 0;
  v18[3] = a1 + a2;
  BYTE8(v19) = 1;
  v20 = a1;
  v21 = a1;
  DWORD2(v22) = 0;
  result = hevcbridgeAdvanceInBitstream(v18, 0);
  if (!result)
  {
    v16 = *a3;
    v17 = a3 + 1;
    v15 = 1;
    v14[2] = hevcbridgeMeasureSliceHeaderCallbackUnsigned;
    result = hevcbridgeParseNALUnit(v18, v14);
    if (!result)
    {
      if (HIDWORD(v22))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3151, v11, v12, v13);
      }

      else
      {
        result = 0;
        *a5 = v20 - v18[0];
      }
    }
  }

  return result;
}

uint64_t FigHEVCBridge_LocateSliceHeaderForHLSfMP4EncryptableNAL(CMBlockBufferRef theBuffer, uint64_t a2, size_t a3, uint64_t *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  destination = 0;
  result = 4294954584;
  if (!theBuffer || !a4)
  {
    return result;
  }

  v15 = a5;
  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_68_0();
    v24 = v51;
    v25 = 12716;
    goto LABEL_17;
  }

  if (a3)
  {
    v19 = a9;
    if (a3 + a2 > DataLength)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_68_0();
      v24 = v23;
      v25 = 12723;
LABEL_17:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v25, v20, v21, v22);
    }
  }

  else
  {
    v19 = a9;
    if (a2)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_68_0();
      v24 = v26;
      v25 = 12727;
      goto LABEL_17;
    }

    a3 = DataLength;
  }

  v59 = 0;
  if (a3 != 4)
  {
    v27 = 0;
    v28 = a4;
    v29 = 0;
    v30 = a8 | v19;
    v57 = a7;
    v31 = (v30 | a7) != 0;
    v55 = v31;
    v56 = v30 != 0;
    v52 = v28 + 1;
    v53 = v28;
    v54 = v15;
    while (1)
    {
      result = CMBlockBufferCopyDataBytes(theBuffer, v27 + a2, 4uLL, &destination);
      if (result)
      {
        return result;
      }

      v32 = bswap32(destination);
      destination = v32;
      if (v32 <= 1)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v50 = 12741;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v50, v47, v48, v49);
      }

      v33 = v27 + 4;
      if (v33 + v32 > a3)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v50 = 12748;
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v50, v47, v48, v49);
      }

      v34 = v33 + a2;
      result = CMBlockBufferCopyDataBytes(theBuffer, v33 + a2, 1uLL, &v59);
      if (result)
      {
        return result;
      }

      v35 = (v59 >> 1) & 0x3F;
      v59 = v35;
      v36 = v35 >= 0xA && v35 - 19 >= 2;
      if (!v36 || v35 <= 0x15 && ((1 << v35) & 0x270000) != 0)
      {
        if (v29 == a6 && v31)
        {
          v38 = a6;
          if (v57)
          {
            *v57 = v33;
          }

          if (v56)
          {
            v39 = destination;
            bzero(v60, 0xA0uLL);
            v65[0] = 0;
            v66 = 0u;
            v71 = 0;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65[1] = v34 + v39;
            *&v66 = theBuffer;
            result = CMBlockBufferGetDataPointer(theBuffer, v33 + a2, 0, 0, &v68);
            if (result)
            {
              return result;
            }

            v65[0] = v68 - v34;
            *(&v66 + 1) = v68;
            WORD4(v67) = 1;
            *(&v68 + 1) = v68;
            *(&v70 + 1) = 0;
            LODWORD(v71) = 0;
            v69 = 0uLL;
            result = hevcbridgeAdvanceInBitstream(v65, 0);
            if (result)
            {
              return result;
            }

            v63 = *v53;
            v64 = v52;
            v62 = 1;
            v61 = hevcbridgeMeasureSliceHeaderCallbackUnsigned;
            result = hevcbridgeParseNALUnit(v65, v60);
            if (result)
            {
              return result;
            }

            if (HIDWORD(v69))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_1_2();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3179, v43, v44, v45);
              if (result)
              {
                return result;
              }

              v40 = 0;
            }

            else
            {
              v40 = v68 - (v65[0] + v34);
            }

            v41 = a9;
            if (a8)
            {
              *a8 = v40 + v33;
              v41 = a9;
            }

            if (v41)
            {
              *a9 = v39 - v40;
            }
          }

          a6 = v38;
          v15 = v54;
          v31 = v55;
          if (!v54)
          {
            if (a6 == -1)
            {
              break;
            }

            return 0;
          }
        }

        ++v29;
      }

      v27 = v33 + destination;
      if (v27 >= a3 - 4)
      {
        if (!v29)
        {
          break;
        }

        if (v15)
        {
          *v15 = v29;
        }

        if (v29 <= a6)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v50 = 12817;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v50, v47, v48, v49);
        }

        return 0;
      }
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v50 = 12800;
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v50, v47, v48, v49);
}

size_t FigHEVCBridge_GetRPUMetadataFromRPU(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0uLL;
  v8 = 0u;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  v7[3] = a1 + a2;
  WORD4(v8) = 0;
  v9 = a1;
  v10 = a1;
  v11 = 0uLL;
  v13 = 0;
  result = hevcbridgeAdvanceInBitstream(v7, 0);
  if (!result)
  {
    OUTLINED_FUNCTION_34_2();
    v6[0] = a3;
    v6[1] = v5;
    v6[2] = hevcbridgeGetRPUMetadataCallbackUnsigned;
    v6[3] = hevcbridgeGetRPUMetadataCallbackSigned;
    v6[4] = hevcbridgeGetRPUMetadataCallbackCFData;
    return hevcbridgeParseDolbyRPUDataRBSP(v7, v6, a3);
  }

  return result;
}

size_t hevcbridgeParseDolbyRPUDataRBSP(uint64_t a1, void *a2, uint64_t a3)
{
  v156 = *MEMORY[0x1E69E9840];
  v152 = 0;
  v153 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v155 = 0;
  v154 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v6 = hevcbridgeUPullLong(a1, 8, &v153 + 1);
  if (v6)
  {
    return v6;
  }

  if (HIDWORD(v153) == 25)
  {
    v8 = *(a2 + 44);
    v9 = hevcbridgeUPullLong(a1, 6, &v153);
    v7 = v9;
    if ((v8 & 1) != 0 && !v9)
    {
      v7 = (a2[2])(*a2, 412, v153, 0xFFFFFFFFLL);
    }

    if (v7)
    {
      return v7;
    }

    if (v153 == 2)
    {
      v10 = *(a2 + 44);
      v11 = hevcbridgeUPullLong(a1, 11, &v152 + 1);
      v7 = v11;
      if ((v10 & 2) != 0 && !v11)
      {
        v7 = (a2[2])(*a2, 413, HIDWORD(v152), 0xFFFFFFFFLL);
      }

      if (v7)
      {
        return v7;
      }

      if (a3)
      {
        *(a3 + 6) = 2;
        *(a3 + 8) = WORD2(v152);
      }

      v142 = 0;
      v12 = *(a2 + 44);
      v13 = hevcbridgeUPullLong(a1, 4, &v143 + 1);
      v7 = v13;
      if ((v12 & 4) != 0 && !v13)
      {
        v7 = (a2[2])(*a2, 414, HIDWORD(v143), 0xFFFFFFFFLL);
      }

      if (v7)
      {
        return v7;
      }

      v14 = OUTLINED_FUNCTION_24_6();
      v7 = hevcbridgeUPullAlways(v14, v15, v16, 415, v17, 4);
      if (v7)
      {
        return v7;
      }

      v141 = 0;
      v19 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUPullFlagAlways(v19, v20, v21, 416, v22);
      if (v6)
      {
        return v6;
      }

      v23 = v141;
      if (a3)
      {
        v24 = v143;
        *(a3 + 10) = BYTE4(v143);
        *(a3 + 11) = v24;
        *(a3 + 12) = v23;
      }

      v140 = 0;
      v139 = 0;
      v138 = 0;
      v25 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUPullFlagAlways(v25, v26, v27, 434, v28);
      if (v6)
      {
        return v6;
      }

      v131 = v148;
      v29 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUPullFlagAlways(v29, v30, v31, 435, v32);
      if (v6)
      {
        return v6;
      }

      if (a3)
      {
        *(a3 + 30) = v131;
        v33 = v147;
        *(a3 + 31) = v147;
      }

      else
      {
        v33 = v147;
      }

      if (v33)
      {
        v137 = 0;
        v41 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeUEPullAlways(v41, v42, v43, 436, v44);
        if (a3 && !v6)
        {
          *(a3 + 32) = v137;
LABEL_105:
          if (!v131 || (v125 = OUTLINED_FUNCTION_24_6(), v6 = hevcbridgeParseVdrDmDataPayload(v125, v126, 0, a3), !v6))
          {
            v132[1] = 0;
            while (*(a1 + 76))
            {
              v122 = OUTLINED_FUNCTION_79();
              v6 = hevcbridgeUPullLong(v122, v123, v124);
              if (v6)
              {
                return v6;
              }
            }

            return hevcbridgeUPullLong(a1, 32, v132);
          }

          return v6;
        }

LABEL_104:
        if (!v6)
        {
          goto LABEL_105;
        }

        return v6;
      }

      v136 = 0;
      v137 = 0;
      v45 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUEPullAlways(v45, v46, v47, 437, v48);
      if (v6)
      {
        return v6;
      }

      v49 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUEPullAlways(v49, v50, v51, 438, v52);
      if (v6)
      {
        return v6;
      }

      v53 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUEPullAlways(v53, v54, v55, 439, v56);
      if (v6)
      {
        return v6;
      }

      if (a3)
      {
        v57 = v136;
        *(a3 + 33) = v137;
        *(a3 + 34) = v57;
        v128 = HIDWORD(v146);
        *(a3 + 35) = BYTE4(v146);
      }

      else
      {
        v128 = HIDWORD(v146);
      }

      v127 = WORD2(v152) & 0x700;
      if ((v152 & 0x70000000000) == 0 && v128)
      {
        v58 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeUPullAlways(v58, v59, v60, 440, v61, 4);
        if (v6)
        {
          return v6;
        }

        v62 = v146;
        if (a3)
        {
          *(a3 + 36) = v146;
        }

        if (v62 == 14)
        {
          v134 = 0;
          v135 = 0;
          if (v128 == 2)
          {
            v63 = OUTLINED_FUNCTION_24_6();
            v6 = hevcbridgeUPullAlways(v63, v64, v65, 441, v66, 2);
            if (v6)
            {
              return v6;
            }

            if (a3)
            {
              *(a3 + 37) = v135;
            }
          }

          v67 = OUTLINED_FUNCTION_24_6();
          v6 = hevcbridgeUPullAlways(v67, v68, v69, 442, v70, 2);
          if (!a3 || v6)
          {
            if (v6)
            {
              return v6;
            }
          }

          else
          {
            *(a3 + 38) = v134;
          }
        }
      }

      v129 = 46;
      for (i = 0; i != 3; ++i)
      {
        v135 = 0;
        v75 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeUEPullAlways(v75, v76, v77, 447, v78);
        if (v6)
        {
          return v6;
        }

        v79 = v135;
        if (a3)
        {
          *(a3 + 43 + i) = v135;
        }

        v80 = v129;
        *(&v154 + i) = v79;
        v81 = v79 + 2;
        do
        {
          v134 = 0;
          v82 = OUTLINED_FUNCTION_24_6();
          v6 = hevcbridgeUPullAlways(v82, v83, v84, 448, v85, 8);
          if (!a3 || v6)
          {
            if (v6)
            {
              return v6;
            }
          }

          else
          {
            *(a3 + v80) = v134;
          }

          v80 += 2;
          --v81;
        }

        while (v81);
        v129 += 32;
      }

      if (v127)
      {
LABEL_70:
        v86 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeUEPullAlways(v86, v87, v88, 457, v89);
        if (v6)
        {
          return v6;
        }

        v90 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeUEPullAlways(v90, v91, v92, 458, v93);
        if (v6)
        {
          return v6;
        }

        v94 = v145;
        v95 = v144;
        if (a3)
        {
          *(a3 + 313) = v145;
          *(a3 + 314) = v95;
        }

        if (v94 + v95)
        {
          v135 = 0;
          v96 = OUTLINED_FUNCTION_24_6();
          v6 = hevcbridgeUEPullAlways(v96, v97, v98, 459, v99);
          if (a3 && !v6)
          {
            *(a3 + 315) = v135;
          }

          else if (v6)
          {
            return v6;
          }
        }

        v119 = OUTLINED_FUNCTION_24_6();
        v6 = hevcbridgeParseVDRRPUDataPayload(v119, v120, v94, v95, 0, 0, v121, v128, 0, 0, &v154, a3);
        goto LABEL_104;
      }

      v134 = 0;
      v135 = 0;
      v100 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUPullAlways(v100, v101, v102, 453, v103, 3);
      if (v6)
      {
        return v6;
      }

      if (a3)
      {
        *(a3 + 246) = v134;
        if (v128 != 2)
        {
          *(a3 + 247) = 0;
LABEL_89:
          v109 = 2;
LABEL_90:
          v110 = (a3 + 248);
          do
          {
            OUTLINED_FUNCTION_90();
            v111 = OUTLINED_FUNCTION_24_6();
            v6 = hevcbridgeUPullAlways(v111, v112, v113, 455, v114, 8);
            if (!a3 || v6)
            {
              if (v6)
              {
                return v6;
              }
            }

            else
            {
              *v110 = v133;
            }

            ++v110;
            --v109;
          }

          while (v109);
          if (v128)
          {
            OUTLINED_FUNCTION_90();
            v115 = OUTLINED_FUNCTION_24_6();
            v6 = hevcbridgeUPullAlways(v115, v116, v117, 456, v118, 3);
            if (!a3 || v6)
            {
              if (v6)
              {
                return v6;
              }
            }

            else
            {
              *(a3 + 312) = v133;
            }
          }

          goto LABEL_70;
        }
      }

      else if (v128 != 2)
      {
        goto LABEL_89;
      }

      v104 = OUTLINED_FUNCTION_24_6();
      v6 = hevcbridgeUEPullAlways(v104, v105, v106, 454, v107);
      if (v6)
      {
        return v6;
      }

      v108 = v135;
      if (v135 >= 0x10)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v71, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1C55, v72, v73, v74);
      }

      if (a3)
      {
        *(a3 + 247) = v135;
      }

      v109 = v108 + 2;
      goto LABEL_90;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();
    v38 = v40;
    v39 = 7015;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_14_2();
    v38 = v37;
    v39 = 7007;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v39, v34, v35, v36);
}

uint64_t FigHEVCBridge_GetRPUMetadata(const void *a1, size_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_0(*MEMORY[0x1E69E9840]);
  v7 = v6 + 2;
  v8 = malloc_type_malloc(v6 + 2, 0xA8C3A6D3uLL);
  v9 = v8;
  if (!v8)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x33D7, v24, v25, v26);
    goto LABEL_16;
  }

  *v8 = 380;
  v10 = memcpy(v8 + 1, a1, a2);
  LOWORD(v54) = 1;
  v18 = OUTLINED_FUNCTION_46_0(v10, v11, v12, v13, v14, v15, v16, v17, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v9, v7, 0, v9 + v7, v53[4], v54, v9, v9, v55, v56, v57, v58, v59);
  if (v18)
  {
LABEL_16:
    v21 = v18;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_34_2();
  v31 = a3;
  v32 = v19;
  v33 = hevcbridgeGetRPUMetadataCallbackUnsigned;
  v34 = hevcbridgeGetRPUMetadataCallbackSigned;
  v35 = hevcbridgeGetRPUMetadataCallbackCFData;
  v52 = 0;
  v20 = hevcbridgeUPullLong(v53, 1, &v52 + 1);
  if (!v20)
  {
    if (HIDWORD(v52))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v21 = 4294954582;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x339A, v28, v29, v30);
      goto LABEL_14;
    }

    v20 = hevcbridgeUPullLong(v53, 6, &v52);
    if (!v20)
    {
      if (v52 == 62)
      {
        v20 = hevcbridgeUPullLong(v53, 6, &v51 + 1);
        if (!v20)
        {
          v20 = hevcbridgeUPullIfRequested(v53, &v31, 1, 2, 3);
          if (!v20)
          {
            v20 = hevcbridgeParseDolbyRPUDataRBSP(v53, &v31, a3);
          }
        }
      }

      else
      {
        v20 = -12712;
      }
    }
  }

  if (v20 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

LABEL_14:
  free(v9);
  return v21;
}

size_t hevcbridgeAdvanceInBitstream(uint64_t a1, int a2)
{
  v3 = *(a1 + 76) + a2;
  v4 = v3 >> 3;
  *(a1 + 76) = v3 & 7;
  if (*(a1 + 40))
  {
    v5 = (*(a1 + 72) - v4);
    *(a1 + 72) = v5;
    if (!a2 || v3 >= 8)
    {
      if (v4 >= 8)
      {
        v6 = 8;
      }

      else
      {
        v6 = v3 >> 3;
      }

      *(a1 + 96) >>= v6;
      if (v5 >= 1)
      {
        memmove((a1 + 64), (a1 + 64 + v4), v5);
        LODWORD(v5) = *(a1 + 72);
      }

      v7 = *(a1 + 56);
      v8 = *(a1 + 8) + *a1 - v7;
      if (v5 <= 3 && v8 >= 1)
      {
        v16 = a1 + 64;
        do
        {
          if ((v7 + 3) > *(a1 + 24) && *(a1 + 16))
          {
            result = hevcbridgeAdvanceAcrossBBufDiscontiguity(a1, 1);
            if (result)
            {
              return result;
            }

            v7 = *(a1 + 56);
          }

          if (*v7)
          {
            v17 = 0;
          }

          else
          {
            v17 = v8 >= 3;
          }

          if (v17 && !v7[1] && v7[2] == 3)
          {
            v18 = *(a1 + 72);
            if ((v18 & 0x80000000) == 0)
            {
              *(v16 + v18) = 0;
              v18 = *(a1 + 72);
            }

            *(a1 + 72) = v18 + 1;
            if (v18 <= -2)
            {
              LODWORD(v5) = v18 + 2;
              *(a1 + 72) = v18 + 2;
              v7 += 3;
              *(a1 + 56) = v7;
            }

            else
            {
              *(v16 + (v18 + 1)) = 0;
              v19 = *(a1 + 72);
              LODWORD(v5) = v19 + 1;
              *(a1 + 72) = v19 + 1;
              v7 += 3;
              *(a1 + 56) = v7;
              if (v19 >= 1)
              {
                *(a1 + 96) |= 1 << v19;
              }
            }

            v8 -= 3;
            ++*(a1 + 88);
          }

          else
          {
            v20 = *(a1 + 72);
            if ((v20 & 0x80000000) == 0)
            {
              *(v16 + v20) = *v7;
              v20 = *(a1 + 72);
            }

            LODWORD(v5) = v20 + 1;
            *(a1 + 72) = v20 + 1;
            *(a1 + 56) = ++v7;
            --v8;
          }
        }

        while (v5 <= 3 && v8 > 0);
      }

      v10 = vcnt_s8(*(a1 + 96));
      v10.i16[0] = vaddlv_u8(v10);
      *(a1 + 48) = &v7[-v5 - v10.u32[0]];
    }

    if (v5 > 0 || (*(a1 + 41) = 1, !v5) && !*(a1 + 76))
    {
      v11 = *(a1 + 64);
LABEL_23:
      v14 = bswap32(v11);
LABEL_24:
      result = 0;
      *(a1 + 80) = v14 << *(a1 + 76);
      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 658;
  }

  else
  {
    v12 = (*(a1 + 48) + v4);
    *(a1 + 48) = v12;
    if ((v12 + 1) <= *(a1 + 24))
    {
      goto LABEL_22;
    }

    if (*(a1 + 16))
    {
      result = hevcbridgeAdvanceAcrossBBufDiscontiguity(a1, 0);
      if (result)
      {
        return result;
      }

      v12 = *(a1 + 48);
    }

    v13 = *(a1 + 8) + *a1 - v12;
    if (v13 > 3)
    {
LABEL_22:
      v11 = *v12;
      goto LABEL_23;
    }

    v14 = 0;
    v22 = 3;
    v23 = v12;
    do
    {
      if (v13 >= 1)
      {
        v24 = *v23;
        v23 = (v23 + 1);
        v14 |= v24;
        --v13;
      }

      v14 <<= 8;
      --v22;
    }

    while (v22);
    *(a1 + 80) = v14;
    if (v23 != v12)
    {
      goto LABEL_24;
    }

    *(a1 + 41) = 1;
    if (!v13 && !*(a1 + 76))
    {
      goto LABEL_24;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 696;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", v29, v26, v27, v28);
}

uint64_t hevcbridgeAdvanceAcrossBBufDiscontiguity(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 56;
  }

  else
  {
    v3 = 48;
  }

  v4 = *(a1 + v3);
  lengthAtOffsetOut = 0;
  dataPointerOut = v4;
  v5 = &v4[-*a1];
  totalLengthOut = 0;
  result = CMBlockBufferGetDataPointer(*(a1 + 16), v5, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (!result)
  {
    v7 = totalLengthOut - v5;
    if (lengthAtOffsetOut > 7 || lengthAtOffsetOut == v7)
    {
      v9 = dataPointerOut;
      v10 = &dataPointerOut[lengthAtOffsetOut];
LABEL_16:
      result = 0;
      *(a1 + 24) = v10;
      *a1 = &v9[-v5];
      *(a1 + v3) = v9;
      return result;
    }

    if (v7 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = totalLengthOut - v5;
    }

    v9 = (a1 + 32);
    result = CMBlockBufferCopyDataBytes(*(a1 + 16), v5, v11, (a1 + 32));
    if (!result)
    {
      v10 = &v9[v11];
      goto LABEL_16;
    }
  }

  return result;
}

void hevcbridgeParseSequenceParameterSet(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, __int16 a16, __int16 a17, __int16 a18, __int16 a19, size_t count, int a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, __int16 a31, char a32, char a33, int a34, unsigned int a35, unsigned int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_102();
  a48 = v52;
  a49 = v53;
  v55 = v54;
  OUTLINED_FUNCTION_18_4();
  a37 = 0;
  a36 = 0;
  a35 = 0;
  v57 = *(v56 + 44);
  v59 = hevcbridgeUPullLong(v58, 4, &a37 + 1);
  v60 = v59;
  if ((v57 & 1) != 0 && !v59)
  {
    v61 = OUTLINED_FUNCTION_53_0();
    v60 = v62(v61, 65, HIDWORD(a37), 0xFFFFFFFFLL);
  }

  if (v60)
  {
    goto LABEL_5;
  }

  v66 = *(v50 + 136);
  if (v66 && (v67 = *(v50 + 128)) != 0)
  {
    while (1)
    {
      v68 = *v66;
      if (**v66 == 32 && v68[1] == HIDWORD(a37))
      {
        break;
      }

      ++v66;
      if (!--v67)
      {
        goto LABEL_15;
      }
    }

    v69 = *(v68 + 4494);
  }

  else
  {
LABEL_15:
    v69 = 0;
  }

  v70 = *(v50 + 44);
  if (v55)
  {
    v71 = hevcbridgeUPullLong(v51, 3, &a36);
    v60 = v71;
    if ((v70 & 4) != 0 && !v71)
    {
      v72 = OUTLINED_FUNCTION_53_0();
      v60 = v73(v72, 67, a36, 0xFFFFFFFFLL);
    }

    if (v60)
    {
      goto LABEL_5;
    }

    v74 = a36;
    if (a36 == 7)
    {
      v74 = v69;
    }

    LODWORD(a37) = v74;
    if (a36 == 7)
    {
      v75 = 1;
      goto LABEL_35;
    }
  }

  else
  {
    v76 = hevcbridgeUPullLong(v51, 3, &a37);
    v60 = v76;
    if ((v70 & 2) != 0 && !v76)
    {
      v77 = OUTLINED_FUNCTION_53_0();
      v60 = v78(v77, 66, a37, 0xFFFFFFFFLL);
    }

    if (v60)
    {
      goto LABEL_5;
    }
  }

  v79 = OUTLINED_FUNCTION_11_4();
  v82 = hevcbridgeUPullFlagIfRequested(v79, v80, v81, 68);
  if (v82)
  {
    goto LABEL_65;
  }

  v69 = a37;
  v83 = OUTLINED_FUNCTION_11_4();
  v82 = hevcbridgeParseProfileTierLevel(v83, v84, 1, v69);
  if (v82)
  {
    goto LABEL_65;
  }

  v75 = 0;
LABEL_35:
  v85 = *(v50 + 44);
  v86 = hevcbridgeUEPullLong(v51, &a35);
  v60 = v86;
  if ((v85 & 0x10) != 0 && !v86)
  {
    v87 = OUTLINED_FUNCTION_53_0();
    v60 = v88(v87, 69, a35, 0xFFFFFFFFLL);
  }

  if (v60)
  {
    goto LABEL_5;
  }

  if (v75)
  {
    v111 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUPullFlagAlways(v111, v112, v113, 70, v114);
    if (v82)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v89 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUEPullAlways(v89, v90, v91, 72, v92);
    if (v82)
    {
      goto LABEL_65;
    }

    v93 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUEPullAlways(v93, v94, v95, 74, v96);
    if (v82)
    {
      goto LABEL_65;
    }

    v97 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUEPullAlways(v97, v98, v99, 75, v100);
    if (v82)
    {
      goto LABEL_65;
    }

    v101 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUPullFlagAlways(v101, v102, v103, 76, v104);
    if (v82)
    {
      goto LABEL_65;
    }

    v105 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUEPullIfRequested(v105, v106, v107, 81);
    if (v82)
    {
      goto LABEL_65;
    }

    v108 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUEPullIfRequested(v108, v109, v110, 82);
    if (v82)
    {
      goto LABEL_65;
    }
  }

  v115 = OUTLINED_FUNCTION_11_4();
  v82 = hevcbridgeUEPullAlways(v115, v116, v117, 83, v118);
  if (v82)
  {
    goto LABEL_65;
  }

  if ((v75 & 1) == 0)
  {
    v160 = OUTLINED_FUNCTION_11_4();
    v82 = hevcbridgeUPullFlagAlways(v160, v161, v162, 84, v163);
    if (!v82)
    {
      v164 = v69;
      while (1)
      {
        v82 = hevcbridgeUESkip(v51);
        if (v82)
        {
          break;
        }

        v82 = hevcbridgeUESkip(v51);
        if (v82)
        {
          break;
        }

        v82 = hevcbridgeUESkip(v51);
        if (v82)
        {
          break;
        }

        if (++v164 > v69)
        {
          goto LABEL_51;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_51:
  v119 = OUTLINED_FUNCTION_11_4();
  v82 = hevcbridgeUEPullAlways(v119, v120, v121, 85, v122);
  if (v82 || (v123 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullAlways(v123, v124, v125, 86, v126)) != 0) || (v127 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullIfRequested(v127, v128, v129, 87)) != 0) || (v130 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullIfRequested(v130, v131, v132, 88)) != 0) || (v133 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullIfRequested(v133, v134, v135, 89)) != 0) || (v136 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullIfRequested(v136, v137, v138, 90)) != 0) || (v139 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUPullFlagAlways(v139, v140, v141, 91, v142)) != 0) || (v143 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUPullFlagIfRequested(v143, v144, v145, 95)) != 0) || (v146 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUPullFlagAlways(v146, v147, v148, 96, v149)) != 0) || (v150 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUPullFlagAlways(v150, v151, v152, 97, v153)) != 0) || (v154 = OUTLINED_FUNCTION_11_4(), (v82 = hevcbridgeUEPullAlways(v154, v155, v156, 103, v157)) != 0))
  {
LABEL_65:
    v60 = v82;
LABEL_5:
    v63 = 0;
    goto LABEL_6;
  }

  if (*(v50 + 144))
  {
    **(v50 + 144) = malloc_type_calloc(1uLL, 0x60uLL, 0x43FE3404uLL);
    v158 = **(v50 + 144);
    if (!v158)
    {
      v63 = 0;
      v60 = -12713;
      goto LABEL_6;
    }

    v159 = a35;
    *v158 = 33;
    *(v158 + 4) = v159;
    *(v158 + 8) = HIDWORD(a37);
    v185 = v158 + 8;
    *(v158 + 53) = v75;
    *(v158 + 12) = v55;
    *(v158 + 16) = 0;
    *(v158 + 20) = 0;
    *(v158 + 24) = 0;
    *(v158 + 28) = 0;
    *(v158 + 32) = 0;
    *(v158 + 44) = 0;
    *(v158 + 48) = 0;
    *(v158 + 52) = 0;
    *(v158 + 54) = 0;
    *(v158 + 88) = 0;
    *(v158 + 89) = *(v50 + 152);
    v63 = (v158 + 96);
    *(v158 + 92) = 0;
  }

  else
  {
    v63 = malloc_type_calloc(0, 0xA4uLL, 0x1000040B98E1C1EuLL);
    v185 = 0;
  }

  v165 = OUTLINED_FUNCTION_11_4();
  v169 = hevcbridgeUPullFlagAlways(v165, v166, v167, 104, v168);
  if (v169)
  {
    goto LABEL_78;
  }

  if (v185)
  {
    *(v185 + 47) = 0;
  }

  v170 = OUTLINED_FUNCTION_11_4();
  v169 = hevcbridgeUPullFlagAlways(v170, v171, v172, 106, v173);
  if (v169)
  {
    goto LABEL_78;
  }

  if (v185)
  {
    *(v185 + 32) = 0;
  }

  v174 = OUTLINED_FUNCTION_11_4();
  v169 = hevcbridgeUPullFlagIfRequested(v174, v175, v176, 107);
  if (v169 || (v177 = OUTLINED_FUNCTION_11_4(), (v169 = hevcbridgeUPullFlagAlways(v177, v178, v179, 108, v180)) != 0) || (v181 = OUTLINED_FUNCTION_11_4(), (v169 = hevcbridgeUPullFlagAlways(v181, v182, v183, 148, v184)) != 0))
  {
LABEL_78:
    v60 = v169;
  }

  else
  {
    v60 = 0;
  }

LABEL_6:
  v64 = *(v50 + 144);
  if (!v64)
  {
    v65 = v63;
    goto LABEL_26;
  }

  if (v60 >= 2)
  {
    v65 = *v64;
    if (*v64)
    {
      *v64 = 0;
LABEL_26:
      free(v65);
    }
  }

  OUTLINED_FUNCTION_101();
}

size_t hevcbridgeUPullFlagAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _BYTE *a5)
{
  v13 = 0;
  result = hevcbridgeUPull(a1, 1, &v13);
  if (!result)
  {
    v10 = v13;
    *a5 = v13;
    if (a3)
    {
      v11 = *a2;
      v12 = a2[1];

      return v12(v11, a4, v10, 0xFFFFFFFFLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t hevcbridgeParseVPSExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v11 = MEMORY[0x1EEE9AC00]();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v12;
  v21 = v20;
  v23 = v22;
  v24 = v10;
  v456 = v25;
  v26 = v11;
  v480[2] = *MEMORY[0x1E69E9840];
  v465 = 0;
  v480[0] = 0;
  v480[1] = 0;
  v27 = &v471;
  memset(v479, 0, 64);
  if (v12 >= 0x3E)
  {
    v28 = 62;
  }

  else
  {
    v28 = v12;
  }

  v477[0] = 0;
  v477[1] = 0;
  v478 = 0;
  v464 = 0;
  bzero(v476, 0x100uLL);
  v463 = 0;
  v462 = 0;
  v460 = 0;
  v461 = 0;
  memset(v475, 0, 64);
  v459 = 0;
  v29 = v23 == 1 && v21 == 1;
  v458 = 0;
  if (!v29)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_52_0();
    v172 = 2953;
LABEL_162:
    FigSignalErrorAtGM(v165, v166, v167, v168, v172, v169, v170, v171);
    goto LABEL_35;
  }

  HIDWORD(v451) = v14;
  if (v19)
  {
    v30 = hevcbridgeParseProfileTierLevel(v26, v456, 0, v18);
    if (v30)
    {
      goto LABEL_34;
    }
  }

  v30 = hevcbridgeUPullFlagAlways(v26, v456, (*(v456 + 44) >> 18) & 1, 21, &v465 + 1);
  if (v30)
  {
    goto LABEL_34;
  }

  HIDWORD(v438) = v16;
  v435 = v10;
  HIDWORD(v434) = v18;
  HIDWORD(v443) = v19;
  v19 = 0;
  v21 = 0;
  v436 = a10;
  __src = a9;
  v16 = (v28 + 2);
  v24 = v456;
  do
  {
    LOBYTE(v471) = 0;
    v31 = OUTLINED_FUNCTION_69();
    v30 = hevcbridgeUPullFlagAlways(v31, v456, v32, 22, v33);
    if (v30)
    {
      goto LABEL_34;
    }

    v34 = v471;
    *(v480 + v19) = v471;
    v21 = (v21 + v34);
    ++v19;
  }

  while (v19 != 16);
  LODWORD(v455) = HIBYTE(v465);
  v35 = v21 - HIBYTE(v465);
  if (v21 > HIBYTE(v465))
  {
    if (v35 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v35;
    }

    v36 = v479;
    while (1)
    {
      LODWORD(v471) = 0;
      v37 = *(v456 + 44);
      v38 = hevcbridgeUPullLong(v26, 3, &v471);
      v14 = v38;
      if ((v37 & 0x100000) != 0 && !v38)
      {
        v39 = OUTLINED_FUNCTION_87();
        v14 = v40(v39, 23, v471, 0xFFFFFFFFLL);
      }

      if (v14)
      {
        break;
      }

      *v36++ = v471 + 1;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }

LABEL_35:
    OUTLINED_FUNCTION_3_30();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_36;
  }

LABEL_25:
  if (v455 && v21)
  {
    if (v21 < 2)
    {
      v46 = 1;
    }

    else
    {
      v41 = 0;
      v42 = v477 + 1;
      v43 = v21 - 1;
      v44 = v479;
      do
      {
        v45 = *v44;
        v44 += 4;
        v41 += v45;
        *v42++ = v41;
        --v43;
      }

      while (v43);
      v46 = v21;
    }

    v47 = *(v477 + (v21 - 1));
    v479[(v21 - 1)] = 6 - v47;
    *(v477 + v46) = 6;
    if (v47 >= 6)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_52_0();
      v172 = 2989;
      goto LABEL_162;
    }
  }

  v30 = hevcbridgeUPullFlagAlways(v26, v456, (*(v456 + 44) >> 21) & 1, 24, &v465);
  if (v30)
  {
LABEL_34:
    v14 = v30;
    goto LABEL_35;
  }

  memset(&v476[1], 255, 0xFCuLL);
  v476[0] = 0;
  v439 = v28;
  if (!HIDWORD(v443))
  {
    v446 = 0;
    v19 = 1;
    v57 = 1;
LABEL_82:
    v93 = hevcbridgeUPullAlways(v26, v24, (*(v24 + 44) >> 25) & 1, 28, &v464, 4);
    if (v93)
    {
LABEL_83:
      v14 = v93;
      OUTLINED_FUNCTION_3_30();
      v48 = 0;
      v49 = 0;
      v50 = v446;
      goto LABEL_36;
    }

    count = v19;
    LODWORD(v455) = v464;
    if (v464 && v57)
    {
      v19 = 0;
      v21 = count << 16;
      do
      {
        LODWORD(v471) = 0;
        v94 = *(v24 + 44);
        v93 = hevcbridgeUPullLong(v26, v455, &v471);
        v14 = v93;
        if ((v94 & 0x4000000) != 0)
        {
          v101 = v446;
          if (!v93)
          {
            v102 = OUTLINED_FUNCTION_87();
            v104 = v103;
            v93 = v105(v102, 29, v471, 0xFFFFFFFFLL);
            v101 = v104;
            v14 = v93;
          }
        }

        else
        {
          v101 = v446;
        }

        if (v14)
        {
          goto LABEL_80;
        }

        if ((*(v24 + 47) & 8) != 0)
        {
          v106 = 0;
          v27 = v476;
          v24 = v471;
          do
          {
            v107 = *v27++;
            if (v107 == v19)
            {
              v108 = OUTLINED_FUNCTION_72(v93, v95, v96, v97, v101, v98, v99, v100, v414, v415, v418, v419, v420, v421, v423, v425, size, v430, v432, v434, v435, v436, __src, v438, v439, v440, v443, v444, v446, v447, v451, count, v454, v455, v456);
              v93 = v109(v108, 30, v24 | v106, 0xFFFFFFFFLL);
              if (v93)
              {
                goto LABEL_83;
              }
            }

            v106 += 0x10000;
          }

          while (v21 != v106);
        }

        v19 = (v19 + 1);
        v27 = &v471;
        v24 = v456;
      }

      while (v19 != v57);
    }

    if (HIDWORD(v443))
    {
      v110 = malloc_type_calloc(v16, v16, 0x100004077774924uLL);
      v48 = malloc_type_calloc(v16, v16, 0x100004077774924uLL);
      v431 = v110;
      v19 = v110 + v16;
      v21 = 1;
      v441 = (v28 + 1);
      do
      {
        v111 = 0;
        do
        {
          LOBYTE(v471) = 0;
          v112 = OUTLINED_FUNCTION_69();
          v115 = hevcbridgeUPullFlagAlways(v112, v24, v113, 31, v114);
          if (v115)
          {
            v14 = v115;
            OUTLINED_FUNCTION_3_30();
            v50 = v446;
            v49 = v431;
            goto LABEL_36;
          }

          *(v19 + v111++) = v471;
        }

        while (v21 != v111);
        ++v21;
        v19 += v16;
      }

      while (v21 != v441);
      v116 = v431 + v16;
      v117 = 1;
      do
      {
        v118 = 0;
        v119 = v117 * v16;
        v120 = v48;
        do
        {
          v121 = 0;
          v48[v119 + v118] = *(v431 + v119 + v118);
          v122 = v120;
          do
          {
            if (*(v116 + v121) && *v122)
            {
              v48[v119 + v118] = 1;
            }

            ++v121;
            v122 += v16;
          }

          while (v117 != v121);
          ++v118;
          ++v120;
        }

        while (v118 != v28);
        ++v117;
        v116 += v16;
      }

      while (v117 != v441);
      v123 = 0;
      v124 = 0;
      LOBYTE(v125) = 0;
      LOBYTE(v126) = 0;
      LOBYTE(v127) = 0;
      do
      {
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = (v28 + 1);
        v132 = v124;
        v133 = v123;
        do
        {
          if (*(v431 + v133))
          {
            ++v130;
          }

          if (v48[v133])
          {
            ++v129;
          }

          if (v48[v132])
          {
            ++v128;
          }

          ++v133;
          v132 += v16;
          --v131;
        }

        while (v131);
        if (v125 <= v130)
        {
          v125 = v130;
        }

        else
        {
          v125 = v125;
        }

        if (v126 <= v129)
        {
          v126 = v129;
        }

        else
        {
          v126 = v126;
        }

        if (v127 <= v128)
        {
          v127 = v128;
        }

        else
        {
          v127 = v127;
        }

        ++v124;
        v123 += v16;
      }

      while (v124 != v441);
      sizea = v127;
      v448 = v125;
      v426 = malloc_type_calloc(count, v125, 0x100004077774924uLL);
      v134 = malloc_type_calloc(count, v126, 0x100004077774924uLL);
      v135 = malloc_type_calloc(count, sizea, 0x100004077774924uLL);
      v455 = OUTLINED_FUNCTION_81();
      v433 = OUTLINED_FUNCTION_81();
      v445 = OUTLINED_FUNCTION_81();
      v136 = 0;
      v137 = 0;
      do
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = v446[v137];
        v142 = (v28 + 1);
        v143 = v137;
        v144 = v136;
        v145 = v446;
        do
        {
          v147 = *v145++;
          v146 = v147;
          if (*(v431 + v144))
          {
            v426[v141 * v448 + v140++] = v146;
          }

          if (v48[v144])
          {
            v134[v141 * v126 + v139++] = v146;
          }

          if (v48[v143])
          {
            v135[v141 * sizea + v138++] = v146;
          }

          ++v144;
          v143 += v16;
          --v142;
        }

        while (v142);
        v455[v141] = v140;
        v433[v141] = v139;
        v445[v141] = v138;
        ++v137;
        v136 += v16;
      }

      while (v137 != v441);
      count = v134;
      v454 = v135;
      v449 = v26;
      v148 = 0;
      v149 = 0;
      v473 = 0u;
      v474 = 0u;
      v471 = 0u;
      v472 = 0u;
      v150 = v455;
      do
      {
        if (!v455[v446[v148]])
        {
          ++v149;
        }

        ++v148;
      }

      while (v441 != v148);
      v151 = (sizea + 1);
      v14 = v149;
      v152 = OUTLINED_FUNCTION_82(v149, v151 + 63);
      v420 = v149;
      v153 = malloc_type_calloc(v149, 1uLL, v426);
      v154 = v446;
      v155 = 0;
      v156 = 0;
      do
      {
        v157 = v446[v155];
        if (!v455[v157])
        {
          v158 = v156;
          v159 = &v152[v156 * v151];
          *v159 = v157;
          v160 = v445[v157];
          if (v160)
          {
            v161 = 0;
            v162 = 1;
            do
            {
              v163 = v135[v157 * sizea + v161];
              if (!*(&v471 + v163))
              {
                v159[v162++] = v163;
                *(&v471 + v163) = 1;
                v160 = v445[v157];
              }

              ++v161;
            }

            while (v161 < v160);
          }

          else
          {
            v162 = 1;
          }

          ++v156;
          v153[v158] = v162;
        }

        ++v155;
      }

      while (v155 != v441);
      if (v149 >= 2u)
      {
        v442 = v153;
        sizeb = v152;
        v164 = hevcbridgeUEPullAlways(v449, v456, (*(v456 + 44) >> 29) & 1, 32, &v463);
        if (v164)
        {
          v14 = v164;
          goto LABEL_160;
        }

        if (v463 >= 0x400)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_52_0();
          FigSignalErrorAtGM(v253, v254, v255, v256, 0xC75, v257, v258, v259);
LABEL_160:
          v21 = 0;
          v19 = 0;
          v49 = v431;
          v16 = v433;
          v26 = v445;
          v50 = v446;
          v24 = v426;
          v27 = sizeb;
          v28 = v442;
          goto LABEL_36;
        }

        v173 = HIDWORD(v438) + 1;
        v174 = v463 + HIDWORD(v438) + 1;
        v418 = v463;
        if (v463)
        {
          v175 = OUTLINED_FUNCTION_82(v463 + v173, 1uLL);
          LODWORD(v419) = HIDWORD(v451) + 1;
          v416 = v174;
          v176 = malloc_type_calloc(v174, HIDWORD(v451) + 1 - v149 + (v149 << 6), v426);
          v177 = v176;
          if (__src)
          {
            memcpy(v176, __src, v419 * v173);
          }

          *v175 = 1;
          v178 = v442;
          v179 = v420;
          if (HIDWORD(v438))
          {
            if (v173 <= 2)
            {
              v180 = 2;
            }

            else
            {
              v180 = v173;
            }

            v181 = (v436 + 1);
            v182 = v175 + 1;
            v183 = v180 - 1;
            do
            {
              v184 = *v181++;
              *v182++ = v184;
              --v183;
            }

            while (v183);
          }

          else
          {
            v173 = 1;
          }

          v422 = v177;
          v424 = v175;
          v199 = 0;
LABEL_187:
          bzero(&v471, 0xF8uLL);
          v200 = 1;
          while (1)
          {
            v201 = log2((*(v178 + v200) + 1));
            LODWORD(v467[0]) = 0;
            v202 = *(v456 + 44);
            v203 = hevcbridgeUPullLong(v449, vcvtpd_s64_f64(v201), v467);
            v14 = v203;
            if ((v202 & 0x40000000) != 0 && !v203)
            {
              v211 = OUTLINED_FUNCTION_72(v203, v204, v205, v206, v207, v208, v209, v210, v414, v416, v418, v419, v420, v422, v424, v426, sizeb, v431, v433, v434, v435, v436, __src, v438, v439, v442, v443, v445, v446, v449, v451, count, v454, v455, v456);
              v14 = v212(v211, 33, LODWORD(v467[0]), 0xFFFFFFFFLL);
            }

            v50 = v446;
            if (v14)
            {
              goto LABEL_223;
            }

            v178 = v442;
            if (LODWORD(v467[0]) > *(v442 + v200))
            {
              break;
            }

            *(&v471 + v200++) = v467[0];
            if (v179 == v200)
            {
              v213 = 0;
              v214 = 1;
              do
              {
                v215 = *(&v471 + v214);
                if (v215)
                {
                  v216 = 0;
                  do
                  {
                    *(v422 + (v173 + v199) * v419 + v213++) = *(sizeb + v214 * v151 + v216++);
                  }

                  while (v215 > v216);
                }

                ++v214;
              }

              while (v214 != v179);
              *(v424 + v173 + v199++) = v213;
              if (v199 == v418)
              {
                v436 = v424;
                __src = v422;
                v26 = v449;
                v187 = count;
                v135 = v454;
                v150 = v455;
                LODWORD(v28) = v439;
                v174 = v416;
                v188 = v418;
                goto LABEL_176;
              }

              goto LABEL_187;
            }
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_5_26();
          OUTLINED_FUNCTION_52_0();
          FigSignalErrorAtGM(v246, v247, v248, v249, 0xC93, v250, v251, v252);
          v50 = v446;
LABEL_223:
          v49 = v431;
          v16 = v433;
          v26 = v445;
LABEL_224:
          v24 = v426;
          v27 = sizeb;
          v28 = v442;
          v19 = v422;
          v21 = v424;
          goto LABEL_36;
        }

        v422 = 0;
        v424 = 0;
        v188 = 0;
        v26 = v449;
        v187 = count;
        v135 = v454;
        v150 = v455;
LABEL_176:
        v189 = hevcbridgeUPullFlagAlways(v26, v456, *(v456 + 44) >> 31, 34, &v462 + 1);
        count = v187;
        v454 = v135;
        v455 = v150;
        if (v189)
        {
LABEL_177:
          v14 = v189;
          v49 = v431;
          v16 = v433;
          v26 = v445;
          v50 = v446;
          goto LABEL_224;
        }

        memset(v470, 0, sizeof(v470));
        if (HIBYTE(v462))
        {
          v190 = (v28 + 1);
          v191 = v470;
          do
          {
            LODWORD(v471) = 0;
            v192 = OUTLINED_FUNCTION_69();
            v189 = hevcbridgeUPullAlways(v192, v193, v194, 35, v195, 3);
            if (v189)
            {
              goto LABEL_177;
            }

            *v191++ = v471;
          }

          while (--v190);
        }

        v417 = v174;
        OUTLINED_FUNCTION_36_0();
        v450 = v26;
        v198 = hevcbridgeUPullFlagAlways(v26, v197, (v196 >> 33) & 1, 36, &v462);
        if (v198)
        {
          goto LABEL_183;
        }

        bzero(&v468, 0x1000uLL);
        if (v462 && HIDWORD(v443))
        {
          v217 = 0;
          v218 = v439;
          v419 = v439 + 3;
          v420 = v469;
          v219 = v16;
          do
          {
            v220 = v431;
            if (v217 < v439)
            {
              v221 = v218;
              v222 = v420;
              v223 = v219;
              do
              {
                if (*(v220 + v223))
                {
                  LODWORD(v471) = 0;
                  OUTLINED_FUNCTION_36_0();
                  v232 = OUTLINED_FUNCTION_45_0(v225, v226, (v224 >> 34) & 1, v227, v228, v229, v230, v231, v414, v417, v418, v419, v420, v422, v424, v426, sizeb, v431, v433, v434, v435, v436, __src, v438, v439, v442, v443, v445, v446, v450);
                  v198 = hevcbridgeUPullAlways(v232, v233, v234, 37, v235, 3);
                  if (v198)
                  {
                    goto LABEL_183;
                  }

                  *v222 = v471;
                  v220 = v431;
                }

                v223 += v16;
                ++v222;
                --v221;
              }

              while (v221);
            }

            ++v217;
            v219 += v419;
            v420 += 65;
            --v218;
          }

          while (v217 != v439);
        }

        OUTLINED_FUNCTION_36_0();
        v198 = hevcbridgeUPullFlagAlways(v450, v237, (v236 >> 35) & 1, 38, &v459);
        if (v198 || (OUTLINED_FUNCTION_36_0(), v198 = hevcbridgeUEPullAlways(v450, v239, (v238 >> 36) & 1, 39, &v461 + 1), v198))
        {
LABEL_183:
          v14 = v198;
LABEL_184:
          v50 = v446;
          goto LABEL_223;
        }

        v240 = HIDWORD(v461);
        if (HIDWORD(v461) >= 2)
        {
          v260 = 2;
          do
          {
            OUTLINED_FUNCTION_100();
            *v261 = 0;
            OUTLINED_FUNCTION_36_0();
            v270 = OUTLINED_FUNCTION_45_0(v263, v264, (v262 >> 37) & 1, v265, v266, v267, v268, v269, v414, v417, v418, v419, v420, v422, v424, v426, sizeb, v431, v433, v434, v435, v436, __src, v438, v439, v442, v443, v445, v446, v450);
            v198 = hevcbridgeUPullFlagAlways(v270, v271, v272, 40, v273);
            if (v198)
            {
              goto LABEL_183;
            }

            OUTLINED_FUNCTION_100();
            v198 = hevcbridgeParseProfileTierLevel(v450, v456, *v274, HIDWORD(v434));
            if (v198)
            {
              goto LABEL_183;
            }

            ++v260;
          }

          while (v260 <= v240);
        }

        LODWORD(v419) = v417 - 2;
        if (v417 < 2)
        {
          v243 = 0;
          LODWORD(v420) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_36_0();
          v198 = hevcbridgeUEPullAlways(v450, v242, (v241 >> 38) & 1, 41, &v461);
          if (v198)
          {
            goto LABEL_183;
          }

          v243 = v461;
          if (v461 >= 0x400)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_5_26();
            OUTLINED_FUNCTION_52_0();
            v338 = 3276;
            goto LABEL_381;
          }

          OUTLINED_FUNCTION_36_0();
          v198 = hevcbridgeUPullAlways(v450, v245, (v244 >> 39) & 1, 42, &v460 + 1, 2);
          if (v198)
          {
            goto LABEL_183;
          }

          LODWORD(v420) = HIDWORD(v460);
        }

        if (*(v456 + 152))
        {
LABEL_233:
          v14 = 1;
          goto LABEL_184;
        }

        LODWORD(v418) = v243 + v417;
        if ((v243 + v417) >= 2)
        {
          LODWORD(v414) = vcvtpd_s64_f64(log2((v188 + HIDWORD(v438))));
          HIDWORD(v414) = HIDWORD(v451) + 1;
          v452 = vcvtpd_s64_f64(log2((v240 + 1)));
          for (i = 1; i != v418; ++i)
          {
            v276 = 0;
            v457 = 0;
            v473 = 0u;
            v474 = 0u;
            v277 = v417 >= 3 && i >= v417;
            v471 = 0uLL;
            v472 = 0uLL;
            if (v277)
            {
              OUTLINED_FUNCTION_36_0();
              v198 = hevcbridgeUPullAlways(v450, v279, (v278 >> 40) & 1, 43, &v457, v414);
              if (v198)
              {
                goto LABEL_183;
              }

              v276 = v457;
              if (v457 > v419)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_5_26();
                OUTLINED_FUNCTION_52_0();
                v338 = 3297;
                goto LABEL_381;
              }
            }

            if (i >= v417)
            {
              v280 = v276 + 1;
            }

            else
            {
              v280 = i;
            }

            v14 = *(v436 + v280);
            if (i > HIDWORD(v438) || v420 == 2)
            {
              if (*(v436 + v280))
              {
                v282 = 0;
                while (1)
                {
                  LOBYTE(v467[0]) = 0;
                  OUTLINED_FUNCTION_36_0();
                  v198 = hevcbridgeUPullFlagAlways(v450, v284, (v283 >> 41) & 1, 44, v467);
                  if (v198)
                  {
                    goto LABEL_183;
                  }

                  *(&v471 + v282++) = v467[0];
                  v14 = *(v436 + v280);
                  if (v282 >= v14)
                  {
                    goto LABEL_270;
                  }
                }
              }
            }

            else
            {
              if (v420)
              {
                if (*(v436 + v280))
                {
                  v285 = 0;
                  LOBYTE(v286) = 0;
                  v287 = 0;
                  do
                  {
                    v288 = __src[(v280 * HIDWORD(v414) + v285)];
                    v289 = v288 >= v287;
                    if (v288 > v287)
                    {
                      v287 = __src[(v280 * HIDWORD(v414) + v285)];
                    }

                    if (v289)
                    {
                      LOBYTE(v286) = v285;
                    }

                    ++v285;
                  }

                  while (v14 != v285);
                  v286 = v286;
                }

                else
                {
                  v286 = 0;
                }

                *(&v471 + v286) = 1;
LABEL_270:
                if (!v14)
                {
                  continue;
                }
              }

              else
              {
                if (!*(v436 + v280))
                {
                  continue;
                }

                memset(&v471, 1, *(v436 + v280));
              }

              v290 = 0;
              v291 = 0;
              v292 = 0;
              do
              {
                if (*(&v471 + v290))
                {
                  ++v292;
                  v291 = __src[v290];
                }

                ++v290;
              }

              while (v14 != v290);
              v293 = 0;
              memset(v467, 0, sizeof(v467));
              do
              {
                if (*(&v471 + v293))
                {
                  *(v467 + v293) = 1;
                  if (v293)
                  {
                    v294 = 0;
                    v295 = v475[__src[(v280 * HIDWORD(v414) + v293)]] * v16;
                    v296 = v280 * HIDWORD(v414);
                    do
                    {
                      if (v48[v295 + v475[__src[v296]]])
                      {
                        *(v467 + v294) = 1;
                      }

                      ++v294;
                      ++v296;
                    }

                    while (v293 != v294);
                  }
                }

                ++v293;
              }

              while (v293 != v14);
              v297 = 0;
              do
              {
                if (v240 && *(v467 + v297))
                {
                  OUTLINED_FUNCTION_36_0();
                  v198 = hevcbridgeUPullIfRequested(v450, v299, (v298 >> 42) & 1, 45, v452);
                  if (v198)
                  {
                    goto LABEL_183;
                  }

                  v14 = *(v436 + v280);
                }

                ++v297;
              }

              while (v297 < v14);
              if (v292 == 1)
              {
                if (!HIDWORD(v443))
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_5_26();
                  OUTLINED_FUNCTION_52_0();
                  v338 = 3366;
                  goto LABEL_381;
                }

                if (v455[v291])
                {
                  OUTLINED_FUNCTION_36_0();
                  v198 = hevcbridgeUPullFlagIfRequested(v450, v301, (v300 >> 43) & 1, 46);
                  if (v198)
                  {
                    goto LABEL_183;
                  }
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_36_0();
        v198 = hevcbridgeUEPullAlways(v450, v303, (v302 >> 44) & 1, 47, &v460);
        if (v198)
        {
          goto LABEL_183;
        }

        v304 = v460;
        if (v460 < 0x100)
        {
          if (*(v456 + 144))
          {
            **(v456 + 144) = malloc_type_calloc(1uLL, 16 * v460 + 4512, 0x2F18350BuLL);
            v305 = **(v456 + 144);
            if (!v305)
            {
              v14 = 4294954583;
              goto LABEL_184;
            }

            *(v305 + 8) = v304;
            v306 = v305 + 8;
            *(v305 + 204) = v459;
            if (HIDWORD(v443))
            {
              v307 = 0;
              do
              {
                v308 = v446[v307];
                *(v305 + 76 + v308) = v455[v308];
                *(v305 + 334 + v308) = v475[v308];
                if (v455[v308])
                {
                  v309 = 0;
                  do
                  {
                    v310 = v475[v426[v308 + v309]];
                    *(v305 + 206 + v308) = v310;
                    *(v305 + 270 + v310) = v470[v310];
                    ++v309;
                  }

                  while (v309 < v455[v308]);
                }

                ++v307;
              }

              while (v307 != v439 + 1);
              v311 = 0;
              v312 = v469;
              v313 = (v305 + 399);
              v314 = v439 - 1;
              do
              {
                if (v439 > v311)
                {
                  memcpy(v313, v312, v314 + 1);
                }

                ++v311;
                --v314;
                v313 += 65;
                v312 += 65;
              }

              while (v439 != v311);
            }

            *(v305 + 4494) = BYTE4(v434);
          }

          else
          {
            v306 = 0;
          }

          v315 = 0;
          while (1)
          {
            v198 = hevcbridgeParseRepFormat(v450, v456, v315, v306);
            if (v198)
            {
              goto LABEL_183;
            }

            if (++v315 > v304)
            {
              if (v304)
              {
                OUTLINED_FUNCTION_36_0();
                v198 = hevcbridgeUPullFlagAlways(v450, v340, (v339 >> 45) & 1, 48, &v459 + 1);
                if (v198)
                {
                  goto LABEL_183;
                }
              }

              memset(v466, 0, sizeof(v466));
              if (HIBYTE(v459))
              {
                if (HIDWORD(v443))
                {
                  v316 = vcvtpd_s64_f64(log2((v304 + 1)));
                  v317 = v466 + 1;
                  if (HIDWORD(v443) >= 0x3EuLL)
                  {
                    v318 = 62;
                  }

                  else
                  {
                    v318 = HIDWORD(v443);
                  }

                  do
                  {
                    LODWORD(v471) = 0;
                    OUTLINED_FUNCTION_36_0();
                    v327 = OUTLINED_FUNCTION_45_0(v320, v321, (v319 >> 46) & 1, v322, v323, v324, v325, v326, v414, v417, v418, v419, v420, v422, v424, v426, sizeb, v431, v433, v434, v435, v436, __src, v438, v439, v442, v443, v445, v446, v450);
                    v198 = hevcbridgeUPullAlways(v327, v328, v329, 49, v330, v316);
                    if (v198)
                    {
                      goto LABEL_183;
                    }

                    *v317++ = v471;
                  }

                  while (--v318);
                }
              }

              else
              {
                v341 = vdupq_n_s64(v439);
                v342 = vdupq_n_s32(v304);
                v343 = xmmword_1971664F0;
                v344 = v466 + 7;
                v345 = xmmword_197165580;
                do
                {
                  v346 = vmovn_s64(vcgeq_u64(v341, v345));
                  v347 = vminq_u32(v343, v342);
                  if (vuzp1_s8(vuzp1_s16(v346, *v341.i8), *v341.i8).u8[0])
                  {
                    *(v344 - 7) = v347.i8[0];
                  }

                  if (vuzp1_s8(vuzp1_s16(v346, *&v341), *&v341).i8[1])
                  {
                    *(v344 - 6) = v347.i8[4];
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(v353, *&v349).i8[2])
                  {
                    *(v348 - 5) = v350;
                  }

                  if (vuzp1_s8(vuzp1_s16(v349, v352), *&v349).i8[3])
                  {
                    *(v348 - 4) = v351;
                  }

                  OUTLINED_FUNCTION_98();
                  if (v359)
                  {
                    *(v354 - 3) = v356;
                  }

                  if (vuzp1_s8(*&v355, vuzp1_s16(v358, v355)).i8[5])
                  {
                    *(v354 - 2) = v357;
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(*&v361, v368).i8[6])
                  {
                    *(v360 - 1) = v365;
                  }

                  if (vuzp1_s8(*&v361, vuzp1_s16(*&v361, v367)).i8[7])
                  {
                    *v360 = v366;
                  }

                  v369 = vminq_u32(v363, v362);
                  v370 = vmovn_s64(vcgeq_u64(v361, v364));
                  if (vuzp1_s8(vuzp1_s16(v370, *v361.i8), *v361.i8).u8[0])
                  {
                    v360[1] = v369.i8[0];
                  }

                  if (vuzp1_s8(vuzp1_s16(v370, *&v361), *&v361).i8[1])
                  {
                    v360[2] = v369.i8[4];
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(v376, *&v372).i8[2])
                  {
                    *(v371 + 3) = v373;
                  }

                  if (vuzp1_s8(vuzp1_s16(v372, v375), *&v372).i8[3])
                  {
                    *(v371 + 4) = v374;
                  }

                  OUTLINED_FUNCTION_98();
                  if (v382)
                  {
                    *(v377 + 5) = v379;
                  }

                  if (vuzp1_s8(*&v378, vuzp1_s16(v381, v378)).i8[5])
                  {
                    *(v377 + 6) = v380;
                  }

                  OUTLINED_FUNCTION_99();
                  if (vuzp1_s8(*&v341, v392).i8[6])
                  {
                    v384[7] = v389;
                  }

                  if (vuzp1_s8(*&v341, vuzp1_s16(*&v341, v391)).i8[7])
                  {
                    v384[8] = v390;
                  }

                  v345 = vaddq_s64(v387, vdupq_n_s64(v385));
                  v343 = vaddq_s32(v386, v388);
                  v344 = v384 + 16;
                }

                while (v383 != 16);
              }

              if (v306)
              {
                for (j = 0; j != 64; ++j)
                {
                  *(v306 + 4 + j) = *(v466 + v475[j]);
                }
              }

              OUTLINED_FUNCTION_36_0();
              v198 = hevcbridgeUPullFlagAlways(v450, v395, (v394 >> 47) & 1, 50, &v458);
              if (v198)
              {
                goto LABEL_183;
              }

              if (v306)
              {
                *(v306 + 197) = v458;
              }

              v198 = hevcbridgeUPullFlagIfRequested(v450, v456, *(v456 + 50) & 1, 51);
              if (v198)
              {
                goto LABEL_183;
              }

              if (HIDWORD(v443))
              {
                v396 = HIDWORD(v443);
                if (HIDWORD(v443) >= 0x3EuLL)
                {
                  v396 = 62;
                }

                v397 = -v396;
                v398 = 1;
                while (1)
                {
                  if (!v455[v446[v398]])
                  {
                    OUTLINED_FUNCTION_100();
                    *v399 = 0;
                    OUTLINED_FUNCTION_36_0();
                    v408 = OUTLINED_FUNCTION_45_0(v401, v402, (v400 >> 49) & 1, v403, v404, v405, v406, v407, v414, v417, v418, v419, v420, v422, v424, v426, sizeb, v431, v433, v434, v435, v436, __src, v438, v439, v442, v443, v445, v446, v450);
                    v412 = hevcbridgeUPullFlagAlways(v408, v409, v410, 52, v411);
                    v14 = v412;
                    if (!v306 || v412)
                    {
                      if (v412)
                      {
                        goto LABEL_184;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_100();
                      *(v306 + 132 + v475[v398]) = *v413;
                    }
                  }

                  ++v398;
                  v14 = 1;
                  if (v397 + v398 == 1)
                  {
                    goto LABEL_184;
                  }
                }
              }

              goto LABEL_233;
            }
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_5_26();
        OUTLINED_FUNCTION_52_0();
        v338 = 3373;
LABEL_381:
        FigSignalErrorAtGM(v331, v332, v333, v334, v338, v335, v336, v337);
        goto LABEL_184;
      }

      v26 = v449;
      v187 = count;
      v186 = v426;
      v185 = v431;
    }

    else
    {
      v185 = 0;
      v48 = 0;
      v186 = 0;
      v153 = 0;
      v152 = 0;
      v445 = 0;
      v433 = 0;
      v150 = 0;
      v135 = 0;
      v187 = 0;
      v154 = v446;
    }

    v426 = v186;
    sizeb = v152;
    v446 = v154;
    v442 = v153;
    v431 = v185;
    v422 = 0;
    v424 = 0;
    v188 = 0;
    v174 = (HIDWORD(v438) + 1);
    goto LABEL_176;
  }

  v447 = v26;
  v54 = malloc_type_calloc((v28 + 2), 1uLL, 0x100004077774924uLL);
  v55 = 1;
  v56 = v54;
  v27 = 0;
  LODWORD(count) = 0;
  LODWORD(v440) = v465;
  v430 = v477 + 1;
  v432 = (v28 + 1);
  v26 = v480;
  v57 = 1;
  v446 = v54;
  while (1)
  {
    LODWORD(v444) = v57;
    v457 = 0;
    v471 = 0uLL;
    if (v440)
    {
      v58 = v55;
      v59 = v56;
      v19 = *(v24 + 44);
      v60 = hevcbridgeUPullLong(v447, 6, &v457);
      v14 = v60;
      if ((v19 & 0x400000) != 0 && !v60)
      {
        v61 = OUTLINED_FUNCTION_87();
        v14 = v62(v61, 25, v457, 0xFFFFFFFFLL);
      }

      v56 = v59;
      if (v14)
      {
        goto LABEL_80;
      }

      v55 = v58;
      v19 = v457;
    }

    else
    {
      v457 = v55;
      v19 = v55;
    }

    v56[v55] = v19;
    v454 = v55;
    v475[v19] = v55;
    v63 = count;
    if (v19 > count)
    {
      v63 = v19;
    }

    LODWORD(count) = v63;
    if (v455)
    {
      if (v21)
      {
        v64 = 0;
        v65 = &v471;
        v66 = v430;
        v67 = v21;
        do
        {
          v68 = *v66++;
          v69 = (v19 & ~(-1 << v68)) >> v64;
          v64 = v68;
          *v65 = v69;
          v65 = (v65 + 1);
          --v67;
        }

        while (v67);
      }

      goto LABEL_64;
    }

    if (v21)
    {
      break;
    }

LABEL_64:
    v83 = 0;
    v84 = 0;
    v467[0] = 0uLL;
    v24 = v456;
    v28 = v439;
    do
    {
      if (*(v480 + v83))
      {
        v85 = *(&v471 + v84++);
        *(v467 + v83) = v85;
      }

      ++v83;
    }

    while (v83 != 16);
    v86 = BYTE1(v467[0]);
    v476[v19] = BYTE1(v467[0]);
    if (v476[*v446] == v86)
    {
      v87 = 0;
      v88 = v454;
    }

    else
    {
      v89 = 1;
      do
      {
        v90 = v89;
        if ((v27 + v89) == 1)
        {
          break;
        }

        ++v89;
      }

      while (v476[v446[v90]] != v86);
      v277 = v90 >= v454;
      v88 = v454;
      v87 = v277;
    }

    if (*(v456 + 47))
    {
      v91 = OUTLINED_FUNCTION_87();
      v93 = v92(v91, 27);
      v88 = v454;
      if (v93)
      {
        goto LABEL_83;
      }
    }

    v57 = v444 + v87;
    v55 = v88 + 1;
    v27 = (v27 - 1);
    v56 = v446;
    if (v55 == v432)
    {
      v19 = count + 1;
      v26 = v447;
      v27 = &v471;
      goto LABEL_82;
    }
  }

  v28 = v479;
  v70 = &v471;
  v71 = v21;
  while (1)
  {
    LODWORD(v467[0]) = 0;
    v24 = *(v456 + 44);
    v72 = *v28;
    v28 += 4;
    v73 = hevcbridgeUPullLong(v447, v72, v467);
    v14 = v73;
    if ((v24 & 0x800000) != 0 && !v73)
    {
      v81 = OUTLINED_FUNCTION_72(v73, v74, v75, v76, v77, v78, v79, v80, v414, v415, v418, v419, v420, v421, v423, v425, size, v430, v432, v434, v435, v436, __src, v438, v439, v440, v443, v444, v446, v447, v451, count, v454, v455, v456);
      v14 = v82(v81, 26, LODWORD(v467[0]), 0xFFFFFFFFLL);
    }

    if (v14)
    {
      break;
    }

    *v70 = v467[0];
    v70 = (v70 + 1);
    if (!--v71)
    {
      goto LABEL_64;
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_3_30();
  v48 = 0;
  v49 = 0;
LABEL_36:
  free(v50);
  free(v49);
  free(v48);
  free(v24);
  free(count);
  free(v454);
  free(v455);
  free(v16);
  free(v26);
  free(v27);
  free(v28);
  free(v21);
  free(v19);
  v51 = *(v456 + 144);
  if (v51)
  {
    if (v14 >= 2)
    {
      v52 = *v51;
      if (*v51)
      {
        *v51 = 0;
        free(v52);
      }
    }
  }

  return v14;
}

uint64_t hevcbridgeParseVUIParameters()
{
  OUTLINED_FUNCTION_18_4();
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  result = hevcbridgeUPullFlagAlways(v2, v3, (*(v3 + 44) >> 44) & 1, 109, &v120 + 1);
  if (!result)
  {
    if (!HIBYTE(v120))
    {
      goto LABEL_10;
    }

    v116 = 0;
    v5 = *(v0 + 44);
    result = hevcbridgeUPullLong(v1, 8, &v116);
    if ((v5 & 0x200000000000) != 0 && !result)
    {
      v6 = OUTLINED_FUNCTION_53_0();
      result = v7(v6, 110, v116, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      if (v116 != 255 || (v8 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v8, v9, v10, 111, 16), !result) && (v11 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v11, v12, v13, 112, 16), !result))
      {
LABEL_10:
        v14 = OUTLINED_FUNCTION_11_4();
        result = hevcbridgeUPullFlagAlways(v14, v15, v16, 113, v17);
        if (!result)
        {
          if (!v120 || (v18 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagIfRequested(v18, v19, v20, 114), !result))
          {
            v21 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullFlagAlways(v21, v22, v23, 115, v24);
            if (!result)
            {
              if (!HIBYTE(v119) || (v25 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v25, v26, v27, 116, 3), !result) && (v28 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagIfRequested(v28, v29, v30, 117), !result) && (v31 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v31, v32, v33, 118, v34), !result))
              {
                v35 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullFlagAlways(v35, v36, v37, 122, v38);
                if (!result)
                {
                  if (!v119 || (v39 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v39, v40, v41, 123), !result) && (v42 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v42, v43, v44, 124), !result))
                  {
                    v45 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullFlagIfRequested(v45, v46, v47, 125);
                    if (!result)
                    {
                      v48 = OUTLINED_FUNCTION_11_4();
                      result = hevcbridgeUPullFlagIfRequested(v48, v49, v50, 126);
                      if (!result)
                      {
                        v51 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagIfRequested(v51, v52, v53, 127);
                        if (!result)
                        {
                          v54 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullFlagAlways(v54, v55, v56, 128, v57);
                          if (!result)
                          {
                            if (!HIBYTE(v118) || (v58 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v58, v59, v60, 129), !result) && (v61 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v61, v62, v63, 130), !result) && (v64 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v64, v65, v66, 131), !result) && (v67 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUEPullIfRequested(v67, v68, v69, 132), !result))
                            {
                              v70 = OUTLINED_FUNCTION_11_4();
                              result = hevcbridgeUPullFlagAlways(v70, v71, v72, 133, v73);
                              if (!result)
                              {
                                if (!v118 || (v74 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v74, v75, v76, 134, 32), !result) && (v77 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullIfRequested(v77, v78, v79, 135, 32), !result) && (v80 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v80, v81, v82, 136, v83), !result) && (v84 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullFlagAlways(v84, v85, v86, 138, v87), !result))
                                {
                                  v88 = OUTLINED_FUNCTION_11_4();
                                  result = hevcbridgeUPullFlagAlways(v88, v89, v90, 139, v91);
                                  if (!result)
                                  {
                                    if (v117)
                                    {
                                      v92 = OUTLINED_FUNCTION_11_4();
                                      result = hevcbridgeUPullFlagIfRequested(v92, v93, v94, 140);
                                      if (!result)
                                      {
                                        v95 = OUTLINED_FUNCTION_11_4();
                                        result = hevcbridgeUPullFlagIfRequested(v95, v96, v97, 141);
                                        if (!result)
                                        {
                                          v98 = OUTLINED_FUNCTION_11_4();
                                          result = hevcbridgeUPullFlagIfRequested(v98, v99, v100, 142);
                                          if (!result)
                                          {
                                            v101 = OUTLINED_FUNCTION_11_4();
                                            result = hevcbridgeUEPullIfRequested(v101, v102, v103, 143);
                                            if (!result)
                                            {
                                              v104 = OUTLINED_FUNCTION_11_4();
                                              result = hevcbridgeUEPullIfRequested(v104, v105, v106, 144);
                                              if (!result)
                                              {
                                                v107 = OUTLINED_FUNCTION_11_4();
                                                result = hevcbridgeUEPullIfRequested(v107, v108, v109, 145);
                                                if (!result)
                                                {
                                                  v110 = OUTLINED_FUNCTION_11_4();
                                                  result = hevcbridgeUEPullIfRequested(v110, v111, v112, 146);
                                                  if (!result)
                                                  {
                                                    v113 = OUTLINED_FUNCTION_11_4();

                                                    return hevcbridgeUEPullIfRequested(v113, v114, v115, 147);
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL hevcbridgeMoreRBSPData(void *__src)
{
  v7 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, sizeof(__dst));
  if (!BYTE1(__dst[10]) && !hevcbridgeUPull(__dst, 1, &v5))
  {
    while (!BYTE1(__dst[10]))
    {
      v4 = 0;
      v2 = hevcbridgeUPull(__dst, 8 - __dst[19], &v4);
      v3 = v4 != 0;
      if (v2)
      {
        v3 = 4;
      }

      if (v3)
      {
        return v3 != 4;
      }
    }
  }

  return 0;
}

uint64_t hevcbridgeParseHDR10PlusITUT35()
{
  OUTLINED_FUNCTION_18_4();
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v3 = *(v2 + 84);
  result = hevcbridgeUPullLong(v4, 8, &v120 + 1);
  if ((v3 & 1) != 0 && !result)
  {
    v6 = OUTLINED_FUNCTION_53_0();
    result = v7(v6, 376, HIDWORD(v120), 0xFFFFFFFFLL);
  }

  if (!result)
  {
    if (HIDWORD(v120) != 4)
    {
      return 1;
    }

    v8 = *(v0 + 84);
    result = hevcbridgeUPullLong(v1, 8, &v120);
    if ((v8 & 2) != 0 && !result)
    {
      v9 = OUTLINED_FUNCTION_53_0();
      result = v10(v9, 377, v120, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    if (v120 != 1)
    {
      return 1;
    }

    v11 = *(v0 + 84);
    result = hevcbridgeUPullLong(v1, 2, &v124);
    if ((v11 & 4) != 0 && !result)
    {
      v12 = OUTLINED_FUNCTION_53_0();
      result = v13(v12, 378, v124, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      v14 = v124;
      if (v124 < 2)
      {
LABEL_29:
        v49 = OUTLINED_FUNCTION_11_4();
        result = hevcbridgeUPullIfRequested(v49, v50, v51, 390, 27);
        if (!result)
        {
          v52 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullFlagAlways(v52, v53, v54, 391, v55);
          if (!result)
          {
            if (!HIBYTE(v123))
            {
              goto LABEL_41;
            }

            v56 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullAlways(v56, v57, v58, 392, v59, 5);
            if (result)
            {
              return result;
            }

            v60 = OUTLINED_FUNCTION_11_4();
            result = hevcbridgeUPullAlways(v60, v61, v62, 393, v63, 5);
            if (result)
            {
              return result;
            }

            v64 = HIDWORD(v121);
            if (HIDWORD(v121))
            {
              v65 = 0;
              v66 = v121;
              while (1)
              {
                v67 = v66;
                if (v66)
                {
                  break;
                }

LABEL_40:
                if (++v65 == v64)
                {
                  goto LABEL_41;
                }
              }

              while (1)
              {
                v68 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullIfRequested(v68, v69, v70, 394, 4);
                if (result)
                {
                  break;
                }

                if (!--v67)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
LABEL_41:
              if (v14)
              {
                v71 = 0;
LABEL_43:
                v72 = 3;
                while (1)
                {
                  v73 = OUTLINED_FUNCTION_11_4();
                  result = hevcbridgeUPullIfRequested(v73, v74, v75, 395, 17);
                  if (result)
                  {
                    break;
                  }

                  if (!--v72)
                  {
                    v76 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullIfRequested(v76, v77, v78, 396, 17);
                    if (result)
                    {
                      return result;
                    }

                    v79 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullAlways(v79, v80, v81, 397, v82, 4);
                    if (result)
                    {
                      return result;
                    }

                    v83 = OUTLINED_FUNCTION_11_4();
                    result = hevcbridgeUPullIfRequested(v83, v84, v85, 400, 10);
                    if (result)
                    {
                      return result;
                    }

                    if (++v71 != v14)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_50;
                  }
                }
              }

              else
              {
LABEL_50:
                v86 = OUTLINED_FUNCTION_11_4();
                result = hevcbridgeUPullFlagAlways(v86, v87, v88, 401, v89);
                if (!result)
                {
                  if (!v123 || (v90 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullAlways(v90, v91, v92, 402, v93, 5), !result) && (v94 = OUTLINED_FUNCTION_11_4(), result = hevcbridgeUPullAlways(v94, v95, v96, 403, v97, 5), !result))
                  {
                    if (v14)
                    {
                      for (i = 0; i != v14; ++i)
                      {
                        v99 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagAlways(v99, v100, v101, 405, v102);
                        if (result)
                        {
                          break;
                        }

                        if (HIBYTE(v122))
                        {
                          v103 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullIfRequested(v103, v104, v105, 406, 12);
                          if (result)
                          {
                            break;
                          }

                          v106 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullIfRequested(v106, v107, v108, 407, 12);
                          if (result)
                          {
                            break;
                          }

                          v109 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullAlways(v109, v110, v111, 408, v112, 4);
                          if (result)
                          {
                            break;
                          }
                        }

                        v113 = OUTLINED_FUNCTION_11_4();
                        result = hevcbridgeUPullFlagAlways(v113, v114, v115, 410, v116);
                        if (result)
                        {
                          break;
                        }

                        if (v122)
                        {
                          v117 = OUTLINED_FUNCTION_11_4();
                          result = hevcbridgeUPullIfRequested(v117, v118, v119, 411, 6);
                          if (result)
                          {
                            break;
                          }
                        }

                        result = 0;
                      }
                    }

                    else
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v15 = v124 - 1;
        while (1)
        {
          v16 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v16, v17, v18, 379, 16);
          if (result)
          {
            break;
          }

          v19 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v19, v20, v21, 380, 16);
          if (result)
          {
            break;
          }

          v22 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v22, v23, v24, 381, 16);
          if (result)
          {
            break;
          }

          v25 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v25, v26, v27, 382, 16);
          if (result)
          {
            break;
          }

          v28 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v28, v29, v30, 383, 16);
          if (result)
          {
            break;
          }

          v31 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v31, v32, v33, 384, 16);
          if (result)
          {
            break;
          }

          v34 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v34, v35, v36, 385, 8);
          if (result)
          {
            break;
          }

          v37 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v37, v38, v39, 386, 16);
          if (result)
          {
            break;
          }

          v40 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v40, v41, v42, 387, 16);
          if (result)
          {
            break;
          }

          v43 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v43, v44, v45, 388, 16);
          if (result)
          {
            break;
          }

          v46 = OUTLINED_FUNCTION_11_4();
          result = hevcbridgeUPullIfRequested(v46, v47, v48, 389, 1);
          if (result)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t hevcbridgeParseVDRRPUDataPayload(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, int a6, __int16 a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v152) = a4;
  v18 = malloc_type_calloc(1uLL, 0x90uLL, 0x1000040265AC83CuLL);
  v19 = v18;
  if (!v18)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_24();
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v145, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x187C, v146, v147, v148);
LABEL_199:
    v32 = v127;
    goto LABEL_200;
  }

  HIDWORD(v152) = 0;
  v165 = 0;
  v20 = a11;
  v153 = a12 + 361;
  v169 = v18 + 48;
  v151 = a12 + 24984;
  v173 = a6;
  if (a5)
  {
    v21 = 32;
  }

  else
  {
    v21 = a6;
  }

  v178 = v21;
  v172 = a12 + 408;
  v154 = a8;
  if (a8)
  {
    v22 = (a7 & 0x700) == 0;
  }

  else
  {
    v22 = 0;
  }

  if (a9)
  {
    v23 = (a7 & 0x700) == 0;
  }

  else
  {
    v23 = 0;
  }

  v157 = v23;
  v158 = v22;
  v156 = a7 & 0x700 | a10;
  v166 = v18;
LABEL_12:
  v24 = 0;
LABEL_13:
  v25 = 0;
  v26 = 0;
  v180 = 0;
  v167 = v24;
  v168 = v165++;
  v27 = a12 + 420;
  v28 = (a12 + 448);
  while (2)
  {
    if (*(v20 + 4 * v26) > 0xFu)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_24();
      v143 = 4294954584;
      v144 = 6050;
LABEL_191:
      v79 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v139, v143, "<<<< HEVCBridge >>>>", v144, v140, v141, v142);
LABEL_192:
      v32 = v79;
      if (!v79)
      {
        goto LABEL_179;
      }

      goto LABEL_200;
    }

    v177 = 0;
    v159 = v172 + 780 * v26;
    v161 = v27;
    v162 = v172 + 2700 * v26;
    v170 = a12 + 316 - v26 + 16 * v26;
    v176 = v27;
    v160 = v28;
    v174 = v28;
    v175 = v26;
LABEL_16:
    v29 = v25;
    v179 = 0;
    v30 = *(a2 + 100);
    v31 = hevcbridgeUEPullLong(a1, &v179 + 1);
    v32 = v31;
    if ((v30 & 1) != 0 && !v31)
    {
      v33 = OUTLINED_FUNCTION_40_0();
      v32 = v34(v33, 496, HIDWORD(v179), 0xFFFFFFFFLL);
    }

    v35 = v175;
    if (v32)
    {
      goto LABEL_178;
    }

    v36 = HIDWORD(v179);
    if (HIDWORD(v179) >= 0x10)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_24();
      v143 = 4294954584;
      v144 = 6062;
      goto LABEL_191;
    }

    if (a12)
    {
      *(v170 + v177) = BYTE4(v179);
    }

    switch(v36)
    {
      case 0:
        OUTLINED_FUNCTION_88();
        if (v37)
        {
          v79 = OUTLINED_FUNCTION_74();
          if (v79)
          {
            goto LABEL_192;
          }

          v29 = v180;
          if (a12)
          {
            OUTLINED_FUNCTION_76(v79, v80, v81, v82, v83, v84, v85, v86, v150, v151, v152, v153);
          }

          if (!v29)
          {
            goto LABEL_26;
          }

          if (*v171 < 2u)
          {
LABEL_140:
            v57 = v169[16 * v175 + v177];
          }

          else
          {
            v87 = *(a2 + 100);
            v88 = hevcbridgeUEPullLong(a1, &v179);
            v32 = v88;
            if ((v87 & 4) != 0)
            {
              v35 = v175;
              if (!v88)
              {
                v89 = OUTLINED_FUNCTION_40_0();
                v32 = v90(v89, 498, v179, 0xFFFFFFFFLL);
              }

              if (v32)
              {
                goto LABEL_178;
              }
            }

            else
            {
              v35 = v175;
              if (v88)
              {
                goto LABEL_178;
              }
            }

            v57 = v168 - v179 + 1;
            if (a12)
            {
              *(v151 - v35 + 16 * v35 + v177) = v179;
            }
          }

LABEL_59:
          v32 = 0;
          if ((v57 & 0x80000000) != 0)
          {
            goto LABEL_178;
          }

          v25 = v29;
          if (v57 >= v168)
          {
            goto LABEL_178;
          }

LABEL_107:
          v174 += 45;
          v176 += 52;
          if (++v177 >= (*(v20 + 4 * v35) + 1))
          {
            v28 = v160 + 675;
            v27 = v161 + 780;
            v26 = v35 + 1;
            if (v35 == 2)
            {
              goto LABEL_179;
            }

            continue;
          }

          goto LABEL_16;
        }

        v180 = 0;
LABEL_26:
        v38 = *(v20 + 4 * v175);
        LODWORD(v182[1]) = 0;
        BYTE4(v181) = 0;
        v39 = *(a2 + 52);
        v40 = hevcbridgeUEPullLong(a1, &v182[1]);
        v32 = v40;
        if ((v39 & 1) != 0 && !v40)
        {
          v41 = OUTLINED_FUNCTION_40_0();
          v32 = v42(v41, 499, LODWORD(v182[1]), 0xFFFFFFFFLL);
        }

        LOBYTE(v35) = v175;
        if (v32)
        {
          goto LABEL_178;
        }

        v43 = v182[1];
        if (a12)
        {
          *(v172 + 780 * v175 + 52 * v177) = v182[1];
        }

        if (!v43)
        {
          v79 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 104) >> 1) & 1, 500, &v181 + 4);
          if (!v79)
          {
            v102 = BYTE4(v181);
            if (a12)
            {
              OUTLINED_FUNCTION_30_3();
              *(v103 + 1) = v102;
            }

            if (v102)
            {
              v182[0] = 0;
              if (!a5)
              {
                v107 = *(a2 + 52);
                v108 = hevcbridgeUEPullLong(a1, v182);
                v32 = v108;
                if ((v107 & 4) != 0)
                {
                  v35 = v175;
                  if (!v108)
                  {
                    v109 = OUTLINED_FUNCTION_37_0();
                    v32 = v110(v109, 501);
                  }

                  if (v32)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v35 = v175;
                  if (v108)
                  {
                    goto LABEL_55;
                  }
                }

                if (a12)
                {
                  *(v159 + 52 * v177 + 4) = v182[0];
                }
              }

              v104 = OUTLINED_FUNCTION_103();
              v32 = v104;
              if ((v35 & 8) != 0)
              {
                v35 = v175;
                if (!v104)
                {
                  v105 = OUTLINED_FUNCTION_40_0();
                  v32 = v106(v105, 502, HIDWORD(v182[0]), 0xFFFFFFFFLL);
                }

                if (v32)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v35 = v175;
                if (v104)
                {
                  goto LABEL_55;
                }
              }

              if (a12)
              {
                *(v172 + 780 * v35 + 52 * v177 + 8) = HIDWORD(v182[0]);
              }

              if (v177 != v38)
              {
                v32 = 0;
                goto LABEL_55;
              }

              if (!a5)
              {
                v117 = *(a2 + 52);
                v118 = hevcbridgeUEPullLong(a1, v182);
                v32 = v118;
                if ((v117 & 4) != 0 && !v118)
                {
                  v119 = OUTLINED_FUNCTION_37_0();
                  v32 = v120(v119, 501);
                }

                v35 = v175;
                if (v32)
                {
                  goto LABEL_55;
                }

                if (a12)
                {
                  OUTLINED_FUNCTION_30_3();
                  *(v122 + 4) = v121;
                }
              }

              v111 = OUTLINED_FUNCTION_103();
              v32 = v111;
              if ((v35 & 8) != 0 && !v111)
              {
                v112 = OUTLINED_FUNCTION_40_0();
                v32 = v113(v112, 502, HIDWORD(v182[0]), 0xFFFFFFFFLL);
              }

              v35 = v175;
              if (a12 && !v32)
              {
                OUTLINED_FUNCTION_30_3();
                *(v115 + 8) = v114;
              }

              goto LABEL_55;
            }

            goto LABEL_33;
          }

          goto LABEL_192;
        }

LABEL_33:
        v44 = 0;
        v45 = 0;
        v182[0] = 0;
        v46 = (v43 + 2);
        while (1)
        {
          v47 = *(a2 + 52);
          if (a5)
          {
            v48 = hevcbridgeUPullLong(a1, 32, v182);
            v32 = v48;
            if ((v47 & 0x20) != 0 && !v48)
            {
              v49 = OUTLINED_FUNCTION_37_0();
              v32 = v50(v49, 504);
            }

            if (v32)
            {
              goto LABEL_54;
            }

            if (!a12)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          if ((v47 & 0x10) != 0)
          {
            break;
          }

LABEL_45:
          v52 = hevcbridgeUPullLong(a1, v173, v182);
          v32 = v52;
          if ((v47 & 0x20) != 0 && !v52)
          {
            v53 = OUTLINED_FUNCTION_37_0();
            v32 = v54(v53, 504);
          }

          if (v32)
          {
            goto LABEL_54;
          }

          if (!a12)
          {
            goto LABEL_52;
          }

          *(v176 + 4 * v45) = v44;
LABEL_51:
          *(v172 + 780 * v175 + 52 * v177 + 32 + 4 * v45) = v182[0];
LABEL_52:
          if (v46 == ++v45)
          {
            v32 = 0;
            goto LABEL_54;
          }
        }

        v51 = hevcbridgeSEPullLong(a1, v182 + 1);
        if (!v51)
        {
          v44 = HIDWORD(v182[0]);
          v51 = (a2[3])(*a2, 503, HIDWORD(v182[0]), 0xFFFFFFFFLL);
          if (!v51)
          {
            v47 = *(a2 + 52);
            goto LABEL_45;
          }
        }

        v32 = v51;
LABEL_54:
        v20 = a11;
        v19 = v166;
        v35 = v175;
LABEL_55:
        if (!v32)
        {
          OUTLINED_FUNCTION_86();
          if (!v56)
          {
LABEL_105:
            *v55 = v168;
          }

          goto LABEL_106;
        }

LABEL_178:
        if (!v32)
        {
LABEL_179:
          if (v158)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_24();
            v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x1836, v124, v125, v126);
            if (v127)
            {
              goto LABEL_199;
            }
          }

          if (v157)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_24();
            v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v128, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x1842, v129, v130, v131);
            if (v127)
            {
              goto LABEL_199;
            }
          }

          v132 = v167;
          if (!v156)
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x184F, v163, v134, v135);
            if (v127)
            {
              goto LABEL_199;
            }

            v132 = v167;
            if (v154)
            {
              v136 = fig_log_get_emitter("com.apple.coremedia", "");
              v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v136, 0xFFFFCE53uLL, "<<<< HEVCBridge >>>>", 0x185B, v163, v137, v138);
              if (v127)
              {
                goto LABEL_199;
              }
            }
          }

          v24 = v132 + 1;
          if (v24 > a3)
          {
            if (++HIDWORD(v152) > v152)
            {
              v32 = 0;
              goto LABEL_200;
            }

            goto LABEL_12;
          }

          goto LABEL_13;
        }

LABEL_200:
        free(v19);
        return v32;
      case 1:
        OUTLINED_FUNCTION_88();
        if (!v58)
        {
          v180 = 0;
LABEL_64:
          memset(v182, 0, 12);
          v59 = *(a2 + 52);
          v60 = hevcbridgeUPullLong(a1, 2, &v182[1]);
          v32 = v60;
          if ((v59 & 0x40) != 0 && !v60)
          {
            v61 = OUTLINED_FUNCTION_40_0();
            v32 = v62(v61, 505, LODWORD(v182[1]), 0xFFFFFFFFLL);
          }

          if (v32)
          {
            goto LABEL_177;
          }

          if (a12)
          {
            *(v172 + 2700 * v175 + 180 * v177) = v182[1];
          }

          if (!a5)
          {
            if ((a2[13] & 0x80) != 0)
            {
              v64 = hevcbridgeSEPullLong(a1, v182 + 1);
              if (v64 || (v63 = HIDWORD(v182[0]), v64 = (a2[3])(*a2, 506, HIDWORD(v182[0]), 0xFFFFFFFFLL), v64))
              {
LABEL_176:
                v32 = v64;
LABEL_177:
                v20 = a11;
                v19 = v166;
                goto LABEL_178;
              }
            }

            else
            {
              v63 = 0;
            }

            if (a12)
            {
              *(v162 + 180 * v177 + 4) = v63;
            }
          }

          v65 = *(a2 + 52);
          v66 = hevcbridgeUPullLong(a1, v178, v182);
          v32 = v66;
          if ((v65 & 0x100) != 0 && !v66)
          {
            v67 = OUTLINED_FUNCTION_37_0();
            v32 = v68(v67, 507);
          }

          if (v32)
          {
            goto LABEL_177;
          }

          if (a12)
          {
            *(v172 + 2700 * v175 + 180 * v177 + 8) = v182[0];
          }

          if (LODWORD(v182[1]) != -1)
          {
            v164 = (LODWORD(v182[1]) + 2);
            v69 = v174;
            v70 = 1;
            do
            {
              v71 = 7;
              v72 = v69;
              do
              {
                v181 = 0;
                if (!a5)
                {
                  if ((a2[13] & 0x200) != 0)
                  {
                    v64 = hevcbridgeSEPullLong(a1, &v181 + 1);
                    if (v64)
                    {
                      goto LABEL_176;
                    }

                    v73 = HIDWORD(v181);
                    v64 = (a2[3])(*a2, 508, HIDWORD(v181), 0xFFFFFFFFLL);
                    if (v64)
                    {
                      goto LABEL_176;
                    }
                  }

                  else
                  {
                    v73 = 0;
                  }

                  if (a12)
                  {
                    *v72 = v73;
                  }
                }

                v74 = *(a2 + 52);
                v75 = hevcbridgeUPullLong(a1, v178, &v181);
                v32 = v75;
                if ((v74 & 0x400) != 0 && !v75)
                {
                  v76 = OUTLINED_FUNCTION_40_0();
                  v32 = v77(v76, 509, v181, 0xFFFFFFFFLL);
                }

                if (!a12 || v32)
                {
                  if (v32)
                  {
                    goto LABEL_177;
                  }
                }

                else
                {
                  v72[21] = v181;
                }

                ++v72;
                --v71;
              }

              while (v71);
              ++v70;
              v69 += 7;
            }

            while (v70 != v164);
          }

          OUTLINED_FUNCTION_86();
          v20 = a11;
          v19 = v166;
          if (!v78)
          {
            v35 = v175;
            goto LABEL_105;
          }

          v35 = v175;
LABEL_106:
          v25 = 0;
          ++*v171;
          goto LABEL_107;
        }

        v79 = OUTLINED_FUNCTION_74();
        if (v79)
        {
          goto LABEL_192;
        }

        v29 = v180;
        if (a12)
        {
          OUTLINED_FUNCTION_76(v79, v91, v92, v93, v94, v95, v96, v97, v150, v151, v152, v153);
        }

        if (!v29)
        {
          goto LABEL_64;
        }

        if (*v171 < 2u)
        {
          goto LABEL_140;
        }

        v98 = *(a2 + 100);
        v99 = hevcbridgeUEPullLong(a1, &v179);
        v32 = v99;
        if ((v98 & 4) != 0)
        {
          v35 = v175;
          if (!v99)
          {
            v100 = OUTLINED_FUNCTION_40_0();
            v32 = v101(v100, 498, v179, 0xFFFFFFFFLL);
          }

          if (v32)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v35 = v175;
          if (v99)
          {
            goto LABEL_178;
          }
        }

        v116 = v179;
        if (a12)
        {
          *(v151 - v35 + 16 * v35 + v177) = v179;
        }

        v57 = v165 - v116;
        goto LABEL_59;
      case 2:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_24();
        v143 = 4294954579;
        v144 = 6127;
        goto LABEL_191;
      case 3:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_24();
        v143 = 4294954579;
        v144 = 6153;
        goto LABEL_191;
      default:
        v57 = 0;
        v25 = 0;
        if (v29)
        {
          goto LABEL_59;
        }

        goto LABEL_107;
    }
  }
}

uint64_t hevcbridgeParseVdrDmDataPayload(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v167 = 0;
  v8 = *(a2 + 92);
  result = hevcbridgeUEPullLong(a1, &v167);
  if ((v8 & 1) != 0 && !result)
  {
    v10 = OUTLINED_FUNCTION_95();
    result = v11(v10, 460, v167, 0xFFFFFFFFLL);
  }

  if (!result)
  {
    v166 = 0;
    v12 = *(a2 + 92);
    result = hevcbridgeUEPullLong(a1, &v166);
    if ((v12 & 2) != 0 && !result)
    {
      v13 = OUTLINED_FUNCTION_95();
      result = v14(v13, 461, v166, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      v165 = 0;
      v15 = *(a2 + 92);
      result = hevcbridgeUEPullLong(a1, &v165);
      if ((v15 & 4) != 0 && !result)
      {
        v16 = OUTLINED_FUNCTION_95();
        result = v17(v16, 462, v165, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        if (!a3)
        {
          v26 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v26, v27, v28, 463, v29, 16);
          if (result)
          {
            return result;
          }

          v30 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v30, v31, v32, 464, v33, 16);
          if (result)
          {
            return result;
          }

          v34 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v34, v35, v36, 465, v37, 16);
          if (result)
          {
            return result;
          }

          v38 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v38, v39, v40, 466, v41, 16);
          if (result)
          {
            return result;
          }

          v42 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v42, v43, v44, 467, v45, 16);
          if (result)
          {
            return result;
          }

          v46 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v46, v47, v48, 468, v49, 16);
          if (result)
          {
            return result;
          }

          v50 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v50, v51, v52, 469, v53, 16);
          if (result)
          {
            return result;
          }

          v54 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v54, v55, v56, 470, v57, 16);
          if (result)
          {
            return result;
          }

          v58 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v58, v59, v60, 471, v61, 16);
          if (result)
          {
            return result;
          }

          v62 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v62, v63, v64, 472, v65, 32);
          if (result)
          {
            return result;
          }

          v66 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v66, v67, v68, 473, v69, 32);
          if (result)
          {
            return result;
          }

          v70 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v70, v71, v72, 474, v73, 32);
          if (result)
          {
            return result;
          }

          v74 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v74, v75, v76, 475, v77, 16);
          if (result)
          {
            return result;
          }

          v78 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v78, v79, v80, 476, v81, 16);
          if (result)
          {
            return result;
          }

          v82 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v82, v83, v84, 477, v85, 16);
          if (result)
          {
            return result;
          }

          v86 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v86, v87, v88, 478, v89, 16);
          if (result)
          {
            return result;
          }

          v90 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v90, v91, v92, 479, v93, 16);
          if (result)
          {
            return result;
          }

          v94 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v94, v95, v96, 480, v97, 16);
          if (result)
          {
            return result;
          }

          v98 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v98, v99, v100, 481, v101, 16);
          if (result)
          {
            return result;
          }

          v102 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v102, v103, v104, 482, v105, 16);
          if (result)
          {
            return result;
          }

          v106 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeSPullAlways(v106, v107, v108, 483, v109, 16);
          if (result)
          {
            return result;
          }

          v110 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v110, v111, v112, 484, v113, 16);
          if (result)
          {
            return result;
          }

          v114 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v114, v115, v116, 485, v117, 16);
          if (result)
          {
            return result;
          }

          v118 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v118, v119, v120, 486, v121, 16);
          if (result)
          {
            return result;
          }

          v122 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v122, v123, v124, 487, v125, 32);
          if (result)
          {
            return result;
          }

          v126 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v126, v127, v128, 488, v129, 5);
          if (result)
          {
            return result;
          }

          v130 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v130, v131, v132, 489, v133, 2);
          if (result)
          {
            return result;
          }

          v134 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v134, v135, v136, 490, v137, 2);
          if (result)
          {
            return result;
          }

          v138 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v138, v139, v140, 491, v141, 2);
          if (result)
          {
            return result;
          }

          v142 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v142, v143, v144, 492, v145, 12);
          if (result)
          {
            return result;
          }

          v146 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v146, v147, v148, 493, v149, 12);
          if (result)
          {
            return result;
          }

          v150 = OUTLINED_FUNCTION_22_1();
          result = hevcbridgeUPullAlways(v150, v151, v152, 494, v153, 10);
          if (result)
          {
            return result;
          }

          if (a4)
          {
            *(a4 + 29048) = 0;
            *(a4 + 29050) = 0;
            *(a4 + 29052) = 0;
            *(a4 + 29054) = 0;
            *(a4 + 29056) = 0;
            *(a4 + 29058) = 0;
            *(a4 + 29060) = 0;
            *(a4 + 29062) = 0;
            *(a4 + 29064) = 0;
            *(a4 + 29068) = 0;
            *(a4 + 29072) = 0;
            *(a4 + 29076) = 0;
            *(a4 + 29080) = 0;
            *(a4 + 29082) = 0;
            *(a4 + 29084) = 0;
            *(a4 + 29086) = 0;
            *(a4 + 29088) = 0;
            *(a4 + 29090) = 0;
            *(a4 + 29092) = 0;
            *(a4 + 29094) = 0;
            *(a4 + 29096) = 0;
            *(a4 + 29098) = 0;
            *(a4 + 29100) = 0;
            *(a4 + 29102) = 0;
            *(a4 + 29104) = 0;
            *(a4 + 29108) = 0;
            *(a4 + 29109) = 0;
            *(a4 + 29110) = 0;
            *(a4 + 29111) = 0;
            *(a4 + 29112) = 0;
            *(a4 + 29114) = 0;
            *(a4 + 29116) = 0;
          }
        }

        v18 = *(a2 + 92);
        result = hevcbridgeUEPullLong(a1, &v167 + 1);
        if ((v18 & 0x800000000) != 0 && !result)
        {
          v19 = OUTLINED_FUNCTION_95();
          result = v20(v19, 495, HIDWORD(v167), 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v21 = HIDWORD(v167);
          if (HIDWORD(v167) >= 0xFF)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();

            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v161, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1B11, v162, v163, v164);
          }

          else
          {
            if (a4)
            {
              *(a4 + 29118) = BYTE4(v167);
              v22 = v166;
              *(a4 + 29044) = v167;
              *(a4 + 29045) = v22;
              *(a4 + 29046) = v165;
            }

            if (v21)
            {
              while (*(a1 + 76))
              {
                v23 = OUTLINED_FUNCTION_91();
                result = hevcbridgeUPullLong(v23, v24, v25);
                if (result)
                {
                  return result;
                }
              }

              v154 = v21;
              while (1)
              {
                v155 = OUTLINED_FUNCTION_22_1();
                result = hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks(v155, v156, 1, a4);
                if (result)
                {
                  break;
                }

                if (!--v154)
                {
                  goto LABEL_62;
                }
              }
            }

            else
            {
LABEL_62:
              if (*(a1 + 8) + *a1 - *(a1 + 56) < 6uLL)
              {
                return 0;
              }

              v157 = OUTLINED_FUNCTION_22_1();
              result = hevcbridgeUEPullAlways(v157, v158, v159, 591, v160);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcBridgeAlignToByte(size_t result)
{
  if (*(result + 76))
  {
    v1 = result;
    do
    {
      OUTLINED_FUNCTION_27_5();
      result = hevcbridgeUPush(v2, v3, v4, v5);
    }

    while (!result && *(v1 + 76));
  }

  return result;
}

size_t hevcbridgeParseNALUnit_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1CC1, v1, v2, v3);
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16D6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16E0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEI3DReferenceDisplaysInformation_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x16D2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x421, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetAtIndex_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v1, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2881, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x289D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28C8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28C7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28BE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28BD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28B8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x28AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x28A3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2892, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2880, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayersHVCCOrLHVCFromMuxedAlphaConfigRecord_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x287F, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_1()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x292C, v3, v4, v5);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateSelectedLayerHVCCFromMuxedAlphaHVCC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2925, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2AD3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2ADF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2AE0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AE6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AD6, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_9()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2ABC, v3, v4, v5);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2AB9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AB2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2AAF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A9F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2A3F, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A5C, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A5B, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A53, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A52, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_6()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A4D, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2A44, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2A3E, v1, v2, v3);
}

size_t hevcbridge_isSelectedLayerIdInConfigRecord_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2A2F, v1, v2, v3);
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29BD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29D6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29D2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29C8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29B8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_getHEVCParameterSetWithNuhLayerID_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x29AE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2957, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2954, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x295D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x297B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x297A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2971, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2970, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x296B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2962, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x295A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_updateConfigRecordNuhLayerID_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2949, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B32, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B4D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B51, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B52, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B56, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B57, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B67, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B5D, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_11()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B38, v3, v4, v5);

  CFRelease(v1);
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B35, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B31, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B2A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2B27, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2B1C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2BA1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B9E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B98, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerNALUnitsToBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2B95, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BC0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_2()
{
  OUTLINED_FUNCTION_22_4();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", v1, v3, v4, v5);
  *v0 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", 0x2BD5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE51uLL, "<<<< HEVCBridge >>>>", 0x2C16, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BBF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2BBE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateAlphaInfoSEI_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D15, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D66, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D6B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D6A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D80, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DA1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DA0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D97, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D96, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D86, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DF1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2DF0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2D7F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D76, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2D70, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaHVCCOrLHVC_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2D5D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C51, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C50, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C4D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C7B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2C4C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2C47, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridge_copyModifedAlphaSPSAndPPSFromHVCCOrLHVC_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2C41, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E42, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E61, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E60, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E58, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E57, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E52, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E47, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x2E3E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< HEVCBridge >>>>", 0x2E3B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2E38, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeCreateLHVCFromHEVCParameterSets_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x2E21, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMuxedAlphaDataBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3001, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateMultiviewMuxedAlphaDataBuffer_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x301F, v1, v2, v3);
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x30D9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30CB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x30C0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3804, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3801, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3807, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_WritePaddingNALU_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x3859, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x383C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3835, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3833, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3831, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3830, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x32F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x333, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPullLong_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x331, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVideoParameterSet_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xDFE, v1, v2, v3);
}

size_t hevcbridgeParseVideoParameterSet_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xDC7, v1, v2, v3);
}

size_t hevcbridgeParsePictureParameterSet_cold_1(const CMBlockBufferCustomBlockSource *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", a1, v3, v4, v5);
}

size_t hevcbridgeParsePictureParameterSet_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x11CD, v1, v2, v3);
}

size_t hevcbridgeParsePictureParameterSet_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x116B, v1, v2, v3);
}

size_t hevcbridgeParsePictureParameterSet_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1169, v1, v2, v3);
}

size_t hevcbridgeParsePictureParameterSet_cold_5(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_22_4();
  do
  {
    result = hevcbridgeUPullFlagAlways(v4, v3, (*(v3 + 52) >> 35) & 1, 262, &v7);
    *a3 = result;
    if (result)
    {
      break;
    }

    if ((v4[6] + 1) >= v4[1] + *v4)
    {
      break;
    }

    result = hevcbridgeMoreRBSPData(v4);
  }

  while (result);
  return result;
}

size_t hevcbridgeParsePictureParameterSet_cold_6()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x11F3, v1, v2, v3);
}

size_t hevcbridgeParseSEIRBSP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x1463, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x148A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1487, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1486, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x14A0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< HEVCBridge >>>>", 0x149C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1447, v1, v2, v3);
}

size_t hevcbridgeParseSEIRBSP_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1482, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSEIRBSP_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x14E7, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x124F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSliceSegmentLayer_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12BC, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C8, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C7, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x12C6, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_6()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1317, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x1314, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x13E1, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x13E4, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_10()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x133D, v1, v2, v3);
}

size_t hevcbridgeParseSliceSegmentLayer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1258, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x301, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUPull_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x2FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUSkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x30C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUSkip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x30E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseProfileTierLevel_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xA4E, v1, v2, v3);
}

size_t hevcbridgeUESkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x366, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUESkip_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x36E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUESkip_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x375, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseHRDParameters_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xAF9, v1, v2, v3);
}

size_t hevcbridgeUEPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x349, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPullLong_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x351, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeUEPullLong_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x358, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseSTRefPicSet_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEB7, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE7A, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE76, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xE6E, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_5()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEC8, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_6()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xED5, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_7()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEC0, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_8()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEBF, v1, v2, v3);
}

size_t hevcbridgeParseSTRefPicSet_cold_9()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0xEBE, v1, v2, v3);
}

size_t hevcbridgeSESkip_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3B9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParsePictureParameterSetMultilayerExtension_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x10CF, v1, v2, v3);
}

size_t hevcbridgeParsePictureParameterSetMultilayerExtension_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x10AF, v1, v2, v3);
}

size_t hevcbridgeSEPullLong_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3C6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeSPullAlways_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x3A1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A87, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A85, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x1A84, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeSEPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x444, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x474, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x479, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t hevcbridgeIPush_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "<<<< HEVCBridge >>>>", 0x47A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v27 = 0;
  FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt();
  if (*(a1 + 64))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294947867;
    v22 = 508;
LABEL_26:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v21, "<< FigOSEventLink >>", v22, v18, v19, v20);
LABEL_27:
    v13 = DataPointer;
LABEL_28:
    v15 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_4_17();
  DataPointer = CMBlockBufferGetDataPointer(v6, v7, v8, v9, v10);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  DataPointer = (*(a2 + 16))(a2, *(*(a1 + 16) + 40));
  if (DataPointer)
  {
    goto LABEL_27;
  }

  if (!FigAtomicCompareAndSwap32(0, 1u, (v28 + 12)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294947872;
    v22 = 516;
    goto LABEL_26;
  }

  v12 = v28;
  *v28 = 1;
  *(v12 + 16) = 0;
  os_unfair_lock_lock((a1 + 32));
  *(v28 + 4) = *(a1 + 36);
  *(a1 + 36) = 0x500000000;
  os_unfair_lock_unlock((a1 + 32));
  v31 = 0uLL;
  v32 = 0;
  v30 = 0;
  if (*(a1 + 48) && *(a1 + 56))
  {
    v29 = 0;
    v32 = FigAtomicIncrement64(&v29);
    v31 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    *(v28 + 16) = v32;
    FigThreadRegisterAbortAction(figOSEventLinkRemoteAbortAction, &v31, &v30);
  }

  LODWORD(v13) = os_eventlink_signal_and_wait();
  if (v30)
  {
    FigThreadUnregisterAbortAction(v30);
  }

  if (v13 == 89)
  {
    v13 = 4294947868;
  }

  else
  {
    v13 = v13;
  }

  if (v13)
  {
    goto LABEL_28;
  }

  v14 = figOSEventLinkResolveMessageStatus((v28 + 12), &v27);
  v15 = v27;
  if (v14)
  {
    v13 = v14;
    goto LABEL_21;
  }

  if (!v27)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294947872;
    v22 = 533;
    goto LABEL_26;
  }

  if (FigAtomicCompareAndSwap32(1, 2u, (v28 + 28)))
  {
    v13 = (*(a3 + 16))(a3, *(*(a1 + 16) + 48));
    if (!v13)
    {
      v13 = *(v28 + 24);
    }

    *(v28 + 12) = 0;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x217, v24, v25, v26);
  }

  v15 = 1;
LABEL_21:
  FigMemoryOriginCompleteTransaction(!v15);
  return v13;
}

size_t FigOSEventLinkRemoteInvalidate(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 64))
    {
      *(a1 + 64) = 1;
      os_eventlink_cancel();
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x22F, v3, v4, v5);
  }
}

uint64_t FigOSEventLinkServerMain(void *a1)
{
  if (!os_eventlink_associate() && !os_eventlink_wait())
  {
    OUTLINED_FUNCTION_4_17();
    if (!CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6))
    {
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      do
      {
        while (1)
        {
          if (v7)
          {
            goto LABEL_50;
          }

          if (!a1[8])
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFB41FuLL, "<< FigOSEventLink >>", 0x354, v44, v45, v46);
            goto LABEL_50;
          }

          if (*v48 == 1)
          {
            break;
          }

          if (*v48)
          {
            v7 = 0;
          }

          else
          {
            *(v48 + 24) = 0;
            v9 = os_eventlink_signal();
            v7 = 1;
            if (v9)
            {
              goto LABEL_50;
            }
          }
        }

        if (FigAtomicCompareAndSwap32(1, 2u, (v48 + 12)))
        {
          v10 = *(v48 + 4);
          if (v10 > 0)
          {
            goto LABEL_13;
          }

          if (*(v48 + 8) == 5)
          {
            goto LABEL_17;
          }

          if (v10)
          {
LABEL_13:
            SInt32 = FigCFNumberCreateSInt32(v8, v10);
            v12 = &kFigThreadPropertyKey_MachThreadPriority;
          }

          else
          {
            SInt32 = FigCFNumberCreateUInt32(v8, *(v48 + 8));
            v12 = &kFigThreadPropertyKey_Priority;
          }

          v13 = *v12;
          Current = FigThreadGetCurrent();
          FigThreadSetProperty(Current, v13, SInt32);
          if (SInt32)
          {
            CFRelease(SInt32);
          }

          *(v48 + 4) = 0x500000000;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x2BA, v28, v29, v30);
        }

LABEL_17:
        FigMemoryOriginBeginTransactionMakingRegistrationsContingentOnIt();
        if (!FigAtomicCompareAndSwap32(0, 1u, (v48 + 28)))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x2D9, v32, v33, v34);
        }

        if (*(v48 + 12) == 2)
        {
          v15 = *(v48 + 16);
          if (v15 && a1[12] && a1[13] && (v16 = a1[11]) != 0)
          {
            v17 = FigCFWeakReferenceHolderCopyReferencedObject(v16);
            if (v17)
            {
              v18 = a1[12];
              v19 = FigThreadGetCurrent();
              v18(v17, v19, v15);
            }
          }

          else
          {
            v17 = 0;
          }

          v20 = a1[9];
          if (v20)
          {
            v21 = FigCFWeakReferenceHolderCopyReferencedObject(v20);
          }

          else
          {
            v21 = 0;
          }

          v22 = objc_autoreleasePoolPush();
          v23 = (a1[8])(a1, v21, *(a1[3] + 40), *(a1[3] + 48));
          objc_autoreleasePoolPop(v22);
          if (v21)
          {
            CFRelease(v21);
          }

          if (v17)
          {
            (a1[13])(v17, v15);
            CFRelease(v17);
          }

          *(v48 + 24) = v23;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFB41EuLL, "<< FigOSEventLink >>", 0x318, v36, v37, v38);
          *(v48 + 24) = 0;
          if (v24)
          {
            goto LABEL_37;
          }
        }

        v24 = os_eventlink_signal_and_wait();
LABEL_37:
        v49 = 0;
        v25 = figOSEventLinkResolveMessageStatus((v48 + 28), &v49);
        v26 = v49;
        if (!v25)
        {
          if (v49)
          {
            *(v48 + 28) = 0;
          }

          else
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_6_13();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x331, v40, v41, v42);
          }
        }

        FigMemoryOriginCompleteTransaction(!v26);
        v7 = 0;
      }

      while (!v24);
    }
  }

LABEL_50:
  os_eventlink_cancel();
  CFRelease(a1);
  return 0;
}