@interface MTLDynamicLibraryContainer
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (MTLDynamicLibraryContainer)initWithLibrary:(void *)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6;
- (MTLDynamicLibraryContainer)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)airData;
- (id)reflectionData;
- (void)dealloc;
- (void)initReflectionData;
- (void)initWithURL:(void *)a1 device:(unint64_t *)a2 options:error:;
- (void)release;
@end

@implementation MTLDynamicLibraryContainer

- (MTLDynamicLibraryContainer)initWithLibrary:(void *)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  v25.receiver = self;
  v25.super_class = MTLDynamicLibraryContainer;
  v10 = [(MTLDynamicLibraryContainer *)&v25 init];
  if (v10)
  {
    *(v10 + 2) = a5;
    v11 = (*(*a3 + 32))(a3);
    *(v10 + 10) = v11;
    *(v10 + 14) = [v11 length];
    *(v10 + 34) = [MTLLoader sliceIDForAIR:a3]>> 32;
    v12 = (*(*a3 + 56))(a3);
    v13 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    *(v10 + 6) = v14;
    v15 = (*(*a3 + 40))(a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    *(v10 + 5) = v16;
    v17 = (*(*a3 + 72))(a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    *(v10 + 8) = v18;
    v19 = (*(*a3 + 64))(a3);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    *(v10 + 7) = v20;
    v21 = (*(*a3 + 104))(a3);
    *(v10 + 9) = v21;
    if (v21 && [v21 length])
    {
      v22 = (*(*a3 + 344))(a3);
      v23 = *v22;
      *(v10 + 156) = v22[1];
      *(v10 + 140) = v23;
      (*(*a3 + 256))(a3, v10 + 88, v10 + 96);
      (*(*a3 + 264))(a3, v10 + 120, v10 + 128, v10 + 132, a6);
      *(v10 + 3) = a4;
      dispatch_retain(a4);
      *(v10 + 4) = 0;
      *(v10 + 46) = 0;
    }

    else
    {
      if (a6)
      {
        *a6 = newErrorWithMessage(&cfstr_LibraryHasNoIn.isa, MTLDynamicLibraryErrorCompilationFailure);
      }

      return 0;
    }
  }

  return v10;
}

- (MTLDynamicLibraryContainer)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v84.receiver = self;
  v84.super_class = MTLDynamicLibraryContainer;
  v10 = [(MTLDynamicLibraryContainer *)&v84 init];
  if (!v10)
  {
    return v10;
  }

  *(v10 + 2) = a4;
  v11 = *(a4 + 61);
  v12 = [(MTLLoader *)v11 loadFileWithURL:a3 error:a6 errorDomain:&cfstr_Mtldynamiclibr.isa invalidFileErrorCode:1];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = [(MTLLoader *)v11 associateLoadedFile:v12 withObject:0];
  if (!v14)
  {
    v16 = [(MTLLoadedFile *)v13 contents];
    v83 = 0;
    v82 = 0;
    v81 = [MTLLoader sliceIDForDevice:a4 legacyDriverVersion:&v83 airntDriverVersion:&v82];
    v17 = [MTLLoader sliceIDForAIR:?];
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3052000000;
    v62 = __Block_byref_object_copy__0;
    v63 = __Block_byref_object_dispose__0;
    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
    v51 = 0;
    v52 = &v51;
    v53 = 0x5812000000;
    v54 = __Block_byref_object_copy__9;
    v55 = __Block_byref_object_dispose__10;
    v56 = &unk_185DF1D43;
    memset(v57, 0, sizeof(v57));
    v58 = 1065353216;
    *v50 = 0;
    v18 = _MTLGetMTLCompilerLLVMVersionForDevice(a4);
    _MTLGetMaxAIRAndLanguageVersions(v18, &v50[1], v50);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke;
    v48[3] = &unk_1E6EEB0A0;
    v48[6] = &v59;
    v48[7] = &v51;
    v48[8] = &v77;
    v48[9] = &v69;
    v48[12] = v81;
    v48[13] = v17;
    v49 = v50[1];
    v48[10] = &v65;
    v48[11] = &v73;
    v48[4] = v10;
    v48[5] = v16;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_2;
    v47[3] = &unk_1E6EEA990;
    v47[4] = v16;
    v19 = [MTLLoader deserializeUniversalBinaryHeaderWithHandler:v48 reader:v47 bytes:[(NSData *)v16 length]];
    if (*(v78 + 24) == 1 && (v20 = isVendorSliceCompatible(&v81, v16, v70[3], a4), *(v78 + 24) = v20, (v20 & 1) != 0) || (v21 = [a4 getMostCompatibleArchitecture:v60[5]], !objc_msgSend(v21, "cpuType")))
    {
      v26 = 0;
    }

    else
    {
      v22 = v52;
      v23 = [v21 cpuType];
      v46 = [v21 cpuSubtype] | (v23 << 32);
      v24 = std::unordered_map<unsigned long long,[MTLDynamicLibraryContainer initWithURL:device:options:error:]::archSliceId>::operator[](v22 + 6, &v46);
      v25 = v24[1];
      v70[3] = *v24;
      v66[3] = v25;
      v26 = 1;
    }

    [v60[5] removeAllObjects];

    v60[5] = 0;
    v27 = v78;
    if ((v26 | *(v78 + 24)))
    {
      if (v19)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_3;
        v44[3] = &unk_1E6EEB0C8;
        v44[4] = v10;
        v44[5] = v16;
        v44[6] = &v73;
        v44[7] = &v69;
        v44[8] = v83;
        v44[9] = v81;
        v45 = v82;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_4;
        v43[3] = &unk_1E6EEB0F0;
        v43[4] = v16;
        v43[5] = &v69;
        v28 = [MTLLoader deserializeMachOWrapperWithType:v44 payloadHandler:v43 reader:?];
        v27 = v78;
      }

      else
      {
        v28 = 0;
      }

      *(v27 + 24) = v28;
    }

    if (*(v74 + 24) == 1)
    {
      v29 = *(v10 + 10);
      if (v74[3])
      {
        v30 = [v10 airData];
        v35 = MTLLibraryBuilder::newLibraryWithData(*(*(v10 + 2) + 440), *(v10 + 2), v30, a6, v31, v32, v33, v34);
        v36 = v35;
        if (v35)
        {
          v37 = [(_MTLLibrary *)v35 libraryData];
          (*(*v37 + 256))(v37, v10 + 88, v10 + 96);
          v38 = [(_MTLLibrary *)v36 libraryData];
          (*(*v38 + 264))(v38, v10 + 120, v10 + 128, v10 + 132, a6);
          v39 = *(v10 + 13);
          *(v10 + 11) += v39;
          *(v10 + 15) += v39;
          if ((v7 & 2) != 0)
          {
            [(_MTLLibrary *)v36 setShaderValidationEnabled:1];
          }

          dispatch_release(v30);
          if ((v78[3] & 1) == 0)
          {
            v40 = [*(v10 + 2) newDynamicLibrary:v36 error:a6];
            goto LABEL_30;
          }
        }

        else
        {
          dispatch_release(v30);
          if ((v78[3] & 1) == 0)
          {
            v40 = 0;
LABEL_30:

            if (v40)
            {
              v15 = [v40 container];

              [(MTLLoader *)v11 releaseLoadedFile:v13];
LABEL_34:
              v41 = 0;
              goto LABEL_36;
            }

            goto LABEL_32;
          }
        }
      }
    }

    else if ((v7 & 1) == 0)
    {
      if (a6)
      {
        *a6 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"MTLDynamicLibrary could not be loaded as its AIR slice is missing"], MTLDynamicLibraryErrorInvalidFile);
      }

      [(MTLLoader *)v11 releaseLoadedFile:v13];

      v41 = 0;
      v15 = 0;
      goto LABEL_36;
    }

