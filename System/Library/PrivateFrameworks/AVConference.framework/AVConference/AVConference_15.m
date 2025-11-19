uint64_t CreateBye(unint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47[2] = v10;
  v47[3] = v10;
  v47[0] = v10;
  v47[1] = v10;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v45[0] = v10;
  v45[1] = v10;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  v11 = DLGetData(a2, __b);
  if ((v11 & 0x80000000) == 0)
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v12 = CreateGenericSIPMsg(&v42, SHIDWORD(__b[0]), __b[3], SWORD1(__b[3]), a5 != 0);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    DLIncreaseLocalSeq(a2, &v43);
    v13 = v42;
    *(v42 + 4) = 0x400000001;
    v14 = 97;
    if (*(&__b[62] + 6) != 5260116)
    {
      v14 = 83;
    }

    v15 = &__b[v14];
    v16 = *v15;
    v17 = v15[1];
    *(v13 + 44) = v15[2];
    *(v13 + 28) = v17;
    *(v13 + 12) = v16;
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    *(v13 + 108) = v15[6];
    *(v13 + 92) = v20;
    *(v13 + 76) = v19;
    *(v13 + 60) = v18;
    v21 = *(&__b[5] + 4);
    *(v13 + 696) = *(&__b[3] + 4);
    *(v13 + 712) = v21;
    *(v13 + 728) = *(&__b[7] + 4);
    v22 = *(&__b[8] + 4);
    v23 = *(&__b[10] + 4);
    *(v13 + 768) = *(&__b[12] + 4);
    *(v13 + 736) = v22;
    *(v13 + 752) = v23;
    v24 = *(&__b[13] + 4);
    v25 = *(&__b[15] + 4);
    *(v13 + 808) = *(&__b[17] + 4);
    *(v13 + 776) = v24;
    *(v13 + 792) = v25;
    v26 = *(&__b[18] + 4);
    v27 = *(&__b[20] + 4);
    *(v13 + 848) = *(&__b[22] + 4);
    *(v13 + 816) = v26;
    *(v13 + 832) = v27;
    v28 = *(&__b[23] + 4);
    v29 = *(&__b[25] + 4);
    *(v13 + 888) = *(&__b[27] + 4);
    *(v13 + 856) = v28;
    *(v13 + 872) = v29;
    v30 = CreateCallIDHdr(&v41);
    if ((v30 & 0x80000000) != 0)
    {
      v39 = v30;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateBye_cold_9();
        }
      }
    }

    else
    {
      *(v13 + 208) = v41;
      v31 = CreateCSeqHdr(&v41, v43, 4);
      if ((v31 & 0x80000000) != 0)
      {
        v39 = v31;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateBye_cold_8();
          }
        }
      }

      else
      {
        *(v13 + 272) = v41;
        v32 = CreateFromHdr(&v41, &__b[36], &__b[69]);
        if ((v32 & 0x80000000) != 0)
        {
          v39 = v32;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              CreateBye_cold_7();
            }
          }
        }

        else
        {
          *(v13 + 312) = v41;
          v33 = CreateToHdr(&v41, &__b[41] + 3, &__b[83]);
          if ((v33 & 0x80000000) != 0)
          {
            v39 = v33;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                CreateBye_cold_6();
              }
            }
          }

          else
          {
            *(v13 + 480) = v41;
            IPToString();
            GenerateBranch(v47);
            v34 = CreateViaHdr(&v41, DEFAULT_TRANSPORT, BYTE4(__b[13]) & 1, v45, __b[18], v47, 0);
            if ((v34 & 0x80000000) != 0)
            {
              v39 = v34;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  CreateBye_cold_5();
                }
              }
            }

            else
            {
              *(v13 + 504) = v41;
              v35 = CreateUserAgentHdr(&v41);
              if ((v35 & 0x80000000) != 0)
              {
                v39 = v35;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    CreateBye_cold_4();
                  }
                }
              }

              else
              {
                *(v13 + 496) = v41;
                v36 = CreateReasonHdr(&v41, "*", a3, a4);
                if ((v36 & 0x80000000) != 0)
                {
                  v39 = v36;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      CreateBye_cold_3();
                    }
                  }
                }

                else
                {
                  *(v13 + 544) = v41;
                  v37 = CreateContentLengthHdr(&v41, -1);
                  if ((v37 & 0x80000000) != 0)
                  {
                    v39 = v37;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        CreateBye_cold_2();
                      }
                    }
                  }

                  else
                  {
                    *(v13 + 256) = v41;
                    v38 = CreateMaxForwardsHdr(&v41, 70);
                    if ((v38 & 0x80000000) == 0)
                    {
                      v39 = 0;
                      *(v13 + 328) = v41;
                      *a1 = v13;
                      return v39;
                    }

                    v39 = v38;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        CreateBye_cold_1();
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

    FreeSipMsg(v13);
    return v39;
  }

  v39 = v11;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      CreateBye_cold_10();
    }
  }

  return v39;
}

uint64_t CreateMessageInDialog(unint64_t *a1, uint64_t a2, char *__s, int a4)
{
  if (__s)
  {
    v8 = strlen(__s);
  }

  else
  {
    v8 = 0;
  }

  return CreateBinaryMessageInDialog(a1, a2, __s, v8, a4);
}

uint64_t CreateBinaryMessageInDialog(unint64_t *a1, uint64_t a2, const void *a3, int a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v10;
  v48[3] = v10;
  v48[0] = v10;
  v48[1] = v10;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v46[0] = v10;
  v46[1] = v10;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  v11 = DLGetData(a2, __b);
  if ((v11 & 0x80000000) != 0)
  {
    v40 = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_11();
      }
    }

    return v40;
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  v12 = CreateGenericSIPMsg(&v43, SHIDWORD(__b[0]), __b[3], SWORD1(__b[3]), a5 != 0);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  DLIncreaseLocalSeq(a2, &v44);
  v13 = v43;
  *(v43 + 4) = 0x700000001;
  v14 = 97;
  if (*(&__b[62] + 6) != 5260116)
  {
    v14 = 83;
  }

  v15 = &__b[v14];
  v16 = *v15;
  v17 = v15[1];
  *(v13 + 44) = v15[2];
  *(v13 + 28) = v17;
  *(v13 + 12) = v16;
  v18 = v15[3];
  v19 = v15[4];
  v20 = v15[5];
  *(v13 + 108) = v15[6];
  *(v13 + 92) = v20;
  *(v13 + 76) = v19;
  *(v13 + 60) = v18;
  v21 = *(&__b[5] + 4);
  *(v13 + 696) = *(&__b[3] + 4);
  *(v13 + 712) = v21;
  *(v13 + 728) = *(&__b[7] + 4);
  v22 = *(&__b[8] + 4);
  v23 = *(&__b[10] + 4);
  *(v13 + 768) = *(&__b[12] + 4);
  *(v13 + 736) = v22;
  *(v13 + 752) = v23;
  v24 = *(&__b[13] + 4);
  v25 = *(&__b[15] + 4);
  *(v13 + 808) = *(&__b[17] + 4);
  *(v13 + 776) = v24;
  *(v13 + 792) = v25;
  v26 = *(&__b[18] + 4);
  v27 = *(&__b[20] + 4);
  *(v13 + 848) = *(&__b[22] + 4);
  *(v13 + 816) = v26;
  *(v13 + 832) = v27;
  v28 = *(&__b[23] + 4);
  v29 = *(&__b[25] + 4);
  *(v13 + 888) = *(&__b[27] + 4);
  *(v13 + 856) = v28;
  *(v13 + 872) = v29;
  v30 = CreateCallIDHdr(&v42);
  if ((v30 & 0x80000000) != 0)
  {
    v40 = v30;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_10();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 208) = v42;
  v31 = CreateCSeqHdr(&v42, v44, 7);
  if ((v31 & 0x80000000) != 0)
  {
    v40 = v31;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_9();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 272) = v42;
  v32 = CreateFromHdr(&v42, &__b[36], &__b[69]);
  if ((v32 & 0x80000000) != 0)
  {
    v40 = v32;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_8();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 312) = v42;
  v33 = CreateToHdr(&v42, &__b[41] + 3, &__b[83]);
  if ((v33 & 0x80000000) != 0)
  {
    v40 = v33;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_7();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 480) = v42;
  IPToString();
  GenerateBranch(v48);
  v34 = CreateViaHdr(&v42, DEFAULT_TRANSPORT, BYTE4(__b[13]) & 1, v46, __b[18], v48, 0);
  if ((v34 & 0x80000000) != 0)
  {
    v40 = v34;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_6();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 504) = v42;
  v35 = CreateUserAgentHdr(&v42);
  if ((v35 & 0x80000000) != 0)
  {
    v40 = v35;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_5();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 496) = v42;
  v36 = CreateContentTypeHdr(&v42);
  if ((v36 & 0x80000000) != 0)
  {
    v40 = v36;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_4();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 264) = v42;
  v37 = CreateContentLengthHdr(&v42, -1);
  if ((v37 & 0x80000000) != 0)
  {
    v40 = v37;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_3();
      }
    }

    goto LABEL_49;
  }

  *(v13 + 256) = v42;
  v38 = CreateMaxForwardsHdr(&v42, 70);
  if ((v38 & 0x80000000) != 0)
  {
    v40 = v38;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateBinaryMessageInDialog_cold_2();
      }
    }

LABEL_49:
    FreeSipMsg(v13);
    return v40;
  }

  *(v13 + 328) = v42;
  if (!a3)
  {
LABEL_17:
    v40 = 0;
    *a1 = v13;
    return v40;
  }

  v39 = malloc_type_malloc(a4 + 1, 0x100004077774924uLL);
  *(v13 + 552) = v39;
  if (v39)
  {
    *(v13 + 560) = a4;
    v39[a4] = 0;
    memcpy(*(v13 + 552), a3, a4);
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      CreateBinaryMessageInDialog_cold_1();
    }
  }

  FreeSipMsg(v13);
  return 2148401155;
}

uint64_t CreateSKEMessageInDialog(unint64_t *a1, uint64_t a2, const void *a3, int a4, uint64_t a5, int a6, int a7)
{
  v15[1] = *MEMORY[0x1E69E9840];
  BinaryMessageInDialog = CreateBinaryMessageInDialog(a1, a2, a3, a4, a7);
  if ((BinaryMessageInDialog & 0x80000000) != 0)
  {
    return BinaryMessageInDialog;
  }

  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  *(*a1 + 564) = 1;
  SKESeqHdr = CreateSKESeqHdr(v15, a5, a6);
  if ((SKESeqHdr & 0x80000000) != 0)
  {
    v13 = SKESeqHdr;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateSKEMessageInDialog_cold_2();
      }
    }

    goto LABEL_12;
  }

  *(*a1 + 528) = v15[0];
  free(*(*a1 + 264));
  ContentTypeHdr = CreateContentTypeHdr(v15);
  if ((ContentTypeHdr & 0x80000000) != 0)
  {
    v13 = ContentTypeHdr;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateSKEMessageInDialog_cold_1();
      }
    }

LABEL_12:
    FreeSipMsg(*a1);
    return v13;
  }

  v13 = 0;
  *(*a1 + 264) = v15[0];
  return v13;
}

uint64_t CreateGenericStatus(unint64_t *a1, uint64_t a2, int a3, char *a4, char *a5, int a6, int a7, int a8, int a9)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 2148401186;
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v17 = CreateGenericSIPMsg(&v65, *(a2 + 572), *(a2 + 568), *(a2 + 570), *(a2 + 1008));
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = v65;
  *(v65 + 4) = 2;
  *(v18 + 8) = a3;
  if (a4 && *a4)
  {
    v19 = (v18 + 12);
    StatusMsg = a4;
  }

  else
  {
    StatusMsg = GetStatusMsg(a3);
    v19 = (v18 + 12);
  }

  strncpy(v19, StatusMsg, 0x2BuLL);
  v22 = *(a2 + 696);
  v23 = *(a2 + 712);
  *(v18 + 728) = *(a2 + 728);
  *(v18 + 696) = v22;
  *(v18 + 712) = v23;
  v24 = *(a2 + 736);
  v25 = *(a2 + 752);
  *(v18 + 768) = *(a2 + 768);
  *(v18 + 736) = v24;
  *(v18 + 752) = v25;
  v26 = *(a2 + 776);
  v27 = *(a2 + 792);
  *(v18 + 808) = *(a2 + 808);
  *(v18 + 776) = v26;
  *(v18 + 792) = v27;
  v28 = *(a2 + 816);
  v29 = *(a2 + 832);
  *(v18 + 848) = *(a2 + 848);
  *(v18 + 816) = v28;
  *(v18 + 832) = v29;
  v30 = *(a2 + 856);
  v31 = *(a2 + 872);
  *(v18 + 888) = *(a2 + 888);
  *(v18 + 856) = v30;
  *(v18 + 872) = v31;
  v32 = CopySipHeader(&v64, *(a2 + 208), 9u);
  if ((v32 & 0x80000000) != 0)
  {
    v21 = v32;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_17();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 208) = v64;
  v33 = CopySipHeader(&v64, *(a2 + 312), 0x16u);
  if ((v33 & 0x80000000) != 0)
  {
    v21 = v33;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_16();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 312) = v64;
  v34 = CopySipHeader(&v64, *(a2 + 272), 0x11u);
  if ((v34 & 0x80000000) != 0)
  {
    v21 = v34;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_15();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 272) = v64;
  v35 = CopySipHeader(&v64, *(a2 + 504), 0x2Eu);
  if ((v35 & 0x80000000) != 0)
  {
    v21 = v35;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_14();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 504) = v64;
  v36 = CopySipHeader(&v64, *(a2 + 480), 0x2Bu);
  if ((v36 & 0x80000000) != 0)
  {
    v21 = v36;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_13();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 480) = v64;
  v37 = *(a2 + 528);
  if (v37)
  {
    CopySipHeader(&v64, v37, 0x31u);
    *(v18 + 528) = v64;
  }

  v38 = CreateUserAgentHdr(&v64);
  if ((v38 & 0x80000000) != 0)
  {
    v21 = v38;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_12();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 496) = v64;
  v39 = CreateContentLengthHdr(&v64, -1);
  if ((v39 & 0x80000000) != 0)
  {
    v21 = v39;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericStatus_cold_11();
      }
    }

    goto LABEL_116;
  }

  *(v18 + 256) = v64;
  v40 = *(a2 + 8);
  switch(v40)
  {
    case 10:
      if (a3 == 1)
      {
        goto LABEL_62;
      }

      if (a3 != 39)
      {
        v49 = 10;
LABEL_87:
        if ((a3 - 8) > 4 || v49 != 10)
        {
          if ((a3 & 0xFFFFFFFE) != 6 || v49 != 8)
          {
            goto LABEL_102;
          }

          *&v66[108] = -1431655766;
          *&v54 = 0xAAAAAAAAAAAAAAAALL;
          *(&v54 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v66[92] = v54;
          *&v66[76] = v54;
          *&v66[60] = v54;
          goto LABEL_94;
        }

LABEL_89:
        *&v51 = 0xAAAAAAAAAAAAAAAALL;
        *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v66[80] = v51;
        *&v66[96] = v51;
        *&v66[48] = v51;
        *&v66[64] = v51;
        *&v66[16] = v51;
        *&v66[32] = v51;
        *v66 = v51;
        if (a3 == 10)
        {
          v52 = (a5 + 44);
          a8 = *(a5 + 39);
          v53 = a5;
          a5 = 0;
LABEL_95:
          v55 = CreateContactHdr(&v64, v53, v52, a8, a9);
          if ((v55 & 0x80000000) != 0)
          {
            v21 = v55;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                CreateGenericStatus_cold_10();
              }
            }

            goto LABEL_116;
          }

          *(v18 + 224) = v64;
          if (a3 == 6 && a5 && *a5)
          {
            v56 = CreateContentTypeHdr(&v64);
            if ((v56 & 0x80000000) != 0)
            {
              v21 = v56;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  CreateGenericStatus_cold_8();
                }
              }

              goto LABEL_116;
            }

            *(v18 + 264) = v64;
          }

          v49 = *(a2 + 8);
LABEL_102:
          if (!a5 || v49 != 7 || !*(v18 + 528))
          {
LABEL_107:
            v58 = *(a2 + 480);
            v60 = *(v58 + 156);
            v59 = (v58 + 156);
            if (!v60)
            {
              v61 = *(v18 + 480);
              GenerateTag(v59);
              strncpy((v61 + 156), v59, 0x40uLL);
            }

            goto LABEL_109;
          }

          v57 = CreateContentTypeHdr(&v64);
          if ((v57 & 0x80000000) == 0)
          {
            *(v18 + 264) = v64;
            goto LABEL_107;
          }

          v21 = v57;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              CreateGenericStatus_cold_9();
            }
          }

LABEL_116:
          FreeSipMsg(v18);
          return v21;
        }

LABEL_94:
        *&v66[5] = *"user";
        strcpy(v66, "sip");
        v66[4] = 0;
        memset(&v66[21], 0, 35);
        *&v66[56] = *(a2 + 776) & 1;
        v52 = v66;
        IPToString();
        *&v66[100] = *(a2 + 812);
        strncpy(&v66[102], DEFAULT_TRANSPORT, 4uLL);
        v53 = 0;
        *&v66[108] = 0;
        goto LABEL_95;
      }

      v46 = CreateAllowEventsHdr(&v64, a8);
      if ((v46 & 0x80000000) != 0)
      {
        v21 = v46;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateGenericStatus_cold_1();
          }
        }

        goto LABEL_116;
      }

      goto LABEL_61;
    case 9:
      if ((a3 & 0xFFFFFFFE) == 6)
      {
        v44 = *(a2 + 304);
        if (v44)
        {
          v45 = CopySipHeader(&v64, v44, 0x15u);
        }

        else
        {
          v45 = CreateExpiresHdr(&v64, 3600);
        }

        v21 = v45;
        if ((v45 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              CreateGenericStatus_cold_4();
            }
          }

          goto LABEL_116;
        }

        v48 = 304;
        goto LABEL_73;
      }

      if (a3 == 1)
      {
        goto LABEL_62;
      }

      if (a3 == 29)
      {
        v50 = CreateMinExpiresHdr(&v64, 600);
        if ((v50 & 0x80000000) != 0)
        {
          v21 = v50;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              CreateGenericStatus_cold_2();
            }
          }

          goto LABEL_116;
        }

        v48 = 344;
        goto LABEL_73;
      }

      if (a3 != 39)
      {
        v49 = 9;
        goto LABEL_85;
      }

      v47 = CreateAllowEventsHdr(&v64, a8);
      if ((v47 & 0x80000000) != 0)
      {
        v21 = v47;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateGenericStatus_cold_3();
          }
        }

        goto LABEL_116;
      }

LABEL_61:
      v48 = 184;
LABEL_73:
      *(v18 + v48) = v64;
      goto LABEL_74;
    case 3:
      v41 = CreateAcceptHdr(&v64, a8);
      if ((v41 & 0x80000000) != 0)
      {
        v21 = v41;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateGenericStatus_cold_7();
          }
        }

        goto LABEL_116;
      }

      *(v18 + 144) = v64;
      v42 = CreateAllowHdr(&v64, a8);
      if ((v42 & 0x80000000) != 0)
      {
        v21 = v42;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateGenericStatus_cold_6();
          }
        }

        goto LABEL_116;
      }

      *(v18 + 176) = v64;
      v43 = CreateAllowEventsHdr(&v64, a8);
      if ((v43 & 0x80000000) != 0)
      {
        v21 = v43;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateGenericStatus_cold_5();
          }
        }

        goto LABEL_116;
      }

      *(v18 + 184) = v64;
      break;
  }

  if (a3 != 1)
  {
LABEL_74:
    v49 = *(a2 + 8);
    if ((v49 | 2) == 3)
    {
      goto LABEL_89;
    }

LABEL_85:
    if ((a3 - 6) <= 6 && v49 == 9)
    {
      goto LABEL_89;
    }

    goto LABEL_87;
  }

LABEL_62:
  *(*(v18 + 480) + 156) = 0;
LABEL_109:
  if (a5)
  {
    *(v18 + 564) = a7;
    v62 = malloc_type_malloc(a6 + 1, 0x100004077774924uLL);
    *(v18 + 552) = v62;
    if (!v62)
    {
      FreeSipMsg(v18);
      return 2148401155;
    }

    *(v18 + 560) = a6;
    v62[a6] = 0;
    memcpy(*(v18 + 552), a5, a6);
  }

  v21 = 0;
  *a1 = v18;
  return v21;
}

uint64_t CreateStatus(unint64_t *a1, uint64_t a2, int a3, char *a4, char *__s, int a6, int a7)
{
  if (__s)
  {
    v14 = strlen(__s);
  }

  else
  {
    v14 = 0;
  }

  return CreateGenericStatus(a1, a2, a3, a4, __s, v14, 0, a6, a7);
}

