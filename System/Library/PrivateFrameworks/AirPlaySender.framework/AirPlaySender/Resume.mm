@interface Resume
@end

@implementation Resume

void __audioEngineCarPlay_Resume_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 144) = *(v2 + 24);
  *(v2 + 160) = v3;
  *(v2 + 176) = *(v2 + 56);
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v6 = *(v4 + 72);
  *(v4 + 184) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  v9 = *(v7 + 80);
  *(v7 + 192) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 200);
  v12 = *(v10 + 88);
  *(v10 + 200) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 208);
  v15 = *(v13 + 96);
  *(v13 + 208) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(*(a1 + 32) + 216) = *(*(a1 + 32) + 104);
  *(*(a1 + 32) + 224) = *(*(a1 + 32) + 112);
  v16 = *(a1 + 32);
  *(v16 + 232) = 0;
  *(v16 + 236) = 0;
  *(v16 + 136) = 1;
}

void __screenstream_Resume_block_invoke_2(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __screenstreamudp_Resume_block_invoke(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v80 = *(a1 + 48);
  v81 = *(a1 + 64);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = &unk_27CFF0000;
  if (DerivedStorage[24])
  {
    v14 = -16762;
    goto LABEL_148;
  }

  v5 = DerivedStorage;
  if (DerivedStorage[26] || !DerivedStorage[25])
  {
    goto LABEL_75;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  *buffer = 0;
  v101 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v85 = *MEMORY[0x277CBF3A8];
  v84 = 0;
  if (!*(v6 + 48))
  {
    v14 = -16760;
LABEL_153:
    APSLogErrorAt();
    v15 = 0;
    Int64 = 0;
    v39 = 0;
    Mutable = 0;
    goto LABEL_45;
  }

  v7 = v6;
  if (!*(v6 + 40))
  {
    v14 = -16760;
    goto LABEL_153;
  }

  v8 = RandomBytes();
  if (v8)
  {
    v14 = v8;
    goto LABEL_153;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = *(v7 + 48);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12)
  {
    v14 = -12782;
LABEL_13:
    APSLogErrorAt();
    v15 = 0;
    Int64 = 0;
    goto LABEL_44;
  }

  v13 = v12(v11, 1935897205, Mutable, v7 + 104);
  if (v13)
  {
    v14 = v13;
    goto LABEL_13;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4()))
  {
    v69 = v2;
    v71 = *(v7 + 104);
    OUTLINED_FUNCTION_2();
  }

  v17 = [*(v7 + 40) getClientUPID:{&v97, v69, v71}];
  if (v17)
  {
    v14 = v17;
    goto LABEL_13;
  }

  Int64 = CFNumberCreateInt64();
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v19)
  {
    v20 = v19(CMBaseObject, *MEMORY[0x277CE4FE8], Int64);
    if (v20)
    {
      v14 = v20;
    }

    else
    {
      v21 = *(v7 + 104);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v22)
      {
        v23 = v22(v21);
        if (!v23)
        {
          v24 = CMBaseObjectGetDerivedStorage();
          value[0] = 0;
          v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v15 = v25;
          if (!v25)
          {
            APSLogErrorAt();
            v14 = -6728;
            goto LABEL_114;
          }

          v26 = *MEMORY[0x277CBED28];
          CFDictionarySetValue(v25, @"useAVConfMirroring", *MEMORY[0x277CBED28]);
          FigCFDictionarySetInt32();
          v73 = *MEMORY[0x277CBED10];
          cf = v26;
          if (*(v24 + 276))
          {
            v27 = v26;
          }

          else
          {
            v27 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v15, @"remoteShouldShowHUD", v27);
          v28 = FigTransportStreamGetCMBaseObject();
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v29)
          {
            v30 = v29(v28, *MEMORY[0x277CE5038], v9, value);
            if (!v30)
            {
              CFDictionarySetValue(v15, @"networkInfo", value[0]);
              v31 = [*(v24 + 40) negotiationDataForPresentationMode:*(v24 + 248) == 1];
              if (!v31)
              {
                APSLogErrorAt();
                cfa = 0;
                theDict = 0;
                v14 = -16761;
                goto LABEL_81;
              }

              CFDictionarySetValue(v15, @"negotiationData", v31);
              CFDictionarySetInt64();
              DisplayHDRMode = screenstreamudp_getDisplayHDRMode(v24);
              CFDictionarySetInt64();
              if (DisplayHDRMode)
              {
                CFDictionarySetValue(v15, @"displayHDRMode", DisplayHDRMode);
              }

              if (*(v24 + 263))
              {
                v33 = cf;
              }

              else
              {
                v33 = v73;
              }

              CFDictionarySetValue(v15, @"hdrMirroringSupported", v33);
              theDict = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!theDict)
              {
                APSLogErrorAt();
                theDict = 0;
                goto LABEL_166;
              }

              if (!*(v24 + 112))
              {
                goto LABEL_38;
              }

              v34 = RandomBytes();
              if (!v34)
              {
                v35 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v35)
                {
                  v36 = v35;
                  v37 = CFDictionarySetInt64();
                  if (!v37)
                  {
                    CFDictionarySetValue(theDict, @"streamConnectionTypeMediaDataControl", v36);
                    CFRelease(v36);
LABEL_38:
                    CFDictionarySetValue(v15, @"streamConnections", theDict);
                    v38 = &unk_27CFF0000;
                    if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
                    {
                      *&v70 = v15;
                      LogPrintF();
                    }

                    cfa = 0;
                    v14 = 0;
LABEL_84:
                    if (value[0])
                    {
                      CFRelease(value[0]);
                    }

                    if (theDict)
                    {
                      CFRelease(theDict);
                    }

                    if (cfa)
                    {
                      CFRelease(cfa);
                    }

                    if (!v14)
                    {
                      v43 = v38[200];
                      if (v43 <= 40)
                      {
                        if (v43 != -1 || _LogCategory_Initialize())
                        {
                          *&v70 = v2;
                          *(&v70 + 1) = v15;
                          LogPrintF();
                        }

                        v44 = v38[200];
                        if (v44 <= 40)
                        {
                          if (v44 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
                          {
                            OUTLINED_FUNCTION_8();
                            *&v70 = v2;
                            LogPrintF();
                          }
                        }
                      }

                      v45 = *(v7 + 48);
                      v46 = *(v7 + 96);
                      v47 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v47)
                      {
                        v48 = v47(v45, v46, v15, &v98, &v99, 0);
                        if (!v48)
                        {
                          v49 = v98;
                          if (v98)
                          {
                            LODWORD(value[0]) = 0;
                            v50 = CMBaseObjectGetDerivedStorage();
                            CFDictionaryGetTypeID();
                            theDicta = CFDictionaryGetTypedValue();
                            if (!LODWORD(value[0]))
                            {
                              cfb = v50;
                              v51 = FigTransportStreamGetCMBaseObject();
                              v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                              if (v52)
                              {
                                LODWORD(value[0]) = v52(v51, *MEMORY[0x277CE5098], theDicta);
                                if (!LODWORD(value[0]))
                                {
                                  CFDataGetTypeID();
                                  theDictb = CFDictionaryGetTypedValue();
                                  if (!LODWORD(value[0]))
                                  {
                                    if (!CFDictionaryContainsKey(v49, @"streamConnections"))
                                    {
                                      goto LABEL_118;
                                    }

                                    v53 = CFDictionaryGetValue(v49, @"streamConnections");
                                    if (!CFDictionaryContainsKey(v53, @"streamConnectionTypeMediaDataControl"))
                                    {
                                      goto LABEL_118;
                                    }

                                    CFDictionaryGetValue(v53, @"streamConnectionTypeMediaDataControl");
                                    v54 = CFDictionaryGetInt64();
                                    if (!LODWORD(value[0]))
                                    {
                                      LODWORD(value[0]) = screenstreamudp_createAndResumeTransportMediaDataControlStream(*(cfb + 6), v54, *(cfb + 17), cfb + 15);
                                      v4 = &unk_27CFF0000;
                                      if (LODWORD(value[0]))
                                      {
                                        APSLogErrorAt();
                                      }

                                      else
                                      {
                                        if (gLogCategory_APEndpointStreamScreenUDP >= 51)
                                        {
                                          goto LABEL_120;
                                        }

                                        if (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4())
                                        {
                                          *&v70 = v2;
                                          *(&v70 + 1) = *(cfb + 15);
                                          OUTLINED_FUNCTION_2();
                                        }
                                      }

LABEL_119:
                                      v14 = value[0];
                                      if (LODWORD(value[0]))
                                      {
LABEL_135:
                                        APSLogErrorAt();
                                        goto LABEL_44;
                                      }

LABEL_120:
                                      v55 = FigTransportStreamGetCMBaseObject();
                                      v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                      if (v56)
                                      {
                                        v57 = v56(v55, *MEMORY[0x277CE5058], v9, &v96);
                                        if (v57)
                                        {
                                          v14 = v57;
                                        }

                                        else
                                        {
                                          v103.location = 0;
                                          v103.length = 16;
                                          CFDataGetBytes(v96, v103, buffer);
                                          v58 = APSenderSessionGetCMBaseObject(*(v7 + 48));
                                          v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                          if (v59)
                                          {
                                            v60 = v59(v58, @"KeyHolder", v9, &v94);
                                            if (!v60)
                                            {
                                              if (v94)
                                              {
                                                v39 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v9, v95);
                                                if (!v39)
                                                {
                                                  APSLogErrorAt();
                                                  v14 = -6728;
                                                  goto LABEL_45;
                                                }

                                                v61 = v94;
                                                v62 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                                if (v62)
                                                {
                                                  v63 = v62(v61, v39, 46, &v93, 46, &v92);
                                                  if (!v63)
                                                  {
                                                    if (*(v7 + 248) == 1)
                                                    {
                                                      APSScreenGetMediaPresentationParams();
                                                      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4()))
                                                      {
                                                        v72 = v84;
                                                        v70 = v85;
                                                        OUTLINED_FUNCTION_2();
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v85 = *(v7 + 152);
                                                      v84 = *(v7 + 268);
                                                    }

                                                    v86 = v85;
                                                    LODWORD(v87) = v84;
                                                    *(&v87 + 1) = v92;
                                                    *&v88 = v93;
                                                    BYTE8(v88) = *(v7 + 248) == 1;
                                                    v64 = screenstreamudp_getDisplayHDRMode(v7);
                                                    v65 = *(v7 + 192);
                                                    *&v89 = v64;
                                                    *(&v89 + 1) = v65;
                                                    LOBYTE(v90) = *(v7 + 256);
                                                    v66 = *(v7 + 216);
                                                    if (!v66 || (*(&v90 + 1) = CFDictionaryGetValue(v66, @"encoderEncryptionData")) != 0 && (FigCFDictionaryGetInt64IfPresent(), v91))
                                                    {
                                                      v67 = *(v7 + 40);
                                                      *value = v80;
                                                      v83 = v81;
                                                      v14 = [v67 startWithNWConnectionClientID:buffer negotiatedBlob:theDictb screenOptions:&v86 completion:{value, v70, v72}];
                                                      if (!v14)
                                                      {
                                                        goto LABEL_49;
                                                      }

                                                      goto LABEL_137;
                                                    }

                                                    APSLogErrorAt();
LABEL_174:
                                                    v14 = -16765;
                                                    goto LABEL_45;
                                                  }

                                                  v14 = v63;
                                                }

                                                else
                                                {
                                                  v14 = -12782;
                                                }

LABEL_137:
                                                APSLogErrorAt();
                                                goto LABEL_45;
                                              }

                                              APSLogErrorAt();
                                              v39 = 0;
                                              goto LABEL_174;
                                            }

                                            v14 = v60;
                                          }

                                          else
                                          {
                                            v14 = -12782;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v14 = -12782;
                                      }

                                      goto LABEL_135;
                                    }
                                  }

                                  APSLogErrorAt();
LABEL_118:
                                  v4 = &unk_27CFF0000;
                                  goto LABEL_119;
                                }
                              }

                              else
                              {
                                LODWORD(value[0]) = -12782;
                              }
                            }

                            APSLogErrorAt();
                            theDictb = 0;
                            goto LABEL_118;
                          }

                          APSLogErrorAt();
                          v39 = 0;
                          v14 = -16765;
LABEL_115:
                          v4 = &unk_27CFF0000;
                          goto LABEL_45;
                        }

                        v14 = v48;
                      }

                      else
                      {
                        v14 = -12782;
                      }
                    }

LABEL_114:
                    APSLogErrorAt();
                    v39 = 0;
                    goto LABEL_115;
                  }

                  v14 = v37;
                  cfa = v36;
                  APSLogErrorAt();
LABEL_81:
                  v38 = &unk_27CFF0000;
                  CFRelease(v15);
                  v15 = 0;
                  goto LABEL_84;
                }

                APSLogErrorAt();
LABEL_166:
                cfa = 0;
                v14 = -6728;
                goto LABEL_81;
              }

              v14 = v34;
              APSLogErrorAt();
LABEL_80:
              cfa = 0;
              goto LABEL_81;
            }

            v14 = v30;
          }

          else
          {
            v14 = -12782;
          }

          APSLogErrorAt();
          theDict = 0;
          goto LABEL_80;
        }

        v14 = v23;
      }

      else
      {
        v14 = -12782;
      }
    }
  }

  else
  {
    v14 = -12782;
  }

  APSLogErrorAt();
  v15 = 0;
