@interface MTLLoader
+ (BOOL)ReadHashTable:(unint64_t)a3 begin:(unsigned int)a4 end:(unsigned int)a5 hashList:(void *)a6 reader:(id)a7 errorHandler:(id)a8 handler:(id)a9;
+ (BOOL)airNTMachOEmpty:(uint64_t)a3 type:;
+ (BOOL)deserializeHashesFromAIRNTHeaderAtOffset:(unint64_t)a3 headerSize:(unint64_t)a4 singleHeaderExpected:(BOOL)a5 reader:(id)a6 errorHandler:(id)a7 handler:(id)a8;
+ (BOOL)deserializeObjectFromAIRNTHeaderAtSection:(id *)a3 reader:(id)a4 errorHandler:(id)a5 handler:(id)a6;
+ (BOOL)deserializePipelinesFromAIRNTAtSection:(id *)a3 reader:(id)a4 errorHandler:(id)a5 handler:(id)a6;
+ (_DWORD)deserializeAIRNTToolsVersionForSlice:(uint64_t)a3 sliceOffset:(uint64_t)a4 version:(uint64_t)a5 reader:;
+ (_DWORD)readMachOHeader:(uint64_t)a3 type:;
+ (uint64_t)canonicalURL:(uint64_t)a1;
+ (uint64_t)deserializeAirntMachOContainerWithHandler:(uint64_t)a3 objectHandler:(uint64_t)a4 pipelineHandler:(uint64_t)a5 errorHandler:(uint64_t)a6 reader:;
+ (uint64_t)deserializeMachOContainerWithHandler:(uint64_t)a3 reader:;
+ (uint64_t)deserializeMachOContainerWithHandlerInternal:(int)a3 expectAIRNTFormat:(uint64_t)a4 objectHandler:(uint64_t)a5 pipelineHandler:(uint64_t)a6 errorHandler:(uint64_t)a7 reader:;
+ (uint64_t)deserializeMachOWrapperWithType:(uint64_t)a3 payloadHandler:(uint64_t)a4 reader:;
+ (uint64_t)deserializeUniversalBinaryHeaderWithHandler:(uint64_t)a3 reader:(uint64_t)a4 bytes:;
+ (uint64_t)machOConformsToAIRNTFormat:(uint64_t)a3 type:;
+ (uint64_t)readLoadCommands:(unsigned int)a3 ncmds:(uint64_t)a4 sizeofcmds:(uint64_t)a5 handler:;
+ (uint64_t)serializeMachOContainerWithSlice:(uint64_t)a1 payload:(uint64_t)a2 count:(uint64_t)a3 writer:(unsigned int)a4;
+ (uint64_t)serializePaddingForOffset:(uint64_t)a3 writer:;
+ (uint64_t)serializeUniversalBinaryHeaderWithSlice:(_DWORD *)a3 offset:(_DWORD *)a4 length:(unsigned int)a5 count:(uint64_t)a6 writer:;
+ (uint64_t)sliceIDForAIR:(uint64_t)a1;
+ (unint64_t)serializeMachOContainerWithSlice:(unint64_t *)result payload:(unint64_t *)a2 count:(uint64_t)a3 writer:(char)a4;
+ (unint64_t)sliceIDForDevice:(void *)a3 andDriverVersion:;
+ (unint64_t)sliceIDForDevice:(void *)a3 legacyDriverVersion:(_DWORD *)a4 airntDriverVersion:;
+ (void)serializeMachOWrapperWithType:(uint64_t)a1 slice:(uint64_t)a2 payload:(uint64_t)a3 writer:(uint64_t)a4;
- (MTLLoader)init;
- (id).cxx_construct;
- (id)loadLibrariesWithDevice:(_MTLFunction *)a3 function:(void *)a4 insertLibraries:(uint64_t)a5 options:(id *)a6 error:;
- (uint64_t)associateLoadedFile:(uint64_t)a3 withObject:;
- (uint64_t)loadFileWithURL:(NSError *)a3 error:(NSString *)a4 errorDomain:(uint64_t)a5 invalidFileErrorCode:;
- (void)dealloc;
- (void)disassociateLoadedFile:(uint64_t)a1 withObject:(MTLLoadedFile *)a2;
- (void)executeBlockForLoadedFile:(int)a3 withAssociatedObject:(dispatch_block_t)block block:;
- (void)releaseLoadedFile:(uint64_t)a1;
@end

@implementation MTLLoader

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  return self;
}