uint64_t ConstructSipMsg(char *a1, size_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v6 = *(a3 + 4);
  if (v6 == 2)
  {
    GetIntStatusCode(*(a3 + 8));
    __sprintf_chk(__b, 0, 0x500uLL, "%s %d %s\r\n");
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    v15 = v7;
    *&buf[16] = v7;
    *&buf[32] = v7;
    *buf = v7;
    ConstructUri(buf, (a3 + 12));
    __sprintf_chk(__b, 0, 0x500uLL, "%s %s %s\r\n");
LABEL_5:
    strncpy(a1, __b, a2);
    if ((ConstructViaHdr(__b, *(a3 + 504), 0x500uLL) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructMaxForwardsHdr(__b, *(a3 + 328)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructToHdr(__b, *(a3 + 480)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructFromHdr(__b, *(a3 + 312)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructCallIDHdr(__b, *(a3 + 208)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructCSeqHdr(__b, *(a3 + 272)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructReferToHdr(__b, *(a3 + 400)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructContactHdr(__b, *(a3 + 224)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructAllowHdr(__b, *(a3 + 176), 0x500uLL) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructEventHdr(__b, *(a3 + 296)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructAllowEventsHdr(__b, *(a3 + 184), 0x500uLL) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructAcceptHdr(__b, *(a3 + 144), 0x500uLL) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructSubscriptionStateHdr(__b, *(a3 + 456)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructExpiresHdr(__b, *(a3 + 304)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructMinExpiresHdr(__b, *(a3 + 344)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructUserAgentHdr(__b, *(a3 + 496)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructContentTypeHdr(__b, *(a3 + 264)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructContentEncodingHdr(__b, *(a3 + 240)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructContentLengthHdr(__b, *(a3 + 256)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    if ((ConstructSKESeqHdr(__b, *(a3 + 528)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    bzero(__b, 0x500uLL);
    if ((ConstructReasonHdr(__b, *(a3 + 544)) & 0x80000000) == 0)
    {
      strncat(a1, __b, a2);
    }

    strncat(a1, "\r\n", a2);
    v8 = 0;
    a1[a2 - 1] = 0;
    return v8;
  }

  v8 = 2148401153;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a3 + 4);
      *buf = 136316162;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "ConstructSipMsg";
      *&buf[22] = 1024;
      *&buf[24] = 1271;
      *&buf[28] = 1024;
      *&buf[30] = 1271;
      *&buf[34] = 1024;
      *&buf[36] = v12;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipMsg.c:%d: Invalid SIP Message(%d)", buf, 0x28u);
    }
  }

  return v8;
}

uint64_t AssignHeader(uint64_t a1, unsigned int a2, char *__s2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = 2148401186;
  if (!a1)
  {
    return 2148401153;
  }

  v7 = a1 + 136;
  v8 = *(a1 + 136 + 8 * a2);
  if (v8)
  {
    switch(a2)
    {
      case 0x14u:
        *(a1 + 124) = 1;
        break;
      case 0x21u:
        *(a1 + 128) = 1;
        break;
      case 0x2Eu:
        v9 = *(a1 + 504);
        v10 = *v9;
        v11 = *__s2;
        if (*__s2 + *v9 >= 6)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *v9;
              v15 = *__s2;
              v19 = 136316674;
              v20 = v12;
              v21 = 2080;
              v22 = "AssignHeader";
              v23 = 1024;
              v24 = 1418;
              v25 = 1024;
              v26 = 1418;
              v27 = 1024;
              v28 = 5;
              v29 = 1024;
              v30 = v14;
              v31 = 1024;
              v32 = v15;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipMsg.c:%d: # of Via exceeded the maximum %d < %d+%d", &v19, 0x34u);
            }
          }

          if (*v9 >= 6)
          {
            v11 = 0;
          }

          else
          {
            v11 = 5 - *v9;
          }

          *__s2 = v11;
          v10 = *v9;
        }

        memcpy(&v9[39 * v10 + 1], __s2 + 4, 156 * v11);
        *v9 += *__s2;
        free(__s2);
        return 0;
      default:
        free(v8);
        v3 = 0;
        *(v7 + 8 * a2) = __s2;
        return v3;
    }

    free(__s2);
    return v3;
  }

  *(v7 + 8 * a2) = __s2;
  if (a2 != 13)
  {
    return 0;
  }

  v16 = 0;
  v17 = aIdentity_0;
  do
  {
    if (!strcmp(v17, __s2))
    {
      break;
    }

    ++v16;
    v17 += 32;
  }

  while (v16 != 3);
  v3 = 0;
  *(a1 + 1008) = v16;
  *(a1 + 1016) = SIPDecompressCallback;
  return v3;
}

uint64_t SIPDecompressCallback(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 - 3 >= 0xFFFFFFFE)
  {
    return (*(&g_aCompressions + 4 * a1 + 3))(a2, a3, a4, a5);
  }

  else
  {
    return 2148401184;
  }
}

void OUTLINED_FUNCTION_4_20(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

uint64_t ParseSipUri(uint64_t a1, char *__s)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = strchr(__s, 58);
  if (!v4)
  {
    v14 = 2148139039;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v14;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v14;
    }

    *buf = 136316162;
    v30 = v15;
    v31 = 2080;
    v32 = "ParseSipUri";
    v33 = 1024;
    v34 = 18;
    v35 = 1024;
    v36 = 18;
    v37 = 2080;
    v38 = __s;
    v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipUri.c:%d: No colon after sip scheme[%s]";
LABEL_46:
    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x2Cu);
    return v14;
  }

  *v4 = 0;
  v5 = v4 + 1;
  __strlcpy_chk();
  v6 = strchr(v5, 64);
  if (v6)
  {
    *v6 = 0;
    v7 = v6 + 1;
    __strlcpy_chk();
    v5 = v7;
  }

  if (*v5 != 91)
  {
    goto LABEL_7;
  }

  v8 = strchr(v5 + 1, 93);
  if (!v8)
  {
    v14 = 2148139039;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v14;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v14;
    }

    *buf = 136316162;
    v30 = v28;
    v31 = 2080;
    v32 = "ParseSipUri";
    v33 = 1024;
    v34 = 40;
    v35 = 1024;
    v36 = 40;
    v37 = 2080;
    v38 = __s;
    v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipUri.c:%d: No ']' after '[' for an IPv6 address[%s]";
    goto LABEL_46;
  }

  *v8 = 0;
  v9 = v8 + 1;
  *(a1 + 56) = 1;
  __strlcpy_chk();
  v5 = v9;
LABEL_7:
  v10 = strchr(v5, 59);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
  }

  v12 = strchr(v5, 58);
  if (v12)
  {
    *v12 = 0;
    v13 = atoi(v12 + 1);
  }

  else
  {
    v13 = 5060;
  }

  *(a1 + 100) = v13;
  if (!*(a1 + 56))
  {
    __strlcpy_chk();
  }

  for (*(a1 + 108) = 0; v11; *(a1 + 108) = v26)
  {
    while (1)
    {
      while (1)
      {
        v18 = v11;
        v19 = v11 + 1;
        v20 = strchr(v11 + 1, 59);
        v11 = v20;
        if (v20)
        {
          *v20 = 0;
        }

        for (i = v18 + 8; ; ++i)
        {
          v22 = *(i - 7);
          if (v22 != 32 && v22 != 9)
          {
            break;
          }

          ++v19;
        }

        if (strncasecmp(i - 7, "transport=", 0xAuLL))
        {
          break;
        }

        __strlcpy_chk();
        if (!v11)
        {
          return 0;
        }
      }

      if (!strncasecmp(i - 7, "method=", 7uLL))
      {
        break;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5 && (v24 = VRTraceErrorLogLevelToCSTR(), v25 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
        *buf = 136316162;
        v30 = v24;
        v31 = 2080;
        v32 = "ParseSipUri";
        v33 = 1024;
        v34 = 95;
        v35 = 1024;
        v36 = 95;
        v37 = 2080;
        v38 = v19;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipUri.c:%d: Unknown URI parameter[%s]", buf, 0x2Cu);
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
LABEL_38:
        if (!v11)
        {
          return 0;
        }
      }
    }

    *(a1 + 108) = 0;
    v26 = 1;
    while (strcmp(i, g_apszMethods[v26]))
    {
      if (++v26 == 12)
      {
        goto LABEL_38;
      }
    }
  }

  return 0;
}

uint64_t ConstructUri(char *a1, char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__str, 170, 7);
  memset(v8, 170, 15);
  memset(v7, 170, 18);
  if (!a2)
  {
    return 2148139009;
  }

  if (*(a2 + 50) == 5060)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 7uLL, ":%d", *(a2 + 50));
  }

  if (!a2[102] || !strcasecmp(a2 + 102, "UDP"))
  {
    v8[0] = 0;
  }

  else
  {
    snprintf(v8, 0xFuLL, ";%s%s", "transport=", a2 + 102);
  }

  v5 = *(a2 + 27);
  if (v5)
  {
    snprintf(v7, 0x12uLL, ";%s%s", "method=", g_apszMethods[v5]);
  }

  else
  {
    v7[0] = 0;
  }

  if (*(a2 + 14) && a2[60])
  {
    snprintf(a1, 0x50uLL, "%s:%s%s[%s]%s%s%s", a2, a2 + 5);
  }

  else
  {
    snprintf(a1, 0x50uLL, "%s:%s%s%s%s%s%s", a2, a2 + 5);
  }

  return 0;
}

BOOL VCTailspinUtil_GenerateTailspin(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[VCTailspinUtil tailspinDumpOutput:reason:](VCTailspinUtil, "tailspinDumpOutput:reason:", a1, [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4]);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t VCRateControlCongestionLevel_BitrateRange(unsigned int a1)
{
  if (a1 < 0x1DBD49)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x91C09)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 >= 0x37AA1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 >= 0x186A1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double VCRateControlCongestionLevel_RampUpTimeFactor(unsigned int a1)
{
  result = 5.0;
  if (a1 <= 3)
  {
    return dbl_1DBD49380[a1];
  }

  return result;
}

double VCRateControlCongestionLevel_PopulateCongestionLevelThresholds@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1DBD492E0;
  a1[1] = xmmword_1DBD49300;
  a1[2] = xmmword_1DBD49310;
  a1[3] = xmmword_1DBD492F0;
  a1[4] = xmmword_1DBD49320;
  a1[5] = xmmword_1DBD49330;
  result = 7.19999981;
  a1[6] = xmmword_1DBD49350;
  a1[7] = xmmword_1DBD49360;
  a1[8] = xmmword_1DBD49340;
  a1[9] = xmmword_1DBD49370;
  return result;
}

void *OUTLINED_FUNCTION_1_14()
{

  return malloc_type_calloc(1uLL, 0x10uLL, v0);
}

uint64_t GetStatusCode(int a1)
{
  result = 0;
  while (g_aiStatusCodes[result] != a1)
  {
    if (++result == 53)
    {
      return 0;
    }
  }

  return result;
}

uint64_t VCMediaNegotiationBlobV2GeneralInfoReadFrom(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        break;
      }

      if (v12 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v45 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v45 & 0x7F) << v24;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v29 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v26;
        }

LABEL_75:
        *(a1 + 8) = v29;
        goto LABEL_93;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_60;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v49 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v49 & 0x7F) << v13;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_83:
        v42 = 16;
LABEL_92:
        *(a1 + v42) = v18;
        goto LABEL_93;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_93:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v48 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v48 & 0x7F) << v30;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v32;
        }

LABEL_79:
        v42 = 40;
        break;
      case 5:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v47 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v47 & 0x7F) << v37;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v10 = v38++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v39;
        }

LABEL_91:
        v42 = 32;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v46 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v46 & 0x7F) << v19;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }

LABEL_87:
        v42 = 36;
        break;
      default:
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_93;
    }

    goto LABEL_92;
  }

  return [a2 hasError] ^ 1;
}

uint64_t TACreateHandle(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10A00408696AC64uLL);
  if (v14)
  {
    v15 = v14;
    *(v14 + 34) = a2;
    pthread_mutex_init((v14 + 24), 0);
    pthread_cond_init((v15 + 88), 0);
    *(v15 + 19) = a3;
    *(v15 + 20) = a5;
    *(v15 + 21) = a4;
    *(v15 + 22) = a6;
    *(v15 + 2) = 1;
    *(v15 + 23) = 4000;
    *(v15 + 24) = a7;
    *(v15 + 50) = -1;
    *(v15 + 26) = 0;
    v16 = MQCreateHandle(v15 + 18);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = v16;
      pthread_mutex_destroy((v15 + 24));
      pthread_cond_destroy((v15 + 88));
      free(v15);
    }

    else
    {
      Handle = CreateHandle();
      *a1 = Handle;
      if (Handle == 0xFFFFFFFFLL)
      {
        pthread_mutex_destroy((v15 + 24));
        pthread_cond_destroy((v15 + 88));
        MQCloseHandle();
        free(v15);
        return 2148532229;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v18 = 2148532227;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TACreateHandle_cold_1();
      }
    }
  }

  return v18;
}

uint64_t TACloseHandle()
{
  v0 = 2148532226;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_mutex_lock((v1 + 24));
    v3 = *(v2 + 8);
    *(v2 + 8) = v3 - 1;
    pthread_cond_signal((v2 + 88));
    pthread_mutex_unlock((v2 + 24));
    CheckOutHandleDebug();
    if (v3 > 1)
    {
      return 0;
    }

    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      CheckOutHandleDebug();
      pthread_cond_destroy((v5 + 88));
      pthread_mutex_destroy((v5 + 24));
      FreeSipMsg(*(v5 + 168));
      MQCloseHandle();
      free(v5);
      return 0;
    }
  }

  return v0;
}

uint64_t TASend(uint64_t a1, void *a2)
{
  v3 = 2148532242;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2148532226;
  }

  v5 = v4;
  pthread_mutex_lock((v4 + 24));
  v6 = v5[2];
  if (v6 < 2)
  {
    if (v6 == 1)
    {
      v3 = 2148532259;
    }

    if (a2)
    {
      FreeSipMsg(a2);
    }

LABEL_18:
    pthread_mutex_unlock((v5 + 6));
    CheckOutHandleDebug();
    return v3;
  }

  if (!a2 || (*a2 = 1, v7 = MQPut(*(v5 + 18), a2, 0), (v7 & 0x80000000) == 0))
  {
    while (1)
    {
      if (v5[1])
      {
        v5[1] = 0;
        v3 = *v5;
        goto LABEL_18;
      }

      v9 = v5[2];
      if (v9 < 2)
      {
        break;
      }

      pthread_cond_wait((v5 + 22), (v5 + 6));
    }

    if (v9 == 1)
    {
      v3 = 2148532259;
    }

    else
    {
      v3 = 2148532242;
    }

    goto LABEL_18;
  }

  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      TASend_cold_1();
    }
  }

  FreeSipMsg(a2);
  pthread_mutex_unlock((v5 + 6));
  CheckOutHandleDebug();
  return v8;
}

uint64_t TACancel()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148532226;
  }

  v1 = v0;
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  Cancel = CreateCancel(v7, 0);
  if ((Cancel & 0x80000000) != 0)
  {
    v5 = Cancel;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TACancel_cold_2();
      }
    }
  }

  else
  {
    v3 = v7[0];
    *v7[0] = 1;
    v4 = MQPut(*(v1 + 144), v3, 0);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TACancel_cold_1();
        }
      }

      FreeSipMsg(v7[0]);
    }

    else
    {
      pthread_mutex_lock((v1 + 24));
      if (*(v1 + 8) >= 2)
      {
        do
        {
          pthread_cond_wait((v1 + 88), (v1 + 24));
        }

        while (*(v1 + 8) > 1);
      }

      pthread_mutex_unlock((v1 + 24));
      v5 = 0;
    }
  }

  CheckOutHandleDebug();
  return v5;
}

uint64_t TASetRetransmitTimeoutCap(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148532226;
  }

  *(v3 + 184) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTTAdjustedTimeOut(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 200);
  v5 = a2;
  if (a3 == 1)
  {
    v6 = 2 * v4;
    v7 = v4 == -1 || v6 >= a2;
    v5 = a2;
    if (!v7)
    {
      if (v6 <= a2 >> 1)
      {
        v5 = a2 >> 1;
      }

      else
      {
        v5 = v6;
      }
    }
  }

  v26 = -1431655766;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v8;
  v25 = v8;
  v22 = v8;
  v23 = v8;
  *__str = v8;
  v21 = v8;
  snprintf(__str, 0x64uLL, "RTTAdjustedTimeOut(%d): %d -> %d (RTT: %d)", a3, a2, v5, v4);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "RTTAdjustedTimeOut";
      v16 = 1024;
      v17 = 288;
      v18 = 2080;
      v19 = __str;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TAInviteClientProc:%s", buf, 0x26u);
    }
  }

  if (*(a1 + 200) != -1 && *(a1 + 208) && VRTraceIsInternalOSInstalled())
  {
    (*(a1 + 208))(*(a1 + 192), a1 + 216, __str);
  }

  return v5;
}

uint64_t TAStart(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 2148532225;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148532226;
  }

  v4 = v3;
  v5 = *(v3 + 136);
  if (v5 < 4)
  {
    v6 = off_1F570D778[v5];
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v9.__opaque[24] = v7;
    *&v9.__opaque[40] = v7;
    *&v9.__sig = v7;
    *&v9.__opaque[8] = v7;
    pthread_mutex_lock((v3 + 24));
    ++*(v4 + 8);
    pthread_mutex_unlock((v4 + 24));
    pthread_attr_init(&v9);
    pthread_attr_setscope(&v9, 1);
    pthread_attr_setdetachstate(&v9, 2);
    v2 = pthread_create((v4 + 16), &v9, v6, a1);
    pthread_attr_destroy(&v9);
    if (v2)
    {
      v2 = v2 | 0xC0100000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TAStart_cold_1();
        }
      }

      pthread_mutex_lock((v4 + 24));
      --*(v4 + 8);
      pthread_mutex_unlock((v4 + 24));
    }
  }

  CheckOutHandleDebug();
  return v2;
}

uint64_t TAInviteClientProc(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v54 = -1431655766;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.avconference.transaction.inviteclientproc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v56 = v2;
      v57 = 2080;
      v58 = "TAInviteClientProc";
      v59 = 1024;
      v60 = 318;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TAInviteClientProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TAInviteClientProc_cold_1();
      }
    }

    return 0;
  }

  v5 = v4;
  v6 = partial apply(*(v4 + 152), 0, *(v4 + 168), TAMsgCallback, a1);
  if (v6 < 0)
  {
    v8 = v6;
    goto LABEL_94;
  }

  v7 = TPGetType(*(v5 + 152), &v54);
  if (v7 < 0 || (v7 = TPSend(*(v5 + 152)), v7 < 0))
  {
    v8 = v7;
    TPRemoveTransaction(*(v5 + 152), a1);
    goto LABEL_94;
  }

  v8 = -2146435049;
  v50 = micro();
  LODWORD(v9) = RTTAdjustedTimeOut(v5, 500, 1);
  v10.f64[0] = micro();
  v10.f64[1] = v50;
  v11 = vcvtq_u64_f64(vmulq_f64(v10, vdupq_n_s64(0x412E848000000000uLL)));
  v12 = v11.i64[0] / 0x3E8uLL - v11.i64[1] / 0x3E8uLL;
  if (v12 >> 5 > 0x270)
  {
    v47 = 0;
    goto LABEL_113;
  }

  v13 = 0;
  v14 = 0;
  v49 = 0;
  v51 = v11.i64[1] / 0x3E8uLL;
  v9 = v9;
  v15 = 20000;
  do
  {
    while (1)
    {
      v16 = v15 - v12;
      if (v9 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v9;
      }

      v18 = 2 * v9;
      if (2 * v9 >= 0x3E8)
      {
        v18 = 1000;
      }

      if (v54 == 1)
      {
        v19 = v14;
      }

      else
      {
        v19 = v16;
      }

      if (v54 == 1)
      {
        v18 = v9;
        v17 = v16;
      }

      if (v13)
      {
        v20 = v16;
      }

      else
      {
        v14 = v19;
        v9 = v18;
        v20 = v17;
      }

      v21 = *(*(v5 + 168) + 272);
      v22 = v21 ? *v21 : -1;
      v23 = MQGet(*(v5 + 144), &v53, v20, 1, v22);
      v24 = v23;
      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

      if (v23 != -2146762729)
      {
        goto LABEL_111;
      }

      if (v13 == 3)
      {
        v8 = 0;
        goto LABEL_112;
      }

      if (v13 || v54 || v20 == v14)
      {
        v8 = -2146762729;
        goto LABEL_112;
      }

      Ack = TPSend(*(v5 + 152));
      if (Ack < 0)
      {
LABEL_109:
        v8 = Ack;
        goto LABEL_112;
      }

      v13 = 0;
      v12 = (micro() * 1000000.0) / 0x3E8 - v51;
      if (v12 >= v15)
      {
        goto LABEL_112;
      }
    }

    v26 = v53;
    if (*v53 == 1 && *(v53 + 1) == 1 && *(v53 + 2) == 5)
    {
      FreeSipMsg(v53);
LABEL_111:
      v8 = v24;
      goto LABEL_112;
    }

    v27 = *(v53 + 2);
    if (v13 != 3)
    {
      if (v13 == 2)
      {
        if ((v27 - 1) <= 4)
        {
          v34 = *(v53 + 60);
          v13 = 2;
          if (v34)
          {
            v35 = *(*(v5 + 168) + 480);
            if (v35)
            {
              v37 = *(v34 + 156);
              v36 = (v34 + 156);
              if (v37)
              {
                if (strcmp(v36, (v35 + 156)))
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v48 = VRTraceErrorLogLevelToCSTR();
                    v38 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v56 = v48;
                      v57 = 2080;
                      v58 = "TAInviteClientProc";
                      v59 = 1024;
                      v60 = 457;
                      v61 = 2080;
                      v62 = v36;
                      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Save this ToTag: %s", buf, 0x26u);
                    }
                  }

                  strncpy((v35 + 156), v36, 0x40uLL);
                  v13 = 2;
                }
              }
            }
          }

          goto LABEL_83;
        }

        if ((v27 - 8) <= 0x2C)
        {
          goto LABEL_69;
        }

        v39 = (v27 & 0xFFFFFFFE) == 6;
        if ((v27 & 0xFFFFFFFE) == 6)
        {
          v13 = 5;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        if ((v27 - 1) <= 4)
        {
          v28 = *(v53 + 60);
          if (v28)
          {
            v29 = *(*(v5 + 168) + 480);
            if (v29)
            {
              v31 = *(v28 + 156);
              v30 = (v28 + 156);
              if (v31)
              {
                if (strcmp(v30, (v29 + 156)))
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v32 = VRTraceErrorLogLevelToCSTR();
                    v33 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v56 = v32;
                      v57 = 2080;
                      v58 = "TAInviteClientProc";
                      v59 = 1024;
                      v60 = 415;
                      v61 = 2080;
                      v62 = v30;
                      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Save this ToTag: %s", buf, 0x26u);
                    }
                  }

                  strncpy((v29 + 156), v30, 0x40uLL);
                }
              }
            }
          }

          v51 = (micro() * 1000000.0) / 0x3E8;
          v13 = 2;
          v15 = 8000;
          goto LABEL_83;
        }

        if ((v27 - 8) <= 0x2C)
        {
LABEL_69:
          if ((CreateAck(&v52, *(v5 + 168), v53) & 0x80000000) != 0 || (v40 = TPSend(*(v5 + 152)), FreeSipMsg(v52), v40 < 0))
          {
            v49 = 1;
            v13 = 5;
          }

          else
          {
            v51 = (micro() * 1000000.0) / 0x3E8;
            if (v54)
            {
              v15 = 0;
            }

            else
            {
              v15 = 32000;
            }

            v49 = 1;
            v13 = 3;
          }

LABEL_83:
          v24 = (*(v5 + 176))(*(v5 + 192), v53);
          goto LABEL_84;
        }

        v39 = (v27 & 0xFFFFFFFE) == 6;
        if ((v27 & 0xFFFFFFFE) == 6)
        {
          v13 = 5;
        }

        else
        {
          v13 = 0;
        }
      }

      v41 = v49;
      if (v39)
      {
        v41 = 1;
      }

      v49 = v41;
      goto LABEL_83;
    }

    if ((v27 - 8) <= 0x2C)
    {
      Ack = CreateAck(&v52, *(v5 + 168), v53);
      if (Ack < 0)
      {
        goto LABEL_109;
      }

      v24 = TPSend(*(v5 + 152));
      FreeSipMsg(v52);
      if (v24 < 0)
      {
        goto LABEL_111;
      }

      v26 = v53;
    }

    FreeSipMsg(v26);
    v13 = 3;
LABEL_84:
    if (v13 == 5)
    {
      goto LABEL_111;
    }

    v12 = (micro() * 1000000.0) / 0x3E8 - v51;
  }

  while (v12 < v15);
  if (v13 == 3)
  {
    v8 = v24;
  }

  else
  {
    v8 = -2146435049;
  }

LABEL_112:
  v47 = v49;
