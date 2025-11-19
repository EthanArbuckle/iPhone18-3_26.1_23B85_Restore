uint64_t createMetadataConverter(uint64_t a1, CFTypeRef cf1, const void *a3, void *a4)
{
  v13 = 0;
  v7 = *(a1 + 692);
  if ((v7 & 2) != 0)
  {
    v8 = *MEMORY[0x1E695E480];
    v10 = kFigMetadataConverterDestFileFormat_ISO_3GP;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = kFigMetadataConverterDestFileFormat_ISO_MP4;
  }

  v9 = CFDictionaryCreate(v8, kFigMetadataConverterCreateOption_DestFileFormat, v10, 1, 0, 0);
LABEL_7:
  v11 = FigMetadataCreateConverter(cf1, a3, v9, v8, &v13);
  if (!v11)
  {
    *a4 = v13;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

void transferMetadata(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFSet *a6, int a7)
{
  v10 = v9;
  v145 = a1;
  if (!theDict || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_66_5();

    FigSignalErrorAtGM();
    return;
  }

  v144 = a4;
  Value = CFDictionaryGetValue(theDict, @"MetadataReader");
  if (!Value)
  {
    goto LABEL_146;
  }

  v14 = CFDictionaryGetValue(theDict, @"MetadataKeysToTransfer");
  v151 = CFDictionaryGetValue(theDict, @"MetadataKeysToIgnore");
  v152 = 0;
  v154 = 0;
  v155 = 0;
  v153 = 0;
  FigBaseObject = FigMetadataReaderGetFigBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    OUTLINED_FUNCTION_35_10();
    v18 = -12782;
    goto LABEL_133;
  }

  v7 = *MEMORY[0x1E695E480];
  v17 = v16(FigBaseObject, @"format", *MEMORY[0x1E695E480], &v153);
  if (v17)
  {
    v18 = v17;
    OUTLINED_FUNCTION_35_10();
    goto LABEL_133;
  }

  if (v14)
  {
    range = CFArrayGetCount(v14);
  }

  else
  {
    range = 0;
  }

  if (!v151)
  {
    Count = 0;
    if (a5)
    {
      goto LABEL_12;
    }

LABEL_14:
    LODWORD(v128) = 0;
    goto LABEL_15;
  }

  Count = CFArrayGetCount(v151);
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  LODWORD(v128) = CFDictionaryContainsKey(a5, @"comn");
LABEL_15:
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40) || (OUTLINED_FUNCTION_613(), v150 = v19(), v150 < 1))
  {
    OUTLINED_FUNCTION_35_10();
    v18 = 0;
    goto LABEL_133;
  }

  v142 = a5;
  v134 = v9;
  v20 = 0;
  v127 = @"org.mp4ra";
  v138 = @"meta";
  v140 = @"itlk";
  v125 = @"value";
  v126 = @"com.apple.quicktime.aime-data";
  v124 = @"com.apple.immersive-video";
  v123 = @"com.apple.quicktime-movie";
  v121 = @"selfReferenceFileOffset";
  v122 = @"containerByteStream";
  v120 = @"dataSize";
  while (1)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_35_10();
      v18 = -12782;
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_613();
    v22 = v21();
    if (v22)
    {
      v18 = v22;
      OUTLINED_FUNCTION_35_10();
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_15_27();
    MEMORY[0x19A8D3660](&sourceIndexPairGetTypeID_sRegisterSourceIndexPairOnce);
    v23 = v7;
    Instance = _CFRuntimeCreateInstance();
    Instance[2] = Value;
    Instance[3] = v20;
    v24 = CFDictionaryGetValue(v154, @"keyspace");
    v25 = CFDictionaryGetValue(v154, @"key");
    v7 = 0;
    if (v25)
    {
      if (v24 && v155 && v154)
      {
        break;
      }
    }

LABEL_54:
    if (v152)
    {
      CFRelease(v152);
      v152 = 0;
    }

    if (v155)
    {
      CFRelease(v155);
      v155 = 0;
    }

    if (v154)
    {
      CFRelease(v154);
      v154 = 0;
    }

    CFRelease(Instance);
    if (v7)
    {
      CFRelease(v7);
    }

    ++v20;
    v7 = v23;
    if (v150 == v20)
    {
      OUTLINED_FUNCTION_35_10();
      v18 = 0;
LABEL_131:
      v10 = v134;
      goto LABEL_132;
    }
  }

  v26 = v25;
  v27 = v153;
  if (!CFEqual(v153, @"com.apple.quicktime.udta") && !CFEqual(v27, v127))
  {
    goto LABEL_31;
  }

  if (CFEqual(v26, v138))
  {
    if (CFEqual(v24, v140))
    {
      CFEqual(v26, @"com.apple.iTunes.iTunSMPB");
    }

    goto LABEL_53;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v26))
  {
    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(v26, kCFNumberSInt32Type, valuePtr);
    v29 = LODWORD(valuePtr[0]) != 1835365473;
  }

  else
  {
LABEL_31:
    v29 = 1;
  }

  if (CFEqual(v24, v140))
  {
    if (CFEqual(v26, @"com.apple.iTunes.iTunSMPB") != 0 || !v29)
    {
      goto LABEL_53;
    }
  }

  else if (!v29)
  {
LABEL_53:
    v7 = 0;
    goto LABEL_54;
  }

  if (v14)
  {
    v163.location = 0;
    v163.length = range;
    v30 = CFArrayContainsValue(v14, v163, v26) != 0;
  }

  else
  {
    if (!v151)
    {
      if (!a7)
      {
        goto LABEL_48;
      }

      LOBYTE(v30) = 1;
      goto LABEL_41;
    }

    v164.location = 0;
    v164.length = Count;
    v30 = CFArrayContainsValue(v151, v164, v26) == 0;
  }

  if (a7)
  {
LABEL_41:
    v7 = 0;
    if (CFSetContainsValue(a6, Instance) || !v30)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  if (!v30)
  {
    goto LABEL_53;
  }

LABEL_48:
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v23, 0, v154);
    if (MutableCopy)
    {
      v32 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, v125, v155);
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v33 || v33(a3, v32, v23, &v152))
      {
        CFRelease(v32);
        goto LABEL_53;
      }

      CFRelease(v32);
      if (v155)
      {
        CFRelease(v155);
        v155 = 0;
      }

      if (v154)
      {
        CFRelease(v154);
        v154 = 0;
      }

      v26 = CFDictionaryGetValue(v152, @"key");
      v24 = CFDictionaryGetValue(v152, @"keyspace");
      v34 = CFDictionaryGetValue(v152, v125);
      if (v34)
      {
        v34 = CFRetain(v34);
      }

      v154 = v152;
      v155 = v34;
      v152 = 0;
    }
  }

  if (v142 && !doesAllowListContainKeyspaceAndKey_0(v142, v128, v24, v26))
  {
    goto LABEL_53;
  }

  v35 = CFEqual(v26, v126);
  v132 = Value;
  if (!v35)
  {
    v7 = 0;
    goto LABEL_120;
  }

  v43 = OUTLINED_FUNCTION_52_8(v35, v36, v37, v38, v39, v40, v41, v42, v113, v114, v116, cf, v120, v121, v122, v123, v124, v125, v126, v127, v128, Count, Value, v134, range, v138, v140, v142, v144, v145);
  v44 = CFEqual(v43, v124);
  if (!v44)
  {
    v52 = OUTLINED_FUNCTION_52_8(v44, v45, v46, v47, v48, v49, v50, v51, v113, v115, v116, cfa, v120, v121, v122, v123, v124, v125, v126, v127, v128, Count, v132, v134, range, v138, v140, v142, v144, v145);
    if (!CFEqual(v52, v123))
    {
      goto LABEL_53;
    }
  }

  v53 = HIDWORD(v154);
  cfb = v155;
  v161 = 0;
  valuePtr[0] = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v156 = 0;
  v54 = FigMetadataReaderGetFigBaseObject();
  v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v114 = v24;
  if (!v55)
  {
    goto LABEL_99;
  }

  HIDWORD(v116) = v53;
  v18 = v55(v54, v122, v23, valuePtr);
  v7 = 0;
  v56 = valuePtr[0];
  if (v18 || !valuePtr[0])
  {
    LODWORD(v116) = 0;
    v57 = 0;
    cf = 0;
    if (valuePtr[0])
    {
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  v55 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v55)
  {
    goto LABEL_99;
  }

  v18 = (v55)(v56, 0, &v157);
  LODWORD(v55) = 0;
  v7 = 0;
  if (!cfb)
  {
    v57 = 0;
    v58 = 0;
    goto LABEL_100;
  }

  v57 = 0;
  v58 = 0;
  if (v18)
  {
    goto LABEL_100;
  }

  v59 = CFGetTypeID(cfb);
  if (v59 != CFDictionaryGetTypeID() || ((FigCFDictionaryGetInt64IfPresent(), FigCFDictionaryGetInt64IfPresent(), v61 = v158, v60 = v159, v159 >= 1) ? (v62 = v158 < 1) : (v62 = 1), v62 || v158 + v159 > v157))
  {
    OUTLINED_FUNCTION_43_10();
    v18 = 0;
    goto LABEL_88;
  }

  v7 = valuePtr[0];
  v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v55)
  {
LABEL_99:
    v7 = 0;
    v57 = 0;
    v58 = 0;
    v18 = -12782;
    goto LABEL_100;
  }

  DataPointer = (v55)(v7, v61, v60, &v160, 0);
  if (DataPointer || (OUTLINED_FUNCTION_613(), (DataPointer = CMBlockBufferGetDataPointer(v64, v65, v66, 0, v67)) != 0))
  {
    v18 = DataPointer;
    OUTLINED_FUNCTION_43_10();
LABEL_88:
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v58 = CFDataCreate(v23, v156, v158);
    if (v58 && (v68 = FigCFDictionaryCreateMutableCopy()) != 0)
    {
      v57 = v68;
      FigCFDictionarySetValue();
      v18 = writeReferencedDataAndCopyUpdatedMetadataItem(v145, v57, &v161);
      if (v18)
      {
        OUTLINED_FUNCTION_43_10();
      }

      else
      {
        v7 = v161;
        v161 = 0;
        LODWORD(v55) = 1;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_120();
      v18 = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_43_10();
      v57 = 0;
    }
  }

LABEL_100:
  cf = v58;
  LODWORD(v116) = v55;
  v56 = valuePtr[0];
  if (valuePtr[0])
  {
LABEL_101:
    CFRelease(v56);
  }

LABEL_102:
  if (v57)
  {
    CFRelease(v57);
  }

  Value = v132;
  if (v160)
  {
    CFRelease(v160);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (v18)
  {
    goto LABEL_131;
  }

  if (!v116)
  {
    goto LABEL_54;
  }

  v69 = v154;
  v154 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v24 = v114;
  if (v69)
  {
    CFRelease(v69);
  }

  v70 = v155;
  v71 = CFDictionaryGetValue(v154, v125);
  v155 = v71;
  if (v71)
  {
    CFRetain(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

LABEL_120:
  v73 = v154;
  v72 = v155;
  v74 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v74)
  {
    v18 = -12782;
    goto LABEL_201;
  }

  v75 = v74(v144, v24, v26, v72, v73);
  if (!v75)
  {
    CFSetAddValue(a6, Instance);
    Value = v132;
    goto LABEL_54;
  }

  v18 = v75;
LABEL_201:
  Value = v132;
  v10 = v134;
LABEL_132:
  a5 = v142;
LABEL_133:
  if (v153)
  {
    CFRelease(v153);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v18)
  {
    goto LABEL_198;
  }

LABEL_146:
  v149 = CFDictionaryGetValue(theDict, @"format");
  v76 = CFDictionaryGetValue(theDict, @"items");
  if (!v76)
  {
    goto LABEL_196;
  }

  v161 = 0;
  valuePtr[0] = 0;
  if (a5)
  {
    v77 = CFDictionaryContainsKey(a5, @"comn");
  }

  else
  {
    v77 = 0;
  }

  v78 = CFArrayGetCount(v76);
  if (v78 < 1)
  {
    v111 = 0;
    goto LABEL_193;
  }

  v79 = v78;
  LODWORD(v127) = v77;
  v143 = a5;
  v133 = Value;
  v135 = v10;
  v80 = 0;
  v81 = *MEMORY[0x1E695E480];
  v141 = @"preferredStorageLocation";
  v139 = @"forDeferredLoading";
  rangea = @"com.apple.quicktime.aime-data";
  v131 = @"com.apple.immersive-video";
  v129 = @"com.apple.quicktime-movie";
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v76, v80);
    OUTLINED_FUNCTION_15_27();
    MEMORY[0x19A8D3660](&sourceIndexPairGetTypeID_sRegisterSourceIndexPairOnce);
    v83 = _CFRuntimeCreateInstance();
    v83[2] = v76;
    v83[3] = v80;
    v84 = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
    v85 = CFDictionaryGetValue(ValueAtIndex, @"key");
    v86 = CFDictionaryGetValue(ValueAtIndex, @"value");
    if (!v85)
    {
      goto LABEL_178;
    }

    if (!v84)
    {
      goto LABEL_178;
    }

    v87 = v86;
    if (!v86 || !v149 && !CFEqual(v84, @"comn"))
    {
      goto LABEL_178;
    }

    if (CFEqual(v84, @"itlk") && CFEqual(v85, @"com.apple.iTunes.iTunSMPB") || a7 && CFSetContainsValue(a6, v83))
    {
      goto LABEL_178;
    }

    if (a3)
    {
      v88 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v88 && !v88(a3, ValueAtIndex, v81, valuePtr))
      {
        v85 = CFDictionaryGetValue(valuePtr[0], @"key");
        v84 = CFDictionaryGetValue(valuePtr[0], @"keyspace");
        v87 = CFDictionaryGetValue(valuePtr[0], @"value");
        ValueAtIndex = valuePtr[0];
        break;
      }

LABEL_178:
      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
        valuePtr[0] = 0;
      }

      CFRelease(v83);
      if (v161)
      {
        CFRelease(v161);
        v161 = 0;
      }

      if (v79 == ++v80)
      {
        v83 = 0;
        v111 = 0;
        goto LABEL_188;
      }

      continue;
    }

    break;
  }

  if (v143 && !doesAllowListContainKeyspaceAndKey_0(v143, v127, v84, v85))
  {
    goto LABEL_178;
  }

  FigCFDictionaryGetStringValue();
  if (!FigCFEqual())
  {
LABEL_172:
    v108 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v108)
    {
      v111 = -12782;
      goto LABEL_188;
    }

    v109 = v108(v144, v84, v85, v87, ValueAtIndex);
    if (v109 != -12588 && v109 != -12583)
    {
      v111 = v109;
      if (v109)
      {
        goto LABEL_188;
      }

      CFSetAddValue(a6, v83);
    }

    goto LABEL_178;
  }

  v89 = CFEqual(v85, rangea);
  if (!v89)
  {
    goto LABEL_178;
  }

  v97 = OUTLINED_FUNCTION_52_8(v89, v90, v91, v92, v93, v94, v95, v96, v113, v114, v116, cf, v120, v121, v122, v123, v124, v125, v126, v127, v129, v131, v133, v135, rangea, v139, v141, v143, v144, v145);
  v98 = CFEqual(v97, v131);
  if (!v98)
  {
    v106 = OUTLINED_FUNCTION_52_8(v98, v99, v100, v101, v102, v103, v104, v105, v113, v114, v116, cf, v120, v121, v122, v123, v124, v125, v126, v127, v129, v131, v133, v135, rangea, v139, v141, v143, v144, v145);
    if (!CFEqual(v106, v129))
    {
      goto LABEL_178;
    }
  }

  v107 = writeReferencedDataAndCopyUpdatedMetadataItem(v145, ValueAtIndex, &v161);
  if (!v107)
  {
    ValueAtIndex = v161;
    if (!v161)
    {
      goto LABEL_178;
    }

    goto LABEL_172;
  }

  v111 = v107;
LABEL_188:
  Value = v133;
  if (valuePtr[0])
  {
    CFRelease(valuePtr[0]);
  }

  if (v83)
  {
    CFRelease(v83);
  }

LABEL_193:
  if (v161)
  {
    CFRelease(v161);
  }

  if (!v111)
  {
LABEL_196:
    if (!(Value | v76))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM();
    }
  }

LABEL_198:
  OUTLINED_FUNCTION_66_5();
}

uint64_t doesAllowListContainKeyspaceAndKey_0(const __CFDictionary *a1, uint64_t a2, const void *a3, const __CFNumber *a4)
{
  Value = CFDictionaryGetValue(a1, a3);
  if (Value)
  {
    v9 = Value;
    v10 = CFGetTypeID(Value);
    if (v10 != CFArrayGetTypeID())
    {
      return 0;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      *cStr = bswap32(valuePtr);
      v16 = 0;
      v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      a4 = v12;
    }

    else
    {
      v12 = 0;
    }

    v18.length = CFArrayGetCount(v9);
    v18.location = 0;
    if (CFArrayContainsValue(v9, v18, a4))
    {
      a2 = 1;
      if (!v12)
      {
        return a2;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    if (!FigCFEqual())
    {
      CommonKey = FigMetadataGetCommonKey(a3, a4);
      if (CommonKey)
      {
        a2 = doesAllowListContainKeyspaceAndKey_0(a1, a2, @"comn", CommonKey);
        if (!v12)
        {
          return a2;
        }

        goto LABEL_15;
      }
    }

    a2 = 0;
  }

  if (v12)
  {
LABEL_15:
    CFRelease(v12);
  }

  return a2;
}

uint64_t writeReferencedDataAndCopyUpdatedMetadataItem(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  cf = 0;
  values = 0;
  v13 = 0;
  DataValue = FigCFDictionaryGetDataValue();
  if (!DataValue)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    BlockBufferWithCFDataNoCopy = FigSignalErrorAtGM();
LABEL_16:
    v11 = BlockBufferWithCFDataNoCopy;
    MutableCopy = 0;
    goto LABEL_8;
  }

  v6 = *MEMORY[0x1E695E480];
  CFDataGetLength(DataValue);
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_16;
  }

  BlockBufferWithCFDataNoCopy = MovieSampleDataWriterAppendBlockBuffer(*(a1 + 752), cf, &v13);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_16;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy && (values = FigCFNumberCreateUInt64()) != 0 && (v9 = CFDictionaryCreate(v6, &kFigMetadataItemStorageLocationKey_ReferenceByteOffset, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    v10 = v9;
    CFDictionarySetValue(MutableCopy, @"storageLocation", v9);
    *a3 = MutableCopy;
    CFRelease(v10);
    MutableCopy = 0;
    v11 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v11 = FigSignalErrorAtGM();
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (values)
  {
    CFRelease(values);
  }

  return v11;
}

void transferTrackMetadata(uint64_t a1, CFDictionaryRef theDict, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  theArray = 0;
  cf1 = 0;
  cf = 0;
  if (!theDict)
  {
    goto LABEL_55;
  }

  v5 = a3;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM();
    goto LABEL_57;
  }

  if (!a4)
  {
    goto LABEL_55;
  }

  if (CFDictionaryGetValue(theDict, @"items"))
  {
    Value = CFDictionaryGetValue(theDict, @"format");
    if (Value)
    {
      v9 = CFRetain(Value);
    }

    else
    {
      v9 = 0;
    }

    cf1 = v9;
    copyMetadataDestinationFormat(v4, v9, &theArray);
    goto LABEL_12;
  }

  v10 = CFDictionaryGetValue(theDict, @"MetadataReader");
  if (!v10)
  {
LABEL_55:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    FigSignalErrorAtGM();
    goto LABEL_56;
  }

  if (OUTLINED_FUNCTION_67_8(v10, v11, v12, v13, v14, v15, v16, v17, v35))
  {
    goto LABEL_56;
  }

LABEL_12:
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_56:
    v5 = 0;
LABEL_57:
    Mutable = 0;
    goto LABEL_58;
  }

  v19 = Count;
  v37 = v5;
  theDicta = theDict;
  Mutable = 0;
  v21 = 0;
  v5 = 0;
  v22 = *MEMORY[0x1E695E480];
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
    if (cf1 && !CFEqual(cf1, ValueAtIndex) && createMetadataConverter(v4, cf1, ValueAtIndex, &cf))
    {
LABEL_53:
      v5 = 0;
      goto LABEL_49;
    }

    if (CFEqual(ValueAtIndex, @"com.apple.quicktime.udta"))
    {
      if (*(*(a1 + 16) + 692))
      {
        goto LABEL_25;
      }

LABEL_27:
      v24 = *v37;
      if (*v37)
      {
        break;
      }

      v25 = v22;
      v26 = a1;
      v27 = ValueAtIndex;
      v28 = v37;
      goto LABEL_29;
    }

    if (CFEqual(ValueAtIndex, @"org.mp4ra"))
    {
      if ((*(*(a1 + 16) + 692) & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (!CFEqual(ValueAtIndex, @"com.apple.quicktime.mdta"))
    {
      goto LABEL_25;
    }

    v24 = *a4;
    if (*a4)
    {
      break;
    }

    v25 = v22;
    v26 = a1;
    v27 = ValueAtIndex;
    v28 = a4;
LABEL_29:
    if (copyTrackMetadataSerializer(v25, v26, v27, v28))
    {
      goto LABEL_53;
    }

    v24 = *v28;
    if (*v28)
    {
      break;
    }

LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_63();
    v5 = 0;
    if (!FigSignalErrorAtGM())
    {
      goto LABEL_37;
    }

LABEL_49:
    if (v19 == ++v21)
    {
      goto LABEL_58;
    }
  }

  FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(v24);
  if (FigMetadataWriter)
  {
    v5 = CFRetain(FigMetadataWriter);
  }

  else
  {
    v5 = 0;
  }

LABEL_37:
  v31 = (*(v4 + 692) & 4) == 0 || ValueAtIndex != @"com.apple.itunes";
  if (cf1 && CFEqual(cf1, ValueAtIndex))
  {
    v31 = 0;
  }

  if (Mutable || (v32 = OUTLINED_FUNCTION_265(), (Mutable = CFSetCreateMutable(v32, v33, MEMORY[0x1E695E9F8])) != 0))
  {
    transferMetadata(v4, theDicta, cf, v5, *(a1 + 576), Mutable, v31);
    if (v34)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();
  FigSignalErrorAtGM();
LABEL_58:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t setPredeterminedSizes(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (FigCFDictionaryGetInt64IfPresent() != 1 || FigCFDictionaryGetInt64IfPresent() != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      return FigSignalErrorAtGM();
    }

    a2 = 8;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  result = MovieSampleDataWriterSetPredeterminedMediaDataAtomSize(*(a1 + 752), a2);
  if (!result)
  {
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    *(a1 + 448) = v3;
  }

  return result;
}

uint64_t setPSSHDataEntries(uint64_t a1, CFTypeRef cf)
{
  cfa = 0;
  v14 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == EncryptionConfigGetTypeID())
  {
    v5 = CFRetain(cf);
    v14 = v5;
LABEL_10:
    PSSHDataEntries = MoviePSSHData_CreatePSSHDataEntries(v5, &cfa);
    if (PSSHDataEntries)
    {
      goto LABEL_13;
    }

    if (cfa)
    {
      PSSHDataEntries = MovieInformationSetPSSHDataEntries(*(a1 + 736), cfa);
      goto LABEL_13;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_23;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if (FigCFDictionaryGetNumberValue())
  {
    SInt32 = FigCFNumberGetSInt32();
    if (SInt32 == 1667591779)
    {
      v8 = 3;
    }

    else
    {
      if (SInt32 != 1667392371)
      {
        goto LABEL_22;
      }

      v8 = 2;
    }

    DataValue = FigCFDictionaryGetDataValue();
    if (DataValue)
    {
      PSSHDataEntries = EncryptionConfigCreateFromDictionary(DataValue, v8, &v14);
      if (PSSHDataEntries)
      {
        goto LABEL_13;
      }

      v5 = v14;
      goto LABEL_10;
    }
  }

LABEL_22:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
LABEL_23:
  PSSHDataEntries = FigSignalErrorAtGM();
LABEL_13:
  v10 = PSSHDataEntries;
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t figMovieWriter_WriteHeaderToByteStream(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  theBuffer = 0;
  v26 = 0;
  v24 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v10 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v6 = DerivedStorage;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"ByteOffsetToAddToAllSampleOffsets");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
        v10 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v6 + 752));
        if (!v10)
        {
          v11 = (v6 + 752);
          v12 = valuePtr;
          goto LABEL_11;
        }

LABEL_9:
        v13 = v10;
        goto LABEL_24;
      }
    }
  }

  v10 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v6 + 752));
  if (v10)
  {
    goto LABEL_9;
  }

  v11 = (v6 + 752);
  v28 = 0;
  v10 = calculateHeaderByteCount(v6, &v28);
  if (v10)
  {
    goto LABEL_9;
  }

  v12 = v28;
  valuePtr = v28;