LABEL_44:
  v39 = 0;
LABEL_45:
  v40 = v4[200];
  if (v40 <= 90)
  {
    if (v40 != -1 || (OUTLINED_FUNCTION_8(), _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_8();
      LogPrintF();
    }
  }

LABEL_49:
  if (Int64)
  {
    CFRelease(Int64);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (!v14)
  {
    v41 = v4[200];
    if (v41 <= 50 && (v41 != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_2();
    }

    v5[27] = 1;
    goto LABEL_75;
  }

LABEL_148:
  APSLogErrorAt();
  v68 = v4[200];
  if (v68 <= 90 && (v68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v86 = v80;
  *&v87 = v81;
  screenstreamudp_dispatchCallback(v2, &v86, v14);
  screenstreamudp_handleFatalError(v2, v14, @"Resume failed");
LABEL_75:
  v42 = *(a1 + 40);
  if (v42)
  {
    CFRelease(v42);
  }

  CFRelease(*(a1 + 32));
}

void __audioEngineCarPlay_Resume_block_invoke(uint64_t a1)
{
  v36 = 0;
  memset(__s1, 0, sizeof(__s1));
  v2 = *(a1 + 40);
  if (!*(v2 + 120))
  {
    if (*(v2 + 72) && *(v2 + 80) && *(v2 + 96))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v37 = 0;
      v38 = 0;
      if (*(DerivedStorage + 120))
      {
        APSLogErrorAt();
        v5 = -72077;
      }

      else
      {
        v4 = DerivedStorage;
        if (*(DerivedStorage + 64))
        {
          if (*(DerivedStorage + 88))
          {
            v5 = 0;
          }

          else
          {
            v6 = *MEMORY[0x277CBECE8];
            v7 = APTransportStreamSendBackingProviderCreateWithStreamID();
            if (v7)
            {
              v5 = v7;
              APSLogErrorAt();
            }

            else
            {
              v8 = *(v4 + 64);
              v9 = arc4random();
              v5 = APMessageRingCreate(v6, v8, v9, v37, 48, 0, &v38);
              if (v5)
              {
                APSLogErrorAt();
                if (v38)
                {
                  CFRelease(v38);
                }
              }

              else
              {
                *(v4 + 88) = v38;
                v38 = 0;
              }
            }
          }
        }

        else
        {
          APSLogErrorAt();
          v5 = -72071;
        }
      }

      if (v37)
      {
        CFRelease(v37);
      }

      OUTLINED_FUNCTION_2_16();
      *(v10 + 24) = v5;
      OUTLINED_FUNCTION_2_16();
      if (*(v11 + 24))
      {
        goto LABEL_41;
      }

      v12 = *(*(a1 + 40) + 72);
      v13 = *(CMBaseObjectGetVTable() + 16);
      if (*v13 >= 2uLL)
      {
        v14 = v13[1];
        if (v14)
        {
          v14(v12, __s1);
        }
      }

      OUTLINED_FUNCTION_2_16();
      *(v16 + 24) = v15;
      OUTLINED_FUNCTION_2_16();
      if (*(v17 + 24))
      {
        goto LABEL_41;
      }

      v18 = *(a1 + 40);
      if (!memcmp(__s1, (v18 + 24), 0x28uLL))
      {
        *(v18 + 4) = *v18 * *(v18 + 24) / (1000 * *(v18 + 44));
        v19 = *(v18 + 128);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __audioEngineCarPlay_Resume_block_invoke_2;
        block[3] = &__block_descriptor_tmp_22;
        block[4] = v18;
        dispatch_sync(v19, block);
        APSSetFBOPropertyInt64();
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v22 = *(v20 + 72);
        v23 = *(v20 + 4);
        v24 = *(v20 + 128);
        v25 = *(CMBaseObjectGetVTable() + 16);
        if (*v25 >= 2uLL)
        {
          v26 = v25[3];
          if (v26)
          {
            v26(v22, v23, v24, audioEngineCarPlay_HandleDataReady, v21);
          }
        }

        if (gLogCategory_APAudioEngineCarPlay <= 40 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v27 = *(*(a1 + 40) + 72);
        v28 = *(CMBaseObjectGetVTable() + 16);
        if (*v28 >= 2uLL)
        {
          v29 = v28[4];
          if (v29)
          {
            v29(v27);
          }
        }

        OUTLINED_FUNCTION_2_16();
        *(v31 + 24) = v30;
        OUTLINED_FUNCTION_2_16();
        if (!*(v32 + 24))
        {
          *(*(a1 + 40) + 120) = 1;
          goto LABEL_32;
        }

LABEL_41:
        APSLogErrorAt();
        goto LABEL_32;
      }
    }

    APSLogErrorAt();
    OUTLINED_FUNCTION_2_16();
    *(v33 + 24) = -72074;
  }

LABEL_32:
  CFRelease(*(a1 + 48));
}

void __screenstream_Resume_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_8_14();
  v3 = *(v2 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = &unk_27CFF1000;
  v7 = "\n";
  if (*(DerivedStorage + 24))
  {
    v82 = -16762;
    goto LABEL_106;
  }

  if (*(DerivedStorage + 26) || !*(DerivedStorage + 25))
  {
LABEL_117:
    v82 = 0;
    goto LABEL_118;
  }

  if (!*(DerivedStorage + 160))
  {
    v82 = -16768;
    goto LABEL_106;
  }

  atomic_store(0, (DerivedStorage + 1200));
  v107 = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  v105 = 0;
  v106 = 0;
  v9 = (v8 + 136);
  if (!*(v8 + 136))
  {
    v10 = v8;
    if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = OUTLINED_FUNCTION_12_9();
    Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
    if (!Mutable)
    {
      APSLogErrorAt();
      v28 = 0;
      v107 = -16761;
      OUTLINED_FUNCTION_8_14();
LABEL_95:
      if (v105)
      {
        CFRelease(v105);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      goto LABEL_99;
    }

    v16 = Mutable;
    FigCFDictionarySetInt32();
    if (*(v10 + 48))
    {
      if (*(v10 + 394))
      {
        CFDictionarySetValue(v16, @"uuid", *(v10 + 312));
        if (*(v10 + 120))
        {
          v100 = MEMORY[0x277D85DD0];
          v101 = 0x40000000;
          v102 = __screenstream_ensureTransportStream_block_invoke;
          v103 = &__block_descriptor_tmp_115;
          v104 = v16;
          CFDictionaryApplyBlock();
        }
      }

      else if (*(v10 + 409))
      {
        v22 = APDemoManagerCopyDeviceInfo();
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(v16, @"DemoDeviceInfo", v22);
          CFRelease(v23);
        }
      }

      v24 = *(v10 + 48);
      v25 = *(v10 + 88);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v26)
      {
        v107 = v26(v24, v25, v16, &v105, &v106, 0);
        if (!v107)
        {
          CFDictionaryGetInt64();
          v6 = &unk_27CFF1000;
          if (!v107)
          {
            OUTLINED_FUNCTION_24_5();
            if (v20 ^ v21 | v19 && (v27 != -1 || OUTLINED_FUNCTION_4()))
            {
              OUTLINED_FUNCTION_2();
            }

            v29 = OUTLINED_FUNCTION_12_9();
            v33 = CFDictionaryCreateMutable(v29, v30, v31, v32);
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt32();
            if (*(v10 + 394))
            {
              v34 = *MEMORY[0x277CC1B08];
              v35 = CFUUIDGetConstantUUIDWithBytes(0, 0x99u, 0xA4u, 0x2Au, 0xF4u, 0x23u, 0xE3u, 0x4Au, 0, 0x91u, 0x6Eu, 0xC1u, 0x43u, 0xD3u, 0x32u, 0x3Bu, 0x92u);
              CFDictionarySetValue(v33, v34, v35);
            }

            v36 = *(v10 + 48);
            v37 = APTransportStreamIDMakeWithPort();
            v38 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v38)
            {
              v39 = v36;
              v28 = v33;
              v107 = v38(v39, v37, v33, v9);
              if (!v107)
              {
                v6 = &unk_27CFF1000;
                OUTLINED_FUNCTION_24_5();
                if (v20 ^ v21 | v19 && (v40 != -1 || OUTLINED_FUNCTION_4()))
                {
                  OUTLINED_FUNCTION_2();
                }

                v107 = APSSetFBOPropertyInt64();
                if (!v107)
                {
                  goto LABEL_48;
                }

                APSLogErrorAt();
                OUTLINED_FUNCTION_8_14();
LABEL_45:
                v7 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
                goto LABEL_93;
              }
            }

            else
            {
              OUTLINED_FUNCTION_18_8();
            }

            APSLogErrorAt();
            OUTLINED_FUNCTION_8_14();
            v6 = &unk_27CFF1000;
            v28 = v33;
            goto LABEL_45;
          }

          APSLogErrorAt();
          v28 = 0;
LABEL_129:
          OUTLINED_FUNCTION_8_14();
LABEL_93:
          CFRelease(v16);
          if (v106)
          {
            CFRelease(v106);
          }

          goto LABEL_95;
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_8();
      }

      APSLogErrorAt();
      v28 = 0;
      OUTLINED_FUNCTION_8_14();
      v6 = &unk_27CFF1000;
      goto LABEL_93;
    }

    v17 = *(v10 + 128);
    if (v17)
    {
      *v9 = CFRetain(v17);
      OUTLINED_FUNCTION_24_5();
      if (v20 ^ v21 | v19 && (v18 != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      v28 = 0;
LABEL_48:
      if (*(v10 + 1184) >= 1)
      {
        if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }

        APSSetFBOPropertyInt64();
      }

      v95 = v28;
      v96 = v16;
      v97 = v3;
      v41 = CMBaseObjectGetDerivedStorage();
      *(v41 + 1176) = mach_absolute_time();
      v42 = MEMORY[0x277CBF138];
      v43 = MEMORY[0x277CBF150];
      v44 = OUTLINED_FUNCTION_12_9();
      v46 = CFDictionaryCreateMutable(v44, v45, v42, v43);
      v47 = OUTLINED_FUNCTION_12_9();
      v49 = CFDictionaryCreateMutable(v47, v48, v42, v43);
      v50 = *(v10 + 1128);
      if (v50)
      {
        CFRelease(v50);
        *(v10 + 1128) = 0;
      }

      v51 = *MEMORY[0x277CEA338];
      CFDictionarySetValue(v46, *MEMORY[0x277CEA338], @"fps");
      v52 = FigCFDictionarySetDouble();
      OUTLINED_FUNCTION_23_8(v52, v53, @"Source Frames");
      v54 = APSStatsHistogramCreate();
      if (v54)
      {
        v56 = v54;
        OUTLINED_FUNCTION_31_2(v54, @"Source Frames");
        CFRelease(v56);
      }

      OUTLINED_FUNCTION_23_8(v54, v55, @"Sent Frames");
      v57 = APSStatsHistogramCreate();
      if (v57)
      {
        v59 = v57;
        OUTLINED_FUNCTION_31_2(v57, @"Sent Frames");
        CFRelease(v59);
      }

      OUTLINED_FUNCTION_23_8(v57, v58, @"Dropped Overflow Frames");
      v60 = APSStatsHistogramCreate();
      if (v60)
      {
        v61 = v60;
        OUTLINED_FUNCTION_31_2(v60, @"Dropped Overflow Frames");
        CFRelease(v61);
      }

      CFDictionarySetValue(v46, v51, @"Mbps");
      v62 = FigCFDictionarySetDouble();
      OUTLINED_FUNCTION_23_8(v62, v63, @"Used Bandwidth");
      v64 = APSStatsHistogramCreate();
      if (v64)
      {
        v65 = v64;
        OUTLINED_FUNCTION_31_2(v64, @"Used Bandwidth");
        CFRelease(v65);
      }

      FigCFDictionarySetDouble();
      v66 = FigCFDictionarySetInt32();
      OUTLINED_FUNCTION_23_8(v66, v67, @"Available Bandwidth");
      v68 = APSStatsHistogramCreate();
      if (v68)
      {
        v69 = v68;
        CFDictionarySetValue(v49, @"Available Bandwidth", v68);
        CFRelease(v69);
      }

      CFRelease(v46);
      *(v10 + 1128) = v49;
      v70 = v106;
      v71 = *(v10 + 936);
      *(v10 + 936) = v106;
      v7 = "\n";
      v16 = v96;
      if (v70)
      {
        CFRetain(v70);
      }

      v3 = v97;
      OUTLINED_FUNCTION_8_14();
      if (v71)
      {
        CFRelease(v71);
      }

      if (v70)
      {
        v72 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        v6 = &unk_27CFF1000;
        if (v72)
        {
          v73 = v72(v70);
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = 0;
        v6 = &unk_27CFF1000;
      }

      *(v10 + 944) = v73;
      v74 = *(v10 + 984);
      v75 = *(v10 + 64);
      *(v10 + 984) = v75;
      if (v75)
      {
        CFRetain(v75);
      }

      if (v74)
      {
        CFRelease(v74);
      }

      v76 = *v9;
      v77 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v77)
      {
        v107 = v77(v76);
        if (!v107)
        {
          v78 = *v9;
          v79 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v79)
          {
            v107 = v79(v78);
            if (!v107)
            {
              if (*(*(CMBaseObjectGetVTable() + 16) + 64))
              {
                v80 = OUTLINED_FUNCTION_17_6();
                v107 = v81(v80);
                if (!v107)
                {
LABEL_92:
                  v28 = v95;
                  goto LABEL_93;
                }
              }

              else
              {
                OUTLINED_FUNCTION_18_8();
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_18_8();
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_18_8();
      }

      APSLogErrorAt();
      goto LABEL_92;
    }

    APSLogErrorAt();
    v28 = 0;
    v107 = -16765;
    goto LABEL_129;
  }

LABEL_99:
  v82 = v107;
  if (!v107)
  {
    v83 = *(v5 + 160);
    v84 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v84)
    {
      v85 = v84(v83);
      if (!v85)
      {
        v86 = CMBaseObjectGetDerivedStorage();
        v87 = v6[1002];
        if (v87 <= 30 && (v87 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v89 = *(v86 + 200);
        v90 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v89, v90, 0x3B9ACA00uLL, 0x5F5E100uLL);
        screenStream_setResumedAndNotifiyObservers(v3, 1);
        OUTLINED_FUNCTION_24_5();
        if (v20 ^ v21 | v19 && (v91 != -1 || OUTLINED_FUNCTION_4()))
        {
          OUTLINED_FUNCTION_2();
        }

        goto LABEL_117;
      }

      v82 = v85;
    }

    else
    {
      v82 = -12782;
    }
  }

LABEL_106:
  APSLogErrorAt();
  v88 = v6[1002];
  if (v88 <= 90 && (v88 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  screenstream_cleanup();
LABEL_118:
  if (*(a1 + 48))
  {
    CFRetain(*(a1 + 32));
    v92 = *(*(a1 + 56) + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *(v7 + 35);
    block[2] = __screenstream_Resume_block_invoke_2;
    block[3] = &__block_descriptor_tmp_107_1;
    v93 = *(a1 + 32);
    block[4] = *(a1 + 48);
    block[5] = v93;
    v99 = v82;
    block[6] = *(a1 + 64);
    dispatch_async(v92, block);
  }

  v94 = *(a1 + 40);
  if (v94)
  {
    CFRelease(v94);
  }

  CFRelease(*(a1 + 32));
}

@end