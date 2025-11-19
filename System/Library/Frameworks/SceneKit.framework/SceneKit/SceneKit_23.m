__CFDictionary *_C3DSkinCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = C3DEntityCopyPropertyList(a1, a2, a3);
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    valuePtr = C3DLibraryGetEntryID(a2, v6);
    v8 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(v5, @"baseMeshID", v8);
    CFRelease(v8);
  }

  v9 = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 80));
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  CFDictionarySetValue(v5, @"vertexCount", v9);
  CFRelease(v10);
  v11 = CFNumberCreate(0, kCFNumberShortType, (a1 + 64));
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = v11;
  CFDictionarySetValue(v5, @"jointsCount", v11);
  CFRelease(v12);
  v13 = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 72));
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  CFDictionarySetValue(v5, @"weightsCount", v13);
  CFRelease(v14);
  v15 = CFNumberCreate(0, kCFNumberShortType, (a1 + 200));
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v15;
  CFDictionarySetValue(v5, @"maxInfluences", v15);
  CFRelease(v16);
  v17 = C3DCreateSerializedDataFromC3DFloatBuffer(*(a1 + 96), 16 * *(a1 + 64));
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  CFDictionarySetValue(v5, @"inverseBindMatrices", v17);
  CFRelease(v18);
  v19 = C3DCreateSerializedDataFromC3DFloatBuffer(a1 + 112, 16);
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = v19;
  CFDictionarySetValue(v5, @"defaultShapeMatrix", v19);
  CFRelease(v20);
  v21 = 4 * v7;
  v22 = C3DMalloc(4 * v7 + 4);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = *(a1 + 176);
    v25 = v7 + 1;
    do
    {
      if (!v24)
      {
        goto LABEL_17;
      }

      if (*(v24 + 8 * v23) >= 0x80000000)
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          _C3DSkinCopyPropertyList_cold_1(&buf, v40, v26);
        }
      }

      v24 = *(a1 + 176);
      if (v24)
      {
        v27 = *(v24 + 8 * v23);
      }

      else
      {
LABEL_17:
        LODWORD(v27) = 0;
      }

      *&v22[4 * v23++] = v27;
    }

    while (v25 != v23);
    v28 = CFDataCreate(0, v22, v21 + 4);
    goto LABEL_21;
  }

  v28 = CFDataCreate(0, v22, v21 + 4);
  if (v22)
  {
LABEL_21:
    free(v22);
  }

  if (!v28 || (CFDictionarySetValue(v5, @"vertexWeightIndices", v28), CFRelease(v28), (v29 = CFDataCreate(0, *(a1 + 184), 2 * *(a1 + 72))) == 0) || (v30 = v29, CFDictionarySetValue(v5, @"jointsForVertexWeights", v29), CFRelease(v30), v31 = 4 * *(a1 + 72), v32 = C3DMalloc(v31), v33 = *(a1 + 192), v34 = *(a1 + 72), v35 = C3DSizeOfBaseType(1), v36 = C3DSizeOfBaseType(1), !C3DConvertToPlatformIndependentData(v33, v32, v31, v31, 1, 1, v34, v35, v36)))
  {
LABEL_26:
    v37 = v5;
    v5 = 0;
    goto LABEL_27;
  }

  v37 = CFDataCreateWithBytesNoCopy(0, v32, v31, 0);
  CFDictionarySetValue(v5, @"vertexWeights", v37);
LABEL_27:
  CFRelease(v37);
  return v5;
}

uint64_t _C3DSkinFinalizeDeserialization(void *a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"baseMeshID");
  if (Value)
  {
    valuePtr = 0;
    if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
    {
      return 0;
    }

    v17 = valuePtr;
    TypeID = C3DGeometryGetTypeID();
    RemappedID = C3DLibraryGetRemappedID(a2, v17, TypeID);
    if (!RemappedID)
    {
      v38 = scn_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_2();
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      if (!*a4)
      {
        *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
      }

      return 0;
    }

    v20 = RemappedID;
    v21 = C3DGeometryGetTypeID();
    Entry = C3DLibraryGetEntry(a2, v21, v20);
    v23 = Entry;
    if (Entry)
    {
      Entry = CFRetain(Entry);
    }

    a1[11] = Entry;
    Mesh = C3DGeometryGetMesh(v23);
    PositionSource = C3DMeshGetPositionSource(Mesh, 1);
    Count = C3DMeshSourceGetCount(PositionSource);
    a1[10] = Count;
  }

  else
  {
    v27 = CFDictionaryGetValue(theDict, @"vertexCount");
    if (!CFNumberGetValue(v27, kCFNumberLongType, a1 + 10))
    {
      return 0;
    }

    Count = a1[10];
  }

  v28 = CFDictionaryGetValue(theDict, @"weightsCount");
  if (!v28 || !CFNumberGetValue(v28, kCFNumberCFIndexType, a1 + 9))
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinFinalizeDeserialization_cold_6();
    }

    goto LABEL_21;
  }

  a1[22] = C3DMalloc(8 * Count + 8);
  a1[23] = C3DMalloc(2 * a1[9]);
  a1[24] = C3DMalloc(4 * a1[9]);
  v29 = CFDictionaryGetValue(theDict, @"vertexWeightIndices");
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = C3DMalloc(4 * Count + 4);
  v54.length = 4 * Count + 4;
  v54.location = 0;
  CFDataGetBytes(v30, v54, v31);
  if (Count < 0)
  {
    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v32 = a1[22];
    v33 = Count + 1;
    v34 = v31;
    do
    {
      v35 = *v34;
      v34 += 4;
      *v32++ = v35;
      --v33;
    }

    while (v33);
  }

  free(v31);
LABEL_32:
  v40 = CFDictionaryGetValue(theDict, @"jointsForVertexWeights");
  if (v40)
  {
    v55.length = 2 * a1[9];
    v55.location = 0;
    CFDataGetBytes(v40, v55, a1[23]);
    v41 = CFDictionaryGetValue(theDict, @"vertexWeights");
    if (v41)
    {
      v42 = v41;
      BytePtr = CFDataGetBytePtr(v41);
      v44 = a1[24];
      Length = CFDataGetLength(v42);
      v46 = CFDataGetLength(v42);
      v47 = a1[9];
      v37 = 1;
      v48 = C3DSizeOfBaseType(1);
      v49 = C3DSizeOfBaseType(1);
      if (C3DConvertFromPlatformIndependentData(BytePtr, v44, Length, v46, 1u, 1, v47, v48, v49))
      {
        return v37;
      }

      v50 = scn_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_3();
      }
    }

    else
    {
      v52 = scn_default_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_4();
      }
    }
  }

  else
  {
    v51 = scn_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinFinalizeDeserialization_cold_5();
    }
  }

LABEL_21:
  if (!a4 || *a4)
  {
    return 0;
  }

  v37 = 0;
  *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
  return v37;
}

void *_C3DSkinFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    C3DLibraryAddEntry(a2, v14);
    C3DFillLibraryForSerialization(*(a1 + 88), a2, a3);
  }

  result = *(a1 + 208);
  if (result)
  {
    return C3DFillLibraryForSerialization(result, a2, a3);
  }

  return result;
}

__CFArray *_C3DSkinCopyInstanceVariables(void *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF150];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 14;
  v57 = a1 + 8;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v4, @"name", @"jointsCount");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v3);
  v58 = 0;
  valuePtr = 2;
  v57 = a1 + 9;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v8, @"name", @"weightsCount");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 2;
  v57 = a1 + 10;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v12, @"name", @"vertexCount");
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  if (a1[12])
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v58 = 0;
    valuePtr = 11;
    v57 = a1[12];
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v57);
    CFDictionarySetValue(v16, @"name", @"inverseBindMatrices");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
  }

  v20 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 11;
  v57 = a1 + 14;
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v23 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v20, @"name", @"defaultShapeMatrix");
  CFDictionarySetValue(v20, @"type", v21);
  CFDictionarySetValue(v20, @"address", v23);
  CFDictionarySetValue(v20, @"semantic", v22);
  CFArrayAppendValue(Mutable, v20);
  CFRelease(v22);
  CFRelease(v20);
  CFRelease(v23);
  CFRelease(v21);
  v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 14;
  v57 = a1 + 25;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v27 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v24, @"name", @"maxInfluencesPerVertex");
  CFDictionarySetValue(v24, @"type", v25);
  CFDictionarySetValue(v24, @"address", v27);
  CFDictionarySetValue(v24, @"semantic", v26);
  CFArrayAppendValue(Mutable, v24);
  CFRelease(v26);
  CFRelease(v24);
  CFRelease(v27);
  CFRelease(v25);
  v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 2;
  valuePtr = 5;
  v57 = a1 + 26;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v28, @"name", @"influencingMorpher");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  theArray = Mutable;
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = a1;
  if (a1[22])
  {
    v33 = a1[10];
    if (v33 >= 1)
    {
      v34 = 0;
      for (i = 0; i != v33; ++i)
      {
        v36 = CFStringCreateWithFormat(0, 0, @"vertexWeightIndices[%d]", i);
        v37 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v58 = 0;
        valuePtr = 2;
        v57 = (v32[22] + v34);
        v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
        v40 = CFNumberCreate(0, kCFNumberLongType, &v57);
        CFDictionarySetValue(v37, @"name", v36);
        CFDictionarySetValue(v37, @"type", v38);
        CFDictionarySetValue(v37, @"address", v40);
        CFDictionarySetValue(v37, @"semantic", v39);
        CFArrayAppendValue(theArray, v37);
        CFRelease(v39);
        CFRelease(v37);
        CFRelease(v40);
        CFRelease(v38);
        CFRelease(v36);
        v34 += 8;
      }
    }
  }

  if (v32[24] && v32[23] && v32[9] >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v55 = v32[9];
    do
    {
      v44 = CFStringCreateWithFormat(0, 0, @"vertexWeights[%d]", v43);
      v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v58 = 0;
      valuePtr = 1;
      v57 = (v32[24] + v41);
      v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
      v48 = CFNumberCreate(0, kCFNumberLongType, &v57);
      CFDictionarySetValue(v45, @"name", v44);
      CFDictionarySetValue(v45, @"type", v46);
      CFDictionarySetValue(v45, @"address", v48);
      CFDictionarySetValue(v45, @"semantic", v47);
      CFArrayAppendValue(theArray, v45);
      CFRelease(v47);
      CFRelease(v45);
      CFRelease(v48);
      CFRelease(v46);
      CFRelease(v44);
      v49 = CFStringCreateWithFormat(0, 0, @"jointsForVertexWeights[%d]", v43);
      v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v58 = 0;
      valuePtr = 14;
      v57 = (v32[23] + v42);
      v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v52 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
      v53 = CFNumberCreate(0, kCFNumberLongType, &v57);
      CFDictionarySetValue(v50, @"name", v49);
      CFDictionarySetValue(v50, @"type", v51);
      CFDictionarySetValue(v50, @"address", v53);
      CFDictionarySetValue(v50, @"semantic", v52);
      CFArrayAppendValue(theArray, v50);
      CFRelease(v52);
      CFRelease(v50);
      CFRelease(v53);
      CFRelease(v51);
      CFRelease(v49);
      ++v43;
      v42 += 2;
      v41 += 4;
    }

    while (v55 != v43);
  }

  return theArray;
}

uint64_t _C3DSkinSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 208);

  return C3DSearchByID(v6, a2);
}

const void *C3DIOCreateUnzippedData(uint64_t a1)
{
  v1 = [[C3DIONSZipFileArchive alloc] initWithData:a1 options:0 error:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [(C3DIONSZipFileArchive *)v1 entryNames];
  if ([v3 count])
  {
    v4 = -[C3DIONSZipFileArchive contentsForEntryName:](v2, "contentsForEntryName:", [v3 objectAtIndex:0]);
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

const void *C3DIOCreateZippedData(uint64_t a1)
{
  v2 = [C3DIONSZipFileArchive alloc];
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:@"contents"];
  v4 = -[C3DIONSZipFileArchive initWithEntryNames:contents:properties:options:](v2, "initWithEntryNames:contents:properties:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObject:a1 forKey:@"contents"], 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(C3DIONSZipFileArchive *)v4 archiveData];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  return v7;
}

uint64_t _openFile(void *a1)
{
  memset(&v6, 0, sizeof(v6));
  v1 = [a1 fileSystemRepresentation];
  if (!stat(v1, &v6) && (v6.st_mode & 0xF000) == 0x8000 && v6.st_size >= 1)
  {
    v3 = open(v1, 0, 511);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      if (!fstat(v3, &v6) && (v6.st_mode & 0xF000) == 0x8000 && v6.st_size >= 1)
      {
        return v4;
      }

      close(v4);
    }
  }

  return -1;
}

C3D::RenderPass *C3D::HDRFrameLuminancePass::HDRFrameLuminancePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC6468;
  *(result + 30) = a4;
  return result;
}

uint64_t C3D::HDRFrameLuminancePass::setup(C3D::HDRFrameLuminancePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "FrameLuminance";
  *(result + 65) = 0;
  *(result + 28) = 25;
  *(result + 16) = 16777472;
  *(result + 30) = 9;
  return result;
}

uint64_t C3D::HDRFrameLuminancePass::compile(C3D::HDRFrameLuminancePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 31) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::HDRFrameLuminancePass::execute(C3D::Pass *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 31) + 16) :"state" detail:0x3F8000003F800000 :0NSRetainFct];
  if (*(v3 + 3376) != v4)
  {
    *(v3 + 3376) = v4;
    [*(v3 + 3392) setRenderPipelineState:v4];
  }

  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v5, 0);
  SCNMTLRenderCommandEncoder::setFragmentBuffer(v3, *(*(a1 + 30) + 40), *(*(a1 + 30) + 48), 0);
  SCNMTLRenderCommandEncoder::setVertexBytes(v3, &v7, 0x10uLL, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3);
}

void C3D::HDRFrameLuminancePassResource::~HDRFrameLuminancePassResource(C3D::HDRFrameLuminancePassResource *this)
{
  *this = &unk_282DC64D8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC64D8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

BOOL _C3DSourceAccessorInitWithPropertyList(_WORD *a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  if (!a2)
  {
    return 0;
  }

  if ((C3DCFTypeIsDictionary() & 1) == 0)
  {
    v17 = scn_default_log();
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSourceAccessorInitWithPropertyList_cold_1(v17);
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"componentsType");
  if (Value && (valuePtr = 0, v8 = CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr), a1[12] = valuePtr, (v8 & 1) != 0))
  {
    v9 = CFDictionaryGetValue(a2, @"valuesCount");
    if (v9 && (CFNumberGetValue(v9, kCFNumberCFIndexType, a1 + 16) & 1) != 0)
    {
      v10 = CFDictionaryGetValue(a2, @"componentsPerValue");
      if (v10 && (valuePtr = 0, v11 = CFNumberGetValue(v10, kCFNumberCFIndexType, &valuePtr), a1[13] = valuePtr, (v11 & 1) != 0))
      {
        v12 = CFDictionaryGetValue(a2, @"stride");
        if (v12 && (CFNumberGetValue(v12, kCFNumberCFIndexType, a1 + 20) & 1) != 0)
        {
          v13 = CFDictionaryGetValue(a2, @"offset");
          if (v13 && (CFNumberGetValue(v13, kCFNumberCFIndexType, a1 + 24) & 1) != 0)
          {
            v14 = CFDictionaryGetValue(a2, @"padding");
            if (v14)
            {
              if ((CFNumberGetValue(v14, kCFNumberCFIndexType, a1 + 28) & 1) == 0)
              {
                v15 = scn_default_log();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  _C3DSourceAccessorInitWithPropertyList_cold_2();
                  if (!a4)
                  {
                    return 0;
                  }

                  goto LABEL_35;
                }

                goto LABEL_34;
              }
            }

            else
            {
              *(a1 + 7) = 0;
            }

            return 1;
          }

          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorInitWithPropertyList_cold_3();
            if (!a4)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v21 = scn_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorInitWithPropertyList_cold_3();
            if (!a4)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = scn_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _C3DSourceAccessorInitWithPropertyList_cold_3();
          if (!a4)
          {
            return 0;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _C3DSourceAccessorInitWithPropertyList_cold_6();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }
  }

  else
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorInitWithPropertyList_cold_7();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  if (!a4)
  {
    return 0;
  }

LABEL_35:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

__CFDictionary *_C3DSourceAccessorCopyPropertyList(uint64_t a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  LODWORD(valuePtr) = *(a1 + 24);
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v6)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_4();
    }

    goto LABEL_22;
  }

  v7 = v6;
  CFDictionaryAddValue(Mutable, @"componentsType", v6);
  CFRelease(v7);
  if (*(a1 + 32) >= 0x80000000)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_3();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 32);
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  CFDictionaryAddValue(Mutable, @"valuesCount", v10);
  CFRelease(v11);
  LODWORD(valuePtr) = *(a1 + 26);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  CFDictionaryAddValue(Mutable, @"componentsPerValue", v12);
  CFRelease(v13);
  LODWORD(valuePtr) = *(a1 + 40);
  v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  CFDictionaryAddValue(Mutable, @"stride", v14);
  CFRelease(v15);
  if (*(a1 + 48) >> 31)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_2();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 48);
  v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  CFDictionaryAddValue(Mutable, @"offset", v17);
  CFRelease(v18);
  if (*(a1 + 56) >> 31)
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_1();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 56);
  v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v20)
  {
LABEL_22:
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_5();
    }

    CFRelease(Mutable);
    return 0;
  }

  v21 = v20;
  CFDictionaryAddValue(Mutable, @"padding", v20);
  CFRelease(v21);
  if (a2)
  {
    valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 16));
    v22 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(Mutable, @"sourceID", v22);
    CFRelease(v22);
  }

  v23 = CFGetTypeID(*(a1 + 16));
  StringForType = C3DLibraryGetStringForType(v23);
  CFDictionaryAddValue(Mutable, @"sourceTypeID", StringForType);
  return Mutable;
}

uint64_t _C3DSourceAccessorFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (theDict)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(theDict, @"sourceID");
    if (Value && CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
    {
      v9 = CFDictionaryGetValue(theDict, @"sourceTypeID");
      if (v9 && (TypeForString = C3DLibraryGetTypeForString(v9)) != 0)
      {
        v11 = TypeForString;
        RemappedID = C3DLibraryGetRemappedID(a2, valuePtr, TypeForString);
        if (RemappedID)
        {
          v13 = RemappedID;
          Entry = C3DLibraryGetEntry(a2, v11, RemappedID);
          if (Entry)
          {
            C3DSourceAccessorSetSource(a1, Entry);
            return 1;
          }

          v21 = scn_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorFinalizeDeserialization_cold_1(v13, v21);
          }
        }

        else
        {
          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorFinalizeDeserialization_cold_2(v20);
          }
        }
      }

      else
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          _C3DSourceAccessorFinalizeDeserialization_cold_3();
        }
      }
    }

    else
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _C3DSourceAccessorFinalizeDeserialization_cold_4();
      }
    }
  }

  else
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorFinalizeDeserialization_cold_5();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  if (!a4)
  {
    return 0;
  }

LABEL_17:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void C3DSourceAccessorSetSource(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = a2;
  if (a2)
  {
    OwnData = C3DGenericSourceGetOwnData(a2);
    if (OwnData)
    {
      Length = CFDataGetLength(OwnData);
      if (Length || *(a1 + 32) && (C3DGenericSourceIsMutable(a2) & 1) == 0)
      {
        if (*(a1 + 48) >= Length)
        {
          v12 = scn_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 48);
            v14 = *(a1 + 32);
            v18 = 134218496;
            v19 = Length;
            v20 = 2048;
            v21 = v13;
            v22 = 1024;
            v23 = v14;
            _os_log_error_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_ERROR, "Error: C3DSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu) ; count capped to 0 (was %d)", &v18, 0x1Cu);
          }

          *(a1 + 32) = 0;
        }

        else
        {
          v6 = C3DSizeOfBaseType(*(a1 + 24));
          v7 = *(a1 + 40);
          v8 = Length - *(a1 + 48);
          v9 = v8 / v7;
          if (v8 % v7 < v6 * *(a1 + 26))
          {
            v10 = v9;
          }

          else
          {
            v10 = (v9 + 1);
          }

          if (*(a1 + 32) > v10)
          {
            v11 = scn_default_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v15 = *(a1 + 32);
              v17 = *(a1 + 40);
              v16 = *(a1 + 48);
              v18 = 134219264;
              v19 = Length;
              v20 = 2048;
              v21 = v16;
              v22 = 1024;
              v23 = v15;
              v24 = 2048;
              v25 = v17;
              v26 = 1024;
              v27 = v10;
              v28 = 1024;
              v29 = v15;
              _os_log_error_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_ERROR, "Error: C3DSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu, count %d and stride %zu) ; count capped to %d (was %d)", &v18, 0x32u);
            }

            *(a1 + 32) = v10;
          }
        }
      }
    }
  }
}

double __C3DSourceAccessorGetTypeID_block_invoke()
{
  C3DSourceAccessorGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DSourceAccessorContextClassSerializable;
  unk_281740290 = kC3DC3DSourceAccessorContextClassSerializable;
  unk_2817402A0 = *&off_282DC6518;
  qword_281740248 = _C3DSourceAccessorCopyInstanceVariables;
  return result;
}

uint64_t _C3DSourceAccessorCreate()
{
  if (C3DSourceAccessorGetTypeID_onceToken != -1)
  {
    _C3DSourceAccessorCreate_cold_1();
  }

  v1 = C3DSourceAccessorGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 48);
}

uint64_t C3DSourceAccessorCreate(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _C3DSourceAccessorCreate();
  *(v10 + 24) = a1;
  *(v10 + 26) = a2;
  if (!a4)
  {
    a4 = C3DSizeOfBaseType(a1) * a2;
  }

  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = 0;
  return v10;
}

void *C3DSourceAccessorGetData(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    return C3DGenericSourceGetOwnData(result);
  }

  return result;
}

const UInt8 *C3DSourceAccessorGetValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetValuePtrAtIndex_cold_1();
    }
  }

  else
  {
    Data = C3DSourceAccessorGetData(a1);
    if (Data)
    {
      return &CFDataGetBytePtr(Data)[a1[5] * a2 + a1[6]];
    }

    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetValuePtrAtIndex_cold_2();
    }
  }

  return 0;
}

__CFData *C3DSourceAccessorGetMutableValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetMutableValuePtrAtIndex_cold_1();
    }

    return 0;
  }

  else
  {
    result = C3DSourceAccessorGetData(a1);
    if (result)
    {
      return &CFDataGetMutableBytePtr(result)[a1[5] * a2 + a1[6]];
    }
  }

  return result;
}

uint64_t C3DSourceAccessorGetVolatileValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetVolatileValuePtrAtIndex_cold_1();
    }

    return 0;
  }

  v2 = a1[2];
  if ((*(v2 + 88) & 4) == 0)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetVolatileValuePtrAtIndex_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v13 = *(v2 + 72);
  if (!v13)
  {
    return 0;
  }

  return v13 + a1[5] * a2;
}

uint64_t C3DSourceAccessorCreateCopy(uint64_t a1)
{
  v2 = C3DSourceAccessorCreate(*(a1 + 24), *(a1 + 26), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  C3DSourceAccessorSetSource(v2, *(a1 + 16));
  return v2;
}

BOOL C3DSourceAccessorIsInterleaved(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 26);
  return v1 != *(a1 + 56) + C3DSizeOfBaseType(*(a1 + 24)) * v2;
}

BOOL C3DSourceAccessorCopyDataToAccessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 26);
  v6 = *(a2 + 26);
  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a2 + 40) * *(a1 + 32);
  if (!v7)
  {
    return 0;
  }

  Data = C3DSourceAccessorGetData(a2);
  if (v7 > CFDataGetLength(Data) - *(a2 + 40) * a3)
  {
    v10 = scn_default_log();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DSourceAccessorCopyDataToAccessor_cold_2();
    return 0;
  }

  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(a2, a3);
  if (!MutableValuePtrAtIndex)
  {
    v25 = scn_default_log();
    result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DSourceAccessorCopyDataToAccessor_cold_1();
    return 0;
  }

  v13 = MutableValuePtrAtIndex;
  v14 = *(a1 + 40);
  v15 = *(a1 + 26);
  if (v14 == *(a1 + 56) + C3DSizeOfBaseType(*(a1 + 24)) * v15)
  {
    v16 = *(a2 + 40);
    v17 = *(a2 + 26);
    v18 = C3DSizeOfBaseType(*(a2 + 24));
    if (v6 <= v5 && v16 == *(a2 + 56) + v18 * v17)
    {
      ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(a1, 0);
      memcpy(v13, ValuePtrAtIndex, v7);
      return 1;
    }
  }

  v20 = C3DSourceAccessorGetValuePtrAtIndex(a1, 0);
  v21 = *(a1 + 26);
  v22 = C3DSizeOfBaseType(*(a1 + 24));
  if (*(a1 + 32) < 1)
  {
    return 1;
  }

  v23 = 0;
  v24 = v22 * v21;
  do
  {
    memcpy(v13, v20, v24);
    v20 += *(a1 + 40);
    v13 = (v13 + *(a2 + 40));
    ++v23;
    result = 1;
  }

  while (v23 < *(a1 + 32));
  return result;
}

uint64_t C3DSourceAccessorGetOffset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

void C3DSourceAccessorSetOffset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 48) = a2;
}

void C3DSourceAccessorSetStride(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 40) = a2;
}

uint64_t C3DSourceAccessorGetLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32) * *(a1 + 40);
}

uint64_t C3DSourceAccessorGetPlatformIndependentValueLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DSizeOfBaseType(*(a1 + 24)) * *(a1 + 26);
}

uint64_t C3DSourceAccessorGetPlatformValueLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 26);
  return C3DSizeOfBaseType(*(a1 + 24)) * v10;
}

CFIndex C3DSourceAccessorsConvertToCurrentPlatform(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      ValueAtIndex[6] = v2;
      v2 += C3DSourceAccessorGetPlatformValueLength(ValueAtIndex);
      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      *(CFArrayGetValueAtIndex(a1, i) + 5) = v2;
      result = CFArrayGetCount(a1);
    }
  }

  return result;
}