LABEL_32:
    v15 = [(MTLLoader *)v11 associateLoadedFile:v13 withObject:v10];
    if (v15)
    {
      [(MTLLoader *)v11 releaseLoadedFile:v13];

      goto LABEL_34;
    }

    *(v10 + 4) = 0;
    *(v10 + 46) = 0;
    v41 = 1;
    *(v10 + 1) = v13;
LABEL_36:
    _Block_object_dispose(&v51, 8);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v57);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v77, 8);
    if ((v41 & 1) == 0)
    {
      return v15;
    }

    return v10;
  }

  v15 = v14;
  [(MTLLoader *)v11 releaseLoadedFile:v13];

  return v15;
}

uint64_t __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v8 = HIDWORD(a2);
  v9 = [[MTLArchitecture alloc] initWithCPUType:a2 cpuSubtype:HIDWORD(a2)];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
  v10 = *(*(a1 + 56) + 8);
  v14 = (a2 << 32) | (a2 >> 32);
  v11 = std::unordered_map<unsigned long long,[MTLDynamicLibraryContainer initWithURL:device:options:error:]::archSliceId>::operator[]((v10 + 48), &v14);
  *v11 = a3;
  v11[1] = a4;

  if (v15 == *(a1 + 96))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = a3;
    *(*(*(a1 + 80) + 8) + 24) = a4;
  }

  else if (*(a1 + 104) == a2 && *(a1 + 112) >= v8)
  {
    v12 = *(*(a1 + 88) + 8);
    if (*(v12 + 24) != 1 || *(*(a1 + 32) + 136) < v8)
    {
      *(v12 + 24) = 1;
      *(*(a1 + 32) + 80) = *(a1 + 40);
      *(*(a1 + 32) + 104) = a3;
      *(*(a1 + 32) + 112) = a4;
      *(*(a1 + 32) + 136) = v8;
    }
  }

  return 1;
}