LABEL_113:
  TPRemoveTransaction(*(v5 + 152), a1);
  if (!v47)
  {
LABEL_94:
    if (v8 == 40)
    {
      v42 = *(v5 + 168);
      v43 = 32;
    }

    else if (v8 == 23)
    {
      v42 = *(v5 + 168);
      v43 = 21;
    }

    else
    {
      v42 = *(v5 + 168);
      if ((v8 & 0x40000000) != 0)
      {
        v43 = 45;
      }

      else
      {
        v43 = 42;
      }
    }

    CreateStatus(&v53, v42, v43, 0, 0, 0, 0);
    (*(v5 + 176))(*(v5 + 192), v53);
  }

  CheckOutHandleDebug();
  TACloseHandle();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v44 = VRTraceErrorLogLevelToCSTR();
    v45 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v56 = v44;
      v57 = 2080;
      v58 = "TAInviteClientProc";
      v59 = 1024;
      v60 = 552;
      v61 = 1024;
      LODWORD(v62) = v8;
      _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TAInviteClientProc Thread end(%X)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t TANonInviteClientProc(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v34 = -1431655766;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.avconference.transaction.noninviteclientproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = v2;
      v37 = 2080;
      v38 = "TANonInviteClientProc";
      v39 = 1024;
      v40 = 571;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TANonInviteClientProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    v6 = partial apply(*(v4 + 152), 0, *(v4 + 168), TAMsgCallback, a1);
    if (v6 < 0)
    {
      v14 = v6;
    }

    else
    {
      v7 = TPGetType(*(v5 + 152), &v34);
      if (v7 < 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = TPSend(*(v5 + 152));
        if ((v8 & 0x80000000) == 0)
        {
          v9 = 0;
          v32 = 0;
          v10 = (micro() * 1000000.0) / 0x3E8;
          v11 = 1;
          v12 = 500;
          v13 = 32000;
LABEL_9:
          v14 = v8;
LABEL_10:
          v8 = v14;
          while (v11 != 5)
          {
            v15 = (micro() * 1000000.0) / 0x3E8 - v10;
            v16 = v13 >= v15;
            v17 = v13 - v15;
            if (v17 == 0 || !v16)
            {
              if (v11 == 3)
              {
                v14 = v8;
              }

              else
              {
                v14 = -2146435049;
              }

              v11 = 5;
              goto LABEL_10;
            }

            if (v11 == 3 || v34 == 1)
            {
              v18 = v17;
            }

            else
            {
              if (v12 >= v17)
              {
                v18 = v17;
              }

              else
              {
                v18 = v12;
              }

              if (v11 == 2)
              {
                v12 = *(v5 + 184);
              }

              else if (2 * v12 >= *(v5 + 184))
              {
                v12 = *(v5 + 184);
              }

              else
              {
                v12 *= 2;
              }

              v9 = v17;
            }

            v19 = *(v5 + 168);
            v20 = *(v19 + 272);
            if (v20)
            {
              v21 = *v20;
            }

            else
            {
              v21 = -1;
            }

            v22 = MQGet(*(v5 + 144), &v33, v18, *(v19 + 8), v21);
            v8 = v22;
            if ((v22 & 0x80000000) == 0)
            {
              if (*v33 == 1 && *(v33 + 1) == 1 && *(v33 + 2) == 5)
              {
                FreeSipMsg(v33);
LABEL_51:
                v11 = 5;
                goto LABEL_9;
              }

              if (v11 == 3)
              {
                FreeSipMsg(v33);
                goto LABEL_9;
              }

              v25 = *(v33 + 2);
              if (v11 == 2)
              {
                v8 = (*(v5 + 176))(*(v5 + 192));
                if (v8 < 0)
                {
                  goto LABEL_9;
                }

                v26 = v25 - 6;
              }

              else
              {
                v8 = (*(v5 + 176))(*(v5 + 192));
                if (v8 < 0)
                {
                  goto LABEL_9;
                }

                v11 = 2;
                if ((v25 - 1) < 5)
                {
                  goto LABEL_9;
                }

                v26 = v25 - 6;
                v11 = 1;
              }

              if (v26 <= 0x2E)
              {
                v10 = (micro() * 1000000.0) / 0x3E8;
                if (v34)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = 5000;
                }

                v32 = 1;
                v11 = 3;
              }

              goto LABEL_9;
            }

            if (v22 != -2146762729 || v11 == 3)
            {
              if (v22 == -2146762729)
              {
                v8 = 0;
              }

              else
              {
                v8 = v22;
              }

              goto LABEL_51;
            }

            if (v34 || v18 == v9)
            {
              v11 = 5;
              v8 = -2146762729;
              goto LABEL_9;
            }

            v24 = *(*(v5 + 168) + 544);
            if (v24)
            {
              *v24 = *v24 == 0;
            }

            v8 = TPSend(*(v5 + 152));
            if (v8 < 0)
            {
              goto LABEL_51;
            }
          }

          TPRemoveTransaction(*(v5 + 152), a1);
          if (v32)
          {
            goto LABEL_82;
          }

          goto LABEL_74;
        }
      }

      TPRemoveTransaction(*(v5 + 152), a1);
      v14 = v8;
    }

LABEL_74:
    if (v14 == 40)
    {
      v27 = *(v5 + 168);
      v28 = 32;
    }

    else if (v14 == 23)
    {
      v27 = *(v5 + 168);
      v28 = 21;
    }

    else
    {
      v27 = *(v5 + 168);
      if ((v14 & 0x40000000) != 0)
      {
        v28 = 45;
      }

      else
      {
        v28 = 42;
      }
    }

    CreateStatus(&v33, v27, v28, 0, 0, 0, 0);
    (*(v5 + 176))(*(v5 + 192), v33);
LABEL_82:
    CheckOutHandleDebug();
    TACloseHandle();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v36 = v29;
        v37 = 2080;
        v38 = "TANonInviteClientProc";
        v39 = 1024;
        v40 = 740;
        v41 = 1024;
        v42 = v14;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TANonInviteClientProc Thread end(%X)...", buf, 0x22u);
      }
    }

    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      TANonInviteClientProc_cold_1();
    }
  }

  return 0;
}

uint64_t TAInviteServerProc(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = -1431655766;
  v27 = 0;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.avconference.transaction.inviteserverproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = v2;
      v32 = 2080;
      v33 = "TAInviteServerProc";
      v34 = 1024;
      v35 = 759;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TAInviteServerProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TAInviteServerProc_cold_1();
      }
    }

    return 0;
  }

  v5 = v4;
  v6 = partial apply(*(v4 + 152), 1, *(v4 + 168), TAMsgCallback, a1);
  v7 = v6;
  if (v6 < 0)
  {
    goto LABEL_68;
  }

  Status = TPGetType(*(v5 + 152), &v29);
  if (Status < 0 || (Status = CreateStatus(&v27, *(v5 + 168), 1, 0, 0, 0, 0), Status < 0))
  {
    v7 = Status;
    goto LABEL_68;
  }

  v7 = TPSend(*(v5 + 152));
  pthread_mutex_lock((v5 + 24));
  *v5 = v7;
  *(v5 + 4) = 1;
  pthread_cond_signal((v5 + 88));
  pthread_mutex_unlock((v5 + 24));
  if (v7 < 0)
  {
    goto LABEL_68;
  }

  v9 = 0;
  v10 = (micro() * 1000000.0) / 0x3E8;
  v11 = 2;
  v12 = 500;
  v13 = 0xFFFFFFFFLL;
  while (v13 == 0xFFFFFFFF)
  {
    v14 = 0xFFFFFFFFLL;
LABEL_20:
    v16 = *(*(v5 + 168) + 272);
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = -1;
    }

    v18 = MQGet(*(v5 + 144), &v28, v14, 1, v17);
    v7 = v18;
    if (v18 < 0)
    {
      if (v18 != 23 || v11 == 4)
      {
        if (v18 == 23)
        {
          v7 = 0;
        }

        else
        {
          v7 = v18;
        }

        goto LABEL_68;
      }

      if (v11 != 3 || v29 || v14 == v9)
      {
        goto LABEL_68;
      }

LABEL_55:
      v7 = TPSend(*(v5 + 152));
      if (v7 < 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v19 = v28;
      if (*v28 == 1)
      {
        v20 = *(v28 + 1);
        if (v20 == 1)
        {
          if (*(v28 + 2) == 5)
          {
            FreeSipMsg(v28);
            goto LABEL_68;
          }

LABEL_48:
          FreeSipMsg(v19);
        }

        else
        {
          if (v11 != 2 || v20 != 2)
          {
            goto LABEL_48;
          }

          v22 = *(v28 + 2);
LABEL_58:
          FreeSipMsg(v27);
          v27 = v28;
          v7 = TPSend(*(v5 + 152));
          pthread_mutex_lock((v5 + 24));
          *v5 = v7;
          *(v5 + 4) = 1;
          pthread_cond_signal((v5 + 88));
          pthread_mutex_unlock((v5 + 24));
          if (v7 < 0 || (v22 & 0xFFFFFFFE) == 6)
          {
            goto LABEL_68;
          }

          v11 = 2;
          if ((v22 - 8) <= 0x2C)
          {
            v10 = (micro() * 1000000.0) / 0x3E8;
            v11 = 3;
            v13 = 32000;
          }
        }
      }

      else
      {
        if (v11 == 4 && *v28 == 3)
        {
          goto LABEL_48;
        }

        v22 = *(v28 + 2);
        if (v11 == 2)
        {
          if (*(v28 + 1) != 1 || v22 != 1)
          {
            goto LABEL_58;
          }

          goto LABEL_54;
        }

        if (v11 == 3)
        {
          if (v22 != 1)
          {
            if (v22 == 2)
            {
              v10 = (micro() * 1000000.0) / 0x3E8;
              if (v29)
              {
                v13 = 0;
              }

              else
              {
                v13 = 5000;
              }

              v11 = 4;
              v19 = v28;
            }

            else
            {
              v11 = 3;
            }

            goto LABEL_48;
          }

LABEL_54:
          FreeSipMsg(v28);
          goto LABEL_55;
        }

        FreeSipMsg(v28);
        v11 = 4;
      }
    }
  }

  v15 = (micro() * 1000000.0) / 0x3E8 - v10;
  v14 = v13 - v15;
  if (v13 > v15)
  {
    if (v11 == 3 && v29 != 1)
    {
      v9 = v13 - v15;
      if (v12 < v14)
      {
        v14 = v12;
      }

      if (2 * v12 >= *(v5 + 184))
      {
        v12 = *(v5 + 184);
      }

      else
      {
        v12 *= 2;
      }
    }

    goto LABEL_20;
  }

  if (v11 != 4)
  {
    v7 = -2146435049;
  }

LABEL_68:
  if (v27)
  {
    FreeSipMsg(v27);
  }

  if ((v6 & 0x80000000) == 0)
  {
    TPRemoveTransaction(*(v5 + 152), a1);
  }

  CheckOutHandleDebug();
  TACloseHandle();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v24;
      v32 = 2080;
      v33 = "TAInviteServerProc";
      v34 = 1024;
      v35 = 944;
      v36 = 1024;
      v37 = v7;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TAInviteServerProc Thread end(%X)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t TANonInviteServerProc(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = -1431655766;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.avconference.transaction.noninviteserverproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = v2;
      v30 = 2080;
      v31 = "TANonInviteServerProc";
      v32 = 1024;
      v33 = 962;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TANonInviteServerProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TANonInviteServerProc_cold_1();
      }
    }

    return 0;
  }

  v5 = v4;
  v6 = partial apply(*(v4 + 152), 1, *(v4 + 168), TAMsgCallback, a1);
  if (v6 < 0)
  {
    v7 = v6;
    goto LABEL_72;
  }

  v7 = TPGetType(*(v5 + 152), &v27);
  if (v7 < 0)
  {
    goto LABEL_71;
  }

  v8 = 0;
  v9 = (micro() * 1000000.0) / 0x3E8;
  v10 = 0xFFFFFFFFLL;
  v11 = 1;
  while (1)
  {
    v12 = 0xFFFFFFFFLL;
    if (v10 != 0xFFFFFFFF)
    {
      v13 = (micro() * 1000000.0) / 0x3E8 - v9;
      v12 = v10 - v13;
      if (v10 <= v13)
      {
        if (v11 != 3)
        {
          v7 = -2146435049;
        }

        if (v8)
        {
          goto LABEL_70;
        }

        goto LABEL_71;
      }
    }

    v14 = *(v5 + 168);
    v15 = *(v14 + 272);
    v16 = v15 ? *v15 : -1;
    v17 = MQGet(*(v5 + 144), &v26, v12, *(v14 + 8), v16);
    v7 = v17;
    if (v17 < 0)
    {
      break;
    }

    v18 = v26;
    v19 = *v26;
    if (*v26 == 1)
    {
      if (*(v26 + 1) == 1 && *(v26 + 2) == 5)
      {
        FreeSipMsg(v26);
LABEL_69:
        if (!v8)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (v11 == 3)
      {
        goto LABEL_21;
      }

      v20 = 0;
LABEL_22:
      v21 = *(v26 + 2);
      if (v11 == 2)
      {
        if (v20 && *(v26 + 1) == 1)
        {
          FreeSipMsg(v26);
          v7 = TPSend(*(v5 + 152));
          v11 = 2;
          if (v7 < 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          FreeSipMsg(v8);
          v8 = v26;
          v7 = TPSend(*(v5 + 152));
          pthread_mutex_lock((v5 + 24));
          *v5 = v7;
          *(v5 + 4) = 1;
          pthread_cond_signal((v5 + 88));
          pthread_mutex_unlock((v5 + 24));
          if (v7 < 0)
          {
            goto LABEL_69;
          }

          if ((v21 - 6) > 0x2E)
          {
            v11 = 2;
          }

          else
          {
            v9 = (micro() * 1000000.0) / 0x3E8;
            if (v27)
            {
              v10 = 0;
            }

            else
            {
              v10 = 32000;
            }

LABEL_43:
            v11 = 3;
          }
        }
      }

      else if (v11 == 3)
      {
        if (!v20 || *(v26 + 1) != 1)
        {
          FreeSipMsg(v26);
          goto LABEL_43;
        }

        FreeSipMsg(v26);
        v7 = TPSend(*(v5 + 152));
        v11 = 3;
        if (v7 < 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v8)
        {
          FreeSipMsg(v8);
          v18 = v26;
        }

        v7 = TPSend(*(v5 + 152));
        pthread_mutex_lock((v5 + 24));
        *v5 = v7;
        *(v5 + 4) = 1;
        pthread_cond_signal((v5 + 88));
        pthread_mutex_unlock((v5 + 24));
        if (v7 < 0)
        {
          v8 = v18;
          if (!v18)
          {
            goto LABEL_71;
          }

LABEL_70:
          FreeSipMsg(v8);
          goto LABEL_71;
        }

        if ((v21 - 1) >= 5)
        {
          if ((v21 - 6) > 0x2E)
          {
            v11 = 1;
          }

          else
          {
            v9 = (micro() * 1000000.0) / 0x3E8;
            if (v27)
            {
              v10 = 0;
            }

            else
            {
              v10 = 32000;
            }

            v11 = 3;
          }
        }

        else
        {
          v11 = 2;
        }

        v8 = v18;
      }
    }

    else
    {
      v20 = v19 == 3;
      if (v11 != 1 || v19 != 3)
      {
        goto LABEL_22;
      }

LABEL_21:
      FreeSipMsg(v26);
    }
  }

  if (v17 == 23 && v11 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v17;
  }

  if (v8)
  {
    goto LABEL_70;
  }

LABEL_71:
  TPRemoveTransaction(*(v5 + 152), a1);
LABEL_72:
  CheckOutHandleDebug();
  TACloseHandle();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v23;
      v30 = 2080;
      v31 = "TANonInviteServerProc";
      v32 = 1024;
      v33 = 1127;
      v34 = 1024;
      v35 = v7;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TANonInviteServerProc Thread end(%X)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t TASetRTT(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2148532226;
  }

  *(v7 + 200) = a2;
  *(v7 + 208) = a3;
  *(v7 + 216) = *a4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "TASetRTT";
      v15 = 1024;
      v16 = 1202;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TASetRTT: %d ms", &v11, 0x22u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t TAMsgCallback(uint64_t a1, void *a2)
{
  v2 = 2148532225;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = 3;
      v2 = MQPut(*(v4 + 144), a2, 0);
      if ((v2 & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TAMsgCallback_cold_1();
          }
        }

        FreeSipMsg(a2);
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2148532226;
    }
  }

  return v2;
}

void _VCVideoReceiverDefault_SetExternalOutputLatency(uint64_t a1, double a2)
{
  if (a1)
  {
    if (*(a1 + 112) != 0xFFFFFFFFLL)
    {

      VideoReceiver_SetExternalOutputLatency(a2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCVideoReceiverDefault_SetExternalOutputLatency_cold_1();
    }
  }
}

void _VCVideoReceiverDefault_RemoteFrameCallback(uint64_t a1, __CVBuffer *a2, CMTime *a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  VCVideoReceiverDefault_HandleRemoteFrame(a1, a2, &v4, a4);
}

void _VCVideoReceiverDefault_SampleBufferCallback(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E1289F20](a1 + 40);
  (*(a1 + 24))(v4, a2, (*(a1 + 1776) & 1) == 0);
  CFRelease(v4);
  if ((*(a1 + 1776) & 1) == 0)
  {
    *(a1 + 1776) = 1;
    v5 = *(a1 + 1800);
    if (v5)
    {

      VCVideoStreamRateAdaptationFeedbackOnly_SetDidReceiveVideo(v5, 1);
    }
  }
}

uint64_t _VCVideoReceiverDefault_ModeSwitchCallback(void *a1, uint64_t a2)
{
  [a1 setMode:a2];
  [a1 setUpRemoteAspectRatios];

  return [a1 setShouldUpdateRemoteScreenAttributes:1];
}

void _VCVideoReceiverDefault_BeginSensitiveContentAnalysisCallback(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if ([objc_msgSend(a1 "sensitiveContentAnalyzer")])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = v4;
        v18 = 2080;
        v19 = "_VCVideoReceiverDefault_BeginSensitiveContentAnalysisCallback";
        v20 = 1024;
        v21 = 943;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = a2;
        v6 = " [%s] %s:%d [%p] SCVideoStreamAnalyzer begin succeeded for decompressionSession=%p";
        v7 = v5;
        v8 = 48;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    v9 = [a1 sensitiveContentAnalyzer];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v9)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v17 = v11;
          v18 = 2080;
          v19 = "_VCVideoReceiverDefault_BeginSensitiveContentAnalysisCallback";
          v20 = 1024;
          v21 = 940;
          v22 = 2048;
          v23 = a1;
          v24 = 2112;
          v25 = v15;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] SCVideoStreamAnalyzer failed to attach to decompression session with error=%@", buf, 0x30u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v13;
        v18 = 2080;
        v19 = "_VCVideoReceiverDefault_BeginSensitiveContentAnalysisCallback";
        v20 = 1024;
        v21 = 938;
        v22 = 2048;
        v23 = a1;
        v6 = " [%s] %s:%d [%p] SCVideoStreamAnalyzer is not available";
        v7 = v14;
        v8 = 38;
        goto LABEL_12;
      }
    }
  }
}

uint64_t _VCVideoReceiverDefault_EndSensitiveContentAnalysisCallback(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "_VCVideoReceiverDefault_EndSensitiveContentAnalysisCallback";
      v9 = 1024;
      v10 = 949;
      v11 = 2048;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] SCVideoStreamAnalyzer endAnalysis", &v5, 0x26u);
    }
  }

  return [objc_msgSend(a1 "sensitiveContentAnalyzer")];
}