LABEL_11:
  v10 = MovieHeaderMakerAddByteCountToChunkOffsets(*(v6 + 744), v12);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(v6 + 320) == 3)
  {
    v10 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*v11, *MEMORY[0x1E695E480], &theBuffer);
    if (v10)
    {
      goto LABEL_9;
    }

    CMBlockBufferGetDataLength(theBuffer);
    v10 = OUTLINED_FUNCTION_41_11();
    if (v10)
    {
      goto LABEL_9;
    }
  }

  MovieAtomBBuf = createMovieAtomBBuf(v6, 0, 0, &v24);
  v15 = v24;
  if (!MovieAtomBBuf)
  {
    CMBlockBufferGetDataLength(v24);
    MovieAtomBBuf = OUTLINED_FUNCTION_41_11();
    if (!MovieAtomBBuf)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v16)
      {
        v13 = 4294954514;
        if (!v15)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      MovieAtomBBuf = v16(a2, 0, &v26);
      if (!MovieAtomBBuf)
      {
        v17 = v26;
        v18 = valuePtr - v26;
        if (valuePtr == v26)
        {
          goto LABEL_20;
        }

        if (v18 <= 7)
        {
          goto LABEL_28;
        }

        v28 = bswap32(v18) | 0x6565726600000000;
        MovieAtomBBuf = writeData(a2, v26, &v28, 8);
        if (!MovieAtomBBuf)
        {
          if (!*(v6 + 472))
          {
            v20 = malloc_type_calloc(1uLL, 0x1000uLL, 0x2D5A05FEuLL);
            *(v6 + 472) = v20;
            if (!v20)
            {
LABEL_28:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
              MovieAtomBBuf = FigSignalErrorAtGM();
              goto LABEL_39;
            }

            *(v6 + 480) = 4096;
          }

          v21 = v17 + 8;
          v22 = v18 - 8;
          while (v22)
          {
            if (v22 >= *(v6 + 480))
            {
              v23 = *(v6 + 480);
            }

            else
            {
              v23 = v22;
            }

            MovieAtomBBuf = writeData(a2, v21, *(v6 + 472), v23);
            v22 -= v23;
            v21 += v23;
            if (MovieAtomBBuf)
            {
              goto LABEL_39;
            }
          }

LABEL_20:
          v13 = 0;
          if (!v15)
          {
            goto LABEL_24;
          }

LABEL_23:
          CFRelease(v15);
          goto LABEL_24;
        }
      }
    }
  }

LABEL_39:
  v13 = MovieAtomBBuf;
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v13;
}

uint64_t figMovieWriter_CopyMovieHeaderAsBlockBuffer(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  cf = 0;
  if (*(DerivedStorage + 384) != 1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v6 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  v5 = DerivedStorage;
  v6 = MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(*(DerivedStorage + 752), *MEMORY[0x1E695E480], &cf);
  if (v6)
  {
LABEL_13:
    appended = v6;
    goto LABEL_9;
  }

  v7 = createMovieAtomBBuf(v5, 1, 0, &v15);
  v8 = v15;
  if (v7)
  {
    appended = v7;
    if (v15)
    {
LABEL_8:
      CFRelease(v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_496();
    appended = CMBlockBufferAppendBufferReference(v9, v10, v11, v12, 0);
    if (!appended)
    {
      *a3 = cf;
      cf = 0;
    }

    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

uint64_t editBuilderCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 32, 0x600405399E965, 0);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  *v4 = 0u;
  v4[1] = 0u;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  v7 = editMediaTimeCreate(a1, v5 + 2);
  if (v7)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v8, v9, v10);
  v5[3] = Mutable;
  if (!Mutable || (v12 = editBoundaryDetectorCreate(a1, v5 + 1), !v5[1]))
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
LABEL_11:
    v13 = v7;
    goto LABEL_9;
  }

  v13 = v12;
  *a2 = v5;
  v5 = 0;
LABEL_9:
  editBuilderRelease(v5);
  return v13;
}

void chunkCallback(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t *a9, const __CFArray *a10, uint64_t a11, uint64_t a12)
{
  v13 = a6;
  v15 = a4;
  v18 = *(a12 + 16);
  v33 = **&MEMORY[0x1E6960C70];
  v32 = v33;
  v19 = *(v18 + 760) + a2;
  if (!*(v18 + 384) && !*(v18 + 329))
  {
    goto LABEL_4;
  }

  if (*(a12 + 905))
  {
    goto LABEL_4;
  }

  v27 = a8;
  memcpy((a12 + 816), a7, 0x48uLL);
  *(a12 + 888) = v19;
  *(a12 + 896) = a3;
  SampleAttachmentSync = isFirstSampleAttachmentSync(a10);
  a8 = v27;
  v15 = a4;
  v13 = a6;
  *(a12 + 904) = SampleAttachmentSync;
  *(a12 + 905) = 1;
  if (!*(v18 + 384))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_33();
  if (v23)
  {
    *(v18 + 432) = v19 + a3;
    v24 = *(a7 + 24);
    *(v18 + 424) = *(a7 + 40);
    *(v18 + 408) = v24;
  }

  if (!FigCFEqual() && !FigCFEqual() || *(v18 + 534) || *(a12 + 904) == 1)
  {
    v13 = a6;
    v15 = a4;
    a8 = v27;
    if (*(a12 + 912))
    {
      time1 = *(a12 + 840);
      time2 = *(a12 + 864);
      v25 = CMTimeCompare(&time1, &time2);
      a8 = v27;
      v15 = a4;
      v13 = a6;
      if (v25)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM();
LABEL_6:
        OUTLINED_FUNCTION_426_1();
        return;
      }
    }

LABEL_4:
    MovieTrackAppendSampleInformation(*(v18 + 736), *(a12 + 736), a1, v19, v15, a5, v13, a7, a8, a9, a10, a11, &v33, &v32);
    if (!v20)
    {
      *(a12 + 348) += a5;
      ChunkOffsetTable = MovieSampleTableGetChunkOffsetTable(*(a12 + 736));
      *(a12 + 592) = CMBlockBufferGetDataLength(ChunkOffsetTable);
    }

    goto LABEL_6;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_426_1();

  FigSignalErrorAtGM();
}

void setWritingThreadErrorAndPostErrorOccurredNotification(uint64_t a1, int a2)
{
  if (!*(a1 + 688))
  {
    if (a2 == -16359)
    {
      a2 = -12638;
    }

    *(a1 + 688) = a2;
    v2 = *MEMORY[0x1E695E480];
    values = FigCFNumberCreateSInt32();
    if (values)
    {
      v3 = CFDictionaryCreate(v2, kFigFormatWriterNotificationParameter_OSStatus, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v3)
      {
        v4 = v3;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v4);
        goto LABEL_7;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
    }

    FigSignalErrorAtGM();
LABEL_7:
    if (values)
    {
      CFRelease(values);
    }
  }
}

uint64_t setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 600);
  *(a1 + 600) = 1;
  if (v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(v1 + 488));
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (*(CFArrayGetValueAtIndex(*(v1 + 488), v6) + 600))
    {
      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (*(v1 + 330))
  {
    lhs.value = 0;
    result = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(v1 + 752));
    if (!result)
    {
      CMBlockBufferGetDataLength(*(v1 + 440));
      v14.value = 0;
      result = CMByteStreamAppendBlockBuffer();
      if (!result)
      {
        v7 = *(v1 + 440);
        if (v7)
        {
          CFRelease(v7);
        }

        result = createBlockBufferByteStreamForMovieSampleDataWriter(v1);
        if (!result)
        {
          if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            return 4294954514;
          }

          v8 = OUTLINED_FUNCTION_16_23();
          result = v9(v8, 0);
          if (!result)
          {
            *(v1 + 760) = lhs.value;
LABEL_23:
            clearAllTracksHeaderDataCompleteFlag(v1);
            return 0;
          }
        }
      }
    }
  }

  else if (*(v1 + 168))
  {
    result = callFragmentCallback(v1);
    if (!result)
    {
      lhs = *(v1 + 220);
      v12 = *(v1 + 196);
      CMTimeAdd(&v14, &lhs, &v12);
      *(v1 + 220) = v14;
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v1 + 331))
    {
      v10 = 1;
      MovieSampleDataWriterSynchronizeDefaultByteStream(*(v1 + 752), 1, 1);
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    result = writeMovieHeader(v1, v10, v11);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t addSampleBufferToTrack_0(uint64_t a1, CMSampleBufferRef sbuf)
{
  v4 = v3;
  v5 = sbuf;
  v154 = *MEMORY[0x1E69E9840];
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  v146 = 0;
  v147 = NumSamples;
  v144 = 0;
  cf = 0;
  OUTLINED_FUNCTION_23_22();
  v9 = MEMORY[0x1E6960CC0];
  if (v10 && (*(a1 + 244) & 1) == 0)
  {
    timingArrayEntries.value = 0;
    v11 = OUTLINED_FUNCTION_265();
    OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(v11, v12, 0, v13);
    if (OutputSampleTimingInfoArray == -12736)
    {
      v14 = 0;
    }

    else
    {
      v14 = OutputSampleTimingInfoArray;
      if (!OutputSampleTimingInfoArray)
      {
        v15 = OUTLINED_FUNCTION_32_12(0);
        if (v15)
        {
          v133 = NumSamples;
          v134 = v3;
          v132 = v15;
          v16 = CMSampleBufferGetOutputSampleTimingInfoArray(v5, timingArrayEntries.value, v15, 0);
          if (v16)
          {
            v14 = v16;
            v4 = v3;
            OUTLINED_FUNCTION_23_22();
          }

          else
          {
            v14 = 0;
            v4 = v3;
            OUTLINED_FUNCTION_23_22();
            v17 = v132;
          }

          free(v17);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          OutputSampleTimingInfoArray = FigSignalErrorAtGM();
          v14 = OutputSampleTimingInfoArray;
        }
      }
    }

    if (v14)
    {
      goto LABEL_147;
    }
  }

  v18 = MEMORY[0x1E6960C70];
  if (!NumSamples)
  {
    v22 = *MEMORY[0x1E695E4D0];
    v23 = OUTLINED_FUNCTION_45_10(OutputSampleTimingInfoArray, *MEMORY[0x1E69604A8]);
    v24 = OUTLINED_FUNCTION_45_10(v23, *MEMORY[0x1E69604B0]);
    v25 = OUTLINED_FUNCTION_45_10(v24, *MEMORY[0x1E69604F8]);
    v26 = OUTLINED_FUNCTION_45_10(v25, *MEMORY[0x1E69604C8]);
    v27 = OUTLINED_FUNCTION_45_10(v26, *MEMORY[0x1E6960490]);
    v28 = *v18;
    *&v150.value = *v18;
    v29 = *(v18 + 2);
    v150.epoch = v29;
    v30 = v22 == v23 || v22 == v24;
    if (v30 || v22 == v25)
    {
      v136 = v28;
      v32 = OUTLINED_FUNCTION_50_6();
      CMSampleBufferGetOutputPresentationTimeStamp(v33, v32);
      if (v22 == v23)
      {
        v14 = 0;
        *(a1 + 704) = time1;
      }

      else
      {
        *&time2.value = *&time1.value;
        v109 = OUTLINED_FUNCTION_38_11(time1.epoch);
        v14 = beginTrackSessionWithEditBoundaryTime(v109, v110, v111);
        if (!v14)
        {
          *(a1 + 704) = v136;
          *(a1 + 720) = v29;
        }
      }

      goto LABEL_147;
    }

    if (v22 == v26)
    {
      v112 = OUTLINED_FUNCTION_50_6();
      CMSampleBufferGetOutputDecodeTimeStamp(v113, v112);
      if ((time1.flags & 1) == 0)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&time2, v5);
        OUTLINED_FUNCTION_62_6();
      }

      if (*(a1 + 912))
      {
        rhs = time1;
        *&time.value = *(a1 + 916);
        v114 = OUTLINED_FUNCTION_47_8(*(a1 + 932));
        CMTimeAdd(v116, v114, v115);
        OUTLINED_FUNCTION_62_6();
      }

      rhs = time1;
      *&time.value = *(a1 + 232);
      v117 = OUTLINED_FUNCTION_47_8(*(a1 + 248));
      CMTimeSubtract(v119, v117, v118);
      time1 = time2;
      rhs = *(a1 + 256);
      CMTimeSubtract(&v150, &time2, &rhs);
      *&time2.value = *&v150.value;
      v120 = OUTLINED_FUNCTION_38_11(v150.epoch);
      v41 = flushSampleBufferToTrack(v120, v121);
    }

    else
    {
      if (v22 != v27 || *(a1 + 768) != 1 || (OUTLINED_FUNCTION_63(), !v30))
      {
        v14 = 0;
LABEL_147:
        v2 = 0;
        goto LABEL_148;
      }

      v41 = editBuilderResetCurrentEditMediaTime(*(a1 + 496));
      if (!v41)
      {
        *(a1 + 504) = 0;
        FigCEA608DataInspectorRelease(*(*(a1 + 496) + 8));
        v41 = editBoundaryDetectorCreate(**(a1 + 496), (*(a1 + 496) + 8));
      }
    }

LABEL_146:
    v14 = v41;
    goto LABEL_147;
  }

  *&v150.value = *v9;
  v19 = *(v9 + 16);
  v150.epoch = v19;
  v135 = *&v150.value;
  *&time1.value = *&v150.value;
  time1.epoch = v19;
  HIBYTE(v143) = 0;
  v142 = 0;
  *&v143 = 0x3FF0000000000000;
  v141 = 0;
  HIBYTE(v140) = 0;
  if (!*(*(a1 + 16) + 768))
  {
    FigPowerReduceUtilitySFI();
  }

  if (*(a1 + 716))
  {
    *&time2.value = *(a1 + 704);
    v79 = OUTLINED_FUNCTION_38_11(*(a1 + 720));
    v60 = beginTrackSessionWithEditBoundaryTime(v79, v80, 3);
    if (v60)
    {
      goto LABEL_78;
    }

    *(a1 + 704) = *v18;
    *(a1 + 720) = *(v18 + 2);
  }

  getTrimDurationsAndSpeedMultiplierFromSbuf(v5, &v150, &time1, &v143 + 15, &v143);
  if (!*(a1 + 348))
  {
    OUTLINED_FUNCTION_63();
    if (v30)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(v5);
      time2.value = 0;
      *&time2.timescale = 0;
      rhs.value = 0;
      *&rhs.timescale = 0;
      v35 = CMSampleBufferGetFormatDescription(v5);
      MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(v35);
      if (MostCompatibleFormat)
      {
        *&time2.value = *&MostCompatibleFormat->mASBD.mSampleRate;
        mBytesPerPacket = MostCompatibleFormat->mASBD.mBytesPerPacket;
        mFramesPerPacket = MostCompatibleFormat->mASBD.mFramesPerPacket;
        *&rhs.value = *&MostCompatibleFormat->mASBD.mBytesPerFrame;
      }

      else
      {
        v127 = v4;
        v128 = NumSamples;
        fig_log_get_emitter();
        v129 = v127;
        v14 = FigSignalErrorAtGM();
        if (v14)
        {
          goto LABEL_79;
        }

        mFramesPerPacket = 0;
        mBytesPerPacket = 0;
        v130 = v129;
        NumSamples = v128;
        v4 = v130;
      }

      *(a1 + 360) = *&time2.value;
      *(a1 + 376) = mBytesPerPacket;
      *(a1 + 380) = mFramesPerPacket;
      *(a1 + 384) = *&rhs.value;
      v39 = *(a1 + 16);
      if ((v39[692] & 1) == 0)
      {
        v133 = NumSamples;
        time.value = 0;
        if (v39[329])
        {
          v40 = 1;
        }

        else
        {
          v40 = v39[384] != 0;
        }

        v60 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(0, FormatDescription, 0, &time);
        if (v60)
        {
          goto LABEL_78;
        }

        v98 = CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(time.value, 0);
        if (time.value)
        {
          CFRelease(time.value);
        }

        if (v98)
        {
          v99 = *(a1 + 585) == 0;
        }

        else
        {
          v99 = 1;
        }

        v100 = v99;
        if (((v100 | v40) & 1) == 0 && mBytesPerPacket && mFramesPerPacket)
        {
          MovieTrackSetSampleOverrides(*(a1 + 736), mBytesPerPacket, mFramesPerPacket);
          v101 = *(a1 + 360);
          *(a1 + 104) = v101;
          v60 = MediaSampleTimingGeneratorSetMediaTimeScale(*(a1 + 752), v101);
          NumSamples = v133;
          if (v60)
          {
            goto LABEL_78;
          }

          v60 = MovieTrackSetMediaTimeScale(*(a1 + 736), *(a1 + 104));
          if (v60)
          {
            goto LABEL_78;
          }

          goto LABEL_126;
        }

        NumSamples = v133;
      }
    }

    if (*(a1 + 104))
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_33();
    if (v30)
    {
      timescale = 600;
    }

    else
    {
      OUTLINED_FUNCTION_63();
      if (!v30 || (timescale = *(a1 + 360), timescale <= 599))
      {
        OUTLINED_FUNCTION_59_5();
        CMSampleBufferGetPresentationTimeStamp(&time2, v5);
        if (time2.timescale <= 600)
        {
          timescale = 600;
        }

        else
        {
          timescale = time2.timescale;
        }
      }
    }

    *(a1 + 104) = timescale;
    v60 = MediaSampleTimingGeneratorSetMediaTimeScale(*(a1 + 752), timescale);
    if (v60)
    {
      goto LABEL_78;
    }

    v41 = MovieTrackSetMediaTimeScale(*(a1 + 736), *(a1 + 104));
    if (!v41)
    {
LABEL_126:
      if (!MovieTrackGetNumFormatDescriptions(*(a1 + 736)))
      {
        v102 = CMSampleBufferGetFormatDescription(v5);
        if (v102)
        {
          v103 = v102;
          v104 = OUTLINED_FUNCTION_45_10(v102, *MEMORY[0x1E6960528]);
          if (v104)
          {
            v105 = OUTLINED_FUNCTION_45_10(v104, *MEMORY[0x1E6960530]);
          }

          else
          {
            v105 = 0;
          }

          v60 = MovieTrackFindOrAddSampleDescription(*(a1 + 736), v103, v105, 0);
          if (v60)
          {
            goto LABEL_78;
          }

          v107 = setDefaultTrackDimensionsIfNecessary(a1);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_3();
          v107 = FigSignalErrorAtGM();
        }

        v14 = v107;
        if (v107)
        {
          goto LABEL_79;
        }
      }

      if ((*(a1 + 480) & 1) == 0)
      {
        *(a1 + 468) = v135;
        *(a1 + 484) = v19;
      }

      goto LABEL_18;
    }

    goto LABEL_146;
  }

LABEL_18:
  v20 = *(a1 + 768);
  if (v20 == 5)
  {
    v21 = *(a1 + 16);
    CMSampleBufferGetFormatDescription(v5);
    if (FigAudioFormatDescriptionEmploysDependentPackets())
    {
      v20 = 3;
LABEL_56:
      *(a1 + 768) = v20;
      goto LABEL_57;
    }

    v134 = v4;
    LOWORD(time2.value) = 0;
    LOBYTE(rhs.value) = 0;
    LOBYTE(time.value) = 0;
    v42 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v5, 1u);
    if (v42)
    {
      v43 = v42;
      v44 = NumSamples;
      v45 = v2;
      AudioRollRecoveryValueFromSampleBufferAttachment = FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(v42, &time2, &rhs, &time);
      if (AudioRollRecoveryValueFromSampleBufferAttachment)
      {
        v14 = AudioRollRecoveryValueFromSampleBufferAttachment;
        CFRelease(v43);
        goto LABEL_79;
      }

      value_low = LOBYTE(rhs.value);
      v48 = LOBYTE(time.value);
      CFRelease(v43);
      if (value_low && v48)
      {
        v20 = 3;
LABEL_55:
        v2 = v45;
        NumSamples = v44;
        goto LABEL_56;
      }
    }

    else
    {
      v44 = NumSamples;
      v45 = v2;
    }

    if (*(v21 + 384))
    {
      v20 = 4;
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_55;
  }