- (void)initWithURL:(void *)a1 device:(unint64_t *)a2 options:error:
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

uint64_t __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 + a2 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + a2;
  }

  else
  {
    return 0;
  }
}

uint64_t __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = a2;
  if (*(a3 + 96))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(a1 + 32) + 80) = *(a1 + 40);
    *(*(a1 + 32) + 104) = *(a3 + 96) + *(*(*(a1 + 56) + 8) + 24);
    *(*(a1 + 32) + 112) = *(a3 + 104);
  }

  if (*(a1 + 72) != v28)
  {
    goto LABEL_4;
  }

  v11 = *(a3 + 48);
  if (*(a3 + 41))
  {
    if (*(a1 + 80) != v11)
    {
      goto LABEL_4;
    }
  }

  else if (*(a1 + 64) != v11)
  {
    goto LABEL_4;
  }

  result = [*(a3 + 56) length];
  if (!result)
  {
    goto LABEL_5;
  }

  v12 = a5 + a4 + *(*(*(a1 + 56) + 8) + 24);
  if (v12 <= [*(a1 + 40) length])
  {
    v27[0] = *(*(*(a1 + 56) + 8) + 24) + a4;
    v27[1] = a5;
    *(*(a1 + 32) + 24) = _MTLNSDataToDispatchData(*(a1 + 40), v27);
    v13 = *(a1 + 32);
    v14 = *(v13 + 156);
    v15 = *(v13 + 140);
    v16 = *(a3 + 24);
    *(v13 + 140) = *(a3 + 8);
    *(v13 + 156) = v16;
    *(a3 + 8) = v15;
    *(a3 + 24) = v14;
    v17 = *(a1 + 32);
    v18 = *(v17 + 72);
    *(v17 + 72) = *(a3 + 56);
    *(a3 + 56) = v18;
    v19 = *(a1 + 32);
    v20 = *(v19 + 64);
    *(v19 + 64) = *(a3 + 64);
    *(a3 + 64) = v20;
    v21 = *(a1 + 32);
    v22 = *(v21 + 56);
    *(v21 + 56) = *(a3 + 72);
    *(a3 + 72) = v22;
    v23 = *(a1 + 32);
    v24 = *(v23 + 40);
    *(v23 + 40) = *(a3 + 80);
    *(a3 + 80) = v24;
    v25 = *(a1 + 32);
    v26 = *(v25 + 48);
    *(v25 + 48) = *(a3 + 88);
    *(a3 + 88) = v26;
    result = 1;
    goto LABEL_5;
  }

LABEL_4:
  result = 0;
LABEL_5:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __63__MTLDynamicLibraryContainer_initWithURL_device_options_error___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 24) + a2;
  if (v4 + a3 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  fileMapping = self->_fileMapping;
  if (fileMapping)
  {
    [MTLLoader disassociateLoadedFile:fileMapping withObject:?];
  }

  vendorData = self->_vendorData;
  if (vendorData)
  {
    dispatch_release(vendorData);
  }

  reflectionData = self->_reflectionData;
  if (reflectionData)
  {
    dispatch_release(reflectionData);
  }

  v6.receiver = self;
  v6.super_class = MTLDynamicLibraryContainer;
  [(MTLDynamicLibraryContainer *)&v6 dealloc];
}

