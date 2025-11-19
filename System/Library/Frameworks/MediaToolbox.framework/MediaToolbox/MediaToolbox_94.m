void itemfig_createRenderTriplesForMultichannelVideoTargets()
{
  OUTLINED_FUNCTION_649();
  v415 = v0;
  v2 = v1;
  v4 = v3;
  ValueAtIndex = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  value_low = v13;
  v16 = v15;
  v477 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt32 = *(DerivedStorage + 1);
  v19 = CMBaseObjectGetDerivedStorage();
  v462 = 0;
  v460 = 0u;
  *v461 = 0u;
  v458 = 0;
  v459 = 0;
  if (value_low)
  {
    v8 = 0;
    OUTLINED_FUNCTION_15_0();
    v10 = 0;
    goto LABEL_532;
  }

  theArray = v12;
  HIDWORD(v414) = v8;
  v442 = v10;
  v405 = UInt32;
  v406 = v19;
  v419 = DerivedStorage;
  v20 = MEMORY[0x1E695E480];
  v444 = v16;
  if (!*(DerivedStorage + 82))
  {
    FigSimpleMutexLock();
    v32 = *(v406 + 272);
    if (v32)
    {
      value_low = CFRetain(v32);
      FigSimpleMutexUnlock();
      if (value_low)
      {
        v418 = value_low;
        if (CFArrayGetCount(value_low) < 1)
        {
          v8 = 0;
          OUTLINED_FUNCTION_15_0();
          goto LABEL_568;
        }

        value_low = DerivedStorage;
        v33 = *(DerivedStorage + 136);
        v409 = v4;
        v412 = v2;
        v407 = ValueAtIndex;
        if (v33)
        {
          CFArrayRemoveAllValues(v33);
        }

        else
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          *(DerivedStorage + 136) = Mutable;
          if (!Mutable)
          {
LABEL_590:
            OUTLINED_FUNCTION_41_0();
            FigSignalErrorAtGM();
            v8 = 0;
            OUTLINED_FUNCTION_15_0();
            goto LABEL_568;
          }
        }

        v122 = *(DerivedStorage + 81);
        v2 = v16;
        if (v122)
        {
          Count = CFArrayGetCount(v122);
          if (Count >= 1)
          {
            value_low = Count;
            v124 = 0;
            v4 = MEMORY[0x1E695E9C0];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 81), v124);
              v125 = *(ValueAtIndex + 216);
              if (v125)
              {
                CFArrayRemoveAllValues(v125);
              }

              else
              {
                v126 = OUTLINED_FUNCTION_383();
                v128 = CFArrayCreateMutable(v126, v127, v4);
                *(ValueAtIndex + 216) = v128;
                if (!v128)
                {
                  goto LABEL_590;
                }
              }

              ++v124;
            }

            while (value_low != v124);
          }
        }

        v10 = v418;
        value_low = DerivedStorage;
        v129 = *(DerivedStorage + 141);
        if (v129)
        {
          CFArrayRemoveAllValues(v129);
          v8 = MEMORY[0x1E695E480];
        }

        else
        {
          v8 = MEMORY[0x1E695E480];
          v130 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          *(DerivedStorage + 141) = v130;
          if (!v130)
          {
            OUTLINED_FUNCTION_41_0();
            FigSignalErrorAtGM();
            goto LABEL_604;
          }
        }

        v416 = CFArrayGetCount(v418);
        if (v416 < 1)
        {
          LODWORD(v425) = 0;
        }

        else
        {
          v132 = 0;
          isa = v8->isa;
          alloca = *(MEMORY[0x1E6963198] + 8);
          theArrayb = *MEMORY[0x1E6963198];
          *&v131 = 136315394;
          v413 = v131;
          do
          {
            v421 = v132;
            value = CFArrayGetValueAtIndex(v418, v132);
            v134 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v134)
            {
              LODWORD(v425) = v134(value, isa, &v459);
            }

            else
            {
              OUTLINED_FUNCTION_311_0();
            }

            if (v459)
            {
              v439 = CFArrayGetCount(v459);
              if (v439 >= 1)
              {
                DataChannelByIndex = 0;
                while (1)
                {
                  v4 = CFArrayGetValueAtIndex(v459, DataChannelByIndex);
                  v136 = CMBaseObjectGetDerivedStorage();
                  *&v475.category = 0;
                  CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v4);
                  if (CountOfDataChannels < 1 || (ValueAtIndex = CountOfDataChannels, (v138 = *(v136 + 648)) == 0))
                  {
                    value_low = 0;
                    OUTLINED_FUNCTION_158_0();
                    v16 = 0;
                    DerivedStorage = 0;
                    goto LABEL_224;
                  }

                  v139 = CFArrayGetCount(v138);
                  if (v139 < 1)
                  {
                    value_low = 0;
LABEL_272:
                    OUTLINED_FUNCTION_158_0();
                    v16 = 0;
                    DerivedStorage = 0;
                    v2 = v444;
                    goto LABEL_224;
                  }

                  v2 = v139;
                  v140 = OUTLINED_FUNCTION_383();
                  value_low = CFDictionaryCreateMutable(v140, v141, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!value_low)
                  {
                    goto LABEL_272;
                  }

                  v142 = 0;
                  v143 = 0;
                  keya = 0;
                  v429 = ValueAtIndex;
                  v432 = v4;
                  do
                  {
                    LODWORD(v434[0]) = v142;
                    theDict = v143;
                    DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v4, v143);
                    v144 = 0;
                    ValueAtIndex = 0;
                    do
                    {
                      v4 = CFArrayGetValueAtIndex(*(v136 + 648), v144);
                      if (FigTagCollectionCreateMutableCopy())
                      {
                        OUTLINED_FUNCTION_158_0();
                        v16 = 0;
                        DerivedStorage = 0;
                        v169 = 1;
                        OUTLINED_FUNCTION_366_0();
                        goto LABEL_225;
                      }

                      if (*(v4 + 200))
                      {
                        FigTagCollectionAddTagsFromCollection();
                      }

                      if (*(v136 + 1097))
                      {
                        v478.value = alloca;
                        *&v478.category = theArrayb;
                        CMTagCollectionAddTag(*&v475.category, v478);
                      }

                      if (CMTagCollectionContainsTagsOfCollection(*&v475.category, DataChannelByIndex) || (v479.value = *"vyna", *&v479.category = 0x40000005706C7972, CMTagCollectionContainsTag(DataChannelByIndex, v479)) && *(v136 + 1040) == *v4)
                      {
                        tagCollection.value = 0;
                        UInt32 = FigCFNumberCreateUInt32();
                        if (!UInt32 || (v145 = FigCFNumberCreateUInt32()) == 0)
                        {
                          OUTLINED_FUNCTION_41_0();
                          FigSignalErrorAtGM();
                          DerivedStorage = 0;
                          v16 = 0;
                          OUTLINED_FUNCTION_366_0();
                          goto LABEL_245;
                        }

                        v4 = v145;
                        OUTLINED_FUNCTION_627();
                        if (FigCFDictionaryGetValueIfPresent())
                        {
                          if (tagCollection.value)
                          {
                            v146 = CFArrayGetCount(tagCollection.value);
                            if (v146 >= 1)
                            {
                              v147 = v146;
                              ValueAtIndex = 0;
                              while (1)
                              {
                                CFArrayGetValueAtIndex(tagCollection.value, ValueAtIndex);
                                if (FigCFEqual())
                                {
                                  break;
                                }

                                if (v147 == ++ValueAtIndex)
                                {
                                  goto LABEL_182;
                                }
                              }

LABEL_221:
                              v16 = 0;
                              goto LABEL_222;
                            }
                          }
                        }

                        else
                        {
                          v148 = OUTLINED_FUNCTION_383();
                          v150 = CFArrayCreateMutable(v148, v149, MEMORY[0x1E695E9C0]);
                          v151 = OUTLINED_FUNCTION_627();
                          CFDictionarySetValue(v151, v152, v150);
                          tagCollection.value = v150;
                          CFRelease(v150);
                        }

LABEL_182:
                        CFArrayAppendValue(tagCollection.value, UInt32);
                        if (*(v136 + 1097))
                        {
                          v480.value = alloca;
                          *&v480.category = theArrayb;
                          v153 = CMTagCollectionContainsTag(DataChannelByIndex, v480);
                          v154 = keya;
                          if (v153)
                          {
                            v154 = 1;
                          }

                          keya = v154;
                        }

                        CFRelease(UInt32);
                        CFRelease(v4);
                        ValueAtIndex = 1;
                      }

                      if (*&v475.category)
                      {
                        CFRelease(*&v475.category);
                        *&v475.category = 0;
                      }

                      ++v144;
                    }

                    while (v144 != v2);
                    if (!ValueAtIndex)
                    {
                      OUTLINED_FUNCTION_158_0();
                      goto LABEL_221;
                    }

                    v143 = theDict + 1;
                    v142 = 1;
                    ValueAtIndex = v429;
                    v4 = v432;
                  }

                  while ((theDict + 1) != v429);
                  v16 = FigCFDictionaryCopyArrayOfKeys();
                  if (CFArrayGetCount(v16) < 1)
                  {
                    LODWORD(v434[0]) = 1;
                    goto LABEL_248;
                  }

                  v4 = 0;
                  DataChannelByIndex = 1;
                  while (2)
                  {
                    CFArrayGetValueAtIndex(v16, v4);
                    SInt32 = FigCFNumberGetSInt32();
                    v156 = OUTLINED_FUNCTION_624();
                    v158 = CFDictionaryGetValue(v156, v157);
                    ValueAtIndex = v158;
                    if (!v158 || (v159 = CFArrayGetCount(v158), v159 < 2))
                    {
                      v2 = DataChannelByIndex;
                      goto LABEL_215;
                    }

                    LODWORD(theDict) = DataChannelByIndex;
                    UInt32 = (v159 + 1);
                    while (2)
                    {
                      v160 = OUTLINED_FUNCTION_195_0();
                      CFArrayGetValueAtIndex(v160, v161);
                      v162 = FigCFNumberGetSInt32();
                      v163 = CMBaseObjectGetDerivedStorage();
                      switch(SInt32)
                      {
                        case 1635088502:
                          v164 = 1040;
                          break;
                        case 1668047728:
                          v164 = 1048;
                          break;
                        case 1751216244:
                          v164 = 1080;
                          break;
                        case 1935832172:
                          goto LABEL_205;
                        default:
                          v164 = 1040;
                          switch(SInt32)
                          {
                            case 1986618469:
                              goto LABEL_209;
                            case 1952807028:
LABEL_205:
                              v164 = 1056;
                              break;
                            case 1936684398:
                              v164 = 1036;
                              break;
                            default:
                              goto LABEL_220;
                          }

                          break;
                      }

LABEL_209:
                      v165 = *(v163 + v164);
                      if (v165)
                      {
                        if (v162 != v165)
                        {
                          v166 = OUTLINED_FUNCTION_195_0();
                          CFArrayRemoveValueAtIndex(v166, v167);
                        }

                        UInt32 = (UInt32 - 1);
                        if (UInt32 <= 1)
                        {
                          v2 = DataChannelByIndex;
                          goto LABEL_215;
                        }

                        continue;
                      }

                      break;
                    }

LABEL_220:
                    v2 = 0;
LABEL_215:
                    if (CFArrayGetCount(ValueAtIndex) == 1)
                    {
                      DataChannelByIndex = v2;
                    }

                    else
                    {
                      DataChannelByIndex = 0;
                    }

                    if (++v4 < CFArrayGetCount(v16))
                    {
                      continue;
                    }

                    break;
                  }

                  LODWORD(v434[0]) = v2;
                  if (!DataChannelByIndex)
                  {
                    OUTLINED_FUNCTION_158_0();
LABEL_222:
                    DerivedStorage = 0;
                    OUTLINED_FUNCTION_366_0();
LABEL_224:
                    v169 = v168 == 0;
                    goto LABEL_225;
                  }

LABEL_248:
                  DerivedStorage = FigCFDictionaryCopyArrayOfValues();
                  v4 = 0;
                  OUTLINED_FUNCTION_366_0();
                  if (DerivedStorage)
                  {
LABEL_249:
                    v171 = CFArrayGetCount(DerivedStorage);
                    goto LABEL_251;
                  }

LABEL_250:
                  v171 = 0;
LABEL_251:
                  if (v4 >= v171)
                  {
                    break;
                  }

                  tagCollection.value = 0;
                  CFArrayGetValueAtIndex(DerivedStorage, v4);
                  LODWORD(newCollectionOut.value) = 0;
                  FigCFArrayGetInt32AtIndex();
                  if (LODWORD(newCollectionOut.value))
                  {
                    TrackStorage = itemfig_getTrackStorage(v2, LODWORD(newCollectionOut.value), &tagCollection);
                    if (TrackStorage)
                    {
                      goto LABEL_274;
                    }

                    ValueAtIndex = tagCollection.value;
                    CFArrayAppendValue(*(tagCollection.value + 216), value);
                    if (!FigCFArrayContainsInt32())
                    {
                      FigCFArrayAppendInt32();
                    }

                    OUTLINED_FUNCTION_33();
                    v173 = v173 || v172 == 1635088502;
                    if (v173)
                    {
                      v174 = *(ValueAtIndex + 208);
                      if (v174)
                      {
                        if (CFArrayGetCount(v174) >= 1)
                        {
                          v175 = *(ValueAtIndex + 232);
                          if (v175)
                          {
                            CFRelease(v175);
                            *(ValueAtIndex + 232) = 0;
                          }

                          v176 = OUTLINED_FUNCTION_383();
                          *(ValueAtIndex + 232) = CFArrayCreateMutableCopy(v176, v177, v178);
                        }
                      }
                    }

                    ++v4;
                    if (DerivedStorage)
                    {
                      goto LABEL_249;
                    }

                    goto LABEL_250;
                  }

                  OUTLINED_FUNCTION_41_0();
                  TrackStorage = FigSignalErrorAtGM();
LABEL_274:
                  UInt32 = 0;
LABEL_245:
                  v4 = 0;
                  if (!TrackStorage)
                  {
                    goto LABEL_271;
                  }

                  v169 = 1;
LABEL_225:
                  if (value_low)
                  {
                    CFRelease(value_low);
                  }

                  if (*&v475.category)
                  {
                    CFRelease(*&v475.category);
                  }

                  if (UInt32)
                  {
                    CFRelease(UInt32);
                  }

                  if (v4)
                  {
                    CFRelease(v4);
                  }

                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  if (DerivedStorage)
                  {
                    CFRelease(DerivedStorage);
                  }

                  if (!v169)
                  {
                    goto LABEL_282;
                  }

                  if (++DataChannelByIndex == v439)
                  {
                    goto LABEL_276;
                  }
                }

                if (keya)
                {
                  CFArrayAppendValue(*(v136 + 1128), value);
                }

                OUTLINED_FUNCTION_158_0();
LABEL_271:
                v168 = v434[0];
                goto LABEL_224;
              }
            }

LABEL_276:
            LODWORD(newCollectionOut.value) = 0;
            LOBYTE(v465.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value_low = LODWORD(newCollectionOut.value);
            v4 = LOBYTE(v465.value);
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v465.value);
            OUTLINED_FUNCTION_425();
            if (v173)
            {
              v181 = v180;
            }

            else
            {
              v181 = value_low;
            }

            if (v181)
            {
              LODWORD(tagCollection.value) = v413;
              *(&tagCollection.value + 4) = "itemfig_createRenderTriplesForMultichannelVideoTargets";
              LOWORD(tagCollection.flags) = 2112;
              *(&tagCollection.flags + 2) = v459;
              LODWORD(v378) = 22;
              p_tagCollection = &tagCollection;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
              value_low = LODWORD(newCollectionOut.value);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_635();
LABEL_282:
            if (v459)
            {
              CFRelease(v459);
              v459 = 0;
            }

            v132 = v421 + 1;
            v8 = MEMORY[0x1E695E480];
          }

          while (v421 + 1 != v416);
        }

        v182 = *(v419 + 1128);
        if (v182 && CFArrayGetCount(v182) >= 1)
        {
          v183 = CMBaseObjectGetDerivedStorage();
          v10 = v418;
          if (*(v183 + 1120))
          {
LABEL_294:
            value_low = CMBaseObjectGetDerivedStorage();
            tagCollection.value = 0;
            newCollectionOut.value = 0;
            v475 = *MEMORY[0x1E6963198];
            v8 = MEMORY[0x1E695E480];
            v186 = CMTagCollectionCreate(*MEMORY[0x1E695E480], &v475, 1, &newCollectionOut);
            if (v186)
            {
              v193 = v186;
              goto LABEL_577;
            }

            v187 = *(value_low + 1128);
            if (!v187 || CFArrayGetCount(v187) < 1)
            {
              v193 = 0;
              goto LABEL_577;
            }

            v4 = @"FDCR_ProcessingStateDidChange";
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(value_low + 1128), 0);
              if (!CFDictionaryContainsKey(*(value_low + 1136), ValueAtIndex))
              {
                if (!*(value_low + 1120))
                {
                  OUTLINED_FUNCTION_41_0();
                  v190 = FigSignalErrorAtGM();
LABEL_607:
                  v193 = v190;
                  goto LABEL_575;
                }

                if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
                {
                  v193 = -12782;
LABEL_575:
                  v2 = v444;
LABEL_576:
                  v10 = v418;
                  v8 = MEMORY[0x1E695E480];
LABEL_577:
                  v427 = v193;
                  if (newCollectionOut.value)
                  {
                    CFRelease(newCollectionOut.value);
                    v193 = v427;
                  }

                  if (tagCollection.value)
                  {
                    CFRelease(tagCollection.value);
                    v193 = v427;
                  }

                  if (!v193)
                  {
                    LODWORD(v425) = 0;
                    goto LABEL_311;
                  }

LABEL_604:
                  v8 = 0;
                  OUTLINED_FUNCTION_15_0();
                  goto LABEL_532;
                }

                v188 = OUTLINED_FUNCTION_249();
                v190 = v189(v188);
                if (v190)
                {
                  goto LABEL_607;
                }

                CMNotificationCenterGetDefaultLocalCenter();
                OUTLINED_FUNCTION_186();
                v190 = FigNotificationCenterAddWeakListener();
                if (v190)
                {
                  goto LABEL_607;
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                {
                  v191 = OUTLINED_FUNCTION_732();
                  v192(v191);
                }

                CFDictionarySetValue(*(value_low + 1136), ValueAtIndex, tagCollection.value);
                v2 = v444;
                if (tagCollection.value)
                {
                  CFRelease(tagCollection.value);
                  tagCollection.value = 0;
                }
              }

              OUTLINED_FUNCTION_378_0();
              if (v173)
              {
                v193 = 0;
                goto LABEL_576;
              }
            }
          }

          value_low = v183;
          v8 = *(v183 + 128);
          if (v8)
          {
            if (*(v183 + 1097))
            {
              *&v475.category = 0;
              v4 = *(v183 + 1104);
              if (*(*(CMBaseObjectGetVTable() + 16) + 32))
              {
                v184 = OUTLINED_FUNCTION_266();
                v10 = v418;
                if (v185(v184))
                {
                  goto LABEL_604;
                }

                goto LABEL_294;
              }

              v8 = 0;
              OUTLINED_FUNCTION_15_0();
              OUTLINED_FUNCTION_311_0();
LABEL_568:
              v10 = v418;
              goto LABEL_532;
            }

            v8 = 0;
          }

          OUTLINED_FUNCTION_15_0();
          goto LABEL_532;
        }

        itemfig_releaseAIMEDataAndAllAIMEDataChannelResources();
        v10 = v418;