__CFArray *_C3DSourceAccessorCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 5;
  v43 = *(a1 + 16) + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"accessor");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 2;
  valuePtr = 5;
  v43 = *(a1 + 16) + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"data");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 24;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 26;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"componentsCountPerValue");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 32;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"count");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  v27 = Mutable;
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v28 = MEMORY[0x277CBF138];
  v29 = MEMORY[0x277CBF150];
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 40;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v30, @"name", @"stride");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(v27, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 48;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v34, @"name", @"offset");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v27, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 56;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v38, @"name", @"padding");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v27, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  return v27;
}

id _C3DGenericSourceCFFinalize(uint64_t a1)
{
  if (*(a1 + 80) || (*(a1 + 88) & 4) == 0)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 72) = 0;
    }
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1);
}

BOOL _C3DGenericSourceInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  if (C3DEntityInitWithPropertyList(a1, a2))
  {
    if (!a2)
    {
      return 1;
    }

    Value = CFDictionaryGetValue(a2, @"accessor");
    if (!Value)
    {
      v32 = 0;
      valuePtr = 0;
      v13 = CFDictionaryGetValue(a2, @"componentsType");
      if (v13)
      {
        Type = CFNumberGetType(v13);
        v15 = Type;
        if (Type != kCFNumberFloat32Type && Type != kCFNumberFloatType)
        {
          v17 = scn_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            _C3DGenericSourceInitWithPropertyList_cold_3(v17, v18, v19, v20, v21, v22, v23, v24);
          }
        }

        v25 = CFDictionaryGetValue(a2, @"valuesCount");
        if (v25 && (CFNumberGetValue(v25, kCFNumberCFIndexType, &valuePtr) & 1) != 0)
        {
          v29 = CFDictionaryGetValue(a2, @"componentsPerValue");
          if (v29 && (CFNumberGetValue(v29, kCFNumberCFIndexType, &v32) & 1) != 0)
          {
            v10 = C3DSourceAccessorCreate(1, v32, valuePtr, 4 * v32, 0);
            C3DSourceAccessorSetSource(v10, a1);
            v31 = CFDictionaryGetValue(a2, @"data");
            *(a1 + 72) = C3DCopyLittleEndianToHostRepresentationOfData(v31, v15, v32 * valuePtr);
            goto LABEL_6;
          }

          v30 = scn_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            _C3DGenericSourceInitWithPropertyList_cold_4();
          }
        }

        else
        {
          v26 = scn_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            _C3DGenericSourceInitWithPropertyList_cold_5();
          }
        }
      }

      else
      {
        v28 = scn_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          _C3DGenericSourceInitWithPropertyList_cold_6();
        }
      }

      return 0;
    }

    v9 = Value;
    v10 = _C3DSourceAccessorCreate();
    if (C3DInitWithPropertyList(v10, v9, a3, a4))
    {
      C3DSourceAccessorSetSource(v10, a1);
LABEL_6:
      C3DAnimationSetKeyPath(a1, v10);
      CFRelease(v10);
      return 1;
    }

    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _C3DGenericSourceInitWithPropertyList_cold_2();
      if (a4)
      {
LABEL_23:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    else if (a4)
    {
      goto LABEL_23;
    }

    CFRelease(v10);
    return 0;
  }

  v12 = scn_default_log();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  _C3DGenericSourceInitWithPropertyList_cold_1(v12);
  return 0;
}

__CFDictionary *_C3DGenericSourceCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v8)
  {
    v9 = C3DCopyPropertyList(*(a1 + 64), a2, a3, a4);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v8, @"accessor", v9);
      CFRelease(v10);
    }

    else
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _C3DGenericSourceCopyPropertyList_cold_1();
      }

      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

uint64_t _C3DGenericSourceFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  Value = CFDictionaryGetValue(theDict, @"accessor");
  if (!Value)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _C3DGenericSourceFinalizeDeserialization_cold_1();
      if (a4)
      {
LABEL_7:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    else if (a4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v8 = Value;
  v9 = *(a1 + 64);

  return C3DFinalizeDeserialization(v9, a2, v8, a4);
}

uint64_t C3DGenericSourceGetTypeID()
{
  if (C3DGenericSourceGetTypeID_onceToken != -1)
  {
    C3DGenericSourceGetTypeID_cold_1();
  }

  return C3DGenericSourceGetTypeID_typeID;
}

double __C3DGenericSourceGetTypeID_block_invoke()
{
  C3DGenericSourceGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_2817414B0 = kC3DC3DGenericSourceContextClassSerializable;
  unk_2817414C0 = *&off_282DC6558;
  qword_2817414A8 = _C3DGenericSourceSearchByID;
  result = *&kC3DC3DGenericSourceContextClassAnimatable;
  xmmword_281741458 = kC3DC3DGenericSourceContextClassAnimatable;
  return result;
}

uint64_t C3DGenericSourceCreateEmpty()
{
  if (C3DGenericSourceGetTypeID_onceToken != -1)
  {
    C3DGenericSourceGetTypeID_cold_1();
  }

  v1 = C3DGenericSourceGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 80);
}

uint64_t C3DGenericSourceCreate(const void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Empty = C3DGenericSourceCreateEmpty();
  if (!Empty)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  C3DGenericSourceInit(Empty, a1);
  return Empty;
}

CFTypeRef C3DGenericSourceInit(uint64_t a1, CFTypeRef cf)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationCopy_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(a1 + 64) = cf;
  return CFRetain(cf);
}

uint64_t C3DGenericSourceCreateMutable(const void *a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGenericSourceCreate(a1);
  *(v12 + 88) |= 1u;
  if (a2)
  {
    Length = C3DSourceAccessorGetLength(a1);
    Mutable = CFDataCreateMutable(0, Length);
    v15 = C3DSourceAccessorGetLength(a1);
    CFDataSetLength(Mutable, v15);
    C3DGenericSourceSetData(v12, Mutable);
    CFRelease(Mutable);
  }

  return v12;
}

CFTypeRef C3DGenericSourceSetData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 88) & 4) != 0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetData_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 80))
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetData_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void C3DGenericSourceSetMTLBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

void C3DGenericSourceInitDeepCopy(uint64_t a1, uint64_t a2)
{
  if (C3DSourceAccessorIsInterleaved(*(a1 + 64)))
  {
    Content = C3DGenericSourceGetContent(a1);
    v6 = v5;
    v7 = v5;
    v8 = C3DSourceAccessorCreate(BYTE6(v5), HIBYTE(v5), v5, 0, 0);
    C3DAnimationSetKeyPath(a2, v8);
    C3DSourceAccessorSetSource(v8, a2);
    CFRelease(v8);
    if (!Content)
    {
      return;
    }

    PlatformIndependentValueLength = C3DSourceAccessorGetPlatformIndependentValueLength(*(a1 + 64));
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], PlatformIndependentValueLength * v6);
    CFDataSetLength(Mutable, PlatformIndependentValueLength * v6);
    BytePtr = CFDataGetBytePtr(Mutable);
    if (v6)
    {
      v12 = BytePtr;
      v13 = 0;
      do
      {
        memcpy(v12, &Content[v13], PlatformIndependentValueLength);
        v13 += BYTE5(v6);
        v12 += PlatformIndependentValueLength;
        --v7;
      }

      while (v7);
    }

    C3DGenericSourceSetData(a2, Mutable);
    v14 = Mutable;
LABEL_14:

    CFRelease(v14);
    return;
  }

  Copy = C3DSourceAccessorCreateCopy(*(a1 + 64));
  C3DAnimationSetKeyPath(a2, Copy);
  C3DSourceAccessorSetSource(Copy, a2);
  CFRelease(Copy);
  if (!*(a1 + 80))
  {
    v20 = *(a1 + 72);
    if (!v20)
    {
      return;
    }

    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v20);
    C3DGenericSourceSetData(a2, MutableCopy);
    v14 = MutableCopy;
    goto LABEL_14;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Cannot duplicate a Metal Buffer source. Create an empty data instead.", buf, 2u);
  }

  capacity = 0;
  v17 = C3DPtrFromMTLBuffer(*(a1 + 72), &capacity);
  v18 = CFDataCreateMutable(*MEMORY[0x277CBECE8], capacity);
  CFDataSetLength(v18, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(v18);
  memcpy(MutableBytePtr, v17, capacity);
  C3DGenericSourceSetData(a2, v18);
  CFRelease(v18);
}

const UInt8 *C3DGenericSourceGetContent(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (C3DSourceAccessorGetData(v1))
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v1, 0);
  }

  else
  {
    ValuePtrAtIndex = 0;
  }

  C3DSourceAccessorGetCount(v1);
  C3DSceneSourceGetLibrary(v1);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v1);
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v1);
  if (ComponentsValueType != C3DBaseTypeGetComponentType(ComponentsValueType))
  {
    C3DBaseTypeGetComponentCount(ComponentsValueType);
  }

  C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
  return ValuePtrAtIndex;
}

uint64_t C3DGenericSourceCreateDeepCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Empty = C3DGenericSourceCreateEmpty();
  C3DGenericSourceInitDeepCopy(a1, Empty);
  return Empty;
}

void *C3DGenericSourceGetOwnData(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 72);
  if (*(a1 + 80))
  {
    return C3DDataFromMTLBuffer(result);
  }

  return result;
}

void *C3DGenericSourceGetData(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = a1[9];
  if (a1[10])
  {
    return C3DDataFromMTLBuffer(result);
  }

  if (!result)
  {
    result = a1[8];
    if (result)
    {
      return C3DSourceAccessorGetData(result);
    }
  }

  return result;
}

uint64_t C3DGenericSourceGetMTLBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 80))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

void C3DGenericSourceSetVolatileData(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 88) & 4) == 0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetVolatileData_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (*(a1 + 80))
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetVolatileData_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  *(a1 + 72) = a2;
}

uint64_t C3DGenericSourceGetAccessor(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

BOOL C3DGenericSourcesHaveSharedData(uint64_t a1, uint64_t a2)
{
  Accessor = C3DGenericSourceGetAccessor(a1);
  v4 = C3DGenericSourceGetAccessor(a2);
  URL = C3DSceneSourceGetURL(Accessor);
  return URL == C3DSceneSourceGetURL(v4);
}

BOOL C3DGenericSourceIsPrimary(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  Accessor = C3DGenericSourceGetAccessor(a1);
  return C3DSourceAccessorGetData(Accessor) == *(a1 + 72);
}

CFDataRef C3DGenericSourceCreateSerializedDataWithAccessors(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  OwnData = C3DGenericSourceGetOwnData(a1);
  if (!OwnData)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  BytePtr = CFDataGetBytePtr(OwnData);
  if (CFArrayGetCount(a2) < 1)
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v24);
      v22 += C3DSourceAccessorGetPlatformIndependentLength(ValueAtIndex);
      v23 += C3DSourceAccessorGetPlatformIndependentValueLength(ValueAtIndex);
      C3DSceneSourceGetLibrary(ValueAtIndex);
      ++v24;
    }

    while (v24 < CFArrayGetCount(a2));
  }

  bytes = C3DMalloc(v22);
  if (CFArrayGetCount(a2) >= 1)
  {
    v26 = 0;
    v27 = 0;
    v37 = a2;
    do
    {
      v28 = CFArrayGetValueAtIndex(a2, v26);
      v29 = v28[6];
      v30 = OwnData;
      Length = CFDataGetLength(OwnData);
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v28);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v28);
      v34 = &BytePtr[v29];
      a2 = v37;
      v35 = Length;
      OwnData = v30;
      C3DConvertToPlatformIndependentData(v34, &bytes[v27], v35, v22, ComponentsValueType, ComponentsCountPerValue, v28[4], v28[5], v23);
      v27 += C3DSourceAccessorGetPlatformIndependentValueLength(v28);
      ++v26;
    }

    while (v26 < CFArrayGetCount(v37));
  }

  return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, v22, *MEMORY[0x277CBECE8]);
}

__CFData *C3DGenericSourceCreateDeserializedDataWithAccessors(uint64_t a1, CFDataRef theData, const __CFArray *a3)
{
  *&v28[5] = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(theData);
  if (CFArrayGetCount(a3) < 1)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
      v5 += C3DSourceAccessorGetPlatformLength(ValueAtIndex);
      v6 += C3DSourceAccessorGetPlatformValueLength(ValueAtIndex);
      v7 += C3DSourceAccessorGetPlatformIndependentValueLength(ValueAtIndex);
      C3DSceneSourceGetLibrary(ValueAtIndex);
      ++v8;
    }

    while (v8 < CFArrayGetCount(a3));
  }

  Mutable = CFDataCreateMutable(0, v5);
  CFDataSetLength(Mutable, v5);
  v21 = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  BytePtr = CFDataGetBytePtr(theData);
  if (CFArrayGetCount(a3) >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    theArray = a3;
    do
    {
      v14 = CFArrayGetValueAtIndex(a3, v13);
      if (C3DSceneSourceGetURL(v14) != a1)
      {
        v15 = scn_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          C3DGenericSourceCreateDeserializedDataWithAccessors_cold_1(buf, v28, v15);
        }
      }

      v16 = C3DSourceAccessorGetPlatformValueLength(v14) + v12;
      v17 = C3DSourceAccessorGetPlatformIndependentValueLength(v14) + v11;
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v14);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v14);
      C3DConvertFromPlatformIndependentData(&BytePtr[v11], &MutableBytePtr[v12], Length, v5, ComponentsValueType, ComponentsCountPerValue, v14[4], v7, v6);
      ++v13;
      a3 = theArray;
      v11 = v17;
      v12 = v16;
    }

    while (v13 < CFArrayGetCount(theArray));
  }

  return v21;
}

void C3DGenericSourceSetListener(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = *(a1 + 88) & 0xFD | (2 * (a2 != 0));
  if (a2)
  {
    Default = C3DValueCreateDefault(5);
    *C3DValueGetBytes(Default) = a2;
    C3DEntitySetAttribute(a1, @"listener", Default);
    if (Default)
    {
      CFRelease(Default);
    }
  }

  else
  {
    C3DEntitySetAttribute(a1, @"listener", 0);
  }
}

uint64_t C3DGenericSourceGetListener(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 88) & 2) == 0)
  {
    return 0;
  }

  result = C3DEntityGetAttribute(a1, @"listener");
  if (result)
  {
    result = C3DValueGetBytes(result);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t _C3DGenericSourceSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _C3DGenericSourceSetValue(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    memcpy(__s1, __s2, __n);
    result = C3DGenericSourceGetListener(a1);
    if (result)
    {

      return C3DGenericSourceDidChange(result, a1);
    }
  }

  return result;
}

void _C3DResourceCacheCFFinalize(void *a1)
{
  if (_sharedInstance == a1)
  {
    _sharedInstance = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"kC3DNotificationImageProxyWillDie", 0);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"kC3DNotificationImageWillDie", 0);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

uint64_t __C3DResourceCacheGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DResourceCacheGetTypeID_typeID = result;
  return result;
}

uint64_t C3DResourceCacheCreate()
{
  if (C3DResourceCacheGetTypeID_onceToken != -1)
  {
    C3DResourceCacheCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DResourceCacheGetTypeID_typeID, 32);
  if (!Instance)
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      C3DResourceCacheCreate_cold_2(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  *(Instance + 16) = 0;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  *(Instance + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(Instance + 32) = CFDictionaryCreateMutable(v9, 0, 0, v11);
  *(Instance + 40) = CFDictionaryCreateMutable(v9, 0, v10, v11);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, Instance, _C3DResourceCacheResourceWillDie, @"kC3DNotificationImageWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v13 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v13, Instance, _C3DResourceCacheResourceWillDie, @"kC3DNotificationImageProxyWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return Instance;
}

uint64_t C3DResourceCacheGetSharedInstance()
{
  if (C3DResourceCacheGetSharedInstance_onceToken != -1)
  {
    C3DResourceCacheGetSharedInstance_cold_1();
  }

  return _sharedInstance;
}

uint64_t __C3DResourceCacheGetSharedInstance_block_invoke()
{
  result = C3DResourceCacheCreate();
  _sharedInstance = result;
  return result;
}

double C3DResourceCacheGetFileTimestampForSourceAtPath(void *a1)
{
  v2 = SCNGetFileTimestampAtPath(a1);
  if (v2 != 0.0 || !SCNHasSpecialResourceBundle())
  {
    return v2;
  }

  v3 = [objc_msgSend(SCNGetResourceBundle() "bundlePath")];

  return SCNGetFileTimestampAtPath(v3);
}

uint64_t C3DResourceCacheCopyResourceOrCreateIfNeededForSource(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  os_unfair_lock_lock((a1 + 16));
  v45 = 0;
  v24 = _C3DResourceCacheStandardizeSource(a2, &v45);
  v44 = 0.0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(a1 + 24), v24);
  FileTimestampForSourceAtPath = 0.0;
  if (Value)
  {
    v27 = [Value copyWeakRef];
    if (v27)
    {
      v28 = v27;
      if (v45 == 1)
      {
        v29 = SCNHasSpecialResourceBundle();
        FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v24);
        v44 = FileTimestampForSourceAtPath;
        if (FileTimestampForSourceAtPath != 0.0)
        {
          v30 = CFDictionaryGetValue(*(a1 + 40), v24);
          if (v30)
          {
            CFNumberGetValue(v30, kCFNumberDoubleType, &valuePtr);
            v31 = valuePtr;
          }

          else
          {
            v31 = 0.0;
          }

          if (v31 == FileTimestampForSourceAtPath)
          {
            goto LABEL_26;
          }

LABEL_22:
          CFDictionaryRemoveValue(*(a1 + 40), v24);
          CFDictionaryRemoveValue(*(a1 + 24), v24);
          CFDictionaryRemoveValue(*(a1 + 32), v28);
          CFRelease(v28);
          v34 = 1;
          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_14;
        }

        if (v29)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      os_unfair_lock_unlock((a1 + 16));
      return v28;
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v32 = *(MEMORY[0x277CBF150] + 32);
    v33 = *(a1 + 32);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __C3DResourceCacheCopyResourceOrCreateIfNeededForSource_block_invoke;
    v38[3] = &unk_2782FFCE0;
    v38[5] = v32;
    v38[6] = v24;
    v38[4] = &v39;
    C3DCFDictionaryApplyBlock(v33, v38);
    CFDictionaryRemoveValue(*(a1 + 40), v24);
    CFDictionaryRemoveValue(*(a1 + 24), v24);
    CFDictionaryRemoveValue(*(a1 + 32), v40[3]);
    _Block_object_dispose(&v39, 8);
  }

  v34 = 0;
  if (!a4)
  {
LABEL_23:
    os_unfair_lock_unlock((a1 + 16));
    return 0;
  }

LABEL_14:
  if (a3)
  {
    v28 = (*(a4 + 16))(a4);
    v35 = objc_alloc_init(SCNWeakPointer);
    [(SCNWeakPointer *)v35 setWeakRef:v28];
    CFDictionarySetValue(*(a1 + 24), v24, v35);
    CFDictionarySetValue(*(a1 + 32), v28, v24);

    if (v45 == 1)
    {
      if ((v34 & 1) == 0)
      {
        FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v24);
        v44 = FileTimestampForSourceAtPath;
      }

      if (FileTimestampForSourceAtPath != 0.0)
      {
        v36 = CFNumberCreate(0, kCFNumberDoubleType, &v44);
        CFDictionarySetValue(*(a1 + 40), v24, v36);
        CFRelease(v36);
      }
    }

    goto LABEL_26;
  }

  os_unfair_lock_unlock((a1 + 16));
  return (*(a4 + 16))(a4);
}

void sub_21C0EE320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _C3DResourceCacheStandardizeSource(void *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFURLGetTypeID())
  {
    if (![a1 query])
    {
      *a2 = 1;
      if ([a1 isFileURL])
      {

        return [a1 relativePath];
      }

      else
      {

        return [a1 path];
      }
    }

LABEL_11:
    *a2 = 0;
    return a1;
  }

  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  *a2 = 1;

  return [a1 stringByStandardizingPath];
}

uint64_t __C3DResourceCacheCopyResourceOrCreateIfNeededForSource_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 40))(a3, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

const void *C3DResourceCacheGetResource(uint64_t a1, void *a2)
{
  IfNeededForSource = C3DResourceCacheCopyResourceOrCreateIfNeededForSource(a1, a2, 0, 0);
  v3 = IfNeededForSource;
  if (IfNeededForSource)
  {
    CFAutorelease(IfNeededForSource);
  }

  return v3;
}

uint64_t C3DResourceCacheCopySourceForResource(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopySourceForResource_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  os_unfair_lock_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v25 = Value;
    CFRetain(Value);
  }

  else
  {
    if (!a4)
    {
      os_unfair_lock_unlock((a1 + 16));
      return 0;
    }

    if (!a3)
    {
      os_unfair_lock_unlock((a1 + 16));
      return (*(a4 + 16))(a4);
    }

    v31 = 0;
    v27 = (*(a4 + 16))(a4);
    v25 = _C3DResourceCacheStandardizeSource(v27, &v31);
    v28 = objc_alloc_init(SCNWeakPointer);
    [(SCNWeakPointer *)v28 setWeakRef:a2];
    CFDictionarySetValue(*(a1 + 24), v25, v28);
    CFDictionarySetValue(*(a1 + 32), a2, v25);

    if (v31 == 1)
    {
      FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v25);
      if (FileTimestampForSourceAtPath != 0.0)
      {
        v29 = CFNumberCreate(0, kCFNumberDoubleType, &FileTimestampForSourceAtPath);
        CFDictionarySetValue(*(a1 + 40), v25, v29);
        CFRelease(v29);
      }
    }

    CFRetain(v25);
    CFRelease(v27);
  }

  os_unfair_lock_unlock((a1 + 16));
  return v25;
}

void C3DResourceCacheRemoveResource(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopySourceForResource_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  os_unfair_lock_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v21 = Value;
    CFDictionaryRemoveValue(*(a1 + 40), Value);
    CFDictionaryRemoveValue(*(a1 + 24), v21);
    CFDictionaryRemoveValue(*(a1 + 32), a2);
  }

  os_unfair_lock_unlock((a1 + 16));
}

C3D::DrawNodesPass *C3D::DrawNodesPass::DrawNodesPass(C3D::DrawNodesPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  v6 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v6 = &unk_282DC65C8;
  *(v6 + 15) = *&a4->var0;
  v7 = *&a4[1].var6;
  v8 = *&a4[3].var2;
  v9 = *&a4[4].var8;
  *(v6 + 38) = *&a4[6].var4;
  *(v6 + 17) = v8;
  *(v6 + 18) = v9;
  *(v6 + 16) = v7;
  bzero(v6 + 320, 0x13B0uLL);
  return this;
}

const char *C3D::DrawNodesPass::name(C3D::DrawNodesPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 669, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawNodesPass";
  }
}

const char *C3D::DrawNodesPass::programHashCodeStoreName(C3D::DrawNodesPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 669, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawNodeDefault";
  }
}

unint64_t C3D::DrawNodesPass::programHashCodeStoreKey(C3D::DrawNodesPass *this)
{
  v2 = (*(*this + 72))(this);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v4 = *(this + 149);
  v5 = *(this + 4948);
  v6 = (8 * (*(this + 117) & 3)) & 0x9F | (32 * (*(this + 118) & 3));
  if ([(SCNMTLRenderContext *)RenderContext reverseZ])
  {
    v7 = 0x80;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xC6A4A7935BD1E995 * (((((v6 | v7) & 0xF8) << 24) | (v5 << 16) | v4 & 0xFF00 | v4) ^ 0x1A929E4D6F47A654);
  v9 = 0xC6A4A7935BD1E995 * (v8 ^ (v8 >> 47));
  v10 = strlen(v2);
  v11 = (0xC6A4A7935BD1E995 * v10) ^ (v9 >> 47) ^ v9;
  if (v10 >= 8)
  {
    v12 = v10 >> 3;
    v13 = &v2[8 * v12];
    v14 = 8 * v12;
    do
    {
      v15 = *v2;
      v2 += 8;
      v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v15) ^ ((0xC6A4A7935BD1E995 * v15) >> 47))) ^ v11);
      v14 -= 8;
    }

    while (v14);
    v2 = v13;
  }

  v16 = v10 & 7;
  if (v16 > 3)
  {
    if ((v10 & 7) > 5)
    {
      if (v16 != 6)
      {
        v11 ^= *(v2 + 6) << 48;
      }

      v11 ^= *(v2 + 5) << 40;
    }

    else if (v16 == 4)
    {
      goto LABEL_21;
    }

    v11 ^= *(v2 + 4) << 32;
LABEL_21:
    v11 ^= *(v2 + 3) << 24;
LABEL_22:
    v11 ^= *(v2 + 2) << 16;
    goto LABEL_23;
  }

  if ((v10 & 7) <= 1)
  {
    if ((v10 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) >> 47);
    }

    goto LABEL_24;
  }

  if (v16 != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v11 ^= *(v2 + 1) << 8;
LABEL_24:
  v11 = 0xC6A4A7935BD1E995 * (v11 ^ *v2);
  return (0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) >> 47);
}

