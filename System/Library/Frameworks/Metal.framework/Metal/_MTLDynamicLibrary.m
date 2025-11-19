@interface _MTLDynamicLibrary
+ (unsigned)dynamicLibraryTypeAtURL:(id)a3 device:(id)a4 error:(id *)a5;
+ (void)dynamicLibraryTypeAtURL:(void *)a1 device:(unint64_t *)a2 error:;
- (_MTLDynamicLibrary)initWithLibrary:(id)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6;
- (_MTLDynamicLibrary)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setDebugInstrumentationData:(id)a3;
@end

@implementation _MTLDynamicLibrary

- (void)setDebugInstrumentationData:(id)a3
{
  container = self->_container;
  debugInstrumentationData = container->_debugInstrumentationData;
  if (!debugInstrumentationData)
  {
    atomic_compare_exchange_strong(&container->_debugInstrumentationData, &debugInstrumentationData, a3);
    if (!debugInstrumentationData)
    {
      v5 = self->_container->_debugInstrumentationData;
    }
  }
}

- (_MTLDynamicLibrary)initWithLibrary:(id)a3 binaryData:(id)a4 device:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  v13.receiver = self;
  v13.super_class = _MTLDynamicLibrary;
  v10 = [(_MTLObjectWithLabel *)&v13 init];
  if (v10)
  {
    v11 = [a3 libraryData];
    v10->_libraryPath = (*(*v11 + 352))(v11);
    v10->_container = [[MTLDynamicLibraryContainer alloc] initWithLibrary:v11 binaryData:a4 device:a5 error:a6];
    v10->_shaderValidationEnabled = [a3 shaderValidationEnabled];
  }

  return v10;
}

- (_MTLDynamicLibrary)initWithURL:(id)a3 device:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v13.receiver = self;
  v13.super_class = _MTLDynamicLibrary;
  v10 = [(_MTLObjectWithLabel *)&v13 init];
  if (v10)
  {
    if (a3)
    {
      v11 = [[MTLDynamicLibraryContainer alloc] initWithURL:a3 device:a4 options:a5 error:a6];
      v10->_container = v11;
      if (v11)
      {
        v10->_libraryPath = [objc_msgSend(a3 "standardizedURL")];
        v10->_shaderValidationEnabled = (a5 & 2) != 0;
        return v10;
      }
    }

    else if (a6)
    {
      *a6 = newErrorWithMessage(&cfstr_UrlForDynamicL.isa, MTLDynamicLibraryErrorInvalidFile);
    }

    return 0;
  }

  return v10;
}

+ (unsigned)dynamicLibraryTypeAtURL:(id)a3 device:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [(MTLLoader *)v9 loadFileWithURL:a3 error:a5 errorDomain:&cfstr_Mtldynamiclibr.isa invalidFileErrorCode:1];
  v66 = 0;
  v65 = 0;
  v11 = [MTLLoader sliceIDForDevice:a4 legacyDriverVersion:&v66 airntDriverVersion:&v65];
  v64 = v11;
  v12 = [MTLLoader sliceIDForAIR:?];
  v13 = 0;
  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_28;
  }

  v15 = v12;
  v16 = [(MTLLoadedFile *)v10 contents];
  if ([(NSData *)v16 length]>= 0x58)
  {
    v17 = [(NSData *)v16 bytes];
    if (*v17 == 1112298573 && (*(v17 + 10) & 0x7F) != 2)
    {
      [(MTLLoader *)v9 releaseLoadedFile:v10];

      v13 = 0;
      goto LABEL_31;
    }
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
  v34 = 0;
  v35 = &v34;
  v36 = 0x5812000000;
  v37 = __Block_byref_object_copy__119;
  v38 = __Block_byref_object_dispose__120;
  v39 = &unk_185DF1D43;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke;
  v33[3] = &unk_1E6EEB140;
  v33[4] = &v42;
  v33[5] = &v34;
  v33[6] = &v60;
  v33[7] = &v52;
  v33[10] = v11;
  v33[11] = v15;
  v33[8] = &v48;
  v33[9] = &v56;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_2;
  v32[3] = &unk_1E6EEA990;
  v32[4] = v16;
  v18 = [MTLLoader deserializeUniversalBinaryHeaderWithHandler:v33 reader:v32 bytes:[(NSData *)v16 length]];
  if (*(v61 + 24) == 1 && (v19 = isVendorSliceCompatible(&v64, v16, v53[3], a4), *(v61 + 24) = v19, (v19 & 1) != 0) || (v20 = [a4 getMostCompatibleArchitecture:v43[5]], !objc_msgSend(v20, "cpuType")))
  {
    v25 = 0;
  }

  else
  {
    v21 = v35;
    v22 = [v20 cpuType];
    v31 = [v20 cpuSubtype] | (v22 << 32);
    v23 = std::unordered_map<unsigned long long,+[_MTLDynamicLibrary dynamicLibraryTypeAtURL:device:error:]::archSliceId>::operator[](v21 + 6, &v31);
    v24 = v23[1];
    v53[3] = *v23;
    v49[3] = v24;
    v25 = 1;
  }

  [v43[5] removeAllObjects];

  v43[5] = 0;
  if (!v18)
  {
    goto LABEL_20;
  }

  if (((v25 | *(v61 + 24)) & 1) == 0)
  {
LABEL_21:
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if (*(v57 + 24))
    {
      v13 = v26;
    }

    else
    {
      v13 = 4;
    }

    goto LABEL_27;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_3;
  v30[3] = &unk_1E6EEB168;
  v30[5] = &v56;
  v30[6] = &v52;
  v30[4] = v16;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_4;
  v29[3] = &unk_1E6EEB0F0;
  v29[4] = v16;
  v29[5] = &v52;
  if (![MTLLoader deserializeMachOWrapperWithType:v30 payloadHandler:v29 reader:?])
  {
LABEL_20:
    v13 = 0;
    goto LABEL_27;
  }

  if ((v61[3] & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = 2;
LABEL_27:
  [(MTLLoader *)v9 releaseLoadedFile:v10];
  _Block_object_dispose(&v34, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v40);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
LABEL_28:

  if (a5 && *a5)
  {
    v27 = *a5;
  }

LABEL_31:
  objc_autoreleasePoolPop(v8);
  return v13;
}

+ (void)dynamicLibraryTypeAtURL:(void *)a1 device:(unint64_t *)a2 error:
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLDynamicLibrary;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [(_MTLObjectWithLabel *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = _MTLDynamicLibrary;
  v7 = [(_MTLDynamicLibrary *)&v15 description];
  v16[0] = v4;
  v16[1] = @"label =";
  v8 = @"<none>";
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = @"<none>";
  }

  v16[2] = v9;
  v16[3] = v4;
  installName = self->_container->_installName;
  if (!installName)
  {
    installName = @"<none>";
  }

  v16[4] = @"installName =";
  v16[5] = installName;
  libraryPath = self->_libraryPath;
  v16[6] = v4;
  v16[7] = @"loadPath =";
  if (libraryPath)
  {
    v8 = libraryPath;
  }

  v16[8] = v8;
  v12 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 9), "componentsJoinedByString:", @" "];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end