LABEL_311:
        v194 = *(v419 + 1088);
        if (!v194 || (v195 = CFArrayGetCount(v194), v195 < 1))
        {
          OUTLINED_FUNCTION_164_0();
          ValueAtIndex = 0;
          UInt32 = 0;
          DerivedStorage = 0;
          v433 = 0;
LABEL_513:
          if (v407)
          {
            *v407 = v433;
            v16 = 0;
          }

          else
          {
            v16 = v433;
          }

          if (v409)
          {
            *v409 = DerivedStorage;
            DerivedStorage = 0;
          }

          OUTLINED_FUNCTION_157_0();
          if (v412)
          {
            *v373 = UInt32;
            UInt32 = 0;
          }

          goto LABEL_532;
        }

        v196 = v195;
        v4 = 0;
        v433 = 0;
        DerivedStorage = 0;
        UInt32 = 0;
        ValueAtIndex = 0;
        value_low = 0;
        v197 = v8;
        v8 = 0;
        allocatora = *v197;
        v397 = @"ChannelDescription";
        v395 = &v461[1];
        v403 = @"DemuxLayerID";
        v389 = @"PreventDisplaySleepDuringVideoPlayback";
        v401 = *MEMORY[0x1E695E4D0];
        v399 = *MEMORY[0x1E695E4C0];
        v383 = @"VideoEnhancementMode";
        v387 = @"ObeyEmptyMediaMarkers";
        v385 = @"PropagatePerFrameHDRDisplayMetadata";
        v393 = @"AttachmentCollectorMetadataSourceBuffers";
        v391 = @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs";
        v404 = @"ControlTimebase";
        v430 = @"SampleBufferConsumer";
        v402 = @"OutputArrayOfSampleBufferConsumers";
        v440 = v195;
        while (1)
        {
          v457 = 0;
          v456 = 0;
          FigCFArrayGetInt32AtIndex();
          itemfig_getTrackStorage(v2, v457, &v456);
          if (!v456)
          {
LABEL_586:
            OUTLINED_FUNCTION_41_0();
            FigSignalErrorAtGM();
LABEL_587:
            OUTLINED_FUNCTION_157_0();
            goto LABEL_588;
          }

          v198 = *(v456 + 27);
          if (v198)
          {
            *&v441.category = v456;
            if (CFArrayGetCount(v198) >= 1)
            {
              OUTLINED_FUNCTION_33();
              v209 = v173 || v207 == 1635088502;
              theArrayc = UInt32;
              v417 = v4;
              if (!v209)
              {
                if (!DerivedStorage)
                {
                  v210 = OUTLINED_FUNCTION_391_0(v199, v200, v201, v202, v203, v204, v205, v206, p_tagCollection, v378, v380, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v402, v403, v404, v405, v406, v407, v409, v412, v413, *(&v413 + 1), v414, v415, v4, v418, v419, v421, value, v425, v430, v433, v434[0], v434[1], theDict, v440, *&v441.category, v441.value, v444, allocatora);
                  v212 = CFArrayCreateMutable(v210, v211, &_MergedGlobals);
                  v208 = *&v441.category;
                  DerivedStorage = v212;
                  if (!v212)
                  {
                    goto LABEL_586;
                  }
                }

                v213 = *(v208 + 264);
                if (v213)
                {
                  CFRelease(v213);
                  v208 = *&v441.category;
                  *(*&v441.category + 264) = 0;
                }

                if (!*(v208 + 240))
                {
                  v214 = OUTLINED_FUNCTION_391_0(v213, v200, v201, v202, v203, v204, v205, v206, p_tagCollection, v378, v380, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v402, v403, v404, v405, v406, v407, v409, v412, v413, *(&v413 + 1), v414, v415, v417, v418, v419, v421, value, v425, v430, v433, v434[0], v434[1], theDict, v440, *&v441.category, v441.value, v444, allocatora);
                  v216 = CFDictionaryCreateMutable(v214, v215, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v208 = *&v441.category;
                  *(*&v441.category + 240) = v216;
                  if (!v216)
                  {
                    goto LABEL_586;
                  }
                }

                LODWORD(v460) = *v208;
                *v434 = *MEMORY[0x1E6960C70];
                v475 = *MEMORY[0x1E6960C70];
                v4 = *(MEMORY[0x1E6960C70] + 16);
                OUTLINED_FUNCTION_183_0();
                v217 = OUTLINED_FUNCTION_490();
                if (fp_createCommonRenderPipelineOptionsForTrack(v217, v218, v219, v220, v221, 0, v222))
                {
                  goto LABEL_587;
                }

                itemfig_reuseExistingRenderPipeline(*(v419 + 448), &v460);
                v223 = v461[1];
                v224 = *&v441.category;
                if (!v461[1])
                {
                  v475 = *v434;
                  OUTLINED_FUNCTION_183_0();
                  v270 = OUTLINED_FUNCTION_490();
                  CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v270, v271, v272, v273, v274, 1, v275);
                  if (CommonRenderPipelineOptionsForTrack)
                  {
                    goto LABEL_587;
                  }

                  v284 = OUTLINED_FUNCTION_391_0(CommonRenderPipelineOptionsForTrack, v277, v278, v279, v280, v281, v282, v283, p_tagCollection, v378, v380, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v402, v403, v404, v405, v406, v407, v409, v412, v413, *(&v413 + 1), v414, v415, v417, v418, v419, v421, value, v425, v430, v433, v434[0], v434[1], theDict, v440, *&v441.category, v441.value, v444, allocatora);
                  if (FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers(v284, v285, v395))
                  {
                    goto LABEL_587;
                  }

                  v223 = v461[1];
                  v224 = *&v441.category;
                }

                *&v413 = v223;
                v225 = *(v224 + 216);
                theDict = *(v224 + 240);
                v421 = CMBaseObjectGetDerivedStorage();
                cf = 0;
                *type = 0;
                *&newCollectionOut.value = *v434;
                newCollectionOut.epoch = v4;
                *&v465.value = *v434;
                v465.epoch = v4;
                v226 = v225;
                FPSupport_getDataQueueWaterLevels(&newCollectionOut, &v465);
                if (v225)
                {
                  v235 = CFArrayGetCount(v225);
                  v434[0] = CFArrayCreateMutable(allocatora, v235, MEMORY[0x1E695E9C0]);
                  if (v434[0])
                  {
                    if (v235 >= 1)
                    {
                      value = v235;
                      v425 = v226;
                      v236 = 0;
                      while (1)
                      {
                        v237 = CFArrayGetValueAtIndex(v425, v236);
                        v238 = CFDictionaryGetValue(theDict, v237);
                        cf = v238;
                        if (v238)
                        {
                          CFRetain(v238);
                        }

                        else
                        {
                          v464 = v465;
                          v463 = newCollectionOut;
                          v196 = v440;
                          if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
                          {
                            break;
                          }

                          v475 = *&v464.value;
                          epoch = v464.epoch;
                          tagCollection = v463;
                          v239 = OUTLINED_FUNCTION_266_0();
                          v241 = v240(v239);
                          if (v241)
                          {
                            LODWORD(v425) = v241;
                            v2 = v444;
                            UInt32 = theArrayc;
LABEL_354:
                            v196 = v440;
                            goto LABEL_355;
                          }

                          v242 = *(v421 + 328);
                          CMBaseObject = FigDataQueueGetCMBaseObject(cf);
                          v244 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                          if (v244)
                          {
                            v244(CMBaseObject, v404, v242);
                          }

                          CFDictionarySetValue(theDict, v237, cf);
                          UInt32 = theArrayc;
                        }

                        v196 = v440;
                        v245 = FigDataQueueGetCMBaseObject(cf);
                        v246 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (!v246)
                        {
                          break;
                        }

                        v247 = v246(v245, v430, allocatora, type);
                        if (v247)
                        {
                          LODWORD(v425) = v247;
                          goto LABEL_352;
                        }

                        CFArrayAppendValue(v434[0], *type);
                        v2 = v444;
                        if (cf)
                        {
                          CFRelease(cf);
                          cf = 0;
                        }

                        if (*type)
                        {
                          CFRelease(*type);
                          *type = 0;
                        }

                        if (value == ++v236)
                        {
                          goto LABEL_349;
                        }
                      }

                      OUTLINED_FUNCTION_311_0();
LABEL_352:
                      v2 = v444;
                      goto LABEL_355;
                    }

LABEL_349:
                    FigBaseObject = FigRenderPipelineGetFigBaseObject(v413);
                    v251 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (!v251)
                    {
                      OUTLINED_FUNCTION_311_0();
                      goto LABEL_354;
                    }

                    v196 = v440;
                    LODWORD(v425) = v251(FigBaseObject, v402, v434[0]);
LABEL_355:
                    CFRelease(v434[0]);
                    v4 = v417;
                    if (cf)
                    {
                      CFRelease(cf);
                    }

LABEL_357:
                    if (*type)
                    {
                      CFRelease(*type);
                    }

                    if (v425)
                    {
                      goto LABEL_587;
                    }

                    v252 = v461[1];
                    if (v461[1])
                    {
                      v252 = CFRetain(v461[1]);
                    }

                    *(*&v441.category + 264) = v252;
                    CFArrayAppendValue(DerivedStorage, &v460);
                    itemfig_resetRenderTriple(&v460);
                    LODWORD(v425) = 0;
                    goto LABEL_363;
                  }
                }

                else
                {
                  v248 = OUTLINED_FUNCTION_391_0(v227, v228, v229, v230, v231, v232, v233, v234, p_tagCollection, v378, v380, v381, v383, v385, v387, v389, v391, v393, v395, v397, v399, v401, v402, v403, v404, v405, v406, v407, v409, v412, v413, *(&v413 + 1), v414, v415, v417, v418, v419, v421, value, v425, v430, v433, v434[0], v434[1], theDict, v440, *&v441.category, v441.value, v444, allocatora);
                  v434[0] = CFArrayCreateMutable(v248, v249, MEMORY[0x1E695E9C0]);
                  if (v434[0])
                  {
                    goto LABEL_349;
                  }
                }

                OUTLINED_FUNCTION_41_0();
                LODWORD(v425) = FigSignalErrorAtGM();
                v4 = v417;
                v196 = v440;
                goto LABEL_357;
              }

              *&v475.category = 0;
              tagCollection.value = 0;
              newCollectionOut.value = 0;
              itemfig_getTrackStorage(v2, v457, &v475);
              v4 = *&v475.category;
              if (*&v475.category)
              {
                if (!FigTagCollectionCreateMutableCopy())
                {
                  if (*(v4 + 200))
                  {
                    FigTagCollectionAddTagsFromCollection();
                  }

                  v253 = *(v4 + 272);
                  if (v253)
                  {
                    CFRelease(v253);
                    *(v4 + 272) = 0;
                  }

                  v254 = *(v4 + 216);
                  if (v254)
                  {
                    v255 = CFArrayGetCount(v254);
                    if (v255 >= 1)
                    {
                      v256 = v255;
                      v257 = 0;
                      theDict = v4;
                      do
                      {
                        v258 = CFArrayGetValueAtIndex(*(v4 + 216), v257);
                        v259 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                        if (v259)
                        {
                          v259(v258, allocatora, &newCollectionOut);
                        }

                        if (newCollectionOut.value)
                        {
                          v260 = CFArrayGetCount(newCollectionOut.value);
                          if (v260 >= 1)
                          {
                            v261 = v260;
                            v262 = 0;
                            while (1)
                            {
                              v263 = CFArrayGetValueAtIndex(newCollectionOut.value, v262);
                              v264 = CFDictionaryGetValue(v263, v397);
                              if (CMTagCollectionContainsTagsOfCollection(tagCollection.value, v264))
                              {
                                v265 = CFDictionaryGetValue(v263, @"ChannelSpecificSettings");
                                v266 = CFDictionaryGetValue(v265, @"DestinationPixelBufferAttributes");
                                if (v266)
                                {
                                  break;
                                }
                              }

                              if (v261 == ++v262)
                              {
                                goto LABEL_385;
                              }
                            }

                            v267 = *(theDict + 34);
                            *(theDict + 34) = v266;
                            CFRetain(v266);
                            if (v267)
                            {
                              CFRelease(v267);
                            }
                          }

LABEL_385:
                          UInt32 = theArrayc;
                          v4 = theDict;
                          if (newCollectionOut.value)
                          {
                            CFRelease(newCollectionOut.value);
                            newCollectionOut.value = 0;
                          }
                        }

                        ++v257;
                      }

                      while (v257 != v256);
                    }
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_41_0();
                FigSignalErrorAtGM();
              }

              if (tagCollection.value)
              {
                CFRelease(tagCollection.value);
              }

              v2 = v406;
              v268 = allocatora;
              if (HIDWORD(v414))
              {
                v269 = *(*&v441.category + 272);
                if (v269)
                {
                  v4 = CFRetain(v269);
                }

                else
                {
                  FigSimpleMutexLock();
                  v286 = *(v406 + 504);
                  if (v286)
                  {
                    v4 = CFRetain(v286);
                  }

                  else
                  {
                    v4 = 0;
                  }

                  FigSimpleMutexUnlock();
                }

                v287 = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v4, 1, &v458);
                if (v4)
                {
                  v288 = v287;
                  CFRelease(v4);
                  v287 = v288;
                }

                if (v287)
                {
LABEL_600:
                  OUTLINED_FUNCTION_157_0();
                  v10 = v418;
                  UInt32 = theArrayc;
                  goto LABEL_589;
                }
              }

              if (_os_feature_enabled_impl())
              {
                *&v475.category = 0;
                if (itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(v444, v457, v456 + 32, &v475))
                {
                  goto LABEL_583;
                }

                if (*&v475.category)
                {
                  LODWORD(theDict) = CFArrayGetCount(*&v475.category) > 0;
                }

                else
                {
                  LODWORD(theDict) = 0;
                }

                UInt32 = theArrayc;
                if (theArrayc)
                {
                  FigCFArrayAppendArray();
                  if (*&v475.category)
                  {
                    CFRelease(*&v475.category);
                  }
                }

                else
                {
                  UInt32 = *&v475.category;
                }

                v268 = allocatora;
                v2 = v406;
              }

              else
              {
                LODWORD(theDict) = 0;
              }

              theArrayc = UInt32;
              if (!v433)
              {
                v289 = OUTLINED_FUNCTION_165_0();
                v433 = CFArrayCreateMutable(v289, v290, &_MergedGlobals);
                if (!v433)
                {
                  OUTLINED_FUNCTION_41_0();
                  FigSignalErrorAtGM();
                  OUTLINED_FUNCTION_157_0();
                  v433 = 0;
                  goto LABEL_584;
                }
              }

              v291 = v456;
              v292 = *(v456 + 31);
              if (v292)
              {
                CFRelease(v292);
                *(v291 + 31) = 0;
              }

              v293 = *(v291 + 28);
              if (v293)
              {
                CFArrayRemoveAllValues(v293);
              }

              else
              {
                v294 = OUTLINED_FUNCTION_165_0();
                *(v291 + 28) = CFArrayCreateMutable(v294, v295, MEMORY[0x1E695E9C0]);
              }

              v296 = *(v291 + 29);
              if (v296)
              {
                v296 = CFArrayGetCount(v296);
              }

              if (v296 <= 1)
              {
                v4 = 1;
              }

              else
              {
                v4 = v296;
              }

              if (v4 >= 1)
              {
                while (1)
                {
                  if (ValueAtIndex)
                  {
                    CFRelease(ValueAtIndex);
                  }

                  UInt32 = theArrayc;
                  if (v8)
                  {
                    CFRelease(v8);
                  }

                  if (value_low)
                  {
                    CFRelease(value_low);
                  }

                  if (*(v2 + 972))
                  {
                    value_low = CFStringCreateWithCString(v268, (v2 + 972), 0x600u);
                    AllocatorForMedia = FigGetAllocatorForMedia();
                    p_tagCollection = value_low;
                    v378 = v4;
                    v8 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@.%d");
                    ValueAtIndex = CFDictionaryCreateMutable(v268, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!ValueAtIndex)
                    {
                      goto LABEL_586;
                    }

                    FigCFDictionarySetValue();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_164_0();
                    ValueAtIndex = 0;
                  }

                  *&v475.category = 0;
                  if (FigImageQueueTableCreateWithOptions(v268, ValueAtIndex, &v475))
                  {
                    break;
                  }

                  v291 = v456;
                  CFArrayAppendValue(*(v456 + 28), *&v475.category);
                  if (*&v475.category)
                  {
                    CFRelease(*&v475.category);
                  }

                  if (v4-- <= 1)
                  {
                    goto LABEL_433;
                  }
                }

LABEL_583:
                OUTLINED_FUNCTION_157_0();
LABEL_584:
                UInt32 = theArrayc;
LABEL_588:
                v10 = v418;
LABEL_589:
                v16 = v433;
                goto LABEL_532;
              }

LABEL_433:
              LODWORD(v460) = *v291;
              v441 = *MEMORY[0x1E6960C70];
              v475 = *MEMORY[0x1E6960C70];
              v4 = *(MEMORY[0x1E6960C70] + 16);
              OUTLINED_FUNCTION_183_0();
              OUTLINED_FUNCTION_410();
              OUTLINED_FUNCTION_263_0();
              if (fp_createCommonRenderPipelineOptionsForTrack(v299, v300, v301, v302, v303, 0, v304))
              {
                goto LABEL_583;
              }

              if (!v461[1])
              {
                tagCollection.value = 0;
                v475 = v441;
                OUTLINED_FUNCTION_183_0();
                OUTLINED_FUNCTION_410();
                OUTLINED_FUNCTION_263_0();
                if (fp_createCommonRenderPipelineOptionsForTrack(v305, v306, v307, v308, v309, 1, v310))
                {
                  goto LABEL_583;
                }

                v311 = *(v291 + 28);
                if (v311 && CFArrayGetCount(v311) == 1 && ((v312 = *(v291 + 29)) == 0 || !CFArrayGetCount(v312)))
                {
                  v358 = CFArrayGetValueAtIndex(*(v291 + 28), 0);
                  v377 = *(v291 + 27);
                  v379 = v358;
                  OUTLINED_FUNCTION_19();
                  if (fp_createFigImageQueueArrayForVideoRenderPipeline(v359, v360, v361, v362, v363, v364, v365, v366, v377, v379, 1, &tagCollection))
                  {
                    goto LABEL_600;
                  }

                  v4 = 0;
                  v2 = tagCollection.value;
                }

                else
                {
                  v313 = OUTLINED_FUNCTION_165_0();
                  v314 = MEMORY[0x1E695E9C0];
                  v2 = CFArrayCreateMutable(v313, v315, MEMORY[0x1E695E9C0]);
                  v316 = OUTLINED_FUNCTION_165_0();
                  v318 = CFArrayCreateMutable(v316, v317, v314);
                  v4 = v318;
                  if (!v2 || !v318)
                  {
LABEL_610:
                    OUTLINED_FUNCTION_41_0();
                    FigSignalErrorAtGM();
                    goto LABEL_584;
                  }

                  for (i = 0; ; i = v443 + 1)
                  {
                    v320 = *(v291 + 28);
                    if (v320)
                    {
                      v320 = CFArrayGetCount(v320);
                    }

                    if (i >= v320)
                    {
                      break;
                    }

                    newCollectionOut.value = 0;
                    v443 = i;
                    v321 = CFArrayGetValueAtIndex(*(v291 + 28), i);
                    OUTLINED_FUNCTION_75_0();
                    if (FigImageQueueTableUpdateToMatchOutputsArray(v322, v323, v324, v325, fp_imageQueueTableWillReleaseImageQueueCallback, v444) || FigImageQueueTableCopyFigImageQueueArray(v321, &newCollectionOut.value))
                    {
                      goto LABEL_584;
                    }

                    v326 = CFArrayGetCount(newCollectionOut.value);
                    v481.location = 0;
                    v481.length = v326;
                    CFArrayAppendArray(v2, newCollectionOut.value, v481);
                    if (newCollectionOut.value)
                    {
                      CFRelease(newCollectionOut.value);
                    }

                    if (v326 >= 1)
                    {
                      v327 = *(v291 + 29);
                      if (v327)
                      {
                        v327 = CFArrayGetCount(v327);
                      }

                      if (v443 < v327)
                      {
                        *&v475.category = 0;
                        v475.value = 0;
                        v465.value = 0;
                        if (!FigCFArrayGetValueAtIndex())
                        {
                          goto LABEL_610;
                        }

                        FigTagCollectionGetTagsWithCategory();
                        if (v465.value != 1)
                        {
                          goto LABEL_610;
                        }

                        FigTagGetSInt64Value();
                        v328 = OUTLINED_FUNCTION_165_0();
                        v330 = CFDictionaryCreateMutable(v328, v329, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v330)
                        {
                          goto LABEL_610;
                        }

                        v331 = v330;
                        FigCFDictionarySetInt32();
                        v332 = v326 + 1;
                        do
                        {
                          CFArrayAppendValue(v4, v331);
                          --v332;
                        }

                        while (v332 > 1);
                        CFRelease(v331);
                      }
                    }
                  }

                  tagCollection.value = v2;
                }

                v333 = fp_buildVideoRenderPipelineForTrack(v405, v444, *v291, v458, 0, *(v291 + 3), 0, 1, v2, v4, theDict, v395);
                if (tagCollection.value)
                {
                  v334 = v333;
                  CFRelease(tagCollection.value);
                  v333 = v334;
                }

                v2 = v406;
                if (v4)
                {
                  v335 = v333;
                  CFRelease(v4);
                  v333 = v335;
                }

                if (v333)
                {
                  goto LABEL_583;
                }
              }

              if (v458)
              {
                CFRelease(v458);
                v458 = 0;
              }

              v336 = v461[1];
              if (v461[1])
              {
                v336 = CFRetain(v461[1]);
              }

              *(v291 + 31) = v336;
              CFArrayAppendValue(v433, &v460);
              itemfig_resetRenderTriple(&v460);
              v337 = 0;
              UInt32 = theArrayc;
              v338 = v456;
              while (1)
              {
                v339 = *(v338 + 28);
                if (v339)
                {
                  v339 = CFArrayGetCount(v339);
                }

                if (v337 >= v339)
                {
                  break;
                }

                v340 = CFArrayGetValueAtIndex(*(v338 + 28), v337);
                FigImageQueueTableSetTimebase(v340, *(v419 + 328));
                ++v337;
              }

              if (*(v2 + 240))
              {
                v341 = v401;
              }

              else
              {
                v341 = v399;
              }

              v342 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
              v343 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v343)
              {
                v343(v342, v389, v341);
              }

              v344 = *(v419 + 1184);
              if (v344)
              {
                v345 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
                v346 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v346)
                {
                  v346(v345, v383, v344);
                }
              }

              v347 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
              v348 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v348)
              {
                v348(v347, v387, v401);
              }

              if (*(v419 + 1192))
              {
                v349 = v401;
              }

              else
              {
                v349 = v399;
              }

              v350 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
              v351 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v351)
              {
                v351(v350, v385, v349);
              }

              itemfig_updateRotationOnVideoRenderPipeline(v444, *v338);
              itemfig_applyEnhancementFilterOptions();
              itemfig_applyDisableColorMatching();
              v352 = *(v338 + 32);
              v353 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
              v354 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v354)
              {
                v354(v353, v393, v352);
              }

              v355 = *(v338 + 35);
              v356 = FigRenderPipelineGetFigBaseObject(*(v338 + 31));
              v357 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              v10 = v418;
              if (v357)
              {
                v196 = v440;
                v357(v356, v391, v355);
                LODWORD(v425) = 0;
                v2 = v444;
              }

              else
              {
                LODWORD(v425) = 0;
                v2 = v444;
                v196 = v440;
              }

              v4 = v417;
            }
          }