void C3D::DrawNodesPass::setup(C3D::DrawNodesPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  if ([(SCNMTLRenderContext *)RenderContext disableLinearRendering])
  {
    *(this + 149) |= 1u;
  }

  v3 = (*(*this + 64))(this);
  v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v3 ^ 0xD2066E14D2E75C53)) ^ 0x73)) ^ ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v3 ^ 0xD2066E14D2E75C53)) ^ 0x73)) >> 47));
  v5 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4 ^ (v4 >> 47));
  *(this + 668) = v5;
  if (!v5)
  {
    operator new();
  }

  if (!C3D::PassDescriptor::outputCount((this + 32)))
  {
    C3D::Pass::setOutputCount(this, 2u);
    v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v6 + 8) = "COLOR";
    C3D::Pass::parentColorDesc(this, &v35);
    *(v6 + 16) = v35;
    *(v6 + 32) = v36;
    *(v6 + 65) = 0;
    *(v6 + 66) = *(v6 + 66) & 0xFFFC | 2;
    v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
    *(v7 + 64) = 2;
    *(v7 + 8) = "DEPTH";
    C3D::Pass::parentDepthDesc(this, &v35);
    *(v7 + 16) = v35;
    *(v7 + 32) = v36;
    *(v7 + 66) = *(v7 + 66) & 0xFFF4 | 0xA;
  }

  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  if (*(v8 + 64) - 1 >= 2)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::setup(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (SCNMTLTextureTypeIsCube(*(v8 + 24)))
  {
    *(this + 302) = 1;
    v17 = [(SCNMTLRenderContext *)RenderContext features];
    *(this + 117) = (v17 & 0x20) != 0;
    if ((v17 & 0x20) != 0)
    {
      PreferredMultiVertexOutputStreamGenerator = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    else
    {
      PreferredMultiVertexOutputStreamGenerator = 0;
    }

    *(this + 118) = PreferredMultiVertexOutputStreamGenerator;
    *(this + 19) = 6;
  }

  Scene = C3DEngineContextGetScene(*(this + 2));
  v20 = C3D::DrawNodesPass::_setupCullingContext(this);
  v21 = *(this + 34);
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      v23 = *(v21 + 16);
      v24 = &v23[v22];
      LODWORD(v21) = *(this + 19);
      do
      {
        if (v21)
        {
          v25 = 0;
          v26 = *v23;
          do
          {
            if ((*(*this + 120))(this, v26, v25, v20))
            {
              C3DCullingContextForcePushGeometryRenderableElementsToVisible(this + 20, v25, v26);
            }

            ++v25;
            v21 = *(this + 19);
          }

          while (v25 < v21);
        }

        ++v23;
      }

      while (v23 != v24);
    }
  }

  else
  {
    C3DCullingContextCull(this + 320);
    ParticleManager = C3DSceneGetParticleManager(Scene, 0);
    if (*(C3D::Pass::descriptor(this) + 12))
    {
      Stats = C3DEngineContextGetStats(*(this + 2));
      v29 = CACurrentMediaTime();
      LightingSystem = C3DSceneGetLightingSystem(Scene);
      v31 = *(this + 19);
      if (*(this + 19))
      {
        v32 = LightingSystem;
        v33 = 0;
        v34 = this + 3408;
        do
        {
          if (ParticleManager)
          {
            C3DLightingSystemBeginQueries(v32, v34, *(this + 2));
            C3DParticleManagerCull(ParticleManager, this + 320, *(this + 2), v33, *(this + 117), *(this + 118));
            C3DLightingSystemEndQueries(v32);
            v31 = *(this + 19);
          }

          ++v33;
          v34 += 64;
        }

        while (v33 < v31);
      }

      *(Stats + 120) = *(Stats + 120) + CACurrentMediaTime() - v29;
    }
  }
}

__n128 C3D::DrawNodesPass::_setupCullingContext(__n128 *this)
{
  v2 = this + 256;
  RenderContext = C3DEngineContextGetRenderContext(this[1].n128_i64[0]);
  Scene = C3DEngineContextGetScene(this[1].n128_i64[0]);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  if ((this[18].n128_u8[12] & 1) == 0 && [(SCNMTLRenderContext *)RenderContext textureTarget])
  {
    this[18].n128_u8[14] = ([-[SCNMTLRenderContext textureTarget](RenderContext) textureType] - 5) < 2;
  }

  v2[57].n128_u8[6] = 0;
  v6 = this[1].n128_i64[0];
  this[316].n128_u64[0] = v6;
  if ((C3DEngineContextIsWarmUp(v6) & 1) != 0 || this[17].n128_u64[0])
  {
    v7 = 1;
  }

  else
  {
    v7 = this[19].n128_i8[0];
  }

  v2[57].n128_u8[4] = v7 & 1;
  this[20].n128_u64[0] = EnginePipeline;
  this[315].n128_u64[1] = Scene;
  v2[53].n128_u8[4] = this[2].n128_u8[6];
  v2[53].n128_u8[7] = this[7].n128_u8[5];
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
  ElementCount = C3DRendererElementStoreGetElementCount(RendererElementStore);
  if (this[2].n128_u16[3])
  {
    v10 = ElementCount;
    v11 = 0;
    v12 = 4 * ElementCount;
    v13 = &this[327].n128_u32[3];
    do
    {
      Aligned = C3DScratchAllocatorAllocateAligned(*(this[1].n128_u64[1] + 16), v12, 2, 0);
      bzero(Aligned, v12);
      *(v13 - 3) = Aligned;
      *(v13 - 1) = 0;
      *v13 = v10;
      ++v11;
      v15 = this[2].n128_u16[3];
      v13 += 4;
    }

    while (v11 < v15);
    v16 = v15 == 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  v2[53].n128_u8[8] = this[18].n128_u8[14];
  this[311].n128_u64[0] = this[15].n128_u64[0];
  this[311].n128_u64[1] = this;
  this[333].n128_u64[1] = C3D::drawNodesPassShouldPushRenderableElementsToVisible;
  v2[57].n128_u8[5] = this[18].n128_u8[8];
  v2[77].n128_u8[0] = 0;
  v2[53].n128_u8[6] = this[2].n128_u32[3];
  if (v16)
  {
    v17 = this[7].n128_u8[5] == 2;
  }

  v2[57].n128_u8[8] = v17;
  v2[57].n128_u8[9] = this[19].n128_u8[2];
  v18 = this[16].n128_u64[1];
  this[312].n128_u64[0] = v18;
  if (!v18)
  {
    if (!Scene)
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    this[312].n128_u64[0] = C3DSceneGetRootNode(Scene);
  }

  v2[57].n128_u8[0] = this[18].n128_u8[13];
  v27 = C3D::PassDescriptor::outputAtIndex(&this[2], 0);
  if (this[7].n128_u8[9] == 1)
  {
    ViewportAtIndex = this[8];
  }

  else if ((this[7].n128_u8[8] & 1) != 0 || this[19].n128_u8[1] == 1)
  {
    ViewportAtIndex = C3DEngineContextGetViewportAtIndex(this[1].n128_i64[0], 0);
  }

  else
  {
    LOWORD(v28) = *(v27 + 16);
    *&v30 = v28;
    LOWORD(v28) = *(v27 + 18);
    *&v31 = v28;
    ViewportAtIndex.n128_u64[0] = 0;
    ViewportAtIndex.n128_u64[1] = __PAIR64__(v31, v30);
  }

  this[310] = ViewportAtIndex;
  v32 = this[15].n128_i64[1];
  PointOfViewForCulling = v32;
  if (v32 || (PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(this[1].n128_i64[0]), (v32 = this[15].n128_i64[1]) != 0))
  {
    v2[57].n128_u8[1] = this[18].n128_u8[12];
  }

  else
  {
    PointOfView = C3DEngineContextGetPointOfView(this[1].n128_i64[0]);
    this[15].n128_u64[1] = PointOfView;
    v2[57].n128_u8[1] = this[18].n128_u8[12];
    if (!PointOfView)
    {
      C3DCullingContextSetupMatricesToIdentity(&this[20]);
      goto LABEL_30;
    }

    v32 = PointOfView;
  }

  C3D::DrawNodesPass::_setupPointOfView(this, v32, PointOfViewForCulling, &this[310]);
LABEL_30:
  this[315].n128_u64[0] = C3DEngineContextGetAuthoringEnvironment(this[1].n128_i64[0], 0);
  this[314].n128_u64[0] = this[17].n128_u64[1];
  this[314].n128_u64[0] &= C3DGetPovCategoryMask(PointOfViewForCulling);
  this[314].n128_u64[1] = this[18].n128_u64[0];
  v2[57].n128_u16[1] = 0;
  v34 = this[15].n128_i64[1];
  if (v34)
  {
    Light = C3DNodeGetLight(v34);
    if (Light)
    {
      if (C3DLightGetType(Light) == 4)
      {
        v2[57].n128_u16[1] = 256;
      }
    }
  }

  result.n128_f64[0] = C3DCullingContextSetupLOD(&this[20], this[1].n128_u64[0]);
  if (v2[53].n128_u8[4])
  {
    v37 = 0;
    v38 = this + 285;
    v39 = 16;
    do
    {
      v40 = this[334].n128_u64[0] + v39;
      result = *v40;
      v41 = *(v40 + 16);
      v42 = *(v40 + 48);
      v38[2] = *(v40 + 32);
      v38[3] = v42;
      *v38 = result;
      v38[1] = v41;
      v38 += 4;
      ++v37;
      v39 += 64;
    }

    while (v37 < v2[53].n128_u8[4]);
  }

  return result;
}

void C3D::DrawNodesPass::compile(C3D::DrawNodesPass *this)
{
  v23[1] = *MEMORY[0x277D85DE8];
  Scene = C3DEngineContextGetScene(*(this + 2));
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(*(this + 2));
  Capacity = C3DRendererElementStoreGetCapacity(RendererElementStore);
  C3DProgramHashCodeStoreSetCapacity(ProgramHashCodeStore, Capacity);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext disableLinearRendering];
  }

  IsClusteredShadingEnabled = C3DEngineContextIsClusteredShadingEnabled(*(this + 2));
  if (*(this + 1236))
  {
    v11 = IsClusteredShadingEnabled;
    v12 = 0;
    do
    {
      C3DLightingSystemBeginQueries(LightingSystem, this + 64 * v12 + 3408, *(this + 2));
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      C3DLightingSystemGetLightingContext(LightingSystem, *(this + 2), v21);
      v20 = 0;
      if (C3DLightingSystemGetInfiniteLightSet(LightingSystem, v23, &v20))
      {
        C3DLightingSystemCheckLightingSetTextureUsage(LightingSystem, v23);
        LightingSetProgramHashCodes = C3DLightingSystemGetLightingSetProgramHashCodes(LightingSystem, v23, (v21 + 4));
        LOWORD(v21[0]) = (LightingSetProgramHashCodes << 7) | v21[0] & 0x807F;
      }

      v14 = this + 16 * v12 + 5232;
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = *v14;
        do
        {
          v17 = *v16++;
          v1 = v1 & 0xFFFFFFFF00000000 | v17;
          Element = C3DRendererElementStoreGetElement(RendererElementStore, v1);
          v19 = *(Element + 72);
          if ((v19 & 0x40) != 0)
          {
            *(Element + 72) = (8 * LOWORD(v21[0])) & 0x380 | v19 & 0xFC7F;
          }

          C3D::DrawNodesPass::_computeProgramHashCodeForRendererElement(this, Element, ProgramHashCodeStore, v21, v11);
          --v15;
        }

        while (v15);
      }

      if (*(this + 296))
      {
        C3DLightingSystemEndQueries(LightingSystem);
      }

      ++v12;
    }

    while (v12 < *(this + 1236));
  }
}

void C3D::DrawNodesPass::_computeProgramHashCodeForRendererElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a2 + 16) || *(a2 + 24))
  {
    RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
    v11 = *(a2 + 8);
    v12 = *(a1 + 240);
    v13 = (*(*a1 + 80))(a1);
    ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(a3, a2, v12, v13);
    if (ProgramHashCodeForRenderElement)
    {
      if (*(a1 + 296) != 1)
      {
        return;
      }

      if (a5)
      {
        v15 = *(a4 + 80);
        v59[4] = *(a4 + 64);
        v59[5] = v15;
        v60 = *(a4 + 96);
        v16 = *(a4 + 16);
        v59[0] = *a4;
        v59[1] = v16;
        v17 = *(a4 + 48);
        v59[2] = *(a4 + 32);
        v59[3] = v17;
        if (C3DProgramHashCodeMatchLightHashCodesAndLightingContext(ProgramHashCodeForRenderElement, v59))
        {
          return;
        }
      }

LABEL_10:
      v56 = RenderContext;
      v57 = a3;
      v58 = v11;
      Mesh = C3DRendererElementGetMesh(a2);
      MeshElement = C3DRendererElementGetMeshElement(a2);
      Geometry = C3DRendererElementGetGeometry(a2);
      Material = C3DRendererElementGetMaterial(a2);
      if (*(a1 + 256))
      {
        v20 = *(a1 + 256);
      }

      else
      {
        v20 = Material;
      }

      v21 = *(a2 + 8);
      if (v21)
      {
        if ((*(v21 + 221) & 0x10) != 0)
        {
          v22 = *(a2 + 40);
          if (v22)
          {
            C3DFXTechniqueEnsureThatPassesShouldExecute(v22);
          }
        }
      }

      v23 = *(a1 + 298);
      v24 = *(a1 + 4948);
      v25 = *(a2 + 72);
      v26 = *(a1 + 117);
      v27 = *(a1 + 118);
      if ([(SCNMTLRenderContext *)v56 reverseZ])
      {
        v28 = -128;
      }

      else
      {
        v28 = 0;
      }

      v29 = (8 * (v26 & 3)) & 0x98 | (v25 >> 11) & 7 | v28 & 0xFFFFFF9F | (32 * (v27 & 3));
      if (!*(a1 + 256))
      {
        v45 = C3DProgramHashCodeCreate(v58, Geometry, Mesh, MeshElement, a4, v20, (v24 << 16) & 0xFFFFFFFF00FFFFFFLL | (v29 << 24) | v23);
        v34 = v57;
LABEL_29:
        v46 = (*(*a1 + 80))(a1);
        C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass(v34, a2, v45, v46);
        if (v45)
        {
          CFRelease(v45);
        }

        return;
      }

      if (!C3DRendererElementIsOpaque(a2) || (v26 & 3) != 0 || (v30 = v20) != 0 && (v31 = C3DRendererElementGetMaterial(a2), (C3DEntityHasShaderModifiers(v31, 0) & 1) != 0))
      {
        v32 = *(a2 + 72);
        v33 = v23;
        v34 = v57;
        v35 = v24;
LABEL_26:
        *(a2 + 72) = v32 | 0x400;
        v36 = C3DRendererElementGetGeometry(a2);
        v37 = C3DRendererElementGetMesh(a2);
        v38 = C3DRendererElementGetMeshElement(a2);
        v39 = C3DRendererElementGetMaterial(a2);
        v40 = (v35 << 16) & 0xFFFFFFFF00FFFFFFLL | (v29 << 24) | v33;
        v41 = v58;
        v42 = v36;
        v43 = v37;
        v44 = v38;
LABEL_27:
        v45 = C3DProgramHashCodeCreate(v41, v42, v43, v44, 0, v39, v40);
        goto LABEL_29;
      }

      v33 = v23;
      v34 = v57;
      v35 = v24;
      if (Geometry)
      {
        v47 = C3DEntityHasShaderModifiers(Geometry, 0) ^ 1;
        if (!v30)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v47 = 1;
        if (!v30)
        {
          goto LABEL_40;
        }
      }

      if (v47)
      {
        CommonProfile = C3DMaterialGetCommonProfile(v30);
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0);
        if (EffectSlot)
        {
          HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot);
          v32 = *(a2 + 72);
          if (HasImageOrTexture)
          {
            goto LABEL_26;
          }

LABEL_41:
          *(a2 + 72) = v32 & 0xFBFF;
          v51 = C3DRendererElementGetGeometry(a2);
          v52 = C3DRendererElementGetMesh(a2);
          v44 = C3DRendererElementGetMeshElement(a2);
          v40 = (v35 << 16) & 0xFFFFFFFF00FFFFFFLL | (v29 << 24) | v33;
          v41 = v58;
          v42 = v51;
          v43 = v52;
          v39 = v30;
          goto LABEL_27;
        }
      }

LABEL_40:
      v32 = *(a2 + 72);
      if (!v47)
      {
        goto LABEL_26;
      }

      goto LABEL_41;
    }

    v18 = *(a1 + 240);
    if (!v18 || !C3DFXPassGetOverridingProgramHashCode(0, v18, a2))
    {
      goto LABEL_10;
    }
  }
}

void C3D::DrawNodesPass::execute(uint64_t *a1, uint64_t a2)
{
  Scene = C3DEngineContextGetScene(a1[2]);
  RootNode = C3DSceneGetRootNode(Scene);
  CFRetain(RootNode);
  RenderContext = C3DEngineContextGetRenderContext(a1[2]);
  v7 = (*(*a1 + 80))(a1);
  [(SCNMTLRenderContext *)RenderContext setCurrentPassHash:v7];
  [(SCNMTLRenderContext *)RenderContext setCurrentPassMaterial:?];
  if (!C3DSceneGetEnginePipeline(Scene))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  C3DEngineContextSetMatrix4x4(a1[2], 0, &a1[8 * *(a2 + 16) + 474]);
  C3DEngineContextSetMatrix4x4(a1[2], 1, &a1[8 * *(a2 + 16) + 426]);
  C3D::DrawNodesPass::_renderEye(a1);
  if (*(a1 + 4948))
  {
    v16 = 0;
    v17 = 0;
    v18 = a1 + 522;
    do
    {
      v19 = (a1[668] + v16 * 8);
      v20 = *&v18[v16];
      v21 = *&v18[v16 + 2];
      v22 = *&v18[v16 + 6];
      v19[3] = *&v18[v16 + 4];
      v19[4] = v22;
      v19[1] = v20;
      v19[2] = v21;
      if (C3DEngineContextIsTemporalAntialiasingEnabled(a1[2]))
      {
        TAAJitter = C3DEngineContextGetTAAJitter(a1[2], 0);
        v24 = C3DEngineContextGetTAAJitter(a1[2], 1);
        v25 = (a1[668] + v16 * 8);
        v26 = v25[4];
        *v27.i8 = vadd_f32(vsub_f32(v24, TAAJitter), *v26.i8);
        v27.i64[1] = vextq_s8(v26, v26, 8uLL).u64[0];
        v25[4] = v27;
      }

      ++v17;
      v16 += 8;
    }

    while (v17 < *(a1 + 4948));
  }

  CFRelease(RootNode);
}

double C3D::DrawNodesPass::_renderEye(C3D::DrawNodesPass *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v5 = v1 + 4096;
  Scene = C3DEngineContextGetScene(*(v1 + 16));
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  RenderContext = C3DEngineContextGetRenderContext(*(v4 + 16));
  bzero(&v36, 0x1410uLL);
  v36.i64[0] = *(v4 + 240);
  v37 = *(v5 + 852);
  v38 = v3;
  v39 = *(v4 + 302);
  v40 = *(v4 + 117);
  memcpy(v41, (v4 + 320), sizeof(v41));
  if (*(v4 + 303) == 1)
  {
    v9 = C3D::Pass::descriptor(v4);
    if ((*(C3D::PassDescriptor::outputAtIndex(v9, 0) + 66) & 0x40) == 0)
    {
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
      if (BackgroundEffectSlot)
      {
        C3DEngineContextRenderBackgroundMap(*(v4 + 16), BackgroundEffectSlot, &v36);
      }
    }
  }

  Stats = C3DEngineContextGetStats(*(v4 + 16));
  if (*(v5 + 920))
  {
    v12 = 0;
  }

  else
  {
    v12 = v3;
  }

  v13 = v4 + 16 * v12;
  v14 = *(v13 + 5240);
  v15 = *(v13 + 5232);
  if (!v15)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::_renderEye(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = CACurrentMediaTime();
  SortSystem = C3DEngineContextGetSortSystem(*(v4 + 16));
  v26 = *(v4 + 16);
  v27 = (*(*v4 + 80))(v4);
  C3DSortSystemSyncKeys(SortSystem, v26, v15, v14, v27);
  C3DSortSystemSort(SortSystem, *(v4 + 16), v15, v14);
  *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v24;
  if (C3DEngineContextGetMaxDrawingCommand(*(v4 + 16)))
  {
    v28 = C3DEngineContextGetStats(*(v4 + 16));
    v29 = C3DEngineContextGetMaxDrawingCommand(*(v4 + 16)) + ~*(v28 + 12);
    if (v14 >= v29)
    {
      LODWORD(v14) = v29;
    }
  }

  v30 = CACurrentMediaTime();
  v31 = *(v4 + 16);
  v33[0] = EnginePipeline;
  v33[1] = v31;
  v34 = *(v4 + 296);
  v35 = *(v4 + 301);
  v33[3] = v4;
  v33[4] = 0;
  v33[2] = &v36;
  [(SCNMTLRenderContext *)RenderContext processRendererElements:v15 count:v14 engineIterationContext:v33];
  result = *(Stats + 152) + CACurrentMediaTime() - v30;
  *(Stats + 152) = result;
  return result;
}

uint64_t C3D::DrawNodesPass::_setupPointOfView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[631])
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::_setupPointOfView(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  (*(*a1 + 104))(a1);
  (*(*a1 + 96))(a1, a2, a3, a4);
  C3DCullingContextSetupCullingMatricesAndPlanes((a1 + 40), a1[2], a2, a3, *(a1 + 119));
  return (*(*a1 + 112))(a1);
}

void C3D::DrawNodesPass::_setupPointOfViewMatrices(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (*(a1 + 302) == 1)
  {
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(a1 + 16));
    if ((C3DNodeGetProjectionInfos(a2, v70) & 1) == 0)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        C3D::DrawNodesPass::_setupPointOfViewMatrices(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v15 = v71;
    v14 = v72;
    *(a1 + 5064) = v71;
    *(a1 + 5072) = v14;
    *(a1 + 5015) = (v70[0] & 0x20) != 0;
    if (CoordinatesSystemOptions)
    {
      if (v14 > v15)
      {
        v28 = v14;
      }

      else
      {
        v28 = v15 + 1.0;
      }

      v29 = __tanpi(0.25);
      if (v29 == 0.0)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 1.0 / v29;
      }

      *&v31 = v30;
      v20 = v31;
      v21.i32[0] = 0;
      v21.i64[1] = 0;
      v21.i32[1] = v31;
      v23.i64[0] = 0;
      *&v32 = v28 / (v15 - v28);
      v23.i64[1] = __PAIR64__(-1.0, v32);
      *&v25 = 0;
      *&v33 = v15 * v28 / (v15 - v28);
      *(&v25 + 1) = v33;
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v34 = 0;
        v73 = v20;
        v74 = v21;
        v75 = v23;
        v76 = v25;
        do
        {
          *(&v77 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v73 + v34))), xmmword_21C27F8C0, *&v73.f32[v34 / 4], 1), xmmword_21C27F900, *(&v73 + v34), 2), xmmword_21C27FDD0, *(&v73 + v34), 3);
          v34 += 16;
        }

        while (v34 != 64);
        v20 = v77;
        v21 = v78;
        v23 = v79;
        v25 = v80;
      }
    }

    else
    {
      if (v14 > v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15 + 1.0;
      }

      v17 = __tanpi(0.25);
      if (v17 == 0.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 1.0 / v17;
      }

      *&v19 = v18;
      *&v25 = 0;
      v20 = v19;
      v21.i32[0] = 0;
      v21.i64[1] = 0;
      v21.i32[1] = v19;
      v23.i64[0] = 0;
      *&v22 = (v15 + v16) / (v15 - v16);
      v23.i64[1] = __PAIR64__(-1.0, v22);
      *&v24 = (v15 + v15) * v16 / (v15 - v16);
      *(&v25 + 1) = v24;
    }

    *(a1 + 3792) = v20;
    *(a1 + 3808) = v21;
    *(a1 + 3824) = v23;
    *(a1 + 3840) = v25;
    v68 = *(MEMORY[0x277D860B8] + 16);
    v69 = *MEMORY[0x277D860B8];
    v66 = *(MEMORY[0x277D860B8] + 48);
    v67 = *(MEMORY[0x277D860B8] + 32);
    WorldMatrix = C3DNodeGetWorldMatrix(a2);
    v36 = 0;
    v37 = *WorldMatrix;
    v38 = WorldMatrix[1];
    v39 = WorldMatrix[2];
    v40 = WorldMatrix[3];
    v41 = vnegq_f32(v69);
    v73 = v67;
    v74 = v68;
    v75 = v41;
    v76 = v66;
    do
    {
      *(&v77 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v36))), v38, *&v73.f32[v36 / 4], 1), v39, *(&v73 + v36), 2), v40, *(&v73 + v36), 3);
      v36 += 16;
    }

    while (v36 != 64);
    v42 = 0;
    v43 = v78;
    v44 = v79;
    v45 = v80;
    *(a1 + 3024) = v77;
    *(a1 + 3040) = v43;
    *(a1 + 3056) = v44;
    *(a1 + 3072) = v45;
    v46 = vnegq_f32(v67);
    v73 = v46;
    v74 = v68;
    v75 = v69;
    v76 = v66;
    do
    {
      *(&v77 + v42) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v42))), v38, *&v73.f32[v42 / 4], 1), v39, *(&v73 + v42), 2), v40, *(&v73 + v42), 3);
      v42 += 16;
    }

    while (v42 != 64);
    v47 = 0;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    *(a1 + 3088) = v77;
    *(a1 + 3104) = v48;
    *(a1 + 3120) = v49;
    *(a1 + 3136) = v50;
    v73 = v69;
    v74 = v67;
    v75 = vnegq_f32(v68);
    v76 = v66;
    do
    {
      *(&v77 + v47) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v47))), v38, *&v73.f32[v47 / 4], 1), v39, *(&v73 + v47), 2), v40, *(&v73 + v47), 3);
      v47 += 16;
    }

    while (v47 != 64);
    v51 = 0;
    v52 = v78;
    v53 = v79;
    v54 = v80;
    *(a1 + 3152) = v77;
    *(a1 + 3168) = v52;
    *(a1 + 3184) = v53;
    *(a1 + 3200) = v54;
    v73 = v69;
    v74 = v46;
    v75 = v68;
    v76 = v66;
    do
    {
      *(&v77 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v51))), v38, *&v73.f32[v51 / 4], 1), v39, *(&v73 + v51), 2), v40, *(&v73 + v51), 3);
      v51 += 16;
    }

    while (v51 != 64);
    v55 = 0;
    v56 = v78;
    v57 = v79;
    v58 = v80;
    *(a1 + 3216) = v77;
    *(a1 + 3232) = v56;
    *(a1 + 3248) = v57;
    *(a1 + 3264) = v58;
    v73 = v69;
    v74 = v68;
    v75 = v67;
    v76 = v66;
    do
    {
      *(&v77 + v55) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v55))), v38, *&v73.f32[v55 / 4], 1), v39, *(&v73 + v55), 2), v40, *(&v73 + v55), 3);
      v55 += 16;
    }

    while (v55 != 64);
    v59 = 0;
    v60 = v78;
    v61 = v79;
    v62 = v80;
    *(a1 + 3280) = v77;
    *(a1 + 3296) = v60;
    *(a1 + 3312) = v61;
    *(a1 + 3328) = v62;
    v73 = v41;
    v74 = v68;
    v75 = v46;
    v76 = v66;
    do
    {
      *(&v77 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(&v73 + v59))), v38, *&v73.f32[v59 / 4], 1), v39, *(&v73 + v59), 2), v40, *(&v73 + v59), 3);
      v59 += 16;
    }

    while (v59 != 64);
    v63 = v78;
    v64 = v79;
    v65 = v80;
    *(a1 + 3344) = v77;
    *(a1 + 3360) = v63;
    *(a1 + 3376) = v64;
    *(a1 + 3392) = v65;
    C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering((a1 + 320));
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = a1 + 320;

    C3DCullingContextSetupPointOfViewMatrices(v27, v26, a2, a3);
  }
}