void VCVideoReceiverDefault_HandleRemoteFrame(uint64_t a1, CVPixelBufferRef pixelBuffer, CMTime *a3, uint64_t a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v108 = 0;
  v7 = *(MEMORY[0x1E695F058] + 16);
  v105 = *MEMORY[0x1E695F058];
  v106 = v7;
  if ((a4 & 0x80) == 0)
  {
    goto LABEL_83;
  }

  v9 = a4 & 0x30;
  if (v9 == 16)
  {
    VideoUtil_GetVisibleRectForScreen(pixelBuffer, &v105);
  }

  else
  {
    VideoUtil_GetVisibleRect(pixelBuffer, &v105);
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v10 = *(a1 + 1816);
  v11 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
  if (*(a1 + 1937) == 1)
  {
    v12 = VCMathUtils_DoubleEqualWithAccuracy(*&v106, *(&v106 + 1), 1.0);
    if (v10)
    {
      if (v12)
      {
        goto LABEL_21;
      }
    }

    else if (!v12)
    {
      v10 = 1;
      goto LABEL_11;
    }

    *(a1 + 1937) = 0;
  }

LABEL_11:
  if (v9 != 16 && v10)
  {
    if (pixelBuffer)
    {
      v13 = v105;
      v14 = v106;
      v15 = VCVideoCaptureServer_CopyLocalVideoAttributes(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
      v16 = [v15 orientation];

      IsCaptureFullBleedPreferred = VCVideoCaptureServer_IsCaptureFullBleedPreferred(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
      if (*(a1 + 1976) != IsCaptureFullBleedPreferred)
      {
        *(a1 + 1778) = 1;
        *(a1 + 1976) = IsCaptureFullBleedPreferred;
      }

      v100 = IsCaptureFullBleedPreferred;
      IsReceivedCameraFrameFullScreen = VCVideoReceiverDefault_IsReceivedCameraFrameFullScreen(a1, pixelBuffer);
      if (IsReceivedCameraFrameFullScreen)
      {
        if (v16 < 2 == *(a1 + 1980) > 1u || *(a1 + 1817) == 1)
        {
          if (((v16 < 2) ^ ((a4 & 2) >> 1)))
          {
            *(a1 + 1817) = 0;
          }

          else
          {
            *(a1 + 1817) = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v82 = VRTraceErrorLogLevelToCSTR();
              v83 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(time[0].value) = 136315650;
                *(&time[0].value + 4) = v82;
                LOWORD(time[0].flags) = 2080;
                *(&time[0].flags + 2) = "_VCVideoReceiverDefault_LocalDeviceOrientationAndRemoteFrameOrientationMismatched";
                HIWORD(time[0].epoch) = 1024;
                LODWORD(time[1].value) = 559;
                _os_log_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RemoteVideoAttributes skipped for Always Full Bleed aspect ratio change", time, 0x1Cu);
              }
            }
          }
        }

        v84 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      }

      else
      {
        *(a1 + 1817) = 0;
        v84 = a4 & 3;
      }

      *&v85 = -1;
      *(&v85 + 1) = -1;
      *&time[1].timescale = v85;
      v110 = v85;
      *&time[0].value = v85;
      *&time[0].epoch = v85;
      v86 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
      if (v86)
      {
        [v86 localCameraVideoAspectRatios];
      }

      else
      {
        v110 = 0u;
        memset(time, 0, sizeof(time));
      }

      v87 = CVPixelBufferGetWidth(pixelBuffer);
      v88 = CVPixelBufferGetHeight(pixelBuffer);
      v89 = *(a1 + 1980);
      v90 = *(a1 + 1984);
      v91 = *(a1 + 1920);
      v92 = *(a1 + 1922);
      v93 = *(a1 + 1768);
      *buf = *&time[0].value;
      *&buf[16] = *&time[0].epoch;
      *&buf[32] = *&time[1].timescale;
      v116 = v110;
      VideoUtil_CreateRxVideoAttributes(v87, v88, a4, v16, v89, v84, v90, IsReceivedCameraFrameFullScreen, *&v13, *(&v13 + 1), *&v14, *(&v14 + 1), *(a1 + 1824), *(a1 + 1832), *(a1 + 1840), *(a1 + 1848), v91, v92, buf, v93, &v108);
      if (*(a1 + 1776) == 1)
      {
        v94 = *(a1 + 1778);
      }

      else
      {
        v94 = 1;
      }

      v11 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
      VideoUtil_CreateTxRemoteScreenAttributes(v16, *(a1 + 1980), v84, *(a1 + 1984), v94 & 1, v100, &v107, *(a1 + 1824), *(a1 + 1832), *(a1 + 1840), *(a1 + 1848), *(a1 + 1856), *(a1 + 1864), *(a1 + 1872), *(a1 + 1880), *(a1 + 1888), *(a1 + 1896), *(a1 + 1904), *(a1 + 1912));
      *(a1 + 1980) = v16;
      *(a1 + 1984) = v84;
    }

    goto LABEL_62;
  }

LABEL_21:
  if (pixelBuffer)
  {
    v18 = *(a1 + 1768);
    v19 = v105;
    v20 = v106;
    v21 = MEMORY[0x1E695F050];
    LODWORD(time[0].value) = 1065353216;
    *buf = 1065353216;
    v22 = VideoUtil_DisplayAndRenderScaleForPixelBuffer(pixelBuffer, buf, time);
    v23 = CVPixelBufferGetWidth(pixelBuffer);
    v24 = CVPixelBufferGetHeight(pixelBuffer);
    v25 = *&v20 / v23;
    if (*&v20 > v23 || *(&v20 + 1) > v24)
    {
      v28 = v25;
      v27 = *(&v20 + 1) / v24;
      if (v28 <= v27)
      {
        v25 = (v28 / v27);
        v29 = 1.0;
        v28 = *(&v20 + 1) / v24;
      }

      else
      {
        v29 = (v27 / v28);
        v25 = 1.0;
      }
    }

    else
    {
      v28 = 1.0;
      v29 = *(&v20 + 1) / v24;
    }

    v30 = *(&v19 + 1) / v24;
    v31 = *&v19 / v23;
    v101 = v21[1];
    v102 = *v21;
    v97 = v21[3];
    v99 = v21[2];
    if (v22)
    {
      if (v9 != 16)
      {
        v32 = v29;
        v33 = v25;
        v95 = v21[3];
        v96 = v21[2];
        v34 = *v21;
        v35 = v21[1];
LABEL_48:
        v43 = [VideoAttributes alloc];
        v44 = CVPixelBufferGetWidth(pixelBuffer);
        v45 = CVPixelBufferGetHeight(pixelBuffer);
        *&v46 = v28;
        v47 = [(VideoAttributes *)v43 initWithCameraStatusBits:a4 aspectRatio:0 contentsRect:v44 scaleFactor:v45 frameOrientationReference:v31, v30, v33, v32, v46];
        v108 = v47;
        if (v22)
        {
          v48 = v95;
        }

        else
        {
          v48 = v97;
        }

        if (v22)
        {
          v49 = v96;
        }

        else
        {
          v49 = v99;
        }

        v50 = v102;
        if (v22)
        {
          v51 = v35;
        }

        else
        {
          v51 = v101;
        }

        if (v22)
        {
          v50 = v34;
        }

        [(VideoAttributes *)v47 setContentsRectForCALayer:v50, v51, v49, v48];
        if (VCVideoAttributes_IsEqual(v18, v108))
        {

          v108 = 0;
        }

        v11 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
        goto LABEL_62;
      }

      v40 = (*&time[0].value / *buf);
      v37 = *&v19 / v40 / v23;
      v41 = *(&v19 + 1) / v40;
      v95 = v29;
      v96 = v25;
      v33 = *&v20 / v40 / v23;
      v32 = *(&v20 + 1) / v40 / v24;
      v28 = 1.0;
      v38 = *(&v19 + 1) / v24;
      v39 = *&v19 / v23;
      v36 = v41 / v24;
    }

    else
    {
      v32 = v29;
      v33 = v25;
      v36 = *(&v19 + 1) / v24;
      v37 = *&v19 / v23;
      v95 = v21[3];
      v96 = v21[2];
      v38 = v21[1];
      v39 = *v21;
      v34 = *v21;
      v35 = v38;
      if (v9 != 16)
      {
        goto LABEL_48;
      }
    }

    v42 = *(a1 + 1936);
    if (v42 == 1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v39;
    }

    if (v42 == 1)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v38;
    }

    if (v42 == 1)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v37;
    }

    if (v42 == 1)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v36;
    }

    goto LABEL_48;
  }

LABEL_62:
  v52 = v108;
  if (*(a1 + v11[1021]) == 1)
  {

    v108 = 0;
  }

  else if (v108)
  {
    if (!*(a1 + 1768) || (CFRelease(*(a1 + 1768)), (v52 = v108) != 0))
    {
      v52 = CFRetain(v52);
    }

    *(a1 + 1768) = v52;
    *&v53 = 0xAAAAAAAAAAAAAAAALL;
    *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v113 = v53;
    v114 = v53;
    v111 = v53;
    v112 = v53;
    *&time[1].timescale = v53;
    v110 = v53;
    *&time[0].value = v53;
    *&time[0].epoch = v53;
    VideoUtil_StringVisibleRect(&v105, time, 0x80uLL);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v54 = VRTraceErrorLogLevelToCSTR();
      v55 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = "VCVideoReceiverDefault_HandleRemoteFrame";
        *&buf[22] = 1024;
        *&buf[24] = 763;
        *&buf[28] = 1024;
        *&buf[30] = Width;
        *&buf[34] = 1024;
        *&buf[36] = Height;
        _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] frameWidth=%d, frameHeight=%d", buf, 0x28u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v56 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(a1 + 1496);
        *buf = 136316418;
        *&buf[4] = v56;
        *&buf[12] = 2080;
        *&buf[14] = "VCVideoReceiverDefault_HandleRemoteFrame";
        *&buf[22] = 1024;
        *&buf[24] = 764;
        *&buf[28] = 2112;
        *&buf[30] = v58;
        *&buf[38] = 2080;
        *&buf[40] = time;
        LOWORD(v116) = 2112;
        *(&v116 + 2) = v108;
        _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] participantUUID=%@ visibleRect=%s remoteVideoAttributes=%@ ", buf, 0x3Au);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v59 = VRTraceErrorLogLevelToCSTR();
      v60 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v61 = 0.0;
        v62 = 0.0;
        if (*(&v106 + 1) != 0.0)
        {
          v62 = *&v106 / *(&v106 + 1);
        }

        if (Height)
        {
          [v108 contentsRect];
          if (v63 != 0.0)
          {
            [v108 contentsRect];
            v65 = v64 * Width;
            [v108 contentsRect];
            v61 = v65 / (v66 * Height);
          }
        }

        *buf = 136316162;
        *&buf[4] = v59;
        *&buf[12] = 2080;
        *&buf[14] = "VCVideoReceiverDefault_HandleRemoteFrame";
        *&buf[22] = 1024;
        *&buf[24] = 767;
        *&buf[28] = 2048;
        *&buf[30] = v62;
        *&buf[38] = 2048;
        *&buf[40] = v61;
        _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX] AspectRatio fromVisibleRect=%.3f, fromContentRect=%.3f", buf, 0x30u);
      }
    }
  }

  *(a1 + 16) = a4 & 3;
LABEL_83:
  v67 = *(a1 + 1944);
  if (v67)
  {
    VCVideoHardwareDumpCollector_RecordDecodedFrame(v67, pixelBuffer, *(a1 + 1768));
  }

  v68 = MEMORY[0x1E1289F20](a1 + 40);
  v69 = *(a1 + 32);
  v70 = *(a1 + 1776);
  time[0] = *a3;
  v69(v68, pixelBuffer, time, v108, v107, (v70 & 1) == 0);
  CFRelease(v68);
  if ((*(a1 + 1776) & 1) == 0)
  {
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v72 = VRTraceErrorLogLevelToCSTR(), v73 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_97:
        *(a1 + 1776) = 1;
        v81 = *(a1 + 1800);
        if (v81)
        {
          VCVideoStreamRateAdaptationFeedbackOnly_SetDidReceiveVideo(v81, 1);
        }

        goto LABEL_99;
      }

      time[0] = *a3;
      Seconds = CMTimeGetSeconds(time);
      LODWORD(time[0].value) = 136315906;
      *(&time[0].value + 4) = v72;
      LOWORD(time[0].flags) = 2080;
      *(&time[0].flags + 2) = "VCVideoReceiverDefault_HandleRemoteFrame";
      HIWORD(time[0].epoch) = 1024;
      LODWORD(time[1].value) = 785;
      WORD2(time[1].value) = 2048;
      *(&time[1].value + 6) = Seconds;
      v75 = " [%s] %s:%d frameTime=%f";
      v76 = v73;
      v77 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v71 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v71 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_97;
      }

      v78 = VRTraceErrorLogLevelToCSTR();
      v79 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_97;
      }

      time[0] = *a3;
      v80 = CMTimeGetSeconds(time);
      LODWORD(time[0].value) = 136316418;
      *(&time[0].value + 4) = v78;
      LOWORD(time[0].flags) = 2080;
      *(&time[0].flags + 2) = "VCVideoReceiverDefault_HandleRemoteFrame";
      HIWORD(time[0].epoch) = 1024;
      LODWORD(time[1].value) = 785;
      WORD2(time[1].value) = 2112;
      *(&time[1].value + 6) = v71;
      HIWORD(time[1].flags) = 2048;
      time[1].epoch = a1;
      LOWORD(v110) = 2048;
      *(&v110 + 2) = v80;
      v75 = " [%s] %s:%d %@(%p) frameTime=%f";
      v76 = v79;
      v77 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEFAULT, v75, time, v77);
    goto LABEL_97;
  }

LABEL_99:
  *(a1 + 1778) = 0;
}

BOOL OUTLINED_FUNCTION_7_14()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_8_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_1DB796640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB796EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t VCVideoEncoderVTInitialize(uint64_t result)
{
  *result = EncoderVT_VTable;
  *(result + 8) = 1;
  *(result + 16) = 0xFFFFFFFFLL;
  return result;
}

uint64_t EncoderVTCreateHandle(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = 2148007937;
  if (*a2 && *(a2 + 4))
  {
    v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
    if (!v5)
    {
      return 2148007939;
    }

    v6 = v5;
    *v5 = *(a2 + 112);
    v7 = (v5 + 1);
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = *a2;
    v12 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966208], v12);
    CFRelease(v12);
    valuePtr = *(a2 + 4);
    v13 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69660B8], v13);
    CFRelease(v13);
    valuePtr = 875704438;
    v14 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966130], v14);
    CFRelease(v14);
    v15 = CFDictionaryCreateMutable(v8, 2, v9, v10);
    v3 = VTCompressionSessionCreate(0, *a2, *(a2 + 4), 0x61766331u, v15, Mutable, 0, *(a2 + 112), *(a2 + 120), v7);
    if (v3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          EncoderVTCreateHandle_cold_1();
        }
      }

LABEL_19:
      if (v15)
      {
        CFRelease(v15);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (*v7)
      {
        VTCompressionSessionInvalidate(*v7);
        CFRelease(*v7);
      }

      free(v6);
      return v3;
    }

    v16 = *MEMORY[0x1E695E4D0];
    VTSessionSetProperty(*v7, *MEMORY[0x1E69837F0], *MEMORY[0x1E695E4D0]);
    VTSessionSetProperty(*v7, *MEMORY[0x1E6983668], *MEMORY[0x1E6983C90]);
    VTSessionSetProperty(*v7, *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]);
    v17 = *(a2 + 144);
    v18 = *v7;
    v19 = *MEMORY[0x1E69837D0];
    if (v17)
    {
      v20 = VTSessionSetProperty(v18, v19, v17);
      if (v20)
      {
        v21 = v20;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          log = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v22 = *(a2 + 144);
            *buf = 136316162;
            *&buf[4] = v29;
            v33 = 2080;
            v34 = "EncoderVTCreateHandle";
            v35 = 1024;
            v36 = 123;
            v37 = 2112;
            v38 = v22;
            v39 = 1024;
            v40 = v21;
            _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set profile level property to %@ with error status=%d", buf, 0x2Cu);
          }
        }
      }
    }

    else
    {
      VTSessionSetProperty(v18, v19, *MEMORY[0x1E6983F70]);
    }

    VTSessionSetProperty(v6[2], *MEMORY[0x1E6983530], v16);
    valuePtr = *(a2 + 8);
    v23 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    VTSessionSetProperty(v6[2], *MEMORY[0x1E6983700], v23);
    CFRelease(v23);
    Handle = CreateHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v26 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    if (v26)
    {
      v27 = CFNumberCreate(v8, kCFNumberIntType, (a2 + 40));
      if (v27)
      {
        v28 = v27;
        CFArrayAppendValue(v26, v27);
        EncoderVTSetBitRate(*a1, v26);
        if (!v15)
        {
LABEL_31:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          return v3;
        }

LABEL_30:
        CFRelease(v15);
        goto LABEL_31;
      }

      EncoderVTCreateHandle_cold_2(buf);
    }

    else
    {
      EncoderVTCreateHandle_cold_3(buf);
    }

    v28 = *buf;
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      EncoderVTCreateHandle_cold_4();
    }
  }

  return v3;
}

uint64_t EncoderVTCloseHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148007938;
  }

  v1 = v0;
  CheckOutHandleDebug();
  v2 = v1[2];
  if (v2)
  {
    VTCompressionSessionInvalidate(v2);
    v3 = v1[2];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  free(v1);
  return 0;
}

uint64_t EncoderVTSetThermalLevel()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "EncoderVTSetThermalLevel";
      v7 = 1024;
      v8 = 194;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not implemented!", &v3, 0x1Cu);
    }
  }

  return 0;
}

uint64_t EncoderVTEncodeFrame(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  infoFlagsOut = 0;
  v3 = CheckInHandleDebug();
  if (v3)
  {
    if (*v3)
    {
      v4 = v3[2];
      if (v4)
      {
        v5 = *(a2 + 88);
        v6 = *(a2 + 328);
        presentationTimeStamp = *(a2 + 300);
        v9 = **&MEMORY[0x1E6960C70];
        value_low = VTCompressionSessionEncodeFrame(v4, v5, &presentationTimeStamp, &v9, v6, a2, &infoFlagsOut);
        if (value_low)
        {
          if (value_low == -12912)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                EncoderVTEncodeFrame_cold_1();
              }
            }

            value_low = 4294954384;
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              EncoderVTEncodeFrame_cold_2();
            }
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            EncoderVTEncodeFrame_cold_3();
          }
        }

        value_low = 0;
      }
    }

    else
    {
      EncoderVTEncodeFrame_cold_4(&presentationTimeStamp);
      value_low = LODWORD(presentationTimeStamp.value);
    }

    CheckOutHandleDebug();
  }

  else
  {
    value_low = 2148007938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        EncoderVTEncodeFrame_cold_5();
      }
    }
  }

  return value_low;
}

uint64_t EncoderVTGenerateKeyFrame()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "EncoderVTGenerateKeyFrame";
      v7 = 1024;
      v8 = 287;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not implemented!", &v3, 0x1Cu);
    }
  }

  return 0;
}

uint64_t EncoderVTSendImgDesc()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "EncoderVTSendImgDesc";
      v7 = 1024;
      v8 = 292;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not implemented!", &v3, 0x1Cu);
    }
  }

  return 0;
}

uint64_t EncoderVTPixelBufferFromPool()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "EncoderVTPixelBufferFromPool";
      v7 = 1024;
      v8 = 297;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not implemented!", &v3, 0x1Cu);
    }
  }

  return 0;
}

uint64_t EncoderVTSetEncodingMode()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "EncoderVTSetEncodingMode";
      v7 = 1024;
      v8 = 302;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not implemented!", &v3, 0x1Cu);
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_8_20(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x22u);
}

BOOL OUTLINED_FUNCTION_9_16()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t VCConnectionManager_CopyPrimaryConnection(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnectionManager_CopyPrimaryConnection";
        v9 = 1024;
        v10 = 203;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

void VCConnectionManager_SetPrimaryConnection(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnectionManager_SetPrimaryConnection";
      v8 = 1024;
      v9 = 211;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

void VCConnectionManager_UseCellPrimaryInterface(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = _classVTable[0];

    v3(a1, a2);
  }

  else
  {
    VCConnectionManager_UseCellPrimaryInterface_cold_1();
  }
}

void VCConnectionManager_UpdateConnectionForDuplication(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 16);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnectionManager_UpdateConnectionForDuplication";
      v8 = 1024;
      v9 = 3253;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

uint64_t VCConnectionManager_SetOverlayLinkDetails(uint64_t result, uint64_t a2, int a3, char a4)
{
  if (result && a2)
  {
    v6 = result;
    *(result + 3507) = a4;
    IsLocalOnCellular = VCConnection_IsLocalOnCellular(a2);
    v8 = a3 == 0;
    v9 = 3504;
    if (a3)
    {
      v9 = 3508;
      v10 = 3509;
    }

    else
    {
      v10 = 3505;
    }

    v11 = v8 ? 3506 : 3510;
    *(v6 + v9) = IsLocalOnCellular;
    *(v6 + v10) = VCConnection_IsRemoteOnCellular(a2);
    *(v6 + v11) = VCConnection_IsRelay(a2);
    result = *(v6 + 3496);
    if (result)
    {
      v12 = *(result + 40);
      if (v12)
      {
        v13 = *(v6 + 3504) | ((*(v6 + 3508) | (*(v6 + 3510) << 16)) << 32);
        *(v12 + 8) = *(v6 + 3504);
        *(v12 + 14) = BYTE6(v13);
        *(v12 + 12) = WORD2(v13);

        return VCOverlaySource_Write(result);
      }
    }
  }

  return result;
}

void VCConnectionManager_AddTelemetryForConnection(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", VCConnection_GetDataMode(a2)), @"connectionDataMode"}];
    if (VCConnection_IsLocalOnCellular(a2))
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", VCConnection_LocalCellTech(a2)), @"LCTCH"}];
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", VCConnection_IsLocalExpensive(a2)), @"LXPNSV"}];
    }

    if (VCConnection_IsRemoteOnCellular(a2))
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", VCConnection_RemoteCellTech(a2)), @"RCTCH"}];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:VCConnection_IsRemoteExpensive(a2)];
      v6 = a3;
    }

    else
    {
      [a3 setObject:&unk_1F5799D08 forKeyedSubscript:@"RCTCH"];
      v6 = a3;
      v5 = &unk_1F5799D08;
    }

    [v6 setObject:v5 forKeyedSubscript:@"RXPNSV"];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:VCConnection_ReportingIPVersion(a2)];

    [a3 setObject:v9 forKeyedSubscript:@"IPVER"];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "VCConnectionManager_AddTelemetryForConnection";
      v14 = 1024;
      v15 = 789;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil manager passed", &v10, 0x1Cu);
    }
  }
}

uint64_t VCConnectionManager_ConnectionInterfaceType(uint64_t a1, int a2)
{
  if (a2)
  {
    if (VCConnection_IsLocalOnWiFiOrWired(a1))
    {
      if (VCConnection_IsLocalOnWired(a1))
      {
LABEL_4:
        v3 = @"Wired";
LABEL_8:

        return [(__CFString *)v3 UTF8String];
      }

LABEL_7:
      v3 = @"NonCellular";
      goto LABEL_8;
    }

    VCConnection_IsLocalOnCellular(a1);
    VCConnection_LocalCellTech(a1);
  }

  else
  {
    if (VCConnection_IsRemoteOnWiFiOrWired(a1))
    {
      if (VCConnection_IsRemoteOnWired(a1))
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    VCConnection_IsRemoteOnCellular(a1);
    VCConnection_RemoteCellTech(a1);
  }

  return CelltechToStr();
}

void VCConnectionManager_AddDuplicationSelectionLogicTelemetryForConnection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = VCConnection_IsRelay(a2) ? "relay" : "p2p";
      [a4 setObject:objc_msgSend(v7 forKeyedSubscript:{"stringWithUTF8String:", v8), @"ConnectionType"}];
      [a4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", VCConnectionManager_ConnectionInterfaceType(a2, 1)), @"LocalInterfaceType"}];
      [a4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", VCConnectionManager_ConnectionInterfaceType(a2, 0)), @"RemoteInterfaceType"}];
      v9 = MEMORY[0x1E696AEC0];
      v10 = VCConnection_IsIPv6(a2) ? "IPv6" : "IPv4";
      [a4 setObject:objc_msgSend(v9 forKeyedSubscript:{"stringWithUTF8String:", v10), @"ConnFmly"}];
      v11 = MEMORY[0x1E696AEC0];
      v12 = VCConnection_IsEndToEndLink(a2) ? "1" : "0";
      [a4 setObject:objc_msgSend(v11 forKeyedSubscript:{"stringWithUTF8String:", v12), @"EndToEnd"}];
      if (a3)
      {

        [a4 setObject:a3 forKeyedSubscript:@"SLTS"];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v13;
      v17 = 2080;
      v18 = "VCConnectionManager_AddDuplicationSelectionLogicTelemetryForConnection";
      v19 = 1024;
      v20 = 827;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil manager passed", &v15, 0x1Cu);
    }
  }
}

void VCConnectionManager_AddTelemetryForPacketHistory(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    pthread_rwlock_rdlock((a1 + 104));
    [*(a1 + 2928) addConnectionBasedTopPacketCountsTelemetry:a2 reportingKey:@"ULPH" mapLinkIDToLinkUUID:*(a1 + 2936) isOutgoing:1];
    [*(a1 + 2928) addConnectionBasedTopPacketCountsTelemetry:a2 reportingKey:@"DLPH" mapLinkIDToLinkUUID:*(a1 + 2936) isOutgoing:0];

    pthread_rwlock_unlock((a1 + 104));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "VCConnectionManager_AddTelemetryForPacketHistory";
      v10 = 1024;
      v11 = 848;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil manager passed", &v6, 0x1Cu);
    }
  }
}

void VCConnectionManager_AddTelemetryForPacketHistoryInternal(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 2928) addConnectionBasedTopPacketCountsTelemetry:a2 reportingKey:@"ULPH" mapLinkIDToLinkUUID:*(a1 + 2936) isOutgoing:1];
    v4 = *(a1 + 2928);
    v5 = *(a1 + 2936);

    [v4 addConnectionBasedTopPacketCountsTelemetry:a2 reportingKey:@"DLPH" mapLinkIDToLinkUUID:v5 isOutgoing:0];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = "VCConnectionManager_AddTelemetryForPacketHistoryInternal";
      v12 = 1024;
      v13 = 859;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil manager passed", &v8, 0x1Cu);
    }
  }
}