LABEL_363:
          if (++v4 == v196)
          {
            goto LABEL_513;
          }
        }
      }

      v8 = 0;
    }

    else
    {
      FigSimpleMutexUnlock();
      OUTLINED_FUNCTION_164_0();
    }

    ValueAtIndex = 0;
    UInt32 = 0;
    OUTLINED_FUNCTION_157_0();
    DerivedStorage = 0;
    OUTLINED_FUNCTION_256_0();
    goto LABEL_532;
  }

  v21 = v16;
  UInt32 = CMBaseObjectGetDerivedStorage();
  v22 = CMBaseObjectGetDerivedStorage();
  v464.value = 0;
  v463.value = 0;
  DerivedStorage = *v20;
  v23 = CFArrayCreateMutable(*v20, 0, &_MergedGlobals);
  if (!v23)
  {
    OUTLINED_FUNCTION_41_0();
    FigSignalErrorAtGM();
LABEL_593:
    v28 = 0;
    value_low = 0;
    goto LABEL_525;
  }

  v24 = v23;
  v25 = v2;
  alloc = DerivedStorage;
  v26 = CFArrayCreateMutable(DerivedStorage, 0, &_MergedGlobals);
  if (!v26)
  {
    OUTLINED_FUNCTION_41_0();
    FigSignalErrorAtGM();
    CFRelease(v24);
    goto LABEL_593;
  }

  DerivedStorage = v26;
  v2 = v16;
  if (!_os_feature_enabled_impl() || itemfig_countOfEnabledVideoTracks() != 1)
  {
    goto LABEL_8;
  }

  if (itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(v16, *(UInt32 + 260), UInt32 + 276, &v464))
  {
    v438 = 0;
    v28 = 0;
    goto LABEL_520;
  }

  if (v464.value)
  {
    v27 = CFArrayGetCount(v464.value) > 0;
  }

  else
  {
LABEL_8:
    v27 = 0;
  }

  if (UInt32[82] && theArray && UInt32[103])
  {
    v374 = OUTLINED_FUNCTION_732();
    v28 = 0;
    v438 = 0;
    if (!itemfig_reuseRenderTriplesForVideoComposition(v374, v375, DerivedStorage, v442))
    {
      UInt32 = ValueAtIndex;
      goto LABEL_523;
    }

    goto LABEL_520;
  }

  v422 = v27;
  v411 = v25;
  v431 = DerivedStorage;
  v435 = v24;
  v420 = v22;
  valuea = UInt32;
  if (*(v22 + 972))
  {
    v16 = alloc;
    v28 = CFStringCreateWithCString(alloc, (v22 + 972), 0x600u);
    v29 = CFDictionaryCreateMutable(alloc, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v29)
    {
      OUTLINED_FUNCTION_41_0();
      FigSignalErrorAtGM();
      v438 = 0;
      goto LABEL_520;
    }

    v30 = v29;
    v428 = v28;
    FigCFDictionarySetValue();
    v31 = v30;
  }

  else
  {
    v31 = 0;
    v428 = 0;
  }

  playeritemfig_releaseVideoCompositionObjects();
  v34 = CMBaseObjectGetDerivedStorage();
  v35 = CMBaseObjectGetDerivedStorage();
  newCollectionOut.value = 0;
  v465.value = 0;
  v36 = *(v34 + 776);
  v16 = CFGetAllocator(v21);
  v37 = *(v34 + 832);
  v38 = alloc;
  if (v37)
  {
    CFRelease(v37);
    *(v34 + 832) = 0;
  }

  v39 = *(v34 + 840);
  if (v39)
  {
    CFRelease(v39);
    *(v34 + 840) = 0;
  }

  v40 = OUTLINED_FUNCTION_165_0();
  v438 = v31;
  key = CFArrayCreateMutable(v40, v41, v42);
  v408 = ValueAtIndex;
  v410 = v4;
  if (!key)
  {
    OUTLINED_FUNCTION_41_0();
    v426 = FigSignalErrorAtGM();
    v64 = 0;
    UInt32 = 0;
    ValueAtIndex = 0;
    goto LABEL_99;
  }

  if (v36)
  {
    v43 = OUTLINED_FUNCTION_165_0();
    ValueAtIndex = CFArrayCreateMutable(v43, v44, v45);
    if (!ValueAtIndex)
    {
      goto LABEL_599;
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v46 = *(v34 + 864);
  if (v46)
  {
    CFArrayRemoveAllValues(v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_165_0();
    v50 = CFArrayCreateMutable(v47, v48, v49);
    *(v34 + 864) = v50;
    if (!v50)
    {
LABEL_599:
      OUTLINED_FUNCTION_41_0();
      v426 = FigSignalErrorAtGM();
      v64 = 0;
      goto LABEL_572;
    }
  }

  v51 = *(v34 + 856);
  if (v51)
  {
    CFArrayRemoveAllValues(v51);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_165_0();
    v55 = CFArrayCreateMutable(v52, v53, v54);
    *(v34 + 856) = v55;
    if (!v55)
    {
      goto LABEL_599;
    }
  }

  itemfig_createChannelDescriptionFromVideoCompositorOutputBufferDescription(v21, v56, v57, v58, v59, v60, v61, v62, p_tagCollection, v378, v380, v381, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400);
  v64 = v63;
  if (v36)
  {
    v65 = CFArrayGetCount(v36);
  }

  else
  {
    v65 = 0;
  }

  if (v65 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v65;
  }

  if (v4 >= 1)
  {
    v66 = v4;
    while (1)
    {
      *&v475.category = 0;
      v67 = FigImageQueueTableCreateWithOptions(v16, v31, &v475);
      if (v67)
      {
        break;
      }

      CFArrayAppendValue(*(v34 + 856), *&v475.category);
      if (*&v475.category)
      {
        CFRelease(*&v475.category);
      }

      if (!--v66)
      {
        goto LABEL_47;
      }
    }

    v426 = v67;
LABEL_572:
    UInt32 = key;
    goto LABEL_99;
  }

LABEL_47:
  FigSimpleMutexLock();
  v68 = *(v35 + 272);
  v447 = v4;
  if (!v68)
  {
    FigSimpleMutexUnlock();
    v69 = 0;
    goto LABEL_65;
  }

  v69 = CFRetain(v68);
  FigSimpleMutexUnlock();
  if (!v69)
  {
LABEL_65:
    UInt32 = key;
LABEL_66:
    v81 = *(v34 + 864);
    theArraya = v69;
    if ((!v81 || !CFArrayGetCount(v81)) && dword_1EAF16A10)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v83 = cf;
      v16 = type[0];
      os_log_type_enabled(v82, type[0]);
      OUTLINED_FUNCTION_121();
      if (v173)
      {
        v85 = v84;
      }

      else
      {
        v85 = v83;
      }

      if (v85)
      {
        if (v444)
        {
          v86 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v86 = "";
        }

        v87 = *(v34 + 776);
        LODWORD(tagCollection.value) = 136316162;
        *(&tagCollection.value + 4) = "itemfig_updateVideoProcessorImageQueueArrayForMultichannelFVTs";
        LOWORD(tagCollection.flags) = 2048;
        *(&tagCollection.flags + 2) = v444;
        HIWORD(tagCollection.epoch) = 2082;
        v470 = v86;
        v471 = 2114;
        v472 = v87;
        v473 = 2114;
        v474 = v64;
        LODWORD(v378) = 52;
        p_tagCollection = &tagCollection;
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        v4 = v447;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
      v2 = v444;
    }

    if (v4 < 1)
    {
LABEL_96:
      matched = 0;
      *(v34 + 832) = UInt32;
      *(v34 + 840) = ValueAtIndex;
      ValueAtIndex = 0;
      UInt32 = 0;
    }

    else
    {
      v88 = 0;
      while (1)
      {
        v89 = CFArrayGetValueAtIndex(*(v34 + 856), v88);
        v16 = CFArrayGetValueAtIndex(*(v34 + 776), v88);
        OUTLINED_FUNCTION_75_0();
        matched = FigImageQueueTableUpdateToMatchOutputsArray(v89, v90, v91, v92, fp_imageQueueTableWillReleaseImageQueueCallback, v2);
        if (matched)
        {
          break;
        }

        matched = FigImageQueueTableCopyFigImageQueueArray(v89, &newCollectionOut.value);
        if (matched)
        {
          break;
        }

        if (ValueAtIndex)
        {
          if (newCollectionOut.value)
          {
            v93 = CFArrayGetCount(newCollectionOut.value);
            if (v93 >= 1)
            {
              v94 = v93;
              do
              {
                CFArrayAppendValue(ValueAtIndex, v16);
                --v94;
              }

              while (v94);
            }
          }
        }

        FigCFArrayAppendArray();
        if (newCollectionOut.value)
        {
          CFRelease(newCollectionOut.value);
          newCollectionOut.value = 0;
        }

        if (++v88 == v4)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_97;
  }

  allocator = CFArrayGetCount(v69);
  UInt32 = key;
  if (allocator < 1)
  {
    goto LABEL_66;
  }

  theArraya = v69;
  v70 = 0;
  while (1)
  {
    v71 = CFArrayGetValueAtIndex(theArraya, v70);
    v72 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v72)
    {
      matched = -12782;
LABEL_77:
      v38 = alloc;
      goto LABEL_97;
    }

    matched = v72(v71, v16, &v465);
    if (matched)
    {
      v2 = v444;
      goto LABEL_77;
    }

    if (v465.value)
    {
      theDicta = CFArrayGetCount(v465.value);
      if (theDicta >= 1)
      {
        break;
      }
    }

LABEL_62:
    ++v70;
    v2 = v444;
    if (v70 == allocator)
    {
      v38 = alloc;
      v69 = theArraya;
      goto LABEL_66;
    }
  }

  v74 = 0;
  while (1)
  {
    v75 = CFArrayGetValueAtIndex(v465.value, v74);
    v76 = FigDataChannelGroupGetCountOfDataChannels(v75);
    if (v76 < 1)
    {
      break;
    }

    v77 = v76;
    v78 = 0;
    while (1)
    {
      FigDataChannelGroupGetDataChannelByIndex(v75, v78);
      v79 = OUTLINED_FUNCTION_201_0();
      if (!CMTagCollectionContainsTagsOfCollection(v79, v80))
      {
        break;
      }

      if (v77 == ++v78)
      {
        CFArrayAppendValue(*(v34 + 864), v71);
        v4 = v447;
        UInt32 = key;
        goto LABEL_62;
      }
    }

    ++v74;
    v4 = v447;
    UInt32 = key;
    if (v74 == theDicta)
    {
      goto LABEL_62;
    }
  }

  matched = 0;
  v2 = v444;
  UInt32 = key;
  v38 = alloc;
LABEL_97:
  v426 = matched;
  if (theArraya)
  {
    CFRelease(theArraya);
  }

LABEL_99:
  if (newCollectionOut.value)
  {
    CFRelease(newCollectionOut.value);
  }

  if (v465.value)
  {
    CFRelease(v465.value);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v426)
  {
    DerivedStorage = v431;
    v24 = v435;
    v28 = v428;
    goto LABEL_520;
  }

  v95 = CMBaseObjectGetDerivedStorage();
  *&v475.category = 0;
  itemfig_createChannelDescriptionFromVideoCompositorOutputBufferDescription(v2, v96, v97, v98, v99, v100, v101, v102, p_tagCollection, v378, v380, v381, v382, v384, v386, v388, v390, v392, v394, v396, v398, v400);
  v104 = v103;
  v105 = *(v95 + 872);
  if (v105)
  {
    CFRelease(v105);
    *(v95 + 872) = 0;
  }

  v106 = *(v95 + 864);
  if (!v106 || CFArrayGetCount(v106) < 1)
  {
    goto LABEL_129;
  }

  OUTLINED_FUNCTION_417_0();
  while (2)
  {
    v107 = CFArrayGetValueAtIndex(*(v95 + 864), ValueAtIndex);
    v108 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v108)
    {
      v108(v107, v38, &v475);
    }

    if (!*&v475.category)
    {
LABEL_125:
      if (++ValueAtIndex == v4)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  v109 = CFArrayGetCount(*&v475.category);
  if (v109 < 1)
  {
LABEL_123:
    v2 = v444;
    v38 = alloc;
    if (*&v475.category)
    {
      CFRelease(*&v475.category);
      *&v475.category = 0;
    }

    goto LABEL_125;
  }

  v110 = v109;
  v111 = 0;
  while (1)
  {
    v112 = CFArrayGetValueAtIndex(*&v475.category, v111);
    CFDictionaryGetValue(v112, @"ChannelDescription");
    v113 = OUTLINED_FUNCTION_201_0();
    if (CMTagCollectionContainsTagsOfCollection(v113, v114))
    {
      v115 = CFDictionaryGetValue(v112, @"ChannelSpecificSettings");
      v116 = CFDictionaryGetValue(v115, @"DestinationPixelBufferAttributes");
      if (v116)
      {
        break;
      }
    }

    if (v110 == ++v111)
    {
      goto LABEL_123;
    }
  }

  v117 = *(v95 + 872);
  *(v95 + 872) = v116;
  CFRetain(v116);
  v2 = v444;
  if (v117)
  {
    CFRelease(v117);
  }

LABEL_129:
  if (v104)
  {
    CFRelease(v104);
  }

  v4 = v410;
  v25 = v411;
  UInt32 = v408;
  DerivedStorage = v431;
  v24 = v435;
  ValueAtIndex = v442;
  v28 = v428;
  v16 = valuea;
  if (*&v475.category)
  {
    CFRelease(*&v475.category);
  }

  if (!HIDWORD(v414))
  {
    goto LABEL_620;
  }

  v118 = valuea[109];
  if (v118)
  {
    v119 = CFRetain(v118);
  }

  else
  {
    FigSimpleMutexLock();
    v16 = v420;
    v120 = *(v420 + 504);
    if (v120)
    {
      v119 = CFRetain(v120);
    }

    else
    {
      v119 = 0;
    }

    FigSimpleMutexUnlock();
  }

  v367 = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v119, 1, &v463);
  if (v119)
  {
    v368 = v119;
    v369 = v367;
    CFRelease(v368);
    v367 = v369;
  }

  if (!v367)
  {
LABEL_620:
    v370 = OUTLINED_FUNCTION_489();
    if (!itemfig_createRenderTriplesForVideoComposition(v370, v371, v372, v422, v438, v435, v431))
    {
LABEL_523:
      *UInt32 = v24;
      *v4 = DerivedStorage;
      *v25 = v464.value;
      v464.value = 0;
      goto LABEL_524;
    }
  }

LABEL_520:
  CFRelease(v24);
  CFRelease(DerivedStorage);
  if (v464.value)
  {
    CFRelease(v464.value);
  }

LABEL_524:
  value_low = v438;
LABEL_525:
  if (v463.value)
  {
    CFRelease(v463.value);
  }

  if (value_low)
  {
    CFRelease(value_low);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v8 = 0;
  OUTLINED_FUNCTION_15_0();
  v10 = 0;
LABEL_532:
  itemfig_resetRenderTriple(&v460);
  if (v458)
  {
    CFRelease(v458);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (DerivedStorage)
  {
    CFRelease(DerivedStorage);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v459)
  {
    CFRelease(v459);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (value_low)
  {
    CFRelease(value_low);
  }

  OUTLINED_FUNCTION_651();
}

void itemfig_ReportAudioPlaybackThroughFigLog(uint64_t a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v86 = 0;
  cf = 0;
  desc = 0;
  v82 = 0;
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
    v4 = OUTLINED_FUNCTION_283_0();
    if (v4)
    {
      if (!*CMBaseObjectGetDerivedStorage())
      {
        v5 = *(v1 + 1036);
        if (v5)
        {
          v6 = *(v1 + 1008);
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v7)
          {
            if (!v7(v6, v5, &v85, 0) && !itemfig_copyFormatDescription(v85, &desc))
            {
              v8 = desc;
              RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
              if (RichestDecodableFormat)
              {
                v10 = RichestDecodableFormat;
                if (!itemfig_getTrackStorage(a1, *(v1 + 1036), &v86))
                {
                  v11 = *(v86 + 16);
                  if (v11)
                  {
                    FigBaseObject = FigRenderPipelineGetFigBaseObject(v11);
                    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v13)
                    {
                      v13(FigBaseObject, @"SpatializationEnabled", *MEMORY[0x1E695E480], &cf);
                    }

                    AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(v8, &v82);
                    v15 = OUTLINED_FUNCTION_234();
                    itemfig_isSpatializationAllowed(v15, v16, 0, v17, v18, v19, v20, v21, v58, v60, v62, v64, v67, v71, v73, v76, v79, v82, cf, desc, v85, v86, *v87, *&v87[8], *&v87[16], v88);
                    v23 = v22;
                    itemfig_isSpatializationAllowed(a1, 1, 0, v24, v25, v26, v27, v28, v59, v61, v63, v65, v68, v72, v74, v77, v80, v82, cf, desc, v85, v86, *v87, *&v87[8], *&v87[16], v88);
                    v30 = v29;
                    v31 = cf;
                    if (cf)
                    {
                      v32 = cf == *MEMORY[0x1E695E4D0];
                    }

                    else
                    {
                      v32 = 0;
                    }

                    v33 = v32;
                    if (AudioFormatDescriptionSpatializationEligibility == 1)
                    {
                      v34 = v33;
                    }

                    else
                    {
                      v34 = 0;
                    }

                    if (dword_1EAF16A10)
                    {
                      v75 = v34;
                      v78 = v30;
                      OUTLINED_FUNCTION_397_0();
                      OUTLINED_FUNCTION_187_0();
                      v35 = OUTLINED_FUNCTION_346_0();
                      os_log_type_enabled(v35, type);
                      OUTLINED_FUNCTION_46();
                      if (v2)
                      {
                        DerivedStorage = CMBaseObjectGetDerivedStorage();
                        v37 = CMBaseObjectGetDerivedStorage();
                        mFormatID = v10->mASBD.mFormatID;
                        v39 = mFormatID >> 24;
                        v40 = MEMORY[0x1E69E9830];
                        if ((mFormatID & 0x80000000) != 0)
                        {
                          v41 = __maskrune(HIBYTE(v10->mASBD.mFormatID), 0x40000uLL);
                          v40 = MEMORY[0x1E69E9830];
                          LODWORD(mFormatID) = v10->mASBD.mFormatID;
                        }

                        else
                        {
                          v41 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
                        }

                        if (v41)
                        {
                          v42 = v39;
                        }

                        else
                        {
                          v42 = 46;
                        }

                        v70 = v42;
                        v43 = BYTE2(mFormatID);
                        if (BYTE2(mFormatID) > 0x7Fu)
                        {
                          v44 = __maskrune(BYTE2(mFormatID), 0x40000uLL);
                          v40 = MEMORY[0x1E69E9830];
                          LODWORD(mFormatID) = v10->mASBD.mFormatID;
                        }

                        else
                        {
                          v44 = *(v40 + 4 * BYTE2(mFormatID) + 60) & 0x40000;
                        }

                        v45 = DerivedStorage + 972;
                        v66 = v37 + 2096;
                        if (v44)
                        {
                          v46 = v43;
                        }

                        else
                        {
                          v46 = 46;
                        }

                        v69 = v46;
                        v47 = BYTE1(mFormatID);
                        if (BYTE1(mFormatID) > 0x7Fu)
                        {
                          v48 = __maskrune(BYTE1(mFormatID), 0x40000uLL);
                          v40 = MEMORY[0x1E69E9830];
                          LOBYTE(mFormatID) = v10->mASBD.mFormatID;
                        }

                        else
                        {
                          v48 = *(v40 + 4 * BYTE1(mFormatID) + 60) & 0x40000;
                        }

                        if (v48)
                        {
                          v49 = v47;
                        }

                        else
                        {
                          v49 = 46;
                        }

                        v50 = mFormatID;
                        if (mFormatID > 0x7Fu)
                        {
                          v51 = __maskrune(mFormatID, 0x40000uLL);
                        }

                        else
                        {
                          v51 = *(v40 + 4 * mFormatID + 60) & 0x40000;
                        }

                        *&v87[4] = "itemfig_ReportAudioPlaybackThroughFigLog";
                        v52 = "yes";
                        v88 = v45;
                        *v87 = 136318722;
                        if (v51)
                        {
                          v53 = v50;
                        }

                        else
                        {
                          v53 = 46;
                        }

                        *&v87[12] = 2048;
                        if (AudioFormatDescriptionSpatializationEligibility)
                        {
                          v54 = "yes";
                        }

                        else
                        {
                          v54 = "no";
                        }

                        *&v87[14] = v4;
                        if (v23)
                        {
                          v55 = "yes";
                        }

                        else
                        {
                          v55 = "no";
                        }

                        *&v87[22] = 2082;
                        v89 = 2048;
                        if (v78)
                        {
                          v56 = "yes";
                        }

                        else
                        {
                          v56 = "no";
                        }

                        v90 = a1;
                        if (v33)
                        {
                          v57 = "yes";
                        }

                        else
                        {
                          v57 = "no";
                        }

                        v91 = 2082;
                        if (!v75)
                        {
                          v52 = "no";
                        }

                        v92 = v66;
                        v93 = 1024;
                        v94 = v70;
                        v95 = 1024;
                        v96 = v69;
                        v97 = 1024;
                        v98 = v49;
                        v99 = 1024;
                        v100 = v53;
                        v101 = 1024;
                        v102 = v82;
                        v103 = 2080;
                        v104 = v54;
                        v105 = 2080;
                        v106 = v55;
                        v107 = 2080;
                        v108 = v56;
                        v109 = 2080;
                        v110 = v57;
                        v111 = 2080;
                        v112 = v52;
                        OUTLINED_FUNCTION_66();
                        OUTLINED_FUNCTION_108();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_238_0();
                      v31 = cf;
                    }

                    if (v31)
                    {
                      CFRelease(v31);
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
    v4 = 0;
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (desc)
  {
    CFRelease(desc);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void playerfig_updateResourceUsageOnGlobalResourceArbiter(uint64_t a1, const void *a2)
{
  v3 = v2;
  v40 = 0;
  v41 = 0;
  tag.value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1176))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM();
    goto LABEL_44;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 536) != a2 || FigPlayerResourceArbiterGetGlobalSingleton(&v41))
  {
    goto LABEL_44;
  }

  if (!a2)
  {
LABEL_43:
    FigPlayerResourceArbiterSetSpecifierForConsumer(v41, v40, *(v6 + 1176));
    goto LABEL_44;
  }

  if (FigPlayerResourceArbiterPlayerSpecifierCreate(&v40))
  {
    goto LABEL_44;
  }

  if (!itemfig_GetDimensions(a2, &tag.value + 4, &tag.value))
  {
    v7 = *(&tag.value + 1);
    v8 = *&tag.value;
    if (FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(v40, *(&tag.value + 1), *&tag.value) || FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(v40, v7, v8))
    {
      goto LABEL_44;
    }
  }

  v9 = *(v6 + 814) || *(v6 + 813) != 0;
  if (FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(v40, v9) || FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(v40, *(v6 + 60) == 2) || FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(v40, *(v6 + 1184)))
  {
    goto LABEL_44;
  }

  cf = 0;
  v10 = CMBaseObjectGetDerivedStorage();
  if (*v10)
  {
    OUTLINED_FUNCTION_243();
    v13 = FigSignalErrorAtGM();
    v16 = 0.0;
    goto LABEL_20;
  }

  v11 = *(v10 + 1040);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = CFGetAllocator(a2);
  v13 = itemfig_CopyTrackProperty(a2, v11, @"NominalFrameRate", v12, &cf);
  v14 = cf;
  if (v13)
  {
    v16 = 0.0;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  FigCFNumberGetFloat32();
  v16 = v15;
  v14 = cf;
  if (cf)
  {
LABEL_19:
    CFRelease(v14);
  }

LABEL_20:
  if (!v13 && (FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(v40, v16) || FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(v40, v16)))
  {
    goto LABEL_44;
  }

LABEL_23:
  CMBaseObjectGetDerivedStorage();
  v17 = OUTLINED_FUNCTION_337_0();
  if (!v17)
  {
    goto LABEL_42;
  }

  v36 = v17;
  CMBaseObjectGetDerivedStorage();
  v18 = *(v2 + 1088);
  if (!v18 || (Count = CFArrayGetCount(v18), Count < 1))
  {
LABEL_41:
    CFRelease(v36);
    goto LABEL_42;
  }

  v19 = 0;
  v37 = *(MEMORY[0x1E6960648] + 8);
  v38 = *MEMORY[0x1E6960648];
  v20 = *(MEMORY[0x1E6960690] + 8);
  *&tag.category = *MEMORY[0x1E6960690];
  v21 = *(MEMORY[0x1E69606A0] + 8);
  v34 = a2;
  while (1)
  {
    v43 = 0;
    cf = 0;
    FigCFArrayGetInt32AtIndex();
    itemfig_getTrackStorage(a2, v43, &cf);
    v22 = cf;
    if (cf)
    {
      v23 = *(cf + 29);
      if (v23)
      {
        v24 = CFArrayGetCount(v23);
        if (v24 >= 1)
        {
          v25 = v24;
          v32 = v3;
          v33 = v6;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v22[29], v26);
            if (!CMTagCollectionContainsCategory(ValueAtIndex, kCMTagCategory_PackingType) || (v44.value = v37, *&v44.category = v38, CMTagCollectionContainsTag(ValueAtIndex, v44)))
            {
              *&v45.category = *&tag.category;
              v45.value = v20;
              if (CMTagCollectionContainsTag(ValueAtIndex, v45))
              {
                v28 = 1;
              }

              v30 = OUTLINED_FUNCTION_331_0();
              v46.value = v21;
              if (CMTagCollectionContainsTag(v30, v46))
              {
                v27 = 1;
              }
            }

            ++v26;
          }

          while (v25 != v26);
          v3 = v32;
          v6 = v33;
          if (v28)
          {
            if (v27)
            {
              break;
            }
          }
        }
      }
    }

    ++v19;
    a2 = v34;
    if (v19 == Count)
    {
      goto LABEL_41;
    }
  }

  CFRelease(v36);
  if (!FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(v40, 1))
  {
LABEL_42:
    v31 = CMBaseObjectGetDerivedStorage();
    if (FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(v40, *(v31 + 48)))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_44:
  if (v40)
  {
    CFRelease(v40);
  }
}

void itemfig_getFrameDropCountFromAllVideoPipelines(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 648);
  FigSimpleMutexUnlock();
  if (v4)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 648));
    if (Count < 1)
    {
      v4 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      v4 = 0;
      v8 = @"PerformanceDictionary";
      v9 = *MEMORY[0x1E695E480];
      v19 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), v7);
        if (*(ValueAtIndex + 1) == 1986618469)
        {
          v11 = ValueAtIndex[2];
          if (v11)
          {
            theDict = 0;
            FigBaseObject = FigRenderPipelineGetFigBaseObject(v11);
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v13)
            {
              if (!v13(FigBaseObject, v8, v9, &theDict))
              {
                Value = CFDictionaryGetValue(theDict, @"ImageQueuePerformanceArray");
                if (Value)
                {
                  v15 = Value;
                  v16 = v8;
                  if (CFArrayGetCount(Value) >= 1)
                  {
                    v18 = a2;
                    v17 = 0;
                    do
                    {
                      CFArrayGetValueAtIndex(v15, v17);
                      if (FigCFDictionaryGetInt32IfPresent())
                      {
                        break;
                      }

                      ++v17;
                    }

                    while (CFArrayGetCount(v15) > v17);
                    a2 = v18;
                  }
                }

                else
                {
                  v16 = v8;
                }

                FigCFDictionaryGetCFIndexIfPresent();
                OUTLINED_FUNCTION_310_0();
                FigCFDictionaryGetCFIndexIfPresent();
                CFRelease(theDict);
                v8 = v16;
                v9 = v19;
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  *a2 = v4;
}

void fp_buildAudioRenderPipelineForTrack()
{
  OUTLINED_FUNCTION_649();
  v168 = v0;
  v166 = v2;
  v167 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v182 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  v171 = 0;
  v172 = 0;
  cf = 0;
  desc = 0;
  HasTrackOfType = FPSupport_HasTrackOfType(*(v12 + 1008), 1986618469);
  if (dword_1EAF16A10)
  {
    LODWORD(v176) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  if (itemfig_getTrackStorage(v8, v6, &v172))
  {
    OUTLINED_FUNCTION_141_0();
    v18 = 0;
    goto LABEL_16;
  }

  v14 = *(DerivedStorage + 880);
  if (v14)
  {
    v15 = SecTaskCopyValueForEntitlement(v14, @"com.apple.coremedia.allow-protected-content-playback", 0);
    if (v15)
    {
      v16 = v15;
      v17 = CFBooleanGetValue(v15) != 0;
      CFRelease(v16);
    }

    else
    {
      v17 = 0;
    }

    v19 = SecTaskCopyValueForEntitlement(*(DerivedStorage + 880), @"com.apple.coreaudio.allow-amr-decode", 0);
    v18 = v19;
    if (v19)
    {
      CFBooleanGetValue(v19);
      v20 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v20 = 1;
LABEL_12:
  v21 = *(v12 + 1008);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v22)
  {
    v23 = 0;
    NextRenderPipelineIdentifierString = 0;
    v25 = 0;
    goto LABEL_18;
  }

  v162 = v20;
  if (v22(v21, v6, &v171, 0) || itemfig_copyFormatDescription(v171, &desc))
  {
    OUTLINED_FUNCTION_141_0();
LABEL_16:
    v23 = 0;
    NextRenderPipelineIdentifierString = 0;
    v25 = 0;
    goto LABEL_18;
  }

  FigSimpleMutexLock();
  v26 = *(DerivedStorage + 472);
  if (v26)
  {
    v27 = CFRetain(v26);
  }

  else
  {
    v27 = 0;
  }

  FigSimpleMutexUnlock();
  v28 = MEMORY[0x1E695E480];
  v164 = v27;
  if (!v4)
  {
    v29 = FigFormatDescriptionRetain();
    goto LABEL_69;
  }

  v181[0].value = 0;
  v176 = 0;
  v177.value = 0;
  v30 = CMBaseObjectGetDerivedStorage();
  *type = 0;
  v31 = PKDIsContentKeyBossEnabled();
  v32 = *(v30 + 1256);
  v33 = *v28;
  if (!v31)
  {
    CMBaseObject = FigAssetGetCMBaseObject(v32);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v35)
    {
      if (!v35(CMBaseObject, @"assetProperty_DefaultContentKeySession", v33, v181))
      {
        value = v181[0].value;
        if (v181[0].value)
        {
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v37)
          {
            v37(value, @"AudibleGroupID", &v176);
            OUTLINED_FUNCTION_786();
LABEL_141:
            v41 = 1;
            if (v38 && v176 && CFDataGetLength(v176) == 4)
            {
              v41 = 0;
              *(v30 + 952) = *CFDataGetBytePtr(v176);
            }

            goto LABEL_44;
          }
        }
      }
    }

    goto LABEL_43;
  }

  v39 = FigAssetGetCMBaseObject(v32);
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v40)
  {
LABEL_43:
    v41 = 1;
    goto LABEL_44;
  }

  v69 = v40(v39, @"assetProperty_ContentKeyBoss", v33, &v177);
  v41 = 1;
  if (!v69 && v177.value && !FigContentKeySpecifierCreate(3, @"AudibleGroupID", 0, 0, type))
  {
    v70 = *(CMBaseObjectGetVTable() + 16);
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    if (v71[13] && *v71 >= 2uLL)
    {
      v78 = OUTLINED_FUNCTION_195_0();
      v80 = v79(v78);
      v38 = 1;
      v41 = 1;
      if (!v80)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v41 = 1;
    }
  }

LABEL_44:
  if (*type)
  {
    CFRelease(*type);
  }

  if (v177.value)
  {
    CFRelease(v177.value);
  }

  if (v176)
  {
    CFRelease(v176);
  }

  if (v181[0].value)
  {
    CFRelease(v181[0].value);
  }

  if (!v41)
  {
    v17 = 1;
  }

  v42 = desc;
  v175 = *(v12 + 952);
  if (!v175)
  {
    goto LABEL_55;
  }

  v160 = v17;
  v181[0].value = 0;
  v176 = 0;
  v177.value = 0;
  keys = @"AudibleGroupID";
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  theDict = CMAudioFormatDescriptionGetChannelLayout(v42, &v177);
  Extensions = CMFormatDescriptionGetExtensions(v42);
  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v42, &v176);
  v45 = v33;
  v47 = OUTLINED_FUNCTION_343_0(MagicCookie, v46, &v175);
  *type = v47;
  if (v47)
  {
    if (Extensions)
    {
      v49 = v47;
      Count = CFDictionaryGetCount(Extensions);
      MutableCopy = CFDictionaryCreateMutableCopy(v45, Count + 1, Extensions);
      v51 = v49;
      v33 = v45;
      CFDictionaryAddValue(MutableCopy, @"AudibleGroupID", v51);
    }

    else
    {
      MutableCopy = CFDictionaryCreate(v33, &keys, type, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v17 = v160;
    if (MutableCopy)
    {
      v52 = CMAudioFormatDescriptionCreate(v33, StreamBasicDescription, v177.value, theDict, v176, MagicCookie, MutableCopy, v181) == 0;
    }

    else
    {
      v52 = 1;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    v52 = 1;
    v17 = v160;
  }

  v28 = MEMORY[0x1E695E480];
  if (!v52 || (v29 = v181[0].value) == 0)
  {
LABEL_55:
    v29 = FigFormatDescriptionRetain();
  }

  v27 = v164;
LABEL_69:
  if (*(DerivedStorage + 952))
  {
    AudioDeviceUIDFromPassthroughHelper = FPSupport_GetAudioDeviceUIDFromPassthroughHelper();
  }

  else
  {
    AudioDeviceUIDFromPassthroughHelper = *(DerivedStorage + 712);
  }

  v161 = AudioDeviceUIDFromPassthroughHelper;
  if (!itemfig_isAtmosSupported(v8))
  {
    goto LABEL_106;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(v29);
  if (MediaSubType != 1667574579)
  {
    if (MediaSubType != 1667575091)
    {
      if (MediaSubType == 1700997939)
      {
        goto LABEL_99;
      }

      if (MediaSubType != 1700998451)
      {
        if (MediaSubType == 1885547315)
        {
          goto LABEL_99;
        }

        if (MediaSubType != 1885692723)
        {
          if (MediaSubType == 1902324531)
          {
            goto LABEL_99;
          }

          if (MediaSubType != 2053464883)
          {
            if (MediaSubType == 2053319475)
            {
              goto LABEL_99;
            }

            if (MediaSubType != 1902469939)
            {
LABEL_106:
              v159 = 0;
              v63 = 1;
              goto LABEL_107;
            }
          }
        }
      }
    }

    v181[0].value = 0;
    FormatList = CMAudioFormatDescriptionGetFormatList(v29, v181);
    if (!FormatList || v181[0].value <= 0x2FuLL)
    {
      goto LABEL_106;
    }

    mFormatID = FormatList->mASBD.mFormatID;
    v57 = mFormatID == 1667574579 || mFormatID == 1700997939;
    v58 = v57 || mFormatID == 1885547315;
    v59 = v58 || mFormatID == 2053319475;
    if (!v59 && mFormatID != 1902324531)
    {
      goto LABEL_106;
    }
  }

LABEL_99:
  if (v27)
  {
    v181[0].value = 0;
    v61 = *(CMBaseObjectGetVTable() + 16);
    if (v61)
    {
      v62 = *(v61 + 48);
      if (v62)
      {
        v62(v27, *MEMORY[0x1E69B01E8], *v28, v181);
      }
    }

    FigCFEqual();
    if (v181[0].value)
    {
      CFRelease(v181[0].value);
    }
  }

  FPSupport_IsDisplayModeSwitchInProgress();
  v63 = 0;
  v159 = 1;
LABEL_107:
  NextRenderPipelineIdentifierString = fp_createNextRenderPipelineIdentifierString();
  if (NextRenderPipelineIdentifierString)
  {
    v64 = *(DerivedStorage + 1208);
    if (v64 && FigMockRenderPipelineFactoryCreateMockRenderPipeline(*(DerivedStorage + 1208), *MEMORY[0x1E695E480], 0, &cf))
    {
      goto LABEL_110;
    }

    if (cf)
    {
      v65 = 1;
LABEL_177:
      if (v64 || !*(DerivedStorage + 1140))
      {
        goto LABEL_197;
      }

      v92 = v65;
      v177.value = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigGetAllocatorForMedia();
      FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(v181);
      v94 = OUTLINED_FUNCTION_308_0();
      v99 = FigSpeedRampRenderPipelineCreate(v94, v95, v96, v97, v98);
      if (v177.value)
      {
        v100 = cf;
        cf = v177.value;
        CFRetain(v177.value);
        if (v100)
        {
          CFRelease(v100);
        }

        if (v177.value)
        {
          CFRelease(v177.value);
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v65 = v92;
      if (!v99)
      {
LABEL_197:
        if ((v65 & 1) != 0 || !*(DerivedStorage + 1141) || !_os_feature_enabled_impl())
        {
          goto LABEL_261;
        }

        v177.value = 0;
        v101 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        FigGetAllocatorForMedia();
        FigGetDefaultLowWaterDurationForWarehouseRenderPipelines(v181);
        v102 = OUTLINED_FUNCTION_308_0();
        v107 = FigWarehouseRenderPipelineCreate(v102, v103, v104, v105, v106);
        if (v177.value)
        {
          v108 = cf;
          cf = v177.value;
          CFRetain(v177.value);
          if (v108)
          {
            CFRelease(v108);
          }

          if (v177.value)
          {
            CFRelease(v177.value);
          }
        }

        if (v101)
        {
          CFRelease(v101);
        }

        if (!v107)
        {
LABEL_261:
          if (*(DerivedStorage + 1140))
          {
            FigRenderPipelineGetFigBaseObject(cf);
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v109 = OUTLINED_FUNCTION_400_0();
              v110(v109);
            }
          }

          if (*(v12 + 2136))
          {
            FigRenderPipelineGetFigBaseObject(cf);
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v111 = OUTLINED_FUNCTION_400_0();
              v112(v111);
            }
          }

          v113 = MEMORY[0x1E695E4C0];
          if (cf)
          {
            if (*(DerivedStorage + 131))
            {
              FigBaseObject = FigRenderPipelineGetFigBaseObject(cf);
              v115 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v115)
              {
                v115(FigBaseObject, @"ShouldCompensateForNeroScreenLatency", *v113);
              }
            }
          }

          FigRenderPipelineGetFigBaseObject(cf);
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v116 = OUTLINED_FUNCTION_400_0();
            v117(v116);
          }

          FigSimpleMutexLock();
          v118 = *(DerivedStorage + 16);
          if (v118)
          {
            v25 = CFRetain(v118);
            FigSimpleMutexUnlock();
            if (v25)
            {
              FigRenderPipelineGetFigBaseObject(cf);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v119 = OUTLINED_FUNCTION_400_0();
                v120(v119);
              }
            }
          }

          else
          {
            FigSimpleMutexUnlock();
            v25 = 0;
          }

          if (*(DerivedStorage + 1139))
          {
            v121 = FigRenderPipelineGetFigBaseObject(cf);
            v122 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v122)
            {
              v122(v121, @"IgnoreAudioDeviceLatencyInStartupSync", *MEMORY[0x1E695E4D0]);
            }
          }

          if (v164)
          {
            v181[0].value = 0;
            v123 = *(CMBaseObjectGetVTable() + 16);
            if (v123)
            {
              v124 = *(v123 + 48);
              if (v124)
              {
                v124(v164, *MEMORY[0x1E69AFC90], *MEMORY[0x1E695E480], v181);
              }
            }

            if (v181[0].value)
            {
              FigRenderPipelineGetFigBaseObject(cf);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v125 = OUTLINED_FUNCTION_148();
                v126(v125);
              }

              CFRelease(v181[0].value);
            }
          }

          v127 = v172;
          if (*(v172 + 120) && *(v172 + 128))
          {
            v128 = FigRenderPipelineGetFigBaseObject(cf);
            v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v129)
            {
              v129(v128, @"EnableSweepFilter", *MEMORY[0x1E695E4D0]);
            }

            FigRenderPipelineGetFigBaseObject(cf);
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v130 = OUTLINED_FUNCTION_148();
              v131(v130);
            }

            v23 = CFNumberCreate(0, kCFNumberFloat32Type, (v127 + 136));
            FigRenderPipelineGetFigBaseObject(cf);
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v132 = OUTLINED_FUNCTION_148();
              v133(v132);
            }
          }

          else
          {
            v23 = 0;
          }

          v134 = *(v127 + 152);
          if (v134)
          {
            v135 = FigRenderPipelineGetFigBaseObject(cf);
            v136 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v136)
            {
              v136(v135, @"CinematicAudioParameters", v134);
            }
          }

          v137 = *(v12 + 984);
          if (v137)
          {
            v138 = FigRenderPipelineGetFigBaseObject(cf);
            v139 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v139)
            {
              v139(v138, @"AudioDeviceChannelMap", v137);
            }
          }

          v140 = *(v12 + 1536);
          if (v140)
          {
            v141 = FigRenderPipelineGetFigBaseObject(cf);
            v142 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v142)
            {
              v142(v141, @"AudioQueueClockDevice", v140);
            }
          }

          v143 = FigRenderPipelineGetFigBaseObject(cf);
          v144 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          v27 = v164;
          if (v144)
          {
            v144(v143, @"AllowsPrebuffering", *v113);
          }

          if (cf)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0();
            v145 = cf;
          }

          else
          {
            v145 = 0;
          }

          *v168 = v145;
          cf = 0;
          if (v164)
          {
            goto LABEL_250;
          }

          goto LABEL_18;
        }
      }

LABEL_110:
      v25 = 0;
      v23 = 0;
      v27 = v164;
      if (!v164)
      {
        goto LABEL_18;
      }

LABEL_250:
      CFRelease(v27);
      goto LABEL_18;
    }

    FigSimpleMutexLock();
    v66 = *(DerivedStorage + 176);
    if (v66)
    {
      v67 = CFRetain(v66);
      FigSimpleMutexUnlock();
      v153 = v67;
      if (v67)
      {
        v68 = (v162 & 1) != 0 || !CFBooleanGetValue(v18) || *(DerivedStorage + 896) != 0;
        v148 = v68;
        v151 = CMBaseObjectGetDerivedStorage();
        v176 = 0;
        v149 = *MEMORY[0x1E695E480];
        v72 = FigCFDictionaryCreateMutableCopy();
        v73 = v72;
        cf = 0;
        if (v17)
        {
          CFDictionarySetValue(v72, @"AllowAudibleContent", *MEMORY[0x1E695E4D0]);
        }

        theDicta = v73;
        if (!v148)
        {
          CFDictionarySetValue(v73, @"AllowAMRDecode", *MEMORY[0x1E695E4D0]);
        }

        if ((v63 & 1) == 0)
        {
          CFDictionarySetValue(v73, @"AllowAtmosDecode", *MEMORY[0x1E695E4D0]);
        }

        FigSimpleMutexLock();
        v74 = v151[59];
        if (v74)
        {
          v75 = CFRetain(v74);
          FigSimpleMutexUnlock();
          v76 = v75;
          v77 = v73;
          if (v76)
          {
            v152 = v76;
            CFDictionarySetValue(v73, @"AudioSession", v76);
          }

          else
          {
            v152 = 0;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
          v152 = 0;
          v77 = v73;
        }

        CFDictionarySetValue(v77, @"LoggingID", NextRenderPipelineIdentifierString);
        FigCFDictionarySetValue();
        LODWORD(v67) = FigBufferedAirPlayAudioRenderPipelineCreate(v149, v153, v77, &v176);
        if (!v67)
        {
          if (dword_1EAF16A10)
          {
            *type = 0;
            LOBYTE(keys) = 0;
            v150 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v81 = os_log_type_enabled(v150, keys);
            if (OUTLINED_FUNCTION_109_0(v81))
            {
              if (v10)
              {
                v82 = (CMBaseObjectGetDerivedStorage() + 972);
              }

              else
              {
                v82 = "";
              }

              LODWORD(v177.value) = 136315906;
              *(&v177.value + 4) = "playerfig_createBufferedAirPlayAudioRenderPipeline";
              LOWORD(v177.flags) = 2048;
              *(&v177.flags + 2) = v10;
              HIWORD(v177.epoch) = 2082;
              v178 = v82;
              v179 = 2048;
              v180 = v176;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
            v77 = theDicta;
          }

          cf = v176;
          v176 = 0;
        }

        if (v152)
        {
          CFRelease(v152);
        }

        if (v77)
        {
          CFRelease(v77);
        }

        if (v176)
        {
          CFRelease(v176);
        }

        CFRelease(v153);
        v65 = 0;
LABEL_165:
        if (!cf)
        {
          theDictb = v65;
          v154 = *(DerivedStorage + 120);
          if (v162)
          {
            v163 = 0;
            v83 = HasTrackOfType;
          }

          else
          {
            v84 = CFBooleanGetValue(v18);
            v83 = HasTrackOfType;
            if (v84)
            {
              v163 = *(DerivedStorage + 896) == 0;
            }

            else
            {
              v163 = 0;
            }
          }

          v85 = v83 == 0;
          v176 = 0;
          v86 = *MEMORY[0x1E695E480];
          CMTimeMake(v181, 1, 2);
          CMTimeMake(&v177, 1, 1);
          v87 = OUTLINED_FUNCTION_195_0();
          RenderPipelineOptions = FPSupport_createRenderPipelineOptions(v87, v88, v154, v89, v90, v161, v17, v163, v167, 0, 0, v159, v166, v85, 0, 0, 0, v164, 0, 0, 0, NextRenderPipelineIdentifierString, &v176);
          if (RenderPipelineOptions || (RenderPipelineOptions = FigAudioQueueRenderPipelineCreate(v86, v176, &cf)) != 0)
          {
            LODWORD(v67) = RenderPipelineOptions;
            v65 = theDictb;
          }

          else
          {
            v146 = FigRenderPipelineGetFigBaseObject(cf);
            v147 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            v65 = theDictb;
            if (v147)
            {
              v147(v146, @"HandleFormatDescriptionChanges", *MEMORY[0x1E695E4D0]);
            }

            LODWORD(v67) = 0;
          }

          if (v176)
          {
            CFRelease(v176);
          }
        }

        if (v67)
        {
          goto LABEL_110;
        }

        goto LABEL_177;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      LODWORD(v67) = 0;
    }

    v65 = 1;
    goto LABEL_165;
  }

  v25 = 0;
  v23 = 0;
  if (v27)
  {
    goto LABEL_250;
  }

LABEL_18:
  FigFormatDescriptionRelease();
  FigFormatDescriptionRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v171)
  {
    CFRelease(v171);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (NextRenderPipelineIdentifierString)
  {
    CFRelease(NextRenderPipelineIdentifierString);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  OUTLINED_FUNCTION_651();
}

void itemfig_applyAudioProcessingUnitsToTrack(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_442_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    if (*(a2 + 16) && *(v2 + 1528) | *(a2 + 96))
    {
      v6 = DerivedStorage;
      MutableCopy = FigCFArrayCreateMutableCopy();
      if (MutableCopy)
      {
        v8 = MutableCopy;
        if (*(v2 + 1528))
        {
          CFArrayGetCount(*(v2 + 1528));
          v9 = OUTLINED_FUNCTION_284();
          v15.location = 0;
          CFArrayAppendArray(v9, v10, v15);
        }

        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a2 + 16));
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          if (!v12(FigBaseObject, @"AudioProcessingUnits", v8) && *(a2 + 16) == *(v6 + 584))
          {
            v13 = *(v6 + 640);
            *(v6 + 640) = v8;
            CFRetain(v8);
            if (v13)
            {
              CFRelease(v13);
            }
          }
        }

        CFRelease(v8);
      }

      else
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM();
      }
    }

    CFRelease(v4);
  }
}