uint64_t C3DAnimationGroupGetTypeID()
{
  if (C3DAnimationGroupGetTypeID_onceToken != -1)
  {
    C3DAnimationGroupGetTypeID_cold_1();
  }

  return C3DAnimationGroupGetTypeID_typeID;
}

double __C3DAnimationGroupGetTypeID_block_invoke()
{
  C3DAnimationGroupGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationGroupContextClassSerializable;
  unk_281741EA8 = kC3DC3DAnimationGroupContextClassSerializable;
  unk_281741EB8 = *off_282DC6698;
  return result;
}

uint64_t C3DAnimationGroupCreate()
{
  if (C3DAnimationGroupGetTypeID_onceToken != -1)
  {
    C3DAnimationGroupGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationGroupGetTypeID_typeID, 160);
  C3DAnimationCommonInit(Instance);
  *(Instance + 168) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  return Instance;
}

void C3DAnimationGroupAddAnimation(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 168), value);
}

void C3DAnimationGroupAddAnimations(uint64_t a1, CFArrayRef theArray)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationGroupAddAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (theArray)
    {
      goto LABEL_6;
    }
  }

  else if (theArray)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationGroupAddAnimations_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 168);
  v21.length = CFArrayGetCount(theArray);
  v21.location = 0;
  CFArrayAppendArray(v20, theArray, v21);
}

CFIndex C3DAnimationGroupGetAnimationCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return CFArrayGetCount(*(a1 + 168));
}

const void *C3DAnimationGroupGetAnimationAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return CFArrayGetValueAtIndex(*(a1 + 168), idx);
}

uint64_t C3DAnimationGroupGetAnimations(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

void C3DAnimationGroupRemoveAllAnimations(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFArrayRemoveAllValues(*(a1 + 168));
}

void C3DAnimationGroupCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationGroupCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  C3DAnimationGroupRemoveAllAnimations(a2);
  Animations = C3DAnimationGroupGetAnimations(a1);
  Count = CFArrayGetCount(Animations);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Animations, i);
      Copy = C3DAnimationCreateCopy(ValueAtIndex);
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(Copy);
    }
  }

  C3DAnimationGroupAddAnimations(a2, Mutable);
  CFRelease(Mutable);
  IsAnimationClip = C3DAnimationGroupIsAnimationClip(a1);
  C3DAnimationGroupSetIsAnimationClip(a2, IsAnimationClip);
}

void C3DAnimationGroupSetIsAnimationClip(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFEFF | v12;
}

uint64_t C3DAnimationGroupIsAnimationClip(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimations_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return HIBYTE(*(a1 + 84)) & 1;
}

id _C3DAnimationGroupCFFinalize(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    CFRelease(v2);
    a1[21] = 0;
  }

  return _C3DAnimationCFFinalize(a1);
}

BOOL _C3DAnimationGroupInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (_C3DAnimationInitWithPropertyList(a1, a2, a3))
  {
    Value = CFDictionaryGetValue(a2, @"channels");
    if (!Value || (v9 = Value, v10 = CFArrayGetCount(Value), v10 < 1))
    {
LABEL_14:
      v18 = CFDictionaryGetValue(a2, @"subAnimations");
      if (v18)
      {
        v19 = v18;
        Count = CFArrayGetCount(v18);
        if (Count >= 1)
        {
          v21 = Count;
          for (i = 0; i != v21; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
            v24 = C3DAnimationGroupCreate();
            C3DInitWithPropertyList(v24, ValueAtIndex, a3, a4);
            C3DAnimationGroupAddAnimation(a1, v24);
            CFRelease(v24);
          }
        }
      }

      return 1;
    }

    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = CFArrayGetValueAtIndex(v9, v12);
      v14 = CFDictionaryGetValue(v13, @"animation");
      if (!v14)
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          _C3DAnimationGroupInitWithPropertyList_cold_5();
          if (!a4)
          {
            return 0;
          }
        }

        else
        {
LABEL_27:
          if (!a4)
          {
            return 0;
          }
        }

LABEL_28:
        if (*a4)
        {
          return 0;
        }

        MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
        result = 0;
        *a4 = MalformedDocumentError;
        return result;
      }

      v15 = v14;
      if (CFDictionaryContainsKey(v14, @"type"))
      {
        v16 = C3DAnimationCreateWithPropertyList(v15, a3, a4);
        if (!v16)
        {
          v29 = scn_default_log();
          result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
          if (result)
          {
            _C3DAnimationGroupInitWithPropertyList_cold_2();
            return 0;
          }

          return result;
        }
      }

      else
      {
        v16 = C3DKeyframedAnimationCreate();
        if ((C3DInitWithPropertyList(v16, v15, a3, a4) & 1) == 0)
        {
          v31 = scn_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            _C3DAnimationGroupInitWithPropertyList_cold_3();
          }

          CFRelease(v16);
          return 0;
        }
      }

      v17 = CFDictionaryGetValue(v13, @"targetPath");
      if (!v17)
      {
        if (v16)
        {
          CFRelease(v16);
        }

        v27 = scn_default_log();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        _C3DAnimationGroupInitWithPropertyList_cold_4();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_28;
      }

      C3DAnimationSetKeyPath(v16, v17);
      C3DAnimationGroupAddAnimation(a1, v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v11 == ++v12)
      {
        goto LABEL_14;
      }
    }
  }

  v25 = scn_default_log();
  result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _C3DAnimationGroupInitWithPropertyList_cold_1();
    return 0;
  }

  return result;
}

CFMutableDictionaryRef _C3DAnimationGroupCopyPropertyList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  theDict = _C3DAnimationCopyPropertyList(a1, a2, a3, a4);
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
  v17 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v17, AnimationCount, MEMORY[0x277CBF128]);
  if (AnimationCount >= 1)
  {
    for (i = 0; i != AnimationCount; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
      if (!C3DAnimationIsGroup(AnimationAtIndex))
      {
        v21 = CFGetAllocator(a1);
        v22 = CFDictionaryCreateMutable(v21, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
        if (KeyPath)
        {
          CFDictionaryAddValue(v22, @"targetPath", KeyPath);
        }

        else
        {
          v24 = scn_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            _C3DAnimationGroupCopyPropertyList_cold_2(&buf, v35, v24);
          }
        }

        v25 = C3DCopyPropertyList(AnimationAtIndex, a2, a3, a4);
        if (v25)
        {
          v26 = v25;
          CFDictionaryAddValue(v22, @"animation", v25);
          CFRelease(v26);
        }

        CFArrayAppendValue(Mutable, v22);
        CFRelease(v22);
      }
    }
  }

  if (CFArrayGetCount(Mutable) > 0)
  {
    CFDictionaryAddValue(theDict, @"channels", Mutable);
  }

  CFRelease(Mutable);
  v27 = CFGetAllocator(a1);
  v28 = CFArrayCreateMutable(v27, AnimationCount, MEMORY[0x277CBF128]);
  if (AnimationCount >= 1)
  {
    for (j = 0; j != AnimationCount; ++j)
    {
      v30 = C3DAnimationGroupGetAnimationAtIndex(a1, j);
      if (C3DAnimationIsGroup(v30))
      {
        v31 = C3DCopyPropertyList(v30, a2, a3, a4);
        CFArrayAppendValue(v28, v31);
        CFRelease(v31);
      }
    }
  }

  if (CFArrayGetCount(v28) > 0)
  {
    CFDictionaryAddValue(theDict, @"subAnimations", v28);
  }

  CFRelease(v28);
  return theDict;
}

void C3D::SSAOUpSamplePass::SSAOUpSamplePass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC66B8;
  v5[15] = a4;
}

uint64_t C3D::SSAOUpSamplePass::setup(C3D::Pass ***this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 4), 0);
  *(v2 + 8) = "SSAO-DepthNormal";
  v3 = C3D::Pass::descriptor(*this[15]);
  *(v2 + 16) = *(C3D::PassDescriptor::outputAtIndex(v3, 0) + 16);
  v4 = C3D::Pass::descriptor(*this[15]);
  *(v2 + 18) = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18);
  v5 = C3D::Pass::descriptor(*this[15]);
  LODWORD(v2) = *(C3D::PassDescriptor::outputAtIndex(v5, 0) + 16) / *(this[15] + 3);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 1u) + 16) = v2;
  v6 = C3D::Pass::descriptor(*this[15]);
  LODWORD(v2) = *(C3D::PassDescriptor::outputAtIndex(v6, 0) + 18) / *(this[15] + 3);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 1u) + 18) = v2;
  v7 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  *(v7 + 28) = 25;
  *(v7 + 8) = "SSAO-Final";
  v8 = C3D::Pass::descriptor(*this[15]);
  *(v7 + 16) = *(C3D::PassDescriptor::outputAtIndex(v8, 0) + 16);
  v9 = C3D::Pass::descriptor(*this[15]);
  result = C3D::PassDescriptor::outputAtIndex(v9, 0);
  *(v7 + 18) = *(result + 18);
  *(v7 + 66) |= 0x10u;
  if (*(v7 + 24) == 5)
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  *(this + 19) = v11;
  return result;
}

uint64_t C3D::SSAOUpSamplePass::compile(C3D::SSAOUpSamplePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 15) + 16) | (2 * *(*(this + 15) + 17)) | (4 * *(*(this + 15) + 12)) | (*(*(this + 15) + 8) << 6);
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::SSAOUpSamplePass::execute(uint64_t *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(a1[2]);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      v14[13] = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(Camera), 0.0);
      v6 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v3->_textures[1] != v6)
      {
        v3->_textures[1] = v6;
        v3->_texturesToBind[0] |= 2uLL;
      }

      v7 = C3D::Pass::inputTextureAtIndex(a1, 1u);
      if (v3->_textures[0] != v7)
      {
        v3->_textures[0] = v7;
        v3->_texturesToBind[0] |= 1uLL;
      }

      v8 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v3->_textures[2] != v8)
      {
        v3->_textures[2] = v8;
        v3->_texturesToBind[0] |= 4uLL;
      }

      SCNMTLComputeCommandEncoder::setBytes(v3, v14, 0x40uLL, 0);
      v9 = C3D::Pass::outputTextureAtIndex(a1, 0);
      v10 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(a1[14] + 16);
      v11 = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];
      SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v9, v11);
    }

    else if ((C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
    {
      C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done = 1;
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v13);
      }
    }
  }

  else if ((C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
  {
    C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done = 1;
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v12);
    }
  }
}

void C3D::SSAOPassUpSamplingResource::~SSAOPassUpSamplingResource(C3D::SSAOPassUpSamplingResource *this)
{
  *this = &unk_282DC6728;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC6728;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

btPoint2PointConstraint *_createConstraintFromDefinition(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v4 = [v2 _handle];
    *v11.var0.var0 = *(a1 + 16);
    *&v11.var0.var0[2] = *(a1 + 24);
    v5 = [*(a1 + 8) _handle];
    *v10.var0.var0 = *(a1 + 28);
    *&v10.var0.var0[2] = *(a1 + 36);
    v6 = btAlignedAllocInternal(432, 16);
    btPoint2PointConstraint::btPoint2PointConstraint(v6, v4, v5, &v11, &v10);
  }

  else
  {
    if (!v2)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v7);
      }
    }

    v8 = [*a1 _handle];
    *v11.var0.var0 = *(a1 + 16);
    *&v11.var0.var0[2] = *(a1 + 24);
    v6 = btAlignedAllocInternal(432, 16);
    btPoint2PointConstraint::btPoint2PointConstraint(v6, v8, &v11);
  }

  return v6;
}

void C3D::JitteringPass::setup(C3D::JitteringPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v13);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 16) = v13;
  *(v2 + 32) = v14;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 31) = 0;
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v4 = [(SCNMTLRenderContext *)RenderContext features];
  UpdateMainFramebuffer = C3DEngineContextGetUpdateMainFramebuffer(*(this + 2));
  if ((v4 & 0x800) != 0)
  {
    if (UpdateMainFramebuffer)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    C3D::Pass::setOutputCount(this, v9);
    v10 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    C3D::Pass::parentColorDesc(this, &v13);
    *(v10 + 16) = v13;
    *(v10 + 32) = v14;
    *(v10 + 28) = 115;
    *(v10 + 65) = 0;
    *(v10 + 66) |= 0x100u;
    if (C3DEngineContextGetJitteringStep(*(this + 2)))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    *(v10 + 66) = *(v10 + 66) & 0xFFFC | v11;
    if (C3DEngineContextGetUpdateMainFramebuffer(*(this + 2)))
    {
      v12 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
      *(v12 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(this, &v13);
      *(v12 + 16) = v13;
      *(v12 + 32) = v14;
      *(v12 + 65) = 1;
    }
  }

  else
  {
    if (UpdateMainFramebuffer)
    {
      C3D::Pass::setOutputCount(this, 2u);
      v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
      *(v6 + 8) = "pingPongTex";
      C3D::Pass::parentColorDesc(this, &v13);
      *(v6 + 16) = v13;
      *(v6 + 32) = v14;
      *(v6 + 28) = 115;
      *(v6 + 65) = 0;
      *(v6 + 66) = *(v6 + 66) & 0xFEF4 | 0x108;
      v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
      *(v7 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(this, &v13);
      *(v7 + 16) = v13;
      *(v7 + 32) = v14;
      *(v7 + 65) = 1;
      v8 = *(v7 + 66) & 0xFFFC;
    }

    else
    {
      C3D::Pass::setOutputCount(this, 1u);
      v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
      *(v7 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(this, &v13);
      *(v7 + 16) = v13;
      *(v7 + 32) = v14;
      *(v7 + 28) = 115;
      *(v7 + 65) = 0;
      v8 = *(v7 + 66) & 0xFEFC | 0x100;
    }

    *(v7 + 66) = v8;
  }
}

void C3D::JitteringPass::compile(C3D::JitteringPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v4 = [(SCNMTLRenderContext *)RenderContext features];
  v5 = 0;
  if ((v4 & 0x800) == 0)
  {
    v5 = (C3DEngineContextGetJitteringStep(*(this + 2)) & 1) == 0;
  }

  *(this + 248) = v5;
  v6 = *(v3 + 16) | (*((*(*this + 88))(this) + 24) << 32);
  v7 = 0xC6A4A7935BD1E995 * (C3D::Pass::hashName(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))));
  v8 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47));
  *(this + 30) = v8;
  if (!v8)
  {
    operator new();
  }

  v9 = C3D::Pass::resource(this);
  v10 = *(this + 3);
  v11 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(this + 30) + 8 * *(this + 248) + 16);
  PersistentResource = C3D::RenderGraph::createPersistentResource(v10, v11);
  C3D::PassResource::setOutputAtIndex(v9, PersistentResource, 0);
}

uint64_t C3D::JitteringPass::execute(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  JitteringStep = C3DEngineContextGetJitteringStep(*(a1 + 16));
  v5 = (JitteringStep + 1);
  if (JitteringStep == -1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3D::JitteringPass::execute(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *&v14 = v5 + -1.0;
  *(&v14 + 1) = 1.0 / v5;
  v23 = v14;
  UpdateMainFramebuffer = C3DEngineContextGetUpdateMainFramebuffer(*(a1 + 16));
  v16 = *(a1 + 240);
  if (UpdateMainFramebuffer)
  {
    v17 = v16 + 32;
  }

  else
  {
    v17 = v16 + 40;
  }

  v18 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v17) :"state" detail:? :?NSRetainFct];
  if (*(v3 + 3376) != v18)
  {
    *(v3 + 3376) = v18;
    [*(v3 + 3392) setRenderPipelineState:v18];
  }

  v19 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v19, 0);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  if (([(SCNMTLRenderContext *)RenderContext features]& 0x800) == 0)
  {
    v21 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 240) + 8 * (*(a1 + 248) ^ 1) + 16);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v21, 1uLL);
  }

  SCNMTLRenderCommandEncoder::setFragmentBytes(v3, &v23, 8uLL, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3);
}

void C3D::JitteringPassResource::~JitteringPassResource(C3D::JitteringPassResource *this)
{
  *this = &unk_282DC67B8;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  for (i = 24; i != 8; i -= 8)
  {
    v5 = *(this + i);
    if (v5)
    {
    }
  }
}

{
  *this = &unk_282DC67B8;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = 24;
  while (1)
  {
    v5 = *(this + v4);
    if (v5)
    {
    }

    v4 -= 8;
    if (v4 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t vertexSort(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = *a1 + a1[1];
  v5 = *(v4 + v3 * *a2);
  v6 = *(v4 + v3 * *a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

float32x4_t __computeBindingSpaceAndOffset(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v25 = __invert_f4(a4);
  v11 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a6.f32, 1), v25.columns[0], a6.f32[0]), v25.columns[2], a6, 2));
  v12 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a8.f32, 1), v25.columns[0], a8.f32[0]), v25.columns[2], a8, 2));
  v23 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a5.f32, 1), v25.columns[0], a5.f32[0]), v25.columns[2], a5, 2));
  v25.columns[0] = vsubq_f32(vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a7.f32, 1), v25.columns[0], a7.f32[0]), v25.columns[2], a7, 2)), v11);
  v25.columns[2] = vsubq_f32(v12, v11);
  v25.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25.columns[0], v25.columns[0]), v25.columns[0], 0xCuLL), vnegq_f32(v25.columns[2])), v25.columns[0], vextq_s8(vuzp1q_s32(v25.columns[2], v25.columns[2]), v25.columns[2], 0xCuLL));
  v25.columns[1] = vextq_s8(vuzp1q_s32(v25.columns[3], v25.columns[3]), v25.columns[3], 0xCuLL);
  v13 = vmulq_f32(v25.columns[0], v25.columns[0]);
  v14 = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32)));
  v13.i32[0] = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32))).u32[0];
  v25.columns[0] = vmulq_n_f32(v25.columns[0], v13.f32[0]);
  v25.columns[3] = vmulq_f32(v25.columns[3], v25.columns[3]);
  v13.i64[0] = v13.u32[0];
  v13.f32[0] = v25.columns[3].f32[1] + (v25.columns[3].f32[2] + v25.columns[3].f32[0]);
  *v25.columns[3].f32 = vrsqrte_f32(*v13.f32);
  *v25.columns[3].f32 = vmul_f32(*v25.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32)));
  v25.columns[1] = vmulq_n_f32(v25.columns[1], vmul_f32(*v25.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32))).f32[0]);
  v25.columns[3] = vmulq_f32(v25.columns[2], v25.columns[2]);
  *&v15 = v25.columns[3].f32[2] + vaddv_f32(*v25.columns[3].f32);
  *v25.columns[3].f32 = vrsqrte_f32(v15);
  *v25.columns[3].f32 = vmul_f32(*v25.columns[3].f32, vrsqrts_f32(v15, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32)));
  v25.columns[2] = vmulq_n_f32(v25.columns[2], vmul_f32(*v25.columns[3].f32, vrsqrts_f32(v15, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32))).f32[0]);
  v16 = a2 + 36 * a1;
  v25.columns[3] = v25.columns[0];
  v25.columns[3].i32[3] = v25.columns[1].i32[0];
  *v16 = v25.columns[3];
  *(v16 + 16) = vextq_s8(vextq_s8(v25.columns[1], v25.columns[1], 0xCuLL), v25.columns[2], 8uLL);
  *(v16 + 32) = v25.columns[2].i32[2];
  v24 = __invert_f3(*v25.columns[0].f32);
  result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], v23.f32[0]), v24.columns[1], *v23.f32, 1), v24.columns[2], v23, 2);
  v18 = a3 + 12 * a1;
  *v18 = result.i64[0];
  *(v18 + 8) = result.i32[2];
  return result;
}

void C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs(uint64_t a1, size_t count, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, size_t *a24)
{
  v113[9] = *MEMORY[0x277D85DE8];
  v28 = count;
  v77 = count;
  if (a13 == a14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke;
    block[3] = &__block_descriptor_128_e8_v16__0Q8l;
    block[4] = a7;
    block[5] = a4;
    block[6] = a6;
    block[7] = a8;
    block[8] = a15;
    block[9] = a16;
    block[10] = a17;
    block[11] = a22;
    block[12] = a21;
    block[13] = a18;
    block[14] = a19;
    block[15] = a20;
    dispatch_apply(count, 0, block);
  }

  else
  {
    v108.i64[0] = 0;
    v108.i64[1] = &v108;
    v109.i64[0] = 0x2020000000;
    v109.i32[2] = 0;
    v79 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    ElementsCount = C3DMeshGetElementsCount(a3);
    if (ElementsCount <= 0)
    {
      v35 = v108.i64[1];
    }

    else
    {
      v30 = a8;
      v31 = 0;
      v32 = ElementsCount - 1;
      do
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(a3, v31, 0);
        C3DMeshElementGetContent(ElementAtIndex, a13, v112);
        C3DMeshElementGetContent(ElementAtIndex, a14, v113);
        v89.n128_u64[0] = MEMORY[0x277D85DD0];
        v89.n128_u64[1] = 3221225472;
        v90 = ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke_2;
        v91 = &unk_2782FFD48;
        v94 = a7;
        v95 = a4;
        v96 = a6;
        v97 = v30;
        v98 = a15;
        v99 = a16;
        v100 = a17;
        v101 = a22;
        v102 = a21;
        v103 = a18;
        v104 = a19;
        v105 = a20;
        v92 = &v108;
        v93 = v79;
        v106 = v28;
        C3DIndicesContentArrayEnumeratePrimitives(v112, 2, &v89, v34);
        v35 = v108.i64[1];
        if (*(v108.i64[1] + 24) == v28)
        {
          break;
        }
      }

      while (v32 != v31++);
    }

    if (*(v35 + 24) != v28)
    {
      __assert_rtn("C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs", "SCNGeometryWrapDeformerUtils.mm", 889, "doneIndicesCount == vertexCount");
    }

    free(v79);
    _Block_object_dispose(&v108, 8);
  }

  if (a1 == 1)
  {
    v37 = 16 * (3 * v28);
  }

  else if (a1)
  {
    v37 = 0;
  }

  else
  {
    v37 = 4 * (3 * v28);
  }

  v72 = v37;
  v38 = malloc_type_malloc(v37, 0x100004052888210uLL);
  if (v28)
  {
    v39 = 0;
    while (1)
    {
      if (a18)
      {
        v40 = *(a18 + (3 * v39));
        v41 = *(a18 + (3 * v39 + 1));
        v42 = *(a18 + (3 * v39 + 2));
      }

      else if (a19)
      {
        v40 = *(a19 + 2 * (3 * v39));
        v41 = *(a19 + 2 * (3 * v39 + 1));
        v42 = *(a19 + 2 * (3 * v39 + 2));
      }

      else if (a20)
      {
        v40 = *(a20 + 4 * (3 * v39));
        v41 = *(a20 + 4 * (3 * v39 + 1));
        v42 = *(a20 + 4 * (3 * v39 + 2));
      }

      else
      {
        v42 = 0;
        v41 = 0;
        v40 = 0;
      }

      if (a22)
      {
        v43 = (a22 + 4 * (v39 & 0x7FFFFFFF));
        v44.i32[0] = *v43;
        v44.i32[1] = v43[1];
        v45 = vdiv_f32(vcvt_f32_u32(v44), vdup_n_s32(0x477FFF00u));
      }

      else
      {
        v45 = *(a21 + 8 * (v39 & 0x7FFFFFFF));
      }

      *v86.f32 = v45;
      *v46.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v40);
      v83 = v46;
      *v47.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v41);
      v81 = v47;
      *v48.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v42);
      v87 = vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v81, *v86.f32, 1), v83, v86.f32[0]), v48, (1.0 - v86.f32[0]) - v86.f32[1]);
      v49 = vsubq_f32(v81, v83);
      v50 = vsubq_f32(v48, v83);
      v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vnegq_f32(v50)), v49, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
      v52 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
      v53 = vmulq_f32(v49, v49);
      *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
      *v53.f32 = vrsqrte_f32(v54);
      *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
      v55 = vmulq_n_f32(v49, vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).f32[0]);
      v56 = vmulq_f32(v51, v51);
      v51.f32[0] = v56.f32[1] + (v56.f32[2] + v56.f32[0]);
      *v56.f32 = vrsqrte_f32(v51.u32[0]);
      *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v56.f32, *v56.f32)));
      v82 = vmulq_n_f32(v52, vmul_f32(*v56.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v56.f32, *v56.f32))).f32[0]);
      v84 = v55;
      v57 = vmulq_f32(v50, v50);
      v52.f32[0] = v57.f32[2] + vaddv_f32(*v57.f32);
      *v57.f32 = vrsqrte_f32(v52.u32[0]);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v57.f32, *v57.f32)));
      v80 = vmulq_n_f32(v50, vmul_f32(*v57.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        *v58.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v39);
        v88 = vsubq_f32(vaddq_f32(a12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a10, *v58.f32, 1), a9, v58.f32[0]), a11, v58, 2)), v87);
        v114.columns[1] = v82;
        v114.columns[0] = v84;
        v114.columns[2] = v80;
        v115 = __invert_f3(v114);
        v115.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115.columns[0], v88.f32[0]), v115.columns[1], *v88.f32, 1), v115.columns[2], v88, 2);
        v38[(3 * v39)] = v115.columns[0].i32[0];
        v38[(3 * v39 + 1)] = v115.columns[0].i32[1];
        v59 = v115.columns[0].i32[2];
        v60 = 3 * v39 + 2;