void VCConnectionManager_AddLinkProbingTelemetry(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 72);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnectionManager_AddLinkProbingTelemetry";
      v8 = 1024;
      v9 = 874;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

void VCConnectionManager_SetDuplicationEnabledInternal(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = off_1EDBDA640[0];

    v2(a1, a2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "VCConnectionManager_SetDuplicationEnabledInternal";
      v9 = 1024;
      v10 = 882;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
    }
  }
}

void VCConnectionManager_SetPreWarmState(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 501) != a2)
    {
      *(a1 + 501) = a2;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 501);
          v6 = "not";
          v7 = "Stop";
          *buf = 136316418;
          v11 = v3;
          v13 = "VCConnectionManager_SetPreWarmState";
          v12 = 2080;
          if (v5)
          {
            v6 = "";
          }

          v14 = 1024;
          if (v5)
          {
            v7 = "Start";
          }

          v15 = 1010;
          v16 = 1024;
          v17 = v5;
          v18 = 2080;
          v19 = v6;
          v20 = 2080;
          v21 = v7;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: set _isPreWarmStateEnabled state to %d. Do %s duplicate the RTCP packets. %s active probing on links", buf, 0x36u);
        }
      }

      pthread_rwlock_wrlock((a1 + 104));
      VCConnectionManager_SetActiveLinkProbingEnabled(a1, *(a1 + 501));
      VCConnectionManager_AlertStateUpdated(a1, *(a1 + 501), 1);
      pthread_rwlock_unlock((a1 + 104));
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 501), @"WRMLocAlrtUpdate"}];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      reportingGenericEvent();
    }
  }

  else
  {
    VCConnectionManager_SetPreWarmState_cold_1();
  }
}

void VCConnectionManager_SetActiveLinkProbingEnabled(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 336);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (VCConnectionManager_IsDuplicationConnectionCandidate(a1, v10))
          {
            [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", VCConnection_ConnectionID(v10))}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }

    if (a2)
    {
      [*(a1 + 776) startActiveProbingOnLinks:v4];
    }

    else if ((*(a1 + 501) & 1) == 0 && (*(a1 + 502) & 1) == 0 && !VCDuplicationHandler_IsDuplicationEnabled(*(a1 + 632)))
    {
      [*(a1 + 776) stopActiveProbingOnLinks:v4 resetStats:1];
    }
  }

  else
  {
    VCConnectionManager_SetActiveLinkProbingEnabled_cold_1();
  }
}

void VCConnectionManager_AlertStateUpdated(void *a1, int a2, int a3)
{
  if (a1)
  {
    v4 = a1[79];
    v5 = 0x1000000000000;
    if (!a3)
    {
      v5 = 0;
    }

    v6 = 12;
    if (a2)
    {
      v6 = 0x10000000000000CLL;
    }

    if (VCDuplicationHandler_HandleDuplicationStateUpdateEvent(v4, v6 | v5, 0))
    {
      v7 = [a1 isDuplicationEnabled];
      v8 = off_1EDBDA640[0];

      v8(a1, v7);
    }
  }

  else
  {
    VCConnectionManager_AlertStateUpdated_cold_1();
  }
}

uint64_t VCConnectionManager_ProcessWRMNotification(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    VCConnectionManager_ProcessWRMNotification_cold_2();
    return v10;
  }

  if (!a2)
  {
    VCConnectionManager_ProcessWRMNotification_cold_1();
    return v10;
  }

  v3 = VCWRMHandler_ProcessLocalWRMNotification(*(a1 + 624), a2, *(a1 + 680));
  if (!v3)
  {
    return 2150170625;
  }

  if (v3 != 1)
  {
    v4 = off_1EDBDA650(a1, 1, 1);
    pthread_rwlock_wrlock((a1 + 104));
    v5 = micro();
    v6 = [*(a1 + 624) localWRMLinkTypeSuggestion];
    v7 = 256;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = 4;
    if (v6 == 1)
    {
      v8 = 5;
    }

    if (_VCConnectionManager_ProcessDuplicationStateUpdateEvent(a1, v8 | v7, 0, 0, ((v5 - *(a1 + 528)) * 1000.0), v4 ^ 1u, 1) >> 32 == 2)
    {
      VCWRMHandler_UpdateWRMNotificationRequestTime(*(a1 + 624), v5);
    }

    pthread_rwlock_unlock((a1 + 104));
  }

  return 0;
}

uint64_t VCConnectionManager_SetWRMNotification(uint64_t a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = off_1EDBDA648;

    return v2(a1, a2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "VCConnectionManager_SetWRMNotification";
        v10 = 1024;
        v11 = 1150;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v6, 0x1Cu);
      }
    }

    return 1;
  }
}

uint64_t VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(uint64_t a1, int a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = off_1EDBDA650;

    return v3(a1, a2, a3);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = "VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality";
        v11 = 1024;
        v12 = 1279;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v7, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t _VCConnectionManager_ProcessDuplicationStateUpdateEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, char a7)
{
  v26 = *MEMORY[0x1E69E9840];
  updated = VCDuplicationHandler_HandleDuplicationStateUpdateEvent(*(a1 + 632), a2, a3);
  v13 = [a1 isDuplicationEnabled];
  v14 = [*(a1 + 632) isDuplicationPending];
  v15 = [*(a1 + 624) localWRMLinkTypeSuggestion];
  if (updated)
  {
    VCConnectionManager_SetDuplicationEnabledInternal(a1, v13);
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 360) = 0u;
  }

  v16 = *(a1 + 480);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___VCConnectionManager_ProcessDuplicationStateUpdateEvent_block_invoke;
  block[3] = &unk_1E85F6C70;
  block[4] = a1;
  block[5] = updated;
  v19 = v15;
  v22 = v13;
  v23 = v14;
  v24 = a7;
  v25 = a4;
  v20 = a6;
  v21 = a5;
  dispatch_async(v16, block);
  return updated;
}

uint64_t VCConnectionManager_GetNumberOfConnectionsInternal(uint64_t (**a1)(void))
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[5]();
    v3 = v2 != 0;
    if (v2)
    {
      CFRelease(v2);
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if ([a1 secondaryConnection])
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    VCConnectionManager_GetNumberOfConnectionsInternal_cold_1(&v6);
    return v6;
  }
}

uint64_t VCConnectionManager_CopyConnectionForQuality(uint64_t a1, int a2)
{
  if (a1)
  {
    pthread_rwlock_rdlock((a1 + 104));
    v4 = _VCConnectionManager_CopyConnectionForQualityInternal(a1, a2);
    pthread_rwlock_unlock((a1 + 104));
    return v4;
  }

  else
  {
    VCConnectionManager_CopyConnectionForQuality_cold_1();
    return v6;
  }
}

void VCConnectionManager_UpdateTransmittedPacketsAndBytes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _VCConnectionManager_UpdateCellularExcessiveBytes(a1, a2, a3, a4, 1);
    if (*a2 == 4)
    {
      v14 = *(a2 + 12);
      if (a5)
      {
        (*(a1 + 56))(a1, v14, a3, a6, a7, 1);
      }

      if (a4)
      {
        v15 = *(a1 + 64);

        v15(a1, v14, 1);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = v16;
      v20 = 2080;
      v21 = "VCConnectionManager_UpdateTransmittedPacketsAndBytes";
      v22 = 1024;
      v23 = 1354;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v18, 0x1Cu);
    }
  }
}

uint64_t _VCConnectionManager_UpdateCellularExcessiveBytes(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (pthread_rwlock_rdlock((a1 + 104)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCConnectionManager_UpdateCellularExcessiveBytes_cold_1();
      }
    }
  }

  VCConnectionManager_IsSourceOnCellularIPv6(a1, a2, &v26 + 1, &v26);
  v10 = VCConnectionManager_CopyPrimaryConnection(a1);
  if (VCConnection_MatchesSourceDestinationInfo(v10, a2))
  {
    if (v10)
    {
      CFRelease(v10);
    }

    pthread_rwlock_unlock((a1 + 104));
  }

  else
  {
    v11 = HIBYTE(v26);
    if (v10)
    {
      CFRelease(v10);
    }

    pthread_rwlock_unlock((a1 + 104));
    if (v11)
    {
      v12 = v26;
      pthread_rwlock_wrlock((a1 + 104));
      if (v12)
      {
        v13 = 48;
      }

      else
      {
        v13 = 28;
      }

      v14 = v13 + a3;
      if (a5)
      {
        v15 = 376;
        if (a4)
        {
          v15 = 360;
        }

        *(a1 + v15) += v14;
        if (!VCNetworkAgentCell_CellularAssertionActive())
        {
          *(a1 + 392) += v14;
        }

        pthread_rwlock_unlock((a1 + 104));
        goto LABEL_22;
      }

      v22 = 384;
      if (a4)
      {
        v22 = 368;
      }

      *(a1 + v22) += v14;
      if (!VCNetworkAgentCell_CellularAssertionActive())
      {
        *(a1 + 400) += v14;
      }

      pthread_rwlock_unlock((a1 + 104));
LABEL_31:
      v23 = HIBYTE(v26);
      v24 = v26;
      pthread_rwlock_wrlock((a1 + 104));
      if (v24)
      {
        v18 = 48;
      }

      else
      {
        v18 = 28;
      }

      v19 = v23 == 0;
      v20 = 432;
      v21 = 416;
      goto LABEL_35;
    }
  }

  if (!a5)
  {
    goto LABEL_31;
  }

LABEL_22:
  v16 = HIBYTE(v26);
  v17 = v26;
  pthread_rwlock_wrlock((a1 + 104));
  if (v17)
  {
    v18 = 48;
  }

  else
  {
    v18 = 28;
  }

  v19 = v16 == 0;
  v20 = 424;
  v21 = 408;
LABEL_35:
  if (!v19)
  {
    v20 = v21;
  }

  *(a1 + v20) += v18 + a3;
  return pthread_rwlock_unlock((a1 + 104));
}

void VCConnectionManager_UpdateReceivedPacketsAndBytes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  values[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _VCConnectionManager_UpdateCellularExcessiveBytes(a1, a2, a3, a4, 0);
    if (*a2 == 4)
    {
      v14 = *(a2 + 12);
      if (a5)
      {
        (*(a1 + 56))(a1, *(a2 + 12), a3, a6, a7, 0);
      }

      if (a4)
      {
        (*(a1 + 64))(a1, v14, 0);
      }
    }

    v15 = (*(a1 + 40))(a1);
    v16 = v15;
    if (*(a1 + 3136) == v15 || !VCConnection_MatchesSourceDestinationInfo(v15, a2))
    {
      goto LABEL_22;
    }

    *(a1 + 3136) = v16;
    *v29 = @"ConnectionType";
    *&v29[8] = @"LocalInterfaceType";
    *&v29[16] = @"RemoteInterfaceType";
    if (VCConnection_IsRelay(v16))
    {
      v17 = @"relay";
    }

    else
    {
      v17 = @"p2p";
    }

    v18 = VCConnectionManager_ConnectionInterfaceType(*(a1 + 3136), 1);
    v19 = *MEMORY[0x1E695E480];
    v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v18, 0x8000100u);
    v21 = VCConnectionManager_ConnectionInterfaceType(*(a1 + 3136), 0);
    v22 = CFStringCreateWithCString(v19, v21, 0x8000100u);
    v23 = v22;
    values[0] = v17;
    values[1] = v20;
    values[2] = v22;
    if (v20)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = 0;
      v26 = 0;
      if (VCConnectionManager_UpdateReceivedPacketsAndBytes_cold_1(v20, v22, v20 == 0))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = CFDictionaryCreate(v19, v29, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      reportingGenericEvent();
    }

    CFRelease(v20);
    v26 = v25;
LABEL_18:
    if (v23)
    {
      CFRelease(v23);
    }

    if (v26)
    {
      CFRelease(v26);
    }

LABEL_22:
    if (v16)
    {
      CFRelease(v16);
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 136315650;
      *&v29[4] = v27;
      *&v29[12] = 2080;
      *&v29[14] = "VCConnectionManager_UpdateReceivedPacketsAndBytes";
      *&v29[22] = 1024;
      v30 = 1399;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", v29, 0x1Cu);
    }
  }
}

void VCConnectionManager_SynchronizeParticipantGenerationCounter(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 24);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnectionManager_SynchronizeParticipantGenerationCounter";
      v8 = 1024;
      v9 = 1439;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

CFStringRef VCConnectionManager_CopySuggestedLinkTypeCombo(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 499))
    {
      v1 = 67;
    }

    else
    {
      v1 = 87;
    }

    if (*(a1 + 498))
    {
      v2 = 67;
    }

    else
    {
      v2 = 87;
    }

    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c:%c", v2, v1);
  }

  else
  {
    VCConnectionManager_CopySuggestedLinkTypeCombo_cold_1();
    return v4;
  }
}

void _VCConnectionManagerNWConnectionStatisticsCallback(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 2954) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a2 + 8);
            LODWORD(v28[0]) = 136315906;
            *(v28 + 4) = v4;
            WORD6(v28[0]) = 2080;
            *(v28 + 14) = "_VCConnectionManagerNWConnectionStatisticsCallback";
            WORD3(v28[1]) = 1024;
            DWORD2(v28[1]) = 1788;
            WORD6(v28[1]) = 2048;
            *(&v28[1] + 14) = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNWConnectionNotification timestamp=%llu", v28, 0x26u);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          _VCConnectionManagerNWConnectionStatisticsCallback_cold_1(v4, a2, v5);
        }
      }

      if (*(a2 + 2) == 2)
      {
        v29 = 0;
        memset(v28, 0, sizeof(v28));
        *(&v28[0] + 1) = micro();
        v8 = *(a2 + 112);
        *(&v28[7] + 8) = *(a2 + 96);
        *(&v28[8] + 8) = v8;
        v9 = *(a2 + 144);
        *(&v28[9] + 8) = *(a2 + 128);
        *(&v28[10] + 8) = v9;
        v10 = *(a2 + 48);
        *(&v28[3] + 8) = *(a2 + 32);
        *(&v28[4] + 8) = v10;
        v11 = *(a2 + 80);
        *(&v28[5] + 8) = *(a2 + 64);
        *(&v28[6] + 8) = v11;
        v12 = *(a2 + 16);
        *(&v28[1] + 8) = *a2;
        LODWORD(v28[0]) = 12;
        *(&v28[2] + 8) = v12;
        AVCStatisticsCollector_SetVCStatistics(*(a1 + 2944), v28);
        return;
      }

      v29 = 0;
      memset(v28, 0, sizeof(v28));
      *(&v28[0] + 1) = micro();
      LODWORD(v28[0]) = 11;
      v13 = *(a2 + 80);
      *(&v28[7] + 8) = *(a2 + 96);
      v14 = *(a2 + 128);
      *(&v28[8] + 8) = *(a2 + 112);
      *(&v28[9] + 8) = v14;
      *(&v28[10] + 8) = *(a2 + 144);
      v15 = *(a2 + 16);
      *(&v28[3] + 8) = *(a2 + 32);
      v16 = *(a2 + 64);
      *(&v28[4] + 8) = *(a2 + 48);
      *(&v28[5] + 8) = v16;
      *(&v28[6] + 8) = v13;
      v17 = *(a2 + 16);
      *(&v28[1] + 8) = *a2;
      v18 = *a2;
      *(&v28[2] + 8) = v17;
      *(a1 + 2992) = v15;
      *(a1 + 2976) = v18;
      v19 = *(a2 + 32);
      v20 = *(a2 + 48);
      v21 = *(a2 + 64);
      *(a1 + 3056) = *(a2 + 80);
      *(a1 + 3040) = v21;
      *(a1 + 3024) = v20;
      *(a1 + 3008) = v19;
      v22 = *(a2 + 96);
      v23 = *(a2 + 112);
      v24 = *(a2 + 128);
      *(a1 + 3120) = *(a2 + 144);
      *(a1 + 3104) = v24;
      *(a1 + 3088) = v23;
      *(a1 + 3072) = v22;
      AVCStatisticsCollector_SetVCStatistics(*(a1 + 2944), v28);
      VCNetworkConditionMonitor_SetWiFiChannelQualityScore(*(a1 + 824), SBYTE12(v28[6]));
      if ([a1 useMediaDrivenDuplication])
      {
        v25 = VCConnectionSelector_CopyPrimaryConnection(*(a1 + 640));
        v26 = v25;
        if (*(a2 + 73) == 1 && *(a2 + 92) != 1)
        {
          IsLocalOnWiFi = 0;
          if (!v25)
          {
LABEL_19:
            if (IsLocalOnWiFi && ([*(a1 + 632) allowDuplication] & 1) == 0)
            {
              *(a1 + 3184) = 1;
              if (*(a1 + 672) != 0.0)
              {
                *(a1 + 672) = micro();
              }
            }

            [*(a1 + 632) setAllowDuplication:IsLocalOnWiFi];
            return;
          }
        }

        else
        {
          IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(v25);
          if (!v26)
          {
            goto LABEL_19;
          }
        }

        CFRelease(v26);
        goto LABEL_19;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCConnectionManagerNWConnectionStatisticsCallback_cold_2();
    }
  }
}

void VCConnectionManager_DidUpdateNetworkCondition(uint64_t a1, char a2, char a3, char a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 448);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCConnectionManager_DidUpdateNetworkCondition_block_invoke;
    block[3] = &unk_1E85F6BF8;
    v6 = a2;
    v7 = a3;
    v8 = a4;
    block[4] = a1;
    dispatch_async(v4, block);
  }

  else
  {
    VCConnectionManager_DidUpdateNetworkCondition_cold_1();
  }
}

void _VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v3 = [+[VCDefaults sharedInstance](VCDefaults localRATTypeOverride];
  if (*(a1 + 756) == v3)
  {
    return;
  }

  v4 = v3;
  *(a1 + 756) = v3;
  v5 = VCConnectionIDSIsCellularRATType(v3);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_11;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v18 = v7;
    v19 = 2080;
    v20 = "_VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue";
    v21 = 1024;
    v22 = 2477;
    v23 = 2080;
    v24 = VCConnectionIDSRATTypeToStr(v4);
    v9 = " [%s] %s:%d HandoverReport: Defaults settings force local cell tech enabled to be %s";
    v10 = v8;
    v11 = 38;
  }

  else
  {
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_11;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v18 = v12;
    v19 = 2080;
    v20 = "_VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue";
    v21 = 1024;
    v22 = 2479;
    v9 = " [%s] %s:%d HandoverReport: Defaults settings force local cell tech disabled";
    v10 = v13;
    v11 = 28;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_11:
  if (v4 == -1 || !VCConnectionIDSIsCellularRATType(v4))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 764)];
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  }

  v15 = *(a1 + 448);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue_block_invoke;
  v16[3] = &unk_1E85F37F0;
  v16[4] = a1;
  v16[5] = v14;
  dispatch_async(v15, v16);
}

uint64_t _VCConnectionManager_CopyConnectionForQualityInternal(void *a1, int a2)
{
  if (a2 == 1)
  {
    if ([a1 isDuplicationEnabled])
    {
      v4 = ([a1 connectionForDuplication] ? objc_msgSend(a1, "connectionForDuplication") : objc_msgSend(a1, "secondaryConnection"));
      v3 = v4;
      if (v4)
      {
        CFRetain(v4);
        return v3;
      }
    }
  }

  else if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCConnectionManager_CopyConnectionForQualityInternal_cold_1();
      }
    }

    return 0;
  }

  return VCConnectionManager_CopyPrimaryConnection(a1);
}

void sub_1DB7A1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *VCConnectionManager_CreatePacketRoutingInfoList(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCConnectionManager_CreatePacketRoutingInfoList_cold_5();
    return *block;
  }

  if (*(a1 + 497) == 1)
  {
    if (*(a1 + 3408) == 1)
    {
      VCConnectionHealthMonitor_UpdateReceiveStats(*(a1 + 520));
    }

    v6 = micro();
    v7 = off_1EDBDA650(a1, 1, 1);
    if (v6 - *(a1 + 664) >= 1.0)
    {
      v8 = v7;
      if (VCWRMHandler_ShouldForceWRMRecommendationUsingUserDefaults(*(a1 + 624)))
      {
        v59 = 0;
        v58 = 0u;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        v54 = 0u;
        v53 = 0u;
        v52 = 0u;
        v51 = 0u;
        *&block[8] = 0u;
        if (*(a1 + 680))
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        *block = v9;
        *&block[4] = [*(a1 + 624) localWRMLinkTypeSuggestion];
        off_1EDBDA648(a1, block);
      }

      IntValueForKey = VCDefaults_GetIntValueForKey(@"localWRMAlert", 0xFFFFFFFFLL);
      if (IntValueForKey != -1)
      {
        v11 = IntValueForKey;
        if (IntValueForKey != *(a1 + 760))
        {
          VCConnectionManager_SetPreWarmState(a1, IntValueForKey != 0);
          *(a1 + 760) = v11;
        }
      }

      _VCConnectionManager_ChecklocalRATTypeOverrideDefaultValue(a1, v8);
      pthread_rwlock_rdlock((a1 + 104));
      v12 = *(a1 + 624);
      v13 = VCDuplicationHandler_DuplicationReason(*(a1 + 632));
      if (VCWRMHandler_ShouldRequestWRMNotificationWithDuplicationReason(v12, v13, [a1 isDuplicationEnabled], v8, v6))
      {
        v14 = *(a1 + 480);
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = ___VCConnectionManager_RequestWRMNotification_block_invoke;
        *&v51 = &unk_1E85F3778;
        *(&v51 + 1) = a1;
        dispatch_async(v14, block);
      }

      pthread_rwlock_unlock((a1 + 104));
      *(a1 + 664) = v6;
      if (*(a1 + 3181) == 1)
      {
        v15 = *(a1 + 448);
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = ___VCConnectionManager_GetAndLogSignalStrength_block_invoke;
        *&v51 = &unk_1E85F3778;
        *(&v51 + 1) = a1;
        dispatch_async(v15, block);
      }

      if (*(a1 + 824))
      {
        v16 = *(a1 + 3480);
        if (v16 > 0.0 && v6 - v16 > *(a1 + 3472))
        {
          v17 = *(a1 + 480);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __VCConnectionManager_CreatePacketRoutingInfoList_block_invoke;
          v49[3] = &unk_1E85F3778;
          v49[4] = a1;
          dispatch_async(v17, v49);
        }
      }
    }
  }

  pthread_rwlock_rdlock((a1 + 104));
  if (!a2)
  {
    PacketRoutingInfoListForConnection = 0;
    goto LABEL_103;
  }

  v18 = (*(a1 + 40))(a1);
  v19 = v18;
  if ((a2[1] & 1) == 0 && *(a1 + 640) && VCConnection_IsEndToEndLink(v18) && [*(a1 + 640) serverLinks])
  {
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = [*(a1 + 640) serverLinks];
    if (!v20)
    {
LABEL_35:
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_49;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        *block = 136315650;
        *&block[4] = v24;
        *&block[12] = 2080;
        *&block[14] = "VCConnectionManager_CreatePacketRoutingInfoList";
        *&block[22] = 1024;
        LODWORD(v51) = 2388;
        v26 = " [%s] %s:%d Primary connection should not be nil";
        v27 = v25;
        v28 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v22 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v22 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_49;
        }

        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        *block = 136316162;
        *&block[4] = v29;
        *&block[12] = 2080;
        *&block[14] = "VCConnectionManager_CreatePacketRoutingInfoList";
        *&block[22] = 1024;
        LODWORD(v51) = 2388;
        WORD2(v51) = 2112;
        *(&v51 + 6) = v22;
        HIWORD(v51) = 2048;
        *&v52 = a1;
        v26 = " [%s] %s:%d %@(%p) Primary connection should not be nil";
        v27 = v30;
        v28 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, block, v28);