uint64_t itemfig_applyAllAudioCurvesToTrack(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if (result)
  {
    FigRenderPipelineGetFigBaseObject(result);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    if (*(v5 + 56))
    {
      v6 = OUTLINED_FUNCTION_188();
      result = v7(v6);
      if (!result)
      {
        result = *(a2 + 16);
        if (result)
        {
          FigRenderPipelineGetFigBaseObject(result);
          v8 = CMBaseObjectGetVTable();
          v9 = *(v8 + 8);
          result = v8 + 8;
          if (*(v9 + 56))
          {
            v10 = OUTLINED_FUNCTION_228();

            return v11(v10);
          }
        }
      }
    }
  }

  return result;
}

void itemfig_applyTimePitchAlgorithmToTrack()
{
  OUTLINED_FUNCTION_327_0();
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_442_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (*DerivedStorage)
    {
LABEL_24:
      CFRelease(v4);
      return;
    }

    v7 = *(v0 + 112);
    if (v7)
    {
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_248_0();
        v8 = OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_830(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
        OUTLINED_FUNCTION_37();
        if (!v3)
        {
          goto LABEL_16;
        }

        if (v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_122_0();
        OUTLINED_FUNCTION_39();
LABEL_15:
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_179_0();
LABEL_16:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
      }
    }

    else
    {
      v7 = *(v2 + 1512);
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_248_0();
        v16 = OUTLINED_FUNCTION_126();
        OUTLINED_FUNCTION_830(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, SBYTE2(v30), BYTE3(v30), SHIDWORD(v30));
        OUTLINED_FUNCTION_37();
        if (!v3)
        {
          goto LABEL_16;
        }

        if (v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_114();
        OUTLINED_FUNCTION_39();
        goto LABEL_15;
      }
    }

    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v0 + 16));
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v25(FigBaseObject, @"TimePitchAlgorithm", v7);
    }

    if (*(v0 + 16) == *(v6 + 73))
    {
      v26 = *(v6 + 81);
      *(v6 + 81) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    goto LABEL_24;
  }
}

void fp_createAudioRenderPipelineOptionsForTrack()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v130[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v119 = 0;
  v120 = 0;
  v130[0] = 0;
  v130[1] = 0;
  v127 = 0;
  v128[0] = 0;
  v128[1] = 0;
  v129 = 0;
  v117 = 0;
  v118 = 0;
  v126[0] = 0;
  v126[1] = 0;
  v116 = 0;
  time = **&MEMORY[0x1E6960C70];
  v10 = OUTLINED_FUNCTION_273_0();
  if (fp_createCommonRenderPipelineOptionsForTrack(v10, v11, v12, v6, 1936684398, v4, v13))
  {
    v15 = 0;
LABEL_97:
    v46 = 0;
    v47 = 0;
    DefaultEnhanced = 0;
    goto LABEL_76;
  }

  v14 = v126[0];
  v15 = v126[0] != 0;
  v16 = *(DerivedStorage + 1008);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v17)
  {
    v46 = 0;
    v47 = 0;
    DefaultEnhanced = 0;
    goto LABEL_76;
  }

  if (v17(v16, v6, &v120, 0) || itemfig_copyFormatDescription(v120, &v119))
  {
    goto LABEL_97;
  }

  v101 = v14 != 0;
  v102 = v14;
  v18 = v119;
  v19 = *(DerivedStorage + 960);
  if (!v19)
  {
    v19 = *(DerivedStorage + 968);
  }

  DefaultEnhanced = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(v119, v120, v19);
  v21 = MEMORY[0x1E695E480];
  if (dword_1EAF16A10)
  {
    v115 = 0;
    HIDWORD(v114) = 0;
    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (*(DerivedStorage + 152))
    {
      dictionaryRepresentation = 0;
      FigBaseObject = FigTrackReaderGetFigBaseObject(v120);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        if (!v23(FigBaseObject, @"UneditedTrackDuration", *v21, &dictionaryRepresentation))
        {
          memset(&v112, 0, sizeof(v112));
          CMTimeMakeFromDictionary(&v112, dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          v32 = v115;
          if (v115 >= 1)
          {
            memset(&v111, 0, sizeof(v111));
            v33 = CMTimeMake(&v111, v115, SHIDWORD(v114));
            OUTLINED_FUNCTION_365_0(v33, v34, v35, v36, v37, v38, v39, v40, v93, v95, v97, v99, v101, v14, v103, v106, rhs.value, *&rhs.timescale, rhs.epoch, *v109, 0, 0, 0, v110, v111.value, *&v111.timescale, v111.epoch, v41, v112.value);
            rhs = v111;
            CMTimeSubtract(&time, &lhs, &rhs);
            CMTimeAbsoluteValue(&v109[8], &time);
            CMTimeMakeWithSeconds(&time, 10.0, *&v109[16]);
            lhs = *&v109[8];
            v32 = CMTimeCompare(&lhs, &time);
            if (v32 >= 1)
            {
              if (dword_1EAF16A10)
              {
                LODWORD(rhs.value) = 0;
                HIBYTE(v106) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                value = rhs.value;
                v103 = os_log_and_send_and_compose_flags_and_os_log_type;
                HIDWORD(v99) = 0;
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_134();
                if (!v45)
                {
                  v44 = value;
                }

                if (v44)
                {
                  LODWORD(v99) = v44;
                  if (v8)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  if (*(DerivedStorage + 960))
                  {
                    v48 = "client";
                  }

                  else
                  {
                    v48 = "asset";
                  }

                  time = v111;
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_292_0(v49, v50, v51, v52, v53, v54, v55, v56, v93, v95, v97, v99, v101, v102, v103, v106, rhs.value, *&rhs.timescale, rhs.epoch, *v109, *&v109[16], *&v109[24], v110, v111.value, *&v111.timescale, v111.epoch, *&v112.value, v112.epoch, dictionaryRepresentation, v114, v115, v116, v117, v118, v119, v120, lhs.value, *&lhs.timescale, lhs.epoch, v122, v123[0], v123[1], v123[2], v123[3], time.value);
                  LODWORD(lhs.value) = 136316418;
                  OUTLINED_FUNCTION_214_0("fp_createAudioRenderPipelineOptionsForTrack");
                  LOWORD(v123[0]) = v57;
                  *(v123 + 2) = v48;
                  WORD1(v123[1]) = v58;
                  *(&v123[1] + 4) = v0;
                  WORD2(v123[2]) = v58;
                  *(&v123[2] + 6) = v59;
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                v32 = OUTLINED_FUNCTION_238_0();
              }
            }
          }

          if (*(DerivedStorage + 152))
          {
            OUTLINED_FUNCTION_365_0(v32, v24, v25, v26, v27, v28, v29, v30, v93, v95, v97, v99, v101, v102, v103, v106, rhs.value, *&rhs.timescale, rhs.epoch, *v109, *&v109[8], *&v109[16], *&v109[24], v110, 0, 0, 0, v31, v112.value);
            *&v109[8] = *(DerivedStorage + 140);
            *&v109[24] = *(DerivedStorage + 156);
            CMTimeSubtract(&time, &lhs, &v109[8]);
            CMTimeAbsoluteValue(&v111, &time);
            CMTimeMakeWithSeconds(&time, 10.0, v111.timescale);
            lhs = v111;
            if (CMTimeCompare(&lhs, &time) >= 1)
            {
              if (dword_1EAF16A10)
              {
                *&v109[8] = 0;
                LOBYTE(rhs.value) = 0;
                v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v61 = *&v109[8];
                v104 = v60;
                HIDWORD(v100) = LOBYTE(rhs.value);
                os_log_type_enabled(v60, rhs.value);
                OUTLINED_FUNCTION_134();
                if (v45)
                {
                  v63 = v62;
                }

                else
                {
                  v63 = v61;
                }

                if (v63)
                {
                  if (v8)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  time = *(DerivedStorage + 140);
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_292_0(v64, v65, v66, v67, v68, v69, v70, v71, v94, v96, v98, v100, v101, v102, v104, v107, rhs.value, *&rhs.timescale, rhs.epoch, *v109, *&v109[16], *&v109[24], v110, v111.value, *&v111.timescale, v111.epoch, *&v112.value, v112.epoch, dictionaryRepresentation, v114, v115, v116, v117, v118, v119, v120, lhs.value, *&lhs.timescale, lhs.epoch, v122, v123[0], v123[1], v123[2], v123[3], time.value);
                  LODWORD(lhs.value) = 136316162;
                  OUTLINED_FUNCTION_214_0("fp_createAudioRenderPipelineOptionsForTrack");
                  LOWORD(v123[0]) = v72;
                  *(v123 + 2) = v0;
                  WORD1(v123[1]) = v72;
                  *(&v123[1] + 4) = v73;
                  OUTLINED_FUNCTION_33_0();
                  OUTLINED_FUNCTION_35();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0();
              }
            }
          }
        }
      }
    }
  }

  if (DefaultEnhanced)
  {
    v74 = 0;
  }

  else
  {
    DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(v18);
    v74 = DefaultEnhanced != 0;
  }

  v105 = v2;
  GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(v18);
  v47 = GradualDecoderRefresh;
  if (GradualDecoderRefresh)
  {
    v76 = v130;
    v77 = v128;
    v129 = @"gdrCount";
    v127 = GradualDecoderRefresh;
    v78 = 1;
  }

  else
  {
    v78 = 0;
    v76 = &v129;
    v77 = &v127;
  }

  v79 = *v21;
  v80 = FigTrackReaderGetFigBaseObject(v120);
  v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v81)
  {
    v81(v80, @"EditsExcludePrimingAndRemainderDuration", v79, &v118);
  }

  v82 = *MEMORY[0x1E695E4D0];
  if (v118 == *MEMORY[0x1E695E4D0])
  {
    if (DefaultEnhanced)
    {
      v83 = v74;
    }

    else
    {
      v83 = 1;
    }

    if (v83)
    {
      v2 = v105;
      if (!DefaultEnhanced)
      {
        goto LABEL_62;
      }
    }

    else
    {
      LODWORD(v112.value) = 0;
      LOBYTE(v111.value) = 0;
      v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v85 = os_log_type_enabled(v84, v111.value);
      if (OUTLINED_FUNCTION_71_0(v85))
      {
        LODWORD(lhs.value) = 136315138;
        *(&lhs.value + 4) = "fp_createAudioRenderPipelineOptionsForTrack";
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
      }

      v2 = v105;
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_449();
    }

    CFRelease(DefaultEnhanced);
    DefaultEnhanced = 0;
    goto LABEL_62;
  }

  if (DefaultEnhanced)
  {
    *v76 = @"iTunesGaplessInfo";
    *v77 = DefaultEnhanced;
    ++v78;
  }

  v2 = v105;
LABEL_62:
  v86 = v102;
  v87 = FigTrackReaderGetFigBaseObject(v120);
  v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v88)
  {
    v88(v87, @"HasSeamSamples", v79, &v117);
    v88 = v117;
  }

  if (v88 == v82)
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v46 = SInt32;
      v130[v78 - 1] = @"BossTrack_BonusAudioPrimingPacketCountAtStart";
      v128[v78++ - 1] = SInt32;
      goto LABEL_69;
    }
  }

  v46 = 0;
  if (v78)
  {
LABEL_69:
    v126[v102 != 0] = CFDictionaryCreate(v79, &v129, &v127, v78, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v102)
    {
      v15 = 2;
      FigCFCreateCombinedDictionary();
      goto LABEL_76;
    }

    v86 = v126[0];
    v15 = 1;
    goto LABEL_72;
  }

  v15 = v101;