- (MTLLoader)init
{
  v5.receiver = self;
  v5.super_class = MTLLoader;
  v2 = [(MTLLoader *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MTLLoader device cache queue", 0);
    v2->_claimQueue = v3;
    if (v3)
    {
      if (getGlobalState(void)::_loaderGlobalsOnce != -1)
      {
        [MTLLoader init];
      }

      v2->_global = getGlobalState(void)::_loaderGlobalState;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

+ (BOOL)ReadHashTable:(unint64_t)a3 begin:(unsigned int)a4 end:(unsigned int)a5 hashList:(void *)a6 reader:(id)a7 errorHandler:(id)a8 handler:(id)a9
{
  v10 = a7;
  v15 = (*(a7 + 2))(a7, a3, 8);
  if (v15 || (v16 = (*(a8 + 2))(a8, 0)) != 0)
  {
    v17 = *v15;
    if (!v17)
    {
LABEL_35:
      LOBYTE(v16) = 1;
      return v16;
    }

    v62 = v17 << 7;
    v63 = a3 + 8;
    v18 = v10[2](v10);
    if (v18 || (v16 = (*(a8 + 2))(a8, 1)) != 0)
    {
      if (a5 | a4)
      {
        v19 = a5;
      }

      else
      {
        v19 = v17;
      }

      if (v19 > a4)
      {
        v61 = v10;
        v20 = a4;
        while (1)
        {
          v21 = v18 + (v20 << 7);
          v22 = *(a6 + 1);
          if ((*(v21 + 108) & 0x3FFFFFFF) != 0)
          {
            v23 = malloc_type_malloc(96 * ((v22 - *a6) >> 3) + 96, 0x1000040E0EAB150uLL);
            v24 = malloc_type_malloc(12 * ((*(a6 + 1) - *a6) >> 3) + 12, 0x100004052888210uLL);
            v25 = v24;
            v26 = *a6;
            if (*(a6 + 1) == *a6)
            {
              v28 = 0;
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 1;
              do
              {
                v30 = v26[v27];
                v31 = &v23[32 * v28];
                v32 = v30[1];
                *v31 = *v30;
                *(v31 + 1) = v32;
                v33 = v28 + 1;
                v34 = &v23[32 * v33];
                v35 = *(*a6 + 8 * v27);
                v36 = *(v35 + 48);
                *v34 = *(v35 + 32);
                *(v34 + 1) = v36;
                v37 = v28 + 2;
                v38 = *(*a6 + 8 * v27);
                v39 = &v23[32 * v37];
                v40 = *(v38 + 80);
                *v39 = *(v38 + 64);
                *(v39 + 1) = v40;
                v26 = *a6;
                v41 = *(a6 + 1);
                v42 = *(*a6 + 8 * v27);
                *(v24 + v28) = v42[24];
                *(v24 + v33) = v42[25];
                *(v24 + v37) = v42[26];
                v28 += v42[27] >> 30;
                v27 = v29++;
              }

              while (v27 < (v41 - v26) >> 3);
            }

            v45 = &v23[32 * v28];
            v46 = *(v21 + 16);
            *v45 = *v21;
            *(v45 + 1) = v46;
            v47 = v28 + 1;
            v48 = &v23[32 * v47];
            v49 = *(v21 + 48);
            *v48 = *(v21 + 32);
            *(v48 + 1) = v49;
            v50 = v28 + 2;
            v51 = &v23[32 * v50];
            v52 = *(v21 + 80);
            *v51 = *(v21 + 64);
            *(v51 + 1) = v52;
            *(v24 + v28) = *(v21 + 96);
            *(v24 + v47) = *(v21 + 100);
            *(v24 + v50) = *(v21 + 104);
            (*(a9 + 2))(a9, v23, v24, v28 + (*(v21 + 108) >> 30), *(v21 + 112), *(v21 + 116), *(v21 + 120), *(v21 + 124));
            free(v23);
            free(v25);
          }

          else
          {
            v43 = *(a6 + 2);
            if (v22 >= v43)
            {
              v53 = (v22 - *a6) >> 3;
              if ((v53 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v54 = v43 - *a6;
              v55 = v54 >> 2;
              if (v54 >> 2 <= (v53 + 1))
              {
                v55 = v53 + 1;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFF8)
              {
                v56 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v55;
              }

              if (v56)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a6, v56);
              }

              *(8 * v53) = v21;
              v44 = 8 * v53 + 8;
              v57 = *(a6 + 1) - *a6;
              v58 = (8 * v53 - v57);
              memcpy(v58, *a6, v57);
              v59 = *a6;
              *a6 = v58;
              *(a6 + 1) = v44;
              *(a6 + 2) = 0;
              if (v59)
              {
                operator delete(v59);
              }

              v10 = v61;
            }

            else
            {
              *v22 = v21;
              v44 = (v22 + 1);
            }

            *(a6 + 1) = v44;
            if (([a1 ReadHashTable:v62 + v63 begin:*(v21 + 112) end:*(v21 + 116) hashList:a6 reader:v10 errorHandler:a8 handler:a9] & 1) == 0)
            {
              *(a6 + 1) -= 8;
              v16 = (*(a8 + 2))(a8, 1);
              if (!v16)
              {
                return v16;
              }
            }

            *(a6 + 1) -= 8;
          }

          if (++v20 == v19)
          {
            goto LABEL_35;
          }
        }
      }

      goto LABEL_35;
    }
  }

  return v16;
}

+ (BOOL)deserializeHashesFromAIRNTHeaderAtOffset:(unint64_t)a3 headerSize:(unint64_t)a4 singleHeaderExpected:(BOOL)a5 reader:(id)a6 errorHandler:(id)a7 handler:(id)a8
{
  v10 = a5;
  v12 = (*(a6 + 2))(a6, a3, a4);
  v13 = v12;
  if (!v10)
  {
    if (v12 || (*(a7 + 2))(a7, 0))
    {
      v15 = 8;
      v14 = v13;
      goto LABEL_8;
    }

    return 0;
  }

  if (!v12 && !(*(a7 + 2))(a7, 0))
  {
    return 0;
  }

  v14 = v13 + 5;
  v15 = 68;
LABEL_8:
  v16 = *(v13 + v15);
  if (*v14)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    return [a1 ReadHashTable:a8 begin:? end:? hashList:? reader:? errorHandler:? handler:?];
  }

  (*(a7 + 2))(a7, 3);
  return 1;
}

+ (BOOL)deserializeObjectFromAIRNTHeaderAtSection:(id *)a3 reader:(id)a4 errorHandler:(id)a5 handler:(id)a6
{
  v8 = a4;
  if (!a3->var1)
  {
    if (!a3[3].var1)
    {
      goto LABEL_17;
    }

    v19 = (*(a4 + 2))(a4, a3[3].var0);
    if (!v19)
    {
      goto LABEL_17;
    }

    v36 = *(v19 + 8);
    v37 = *v19;
    v20 = v8[2](v8, a3[8].var0, a3[8].var1);
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = v8;
    v39 = *v20;
    v17 = *(v20 + 8);
    v22 = v8[2](v8, a3[2].var0, a3[2].var1);
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v21[2](v21, a3[7].var0, a3[7].var1);
    if (!v25)
    {
      goto LABEL_17;
    }

    v42 = v24;
    v43 = v23;
    v40 = a6;
    v13 = *v25;
    v14 = v25[1];
    v8 = v21;
    v26 = v21[2](v21, a3[1].var0, a3[1].var1);
    if (!v26)
    {
      goto LABEL_17;
    }

    v16 = *v26;
    v18 = *(v26 + 8);
    if (a3[4].var1)
    {
      v27 = (v8[2])(v8, a3[4].var0);
      if (!v27)
      {
        goto LABEL_17;
      }

      v41 = *v27;
      v11 = *(v27 + 8);
    }

    else
    {
      v11 = 0;
      v41 = 0;
    }

    v12 = v36;
    v15 = v39;
    goto LABEL_4;
  }

  v10 = (*(a4 + 2))(a4, a3->var0);
  if (!v10)
  {
LABEL_17:
    v28 = 0;
    return v28 & 1;
  }

  v40 = a6;
  v41 = 0;
  v11 = 0;
  v37 = *(v10 + 24);
  v43 = *(v10 + 16);
  v12 = *(v10 + 60);
  v42 = *(v10 + 56);
  v13 = *(v10 + 80);
  v14 = *(v10 + 88);
  v15 = *v10;
  v16 = *(v10 + 8);
  v17 = *(v10 + 48);
  v18 = *(v10 + 52);
LABEL_4:
  v35 = v12;
  if (!v12)
  {
    (*(a5 + 2))(a5, 3);
  }

  v8[2](v8, v15, 40 * v17);
  v38 = v8[2](v8, v43, 56 * v42);
  v8[2](v8, v16, 40 * v18);
  v8[2](v8, v13, v14);
  if (v11)
  {
    v8[2](v8, v41, 24 * v11);
  }

  v29 = v35;
  if (v35)
  {
    v30 = v8[2](v8, v37, 36uLL);
    if (v30 || (v31 = (*(a5 + 2))(a5, 5), v30 = 0, v31))
    {
      v32 = *(v38 + 56 * *(v30 + 4) + 48);
      if ((v32 & 0x20) == 0)
      {
        operator new();
      }

      memset(&v44, 0, 80);
      memset(&v44.st_birthtimespec.tv_nsec, 0, 24);
      LODWORD(v44.st_birthtimespec.tv_sec) = v32;
      v40[2](v40, &v44);
      MTLAirNTObject::~MTLAirNTObject(&v44);
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v28 = v33 | v29;
  return v28 & 1;
}

+ (BOOL)deserializePipelinesFromAIRNTAtSection:(id *)a3 reader:(id)a4 errorHandler:(id)a5 handler:(id)a6
{
  if (a3->var1)
  {
    v9 = (*(a4 + 2))(a4, a3->var0);
    if (!v9)
    {
      return v9;
    }

    v10 = v9;
    v11 = *(v9 + 64);
    v12 = *(v9 + 32);
    v9 += 80;
    v13 = (v10 + 88);
  }

  else
  {
    var1 = a3[5].var1;
    if (!var1)
    {
      v12 = 0;
      v11 = 0;
      v16 = 0;
      goto LABEL_11;
    }

    v15 = (*(a4 + 2))(a4, a3[5].var0);
    if (!v15)
    {
      LODWORD(v9) = (*(a5 + 2))(a5, 10);
      if (!v9)
      {
        return v9;
      }
    }

    v11 = *(v15 + 8);
    v12 = *v15;
    v9 = (*(a4 + 2))(a4, a3[7].var0, a3[7].var1);
    if (!v9)
    {
      return v9;
    }

    v13 = (v9 + 8);
  }

  v16 = *v9;
  var1 = *v13;
LABEL_11:
  (*(a4 + 2))(a4, v16, var1);
  (*(a4 + 2))(a4, v12, 4 * v11);
  if (v11)
  {
    operator new();
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (void)dealloc
{
  claimQueue = self->_claimQueue;
  if (claimQueue)
  {
    dispatch_release(claimQueue);
  }

  v4.receiver = self;
  v4.super_class = MTLLoader;
  [(MTLLoader *)&v4 dealloc];
}

- (id)loadLibrariesWithDevice:(_MTLFunction *)a3 function:(void *)a4 insertLibraries:(uint64_t)a5 options:(id *)a6 error:
{
  if (!a1)
  {
    return 0;
  }

  v12 = objc_autoreleasePoolPush();
  v17[0] = *(a1 + 8);
  v17[1] = a2;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 25);
  LoaderContext::setInsertLibraries(v17, a4);
  if (LoaderContext::load(v17, a3, a5, a6))
  {
    v13 = LoaderContext::finish(v17, a5, a6);
    if (!a6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!a6)
    {
LABEL_9:
      v21 = v20;
      std::vector<std::unique_ptr<LoaderContext::Image>>::__destroy_vector::operator()[abi:ne200100](&v21);
      objc_autoreleasePoolPop(v12);
      return v13;
    }
  }

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *a6;
  v21 = v20;
  std::vector<std::unique_ptr<LoaderContext::Image>>::__destroy_vector::operator()[abi:ne200100](&v21);
  objc_autoreleasePoolPop(v12);
  v15 = *a6;
  return 0;
}

void *__44__MTLLoader_associateLoadedFile_withObject___block_invoke(void *a1)
{
  result = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>((a1[4] + 24), a1 + 5);
  if (result)
  {
    result = result[3];
    *(*(a1[7] + 8) + 40) = result;
  }

  else
  {
    v3 = a1[6];
    if (v3)
    {
      v4 = a1[4];
      v5[0] = a1[5];
      v5[1] = v3;
      return std::__hash_table<std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::__unordered_map_hasher<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::hash<MTLLoadedFile *>,std::equal_to<MTLLoadedFile *>,true>,std::__unordered_map_equal<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::equal_to<MTLLoadedFile *>,std::hash<MTLLoadedFile *>,true>,std::allocator<std::__hash_value_type<MTLLoadedFile *,objc_object *>>>::__emplace_unique_key_args<MTLLoadedFile *,std::pair<MTLLoadedFile *,objc_object *>>((v4 + 24), v5);
    }
  }

  return result;
}

+ (uint64_t)canonicalURL:(uint64_t)a1
{
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a2 isDirectory:0];
  v4 = [v3 standardizedURL];

  return v4;
}

+ (unint64_t)sliceIDForDevice:(void *)a3 legacyDriverVersion:(_DWORD *)a4 airntDriverVersion:
{
  objc_opt_self();
  v7 = objc_autoreleasePoolPush();
  v15 = [a2 targetDeviceArchitecture];
  if (v15)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(MTLLoader *)0 sliceIDForDevice:v8 legacyDriverVersion:v9 airntDriverVersion:v10, v11, v12, v13, v14, v19];
  if (a3)
  {
LABEL_3:
    *a3 = [v15 driverVersion];
  }

LABEL_4:
  if (a4)
  {
    *a4 = [v15 versionCombined];
  }

  v16 = [v15 cpuType];
  v17 = [v15 subType];
  objc_autoreleasePoolPop(v7);
  return v16 | (v17 << 32);
}

+ (unint64_t)sliceIDForDevice:(void *)a3 andDriverVersion:
{
  objc_opt_self();

  return [MTLLoader sliceIDForDevice:a2 legacyDriverVersion:a3 airntDriverVersion:0];
}

+ (uint64_t)sliceIDForAIR:(uint64_t)a1
{
  v3 = 16777239;
  objc_opt_self();
  if (a2)
  {
    v4 = (*(*a2 + 120))(a2);
    return (mapAirVersionToMachOSubType(v4) << 32) | 0x1000017;
  }

  return v3;
}

+ (_DWORD)readMachOHeader:(uint64_t)a3 type:
{
  objc_opt_self();
  v5 = (*(a2 + 16))(a2, 0, 32);
  v6 = v5;
  if (a3)
  {
    if ((validateMachHeader(v5, 6) & 1) != 0 || validateMachHeader(v6, 14))
    {
      return v6;
    }

    return 0;
  }

  if ((validateMachHeader(v5, 2) & 1) == 0 && (validateMachHeader(v6, 13) & 1) == 0)
  {
    return 0;
  }

  return v6;
}

+ (uint64_t)readLoadCommands:(unsigned int)a3 ncmds:(uint64_t)a4 sizeofcmds:(uint64_t)a5 handler:
{
  objc_opt_self();
  v9 = (*(a2 + 16))(a2, 32, a4);
  if (v9)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = v9;
    v13 = 0;
    v14 = a4;
    v15 = v9;
    while (v14 >= 8)
    {
      v16 = v15[1];
      if (v14 < v16)
      {
        break;
      }

      if (*v15 == 49)
      {
        (*(a5 + 16))(a5, v15, v13, v14);
        v16 = v15[1];
      }

      v15 = (v15 + v16);
      v14 = v14 - v16;
      v13 = (v13 + 1);
      if (a3 == v13)
      {
        if (a4 < 8)
        {
          return 0;
        }

        v17 = 0;
        v18 = 1;
        while (1)
        {
          v19 = *(v12 + 4);
          if (a4 < v19)
          {
            break;
          }

          if (v18)
          {
            v18 = (*(a5 + 16))(a5, v12, v17, a4);
            v19 = *(v12 + 4);
          }

          else
          {
            v18 = 0;
          }

          v17 = (v17 + 1);
          v20 = v17 >= a3;
          if (v17 < a3)
          {
            v12 += v19;
            a4 = a4 - v19;
            if (a4 > 7)
            {
              continue;
            }
          }

          return v20 & v18;
        }

        v20 = 0;
        return v20 & v18;
      }
    }
  }

  return 0;
}

+ (BOOL)airNTMachOEmpty:(uint64_t)a3 type:
{
  objc_opt_self();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = [MTLLoader readMachOHeader:a2 type:a3];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v6 = v5[4];
  v7 = v5[5];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3812000000;
  v19 = __Block_byref_object_copy__54;
  v20 = __Block_byref_object_dispose__55;
  v21 = &unk_185DF1D43;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__MTLLoader_airNTMachOEmpty_type___block_invoke;
  v15[3] = &unk_1E6EEBC58;
  v15[4] = &v16;
  v15[5] = &v23;
  if ([MTLLoader readLoadCommands:a2 ncmds:v6 sizeofcmds:v7 handler:v15]&& (v24[3] & 1) != 0)
  {
    v8 = v17[6];
    if (v8[1])
    {
      v9 = (*(a2 + 16))(a2, *v8);
      if (v9)
      {
        v10 = *(v9 + 60);
LABEL_11:
        v11 = v10 == 0;
        goto LABEL_13;
      }
    }

    else if (v8[10])
    {
      v12 = (*(a2 + 16))(a2, v8[9]);
      if (v12)
      {
        v10 = *(v12 + 8);
        goto LABEL_11;
      }
    }
  }

  v11 = 0;
LABEL_13:
  _Block_object_dispose(&v16, 8);
  v13 = v22;
  v22 = 0;
  if (v13)
  {
    MEMORY[0x1865FF1F0](v13, 0x1000C800CE834B2);
  }

LABEL_15:
  _Block_object_dispose(&v23, 8);
  return v11;
}

uint64_t __34__MTLLoader_airNTMachOEmpty_type___block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 49)
  {
    v9[5] = v2;
    v9[6] = v3;
    if (!*(*(*(a1 + 32) + 8) + 48))
    {
      operator new[]();
    }

    v8 = 0uLL;
    v9[0] = 0;
    if ([MTLLoader isAIRHeaderExtLoadCommand:a2 headerOffset:&v8 headerSize:&v8 + 8 headerSection:v9])
    {
      v5 = *(*(*(a1 + 32) + 8) + 48) + 24 * LODWORD(v9[0]);
      v6 = v8;
      *(v5 + 16) = v9[0];
      *v5 = v6;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

+ (uint64_t)machOConformsToAIRNTFormat:(uint64_t)a3 type:
{
  objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [MTLLoader readMachOHeader:a2 type:a3];
  if (v5 && (v6 = v5[4], v7 = v5[5], v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __45__MTLLoader_machOConformsToAIRNTFormat_type___block_invoke, v10[3] = &unk_1E6EEBC80, v10[4] = &v11, [MTLLoader readLoadCommands:a2 ncmds:v6 sizeofcmds:v7 handler:v10]))
  {
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

uint64_t __45__MTLLoader_machOConformsToAIRNTFormat_type___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v4 = 0;
  if ([MTLLoader isAIRHeaderExtLoadCommand:a2 headerOffset:&v6 headerSize:&v5 headerSection:&v4])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

+ (uint64_t)deserializeMachOWrapperWithType:(uint64_t)a3 payloadHandler:(uint64_t)a4 reader:
{
  v123 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [MTLLoader readMachOHeader:a4 type:a2];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_48;
  }

  v44 = v7[5];
  v45 = v7[4];
  v42 = *(v7 + 1);
  v43 = a3;
  v99 = 0;
  v100 = &v99;
  v101 = 0x4812000000;
  v102 = __Block_byref_object_copy__58;
  v103 = __Block_byref_object_dispose__59;
  v104 = &unk_185DF1D43;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x4812000000;
  v93 = __Block_byref_object_copy__58;
  v94 = __Block_byref_object_dispose__59;
  v95 = &unk_185DF1D43;
  v98 = 0;
  v96 = 0;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0xA012000000;
  v113 = __Block_byref_object_copy__62;
  v114 = __Block_byref_object_dispose__63;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = v7[5] + 32;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3812000000;
  v52 = __Block_byref_object_copy__54;
  v53 = __Block_byref_object_dispose__55;
  v54 = &unk_185DF1D43;
  v55 = 0;
  *&v120 = objc_opt_new();
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __67__MTLLoader_deserializeMachOWrapperWithType_payloadHandler_reader___block_invoke;
  v48[3] = &unk_1E6EEBCA8;
  v48[6] = v68;
  v48[7] = &v90;
  v48[8] = &v56;
  v48[9] = &v110;
  v48[10] = &v64;
  v48[11] = &v60;
  v48[12] = &v86;
  v48[13] = &v78;
  v48[4] = a4;
  v48[5] = &v99;
  v48[14] = &v74;
  v48[15] = &v82;
  v48[17] = &v49;
  v48[18] = a2;
  v48[16] = &v70;
  if (([MTLLoader readLoadCommands:a4 ncmds:v45 sizeofcmds:v44 handler:v48]& 1) == 0 || a2 == 1 && !v111[13] || *(v65 + 24) != 1 || !v100[6])
  {
    goto LABEL_44;
  }

  if (v61[3])
  {
    v8 = *(v50[6] + 8);
    v9 = 16;
    do
    {
      v10 = v50[6];
      if (v8 || *(v10 + v9) == 3)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __67__MTLLoader_deserializeMachOWrapperWithType_payloadHandler_reader___block_invoke_3;
        v46[3] = &unk_1E6EEBCF0;
        v46[4] = &v110;
        v11 = [MTLLoader deserializeObjectFromAIRNTHeaderAtSection:v10 reader:a4 errorHandler:&__block_literal_global_18 handler:v46];
        if (v8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        break;
      }

      v18 = v9 == 208;
      v9 += 24;
    }

    while (!v18);
    goto LABEL_30;
  }

  if (v71[3])
  {
    v13 = v57[3] - 56;
    v14 = (*(a4 + 16))(a4, 56, v13);
    if (!v14)
    {
      goto LABEL_44;
    }

    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, v14, v13);
    CC_SHA256_Final(md, &c);
    v15 = v71[3];
    v17 = *v15;
    v16 = v15[1];
    v18 = *md == v17 && v109 == v16;
    if (!v18)
    {
      goto LABEL_44;
    }

    *(v111 + 88) = 1;
  }

  if (v91[6])
  {
    if (v91[7] >= 0x20)
    {
      v19 = (*(a4 + 16))(a4);
      if (v19)
      {
        v20 = v111;
        v21 = v19[1];
        *(v111 + 7) = *v19;
        *(v20 + 9) = v21;
LABEL_30:
        v22 = objc_opt_new();
        v111[16] = v22;
        v23 = objc_opt_new();
        v111[17] = v23;
        v24 = objc_opt_new();
        v25 = v111;
        v111[15] = v24;
        v26 = v87;
        if (*(v87 + 6))
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v29 = v79[3];
            if (*(v29 + v27 + 4))
            {
              v30 = v24;
              if ((*(v29 + v27 + 4) & 0xE) == 0 || (*(v29 + v27 + 4) & 0xE) == 0xE && ((v31 = *(v29 + v27 + 5), v30 = v22, *(v100 + 16) == v31) || (v30 = v23, *(v91 + 16) == v31)))
              {
                v32 = *(v29 + v27);
                v33 = *(v83 + 6);
                if (v33 <= v32)
                {
                  goto LABEL_44;
                }

                v34 = strnlen((v75[3] + v32), v33 - v32);
                v35 = objc_alloc(MEMORY[0x1E696AEC0]);
                v36 = [v35 initWithBytes:v75[3] + v32 length:v34 encoding:4];
                [v30 addObject:v36];

                v26 = v87;
              }
            }

            ++v28;
            v27 += 16;
          }

          while (v28 < *(v26 + 6));
          v25 = v111;
        }

        v12 = (*(v43 + 16))(v43, v42, v25 + 6, v100[6], v100[7], v57[3]);
        v37 = v111;
        v38 = v111[6];
        if (v38)
        {
          dispatch_release(v38);
        }

        goto LABEL_45;
      }
    }
  }

LABEL_44:
  v12 = 0;
LABEL_45:
  _Block_object_dispose(&v49, 8);
  v39 = v55;
  v55 = 0;
  if (v39)
  {
    MEMORY[0x1865FF1F0](v39, 0x1000C800CE834B2);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(v68, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v99, 8);
LABEL_48:
  v40 = *MEMORY[0x1E69E9840];
  return v12;
}

size_t __67__MTLLoader_deserializeMachOWrapperWithType_payloadHandler_reader___block_invoke(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  result = 0;
  v51 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 > 26)
  {
    if (v7 <= 48)
    {
      if (v7 == 27)
      {
        if (a4 < 0x18)
        {
          goto LABEL_85;
        }

        if (*(*(a1[11] + 8) + 24))
        {
          goto LABEL_89;
        }

        if (*(a2 + 4) != 24)
        {
          goto LABEL_85;
        }

        result = 0;
        if (a3)
        {
          goto LABEL_90;
        }

        v36 = *(a1[16] + 8);
        if (*(v36 + 24))
        {
          goto LABEL_90;
        }

        v37 = a2 + 8;
LABEL_77:
        *(v36 + 24) = v37;
        goto LABEL_89;
      }

      if (v7 != 42)
      {
        goto LABEL_90;
      }

      if (*(*(a1[11] + 8) + 24))
      {
        goto LABEL_89;
      }

      if (*(a2 + 4) == 16 && (*(*(a1[10] + 8) + 24) & 1) == 0)
      {
        v12 = *(a2 + 8);
        goto LABEL_88;
      }

LABEL_85:
      result = 0;
      goto LABEL_90;
    }

    if (v7 == 49)
    {
      if (!*(*(a1[17] + 8) + 48))
      {
        operator new[]();
      }

      v48 = 0uLL;
      *&v49[0] = 0;
      if ([MTLLoader isAIRHeaderExtLoadCommand:a2 headerOffset:&v48 headerSize:&v48 + 8 headerSection:v49])
      {
        v38 = *(*(a1[17] + 8) + 48) + 24 * LODWORD(v49[0]);
        v39 = v48;
        *(v38 + 16) = *&v49[0];
        *v38 = v39;
        *(*(a1[11] + 8) + 24) = 1;
        *(*(a1[9] + 8) + 89) = 1;
      }

      goto LABEL_89;
    }

    if (v7 != 50)
    {
      goto LABEL_90;
    }

    v13 = *(a2 + 4);
    if (v13 < 0x18)
    {
      goto LABEL_85;
    }

    LODWORD(v45) = 0;
    v14 = *(a2 + 20);
    if (8 * v14 + 24 != v13)
    {
      goto LABEL_85;
    }

    if (!v14)
    {
      v12 = 0;
LABEL_88:
      *(*(a1[9] + 8) + 96) = v12;
      *(*(a1[10] + 8) + 24) = 1;
      goto LABEL_89;
    }

    v15 = (a2 + 28);
    while (1)
    {
      v16 = *(v15 - 1);
      if (v16 == 1026)
      {
        break;
      }

      if (v16 == 1027)
      {
        v17 = &v45;
LABEL_28:
        *v17 = *v15;
      }

      v15 += 2;
      if (!--v14)
      {
        v12 = v45;
        goto LABEL_88;
      }
    }

    v17 = &v48;
    goto LABEL_28;
  }

  if (v7 <= 11)
  {
    if (v7 == 2)
    {
      if (*(a2 + 4) == 24)
      {
        *(*(a1[12] + 8) + 24) = *(a2 + 12);
        v40 = *(a2 + 8);
        v41 = 16 * *(*(a1[12] + 8) + 24);
        *(*(a1[13] + 8) + 24) = (*(a1[4] + 16))();
        v42 = *(a2 + 16);
        v43 = *(a2 + 20);
        *(*(a1[14] + 8) + 24) = (*(a1[4] + 16))();
        *(*(a1[15] + 8) + 24) = *(a2 + 20);
        if (*(*(a1[13] + 8) + 24))
        {
          if (*(*(a1[14] + 8) + 24))
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      if (v7 != 11)
      {
        goto LABEL_90;
      }

      if (a1[18] == 1 && *(a2 + 4) == 80)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_85;
  }

  if ((v7 - 12) >= 2)
  {
    if (v7 != 25)
    {
      goto LABEL_90;
    }

    if (a4 >= 0x48)
    {
      v18 = *(a2 + 64);
      if (80 * v18 + 72 <= a4)
      {
        v19 = strcmp("__TEXT", (a2 + 8));
        v20 = strcmp("__DATA", (a2 + 8));
        if (v18)
        {
          v21 = v20;
          v22 = 0;
          v23 = a2 + 72;
          do
          {
            v24 = v23 + 80 * v22;
            if (*(v24 + 16) == *(a2 + 8) && *(v24 + 24) == *(a2 + 16))
            {
              if (!strcmp((v23 + 80 * v22), "__text"))
              {
                v32 = 1;
              }

              else
              {
                v48 = xmmword_1E6EEBE70;
                v49[0] = *&off_1E6EEBE80;
                v49[1] = xmmword_1E6EEBE90;
                v50 = "__object";
                v46 = 0;
                v47 = 0;
                v45 = 0;
                std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&v45, &v48, &v51, 7uLL);
                v27 = v45;
                v26 = v46;
                if (v45 == v46)
                {
                  v32 = 0;
                }

                else
                {
                  v28 = v21;
                  v29 = v19;
                  v30 = (v45 + 8);
                  do
                  {
                    v31 = strncmp(v24, *(v30 - 1), 0x10uLL);
                    v32 = v31 == 0;
                    if (v31)
                    {
                      v33 = v30 == v26;
                    }

                    else
                    {
                      v33 = 1;
                    }

                    ++v30;
                  }

                  while (!v33);
                  v19 = v29;
                  v21 = v28;
                  v23 = a2 + 72;
                }

                if (v27)
                {
                  v46 = v27;
                  operator delete(v27);
                }
              }

              if (!v19 && v32)
              {
                v34 = *(a1[5] + 8);
                if (*(v34 + 48))
                {
                  goto LABEL_85;
                }

                *(v34 + 48) = *(v24 + 48);
                *(*(a1[5] + 8) + 56) = *(v24 + 40);
                *(*(a1[5] + 8) + 64) = *(*(a1[6] + 8) + 24);
              }

              if (!v21 && !strcmp("__data", v24))
              {
                v35 = *(a1[7] + 8);
                if (*(v35 + 48))
                {
                  goto LABEL_85;
                }

                *(v35 + 48) = *(v24 + 48);
                *(*(a1[7] + 8) + 56) = *(v24 + 40);
                *(*(a1[7] + 8) + 64) = *(*(a1[6] + 8) + 24);
              }
            }

            ++*(*(a1[6] + 8) + 24);
            ++v22;
          }

          while (v22 < *(a2 + 64));
        }

        v36 = *(a1[8] + 8);
        v37 = *(v36 + 24);
        if (v37 <= *(a2 + 48) + *(a2 + 40))
        {
          v37 = *(a2 + 48) + *(a2 + 40);
        }

        goto LABEL_77;
      }
    }

    goto LABEL_85;
  }

  if (a4 < 0x18)
  {
    goto LABEL_85;
  }

  result = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x18)
  {
    v9 = *(a2 + 4);
    if (v9 > v8)
    {
      result = strnlen((a2 + v8), v9 - v8);
      if (result)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 + v8 length:result encoding:4];
        v11 = *(a1[9] + 8);
        if (*a2 != 13)
        {
          [*(v11 + 112) addObject:v10];
          goto LABEL_89;
        }

        if (!*(v11 + 104))
        {
          *(*(a1[9] + 8) + 104) = v10;
LABEL_89:
          result = 1;
          goto LABEL_90;
        }

        goto LABEL_85;
      }
    }
  }

LABEL_90:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __67__MTLLoader_deserializeMachOWrapperWithType_payloadHandler_reader___block_invoke_3(uint64_t a1, MTLAirNTObject *this)
{
  v3 = **this;
  v5 = *v3;
  v4 = v3[1];
  *(*(*(a1 + 32) + 8) + 144) = v5;
  *(*(*(a1 + 32) + 8) + 152) = v4;
  MTLAirNTObject::~MTLAirNTObject(this);
  MEMORY[0x1865FF210](this, 0x10D0C40EB84C869);
  return 1;
}

+ (_DWORD)deserializeAIRNTToolsVersionForSlice:(uint64_t)a3 sliceOffset:(uint64_t)a4 version:(uint64_t)a5 reader:
{
  objc_opt_self();
  result = (*(a5 + 16))(a5, 0, 32);
  if (result)
  {
    if (*result == -17958193 && ((v8 = result[1], (v8 - 16777235) <= 4) ? (v9 = v8 == 16777238) : (v9 = 1), v9 ? (v10 = v8 == -1) : (v10 = 1), v10 && ((v11 = result[3], v12 = v11 > 0xE, v13 = (1 << v11) & 0x6144, !v12) ? (v14 = v13 == 0) : (v14 = 1), !v14)))
    {
      v15 = result[4];
      v16 = result[5];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__MTLLoader_deserializeAIRNTToolsVersionForSlice_sliceOffset_version_reader___block_invoke;
      v17[3] = &__block_descriptor_40_e32_B24__0r__load_command_II_8I16I20l;
      v17[4] = a4;
      return [MTLLoader readLoadCommands:a5 ncmds:v15 sizeofcmds:v16 handler:v17];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __77__MTLLoader_deserializeAIRNTToolsVersionForSlice_sliceOffset_version_reader___block_invoke(uint64_t a1, int32x2_t *a2)
{
  if (a2->i32[0] != 50)
  {
    return 1;
  }

  v2 = a2->u32[1];
  if (v2 >= 0x18)
  {
    v3 = *(a1 + 32);
    *v3 = vrev64_s32(a2[1]);
    v4 = a2[2].u32[1];
    v3[1].i32[0] = a2[2].i32[0];
    if (8 * v4 + 24 == v2)
    {
      if (v4)
      {
        v5 = v3 + 2;
        v6 = (v3 + 12);
        for (i = &a2[3] + 1; ; i += 2)
        {
          v8 = *(i - 1);
          v9 = v6;
          if (v8 == 1026)
          {
            goto LABEL_9;
          }

          if (v8 == 1027)
          {
            break;
          }

LABEL_10:
          if (!--v4)
          {
            return 1;
          }
        }

        v9 = v5;
LABEL_9:
        v9->i32[0] = *i;
        goto LABEL_10;
      }

      return 1;
    }
  }

  return 0;
}

+ (uint64_t)deserializeMachOContainerWithHandlerInternal:(int)a3 expectAIRNTFormat:(uint64_t)a4 objectHandler:(uint64_t)a5 pipelineHandler:(uint64_t)a6 errorHandler:(uint64_t)a7 reader:
{
  v143 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v13 = (*(a7 + 16))(a7, 0, 32);
  if (!v13 || *v13 != -17958193)
  {
    goto LABEL_54;
  }

  v14 = v13[1];
  v15 = (v14 - 16777235) > 4 || v14 == 16777238;
  if (v15 && v14 != -1)
  {
    goto LABEL_54;
  }

  v17 = v13[3];
  v70 = v13[2];
  if (v17 != 2 && v17 != 8)
  {
    if (v17 != 13)
    {
LABEL_54:
      LOBYTE(a3) = 0;
      goto LABEL_55;
    }

    if (!a3)
    {
      goto LABEL_55;
    }
  }

  v19 = v13[4];
  v20 = v13[5];
  v133 = 0;
  v134 = &v133;
  v135 = 0x4812000000;
  v136 = __Block_byref_object_copy__58;
  v137 = __Block_byref_object_dispose__59;
  v138 = &unk_185DF1D43;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v120 = 0;
  v121 = &v120;
  v122 = 0x4812000000;
  v123 = __Block_byref_object_copy__58;
  v124 = __Block_byref_object_dispose__59;
  v125 = &unk_185DF1D43;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x4812000000;
  v114 = __Block_byref_object_copy__58;
  v115 = __Block_byref_object_dispose__59;
  v116 = &unk_185DF1D43;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v106 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3812000000;
  v101 = __Block_byref_object_copy__54;
  v102 = __Block_byref_object_dispose__55;
  v103 = &unk_185DF1D43;
  v104 = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x5812000000;
  v95[3] = __Block_byref_object_copy__79;
  v95[4] = __Block_byref_object_dispose__80;
  v95[5] = &unk_185DF1D43;
  memset(v96, 0, sizeof(v96));
  v97 = 1065353216;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 1;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = v20 + 32;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke;
  v80[3] = &unk_1E6EEBD38;
  v80[4] = v93;
  v80[5] = v95;
  v80[6] = &v133;
  v80[7] = &v129;
  v80[8] = &v81;
  v80[9] = &v98;
  v80[10] = v105;
  v80[11] = &v89;
  v80[12] = &v85;
  v80[13] = &v107;
  v80[14] = &v120;
  v80[15] = &v111;
  if (([MTLLoader readLoadCommands:a7 ncmds:v19 sizeofcmds:v20 handler:v80]& 1) == 0)
  {
    goto LABEL_118;
  }

  if (a3)
  {
    v21 = *(v99[6] + 8);
    a3 = 1;
    v22 = 2;
    while (1)
    {
      v23 = v99[6];
      if (v21)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_118;
        }

        v24 = v23 + 1;
      }

      else
      {
        v24 = &v23[v22 - 1];
        v25 = v23[v22];
        v26 = (v25 != 6) & a3;
        if (v25 != 6 || ((a3 ^ 1) & 1) != 0)
        {
          goto LABEL_29;
        }

        v23 = &v23[v22 - 2];
      }

      v27 = *v23;
      v28 = *v24;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke_2;
      v77[3] = &unk_1E6EEBD60;
      v77[4] = a2;
      v78 = v14;
      v79 = v70;
      v26 = [MTLLoader deserializeHashesFromAIRNTHeaderAtOffset:v27 headerSize:v28 singleHeaderExpected:v21 != 0 reader:a7 errorHandler:a6 handler:v77];
      if (v21)
      {
        if (!v26)
        {
          goto LABEL_118;
        }

        v23 = v99[6];
        goto LABEL_35;
      }

      v23 = v99[6];
      v25 = v23[v22];
LABEL_29:
      if (v25 != 3 || v26 == 0)
      {
        v30 = (v25 != 3) & v26;
        goto LABEL_39;
      }

LABEL_35:
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke_3;
      v76[3] = &unk_1E6EEBD88;
      v76[4] = a4;
      v30 = [MTLLoader deserializeObjectFromAIRNTHeaderAtSection:v23 reader:a7 errorHandler:a6 handler:v76];
      if (v21)
      {
        if (!v30)
        {
          goto LABEL_118;
        }

        v23 = v99[6];
        goto LABEL_45;
      }

      v23 = v99[6];
      v25 = v23[v22];
LABEL_39:
      v15 = v25 == 5;
      v31 = v25 != 5;
      if (!v15 || v30 == 0)
      {
        a3 = v31 & v30;
        goto LABEL_46;
      }

LABEL_45:
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke_4;
      v75[3] = &unk_1E6EEBD88;
      v75[4] = a5;
      a3 = [MTLLoader deserializePipelinesFromAIRNTAtSection:v23 reader:a7 errorHandler:a6 handler:v75];
LABEL_46:
      if (!v21)
      {
        if (a3)
        {
          v15 = v22 == 26;
          v22 += 3;
          if (!v15)
          {
            continue;
          }
        }
      }

      goto LABEL_119;
    }
  }

  v74 = 1027;
  if (v17 != 2 || *(v90 + 24) != 1)
  {
    if (v134[6])
    {
      if (v121[6])
      {
        v36 = v121[7] != 0;
      }

      else
      {
        v36 = 0;
      }

      if (v112[6])
      {
        v37 = v112[7] != 0;
      }

      else
      {
        v37 = 0;
      }

      if (v14 == -1 && !v36 && !v37)
      {
        v69 = v134[7];
        v35 = (*(a2 + 16))(a2, (v70 << 32) | 0xFFFFFFFFLL, v86[3], 1, &+[MTLLoader deserializeMachOContainerWithHandlerInternal:expectAIRNTFormat:objectHandler:pipelineHandler:errorHandler:reader:]::dummy, &v74, 0);
        goto LABEL_69;
      }

      if (*(v90 + 24) == 1)
      {
        v38 = *(v108 + 6);
        if (v38)
        {
          __p = 0;
          v72 = 0;
          v73 = 0;
          std::vector<nlist_64>::reserve(&__p, v38);
          v39 = (*(a7 + 16))(a7, v121[6], v121[7]);
          if (!v39)
          {
            goto LABEL_122;
          }

          if (*(v108 + 6))
          {
            v40 = 0;
            v41 = v72;
            do
            {
              if (v41 >= v73)
              {
                v42 = (v41 - __p) >> 4;
                if ((v42 + 1) >> 60)
                {
                  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
                }

                v43 = (v73 - __p) >> 3;
                if (v43 <= v42 + 1)
                {
                  v43 = v42 + 1;
                }

                if (v73 - __p >= 0x7FFFFFFFFFFFFFF0)
                {
                  v44 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v44 = v43;
                }

                if (v44)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<nlist_64>>(&__p, v44);
                }

                v45 = (16 * v42);
                *v45 = *v39;
                v41 = (16 * v42 + 16);
                v46 = (16 * v42 - (v72 - __p));
                memcpy(v45 - (v72 - __p), __p, v72 - __p);
                v47 = __p;
                __p = v46;
                v72 = v41;
                v73 = 0;
                if (v47)
                {
                  operator delete(v47);
                }
              }

              else
              {
                *v41 = *v39;
                v41 += 16;
              }

              v72 = v41;
              ++v40;
              ++v39;
            }

            while (v40 < *(v108 + 6));
          }

          v48 = (*(a7 + 16))(a7, v112[6], v112[7]);
          if (v48)
          {
            v49 = __p;
            v50 = v72;
            if (__p != v72)
            {
              LOBYTE(a3) = 1;
              v51 = v14 | (v70 << 32);
              while (1)
              {
                if ((~*(v49 + 4) & 0xE) == 0)
                {
                  v52 = v134;
                  if (*(v134 + 16) == *(v49 + 5))
                  {
                    v53 = *v49;
                    v54 = v112[7];
                    if (v54 <= v53)
                    {
                      goto LABEL_122;
                    }

                    v55 = (v48 + v53);
                    v56 = v54 - v53;
                    v57 = v56 >= 0x41 ? 65 : v56;
                    v58 = strnlen(v55, v57);
                    if (v58)
                    {
                      goto LABEL_122;
                    }

                    v59 = v58 >> 1;
                    if (!v58)
                    {
                      goto LABEL_112;
                    }

                    v60 = 0;
                    v61 = v59 <= 1 ? 1 : v58 >> 1;
                    do
                    {
                      v62 = 0;
                      v63 = 0;
                      v64 = 1;
                      do
                      {
                        v65 = v64;
                        v66 = 16 * v63;
                        v67 = v55[v62];
                        if ((v67 - 48) > 9)
                        {
                          if ((v67 - 65) > 5)
                          {
                            if ((v67 - 97) > 5)
                            {
                              goto LABEL_122;
                            }

                            v63 = v67 + v66 - 87;
                          }

                          else
                          {
                            v63 = v67 + v66 - 55;
                          }
                        }

                        else
                        {
                          v63 = (v67 - 48) | v66;
                        }

                        v64 = 0;
                        ++v62;
                      }

                      while ((v65 & 1) != 0);
                      v142[v60++] = v63;
                      v55 += 2;
                    }

                    while (v60 != v61);
                    if (v58 <= 0x3F)
                    {
LABEL_112:
                      bzero(&v142[v59], 32 - v59);
                    }

                    if (a3)
                    {
                      LOBYTE(a3) = (*(a2 + 16))(a2, v51, v86[3], 1, v142, &v74, v59, *(v49 + 1) - v130[3] + v52[6], 0, 0, 0);
                    }

                    else
                    {
                      LOBYTE(a3) = 0;
                    }
                  }
                }

                v49 += 4;
                if (v49 == v50)
                {
                  goto LABEL_123;
                }
              }
            }

            LOBYTE(a3) = 1;
          }

          else
          {
LABEL_122:
            LOBYTE(a3) = 0;
          }

LABEL_123:
          if (__p)
          {
            v72 = __p;
            operator delete(__p);
          }

          goto LABEL_119;
        }
      }
    }

LABEL_118:
    LOBYTE(a3) = 0;
    goto LABEL_119;
  }

  v35 = (*(a2 + 16))(a2, v14 | (v70 << 32), v86[3], 1, &+[MTLLoader deserializeMachOContainerWithHandlerInternal:expectAIRNTFormat:objectHandler:pipelineHandler:errorHandler:reader:]::dummy, &v74, 0, 0, v82[3], 0, 0);
LABEL_69:
  LOBYTE(a3) = v35;
LABEL_119:
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(v93, 8);
  _Block_object_dispose(v95, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v96);
  _Block_object_dispose(&v98, 8);
  v68 = v104;
  v104 = 0;
  if (v68)
  {
    MEMORY[0x1865FF1F0](v68, 0x1000C800CE834B2);
  }

  _Block_object_dispose(v105, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);
LABEL_55:
  v33 = *MEMORY[0x1E69E9840];
  return a3 & 1;
}

uint64_t __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2 <= 41)
  {
    if (v6 == 2)
    {
      if (*(a2 + 4) != 24)
      {
        goto LABEL_62;
      }

      *(*(a1[13] + 8) + 24) = *(a2 + 12);
      *(*(a1[14] + 8) + 48) = *(a2 + 8);
      *(*(a1[14] + 8) + 56) = 16 * *(*(a1[13] + 8) + 24);
      if (*(*(a1[14] + 8) + 56) + *(*(a1[14] + 8) + 48) > *(*(a1[8] + 8) + 24))
      {
        goto LABEL_62;
      }

      *(*(a1[15] + 8) + 48) = *(a2 + 16);
      *(*(a1[15] + 8) + 56) = *(a2 + 20);
      if (*(*(a1[15] + 8) + 56) + *(*(a1[15] + 8) + 48) > *(*(a1[8] + 8) + 24))
      {
        goto LABEL_62;
      }
    }

    else if (v6 == 25)
    {
      if (a4 < 0x48)
      {
        goto LABEL_62;
      }

      v12 = *(a2 + 64);
      if (80 * v12 + 72 > a4)
      {
        goto LABEL_62;
      }

      v35 = strcmp("__DATA", (a2 + 8));
      v36 = strcmp("__TEXT", (a2 + 8));
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = a2 + 72 + 80 * v13;
          if (*(v14 + 16) == *(a2 + 8) && *(v14 + 24) == *(a2 + 16))
          {
            v40 = xmmword_1E6EEBE70;
            v41[0] = *&off_1E6EEBE80;
            v41[1] = xmmword_1E6EEBE90;
            v42 = "__object";
            v38 = 0;
            v39 = 0;
            v37 = 0;
            std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&v37, &v40, &v43, 7uLL);
            v17 = v37;
            v16 = v38;
            if (v37 == v38)
            {
              v20 = 0;
            }

            else
            {
              v18 = v37 + 1;
              do
              {
                v19 = strncmp((a2 + 72 + 80 * v13), *(v18 - 1), 0x10uLL);
                v20 = v19 == 0;
                if (v19)
                {
                  v21 = v18 == v16;
                }

                else
                {
                  v21 = 1;
                }

                ++v18;
              }

              while (!v21);
            }

            if (v17)
            {
              v38 = v17;
              operator delete(v17);
            }

            v22 = !v20;
            if (v36)
            {
              v22 = 1;
            }

            if ((v22 & 1) == 0)
            {
              v23 = *(v14 + 40);
              *&v40 = *(v14 + 48);
              *(&v40 + 1) = v23;
              *&v41[0] = 0;
              v24 = a1[5];
              LODWORD(v41[0]) = *(*(a1[4] + 8) + 24);
              v25 = *(v24 + 8);
              v37 = &v40;
              v26 = std::__hash_table<std::__hash_value_type<unsigned long long,SectionData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SectionData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SectionData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SectionData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v25 + 48), &v40);
              *(v26 + 3) = v40;
              v26[5] = *&v41[0];
            }

            if (!v35 && !strcmp("__data", (a2 + 72 + 80 * v13)))
            {
              v27 = *(a1[6] + 8);
              if (*(v27 + 48))
              {
                goto LABEL_62;
              }

              *(v27 + 48) = *(v14 + 48);
              *(*(a1[7] + 8) + 24) = *(v14 + 32);
              *(*(a1[6] + 8) + 56) = *(v14 + 40);
              *(*(a1[6] + 8) + 64) = *(*(a1[4] + 8) + 24);
            }
          }

          ++*(*(a1[4] + 8) + 24);
          ++v13;
        }

        while (v13 < *(a2 + 64));
      }

      v28 = *(a1[8] + 8);
      v29 = *(v28 + 24);
      if (v29 <= *(a2 + 48) + *(a2 + 40))
      {
        v29 = *(a2 + 48) + *(a2 + 40);
      }

      *(v28 + 24) = v29;
    }

    goto LABEL_58;
  }

  switch(v6)
  {
    case '*':
      if (*(a2 + 4) != 16 || (*(*(a1[11] + 8) + 24) & 1) != 0)
      {
        goto LABEL_62;
      }

      *(*(a1[12] + 8) + 24) = *(a2 + 8);
      v30 = a1[11];
LABEL_57:
      *(*(v30 + 8) + 24) = 1;
      break;
    case '1':
      if (!*(*(a1[9] + 8) + 48))
      {
        operator new[]();
      }

      v40 = 0uLL;
      *&v41[0] = 0;
      if (![MTLLoader isAIRHeaderExtLoadCommand:a2 headerOffset:&v40 headerSize:&v40 + 8 headerSection:v41])
      {
        break;
      }

      v31 = *(*(a1[9] + 8) + 48) + 24 * LODWORD(v41[0]);
      v32 = v40;
      *(v31 + 16) = *&v41[0];
      *v31 = v32;
      v30 = a1[10];
      goto LABEL_57;
    case '2':
      v7 = *(a2 + 4);
      if (v7 >= 0x18)
      {
        v8 = *(a2 + 20);
        if (8 * v8 + 24 == v7)
        {
          if (v8)
          {
            v9 = (a2 + 28);
            while (1)
            {
              v10 = *(v9 - 1);
              if (v10 == 1026)
              {
                break;
              }

              if (v10 == 1027)
              {
                v11 = &v37;
LABEL_13:
                *v11 = *v9;
              }

              v9 += 2;
              if (!--v8)
              {
                goto LABEL_58;
              }
            }

            v11 = &v40;
            goto LABEL_13;
          }

          break;
        }
      }

LABEL_62:
      result = 0;
      goto LABEL_63;
  }