LABEL_35:
        v38[v60] = v59;
      }

      if (++v39 == v77)
      {
        goto LABEL_37;
      }
    }

    v116.columns[1] = v82;
    v116.columns[0] = v55;
    v116.columns[0].i32[3] = 0;
    v116.columns[1].i32[3] = 0;
    v116.columns[2] = v80;
    v116.columns[2].i32[3] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v116.columns[3].i64[0] = v87.i64[0];
    v116.columns[3].i32[2] = v87.i32[2];
    v117 = __invert_f4(v116);
    v64 = 0;
    v108 = a9;
    v109 = a10;
    v110 = a11;
    v111 = a12;
    do
    {
      v112[v64 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117.columns[0], COERCE_FLOAT(*(&v108 + v64 * 4))), v117.columns[1], *&v108.f32[v64], 1), v117.columns[2], *(&v108 + v64 * 4), 2), v117.columns[3], *(&v108 + v64 * 4), 3);
      v64 += 4;
    }

    while (v64 != 16);
    v65 = v112[0];
    v66 = v112[1];
    v67 = v112[2];
    v68 = v112[3];
    v69 = 12 * v39;
    v38[v69] = v112[0].i32[0];
    v38[(12 * v39) | 1] = v66.i32[0];
    v38[(12 * v39) | 2] = v67.i32[0];
    v38[(12 * v39) | 3] = v68.i32[0];
    *&v70 = vtrn2q_s32(v65, v66).u64[0];
    *(&v70 + 1) = __PAIR64__(v68.u32[1], v67.u32[1]);
    *&v38[v69 + 4] = v70;
    *&v38[v69 + 8] = vzip1_s32(*&vextq_s8(v65, v65, 8uLL), *&vextq_s8(v66, v66, 8uLL));
    v38[v69 + 10] = v67.i32[2];
    v59 = v68.i32[2];
    v60 = 12 * v39 + 11;
    goto LABEL_35;
  }

LABEL_37:
  *a23 = v38;
  *a24 = v72;
}

void ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke(void *a1, uint64_t a2)
{
  DWORD2(v16) = 0;
  *&v16 = 0;
  DWORD2(v15) = 0;
  *&v15 = 0;
  DWORD2(v14) = 0;
  *&v14 = 0;
  ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(a1[4], a2);
  __bindToUV(a1[5], a1[7], a1[8], a1[9], &v15, &v14, &v16, ValueAtIndexAsVector2);
  v5 = a1[11];
  if (a1[10])
  {
    v6 = &v15;
  }

  else
  {
    v6 = &v14;
  }

  v7 = *v6;
  if (v5)
  {
    v8 = (v5 + 4 * a2);
    *v8 = (65535.0 * *&v7);
    v8[1] = vmuls_lane_f32(65535.0, *&v7, 1);
  }

  else
  {
    *(a1[12] + 8 * a2) = v7;
  }

  v9 = a1[13];
  if (v9)
  {
    *(v9 + 3 * a2) = v16;
    *(a1[13] + 3 * a2 + 1) = BYTE4(v16);
    *(a1[13] + 3 * a2 + 2) = BYTE8(v16);
  }

  else
  {
    v10 = a1[14];
    if (v10)
    {
      v11 = (v10 + 6 * a2);
      *v11 = v16;
      v11[1] = WORD2(v16);
      v11[2] = WORD4(v16);
    }

    else
    {
      v12 = a1[15];
      if (v12)
      {
        v13 = v12 + 12 * a2;
        *v13 = v16;
        *(v13 + 8) = DWORD2(v16);
      }
    }
  }
}

void __bindToUV(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7, double a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 2139095039;
  v52 = 0;
  v53 = &v52;
  v56 = 0;
  v54 = 0x3020000000;
  v55 = 0;
  v47 = 0;
  v48 = &v47;
  v51 = 0;
  v49 = 0x3020000000;
  v50 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3020000000;
  v46 = 0;
  v45 = 0;
  ElementsCount = C3DMeshGetElementsCount(a1);
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      if (*(v37 + 24) == 1)
      {
        break;
      }

      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
      C3DMeshElementGetContent(ElementAtIndex, a3, v40);
      C3DMeshElementGetContent(ElementAtIndex, a4, &v41);
      v21.n128_u64[0] = MEMORY[0x277D85DD0];
      v21.n128_u64[1] = 3221225472;
      v22 = ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke;
      v23 = &unk_2782FFDB8;
      v30 = a8;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v24 = &v36;
      v25 = v34;
      v26 = &v47;
      v27 = &v52;
      v28 = &v42;
      v29 = a2;
      C3DIndicesContentArrayEnumeratePrimitives(v40, 2, &v21, v18);
    }
  }

  v19 = v37;
  if (*(v37 + 24))
  {
    if ((v37[3] & 1) == 0)
    {
      __assert_rtn("__bindToUV", "SCNGeometryWrapDeformerUtils.mm", 302, "done");
    }
  }

  else
  {
    *a5 = *(v48 + 2);
    *a6 = *(v53 + 2);
    *a7 = *(v43 + 2);
    *(v19 + 24) = 1;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_21C0F3F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 256), 8);
  _Block_object_dispose((v29 - 208), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (a4)
  {
    v8 = 0;
    v9 = 2 * a4;
    while (1)
    {
      v10 = *(a3 + 4 * v8);
      v11 = *(a1 + 40);
      if (!*(v11 + 4 * v10))
      {
        v12 = *(a3 + 4 * (v8 + 1));
        *(v11 + 4 * v10) = 1;
        DWORD2(v23) = 0;
        *&v23 = 0;
        DWORD2(v22) = 0;
        *&v22 = 0;
        DWORD2(v21) = 0;
        *&v21 = 0;
        ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 48), v12);
        __bindToUV(*(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 88), &v22, &v21, &v23, ValueAtIndexAsVector2);
        v14 = *(a1 + 104);
        v15 = *(a1 + 96) ? &v22 : &v21;
        v16 = *v15;
        if (v14)
        {
          *(v14 + 2 * (2 * v10)) = (65535.0 * *&v16);
          *(v14 + 2 * ((2 * v10) | 1u)) = vmuls_lane_f32(65535.0, *&v16, 1);
        }

        else
        {
          *(*(a1 + 112) + 4 * (2 * v10)) = v16;
        }

        v17 = *(a1 + 120);
        if (v17)
        {
          v18 = (3 * v10);
          *(v17 + v18) = v23;
          *(*(a1 + 120) + (v18 + 1)) = BYTE4(v23);
          *(*(a1 + 120) + (v18 + 2)) = BYTE8(v23);
        }

        else
        {
          v19 = *(a1 + 128);
          if (v19)
          {
            *(v19 + 2 * (3 * v10)) = v23;
            *(v19 + 2 * (3 * v10 + 1)) = WORD2(v23);
            *(v19 + 2 * (3 * v10 + 2)) = WORD4(v23);
          }

          else
          {
            v20 = *(a1 + 136);
            if (v20)
            {
              *(v20 + 4 * (3 * v10)) = v23;
              *(v20 + 4 * (3 * v10 + 1)) = DWORD1(v23);
              *(v20 + 4 * (3 * v10 + 2)) = DWORD2(v23);
            }
          }
        }

        if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 144))
        {
          break;
        }
      }

      v8 += 2;
      if (v9 == v8)
      {
        return;
      }
    }

    *a5 = 1;
  }
}

void C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions(uint64_t a1, size_t iterations, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, size_t *a24, void **a25, void *a26, size_t *a27)
{
  v27 = iterations;
  v30 = a20;
  v29 = a21;
  v31 = a18;
  v32 = a19;
  v34 = a16;
  v33 = a17;
  if (a1 == 1)
  {
    v36 = 4 * (9 * iterations);
    *a24 = v36;
    v44 = a7;
    v45 = a8;
    v42 = a6;
    v43 = a4;
    v40 = a11;
    v41 = a12;
    v38 = a9;
    v39 = a10;
    *a22 = malloc_type_malloc(v36, 0x100004052888210uLL);
    *a23 = malloc_type_malloc(*a24, 0x100004052888210uLL);
    v37 = 12 * v27;
    *a27 = v37;
    *a25 = malloc_type_malloc(v37, 0x100004052888210uLL);
    v35 = malloc_type_malloc(*a27, 0x100004052888210uLL);
    v34 = a16;
    v33 = a17;
    v32 = a19;
    v30 = a20;
    v29 = a21;
    v31 = a18;
    a9 = v38;
    a10 = v39;
    a11 = v40;
    a12 = v41;
    a6 = v42;
    a4 = v43;
    a7 = v44;
    a8 = v45;
    goto LABEL_5;
  }

  if (!a1)
  {
    v35 = 0;
    *a24 = 0;
    *a22 = 0;
    *a23 = 0;
    *a27 = 0;
    *a25 = 0;
LABEL_5:
    *a26 = v35;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke;
  block[3] = &__block_descriptor_232_e8_v16__0Q8l;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a6;
  v52 = a4;
  v53 = a13;
  v54 = a7;
  v55 = a8;
  v56 = a15;
  v57 = v29;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = v33;
  v62 = v31;
  v63 = a1;
  v64 = a22;
  v65 = a25;
  v66 = a23;
  v67 = a26;
  dispatch_apply(v27, 0, block);
}

void ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  *v3.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 96), a2);
  v45 = v3;
  v41 = *(a1 + 64);
  v43 = *(a1 + 32);
  v37 = *(a1 + 48);
  v39 = *(a1 + 80);
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3020000000;
  v94 = 0;
  v93 = 0;
  v87 = 0;
  v88[0] = &v87;
  v89 = 0;
  v88[1] = 0x3020000000;
  v88[3] = 0;
  v84 = 0;
  v85[0] = &v84;
  v86 = 0;
  v85[1] = 0x3020000000;
  v85[3] = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 2139095039;
  v79 = 0;
  v80 = &v79;
  v83 = 0;
  v81 = 0x3020000000;
  v82 = 0;
  v74 = 0;
  v75 = &v74;
  v78 = 0;
  v76 = 0x3020000000;
  v77 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3020000000;
  v73 = 0;
  v72 = 0;
  ElementsCount = C3DMeshGetElementsCount(*(a1 + 104));
  v46 = vaddq_f32(v39, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v37, *v45.f32, 1), v43, v45.f32[0]), v41, v45, 2));
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      if (*(v66 + 24) == 1)
      {
        break;
      }

      ElementAtIndex = C3DMeshGetElementAtIndex(*(a1 + 104), i, 0);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      C3DMeshElementGetContent(ElementAtIndex, *(a1 + 112), &v59);
      v58[0] = v59;
      v58[1] = v60;
      v58[2] = v61;
      v58[3] = v62;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2;
      v47[3] = &unk_2782FFD70;
      v57 = *(a1 + 120);
      v48 = v46;
      v49 = &v65;
      v50 = &v87;
      v51 = &v84;
      v52 = &v90;
      v53 = v63;
      v54 = &v79;
      v55 = &v74;
      v56 = &v69;
      C3DIndicesContentEnumeratePrimitives(v58, v47, v46);
    }
  }

  v7 = v66;
  if (!*(v66 + 24))
  {
    *(v88[0] + 32) = *(v75 + 2);
    *(v85[0] + 32) = *(v80 + 2);
    *(v91 + 2) = *(v70 + 2);
    *(v7 + 24) = 1;
  }

  if (*(a1 + 136))
  {
    v8 = v88;
  }

  else
  {
    v8 = v85;
  }

  v44 = *(*v8 + 32);
  v9.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v91 + 8));
  v42 = v9;
  v10.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v91 + 9));
  v40 = v10;
  v11.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v91 + 10));
  v38 = v11;
  v12.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v91 + 8));
  v36 = v12;
  v13.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v91 + 9));
  v35 = v13;
  *v14.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v91 + 10));
  v15 = (1.0 - *&v44) - *(&v44 + 1);
  v33 = v14;
  v16 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v40, *&v44, 1), v42, *&v44), v38, v15), v46);
  v17 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v35, *&v44, 1), v36, *&v44), v14, v15), v46);
  v18 = vmulq_f32(v16, v16);
  v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
  v20 = vmulq_f32(v17, v17);
  v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  v22 = vmulq_f32(v16, v17);
  if ((v22.f32[2] + vaddv_f32(*v22.f32)) >= 0.0)
  {
    if (v19 < v21)
    {
      v24 = __adjustDistanceByAligningProjection(v46, v36, v35, v33, v16);
      v25 = v24 / (v19 + v24);
      goto LABEL_16;
    }

    v23 = v21 + __adjustDistanceByAligningProjection(v46, v42, v40, v38, v17);
  }

  else
  {
    v23 = v19 + v21;
  }

  v25 = v21 / v23;
LABEL_16:
  v26 = *(a1 + 152);
  *(*(a1 + 144) + 4 * a2) = v25;
  if (v26)
  {
    v27 = (v26 + 4 * a2);
    *v27 = (*&v44 * 65535.0);
    v27[1] = (*(&v44 + 1) * 65535.0);
  }

  else
  {
    *(*(a1 + 160) + 8 * a2) = v44;
  }

  v28 = *(a1 + 168);
  if (v28)
  {
    *(v28 + 3 * a2) = *(v91 + 2);
    *(*(a1 + 168) + 3 * a2 + 1) = *(v91 + 36);
    *(*(a1 + 168) + 3 * a2 + 2) = *(v91 + 40);
  }

  else
  {
    v29 = *(a1 + 176);
    if (v29)
    {
      v30 = (v29 + 6 * a2);
      *v30 = *(v91 + 2);
      v30[1] = *(v91 + 18);
      v30[2] = *(v91 + 20);
    }

    else
    {
      v31 = *(a1 + 184);
      if (v31)
      {
        v32 = (v31 + 12 * a2);
        *v32 = *(v91 + 8);
        v32[1] = *(v91 + 9);
        v32[2] = *(v91 + 10);
      }
    }
  }

  if (*(a1 + 192) == 1)
  {
    __computeBindingSpaceAndOffset(a2, **(a1 + 200), **(a1 + 208), *(a1 + 32), v46, v42, v40, v38);
    __computeBindingSpaceAndOffset(a2, **(a1 + 216), **(a1 + 224), *(a1 + 32), v46, v36, v35, v33);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v65, 8);
}

void sub_21C0F4990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v69 - 224), 8);
  _Block_object_dispose((v69 - 176), 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

BOOL ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2(float32x4_t *a1, uint64_t a2, unsigned int *a3, int a4, _BYTE *a5)
{
  if (a4 != 4)
  {
    ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2_cold_1();
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  *v10.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v6);
  v58 = v10;
  *v11.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v7);
  v57 = v11;
  *v12.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v8);
  v56 = v12;
  *v13.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v9);
  v49 = v13;
  *v14.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v6);
  v66 = v14;
  *v15.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v7);
  v64 = v15;
  *v16.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v8);
  v62 = v16;
  *v17.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v9);
  v18 = 0;
  v55 = vsubq_f32(v66, v58);
  v19 = vsubq_f32(v64, v57);
  v54 = v19;
  v51 = v7;
  v52 = v6;
  v19.i32[0] = v6;
  v20 = v19;
  v20.i32[1] = v7;
  v53 = vsubq_f32(v62, v56);
  v21 = v20;
  v21.i32[2] = v8;
  v20.i32[2] = v9;
  v45 = v20;
  v46 = v21;
  v48 = vsubq_f32(v17, v49);
  v50 = v8;
  v19.i32[1] = v8;
  v47 = v9;
  v19.i32[2] = v9;
  v44 = v19;
  while (1)
  {
    v22 = v18 * 0.025;
    v23 = a1[2];
    v60 = v22;
    v24 = (*(a1[3].i64[1] + 8) + 32);
    v25 = (*(a1[4].i64[0] + 8) + 32);
    v26 = (*(a1[4].i64[1] + 8) + 32);
    v27 = *(a1[5].i64[0] + 8);
    v28 = *(a1[5].i64[1] + 8);
    v29 = *(a1[6].i64[0] + 8);
    v30 = *(a1[6].i64[1] + 8);
    v70[0] = 0.0;
    v69.i32[2] = 0;
    v69.i64[0] = 0;
    v68.i32[2] = 0;
    v68.i64[0] = 0;
    v63 = vmlaq_n_f32(v57, v54, v22);
    v65 = vmlaq_n_f32(v58, v55, v22);
    v59 = vmlaq_n_f32(v56, v53, v22);
    v67 = v23;
    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v63, v59, v23))
    {
      v31 = 1;
      result = v52;
      v34 = v50;
      v33 = v51;
      goto LABEL_19;
    }

    v35 = v28 + 2;
    v36 = v29 + 2;
    v37 = v30 + 2;
    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v38 = v69;
      *v36 = v68;
      *v35 = v38;
      *v37 = v46;
    }

    v61 = vmlaq_n_f32(v49, v48, v60);
    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v63, v61, v67))
    {
      v31 = 1;
      result = v52;
      v33 = v51;
      goto LABEL_18;
    }

    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v39 = v69;
      *v36 = v68;
      *v35 = v39;
      *v37 = v45;
    }

    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v59, v61, v67))
    {
      v31 = 1;
      v40 = v52;
LABEL_17:
      result = v40;
      v33 = v50;
LABEL_18:
      v34 = v47;
LABEL_19:
      v42 = v69;
      *v24 = v68;
      *v25 = v42;
      v42.i64[0] = __PAIR64__(v33, result);
      v42.i32[2] = v34;
      *v26 = v42;
      goto LABEL_20;
    }

    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v41 = v69;
      *v36 = v68;
      *v35 = v41;
      *v37 = v44;
    }

    result = __computeBarycentricCoordinates3D(v70, &v68, &v69, v63, v59, v61, v67);
    if (result)
    {
      v31 = 1;
      v40 = v51;
      goto LABEL_17;
    }

    v31 = 0;
    if (v70[0] < *(v27 + 24))
    {
      v24 = v36;
      *(v27 + 24) = v70[0];
      v25 = v35;
      result = v51;
      v33 = v50;
      v34 = v47;
      v26 = v30 + 2;
      goto LABEL_19;
    }

LABEL_20:
    *(*(a1[3].i64[0] + 8) + 24) = v31;
    if (*(*(a1[3].i64[0] + 8) + 24) == 1)
    {
      break;
    }

    if (++v18 == 41)
    {
      return result;
    }
  }

  *a5 = 1;
  return result;
}

float __adjustDistanceByAligningProjection(float32x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  C3DPlaneMakeWithTriangle(v14, v15);
  v5 = vmulq_f32(a5, a5);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v13[0] = a1;
  v13[1] = vmulq_n_f32(a5, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v12.i32[2] = 0;
  v12.i64[0] = 0;
  if (!C3DIntersectionRay3Plane(v13, v14, &v12))
  {
    __adjustDistanceByAligningProjection();
  }

  v7 = vsubq_f32(v12, a1);
  v8 = vmulq_f32(v7, v7);
  return sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
}

uint64_t ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke(uint64_t a1, uint64_t a2, __int32 *a3, int a4, _BYTE *a5)
{
  if (a4 != 4)
  {
    ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke_cold_1();
  }

  v7 = *a3;
  v9 = a3[2];
  v8 = a3[3];
  v11 = a3[4];
  v10 = a3[5];
  v13 = a3[6];
  v12 = a3[7];
  ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), a3[1]);
  v15 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v8);
  v16 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v10);
  v17 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v12);
  v41.i32[2] = 0;
  v41.i64[0] = 0;
  v40.i32[2] = 0;
  v40.i64[0] = 0;
  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v15, *&v16, *(a1 + 80));
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i64[0] = __PAIR64__(v9, v7);
    v19.i32[2] = v11;
LABEL_18:
    **(a1 + 104) = v19;
    *a5 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return result;
  }

  v20 = v41;
  v21 = *(a1 + 80);
  v22 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v15, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v16, v41, 2), v21);
  v23 = vaddv_f32(vmul_f32(v22, v22));
  v24 = *(*(a1 + 40) + 8);
  if (v23 < *(v24 + 24))
  {
    *(v24 + 24) = v23;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v20;
    v20.i64[0] = __PAIR64__(v9, v7);
    v20.i32[2] = v11;
    *(*(*(a1 + 64) + 8) + 32) = v20;
    v21 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v15, *&v17, v21);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i64[0] = __PAIR64__(v9, v7);
LABEL_17:
    v19.i32[2] = v13;
    goto LABEL_18;
  }

  v25 = v41;
  v26 = *(a1 + 80);
  v27 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v15, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v17, v41, 2), v26);
  v28 = vaddv_f32(vmul_f32(v27, v27));
  v29 = *(*(a1 + 40) + 8);
  if (v28 < *(v29 + 24))
  {
    *(v29 + 24) = v28;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v25;
    v25.i64[0] = __PAIR64__(v9, v7);
    v25.i32[2] = v13;
    *(*(*(a1 + 64) + 8) + 32) = v25;
    v26 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v16, *&v17, v26);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i32[0] = v7;
LABEL_16:
    v19.i32[1] = v11;
    goto LABEL_17;
  }

  v30 = v41;
  v31 = *(a1 + 80);
  v32 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v17, v41, 2), v31);
  v33 = vaddv_f32(vmul_f32(v32, v32));
  v34 = *(*(a1 + 40) + 8);
  if (v33 < *(v34 + 24))
  {
    *(v34 + 24) = v33;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v30;
    v30.i64[0] = __PAIR64__(v11, v7);
    v30.i32[2] = v13;
    *(*(*(a1 + 64) + 8) + 32) = v30;
    v31 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&v15, *&v16, *&v17, v31);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i32[0] = v9;
    goto LABEL_16;
  }

  v35 = v41;
  v36 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v41.f32, 1), *&v15, v41.f32[0]), *&v17, v41, 2), *(a1 + 80));
  v37 = vaddv_f32(vmul_f32(v36, v36));
  v38 = *(*(a1 + 40) + 8);
  if (v37 < *(v38 + 24))
  {
    *(v38 + 24) = v37;
    HIDWORD(v39) = v40.i32[3];
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *&v39 = __PAIR64__(v11, v9);
    *(*(*(a1 + 56) + 8) + 32) = v35;
    DWORD2(v39) = v13;
    *(*(*(a1 + 64) + 8) + 32) = v39;
  }

  return result;
}

uint64_t __computeBarycentricCoordinates2D(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = vsub_f32(a4, a3);
  v9 = vsub_f32(a5, a3);
  v10 = vsub_f32(a6, a3);
  v11 = vmul_f32(v8, v8);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vmul_f32(v8, v9);
  *v6.i8 = vmul_f32(v9, v9);
  v14 = vmul_f32(v8, v10);
  v15 = vmul_f32(v9, v10);
  v16 = vadd_f32(vzip1_s32(v14, v13), vzip2_s32(v14, v13));
  v17 = vadd_f32(vzip1_s32(v15, *v6.i8), vzip2_s32(v15, *v6.i8));
  v18 = vmla_n_f32(vmul_n_f32(v16, -v16.f32[1]), v17, v12.f32[0]);
  v19 = vdup_lane_s32(v18, 0);
  v19.f32[0] = (-v16.f32[1] * v17.f32[0]) + (v17.f32[1] * v16.f32[0]);
  *v6.i8 = vdiv_f32(v19, vdup_lane_s32(v18, 1));
  *v7.i32 = (1.0 - *v6.i32) - *&v6.i32[1];
  v20 = vextq_s8(vextq_s8(v7, v7, 4uLL), v6, 0xCuLL);
  v21 = v20;
  v21.i32[3] = v20.i32[2];
  __asm { FMOV            V21.4S, #1.0 }

  v27 = vceqq_f32(vminq_f32(vmaxq_f32(v21, 0), _Q21), v20);
  v27.i32[3] = v27.i32[2];
  v28 = vminvq_u32(v27);
  if ((v28 & 0x80000000) != 0)
  {
    *a1 = v21;
    goto LABEL_29;
  }

  if (*v7.i32 < 0.0)
  {
    if (*v6.i32 < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_21C27F600;
      goto LABEL_29;
    }

    if (*&v6.i32[1] < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_21C27F8C0;
      goto LABEL_29;
    }

    v31 = vsub_f32(a5, a4);
    v32 = vmul_f32(v31, vsub_f32(a6, a4));
    v33 = vmul_f32(v31, v31);
    v34 = vadd_f32(vzip1_s32(v32, v33), vzip2_s32(v32, v33));
    v30 = vdiv_f32(v34, vdup_lane_s32(v34, 1)).f32[0];
    if (v30 >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = 1.0 - v30;
LABEL_28:
    v21.f32[2] = v30;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0 && *&v6.i32[1] < 0.0)
  {
    *a1 = v21;
    v21 = xmmword_21C27F910;
    goto LABEL_29;
  }

  if (*&v6.i32[1] >= 0.0)
  {
    if (*v6.i32 >= 0.0)
    {
      __computeBarycentricCoordinates2D();
    }

    v30 = v17.f32[0] / v17.f32[1];
    if ((v17.f32[0] / v17.f32[1]) >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[1] = 0;
    v21.i32[3] = 0;
    v21.f32[0] = 1.0 - v30;
    goto LABEL_28;
  }

  v29 = vdiv_f32(v16, v12).f32[0];
  if (v29 >= 1.0)
  {
    v29 = 1.0;
  }

  if (v29 <= 0.0)
  {
    v29 = 0.0;
  }

  *a1 = v21;
  v21.i64[1] = 0;
  v21.f32[0] = 1.0 - v29;
  v21.f32[1] = v29;
LABEL_29:
  *a2 = v21;
  return v28 >> 31;
}

BOOL __computeBarycentricCoordinates3D(float *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = vsubq_f32(a5, a4);
  v11 = vsubq_f32(a6, a4);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v11)), v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v10)), v15, v13);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmulq_f32(v10, v10);
  v19 = vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  v21 = vmul_f32(v20, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v10, vmul_f32(v21, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v16, v16);
  *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v25 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v26 = vmulq_f32(a7, v22);
  v27 = vmulq_f32(a7, v25);
  v28 = vmlaq_n_f32(vmulq_n_f32(v25, v27.f32[2] + vaddv_f32(*v27.f32)), v22, v26.f32[2] + vaddv_f32(*v26.f32));
  v29 = vmulq_f32(v10, v22);
  v30 = vmulq_f32(v10, v25);
  *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
  v31 = vmulq_f32(v11, v22);
  v32 = vmulq_f32(v11, v25);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vsubq_f32(v28, a4);
  v34 = vmulq_f32(v22, v33);
  v35 = vmulq_f32(v25, v33);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  __computeBarycentricCoordinates2D(&v46, &v45, 0, *v30.i8, *v31.i8, vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8))));
  v36 = v45;
  v37 = vsubq_f32(a7, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *v45.f32, 1), a4, v45.f32[0]), a6, v45, 2));
  v38 = vmulq_f32(v37, v37);
  v39 = vaddv_f32(*v38.f32);
  *a1 = v38.f32[2] + v39;
  *a2 = v46;
  *a3 = v36;
  return (v38.f32[2] + v39) == 0.0;
}