LABEL_49:
      v19 = 0;
LABEL_50:
      PacketRoutingInfoListForConnection = 0;
      goto LABEL_51;
    }

    v19 = CFRetain(v20);
  }

  if (!v19)
  {
    goto LABEL_35;
  }

  if ((*(a1 + 3464) & 1) == 0 && !VCConnection_IsRelay(v19))
  {
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCConnectionManager_CreatePacketRoutingInfoList_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *block = 136316162;
          *&block[4] = v38;
          *&block[12] = 2080;
          *&block[14] = "VCConnectionManager_CreatePacketRoutingInfoList";
          *&block[22] = 1024;
          LODWORD(v51) = 2385;
          WORD2(v51) = 2112;
          *(&v51 + 6) = v23;
          HIWORD(v51) = 2048;
          *&v52 = a1;
          _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) p2p link cannot be used as primary", block, 0x30u);
        }
      }
    }

    goto LABEL_50;
  }

  PacketRoutingInfoListForConnection = _VCConnectionManager_CreatePacketRoutingInfoListForConnection(v19, a1, a2, a3);
LABEL_51:
  if (*(a1 + 497) == 1)
  {
    v31 = *a2;
    if (VCDuplicationHandler_IsDuplicationEnabled(*(a1 + 632)) || [*(a1 + 504) isAvailable] && v31 && *(a1 + 747) == 1)
    {
      v32 = [a1 connectionForDuplication];
      if (!v32)
      {
        v32 = [a1 secondaryConnection];
      }

      if ((a2[1] & 1) == 0)
      {
        if (*(a1 + 640))
        {
          if (VCConnection_IsEndToEndLink(v32))
          {
            [*(a1 + 640) serverLinks];
            if (v33)
            {
              [*(a1 + 640) serverLinks];
              v32 = v34;
            }
          }
        }
      }

      if (v32)
      {
        if ((*(a1 + 3464) & 1) != 0 || VCConnection_IsRelay(v32))
        {
          v35 = _VCConnectionManager_CreatePacketRoutingInfoListForConnection(v32, a1, a2, a3);
          if (PacketRoutingInfoListForConnection)
          {
            *(PacketRoutingInfoListForConnection + 16) = v35;
            v36 = v35 + 8;
            if (!v35)
            {
              v36 = 0;
            }

            *(PacketRoutingInfoListForConnection + 14) = v36;
          }

          else
          {
            PacketRoutingInfoListForConnection = v35;
          }
        }

        else if (objc_opt_class() == a1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VCConnectionManager_CreatePacketRoutingInfoList_cold_2();
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v37 = [a1 performSelector:sel_logPrefix];
          }

          else
          {
            v37 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *block = 136316162;
              *&block[4] = v40;
              *&block[12] = 2080;
              *&block[14] = "VCConnectionManager_CreatePacketRoutingInfoList";
              *&block[22] = 1024;
              LODWORD(v51) = 2411;
              WORD2(v51) = 2112;
              *(&v51 + 6) = v37;
              HIWORD(v51) = 2048;
              *&v52 = a1;
              _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) p2p link cannot be used for duplication", block, 0x30u);
            }
          }
        }
      }
    }
  }

  if (a2[2] == 1 && a2[1] == 1 && [*(a1 + 640) serverLinks])
  {
    if (PacketRoutingInfoListForConnection)
    {
      if (*(PacketRoutingInfoListForConnection + 16))
      {
        v42 = *(PacketRoutingInfoListForConnection + 16);
      }

      else
      {
        v42 = PacketRoutingInfoListForConnection;
      }

      v43 = MEMORY[0x1E1288880](a3, 136, 0x10E204054A9890BLL, 0);
      *(v42 + 16) = v43;
      if (v43)
      {
        *(v42 + 14) = v43 + 8;
        *(v43 + 128) = 0;
        v44 = *(v42 + 16);
        *(v44 + 112) = 0;
        *v44 = 0;
        v45 = [*(a1 + 640) serverLinks];
        v46 = *(v42 + 16) + 8;
LABEL_100:
        VCConnection_SourceDestinationInfo(v45, v46);
        goto LABEL_101;
      }

      VCConnectionManager_CreatePacketRoutingInfoList_cold_3(PacketRoutingInfoListForConnection, block);
    }

    else
    {
      v47 = MEMORY[0x1E1288880](a3, 136, 0x10E204054A9890BLL, 0);
      if (v47)
      {
        PacketRoutingInfoListForConnection = v47;
        *(v47 + 128) = 0;
        *(v47 + 112) = 0;
        *v47 = 0;
        v45 = [*(a1 + 640) serverLinks];
        v46 = (PacketRoutingInfoListForConnection + 8);
        goto LABEL_100;
      }

      VCConnectionManager_CreatePacketRoutingInfoList_cold_4();
    }

    PacketRoutingInfoListForConnection = *block;
    if (!v19)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

LABEL_101:
  if (v19)
  {
LABEL_102:
    CFRelease(v19);
  }

LABEL_103:
  pthread_rwlock_unlock((a1 + 104));
  return PacketRoutingInfoListForConnection;
}

void VCConnectionManager_UpdateNetworkOutageStatus(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 3)
  {
    if (a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCConnectionManager_UpdateNetworkOutageStatus_cold_1();
        }
      }
    }

    else if ((*(a1 + 3488) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "VCConnectionManager_UpdateNetworkOutageStatus";
          v15 = 1024;
          v16 = 3264;
          v17 = 1024;
          v18 = 3264;
          v19 = 1024;
          v20 = 0;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCConnectionManager.m:%d: VCCM: Processing event=%d", &v11, 0x28u);
        }
      }

      [a1 startBrokenNetworkDetection];
    }
  }

  else if (*(a1 + 3488) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v4;
        v13 = 2080;
        v14 = "VCConnectionManager_UpdateNetworkOutageStatus";
        v15 = 1024;
        v16 = 3272;
        v17 = 1024;
        v18 = 3272;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCConnectionManager.m:%d: VCCM: Processing event=%d", &v11, 0x28u);
      }
    }

    [a1 stopBrokenNetworkDetection];
    VCNetworkConditionMonitor_SetBrokenNetworkStatus(*(a1 + 824), 1, a2 == 2);
    VCNetworkConditionMonitor_SetBrokenNetworkStatus(*(a1 + 824), 0, a2 == 3);
    if (a2 == 1)
    {
      *(a1 + 3488) = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 3488);
          v11 = 136316162;
          v12 = v6;
          v13 = 2080;
          v14 = "VCConnectionManager_UpdateNetworkOutageStatus";
          v15 = 1024;
          v16 = 3280;
          v17 = 1024;
          v18 = 3280;
          v19 = 1024;
          v20 = v8;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/ConnectionManager/VCConnectionManager.m:%d: VCCM: brokenBackhaulDetectionStarted=%d ", &v11, 0x28u);
        }
      }
    }
  }
}

_BYTE *_VCConnectionManager_CreatePacketRoutingInfoListForConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = &kVCConnectionManagerPacketRoutingCriteriaList + 32 * v7;
    v13 = *(v12 + 2);
    v14 = *(v12 + 3);
    v15 = (*(v12 + 1))(a1, a2, a3);
    v16 = v13(a2);
    if (v9)
    {
      v9 = 1;
    }

    else
    {
      v9 = v14(a3) & (v16 ^ 1);
    }

    v10 = 0;
    v8 |= v15 ^ 1;
    v7 = 1;
  }

  while ((v11 & 1) != 0);
  if (v8)
  {
    if ((v9 & 1) == 0)
    {
      Count = CFArrayGetCount(*(a2 + 336));
      if (Count >= 1)
      {
        v18 = 0;
        v19 = Count & 0x7FFFFFFF;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 336), v18);
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v22;
            if (((*(&kVCConnectionManagerPacketRoutingCriteriaList + 4 * v21 + 1))(ValueAtIndex, a2, a3) & 1) == 0)
            {
              goto LABEL_14;
            }

            v22 = 0;
            v21 = 1;
          }

          while ((v23 & 1) != 0);
          if ((VCConnection_IsOnSameInterfacesWithConnection(ValueAtIndex) & 1) == 0)
          {
LABEL_14:
            if (++v18 != v19)
            {
              continue;
            }

            return 0;
          }

          break;
        }

        if (!ValueAtIndex)
        {
          return 0;
        }

        v29 = MEMORY[0x1E1288880](a4, 136, 0x10E204054A9890BLL, 0);
        if (!v29)
        {
          _VCConnectionManager_CreatePacketRoutingInfoListForConnection_cold_2();
          return v32;
        }

        v24 = v29;
        if (*(a3 + 3) == 1)
        {
          v30 = VCConnection_IsHopByHopEncryptionSupported(a1) ^ 1;
        }

        else
        {
          v30 = 0;
        }

        *v24 = v30;
        v26 = (v24 + 8);
        v27 = ValueAtIndex;
        goto LABEL_18;
      }
    }

    return 0;
  }

  else
  {
    v25 = MEMORY[0x1E1288880](a4, 136, 0x10E204054A9890BLL, 0);
    if (v25)
    {
      v24 = v25;
      *v25 = 0;
      v26 = (v25 + 8);
      v27 = a1;
LABEL_18:
      VCConnection_SourceDestinationInfo(v27, v26);
      *(v24 + 16) = 0;
      *(v24 + 14) = 0;
      return v24;
    }

    _VCConnectionManager_CreatePacketRoutingInfoListForConnection_cold_1();
    return v32;
  }
}

void VCConnectionManager_IsSourceOnCellularIPv6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 && a3 && a4)
    {
      v4 = *(a1 + 32);

      v4();
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCConnectionManager_IsSourceOnCellularIPv6_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "VCConnectionManager_IsSourceOnCellularIPv6";
      v11 = 1024;
      v12 = 2728;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v7, 0x1Cu);
    }
  }
}

uint64_t VCConnectionManager_CopyConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v6 = *(a1 + 8);

    return v6();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316418;
        v11 = v8;
        v12 = 2080;
        v13 = "VCConnectionManager_CopyConnection";
        v14 = 1024;
        v15 = 2740;
        v16 = 2048;
        v17 = a1;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = a3;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NULL instance=%p, sourceDestinationInfo=%p, or isPrimary=%p passed", &v10, 0x3Au);
      }
    }

    return 0;
  }
}

void VCConnectionManager_UpdateConnectionHealthWithIndicator(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 3408) == 1)
  {
    VCConnectionHealthMonitor_ReceivePacket(*(a1 + 520), a2, a3, a4);
  }
}

uint64_t VCConnectionManager_IsDuplicationConnectionCandidate(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 3181) == 1 && !VCConnection_IsEndToEndLink(a2))
    {
      v14 = 0;
    }

    else
    {
      v4 = VCDuplicationHandler_DuplicationReason(*(a1 + 632));
      v5 = (*(a1 + 40))(a1);
      IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a2);
      v7 = IsLocalOnWiFi ^ VCConnection_IsLocalOnWiFi(v5);
      IsRemoteOnWiFi = VCConnection_IsRemoteOnWiFi(a2);
      v9 = VCConnection_IsRemoteOnWiFi(v5);
      v10 = IsRemoteOnWiFi ^ v9;
      if (v4 == 4)
      {
        v11 = (*(a1 + 499) != 1) | IsRemoteOnWiFi ^ v9;
      }

      else
      {
        v11 = 1;
      }

      v12 = (v4 != 3) | v7;
      v13 = v7 | v10;
      if (v5)
      {
        CFRelease(v5);
      }

      v14 = v12 & v11 & v13;
    }
  }

  else
  {
    VCConnectionManager_IsDuplicationConnectionCandidate_cold_1(&v16);
    v14 = v16;
  }

  return v14 & 1;
}

uint64_t VCConnectionManager_AreAllLinkProbingTriggersInactive(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 501) & 1) == 0 && (*(a1 + 502) & 1) == 0 && !VCDuplicationHandler_IsDuplicationEnabled(*(a1 + 632));
  }

  else
  {
    VCConnectionManager_AreAllLinkProbingTriggersInactive_cold_1(&v2);
    return v2;
  }
}

void VCConnectionManager_UpdatePacketSendStatus(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = (a1 + 3432);
    }

    else
    {
      v2 = (a1 + 3436);
    }

    atomic_fetch_add(v2, 1u);
  }

  else
  {
    VCConnectionManager_UpdatePacketSendStatus_cold_1();
  }
}

void VCConnectionManager_UpdateOnTheWireBytesSentCount(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    atomic_fetch_add((a1 + 3440), a2);
  }

  else
  {
    VCConnectionManager_UpdateOnTheWireBytesSentCount_cold_1();
  }
}

void VCConnectionManager_UpdateOnTheWireBytesReceivedCount(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    atomic_fetch_add((a1 + 3448), a2);
  }

  else
  {
    VCConnectionManager_UpdateOnTheWireBytesReceivedCount_cold_1();
  }
}

void _VCConnectionManager_UseCellPrimaryInterfaceInternal(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 746);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 92);
          v9 = 136316162;
          v10 = v6;
          v11 = 2080;
          v12 = "_VCConnectionManager_UseCellPrimaryInterfaceInternal";
          v13 = 1024;
          v14 = 2766;
          v15 = 1024;
          v16 = v8;
          v17 = 1024;
          v18 = a2;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d callID = %u, network status bar request, useCellPrimayInterface = %d", &v9, 0x28u);
        }
      }

      if (*(a1 + 512) != a2)
      {
        *(a1 + 512) = a2;
        if (a2)
        {
          VCNetworkAgentCell_AddCellularAssertion();
        }

        else
        {
          VCNetworkAgentCell_RemoveCellularAssertion();
        }
      }
    }

    else
    {
      _VCConnectionManager_UseCellPrimaryInterfaceInternal_cold_1(ErrorLogLevelForModule);
    }
  }

  else
  {
    _VCConnectionManager_UseCellPrimaryInterfaceInternal_cold_2();
  }
}

void _VCConnectionManager_SetDuplicationEnabledInternal(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    *(a1 + 496) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = v4;
        v30 = 2080;
        v31 = "_VCConnectionManager_SetDuplicationEnabledInternal";
        v32 = 1024;
        v33 = 893;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Reset _duplicationPending state if we stop duplication.", buf, 0x1Cu);
      }
    }
  }

  if (*(a1 + 464) == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v6;
        v30 = 2080;
        v31 = "_VCConnectionManager_SetDuplicationEnabledInternal";
        v32 = 1024;
        v33 = 897;
        v34 = 1024;
        LODWORD(v35) = a2;
        v8 = " [%s] %s:%d HandoverReport: enable duplication (%d) already applied.";
        v9 = v7;
        v10 = 34;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    NumberOfConnectionsInternal = VCConnectionManager_GetNumberOfConnectionsInternal(a1);
    if (a2 && NumberOfConnectionsInternal <= 1)
    {
      *(a1 + 496) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v29 = v12;
          v30 = 2080;
          v31 = "_VCConnectionManager_SetDuplicationEnabledInternal";
          v32 = 1024;
          v33 = 906;
          v8 = " [%s] %s:%d HandoverReport: can't enable duplication when there is no secondary connection.";
          v9 = v13;
          v10 = 28;
          goto LABEL_14;
        }
      }
    }

    else
    {
      *(a1 + 464) = a2;
      *(a1 + 496) = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 464);
          *buf = 136315906;
          if (v16)
          {
            v17 = "Start";
          }

          else
          {
            v17 = "Stop";
          }

          v29 = v14;
          v30 = 2080;
          v31 = "_VCConnectionManager_SetDuplicationEnabledInternal";
          v32 = 1024;
          v33 = 913;
          v34 = 2080;
          v35 = v17;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: %s duplication and active probing on links", buf, 0x26u);
        }
      }

      [*(a1 + 776) setIsDuplicationEnabled:*(a1 + 464)];
      VCConnectionManager_SetActiveLinkProbingEnabled(a1, *(a1 + 464));
      IsDuplicationEnabled = VCDuplicationHandler_IsDuplicationEnabled(*(a1 + 632));
      if (!IsDuplicationEnabled)
      {
        *(a1 + 552) = 0;
        *(a1 + 600) = 0;
      }

      v19 = _VCConnectionManager_CopyConnectionForQualityInternal(a1, 1);
      if (v19)
      {
        v20 = v19;
        IsLocalOnCellular = VCConnection_IsLocalOnCellular(v19);
        v22 = VCConnectionManager_CopySuggestedLinkTypeCombo(a1);
        VCConnectionManager_UseCellPrimaryInterface(a1, IsLocalOnCellular);
        v23 = a1;
        v24 = *(a1 + 448);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = ___VCConnectionManager_SetDuplicationEnabledInternal_block_invoke;
        v25[3] = &unk_1E85F6C20;
        v26 = IsDuplicationEnabled;
        v25[4] = v23;
        v25[5] = v20;
        v25[6] = v22;
        v27 = IsLocalOnCellular;
        dispatch_async(v24, v25);
      }
    }
  }
}

uint64_t _VCConnectionManager_SetWRMNotification(uint64_t a1, __int128 *a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    _VCConnectionManager_SetWRMNotification_cold_1();
    return v33;
  }

  if (!*(a2 + 1))
  {
    v48[0] = @"WRMCoexIsLocal";
    v48[1] = @"WRMLinkType";
    *&v34[4] = [MEMORY[0x1E696AD98] numberWithInt:{0, MEMORY[0x1E695E118]}];
    v48[2] = @"WRMReasonCode";
    *&v34[12] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a2 + 1)];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:v48 count:3];
    reportingGenericEvent();
  }

  if (*(a2 + 1) == 2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v33 = 136315650;
    *v34 = v4;
    *&v34[8] = 2080;
    *&v34[10] = "_VCConnectionManager_SetWRMNotification";
    *&v34[18] = 1024;
    v35 = 1162;
    v7 = " [%s] %s:%d HandoverReport: Ignoring iRAT notification because the reason for recommendation is WiFi link going down";
    v8 = v5;
    v9 = 28;
LABEL_8:
    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v33, v9);
    return 0;
  }

  if (!*(a2 + 1) && ([a1 isDuplicationAllowed] & 1) == 0)
  {
    *(a1 + 3192) = 1;
    v18 = *a2;
    *(a1 + 3216) = a2[1];
    *(a1 + 3200) = v18;
    v19 = a2[2];
    v20 = a2[3];
    v21 = a2[4];
    *(a1 + 3280) = a2[5];
    *(a1 + 3264) = v21;
    *(a1 + 3248) = v20;
    *(a1 + 3232) = v19;
    v22 = a2[6];
    v23 = a2[7];
    v24 = a2[8];
    *(a1 + 3344) = a2[9];
    *(a1 + 3328) = v24;
    *(a1 + 3312) = v23;
    *(a1 + 3296) = v22;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 3169);
    v28 = *(a1 + 3409);
    v29 = *(a1 + 3360);
    v30 = *(a1 + 3364);
    v31 = *(a1 + 3188);
    v32 = *(a1 + 3489);
    v33 = 136317186;
    *v34 = v25;
    *&v34[8] = 2080;
    *&v34[10] = "_VCConnectionManager_SetWRMNotification";
    *&v34[18] = 1024;
    v35 = 1166;
    v36 = 1024;
    v37 = v27;
    v38 = 1024;
    v39 = v28;
    v40 = 1024;
    v41 = v29;
    v42 = 1024;
    v43 = v30;
    v44 = 1024;
    v45 = v31;
    v46 = 1024;
    v47 = v32;
    v7 = " [%s] %s:%d HandoverReport: Pending iRAT notification isDuplicationAllowedForMediaDegraded=%d isRemoteMediaQualityDegraded=%d currentTargetBitrate=%d cellBitrateCap=%d bitrateCapDelta=%d isUserMoving=%d";
    v8 = v26;
    v9 = 64;
    goto LABEL_8;
  }

  *(a1 + 3192) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 3169);
      v13 = *(a1 + 3409);
      v14 = *(a1 + 3360);
      v15 = *(a1 + 3364);
      v16 = *(a1 + 3188);
      v17 = *(a1 + 3489);
      v33 = 136317186;
      *v34 = v10;
      *&v34[8] = 2080;
      *&v34[10] = "_VCConnectionManager_SetWRMNotification";
      *&v34[18] = 1024;
      v35 = 1169;
      v36 = 1024;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      v40 = 1024;
      v41 = v14;
      v42 = 1024;
      v43 = v15;
      v44 = 1024;
      v45 = v16;
      v46 = 1024;
      v47 = v17;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Processing iRAT notification isDuplicationAllowedForMediaDegraded=%d isRemoteMediaQualityDegraded=%d currentTargetBitrate=%d cellBitrateCap=%d bitrateCapDelta=%d isUserMoving=%d", &v33, 0x40u);
    }
  }

  return VCConnectionManager_ProcessWRMNotification(a1, a2);
}

uint64_t _VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(uint64_t a1, int a2, int a3)
{
  v4 = VCConnectionManager_CopyConnectionForQuality(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a3)
  {
    IsLocalOnCellular = VCConnection_IsLocalOnCellular(v4);
  }

  else
  {
    IsLocalOnCellular = VCConnection_IsRemoteOnCellular(v4);
  }

  v7 = IsLocalOnCellular;
  CFRelease(v5);
  return v7;
}