LABEL_58:
  result = 1;
LABEL_63:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __126__MTLLoader_deserializeMachOContainerWithHandlerInternal_expectAIRNTFormat_objectHandler_pipelineHandler_errorHandler_reader___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), 0, a4, a2, a3, 32, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)deserializeMachOContainerWithHandler:(uint64_t)a3 reader:
{
  objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MTLLoader_deserializeMachOContainerWithHandler_reader___block_invoke;
  v6[3] = &unk_1E6EEBDB0;
  v6[4] = a2;
  return [MTLLoader deserializeMachOContainerWithHandlerInternal:v6 expectAIRNTFormat:0 objectHandler:0 pipelineHandler:0 errorHandler:&__block_literal_global_85 reader:a3];
}

uint64_t __57__MTLLoader_deserializeMachOContainerWithHandler_reader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)deserializeAirntMachOContainerWithHandler:(uint64_t)a3 objectHandler:(uint64_t)a4 pipelineHandler:(uint64_t)a5 errorHandler:(uint64_t)a6 reader:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__MTLLoader_deserializeAirntMachOContainerWithHandler_objectHandler_pipelineHandler_errorHandler_reader___block_invoke;
  v12[3] = &unk_1E6EEBDB0;
  v12[4] = a2;
  return [MTLLoader deserializeMachOContainerWithHandlerInternal:v12 expectAIRNTFormat:1 objectHandler:a3 pipelineHandler:a4 errorHandler:a5 reader:a6];
}