- (void)release
{
  fileMapping = self->_fileMapping;
  if (fileMapping)
  {
    v4 = *(self->_device + 61);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MTLDynamicLibraryContainer_release__block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = self;
    [(MTLLoader *)v4 executeBlockForLoadedFile:self withAssociatedObject:block block:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLDynamicLibraryContainer;
    [(MTLDynamicLibraryContainer *)&v5 release];
  }
}

id __37__MTLDynamicLibraryContainer_release__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = MTLDynamicLibraryContainer;
  return objc_msgSendSuper2(&v2, sel_release);
}

- (id)airData
{
  result = self->_airData;
  if (result)
  {
    v4 = *&self->_airOffset;
    return _MTLNSDataToDispatchData(result, &v4);
  }

  return result;
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3052000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v12[5] = 0;
  if (!self->_airData)
  {
    if (!a5)
    {
      goto LABEL_14;
    }

    v9 = newErrorWithMessage(&cfstr_AirIsRequiredB.isa, MTLDynamicLibraryErrorCompilationFailure);
    goto LABEL_11;
  }

  if (!a3 || ![a3 path] || !objc_msgSend(a3, "filePathURL"))
  {
    if (!a5)
    {
      goto LABEL_14;
    }

    v9 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLDynamicLibraryErrorInvalidFile);
LABEL_11:
    *a5 = v9;
    goto LABEL_14;
  }

  if (stat([objc_msgSend(objc_msgSend(a3 "URLByDeletingLastPathComponent")], &v11) != -1)
  {
    v8 = objc_autoreleasePoolPush();
    [MTLLoader sliceIDForDevice:0 andDriverVersion:?];
    operator new();
  }

  if (a5)
  {
    v9 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLDynamicLibraryErrorInvalidFile);
    goto LABEL_11;
  }

LABEL_14:
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  return 0;
}

BOOL __59__MTLDynamicLibraryContainer_serializeToURL_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    *(*(*(a1 + 64) + 8) + 40) = newErrorWithMessage(*(a2 + 8), MTLDynamicLibraryErrorCompilationFailure);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) replaceItemAtURL:*(a1 + 40) withItemAtURL:objc_msgSend(MEMORY[0x1E695DFF8] backupItemName:"fileURLWithPath:isDirectory:" options:*(a1 + 48) resultingItemURL:0) error:{0, 0, 0, *(*(a1 + 64) + 8) + 40}];
  }

  v3 = [*(a1 + 48) UTF8String];

  return remove(v3, v4);
}

- (void)initReflectionData
{
  os_unfair_lock_lock(&self->_reflectionDataLock);
  if (!self->_reflectionData)
  {
    if (!self->_uncompressedReflectionSize)
    {
      reflectionSize = self->_reflectionSize;
      buffer[0] = self->_reflectionOffset;
      buffer[1] = reflectionSize;
      v5 = _MTLNSDataToDispatchData(self->_airData, buffer);
LABEL_7:
      self->_reflectionData = v5;
      goto LABEL_9;
    }

    v3 = [(NSData *)self->_airData bytes];
    reflectionOffset = self->_reflectionOffset;
    buffer[0] = 0;
    if (malloc_type_posix_memalign(buffer, 0x10uLL, self->_uncompressedReflectionSize, 0x7BC230F3uLL))
    {
      if (!MTLDecompressData(buffer[0], self->_uncompressedReflectionSize, &v3[reflectionOffset], self->_reflectionSize))
      {
        free(buffer[0]);
        goto LABEL_9;
      }

      v5 = dispatch_data_create(buffer[0], self->_uncompressedReflectionSize, 0, *MEMORY[0x1E69E9648]);
      goto LABEL_7;
    }
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_reflectionDataLock);
}

- (id)reflectionData
{
  result = self->_reflectionData;
  if (!result)
  {
    if (self->_airData && self->_reflectionSize)
    {
      [(MTLDynamicLibraryContainer *)self initReflectionData];
      return self->_reflectionData;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end