uint64_t C3DMeshCreatePlaneWithOffset(int a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v149 = *MEMORY[0x277D85DE8];
  v13 = fabs(a5) * 0.5;
  v14 = fabs(a6);
  if (v13 >= v14 * 0.5)
  {
    if (v14 * 0.5 <= a7)
    {
      a7 = v14 * 0.5;
    }
  }

  else if (v13 <= a7)
  {
    a7 = v13;
  }

  if (a4 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a4;
  }

  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a2;
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  v18 = a5;
  v19 = a6;
  v20 = a7;
  PlaneMeshSource = __CreatePlaneMeshSource(0, v16, v17, v15, v18, v19, v20, a8, a9);
  values = PlaneMeshSource;
  v22 = a7;
  v147 = __CreatePlaneMeshSource(1, v16, v17, v15, v18, v19, v22, a8, a9);
  v23 = a7;
  v148 = __CreatePlaneMeshSource(3, v16, v17, v15, v18, v19, v23, a8, a9);
  v24 = C3DMeshElementCreate();
  v145 = v24;
  C3DMeshElementSetType(v24, a1);
  if (a1 == 3)
  {
    Count = C3DMeshSourceGetCount(PlaneMeshSource);
    v30 = Count;
    v62 = 1;
    if (Count >= 0x10000)
    {
      v62 = 2;
    }

    v46 = Count << v62;
    v63 = malloc_type_malloc(Count << v62, 0xD0ED3380uLL);
    v35 = v63;
    if (v30 >= 0x10000)
    {
      v64 = 4;
    }

    else
    {
      v64 = 2;
    }

    if (v30 < 0x10000)
    {
      if (v30 < 1)
      {
        v64 = 2;
      }

      else
      {
        v65 = 0;
        v66 = vdupq_n_s64(v30 - 1);
        v67 = xmmword_21C2A1A00;
        v68 = xmmword_21C2A1A10;
        v69 = xmmword_21C27F630;
        v70 = xmmword_21C27F640;
        v71 = v63 + 8;
        v72 = vdupq_n_s64(8uLL);
        do
        {
          v73 = vmovn_s64(vcgeq_u64(v66, v70));
          if (vuzp1_s8(vuzp1_s16(v73, *v66.i8), *v66.i8).u8[0])
          {
            *(v71 - 4) = v65;
          }

          if (vuzp1_s8(vuzp1_s16(v73, *&v66), *&v66).i8[1])
          {
            *(v71 - 3) = v65 | 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v69))), *&v66).i8[2])
          {
            *(v71 - 2) = v65 | 2;
            *(v71 - 1) = v65 | 3;
          }

          v74 = vmovn_s64(vcgeq_u64(v66, v68));
          if (vuzp1_s8(*&v66, vuzp1_s16(v74, *&v66)).i32[1])
          {
            *v71 = v65 | 4;
          }

          if (vuzp1_s8(*&v66, vuzp1_s16(v74, *&v66)).i8[5])
          {
            v71[1] = v65 | 5;
          }

          if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, *&v67)))).i8[6])
          {
            v71[2] = v65 | 6;
            v71[3] = v65 | 7;
          }

          v65 += 8;
          v68 = vaddq_s64(v68, v72);
          v69 = vaddq_s64(v69, v72);
          v70 = vaddq_s64(v70, v72);
          v67 = vaddq_s64(v67, v72);
          v71 += 8;
        }

        while (((v30 + 7) & 0xFFFFFFFFFFFFFFF8) != v65);
      }
    }

    else
    {
      v87 = 0;
      v88 = vdupq_n_s64(v30 - 1);
      v89 = xmmword_21C27F630;
      v90 = xmmword_21C27F640;
      v91 = v63 + 8;
      v92 = vdupq_n_s64(4uLL);
      do
      {
        v93 = vmovn_s64(vcgeq_u64(v88, v90));
        if (vuzp1_s16(v93, *v88.i8).u8[0])
        {
          *(v91 - 2) = v87;
        }

        if (vuzp1_s16(v93, *&v88).i8[2])
        {
          *(v91 - 1) = v87 + 1;
        }

        if (vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, *&v89))).i32[1])
        {
          *v91 = v87 + 2;
          v91[1] = v87 + 3;
        }

        v87 += 4;
        v89 = vaddq_s64(v89, v92);
        v90 = vaddq_s64(v90, v92);
        v91 += 4;
      }

      while (((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v87);
    }
  }

  else
  {
    v25 = v16 + 1;
    v26 = (v17 + 1) * (v16 + 1);
    v27 = v15 + v16;
    v28 = v15 + v16 + v26;
    if (a1 == 2)
    {
      v115 = v15 + v16 + v26;
      v117 = (v17 + 1) * (v16 + 1);
      v119 = v15 + v17 + v28;
      if (a7 > 0.0)
      {
        v30 = 8 * v15 + 4 * (v17 + 1 + v25) + v17 + v16 + 2 * v17 * v16 - 8;
      }

      else
      {
        v30 = v17 + v16 + 2 * v17 * v16;
      }

      v44 = 2 * v30;
      v45 = 1;
      if (v30 >= 0x8000)
      {
        v45 = 2;
      }

      v46 = v44 << v45;
      v47 = malloc_type_malloc(v44 << v45, 0x100004077774924uLL);
      v35 = v47;
      if (v30 >= 0x8000)
      {
        v48 = 4;
      }

      else
      {
        v48 = 2;
      }

      v120 = v48;
      v49 = 0;
      if (v30 < 0x8000)
      {
        v141 = 0;
        v142 = &v141;
        v143 = 0x2000000000;
        v144 = v47;
        v50 = v16 + 2;
        v51 = 1;
        v52 = v47;
        do
        {
          ++v49;
          v53 = v51;
          v54 = v50;
          v55 = v16;
          do
          {
            *v52 = v53 - 1;
            *(v142[3] + 2) = v53;
            *(v142[3] + 4) = v53;
            *(v142[3] + 6) = v54;
            v52 = (v142[3] + 8);
            v142[3] = v52;
            ++v54;
            ++v53;
            --v55;
          }

          while (v55);
          v50 += v25;
          v51 += v25;
        }

        while (v49 != v17);
        v56 = 0;
        v57 = v17;
        do
        {
          *v52 = v56;
          v56 += v25;
          *(v142[3] + 2) = v56;
          v52 = (v142[3] + 4);
          v142[3] = v52;
          --v57;
        }

        while (v57);
        v58 = v17 * (v16 + 1);
        v59 = v16;
        do
        {
          *v52 = v58;
          *(v142[3] + 2) = v58 + 1;
          v52 = (v142[3] + 4);
          v142[3] = v52;
          ++v58;
          --v59;
        }

        while (v59);
        if (a7 > 0.0)
        {
          v126[0] = MEMORY[0x277D85DD0];
          v126[1] = 0x40000000;
          v127 = __C3DMeshCreatePlaneWithOffset_block_invoke_3;
          v128 = &unk_2782FFE30;
          v129 = &v141;
          v130 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_3(v126, 0, v117, v16, 1);
          v127(v126, v16, v115, v17, v16 + 1);
          v60 = v17 * (v16 + 1);
          v127(v126, v60 + v16, v119, v16, -1);
          v127(v126, v60, v15 + v16 + v119, v17, ~v16);
          *(v142[3] - 2) = v117;
        }
      }

      else
      {
        v141 = 0;
        v142 = &v141;
        v143 = 0x2000000000;
        v144 = v47;
        v75 = v16 + 2;
        v76 = v16 + 1;
        v77 = 1;
        v78 = v47;
        do
        {
          ++v49;
          v79 = v77;
          v80 = v75;
          v81 = v16;
          do
          {
            *v78 = v79 - 1;
            *(v142[3] + 4) = v79;
            *(v142[3] + 8) = v79;
            *(v142[3] + 12) = v80;
            v78 = (v142[3] + 16);
            v142[3] = v78;
            ++v80;
            ++v79;
            --v81;
          }

          while (v81);
          v75 += v76;
          v77 += v76;
        }

        while (v49 != v17);
        v82 = 0;
        v83 = v17;
        do
        {
          *v78 = v82;
          v82 += v16 + 1;
          *(v142[3] + 4) = v82;
          v78 = (v142[3] + 8);
          v142[3] = v78;
          --v83;
        }

        while (v83);
        v84 = v17 + v17 * v16;
        v85 = v16;
        do
        {
          *v78 = v84++;
          *(v142[3] + 4) = v84;
          v78 = (v142[3] + 8);
          v142[3] = v78;
          --v85;
        }

        while (v85);
        if (a7 > 0.0)
        {
          v121[0] = MEMORY[0x277D85DD0];
          v121[1] = 0x40000000;
          v122 = __C3DMeshCreatePlaneWithOffset_block_invoke_4;
          v123 = &unk_2782FFE58;
          v124 = &v141;
          v125 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_4(v121, 0, v117, v16, 1);
          v122(v121, v16, v115, v17, v16 + 1);
          v86 = v17 * (v16 + 1);
          v122(v121, v86 + v16, v119, v16, -1);
          v122(v121, v86, v15 + v16 + v119, v17, ~v16);
          *(v142[3] - 4) = v117;
        }
      }

      _Block_object_dispose(&v141, 8);
    }

    else
    {
      if (a1)
      {
        LODWORD(v30) = 0;
        v35 = 0;
        v46 = 0;
        v64 = 0;
        goto LABEL_102;
      }

      v114 = v15 + v16 + v26;
      v116 = (v17 + 1) * (v16 + 1);
      v118 = v15 + v17 + v28;
      v29 = 4 * (v27 + v17);
      if (a7 <= 0.0)
      {
        v29 = 0;
      }

      v112 = v17 * v16;
      v30 = v29 + 2 * v17 * v16;
      v31 = 3 * v30;
      if (v30 >= 21846)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }

      v120 = v32;
      v33 = 1;
      if (v30 >= 21846)
      {
        v33 = 2;
      }

      v113 = v31 << v33;
      v34 = malloc_type_malloc(v31 << v33, 0x100004077774924uLL);
      v35 = v34;
      if (v30 > 21845)
      {
        v94 = 0;
        v141 = 0;
        v142 = &v141;
        v143 = 0x2000000000;
        v144 = v34;
        v95 = v16 + 1;
        v96 = 1;
        v97 = v16 + 1;
        v98 = v34;
        do
        {
          ++v94;
          v99 = v96;
          v100 = v16;
          v101 = v97;
          do
          {
            *v98 = v99 - 1;
            *(v142[3] + 4) = v99;
            *(v142[3] + 8) = v101 + 1;
            *(v142[3] + 12) = v99 - 1;
            v102 = v142;
            v103 = v142[3];
            v103[4] = v101 + 1;
            v103[5] = v101;
            v98 = (v103 + 6);
            v102[3] = v98;
            ++v99;
            ++v101;
            --v100;
          }

          while (v100);
          v97 += v95;
          v96 += v95;
        }

        while (v94 != v17);
        if (a7 > 0.0)
        {
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 0x40000000;
          v132 = __C3DMeshCreatePlaneWithOffset_block_invoke_2;
          v133 = &unk_2782FFE08;
          v134 = &v141;
          v135 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_2(v131, 0, v116, v16, 1);
          *&v35[24 * v112 + 4] = C3DMeshSourceGetCount(PlaneMeshSource) - 1;
          v132(v131, v16, v114, v17, v16 + 1);
          v104 = v17 * (v16 + 1);
          v132(v131, v104 + v16, v118, v16, -1);
          v132(v131, v104, v27 + v118, v17, ~v16);
        }
      }

      else
      {
        v36 = 0;
        v141 = 0;
        v142 = &v141;
        v143 = 0x2000000000;
        v144 = v34;
        v37 = 1;
        v38 = v16 + 1;
        v39 = v34;
        do
        {
          ++v36;
          v40 = v37;
          v41 = v16;
          v42 = v38;
          do
          {
            *v39 = v40 - 1;
            *(v142[3] + 2) = v40;
            *(v142[3] + 4) = v42 + 1;
            *(v142[3] + 6) = v40 - 1;
            *(v142[3] + 8) = v42 + 1;
            *(v142[3] + 10) = v42;
            v39 = (v142[3] + 12);
            v142[3] = v39;
            ++v40;
            ++v42;
            --v41;
          }

          while (v41);
          v38 += v25;
          v37 += v25;
        }

        while (v36 != v17);
        if (a7 > 0.0)
        {
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 0x40000000;
          v137 = __C3DMeshCreatePlaneWithOffset_block_invoke;
          v138 = &unk_2782FFDE0;
          v139 = &v141;
          v140 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke(v136, 0, v116, v16, 1);
          *&v35[12 * v112 + 2] = C3DMeshSourceGetCount(PlaneMeshSource) - 1;
          v137(v136, v16, v114, v17, v16 + 1);
          v43 = v17 * (v16 + 1);
          v137(v136, v43 + v16, v118, v16, -1);
          v137(v136, v43, v27 + v118, v17, ~v16);
        }
      }

      _Block_object_dispose(&v141, 8);
      v46 = v113;
    }

    v64 = v120;
  }

LABEL_102:
  v105 = *MEMORY[0x277CBECE8];
  v106 = CFDataCreate(*MEMORY[0x277CBECE8], v35, v46);
  C3DMeshElementSetPrimitives(v24, v30, v106, v64);
  CFRelease(v106);
  free(v35);
  BYTE2(v141) = 0;
  LOWORD(v141) = 0;
  v107 = MEMORY[0x277CBF128];
  v108 = CFArrayCreate(v105, &values, 3, MEMORY[0x277CBF128]);
  v109 = CFArrayCreate(v105, &v145, 1, v107);
  v110 = C3DMeshCreateWithMeshSourcesAndMeshElements(v108, v109, &v141);
  CFRelease(v109);
  CFRelease(v108);
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v147)
  {
    CFRelease(v147);
    v147 = 0;
  }

  if (v148)
  {
    CFRelease(v148);
    v148 = 0;
  }

  if (v145)
  {
    CFRelease(v145);
  }

  return v110;
}

uint64_t __CreatePlaneMeshSource(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, double a8, double a9)
{
  v69 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  v16 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = a5 + (a7 * -2.0);
  v35 = a6 + (a7 * -2.0);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a2;
    while (a2 < 0)
    {
LABEL_16:
      if (v20++ >= a3)
      {
        goto LABEL_17;
      }
    }

    v22 = (v35 * v20) / a3;
    *&v23 = 1.0 - ((v22 + a7) / a6);
    *&v24 = a9 + v35 * -0.5 + v22;
    v36 = v24;
    v37 = v23;
    v25 = -1;
    while (1)
    {
      if (a1 == 3)
      {
        *bytes = (((v19 * (v25 + 1)) / v21) + a7) / a5;
        v27 = v37;
        goto LABEL_14;
      }

      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        v26 = a8 + v19 * -0.5 + ((v19 * (v25 + 1)) / v21);
        *bytes = v26;
        v27 = v36;
LABEL_14:
        v68 = v27;
      }

      ++*(v64 + 6);
      CFDataAppendBytes(Mutable, bytes, (4 * v18));
      if (++v25 >= a2)
      {
        goto LABEL_16;
      }
    }

    *bytes = 0.0;
    v27 = 0x3F80000000000000;
    goto LABEL_14;
  }

LABEL_17:
  if (a7 > 0.0)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 0x40000000;
    v50 = ____CreatePlaneMeshSource_block_invoke;
    v51 = &unk_2782FFE80;
    v62 = a1;
    v29 = 1.57079633 / a4;
    v57 = a7;
    v58 = v29;
    v54 = a8;
    v55 = a9;
    v59 = a5;
    v60 = a6;
    v52 = &v63;
    v53 = a4;
    v56 = Mutable;
    v61 = v18;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v39 = ____CreatePlaneMeshSource_block_invoke_2;
    v40 = &unk_2782FFEA8;
    v48 = a1;
    v42 = a8;
    v43 = a9;
    v45 = a5;
    v46 = a6;
    v41 = &v63;
    v44 = Mutable;
    v47 = v18;
    ____CreatePlaneMeshSource_block_invoke(v49, -3.14159265, v19 * -0.5, v35 * -0.5);
    (____CreatePlaneMeshSource_block_invoke_2)(v38, v19 * -0.5, a6 * -0.5, v19, 0.0);
    v50(v49, -1.57079633, v19 * 0.5, v35 * -0.5);
    (v39)(v38, a5 * 0.5, v35 * -0.5, 0.0, v35);
    v50(v49, 0.0, v19 * 0.5, v35 * 0.5);
    v39(v38, v19 * 0.5, a6 * 0.5, -v19, 0.0, a2);
    v50(v49, 1.57079633, v19 * -0.5, v35 * 0.5);
    v39(v38, a5 * -0.5, v35 * 0.5, 0.0, -v35, a3);
  }

  Copy = CFDataCreateCopy(v16, Mutable);
  v31 = C3DMeshSourceCreate(Copy, a1, *(v64 + 6), v18, 1);
  CFRelease(Mutable);
  CFRelease(Copy);
  _Block_object_dispose(&v63, 8);
  return v31;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6;
      *(*(*(result + 32) + 8) + 24) += 6;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 10) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v8 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v8;
      a2 += a5;
      *(*(*(*(result + 32) + 8) + 24) + 8) = a2;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_2(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v6;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = a5 + a2;
    v9 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 20) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v9 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 16) = v8;
      *(*(*(result + 32) + 8) + 24) += 24;
      v8 += a5;
      ++v9;
      a2 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v7 + 1;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 + 0xFFFF;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_4(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7++;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v7;
      *(*(*(result + 32) + 8) + 24) += 16;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 - 1;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v8;
      *(*(*(result + 32) + 8) + 24) += 16;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

C3D::DrawNodesPass *C3D::ScenePass::ScenePass(C3D::ScenePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4, const Parameters *a5)
{
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, a5);
  *result = &unk_282DC67D8;
  v7 = *&a4->var0;
  *(result + 2682) = *&a4->var4;
  *(result + 1340) = v7;
  *(result + 671) = 0;
  *(result + 673) = 0;
  *(result + 672) = 0;
  *(result + 680) = result;
  return result;
}

const char *C3D::ScenePass::name(C3D::ScenePass *this, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(this + 30))
  {
    return C3D::DrawNodesPass::name(this, a2, a3, a4);
  }

  else
  {
    return "ScenePass";
  }
}

void C3D::ScenePass::setup(C3D::ScenePass *this)
{
  v114 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  PointOfView = C3DEngineContextGetPointOfView(*(this + 2));
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
  }

  else
  {
    Camera = 0;
  }

  v5 = (*(**(this + 1) + 88))(*(this + 1));
  v7 = v5[1];
  v6 = v5[2];
  *(this + 337) = *v5;
  *(this + 338) = v7;
  *(this + 339) = v6;
  *(this + 296) = 1;
  *(this + 303) = 1;
  if (Camera)
  {
    if (C3DCameraGetScreenSpaceAmbientOcclusionIntensity(Camera) > 0.0)
    {
      *(this + 149) |= 0x10u;
    }

    v8 = C3DCameraGetARGrainTexture(Camera) != 0;
    LODWORD(Camera) = C3DCameraGetWantsHDR(Camera);
  }

  else
  {
    v8 = 0;
  }

  v9 = vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(this + 149)), 0xFFF9FFF8FFFDFFFELL), 0x1000100010001)) + ((*(this + 149) >> 1) & 1) + 2;
  C3D::Pass::setOutputCount(this, v9);
  v10 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v10 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, buf);
  *(v10 + 16) = *buf;
  *(v10 + 32) = v113;
  *(v10 + 65) = 0;
  *(v10 + 66) = *(v10 + 66) & 0xFFFC | 2;
  if (Camera)
  {
    *(this + 677) = 115;
    *(v10 + 28) = 115;
  }

  if (v8 || [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
  {
    if ([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
    {
      *(v10 + 66) |= 0x40u;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(this + 303) = 0;
    }

    v11 = [(SCNMTLRenderContext *)RenderContext sampleCount];
    v12 = *(v10 + 28);
    if (v12 == 554)
    {
      v13 = v11 <= 1;
      v12 = 550;
      v14 = 115;
    }

    else
    {
      if (v12 != 555)
      {
LABEL_22:
        *(this + 677) = v12;
        goto LABEL_23;
      }

      v13 = v11 <= 1;
      v12 = 551;
      v14 = 553;
    }

    if (!v13)
    {
      v12 = v14;
    }

    *(v10 + 28) = v12;
    goto LABEL_22;
  }

LABEL_23:
  v15 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v15 + 64) = 2;
  *(v15 + 8) = "DEPTH";
  C3D::Pass::parentDepthDesc(this, buf);
  *(v15 + 16) = *buf;
  *(v15 + 32) = v113;
  *(v15 + 66) = *(v15 + 66) & 0xFFF4 | 0xA;
  v16 = *(this + 149);
  if ((v16 & 2) != 0)
  {
    v18 = C3D::PassDescriptor::outputAtIndex((this + 32), 2u);
    *(v18 + 8) = "Normals";
    *(v18 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
    *(v18 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
    *(v18 + 28) = 115;
    *(v18 + 65) = 2;
    *(v18 + 66) = *(v18 + 66) & 0xFFFC | 2;
    v16 = *(this + 149);
    v17 = 3;
    if ((v16 & 8) == 0)
    {
LABEL_25:
      if ((v16 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v17 = 2;
    if ((v16 & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  v19 = C3D::PassDescriptor::outputAtIndex((this + 32), v17);
  *(v19 + 8) = "VELOCITY";
  *(v19 + 65) = 3;
  *(v19 + 28) = 115;
  *(v19 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  ++v17;
  *(v19 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v19 + 66) = *(v19 + 66) & 0xFFBC | 0x42;
  *(v19 + 48) = xmmword_21C2A2780;
  v16 = *(this + 149);
  if ((v16 & 4) == 0)
  {
LABEL_26:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = C3D::PassDescriptor::outputAtIndex((this + 32), v17);
  *(v20 + 8) = "ReflectanceRoughness";
  *(v20 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  ++v17;
  *(v20 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v20 + 28) = 115;
  *(v20 + 65) = 4;
  *(v20 + 66) = *(v20 + 66) & 0xFFFC | 2;
  v16 = *(this + 149);
  if ((v16 & 0x100) == 0)
  {
LABEL_27:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  v21 = C3D::PassDescriptor::outputAtIndex((this + 32), v17);
  *(v21 + 8) = "Radiance";
  *(v21 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  ++v17;
  *(v21 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v21 + 28) = 115;
  *(v21 + 65) = 5;
  *(v21 + 66) = *(v21 + 66) & 0xFFFC | 2;
  if ((*(this + 149) & 0x80) != 0)
  {
LABEL_33:
    v22 = C3D::PassDescriptor::outputAtIndex((this + 32), v17);
    *(v22 + 8) = "COLOR1";
    *(v22 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
    *(v22 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
    *(v22 + 28) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28);
    *(v22 + 65) = 1;
    *(v22 + 66) = *(v22 + 66) & 0xFFFC | 2;
  }

LABEL_34:
  if ([(SCNMTLRenderContext *)RenderContext sampleCount]>= 2)
  {
    v23 = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 24);
    if (!SCNMTLTextureTypeIsMultisampled(v23))
    {
      v24 = SCNMTLTextureTypeMultisampledEquivalent(v23);
      LOWORD(v25) = 0;
      do
      {
        *(C3D::PassDescriptor::outputAtIndex((this + 32), v25) + 24) = v24;
        v26 = [(SCNMTLRenderContext *)RenderContext sampleCount];
        *(C3D::PassDescriptor::outputAtIndex((this + 32), v25) + 31) = v26;
        v25 = (v25 + 1);
      }

      while (v25 < v9);
    }
  }

  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 2));
  C3DStackAllocatorPushFrame(StackAllocator);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v111, StackAllocator);
  *(this + 671) = v111;
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v110, StackAllocator);
  *(this + 672) = v110;
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(&v108, StackAllocator);
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = &v108;
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v103, StackAllocator);
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v102[3] = v103;
  if (*(v10 + 24) == 5)
  {
    v28 = [(SCNMTLRenderContext *)RenderContext features];
    *(this + 117) = (v28 & 0x20) != 0;
    if ((v28 & 0x20) != 0)
    {
      PreferredMultiVertexOutputStreamGenerator = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    else
    {
      PreferredMultiVertexOutputStreamGenerator = 0;
    }

    *(this + 118) = PreferredMultiVertexOutputStreamGenerator;
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) > 1 || [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor])
  {
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(*(this + 2));
    *(this + 117) = PreferredRenderMode;
    if (PreferredRenderMode)
    {
      LOBYTE(PreferredRenderMode) = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    *(this + 118) = PreferredRenderMode;
    *(this + 120) = 1;
  }

  C3D::DrawNodesPass::setup(this);
  Scene = C3DEngineContextGetScene(*(this + 2));
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  v33 = *(this + 633);
  v34 = *(this + 634);
  C3DLightingSystemSetMainRenderingFrustums(LightingSystem, this + 21, v33, v34, *(this + 4948), this + 57, this + 189);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  C3D::RenderGraph::getSuccessors(*(this + 3), this, StackAllocator, v95);
  v35 = *(this + 2);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = ___ZN3C3D9ScenePass5setupEv_block_invoke;
  v94[3] = &unk_2782FFED0;
  v94[4] = &v98;
  v94[5] = &v104;
  v94[6] = v102;
  v94[7] = this;
  C3DLightingSystemEnumerateGlobalLights(LightingSystem, v35, v94);
  *(this + 673) = CreateProbeArrayResourceIfNeeded(this, v105[3]);
  v37 = v99[3];
  if (v37)
  {
    *(this + 680) = v37;
    if (v96)
    {
      v38 = v97;
      v39 = 8 * v96;
      do
      {
        v40 = *v38;
        C3D::RenderGraph::removeDependency(*(this + 3), *v38, this);
        C3D::RenderGraph::addDependency(*(this + 3), v40, v99[3]);
        ++v38;
        v39 -= 8;
      }

      while (v39);
    }
  }

  if (C3D::SSAOPassesCreateIfNeeded(*(this + 3), this, v36))
  {
    v41 = (*(*this + 88))(this);
    C3D::PassIODescriptor::PassIODescriptor(buf, *(v41 + 32));
    *&buf[8] = "SSAO-Final";
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, buf);
  }

  v42 = *(this + 671);
  v43 = *(v42 + 8);
  if (v43)
  {
    v44 = *(v42 + 16);
    v45 = 8 * v43;
    do
    {
      v46 = *v44;
      v47 = C3D::FloorPass::mirrorNode(*v44);
      Floor = C3DNodeGetFloor(v47);
      if (C3DFloorGetReflectivity(Floor) > 0.0)
      {
        C3D::Pass::addDependency(this, *(v46 + 680));
        v49 = C3D::Pass::descriptor(*(v46 + 680));
        v50 = C3D::PassDescriptor::outputAtIndex(v49, 0);
        C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v50);
        *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v108) + 24) = 2;
        *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v108) + 31) = 0;
        if (C3DFloorGetReflectionFalloffEnd(Floor) != 0.0)
        {
          v51 = C3D::Pass::descriptor(v46);
          v52 = C3D::PassDescriptor::outputAtIndex(v51, 1u);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v52);
          *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v108) + 24) = 2;
          *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v108) + 31) = 0;
        }
      }

      ++v44;
      v45 -= 8;
    }

    while (v45);
  }

  v53 = *(this + 672);
  v54 = *(v53 + 8);
  if (v54 >= 2)
  {
    v55 = 0;
    v56 = v54 >> 1;
    v57 = v54 - 1;
    do
    {
      v58 = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](*(this + 672), v55);
      v59 = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](*(this + 672), v57);
      v60 = *v58;
      *v58 = *v59;
      *v59 = v60;
      ++v55;
      --v57;
    }

    while (v56 != v55);
    v53 = *(this + 672);
    v54 = *(v53 + 8);
  }

  if (v54)
  {
    v61 = 0;
    v62 = 0;
    v63 = *(v53 + 16);
    v64 = 8 * v54;
    do
    {
      v65 = *v63;
      v92 = this;
      v93 = v65;
      v66 = C3D::RenderGraph::createPass<C3D::CIFilterPass,C3D::ScenePass *,__C3DNode *&>(*(this + 3), &v92, &v93);
      if (v61)
      {
        if (C3DNodeIsAncestor(v61, v93))
        {
          if (!v62)
          {
            v67 = scn_default_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              C3D::ScenePass::setup(buf, &buf[4], v67);
            }
          }

          C3D::Pass::addDependency(v66[16], v62);
          C3D::Pass::addDependency(v66[16], v62[16]);
        }

        else
        {
          C3D::Pass::addDependency(this, v62);
          C3D::Pass::addDependency(this, v62[16]);
          v68 = C3D::Pass::descriptor(v62);
          v69 = C3D::PassDescriptor::outputAtIndex(v68, 0);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v69);
          v70 = C3D::Pass::descriptor(v62[16]);
          v71 = C3D::PassDescriptor::outputAtIndex(v70, 1u);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v71);
        }
      }

      EnginePipeline = C3DSceneGetEnginePipeline(Scene);
      RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
      RendererElementSpan = C3DNodeGetRendererElementSpan(v93);
      ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(RendererElementStore, RendererElementSpan, (HIDWORD(RendererElementSpan) - 1));
      v77 = *(ElementInSpanAtIndex + 40);
      if (!v77 || C3DFXTechniqueGetPassCount(v77) != 1)
      {
        CIFilterQuadBlendTechnique = C3D::CreateCIFilterQuadBlendTechnique(v93, *(this + 2), v75);
        v79 = *(ElementInSpanAtIndex + 40);
        if (v79 != CIFilterQuadBlendTechnique)
        {
          if (v79)
          {
            CFRelease(v79);
            *(ElementInSpanAtIndex + 40) = 0;
          }

          if (CIFilterQuadBlendTechnique)
          {
            v80 = CFRetain(CIFilterQuadBlendTechnique);
          }

          else
          {
            v80 = 0;
          }

          *(ElementInSpanAtIndex + 40) = v80;
        }

        CFRelease(CIFilterQuadBlendTechnique);
      }

      v61 = v93;
      ++v63;
      v62 = v66;
      v64 -= 8;
    }

    while (v64);
    if (v93)
    {
      C3D::Pass::addDependency(this, v66);
      C3D::Pass::addDependency(this, v66[16]);
      v81 = C3D::Pass::descriptor(v66);
      v82 = C3D::PassDescriptor::outputAtIndex(v81, 0);
      C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v82);
      v83 = C3D::Pass::descriptor(v66[16]);
      v84 = C3D::PassDescriptor::outputAtIndex(v83, 1u);
      C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v108, v84);
    }
  }

  v85 = v109;
  C3D::Pass::setInputCount(this, v109);
  if (v85)
  {
    for (i = 0; i != v85; ++i)
    {
      v87 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](&v108, i);
      v88 = C3D::PassDescriptor::inputAtIndex((this + 32), i);
      *v88 = *v87;
      v89 = v87[1];
      v90 = v87[2];
      v91 = v87[4];
      v88[3] = v87[3];
      v88[4] = v91;
      v88[1] = v89;
      v88[2] = v90;
    }
  }

  C3DStackAllocatorPopFrame(StackAllocator);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(&v104, 8);
}