uint64_t __105__MTLLoader_deserializeAirntMachOContainerWithHandler_objectHandler_pipelineHandler_errorHandler_reader___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 32)
  {
    return (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)deserializeUniversalBinaryHeaderWithHandler:(uint64_t)a3 reader:(uint64_t)a4 bytes:
{
  objc_opt_self();
  result = (*(a3 + 16))(a3, 0, 8);
  if (!result)
  {
    return result;
  }

  v8 = result;
  result = 0;
  v9 = *v8;
  if (*v8 > -17958194)
  {
    if (v9 == -17958193)
    {
      v16 = *((*(a3 + 16))(a3, 0, 28) + 4);
      v17 = *(a2 + 16);

      return v17(a2, v16, 0, a4);
    }

    if (v9 != 1112298573)
    {
      return result;
    }

    (*(a2 + 16))(a2, 16777239, 0, a4);
    return 1;
  }

  v10 = v8[1];
  v11 = bswap32(v10);
  if ((v9 + 1095041334) < 2)
  {
    if (v10)
    {
      for (i = 8; ; i += 20)
      {
        result = (*(a3 + 16))(a3, i, 20);
        if (!result)
        {
          break;
        }

        v13 = *(result + 12);
        if (!v13)
        {
          return 0;
        }

        (*(a2 + 16))(a2, bswap64(*(result + 4) | (*result << 32)), bswap32(*(result + 8)), bswap32(v13));
        if (!--v11)
        {
          return 1;
        }
      }

      return result;
    }

    return 1;
  }

  if (v9 != -1078264118)
  {
    return result;
  }

  if (!v10)
  {
    return 1;
  }

  v14 = 8;
  do
  {
    result = (*(a3 + 16))(a3, v14, 32);
    if (!result)
    {
      break;
    }

    v15 = *(result + 16);
    if (!v15)
    {
      return 0;
    }

    (*(a2 + 16))(a2, bswap64(*(result + 4) | (*result << 32)), bswap64(*(result + 8)), bswap64(v15));
    v14 += 32;
    result = 1;
    --v11;
  }

  while (v11);
  return result;
}

+ (void)serializeMachOWrapperWithType:(uint64_t)a1 slice:(uint64_t)a2 payload:(uint64_t)a3 writer:(uint64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(&v30, 0, sizeof(v30));
  if (a2 == 1)
  {
    v6 = *(a4 + 56);
    v7 = [v6 lengthOfBytesUsingEncoding:4];
    __src = 13;
    __src_4 = (v7 & 0xFFFFFFF8) + 32;
    v33 = xmmword_185DE2230;
    std::vector<char>::__insert_with_size[abi:ne200100]<char const*,char const*>(&v30, v30.__end_, &__src, &v34, 24);
    v8 = [v6 UTF8String];
    std::vector<char>::__insert_with_size[abi:ne200100]<char const*,char const*>(&v30, v30.__end_, v8, &v8[v7], v7);
    v9 = (LODWORD(v30.__end_) - LODWORD(v30.__begin_) + 8) & 0xFFFFFFF8;
    __x[0] = 0;
    if (v9 <= v30.__end_ - v30.__begin_)
    {
      if (v9 < v30.__end_ - v30.__begin_)
      {
        v30.__end_ = &v30.__begin_[v9];
      }
    }

    else
    {
      std::vector<char>::__append(&v30, v9 - (v30.__end_ - v30.__begin_), __x);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(a4 + 64);
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      v13 = 0;
      v18 += v11;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [v14 lengthOfBytesUsingEncoding:4];
        __src = 12;
        __src_4 = (v15 & 0xFFFFFFF8) + 32;
        v33 = xmmword_185DE2230;
        std::vector<char>::__insert_with_size[abi:ne200100]<char const*,char const*>(&v30, v30.__end_, &__src, &v34, 24);
        v16 = [v14 UTF8String];
        std::vector<char>::__insert_with_size[abi:ne200100]<char const*,char const*>(&v30, v30.__end_, v16, &v16[v15], v15);
        v17 = (LODWORD(v30.__end_) - LODWORD(v30.__begin_) + 8) & 0xFFFFFFF8;
        __x[0] = 0;
        if (v17 <= v30.__end_ - v30.__begin_)
        {
          if (v17 < v30.__end_ - v30.__begin_)
          {
            v30.__end_ = &v30.__begin_[v17];
          }
        }

        else
        {
          std::vector<char>::__append(&v30, v17 - (v30.__end_ - v30.__begin_), __x);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v11);
  }

  v24 = 0;
  __p = 0;
  v25 = 0;
  v20 = 0;
  __dst = 0;
  v22 = 0;
  operator new();
}

+ (uint64_t)serializeMachOContainerWithSlice:(uint64_t)a1 payload:(uint64_t)a2 count:(uint64_t)a3 writer:(unsigned int)a4
{
  v45[37] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a3 && a4 && ((a2 - 16777235) <= 4 && a2 != 16777238 || a2 == -1))
  {
    v7 = a4 - 1;
    if (a4 == 1)
    {
      v8 = *MEMORY[0x1E69E9840];

      [MTLLoader serializeMachOWrapperWithType:0 slice:a2 payload:a3 writer:?];
    }

    __p = 0;
    v43 = 0;
    v9 = a4;
    v44 = 0;
    std::vector<MTLLoaderMachOPayload const*>::reserve(&__p, a4);
    v39 = a2;
    v10 = v43;
    v11 = a4;
    do
    {
      if (v10 >= v44)
      {
        v12 = (v10 - __p) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v44 - __p) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v44 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(&__p, v14);
        }

        *(8 * v12) = a3;
        v10 = (8 * v12 + 8);
        v15 = (8 * v12 - (v43 - __p));
        memcpy(v15, __p, v43 - __p);
        v16 = __p;
        __p = v15;
        v43 = v10;
        v44 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v10++ = a3;
      }

      v43 = v10;
      a3 += 112;
      --v11;
    }

    while (v11);
    v17 = 126 - 2 * __clz((v10 - __p) >> 3);
    if (v10 == __p)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,false>(__p, v10, v18, 1);
    v19 = 0;
    v20 = 0;
    v21 = *__p;
    do
    {
      if (v19 == v7)
      {
        v27 = v20 + 1;
        if (v20 + 1 < 0x20)
        {
          v28 = v20 + 1;
        }

        else
        {
          v28 = 32;
        }

        memset(&v41, 0, sizeof(v41));
        v29 = (2 * v28) | 1u;
        std::vector<unsigned char>::__append(&v41, v9 * v29 + 1);
        v30 = 0;
        begin = v41.__begin_;
        *v41.__begin_ = 32;
        v32 = begin + 2;
        while (1)
        {
          if (v27)
          {
            v33 = v32;
            v34 = 8;
            v35 = v28;
            do
            {
              v36 = *(*(__p + v30) + v34);
              *(v33 - 1) = +[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::kHex[v36 >> 4];
              *v33 = +[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::kHex[v36 & 0xF];
              v33 += 2;
              ++v34;
              --v35;
            }

            while (v35);
          }

          ++v30;
          v32 += v29;
          if (v30 == v9)
          {
            memset(&v40, 0, sizeof(v40));
            std::vector<unsigned char>::reserve(&v40, 16 * v9);
            v45[0] = 0;
            v45[1] = v45;
            v45[2] = 0x2020000000;
            v45[3] = 0;
            [MTLLoader serializeMachOWrapperWithType:0 slice:v39 payload:*__p writer:?];
          }
        }
      }

      ++v19;
      v22 = *(__p + v19);
      v23 = v21 + 8;
      v24 = v21 + 40;
      v25 = 8;
      while (*(v21 + v25) == *(v22 + v25))
      {
        if (++v25 == 40)
        {
          goto LABEL_34;
        }
      }

      v24 = v21 + v25;
LABEL_34:
      v26 = v24 - v23;
      if (v24 - v23 == 32)
      {
        break;
      }

      if (v20 <= v26 + 1)
      {
        v20 = v26 + 1;
      }

      v21 = *(__p + v19);
    }

    while (*(v22 + 48) == *(*__p + 48));
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (uint64_t)serializeUniversalBinaryHeaderWithSlice:(_DWORD *)a3 offset:(_DWORD *)a4 length:(unsigned int)a5 count:(uint64_t)a6 writer:
{
  objc_opt_self();
  if (a5)
  {
    if (a5 == 1)
    {
      return 1;
    }

    v26[0] = -1095041334;
    v26[1] = bswap32(a5);
    LODWORD(result) = (*(a6 + 16))(a6, v26, 8);
    v12 = a5;
    v13 = 20 * a5 + 8;
    v14 = (a2 + 4);
    v15 = a4;
    v16 = a3;
    while (1)
    {
      v17 = *(v14 - 1);
      if ((v17 - 16777235 > 4 || v17 == 16777238) && v17 != -1)
      {
        return 0;
      }

      v20 = (a3 == 0) & result;
      if (a3 && ((result ^ 1) & 1) == 0)
      {
        v20 = v16[1] == 0;
      }

      v21 = (a4 == 0) & v20;
      if (a4 && v20)
      {
        v21 = v15[1] == 0;
      }

      v22 = bswap32(*v14);
      v25[0] = bswap32(v17);
      v25[1] = v22;
      v23 = a3 ? *v16 : 0;
      v25[2] = bswap32(v23);
      v24 = a4 ? *v15 : 0;
      v25[3] = bswap32(v24);
      v25[4] = 50331648;
      if (a3)
      {
        if (*v16 < v13)
        {
          return 0;
        }
      }

      if (a4 && !*v15)
      {
        return 0;
      }

      if (a3)
      {
        if ((((*v16 & 7) == 0) & v21) == 0)
        {
          result = 0;
          if ((*v16 & 7) != 0)
          {
            return result;
          }

          goto LABEL_36;
        }
      }

      else if (!v21)
      {
        result = 0;
        goto LABEL_36;
      }

      result = (*(a6 + 16))(a6, v25, 20);
LABEL_36:
      v16 += 2;
      v15 += 2;
      v14 += 2;
      if (!--v12)
      {
        return result;
      }
    }
  }

  return 0;
}

+ (uint64_t)serializePaddingForOffset:(uint64_t)a3 writer:
{
  objc_opt_self();
  v5 = (a2 + 7) & 0xFFFFFFF8;
  if (v5 == a2)
  {
    return 1;
  }

  v6 = *(a3 + 16);

  return v6(a3, &+[MTLLoader serializePaddingForOffset:writer:]::kPadding, v5 - a2);
}

+ (unint64_t)serializeMachOContainerWithSlice:(unint64_t *)result payload:(unint64_t *)a2 count:(uint64_t)a3 writer:(char)a4
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v8;
          v9 = a2 - v8;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v178 = *v8;
                v179 = v8[1];
                v180 = bswap64(v179[1]);
                v181 = bswap64((*v8)[1]);
                if (v180 == v181 && (v180 = bswap64(v179[2]), v181 = bswap64(v178[2]), v180 == v181) && (v180 = bswap64(v179[3]), v181 = bswap64(v178[3]), v180 == v181) && (v180 = bswap64(v179[4]), v181 = bswap64(v178[4]), v180 == v181))
                {
                  v182 = 0;
                }

                else if (v180 < v181)
                {
                  v182 = -1;
                }

                else
                {
                  v182 = 1;
                }

                v253 = *(a2 - 1);
                v254 = bswap64(v253[1]);
                v255 = bswap64(v179[1]);
                if (v254 == v255 && (v254 = bswap64(v253[2]), v255 = bswap64(v179[2]), v254 == v255) && (v254 = bswap64(v253[3]), v255 = bswap64(v179[3]), v254 == v255) && (v254 = bswap64(v253[4]), v255 = bswap64(v179[4]), v254 == v255))
                {
                  v256 = 0;
                }

                else if (v254 < v255)
                {
                  v256 = -1;
                }

                else
                {
                  v256 = 1;
                }

                if (v182 < 0)
                {
                  if (v256 < 0)
                  {
                    *v8 = v253;
                  }

                  else
                  {
                    *v8 = v179;
                    v8[1] = v178;
                    v270 = *(a2 - 1);
                    v271 = bswap64(v270[1]);
                    v272 = bswap64(v178[1]);
                    if (v271 == v272 && (v271 = bswap64(v270[2]), v272 = bswap64(v178[2]), v271 == v272) && (v271 = bswap64(v270[3]), v272 = bswap64(v178[3]), v271 == v272) && (v271 = bswap64(v270[4]), v272 = bswap64(v178[4]), v271 == v272))
                    {
                      v273 = 0;
                    }

                    else if (v271 < v272)
                    {
                      v273 = -1;
                    }

                    else
                    {
                      v273 = 1;
                    }

                    if ((v273 & 0x80000000) == 0)
                    {
                      return result;
                    }

                    v8[1] = v270;
                  }

                  *(a2 - 1) = v178;
                  return result;
                }

                if ((v256 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[1] = v253;
                *(a2 - 1) = v179;
                v257 = *v8;
                v248 = v8[1];
                v258 = bswap64(v248[1]);
                v259 = bswap64((*v8)[1]);
                if (v258 != v259)
                {
                  goto LABEL_561;
                }

                v258 = bswap64(v248[2]);
                v259 = bswap64(v257[2]);
                if (v258 == v259 && (v258 = bswap64(v248[3]), v259 = bswap64(v257[3]), v258 == v259) && (v258 = bswap64(v248[4]), v259 = bswap64(v257[4]), v258 == v259))
                {
                  v260 = 0;
                }

                else
                {
LABEL_561:
                  v260 = v258 < v259 ? -1 : 1;
                }

                if ((v260 & 0x80000000) == 0)
                {
                  return result;
                }

LABEL_565:
                *v8 = v248;
                v8[1] = v257;
                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,0>(v8, v8 + 1, v8 + 2, a2 - 1);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,0>(v8, v8 + 1, v8 + 2, v8 + 3);
                v168 = *(a2 - 1);
                v169 = v8[3];
                v170 = bswap64(v168[1]);
                v171 = bswap64(v169[1]);
                if (v170 == v171 && (v170 = bswap64(v168[2]), v171 = bswap64(v169[2]), v170 == v171) && (v170 = bswap64(v168[3]), v171 = bswap64(v169[3]), v170 == v171) && (v170 = bswap64(v168[4]), v171 = bswap64(v169[4]), v170 == v171))
                {
                  v172 = 0;
                }

                else if (v170 < v171)
                {
                  v172 = -1;
                }

                else
                {
                  v172 = 1;
                }

                if ((v172 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[3] = v168;
                *(a2 - 1) = v169;
                v249 = v8[2];
                v248 = v8[3];
                v250 = bswap64(v248[1]);
                v251 = bswap64(v249[1]);
                if (v250 != v251)
                {
                  goto LABEL_552;
                }

                v250 = bswap64(v248[2]);
                v251 = bswap64(v249[2]);
                if (v250 == v251 && (v250 = bswap64(v248[3]), v251 = bswap64(v249[3]), v250 == v251) && (v250 = bswap64(v248[4]), v251 = bswap64(v249[4]), v250 == v251))
                {
                  v252 = 0;
                }

                else
                {
LABEL_552:
                  v252 = v250 < v251 ? -1 : 1;
                }

                if ((v252 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[2] = v248;
                v8[3] = v249;
                v274 = v8[1];
                v275 = bswap64(v248[1]);
                v276 = bswap64(v274[1]);
                if (v275 != v276)
                {
                  goto LABEL_573;
                }

                v275 = bswap64(v248[2]);
                v276 = bswap64(v274[2]);
                if (v275 == v276 && (v275 = bswap64(v248[3]), v276 = bswap64(v274[3]), v275 == v276) && (v275 = bswap64(v248[4]), v276 = bswap64(v274[4]), v275 == v276))
                {
                  v277 = 0;
                }

                else
                {
LABEL_573:
                  v277 = v275 < v276 ? -1 : 1;
                }

                if ((v277 & 0x80000000) == 0)
                {
                  return result;
                }

                v8[1] = v248;
                v8[2] = v274;
                v257 = *v8;
                v278 = bswap64(v248[1]);
                v279 = bswap64((*v8)[1]);
                if (v278 != v279)
                {
                  goto LABEL_582;
                }

                v278 = bswap64(v248[2]);
                v279 = bswap64(v257[2]);
                if (v278 == v279 && (v278 = bswap64(v248[3]), v279 = bswap64(v257[3]), v278 == v279) && (v278 = bswap64(v248[4]), v279 = bswap64(v257[4]), v278 == v279))
                {
                  v280 = 0;
                }

                else
                {
LABEL_582:
                  v280 = v278 < v279 ? -1 : 1;
                }

                if ((v280 & 0x80000000) == 0)
                {
                  return result;
                }

                goto LABEL_565;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v173 = *(a2 - 1);
              v174 = *v8;
              v175 = bswap64(v173[1]);
              v176 = bswap64((*v8)[1]);
              if (v175 == v176 && (v175 = bswap64(v173[2]), v176 = bswap64(v174[2]), v175 == v176) && (v175 = bswap64(v173[3]), v176 = bswap64(v174[3]), v175 == v176) && (v175 = bswap64(v173[4]), v176 = bswap64(v174[4]), v175 == v176))
              {
                v177 = 0;
              }

              else if (v175 < v176)
              {
                v177 = -1;
              }

              else
              {
                v177 = 1;
              }

              if (v177 < 0)
              {
                *v8 = v173;
                *(a2 - 1) = v174;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v183 = v8 + 1;
            v185 = v8 == a2 || v183 == a2;
            if (a4)
            {
              if (!v185)
              {
                v186 = 0;
                v187 = v8;
                do
                {
                  v189 = *v187;
                  v188 = v187[1];
                  v187 = v183;
                  v190 = bswap64(v188[1]);
                  v191 = bswap64(v189[1]);
                  if (v190 != v191 || (v190 = bswap64(v188[2]), v191 = bswap64(v189[2]), v190 != v191) || (v190 = bswap64(v188[3]), v191 = bswap64(v189[3]), v190 != v191) || (v190 = bswap64(v188[4]), v191 = bswap64(v189[4]), v190 != v191))
                  {
                    v192 = v190 < v191 ? -1 : 1;
                    if (v192 < 0)
                    {
                      v193 = v186;
                      while (1)
                      {
                        *(v8 + v193 + 8) = v189;
                        if (!v193)
                        {
                          break;
                        }

                        v189 = *(v8 + v193 - 8);
                        v194 = bswap64(v188[1]);
                        v195 = bswap64(v189[1]);
                        if (v194 == v195 && (v194 = bswap64(v188[2]), v195 = bswap64(v189[2]), v194 == v195) && (v194 = bswap64(v188[3]), v195 = bswap64(v189[3]), v194 == v195) && (v194 = bswap64(v188[4]), v195 = bswap64(v189[4]), v194 == v195))
                        {
                          v196 = 0;
                        }

                        else if (v194 < v195)
                        {
                          v196 = -1;
                        }

                        else
                        {
                          v196 = 1;
                        }

                        v193 -= 8;
                        if ((v196 & 0x80000000) == 0)
                        {
                          v197 = (v8 + v193 + 8);
                          goto LABEL_401;
                        }
                      }

                      v197 = v8;
LABEL_401:
                      *v197 = v188;
                    }
                  }

                  v183 = v187 + 1;
                  v186 += 8;
                }

                while (v187 + 1 != a2);
              }
            }

            else if (!v185)
            {
              do
              {
                v262 = *v7;
                v261 = v7[1];
                v7 = v183;
                v263 = bswap64(v261[1]);
                v264 = bswap64(v262[1]);
                if (v263 != v264 || (v263 = bswap64(v261[2]), v264 = bswap64(v262[2]), v263 != v264) || (v263 = bswap64(v261[3]), v264 = bswap64(v262[3]), v263 != v264) || (v263 = bswap64(v261[4]), v264 = bswap64(v262[4]), v263 != v264))
                {
                  v265 = v263 < v264 ? -1 : 1;
                  if (v265 < 0)
                  {
                    v266 = v183;
                    do
                    {
                      *v266 = v262;
                      v262 = *(v266 - 2);
                      v267 = bswap64(v261[1]);
                      v268 = bswap64(v262[1]);
                      if (v267 == v268 && (v267 = bswap64(v261[2]), v268 = bswap64(v262[2]), v267 == v268) && (v267 = bswap64(v261[3]), v268 = bswap64(v262[3]), v267 == v268) && (v267 = bswap64(v261[4]), v268 = bswap64(v262[4]), v267 == v268))
                      {
                        v269 = 0;
                      }

                      else if (v267 < v268)
                      {
                        v269 = -1;
                      }

                      else
                      {
                        v269 = 1;
                      }

                      --v266;
                    }

                    while (v269 < 0);
                    *v266 = v261;
                  }
                }

                v183 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v198 = (v9 - 2) >> 1;
              v199 = v198;
              do
              {
                v200 = v199;
                if (v198 >= v199)
                {
                  v201 = (2 * v199) | 1;
                  v202 = &v8[v201];
                  v203 = *v202;
                  if (2 * v200 + 2 < v9)
                  {
                    v204 = v202[1];
                    v205 = bswap64(v203[1]);
                    v206 = bswap64(v204[1]);
                    if (v205 != v206)
                    {
                      goto LABEL_413;
                    }

                    v205 = bswap64(v203[2]);
                    v206 = bswap64(v204[2]);
                    if (v205 == v206 && (v205 = bswap64(v203[3]), v206 = bswap64(v204[3]), v205 == v206) && (v205 = bswap64(v203[4]), v206 = bswap64(v204[4]), v205 == v206))
                    {
                      v207 = 0;
                    }

                    else
                    {
LABEL_413:
                      v207 = v205 < v206 ? -1 : 1;
                    }

                    if (v207 < 0)
                    {
                      v203 = v202[1];
                      ++v202;
                      v201 = 2 * v200 + 2;
                    }
                  }

                  v208 = &v8[v200];
                  v209 = *v208;
                  v210 = bswap64(v203[1]);
                  v211 = bswap64((*v208)[1]);
                  if (v210 == v211 && (v210 = bswap64(v203[2]), v211 = bswap64(v209[2]), v210 == v211) && (v210 = bswap64(v203[3]), v211 = bswap64(v209[3]), v210 == v211) && (v210 = bswap64(v203[4]), v211 = bswap64(v209[4]), v210 == v211) || (v210 < v211 ? (v212 = -1) : (v212 = 1), (v212 & 0x80000000) == 0))
                  {
                    do
                    {
                      v213 = v202;
                      *v208 = v203;
                      if (v198 < v201)
                      {
                        break;
                      }

                      v214 = (2 * v201) | 1;
                      v202 = &v8[v214];
                      v201 = 2 * v201 + 2;
                      v203 = *v202;
                      if (v201 >= v9)
                      {
                        v201 = v214;
                      }

                      else
                      {
                        v215 = v202[1];
                        v216 = bswap64(v203[1]);
                        v217 = bswap64(v215[1]);
                        if (v216 != v217)
                        {
                          goto LABEL_434;
                        }

                        v216 = bswap64(v203[2]);
                        v217 = bswap64(v215[2]);
                        if (v216 == v217 && (v216 = bswap64(v203[3]), v217 = bswap64(v215[3]), v216 == v217) && (v216 = bswap64(v203[4]), v217 = bswap64(v215[4]), v216 == v217))
                        {
                          v218 = 0;
                        }

                        else
                        {
LABEL_434:
                          v218 = v216 < v217 ? -1 : 1;
                        }

                        if (v218 >= 0)
                        {
                          v201 = v214;
                        }

                        else
                        {
                          v203 = v202[1];
                          ++v202;
                        }
                      }

                      v219 = bswap64(v203[1]);
                      v220 = bswap64(v209[1]);
                      if (v219 != v220)
                      {
                        goto LABEL_445;
                      }

                      v219 = bswap64(v203[2]);
                      v220 = bswap64(v209[2]);
                      if (v219 == v220 && (v219 = bswap64(v203[3]), v220 = bswap64(v209[3]), v219 == v220) && (v219 = bswap64(v203[4]), v220 = bswap64(v209[4]), v219 == v220))
                      {
                        v221 = 0;
                      }

                      else
                      {
LABEL_445:
                        v221 = v219 < v220 ? -1 : 1;
                      }

                      v208 = v213;
                    }

                    while ((v221 & 0x80000000) == 0);
                    *v213 = v209;
                  }
                }

                v199 = v200 - 1;
              }

              while (v200);
              do
              {
                v222 = 0;
                v223 = *v8;
                v224 = v8;
                do
                {
                  v225 = &v224[v222];
                  v226 = v225 + 1;
                  v227 = v225[1];
                  result = (2 * v222);
                  v228 = (2 * v222) | 1;
                  v222 = 2 * v222 + 2;
                  if (v222 >= v9)
                  {
                    v222 = v228;
                  }

                  else
                  {
                    v230 = v225[2];
                    v229 = v225 + 2;
                    result = v230;
                    v231 = bswap64(v227[1]);
                    v232 = bswap64(v230[1]);
                    if (v231 == v232 && (v231 = bswap64(v227[2]), v232 = bswap64(result[2]), v231 == v232) && (v231 = bswap64(v227[3]), v232 = bswap64(result[3]), v231 == v232) && (v231 = bswap64(v227[4]), v232 = bswap64(result[4]), v231 == v232))
                    {
                      v233 = 0;
                    }

                    else if (v231 < v232)
                    {
                      v233 = -1;
                    }

                    else
                    {
                      v233 = 1;
                    }

                    if (v233 >= 0)
                    {
                      v222 = v228;
                    }

                    else
                    {
                      v227 = result;
                      v226 = v229;
                    }
                  }

                  *v224 = v227;
                  v224 = v226;
                }

                while (v222 <= ((v9 - 2) >> 1));
                if (v226 == --a2)
                {
                  *v226 = v223;
                }

                else
                {
                  *v226 = *a2;
                  *a2 = v223;
                  v234 = (v226 - v8 + 8) >> 3;
                  v235 = v234 < 2;
                  v236 = v234 - 2;
                  if (!v235)
                  {
                    v237 = v236 >> 1;
                    v238 = &v8[v237];
                    v239 = *v238;
                    v240 = *v226;
                    v241 = bswap64((*v238)[1]);
                    v242 = bswap64((*v226)[1]);
                    if (v241 != v242 || (v241 = bswap64(v239[2]), v242 = bswap64(v240[2]), v241 != v242) || (v241 = bswap64(v239[3]), v242 = bswap64(v240[3]), v241 != v242) || (v241 = bswap64(v239[4]), v242 = bswap64(v240[4]), v241 != v242))
                    {
                      v243 = v241 < v242 ? -1 : 1;
                      if (v243 < 0)
                      {
                        do
                        {
                          v244 = v238;
                          *v226 = v239;
                          if (!v237)
                          {
                            break;
                          }

                          v237 = (v237 - 1) >> 1;
                          v238 = &v8[v237];
                          v239 = *v238;
                          v245 = bswap64((*v238)[1]);
                          v246 = bswap64(v240[1]);
                          if (v245 != v246)
                          {
                            goto LABEL_484;
                          }

                          v245 = bswap64(v239[2]);
                          v246 = bswap64(v240[2]);
                          if (v245 == v246 && (v245 = bswap64(v239[3]), v246 = bswap64(v240[3]), v245 == v246) && (v245 = bswap64(v239[4]), v246 = bswap64(v240[4]), v245 == v246))
                          {
                            v247 = 0;
                          }

                          else
                          {
LABEL_484:
                            v247 = v245 < v246 ? -1 : 1;
                          }

                          v226 = v244;
                        }

                        while (v247 < 0);
                        *v244 = v240;
                      }
                    }
                  }
                }

                v235 = v9-- <= 2;
              }

              while (!v235);
            }

            return result;
          }

          v10 = &v8[v9 >> 1];
          v11 = v10;
          v12 = *(a2 - 1);
          if (v9 >= 0x81)
          {
            v13 = *v10;
            v14 = *v8;
            v15 = bswap64((*v10)[1]);
            v16 = bswap64((*v8)[1]);
            if (v15 == v16 && (v15 = bswap64(v13[2]), v16 = bswap64(v14[2]), v15 == v16) && (v15 = bswap64(v13[3]), v16 = bswap64(v14[3]), v15 == v16) && (v15 = bswap64(v13[4]), v16 = bswap64(v14[4]), v15 == v16))
            {
              v17 = 0;
            }

            else if (v15 < v16)
            {
              v17 = -1;
            }

            else
            {
              v17 = 1;
            }

            v23 = bswap64(v12[1]);
            v24 = bswap64(v13[1]);
            if (v23 == v24 && (v23 = bswap64(v12[2]), v24 = bswap64(v13[2]), v23 == v24) && (v23 = bswap64(v12[3]), v24 = bswap64(v13[3]), v23 == v24) && (v23 = bswap64(v12[4]), v24 = bswap64(v13[4]), v23 == v24))
            {
              v25 = 0;
              if (v17 < 0)
              {
LABEL_31:
                if (v25 < 0)
                {
                  *v8 = v12;
                  goto LABEL_92;
                }

                *v8 = v13;
                *v10 = v14;
                v26 = *(a2 - 1);
                v27 = bswap64(v26[1]);
                v28 = bswap64(v14[1]);
                if (v27 == v28 && (v27 = bswap64(v26[2]), v28 = bswap64(v14[2]), v27 == v28) && (v27 = bswap64(v26[3]), v28 = bswap64(v14[3]), v27 == v28) && (v27 = bswap64(v26[4]), v28 = bswap64(v14[4]), v27 == v28))
                {
                  v29 = 0;
                }

                else if (v27 < v28)
                {
                  v29 = -1;
                }

                else
                {
                  v29 = 1;
                }

                if (v29 < 0)
                {
                  *v10 = v26;
LABEL_92:
                  *(a2 - 1) = v14;
                }

LABEL_93:
                v47 = v10 - 1;
                v48 = *(v10 - 1);
                v49 = v8[1];
                v50 = bswap64(v48[1]);
                v51 = bswap64(v49[1]);
                if (v50 == v51 && (v50 = bswap64(v48[2]), v51 = bswap64(v49[2]), v50 == v51) && (v50 = bswap64(v48[3]), v51 = bswap64(v49[3]), v50 == v51) && (v50 = bswap64(v48[4]), v51 = bswap64(v49[4]), v50 == v51))
                {
                  v52 = 0;
                }

                else if (v50 < v51)
                {
                  v52 = -1;
                }

                else
                {
                  v52 = 1;
                }

                v53 = *(a2 - 2);
                v54 = bswap64(v53[1]);
                v55 = bswap64(v48[1]);
                if (v54 == v55 && (v54 = bswap64(v53[2]), v55 = bswap64(v48[2]), v54 == v55) && (v54 = bswap64(v53[3]), v55 = bswap64(v48[3]), v54 == v55) && (v54 = bswap64(v53[4]), v55 = bswap64(v48[4]), v54 == v55))
                {
                  v56 = 0;
                  if (v52 < 0)
                  {
LABEL_106:
                    if (v56 < 0)
                    {
                      v8[1] = v53;
                      goto LABEL_135;
                    }

                    v8[1] = v48;
                    *v47 = v49;
                    v57 = *(a2 - 2);
                    v58 = bswap64(v57[1]);
                    v59 = bswap64(v49[1]);
                    if (v58 == v59 && (v58 = bswap64(v57[2]), v59 = bswap64(v49[2]), v58 == v59) && (v58 = bswap64(v57[3]), v59 = bswap64(v49[3]), v58 == v59) && (v58 = bswap64(v57[4]), v59 = bswap64(v49[4]), v58 == v59))
                    {
                      v60 = 0;
                    }

                    else if (v58 < v59)
                    {
                      v60 = -1;
                    }

                    else
                    {
                      v60 = 1;
                    }

                    if (v60 < 0)
                    {
                      *v47 = v57;
LABEL_135:
                      *(a2 - 2) = v49;
                    }

LABEL_136:
                    v68 = v10[1];
                    v66 = v10 + 1;
                    v67 = v68;
                    v69 = v8[2];
                    v70 = bswap64(v68[1]);
                    v71 = bswap64(v69[1]);
                    if (v70 == v71 && (v70 = bswap64(v67[2]), v71 = bswap64(v69[2]), v70 == v71) && (v70 = bswap64(v67[3]), v71 = bswap64(v69[3]), v70 == v71) && (v70 = bswap64(v67[4]), v71 = bswap64(v69[4]), v70 == v71))
                    {
                      v72 = 0;
                    }

                    else if (v70 < v71)
                    {
                      v72 = -1;
                    }

                    else
                    {
                      v72 = 1;
                    }

                    v73 = *(a2 - 3);
                    v74 = bswap64(v73[1]);
                    v75 = bswap64(v67[1]);
                    if (v74 == v75 && (v74 = bswap64(v73[2]), v75 = bswap64(v67[2]), v74 == v75) && (v74 = bswap64(v73[3]), v75 = bswap64(v67[3]), v74 == v75) && (v74 = bswap64(v73[4]), v75 = bswap64(v67[4]), v74 == v75))
                    {
                      v76 = 0;
                      if (v72 < 0)
                      {
LABEL_149:
                        if (v76 < 0)
                        {
                          v8[2] = v73;
                          goto LABEL_176;
                        }

                        v8[2] = v67;
                        *v66 = v69;
                        v77 = *(a2 - 3);
                        v78 = bswap64(v77[1]);
                        v79 = bswap64(v69[1]);
                        if (v78 == v79 && (v78 = bswap64(v77[2]), v79 = bswap64(v69[2]), v78 == v79) && (v78 = bswap64(v77[3]), v79 = bswap64(v69[3]), v78 == v79) && (v78 = bswap64(v77[4]), v79 = bswap64(v69[4]), v78 == v79))
                        {
                          v80 = 0;
                        }

                        else if (v78 < v79)
                        {
                          v80 = -1;
                        }

                        else
                        {
                          v80 = 1;
                        }

                        if (v80 < 0)
                        {
                          *v66 = v77;
LABEL_176:
                          *(a2 - 3) = v69;
                        }

LABEL_177:
                        v86 = *v11;
                        v87 = *v47;
                        v88 = bswap64((*v11)[1]);
                        v89 = bswap64((*v47)[1]);
                        if (v88 == v89 && (v88 = bswap64(v86[2]), v89 = bswap64(v87[2]), v88 == v89) && (v88 = bswap64(v86[3]), v89 = bswap64(v87[3]), v88 == v89) && (v88 = bswap64(v86[4]), v89 = bswap64(v87[4]), v88 == v89))
                        {
                          v90 = 0;
                        }

                        else if (v88 < v89)
                        {
                          v90 = -1;
                        }

                        else
                        {
                          v90 = 1;
                        }

                        v91 = *v66;
                        v92 = bswap64((*v66)[1]);
                        v93 = bswap64(v86[1]);
                        if (v92 == v93 && (v92 = bswap64(v91[2]), v93 = bswap64(v86[2]), v92 == v93) && (v92 = bswap64(v91[3]), v93 = bswap64(v86[3]), v92 == v93) && (v92 = bswap64(v91[4]), v93 = bswap64(v86[4]), v92 == v93))
                        {
                          v94 = 0;
                          if (v90 < 0)
                          {
LABEL_190:
                            if ((v94 & 0x80000000) == 0)
                            {
                              *v47 = v86;
                              *v11 = v87;
                              v95 = bswap64(v91[1]);
                              v96 = bswap64(v87[1]);
                              if (v95 != v96)
                              {
                                goto LABEL_206;
                              }

                              v95 = bswap64(v91[2]);
                              v96 = bswap64(v87[2]);
                              if (v95 == v96 && (v95 = bswap64(v91[3]), v96 = bswap64(v87[3]), v95 == v96) && (v95 = bswap64(v91[4]), v96 = bswap64(v87[4]), v95 == v96))
                              {
                                v97 = 0;
                              }

                              else
                              {
LABEL_206:
                                v97 = v95 < v96 ? -1 : 1;
                              }

                              v47 = v11;
                              v86 = v91;
                              if ((v97 & 0x80000000) == 0)
                              {
                                v86 = v87;
                                goto LABEL_217;
                              }
                            }

                            goto LABEL_216;
                          }
                        }

                        else
                        {
                          if (v92 < v93)
                          {
                            v94 = -1;
                          }

                          else
                          {
                            v94 = 1;
                          }

                          if (v90 < 0)
                          {
                            goto LABEL_190;
                          }
                        }

                        if ((v94 & 0x80000000) == 0)
                        {
LABEL_217:
                          v101 = *v8;
                          *v8 = v86;
                          *v11 = v101;
                          goto LABEL_218;
                        }

                        *v11 = v91;
                        *v66 = v86;
                        v98 = bswap64(v91[1]);
                        v99 = bswap64(v87[1]);
                        if (v98 == v99 && (v98 = bswap64(v91[2]), v99 = bswap64(v87[2]), v98 == v99) && (v98 = bswap64(v91[3]), v99 = bswap64(v87[3]), v98 == v99) && (v98 = bswap64(v91[4]), v99 = bswap64(v87[4]), v98 == v99))
                        {
                          v100 = 0;
                        }

                        else if (v98 < v99)
                        {
                          v100 = -1;
                        }

                        else
                        {
                          v100 = 1;
                        }

                        v66 = v11;
                        v86 = v87;
                        if ((v100 & 0x80000000) == 0)
                        {
                          v86 = v91;
                          goto LABEL_217;
                        }

LABEL_216:
                        *v47 = v91;
                        *v66 = v87;
                        goto LABEL_217;
                      }
                    }

                    else
                    {
                      if (v74 < v75)
                      {
                        v76 = -1;
                      }

                      else
                      {
                        v76 = 1;
                      }

                      if (v72 < 0)
                      {
                        goto LABEL_149;
                      }
                    }

                    if (v76 < 0)
                    {
                      *v66 = v73;
                      *(a2 - 3) = v67;
                      v81 = *v66;
                      v82 = v8[2];
                      v83 = bswap64((*v66)[1]);
                      v84 = bswap64(v82[1]);
                      if (v83 != v84)
                      {
                        goto LABEL_170;
                      }

                      v83 = bswap64(v81[2]);
                      v84 = bswap64(v82[2]);
                      if (v83 == v84 && (v83 = bswap64(v81[3]), v84 = bswap64(v82[3]), v83 == v84) && (v83 = bswap64(v81[4]), v84 = bswap64(v82[4]), v83 == v84))
                      {
                        v85 = 0;
                      }

                      else
                      {
LABEL_170:
                        v85 = v83 < v84 ? -1 : 1;
                      }

                      if (v85 < 0)
                      {
                        v8[2] = v81;
                        *v66 = v82;
                      }
                    }

                    goto LABEL_177;
                  }
                }

                else
                {
                  if (v54 < v55)
                  {
                    v56 = -1;
                  }

                  else
                  {
                    v56 = 1;
                  }

                  if (v52 < 0)
                  {
                    goto LABEL_106;
                  }
                }

                if (v56 < 0)
                {
                  *v47 = v53;
                  *(a2 - 2) = v48;
                  v61 = *v47;
                  v62 = v8[1];
                  v63 = bswap64((*v47)[1]);
                  v64 = bswap64(v62[1]);
                  if (v63 != v64)
                  {
                    goto LABEL_127;
                  }

                  v63 = bswap64(v61[2]);
                  v64 = bswap64(v62[2]);
                  if (v63 == v64 && (v63 = bswap64(v61[3]), v64 = bswap64(v62[3]), v63 == v64) && (v63 = bswap64(v61[4]), v64 = bswap64(v62[4]), v63 == v64))
                  {
                    v65 = 0;
                  }

                  else
                  {
LABEL_127:
                    v65 = v63 < v64 ? -1 : 1;
                  }

                  if (v65 < 0)
                  {
                    v8[1] = v61;
                    *v47 = v62;
                  }
                }

                goto LABEL_136;
              }
            }

            else
            {
              if (v23 < v24)
              {
                v25 = -1;
              }

              else
              {
                v25 = 1;
              }

              if (v17 < 0)
              {
                goto LABEL_31;
              }
            }

            if (v25 < 0)
            {
              *v10 = v12;
              *(a2 - 1) = v13;
              v37 = *v10;
              v38 = *v8;
              v39 = bswap64((*v10)[1]);
              v40 = bswap64((*v8)[1]);
              if (v39 != v40)
              {
                goto LABEL_81;
              }

              v39 = bswap64(v37[2]);
              v40 = bswap64(v38[2]);
              if (v39 == v40 && (v39 = bswap64(v37[3]), v40 = bswap64(v38[3]), v39 == v40) && (v39 = bswap64(v37[4]), v40 = bswap64(v38[4]), v39 == v40))
              {
                v41 = 0;
              }

              else
              {
LABEL_81:
                v41 = v39 < v40 ? -1 : 1;
              }

              if (v41 < 0)
              {
                *v8 = v37;
                *v10 = v38;
              }
            }

            goto LABEL_93;
          }

          v18 = *v8;
          v19 = *v10;
          v20 = bswap64((*v8)[1]);
          v21 = bswap64((*v11)[1]);
          if (v20 != v21)
          {
            goto LABEL_37;
          }

          v20 = bswap64(v18[2]);
          v21 = bswap64(v19[2]);
          if (v20 == v21 && (v20 = bswap64(v18[3]), v21 = bswap64(v19[3]), v20 == v21) && (v20 = bswap64(v18[4]), v21 = bswap64(v19[4]), v20 == v21))
          {
            v22 = 0;
          }

          else
          {
LABEL_37:
            v22 = v20 < v21 ? -1 : 1;
          }

          v30 = bswap64(v12[1]);
          v31 = bswap64(v18[1]);
          if (v30 != v31)
          {
            goto LABEL_588;
          }

          v30 = bswap64(v12[2]);
          v31 = bswap64(v18[2]);
          if (v30 == v31 && (v30 = bswap64(v12[3]), v31 = bswap64(v18[3]), v30 == v31) && (v30 = bswap64(v12[4]), v31 = bswap64(v18[4]), v30 == v31))
          {
            v32 = 0;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_588:
            if (v30 < v31)
            {
              v32 = -1;
            }

            else
            {
              v32 = 1;
            }

            if ((v22 & 0x80000000) == 0)
            {
LABEL_65:
              if (v32 < 0)
              {
                *v8 = v12;
                *(a2 - 1) = v18;
                v42 = *v8;
                v43 = *v11;
                v44 = bswap64((*v8)[1]);
                v45 = bswap64((*v11)[1]);
                if (v44 != v45)
                {
                  goto LABEL_86;
                }

                v44 = bswap64(v42[2]);
                v45 = bswap64(v43[2]);
                if (v44 == v45 && (v44 = bswap64(v42[3]), v45 = bswap64(v43[3]), v44 == v45) && (v44 = bswap64(v42[4]), v45 = bswap64(v43[4]), v44 == v45))
                {
                  v46 = 0;
                }

                else
                {
LABEL_86:
                  v46 = v44 < v45 ? -1 : 1;
                }

                if (v46 < 0)
                {
                  *v11 = v42;
                  *v8 = v43;
                }
              }

              goto LABEL_218;
            }
          }

          if (v32 < 0)
          {
            *v11 = v12;
            goto LABEL_133;
          }

          *v11 = v18;
          *v8 = v19;
          v33 = *(a2 - 1);
          v34 = bswap64(v33[1]);
          v35 = bswap64(v19[1]);
          if (v34 == v35 && (v34 = bswap64(v33[2]), v35 = bswap64(v19[2]), v34 == v35) && (v34 = bswap64(v33[3]), v35 = bswap64(v19[3]), v34 == v35) && (v34 = bswap64(v33[4]), v35 = bswap64(v19[4]), v34 == v35))
          {
            v36 = 0;
          }

          else if (v34 < v35)
          {
            v36 = -1;
          }

          else
          {
            v36 = 1;
          }

          if (v36 < 0)
          {
            *v8 = v33;
LABEL_133:
            *(a2 - 1) = v19;
          }

LABEL_218:
          --a3;
          v102 = *v8;
          if (a4)
          {
            break;
          }

          v103 = *(v8 - 1);
          v104 = bswap64(v103[1]);
          v105 = bswap64(v102[1]);
          if (v104 != v105)
          {
            goto LABEL_224;
          }

          v104 = bswap64(v103[2]);
          v105 = bswap64(v102[2]);
          if (v104 == v105 && (v104 = bswap64(v103[3]), v105 = bswap64(v102[3]), v104 == v105) && (v104 = bswap64(v103[4]), v105 = bswap64(v102[4]), v104 == v105))
          {
            v106 = 0;
          }

          else
          {
LABEL_224:
            v106 = v104 < v105 ? -1 : 1;
          }

          if (v106 < 0)
          {
            break;
          }

          v137 = *(a2 - 1);
          v138 = bswap64(v102[1]);
          v139 = bswap64(v137[1]);
          if (v138 == v139 && (v138 = bswap64(v102[2]), v139 = bswap64(v137[2]), v138 == v139) && (v138 = bswap64(v102[3]), v139 = bswap64(v137[3]), v138 == v139) && (v138 = bswap64(v102[4]), v139 = bswap64(v137[4]), v138 == v139))
          {
            v140 = 0;
          }

          else if (v138 < v139)
          {
            v140 = -1;
          }

          else
          {
            v140 = 1;
          }

          if (v140 < 0)
          {
            do
            {
              do
              {
                v147 = v8[1];
                ++v8;
                v146 = v147;
                v148 = bswap64(v102[1]);
                v149 = bswap64(v147[1]);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[2]);
                v149 = bswap64(v146[2]);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[3]);
                v149 = bswap64(v146[3]);
                if (v148 != v149)
                {
                  break;
                }

                v148 = bswap64(v102[4]);
                v149 = bswap64(v146[4]);
              }

              while (v148 == v149);
              if (v148 < v149)
              {
                v150 = -1;
              }

              else
              {
                v150 = 1;
              }
            }

            while ((v150 & 0x80000000) == 0);
          }

          else
          {
            v141 = v8 + 1;
            do
            {
              v8 = v141;
              if (v141 >= a2)
              {
                break;
              }

              v142 = *v141;
              v143 = bswap64(v102[1]);
              v144 = bswap64((*v8)[1]);
              if (v143 != v144)
              {
                goto LABEL_304;
              }

              v143 = bswap64(v102[2]);
              v144 = bswap64(v142[2]);
              if (v143 == v144 && (v143 = bswap64(v102[3]), v144 = bswap64(v142[3]), v143 == v144) && (v143 = bswap64(v102[4]), v144 = bswap64(v142[4]), v143 == v144))
              {
                v145 = 0;
              }

              else
              {
LABEL_304:
                v145 = v143 < v144 ? -1 : 1;
              }

              v141 = v8 + 1;
            }

            while ((v145 & 0x80000000) == 0);
          }

          v151 = a2;
          if (v8 < a2)
          {
            v151 = a2;
            do
            {
              v153 = *--v151;
              v152 = v153;
              v154 = bswap64(v102[1]);
              v155 = bswap64(v153[1]);
              if (v154 == v155)
              {
                v154 = bswap64(v102[2]);
                v155 = bswap64(v152[2]);
                if (v154 == v155)
                {
                  v154 = bswap64(v102[3]);
                  v155 = bswap64(v152[3]);
                  if (v154 == v155)
                  {
                    v154 = bswap64(v102[4]);
                    v155 = bswap64(v152[4]);
                    if (v154 == v155)
                    {
                      break;
                    }
                  }
                }
              }

              v156 = v154 < v155 ? -1 : 1;
            }

            while (v156 < 0);
          }

          if (v8 < v151)
          {
            v157 = *v8;
            v158 = *v151;
            do
            {
              *v8 = v158;
              *v151 = v157;
              do
              {
                do
                {
                  v159 = v8[1];
                  ++v8;
                  v157 = v159;
                  v160 = bswap64(v102[1]);
                  v161 = bswap64(v159[1]);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[2]);
                  v161 = bswap64(v157[2]);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[3]);
                  v161 = bswap64(v157[3]);
                  if (v160 != v161)
                  {
                    break;
                  }

                  v160 = bswap64(v102[4]);
                  v161 = bswap64(v157[4]);
                }

                while (v160 == v161);
                if (v160 < v161)
                {
                  v162 = -1;
                }

                else
                {
                  v162 = 1;
                }
              }

              while ((v162 & 0x80000000) == 0);
              do
              {
                v164 = *--v151;
                v158 = v164;
                v165 = bswap64(v102[1]);
                v166 = bswap64(v164[1]);
                if (v165 == v166)
                {
                  v165 = bswap64(v102[2]);
                  v166 = bswap64(v158[2]);
                  if (v165 == v166)
                  {
                    v165 = bswap64(v102[3]);
                    v166 = bswap64(v158[3]);
                    if (v165 == v166)
                    {
                      v165 = bswap64(v102[4]);
                      v166 = bswap64(v158[4]);
                      if (v165 == v166)
                      {
                        break;
                      }
                    }
                  }
                }

                v163 = v165 < v166 ? -1 : 1;
              }

              while (v163 < 0);
            }

            while (v8 < v151);
          }

          v167 = v8 - 1;
          if (v8 - 1 != v7)
          {
            *v7 = *v167;
          }

          a4 = 0;
          *v167 = v102;
        }

        v107 = 0;
        do
        {
          v108 = v8[v107 + 1];
          v109 = bswap64(v108[1]);
          v110 = bswap64(v102[1]);
          if (v109 == v110 && (v109 = bswap64(v108[2]), v110 = bswap64(v102[2]), v109 == v110) && (v109 = bswap64(v108[3]), v110 = bswap64(v102[3]), v109 == v110) && (v109 = bswap64(v108[4]), v110 = bswap64(v102[4]), v109 == v110))
          {
            v111 = 0;
          }

          else if (v109 < v110)
          {
            v111 = -1;
          }

          else
          {
            v111 = 1;
          }

          ++v107;
        }

        while (v111 < 0);
        v112 = &v8[v107];
        v113 = a2;
        if (v107 == 1)
        {
          v113 = a2;
          while (v112 < v113)
          {
            v120 = *--v113;
            v119 = v120;
            v121 = bswap64(v120[1]);
            v122 = bswap64(v102[1]);
            if (v121 == v122)
            {
              v121 = bswap64(v119[2]);
              v122 = bswap64(v102[2]);
              if (v121 == v122)
              {
                v121 = bswap64(v119[3]);
                v122 = bswap64(v102[3]);
                if (v121 == v122)
                {
                  v121 = bswap64(v119[4]);
                  v122 = bswap64(v102[4]);
                  if (v121 == v122)
                  {
                    continue;
                  }
                }
              }
            }

            v123 = v121 < v122 ? -1 : 1;
            if (v123 < 0)
            {
              break;
            }
          }
        }

        else
        {
          do
          {
            do
            {
              v115 = *--v113;
              v114 = v115;
              v116 = bswap64(v115[1]);
              v117 = bswap64(v102[1]);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[2]);
              v117 = bswap64(v102[2]);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[3]);
              v117 = bswap64(v102[3]);
              if (v116 != v117)
              {
                break;
              }

              v116 = bswap64(v114[4]);
              v117 = bswap64(v102[4]);
            }

            while (v116 == v117);
            if (v116 < v117)
            {
              v118 = -1;
            }

            else
            {
              v118 = 1;
            }
          }

          while ((v118 & 0x80000000) == 0);
        }

        if (v112 >= v113)
        {
          v135 = v112 - 1;
        }

        else
        {
          v124 = *v113;
          v125 = v112;
          v126 = v113;
          do
          {
            *v125 = v124;
            *v126 = v108;
            do
            {
              v127 = v125[1];
              ++v125;
              v108 = v127;
              v128 = bswap64(v127[1]);
              v129 = bswap64(v102[1]);
              if (v128 == v129)
              {
                v128 = bswap64(v108[2]);
                v129 = bswap64(v102[2]);
                if (v128 == v129)
                {
                  v128 = bswap64(v108[3]);
                  v129 = bswap64(v102[3]);
                  if (v128 == v129)
                  {
                    v128 = bswap64(v108[4]);
                    v129 = bswap64(v102[4]);
                    if (v128 == v129)
                    {
                      break;
                    }
                  }
                }
              }

              v130 = v128 < v129 ? -1 : 1;
            }

            while (v130 < 0);
            do
            {
              do
              {
                v132 = *--v126;
                v124 = v132;
                v133 = bswap64(v132[1]);
                v134 = bswap64(v102[1]);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[2]);
                v134 = bswap64(v102[2]);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[3]);
                v134 = bswap64(v102[3]);
                if (v133 != v134)
                {
                  break;
                }

                v133 = bswap64(v124[4]);
                v134 = bswap64(v102[4]);
              }

              while (v133 == v134);
              if (v133 < v134)
              {
                v131 = -1;
              }

              else
              {
                v131 = 1;
              }
            }

            while ((v131 & 0x80000000) == 0);
          }

          while (v125 < v126);
          v135 = v125 - 1;
        }

        if (v135 != v8)
        {
          *v8 = *v135;
        }

        *v135 = v102;
        if (v112 >= v113)
        {
          break;
        }

LABEL_287:
        result = std::__introsort<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**,false>(v7, v135, a3, a4 & 1);
        a4 = 0;
        v8 = v135 + 1;
      }

      v136 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**>(v8, v135);
      v8 = v135 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[MTLLoader serializeMachOContainerWithSlice:payload:count:writer:]::$_2 &,MTLLoaderMachOPayload const**>(v135 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v136)
      {
        goto LABEL_287;
      }
    }

    a2 = v135;
    if (!v136)
    {
      continue;
    }

    return result;
  }
}