LABEL_57:
  if (v20 == 1)
  {
    OUTLINED_FUNCTION_63();
    if (v30 && !*(a1 + 504))
    {
      OUTLINED_FUNCTION_59_5();
      v66 = CMSampleBufferGetFormatDescription(v5);
      FigGaplessInfoGetDefaultAudioPrimingDuration(v66, &time2);
      *&rhs.value = v135;
      rhs.epoch = v19;
      time = time2;
      v67 = CMTimeCompare(&rhs, &time);
      if (v67)
      {
        if (HIBYTE(v143))
        {
          OUTLINED_FUNCTION_17_23(v67, v68, v69, v70, v71, v72, v73, v74, v131, v132, v133, v134, v135, *(&v135 + 1), v137.value, *&v137.timescale, v137.epoch, v138, *&timingArrayEntries.value, timingArrayEntries.epoch, v140, v141, v142, v143, v144, cf, v146, v147, time1.value, *&time1.timescale, time1.epoch, v149, *&v150.value, v150.epoch);
          *NumSamples = rhs;
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
          OUTLINED_FUNCTION_17_23(v67, v68, v69, v70, v71, v72, v73, v74, v131, v132, v133, v134, v135, *(&v135 + 1), v137.value, *&v137.timescale, v137.epoch, v138, *&timingArrayEntries.value, timingArrayEntries.epoch, v140, v141, v142, v143, v144, cf, v146, v147, time1.value, *&time1.timescale, time1.epoch, v149, *&v150.value, v150.epoch);
          *&time.value = *&rhs.value;
          OUTLINED_FUNCTION_42_9(rhs.epoch);
          if (CMTimeCompare(&time, &timingArrayEntries) < 0)
          {
            *&time.value = *&NumSamples->value;
            OUTLINED_FUNCTION_42_9(NumSamples->epoch);
            v137 = v150;
            v60 = createSynthesizedAudioPrimingSampleBuffer(&time, &timingArrayEntries, v5, a1 + 360, NumSamples, &v137, &cf, &v147, &v150);
            if (v60)
            {
              goto LABEL_78;
            }

            v5 = cf;
          }

          *(*(*(a1 + 496) + 16) + 120) = time2;
          *(a1 + 504) = 1;
        }
      }
    }
  }

  if (*(a1 + 492))
  {
    v49 = OUTLINED_FUNCTION_265();
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v49, v50, 0, v51);
    if (SampleTimingInfoArray != -12736)
    {
      v14 = SampleTimingInfoArray;
      if (!SampleTimingInfoArray)
      {
        if (v142)
        {
          if ((v142 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v142 > v2)
          {
            goto LABEL_77;
          }

          v53 = 72 * v142;
          if (!(72 * v142))
          {
            goto LABEL_77;
          }
        }

        else
        {
          v53 = 0;
        }

        if (OUTLINED_FUNCTION_32_12(v53))
        {
          v61 = OUTLINED_FUNCTION_44_11();
          v65 = CMSampleBufferGetSampleTimingInfoArray(v61, v62, v63, v64);
          if (!v65)
          {
            goto LABEL_104;
          }

LABEL_90:
          v14 = v65;
          goto LABEL_91;
        }

LABEL_77:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_3();
        v60 = FigSignalErrorAtGM();
LABEL_78:
        v14 = v60;
      }

LABEL_79:
      v2 = 0;
LABEL_91:
      v58 = 0;
      goto LABEL_92;
    }

LABEL_70:
    v2 = 0;
    v58 = 0;
    goto LABEL_71;
  }

  v54 = OUTLINED_FUNCTION_265();
  v57 = CMSampleBufferGetOutputSampleTimingInfoArray(v54, v55, 0, v56);
  if (v57 == -12736)
  {
    goto LABEL_70;
  }

  v14 = v57;
  if (v57)
  {
    goto LABEL_79;
  }

  if (v142)
  {
    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if (v142 > v2)
    {
      goto LABEL_77;
    }

    v59 = 72 * v142;
    if (!(72 * v142))
    {
      goto LABEL_77;
    }
  }

  else
  {
    v59 = 0;
  }

  if (!OUTLINED_FUNCTION_32_12(v59))
  {
    goto LABEL_77;
  }

  v75 = OUTLINED_FUNCTION_44_11();
  v65 = CMSampleBufferGetOutputSampleTimingInfoArray(v75, v76, v77, v78);
  if (v65)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_59_5();
  getTrimDurationFromSampleBuffer(v5, *MEMORY[0x1E6960560], &time2);
  memset(&rhs, 0, sizeof(rhs));
  time = time2;
  CMTimeMultiplyByFloat64(&rhs, &time, 1.0 / *&v143);
  timingArrayEntries = *(v2 + 1);
  *&v137.value = *&rhs.value;
  OUTLINED_FUNCTION_11_32();
  CMTimeSubtract(v83, v81, v82);
  *(v2 + 1) = time;
  timingArrayEntries = *(v2 + 2);
  *&v137.value = *&rhs.value;
  OUTLINED_FUNCTION_11_32();
  CMTimeSubtract(v86, v84, v85);
  *(v2 + 2) = time;
  if (*(a1 + 912))
  {
    if ((v2[60] & 1) == 0)
    {
      *(v2 + 3) = *(v2 + 24);
      *(v2 + 8) = *(v2 + 5);
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v5, 0);
    if (isFirstSampleAttachmentSync(SampleAttachmentsArray))
    {
      timingArrayEntries = *(v2 + 1);
      *&v137.value = *(v2 + 3);
      OUTLINED_FUNCTION_11_32();
      CMTimeSubtract(v90, v88, v89);
      *(a1 + 916) = time;
    }

    timingArrayEntries = *(v2 + 2);
    *&v137.value = *(a1 + 916);
    OUTLINED_FUNCTION_11_32();
    CMTimeAdd(v93, v91, v92);
    *(v2 + 2) = time;
  }

LABEL_104:
  if (!*(a1 + 492) && (*(a1 + 244) & 1) == 0)
  {
    time2.value = *(v2 + 3);
    v94 = *(v2 + 9);
    time2.timescale = *(v2 + 8);
    v95 = *(v2 + 5);
    rhs.value = *(v2 + 6);
    v96 = *(v2 + 15);
    rhs.timescale = *(v2 + 14);
    if (v96)
    {
      v97 = *(v2 + 8);
    }

    else
    {
      rhs.value = *(v2 + 3);
      rhs.timescale = *(v2 + 8);
      v96 = v94;
      v97 = v95;
    }

    v122 = *(v2 + 2);
    *(a1 + 184) = *v2;
    value = time2.value;
    *(a1 + 200) = v122;
    *(a1 + 208) = value;
    *(a1 + 216) = time2.timescale;
    *(a1 + 220) = v94;
    v124 = rhs.value;
    *(a1 + 224) = v95;
    *(a1 + 232) = v124;
    *(a1 + 240) = rhs.timescale;
    *(a1 + 244) = v96;
    *(a1 + 248) = v97;
  }

  v65 = MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(*(a1 + 752), v147, v142, v2, &v144, &v141, &v146, &v140 + 7);
  if (v65)
  {
    goto LABEL_90;
  }

  if (HIBYTE(v140))
  {
    v58 = *(a1 + 328);
    if (v5)
    {
      v125 = CFRetain(v5);
    }

    else
    {
      v125 = 0;
    }

    *(a1 + 328) = v125;
    v5 = v58;
    if (v58)
    {
LABEL_168:
      time2 = v150;
      rhs = time1;
      v126 = addSampleBufferWithSampleMediaTimingToTrack(a1, v5, v141, v146, &time2, &rhs, HIBYTE(v143), *&v143);
      if (v126)
      {
        v14 = v126;
        goto LABEL_92;
      }
    }
  }

  else
  {
    v58 = 0;
    if (v5)
    {
      goto LABEL_168;
    }
  }

LABEL_71:
  v14 = 0;
LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v58)
  {
    CFRelease(v58);
  }

LABEL_148:
  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v146);
  free(v2);
  return v14;
}

uint64_t flushSampleBufferToTrack(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  if (*(a1 + 328) && (*(a2 + 12) & 0x1D) == 1)
  {
    v3 = *(a1 + 752);
    v9 = *a2;
    v10 = *(a2 + 16);
    v4 = MediaSampleTimingGeneratorCreateLastMediaSampleTimingInfoArray(v3, &v9, &v13, &v12, &v11);
    v5 = v11;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = addSampleBufferWithSampleMediaTimingToTrack(a1, *(a1 + 328), v12, v11, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, 1.0);
      v5 = v11;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v5);
  v7 = *(a1 + 328);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 328) = 0;
  }

  return v6;
}

size_t callFragmentCallback(uint64_t a1)
{
  theBuffer = 0;
  if (!CMBlockBufferGetDataLength(*(a1 + 440)))
  {
    return 0;
  }

  v2 = MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(*(a1 + 752));
  if (v2)
  {
    return v2;
  }

  createMovieFragmentAtomBBuf(a1, &theBuffer);
  v4 = theBuffer;
  if (appended || (DataLength = CMBlockBufferGetDataLength(theBuffer), OUTLINED_FUNCTION_496(), appended = CMBlockBufferAppendBufferReference(v6, v7, v8, v9, 0), appended))
  {
    v14 = appended;
    goto LABEL_51;
  }

  v10 = *(a1 + 432);
  if (v10)
  {
    v11 = v10 + DataLength;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 488);
  if (v12)
  {
    Count = CFArrayGetCount(v12);
  }

  else
  {
    Count = 0;
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = OUTLINED_FUNCTION_60_7();
  Mutable = CFDictionaryCreateMutable(v16, v17, v18, v19);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v14 = FigSignalErrorAtGM();
    if (!v14)
    {
      goto LABEL_58;
    }

    goto LABEL_51;
  }

  v21 = Mutable;
  v22 = FigCFDictionarySetInt32();
  if (v22)
  {
LABEL_65:
    v14 = v22;
    goto LABEL_57;
  }

  cf = CFArrayCreateMutable(v15, Count, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v22 = FigSignalErrorAtGM();
    goto LABEL_65;
  }

  v45 = v11;
  v49 = Count;
  v23 = cf;
  if (Count < 1)
  {
LABEL_44:
    v38 = v21;
    CFDictionarySetValue(v21, @"SegmentReportKey_TrackReports", v23);
    CFRelease(v23);
    v11 = v45;
    goto LABEL_45;
  }

  v24 = 0;
  v47 = *MEMORY[0x1E695E4D0];
  v46 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v24);
    v53 = 0;
    value = 0;
    v26 = OUTLINED_FUNCTION_60_7();
    v28 = CFDictionaryCreateMutable(v26, v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v28)
    {
      break;
    }

    v29 = v28;
    TrackFragmentMediaDecodeDuration = FigCFDictionarySetInt32();
    if (TrackFragmentMediaDecodeDuration || (TrackFragmentMediaDecodeDuration = FigCFDictionarySetInt32(), TrackFragmentMediaDecodeDuration) || (TrackFragmentMediaDecodeDuration = MovieTrackFragmentGetTrackFragmentMediaDecodeDuration(*(ValueAtIndex + 92), &value), TrackFragmentMediaDecodeDuration) || (memset(&v52, 0, sizeof(v52)), CMTimeMake(&v52, value, *(ValueAtIndex + 26)), v59 = v52, TrackFragmentMediaDecodeDuration = FigCFDictionarySetCMTime(), TrackFragmentMediaDecodeDuration) || (TrackFragmentMediaDecodeDuration = MovieTrackFragmentGetTrackFragmentLowestDisplayStartTimeValue(*(ValueAtIndex + 92), &v53), TrackFragmentMediaDecodeDuration) || (memset(&v51, 0, sizeof(v51)), CMTimeMake(&v51, v53, *(ValueAtIndex + 26)), v59 = v51, TrackFragmentMediaDecodeDuration = FigCFDictionarySetCMTime(), TrackFragmentMediaDecodeDuration))
    {
      v14 = TrackFragmentMediaDecodeDuration;
LABEL_55:
      v11 = v45;
      CFRelease(v29);
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_33();
    if (v31 && *(ValueAtIndex + 905))
    {
      v61[0] = 0;
      v60 = 0;
      v32 = OUTLINED_FUNCTION_60_7();
      v34 = CFDictionaryCreateMutable(v32, v33, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v34)
      {
        v35 = v34;
        TrackFragmentBaseMediaDecodeTimeValue = MovieTrackFragmentGetTrackFragmentBaseMediaDecodeTimeValue(*(ValueAtIndex + 92), v61, &v60);
        if (!TrackFragmentBaseMediaDecodeTimeValue)
        {
          if (v60 == 1)
          {
            memset(&v59, 0, sizeof(v59));
            lhs = *(ValueAtIndex + 35);
            rhs = *(ValueAtIndex + 36);
            CMTimeSubtract(&v59, &lhs, &rhs);
            memset(&v56, 0, sizeof(v56));
            CMTimeMake(&v56, v61[0], *(ValueAtIndex + 26));
            memset(&v55, 0, sizeof(v55));
            lhs = v56;
            rhs = v59;
            CMTimeAdd(&v55, &lhs, &rhs);
            lhs = v55;
            TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetCMTime();
            if (!TrackFragmentBaseMediaDecodeTimeValue)
            {
              TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetInt32();
              if (!TrackFragmentBaseMediaDecodeTimeValue)
              {
                TrackFragmentBaseMediaDecodeTimeValue = FigCFDictionarySetInt32();
                if (!TrackFragmentBaseMediaDecodeTimeValue)
                {
                  if (*(ValueAtIndex + 904))
                  {
                    v37 = v47;
                  }

                  else
                  {
                    v37 = v46;
                  }

                  CFDictionarySetValue(v35, @"SegmentReportSampleInformationKey_IsSyncSample", v37);
                  CFDictionarySetValue(v29, @"SegmentTrackReportKey_FirstVideoSampleInformation", v35);
                  CFRelease(v35);
                  v23 = cf;
                  goto LABEL_37;
                }
              }
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_120();
            TrackFragmentBaseMediaDecodeTimeValue = FigSignalErrorAtGM();
          }
        }

        v14 = TrackFragmentBaseMediaDecodeTimeValue;
        CFRelease(v35);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_120();
        v14 = FigSignalErrorAtGM();
      }

      v23 = cf;
      if (v14)
      {
        goto LABEL_55;
      }

      CFDictionarySetValue(v29, @"SegmentTrackReportKey_FirstVideoSampleInformation", 0);
    }

LABEL_37:
    CFArrayAppendValue(v23, v29);
    CFRelease(v29);
    if (v49 == ++v24)
    {
      goto LABEL_44;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_120();
  v14 = FigSignalErrorAtGM();
  v11 = v45;
LABEL_56:
  CFRelease(cf);
LABEL_57:
  CFRelease(v21);
  if (!v14)
  {
LABEL_58:
    v38 = 0;
LABEL_45:
    v40 = *(a1 + 392);
    v39 = *(a1 + 400);
    v59 = *(a1 + 408);
    BlockBufferByteStreamForMovieSampleDataWriter = v40(v39, v4, &v59, v11, v38);
    if (!BlockBufferByteStreamForMovieSampleDataWriter)
    {
      MovieInformationReleaseMovieFragmentSampleTables(*(a1 + 736));
      v42 = MEMORY[0x1E6960C70];
      *(a1 + 408) = *MEMORY[0x1E6960C70];
      *(a1 + 424) = *(v42 + 16);
      *(a1 + 432) = 0;
      v43 = *(a1 + 440);
      if (v43)
      {
        CFRelease(v43);
      }

      clearAllTracksFirstSampleInfoInFragment(a1);
      BlockBufferByteStreamForMovieSampleDataWriter = createBlockBufferByteStreamForMovieSampleDataWriter(a1);
    }

    v14 = BlockBufferByteStreamForMovieSampleDataWriter;
    if (v38)
    {
      CFRelease(v38);
    }
  }

LABEL_51:
  if (v4)
  {
    CFRelease(v4);
  }

  return v14;
}

void createMovieFragmentAtomBBuf(uint64_t a1, void *a2)
{
  v4 = *(a1 + 744);
  theBuffer = 0;
  InsertMediaSegments(a1, 0);
  if (v5)
  {
    goto LABEL_35;
  }

  if (*(a1 + 384) && !*(a1 + 769))
  {
    v69 = a2;
    Count = CFArrayGetCount(*(a1 + 488));
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v72 = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      v71 = *MEMORY[0x1E6960C88];
      v10 = *(MEMORY[0x1E6960C88] + 16);
      v70 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v8);
        memset(&v75, 0, sizeof(v75));
        v13 = CFArrayGetCount(*(ValueAtIndex[2] + 488));
        *&v75.value = v72;
        v75.epoch = v9;
        *&v78.value = v71;
        v78.epoch = v10;
        if (v13 >= 1)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            v16 = CFArrayGetValueAtIndex(*(ValueAtIndex[2] + 488), i);
            getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime(v16, &v75);
            OUTLINED_FUNCTION_61_8();
            OUTLINED_FUNCTION_25_18(v17, v18, v19, v20, v21, v22, v23, v24, v67, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, theBuffer, *&v75.value);
            CMTimeMinimum(&v78, &time1, &time2);
          }
        }

        getDecodeTimeForTrackFragmentInitialBaseMediaDecodeTime(ValueAtIndex, &v75);
        OUTLINED_FUNCTION_61_8();
        *&time2.value = v70;
        time2.epoch = v11;
        v25 = CMTimeCompare(&time1, &time2);
        if ((v25 & 0x80000000) != 0)
        {
          time2 = v78;
          v32 = CMTimeAbsoluteValue(&time1, &time2);
          OUTLINED_FUNCTION_25_18(v32, v33, v34, v35, v36, v37, v38, v39, v67, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, theBuffer, *&v75.value);
          v25 = CMTimeAdd(&v75, &time2, &time1);
        }

        OUTLINED_FUNCTION_25_18(v25, *(ValueAtIndex + 26), v26, v27, v28, v29, v30, v31, v67, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, theBuffer, *&v75.value);
        CMTimeConvertScale(&time1, &time2, v40, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v75 = time1;
        if (MovieTrackFragmentSetInitialBaseMediaDecodeTimeValue(ValueAtIndex[92], time1.value))
        {
          goto LABEL_36;
        }
      }

      while (++v8 != v7);
    }

    *(a1 + 769) = 1;
    a2 = v69;
  }

  v41 = *(a1 + 744);
  v42 = CFArrayGetCount(*(a1 + 488));
  if (!MovieHeaderMakerSetShouldWriteBaseDataOffsetIsMovieFragmentAtomFlagInTrackFragment(v41, *(a1 + 384)) && !MovieHeaderMakerSetShouldWriteBaseMediaDecodeTimeAtomInTrackFragment(v41, *(a1 + 333)))
  {
    ShouldAllow64BitDataOffsetInTrackRunAtom = MovieHeaderMakerSetShouldAllow64BitDataOffsetInTrackRunAtom(v41, *(a1 + 540));
    if (!ShouldAllow64BitDataOffsetInTrackRunAtom)
    {
      if (v42 >= 1)
      {
        v51 = 0;
        do
        {
          v52 = CFArrayGetValueAtIndex(*(a1 + 488), v51);
          v53 = v52;
          v54 = *(v52 + 353) && *(a1 + 384) == 0;
          v55 = v52[93];
          v56 = *(v52 + 192);
          if (MovieHeaderMakerTrackSetShouldWriteEditAtomInTrackFragment(v41, v55, v54))
          {
            goto LABEL_36;
          }

          if (MovieHeaderMakerTrackSetShouldWriteRollSampleGroupAtoms(v41, v55, v56 == 3))
          {
            goto LABEL_36;
          }

          ShouldAllow64BitDataOffsetInTrackRunAtom = MovieHeaderMakerTrackSetShouldWriteSampleAuxiliaryInformationAtoms(v41, v55, *(v53 + 729));
          if (ShouldAllow64BitDataOffsetInTrackRunAtom)
          {
            goto LABEL_36;
          }
        }

        while (v42 != ++v51);
      }

      if (!OUTLINED_FUNCTION_46_7(ShouldAllow64BitDataOffsetInTrackRunAtom, v44, v45, v46, v47, v48, v49, v50, v67))
      {
        DataLength = CMBlockBufferGetDataLength(theBuffer);
        if (!DataLength)
        {
LABEL_34:
          *a2 = theBuffer;
          goto LABEL_35;
        }

        if (!*(a1 + 384))
        {
          goto LABEL_33;
        }

        v58 = DataLength;
        if (theBuffer)
        {
          CFRelease(theBuffer);
          theBuffer = 0;
        }

        v59 = MovieHeaderMakerAddByteCountToTrackRunDataOffsets(v4, v58);
        if (!v59 && !OUTLINED_FUNCTION_46_7(v59, v60, v61, v62, v63, v64, v65, v66, v68))
        {
LABEL_33:
          ++*(a1 + 376);
          goto LABEL_34;
        }
      }
    }
  }

LABEL_36:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_35:
  OUTLINED_FUNCTION_426_1();
}

uint64_t beginTrackSessionWithEditBoundaryTime(uint64_t a1, CMTime *a2, int a3)
{
  v17 = **&MEMORY[0x1E6960C70];
  memset(&v16, 0, sizeof(v16));
  lhs = *a2;
  rhs = *(a1 + 232);
  CMTimeSubtract(&v16, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = v16;
  v13 = *(a1 + 256);
  CMTimeSubtract(&lhs, &rhs, &v13);
  MediaSampleTimingGeneratorGetDefaultLastSampleDuration(*(a1 + 752), &rhs);
  v13 = lhs;
  CMTimeMaximum(&v17, &v13, &rhs);
  rhs = v17;
  v6 = OUTLINED_FUNCTION_19_24();
  result = flushSampleBufferToTrack(v6, v7);
  if (!result)
  {
    rhs = *a2;
    v9 = OUTLINED_FUNCTION_19_24();
    result = trackEndSession(v9, v10, a3);
    if (!result)
    {
      rhs = *a2;
      v11 = OUTLINED_FUNCTION_19_24();
      return trackBeginSession(v11, v12, a3);
    }
  }

  return result;
}

uint64_t setDefaultTrackDimensionsIfNecessary(uint64_t a1)
{
  v2 = MovieTrackCopyFormatDescriptionArray(*(a1 + 736));
  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  if (CMFormatDescriptionGetMediaType(ValueAtIndex) != 1986618469)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  IsISOFileType = FigFileTypeIsISOFileType();
  if (IsISOFileType)
  {
    if (*(a1 + 32))
    {
      FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(ValueAtIndex, IsISOFileType);
      v5 = OUTLINED_FUNCTION_13_23();
      v8 = MovieTrackSetTrackDimensions(v5, v6, v7);
LABEL_7:
      v12 = v8;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a1 + 32))
  {
    FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(ValueAtIndex, 0);
    v9 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetTrackDimensions(v9, v10, v11);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 33))
  {
    FigMovieGetVideoDefaultCleanApertureDimensionsFromFormatDescription(ValueAtIndex);
    v13 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetCleanApertureDimensions(v13, v14, v15);
    if (v8)
    {
      goto LABEL_7;
    }

    *(a1 + 34) = 1;
  }

  if (*(a1 + 35))
  {
    FigMovieGetVideoDefaultProductionApertureDimensionsFromFormatDescription(ValueAtIndex);
    v16 = OUTLINED_FUNCTION_13_23();
    v8 = MovieTrackSetProductionApertureDimensions(v16, v17, v18);
    if (v8)
    {
      goto LABEL_7;
    }

    *(a1 + 36) = 1;
  }

  if (!*(a1 + 37))
  {
    goto LABEL_17;
  }

  FigMovieGetVideoDefaultEncodedPixelsDimensionsFromFormatDescription(ValueAtIndex);
  v19 = OUTLINED_FUNCTION_13_23();
  v12 = MovieTrackSetEncodedPixelsDimensions(v19, v20, v21);
  if (!v12)
  {
    *(a1 + 38) = 1;
  }

LABEL_18:
  if (v2)
  {
    CFRelease(v2);
  }

  return v12;
}

uint64_t copyNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  NegativeCompositionOffsetsInISOFilePolicy = MovieHeaderMakerTrackGetNegativeCompositionOffsetsInISOFilePolicy(*(a1 + 744), *(a2 + 744), &v7);
  if (!NegativeCompositionOffsetsInISOFilePolicy)
  {
    if (v7 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *off_1E7487078[v7];
      if (v5)
      {
        v5 = CFRetain(v5);
      }
    }

    *a3 = v5;
  }

  return NegativeCompositionOffsetsInISOFilePolicy;
}