LABEL_72:
  v90 = 0;
  if (v15 && v86)
  {
    v90 = CFRetain(v86);
  }

  v116 = v90;
LABEL_76:
  if (v120)
  {
    CFRelease(v120);
  }

  if (DefaultEnhanced)
  {
    CFRelease(DefaultEnhanced);
  }

  if (v119)
  {
    CFRelease(v119);
    v119 = 0;
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v118)
  {
    CFRelease(v118);
    v118 = 0;
  }

  if (v117)
  {
    CFRelease(v117);
    v117 = 0;
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v15)
  {
    v91 = 8 * v15;
    do
    {
      v92 = *&v125[v91];
      if (v92)
      {
        CFRelease(v92);
      }

      v91 -= 8;
    }

    while (v91);
  }

  *v2 = v116;
  OUTLINED_FUNCTION_191();
}

uint64_t itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline(uint64_t a1)
{
  v119 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  v6 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v100 = 0;
  v98 = 0;
  if (!*(v6 + 584))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v13 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v13, v14, v15, v16, v17, v18, v19, v20, v92, v93, v94, v95, v96, v97);
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_76;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
        goto LABEL_39;
      }
    }

    else if (!a1)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  v7 = v6;
  if (!*(v6 + 688))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v21 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v21, v22, v23, v24, v25, v26, v27, v28, v92, v93, v94, v95, v96, v97);
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_76;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
LABEL_39:
        OUTLINED_FUNCTION_1_0();
LABEL_40:
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl();
        goto LABEL_76;
      }
    }

    else if (!a1)
    {
      goto LABEL_39;
    }

LABEL_19:
    CMBaseObjectGetDerivedStorage();
    goto LABEL_39;
  }

  v8 = *(DerivedStorage + 1008);
  v9 = *(DerivedStorage + 1036);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v10 || v10(v8, v9, &cf, 0) || itemfig_copyFormatDescription(cf, &v98) || itemfig_getTrackStorage(a1, *(DerivedStorage + 1036), &v100))
  {
    goto LABEL_78;
  }

  v11 = _os_feature_enabled_impl();
  if (*(v7 + 176))
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_23;
    }

    v12 = "buffered airplay audio";
  }

  else
  {
    if (v11)
    {
      goto LABEL_23;
    }

    v12 = "audio";
  }

  if (!FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(*(v7 + 584), *(v7 + 688), v98))
  {
    if (dword_1EAF16A10)
    {
      v45 = OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_111_0(v45, v46, v47, v48, v49, v50, v51, v52, v92, v93, v94, v95, v96, v97);
      OUTLINED_FUNCTION_40();
      if (!v8)
      {
        goto LABEL_76;
      }

      if (v5)
      {
        v53 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v53 = "";
      }

      if (a1)
      {
        v65 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v65 = "";
      }

      v101 = 136316418;
      v102 = "itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline";
      v103 = 2048;
      v104 = v5;
      v105 = 2082;
      v106 = v53;
      v107 = 2048;
      v108 = a1;
      v109 = 2082;
      v110 = v65;
      v111 = 2082;
      v112 = v12;
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_23:
  v29 = v100;
  v30 = OUTLINED_FUNCTION_373();
  playerfig_determineAudioProcessingTapRoles(v30, v31, v32, v33);
  if (*(v7 + 632) || *(v7 + 624))
  {
    if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v2)
      {
        if (v5)
        {
          v44 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v44 = "";
        }

        if (a1)
        {
          v62 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v62 = "";
        }

        v63 = *(v29 + 88);
        v64 = *(DerivedStorage + 1480);
        v101 = 136317186;
        v102 = "itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline";
        v103 = 2048;
        v104 = v5;
        v105 = 2082;
        v106 = v44;
        v107 = 2048;
        v108 = a1;
        v109 = 2082;
        v110 = v62;
        v111 = 2048;
        v112 = 0;
        v113 = 2048;
        v114 = 0;
        v115 = 2048;
        v116 = v63;
        v117 = 2048;
        v118 = v64;
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2();
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v34 = *(v29 + 112);
  if (v34)
  {
    if (v34 != *(v7 + 648))
    {
      if (dword_1EAF16A10)
      {
        v35 = OUTLINED_FUNCTION_34_0();
        OUTLINED_FUNCTION_111_0(v35, v36, v37, v38, v39, v40, v41, v42, v92, v93, v94, OS_LOG_TYPE_DEFAULT, 0, 0);
        OUTLINED_FUNCTION_40();
        if (v29)
        {
          if (v5)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (!a1)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_76:
        OUTLINED_FUNCTION_7();
LABEL_77:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_78:
      v82 = 0;
      goto LABEL_79;
    }
  }

  else if (*(DerivedStorage + 1512) != *(v7 + 648))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v54 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v54, v55, v56, v57, v58, v59, v60, v61, v92, v93, v94, OS_LOG_TYPE_DEFAULT, 0, 0);
    OUTLINED_FUNCTION_40();
    if (!v29)
    {
      goto LABEL_76;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

LABEL_93:
    CMBaseObjectGetDerivedStorage();
LABEL_94:
    OUTLINED_FUNCTION_1_0();
    goto LABEL_40;
  }

  if (itemfig_shouldEnableSpatializationForTrack(a1, *(DerivedStorage + 1036)) != *(v7 + 656))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v74 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v74, v75, v76, v77, v78, v79, v80, v81, v92, v93, v94, OS_LOG_TYPE_DEFAULT, 0, 0);
    OUTLINED_FUNCTION_40();
    if (!v29)
    {
      goto LABEL_76;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (FPSupport_AudioProcessingUnitsConfigurationsAreDifferent())
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v66 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v66, v67, v68, v69, v70, v71, v72, v73, v92, v93, v94, OS_LOG_TYPE_DEFAULT, 0, 0);
    OUTLINED_FUNCTION_40();
    if (!v29)
    {
      goto LABEL_76;
    }

    if (v5)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (dword_1EAF16A10)
  {
    v84 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_111_0(v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, OS_LOG_TYPE_DEFAULT, 0, 0);
    OUTLINED_FUNCTION_40();
    if (v29)
    {
      if (v5)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_109();
    v82 = 1;
    OUTLINED_FUNCTION_70_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v82 = 1;
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  return v82;
}

void itemfig_InformStakeholdersOfBestAvailableAudioContentType(uint64_t a1)
{
  if (a1)
  {
    CMBaseObjectGetDerivedStorage();
    v3 = OUTLINED_FUNCTION_337_0();
    if (v3)
    {
      v4 = v3;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(v1 + 1328))
      {
        v6 = DerivedStorage;
        v7 = *(v1 + 1036);
        v8 = MEMORY[0x1E69B06C0];
        if (v7)
        {
          TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(a1, v7, 0);
          isTrackAtmos = itemfig_isTrackAtmos(a1, *(v1 + 1036));
          v11 = MEMORY[0x1E69B06B0];
          if (!isTrackAtmos)
          {
            v11 = MEMORY[0x1E69B06B8];
          }

          if (TrackAudioChannelCount >= 3)
          {
            v8 = v11;
          }
        }

        FigSimpleMutexLock();
        v12 = *(v6 + 472);
        if (v12)
        {
          v13 = CFRetain(v12);
          FigSimpleMutexUnlock();
          if (v13)
          {
            v14 = *v8;
            v15 = *(CMBaseObjectGetVTable() + 16);
            if (v15)
            {
              v16 = *(v15 + 56);
              if (v16)
              {
                v16(v13, *MEMORY[0x1E69AFD40], v14);
              }
            }

            CFRelease(v13);
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }

      CFRelease(v4);
    }

    else
    {
      OUTLINED_FUNCTION_239();

      FigSignalErrorAtGM();
    }
  }
}

void playerfig_AudioPlayResourcePreempted(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_645();
    if (!*v3)
    {
      if (*(v3 + 536))
      {
        playerfig_pauseForInternalReason(v2, 0x1Eu);
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_355_0();
        OUTLINED_FUNCTION_357_0();
        OUTLINED_FUNCTION_160_0();
        playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      }
    }
  }
}

uint64_t playerfig_renderPipelineRequiresManualRestart(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_163_0();
    CFRetain(v2);
    OUTLINED_FUNCTION_120_0();

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

__CFDictionary *itemfig_createFailedNotificationPayloadWithContentStream(CFTypeRef a1, __CFDictionary *a2)
{
  FailedNotificationPayload = a2;
  cf = 0;
  if (a2)
  {
    if (a1)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(CMBaseObject, *MEMORY[0x1E6960DD8], *MEMORY[0x1E695E480], &cf);
        a1 = cf;
      }

      else
      {
        a1 = 0;
      }
    }

    FailedNotificationPayload = itemfig_createFailedNotificationPayload(a1, FailedNotificationPayload);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return FailedNotificationPayload;
}

__CFDictionary *itemfig_createFailedNotificationPayload(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Result", a2);
    if (a1)
    {
      v6 = OUTLINED_FUNCTION_228();
      CFDictionarySetValue(v6, v7, v8);
    }
  }

  return v5;
}

void playerfig_postDeferredCurrentItemDidChangeNotificationWithReason()
{
  OUTLINED_FUNCTION_565();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_440_0();
  if (CFArrayGetCount(*(v1 + 528)) >= 1 && (v3 = OUTLINED_FUNCTION_233_0()) != 0)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (v0)
    {
      v5 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v5 = "";
    }

    strncpy(__dst, v5, 8uLL);
    if (v4)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v6 = "";
    }

    strncpy(__dst, v6, 8uLL);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_601();
  v7 = OUTLINED_FUNCTION_198_0();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19);
  v16 = NotificationPayloadForProperties;
  if (NotificationPayloadForProperties)
  {
    if (v2)
    {
      CFDictionarySetValue(NotificationPayloadForProperties, @"ReasonForCurrentItemDidChange", v2);
    }

    if (v4)
    {
      OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
      itemfig_getDurationIfReady(v4, __dst);
      OUTLINED_FUNCTION_29();
      if (v17)
      {
        FigCFDictionarySetCMTime();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v16)
  {
    CFRelease(v16);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(uint64_t a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 528);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  if (Count <= a2)
  {
    return 0;
  }

  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 528), a2);
    if (a2 >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), a2 - 1);
    }

    v6 = OUTLINED_FUNCTION_502();
    result = itemfig_updateStartHostTimeEstimate(v6, v7);
    if (result)
    {
      break;
    }

    if (Count == ++a2)
    {
      return 0;
    }
  }

  return result;
}

void itemfig_vendAccessLogWhenItemStopsBeingCurrent(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
  }

  itemfig_reportingAgentReportRateChanged();
  if (*(DerivedStorage + 1745))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      itemfig_commitAccessLogEntry(v3);
      if (dword_1EAF16A10 >= 2)
      {
        if (*(DerivedStorage + 1281))
        {
          v5 = *(DerivedStorage + 1560);
          if (v5)
          {
            if (CFArrayGetCount(v5) >= 1)
            {
              cf = 0;
              if (!FigPlaybackItemLogCreateW3CLogData(*(DerivedStorage + 1560), &cf))
              {
                v6 = cf;
                Current = CFAbsoluteTimeGetCurrent();
                if (v6)
                {
                  v8 = Current;
                  Length = CFStringGetLength(v6);
                  v10 = *MEMORY[0x1E695E480];
                  v11 = OUTLINED_FUNCTION_249();
                  Mutable = CFArrayCreateMutable(v11, v12, v13);
                  theArray = Mutable;
                  if (Length > 799)
                  {
                    v15 = 0;
                    v16 = (Length + 799) / 0x320uLL;
                    DerivedStorage = 1;
                    do
                    {
                      if (Length >= 0x320)
                      {
                        v17 = 800;
                      }

                      else
                      {
                        v17 = Length;
                      }

                      v18 = v6;
                      v47.location = v15;
                      v47.length = v17;
                      v19 = CFStringCreateWithSubstring(v10, v6, v47);
                      if (v19)
                      {
                        v20 = v19;
                        v37 = v19;
                        v21 = OUTLINED_FUNCTION_249();
                        v23 = CFStringCreateWithFormat(v21, v22, @"[%.3f: %d/%d] %@", *&v8, DerivedStorage, v16, v37);
                        CFRelease(v20);
                        if (v23)
                        {
                          CFArrayAppendValue(theArray, v23);
                          CFRelease(v23);
                        }
                      }

                      Length -= v17;
                      v15 += v17;
                      v25 = DerivedStorage++ >= v16 || Length <= 0;
                      v6 = v18;
                    }

                    while (!v25);
                  }

                  else
                  {
                    CFArrayAppendValue(Mutable, v6);
                  }

                  if (theArray)
                  {
                    CFRetain(theArray);
                    v26 = OUTLINED_FUNCTION_413();
                    CFRelease(v26);
                    if (DerivedStorage)
                    {
                      v27 = &unk_1EAF16000;
                      if (CFArrayGetCount(DerivedStorage) >= 1)
                      {
                        v28 = 0;
                        do
                        {
                          v29 = OUTLINED_FUNCTION_266();
                          ValueAtIndex = CFArrayGetValueAtIndex(v29, v30);
                          if (v27[644] >= 2u)
                          {
                            v32 = ValueAtIndex;
                            OUTLINED_FUNCTION_397_0();
                            v33 = OUTLINED_FUNCTION_346_0();
                            os_log_type_enabled(v33, type);
                            OUTLINED_FUNCTION_134();
                            if (v35)
                            {
                              v36 = v34;
                            }

                            else
                            {
                              v36 = v40;
                            }

                            if (v36)
                            {
                              v42 = 136315395;
                              v43 = "itemfig_vendAccessLogWhenItemStopsBeingCurrent";
                              v44 = 2113;
                              v45 = v32;
                              OUTLINED_FUNCTION_146();
                              OUTLINED_FUNCTION_108();
                              _os_log_send_and_compose_impl();
                            }

                            OUTLINED_FUNCTION_88_0();
                            v27 = &unk_1EAF16000;
                          }

                          ++v28;
                        }

                        while (v28 < CFArrayGetCount(DerivedStorage));
                      }

                      CFRelease(DerivedStorage);
                    }
                  }
                }

                CFRelease(cf);
              }
            }
          }
        }
      }

      CFRelease(v4);
    }
  }
}

uint64_t playerfig_scheduleEmptyConfigurationsToVideoTargetsForItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_327_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 256);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  v9 = OUTLINED_FUNCTION_293();
  DataChannelConfigurationAndSetIdentifiers = playerfig_createDataChannelConfigurationAndSetIdentifiers(v9, v10, v11, v12);
  if (DataChannelConfigurationAndSetIdentifiers)
  {
LABEL_23:
    v31 = DataChannelConfigurationAndSetIdentifiers;
    if (v8)
    {
      goto LABEL_21;
    }

    return v31;
  }

  if (v8 && CFArrayGetCount(v8) >= 1)
  {
    OUTLINED_FUNCTION_332_0();
    do
    {
      v14 = OUTLINED_FUNCTION_415_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
      if (*(a3 + 12))
      {
        OUTLINED_FUNCTION_130_0();
        VTable = CMBaseObjectGetVTable();
        v27 = *(VTable + 16);
        v26 = VTable + 16;
        if (!*(v27 + 64))
        {
LABEL_19:
          v31 = 4294954514;
LABEL_20:
          if (v8)
          {
            goto LABEL_21;
          }

          return v31;
        }

        v28 = OUTLINED_FUNCTION_315_0(v26, v19, v20, v21, v22, v23, v24, v25, v33);
        DataChannelConfigurationAndSetIdentifiers = v29(ValueAtIndex, 0, v28);
        if (DataChannelConfigurationAndSetIdentifiers)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (!v17)
        {
          goto LABEL_19;
        }

        DataChannelConfigurationAndSetIdentifiers = v17(ValueAtIndex, 0);
        if (DataChannelConfigurationAndSetIdentifiers)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_220_0();
    }

    while (!v30);
  }

  v31 = 0;
  if (!v3)
  {
    goto LABEL_20;
  }

  *(v6 + 916) = 0;
  if (v8)
  {
LABEL_21:
    CFRelease(v8);
  }

  return v31;
}

void itemfig_ExternalProtectionStatusChanged()
{
  OUTLINED_FUNCTION_163_0();
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (v0)
    {
      CFRetain(v0);
    }

    OUTLINED_FUNCTION_120_0();
    FigDeferNotificationToDispatchQueue();

    CFRelease(v1);
  }
}

void itemfig_DeferredUnlikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  OUTLINED_FUNCTION_216_0();
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 1952);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8, @"playerStats", 304, 0, 0);
    }
  }

  FigSimpleMutexUnlock();
  playerfig_updatePlaybackStateAndBossRate(v6, 6, 0);
  OUTLINED_FUNCTION_206_0();

  itemfig_DeferredPostNotificationOnDispatchQueue(v10, v11, v12, v13, a5);
}

void itemfig_DeferredPlayableRangeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  OUTLINED_FUNCTION_187();
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  CMBaseObjectGetDerivedStorage();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v7, v5, v8, v9, v10, v11, v12, v13, @"PlayableTimeIntervals", 0);
  v15 = NotificationPayloadForProperties;
  if (a5 && NotificationPayloadForProperties)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = *(DerivedStorage + 1192);
    v19 = *(v17 + 1424);
    if (v18 >= v19)
    {
      v20 = *(v17 + 1424);
    }

    else
    {
      v20 = *(DerivedStorage + 1192);
    }

    if (!v19)
    {
      v20 = *(DerivedStorage + 1192);
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = *(v17 + 1424);
    }

    if (v21 >= 1 && (Value = FigCFDictionaryGetValue()) != 0 && CFArrayGetCount(Value) >= 1)
    {
      OUTLINED_FUNCTION_132_0(MEMORY[0x1E6960CC0]);
      itemfig_getNonNegativeCurrentTime(v5, &v34);
      v23 = OUTLINED_FUNCTION_396();
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
      time = v34;
      Seconds = CMTimeGetSeconds(&time);
      CFDictionaryGetValue(ValueAtIndex, @"end");
      FigCFNumberGetFloat64();
      v28 = v27 - Seconds >= v21;
    }

    else
    {
      v28 = 0;
    }

    v29 = *MEMORY[0x1E695E4D0];
    if (v29 != CFDictionaryGetValue(a5, @"FPM_IsFilling") || v28)
    {
      v31 = @"Full";
    }

    else
    {
      v31 = @"Filling";
    }

    FigSimpleMutexLock();
    v32 = FigCFArrayContainsValue();
    FigSimpleMutexUnlock();
    if (v28 && !v32)
    {
      OUTLINED_FUNCTION_228();
      OUTLINED_FUNCTION_408_0();
      CMNotificationCenterPostNotification();
      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer();
    }

    CFDictionarySetValue(v15, @"CurrentBufferState", v31);
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_426();
    CMNotificationCenterPostNotification();
  }

  else
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_426();
    CMNotificationCenterPostNotification();
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  CFRelease(v15);
LABEL_29:
  CFRelease(v5);
}

void itemfig_ReachedOverlappedStartTime(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    v5 = OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_311(v5, v6, v7, v8, v9, v10, v11, v12, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (!*DerivedStorage)
  {
    v13 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v13)
    {
      v14 = v13;
      v15 = CMBaseObjectGetDerivedStorage();
      if (!*v15)
      {
        v16 = v15;
        v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
        if (v17)
        {
          v18 = v17;
          *v17 = CFRetain(v14);
          if (a2)
          {
            v19 = CFRetain(a2);
          }

          else
          {
            v19 = 0;
          }

          v18[1] = v19;
          dispatch_async_f(v16[13], v18, itemfig_DeferReachedOverlappedStartTime_f);
        }
      }

      CFRelease(v14);
    }
  }
}

void itemfig_BossDisturbPlayback()
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v0 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v0)
    {
      v1 = v0;
      if (!*CMBaseObjectGetDerivedStorage())
      {
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_355_0();
        OUTLINED_FUNCTION_357_0();
        OUTLINED_FUNCTION_160_0();
        playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      }

      CFRelease(v1);
    }
  }
}

uint64_t itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = 0;
  v3 = 0;
  FigSimpleMutexLock();
  if (FigFileDoesFileExist() == 1 && !*(DerivedStorage + 2184) && *(DerivedStorage + 2144))
  {
    FigAssetDownloadStorageManagementCopyDownloadStartDateForAssetAtURL();
  }

  return FigSimpleMutexUnlock();
}