void sub_21C0F8D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void ___ZN3C3D9ScenePass5setupEv_block_invoke(void *a1, unsigned int a2, __C3DNode **a3, uint64_t *a4)
{
  if (a2)
  {
    v7 = a1[7];
    for (i = a2; i; --i)
    {
      v9 = *a4;
      if (C3DLightTypeSupportsShadow(*a4) && C3DLightGetCastsShadow(v9))
      {
        C3DLightShouldAdjustsShadowProjection(v9);
        v19 = *a3;
        if (C3DLightGetUsesDeferredShadows(v9))
        {
          if (*(v7 + 5361) != 1 || *(v7 + 240))
          {
            return;
          }

          v10 = C3D::ScenePass::_shadowMapForLightNode(v7, v19);
          v11 = *(v7 + 24);
          v17 = v7;
          v18 = v7;
          v12 = C3D::RenderGraph::createPass<C3D::DeferredShadowPass,C3D::ScenePass *,__C3DNode *&,C3D::ScenePass *>(v11, &v18, &v19, &v17);
          C3D::Pass::addDependency(v12, v10);
          v13 = *(*(a1[4] + 8) + 24);
          if (v13)
          {
            C3D::Pass::addDependency(v12, v13);
          }

          C3D::Pass::addDependency(v12, v7);
          *(*(a1[4] + 8) + 24) = v12;
        }

        else
        {
          if (*(v7 + 5360) != 1)
          {
            return;
          }

          v18 = C3D::ScenePass::_shadowMapForLightNode(v7, v19);
          C3D::Pass::addDependency(v7, v18);
          v14 = *(*(a1[5] + 8) + 24);
          v15 = C3D::Pass::descriptor(v18);
          v16 = C3D::PassDescriptor::outputAtIndex(v15, 0);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(v14, v16);
          C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(*(a1[6] + 8) + 24), &v18);
        }
      }

      ++a4;
      ++a3;
    }
  }
}

C3D::Pass *C3D::ScenePass::_shadowMapForLightNode(C3D::ScenePass *this, __C3DNode *a2)
{
  v2 = a2;
  v11 = a2;
  Light = C3DNodeGetLight(a2);
  AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(Light);
  Type = C3DLightGetType(Light);
  if (AutomaticallyAdjustsShadowProjection && Type == 1)
  {
    v2 = (Light ^ (*(this + 31) << 32));
  }

  CurrentFrameCachedPass = C3D::RenderGraph::getCurrentFrameCachedPass(*(this + 3), v2);
  if (!CurrentFrameCachedPass)
  {
    v8 = *(this + 3);
    v10 = this;
    CurrentFrameCachedPass = C3D::RenderGraph::createPass<C3D::ShadowMapPass,C3D::ScenePass *,__C3DNode *&>(v8, &v10, &v11);
    C3D::RenderGraph::cachePassForCurrentFrame(*(this + 3), v2, CurrentFrameCachedPass);
  }

  return CurrentFrameCachedPass;
}

C3D::DeferredShadowPass *C3D::RenderGraph::createPass<C3D::DeferredShadowPass,C3D::ScenePass *,__C3DNode *&,C3D::ScenePass *>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3, C3D::DrawNodesPass **a4)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::DeferredShadowPass::DeferredShadowPass(Aligned, a1, *a2, *a3, *a4);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16) + 80 * *(a1 + 8) - 80;
}

C3D::CIFilterPass *C3D::RenderGraph::createPass<C3D::CIFilterPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::ScenePass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 176, 16, 0);
  C3D::CIFilterPass::CIFilterPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

double C3D::ScenePass::execute(uint64_t a1, void **a2)
{
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(a1 + 16));
  v5 = RenderCallbacks;
  v6 = *(a1 + 5365) != 1 || RenderCallbacks == 0;
  if (!v6 && *RenderCallbacks)
  {
    (*RenderCallbacks)(*(a1 + 16));
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = (*a2 + 3384);
    v10 = *(*a2 + 425);
    v18 = *v9;
    bzero(*a2, 0xD70uLL);
    *(v7 + 16) = 1;
    v7[72] = 1;
    *v9 = v18;
    *(v7 + 425) = v10;
    *(v7 + 20) = 257;
    v7[42] = 1;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(*a2 + 16) = v8;
    C3D::RenderPass::setStates(a1, a2);
  }

  if (*(a1 + 5384))
  {
    RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
    v12 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5384) + 48);
    [(SCNMTLRenderContext *)RenderContext _setReflectionProbeArrayTexture:v12];
  }

  C3D::DrawNodesPass::execute(a1, a2);
  if (*(a1 + 5365) == 1 && v5 != 0)
  {
    v15 = v5[1];
    if (v15)
    {
      v15(*(a1 + 16));
      v16 = *a2;
      v17 = *(v16 + 425);
      v19 = *(v16 + 3384);
      bzero(v16, 0xD70uLL);
      *(v16 + 16) = 1;
      v16[72] = 1;
      *(v16 + 3384) = v19;
      *(v16 + 425) = v17;
      *(v16 + 20) = 257;
      v16[42] = 1;
      result = 0.0;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
    }
  }

  return result;
}

BOOL C3D::ScenePass::_shouldPushNodeToVisible(C3D::ScenePass *this, __C3DNode *a2, int a3)
{
  v42 = a2;
  v5 = *(a2 + 55);
  if ((v5 & 0x1000) != 0)
  {
    if ((*(this + 5008) & 1) != 0 || *(this + 625) || *(this + 5363) != 1)
    {
      return 0;
    }

    if (!a3)
    {
      v7 = *(this + 3);
      v41 = this;
      v40 = 0;
      v38 = 16842753;
      v39 = 0;
      v41 = C3D::RenderGraph::createPass<C3D::FloorPass,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(v7, &v41, &v42, &v40, &v38);
      C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(this + 671), &v41);
    }

    return 1;
  }

  else
  {
    if ((v5 & 0x4000) == 0)
    {
      return (*(a2 + 55) & 0x80) == 0;
    }

    if (*(this + 5362) != 1)
    {
      return 0;
    }

    v8 = *(this + 672);
    v9 = *(v8 + 16);
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = v9;
      while (*v12 != a2)
      {
        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v12 = v9;
    }

    if (v12 != &v9[v10])
    {
      return 0;
    }

    do
    {
LABEL_20:
      v13 = a2;
      Parent = C3DNodeGetParent(a2);
      if (!Parent)
      {
        break;
      }

      a2 = Parent;
    }

    while ((*(Parent + 220) & 0x80) != 0);
    if ((*(v13 + 221) & 0x40) == 0)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___ZN3C3D9ScenePass24_shouldPushNodeToVisibleEP9__C3DNodei_block_invoke;
    v37[3] = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
    v37[4] = this;
    C3DNodeApplyHierarchy(v13, v37);
    v23 = this + 16 * a3;
    v24 = v23 + 5232;
    v25 = *(v13 + 112);
    v26 = *(v13 + 113) + *(v13 + 114) - 1;
    if ((*(v23 + 1310) + 1) > *(v23 + 1311))
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    result = 0;
    v35 = *(v24 + 2);
    v36 = (*v24 + 4 * v35);
    *v36 = v25;
    v36[1] = v26;
    *(v24 + 2) = v35 + 1;
  }

  return result;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::FloorPass,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3, char *a4, const Parameters *a5)
{
  v6 = *(a1 + 16);
  v9 = a1;
  v7 = C3D::ScratchAllocate<C3D::FloorPass,C3D::RenderGraph *,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(v6, &v9, a2, a3, a4, a5);
  C3D::RenderGraph::addPass(a1, v7);
  if (*(a1 + 209) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  return v7;
}

uint64_t ___ZN3C3D9ScenePass24_shouldPushNodeToVisibleEP9__C3DNodei_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(a2 + 221) & 0x40) != 0)
  {
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(*(a1 + 32) + 5376), &v3);
  }

  return 0;
}

C3D::ShadowMapPass *C3D::RenderGraph::createPass<C3D::ShadowMapPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::ShadowMapPass::ShadowMapPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DrawNodesPass *C3D::ScratchAllocate<C3D::FloorPass,C3D::RenderGraph *,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(uint64_t a1, C3D::RenderGraph **a2, C3D::Pass **a3, __C3DNode **a4, char *a5, const Parameters *a6)
{
  Aligned = C3DScratchAllocatorAllocateAligned(a1, 5472, 16, 0);
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v18 = 0;
  v20 = 0u;
  v21 = 0x20000;
  memset(v17, 0, sizeof(v17));
  v19 = -1;
  BYTE8(v20) = 1;
  return C3D::FloorPass::FloorPass(Aligned, v12, v13, v14, v15, a6, v17);
}

void SCNCActionCustom::SCNCActionCustom(SCNCActionCustom *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC6868;
  *(v3 + 24) = a2->var3;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
  *(v3 + 144) = 0;
}

void SCNCActionCustom::~SCNCActionCustom(SCNCAction *this)
{
  SCNCActionCustom::~SCNCActionCustom(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC6868;
  var0 = this[1].var0;
  if (var0)
  {
    _Block_release(var0);
    this[1].var0 = 0;
  }

  SCNCAction::~SCNCAction(this);
}

SCNCAction *SCNCActionCustom::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  v7 = v6.n128_f64[0];
  result = this[1].var0;
  if (result)
  {
    result = (result->var2)(result, a2, v6.n128_f64[0] * this->var1);
  }

  v9 = v7;
  if ((COERCE_UNSIGNED_INT(v9 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }

  return result;
}

void C3DParametricGeometryGeneratePoints(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {

    v2();
  }

  else
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      C3DParametricGeometryGeneratePoints_cold_1(v3);
    }
  }
}

void C3DParametricGeometryValidate(uint64_t a1)
{
  v21[13] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 64))
  {
    if (*(a1 + 312) == C3DBoxCreateMesh)
    {
      MaterialsCount = C3DGeometryGetMaterialsCount(a1);
      v3 = 0;
      if (MaterialsCount <= 8)
      {
        v4 = MaterialsCount;
        if (MaterialsCount)
        {
          if (MaterialsCount >= 1)
          {
            v5 = 0;
            do
            {
              MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v5);
              if (v5)
              {
                v7 = MaterialAtIndex;
                v8 = 0;
                while (C3DGeometryGetMaterialAtIndex(a1, v8) != v7)
                {
                  if (v5 == ++v8)
                  {
                    v8 = v5;
                    break;
                  }
                }

                v9 = v8 + 1;
              }

              else
              {
                v9 = 1;
              }

              v21[v5++] = v9;
            }

            while (v5 != v4);
          }

          v10 = 0;
          v11 = 0;
          v3 = 0;
          do
          {
            v3 |= v21[v11 % v4] << v10;
            ++v11;
            v10 += 4;
          }

          while (v11 != 8);
        }
      }

      *(a1 + 308) = v3;
    }

    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe();
    if (*(a1 + 360))
    {
      _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    }

    v12 = (*(a1 + 344))(a1, v21);
    if (v12 >= 0x65)
    {
      C3DParametricGeometryValidate_cold_1();
    }

    v13 = CFDataCreate(*MEMORY[0x277CBECE8], v21, v12);
    Value = CFDictionaryGetValue(_C3DParametricGeometryMeshCache, v13);
    if (Value)
    {
      CopyWithInterleavedSources = Value;
      _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(v13);
    }

    else
    {
      v18 = (*(a1 + 312))(a1 + 216);
      if (!v18 || (v19 = v18, CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(v18), CFRelease(v19), !CopyWithInterleavedSources))
      {
        C3DGeometrySetMesh(a1, 0);
LABEL_36:
        CFRelease(v13);
        os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
        return;
      }

      CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, v13, 1);
      CFDictionarySetValue(_C3DParametricGeometryMeshCache, v13, CopyWithInterleavedSources);
      CFRelease(CopyWithInterleavedSources);
    }

    v16 = *(a1 + 360);
    if (v16 != v13)
    {
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 360) = 0;
      }

      if (v13)
      {
        v17 = CFRetain(v13);
      }

      else
      {
        v17 = 0;
      }

      *(a1 + 360) = v17;
    }

    Copy = C3DMeshCreateCopy(CopyWithInterleavedSources);
    C3DGeometrySetMesh(a1, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_36;
  }
}

void C3DParametricGeometryMaterialDidChange(uint64_t a1)
{
  if (*(a1 + 312) == C3DBoxCreateMesh)
  {
    __Invalidate(a1);
    *(a1 + 308) = -1;
  }
}

void __Invalidate(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
  }

  C3DGeometrySetMesh(a1, 0);
}

uint64_t C3DParametricGeometryGetType(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  C3DParametricGeometryGetCallbacks(a1, v3);
  if (!memcmp(v3, kC3DBoxCallBacks, 0x30uLL))
  {
    return 1;
  }

  if (!memcmp(v3, kC3DPyramidCallBacks, 0x30uLL))
  {
    return 2;
  }

  if (!memcmp(v3, kC3DCylinderCallBacks, 0x30uLL))
  {
    return 4;
  }

  if (!memcmp(v3, kC3DConeCallBacks, 0x30uLL))
  {
    return 5;
  }

  if (!memcmp(v3, kC3DTubeCallBacks, 0x30uLL))
  {
    return 6;
  }

  if (!memcmp(v3, kC3DCapsuleCallBacks, 0x30uLL))
  {
    return 7;
  }

  if (!memcmp(v3, kC3DTorusCallBacks, 0x30uLL))
  {
    return 8;
  }

  if (!memcmp(v3, kC3DSphereCallBacks, 0x30uLL))
  {
    return 3;
  }

  result = memcmp(v3, kC3DPlaneCallBacks, 0x30uLL);
  if (result)
  {
    v2 = scn_default_log();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      C3DParametricGeometryGetType_cold_1(v2);
      return 0;
    }
  }

  return result;
}

__n128 C3DParametricGeometryGetCallbacks@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 328);
  *a2 = *(a1 + 312);
  *(a2 + 16) = v12;
  result = *(a1 + 344);
  *(a2 + 32) = result;
  return result;
}

uint64_t C3DParametricGeometryGetTypeID()
{
  if (C3DParametricGeometryGetTypeID_onceToken != -1)
  {
    C3DParametricGeometryGetTypeID_cold_1();
  }

  return C3DParametricGeometryGetTypeID_typeID;
}

double __C3DParametricGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParametricGeometryGetTypeID_typeID = v0;
  TypeID = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"chamferRadius", 0xE4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"chamferSegmentCount", 0x114u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"height", 0xDCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"heightSegmentCount", 0x10Cu, 2, 0);
  C3DModelPathResolverRegisterProperty(@"length", 0xE0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"lengthSegmentCount", 0x110u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"width", 0xD8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"widthSegmentCount", 0x108u, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v2 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v2);
  C3DModelPathResolverRegisterProperty(@"capRadius", 0xE8u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"capSegmentCount", 0x120u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"radialSegmentCount", 0x11Cu, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v3 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v3);
  C3DModelPathResolverRegisterProperty(@"bottomRadius", 0xF0u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"topRadius", 0xECu, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  v4 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v4);
  C3DModelPathResolverRegisterProperty(@"radialSpan", 0x104u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"radius", 0xE8u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  v5 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v5);
  C3DModelPathResolverRegisterProperty(@"cornerRadius", 0xE4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"cornerSegmentCount", 0x114u, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v6 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v6);
  C3DModelPathResolverRegisterClassEnd();
  v7 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v7);
  C3DModelPathResolverRegisterProperty(@"segmentCount", 0x118u, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v8 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v8);
  C3DModelPathResolverRegisterProperty(@"pipeRadius", 0x100u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"pipeSegmentCount", 0x128u, 2, 0);
  C3DModelPathResolverRegisterProperty(@"ringRadius", 0xFCu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"ringSegmentCount", 0x124u, 2, 0);
  C3DModelPathResolverRegisterClassEnd();
  v9 = C3DGeometryGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, v9);
  C3DModelPathResolverRegisterProperty(@"innerRadius", 0xF4u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"outerRadius", 0xF8u, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740800 = kC3DC3DParametricGeometryContextClassSerializable;
  unk_281740810 = *&off_282DC6AD8;
  unk_2817407C0 = kC3DC3DParametricGeometryContextClassBoundingVolumes;
  xmmword_2817407A8 = kC3DC3DParametricGeometryContextClassAnimatable;
  result = *&kC3DC3DParametricGeometryContextClassSceneLink;
  unk_2817407D0 = kC3DC3DParametricGeometryContextClassSceneLink;
  unk_2817407E0 = unk_282DC6B18;
  qword_2817407F0 = qword_282DC6B28;
  qword_281740820 = _C3DParametricGeometryCreateCopy;
  return result;
}