uint64_t _VCPacketRoutingRTXSupportCriteria_ConnectionMatchesCriteria(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 4) == 1)
  {
    if (*(a2 + 833) == 1)
    {
      if (VCConnection_IsRelay(a1))
      {
        v4 = 1;
      }

      else
      {
        v4 = *(a2 + 3490);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t _VCPacketRoutingRTXSupportCriteria_AllowsAlternateConnection(_BYTE *a1)
{
  if (a1[3490] == 1)
  {
    if (a1[834] == 1)
    {
      v1 = a1[3553] ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t _VCPacketRoutingHBHEncryptionSupportCriteria_ConnectionMatchesCriteria(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 3) == 1)
  {
    return VCConnection_IsHopByHopEncryptionSupported(a1);
  }

  else
  {
    return 1;
  }
}

void OUTLINED_FUNCTION_11_8(__int16 a1@<W8>)
{
  *(v3 - 68) = a1;
  *(v2 + 14) = v1;
  *(v3 - 58) = 1024;
}

int8x16_t VCTimescalePSOLA_DSPInit(uint64_t a1, int a2, unsigned int a3, char a4, unsigned int a5, int a6)
{
  v10 = a2;
  if (a2 <= 23999)
  {
    if (a2 != 8000)
    {
      v12 = 16000;
LABEL_7:
      if (a2 != v12)
      {
        return result;
      }
    }
  }

  else if (a2 != 24000 && a2 != 48000)
  {
    v12 = 32000;
    goto LABEL_7;
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 68);
  v20 = a3 / a2;
  v15 = VCTimescalePSOLA_DivW32W16ResW16(a2, 8000);
  VCTimescalePSOLA_MemSetW16(a1, 0, 17344);
  *(a1 + 2) = v10;
  *(a1 + 34664) = a3;
  *(a1 + 56) = 5 * v15;
  *(a1 + 60) = 2500;
  *(a1 + 64) = 0;
  *(a1 + 68) = v14;
  *(a1 + 80) = a4;
  *(a1 + 82) = 0;
  *(a1 + 88) = VCDefaults_GetIntValueForKey(@"psolaMaxContiguousCompressions", 4);
  *(a1 + 90) = VCDefaults_GetIntValueForKey(@"psolaAdaptationGap", 6);
  *(a1 + 86) = VCDefaults_GetIntValueForKey(@"psolaMaxContiguousExpansion", 4);
  *(a1 + 92) = 1;
  *a1 = a5;
  if (a5 <= 1)
  {
    v16 = 14746;
  }

  else
  {
    v16 = 13926;
  }

  *(a1 + 54) = v16;
  *(a1 + 96) = a6;
  v17.f64[0] = v20 + v20;
  v17.f64[1] = v20;
  v18 = vdupq_n_s64(0x3F947AE147AE147BuLL);
  result = vbslq_s8(vcgtq_f64(v18, v17), v18, v17);
  *(a1 + 34672) = result;
  *(a1 + 72) = v13;
  return result;
}

uint64_t _VCTimescalePSOLA_ActiveSpeechExpand(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(a2 + 20);
  LOWORD(a3) = *(a1 + 1);
  v6 = *&a3;
  if (*(a1 + 4335) * v6 <= v5)
  {
    v5 = *(a1 + 4335) * v6;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[0] = v7;
  v37[1] = v7;
  v8 = v5;
  v36[0] = v7;
  v36[1] = v7;
  v9 = *(a1 + 17330);
  if (v6 * 0.01 <= v9)
  {
    v9 = v6 * 0.01;
  }

  v10 = v9;
  if (*a1)
  {
    v11 = 0;
    v12 = (a2 + 88);
    v13 = v37;
    v14 = 3940;
    do
    {
      *(v13 - 4) = &a1[v14];
      memcpy(&a1[4 * v10 + v14], *v12, *(a2 + 40) * v8);
      *v13++ = *(v12 - 4);
      ++v11;
      v14 += 7680;
      ++v12;
    }

    while (v11 < *a1);
    LOWORD(v15) = *(a1 + 1);
    v6 = v15;
  }

  *(a1 + 2) = (v6 * 0.045);
  WORD1(v38) = v8 + v10;
  LOWORD(v38) = v10;
  v16 = VCTimescalePSOLA_PreEmptiveExpand(a1, v36);
  v17 = WORD2(v38);
  **(a2 + 8) = (SWORD2(v38) - v38) & ~((SWORD2(v38) - v38) >> 31);
  if (*a1)
  {
    v18 = 0;
    do
    {
      memmove(*(a2 + 56 + 8 * v18), (*(a2 + 56 + 8 * v18) + *(a2 + 40) * v38), **(a2 + 8) * *(a2 + 40));
      ++v18;
    }

    while (v18 < *a1);
    v17 = WORD2(v38);
  }

  if (SWORD1(v38) >= v17 || (v16 & 0x80000000) != 0)
  {
    **(a2 + 32) = 7;
    VCTimescalePSOLA_IncFrameScaledGapCount(a1);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a2 + 20);
          v26 = 136316162;
          v27 = v19;
          v28 = 2080;
          v29 = "_VCTimescalePSOLA_ActiveSpeechExpand";
          v30 = 1024;
          v31 = 199;
          v32 = 1024;
          v33 = v22;
          v34 = 1024;
          v35 = SWORD2(v38) - SWORD1(v38);
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSOLA Expansion samplesToDecode %d Samples Added %d", &v26, 0x28u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a2 + 20);
        v26 = 136316162;
        v27 = v19;
        v28 = 2080;
        v29 = "_VCTimescalePSOLA_ActiveSpeechExpand";
        v30 = 1024;
        v31 = 199;
        v32 = 1024;
        v33 = v23;
        v34 = 1024;
        v35 = SWORD2(v38) - SWORD1(v38);
        _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PSOLA Expansion samplesToDecode %d Samples Added %d", &v26, 0x28u);
      }
    }

    if (*(a1 + 11))
    {
      v24 = 4;
    }

    else
    {
      v24 = 5;
    }

    **(a2 + 32) = v24;
    _VCTimescalePSOLA_IncFrameScaledCount(a1, 1);
  }

  *(a2 + 152) = 1;
  return v16;
}

uint64_t _VCTimescalePSOLA_ActiveSpeechCompress(unsigned __int8 *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[0] = v4;
  v30[1] = v4;
  v29[0] = v4;
  v29[1] = v4;
  v5 = *a1;
  if (*a1)
  {
    v6 = (a2 + 88);
    v7 = v30;
    do
    {
      *(v7 - 4) = *v6;
      *v7++ = *(v6 - 4);
      ++v6;
      --v5;
    }

    while (v5);
  }

  LOWORD(v4) = *(a1 + 1);
  v8 = v4;
  *(a1 + 2) = (v8 * 0.01);
  *&v4 = *(a1 + 4334) * v8;
  if (*&v4 > *(a2 + 20))
  {
    *&v4 = *(a2 + 20);
  }

  WORD1(v31) = *&v4;
  LOWORD(v31) = 0;
  v9 = VCTimescalePSOLA_Accelerate(a1, v29);
  v10 = v9;
  v11 = SWORD2(v31);
  **(a2 + 8) = SWORD2(v31);
  *(a2 + 152) = 1;
  if (*(a2 + 20) <= v11 || (v9 & 0x80000000) != 0)
  {
    **(a2 + 32) = 7;
    VCTimescalePSOLA_IncFrameScaledGapCount(a1);
  }

  else
  {
    if (*(a1 + 11))
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    **(a2 + 32) = v12;
    _VCTimescalePSOLA_IncFrameScaledCount(a1, 0);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a2 + 20);
          v19 = 136316162;
          v20 = v13;
          v21 = 2080;
          v22 = "_VCTimescalePSOLA_ActiveSpeechCompress";
          v23 = 1024;
          v24 = 252;
          v25 = 1024;
          v26 = v16;
          v27 = 1024;
          v28 = v16 - SWORD2(v31);
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PSOLA Compress samplesToDecode %d samples removed %d", &v19, 0x28u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a2 + 20);
        v19 = 136316162;
        v20 = v13;
        v21 = 2080;
        v22 = "_VCTimescalePSOLA_ActiveSpeechCompress";
        v23 = 1024;
        v24 = 252;
        v25 = 1024;
        v26 = v18;
        v27 = 1024;
        v28 = v18 - SWORD2(v31);
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PSOLA Compress samplesToDecode %d samples removed %d", &v19, 0x28u);
      }
    }
  }

  return v10;
}

uint64_t VCTimescalePSOLA_ActiveSpeechAdapt(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 20);
  LOWORD(a3) = *(a1 + 2);
  v4 = *&a3;
  v5 = *(a1 + 34672) * *&a3;
  v6 = *(a2 + 160);
  v7 = v6 > 0.0;
  v8 = *(a1 + 34680) * v4;
  if (v5 > v3)
  {
    v7 = 0;
  }

  v9 = v8 <= v3 && v6 < 0.0;
  v10 = *(a1 + 96);
  if (v10 != 3)
  {
    if (v10 != 2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v7)
  {
    v7 = *(a2 + 16) == 0;
  }

  v12 = *(a2 + 172);
  if (v12 == 3)
  {
LABEL_8:
    v9 |= v7;
    goto LABEL_9;
  }

  if (v12 != 2)
  {
    if (v12 != 1)
    {
      return 0;
    }

LABEL_9:
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_10:
  if (v6 < 0.0)
  {
    return _VCTimescalePSOLA_ActiveSpeechExpand(a1, a2, v6);
  }

  if (v6 > 0.0)
  {
    return _VCTimescalePSOLA_ActiveSpeechCompress(a1, a2);
  }

  return 0;
}

void VCTimescalePSOLA_UpdateHistoryBuffer(unsigned __int8 *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = ((v3 * *(a1 + 1)) * 0.01);
  v5 = (v3 * (**(a2 + 8) + **(a2 + 24)));
  if (v5 >= v4)
  {
    if (*a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        memcpy(&a1[*(a2 + 40) * v12 + 3940], (*(a2 + 120 + 8 * v11++) + v5 - v4), v4);
        v12 += 1920;
      }

      while (v11 < *a1);
      v3 = *(a2 + 40);
    }

    *(a1 + 17330) = v4 / v3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a2 + 40);
        v14 = 136315906;
        v15 = v6;
        v16 = 2080;
        v17 = "VCTimescalePSOLA_UpdateHistoryBuffer";
        v19 = 310;
        v18 = 1024;
        v20 = 1024;
        v21 = v5 / v9;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not enough samples to update PSOLA history buffer availableSamples=%d", &v14, 0x22u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a2 + 40);
      v14 = 136315906;
      v15 = v6;
      v16 = 2080;
      v17 = "VCTimescalePSOLA_UpdateHistoryBuffer";
      v19 = 310;
      v18 = 1024;
      v20 = 1024;
      v21 = v5 / v13;
      _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Not enough samples to update PSOLA history buffer availableSamples=%d", &v14, 0x22u);
    }
  }
}

uint64_t VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v1 = (*(a1 + 24) != 1) | (2 * *(a1 + 24));
    }

    else
    {
      v1 = 0;
    }

    if (*(a1 + 30))
    {
      v1 += 8;
    }

    if (*(a1 + 28))
    {
      ++v1;
    }

    if (*(a1 + 25))
    {
      v1 += 2;
    }

    v2 = v1 + *(a1 + 40);
    if (*(a1 + 42))
    {
      v2 += 2;
    }

    if (*(a1 + 52))
    {
      v2 += 10;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = 0;
      v6 = a2;
      do
      {
        v5 += VCIDSChannelData_GetIDSAttributeSizeWithChannelDataFormat(v4) + 2;
        v4 += 80;
        --v6;
      }

      while (v6);
      return (v5 + 2 * v3 + 2);
    }
  }

  return v2;
}

const void *_VCImageQueue_GetImageQueueAtIndex(uint64_t a1, CFIndex a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 416);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    v6 = Count;
    if (a2 < 0 || Count <= a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v11 = 136316418;
          *&v11[4] = v9;
          v12 = 2080;
          v13 = "_VCImageQueue_GetImageQueueAtIndex";
          v14 = 1024;
          v15 = 241;
          v16 = 2048;
          v17 = a1;
          v18 = 2048;
          v19 = a2;
          v20 = 2048;
          v21 = v6;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Image queue for channel index is invalid. channelIndex=%ld, imageQueueCount=%ld", v11, 0x3Au);
        }
      }

      return 0;
    }

    else
    {
      v7 = *(a1 + 416);

      return CFArrayGetValueAtIndex(v7, a2);
    }
  }

  else
  {
    _VCImageQueue_GetImageQueueAtIndex_cold_1();
    return *v11;
  }
}

uint64_t VCImageQueue_setCALayerSize(uint64_t a1, uint64_t a2)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (*(a1 + 176))
  {
    if (*(a1 + 184))
    {
      _VCImageQueue_configureCALayerBounds(a1, a2);
      _VCImageQueue_signalWaitForLayoutChangeCondition(a1);
      [MEMORY[0x1E6979518] commit];
      return 1;
    }

    VCImageQueue_setCALayerSize_cold_1();
  }

  else
  {
    VCImageQueue_setCALayerSize_cold_2();
  }

  [MEMORY[0x1E6979518] commit];
  return 0;
}

CATransform3D *getScreenTransformForVideoAttributes@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *(a2 + 64) = *(MEMORY[0x1E69792E8] + 64);
  *(a2 + 80) = v4;
  v5 = v3[7];
  *(a2 + 96) = v3[6];
  *(a2 + 112) = v5;
  v6 = v3[1];
  *a2 = *v3;
  *(a2 + 16) = v6;
  v7 = v3[3];
  *(a2 + 32) = v3[2];
  *(a2 + 48) = v7;
  v8 = [a1 orientation];
  v9 = 0.0;
  if (v8 <= 2)
  {
    v9 = dbl_1DBD49568[v8];
  }

  return CATransform3DMakeRotation(a2, v9, 0.0, 0.0, 1.0);
}

CATransform3D *getTransformForVideoAttributes@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69792E8];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  *(a2 + 64) = *(MEMORY[0x1E69792E8] + 64);
  *(a2 + 80) = v5;
  v6 = v4[7];
  *(a2 + 96) = v4[6];
  *(a2 + 112) = v6;
  v7 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v7;
  v8 = v4[3];
  *(a2 + 32) = v4[2];
  *(a2 + 48) = v8;
  v9 = 0.0;
  if ([a1 camera] == 1)
  {
    v10 = 3.1416;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [a1 orientation];
  if (v11 > 1)
  {
    if (v11 == 3 || v11 == 2)
    {
      v9 = v10 + 3.14159265;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v9 = 1.5708;
    }
  }

  else
  {
    v9 = -1.5708;
  }

  return CATransform3DMakeRotation(a2, v9, 0.0, 0.0, 1.0);
}

void VCImageQueue_EnqueueAttributes(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    pthread_mutex_lock((a1 + 32));
    if (*(a1 + 184))
    {
      if ((*(a1 + 456) & 1) == 0)
      {
        *buf = 0;
        LOWORD(v9[0]) = 0;
        if (FigCFDictionaryGetInt16IfPresent())
        {
          if (FigCFDictionaryGetInt16IfPresent())
          {
            if (*(a1 + 467) == 1 && (v9[0] & 3) > 1 || (VCImageQueue_EnqueueAttributes_cold_1(&v12, &v11) & 1) == 0)
            {
              *(a1 + 352) = 1;
            }
          }
        }
      }
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }

    *(a1 + 24) = CFRetain(a2);
    v5 = *(a1 + 144);
    if (v5)
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      *&buf[32] = xmmword_1DBD49530;
      v14 = unk_1DBD49540;
      v15 = xmmword_1DBD49550;
      *buf = xmmword_1DBD49510;
      *&buf[16] = unk_1DBD49520;
      [v5 currentDetails];
      *(&v15 + 1) = *(a1 + 24);
      buf[1] = *(a1 + 456);
      v9[2] = *&buf[32];
      v9[3] = v14;
      v9[4] = v15;
      v10 = v16;
      v9[0] = *buf;
      v9[1] = *&buf[16];
      [*(a1 + 144) setCurrentDetails:v9];
    }

    v6 = *(a1 + 152);
    if (v6)
    {
      if ((VCStreamOutput_EnqueueAttributes(v6, *(a1 + 24)) & 1) == 0)
      {
        VCImageQueue_CleanupStreamOutput(a1);
      }
    }

    _VCImageQueue_ApplyPreviewLayerTransforms(a1, 0);
    pthread_mutex_unlock((a1 + 32));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "VCImageQueue_EnqueueAttributes";
      *&buf[22] = 1024;
      *&buf[24] = 1096;
      *&buf[28] = 2048;
      *&buf[30] = a1;
      *&buf[38] = 2048;
      *&buf[40] = a2;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter. imageQueue=%p attributes=%p", buf, 0x30u);
    }
  }
}

uint64_t _VCImageQueue_ApplyPreviewLayerTransforms(uint64_t result, int a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(result + 184))
  {
    v2 = result;
    if (*(result + 456) == 1)
    {
      v46 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(v2 + 24);
          LODWORD(buf.m11) = 136316418;
          *(&buf.m11 + 4) = v4;
          WORD2(buf.m12) = 2080;
          *(&buf.m12 + 6) = "_VCImageQueue_ApplyPreviewLayerTransforms";
          HIWORD(buf.m13) = 1024;
          LODWORD(buf.m14) = 1078;
          WORD2(buf.m14) = 1024;
          *(&buf.m14 + 6) = 1078;
          WORD1(buf.m21) = 2048;
          *(&buf.m21 + 4) = v2;
          WORD2(buf.m22) = 2112;
          *(&buf.m22 + 6) = v6;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: vcImageQueue=%p LocalVideoAttributes=%@", &buf, 0x36u);
        }
      }

      result = FigCFDictionaryGetInt16IfPresent();
      if (result)
      {
        v7 = v46 & 3;
        *&v8 = -1;
        *(&v8 + 1) = -1;
        *&v45.m11 = v8;
        *&v45.m13 = v8;
        *&v45.m21 = v8;
        *&v45.m23 = v8;
        *&v45.m31 = v8;
        *&v45.m33 = v8;
        *&v45.m41 = v8;
        *&v45.m43 = v8;
        v9 = *(v2 + 466);
        v42 = *MEMORY[0x1E695EFD0];
        v43 = *(MEMORY[0x1E695EFD0] + 16);
        m21 = *(MEMORY[0x1E695EFD0] + 32);
        m22 = *(MEMORY[0x1E695EFD0] + 40);
        if ([+[VCHardwareSettingsEmbedded deviceClass]== 1 sharedInstance]
        {
          v13 = v42;
          v12 = v43;
        }

        else
        {
          v14 = VCFeatureFlagManager_PreviewMSROptimizationForEmbedded();
          if (v9)
          {
            v15 = v14;
            if (+[VCHardwareSettings isExternalCameraSupported])
            {
              if (v15)
              {
                v16 = 3.14159265;
              }

              else
              {
                v16 = -1.57079633;
              }

              CGAffineTransformMakeRotation(&buf, v16);
              goto LABEL_20;
            }
          }

          if ((v46 & 3u) > 1)
          {
            if (v7 == 3)
            {
              v17 = 1.57079633;
            }

            else
            {
              v17 = -1.57079633;
            }

            CGAffineTransformMakeRotation(&buf, v17);
            v13 = *&buf.m11;
            v12 = *&buf.m13;
            m21 = buf.m21;
            m22 = buf.m22;
          }

          else
          {
            v13 = v42;
            v12 = v43;
          }
        }

        *&buf.m11 = v13;
        *&buf.m13 = v12;
        buf.m21 = m21;
        buf.m22 = m22;
LABEL_20:
        CATransform3DMakeAffineTransform(&v45, &buf);
        if ((*(v2 + 466) & 1) == 0)
        {
          v18 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded deviceClass];
          v19 = 0;
          if (v7 >= 2 && v18 == 1)
          {
            [*(v2 + 184) frame];
            v21 = v20;
            [*(v2 + 184) frame];
            if (v21 <= v22)
            {
              v19 = 0;
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v23 = VRTraceErrorLogLevelToCSTR();
                v24 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [*(v2 + 184) frame];
                  v26 = v25;
                  [*(v2 + 184) frame];
                  LODWORD(buf.m11) = 136316674;
                  *(&buf.m11 + 4) = v23;
                  WORD2(buf.m12) = 2080;
                  *(&buf.m12 + 6) = "_VCImageQueue_IsPhoneInDominoMode";
                  HIWORD(buf.m13) = 1024;
                  LODWORD(buf.m14) = 1066;
                  WORD2(buf.m14) = 1024;
                  *(&buf.m14 + 6) = 1066;
                  WORD1(buf.m21) = 1024;
                  HIDWORD(buf.m21) = v7;
                  LOWORD(buf.m22) = 2048;
                  *(&buf.m22 + 2) = v26;
                  WORD1(buf.m23) = 2048;
                  *(&buf.m23 + 4) = v27;
                  _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: Detected iPhone in Domino mode orientation %d width %f height %f", &buf, 0x3Cu);
                }
              }

              v19 = 1;
            }
          }

          v28 = *(v2 + 457);
          v29 = *(v2 + 460);
          v44 = v45;
          v30 = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded deviceClass];
          if (VCFeatureFlagManager_PreviewMSROptimizationForEmbedded())
          {
            if (v7 < 2)
            {
              if (v29 == 1)
              {
                v36 = 1;
              }

              else
              {
                v36 = v28;
              }

              v33 = 1.0;
              if (v36)
              {
                v34 = 1.0;
              }

              else
              {
                v34 = -1.0;
              }

              v32 = 1.57079633;
            }

            else
            {
              if (v28)
              {
                v31 = -1.0;
              }

              else
              {
                v31 = 1.0;
              }

              v32 = dbl_1DBD494F0[v29 == 1];
              if (v29 == 1)
              {
                v33 = 1.0;
              }

              else
              {
                v33 = -1.0;
              }

              if (v29 == 1)
              {
                v34 = 1.0;
              }

              else
              {
                v34 = v31;
              }

              if (v19)
              {
                if (v7 == 2)
                {
                  v35 = -1.57079633;
                }

                else
                {
                  v35 = 1.57079633;
                }

                v32 = v32 + v35;
              }
            }

            *&v37 = -1;
            *(&v37 + 1) = -1;
            *&v47.m41 = v37;
            *&v47.m43 = v37;
            *&v47.m31 = v37;
            *&v47.m33 = v37;
            *&v47.m21 = v37;
            *&v47.m23 = v37;
            *&v47.m11 = v37;
            *&v47.m13 = v37;
            buf = v44;
            CATransform3DRotate(&v47, &buf, v32, 0.0, 0.0, 1.0);
            m = v47;
            CATransform3DScale(&buf, &m, v33, v34, 1.0);
            v47 = buf;
            v44 = buf;
          }

          else if (v30 == 4)
          {
            buf = v44;
            if (!v7)
            {
              CGAffineTransformMakeRotation(&m, 1.57079633);
              CATransform3DMakeAffineTransform(&buf, &m);
            }

            v44 = buf;
          }

          v45 = v44;
        }

        v38 = *&v45.m33;
        *(v2 + 288) = *&v45.m31;
        *(v2 + 304) = v38;
        v39 = *&v45.m43;
        *(v2 + 320) = *&v45.m41;
        *(v2 + 336) = v39;
        v40 = *&v45.m13;
        *(v2 + 224) = *&v45.m11;
        *(v2 + 240) = v40;
        v41 = *&v45.m23;
        *(v2 + 256) = *&v45.m21;
        *(v2 + 272) = v41;
        return _VCImageQueue_applyLayerTransforms(v2, a2);
      }
    }
  }

  return result;
}