void itemfig_advanceToNextItem(uint64_t a1)
{
  v132 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    v5 = OUTLINED_FUNCTION_413();
    v6 = CFGetAllocator(v5);
    if (FigDeferredTransactionCreate(v6, &cf))
    {
LABEL_108:
      CFRelease(v4);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    if (dword_1EAF16A10)
    {
      LODWORD(v108) = 0;
      BYTE4(type) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_46();
      if (&unk_1EAF16000)
      {
        v8 = (CMBaseObjectGetDerivedStorage() + 972);
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v110.n128_u32[0] = 136316162;
        OUTLINED_FUNCTION_29_0();
        v112 = v8;
        *v113 = v9;
        *&v113[2] = a1;
        *&v113[10] = v10;
        *&v113[12] = v11;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0();
    }

    v12 = playerfig_doingGapless();
    v13 = MEMORY[0x1E6960C70];
    if (v12)
    {
      if (a1)
      {
        *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
      }

      itemfig_reportingAgentReportRateChanged();
      if (CFArrayGetCount(*(v1 + 528)) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 528), 1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CMTimebaseGetRate(*(DerivedStorage + 328)) != 0.0)
        {
          if (ValueAtIndex)
          {
            *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
          }

          itemfig_reportingAgentReportRateChanged();
        }
      }

      FigSimpleMutexLock();
      v17 = *(v1 + 216);
      if (v17)
      {
        v18 = CFArrayGetCount(v17) > 0;
      }

      else
      {
        v18 = 0;
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      v19 = *(v1 + 256);
      if (v19)
      {
        v20 = CFArrayGetCount(v19) > 0;
      }

      else
      {
        v20 = 0;
      }

      FigSimpleMutexUnlock();
      if (CFArrayGetCount(*(v1 + 528)) < 2)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v21 = CFArrayGetValueAtIndex(*(v1 + 528), 1);
        v22 = CMBaseObjectGetDerivedStorage();
      }

      if ((v18 || v20) && v21 && *(v1 + 536) != a1 && itemfig_hasEnqueuedFirstVideoFrame(v21))
      {
        OUTLINED_FUNCTION_233_0();
        v32 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v33 = *(v32 + 896);
        if (v33)
        {
          FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v33, 0, cf);
        }

        FigSimpleMutexUnlock();
        if (FigUseVideoReceiverForCALayer())
        {
          v14 = 0;
        }

        else
        {
          v14 = v18;
        }

        if (v14)
        {
          itemfig_handleReadyToDisplayVideoLatch(v21, 3, cf);
        }

        if (v20 && !*(v22 + 916))
        {
          v34 = OUTLINED_FUNCTION_627();
          playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v34, v35, v36, v37, v38, v39, v40, v41, v100, v101, v102, v103, v104, v105, v106, type, v108, cf, SHIDWORD(cf), v110.n128_u64[0], v110.n128_i64[1], v111, v112, *v113, *&v113[8], *&v113[16], *&v113[24], v114, *v115, *&v115[8], *&v115[16], v116.n128_u64[0], v116.n128_i64[1], v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        }

        if (*(v22 + 625))
        {
          *(v22 + 625) = 0;
          if (dword_1EAF16A10 >= 2)
          {
            v42 = OUTLINED_FUNCTION_161_0();
            OUTLINED_FUNCTION_433_0(v42, v43, v44, v45, v46, v47, v48, v49, v100, v101, v102, v103, v104, v105, v106, type, BYTE4(type), v108);
            OUTLINED_FUNCTION_28();
            if (v18)
            {
              v106 = (CMBaseObjectGetDerivedStorage() + 972);
              if (a1)
              {
                v93 = (CMBaseObjectGetDerivedStorage() + 2096);
              }

              else
              {
                v93 = "";
              }

              *&v94 = *(v1 + 48);
              FigPlayerPlaybackStateGetDescription(*(v1 + 52));
              v110.n128_u32[0] = 136316930;
              OUTLINED_FUNCTION_174_0();
              *&v113[12] = v93;
              *&v113[20] = v95;
              *&v113[22] = v21;
              *&v113[30] = v95;
              v114 = v94;
              *v115 = v96;
              *&v115[2] = v97;
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v98 = OUTLINED_FUNCTION_273_0();
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v98, v99);
          v13 = MEMORY[0x1E6960C70];
          v116 = *MEMORY[0x1E6960C70];
          OUTLINED_FUNCTION_294_0(*(MEMORY[0x1E6960C70] + 16), v116, v100, v101, v102, v103, v104, v105, v106, type, v108, cf, v110, v111, v112, *v113, *&v113[8], *&v113[16], *&v113[24], v114, *v115, *&v115[8], *&v115[16], v116.n128_i64[0]);
          goto LABEL_63;
        }
      }

      else
      {
        if (dword_1EAF16A10)
        {
          v23 = OUTLINED_FUNCTION_161_0();
          OUTLINED_FUNCTION_433_0(v23, v24, v25, v26, v27, v28, v29, v30, v100, v101, v102, v103, v104, v105, v106, type, BYTE4(type), v108);
          OUTLINED_FUNCTION_28();
          if (v18)
          {
            v106 = (CMBaseObjectGetDerivedStorage() + 972);
            if (a1)
            {
              v31 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v31 = "";
            }

            v105 = v31;
            if (v21)
            {
              v50 = "YES";
            }

            else
            {
              v50 = "NO";
            }

            if (*(v1 + 536) == a1)
            {
              v51 = "NO";
            }

            else
            {
              v51 = "YES";
            }

            v103 = v51;
            v104 = v50;
            if (v18 || v20)
            {
              v52 = "YES";
            }

            else
            {
              v52 = "NO";
            }

            itemfig_hasEnqueuedFirstVideoFrame(v21);
            v110.n128_u32[0] = 136317186;
            OUTLINED_FUNCTION_29_0();
            v112 = v106;
            *v113 = v53;
            *&v113[2] = a1;
            *&v113[10] = v54;
            *&v113[12] = v105;
            *&v113[20] = v54;
            *&v113[22] = v104;
            *&v113[30] = v54;
            v114 = v103;
            *v115 = v54;
            *&v115[2] = v52;
            *&v115[10] = v54;
            *&v115[12] = v55;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        LOBYTE(v14) = 0;
      }

      v13 = MEMORY[0x1E6960C70];
    }

    else
    {
      LOBYTE(v14) = 0;
    }

LABEL_63:
    v56 = *(v1 + 536);
    if (v56 == a1)
    {
      v57 = 0;
      *(v1 + 544) = 0;
    }

    else
    {
      v58 = CMBaseObjectGetDerivedStorage();
      if (v58)
      {
        v57 = *(v58 + 1329) != 0;
      }

      else
      {
        v57 = 0;
      }
    }

    OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_439();
    playerfig_gracefullyRemoveItemFromPlayQueue();
    playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
    if (FigUseVideoReceiverForCALayer())
    {
      itemfig_clearAllImageQueueTables(a1);
    }

    else
    {
      itemfig_removeAllImageQueues(a1);
      if (!*(v1 + 536))
      {
        playerfig_freeTransitionImageQueueAndSlot();
      }
    }

    v59 = !v57;
    if (v56 == a1)
    {
      v59 = 0;
    }

    if (!v59)
    {
      v60 = OUTLINED_FUNCTION_198();
      playerfig_prepareWorkingItem(v60, v61, v62);
    }

    if (CFArrayGetCount(*(v1 + 528)) < 1)
    {
      v67 = OUTLINED_FUNCTION_312();
      playeritemfig_releaseRenderPipelines(v67, v68, v69, v70, v71, v72, v73, v74, v100, v101, v102, v103, v104, v105, v106, type, v108, cf, v110.n128_i64[0], v110.n128_i64[1], v111, v112, *v113, *&v113[8]);
    }

    else
    {
      v63 = OUTLINED_FUNCTION_233_0();
      v64 = CMBaseObjectGetDerivedStorage();
      v65 = v64;
      if (*(v64 + 625))
      {
        *(v64 + 625) = 0;
        if (dword_1EAF16A10 >= 2)
        {
          v66 = OUTLINED_FUNCTION_161_0();
          os_log_type_enabled(v66, BYTE4(type));
          OUTLINED_FUNCTION_37();
          if (v13)
          {
            v106 = (CMBaseObjectGetDerivedStorage() + 972);
            if (a1)
            {
              v75 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v75 = "";
            }

            *&v76 = *(v1 + 48);
            FigPlayerPlaybackStateGetDescription(*(v1 + 52));
            v110.n128_u32[0] = 136316930;
            OUTLINED_FUNCTION_174_0();
            *&v113[12] = v75;
            *&v113[20] = v77;
            *&v113[22] = v63;
            *&v113[30] = v77;
            v114 = v76;
            *v115 = v78;
            *&v115[2] = v79;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_43_0();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
          v13 = MEMORY[0x1E6960C70];
        }

        v80 = OUTLINED_FUNCTION_273_0();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v80, v81);
        v116 = *v13;
        OUTLINED_FUNCTION_294_0(v13[1].n128_i64[0], v116, v100, v101, v102, v103, v104, v105, v106, type, v108, cf, v110, v111, v112, *v113, *&v113[8], *&v113[16], *&v113[24], v114, *v115, *&v115[8], *&v115[16], v116.n128_i64[0]);
      }

      if (FigUseVideoReceiverForCALayer())
      {
        v82 = 1;
      }

      else
      {
        v82 = v14;
      }

      if ((v82 & 1) == 0)
      {
        itemfig_handleReadyToDisplayVideoLatch(v63, 3, cf);
      }

      playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(v4);
      if (*(v1 + 584) && *(v65 + 1874))
      {
        v108 = 0;
        itemfig_getTrackStorage(v63, *(v65 + 1036), &v108);
        if (v108 && *(v108 + 2))
        {
          if (dword_1EAF16A10 >= 2)
          {
            v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v85)
            {
              v86 = v84;
            }

            else
            {
              v86 = 0;
            }

            if (v86)
            {
              v110.n128_u32[0] = 136315138;
              *(v110.n128_u64 + 4) = "itemfig_advanceToNextItem";
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0();
          }

          itemfig_updateVolumeOffset(v63);
          v87 = OUTLINED_FUNCTION_293();
          itemfig_applyAudioProcessingUnitsToTrack(v87, v88);
          v89 = OUTLINED_FUNCTION_293();
          itemfig_applyAllAudioCurvesToTrack(v89, v90);
          itemfig_applyAdjustTargetLevel();
          itemfig_applyAdjustCompressionProfile();
        }

        *(v65 + 1874) = 0;
      }

      v91 = OUTLINED_FUNCTION_627();
      playerfig_updateResourceUsageOnGlobalResourceArbiter(v91, v92);
    }

    FigDeferredTransactionCommit(cf, 0);
    goto LABEL_108;
  }
}

void itemfig_metricEventPublishPlaybackEndEvent()
{
  v24 = 0;
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  cf = 0;
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 2232))
    {
      if (*(DerivedStorage + 128))
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_179();
        CMByteStreamGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v3 = OUTLINED_FUNCTION_188();
          v4(v3);
        }
      }

      itemfig_getDurationIfReady(v1, v23);
      OUTLINED_FUNCTION_92_0(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21, *&cf, v23[0]);
      Seconds = CMTimeGetSeconds(v13);
      if (Seconds < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = FigCFNumberGetSInt64() / Seconds;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      if (!FigMetricItemPlaybackEndEventCreate(AllocatorForMedia, v15, &cf) && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v17 = OUTLINED_FUNCTION_265();
        v18(v17);
      }
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void itemfig_reportingAgentReportRateChanged()
{
  OUTLINED_FUNCTION_193();
  if (!v1 || (v2 = v0, DerivedStorage = CMBaseObjectGetDerivedStorage(), v4 = FigCFWeakReferenceHolderCopyReferencedObject(), v5 = CMBaseObjectGetDerivedStorage(), !v4))
  {
    OUTLINED_FUNCTION_191();
    return;
  }

  if (*(DerivedStorage + 2048) != v2)
  {
    v6 = v5;
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 1952))
    {
      goto LABEL_51;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v7 = OUTLINED_FUNCTION_245();
      v8(v7);
    }

    if (*(DerivedStorage + 1952))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v9 = OUTLINED_FUNCTION_382_0();
        v10(v9);
      }

      if (*(DerivedStorage + 1952))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v11 = OUTLINED_FUNCTION_382_0();
          v12(v11);
        }

        if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          OUTLINED_FUNCTION_245();
          OUTLINED_FUNCTION_408_0();
          v13();
        }
      }
    }

    *(DerivedStorage + 2048) = v2;
    if (!*(DerivedStorage + 2040))
    {
      v14 = v2 != 0.0 && *(v6 + 52) == 4;
      if (v14)
      {
        if (*(DerivedStorage + 2041))
        {
          CFAbsoluteTimeGetCurrent();
        }

        if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v15 = OUTLINED_FUNCTION_245();
          v16(v15);
        }

        *(DerivedStorage + 2040) = 1;
      }
    }

    if (v2 != 0.0)
    {
      goto LABEL_51;
    }

    v17 = CMBaseObjectGetDerivedStorage();
    if (v17)
    {
      v18 = v17;
      if (*(v17 + 1952))
      {
        v19 = *(v17 + 648);
        if (v19 && CFArrayGetCount(v19) >= 1)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            if (*(CFArrayGetValueAtIndex(*(v18 + 648), 0) + 8))
            {
              OUTLINED_FUNCTION_363_0();
              if (v14)
              {
                ++v20;
              }

              if (v22 == 1986618469)
              {
                ++v21;
              }
            }

            OUTLINED_FUNCTION_220_0();
          }

          while (!v14);
          if (v20 >= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v21 = 0;
        }

        if (v21 >= 1)
        {
LABEL_45:
          if (*(v18 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_373();
            OUTLINED_FUNCTION_333();
            v23();
          }
        }
      }
    }

    if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_408_0();
      v24();
    }

LABEL_51:
    FigSimpleMutexUnlock();
  }

  OUTLINED_FUNCTION_191();

  CFRelease(v25);
}

const __CFArray *itemfig_hasEnqueuedFirstVideoFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  itemfig_getVideoTargetTableForVideoTrack(a1, &v14);
  if (v14)
  {
    result = FigImageQueueTableWasFirstImageEnqueued(v14);
    if (result)
    {
      return result;
    }
  }

  v5 = *(v3 + 1088);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        v9 = OUTLINED_FUNCTION_403_0();
        itemfig_getTrackStorage(v9, v10, v11);
      }
    }
  }

  result = *(v3 + 856);
  if (!result)
  {
    return result;
  }

  if (CFArrayGetCount(result) < 1)
  {
    return 0;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 856), 0);
    result = FigImageQueueTableWasFirstImageEnqueued(ValueAtIndex);
    if (result)
    {
      break;
    }

    OUTLINED_FUNCTION_378_0();
    if (v13)
    {
      return 0;
    }
  }

  return result;
}