uint64_t FigMovieFormatWriterCreateWithByteStream_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigMovieFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMovieFormatWriterCreateWithByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createFigMovieFormatWriterObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMovieFormatWriterCreateForWritingMovieFragments_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMovieFormatWriterCreateForWritingMovieFragments_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_1()
{
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_613();
  result = MovieInformationGetBasicMetrics(v2, v3, v4, v5, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
    *v0 = result;
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_2()
{
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_496();
  result = MovieInformationGetBasicMetrics(v2, v3, v4, v5, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
    *v0 = result;
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_3()
{
  OUTLINED_FUNCTION_36_13();
  result = MovieInformationGetBasicMetrics(v2, 0, &valuePtr, 0, 0);
  *v1 = result;
  if (!result)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    *v0 = result;
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_CopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_26(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_27(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_SetProperty_cold_28(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigMatrixAsArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigMatrixAsArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getMetadataSerializer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createMetadataWritersDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyPredeterminedSizesAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyMediaDataCheckpointIntervalAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTimeMappingAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t editBuilderCreateTimeMappingArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createTrackEditSegmentArrayFromSessionTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyMetadataSourceAndDestinationFormats_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyTrackMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getTrackMetadataSerializer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getTrackMetadataSerializer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setTrackReferences_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void setTrackReferences_cold_2(const __CFAllocator *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();

  CFAllocatorDeallocate(a1, a2);
}

uint64_t setTrackReferences_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setMediaDataCheckpointInterval_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setMediaDataCheckpointInterval_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t setMediaDataCheckpointInterval_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_EndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figMovieWriter_EndSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t editBoundaryDetectorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t validateSampleBufferForTrackCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t editMediaTimeCreate_cold_1(_BYTE *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writingThread_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t writingThread_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t writingThread_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t trackBufferQueueDequeueAndRetain_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t trackEndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTrackLoadSettingsAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTrackLoadSettingsAsDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTrackLoadSettingsAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTrackLoadSettingsAsDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyFigTrackLoadSettingsAsDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t copyDimensionsAsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void copyDimensionsAsDictionary_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t copyDimensionsAsDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createTrackMetadataWritersDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figClusterSynchManager_ensureStarted()
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  if ((byte_1ED4CAAE1 & 1) == 0)
  {
    started = figClusterSynchManager_startBonjourAdvertiser();
    if (!started)
    {
      v1 = *MEMORY[0x1E695E480];
      v2 = CM8021ASClockCreate();
      if (v2)
      {
        v12 = v2;
        OUTLINED_FUNCTION_376();
        FigSignalErrorAtGM();
        goto LABEL_17;
      }

      started = off_1ED4CAB28();
      if (!started)
      {
        figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(started, &v17);
        qword_1ED4CAAF8 = CFSetCreateMutable(v1, 2, MEMORY[0x1E695E9F8]);
        if (!qword_1ED4CAAF8 || (qword_1ED4CAB18 = CFDictionaryCreateMutable(v1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
        {
          OUTLINED_FUNCTION_376();
          v12 = FigSignalErrorAtGM();
          if (!v12)
          {
            return v12;
          }

LABEL_17:
          figClusterSynchManager_ensureStopped();
          return v12;
        }

        started = figClusterSynchManager_startBonjourBrowser();
        if (!started)
        {
          byte_1ED4CAAE1 = 1;
          if (dword_1EAF17140)
          {
            v3 = OUTLINED_FUNCTION_10_33();
            v11 = OUTLINED_FUNCTION_14_27(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
            if (OUTLINED_FUNCTION_77_0(v11))
            {
              v19 = 136315138;
              OUTLINED_FUNCTION_1_82();
              OUTLINED_FUNCTION_2_79();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420();
          }

          return 0;
        }
      }
    }

    v12 = started;
    goto LABEL_17;
  }

  return 0;
}

uint64_t figClusterSynchManager_getPeerMACAddress_in6(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  size = 0;
  v4 = 100;
  while (1)
  {
    *v19 = xmmword_196E772D0;
    v20 = 0x4000000000ALL;
    v5 = sysctl(v19, 6u, 0, &size, 0, 0);
    if (v5)
    {
      return v5;
    }

    if (!size)
    {
      return 4294954510;
    }

    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v6)
    {
      return 4294954510;
    }

    v7 = v6;
    v8 = sysctl(v19, 6u, v6, &size, 0, 0);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    free(v7);
    if (!--v4)
    {
      return v9;
    }
  }

  if (size < 1)
  {
LABEL_21:
    v9 = 4294954513;
  }

  else
  {
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 92);
      v12 = (v11 & 3) != 0 ? (v11 | 3) + 1 : *(v10 + 92);
      v13 = *(v10 + 92) ? v12 : 4;
      v14 = v10 + v13 + 92;
      if (v14[1] == 18 && v14[6] == 6 && *(v14 + 1) && *(v10 + 54) == *(a1 + 8))
      {
        break;
      }

      v10 = (v10 + *v10);
      if (v10 >= (v7 + size))
      {
        goto LABEL_21;
      }
    }

    v9 = 0;
    v16 = &v14[v14[5]];
    v17 = *(v16 + 2);
    *(a2 + 4) = *(v16 + 6);
    *a2 = v17;
  }

  free(v7);
  return v9;
}

void figClusterSynchManager_stopAndClearBonjourAdvertiser()
{
  if (byte_1ED4CAAE2 == 1)
  {
    if (qword_1ED4CAB08)
    {
      DNSServiceRefDeallocate(qword_1ED4CAB08);
      qword_1ED4CAB08 = 0;
      byte_1ED4CAAE2 = 0;
      if (dword_1EAF17140)
      {
        v0 = OUTLINED_FUNCTION_4_64();
        v8 = OUTLINED_FUNCTION_88_4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, SBYTE2(v12), BYTE3(v12), SHIDWORD(v12));
        if (OUTLINED_FUNCTION_77_0(v8))
        {
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
      }
    }
  }
}

void figClusterSynchManager_stopAndClearBonjourBrowser()
{
  if (byte_1ED4CAAE3 == 1)
  {
    if (qword_1ED4CAB10)
    {
      DNSServiceRefDeallocate(qword_1ED4CAB10);
      qword_1ED4CAB10 = 0;
      byte_1ED4CAAE3 = 0;
      if (dword_1EAF17140)
      {
        v0 = OUTLINED_FUNCTION_4_64();
        v8 = OUTLINED_FUNCTION_88_4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, SBYTE2(v12), BYTE3(v12), SHIDWORD(v12));
        if (OUTLINED_FUNCTION_77_0(v8))
        {
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
      }
    }
  }
}

uint64_t figClusterSynchManager_startBonjourAdvertiser()
{
  v34 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  bzero(name, 0x100uLL);
  if (byte_1ED4CAAE2)
  {
    return 0;
  }

  txtRecord = 0uLL;
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  __s[0] = 0;
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreateString(*MEMORY[0x1E695E480], qword_1ED4CAB30);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_11_33();
    if (CFStringGetCString(v3, v4, v5, v6))
    {
      v7 = strlen(__s);
      updated = TXTRecordSetValue(&txtRecord, "did", v7, __s);
      if (updated)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_11_33();
      if (CFStringGetCString(v9, v10, v11, v12) && strlen(name) < 0x40)
      {
        updated = figClusterSynchManager_updateMyClusterID();
        if (!updated)
        {
          __s[0] = 0;
          v13 = CFUUIDCreateString(v0, qword_1ED4CAB20);
          if (v13)
          {
            v14 = v13;
            OUTLINED_FUNCTION_11_33();
            if (CFStringGetCString(v15, v16, v17, v18))
            {
              v19 = strlen(__s);
              v20 = TXTRecordSetValue(&txtRecord, "tsid", v19, __s);
              if (!v20)
              {
                v21 = if_nametoindex("awdl0");
                txtLen = TXTRecordGetLength(&txtRecord);
                BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                v20 = DNSServiceRegister(&sdRef, 0x100000u, v21, name, "_ieee1588._udp", 0, 0, 0x3F01u, txtLen, BytesPtr, figClusterSynchManager_registerServiceCallBack, 0);
                if (!v20)
                {
                  v24 = DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8);
                  if (v24)
                  {
                    v26 = v24;
                    OUTLINED_FUNCTION_239();
                    FigSignalErrorAtGM();
                  }

                  else
                  {
                    qword_1ED4CAB08 = sdRef;
                    sdRef = 0;
                    byte_1ED4CAAE2 = 1;
                    if (dword_1EAF17140)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      OUTLINED_FUNCTION_7();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    v26 = 0;
                  }

                  goto LABEL_16;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_239();
              v20 = FigSignalErrorAtGM();
            }

            v26 = v20;
LABEL_16:
            CFRelease(v2);
            v27 = v14;
LABEL_17:
            CFRelease(v27);
            goto LABEL_18;
          }

          goto LABEL_23;
        }

LABEL_24:
        v26 = updated;
        v27 = v2;
        goto LABEL_17;
      }
    }

LABEL_23:
    OUTLINED_FUNCTION_239();
    updated = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_239();
  v26 = FigSignalErrorAtGM();
LABEL_18:
  TXTRecordDeallocate(&txtRecord);
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  return v26;
}

uint64_t figClusterSynchManager_startBonjourBrowser()
{
  v19 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  if (byte_1ED4CAAE3)
  {
    return 0;
  }

  v0 = if_nametoindex("awdl0");
  v1 = DNSServiceBrowse(&sdRef, 0x100000u, v0, "_ieee1588._udp", 0, figClusterSynchManager_handleBrowserReply, 0);
  if (v1)
  {
    v12 = v1;
  }

  else
  {
    v2 = DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8);
    if (!v2)
    {
      qword_1ED4CAB10 = sdRef;
      sdRef = 0;
      byte_1ED4CAAE3 = 1;
      if (dword_1EAF17140)
      {
        v3 = OUTLINED_FUNCTION_10_33();
        v11 = OUTLINED_FUNCTION_14_27(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
        if (OUTLINED_FUNCTION_77_0(v11))
        {
          v18 = 136315138;
          OUTLINED_FUNCTION_1_82();
          OUTLINED_FUNCTION_2_79();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        v12 = 0;
        goto LABEL_9;
      }

      return 0;
    }

    v12 = v2;
  }

  FigSignalErrorAtGM();
LABEL_9:
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  return v12;
}

NSObject *figClusterSynchManager_restartBonjour()
{
  figClusterSynchManager_stopAndClearBonjourAdvertiser();
  figClusterSynchManager_stopAndClearBonjourBrowser();
  result = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CAAE8);
  qword_1ED4CAB38 = result;
  if (result)
  {
    dispatch_source_set_event_handler_f(result, figClusterSynchManager_restartBonjourTimerFired);
    v1 = qword_1ED4CAB38;
    v2 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v1, v2, 0x1DCD6500uLL, 0xF4240uLL);
    dispatch_resume(qword_1ED4CAB38);
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM();
  }

  return result;
}

void figClusterSynchManager_restartBonjourTimerFired()
{
  if (figClusterSynchManager_startBonjourAdvertiser() || figClusterSynchManager_startBonjourBrowser())
  {
    OUTLINED_FUNCTION_376();

    FigSignalErrorAtGM();
  }

  else
  {
    dispatch_source_cancel(qword_1ED4CAB38);
    if (qword_1ED4CAB38)
    {
      dispatch_release(qword_1ED4CAB38);
      qword_1ED4CAB38 = 0;
    }
  }
}

void figClusterSynchManager_handleBrowserReply(int a1, char a2, int a3, int a4, char *cStr, const char *a6, const char *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  sdRef = 0;
  if (a4 == -65563)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_651();

    figClusterSynchManager_restartBonjour();
    return;
  }

  if (a4 || byte_1ED4CAAE3 != 1)
  {
LABEL_24:
    OUTLINED_FUNCTION_651();
    return;
  }

  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v12)
  {
    v13 = v12;
    v14 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v12);
    if (v14)
    {
      v15 = v14;
      if ((a2 & 2) == 0 && dword_1EAF17140)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_22;
      }

      if ((a2 & 2) == 0 || FigCFEqual() || DNSServiceConstructFullName(fullName, cStr, a6, a7))
      {
LABEL_22:
        CFRelease(v13);
        CFRelease(v15);
        if (sdRef)
        {
          DNSServiceRefDeallocate(sdRef);
        }

        goto LABEL_24;
      }

      if (qword_1ED4CAB40 != -1)
      {
        dispatch_once_f(&qword_1ED4CAB40, &qword_1ED4CAB48, _FigClusterSynchronizationManagerBonjourQueryRegisterClass);
      }

      Instance = _CFRuntimeCreateInstance();
      if (!Instance && FigSignalErrorAtGM())
      {
        FigSignalErrorAtGM();
        goto LABEL_22;
      }

      *(Instance + 16) = 0;
      v18 = if_nametoindex("awdl0");
      v19 = CFRetain(Instance);
      if (DNSServiceQueryRecord(&sdRef, 0x100000u, v18, fullName, 0x10u, 1u, figClusterSynchManager_txtInfoCallBack, v19))
      {
        CFRelease(Instance);
        OUTLINED_FUNCTION_239();
      }

      else
      {
        if (!DNSServiceSetDispatchQueue(sdRef, qword_1ED4CAAE8))
        {
          *(Instance + 48) = sdRef;
          sdRef = 0;
LABEL_21:
          CFRelease(Instance);
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_239();
      }

      FigSignalErrorAtGM();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_651();

    CFRelease(v21);
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_651();

    FigSignalErrorAtGM();
  }
}

void figClusterSynchManager_txtInfoCallBack(int a1, int a2, int a3, int a4, const char *a5, int a6, int a7, uint16_t txtLen, void *txtRecord, uint64_t a10, void *cf)
{
  sdRef[16] = *MEMORY[0x1E69E9840];
  valueLen = 0;
  if (!a4)
  {
    if (!cf)
    {
      return;
    }

    if (cf[3] || cf[5])
    {
      goto LABEL_35;
    }

    if (byte_1ED4CAAE3 != 1 || qword_1ED4CAB20 == 0)
    {
      goto LABEL_35;
    }

    ValuePtr = TXTRecordGetValuePtr(txtLen, txtRecord, "did", &valueLen);
    if (ValuePtr)
    {
      valueLen = strnlen(ValuePtr, valueLen);
      OUTLINED_FUNCTION_11_33();
      v19 = CFStringCreateWithBytes(v15, v16, v17, v18, 0);
      if (v19)
      {
        v20 = v19;
        v21 = *MEMORY[0x1E695E480];
        v22 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v19);
        if (!v22)
        {
          OUTLINED_FUNCTION_111();
          FigSignalErrorAtGM();
          v33 = 0;
          v32 = 0;
          goto LABEL_27;
        }

        v23 = v22;
        if (!FigCFEqual())
        {
          v24 = *(cf + 16);
          if (*(cf + 16) && dword_1EAF17140)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_77_0(v26))
            {
              v37 = 136315394;
              v38 = "figClusterSynchManager_txtInfoCallBack";
              v39 = 2048;
              v40 = cf;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420();
            v24 = *(cf + 16);
          }

          if (!v24)
          {
            v27 = TXTRecordGetValuePtr(txtLen, txtRecord, "tsid", &valueLen);
            if (v27)
            {
              valueLen = strnlen(v27, valueLen);
              OUTLINED_FUNCTION_11_33();
              v32 = CFStringCreateWithBytes(v28, v29, v30, v31, 0);
              if (v32)
              {
                v33 = CFUUIDCreateFromString(v21, v32);
                if (v33)
                {
                  if (FigCFEqual())
                  {
                    cf[3] = v23;
                    sdRef[0] = 0;
                    if (*a5)
                    {
                      v34 = if_nametoindex("awdl0");
                      v35 = CFRetain(cf);
                      if (DNSServiceQueryRecord(sdRef, 0x100000u, v34, a5, 0x21u, 1u, figClusterSynchManager_srvInfoCallBack, v35))
                      {
                        CFRelease(cf);
                        OUTLINED_FUNCTION_111();
                        goto LABEL_48;
                      }

                      if (!DNSServiceSetDispatchQueue(sdRef[0], qword_1ED4CAAE8))
                      {
                        cf[5] = sdRef[0];
LABEL_27:
                        v23 = v20;
LABEL_31:
                        CFRelease(v23);
                        if (v32)
                        {
                          CFRelease(v32);
                        }

                        if (v33)
                        {
                          CFRelease(v33);
                        }

                        goto LABEL_35;
                      }
                    }

                    OUTLINED_FUNCTION_111();
LABEL_48:
                    FigSignalErrorAtGM();
                    if (sdRef[0])
                    {
                      DNSServiceRefDeallocate(sdRef[0]);
                    }

                    goto LABEL_27;
                  }

                  if (CFDictionaryGetValueIfPresent(qword_1ED4CAB18, v23, 0))
                  {
                    figClusterSynchManager_removePeerEndpoint(v23);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_111();
                  FigSignalErrorAtGM();
                }
              }

              else
              {
                OUTLINED_FUNCTION_111();
                FigSignalErrorAtGM();
                v33 = 0;
              }

LABEL_30:
              CFRelease(v20);
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_111();
            FigSignalErrorAtGM();
          }
        }

        v33 = 0;
        v32 = 0;
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
LABEL_35:
    CFRelease(cf);
    return;
  }

  OUTLINED_FUNCTION_111();
  FigSignalErrorAtGM();
  if (cf)
  {
    goto LABEL_35;
  }
}

void figClusterSynchManager_removePeerEndpoint(void *key)
{
  v5 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(qword_1ED4CAB18, key);
  if (Value)
  {
    v3 = Value;
    CFDataGetBytePtr(Value);
    if (dword_1EAF17140)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CM8021ASClockRemoveIPv6Port();
    CFSetRemoveValue(qword_1ED4CAAF8, v3);
    CFDictionaryRemoveValue(qword_1ED4CAB18, key);
  }
}

uint64_t figClusterSynchManager_RemovePort_cold_2(uint64_t a1, uint64_t a2)
{
  PeerMACAddress_in6 = figClusterSynchManager_getPeerMACAddress_in6(a1, a2);
  if (PeerMACAddress_in6 || (result = figClusterSynchManager_toggleRequisiteAWDLTrafficRegistration(PeerMACAddress_in6, a2), result))
  {
    OUTLINED_FUNCTION_376();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figClusterSynchManager_updateMyClusterID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void figClusterSynchManager_updateMyClusterID_cold_2()
{
  if (qword_1ED4CAB20)
  {
    figClusterSynchManager_ensureStopped();

    sleep(2u);
  }
}

uint64_t figClusterSynchManager_srvInfoCallBack_cold_2(const void *a1)
{
  CFRelease(a1);
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM();
}

uint64_t FigSCCFormatWriterCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSCCFormatWriterCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddTrack_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddTrack_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_CopyTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_SetTrackProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_SetTrackProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_SetTrackProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddSampleBufferToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddSampleBufferToTrack_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_AddSampleBufferToTrack_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_Flush_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_BeginSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriter_EndSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL sccFormatWriterEachSampleCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t sccFormatWriterEachSampleCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sccFormatWriterEachSampleCallback_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricDownloadSummaryEventDeserializeAndCopy(void *a1, void *a2)
{
  v15 = 0;
  v16 = 0;
  cf = 0;
  v14 = 0;
  if (a1 && a2)
  {
    int64 = xpc_dictionary_get_int64(a1, "RecoverableErrorCount");
    v5 = xpc_dictionary_get_int64(a1, "MediaResourceRequestCount");
    v6 = xpc_dictionary_get_int64(a1, "BytesDownloadedCount");
    v7 = xpc_dictionary_get_double(a1, "DownloadDuration");
    ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFError();
    if (!ArrayOfAlternatesFromXPCObject)
    {
      ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFDate();
      if (!ArrayOfAlternatesFromXPCObject)
      {
        ArrayOfAlternatesFromXPCObject = FigXPCMessageCopyCFString();
        if (!ArrayOfAlternatesFromXPCObject)
        {
          value = xpc_dictionary_get_value(a1, "VariantsArray");
          ArrayOfAlternatesFromXPCObject = FigAlternateCreateArrayOfAlternatesFromXPCObject(value, &cf);
          if (!ArrayOfAlternatesFromXPCObject)
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            ArrayOfAlternatesFromXPCObject = FigMetricDownloadSummaryEventCreate(AllocatorForMedia, v16, v15, v14, int64, v5, v6, cf, v7, a2);
          }
        }
      }
    }
  }

  else
  {
    ArrayOfAlternatesFromXPCObject = FigSignalErrorAtGM();
  }

  v11 = ArrayOfAlternatesFromXPCObject;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t meds_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1 || !a2)
  {
    v7 = FigSignalErrorAtGM();
LABEL_44:
    v23 = v7;
    goto LABEL_38;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = -12782;
  }

  xpc_dictionary_set_int64(a2, "EventID", v5);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v6(&v25, a1);
  }

  else
  {
    v25 = *MEMORY[0x1E6960C70];
    v26 = *(MEMORY[0x1E6960C70] + 16);
  }

  v7 = FigXPCMessageSetCMTime();
  if (v7)
  {
    goto LABEL_44;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v8(a1);
  }

  v7 = FigXPCMessageSetCFDate();
  if (v7)
  {
    goto LABEL_44;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v9)
  {
    v10 = v9(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = FigXPCMessageSetCFString();
  if (v11)
  {
    goto LABEL_41;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v12)
  {
    v13 = v12(a1);
  }

  else
  {
    v13 = 0;
  }

  xpc_dictionary_set_int64(a2, "RecoverableErrorCount", v13);
  v14 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v14)
  {
    v15 = v14(a1);
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_int64(a2, "MediaResourceRequestCount", v15);
  v16 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (v16)
  {
    v17 = v16(a1);
  }

  else
  {
    v17 = 0;
  }

  xpc_dictionary_set_int64(a2, "BytesDownloadedCount", v17);
  v18 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  v19.n128_u64[0] = 0;
  if (v18)
  {
    v19.n128_f64[0] = v18(a1, v19);
  }

  xpc_dictionary_set_double(a2, "DownloadDuration", v19.n128_f64[0]);
  v20 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v20)
  {
    v20(a1);
  }

  v11 = FigXPCMessageSetCFError();
  if (v11)
  {
LABEL_41:
    v23 = v11;
    if (v10)
    {
LABEL_37:
      CFRelease(v10);
    }
  }

  else
  {
    v21 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (v21)
    {
      v22 = v21(a1);
    }

    else
    {
      v22 = 0;
    }

    v23 = FigAlternateCopyArrayOfAlternatesAsXPCObject(v22, &value);
    if (!v23)
    {
      xpc_dictionary_set_value(a2, "VariantsArray", value);
    }

    if (v10)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (value)
  {
    CFRelease(value);
  }

  return v23;
}

uint64_t FigMetricDownloadSummaryEventCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyGetSampleInfo(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v107 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  result = CMBlockBufferAccessDataBytes(theBuffer, 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (result)
  {
    return result;
  }

  v5 = returnedPointerOut;
  v6 = returnedPointerOut[5] - 136;
  if (v6 >= 0xFFFFFFD0)
  {
    v7 = 1700998451;
  }

  else
  {
    v7 = 1633889587;
  }

  *a1 = v7;
  v8 = v5[4] >> 6;
  if (v8 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = DolbyAudioSampleFrequencies[v8];
  }

  *(a1 + 4) = v9;
  if (v6 <= 0xFFFFFFCF)
  {
    v10 = v5[4] & 0x3F;
    if (v10 <= 0x25)
    {
      v11 = 1000 * DolbyAudioBitRates[4 * v10];
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8) = v11;
    v15 = v5[6];
    v16 = v15 >> 5;
    *(a1 + 15) = 0;
    if ((((v15 >> 5) != 1) & (v15 >> 5)) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    if ((v15 & 0x80u) == 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 - 2;
    }

    if (v16 == 2)
    {
      v18 -= 2;
    }

    if (v18 < 0)
    {
      v19 = v5[7];
      LOBYTE(v18) = v18 + 8;
    }

    else
    {
      v19 = v15;
    }

    result = 0;
    v20 = (v19 >> v18) & 1;
    *(a1 + 15) = v20;
    *(a1 + 14) = v15 >> 5;
    *(a1 + 16) = 1;
    *(a1 + 12) = acmodToChannelMap[v16] | v20;
    *(a1 + 18) = 1;
    return result;
  }

  v104 = 0u;
  v105 = 0u;
  v103 = 0u;
  v102 = 0;
  HIDWORD(v101) = 0;
  HIDWORD(v98) = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v13 = 0;
  do
  {
    if (v13 >= DataLength)
    {
      goto LABEL_115;
    }

    *&v103 = theBuffer;
    *&v104 = v13;
    if (CMBlockBufferGetDataPointer(theBuffer, v13, &v104 + 1, 0, &v103 + 1))
    {
      v14 = *(&v105 + 1) + 16;
    }

    else
    {
      *&v105 = 0;
      v14 = 16;
    }

    *(&v105 + 1) = v14;
    result = BitStreamFetch(&v103, 2, &v102 + 1);
    if (result)
    {
      return result;
    }

    result = BitStreamFetch(&v103, 3, &v102);
    if (result)
    {
      return result;
    }

    result = BitStreamFetch(&v103, 11, &v101 + 1);
    if (result)
    {
      return result;
    }

    v13 += (2 * HIDWORD(v101) + 2);
  }

  while (v102);
  LODWORD(v101) = 0;
  result = BitStreamFetch(&v103, 2, &v101);
  if (!result)
  {
    HIDWORD(v100) = 0;
    result = BitStreamFetch(&v103, 2, &v100 + 1);
    if (!result)
    {
      LODWORD(v100) = 0;
      result = BitStreamFetch(&v103, 3, &v100);
      if (!result)
      {
        HIDWORD(v99) = 0;
        result = BitStreamFetch(&v103, 1, &v99 + 1);
        if (!result)
        {
          LODWORD(v99) = 0;
          result = BitStreamFetch(&v103, 5, &v99);
          if (!result)
          {
            if ((v99 - 17) < 0xFFFFFFFA)
            {
              return 4294954516;
            }

            OUTLINED_FUNCTION_1_83();
            result = OUTLINED_FUNCTION_0_86(v21, v22, v23, v24, v25, v26, v27, v28, v85, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
            if (result)
            {
              return result;
            }

            if (v91)
            {
              OUTLINED_FUNCTION_3_61();
            }

            v29 = v100;
            if (!v100)
            {
              OUTLINED_FUNCTION_1_83();
              result = OUTLINED_FUNCTION_0_86(v30, v31, v32, v33, v34, v35, v36, v37, v86, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
              if (result)
              {
                return result;
              }

              if (v91)
              {
                OUTLINED_FUNCTION_3_61();
              }
            }

            LODWORD(v98) = 0;
            result = BitStreamFetch(&v103, 1, &v98);
            if (!result)
            {
              if (!v98)
              {
                goto LABEL_95;
              }

              if (v29 >= 3)
              {
                v45 = *(&v105 + 1);
                *(&v105 + 1) += 2;
                if (v29)
                {
                  *(&v105 + 1) = v45 + 8;
                }
              }

              if ((v29 & 4) != 0)
              {
                OUTLINED_FUNCTION_2_80();
              }

              if (HIDWORD(v99))
              {
                result = OUTLINED_FUNCTION_0_86(result, v38, v39, v40, v41, v42, v43, v44, v86, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
                if (result)
                {
                  return result;
                }

                if (v91)
                {
                  OUTLINED_FUNCTION_1_83();
                }
              }

              result = OUTLINED_FUNCTION_0_86(result, v38, v39, v40, v41, v42, v43, v44, v86, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
              if (!result)
              {
                if (v91)
                {
                  OUTLINED_FUNCTION_2_80();
                }

                if (!v29)
                {
                  result = OUTLINED_FUNCTION_0_86(result, v46, v47, v48, v49, v50, v51, v52, v87, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
                  if (result)
                  {
                    return result;
                  }

                  if (v91)
                  {
                    OUTLINED_FUNCTION_2_80();
                  }
                }

                result = OUTLINED_FUNCTION_0_86(result, v46, v47, v48, v49, v50, v51, v52, v87, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
                if (!result)
                {
                  if (v91)
                  {
                    OUTLINED_FUNCTION_2_80();
                  }

                  result = BitStreamFetch(&v103, 2, &v97 + 1);
                  if (!result)
                  {
                    switch(HIDWORD(v97))
                    {
                      case 1:
                        v53 = 5;
                        break;
                      case 3:
                        result = BitStreamFetch(&v103, 5, &v96 + 1);
                        if (result)
                        {
                          return result;
                        }

                        v53 = (8 * HIDWORD(v96) + 16);
                        break;
                      case 2:
                        v53 = 12;
                        break;
                      default:
LABEL_77:
                        if (v29 <= 1)
                        {
                          result = BitStreamFetch(&v103, 1, &v97);
                          if (result)
                          {
                            return result;
                          }

                          if (v97)
                          {
                            *(&v105 + 1) += 14;
                          }

                          if (!v29)
                          {
                            result = BitStreamFetch(&v103, 1, &v96);
                            if (result)
                            {
                              return result;
                            }

                            if (v96)
                            {
                              *(&v105 + 1) += 14;
                            }
                          }
                        }

                        result = BitStreamFetch(&v103, 1, &v95 + 1);
                        if (!result)
                        {
                          if (HIDWORD(v95))
                          {
                            if (HIDWORD(v100))
                            {
                              if (DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v100)] <= 1u)
                              {
                                v61 = 1;
                              }

                              else
                              {
                                v61 = DDPNumberOfAudioBlocksPerSyncframe[HIDWORD(v100)];
                              }

                              while (1)
                              {
                                result = OUTLINED_FUNCTION_0_86(result, v54, v55, v56, v57, v58, v59, v60, v88, returnedPointerOut, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
                                if (result)
                                {
                                  return result;
                                }

                                if (v91)
                                {
                                  OUTLINED_FUNCTION_1_83();
                                }

                                if (!--v61)
                                {
                                  goto LABEL_95;
                                }
                              }
                            }

                            OUTLINED_FUNCTION_1_83();
                          }

LABEL_95:
                          result = BitStreamFetch(&v103, 1, &v95);
                          if (result)
                          {
                            return result;
                          }

                          if (!v95)
                          {
LABEL_111:
                            if (HIDWORD(v100) != 3)
                            {
                              ++*(&v105 + 1);
                            }

                            result = BitStreamFetch(&v103, 1, &v93 + 1);
                            if (result)
                            {
                              return result;
                            }

                            if (HIDWORD(v93) != 1)
                            {
                              goto LABEL_115;
                            }

                            result = BitStreamFetch(&v103, 6, &v93);
                            if (result)
                            {
                              return result;
                            }

                            if (v93 != 1)
                            {
                              goto LABEL_115;
                            }

                            result = BitStreamFetch(&v103, 7, &v92 + 1);
                            if (result)
                            {
                              return result;
                            }

                            if (HIDWORD(v92))
                            {
                              goto LABEL_115;
                            }

                            result = BitStreamFetch(&v103, 1, &v92);
                            if (result)
                            {
                              return result;
                            }

                            if (v92 == 1)
                            {
                              result = BitStreamFetch(&v103, 8, &v98 + 1);
                              if (result)
                              {
                                return result;
                              }

                              v64 = BYTE4(v98);
                              if ((HIDWORD(v98) - 17) < 0xFFFFFFF0)
                              {
                                return 4294954516;
                              }
                            }

                            else
                            {
LABEL_115:
                              v64 = 0;
                            }

                            *(a1 + 17) = v64;
                            v65 = CMBlockBufferGetDataLength(theBuffer);
                            LODWORD(v66) = *(a1 + 4);
                            *(a1 + 8) = (v65 * 8.0 * (v66 / 1536.0));
                            *(a1 + 16) = 1;
                            if (!v65)
                            {
LABEL_145:
                              v84 = acmodToChannelMap[*(a1 + 14)];
                              *(a1 + 12) = v84;
                              if (!*(a1 + 15))
                              {
                                return 0;
                              }

                              result = 0;
                              *(a1 + 12) = v84 | 1;
                              return result;
                            }

                            v67 = v65;
                            v68 = 0;
                            v69 = 0;
                            v70 = 0;
                            v71 = a1 + 19;
                            while (1)
                            {
                              LOWORD(v103) = 0;
                              result = CMBlockBufferAccessDataBytes(theBuffer, v70, 0xAuLL, temporaryBlock, &returnedPointerOut);
                              if (result)
                              {
                                return result;
                              }

                              v72 = returnedPointerOut;
                              v73 = returnedPointerOut[2];
                              v74 = returnedPointerOut[4];
                              v75 = (v74 >> 1) & 7;
                              v76 = v74 & 1;
                              if ((v73 & 0x40) != 0)
                              {
                                if ((v73 & 0xC0) == 0x40)
                                {
                                  v78 = *(v71 + v69);
                                  if (v78 <= 7)
                                  {
                                    *(v71 + v69) = v78 + 1;
                                    v79 = ddplusGetChanMapForDependentStream(v72, &v103) == 0;
                                    goto LABEL_129;
                                  }
                                }
                              }

                              else
                              {
                                v77 = *(a1 + 18);
                                if (v77 == 8)
                                {
                                  goto LABEL_144;
                                }

                                v69 = (v73 >> 3) & 7;
                                *(a1 + 18) = v77 + 1;
                                if (v68)
                                {
                                  if (!v69)
                                  {
                                    goto LABEL_144;
                                  }
                                }

                                else
                                {
                                  *(a1 + 14) = v75;
                                  *(a1 + 15) = v76;
                                  v68 = 1;
                                }
                              }

                              v79 = 1;
LABEL_129:
                              if (*(a1 + 16))
                              {
                                if (v79)
                                {
                                  if (v75 == *(a1 + 14))
                                  {
                                    goto LABEL_143;
                                  }

                                  v80 = *(a1 + 15);
                                  if (v76 == v80)
                                  {
                                    goto LABEL_143;
                                  }

                                  v81 = acmodToChannelMap[*(a1 + 14)];
                                  if ((v81 | (v80 != 0)) == (acmodToChannelMap[v75] | v76 | v81 | (v80 != 0)))
                                  {
                                    goto LABEL_143;
                                  }
                                }

                                else
                                {
                                  LOWORD(v81) = acmodToChannelMap[*(a1 + 14)];
                                  v80 = *(a1 + 15);
                                }

                                *(a1 + 16) = 0;
                                *(a1 + 12) = v81;
                                if (v80)
                                {
                                  *(a1 + 12) = v81 | 1;
                                }
                              }

                              if (!v79)
                              {
                                v83 = *(a1 + 12) | v103;
                                goto LABEL_142;
                              }

                              v82 = *(a1 + 12) | acmodToChannelMap[v75];
                              *(a1 + 12) = v82;
                              if (v76)
                              {
                                v83 = v82 | 1;
LABEL_142:
                                *(a1 + 12) = v83;
                              }

LABEL_143:
                              v70 += DolbyGetFrameSize(returnedPointerOut);
                              if (v70 >= v67)
                              {
LABEL_144:
                                if (!*(a1 + 16))
                                {
                                  return 0;
                                }

                                goto LABEL_145;
                              }
                            }
                          }

                          v62 = *(&v105 + 1);
                          *(&v105 + 1) += 5;
                          if (v29 == 2)
                          {
                            v63 = 9;
                          }

                          else
                          {
                            if (v29 < 6)
                            {
LABEL_102:
                              result = BitStreamFetch(&v103, 1, &v94 + 1);
                              if (result)
                              {
                                return result;
                              }

                              if (HIDWORD(v94))
                              {
                                OUTLINED_FUNCTION_3_61();
                              }

                              if (!v29)
                              {
                                result = BitStreamFetch(&v103, 1, &v94);
                                if (result)
                                {
                                  return result;
                                }

                                if (v94)
                                {
                                  OUTLINED_FUNCTION_3_61();
                                }
                              }

                              if (v101 <= 2)
                              {
                                ++*(&v105 + 1);
                              }

                              goto LABEL_111;
                            }

                            v63 = 7;
                          }

                          *(&v105 + 1) = v63 + v62;
                          goto LABEL_102;
                        }

                        return result;
                    }

                    *(&v105 + 1) += v53;
                    goto LABEL_77;
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

uint64_t BitStreamFetch(uint64_t a1, uint64_t a2, int *a3)
{
  *a3 = 0;
  if (a2 < 1)
  {
    return 0;
  }

  v4 = a2;
  v6 = *(a1 + 32);
  for (i = *(a1 + 40); ; i = 8)
  {
    v6 += i >> 3;
    *(a1 + 32) = v6;
    *(a1 + 40) = i & 7;
    if (v6 >= *(a1 + 24))
    {
      v8 = *a1;
      if (*a1)
      {
        v9 = *(a1 + 16) + v6;
        *(a1 + 16) = v9;
        result = CMBlockBufferGetDataPointer(v8, v9, (a1 + 24), 0, (a1 + 8));
        if (result)
        {
          return result;
        }

        v6 = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        fig_log_get_emitter();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        v6 = *(a1 + 32);
      }
    }

    v11 = *(a1 + 40);
    v12 = 8 - v11;
    v13 = *(*(a1 + 8) + v6);
    v14 = v4 - (8 - v11);
    if (v4 <= 8 - v11)
    {
      break;
    }

    *a3 = (*a3 << v12) | bitMask[v12] & v13;
    *(a1 + 40) = 8;
    v4 = v14;
    if (v14 <= 0)
    {
      return 0;
    }
  }

  result = 0;
  v15 = v13 >> (v12 - v4);
  if (v12 == v4)
  {
    LOBYTE(v15) = v13;
  }

  *a3 = (*a3 << v4) | bitMask[v4] & v15;
  *(a1 + 40) = v11 + v4;
  return result;
}

uint64_t DolbyCreateMagicCookie_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DolbyCreateMagicCookie_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParseColor(const __CFString *a1, float *a2, float *a3, float *a4, float *a5)
{
  bzero(buffer, 0xB8uLL);
  Length = CFStringGetLength(a1);
  v247 = 0;
  v248 = 0;
  v245 = 0;
  v246 = 0;
  if (!a2 || !a3 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_0_23();
    goto LABEL_34;
  }

  v14 = Length;
  v250 = a1;
  v253 = 0;
  v254 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v251 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v255 = 0;
  v256 = 0;
  v252 = CStringPtr;
  if (!figCSSParseCharacter(35, buffer, 0, v14, &v248))
  {
    v17 = figCSSParseHexDigits(buffer, v248, v14, &v248, &v247 + 1);
    if (v17)
    {
      goto LABEL_32;
    }

    v25 = OUTLINED_FUNCTION_0_87(v17, v18, v19, v20, v21, v22, v23, v24, v213, v228, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    v17 = figCSSParseHexDigits(v25, v26, v14, v27, &v247);
    if (v17)
    {
      goto LABEL_32;
    }

    v35 = OUTLINED_FUNCTION_0_87(v17, v28, v29, v30, v31, v32, v33, v34, v214, v229, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    v17 = figCSSParseHexDigits(v35, v36, v14, v37, &v246 + 1);
    if (v17)
    {
      goto LABEL_32;
    }

    v45 = OUTLINED_FUNCTION_0_87(v17, v38, v39, v40, v41, v42, v43, v44, v215, v230, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    if (figCSSParseHexDigits(v45, v46, v14, v47, &v246))
    {
      LODWORD(v246) = 255;
    }

    OUTLINED_FUNCTION_4_65();
    v48 = v6;
    goto LABEL_28;
  }

  if (figCSSParseString("rgb", buffer, v248, v14, &v248))
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      v50 = *MEMORY[0x1E695E480];
      v51 = CFStringCreateWithCString(*MEMORY[0x1E695E480], CStringPtrAndBufferToFree, 0x8000100u);
      v52 = &unk_1E7487564;
      v53 = 149;
      while (1)
      {
        v54 = CFStringCreateWithCString(v50, *(v52 - 5), 0x8000100u);
        v55 = CFStringCompare(v54, v51, 1uLL);
        if (v55 == kCFCompareEqualTo)
        {
          break;
        }

        if (v54)
        {
          CFRelease(v54);
        }

        v52 += 14;
        if (!--v53)
        {
          v54 = 0;
          OUTLINED_FUNCTION_4_65();
          v48 = v6;
          goto LABEL_23;
        }
      }

      v6 = *(v52 - 3);
      v7 = *(v52 - 2);
      v5 = *(v52 - 1);
      v48 = *v52;
      v56 = *(v52 + 1);
      *&v247 = v52[2];
      HIDWORD(v247) = v56;
      v57 = *(v52 + 3);
      *&v246 = v52[4];
      HIDWORD(v246) = v57;
LABEL_23:
      if (v51)
      {
        CFRelease(v51);
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v55 == kCFCompareEqualTo)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_33;
  }

  v60 = figCSSParseString("a(", buffer, v248, v14, &v248);
  v68 = v60;
  if (v60)
  {
    OUTLINED_FUNCTION_1_84();
    v60 = figCSSParseCharacter(40, v210, v211, v14, v212);
    if (v60)
    {
LABEL_33:
      OUTLINED_FUNCTION_6_53();
LABEL_34:
      v17 = FigSignalErrorAtGM();
      goto LABEL_32;
    }
  }

  v69 = OUTLINED_FUNCTION_0_87(v60, v61, v62, v63, v64, v65, v66, v67, v213, v228, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v69, v70, v14, v71);
  v80 = OUTLINED_FUNCTION_0_87(v72, v73, v74, v75, v76, v77, v78, v79, v216, v231, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  v17 = figCSSParseOneOrMoreDigits(v80, v81, v14, v82, &v247 + 1);
  if (v17)
  {
    goto LABEL_32;
  }

  v90 = OUTLINED_FUNCTION_0_87(v17, v83, v84, v85, v86, v87, v88, v89, v217, v232, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v90, v91, v14, v92);
  OUTLINED_FUNCTION_1_84();
  v17 = figCSSParseCharacter(44, v93, v94, v14, v95);
  if (v17)
  {
    goto LABEL_32;
  }

  v103 = OUTLINED_FUNCTION_0_87(v17, v96, v97, v98, v99, v100, v101, v102, v218, v233, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v103, v104, v14, v105);
  v114 = OUTLINED_FUNCTION_0_87(v106, v107, v108, v109, v110, v111, v112, v113, v219, v234, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  v17 = figCSSParseOneOrMoreDigits(v114, v115, v14, v116, &v247);
  if (v17)
  {
    goto LABEL_32;
  }

  v124 = OUTLINED_FUNCTION_0_87(v17, v117, v118, v119, v120, v121, v122, v123, v220, v235, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v124, v125, v14, v126);
  OUTLINED_FUNCTION_1_84();
  v17 = figCSSParseCharacter(44, v127, v128, v14, v129);
  if (v17)
  {
    goto LABEL_32;
  }

  v137 = OUTLINED_FUNCTION_0_87(v17, v130, v131, v132, v133, v134, v135, v136, v221, v236, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v137, v138, v14, v139);
  v148 = OUTLINED_FUNCTION_0_87(v140, v141, v142, v143, v144, v145, v146, v147, v222, v237, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  v17 = figCSSParseOneOrMoreDigits(v148, v149, v14, v150, &v246 + 1);
  if (v17)
  {
    goto LABEL_32;
  }

  v158 = OUTLINED_FUNCTION_0_87(v17, v151, v152, v153, v154, v155, v156, v157, v223, v238, *&v243, v244, v245, v246, v247, v248, buffer[0]);
  figCSSParseLWSP(v158, v159, v14, v160);
  v48 = 1.0;
  if (!v68)
  {
    HIDWORD(v244) = 0;
    v243 = 0.0;
    OUTLINED_FUNCTION_1_84();
    v17 = figCSSParseCharacter(44, v161, v162, v14, v163);
    if (v17)
    {
      goto LABEL_32;
    }

    v171 = OUTLINED_FUNCTION_0_87(v17, v164, v165, v166, v167, v168, v169, v170, v224, v239, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    figCSSParseLWSP(v171, v172, v14, v173);
    v182 = OUTLINED_FUNCTION_0_87(v174, v175, v176, v177, v178, v179, v180, v181, v225, v240, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    v17 = figCSSParseOneOrMoreDigits(v182, v183, v14, v184, &v244 + 1);
    if (v17)
    {
      goto LABEL_32;
    }

    v192 = OUTLINED_FUNCTION_0_87(v17, v185, v186, v187, v188, v189, v190, v191, v226, v241, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    v195 = figCSSParseFraction(v192, v193, v14, v194, &v243);
    v203 = OUTLINED_FUNCTION_0_87(v195, v196, v197, v198, v199, v200, v201, v202, v227, v242, *&v243, v244, v245, v246, v247, v248, buffer[0]);
    figCSSParseLWSP(v203, v204, v14, v205);
    LODWORD(v206) = HIDWORD(v244);
    v48 = v243 + v206;
  }

  OUTLINED_FUNCTION_1_84();
  v17 = figCSSParseCharacter(41, v207, v208, v14, v209);
  if (v17)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_65();
LABEL_28:
  v17 = figCSSCopyColorComponentWithRangeCheck(v6, HIDWORD(v247), a2);
  if (!v17)
  {
    v17 = figCSSCopyColorComponentWithRangeCheck(v7, v247, a3);
    if (!v17)
    {
      v17 = figCSSCopyColorComponentWithRangeCheck(v5, HIDWORD(v246), a4);
      if (!v17)
      {
        v17 = figCSSCopyColorComponentWithRangeCheck(v48, v246, a5);
      }
    }
  }

LABEL_32:
  v58 = v17;
  free(v245);
  return v58;
}

uint64_t figCSSParseCharacter(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    if (a4 <= a3)
    {
      return 4294949475;
    }

    if (a3 < 0 || a2[20] <= a3)
    {
      v10 = 0;
    }

    else
    {
      v9 = a2[17];
      if (v9)
      {
        v10 = *(v9 + 2 * a2[19] + 2 * a3);
      }

      else
      {
        v12 = a2[18];
        if (v12)
        {
          v10 = *(v12 + a2[19] + a3);
        }

        else
        {
          if (a2[22] <= a3 || (v13 = a2[21], v13 > a3))
          {
            OUTLINED_FUNCTION_3_62();
            OUTLINED_FUNCTION_5_56(v14);
            v13 = a2[21];
          }

          v10 = *(a2 + a3 - v13);
        }
      }
    }

    if (a1 == v10)
    {
      result = 0;
      *a5 = a3 + 1;
    }

    else
    {
      return 4294949475;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figCSSParseHexDigits(UniChar *buffer, int64_t a2, uint64_t a3, int64_t *a4, unsigned int *a5)
{
  if (a4 && a5)
  {
    if (a3 - a2 >= 2)
    {
      v8 = 0;
      v9 = -a2;
      v10 = a2 + 64;
      v11 = 1;
      v12 = a2;
      while (1)
      {
        v13 = v11;
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        if (a2 < 0)
        {
          return 4294949475;
        }

        v15 = *(buffer + 20);
        if (v15 <= v12)
        {
          return 4294949475;
        }

        v16 = *(buffer + 17);
        if (v16)
        {
          break;
        }

        v19 = *(buffer + 18);
        if (!v19)
        {
          if (*(buffer + 22) <= v12 || (v22 = *(buffer + 21), v22 > v12))
          {
            v23 = -v14;
            v24 = v14 + v9;
            v25 = v10 - v14;
            v26 = v12 + v23;
            v27 = v26 + 64;
            if (v26 + 64 >= v15)
            {
              v27 = *(buffer + 20);
            }

            *(buffer + 21) = v26;
            *(buffer + 22) = v27;
            if (v15 >= v25)
            {
              v15 = v25;
            }

            v31.location = v26 + *(buffer + 19);
            v31.length = v15 + v24;
            CFStringGetCharacters(*(buffer + 16), v31, buffer);
            v22 = *(buffer + 21);
          }

          v17 = &buffer[-v22];
          goto LABEL_12;
        }

        v18 = *(v19 + *(buffer + 19) + v12);
LABEL_15:
        v20 = v18;
        if ((v18 - 48) >= 0xAu)
        {
          if (v18 - 65 >= 6)
          {
            if (v18 - 97 > 5)
            {
              return 4294949475;
            }

            v21 = -87;
          }

          else
          {
            v21 = -55;
          }
        }

        else
        {
          v21 = -48;
        }

        if (v8 > 0xF0F0F0E)
        {
          return 4294949474;
        }

        v11 = 0;
        v8 = v21 + v20 + 16 * v8;
        ++v12;
        --v9;
        ++v10;
        if ((v13 & 1) == 0)
        {
          result = 0;
          *a4 = v12;
          *a5 = v8;
          return result;
        }
      }

      v17 = (v16 + 2 * *(buffer + 19));
LABEL_12:
      v18 = v17[v12];
      goto LABEL_15;
    }

    return 4294949475;
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }
}

uint64_t figCSSParseString(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = a3;
    v8 = *a1;
    if (*a1)
    {
      v10 = 0;
      if (a4 <= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = a4;
      }

      v12 = v11 - a3;
      while (v10 != v12)
      {
        if (v6 < 0 || *(a2 + 160) <= v6)
        {
          v14 = 0;
        }

        else
        {
          v13 = *(a2 + 136);
          if (v13)
          {
            v14 = *(v13 + 2 * *(a2 + 152) + 2 * v6);
          }

          else
          {
            v15 = *(a2 + 144);
            if (v15)
            {
              v14 = *(v15 + *(a2 + 152) + v6);
            }

            else
            {
              if (*(a2 + 176) <= v6 || (v16 = *(a2 + 168), v16 > v6))
              {
                OUTLINED_FUNCTION_3_62();
                *(a2 + 168) = v18;
                *(a2 + 176) = v17;
                v21.length = v17 - v18;
                v21.location = *(a2 + 152) + v18;
                CFStringGetCharacters(*(a2 + 128), v21, a2);
                v16 = *(a2 + 168);
              }

              v14 = *(a2 + 2 * (v6 - v16));
            }
          }
        }

        if (v8 != v14)
        {
          break;
        }

        ++v6;
        v8 = a1[++v10];
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      return 4294949475;
    }

    else
    {
LABEL_22:
      result = 0;
      *a5 = v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figCSSParseOneOrMoreDigits(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v23 = 0;
  v24 = a2;
  if (a4 && a5)
  {
    result = figCSSParseDigits(a1, a2, a3, &v24, &v23 + 1);
    if (!result)
    {
      v15 = OUTLINED_FUNCTION_7_41(result, v8, v9, v10, v11, v12, v13, v14, v23, v24);
      if (v15)
      {
LABEL_7:
        result = 0;
        *a4 = v24;
        *a5 = HIDWORD(v23);
      }

      else
      {
        while (HIDWORD(v23) <= 0x1745D173)
        {
          v15 = OUTLINED_FUNCTION_7_41(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
          if (v15)
          {
            goto LABEL_7;
          }
        }

        return 4294949474;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figCSSParseFraction(void *a1, uint64_t a2, uint64_t a3, void *a4, double *a5)
{
  v27 = a2;
  if (a4 && a5)
  {
    result = figCSSParseCharacter(46, a1, a2, a3, &v27);
    if (!result)
    {
      result = OUTLINED_FUNCTION_8_29(result, v8, v9, v10, v11, v12, v13, v14, v25, 0, v27);
      v23 = 0.0;
      if (!result)
      {
        v24 = 10.0;
        do
        {
          LODWORD(v22) = HIDWORD(v26);
          v23 = v23 + v22 / v24;
          v24 = v24 * 10.0;
          result = OUTLINED_FUNCTION_8_29(result, v15, v16, v17, v18, v19, v20, v21, v26, SHIDWORD(v26), v27);
        }

        while (!result);
      }

      *a4 = v27;
      *a5 = v23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figCSSParseDigits(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  if (a4 && a5)
  {
    if (a3 <= a2 || a2 < 0 || a1[20] <= a2)
    {
      return 4294949475;
    }

    v9 = a1[17];
    if (v9)
    {
      v10 = *(v9 + 2 * a1[19] + 2 * a2);
    }

    else
    {
      v11 = a1[18];
      if (v11)
      {
        v10 = *(v11 + a1[19] + a2);
      }

      else
      {
        if (a1[22] <= a2 || (v12 = a1[21], v12 > a2))
        {
          OUTLINED_FUNCTION_3_62();
          OUTLINED_FUNCTION_5_56(v13);
          v12 = a1[21];
        }

        v10 = *(a1 + a2 - v12);
      }
    }

    if ((v10 - 58) < 0xFFF6u)
    {
      return 4294949475;
    }

    else
    {
      result = 0;
      *a4 = a2 + 1;
      *a5 = v10 - 48;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figCSSCopyColorComponentWithRangeCheck_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSCopyColorComponentWithRangeCheck_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figCSSCopyColorComponentWithRangeCheck_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_53();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParseDigitsAsUInt32_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSParseFontSize_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMPEG2ParserCreate(uint64_t a1, int a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (!a7 || !a6 || !a9)
  {
    goto LABEL_18;
  }

  if (qword_1EAF195B8 != -1)
  {
    dispatch_once(&qword_1EAF195B8, &__block_literal_global_35);
  }

  v16 = qword_1EAF195C0;
  if (!qword_1EAF195C0)
  {
    goto LABEL_18;
  }

  v17 = *(a3 + 12);
  if (a2 == 2)
  {
    if ((v17 & 1) == 0 || *a3 <= 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v17 & 1) != 0 && *a3)
  {
LABEL_18:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();

    return FigSignalErrorAtGM();
  }

  v24 = 0;
  *a9 = 0;
  MEMORY[0x19A8D3660](&_MergedGlobals_5, RegisterFigMPEG2ParserBaseType);
  result = CMDerivedObjectCreate();
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v24;
    *(DerivedStorage + 40) = CFRetain(v16);
    *(DerivedStorage + 100) = a2;
    *(DerivedStorage + 56) = a6;
    *(DerivedStorage + 64) = a7;
    *(DerivedStorage + 72) = a8;
    v20 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 112) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 128) = *(v20 + 16);
    v21 = *(a3 + 16);
    *(DerivedStorage + 136) = *a3;
    *(DerivedStorage + 152) = v21;
    *(DerivedStorage + 104) = 1000000;
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 449) = a4 & 1;
    *(DerivedStorage + 96) = a5;
    *(DerivedStorage + 16) = 0;
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 32) = DerivedStorage + 24;
    if (*(a3 + 12))
    {
      v22 = *a3;
      CMTimeConvertScale(&v23, &v22, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *(DerivedStorage + 160) = v23.value;
    }

    result = 0;
    *(DerivedStorage + 184) = 0x100000001;
    *a9 = v24;
  }

  return result;
}

uint64_t FigMPEG2ParserCopyAudioConfigurationForTrack(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a1 && a3 && a4 && (DerivedStorage = CMBaseObjectGetDerivedStorage(), !*(DerivedStorage + 8)) && (*a3 = 0, *a4 = 0, (v8 = *(DerivedStorage + 24)) != 0))
  {
    while (*(v8 + 60) != a2)
    {
      v8 = *(v8 + 32);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (*(v8 + 824))
    {
      v10 = malloc_type_malloc(*(v8 + 832), 0x100004077774924uLL);
      *a3 = v10;
      if (v10)
      {
        memcpy(v10, *(v8 + 824), *(v8 + 832));
        result = 0;
        *a4 = *(v8 + 832);
      }

      else
      {
        return 4294954510;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_8:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigMPEG2ParserCopyProgramList(uint64_t a1, CFArrayRef *a2)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    goto LABEL_24;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    v14 = 0;
    *a2 = 0;
    return v14;
  }

  LODWORD(v6) = 0;
  do
  {
    v6 = (v6 + 1);
    v5 = *(v5 + 8);
  }

  while (v5);
  *a2 = 0;
  if (!v6)
  {
    return 0;
  }

  v7 = malloc_type_calloc(8uLL, v6, 0x3DFD88D8uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      while (1)
      {
        v12 = CFNumberCreate(v11, kCFNumberSInt32Type, (v9 + 40));
        v8[v10] = v12;
        if (!v12)
        {
          break;
        }

        ++v10;
        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v14 = 12;
    }

    else
    {
LABEL_13:
      v13 = CFArrayCreate(*(v4 + 40), v8, v6, MEMORY[0x1E695E9C0]);
      *a2 = v13;
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 12;
      }
    }

    for (i = 0; i != v6; ++i)
    {
      v16 = v8[i];
      if (v16)
      {
        CFRelease(v16);
      }
    }

    free(v8);
    return v14;
  }

LABEL_24:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_4();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ParserCopyTrackList(uint64_t a1, int a2, CFArrayRef *a3, CFArrayRef *a4)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!*(DerivedStorage + 8))
        {
          v8 = DerivedStorage;
          Program = FindProgram(DerivedStorage, a2);
          if (Program)
          {
            v10 = Program;
            v11 = *(Program + 24);
            if (!v11)
            {
              v21 = 0;
              *a4 = 0;
              *a3 = 0;
              return v21;
            }

            LODWORD(v12) = 0;
            do
            {
              v12 = (v12 + 1);
              v11 = *(v11 + 16);
            }

            while (v11);
            *a4 = 0;
            *a3 = 0;
            if (v12)
            {
              v13 = malloc_type_calloc(8uLL, v12, 0x34914AD3uLL);
              v14 = malloc_type_calloc(8uLL, v12, 0x7B355725uLL);
              v15 = v14;
              if (v13 && v14)
              {
                v16 = *(v10 + 24);
                if (v16)
                {
                  v17 = 0;
                  v18 = *MEMORY[0x1E695E480];
                  while (1)
                  {
                    v13[v17] = CFNumberCreate(v18, kCFNumberSInt32Type, v16 + 60);
                    v19 = CFNumberCreate(v18, kCFNumberSInt32Type, v16 + 7);
                    v15[v17] = v19;
                    if (!v13[v17] || !v19)
                    {
                      break;
                    }

                    ++v17;
                    v16 = v16[2];
                    if (!v16)
                    {
                      goto LABEL_17;
                    }
                  }
                }

                else
                {
LABEL_17:
                  v20 = CFArrayCreate(*(v8 + 40), v13, v12, MEMORY[0x1E695E9C0]);
                  *a3 = v20;
                  if (v20)
                  {
                    *a4 = CFArrayCreate(*(v8 + 40), v15, v12, MEMORY[0x1E695E9C0]);
                    if (*a3)
                    {
                      v21 = 0;
                      goto LABEL_24;
                    }

                    CFRelease(0);
                    *a3 = 0;
                  }
                }

                fig_log_get_emitter();
                v21 = FigSignalErrorAtGM();
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_20_0();
                v21 = FigSignalErrorAtGM();
                if (!v13)
                {
LABEL_29:
                  if (v15)
                  {
                    for (i = 0; i != v12; ++i)
                    {
                      v25 = v15[i];
                      if (v25)
                      {
                        CFRelease(v25);
                      }
                    }

                    free(v15);
                  }

                  return v21;
                }
              }

LABEL_24:
              for (j = 0; j != v12; ++j)
              {
                v23 = v13[j];
                if (v23)
                {
                  CFRelease(v23);
                }
              }

              free(v13);
              goto LABEL_29;
            }
          }

          return 0;
        }
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t FigMPEG2ParserInjectData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMPEG2ParserInjectData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMPEG2ParserInjectData_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  return a1 & 1;
}

uint64_t FigMPEG2ParserGetStreamType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMPEG2ParserGetStreamType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineInvalidate(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v42 = 0;
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSignalErrorAtGM();
      FigSimpleMutexUnlock();
    }

    else
    {
      if (*(DerivedStorage + 56))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        FigMediaProcessorStop(*(DerivedStorage + 56));
        FigMediaProcessorWaitUntilCompletelyStopped(*(DerivedStorage + 56));
      }

      v3 = *(DerivedStorage + 128);
      if (v3)
      {
        CMBufferQueueReset(v3);
      }

      if (qword_1ED4CAB58 != -1)
      {
        dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
      }

      if (!_MergedGlobals_59)
      {
        CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(DerivedStorage + 376));
        if (CMBaseObject)
        {
          v5 = CMBaseObject;
          v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v6)
          {
            v6(v5);
          }
        }
      }

      if (*(DerivedStorage + 392))
      {
        if (qword_1ED4CAB58 != -1)
        {
          dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v7 = OUTLINED_FUNCTION_178();
          v8(v7);
        }

        v9 = *(DerivedStorage + 392);
        if (v9)
        {
          CFRelease(v9);
          *(DerivedStorage + 392) = 0;
        }
      }

      if (qword_1ED4CAB58 != -1)
      {
        dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
      }

      if (!_MergedGlobals_59)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
      }

      fbaprp_setTimebaseGuts(a1, 0);
      *DerivedStorage = 1;
      fbaprp_transitionRosterRemoveAll();
      v10 = *(DerivedStorage + 64);
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v10, @"DownstreamConsumer", 0);
        }
      }

      *(DerivedStorage + 144) = 0x3F80000000000000;
      *(DerivedStorage + 240) = 0;
      v12 = MEMORY[0x1E6960C70];
      v13 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 160) = *MEMORY[0x1E6960C70];
      v14 = *(v12 + 16);
      *(DerivedStorage + 176) = v14;
      *(DerivedStorage + 208) = v13;
      *(DerivedStorage + 224) = v14;
      v15 = MEMORY[0x1E6960CC0];
      *(DerivedStorage + 260) = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 276) = *(v15 + 16);
      *(DerivedStorage + 96) = 0;
      *(DerivedStorage + 233) = 0;
      *(DerivedStorage + 320) = 0;
      *(DerivedStorage + 232) = 0;
      v16 = *(DerivedStorage + 72);
      if (v16)
      {
        FigSampleBufferProcessorForBufferedAirPlayCopyPerformanceDictionary(v16, &v42);
        memset(&v41, 0, sizeof(v41));
        Value = CFDictionaryGetValue(v42, @"FirstMediaSamplePts");
        CMTimeMakeFromDictionary(&v41, Value);
        memset(&v40, 0, sizeof(v40));
        v18 = CFDictionaryGetValue(v42, @"LastMediaSamplePts");
        CMTimeMakeFromDictionary(&v40, v18);
        memset(&v39, 0, sizeof(v39));
        v19 = CFDictionaryGetValue(v42, @"FirstContinuousSamplePts");
        CMTimeMakeFromDictionary(&v39, v19);
        memset(&v38, 0, sizeof(v38));
        v20 = CFDictionaryGetValue(v42, @"LastContinuousSamplePts");
        CMTimeMakeFromDictionary(&v38, v20);
        memset(&v37, 0, sizeof(v37));
        v21 = CFDictionaryGetValue(v42, @"DurationProcessed");
        CMTimeMakeFromDictionary(&v37, v21);
      }

      v22 = *(DerivedStorage + 304);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 304) = 0;
      }

      v23 = *(DerivedStorage + 72);
      if (v23)
      {
        CFRelease(v23);
        *(DerivedStorage + 72) = 0;
      }

      v24 = *(DerivedStorage + 128);
      if (v24)
      {
        CFRelease(v24);
        *(DerivedStorage + 128) = 0;
      }

      v25 = *(DerivedStorage + 136);
      if (v25)
      {
        CFRelease(v25);
        *(DerivedStorage + 136) = 0;
      }

      v26 = *(DerivedStorage + 328);
      if (v26)
      {
        CFRelease(v26);
        *(DerivedStorage + 328) = 0;
      }

      v27 = *(DerivedStorage + 88);
      if (v27)
      {
        CFRelease(v27);
        *(DerivedStorage + 88) = 0;
      }

      v28 = *(DerivedStorage + 360);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 360) = 0;
      }

      v29 = *(DerivedStorage + 368);
      if (v29)
      {
        CFRelease(v29);
        *(DerivedStorage + 368) = 0;
      }

      v30 = *(DerivedStorage + 80);
      if (v30)
      {
        CFRelease(v30);
        *(DerivedStorage + 80) = 0;
      }

      v31 = *(DerivedStorage + 120);
      if (v31)
      {
        CFRelease(v31);
        *(DerivedStorage + 120) = 0;
      }

      v32 = *(DerivedStorage + 104);
      if (v32)
      {
        CFRelease(v32);
        *(DerivedStorage + 104) = 0;
      }

      v33 = *(DerivedStorage + 64);
      if (v33)
      {
        CFRelease(v33);
        *(DerivedStorage + 64) = 0;
      }

      v34 = *(DerivedStorage + 416);
      if (v34)
      {
        CFRelease(v34);
        *(DerivedStorage + 416) = 0;
      }

      v35 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = 0;
      FigSimpleMutexUnlock();
      if (v35)
      {
        CFRelease(v35);
      }
    }

    if (v42)
    {
      CFRelease(v42);
    }
  }

  return 0;
}

uint64_t FigBufferedAirPlayAudioRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17188)
  {
    OUTLINED_FUNCTION_147();
    v4 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v4, type);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_37_14();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  FigBufferedAirPlayAudioRenderPipelineInvalidate(a1);
  v5 = *(DerivedStorage + 376);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 376) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 24);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 24) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 40) = 0;
  }

  v10 = *(DerivedStorage + 8);
  if (v10)
  {
    dispatch_sync_f(v10, 0, fbaprp_dispatchNoOp);
    dispatch_release(*(DerivedStorage + 8));
    *(DerivedStorage + 8) = 0;
  }

  result = *(DerivedStorage + 48);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 48) = 0;
  }

  return result;
}

uint64_t fbaprp_resumeOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v131 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v123 = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  if (!a5)
  {
    return FigSimpleMutexUnlock();
  }

  if (*DerivedStorage)
  {
    return FigSimpleMutexUnlock();
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a5))
  {
    return FigSimpleMutexUnlock();
  }

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  if (!CMTimeIfPresent)
  {
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 232))
  {
    OUTLINED_FUNCTION_59_6(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, v18, v123.value);
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 233))
  {
    OUTLINED_FUNCTION_59_6(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, v18, v123.value);
    v19 = *(DerivedStorage + 248);
    HostTimeClock = CMClockGetHostTimeClock();
    time = v123;
    CMSyncConvertTime(&v130, &time, v19, HostTimeClock);
    *(DerivedStorage + 208) = v130;
    Rate = CMTimebaseGetRate(*(DerivedStorage + 248));
    if (Rate == 0.0)
    {
      *(DerivedStorage + 232) = 1;
    }

    else
    {
      if (dword_1EAF17188)
      {
        v70 = OUTLINED_FUNCTION_25_19();
        OUTLINED_FUNCTION_18_22(v70, v71, v72, v73, v74, v75, v76, v77, v112, v117, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 176), v113, v118, v121.value, *&v121.timescale, v121.epoch, type, v123.value, *&v123.timescale, v123.epoch, v124, time.value, *&time.timescale, time.epoch, v126, v127, *(&v127 + 1), v128, v129, *(DerivedStorage + 160), *(DerivedStorage + 168), v130.epoch);
          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 224), v115, v120, v121.value, *&v121.timescale, v121.epoch, type, v123.value, *&v123.timescale, v123.epoch, v124, time.value, *&time.timescale, time.epoch, v126, v127, *(&v127 + 1), v128, v129, *(DerivedStorage + 208), *(DerivedStorage + 216), v130.epoch);
          LODWORD(time.value) = 136316162;
          OUTLINED_FUNCTION_2_81();
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_5_57();
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a2, Rate);
    }

    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 152) == 0.0)
  {
    if (*(DerivedStorage + 156) == 0.0)
    {
      if (dword_1EAF17188)
      {
        v54 = OUTLINED_FUNCTION_24_16();
        OUTLINED_FUNCTION_18_22(v54, v55, v56, v57, v58, v59, v60, v61, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            v62 = CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_21_19(v62, v63, v64, v65, v66, v67, v68, v69, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, *&v123.value);
          CMTimeGetSeconds(&v130);
          LODWORD(time.value) = 136315906;
          OUTLINED_FUNCTION_2_81();
          *(&v127 + 2) = v92;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_5_57();
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        CMTimeIfPresent = OUTLINED_FUNCTION_414();
      }

      OUTLINED_FUNCTION_21_19(CMTimeIfPresent, v11, v12, v13, v14, v15, v16, v17, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, *&v123.value);
      v79 = MEMORY[0x1E6960C70];
      v78 = 0.0;
      v80 = a2;
      v81 = 0;
      goto LABEL_38;
    }

    if (dword_1EAF17188)
    {
      v38 = OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_18_22(v38, v39, v40, v41, v42, v43, v44, v45, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      OUTLINED_FUNCTION_40();
      if (v5)
      {
        if (a2)
        {
          v46 = CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_21_19(v46, v47, v48, v49, v50, v51, v52, v53, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, *&v123.value);
        CMTimeGetSeconds(&v130);
        LODWORD(time.value) = 136316162;
        OUTLINED_FUNCTION_2_81();
        OUTLINED_FUNCTION_6_54();
        OUTLINED_FUNCTION_5_57();
        OUTLINED_FUNCTION_41_12();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    if (!*(DerivedStorage + 96))
    {
      v78 = *(DerivedStorage + 156);
      goto LABEL_37;
    }

    if (!dword_1EAF17188)
    {
      return FigSimpleMutexUnlock();
    }

    v102 = OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_18_22(v102, v103, v104, v105, v106, v107, v108, v109, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (!a2)
      {
        v110 = "";
        goto LABEL_72;
      }

      goto LABEL_68;
    }

LABEL_73:
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    return FigSimpleMutexUnlock();
  }

  if (dword_1EAF17188)
  {
    v22 = OUTLINED_FUNCTION_24_16();
    OUTLINED_FUNCTION_18_22(v22, v23, v24, v25, v26, v27, v28, v29, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (a2)
      {
        v30 = CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_21_19(v30, v31, v32, v33, v34, v35, v36, v37, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, *&v123.value);
      CMTimeGetSeconds(&v130);
      LODWORD(time.value) = 136316162;
      OUTLINED_FUNCTION_2_81();
      OUTLINED_FUNCTION_6_54();
      OUTLINED_FUNCTION_5_57();
      OUTLINED_FUNCTION_41_12();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  if (*(DerivedStorage + 96))
  {
    if (!dword_1EAF17188)
    {
      return FigSimpleMutexUnlock();
    }

    v94 = OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_18_22(v94, v95, v96, v97, v98, v99, v100, v101, v111, v116, v121.value, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    OUTLINED_FUNCTION_40();
    if (v5)
    {
      if (!a2)
      {
        v110 = "";
        goto LABEL_72;
      }

LABEL_68:
      v110 = (CMBaseObjectGetDerivedStorage() + 424);
LABEL_72:
      LODWORD(time.value) = 136315650;
      *(&time.value + 4) = "fbaprp_resumeOutput";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = a2;
      HIWORD(time.epoch) = 2082;
      v126 = v110;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_5_57();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_73;
    }

    goto LABEL_73;
  }

  v78 = *(DerivedStorage + 152);
LABEL_37:
  v130 = v123;
  v79 = MEMORY[0x1E6960C70];
  v80 = a2;
  v81 = 1;
LABEL_38:
  if (!fbaprp_startAudioChainGuts(v78, v80, v81, &v130.value, v79))
  {
    if (v123.flags)
    {
      *(DerivedStorage + 184) = v123;
      if (dword_1EAF17188)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_18_22(os_log_and_send_and_compose_flags_and_os_log_type, v83, v84, v85, v86, v87, v88, v89, v111, v116, 0, *&v121.timescale, v121.epoch, type, SWORD2(type), SBYTE6(type), OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_40();
        if (v5)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_48_10(*(DerivedStorage + 200), v114, v119, v121.value, *&v121.timescale, v121.epoch, type, v123.value, *&v123.timescale, v123.epoch, v124, time.value, *&time.timescale, time.epoch, v126, v127, *(&v127 + 1), v128, v129, *(DerivedStorage + 184), *(DerivedStorage + 192), v130.epoch);
          LODWORD(time.value) = 136315906;
          OUTLINED_FUNCTION_2_81();
          *(&v127 + 2) = v90;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_5_57();
          OUTLINED_FUNCTION_41_12();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }
    }

    v91 = CMTimebaseGetRate(*(DerivedStorage + 248));
    if (v91 != 0.0 && *(DerivedStorage + 384))
    {
      v130 = *(DerivedStorage + 184);
      time = *(DerivedStorage + 184);
      v121 = *(DerivedStorage + 208);
      fbaprp_setRateOnAudioChainGuts(a2, v91, &v130, &time, &v121, 0);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t fbaprp_sbufProcessorFoundEndOfSiriTTSUtterance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *MEMORY[0x1E6960CC0];
  FigSimpleMutexLock();
  if (a5)
  {
    if (!*DerivedStorage)
    {
      v7 = CFGetTypeID(a5);
      if (v7 == CFDictionaryGetTypeID() && FigCFDictionaryGetCMTimeIfPresent() && (BYTE12(v11) & 1) != 0 && *(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        v8 = OUTLINED_FUNCTION_266();
        v9(v8);
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void __fbaprp_transitionIDFound_block_invoke()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v22 = *MEMORY[0x1E6960CC0];
  v23 = *(MEMORY[0x1E6960CC0] + 16);
  OUTLINED_FUNCTION_66_6();
  if (*(*(v1 + 32) + 256))
  {
    if (*(v1 + 40))
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(*(v1 + 40)))
      {
        Value = CFDictionaryGetValue(*(v1 + 40), @"TransitionID");
        if (Value)
        {
          v4 = Value;
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            if (FigCFDictionaryGetCMTimeIfPresent() && FigCFDictionaryGetCMTimeIfPresent())
            {
              v5 = *(v1 + 48);
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              if (dword_1EAF17188)
              {
                OUTLINED_FUNCTION_36_14();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              Record = fbaprp_transitionRosterGetRecord(v5, v4);
              if (Record)
              {
                v9 = Record;
                v10 = Record[6];
                Record[15] = v23;
                *(Record + 13) = v22;
                *(Record + 3) = v24;
                Record[5] = v25;
                v11 = *(DerivedStorage + 304);
                if (v11)
                {
                  v9[2] = CFRetain(v11);
                  v13 = *(DerivedStorage + 304);
                }

                else
                {
                  v12 = *(DerivedStorage + 248);
                  if (v12)
                  {
                    v12 = CFRetain(v12);
                    v13 = *(DerivedStorage + 248);
                  }

                  else
                  {
                    v13 = 0;
                  }

                  v9[2] = v12;
                }

                CMTimebaseGetTime(v26, v13);
                v14 = OUTLINED_FUNCTION_178();
                fbaprp_scheduleItemTransitionOnTimebase(v14, v15, v16, v17, v10, v18, v19, v4);
              }
            }
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v20 = *(v1 + 48);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(v1 + 40);
  if (v21)
  {
    CFRelease(v21);
  }

  OUTLINED_FUNCTION_191();
}

void *fbaprp_transitionRosterGetRecord(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = (DerivedStorage + 288);
  do
  {
    v4 = *v4;
  }

  while (v4 && !FigCFEqual());
  return v4;
}

void fbaprp_scheduleItemTransitionOnTimebase(uint64_t a1, void *a2, uint64_t a3, CMTime *a4, const void *a5, uint64_t a6, __int128 *a7, const void *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v29, 0, sizeof(v29));
  CMTimeMake(&v29, 1, 1);
  memset(&v28, 0, sizeof(v28));
  lhs = *a4;
  rhs = v29;
  CMTimeSubtract(&v28, &lhs, &rhs);
  if (a2)
  {
    if (a5)
    {
      v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 32));
      if (v16)
      {
        v17 = v16;
        v18 = malloc_type_calloc(1uLL, 0x80uLL, 0x10E0040C66585F0uLL);
        if (v18)
        {
          v19 = v18;
          v27 = DerivedStorage;
          *(v18 + 2) = CFRetain(a2);
          *(v19 + 3) = CFRetain(a5);
          *v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(v19 + 32) = v28;
          v20 = *(a6 + 16);
          *(v19 + 5) = *a6;
          *(v19 + 12) = v20;
          v21 = *a7;
          *(v19 + 15) = *(a7 + 2);
          *(v19 + 104) = v21;
          epoch = a4->epoch;
          *(v19 + 56) = *&a4->value;
          *(v19 + 9) = epoch;
          *(v19 + 1) = CFRetain(a8);
          if (dword_1EAF17188)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          dispatch_source_set_timer(v17, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_source_set_event_handler_f(v17, fbaprp_transitionToNextTimebaseNow);
          dispatch_source_set_cancel_handler_f(v17, fbaprp_cancelTimebaseTransition);
          dispatch_set_context(v17, v19);
          dispatch_resume(v17);
          if (a8)
          {
            Record = fbaprp_transitionRosterGetRecord(a1, a8);
            if (Record)
            {
              v25 = Record[12];
              Record[12] = v17;
              dispatch_retain(v17);
              if (v25)
              {
                dispatch_source_cancel(v25);
                dispatch_release(v25);
              }
            }
          }

          if (!CMTimebaseAddTimerDispatchSource(a2, v17))
          {
            lhs = v28;
            if (!CMTimebaseSetTimerDispatchSourceNextFireTime(a2, v17, &lhs, 1u))
            {
              v26 = *(v27 + 304);
              *(v27 + 304) = a5;
              CFRetain(a5);
              if (v26)
              {
                CFRelease(v26);
              }

              goto LABEL_15;
            }

            CMTimebaseRemoveTimerDispatchSource(a2, v17);
          }

          fbaprp_transitionRosterRemoveRecordByTimebase(a1, a5);
        }

LABEL_15:
        dispatch_release(v17);
      }
    }
  }
}

void fbaprp_itemTransitionContextRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(uint64_t a1, double a2)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 392);
  v6 = *(DerivedStorage + 400);
  v7 = *(DerivedStorage + 80);
  v17 = *(DerivedStorage + 184);
  *type = *(DerivedStorage + 208);
  *&type[16] = *(DerivedStorage + 224);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v8)
  {
    return 4294954514;
  }

  v25[0] = v17;
  v19 = *type;
  result = v8(v5, v6, v25, &v19, v7, a2);
  if (!result)
  {
    if (dword_1EAF17188)
    {
      LODWORD(v17.value) = 0;
      type[0] = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40();
      if (v6)
      {
        if (a1)
        {
          v11 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v11 = "";
        }

        OUTLINED_FUNCTION_48_10(*(DerivedStorage + 176), v13, v14, *type, *&type[8], *&type[16], v16, v17.value, *&v17.timescale, v17.epoch, v18, v19.value, *&v19.timescale, v19.epoch, v20, v21, v22, v23, v24, *(DerivedStorage + 160), *(DerivedStorage + 168), v25[0].epoch);
        LODWORD(v19.value) = 136316162;
        *(&v19.value + 4) = "fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts";
        LOWORD(v19.flags) = 2048;
        *(&v19.flags + 2) = a1;
        HIWORD(v19.epoch) = 2082;
        v20 = v11;
        LOWORD(v21) = 2048;
        OUTLINED_FUNCTION_6_54();
        OUTLINED_FUNCTION_5_57();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    result = 0;
    if (a2 != 0.0 && !*(DerivedStorage + 96))
    {
      v12 = a2;
      *(DerivedStorage + 148) = v12;
      *(DerivedStorage + 96) = 1;
      *(DerivedStorage + 240) = CMTimebaseGetRate(*(DerivedStorage + 248));
      v25[0] = *(DerivedStorage + 184);
      v19 = *(DerivedStorage + 184);
      v17 = *(DerivedStorage + 208);
      return fbaprp_setRateOnAudioChainGuts(a1, v12, v25, &v19, &v17, 0);
    }
  }

  return result;
}

uint64_t fbaprp_setRateOnAudioChainGuts(uint64_t a1, float a2, uint64_t a3, CMTime *a4, CMTime *a5, uint64_t a6)
{
  v157 = a6;
  v191 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LODWORD(v12) = -353275904;
  if (*DerivedStorage)
  {
    OUTLINED_FUNCTION_14_28();
    v106 = FigSignalErrorAtGM();
    goto LABEL_49;
  }

  v13 = DerivedStorage;
  v14 = dword_1EAF17188;
  if (!DerivedStorage[256] && dword_1EAF17188)
  {
    v15 = OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38_12(v15, v16, v17, v18, v19, v20, v21, v22, v148, v151, v154, v157, type, type_8, v168, v171, v174);
    OUTLINED_FUNCTION_121();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = v6;
    }

    if (v25)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v185.value) = 136315650;
      OUTLINED_FUNCTION_58_4();
      HIWORD(v185.epoch) = 2082;
      v186 = v26;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    v14 = dword_1EAF17188;
    LODWORD(v12) = -353275904;
  }

  if (v14)
  {
    v27 = OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38_12(v27, v28, v29, v30, v31, v32, v33, v34, v148, v151, v154, v157, type, type_8, v168, v171, v174);
    OUTLINED_FUNCTION_121();
    if (v24)
    {
      v36 = v35;
    }

    else
    {
      v36 = v6;
    }

    if (v36)
    {
      if (a1)
      {
        v6 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v6 = "";
      }

      OUTLINED_FUNCTION_33_14();
      Seconds = CMTimeGetSeconds(&time);
      v46 = OUTLINED_FUNCTION_49_5(v38, v39, v40, v41, v42, v43, v44, v45, v148, v151, v154, v157, type, type_8, v168, v171, v174, *(&v174 + 1), v179, v182, v185.value, *&v185.timescale, v185.epoch, v186, *v187, *&v187[8], *&v187[16], *&v187[24], v188, v189, *&time.value, time.epoch);
      OUTLINED_FUNCTION_32_13(v47, v48, v49, v50, v51, v52, v53, v54, v149, v152, v155, v158, typec, type_8a, v169, v172, v175, v177, v180, v183, v185.value, *&v185.timescale, v185.epoch, v186, *v187, *&v187[8], *&v187[16], *&v187[24], v188, v189, *&time.value, time.epoch);
      LODWORD(v185.value) = 136316674;
      OUTLINED_FUNCTION_42_10();
      v186 = v6;
      *v187 = v55;
      *&v187[2] = a2;
      *&v187[10] = v55;
      *&v187[12] = Seconds;
      *&v187[20] = v55;
      *&v187[22] = v46;
      *&v187[30] = v55;
      v188 = v56;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_9();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
    v12 = &dword_1EAF17000;
    if (dword_1EAF17188)
    {
      v57 = OUTLINED_FUNCTION_12_31();
      OUTLINED_FUNCTION_38_12(v57, v58, v59, v60, v61, v62, v63, v64, v148, v151, v154, v157, type, type_8, v168, v171, v174);
      OUTLINED_FUNCTION_121();
      if (v24)
      {
        v74 = v73;
      }

      else
      {
        v74 = v6;
      }

      if (v74)
      {
        if (a1)
        {
          v65 = CMBaseObjectGetDerivedStorage();
          v75 = (v65 + 424);
        }

        else
        {
          v75 = "";
        }

        v76 = *(v13 + 47);
        v77 = OUTLINED_FUNCTION_49_5(v65, v66, v67, v68, v69, v70, v71, v72, v148, v151, v154, v157, type, type_8, v168, v171, v174, *(&v174 + 1), v179, v182, v185.value, *&v185.timescale, v185.epoch, v186, *v187, *&v187[8], *&v187[16], *&v187[24], v188, v189, *&time.value, time.epoch);
        OUTLINED_FUNCTION_32_13(v78, v79, v80, v81, v82, v83, v84, v85, v150, v153, v156, v159, typed, type_8b, v170, v173, v176, v178, v181, v184, v185.value, *&v185.timescale, v185.epoch, v186, *v187, *&v187[8], *&v187[16], *&v187[24], v188, v189, *&time.value, time.epoch);
        LODWORD(v185.value) = 136316674;
        OUTLINED_FUNCTION_42_10();
        v186 = v75;
        *v187 = v86;
        *&v187[2] = v76;
        *&v187[10] = v86;
        *&v187[12] = a2;
        *&v187[20] = v86;
        *&v187[22] = v77;
        *&v187[30] = v86;
        v188 = v87;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_53_9();
      }

      OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }
  }

  if (qword_1ED4CAB58 != -1)
  {
    dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
  }

  if (!_MergedGlobals_59)
  {
    v94 = *(v13 + 47);
    v174 = *(v13 + 10);
    v179 = *(v13 + 22);
    typea = *(v13 + 13);
    v168 = *(v13 + 28);
    VTable = CMBaseObjectGetVTable();
    v104 = *(VTable + 16);
    v103 = VTable + 16;
    if (!*(v104 + 8))
    {
      goto LABEL_81;
    }

    v88 = a2;
    OUTLINED_FUNCTION_35_11(v103, v96, v97, v98, v99, v100, v101, v102, v148, v151, v154, v157, typea);
    v106 = v105(v94, &time, &v185, a2);
    if (!v106)
    {
      goto LABEL_38;
    }

LABEL_49:
    v107 = v106;
    v90 = 0;
    goto LABEL_82;
  }

  v88 = a2;
LABEL_38:
  if (a2 == 0.0)
  {
    if (dword_1EAF17188)
    {
      v108 = OUTLINED_FUNCTION_12_31();
      os_log_type_enabled(v108, type);
      OUTLINED_FUNCTION_121();
      if (v24)
      {
        v110 = v109;
      }

      else
      {
        v110 = v174;
      }

      if (v110)
      {
        if (a1)
        {
          v111 = (CMBaseObjectGetDerivedStorage() + 424);
        }

        else
        {
          v111 = "";
        }

        v144 = *(v13 + 31);
        LODWORD(v185.value) = 136316162;
        *(&v185.value + 4) = "fbaprp_setRateOnAudioChainGuts";
        LOWORD(v185.flags) = 2048;
        *(&v185.flags + 2) = a1;
        HIWORD(v185.epoch) = 2082;
        v186 = v111;
        *v187 = 2048;
        *&v187[2] = v88;
        *&v187[10] = 2048;
        *&v187[12] = v144;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_53_9();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414();
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      time = **&MEMORY[0x1E6960C70];
      v185 = time;
      v145 = OUTLINED_FUNCTION_266();
      v107 = v146(v145);
      v128 = 0;
      v126 = 0;
      v90 = 0;
      if (v107)
      {
        goto LABEL_82;
      }

LABEL_68:
      v107 = 0;
      *(v13 + 36) = a2;
      if (!v128)
      {
        goto LABEL_72;
      }

LABEL_71:
      CFRelease(v128);
      goto LABEL_72;
    }

LABEL_81:
    v90 = 0;
    v107 = 4294954514;
    goto LABEL_82;
  }

  v89 = *(v13 + 31);
  time = *a4;
  v185 = *a5;
  if (a1 && v89)
  {
    v90 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004094F85FBAuLL);
    *v90 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v91 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v90 + 8) = v91;
    *(v90 + 2) = a2;
    *(v90 + 36) = v185;
    *(v90 + 12) = time;
    if (*v90 && v91)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_14_28();
    v107 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_14_28();
    v107 = FigSignalErrorAtGM();
    v90 = 0;
  }

  if (v107)
  {
    goto LABEL_82;
  }

LABEL_43:
  if (dword_1EAF17188)
  {
    v92 = OUTLINED_FUNCTION_12_31();
    os_log_type_enabled(v92, type);
    OUTLINED_FUNCTION_70();
    if (v12)
    {
      if (a1)
      {
        v93 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v93 = "";
      }

      OUTLINED_FUNCTION_33_14();
      v112 = CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32_13(v113, v114, v115, v116, v117, v118, v119, v120, v148, v151, v154, v157, type, type_8, v168, v171, v174, *(&v174 + 1), v179, v182, v185.value, *&v185.timescale, v185.epoch, v186, *v187, *&v187[8], *&v187[16], *&v187[24], v188, v189, *&time.value, time.epoch);
      LODWORD(v185.value) = 136316674;
      OUTLINED_FUNCTION_58_4();
      HIWORD(v185.epoch) = 2082;
      v186 = v93;
      *v187 = v121;
      *&v187[2] = v88;
      *&v187[10] = v121;
      *&v187[12] = v112;
      *&v187[20] = v121;
      *&v187[22] = v122;
      *&v187[30] = v121;
      v188 = v123;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454();
  }

  if (v157)
  {
    v124 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      v107 = 4294954443;
      goto LABEL_82;
    }

    v126 = Mutable;
    v127 = CFDictionaryCreateMutable(v124, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v127)
    {
      v107 = 4294954443;
      goto LABEL_73;
    }

    v128 = v127;
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  else
  {
    v128 = 0;
    v126 = 0;
  }

  v129 = *(v13 + 49);
  v130 = *(v13 + 50);
  v131 = *(v13 + 10);
  typeb = *&a5->value;
  v132 = CMBaseObjectGetVTable();
  v141 = *(v132 + 16);
  v140 = v132 + 16;
  if (!*(v141 + 16))
  {
    v107 = 4294954514;
    if (!v128)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_35_11(v140, v133, v134, v135, v136, v137, v138, v139, v148, v151, v154, v157, typeb);
  v143 = v142(v129, v130, &time, &v185, v131, fbaprp_bufferedAirPlayOutputStartedCallback, v90, v126, v88);
  if (!v143)
  {
    goto LABEL_68;
  }

  v107 = v143;
  if (v128)
  {
    goto LABEL_71;
  }

LABEL_72:
  v90 = 0;
  if (v126)
  {
LABEL_73:
    CFRelease(v126);
  }

LABEL_82:
  fbaprp_releaseSetRateContext(v90);
  return v107;
}

void __fbaprp_startTimebase_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6();
  if (!**(a1 + 32) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v2 = OUTLINED_FUNCTION_266();
    v3(v2);
  }

  FigSimpleMutexUnlock();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void fbaprp_timebaseRateChangedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 248) == a4)
  {
    v7 = DerivedStorage;
    if (a2)
    {
      CFRetain(a2);
    }

    v8 = *(v7 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbaprp_timebaseRateChangedCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_70;
    block[4] = v7;
    block[5] = a4;
    block[6] = a2;
    dispatch_async(v8, block);
  }
}

uint64_t fbaprp_setTimerForOverlapRangeOutroStart(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 416))
  {
    return 0;
  }

  if (*(DerivedStorage + 248) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
  {
    if (*(DerivedStorage + 408))
    {
      fbaprp_stopTimerForOverlapRangeOutroStart();
    }

    DictionaryValue = FigCFDictionaryGetDictionaryValue();
    v3 = fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(a1, 1, DictionaryValue, &cf);
    if (v3 || (v6 = cf) == 0)
    {
      v6 = DictionaryValue;
    }

    CMTimeMakeFromDictionary(&fireTime, v6);
    value = fireTime.value;
    flags = fireTime.flags;
    timescale = fireTime.timescale;
    epoch = fireTime.epoch;
    if ((fireTime.flags & 1) != 0 && *(DerivedStorage + 248))
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v9 && (v10 = v9, v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(DerivedStorage + 40)), (*(DerivedStorage + 408) = v11) != 0))
      {
        dispatch_set_context(v11, v10);
        dispatch_source_set_timer(*(DerivedStorage + 408), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_source_set_event_handler_f(*(DerivedStorage + 408), fbaprp_timebaseOutroStartTimeReachedCallback);
        dispatch_source_set_cancel_handler_f(*(DerivedStorage + 408), FigCFRelease_4);
        dispatch_resume(*(DerivedStorage + 408));
        CMTimebaseAddTimerDispatchSource(*(DerivedStorage + 248), *(DerivedStorage + 408));
        v12 = *(DerivedStorage + 248);
        v13 = *(DerivedStorage + 408);
        fireTime.value = value;
        fireTime.timescale = timescale;
        fireTime.flags = flags;
        fireTime.epoch = epoch;
        CMTimebaseSetTimerDispatchSourceNextFireTime(v12, v13, &fireTime, 1u);
      }

      else
      {
        v3 = 4294954443;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void __fbaprp_timebaseRateChangedCallback_block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_66_6();
  v3 = a1[4];
  if (!*v3)
  {
    v4 = *(v3 + 248);
    if (a1[5] == v4)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v4);
      v6 = a1[4];
      if (*(v6 + 232))
      {
        v7 = EffectiveRate;
        if (EffectiveRate != 0.0)
        {
          fabaprp_getOffsetToBAOTimeline(&time);
          *(v6 + 184) = time;
          if (dword_1EAF17188)
          {
            OUTLINED_FUNCTION_147();
            v8 = OUTLINED_FUNCTION_126();
            OUTLINED_FUNCTION_86_2(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              if (a1[6])
              {
                CMBaseObjectGetDerivedStorage();
              }

              time = *(a1[4] + 184);
              CMTimeGetSeconds(&time);
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524();
          }

          v16 = a1[4];
          *(v16 + 232) = 0;
          if ((*(v16 + 172) & 0x1D) != 1 || (v18 = fbaprp_synchronizeToTimebaseSetRateOnAudioChainGuts(a1[6], v7), v16 = a1[4], !v18))
          {
            *(v16 + 233) = 1;
          }
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  v17 = a1[6];
  if (v17)
  {
    CFRelease(v17);
  }
}

void fbaprp_stopTimerForOverlapRangeOutroStart()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 248);
  if (v1)
  {
    v2 = *(DerivedStorage + 408);
    if (v2)
    {
      CMTimebaseRemoveTimerDispatchSource(v1, v2);
      v3 = *(DerivedStorage + 408);
      if (v3)
      {
        dispatch_source_cancel(*(DerivedStorage + 408));
        dispatch_release(v3);
      }

      *(DerivedStorage + 408) = 0;
    }
  }
}

uint64_t fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(uint64_t a1, int a2, const __CFDictionary *a3, CFDictionaryRef *a4)
{
  HIDWORD(v43) = a2;
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v63 = value;
  v64 = timescale;
  *&v48.value = *MEMORY[0x1E6960C70];
  v48.epoch = v9;
  if (*DerivedStorage || !a3 || !a4)
  {
    OUTLINED_FUNCTION_44_12();
    v13 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(*(DerivedStorage + 72));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v13 = 4294954514;
LABEL_12:
    epoch = v9;
    flags = v8;
    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = v11(FigBaseObject, 0x1F0B311B8, *MEMORY[0x1E695E480], &dictionaryRepresentation);
  epoch = v9;
  flags = v8;
  if (!v13)
  {
    CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
    value = time1.value;
    timescale = time1.timescale;
    flags = time1.flags;
    epoch = time1.epoch;
    CMTimeMakeFromDictionary(&time1, a3);
    v63 = time1.value;
    v64 = time1.timescale;
    v13 = 4294954444;
    if (flags)
    {
      if (!HIDWORD(v43))
      {
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_34_14();
        time2.epoch = epoch;
        v15 = CMTimeAdd(&v48, &time1, &time2);
        goto LABEL_28;
      }

      if (HIDWORD(v43) != 1)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_9_34();
      OUTLINED_FUNCTION_34_14();
      time2.epoch = epoch;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_34_14();
        time2.epoch = epoch;
        v15 = CMTimeSubtract(&v48, &time1, &time2);
LABEL_28:
        OUTLINED_FUNCTION_46_8(v15, v16, v17, v18, v19, v20, v21, v22, v42, v43, epoch, v47, v23, v48.value);
        v13 = 0;
        *a4 = CMTimeCopyAsDictionary(v41, v12);
        goto LABEL_13;
      }

      v13 = 4294954444;
    }
  }

LABEL_13:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (dword_1EAF17188)
  {
    OUTLINED_FUNCTION_147();
    v24 = OUTLINED_FUNCTION_126();
    os_log_type_enabled(v24, BYTE3(v47));
    OUTLINED_FUNCTION_46();
    if (a3)
    {
      if (a1)
      {
        v25 = (CMBaseObjectGetDerivedStorage() + 424);
      }

      else
      {
        v25 = "";
      }

      OUTLINED_FUNCTION_9_34();
      v26.n128_f64[0] = CMTimeGetSeconds(&time1);
      v27 = v26.n128_u64[0];
      OUTLINED_FUNCTION_46_8(v28, v29, v30, v31, v32, v33, v34, v35, v42, v43, epoch, v47, v26, v48.value);
      Seconds = CMTimeGetSeconds(v36);
      time1.value = value;
      if (v44)
      {
        v38 = "song";
      }

      else
      {
        v38 = "continuous";
      }

      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = v46;
      v39 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316930;
      *(&time2.value + 4) = "fbaprp_copyTimeAdjustedToContinuousOrSongTimeline";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 2082;
      v51 = v25;
      v52 = 2048;
      v53 = v27;
      v54 = 2048;
      v55 = Seconds;
      v56 = 2080;
      v57 = v38;
      v58 = 1024;
      v59 = v13;
      v60 = 2048;
      v61 = v39;
      OUTLINED_FUNCTION_10_3();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0();
  }

  return v13;
}

void fbaprp_timebaseOutroStartTimeReachedCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(v1);
    v3 = *(DerivedStorage + 40);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __fbaprp_timebaseOutroStartTimeReachedCallback_block_invoke;
    v4[3] = &__block_descriptor_tmp_73_1;
    v4[4] = DerivedStorage;
    v4[5] = v1;
    dispatch_async(v3, v4);
    CFRelease(v1);
  }
}

void __fbaprp_timebaseOutroStartTimeReachedCallback_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_66_6();
  if (!**(a1 + 32))
  {
    if (dword_1EAF17188)
    {
      OUTLINED_FUNCTION_147();
      v3 = OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_86_2(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        if (*(a1 + 40))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_37_14();
        OUTLINED_FUNCTION_65();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524();
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v11 = OUTLINED_FUNCTION_266();
      v12(v11);
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 248);
    if (v14)
    {
      v15 = *(v13 + 408);
      if (v15)
      {
        CMTimebaseRemoveTimerDispatchSource(v14, v15);
        v16 = *(a1 + 32);
        v17 = *(v16 + 408);
        if (v17)
        {
          dispatch_source_cancel(*(v16 + 408));
          dispatch_release(v17);
          *(*(a1 + 32) + 408) = 0;
          v16 = *(a1 + 32);
        }

        *(v16 + 408) = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  v18 = *(a1 + 40);
  if (v18)
  {
    CFRelease(v18);
  }
}

uint64_t fbaprp_copyEndPresentationTimeForQueuedSamples(uint64_t a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (!a3)
  {
    return 0;
  }

  v6 = DerivedStorage;
  CMBufferQueueGetEndPresentationTimeStamp(&time, *(DerivedStorage + 128));
  value = time.value;
  timescale = time.timescale;
  if (time.flags)
  {
    time.value = value;
    time.timescale = timescale;
    v12 = CMTimeCopyAsDictionary(&time, a2);
    v9 = 0;
    *a3 = v12;
  }

  else
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(*(v6 + 72));
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(FigBaseObject, 0x1F0B56078, *MEMORY[0x1E695E480], &dictionaryRepresentation);
      v10 = dictionaryRepresentation;
      if (!v9)
      {
        CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
        value = time.value;
        timescale = time.timescale;
        v10 = dictionaryRepresentation;
        if (dictionaryRepresentation)
        {
          v11 = CFRetain(dictionaryRepresentation);
          v10 = dictionaryRepresentation;
        }

        else
        {
          v11 = 0;
        }

        *a3 = v11;
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v9;
}

uint64_t fbaprp_setAudioProcessingTap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK");
  getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK_BUT_TAP_AT_FAQRP");
  if (v4)
  {
    LODWORD(v4) = *v4 == 49;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    LOBYTE(v6) = 0;
    v11 = 4294954511;
    goto LABEL_18;
  }

  if (!v4)
  {
    if (*(DerivedStorage + 96))
    {
      v7 = FigSignalErrorAtGM();
      goto LABEL_16;
    }

    if (qword_1ED4CAB58 != -1)
    {
      dispatch_once(&qword_1ED4CAB58, &__block_literal_global_36);
    }

    if (_MergedGlobals_59)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (!v6)
      {
        goto LABEL_17;
      }

      v8 = OUTLINED_FUNCTION_178();
      v7 = v9(v8);
      if (v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      CMBaseObject = FigBufferedAirPlaySubPipeManagerForRenderPipelineGetCMBaseObject(*(DerivedStorage + 376));
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = v6(CMBaseObject, @"AudioProcessingTap", a2);
      if (v7)
      {
        goto LABEL_16;
      }
    }

    v11 = 0;
    LOBYTE(v6) = a2 != 0;
    goto LABEL_18;
  }

  v5 = FigBufferedAirPlayOutputProxyGetCMBaseObject(*(DerivedStorage + 392));
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
LABEL_17:
    v11 = 4294954514;
    goto LABEL_18;
  }

  v7 = v6(v5, @"AudioProcessingTap", a2);
LABEL_16:
  v11 = v7;
  LOBYTE(v6) = 0;
LABEL_18:
  *(DerivedStorage + 112) = v6;
  FigSimpleMutexUnlock();
  return v11;
}

void FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v186 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v170.value = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v170.epoch = v8;
  v169 = 0;
  *v157 = *&v170.value;
  v167 = *&v170.value;
  *&v168[0] = v8;
  *(v168 + 8) = *MEMORY[0x1E6960C88];
  *(&v168[1] + 1) = *(MEMORY[0x1E6960C88] + 16);
  v166 = 0;
  bzero(v164, 0x88uLL);
  target = 0;
  v162 = **&MEMORY[0x1E6960C70];
  v161 = v162;
  v160 = v162;
  cf = 0;
  if (*&v4 == 0.0)
  {
    goto LABEL_84;
  }

  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigMediaProcessorStop(*(DerivedStorage + 56));
    FigMediaProcessorWaitUntilCompletelyStopped(*(DerivedStorage + 56));
    v9 = OUTLINED_FUNCTION_178();
    Record = fbaprp_transitionRosterGetRecord(v9, v10);
    v12 = &dword_1EAF17000;
    if (Record)
    {
      v13 = Record;
      v156 = v2;
      FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(*(DerivedStorage + 72));
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15)
      {
        goto LABEL_81;
      }

      v153 = v4;
      v16 = *MEMORY[0x1E695E480];
      if (v15(FigBaseObject, 0x1F0B56038, *MEMORY[0x1E695E480], &v169))
      {
        goto LABEL_81;
      }

      v151 = v16;
      CMTimeMakeFromDictionary(&v170, v169);
      v183 = *(v13 + 104);
      *&v184 = *(v13 + 15);
      *&time.value = *v157;
      time.epoch = v8;
      v17 = OUTLINED_FUNCTION_40_11();
      if (CMTimeCompare(v17, v18))
      {
        v183 = *(v13 + 104);
        *&v184 = *(v13 + 15);
        time = v170;
        v19 = OUTLINED_FUNCTION_40_11();
        if (CMTimeCompare(v19, v20) < 0)
        {
          if (dword_1EAF17188)
          {
            OUTLINED_FUNCTION_4_66();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_64_7(os_log_and_send_and_compose_flags_and_os_log_type, v52, v53, v54, v55, v56, v57, v58, v145, v146, v147, v148, v149, v16, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
            OUTLINED_FUNCTION_70();
            if (&dword_1EAF17000)
            {
              if (v6)
              {
                v59 = (CMBaseObjectGetDerivedStorage() + 424);
              }

              else
              {
                v59 = "";
              }

              LODWORD(time.value) = 136315906;
              *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
              OUTLINED_FUNCTION_16_24(v59);
              OUTLINED_FUNCTION_11_34();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_36_14();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_454();
          }

          if (CMBufferQueueReset(*(DerivedStorage + 128)))
          {
            goto LABEL_81;
          }
        }

        goto LABEL_8;
      }

      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_4_66();
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_62_7(v40, v41, v42, v43, v44, v45, v46, v47, v145, v146, v147, v148, v149, v16, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
        {
          v48 = &dword_1EAF17000;
        }

        else
        {
          v48 = &dword_1EAF17000 & 0xFFFFFFFE;
        }

        if (v48)
        {
          if (v6)
          {
            v49 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v49 = "";
          }

          LODWORD(time.value) = 136315906;
          *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
          OUTLINED_FUNCTION_8_30(v49);
          v173 = 2114;
          v174 = *&v153;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        LODWORD(v12) = v112;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v113 = FigSampleBufferProcessorGetFigBaseObject(*(DerivedStorage + 72));
      v114 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v114 || v114(v113, 0x1F0B56058, v151, &v166))
      {
        goto LABEL_81;
      }

      if (v166)
      {
        CFDictionaryGetValue(v166, @"TransitionID");
      }

      if (FigCFEqual())
      {
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (OUTLINED_FUNCTION_62_7(v115, v116, v117, v118, v119, v120, v121, v122, v145, v146, v147, v148, v149, v151, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
          {
            v123 = v12;
          }

          else
          {
            v123 = v12 & 0xFFFFFFFE;
          }

          if (v123)
          {
            if (v6)
            {
              v124 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v124 = "";
            }

            LODWORD(time.value) = 136315906;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            OUTLINED_FUNCTION_8_30(v124);
            v173 = 2114;
            v174 = *&v153;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          LODWORD(v12) = v133;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        FigCFDictionaryGetCMTimeIfPresent();
        v134 = *(DerivedStorage + 304);
        if (!v134)
        {
          v134 = *(DerivedStorage + 248);
        }

        v165 = v134;
        v13 = v164;
LABEL_8:
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, BYTE3(type));
          OUTLINED_FUNCTION_70();
          if (v12)
          {
            if (v6)
            {
              v22 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v22 = "";
            }

            v183 = *(v13 + 104);
            v60 = OUTLINED_FUNCTION_51_11(*(v13 + 15));
            v183 = *&v170.value;
            v61 = OUTLINED_FUNCTION_51_11(v170.epoch);
            v183 = *(v13 + 24);
            v62 = OUTLINED_FUNCTION_51_11(*(v13 + 5));
            v63 = *(v13 + 2);
            LODWORD(time.value) = 136316930;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = v6;
            HIWORD(time.epoch) = 2082;
            v172 = v22;
            v173 = 2114;
            v174 = *&v153;
            v175 = 2048;
            v176 = v60;
            v177 = 2048;
            v178 = v61;
            v179 = 2048;
            v180 = v62;
            v181 = 2048;
            v182 = v63;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_36_14();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454();
        }

        v167 = *(v13 + 104);
        *&v168[0] = *(v13 + 15);
        v183 = *&v170.value;
        *&v184 = v170.epoch;
        time = *(v13 + 104);
        v64 = OUTLINED_FUNCTION_40_11();
        CMTimeSubtract(v66, v64, v65);
        if (dword_1EAF17188)
        {
          OUTLINED_FUNCTION_4_66();
          v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_64_7(v67, v68, v69, v70, v71, v72, v73, v74, v145, v146, v147, v148, v149, v151, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
          OUTLINED_FUNCTION_70();
          if (v12)
          {
            if (v6)
            {
              v75 = (CMBaseObjectGetDerivedStorage() + 424);
            }

            else
            {
              v75 = "";
            }

            v183 = v167;
            v76 = OUTLINED_FUNCTION_51_11(*&v168[0]);
            v183 = *(v168 + 8);
            v77 = OUTLINED_FUNCTION_51_11(*(&v168[1] + 1));
            LODWORD(time.value) = 136316162;
            *(&time.value + 4) = "FigBufferedAirPlayAudioRenderPipelineCancelAndFlushTransition";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = v6;
            HIWORD(time.epoch) = 2082;
            v172 = v75;
            v173 = 2048;
            v174 = v76;
            v175 = 2048;
            v176 = v77;
            OUTLINED_FUNCTION_11_34();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_36_14();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_454();
        }

        v78 = *(DerivedStorage + 148);
        if (v78 > 0.0 && v78 != 1.0)
        {
          *&time.value = v167;
          time.epoch = *&v168[0];
          v80 = 1.0 / v78;
          CMTimeMultiplyByFloat64(&v183, &time, v80);
          v167 = v183;
          *&v168[0] = v184;
          time = *(v168 + 8);
          CMTimeMultiplyByFloat64(&v183, &time, v80);
          *(v168 + 8) = v183;
          *(&v168[1] + 1) = v184;
        }

        v183 = *(v168 + 8);
        *&v184 = *(&v168[1] + 1);
        *&time.value = *v157;
        time.epoch = v8;
        v81 = OUTLINED_FUNCTION_40_11();
        if (!CMTimeCompare(v81, v82))
        {
          goto LABEL_64;
        }

        CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
        CMTimeMake(&v161, CFPreferenceNumberWithDefault, 1);
        CMTimebaseGetTime(&v162, *(DerivedStorage + 248));
        v183 = v167;
        *&v184 = *&v168[0];
        time = v162;
        v84 = OUTLINED_FUNCTION_40_11();
        CMTimeSubtract(v86, v84, v85);
        v183 = *&v160.value;
        *&v184 = v160.epoch;
        time = v161;
        v87 = OUTLINED_FUNCTION_40_11();
        if (CMTimeCompare(v87, v88) <= 0)
        {
          FigSignalErrorAtGM();
        }

        else if (!OUTLINED_FUNCTION_23_23(v151, v89, v90, v91, v92, v93, v94, v95, 0, 0, 0, &target))
        {
          v96 = *MEMORY[0x1E695E4D0];
          CMSetAttachment(target, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u);
          v97 = *(DerivedStorage + 64);
          v98 = target;
          v99 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v99)
          {
            if (!v99(v97, v98) && !OUTLINED_FUNCTION_23_23(v151, v100, v101, v102, v103, v104, v105, v106, 0, 0, 0, &cf))
            {
              CMSetAttachment(cf, @"FlushRangeEnd", v96, 1u);
              if (!FigSampleBufferConsumerSendSampleBuffer(*(DerivedStorage + 64), cf))
              {
                v107 = *(DerivedStorage + 392);
                v108 = *(DerivedStorage + 400);
                v183 = v167;
                v184 = v168[0];
                v185 = v168[1];
                if (!FigBufferedAirPlayOutputProxyFlushWithinTimeRange(v107, v108, &v183))
                {
LABEL_64:
                  v109 = *(v13 + 2);
                  v183 = *(v13 + 24);
                  *&v184 = *(v13 + 5);
                  time = *(v13 + 104);
                  if (!fbaprp_restoreAudioChainToStartOutputTime(v6, v109, &v183, &time))
                  {
                    v110 = OUTLINED_FUNCTION_178();
                    fbaprp_transitionRosterRemoveRecordsStartingFromTransitionID(v110, v111);
                  }
                }
              }
            }
          }
        }

LABEL_81:
        FigMediaProcessorGo(*(DerivedStorage + 56));
        goto LABEL_82;
      }

      if (dword_1EAF17188)
      {
        OUTLINED_FUNCTION_4_66();
        v125 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_30_15(v125, v126, v127, v128, v129, v130, v131, v132, v145, v146, v147, v148, v149, v151, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
        OUTLINED_FUNCTION_46();
        if (v113)
        {
          if (v6)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_55_10(4.8154e-34);
          OUTLINED_FUNCTION_16_24(v135);
          v175 = 2114;
          v176 = *&v153;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_52_9();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      if (fbaprp_flushTransitionInBufferQueue(*(DerivedStorage + 128), v153) != -1)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_4_66();
      v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_30_15(v136, v137, v138, v139, v140, v141, v142, v143, v145, v146, v147, v148, v149, v151, v153, v156, v157[0], v157[1], type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
      OUTLINED_FUNCTION_46();
      if (v113)
      {
        if (v6)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_55_10(4.8153e-34);
        OUTLINED_FUNCTION_8_30(v144);
        v173 = 2112;
        v174 = *&v154;
        OUTLINED_FUNCTION_11_34();
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_52_9();
      }
    }

    else
    {
      if (dword_1EAF17188)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_30_15(v23, v24, v25, v26, v27, v28, v29, v30, v145, v146, v147, v148, v149, v150, v152, v155, v157[0], v157[1], type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
        OUTLINED_FUNCTION_46();
        if (v0)
        {
          if (v6)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_55_10(4.8154e-34);
          OUTLINED_FUNCTION_16_24(v31);
          v175 = 2114;
          v176 = *&v4;
          OUTLINED_FUNCTION_11_34();
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_52_9();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0();
      }

      if (fbaprp_flushTransitionInBufferQueue(*(DerivedStorage + 128), v4) != -1)
      {
        goto LABEL_81;
      }

      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_30_15(v32, v33, v34, v35, v36, v37, v38, v39, v145, v146, v147, v148, v149, v150, v152, v155, v157[0], v157[1], type, SBYTE2(type), OS_LOG_TYPE_DEFAULT, 0);
      OUTLINED_FUNCTION_46();
      if (v0)
      {
        if (v6)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_55_10(4.8153e-34);
        OUTLINED_FUNCTION_8_30(v50);
        v173 = 2112;
        v174 = *&v4;
        OUTLINED_FUNCTION_11_34();
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_52_9();
      }
    }

    OUTLINED_FUNCTION_238_0();
    goto LABEL_81;
  }

LABEL_82:
  FigSimpleMutexUnlock();
  if (v169)
  {
    CFRelease(v169);
  }

LABEL_84:
  if (v166)
  {
    CFRelease(v166);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

void FigBufferedAirPlayAudioRenderPipelineFlushFromTime()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  v51 = *MEMORY[0x1E6960C70];
  v52 = *(MEMORY[0x1E6960C70] + 8);
  v5 = *MEMORY[0x1E6960CC0];
  v41 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  *v42 = v6;
  v7 = *MEMORY[0x1E6960C88];
  *&v42[8] = *MEMORY[0x1E6960C88];
  v8 = *(MEMORY[0x1E6960C88] + 16);
  *&v42[24] = v8;
  v39 = 0;
  cf = 0;
  v9 = *(v1 + 3);
  if ((v9 & 9) != 1)
  {
    v21 = 0;
    goto LABEL_30;
  }

  if ((v9 & 4) != 0)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v10 = DerivedStorage;
  v37 = v7;
  v38 = v5;
  FigSimpleMutexLock();
  if (!*v10)
  {
    FigMediaProcessorStop(*(v10 + 56));
    FigMediaProcessorWaitUntilCompletelyStopped(*(v10 + 56));
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(*(v10 + 72));
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v13 = *MEMORY[0x1E695E480];
      if (v12(FigBaseObject, 0x1F0B56038, *MEMORY[0x1E695E480], &dictionaryRepresentation))
      {
        goto LABEL_26;
      }

      CMTimeMakeFromDictionary(time1, dictionaryRepresentation);
      v14 = *&time1[12];
      v52 = *&time1[8];
      v15 = *time1;
      v51 = *time1;
      v16 = *&time1[16];
      *time1 = *v1;
      *&time1[16] = *(v1 + 2);
      time2.value = v15;
      time2.timescale = v52;
      time2.flags = v14;
      time2.epoch = v16;
      if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0 || (v14 & 1) == 0)
      {
        v22 = *(v10 + 128);
        OUTLINED_FUNCTION_33_14();
        queueOut = 0;
        v50 = 0u;
        memset(time1, 0, sizeof(time1));
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        if (!CMBufferQueueCreate(v13, 0, CallbacksForUnsortedSampleBuffers, &queueOut))
        {
          *time1 = queueOut;
          *&time1[16] = *&time2.value;
          *&v50 = time2.epoch;
          BYTE8(v50) = 1;
          HIDWORD(v50) = 0;
          MEMORY[0x19A8CE710](v22, fbaprp_copySbufBeforeFlushTimeForBufferQueueResetCallback, time1);
          MEMORY[0x19A8CE710](queueOut, fbaprp_copySbufForBufferQueueResetCallback, v22);
        }

        if (queueOut)
        {
          CFRelease(queueOut);
        }

        v21 = 0;
        goto LABEL_27;
      }

      if (dword_1EAF17188)
      {
        LODWORD(queueOut) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = queueOut;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          if (v3)
          {
            v20 = (CMBaseObjectGetDerivedStorage() + 424);
          }

          else
          {
            v20 = "";
          }

          v24 = *(v10 + 128);
          LODWORD(time2.value) = 136315906;
          *(&time2.value + 4) = "FigBufferedAirPlayAudioRenderPipelineFlushFromTime";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v3;
          HIWORD(time2.epoch) = 2082;
          v46 = v20;
          v47 = 2048;
          v48 = v24;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (CMBufferQueueReset(*(v10 + 128)))
      {
LABEL_26:
        v21 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_56_8();
        v21 = CMTimeCopyAsDictionary(time1, v13);
        if (fbaprp_copyTimeAdjustedToContinuousOrSongTimeline(v3, 0, v21, &v39))
        {
          v41 = *v1;
          *v42 = *(v1 + 2);
        }

        else
        {
          CMTimeMakeFromDictionary(&v41, v39);
        }

        *&v42[8] = v37;
        *&v42[24] = v8;
        v25 = *(v10 + 148);
        if (v25 > 0.0 && v25 != 1.0)
        {
          *&time2.value = v41;
          time2.epoch = *v42;
          v27 = 1.0 / v25;
          CMTimeMultiplyByFloat64(time1, &time2, v27);
          v41 = *time1;
          *v42 = *&time1[16];
          time2 = *&v42[8];
          CMTimeMultiplyByFloat64(time1, &time2, v27);
          *&v42[8] = *time1;
          *&v42[24] = *&time1[16];
        }

        *time1 = *&v42[8];
        *&time1[16] = *&v42[24];
        *&time2.value = v38;
        time2.epoch = v6;
        if (!CMTimeCompare(time1, &time2) || !OUTLINED_FUNCTION_23_23(v13, v28, v29, v30, v31, v32, v33, v34, 0, 0, 0, &cf) && (CMSetAttachment(cf, @"FlushRangeEnd", *MEMORY[0x1E695E4D0], 1u), !FigSampleBufferConsumerSendSampleBuffer(*(v10 + 64), cf)) && (v35 = *(v10 + 392), v36 = *(v10 + 400), *time1 = v41, *&time1[16] = *v42, v50 = *&v42[16], !FigBufferedAirPlayOutputProxyFlushWithinTimeRange(v35, v36, time1)))
        {
          OUTLINED_FUNCTION_56_8();
          fbaprp_restoreAudioChainToStartOutputTime(v3, 0, MEMORY[0x1E6960C70], time1);
        }
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_27:
    FigMediaProcessorGo(*(v10 + 56));
    goto LABEL_28;
  }

  v21 = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  OUTLINED_FUNCTION_191();
}