void VCImageQueue_EffectsEnabledForPreview(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136316162;
        v7 = v4;
        v8 = 2080;
        v9 = "VCImageQueue_EffectsEnabledForPreview";
        v10 = 1024;
        v11 = 1347;
        v12 = 1024;
        v13 = 1347;
        v14 = 1024;
        v15 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCImageQueue.m:%d: effectsEnabled=%d", &v6, 0x28u);
      }
    }

    *(a1 + 457) = a2;
  }
}

uint64_t VCImageQueue_EnqueueFrame(CMTimeEpoch a1, __CVBuffer *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6960CC0];
  v49 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v50 = v6;
  if (a1 && a2)
  {
    v47 = v5;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_19;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 16);
        *&time.duration.value = *a3;
        time.duration.epoch = *(a3 + 16);
        *&v13 = CMTimeGetSeconds(&time.duration);
        LODWORD(time.duration.value) = 136316162;
        *(&time.duration.value + 4) = v9;
        LOWORD(time.duration.flags) = 2080;
        *(&time.duration.flags + 2) = "VCImageQueue_EnqueueFrame";
        HIWORD(time.duration.epoch) = 1024;
        LODWORD(time.presentationTimeStamp.value) = 1358;
        WORD2(time.presentationTimeStamp.value) = 2048;
        *(&time.presentationTimeStamp.value + 6) = v12;
        HIWORD(time.presentationTimeStamp.flags) = 2048;
        time.presentationTimeStamp.epoch = v13;
        v14 = " [%s] %s:%d _figQueue=%p，frameTime=%f";
        v15 = v10;
        v16 = 48;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &time, v16);
        goto LABEL_19;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 16);
        *&time.duration.value = *a3;
        time.duration.epoch = *(a3 + 16);
        *&v44 = CMTimeGetSeconds(&time.duration);
        LODWORD(time.duration.value) = 136316162;
        *(&time.duration.value + 4) = v9;
        LOWORD(time.duration.flags) = 2080;
        *(&time.duration.flags + 2) = "VCImageQueue_EnqueueFrame";
        HIWORD(time.duration.epoch) = 1024;
        LODWORD(time.presentationTimeStamp.value) = 1358;
        WORD2(time.presentationTimeStamp.value) = 2048;
        *(&time.presentationTimeStamp.value + 6) = v43;
        HIWORD(time.presentationTimeStamp.flags) = 2048;
        time.presentationTimeStamp.epoch = v44;
        v24 = " [%s] %s:%d _figQueue=%p，frameTime=%f";
        v25 = v10;
        v26 = 48;
        goto LABEL_61;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v19 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v20 = *(a1 + 16);
          *&time.duration.value = *a3;
          time.duration.epoch = *(a3 + 16);
          Seconds = CMTimeGetSeconds(&time.duration);
          LODWORD(time.duration.value) = 136316674;
          *(&time.duration.value + 4) = v17;
          LOWORD(time.duration.flags) = 2080;
          *(&time.duration.flags + 2) = "VCImageQueue_EnqueueFrame";
          HIWORD(time.duration.epoch) = 1024;
          LODWORD(time.presentationTimeStamp.value) = 1358;
          WORD2(time.presentationTimeStamp.value) = 2112;
          *(&time.presentationTimeStamp.value + 6) = v8;
          HIWORD(time.presentationTimeStamp.flags) = 2048;
          time.presentationTimeStamp.epoch = a1;
          LOWORD(time.decodeTimeStamp.value) = 2048;
          *(&time.decodeTimeStamp.value + 2) = v20;
          HIWORD(time.decodeTimeStamp.timescale) = 2048;
          *&time.decodeTimeStamp.flags = Seconds;
          v14 = " [%s] %s:%d %@(%p) _figQueue=%p，frameTime=%f";
          v15 = v18;
          v16 = 68;
          goto LABEL_15;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a1 + 16);
          *&time.duration.value = *a3;
          time.duration.epoch = *(a3 + 16);
          v23 = CMTimeGetSeconds(&time.duration);
          LODWORD(time.duration.value) = 136316674;
          *(&time.duration.value + 4) = v17;
          LOWORD(time.duration.flags) = 2080;
          *(&time.duration.flags + 2) = "VCImageQueue_EnqueueFrame";
          HIWORD(time.duration.epoch) = 1024;
          LODWORD(time.presentationTimeStamp.value) = 1358;
          WORD2(time.presentationTimeStamp.value) = 2112;
          *(&time.presentationTimeStamp.value + 6) = v8;
          HIWORD(time.presentationTimeStamp.flags) = 2048;
          time.presentationTimeStamp.epoch = a1;
          LOWORD(time.decodeTimeStamp.value) = 2048;
          *(&time.decodeTimeStamp.value + 2) = v22;
          HIWORD(time.decodeTimeStamp.timescale) = 2048;
          *&time.decodeTimeStamp.flags = v23;
          v24 = " [%s] %s:%d %@(%p) _figQueue=%p，frameTime=%f";
          v25 = v18;
          v26 = 68;
LABEL_61:
          _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, v24, &time, v26);
        }
      }
    }

LABEL_19:
    pthread_mutex_lock((a1 + 32));
    _VCImageQueue_DrawOverlayMessage(a1, a2);
    if (*(a1 + 152))
    {
      *&time.duration.value = *a3;
      time.duration.epoch = *(a3 + 16);
      SampleBufferWithPixelBuffer = VideoUtil_CreateSampleBufferWithPixelBuffer(a2, &time, *(a1 + 160), *(a1 + 160));
      if (SampleBufferWithPixelBuffer)
      {
        v28 = SampleBufferWithPixelBuffer;
        v29 = VCStreamOutput_EnqueueSampleBuffer(*(a1 + 152), SampleBufferWithPixelBuffer);
        if ((v29 & 1) == 0)
        {
          VCImageQueue_CleanupStreamOutput(a1);
        }

        CFRelease(v28);
        v30 = 0;
LABEL_54:
        if (!v29)
        {
LABEL_56:
          pthread_mutex_unlock((a1 + 32));
          return v29 | v30;
        }

LABEL_55:
        *&time.duration.value = *a3;
        time.duration.epoch = *(a3 + 16);
        *&v41 = CMTimeGetSeconds(&time.duration);
        *&time.duration.value = v49;
        time.duration.epoch = v50;
        _VCImageQueue_EmitFrameEnqueuedSignposts(a1, v41, &time.duration, a2);
        goto LABEL_56;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCImageQueue_EnqueueFrame_cold_1();
        }
      }

      v30 = 0;
    }

    else
    {
      v31 = CMGetAttachment(a2, @"PropagatableAttachmentData", 0);
      if (v31)
      {
        Value = CFDictionaryGetValue(v31, @"BLOB2");
        *&v48.value = *a3;
        v48.epoch = *(a3 + 16);
        cf = 0;
        dataBuffer = 0;
        formatDescriptionOut = 0;
        time.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
        *&v33 = 0xAAAAAAAAAAAAAAAALL;
        *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&time.presentationTimeStamp.timescale = v33;
        *&time.decodeTimeStamp.value = v33;
        *&time.duration.value = v33;
        *&time.duration.epoch = v33;
        if (*(a1 + 424))
        {
          v34 = Value;
          if (Value)
          {
            if ([Value length])
            {
              customBlockSource.version = 0;
              customBlockSource.AllocateBlock = 0;
              customBlockSource.FreeBlock = _VCImageQueue_CustomBlockSourceFreeBlock;
              customBlockSource.refCon = v34;
              if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 432), [v34 bytes], objc_msgSend(v34, "length"), 0, &customBlockSource, 0, objc_msgSend(v34, "length"), 0, &dataBuffer) || !dataBuffer)
              {
                VCImageQueue_EnqueueFrame_cold_6(&customBlockSource.refCon);
              }

              else
              {
                *&time.duration.value = v47;
                time.presentationTimeStamp = v48;
                time.duration.epoch = v6;
                if (CMFormatDescriptionCreate(*(a1 + 440), 0x6D657461u, 0x6D656278u, 0, &formatDescriptionOut) || !formatDescriptionOut)
                {
                  VCImageQueue_EnqueueFrame_cold_5();
                }

                else if (CMSampleBufferCreate(*(a1 + 448), dataBuffer, 1u, 0, 0, 0, 1, 1, &time, 0, 0, &cf) || !cf)
                {
                  VCImageQueue_EnqueueFrame_cold_4();
                }

                else
                {
                  if (*(a1 + 113) == 1)
                  {
                    v35 = *(a1 + 424);
                    v36 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (!v36 || v36(v35))
                    {
                      VCImageQueue_EnqueueFrame_cold_2();
                    }
                  }

                  v37 = *(a1 + 424);
                  v38 = cf;
                  v39 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (!v39 || v39(v37, v38))
                  {
                    VCImageQueue_EnqueueFrame_cold_3();
                  }
                }
              }
            }

            else
            {
              VCImageQueue_EnqueueFrame_cold_7(v34);
            }
          }

          else
          {
            VCImageQueue_EnqueueFrame_cold_8();
          }
        }

        else
        {
          VCImageQueue_EnqueueFrame_cold_9();
        }

        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
        }

        if (dataBuffer)
        {
          CFRelease(dataBuffer);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (*(a1 + 472))
      {
        ImageQueueAtIndex = _VCImageQueue_GetImageQueueAtIndex(a1, 0);
      }

      else
      {
        ImageQueueAtIndex = *(a1 + 16);
      }

      *&time.duration.value = *a3;
      time.duration.epoch = *(a3 + 16);
      v30 = _VCImageQueue_EnqueuePixelBuffer(a1, ImageQueueAtIndex, a2, &time, &v49);
    }

    v29 = 0;
    if (v30)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v45 = VRTraceErrorLogLevelToCSTR();
    v46 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.duration.value) = 136316162;
      *(&time.duration.value + 4) = v45;
      LOWORD(time.duration.flags) = 2080;
      *(&time.duration.flags + 2) = "VCImageQueue_EnqueueFrame";
      HIWORD(time.duration.epoch) = 1024;
      LODWORD(time.presentationTimeStamp.value) = 1357;
      WORD2(time.presentationTimeStamp.value) = 2048;
      *(&time.presentationTimeStamp.value + 6) = a1;
      HIWORD(time.presentationTimeStamp.flags) = 2048;
      time.presentationTimeStamp.epoch = a2;
      _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter. imageQueue=%p pixelBuffer=%p", &time, 0x30u);
    }
  }

  v29 = 0;
  v30 = 0;
  return v29 | v30;
}

void *_VCImageQueue_DrawOverlayMessage(uint64_t a1, __CVBuffer *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = *(a1 + 144);
  if (result)
  {
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v12 = xmmword_1DBD49530;
    v13 = unk_1DBD49540;
    v14 = xmmword_1DBD49550;
    v10 = xmmword_1DBD49510;
    v11 = unk_1DBD49520;
    [result currentDetails];
    _VCImageQueue_AverageFrameRate(a1);
    if (v5 <= 0.0)
    {
      v5 = *(&v10 + 1);
    }

    *(&v10 + 4) = __PAIR64__(*(a1 + 108), LODWORD(v5));
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    *(&v13 + 1) = Width;
    *&v14 = Height;
    v8[2] = v12;
    v8[3] = v13;
    v8[4] = v14;
    v9 = v15;
    v8[0] = v10;
    v8[1] = v11;
    [*(a1 + 144) setCurrentDetails:v8];
    return VCPixelBufferOverlay_updateOverlayWithPixelBuffer(*(a1 + 144), a2);
  }

  return result;
}

uint64_t _VCImageQueue_EnqueuePixelBuffer(uint64_t a1, uint64_t a2, __CVBuffer *a3, uint64_t a4, uint64_t a5)
{
  v71 = *MEMORY[0x1E69E9840];
  value = *a4;
  timescale = *(a4 + 8);
  flags = *(a4 + 12);
  v13 = *(a4 + 16);
  if (*(a1 + 352) == 1 && *(a1 + 184))
  {
    convertTimeoutToRelativeTimespec(0.033);
    *v68 = v14;
    *&v68[8] = v15;
    if (pthread_cond_timedwait_relative_np((a1 + 360), (a1 + 32), v68) == 60)
    {
      _VCImageQueue_EnqueuePixelBuffer_cold_1();
    }

    *(a1 + 352) = 0;
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 472))
  {
    epoch = v13;
    v17 = *(MEMORY[0x1E695F058] + 16);
    *v68 = *MEMORY[0x1E695F058];
    *&v68[16] = v17;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      VisibleRectDictionary = VideoUtil_CreateVisibleRectDictionary(*v68 * Width, *&v68[8] * Height, *&v68[16] * Width, *&v68[24] * Height);
      CVBufferSetAttachment(a3, *MEMORY[0x1E6965D70], VisibleRectDictionary, kCVAttachmentMode_ShouldPropagate);
      if (VisibleRectDictionary)
      {
        CFRelease(VisibleRectDictionary);
      }
    }
  }

  else
  {
    v21 = *(a1 + 108);
    if ((v21 - 1) > 0x1D)
    {
      epoch = v13;
    }

    else
    {
      memset(v68, 170, 24);
      CMTimeMake(v68, 1, v21);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = v13;
      rhs = *v68;
      CMTimeAdd(&v67, &lhs, &rhs);
      v22 = *(a1 + 108);
      lhs = v67;
      CMTimeConvertScale(&v67, &lhs, v22, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v67.value;
      timescale = v67.timescale;
      flags = v67.flags;
      epoch = v67.epoch;
    }
  }

  if ((flags & 0x1D) != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v60 = VRTraceErrorLogLevelToCSTR();
    v61 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v68 = *a4;
    *&v68[16] = *(a4 + 16);
    Seconds = CMTimeGetSeconds(v68);
    *v68 = value;
    *&v68[8] = timescale;
    *&v68[12] = flags;
    *&v68[16] = epoch;
    v63 = CMTimeGetSeconds(v68);
    *v68 = 136316418;
    *&v68[4] = v60;
    *&v68[12] = 2080;
    *&v68[14] = "_VCImageQueue_EnqueuePixelBuffer";
    *&v68[22] = 1024;
    *&v68[24] = 1289;
    *&v68[28] = 2048;
    *&v68[30] = Seconds;
    *&v68[38] = 2048;
    *&v68[40] = v63;
    *&v68[48] = 2112;
    *&v68[50] = a1;
    v33 = " [%s] %s:%d Cannot enqueue, frameTime is invalid. inFrameTime=%f frameTime=%f VCImageQueue=(%@)";
    v34 = v61;
    v35 = 58;
    goto LABEL_27;
  }

  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCImageQueue_EnqueuePixelBuffer_cold_2();
      }
    }

    return 0;
  }

  LODWORD(rhs.value) = 0;
  v67 = **&MEMORY[0x1E6960C70];
  lhs = v67;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v23)
  {
    v23(a2, &rhs, &v67, &lhs);
  }

  v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v24 || !v24(a2))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    CanEnqueueImage = FigImageQueueCanEnqueueImage(a2);
    *v68 = value;
    *&v68[8] = timescale;
    *&v68[12] = flags;
    *&v68[16] = epoch;
    v29 = CMTimeGetSeconds(v68);
    v30 = rhs.value;
    *v68 = v67;
    v31 = CMTimeGetSeconds(v68);
    *v68 = lhs;
    v32 = CMTimeGetSeconds(v68);
    *v68 = 136317186;
    *&v68[4] = v26;
    *&v68[12] = 2080;
    *&v68[14] = "_VCImageQueue_EnqueuePixelBuffer";
    *&v68[22] = 1024;
    *&v68[24] = 1336;
    *&v68[28] = 1024;
    *&v68[30] = CanEnqueueImage;
    *&v68[34] = 2048;
    *&v68[36] = a2;
    *&v68[44] = 2048;
    *&v68[46] = v29;
    *&v68[54] = 1024;
    *&v68[56] = v30;
    *&v68[60] = 2048;
    *&v68[62] = v31;
    v69 = 2048;
    v70 = v32;
    v33 = " [%s] %s:%d Cannot enqueue. FigImageQueueCanEnqueueImage=%d for queue=%p frameTime=%f Unconsumed image count=%d minTime=%f maxTime=%f";
    v34 = v27;
    v35 = 80;
LABEL_27:
    _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, v33, v68, v35);
    return 0;
  }

  if (*(a1 + 113) == 1)
  {
    if (!*(a1 + 472))
    {
      value = *MEMORY[0x1E6960CC0];
      timescale = *(MEMORY[0x1E6960CC0] + 8);
      flags = *(MEMORY[0x1E6960CC0] + 12);
      epoch = *(MEMORY[0x1E6960CC0] + 16);
    }

    v25 = 3;
  }

  else
  {
    v25 = 0;
  }

  v38 = v25 | v16;
  if (*(a1 + 457) == *(a1 + 458))
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 | 4;
  }

  atomic_fetch_add((a1 + 132), 1u);
  v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v40)
  {
    *v68 = value;
    *&v68[8] = timescale;
    *&v68[12] = flags;
    *&v68[16] = epoch;
    v40(a2, a3, 0, v68, v39);
  }

  if (a5)
  {
    *a5 = value;
    *(a5 + 8) = timescale;
    *(a5 + 12) = flags;
    *(a5 + 16) = epoch;
  }

  v41 = rhs.value;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v41 < 16)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      v51 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *v68 = value;
          *&v68[8] = timescale;
          *&v68[12] = flags;
          *&v68[16] = epoch;
          v56 = CMTimeGetSeconds(v68);
          v57 = rhs.value;
          *v68 = v67;
          v58 = CMTimeGetSeconds(v68);
          *v68 = lhs;
          v59 = CMTimeGetSeconds(v68);
          *v68 = 136316674;
          *&v68[4] = v50;
          *&v68[12] = 2080;
          *&v68[14] = "_VCImageQueue_EnqueuePixelBuffer";
          *&v68[22] = 1024;
          *&v68[24] = 1326;
          *&v68[28] = 2048;
          *&v68[30] = v56;
          *&v68[38] = 1024;
          *&v68[40] = v57;
          *&v68[44] = 2048;
          *&v68[46] = v58;
          *&v68[54] = 2048;
          *&v68[56] = v59;
          _os_log_debug_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEBUG, " [%s] %s:%d frameTime=%f Unconsumed image count=%d minTime=%f maxTime=%f", v68, 0x40u);
        }

        goto LABEL_52;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v68 = value;
        *&v68[8] = timescale;
        *&v68[12] = flags;
        *&v68[16] = epoch;
        v52 = CMTimeGetSeconds(v68);
        v53 = rhs.value;
        *v68 = v67;
        v54 = CMTimeGetSeconds(v68);
        *v68 = lhs;
        v55 = CMTimeGetSeconds(v68);
        *v68 = 136316674;
        *&v68[4] = v50;
        *&v68[12] = 2080;
        *&v68[14] = "_VCImageQueue_EnqueuePixelBuffer";
        *&v68[22] = 1024;
        *&v68[24] = 1326;
        *&v68[28] = 2048;
        *&v68[30] = v52;
        *&v68[38] = 1024;
        *&v68[40] = v53;
        *&v68[44] = 2048;
        *&v68[46] = v54;
        *&v68[54] = 2048;
        *&v68[56] = v55;
        v49 = " [%s] %s:%d frameTime=%f Unconsumed image count=%d minTime=%f maxTime=%f";
        goto LABEL_49;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 5)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v68 = value;
      *&v68[8] = timescale;
      *&v68[12] = flags;
      *&v68[16] = epoch;
      v45 = CMTimeGetSeconds(v68);
      v46 = rhs.value;
      *v68 = v67;
      v47 = CMTimeGetSeconds(v68);
      *v68 = lhs;
      v48 = CMTimeGetSeconds(v68);
      *v68 = 136316674;
      *&v68[4] = v43;
      *&v68[12] = 2080;
      *&v68[14] = "_VCImageQueue_EnqueuePixelBuffer";
      *&v68[22] = 1024;
      *&v68[24] = 1324;
      *&v68[28] = 2048;
      *&v68[30] = v45;
      *&v68[38] = 1024;
      *&v68[40] = v46;
      *&v68[44] = 2048;
      *&v68[46] = v47;
      *&v68[54] = 2048;
      *&v68[56] = v48;
      v49 = " [%s] %s:%d Image queue at full capacity! frameTime=%f Unconsumed image count=%d minTime=%f maxTime=%f";
LABEL_49:
      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, v49, v68, 0x40u);
    }
  }

LABEL_52:
  v36 = 1;
  if (*(a1 + 457) != *(a1 + 458))
  {
    _VCImageQueue_ApplyPreviewLayerTransforms(a1, 1);
    *(a1 + 458) = *(a1 + 457);
  }

  return v36;
}

uint64_t _VCImageQueue_EmitFrameEnqueuedSignposts(uint64_t a1, uint64_t a2, CMTime *a3, __CVBuffer *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = (a1 + 128);
  ++*(a1 + 128);
  if (*(a1 + 144))
  {
    v8 = micro();
    v18 = v8;
    Count = CFArrayGetCount(*(a1 + 136));
    if (Count < 1)
    {
      if (Count)
      {
LABEL_17:
        _VCImageQueue_RemoveExpiredFrameCounts(a1, v8);
        goto LABEL_18;
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), Count - 1);
      v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      valuePtr.value = 0;
      CFNumberGetValue(v11, kCFNumberDoubleType, &valuePtr);
      if (*&valuePtr.value + 1.0 > v8)
      {
        goto LABEL_17;
      }
    }

    *&valuePtr.timescale = 0;
    v12 = *MEMORY[0x1E695E480];
    valuePtr.value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v18);
    if (valuePtr.value)
    {
      *&valuePtr.timescale = CFNumberCreate(v12, kCFNumberSInt32Type, v7);
      if (*&valuePtr.timescale)
      {
        v13 = CFArrayCreate(v12, &valuePtr, 2, MEMORY[0x1E695E9C0]);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(*(a1 + 136), v13);
LABEL_10:
          if (valuePtr.value)
          {
            CFRelease(valuePtr.value);
          }

          if (*&valuePtr.timescale)
          {
            CFRelease(*&valuePtr.timescale);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v8 = v18;
          goto LABEL_17;
        }

        _VCImageQueue_EmitFrameEnqueuedSignposts_cold_1();
      }

      else
      {
        _VCImageQueue_EmitFrameEnqueuedSignposts_cold_2();
      }
    }

    else
    {
      _VCImageQueue_EmitFrameEnqueuedSignposts_cold_3();
    }

    v14 = v19;
    goto LABEL_10;
  }

LABEL_18:
  valuePtr = *a3;
  CMTimeGetSeconds(&valuePtr);
  IOSurface = CVPixelBufferGetIOSurface(a4);
  IOSurfaceGetID(IOSurface);
  if (*(a1 + 113) == 1)
  {
    LODWORD(valuePtr.value) = -1431655766;
    Attachment = CVBufferGetAttachment(a4, @"FrameSequenceNumber", &valuePtr);
    if (Attachment)
    {
      LOWORD(v19) = 0;
      CFNumberGetValue(Attachment, kCFNumberSInt16Type, &v19);
      if (CVBufferGetAttachment(a4, @"HIDTimeStamp", 0))
      {
        FigCFNumberGetUInt64();
      }

      kdebug_trace();
    }
  }

  return kdebug_trace();
}