void playerfig_connectLayerSynchronizerToVideoOutputs(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16, CFTypeRef cf, __int128 a18, int a19, __int16 a20, __int16 a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_253();
  a54 = v55;
  a55 = v56;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  a42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v64 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    FigSimpleMutexLock();
    v65 = *(DerivedStorage + 256);
    if (v65)
    {
      v66 = CFRetain(v65);
    }

    else
    {
      v66 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v67 = *(DerivedStorage + 216);
    if (v67)
    {
      v68 = CFRetain(v67);
      v66 = 0;
      goto LABEL_9;
    }

    v66 = 0;
  }

  v68 = 0;
LABEL_9:
  v69 = CFGetAllocator(v62);
  if (!FPSupport_CreateLayerSynchronizerConfiguration(v69, 1, v68, v66, *(v64 + 904), &cf))
  {
    FigSimpleMutexLock();
    v70 = (v64 + 896);
    v71 = *(v64 + 896);
    if (v71 || (FigLayerSynchronizerCreate((v64 + 896)), (v71 = *v70) != 0))
    {
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_150_0();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v73 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        if (OUTLINED_FUNCTION_124_0(v73))
        {
          v74 = *v70;
          LODWORD(a18) = 136316162;
          *(&a18 + 4) = "playerfig_connectLayerSynchronizerToVideoOutputs";
          WORD6(a18) = 2048;
          *(&a18 + 14) = v62;
          a21 = 2048;
          a22 = v60;
          LOWORD(a23) = 2112;
          *(&a23 + 2) = cf;
          WORD5(a23) = 2048;
          *(&a23 + 12) = v74;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_248_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0();
        v71 = *v70;
      }

      v75 = FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v71, cf, v58);
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_150_0();
        v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v78 = os_log_type_enabled(v77, type);
        if (OUTLINED_FUNCTION_71_0(v78))
        {
          LODWORD(a18) = 136315394;
          *(&a18 + 4) = "playerfig_connectLayerSynchronizerToVideoOutputs";
          WORD6(a18) = 1024;
          *(&a18 + 14) = v76;
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_51_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_449();
      }

      FigSimpleMutexUnlock();
      if (!*(v64 + 880))
      {
        v79 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v79)
        {
          if (FigSyncMomentSourceCreateWithDispatchQueueAndDestructor(playerfig_syncMomentSourceCallback, v79, playerfig_releaseItemWeakReference, *(v64 + 328), *(v64 + 104), (v64 + 880)))
          {
            OUTLINED_FUNCTION_150_0();
            v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v81 = os_log_type_enabled(v80, type);
            if (OUTLINED_FUNCTION_109_0(v81))
            {
              LODWORD(a18) = 136315138;
              *(&a18 + 4) = "playerfig_connectLayerSynchronizerToVideoOutputs";
              OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_524();
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_134_0();
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_121();
      if (v84)
      {
        v85 = v83;
      }

      else
      {
        v85 = 0;
      }

      if (v85)
      {
        LODWORD(a18) = 136315138;
        *(&a18 + 4) = "playerfig_connectLayerSynchronizerToVideoOutputs";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_414();
      FigSimpleMutexUnlock();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  OUTLINED_FUNCTION_252();
}

void playerfig_syncMomentSourceCallback(uint64_t a1, const void *a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      if (*(v6 + 112))
      {
        v7 = pthread_main_np();
        v8 = *(v6 + 112);
        if (v7)
        {
          FigLayerSynchronizerSynchronizeToMoment(v8, a2, 0);
        }

        else
        {
          FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v8, a2);
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

void itemfig_assureContentProtectionReadyForInspection(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (!itemfig_assureBasicsReadyForInspection(a1))
  {
    CFGetAllocator(a1);
    v3 = OUTLINED_FUNCTION_179();
    FigAssetGetCMBaseObject(v3);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_188();
      if (!v5(v4))
      {
        if (!BOOLean || !CFBooleanGetValue(BOOLean) || *(v1 + 1200) || (CFGetAllocator(a1), v6 = OUTLINED_FUNCTION_413(), FigAssetGetCMBaseObject(v6), *(*(CMBaseObjectGetVTable() + 8) + 48)) && (v7 = OUTLINED_FUNCTION_308(), !v8(v7)))
        {
          if (!*(v1 + 1200) && *(v1 + 1208))
          {
            FigCPEProtectorCreateForScheme(*MEMORY[0x1E695E480], @"com.apple.basicAES", 0, v1 + 1200);
          }
        }
      }
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }
}

void itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 2056);
  if (v1)
  {
    v2 = *(DerivedStorage + 1968);
    if (v2 != 0.0)
    {
      v3 = *(DerivedStorage + 1992);
      if (v3 != 0.0)
      {
        v4 = *(DerivedStorage + 2032);
        if (v4 != 0.0)
        {
          FigNWActivitySubmitMetricsForInitialStartup(v1, v2, v3, v4);
          v5 = *(DerivedStorage + 2056);
          if (v5)
          {
            CFRelease(v5);
            *(DerivedStorage + 2056) = 0;
          }
        }
      }
    }
  }
}

uint64_t itemfig_lookForEmptyEditAndMapTime(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_375_0();
  v8 = v7;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  *&v18.start.value = *v9;
  v18.start.epoch = *(v9 + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    goto LABEL_10;
  }

  *&range.start.value = *&v18.start.value;
  range.start.epoch = v18.start.epoch;
  v11 = v10(v8, &range, &v23);
  if (v11 == -12521)
  {
LABEL_3:
    v12 = 0;
    *a4 = 1;
    goto LABEL_11;
  }

  v12 = v11;
  if (!v11)
  {
    v13 = v23;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v15 = v14(v13, v22);
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        range = v22[1];
        OUTLINED_FUNCTION_130_0();
        if (!CMTimeRangeContainsTime(&range, &v18.start) || (v22[0].start.flags & 1) == 0)
        {
          goto LABEL_3;
        }

        v16 = *v5;
        v19.epoch = *(v5 + 2);
        range = v22[1];
        v18 = v22[0];
        *&v19.value = v16;
        CMTimeMapTimeFromRangeToRange(&v20, &v19, &range, &v18);
        v12 = 0;
        *v4 = v20;
      }

      goto LABEL_11;
    }

LABEL_10:
    v12 = 4294954514;
  }

LABEL_11:
  if (v23)
  {
    CFRelease(v23);
  }

  return v12;
}

uint64_t itemfig_createAccessLogEntry()
{
  OUTLINED_FUNCTION_375_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  number = 0;
  theDict = 0;
  v89 = 0;
  value = 0;
  if (!v0)
  {
    OUTLINED_FUNCTION_429();
    v9 = FigSignalErrorAtGM();
LABEL_101:
    v27 = 0;
    goto LABEL_59;
  }

  v4 = v3;
  if (!*(v3 + 128))
  {
    v27 = 0;
    v9 = 4294954513;
    goto LABEL_59;
  }

  CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = MEMORY[0x1E695E480];
  if (*(*(VTable + 8) + 48))
  {
    v7 = OUTLINED_FUNCTION_401_0();
    v9 = v8(v7);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  cf.value = 0;
  Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theDict = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_101;
  }

  CFDictionaryAddValue(Mutable, @"s-playback-type", @"FILE");
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v11 = OUTLINED_FUNCTION_401_0();
    if (!v12(v11))
    {
      v55 = CFDictionaryGetValue(cf.value, @"URL");
      if (v55)
      {
        CFDictionaryAddValue(theDict, @"uri", v55);
      }

      v56 = CFDictionaryGetValue(cf.value, @"TotalReadTime");
      if (v56)
      {
        CFDictionaryAddValue(theDict, @"c-transfer-duration", v56);
      }

      v57 = CFDictionaryGetValue(cf.value, @"TotalBytesRead");
      if (!v57)
      {
        goto LABEL_13;
      }

      v16 = v57;
      v14 = theDict;
      v15 = @"bytes";
      goto LABEL_12;
    }
  }

  v13 = *(v4 + 112);
  if (v13)
  {
    CFURLGetString(v13);
    v14 = OUTLINED_FUNCTION_292();
LABEL_12:
    CFDictionaryAddValue(v14, v15, v16);
  }

LABEL_13:
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v17 = OUTLINED_FUNCTION_401_0();
    v18(v17);
  }

  if (*(v4 + 1040))
  {
    cf.value = 0;
    valuePtr = 0;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v19 = OUTLINED_FUNCTION_489();
      if (!v20(v19))
      {
        FigBaseObject = FigTrackReaderGetFigBaseObject(cf.value);
        v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v61)
        {
          if (!v61(FigBaseObject, @"NominalFrameRate", *v6, &valuePtr) && valuePtr)
          {
            CFDictionarySetValue(theDict, @"c-nominal-framerate", valuePtr);
            CFRelease(valuePtr);
          }
        }
      }
    }
  }

  v21 = CFDateCreate(*v6, *(v4 + 1568));
  if (v21)
  {
    v22 = v21;
    CFDictionarySetValue(theDict, @"date", v21);
    CFRelease(v22);
    v23 = CFDictionaryGetValue(theDict, @"c-transfer-duration");
    if (v23)
    {
      CFNumberGetValue(v23, kCFNumberDoubleType, (v4 + 1688));
    }

    v24 = CFDictionaryGetValue(theDict, @"bytes");
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberSInt64Type, (v4 + 1672));
    }

    CFDictionaryRemoveValue(theDict, @"c-transfer-duration");
    CFDictionaryRemoveValue(theDict, @"bytes");
    v25 = *(v4 + 1672) - *(v4 + 1664);
    if (v25 < 0)
    {
      v25 = 0;
    }

    else
    {
      v26 = *(v4 + 1688) - *(v4 + 1680);
      if (v26 >= 0.0)
      {
        v27 = v26 > 0.0;
        v28 = OUTLINED_FUNCTION_142_0();
        if (v28)
        {
          goto LABEL_58;
        }

LABEL_28:
        cf.value = v25;
        v28 = itemfig_addCFNumberToAccessLogEntry();
        if (v28)
        {
          goto LABEL_58;
        }

        if (*(v4 + 1738))
        {
          v28 = OUTLINED_FUNCTION_142_0();
          v27 = 1;
          if (v28)
          {
            goto LABEL_58;
          }
        }

        DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
        if (DoubleIfPresent)
        {
          OUTLINED_FUNCTION_126_0(DoubleIfPresent, v30, v31, v32, v33, v34, v35, v36, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          FigCFDictionarySetDouble();
        }

        v28 = FigCFDictionaryGetDoubleIfPresent();
        if (v28)
        {
          OUTLINED_FUNCTION_126_0(v28, v37, v38, v39, v40, v41, v42, v43, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          v28 = FigCFDictionarySetDouble();
        }

        if (*(v4 + 1616) != 0.0)
        {
          OUTLINED_FUNCTION_126_0(v28, v37, v38, v39, v40, v41, v42, v43, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          v28 = OUTLINED_FUNCTION_142_0();
          v27 = 1;
          if (v28)
          {
            goto LABEL_58;
          }
        }

        if (*(v4 + 1624) != 0.0)
        {
          OUTLINED_FUNCTION_126_0(v28, v37, v38, v39, v40, v41, v42, v43, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          v28 = OUTLINED_FUNCTION_142_0();
          v27 = 1;
          if (v28)
          {
            goto LABEL_58;
          }
        }

        if (*(v4 + 1632) != 0.0)
        {
          OUTLINED_FUNCTION_126_0(v28, v37, v38, v39, v40, v41, v42, v43, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          v28 = OUTLINED_FUNCTION_142_0();
          v27 = 1;
          if (v28)
          {
            goto LABEL_58;
          }
        }

        if (*(v4 + 1640) != 0.0)
        {
          OUTLINED_FUNCTION_126_0(v28, v37, v38, v39, v40, v41, v42, v43, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
          v28 = OUTLINED_FUNCTION_142_0();
          v27 = 1;
          if (v28)
          {
            goto LABEL_58;
          }
        }

        CMByteStreamGetCMBaseObject();
        v44 = CMBaseObjectGetVTable();
        v51 = *(v44 + 8);
        v28 = v44 + 8;
        if (*(v51 + 48))
        {
          v52 = OUTLINED_FUNCTION_401_0();
          v28 = v53(v52);
          if (!v28)
          {
            if (value)
            {
              CFDictionarySetValue(theDict, @"c-disk-backed", value);
              CFRelease(value);
              v27 = 1;
            }
          }
        }

        if (*(v4 + 1696) > 0.0)
        {
          v28 = OUTLINED_FUNCTION_142_0();
          if (v28)
          {
            goto LABEL_58;
          }

          v27 = 1;
        }

        if (*(v4 + 1704) <= 0.0)
        {
          goto LABEL_44;
        }

        v28 = OUTLINED_FUNCTION_142_0();
        if (!v28)
        {
          v27 = 1;
LABEL_44:
          v54 = *(v4 + 1320);
          if (v54)
          {
            CFDictionarySetValue(theDict, @"c-service-identifier", v54);
            v27 = 1;
          }

          if ((*(v4 + 1228) & 1) == 0 || (v28 = number) == 0 || (valuePtr = 0, v28 = CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr), valuePtr < 1) || (OUTLINED_FUNCTION_107(v4 + 1216), CMTimeGetSeconds(&cf), v28 = OUTLINED_FUNCTION_142_0(), !v28) && (OUTLINED_FUNCTION_358_0(v28, v80, v81, v82, v83, v84, v85, v86, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict), v28 = OUTLINED_FUNCTION_142_0(), !v28))
          {
            if (!*(v4 + 1736))
            {
              v9 = 0;
              goto LABEL_59;
            }

            v62 = *(v4 + 1584);
            if (*(v4 + 1592) != 0.0)
            {
              v62 = v62 + (CFAbsoluteTimeGetCurrent() - *(v4 + 1592)) * fabsf(*(DerivedStorage + 48));
            }

            OUTLINED_FUNCTION_358_0(v28, v45, v54, v46, v47, v48, v49, v50, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
            *&cf.value = v62;
            v28 = itemfig_addCFNumberToAccessLogEntry();
            if (!v28)
            {
              if (!*(v4 + 1737) || (v28 = OUTLINED_FUNCTION_142_0(), v27 = 1, !v28))
              {
                itemfig_getFrameDropCountFromAllVideoPipelines(v1, (v4 + 1728));
                OUTLINED_FUNCTION_358_0(v63, v64, v65, v66, v67, v68, v69, v70, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
                cf.value = v71;
                v28 = itemfig_addCFNumberToAccessLogEntry();
                if (!v28)
                {
                  OUTLINED_FUNCTION_358_0(v28, v72, v73, v74, v75, v76, v77, v78, cf.value, *&cf.timescale, cf.epoch, valuePtr, v89, value, number, theDict);
                  cf.value = v79;
                  v28 = itemfig_addCFNumberToAccessLogEntry();
                }
              }
            }
          }
        }

LABEL_58:
        v9 = v28;
        goto LABEL_59;
      }
    }

    v27 = 0;
    goto LABEL_28;
  }

  v27 = 0;
  v9 = 4294954434;
LABEL_59:
  if (number)
  {
    CFRelease(number);
  }

  if (!v9)
  {
    v58 = theDict;
    if (v27)
    {
      v9 = 0;
      goto LABEL_66;
    }

    v9 = 4294954513;
    if (!theDict)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  v58 = theDict;
  if (theDict)
  {
LABEL_63:
    CFRelease(v58);
    v58 = 0;
  }

LABEL_66:
  *v0 = v58;
  return v9;
}

uint64_t itemfig_addCFNumberToAccessLogEntry()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_219_0();
  v5 = CFNumberCreate(v2, v3, v4);
  if (!v5)
  {
    return 4294954434;
  }

  v6 = v5;
  CFDictionarySetValue(v1, v0, v5);
  CFRelease(v6);
  return 0;
}

void itemfig_removeImageQueueListenersForObsoleteImageQueues()
{
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    Count = CFArrayGetCount(v0);
  }

  else
  {
    Count = 0;
  }

  if (*DerivedStorage)
  {
    goto LABEL_17;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = v6;
  if (!v1 || !v6)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_651();
    return;
  }

  if (CFArrayGetCount(v1) >= 1)
  {
    OUTLINED_FUNCTION_402_0();
    do
    {
      v8 = OUTLINED_FUNCTION_389_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (Count < 1 || (v11 = OUTLINED_FUNCTION_312(), v14.length = Count, !CFArrayContainsValue(v11, v14, ValueAtIndex)))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      ++v3;
    }

    while (v2 != v3);
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_651();

  CFRelease(v12);
}

void playerfig_DeferredSynchronousFrameEnqueued(const void *a1)
{
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v3 = DerivedStorage;
      FigSimpleMutexLock();
      v4 = *(v3 + 27);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        v6 = objc_autoreleasePoolPush();
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        if (Count >= 1)
        {
          do
          {
            [CFArrayGetValueAtIndex(*(v3 + 27) 0)];
            OUTLINED_FUNCTION_377_0();
          }

          while (!v7);
        }

        [MEMORY[0x1E6979518] commit];
        objc_autoreleasePoolPop(v6);
      }

      FigSimpleMutexUnlock();
    }
  }

  CFRelease(a1);
}

uint64_t playerfig_setBossRateAndAnchorTime(uint64_t a1, int a2, __int128 *a3, __int128 *a4, float a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  OUTLINED_FUNCTION_440_0();
  if (*(v5 + 536))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
  }

  if (*(v5 + 48) != a5)
  {
    v13 = *(v5 + 52) != 4 || dword_1EAF16A10 == 0;
    if (!v13)
    {
      v14 = OUTLINED_FUNCTION_114_0();
      os_log_type_enabled(v14, BYTE3(type));
      OUTLINED_FUNCTION_70();
      if (&unk_1EAF16000)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(v95.value) = 136316162;
        OUTLINED_FUNCTION_47();
        *(&v95.flags + 2) = a1;
        HIWORD(v95.epoch) = 2082;
        v96 = v15;
        *v97 = v16;
        *&v97[2] = v17;
        *&v97[10] = v16;
        *&v97[12] = v18;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_187_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454();
    }
  }

  if (*(v5 + 568))
  {
    *(v5 + 568) = 0;
    playerfig_postDeferredPrerollWasCancelledNotification(a1, *(v5 + 576));
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_29();
    if (v13 && CFArrayGetCount(*(v5 + 528)) >= 1)
    {
      v19 = OUTLINED_FUNCTION_233_0();
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v20)
      {
        v20(v19, a3);
      }

      if ((*(a3 + 12) & 1) == 0)
      {
        v21 = MEMORY[0x1E6960CC0];
        *a3 = *MEMORY[0x1E6960CC0];
        *(a3 + 2) = *(v21 + 16);
      }
    }
  }

  if (CFArrayGetCount(*(v5 + 528)) >= 1)
  {
    OUTLINED_FUNCTION_233_0();
    v22 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_221_0();
    if (v13)
    {
      itemfig_invalidateRampOutTimer();
    }

    else if (FigPlaybackBossGetRate(*(v22 + 352)) == 0.0)
    {
      *(v22 + 1352) = 0;
    }

    OUTLINED_FUNCTION_29();
    if (v13)
    {
      if (!dword_1EAF16A10)
      {
LABEL_56:
        v67 = *a3;
        *(v22 + 564) = *(a3 + 2);
        *(v22 + 548) = v67;
        v68 = *a4;
        *(v22 + 588) = *(a4 + 2);
        *(v22 + 572) = v68;
        goto LABEL_57;
      }

      v24 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_437_0(v24, v25, v26, v27, v28, v29, v30, v31, v76, v79, v82, v86, v90, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_106_0();
      if (!&unk_1EAF16000)
      {
LABEL_55:
        OUTLINED_FUNCTION_187_0();
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_56;
      }

      if (a1)
      {
        v32 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v32 = "";
      }

      v87 = v32;
      v41 = *(v5 + 536);
      if (v41)
      {
        v42 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v42 = "";
      }

      v83 = v42;
      OUTLINED_FUNCTION_200_0();
      Seconds = CMTimeGetSeconds(&time);
      v52 = OUTLINED_FUNCTION_340_0(v44, v45, v46, v47, v48, v49, v50, v51, v77, v80, v83, v87, v91, type, v95.value, *&v95.timescale, v95.epoch, v96, *v97, *&v97[8], *&v97[16], *&v97[24], v98, v99, *(&v99 + 1), v100, *&time.value, time.epoch);
      v61 = OUTLINED_FUNCTION_340_0(v53, v54, v55, v56, v57, v58, v59, v60, v78, v81, v84, v88, v92, v94, v95.value, *&v95.timescale, v95.epoch, v96, *v97, *&v97[8], *&v97[16], *&v97[24], v98, v99, *(&v99 + 1), v100, *&time.value, time.epoch);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      LODWORD(v95.value) = 136316930;
      *(&v95.value + 4) = "playerfig_setBossRateAndAnchorTime";
      LOWORD(v95.flags) = 2048;
      *(&v95.flags + 2) = a1;
      HIWORD(v95.epoch) = 2082;
      v96 = v89;
      *v97 = 2048;
      *&v97[2] = v41;
      *&v97[10] = 2082;
      *&v97[12] = v85;
      *&v97[20] = 2048;
      *&v97[22] = Seconds;
      *&v97[30] = 2048;
      v98 = *&v52;
      LOWORD(v99) = 2048;
      *(&v99 + 2) = v61 - CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32();
    }

    else
    {
      if (!DerivedStorage || (*(DerivedStorage + 584) & v23) != 1 || !dword_1EAF16A10)
      {
        goto LABEL_56;
      }

      v33 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_437_0(v33, v34, v35, v36, v37, v38, v39, v40, v76, v79, v82, v86, v90, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_106_0();
      if (!&unk_1EAF16000)
      {
        goto LABEL_55;
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v63 = *(v5 + 536);
      if (v63)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v95.value) = 136316162;
      OUTLINED_FUNCTION_47();
      *(&v95.flags + 2) = a1;
      HIWORD(v95.epoch) = 2082;
      v96 = v64;
      *v97 = v65;
      *&v97[2] = v63;
      *&v97[10] = 2082;
      *&v97[12] = v66;
      OUTLINED_FUNCTION_32();
    }

    OUTLINED_FUNCTION_34();
    _os_log_send_and_compose_impl();
    goto LABEL_55;
  }

LABEL_57:
  playerfig_cleanupOverlappedOutroComponents(a1, 0);
  if (playerfig_isCurrentItemQuiescent())
  {
    if (dword_1EAF16A10)
    {
      v73 = OUTLINED_FUNCTION_114_0();
      os_log_type_enabled(v73, BYTE3(type));
      OUTLINED_FUNCTION_125();
      if (v13)
      {
        v75 = v74;
      }

      else
      {
        v75 = HIDWORD(type);
      }

      if (v75)
      {
        LODWORD(v95.value) = 136315138;
        *(&v95.value + 4) = "playerfig_setBossRateAndAnchorTime";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_45_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_200_0();
    OUTLINED_FUNCTION_351();
    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    if (*(v5 + 536))
    {
      matched = 0;
      *(CMBaseObjectGetDerivedStorage() + 2044) = a2;
      return matched;
    }

    return 0;
  }

  if (*(v5 + 536))
  {
    if (*(DerivedStorage + 352))
    {
      if (*(DerivedStorage + 1745))
      {
        v69 = 0.0;
        if (*(v5 + 52) == 4)
        {
          v69 = *(v5 + 48);
        }

        itemfig_updateAccessLogEntry(v69);
      }

      itemfig_reportingAgentReportPlayStartMovieTime();
      itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(v5 + 536), 0);
      OUTLINED_FUNCTION_200_0();
      OUTLINED_FUNCTION_351();
      matched = itemfig_matchBossRateToPlayerRateAndPlaybackState(v70, &time, &v95);
      OUTLINED_FUNCTION_221_0();
      v71 = !v13;
      LOBYTE(time.value) = v71;
      FigCFArrayApplyFunction();
    }

    else
    {
      matched = 0;
    }

    if (*(v5 + 52) == 4)
    {
      OUTLINED_FUNCTION_221_0();
      if (!v13)
      {
        itemfig_ReportAudioPlaybackThroughFigLog(*(v5 + 536));
      }
    }

    if (*(v5 + 536))
    {
      *(CMBaseObjectGetDerivedStorage() + 2044) = a2;
    }
  }

  else
  {
    matched = 0;
  }

  FigSimpleMutexUnlock();
  return matched;
}

void itemfig_rampOut(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_283_0();
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 2072);
    voucher_adopt();
    *(v1 + 1352) = 1;
    playerfig_applySoftwareVolume(0.0, *(v1 + 1336), v4, @"SoftwareVolume2", 1);
    itemfig_ReachedEndGuts(a1);

    CFRelease(v4);
  }
}

void playerfig_stopResetDisturbReprepareAndResumeWithTransaction()
{
  OUTLINED_FUNCTION_193();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_565();
  v128 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF16A10)
  {
    LODWORD(v118.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_70();
    if (v8)
    {
      if (v0)
      {
        v11 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v11 = "";
      }

      if (v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = "";
      }

      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "playerfig_stopResetDisturbReprepareAndResumeWithTransaction";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v0;
      HIWORD(time2.epoch) = 2082;
      v121 = v11;
      v122 = 2082;
      v123 = v12;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_51_0();
      _os_log_send_and_compose_impl();
      value = v118.value;
    }

    OUTLINED_FUNCTION_134_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  if (!v6)
  {
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
      goto LABEL_51;
    }

    LODWORD(v6) = cf;
  }

  FigSimpleMutexLock();
  v13 = OUTLINED_FUNCTION_198();
  playerfig_cleanupOverlappedOutroComponents(v13, v14);
  if ((v1->flags & 1) == 0 && (v8->flags & 1) == 0)
  {
    OUTLINED_FUNCTION_221_0();
    if (!(v16 ^ v17 | v15))
    {
      v18 = *(DerivedStorage + 528);
      if (v18)
      {
        if (CFArrayGetCount(v18) >= 1)
        {
          v19 = OUTLINED_FUNCTION_233_0();
          v20 = CMBaseObjectGetDerivedStorage();
          v21 = CMTimebaseCopySource(*(v20 + 328));
          memset(&v118, 0, sizeof(v118));
          CMSyncGetTime(&v118, v21);
          outRelativeRate = 0.0;
          type = **&MEMORY[0x1E6960C70];
          outRelativeToClockOrTimebaseAnchorTime = type;
          RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v20 + 328), v21, &outRelativeRate, &type, &outRelativeToClockOrTimebaseAnchorTime);
          if (!RelativeRateAndAnchorTime && outRelativeRate > 0.0)
          {
            v127[0] = outRelativeToClockOrTimebaseAnchorTime;
            OUTLINED_FUNCTION_370_0(RelativeRateAndAnchorTime, v23, v24, v25, v26, v27, v28, v29, v98, v100, v102, v104, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v115, type.value, *&type.timescale, type.epoch, *&outRelativeRate, *&v118.value);
            if (CMTimeCompare(v127, &time2) < 1)
            {
              if (!dword_1EAF16A10)
              {
                goto LABEL_43;
              }

              v55 = OUTLINED_FUNCTION_271_0();
              OUTLINED_FUNCTION_432_0(v55, v56, v57, v58, v59, v60, v61, v62, v98, v100, v102, v104, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, SBYTE2(v113), BYTE3(v113), SHIDWORD(v113));
              OUTLINED_FUNCTION_106_0();
              if (value)
              {
                v105 = v1;
                if (v0)
                {
                  v63 = CMBaseObjectGetDerivedStorage();
                  v71 = (v63 + 972);
                }

                else
                {
                  v71 = "";
                }

                if (v19)
                {
                  v63 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_370_0(v63, v64, v65, v66, v67, v68, v69, v70, v98, v100, v102, v105, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v115, type.value, *&type.timescale, type.epoch, *&outRelativeRate, *&v118.value);
                OUTLINED_FUNCTION_660(v77, v78, v79, v80, v81, v82, v83, v84, v99, v101, v103, v107, v109, v111, rhs.value, *&rhs.timescale, rhs.epoch, v113, *&outRelativeToClockOrTimebaseAnchorTime.value);
                CMTimeSubtract(v127, &time2, &rhs);
                CMTimeGetSeconds(v127);
                LODWORD(time2.value) = 136316418;
                OUTLINED_FUNCTION_270_0("playerfig_stopResetDisturbReprepareAndResumeWithTransaction");
                v121 = v71;
                OUTLINED_FUNCTION_326_0();
                *(v85 + 54) = v86;
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_34();
                _os_log_send_and_compose_impl();
              }
            }

            else
            {
              *v1 = type;
              HostTimeClock = CMClockGetHostTimeClock();
              OUTLINED_FUNCTION_384_0(HostTimeClock, v31, HostTimeClock, v32, v33, v34, v35, v36, v98, v100, v102, v104, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, *&outRelativeToClockOrTimebaseAnchorTime.value);
              CMSyncConvertTime(v127, &time2, v21, v37);
              *v8 = v127[0];
              if (!dword_1EAF16A10)
              {
                goto LABEL_43;
              }

              v38 = OUTLINED_FUNCTION_271_0();
              OUTLINED_FUNCTION_432_0(v38, v39, v40, v41, v42, v43, v44, v45, v98, v100, v102, v104, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, SBYTE2(v113), BYTE3(v113), SHIDWORD(v113));
              OUTLINED_FUNCTION_106_0();
              if (value)
              {
                if (v0)
                {
                  v46 = CMBaseObjectGetDerivedStorage();
                  v54 = (v46 + 972);
                }

                else
                {
                  v54 = "";
                }

                v106 = v54;
                if (v19)
                {
                  v46 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_384_0(v46, v47, v48, v49, v50, v51, v52, v53, v98, v100, v102, v106, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, *&outRelativeToClockOrTimebaseAnchorTime.value);
                rhs = v118;
                CMTimeSubtract(v127, &time2, &rhs);
                Seconds = CMTimeGetSeconds(v127);
                OUTLINED_FUNCTION_419_0();
                v73 = CMTimeGetSeconds(v127);
                v127[0] = *v110;
                CMTimeGetSeconds(v127);
                LODWORD(time2.value) = 136316930;
                OUTLINED_FUNCTION_270_0("playerfig_stopResetDisturbReprepareAndResumeWithTransaction");
                v121 = v104;
                OUTLINED_FUNCTION_326_0();
                *(v74 + 54) = Seconds;
                v124 = v75;
                v125 = v73;
                v126 = v75;
                *(v74 + 74) = v76;
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_34();
                _os_log_send_and_compose_impl();
              }
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v8 = v110;
          }

LABEL_43:
          if (v21)
          {
            CFRelease(v21);
          }
        }
      }
    }
  }

  if (*(DerivedStorage + 536))
  {
    v87 = CMBaseObjectGetDerivedStorage();
    playerfig_pauseRenderPipelines();
    *(v87 + 1033) = 0;
  }

  v88 = OUTLINED_FUNCTION_312();
  playeritemfig_releaseRenderPipelines(v88, v89, v6, v90, v91, v92, v93, v94, v98, v100, v102, v104, v108, v110, rhs.value, *&rhs.timescale, rhs.epoch, v113, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v115, type.value, *&type.timescale);
  playerfig_disturbPlayQueue();
  v95 = OUTLINED_FUNCTION_624();
  playerfig_repreparePlayQueue(v95, v96);
  if (*(DerivedStorage + 536) && *(CMBaseObjectGetDerivedStorage() + 352))
  {
    itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), 0);
    OUTLINED_FUNCTION_419_0();
    time2 = *v8;
    itemfig_matchBossRateToPlayerRateAndPlaybackState(v97, v127, &time2);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(v0);
  FigSimpleMutexUnlock();
LABEL_51:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

uint64_t fp_createCommonRenderPipelineOptionsForTrack(const void *a1, int a2, __int128 *a3, uint64_t a4, int a5, int a6, __CFDictionary **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v68 = 0;
  v69 = 0;
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = CMBaseObjectGetDerivedStorage();
  if (!v13)
  {
    Mutable = 0;
    v28 = 0;
    v32 = 0;
    goto LABEL_75;
  }

  v15 = v14;
  v60 = a3;
  v16 = *MEMORY[0x1E695E480];
  v17 = OUTLINED_FUNCTION_249();
  Mutable = CFDictionaryCreateMutable(v17, v18, v19, v20);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_374();
    v32 = FigSignalErrorAtGM();
    v28 = 0;
    goto LABEL_75;
  }

  itemfig_assureContentProtectionReadyForInspection(a1);
  v61 = a4;
  if (!a6 || !DerivedStorage[150])
  {
    v33 = 0;
    v28 = 0;
    goto LABEL_24;
  }

  v58 = a7;
  v22 = v13;
  v23 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v16, a4, 0);
  v24 = OUTLINED_FUNCTION_249();
  v28 = CFDictionaryCreateMutable(v24, v25, v26, v27);
  FigSimpleMutexLock();
  v29 = DerivedStorage[150];
  v30 = *(v15 + 168);
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v31)
  {
    FigSimpleMutexUnlock();
    v32 = 4294954514;
    goto LABEL_19;
  }

  v32 = v31(v29, @"NeroTransport", v30);
  FigSimpleMutexUnlock();
  if (v32)
  {
LABEL_19:
    v33 = v23;
    goto LABEL_20;
  }

  v33 = v23;
  if (a2)
  {
    CFDictionarySetValue(v28, @"Destination", @"DestinationNero");
  }

  v34 = *(v15 + 880);
  if (v34)
  {
    CFDictionarySetValue(v28, @"ClientSecTask", v34);
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
LABEL_14:
    if (!*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      v32 = 4294954514;
      goto LABEL_20;
    }

    v38 = OUTLINED_FUNCTION_284();
    v32 = v39(v38);
LABEL_16:
    if (!v32)
    {
      goto LABEL_17;
    }

LABEL_20:
    v13 = v22;
    if (!v33)
    {
      goto LABEL_75;
    }

LABEL_74:
    CFRelease(v33);
    goto LABEL_75;
  }

  v35 = OUTLINED_FUNCTION_284();
  v37 = v36(v35);
  if (v37 != -12164)
  {
    v32 = v37;
    if (v37 != -12782)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_17:
  v13 = v22;
  a7 = v58;
LABEL_24:
  OUTLINED_FUNCTION_373_0();
  if (v50 && itemfig_useDroppableFramesMinimumInterval())
  {
    v59 = *MEMORY[0x1E6960C70];
    *&__src[0].value = v59;
    v40 = *(MEMORY[0x1E6960C70] + 16);
    __src[0].epoch = v40;
    __dst[0] = v59;
    *&__dst[1] = v40;
    FPSupport_GetDisplayRefreshInformation(0, __src, __dst);
    memset(&v67, 0, sizeof(v67));
    CMBaseObjectGetDerivedStorage();
    *&v66 = 0;
    v71[0] = 0;
    *&v67.value = v59;
    v67.epoch = v40;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v41 = OUTLINED_FUNCTION_392_0();
      if (!v42(v41))
      {
        FigBaseObject = FigTrackReaderGetFigBaseObject(v66);
        v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v44)
        {
          if (!v44(FigBaseObject, @"MinSampleDuration", v16, v71))
          {
            CMTimeMakeFromDictionary(&v67, v71[0]);
          }
        }
      }
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (v71[0])
    {
      CFRelease(v71[0]);
    }

    CMBaseObjectGetDerivedStorage();
    *&v66 = 0;
    v71[0] = 0;
    valuePtr = 1065353216;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v45 = OUTLINED_FUNCTION_392_0();
      if (!v46(v45))
      {
        v47 = FigTrackReaderGetFigBaseObject(v66);
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v48)
        {
          if (!v48(v47, @"MaxEditRate", v16, v71))
          {
            CFNumberGetValue(v71[0], kCFNumberFloat32Type, &valuePtr);
          }
        }
      }
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (v71[0])
    {
      CFRelease(v71[0]);
    }

    v66 = *&v67.value;
    OUTLINED_FUNCTION_344_0(v67.epoch);
    FigCFDictionarySetFloat32();
    if ((*(v60 + 12) & 1) == 0)
    {
      OUTLINED_FUNCTION_29();
      if (v50)
      {
        *v60 = __src[0];
      }
    }

    v66 = *v60;
    OUTLINED_FUNCTION_344_0(*(v60 + 2));
    OUTLINED_FUNCTION_29();
    if (v50)
    {
      v66 = __dst[0];
      OUTLINED_FUNCTION_344_0(*&__dst[1]);
    }
  }

  v49 = MEMORY[0x1E695E4D0];
  if (!*(v15 + 821))
  {
    v50 = a5 == 1935832172 || a5 == 1668310898;
    if (v50)
    {
      FigCFDictionarySetValue();
    }
  }

  TrackStorage = itemfig_getTrackStorage(a1, v61, &v68);
  if (!TrackStorage)
  {
    if (*(v68 + 8))
    {
      v52 = v49;
    }

    else
    {
      v52 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"BossTrack_EnableForStepping", *v52);
    if (!DerivedStorage[101] || ((OUTLINED_FUNCTION_373_0(), !v50) ? (v54 = v53 == 1635088502) : (v54 = 1), !v54))
    {
      if (a5 != 1835365473 || !DerivedStorage[102])
      {
        goto LABEL_73;
      }
    }

    *&__src[1].value = OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
    __src[1].epoch = v55;
    *&__src[2].value = *&__src[1].value;
    *&__src[3].value = *&__src[1].value;
    __src[2].epoch = v55;
    __src[3].epoch = v55;
    TrackStorage = FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v56, v61, __src);
    if (!TrackStorage)
    {
      memcpy(__dst, __src, sizeof(__dst));
      if (!FigVideoCompositionTimeWindowDurationIsZero(__dst))
      {
        __dst[0] = *&__src[0].value;
        OUTLINED_FUNCTION_274_0();
        __dst[0] = *&__src[1].value;
        OUTLINED_FUNCTION_274_0();
        __dst[0] = *&__src[2].value;
        OUTLINED_FUNCTION_274_0();
        __dst[0] = *&__src[3].value;
        OUTLINED_FUNCTION_274_0();
      }

LABEL_73:
      v32 = 0;
      *a7 = Mutable;
      Mutable = 0;
      if (!v33)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  v32 = TrackStorage;
  if (v33)
  {
    goto LABEL_74;
  }

LABEL_75:
  if (v69)
  {
    CFRelease(v69);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v32;
}

uint64_t fp_setPropertyOnAllAudioRenderPipelines()
{
  OUTLINED_FUNCTION_216_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 584);
  if (v2)
  {
    FigRenderPipelineGetFigBaseObject(v2);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_12:
      v9 = 4294954514;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_206_0();
    v4 = v3();
    if (v4)
    {
LABEL_14:
      v9 = v4;
      goto LABEL_13;
    }
  }

  v5 = *(DerivedStorage + 664);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 664), v0);
      FigRenderPipelineGetFigBaseObject(ValueAtIndex);
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_206_0();
      v4 = v7();
      if (v4)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v8);
  }

  v9 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(uint64_t a1, unsigned int a2, CFMutableArrayRef *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v71 = 0;
  v72[0] = 0;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0;
  v67 = 0;
  value = 0;
  if (!a3 || (v7 = DerivedStorage, v8 = *MEMORY[0x1E695E480], v9 = OUTLINED_FUNCTION_165_0(), (Mutable = CFArrayCreateMutable(v9, v10, v11)) == 0))
  {
    OUTLINED_FUNCTION_111();
    v16 = FigSignalErrorAtGM();
LABEL_56:
    v58 = 0;
    goto LABEL_59;
  }

  v13 = Mutable;
  FigCFArrayRemoveAllValues();
  v60 = a4;
  if (a2)
  {
    cf[0] = 0;
    v14 = *(v7 + 1008);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v15)
    {
      v16 = v15(v14, a2, cf, 0);
      v17 = cf[0];
      if (!v16)
      {
        itemfig_copyFormatDescription(cf[0], v72);
        v17 = cf[0];
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    else
    {
      v16 = 4294954514;
    }
  }

  else
  {
    v16 = 0;
  }

  Count = CFArrayGetCount(*(v7 + 648));
  if (Count < 1)
  {
LABEL_54:
    if (!v60)
    {
      goto LABEL_58;
    }

    *v60 = v13;
    goto LABEL_56;
  }

  v19 = Count;
  v20 = 0;
  v62 = v72[0];
  v61 = v7 + 692;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 648), v20);
    if (ValueAtIndex[1] == 1835365473)
    {
      break;
    }