float64_t C3DPlaneGetBoundingBoxForPlaneParameters(float32x2_t *a1, uint64_t a2, float64x2_t a3, float64_t a4)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    a3.f64[1] = a4;
    __asm { FMOV            V1.2D, #-0.5 }

    a1[1].i32[0] = 0;
    *a1 = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    __asm { FMOV            V1.2D, #0.5 }

    *&a3.f64[0] = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    *(a2 + 8) = 0;
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

float32x2_t C3DPlaneGetBoundingBox(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[27];
    a2[1].i32[0] = 0;
    *a2 = vmul_f32(v4, 0xBF000000BF000000);
    result = vmul_f32(v4, 0x3F0000003F000000);
    a3[1].i32[0] = 0;
    *a3 = result;
  }

  return result;
}

double C3DParametricGeometryGetFloatValue(uint64_t a1, int a2)
{
  v2 = _C3DParametricGeometryFloatPtr(a1, a2);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

BOOL C3DPlaneGetBoundingSphereForPlaneParameters(_OWORD *a1, double a2, double a3)
{
  if (a1)
  {
    v3 = sqrt(a3 * a3 + a2 * a2) * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL C3DPlaneGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(*(a1 + 220) * *(a1 + 220) + *(a1 + 216) * *(a1 + 216)) * 0.5;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DPlaneGeneratePointsCallBack(void *a1, uint64_t a2, unsigned int *a3, float64x2_t *a4, _OWORD *a5, unsigned int a6)
{
  v12 = a1[27];
  ChamferRadius = C3DParametricGeometryGetChamferRadius(a1);
  if (a6 >= 2)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }
  }

  else
  {
    v14 = vcvtq_f64_f32(v12);
    __asm { FMOV            V2.2D, #0.5 }

    v20 = vmulq_f64(v14, _Q2);
    if (ChamferRadius <= 0.0)
    {
      if (a2 >= 1)
      {
        v32 = vnegq_f64(v20);
        v33 = vdupq_n_s64(0x3EF0001000100010uLL);
        v34 = a5;
        do
        {
          v35 = 214013 * *a3 + 2531011;
          *a3 = 214013 * v35 + 2531011;
          v36.i32[0] = v35;
          v36.i32[1] = 214013 * v35 + 2531011;
          v37 = vshr_n_u32(v36, 0x10uLL);
          v38.i64[0] = v37.u32[0];
          v38.i64[1] = v37.u32[1];
          v39 = vmulq_f64(vcvtq_f64_u64(v38), v33);
          *&v39.f64[0] = vcvt_f32_f64(vmlaq_f64(v32, v14, v39));
          *a4 = v39;
          if (a5)
          {
            *v34 = xmmword_21C27F600;
          }

          ++v34;
          ++a4;
          --a2;
        }

        while (a2);
      }
    }

    else
    {
      v21 = ChamferRadius;
      if (v20.f64[0] >= v20.f64[1])
      {
        v22 = v20.f64[1];
      }

      else
      {
        v22 = v20.f64[0];
      }

      if (v22 <= v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (a2 >= 1)
      {
        v24 = 0;
        v25 = -v20.f64[0];
        v20.f64[0] = v23 - v20.f64[0];
        do
        {
          v26 = *a3;
          do
          {
            v27 = 214013 * v26 + 2531011;
            v28 = v25 + HIWORD(v27) * 0.0000152590219 * v14.f64[0];
            v26 = 214013 * v27 + 2531011;
            v29 = HIWORD(v26) * 0.0000152590219 * v14.f64[1] - v20.f64[1];
            v30 = v20.f64[0] + fabsf(v28);
            if (v30 <= 0.0)
            {
              break;
            }

            v31 = v23 - v20.f64[1] + fabsf(v29);
            if (v31 <= 0.0)
            {
              break;
            }
          }

          while (v31 * v31 + v30 * v30 > v23 * v23);
          *a3 = v26;
          a4[v24] = __PAIR64__(LODWORD(v29), LODWORD(v28));
          if (a5)
          {
            a5[v24] = xmmword_21C27F600;
          }

          ++v24;
        }

        while (v24 != a2);
      }
    }
  }
}

float C3DParametricGeometryGetChamferRadius(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 228);
}

uint64_t C3DPlaneSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 3, 0.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetIntValue(a1, 14, 10);
}

uint64_t C3DPlaneHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 0;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[57];
  a2[5] = a1[66];
  a2[6] = a1[67];
  a2[7] = a1[69];
  a2[8] = a1[77];
  return 36;
}

float64_t C3DBoxGetBoundingBoxForBoxParameters(float32x2_t *a1, uint64_t a2, float64x2_t a3, float64_t a4, double a5)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    a3.f64[1] = a4;
    __asm { FMOV            V1.2D, #-0.5 }

    v10 = a5 * -0.5;
    a1[1].f32[0] = v10;
    *a1 = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    __asm { FMOV            V1.2D, #0.5 }

    *&a3.f64[0] = vcvt_f32_f64(vmulq_f64(a3, _Q1));
    *_Q1.f64 = a5 * 0.5;
    *(a2 + 8) = LODWORD(_Q1.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}

float32_t C3DBoxGetBoundingBox(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[28].f32[0];
    v5 = a1[27];
    a2[1].f32[0] = v4 * -0.5;
    *a2 = vmul_f32(v5, 0xBF000000BF000000);
    result = v4 * 0.5;
    a3[1].f32[0] = result;
    *a3 = vmul_f32(v5, 0x3F0000003F000000);
  }

  return result;
}

BOOL C3DBoxGetBoundingSphereForBoxParameters(_OWORD *a1, double a2, double a3, double a4)
{
  if (a1)
  {
    v4 = sqrt(a3 * a3 + a2 * a2 + a4 * a4) * 0.5;
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL C3DBoxGetBoundingSphere(float *a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt(a1[55] * a1[55] + a1[54] * a1[54] + a1[56] * a1[56]) * 0.5;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void C3DBoxGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  Width = C3DParametricGeometryGetWidth(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  Length = C3DParametricGeometryGetLength(a1);
  ChamferRadius = C3DParametricGeometryGetChamferRadius(a1);
  v20.f32[0] = Width * 0.5;
  v21 = Height * 0.5;
  v22.f32[0] = Length * 0.5;
  if ((Width * 0.5) >= (Height * 0.5))
  {
    v23 = Height * 0.5;
  }

  else
  {
    v23 = Width * 0.5;
  }

  if (v23 >= v22.f32[0])
  {
    v23 = Length * 0.5;
  }

  if (ChamferRadius >= v23)
  {
    *v16.i32 = v23;
  }

  else
  {
    *v16.i32 = ChamferRadius;
  }

  if (a6 == 2)
  {

    C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
  }

  else
  {
    v24 = v20;
    v24.f32[1] = Height * 0.5;
    v24.f32[2] = Length * 0.5;
    v25 = *v16.i32;
    v26 = v25 * v25;
    v27 = vsubq_f32(v24, vdupq_lane_s32(v16, 0));
    if (a6 == 1)
    {
      v67 = Width;
      v68 = Height;
      v69 = Length;
      if (*v16.i32 <= 0.0)
      {
        if (a2 >= 1)
        {
          v84 = -v20.f32[0];
          v85 = -v22.f32[0];
          v86 = a5;
          do
          {
            v87 = 214013 * *a3 + 2531011;
            *v22.i64 = HIWORD(v87) * 0.0000152590219;
            v88 = 214013 * v87 + 2531011;
            v89 = HIWORD(v88) * 0.0000152590219 * v68 - v21;
            v90 = 214013 * v88 + 2531011;
            *a3 = v90;
            v22.f32[0] = v84 + *v22.i64 * v67;
            *&v89 = v89;
            v91 = v85 + HIWORD(v90) * 0.0000152590219 * v69;
            v22.i32[1] = LODWORD(v89);
            v22.f32[2] = v91;
            *a4 = v22;
            if (a5)
            {
              v92 = vmulq_f32(v22, v22);
              *&v93 = v92.f32[2] + vaddv_f32(*v92.f32);
              *v92.f32 = vrsqrte_f32(v93);
              *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32)));
              v22 = vmulq_n_f32(v22, vmul_f32(*v92.f32, vrsqrts_f32(v93, vmul_f32(*v92.f32, *v92.f32))).f32[0]);
              *v86 = v22;
            }

            ++v86;
            ++a4;
            --a2;
          }

          while (a2);
        }
      }

      else if (a2 >= 1)
      {
        v70 = 0;
        v71 = -v21;
        v72 = -v22.f32[0];
        do
        {
          v73 = *a3;
          do
          {
            v74 = 214013 * v73 + 2531011;
            v18.f32[0] = HIWORD(v74) * 0.0000152590219 * v67 - v20.f32[0];
            v75 = 214013 * v74 + 2531011;
            v76 = v71 + HIWORD(v75) * 0.0000152590219 * v68;
            v73 = 214013 * v75 + 2531011;
            v77 = v72 + HIWORD(v73) * 0.0000152590219 * v69;
            v18.f32[1] = v76;
            v18.f32[2] = v77;
            v78 = vsubq_f32(vabsq_f32(v18), v27);
            v79 = v78.f32[1];
            v80 = v78.f32[1] > 0.0;
            if (v78.f32[0] > 0.0)
            {
              ++v80;
            }

            if (v78.f32[2] > 0.0)
            {
              ++v80;
            }

            if (v80 == 2)
            {
              if (v78.f32[0] <= v78.f32[1])
              {
                v78.f32[0] = v78.f32[1];
              }

              if (v78.f32[1] <= v78.f32[2])
              {
                v79 = v78.f32[2];
              }

              v81 = (v79 * v79) + (v78.f32[0] * v78.f32[0]);
            }

            else
            {
              if (v80 != 3)
              {
                break;
              }

              v81 = ((v78.f32[1] * v78.f32[1]) + (v78.f32[0] * v78.f32[0])) + (v78.f32[2] * v78.f32[2]);
            }
          }

          while (v26 < v81);
          *a3 = v73;
          a4[v70] = v18;
          if (a5)
          {
            v82 = vmulq_f32(v18, v18);
            *&v83 = v82.f32[2] + vaddv_f32(*v82.f32);
            *v82.f32 = vrsqrte_f32(v83);
            *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32)));
            v18 = vmulq_n_f32(v18, vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32))).f32[0]);
            a5[v70] = v18;
          }

          ++v70;
        }

        while (v70 != a2);
      }
    }

    else if (!a6 && a2 >= 1)
    {
      v17.f32[0] = v21 * v22.f32[0];
      v28 = v17;
      v28.f32[1] = v20.f32[0] * v22.f32[0];
      v28.f32[2] = v20.f32[0] * v21;
      v29 = vmulq_n_f32(v28, 1.0 / ((v20.f32[0] * v21) + ((v21 * v22.f32[0]) + (v20.f32[0] * v22.f32[0]))));
      v30 = v29.f32[0];
      v31 = v30 + v30;
      v32 = v30 + v30 + v29.f32[1] * 2.0;
      v33.i64[0] = 0x8000000080000000;
      v33.i64[1] = 0x8000000080000000;
      v34 = a5;
      do
      {
        v35 = 214013 * *a3 + 2531011;
        v36 = 214013 * v35 + 2531011;
        v37 = 214013 * v36 + 2531011;
        *a3 = v37;
        v38 = HIWORD(v37) * 0.0000152590219 + HIWORD(v37) * 0.0000152590219;
        if (v38 >= v31)
        {
          if (v38 >= v32)
          {
            v40 = v38 - v32 < v29.f32[2] || v29.f32[2] == 1.0;
            v39 = 2;
          }

          else
          {
            v40 = v38 - v31 < v29.f32[1] || v29.f32[1] == 1.0;
            v39 = 1;
          }

          v41 = -1;
        }

        else
        {
          v39 = 0;
          v40 = v29.f32[0] == 1.0;
          if (v38 < v30)
          {
            v40 = 1;
          }

          v41 = 2;
        }

        v42 = HIWORD(v35) * 0.0000152590219 * 2.0 + -1.0;
        v43 = HIWORD(v36) * 0.0000152590219 * 2.0 + -1.0;
        if (v39 == 2)
        {
          v44 = 0;
        }

        else
        {
          v44 = v39 + 1;
        }

        v45 = v39 + v41;
        v99 = v24;
        v46 = *(&v99 | (4 * v39));
        if (!v40)
        {
          v46 = -v46;
        }

        v100 = 0uLL;
        *(&v100 & 0xFFFFFFFFFFFFFFF3 | (4 * (v39 & 3))) = v46;
        v47 = v42 * *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3)));
        v101 = v100;
        *(&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = v47;
        v48 = v43 * *(&v99 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3)));
        v102 = v101;
        *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = v48;
        v49 = v102;
        v50 = v102;
        v50.i32[3] = v19;
        if (*v16.i32 <= 0.0)
        {
          goto LABEL_54;
        }

        v51 = vsubq_f32(vabsq_f32(v102), v27);
        v52 = v51.f32[1] > 0.0;
        if (v51.f32[0] > 0.0)
        {
          ++v52;
        }

        if (v51.f32[2] > 0.0)
        {
          ++v52;
        }

        if (v52 == 3)
        {
          v54 = vmulq_f32(v51, v51);
          v55 = v54.f32[2] + vaddv_f32(*v54.f32);
          if (v26 < v55)
          {
            v56 = vmlaq_n_f32(v27, v51, *v16.i32 / sqrtf(v55));
            *v50.f32 = vbsl_s8(0x8000000080000000, *v56.f32, *v102.i8);
            v51.i32[0] = v56.i32[2];
            v49.i32[0] = v102.i32[2];
            v50.i32[2] = vbslq_s8(v33, v51, v49).u32[0];
LABEL_53:
            v50.i32[3] = v19;
          }
        }

        else if (v52 == 2)
        {
          if (v39 == 2)
          {
            v53 = v51.f32[1] <= 0.0;
          }

          else if (v39 == 1)
          {
            v53 = 2 * (v51.f32[0] > 0.0);
          }

          else if (v51.f32[1] <= 0.0)
          {
            v53 = 1;
          }

          else
          {
            v53 = 2;
          }

          if (v53 == 2)
          {
            v57 = 0;
          }

          else
          {
            v57 = v53 + 1;
          }

          v58 = (v53 + 2) % 3u;
          v94 = v51;
          *(&v94 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53 & 3))) = 0;
          v59 = v94;
          v60 = vmulq_f32(v59, v59);
          *v60.i64 = v25 / sqrtf(v60.f32[2] + vaddv_f32(*v60.f32));
          v61 = (&v97 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
          v95 = v27;
          v62 = *(&v95 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
          v96 = v94;
          *v59.i64 = v62 + *(&v96 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3))) * *v60.i64;
          v59.f32[0] = *v59.i64;
          v97 = v49;
          v49.i32[0] = *v61;
          *v61 = vbslq_s8(v33, v59, v49).u32[0];
          v63 = v97;
          v64 = (&v98 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3)));
          *v59.i64 = *(&v95 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3))) + *(&v96 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3))) * *v60.i64;
          v59.f32[0] = *v59.i64;
          v98 = v97;
          v63.i32[0] = *v64;
          *v64 = vbslq_s8(v33, v59, v63).u32[0];
          v50 = v98;
          goto LABEL_53;
        }

LABEL_54:
        *a4 = v50;
        if (a5)
        {
          v65 = vmulq_f32(v50, v50);
          *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
          *v65.f32 = vrsqrte_f32(v66);
          *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
          *v34 = vmulq_n_f32(v50, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
        }

        ++v34;
        ++a4;
        v19 = v50.i32[3];
        --a2;
      }

      while (a2);
    }
  }
}

float C3DParametricGeometryGetWidth(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 216);
}

float C3DParametricGeometryGetHeight(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 220);
}

float C3DParametricGeometryGetLength(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DParametricGeometryGetChamferRadius_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

uint64_t C3DBoxSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 2, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 3, 0.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);
  C3DParametricGeometrySetIntValue(a1, 13, 1);

  return C3DParametricGeometrySetIntValue(a1, 14, 5);
}

uint64_t C3DBoxHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 1;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[56];
  a2[5] = a1[57];
  a2[6] = a1[66];
  a2[7] = a1[67];
  a2[8] = a1[68];
  a2[9] = a1[69];
  a2[10] = a1[77];
  return 44;
}

double C3DPyramidGetBoundingBoxForPyramidParameters(uint64_t a1, uint64_t a2, int32x4_t a3, double a4, float64_t a5)
{
  if (a1)
  {
    _ZF = a2 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    *&v6.f64[0] = a3.i64[0];
    v6.f64[1] = a5;
    __asm { FMOV            V4.2D, #-0.5 }

    v11 = vmulq_f64(v6, _Q4);
    *&v11.f64[0] = vcvt_f32_f64(v11);
    LODWORD(_Q4.f64[0]) = vzip1q_s32(v11, a3).u32[0];
    *(a1 + 8) = HIDWORD(v11.f64[0]);
    v12 = *a3.i64 * 0.5;
    *&a3.i64[1] = a4;
    *a1 = LODWORD(_Q4.f64[0]);
    *a3.i8 = vcvt_f32_f64(a3);
    v13 = a5 * 0.5;
    *(a2 + 8) = v13;
    *a2 = a3.i64[0];
  }

  return *a3.i64;
}

float C3DPyramidGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v6.i32 = C3DParametricGeometryGetWidth(a1);
  v13 = v6;
  Height = C3DParametricGeometryGetHeight(a1);
  *v7.i32 = C3DParametricGeometryGetLength(a1);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v13;
    v9.i32[1] = v7.i32[0];
    *v9.i8 = vmul_f32(*v9.i8, 0xBF000000BF000000);
    *(a2 + 8) = v9.i32[1];
    *a2 = vzip1q_s32(v9, v7).u32[0];
    *&v10 = *v13.i32 * 0.5;
    *(&v10 + 1) = Height;
    *v7.i32 = *v7.i32 * 0.5;
    *(a3 + 8) = v7.i32[0];
    *a3 = v10;
  }

  return *v7.i32;
}

BOOL C3DPyramidGetBoundingSphereForPyramidParameters(int32x4_t *a1, double a2, float64x2_t a3, double a4)
{
  if (a1)
  {
    a3.f64[1] = sqrt(a3.f64[0] * a3.f64[0] + a2 * a2 + a4 * a4);
    __asm { FMOV            V0.2D, #0.5 }

    v9 = vmulq_f64(a3, _Q0);
    *&v9.f64[0] = vcvt_f32_f64(v9);
    *a1 = vtrn1q_s32(0, vzip1q_s32(v9, v9));
  }

  return a1 != 0;
}

BOOL C3DPyramidGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  Width = C3DParametricGeometryGetWidth(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  Length = C3DParametricGeometryGetLength(a1);
  if (a2)
  {
    v7 = sqrt(Height * Height + Width * Width + Length * Length) * 0.5;
    LODWORD(v8) = 0;
    DWORD2(v8) = 0;
    *(&v8 + 1) = Height * 0.5;
    *(&v8 + 3) = v7;
    *a2 = v8;
  }

  return a2 != 0;
}

void C3DPyramidGeneratePointsCallBack(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v78 = *MEMORY[0x277D85DE8];
  Width = C3DParametricGeometryGetWidth(a1);
  Height = C3DParametricGeometryGetHeight(a1);
  Length = C3DParametricGeometryGetLength(a1);
  v18.f32[0] = Width * 0.5;
  v19.f32[0] = Length * 0.5;
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v20 = Height;
      v21 = v19.f32[0];
      v22 = a5;
      do
      {
        v23 = 214013 * *a3 + 2531011;
        v24 = HIWORD(v23) * 0.0000152590219 * v20;
        *v19.i64 = v20 - v24;
        v25 = *v19.i64 * v21 / v20;
        v26 = 214013 * v23 + 2531011;
        v19.f32[0] = (HIWORD(v26) * 0.0000152590219 * 2.0 + -1.0) * (*v19.i64 * v18.f32[0] / v20);
        v27 = 214013 * v26 + 2531011;
        *a3 = v27;
        v28 = (HIWORD(v27) * 0.0000152590219 * 2.0 + -1.0) * v25;
        v19.f32[1] = v24;
        v19.f32[2] = v28;
        *a4 = v19;
        if (a5)
        {
          v29 = vmulq_f32(v19, v19);
          *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
          *v29.f32 = vrsqrte_f32(v30);
          *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
          v19 = vmulq_n_f32(v19, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
          *v22 = v19;
        }

        ++v22;
        ++a4;
        --a2;
      }

      while (a2);
    }
  }

  else if (a2 >= 1)
  {
    v31 = 0;
    v34.i32[1] = 0;
    v34.i32[3] = 0;
    v35.i32[3] = 0;
    v35.i64[0] = v18.u32[0];
    v18 = v18.u32[0];
    v18.f32[2] = Length * 0.5;
    v32.i32[0] = 0;
    v32.i64[1] = 0;
    v32.f32[1] = Height;
    v34.f32[0] = -(Width * 0.5);
    v33 = v34.u32[0];
    v33.f32[2] = Length * 0.5;
    v34.f32[2] = -(Length * 0.5);
    v35.f32[2] = v34.f32[2];
    v36 = vsubq_f32(v18, v33);
    v37 = vsubq_f32(v35, v18);
    v38 = vsubq_f32(v34, v35);
    v39 = vsubq_f32(v33, v34);
    v40 = vsubq_f32(v32.u64[0], v33);
    v41 = vsubq_f32(v32.u64[0], v35);
    v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v43 = vmlaq_f32(vmulq_f32(v42, vnegq_f32(v37)), v41, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
    v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    v45 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    v46 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    v47 = vnegq_f32(v39);
    v48 = vmlaq_f32(vmulq_f32(v46, v47), v40, v45);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmlaq_f32(vmulq_f32(v42, vnegq_f32(v38)), v41, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
    v52 = vmlaq_f32(vmulq_f32(v46, vnegq_f32(v36)), v40, vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    do
    {
      v54 = v14;
      v55 = v15;
      v56 = v17;
      v57 = v16.i32[3];
      v77 = 0.16667;
      v76 = xmmword_21C2A2798;
      v58 = 4;
      v59 = 0.33333;
      do
      {
        v59 = v59 + *(&v76 + v58);
        *(&v76 + v58) = v59;
        v58 += 4;
      }

      while (v58 != 20);
      v60 = 214013 * *a3 + 2531011;
      v61 = HIWORD(v60) * 0.0000152590219;
      v14 = v33;
      v15 = v47;
      v17 = v36;
      v16 = xmmword_21C27F9A0;
      if (v61 >= 0.33333)
      {
        v14 = v32;
        v15 = v18;
        v17 = v33;
        v16 = v53;
        if (*(&v76 + 1) <= v61)
        {
          v14 = v32;
          v15 = v34;
          v17 = v35;
          v16 = v51;
          if (*(&v76 + 2) <= v61)
          {
            v14 = v34;
            v15 = v32;
            v17 = v33;
            v16 = v49;
            if (*(&v76 + 3) <= v61)
            {
              if (v77 <= v61)
              {
                v16.i64[0] = 0;
                v16.i32[2] = 0;
                v16.i32[3] = v57;
                v14 = v54;
                v15 = v55;
                v17 = v56;
              }

              else
              {
                v14 = v35;
                v15 = v18;
                v17 = v32;
                v16 = v44;
              }
            }
          }
        }
      }

      v62 = 214013 * v60 + 2531011;
      v63 = HIWORD(v62) * 0.0000152590219;
      v64 = 214013 * v62 + 2531011;
      *a3 = v64;
      v65 = HIWORD(v64) * 0.0000152590219;
      if (v61 >= 0.33333)
      {
        v67 = 214013 * v64 + 2531011;
        *a3 = v67;
        v68 = HIWORD(v67) * 0.0000152590219;
        v69 = 1.0 / ((v63 + v65) + v68);
        v70 = v69 * v63;
        v71 = v69 * v65;
        v72 = v69 * v68;
        v66 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, v71), v17, v70), v14, v72);
      }

      else
      {
        v66 = vaddq_f32(v14, vmlaq_n_f32(vmulq_n_f32(v15, v65), v17, v63));
      }

      a4[v31] = v66;
      if (a5)
      {
        v73 = vmulq_f32(v16, v16);
        *&v74 = v73.f32[2] + vaddv_f32(*v73.f32);
        *v73.f32 = vrsqrte_f32(v74);
        *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32)));
        a5[v31] = vmulq_n_f32(v16, vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
      }

      ++v31;
    }

    while (v31 != a2);
  }
}

uint64_t C3DPyramidSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetFloatValue(a1, 0, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 1, 1.0);
  C3DParametricGeometrySetFloatValue(a1, 2, 1.0);
  C3DParametricGeometrySetIntValue(a1, 11, 1);
  C3DParametricGeometrySetIntValue(a1, 12, 1);

  return C3DParametricGeometrySetIntValue(a1, 13, 1);
}

uint64_t C3DPyramidHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 2;
  a2[1] = a1[75];
  a2[2] = a1[54];
  a2[3] = a1[55];
  a2[4] = a1[56];
  a2[5] = a1[66];
  a2[6] = a1[67];
  a2[7] = a1[68];
  a2[8] = a1[77];
  return 36;
}

float C3DSphereGetBoundingBoxForSphereParameters(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&a3 = a3;
    *&a4 = -*&a3;
    *(a1 + 8) = -*&a3;
    *a1 = vdupq_lane_s32(*&a4, 0).u64[0];
    *(a2 + 8) = LODWORD(a3);
    *a2 = vdupq_lane_s32(*&a3, 0).u64[0];
  }

  return *&a3;
}

float C3DSphereGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    LODWORD(a4) = *(a1 + 232);
    *&a5 = -*&a4;
    *(a2 + 8) = -*&a4;
    *a2 = vdupq_lane_s32(*&a5, 0).u64[0];
    *(a3 + 8) = LODWORD(a4);
    *a3 = vdupq_lane_s32(*&a4, 0).u64[0];
  }

  return *&a4;
}

BOOL C3DSphereGetBoundingSphereForSphereParameters(_OWORD *a1, double a2)
{
  if (a1)
  {
    v2 = a2;
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a1 = v3;
  }

  return a1 != 0;
}

BOOL C3DSphereGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    HIDWORD(v2) = *(a1 + 232);
    *a2 = v2;
  }

  return a2 != 0;
}

void C3DSphereGeneratePointsCallBack(_DWORD *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6, double a7)
{
  v9 = a4;
  v11 = a2;
  LODWORD(a7) = a1[58];
  if (a6)
  {
    if (a6 == 2)
    {

      C3DGeometryGeneratePoints(a1, a2, a3, a4, a5, 2);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v12 = 0;
      v13 = vdup_n_s32(0x37800080u);
      __asm { FMOV            V3.2S, #-1.0 }

      do
      {
        v19 = *a3;
        do
        {
          v20 = 214013 * v19 + 2531011;
          v7.i32[0] = v20;
          v7.i32[1] = 214013 * v20 + 2531011;
          *v7.f32 = vmla_f32(_D3, 0x4000000040000000, vmul_f32(vcvt_f32_u32(vshr_n_u32(*v7.f32, 0x10uLL)), v13));
          v19 = 214013 * (214013 * v20 + 2531011) + 2531011;
          v7.f32[2] = ((HIWORD(v19) * 0.000015259) * 2.0) + -1.0;
          v21 = vmulq_f32(v7, v7);
          v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
        }

        while (v21.f32[0] > 1.0);
        *a3 = v19;
        if (a5)
        {
          a5[v12] = vdivq_f32(v7, vdupq_lane_s32(*v21.f32, 0));
        }

        v7 = vaddq_f32(vmulq_n_f32(v7, *&a7), 0);
        a4[v12++] = v7;
      }

      while (v12 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = vdupq_lane_s32(*&a7, 0);
    v22 = a5;
    do
    {
      v23 = 214013 * *a3 + 2531011;
      v29 = ((HIWORD(v23) * 0.000015259) * 2.0) + -1.0;
      v24 = 214013 * v23 + 2531011;
      *a3 = v24;
      v25 = ((HIWORD(v24) * 0.000015259) + (HIWORD(v24) * 0.000015259)) * 3.14159265;
      v26 = __sincosf_stret(v25);
      *v27.f32 = vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), sqrtf(1.0 - (v29 * v29)));
      v27.f32[2] = v29;
      *v9 = vmlaq_f32(0, v28, v27);
      if (a5)
      {
        *v22 = v27;
      }

      ++v22;
      ++v9;
      --v11;
    }

    while (v11);
  }
}

uint64_t C3DSphereSetupDefaultParameters(uint64_t a1)
{
  C3DParametricGeometrySetIntValue(a1, 22, 3);
  C3DParametricGeometrySetFloatValue(a1, 4, 0.5);
  C3DParametricGeometrySetIntValue(a1, 23, 24);

  return C3DParametricGeometrySetFloatValue(a1, 21, 1.0);
}

uint64_t C3DSphereHashParameters(_DWORD *a1, _DWORD *a2)
{
  *a2 = 3;
  a2[1] = a1[75];
  a2[2] = a1[76];
  a2[3] = a1[58];
  a2[4] = a1[70];
  a2[5] = a1[65];
  a2[6] = a1[77];
  return 28;
}

float64_t C3DCylinderGetBoundingBoxForCylinderParameters(uint64_t a1, uint64_t a2, float64x2_t a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a4 * -0.5;
    a3.f64[1] = a4 * 0.5;
    *&a3.f64[0] = vcvt_f32_f64(a3);
    *&v6 = -*a3.f64;
    *(a1 + 8) = -*a3.f64;
    *(&v6 + 1) = v5;
    *a1 = v6;
    *(a2 + 8) = LODWORD(a3.f64[0]);
    *a2 = a3.f64[0];
  }

  return a3.f64[0];
}