- (uint64_t)loadFileWithURL:(NSError *)a3 error:(NSString *)a4 errorDomain:(uint64_t)a5 invalidFileErrorCode:
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    if (a3)
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is nil" forKey:*MEMORY[0x1E696A578]];
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      *a3 = [v9 initWithDomain:*MEMORY[0x1E696A978] code:-1100 userInfo:v8];
    }

    return 0;
  }

  v6 = *(a1 + 8);

  return LoaderGlobalState::loadFile(v6, a2, a3, a4, a5);
}

- (void)releaseLoadedFile:(uint64_t)a1
{
  if (a1)
  {
    LoaderGlobalState::releaseFile(*(a1 + 8), a2);
  }
}

- (uint64_t)associateLoadedFile:(uint64_t)a3 withObject:
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MTLLoader_associateLoadedFile_withObject___block_invoke;
  v6[3] = &unk_1E6EEBC30;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)disassociateLoadedFile:(uint64_t)a1 withObject:(MTLLoadedFile *)a2
{
  v4 = a2;
  if (a1)
  {
    v3 = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>((a1 + 24), &v4);
    std::__hash_table<std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::__unordered_map_hasher<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::hash<MTLLoadedFile *>,std::equal_to<MTLLoadedFile *>,true>,std::__unordered_map_equal<MTLLoadedFile *,std::__hash_value_type<MTLLoadedFile *,objc_object *>,std::equal_to<MTLLoadedFile *>,std::hash<MTLLoadedFile *>,true>,std::allocator<std::__hash_value_type<MTLLoadedFile *,objc_object *>>>::erase((a1 + 24), v3);
    LoaderGlobalState::releaseFile(*(a1 + 8), v4);
  }
}

- (void)executeBlockForLoadedFile:(int)a3 withAssociatedObject:(dispatch_block_t)block block:
{
  if (a1)
  {
    dispatch_sync(*(a1 + 16), block);
  }
}

@end