LABEL_45:
    if (v19 == ++v20)
    {
      goto LABEL_54;
    }
  }

  v22 = ValueAtIndex;
  v23 = *(v7 + 1008);
  v24 = *ValueAtIndex;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v25)
  {
    v16 = 4294954514;
    goto LABEL_58;
  }

  CommonRenderPipelineOptionsForTrack = v25(v23, v24, &v67, 0);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  CommonRenderPipelineOptionsForTrack = itemfig_copyFormatDescription(v67, &v66);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  if (!v71)
  {
    CommonRenderPipelineOptionsForTrack = FigSampleAttachmentCollectionRulesCopyForFilePlayback(v8, v62, &v71);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }
  }

  v27 = v66;
  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v29 = OUTLINED_FUNCTION_293();
    v28 = v30(v29) != 0;
  }

  else
  {
    v28 = 0;
  }

  if (v67)
  {
    CFRelease(v67);
    v67 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    v66 = 0;
  }

  v31 = OUTLINED_FUNCTION_245();
  hasTrackReference = itemfig_hasTrackReference(v31, v32, v33, 1, a2);
  v35 = !v28;
  if (!hasTrackReference)
  {
    v35 = 1;
  }

  if (v35)
  {
LABEL_44:
    v16 = 0;
    goto LABEL_45;
  }

  if (!*a3)
  {
    v36 = OUTLINED_FUNCTION_165_0();
    v38 = CFArrayCreateMutable(v36, v37, MEMORY[0x1E695E9C0]);
    *a3 = v38;
    if (!v38)
    {
      goto LABEL_73;
    }
  }

  if (!*(v7 + 464))
  {
LABEL_32:
    if (*(&v69 + 1))
    {
LABEL_43:
      CFArrayAppendValue(v13, &v68);
      itemfig_resetRenderTriple(&v68);
      goto LABEL_44;
    }

LABEL_33:
    v40 = (v22 + 4);
    v39 = *(v22 + 2);
    if (v39)
    {
      CFRelease(v39);
      *v40 = 0;
    }

    itemfig_resetRenderTriple(&v68);
    CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    v41 = OUTLINED_FUNCTION_165_0();
    CommonRenderPipelineOptionsForTrack = CMBufferQueueCreate(v41, v42, v43, v44);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    CFArrayAppendValue(*a3, value);
    CommonRenderPipelineOptionsForTrack = FigRenderPipelineCreateForBufferQueue(v8, value, 0, v22 + 2);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    LODWORD(v68) = *v22;
    OUTLINED_FUNCTION_167(v61);
    v45 = OUTLINED_FUNCTION_490();
    CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v45, v46, v47, v48, 1835365473, 0, v49);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    *(&v69 + 1) = CFRetain(*v40);
    v50 = v70;
    if (v70)
    {
      v50 = CFRetain(v70);
    }

    *(&v68 + 1) = v50;
    goto LABEL_43;
  }

  LODWORD(v68) = *v22;
  OUTLINED_FUNCTION_167(v61);
  v51 = OUTLINED_FUNCTION_490();
  CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v51, v52, v53, v54, 1835365473, 0, v55);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  itemfig_reuseExistingRenderPipeline(*(v7 + 464), &v68);
  if (!*(&v69 + 1))
  {
    goto LABEL_33;
  }

  cf[0] = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(&v69 + 1));
  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v57)
  {
    v57(FigBaseObject, @"SourceSampleBufferQueue", v8, cf);
  }

  if (cf[0])
  {
    CFArrayAppendValue(*a3, cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_32;
  }

LABEL_73:
  OUTLINED_FUNCTION_120();
  CommonRenderPipelineOptionsForTrack = FigSignalErrorAtGM();
LABEL_74:
  v16 = CommonRenderPipelineOptionsForTrack;
LABEL_58:
  v58 = v13;
LABEL_59:
  itemfig_resetRenderTriple(&v68);
  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v72[0])
  {
    CFRelease(v72[0]);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  return v16;
}

uint64_t itemfig_reuseRenderTriplesForVideoComposition(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_471();
  v28 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 648);
  if (v10)
  {
    theArray = v4;
    v32 = 0;
    value = 0u;
    *cf = 0u;
    if (CFArrayGetCount(v10) >= 1)
    {
      OUTLINED_FUNCTION_402_0();
      v25 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), v7);
        v12 = ValueAtIndex;
        v13 = ValueAtIndex[1];
        if (v13 == 1986618469)
        {
          goto LABEL_7;
        }

        if (v13 != 1835365473)
        {
          break;
        }

        SInt32 = FigCFNumberCreateSInt32();
        v16 = FigCFArrayContainsValue();
        if (SInt32)
        {
          CFRelease(SInt32);
          LOBYTE(SInt32) = 0;
        }

        v14 = 1;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_14:
        LODWORD(value) = *v12;
        OUTLINED_FUNCTION_167(DerivedStorage + 692);
        v19 = fp_createCommonRenderPipelineOptionsForTrack(v28, 0, &v29, v17, v18, 0, &value + 1);
        if (v19)
        {
          v23 = v19;
          goto LABEL_27;
        }

        itemfig_reuseExistingRenderPipeline(*(DerivedStorage + 392), &value);
        if (!cf[1])
        {
          v23 = 4294950069;
          goto LABEL_27;
        }

        v20 = CFRetain(cf[1]);
        *(v12 + 2) = v20;
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v20);
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v22)
        {
          v22(FigBaseObject, @"ObeyEmptyMediaMarkers", v25);
        }

        if (v14)
        {
          if ((SInt32 & 1) == 0)
          {
            CFArrayAppendValue(theArray, &value);
          }
        }

        else
        {
          CFArrayAppendValue(v5, &value);
          FigStartForwardingMediaServicesProcessDeathNotification();
        }

        itemfig_resetRenderTriple(&value);
LABEL_12:
        if (v6 == ++v7)
        {
          goto LABEL_24;
        }
      }

      if (v13 != 1635088502)
      {
        goto LABEL_12;
      }

LABEL_7:
      v14 = 0;
      LOBYTE(SInt32) = 1;
      if (!*(ValueAtIndex + 8))
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v32 = 0;
    value = 0u;
    *cf = 0u;
  }

LABEL_24:
  if (a4)
  {
    itemfig_setTimebaseOnVideoProcessorImageQueueTables();
  }

  v23 = 0;
LABEL_27:
  itemfig_resetRenderTriple(&value);
  return v23;
}

void itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray()
{
  OUTLINED_FUNCTION_187();
  FigImageQueueArraySetProperty();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (!itemfig_getDurationIfReady(v0, &v16) && (v17 & 1) != 0)
  {
    OUTLINED_FUNCTION_92_0(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16);
    v11 = CMTimeCopyAsDictionary(v9, v10);
    FigImageQueueArraySetProperty();
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void itemfig_updateRotationOnVideoRenderPipeline(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  if (a2 || (a2 = *(DerivedStorage + 1040), a2))
  {
    if (!itemfig_getTrackStorage(a1, a2, &v15))
    {
      VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(a1, &v14 + 1, &v14);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &VideoMatrixRotationAngleAndFlips);
      v6 = v15;
      v7 = *(v15 + 16);
      if (v7)
      {
        FigRenderPipelineGetFigBaseObject(v7);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v8 = OUTLINED_FUNCTION_123_0();
          v9(v8);
        }
      }

      v10 = *(v6 + 248);
      if (v10)
      {
        FigRenderPipelineGetFigBaseObject(v10);
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v11 = OUTLINED_FUNCTION_123_0();
          v12(v11);
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

void itemfig_updatePriorImageQueueGaugeOnRenderPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 2200))
  {
    if (!*(DerivedStorage + 656))
    {
      if (*(DerivedStorage + 1040))
      {
        OUTLINED_FUNCTION_313_0();
        if (!itemfig_getTrackStorage(a1, v3, v4) && v8 && *(v8 + 16))
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject();
          FigRenderPipelineGetFigBaseObject(*(v8 + 16));
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v6 = OUTLINED_FUNCTION_308();
            v7(v6);
          }

          if (v5)
          {
            CFRelease(v5);
          }
        }
      }
    }
  }
}

uint64_t itemfig_hasTrackReference(uint64_t a1, const void *a2, int a3, int a4, int a5)
{
  theDict = 0;
  cf = 0;
  value = 0;
  if (a3 && (!a4 || a5))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      if (!v7(a1, &cf))
      {
        FigBaseObject = FigFormatReaderGetFigBaseObject(cf);
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          if (!v9(FigBaseObject, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict))
          {
            if (theDict)
            {
              if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
              {
                if (value)
                {
                  Count = CFArrayGetCount(value);
                  v11 = Count;
                  if ((Count & 1) == 0 && Count >= 1)
                  {
                    v12 = 0;
                    do
                    {
                      FigCFArrayGetInt32AtIndex();
                      FigCFArrayGetInt32AtIndex();
                      v12 += 2;
                    }

                    while (v12 < v11);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return 0;
}

uint64_t itemfig_CopyFormatReader(uint64_t a1, void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage() && a2)
  {
    v5 = OUTLINED_FUNCTION_179();
    result = itemfig_assureBasicsReadyForInspection(v5);
    if (!result)
    {
      v6 = *(v2 + 1008);
      if (v6)
      {
        v7 = CFRetain(v6);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a2 = v7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM();
  }

  return result;
}

void fp_postClosedCaptionNotificationIfEnabled(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  v22 = v21;
  v24 = v23;
  CMBaseObjectGetDerivedStorage();
  v25 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v25)
  {
    v27 = DerivedStorage;
    if (*(DerivedStorage + 304))
    {
      OUTLINED_FUNCTION_313_0();
      FigCaptionCommandCreatePropertyList(v24, v22, v28);
      if (cf)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(cf);
      }
    }

    else if (*(DerivedStorage + 306))
    {
      FigSimpleMutexLock();
      v29 = *(v27 + 312);
      if (v29 && CFArrayGetCount(v29) >= 1)
      {
        OUTLINED_FUNCTION_332_0();
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 312), v20);
          v31 = objc_autoreleasePoolPush();
          [ValueAtIndex processCaptionCommand:v24 data:v22];
          objc_autoreleasePoolPop(v31);
          OUTLINED_FUNCTION_220_0();
        }

        while (!v32);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v25);
  }

  OUTLINED_FUNCTION_843();
}

void itemfig_createChannelDescriptionFromVideoCompositorOutputBufferDescription(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CMMutableTagCollectionRef tagCollection, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  CFGetAllocator(v24);
  tagCollection = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 776))
  {
    v41 = OUTLINED_FUNCTION_173_0();
    if (CMTagCollectionCreateMutable(v41, v42, v43))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  Count = CFArrayGetCount(*(DerivedStorage + 776));
  v27 = OUTLINED_FUNCTION_173_0();
  if (CMTagCollectionCreateMutable(v27, v28, v29))
  {
    goto LABEL_17;
  }

  if (Count < 1)
  {
LABEL_16:
    FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(tagCollection);
    goto LABEL_17;
  }

  v30 = 0;
  v31 = 0;
  v32 = 1;
  while (1)
  {
    while (1)
    {
      v33 = OUTLINED_FUNCTION_618();
      ValueAtIndex = CFArrayGetValueAtIndex(v33, v34);
      OUTLINED_FUNCTION_379_0();
      CountOfCategory = CMTagCollectionGetCountOfCategory(v36, v37);
      if (CountOfCategory >= 1)
      {
        break;
      }

      CMTagCollectionAddTagsFromCollection(tagCollection, ValueAtIndex);
      OUTLINED_FUNCTION_314_0();
      if (v39)
      {
        if (v32)
        {
          goto LABEL_16;
        }

LABEL_14:
        CMTagMakeWithFlagsValue(kCMTagCategory_StereoView, v30);
        OUTLINED_FUNCTION_260_0();
        OUTLINED_FUNCTION_219_0();
        CMTagCollectionAddTag(v40, v44);
        goto LABEL_16;
      }
    }

    a10 = 0;
    a11 = 0;
    if (CountOfCategory != 1)
    {
      break;
    }

    MEMORY[0x19A8CEF90](ValueAtIndex, &a10, 1, 0);
    v32 = 0;
    v30 |= a11;
    v39 = Count - 1 == v31++;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_376();
  FigSignalErrorAtGM();
LABEL_17:
  OUTLINED_FUNCTION_424_0();
}

uint64_t playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFArrayGetCount(*(DerivedStorage + 528));
  v5 = OUTLINED_FUNCTION_173_0();
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v9, a2);
  if (FirstIndexOfValue != -1)
  {
    playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, FirstIndexOfValue);
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_createTrackFormatDetailsDictionary(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  OUTLINED_FUNCTION_327_0();
  v47 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v40 = 0;
  v38 = 0;
  cf = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  *values = 0u;
  *keys = 0u;
  v42 = 0u;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8(v4, &v40 + 4, &v40);
  if (v9)
  {
    goto LABEL_39;
  }

  v9 = MTCopyStringsForMediaTypeAndSubType(v40, 0, &cf, 0);
  if (v9)
  {
    goto LABEL_39;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(v4);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
LABEL_24:
    Mutable = 0;
    v22 = 0;
    v32 = 4294954514;
    goto LABEL_25;
  }

  v9 = v11(FigBaseObject, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (v9)
  {
LABEL_39:
    v32 = v9;
    Mutable = 0;
    v22 = 0;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(theArray);
  v13 = OUTLINED_FUNCTION_622();
  Mutable = CFArrayCreateMutable(v13, v14, v15);
  if (Mutable)
  {
    v17 = OUTLINED_FUNCTION_622();
    v20 = CFArrayCreateMutable(v17, v18, v19);
    v22 = v20;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
        v38 = MediaSubType;
        v27 = OUTLINED_FUNCTION_441_0(MediaSubType, v26, &v38);
        CFArrayGetCount(Mutable);
        v28 = OUTLINED_FUNCTION_265();
        v20 = CFArrayContainsValue(v28, v48, v27);
        if (!v20)
        {
          value = 0;
          v20 = MTCopyStringsForMediaTypeAndSubType(v40, v38, 0, &value);
          if (value)
          {
            CFArrayAppendValue(Mutable, v27);
            CFArrayAppendValue(v22, value);
            CFRelease(value);
          }
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }
    }

    v29 = HIDWORD(v40) != v5[260] && HIDWORD(v40) != v5[259] && HIDWORD(v40) != v5[264] && HIDWORD(v40) != v5[262] && HIDWORD(v40) != v5[270];
    keys[0] = @"TrackID";
    values[0] = OUTLINED_FUNCTION_441_0(v20, v21, &v40 + 4);
    keys[1] = @"MediaTypeString";
    values[1] = CFRetain(cf);
    *&v42 = @"MediaType";
    *&v45 = OUTLINED_FUNCTION_441_0(values[1], v30, &v40);
    *(&v42 + 1) = @"MediaSubTypeString";
    *(&v45 + 1) = CFRetain(v22);
    *&v43 = @"MediaSubType";
    *&v46 = CFRetain(Mutable);
    *(&v43 + 1) = @"ChosenForPlayback";
    v31 = MEMORY[0x1E695E4C0];
    if (!v29)
    {
      v31 = MEMORY[0x1E695E4D0];
    }

    *(&v46 + 1) = CFRetain(*v31);
    v32 = 0;
    *a4 = CFDictionaryCreate(a3, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v22 = 0;
    v32 = 4294967188;
  }

LABEL_25:
  for (j = 0; j != 6; ++j)
  {
    v34 = values[j];
    if (v34)
    {
      CFRelease(v34);
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v32;
}

void itemfig_copySidebandVideoPropertiesArrayForVideoComposition(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFArrayRef theArray, void *value, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v27 && *(DerivedStorage + 824))
  {
    v29 = CFGetAllocator(v27);
    v30 = CMBaseObjectGetDerivedStorage();
    a11 = 0;
    cf = 0;
    v31 = *(v30 + 1008);
    v32 = *(v30 + 1040);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v33)
    {
      v33(v31, v32, &a11, 0);
      v34 = a11;
      if (a11)
      {
        CFGetAllocator(v27);
        FigTrackReaderGetFigBaseObject(v34);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v35 = OUTLINED_FUNCTION_148();
          v36(v35);
        }

        FirstValue = FigCFArrayGetFirstValue();
        if (FirstValue)
        {
          CMFormatDescriptionGetExtension(FirstValue, *MEMORY[0x1E6960090]);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (a11)
    {
      CFRelease(a11);
    }

    v38 = OUTLINED_FUNCTION_618();
    if (!FigVideoCompositionCopyOutputFormatExtensions(v38, v39, v40, v41, v42, v43, v44, v45))
    {
      Mutable = CFArrayCreateMutable(v29, 1, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        if (v25)
        {
          *v25 = Mutable;
        }

        else
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
      }
    }
  }

  OUTLINED_FUNCTION_424_0();
}

void itemfig_copySidebandVideoPropertiesArrayForTrackWithID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value, CFArrayRef theArray, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  value = 0;
  if (v29)
  {
    a9 = 0;
    if (v27)
    {
      itemfig_getTrackStorage(v31, v27, &a9);
      v33 = *(a9 + 280);
      v34 = FigCFDictionaryCopyArrayOfKeys();
      theArray = v34;
      if (v34)
      {
        goto LABEL_4;
      }

LABEL_19:
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      goto LABEL_20;
    }

LABEL_33:
    Mutable = 0;
    goto LABEL_23;
  }

  if (!v27)
  {
    goto LABEL_33;
  }

  v47 = *(DerivedStorage + 1008);
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v48)
  {
    goto LABEL_22;
  }

  if (v48(v47, v27, &cf, 0))
  {
    goto LABEL_21;
  }

  CFGetAllocator(v31);
  v49 = OUTLINED_FUNCTION_413();
  FigTrackReaderGetFigBaseObject(v49);
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_22:
    Mutable = 0;
    goto LABEL_23;
  }

  v50 = OUTLINED_FUNCTION_308();
  if (v51(v50))
  {
    goto LABEL_21;
  }

  v33 = 0;
  v34 = theArray;
  if (!theArray)
  {
    goto LABEL_19;
  }

LABEL_4:
  Count = CFArrayGetCount(v34);
  v36 = OUTLINED_FUNCTION_489();
  Mutable = CFArrayCreateMutable(v36, v37, v38);
  if (Count < 1)
  {
LABEL_20:
    *v25 = Mutable;
LABEL_21:
    Mutable = 0;
    goto LABEL_23;
  }

  v40 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v40);
    v42 = OUTLINED_FUNCTION_204_0();
    if (MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v42, v43, v44))
    {
      break;
    }

    if (v33)
    {
      CFDictionaryGetValue(v33, ValueAtIndex);
      v45 = value;
      SInt16 = FigCFNumberGetSInt16();
      MTSidebandVideoPropertiesSetLookupID(v45, SInt16);
    }

    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (Count == ++v40)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_424_0();
}

CFTypeRef playerfig_createVideoChannelSettingsForItemWithVideoTrackAndImageQueue(const void *a1, const void *a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  itemfig_GetDimensions(a2, &v13 + 4, &v13);
  v9 = CFGetAllocator(a1);
  v10 = *(DerivedStorage + 241);
  v11 = *(DerivedStorage + 76);

  return FPSupport_CreateVideoChannelSettingsForTrackWithID(v9, a1, a2, a3, v10, 0, v11, a4);
}

uint64_t playerfig_sendConfigurationsToMultichannelVideoTargetsForItemAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  v5 = FigCFDictionaryCopyArrayOfKeys();
  v6 = FigCFDictionaryCopyArrayOfValues();
  v7 = v6;
  if (!v5)
  {
    Count = 0;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  Count = CFArrayGetCount(v5);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = CFArrayGetCount(v7);
LABEL_7:
  if (Count == v9)
  {
    if (Count < 1)
    {
LABEL_18:
      v31 = 0;
      if (v5)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v11 = OUTLINED_FUNCTION_415_0();
      v13 = CFArrayGetValueAtIndex(v11, v12);
      Value = CFDictionaryGetValue(*(DerivedStorage + 1136), ValueAtIndex);
      if (Value)
      {
        FigDataChannelConfigurationAddDataChannelResource(v13, Value);
      }

      if (*(a3 + 12))
      {
        OUTLINED_FUNCTION_130_0();
        VTable = CMBaseObjectGetVTable();
        v26 = *(VTable + 16);
        v25 = VTable + 16;
        if (!*(v26 + 64))
        {
          v31 = 4294954514;
          if (v5)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_315_0(v25, v18, v19, v20, v21, v22, v23, v24, v33);
        v27 = OUTLINED_FUNCTION_396();
        v29 = v28(v27);
        if (v29)
        {
          goto LABEL_27;
        }
      }

      else if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v15 = OUTLINED_FUNCTION_396();
        v16(v15);
      }

      OUTLINED_FUNCTION_220_0();
      if (v30)
      {
        goto LABEL_18;
      }
    }
  }

  OUTLINED_FUNCTION_429();
  v29 = FigSignalErrorAtGM();
LABEL_27:
  v31 = v29;
  if (v5)
  {
LABEL_21:
    CFRelease(v5);
  }

LABEL_22:
  if (v7)
  {
    CFRelease(v7);
  }

  return v31;
}

uint64_t playerfig_setClientVideoLayerArray()
{
  OUTLINED_FUNCTION_187();
  v69 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_243();
    v4 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  if (!v0 || !CFArrayGetCount(v0))
  {
    v0 = 0;
  }

  if (FigCFEqual())
  {
    v4 = 0;
LABEL_7:
    v5 = 0;
    Mutable = 0;
    v7 = 0;
    OUTLINED_FUNCTION_368_0();
    v9 = 0;
    goto LABEL_67;
  }

  v54 = v2;
  v53 = CFRetain(v1);
  FigSimpleMutexLock();
  theArray = *(DerivedStorage + 216);
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexUnlock();
  v9 = *(DerivedStorage + 208);
  if (v9)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 208));
  }

  else
  {
    Count = 0;
  }

  v52 = v1;
  if (v0)
  {
    v11 = CFArrayGetCount(v0);
  }

  else
  {
    v11 = 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v12 = OUTLINED_FUNCTION_265();
  Mutable = CFArrayCreateMutable(v12, v13, v14);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    v4 = FigSignalErrorAtGM();
    v7 = 0;
LABEL_84:
    OUTLINED_FUNCTION_368_0();
    v5 = v53;
    v2 = v54;
    goto LABEL_66;
  }

  v15 = OUTLINED_FUNCTION_265();
  v7 = CFArrayCreateMutable(v15, v16, v17);
  if (!v7)
  {
    OUTLINED_FUNCTION_243();
    v27 = FigSignalErrorAtGM();
LABEL_83:
    v4 = v27;
    goto LABEL_84;
  }

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v19 = OUTLINED_FUNCTION_627();
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
      if (!v9 || (v22 = OUTLINED_FUNCTION_383(), v70.length = Count, v23 = CFArrayContainsValue(v22, v70, ValueAtIndex), v24 = Mutable, !v23))
      {
        v24 = v7;
      }

      CFArrayAppendValue(v24, ValueAtIndex);
    }
  }

  CFArrayGetCount(v7);
  v25 = OUTLINED_FUNCTION_292();
  v71.location = 0;
  CFArrayAppendArray(v25, v26, v71);
  v27 = FigDeferredTransactionCreate(v1, &cf);
  if (v27)
  {
    goto LABEL_83;
  }

  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    playerfig_clearVideoLayers(theArray, 1, cf);
  }

  if (*DerivedStorage)
  {
    v4 = 0;
    OUTLINED_FUNCTION_368_0();
    v5 = v53;
    v2 = v54;
    goto LABEL_67;
  }

  FigSimpleMutexLock();
  v28 = *(DerivedStorage + 528);
  if (v28 && CFArrayGetCount(v28) >= 1)
  {
    v29 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    itemfig_handleReadyToDisplayVideoLatch(v29, 4, cf);
  }

  *(DerivedStorage + 208) = Mutable;
  CFRetain(Mutable);
  v30 = CFArrayGetCount(*(DerivedStorage + 208));
  v0 = CFArrayCreateMutable(v1, v30, MEMORY[0x1E695E9C0]);
  if (v30 < 1)
  {
LABEL_36:
    v34 = FigCFCopyCompactDescription();
    v35 = FigCFCopyCompactDescription();
    if (dword_1EAF16A10)
    {
      v51 = v34;
      OUTLINED_FUNCTION_397_0();
      v50 = OUTLINED_FUNCTION_346_0();
      if (os_log_type_enabled(v50, type))
      {
        v36 = v57;
      }

      else
      {
        v36 = v57 & 0xFFFFFFFE;
      }

      if (v36)
      {
        if (v52)
        {
          v37 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v37 = "";
        }

        v59 = 136316162;
        v60 = "playerfig_setClientVideoLayerArray";
        v61 = 2048;
        v62 = v52;
        v63 = 2082;
        v64 = v37;
        v65 = 2112;
        v66 = v51;
        v67 = 2112;
        v68 = v35;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0();
      v34 = v51;
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
    FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(cf, 0, v0);
    FigSimpleMutexLock();
    v1 = *(DerivedStorage + 216);
    *(DerivedStorage + 216) = v0;
    FigSimpleMutexUnlock();
    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      v40 = CMBaseObjectGetDerivedStorage();
      if (!*v40)
      {
        v41 = v40;
        FigSimpleMutexLock();
        v42 = *(v41 + 112);
        if (v42)
        {
          CFRelease(v42);
          *(v41 + 112) = 0;
        }

        FigSimpleMutexUnlock();
      }
    }

    if (Count >= v11)
    {
      v43 = playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(v52, cf);
    }

    else
    {
      v43 = playerfig_gracefullyAddImageQueues(v52, cf);
    }

    v5 = v53;
    v2 = v54;
    if (v43 || (v48 = *(DerivedStorage + 528)) != 0 && CFArrayGetCount(v48) >= 1 && (v49 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0), itemfig_handleReadyToDisplayVideoLatch(v49, 3, cf)))
    {
      FigSimpleMutexUnlock();
      v44 = OUTLINED_FUNCTION_270();
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(v44, v45, v46);
      FigSimpleMutexLock();
    }

    v0 = 0;
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v31 = [FigVideoLayer alloc];
      v32 = [(FigVideoLayer *)v31 initWithDeferredTransaction:cf];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      CFArrayAppendValue(v0, v32);
      if (*(DerivedStorage + 241))
      {
        FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(cf, v33, 0, "playerfig_setClientVideoLayerArray");
      }

      if (!--v30)
      {
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_397_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_71_0(v39))
    {
      v59 = 136315138;
      v60 = "playerfig_setClientVideoLayerArray";
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_449();
    v1 = 0;
    v4 = 4294954434;
    v5 = v53;
    v2 = v54;
  }

  FigSimpleMutexUnlock();
LABEL_66:
  v8 = theArray;
LABEL_67:
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v8);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v1);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v0);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v9);
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}