void sub_185BAAB60(_Unwind_Exception *exception_object)
{
  *(v3 - 144) = v1;
  if (v2)
  {
    free(v2);
  }

  v5 = *(v3 - 128);
  if (v5)
  {
    *(v3 - 120) = v5;
    operator delete(v5);
  }

  if (*(v3 - 144))
  {
    free(*(v3 - 144));
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryDataWithArchive::readFunctionMetadata(MTLLibraryDataWithArchive *this, unint64_t a2, _MTLFunction *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 == 2)
  {
    MTLLibraryDataWithArchive::readFunctionSourceArchiveMetadata(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    MTLLibraryDataWithArchive::readFunctionPublicOrPrivateMetadata(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void *MTLLibraryContainer::functionWithName(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 160))(*(a1 + 48));
  if (v4)
  {
    [*(a1 + 56) setObject:v4 forKey:a2];
  }

  return v4;
}

uint64_t _MTLUseAIRNTBinaryArchive(void *a1)
{
  if (_MTLUseAIRNTBinaryArchive::onceToken != -1)
  {
    _MTLUseAIRNTBinaryArchive_cold_1();
  }

  if (_MTLUseAIRNTBinaryArchive::envVarSet == 1)
  {
    v2 = _MTLUseAIRNTBinaryArchive::useAIRNTArchive;
  }

  else
  {
    v2 = (MTLGPUDebugEnabled() & 1) == 0 && [objc_msgSend(a1 "targetDeviceArchitecture")] - 16777235 < 3;
  }

  return v2 & 1;
}

void MTLMetalScriptBuilderImpl::MTLMetalScriptBuilderImpl(MTLMetalScriptBuilderImpl *this)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 1065353216;
  *(this + 31) = 0;
  *(this + 256) = 0;
  *(this + 33) = 1024;
  *(this + 34) = 8;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  *(this + 40) = 1;
  *(this + 164) = 256;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 72) = 0;
  *this = dispatch_queue_create("mtlScriptSerializerQueue", 0);
}

MTLMetalScriptBuilder *std::unique_ptr<MTLMetalScriptBuilder>::reset[abi:ne200100](MTLMetalScriptBuilder **a1, MTLMetalScriptBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTLMetalScriptBuilder::~MTLMetalScriptBuilder(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

uint64_t LoaderGlobalState::loadFile(LoaderGlobalState *this, NSURL *a2, NSError **a3, NSString *a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__7;
  v42 = __Block_byref_object_dispose__7;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if ([(NSURL *)a2 getFileSystemRepresentation:v44 maxLength:1024]&& *(this + 1) && !stat(v44, &v33))
  {
    if ((v33.st_mode & 0xF000) == 0x8000)
    {
      p_st_mtimespec = &v33.st_mtimespec;
    }

    else
    {
      p_st_mtimespec = 48;
    }

    if ((v33.st_mode & 0xF000) == 0x8000)
    {
      v10 = &v33;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    p_st_mtimespec = 48;
  }

  block = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = ___ZN17LoaderGlobalState8loadFileEP5NSURLPP7NSErrorP8NSStringl_block_invoke;
  v28 = &unk_1E6EEBE50;
  v31 = this;
  v32 = v10;
  v29 = &v38;
  v30 = &v34;
  if (v10)
  {
    dispatch_sync(*(this + 1), &block);
  }

  v12 = v39[5];
  if (!v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:a2 options:1 error:a3];
    v14 = v13;
    if (v13)
    {
      if ([v13 length])
      {
        v15 = [[MTLLoadedFile alloc] initWithData:v14 parent:this];
        v39[5] = v15;
      }

      else
      {
        if (a3)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = [(NSURL *)a2 path];
          v18 = [v16 stringWithFormat:@"File at url %@ is empty.", v17, block, v26, v27, v28, v29, v30, v31, v32];
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:*MEMORY[0x1E696A578]];
          *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:a4 code:a5 userInfo:v19];
        }
      }
    }

    v20 = v39;
    v12 = v39[5];
    if (v10 && v12)
    {
      *(v35 + 24) = 1;
      st_ino = v10->st_ino;
      v22 = v20[5];
      *(v22 + 32) = v10->st_dev;
      *(v22 + 40) = st_ino;
      *(v20[5] + 24) = *p_st_mtimespec;
      *(v20[5] + 48) = 1;
      dispatch_sync(*(this + 1), &block);
      v12 = v39[5];
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_185BAB634(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *___ZN17LoaderGlobalState8loadFileEP5NSURLPP7NSErrorP8NSStringl_block_invoke(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v12 = *v2;
  v13 = *(v2 + 8);
  result = std::__hash_table<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::__unordered_map_hasher<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,FileIdentifier::Hash,std::equal_to<FileIdentifier>,true>,std::__unordered_map_equal<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::equal_to<FileIdentifier>,FileIdentifier::Hash,true>,std::allocator<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>>>::find<FileIdentifier>((v3 + 16), &v12);
  if (result)
  {
    v5 = result;
    v6 = result[4];
    v7 = v6[3];
    if (v7 != *(a1[7] + 48))
    {
      goto LABEL_6;
    }

    result = time(0);
    v8 = result - v7;
    if (result - v7 < 0)
    {
      v8 = v7 - result;
    }

    if (v8 >= 2)
    {

      result = v6;
      *(*(a1[4] + 8) + 40) = result;
    }

    else
    {
LABEL_6:
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        v5[4] = *(*(a1[4] + 8) + 40);
      }
    }
  }

  else if (*(*(a1[5] + 8) + 24))
  {
    v9 = a1[7];
    v10 = *(a1[4] + 8);
    v12 = *v9;
    v11 = *(v10 + 40);
    v13 = *(v9 + 8);
    v14 = v11;
    return std::__hash_table<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::__unordered_map_hasher<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,FileIdentifier::Hash,std::equal_to<FileIdentifier>,true>,std::__unordered_map_equal<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::equal_to<FileIdentifier>,FileIdentifier::Hash,true>,std::allocator<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>>>::__emplace_unique_key_args<FileIdentifier,std::pair<FileIdentifier,MTLLoadedFile *>>((v3 + 16), &v12);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::__unordered_map_hasher<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,FileIdentifier::Hash,std::equal_to<FileIdentifier>,true>,std::__unordered_map_equal<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::equal_to<FileIdentifier>,FileIdentifier::Hash,true>,std::allocator<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>>>::find<FileIdentifier>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = v4 ^ v3;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4 ^ v3;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && result[3] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::__unordered_map_hasher<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,FileIdentifier::Hash,std::equal_to<FileIdentifier>,true>,std::__unordered_map_equal<FileIdentifier,std::__hash_value_type<FileIdentifier,MTLLoadedFile *>,std::equal_to<FileIdentifier>,FileIdentifier::Hash,true>,std::allocator<std::__hash_value_type<FileIdentifier,MTLLoadedFile *>>>::__emplace_unique_key_args<FileIdentifier,std::pair<FileIdentifier,MTLLoadedFile *>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = v3 ^ v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

dispatch_data_t _MTLNSDataToDispatchData(void *a1, void *a2)
{
  v4 = [a1 bytes];
  v5 = v4;
  if (a2)
  {
    v6 = a2[1];
    v5 = (v4 + *a2);
  }

  else
  {
    v6 = [a1 length];
  }

  destructor[0] = MEMORY[0x1E69E9820];
  destructor[1] = 3221225472;
  destructor[2] = ___MTLNSDataToDispatchData_block_invoke;
  destructor[3] = &unk_1E6EEA858;
  destructor[4] = a1;
  v7 = dispatch_data_create(v5, v6, 0, destructor);
  if (v7)
  {
    v8 = a1;
  }

  return v7;
}

uint64_t _MTLGetMaxAIRAndLanguageVersions(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if ((result - 32023) <= 1)
  {
    *a2 = 131080;
    *a3 = 0x40000;
  }

  return result;
}

uint64_t mapAirVersionToMachOSubType(int a1)
{
  if (a1 > 131074)
  {
    if (a1 > 131077)
    {
      switch(a1)
      {
        case 131078:
          return 10;
        case 131079:
          return 11;
        case 131080:
          return 12;
      }

      return 0;
    }

    if (a1 == 131075)
    {
      return 7;
    }

    else if (a1 == 131076)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a1 < 0x20000)
    {
      switch(a1)
      {
        case 65542:
          return 1;
        case 65544:
          return 2;
        case 65547:
          return 3;
      }

      return 0;
    }

    if (a1 == 0x20000)
    {
      return 4;
    }

    else if (a1 == 131073)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t newArchitectureNameString(int a1, int a2)
{
  if ((a1 - 16777235) <= 2 && a2 != 0)
  {
    v5 = a2 & 0xFFFFFF;
    if (a1 != 16777237)
    {
      if (a1 == 16777236)
      {
        v4 = "unknown";
        if ((a2 & 0xFFFFFFu) > 0x1388)
        {
          if ((a2 & 0xFFFFFFu) > 0x1771)
          {
            if ((a2 & 0xFFFFFFu) > 0x1773)
            {
              if (v5 == 6004)
              {
                v4 = "amdgpu_gfx1030";
              }

              else if (v5 == 6005)
              {
                v4 = "amdgpu_gfx1032";
              }
            }

            else if (v5 == 6002)
            {
              v4 = "amdgpu_gfx1011";
            }

            else
            {
              v4 = "amdgpu_gfx1012";
            }
          }

          else if ((a2 & 0xFFFFFFu) > 0x176F)
          {
            if (v5 == 6000)
            {
              v4 = "amdgpu_gfx1010_nsgc";
            }

            else
            {
              v4 = "amdgpu_gfx1010";
            }
          }

          else if (v5 == 5001)
          {
            v4 = "amdgpu_gfx904";
          }

          else if (v5 == 5002)
          {
            v4 = "amdgpu_gfx906";
          }

          goto LABEL_175;
        }

        if ((a2 & 0xFFFFFFu) <= 0xFA2)
        {
          if (v5 == 4000)
          {
            v4 = "amdgpu_gfx600";
          }

          else
          {
            if (v5 != 4001)
            {
              v11 = v5 == 4002;
              v12 = "amdgpu_gfx701";
LABEL_76:
              if (v11)
              {
                v4 = v12;
              }

              goto LABEL_175;
            }

            v4 = "amdgpu_gfx600_nwh";
          }
        }

        else
        {
          if ((a2 & 0xFFFFFFu) > 0xFA4)
          {
            if (v5 == 4005)
            {
              v4 = "amdgpu_gfx802";
            }

            else if (v5 == 5000)
            {
              v4 = "amdgpu_gfx900";
            }

            goto LABEL_175;
          }

          if (v5 != 4003)
          {
            v11 = v5 == 4004;
            v12 = "amdgpu_gfx803";
            goto LABEL_76;
          }

          v4 = "amdgpu_gfx704";
        }

        goto LABEL_175;
      }

      if ((a2 & 0xFFFFFFu) > 0x112)
      {
        if ((a2 & 0xFFFFFFu) <= 0x1A2)
        {
          if ((a2 & 0xFFFFFFu) <= 0x161)
          {
            if ((a2 & 0xFFFFFFu) > 0x131)
            {
              if ((a2 & 0xFFFFFFu) > 0x142)
              {
                if (v5 == 323)
                {
                  v4 = "applegpu_g17p";
                  goto LABEL_175;
                }

                if (v5 == 339)
                {
                  v4 = "applegpu_g17g";
                  goto LABEL_175;
                }
              }

              else if (v5 == 306 || v5 == 322)
              {
                v4 = "applegpu_g13g";
                goto LABEL_175;
              }

              goto LABEL_174;
            }

            if (v5 != 275)
            {
              if (v5 != 290)
              {
                if (v5 != 291)
                {
                  goto LABEL_174;
                }

LABEL_138:
                v4 = "applegpu_g16s";
                goto LABEL_175;
              }

LABEL_161:
              v4 = "applegpu_g13p";
              goto LABEL_175;
            }

LABEL_155:
            v4 = "applegpu_g15g";
            goto LABEL_175;
          }

          if ((a2 & 0xFFFFFFu) <= 0x181)
          {
            if (v5 == 354 || v5 == 370)
            {
              v4 = "applegpu_g14p";
              goto LABEL_175;
            }

            if (v5 == 371)
            {
              v4 = "applegpu_g18p";
              goto LABEL_175;
            }

            goto LABEL_174;
          }

          if ((a2 & 0xFFFFFFu) <= 0x192)
          {
            if (v5 == 386 || v5 == 402)
            {
              v4 = "applegpu_g14g";
              goto LABEL_175;
            }

            goto LABEL_174;
          }

          if (v5 != 403)
          {
            if (v5 != 418)
            {
              goto LABEL_174;
            }

LABEL_170:
            v4 = "applegpu_g14s";
            goto LABEL_175;
          }

LABEL_178:
          v4 = "applegpu_g16g";
          goto LABEL_175;
        }

        if ((a2 & 0xFFFFFFu) > 0x211)
        {
          if ((a2 & 0xFFFFFFu) > 0x241)
          {
            if ((a2 & 0xFFFFFFu) > 0x261)
            {
              if (v5 == 610)
              {
                v4 = "applegpu_g15p";
                goto LABEL_175;
              }

              if (v5 == 1602)
              {
                v4 = "applegpu_g11g_8fstp";
                goto LABEL_175;
              }
            }

            else if (v5 == 578 || v5 == 594)
            {
              v4 = "applegpu_g13d";
              goto LABEL_175;
            }

            goto LABEL_174;
          }

          if (v5 != 530)
          {
            if (v5 == 546 || v5 == 562)
            {
              v4 = "applegpu_g13c";
              goto LABEL_175;
            }

            goto LABEL_174;
          }

          goto LABEL_167;
        }

        if ((a2 & 0xFFFFFFu) > 0x1D2)
        {
          if ((a2 & 0xFFFFFFu) <= 0x1F1)
          {
            if (v5 == 467)
            {
              goto LABEL_138;
            }

            if (v5 != 482)
            {
              goto LABEL_174;
            }

LABEL_180:
            v4 = "applegpu_g14d";
            goto LABEL_175;
          }

          if (v5 == 498)
          {
            goto LABEL_180;
          }

          if (v5 != 514)
          {
            goto LABEL_174;
          }

LABEL_167:
          v4 = "applegpu_g13s";
          goto LABEL_175;
        }

        if (v5 != 419)
        {
          if (v5 == 434)
          {
            goto LABEL_170;
          }

          if (v5 != 435)
          {
            goto LABEL_174;
          }

          goto LABEL_142;
        }

LABEL_151:
        v4 = "applegpu_g15s";
        goto LABEL_175;
      }

      if ((a2 & 0xFFFFFFu) > 0x61)
      {
        if ((a2 & 0xFFFFFFu) > 0xB2)
        {
          if ((a2 & 0xFFFFFFu) > 0xE2)
          {
            if ((a2 & 0xFFFFFFu) > 0x102)
            {
              if (v5 != 259)
              {
                if (v5 != 274)
                {
                  goto LABEL_174;
                }

                goto LABEL_161;
              }

              goto LABEL_178;
            }

            if (v5 != 227 && v5 != 243)
            {
              goto LABEL_174;
            }

LABEL_142:
            v4 = "applegpu_g16p";
            goto LABEL_175;
          }

          if (v5 != 179)
          {
            if (v5 == 194 || v5 == 210)
            {
              v4 = "applegpu_g12p";
              goto LABEL_175;
            }

            goto LABEL_174;
          }
        }

        else
        {
          if ((a2 & 0xFFFFFFu) <= 0x72)
          {
            if (v5 != 98)
            {
              if (v5 == 99)
              {
                goto LABEL_151;
              }

              if (v5 != 114)
              {
                goto LABEL_174;
              }
            }

            v4 = "applegpu_g11p";
            goto LABEL_175;
          }

          if ((a2 & 0xFFFFFFu) <= 0x91)
          {
            if (v5 == 115)
            {
              goto LABEL_151;
            }

            if (v5 != 130)
            {
              goto LABEL_174;
            }

LABEL_179:
            v4 = "applegpu_g11g";
            goto LABEL_175;
          }

          if (v5 == 146)
          {
            goto LABEL_179;
          }

          if (v5 != 163)
          {
            goto LABEL_174;
          }
        }

        v4 = "applegpu_g15d";
        goto LABEL_175;
      }

      if ((a2 & 0xFFFFFFu) > 0x40)
      {
        if ((a2 & 0xFFFFFFu) <= 0x50)
        {
          if (v5 == 65)
          {
            v4 = "applegpu_g5p";
            goto LABEL_175;
          }

          if (v5 != 66)
          {
            if (v5 != 67)
            {
              goto LABEL_174;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if ((a2 & 0xFFFFFFu) > 0x52)
          {
            if (v5 != 83)
            {
              if (v5 == 97)
              {
                v4 = "applegpu_g9g";
                goto LABEL_175;
              }

              goto LABEL_174;
            }

            goto LABEL_155;
          }

          if (v5 == 81)
          {
            v4 = "applegpu_g9p";
            goto LABEL_175;
          }
        }

        v4 = "applegpu_g11m";
        goto LABEL_175;
      }

      if ((a2 & 0xFFFFFFu) > 0x20)
      {
        switch(v5)
        {
          case '!':
            goto LABEL_126;
          case '""':
            v4 = "applegpu_g10p";
            goto LABEL_175;
          case '1':
LABEL_126:
            v4 = "applegpu_g4g";
            goto LABEL_175;
        }
      }

      else
      {
        v4 = "applegpu_gx2";
        switch(v5)
        {
          case 16:
            goto LABEL_175;
          case 17:
            v4 = "applegpu_g4p";
            goto LABEL_175;
          case 32:
LABEL_175:
            v17 = objc_alloc(MEMORY[0x1E696AEC0]);

            return [v17 initWithCString:v4 encoding:1];
        }
      }

LABEL_174:
      v4 = "unknown";
      goto LABEL_175;
    }

    v8 = "unknown";
    if ((a2 & 0xFFFFFFu) > 0x9501FF)
    {
      if ((a2 & 0xFFFFFFu) > 0x950203)
      {
        if (v5 == 9765380)
        {
          v4 = "intelgpu_kbl_gt2r4";
          goto LABEL_175;
        }

        if (v5 == 9765633)
        {
          v4 = "intelgpu_kbl_gt3r1";
          goto LABEL_175;
        }

        v9 = v5 == 9765638;
        v10 = "intelgpu_kbl_gt3r6";
LABEL_38:
        if (v9)
        {
          v4 = v10;
        }

        else
        {
          v4 = "unknown";
        }

        goto LABEL_175;
      }

      v13 = 9765376;
      v14 = "intelgpu_kbl_gt2r0";
      v15 = v5 == 9765378;
      v16 = "intelgpu_kbl_gt2r2";
    }

    else
    {
      if ((a2 & 0xFFFFFFu) > 0x90309)
      {
        if (v5 == 590602)
        {
          v4 = "intelgpu_skl_gt3r10";
          goto LABEL_175;
        }

        if (v5 == 1115655)
        {
          v4 = "intelgpu_icl_1x6x8r7";
          goto LABEL_175;
        }

        v9 = v5 == 1116167;
        v10 = "intelgpu_icl_1x8x8r7";
        goto LABEL_38;
      }

      v13 = 590342;
      v14 = "intelgpu_skl_gt2r6";
      v15 = v5 == 590343;
      v16 = "intelgpu_skl_gt2r7";
    }

    if (v15)
    {
      v8 = v16;
    }

    if (v5 == v13)
    {
      v4 = v14;
    }

    else
    {
      v4 = v8;
    }

    goto LABEL_175;
  }

  if (a1 == 16777239 && a2)
  {
    v3 = (a2 & 0xFFFFFF) - 1;
    if (v3 < 0xC)
    {
      v4 = off_1E6EEB5E0[v3];
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v6 initWithFormat:@"Unknown"];
}

_DWORD *validateMachHeader(_DWORD *result, int a2)
{
  if (result)
  {
    if (*result == -17958193 && ((v2 = result[1], (v2 - 16777235) <= 4) ? (v3 = v2 == 16777238) : (v3 = 1), v3 ? (v4 = v2 == -1) : (v4 = 1), v4 && result[3] == a2))
    {
      return (result[7] == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t isAIRHeaderExtensionCommand(const load_command *a1, unint64_t *a2, unint64_t *a3, unsigned int *a4)
{
  if (a1->cmd != 49)
  {
    return 0;
  }

  if (a1->cmdsize != 40)
  {
    return 0;
  }

  v8 = 0;
  v9 = a1[4];
  for (i = &off_1E6EEB9E0; !v9 || strncmp(&a1[1], *i, v9); i += 2)
  {
    if (++v8 == 9)
    {
      return 0;
    }
  }

  *a2 = a1[3];
  *a3 = a1[4];
  *a4 = v8;
  return 1;
}

uint64_t std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BAC5F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,SectionData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SectionData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SectionData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SectionData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t *a2)
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

  return v7;
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<MTLHashKey,std::pair<MTLHashKey const,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(void *a1, MTLHashKey *this)
{
  v4 = MTLHashKey::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__construct_node_hash<std::pair<MTLHashKey const,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!MTLHashKey::operator==(v11 + 2, this))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185BACE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::specializationHashes(MTLLibraryDataWithArchive *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 32);
  if (!v3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<NSValue *>::reserve(&v11, *(this + 58));
    for (i = *(this + 57); i; i = *i)
    {
      v5 = *(i + 2);
      v14[0] = *(i + 1);
      v14[1] = v5;
      v15 = i[6];
      v10 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v14 objCType:"{?=[32C]}"];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v11, &v10);
    }

    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    *(this + 32) = v3;
    v6 = v11;
    v7 = v12;
    if (v11 != v12)
    {
      do
      {
      }

      while (v6 != v7);
      v3 = *(this + 32);
      v6 = v11;
    }

    if (v6)
    {
      v12 = v6;
      operator delete(v6);
    }
  }

  os_unfair_lock_unlock(v2);
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_185BACFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v11);
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::stitchingHashes(MTLLibraryDataWithArchive *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 34);
  if (!v3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<NSValue *>::reserve(&v11, *(this + 63));
    for (i = *(this + 62); i; i = *i)
    {
      v5 = *(i + 2);
      v14[0] = *(i + 1);
      v14[1] = v5;
      v15 = i[6];
      v10 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v14 objCType:"{?=[32C]}"];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v11, &v10);
    }

    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    *(this + 34) = v3;
    v6 = v11;
    v7 = v12;
    if (v11 != v12)
    {
      do
      {
      }

      while (v6 != v7);
      v3 = *(this + 34);
      v6 = v11;
    }

    if (v6)
    {
      v12 = v6;
      operator delete(v6);
    }
  }

  os_unfair_lock_unlock(v2);
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_185BAD164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v11);
  _Unwind_Resume(a1);
}

void std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

  return v7;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<NSValue *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(DeserializedBinaryArchiveLayout *this)
{
  var14 = this->var14;
  if (var14)
  {
  }
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      MTLHashKey::~MTLHashKey((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t MTLHashKey::MTLHashKey(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  *(a1 + 16) = 4;
  *a1 = xmmword_185DB8240;
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<MTLUINT256_t>::reserve((a1 + 56), a4);
  std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, a2);
  *a1 |= 1uLL;
  v9 = 1;
  if (a4 >= 2 && !*(a3 + 4))
  {
    v10 = a2 + 2;
    v11 = 2;
    do
    {
      std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, v10);
      *a1 += 1 << *(a1 + 16);
      v12 = v11 + 1;
      if (v11 >= a4)
      {
        break;
      }

      v13 = *(a3 + 4 * v11);
      v10 += 2;
      ++v11;
    }

    while (!v13);
    v9 = v12 - 1;
  }

  v15 = *(a1 + 56);
  v14 = *(a1 + 64);
  if (v14 - v15 >= 0x21)
  {
    v16 = v15 + 32;
    v17 = 126 - 2 * __clz((v14 - (v15 + 32)) >> 5);
    if (v14 == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v16, v14, v18, 1);
  }

  v19 = a4 > v9;
  v20 = a4 - v9;
  if (v19)
  {
    v21 = &a2[2 * v9];
    v22 = (a3 + 4 * v9);
    while (1)
    {
      if (!*v22)
      {
        goto LABEL_24;
      }

      std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, v21);
      v23 = *v22;
      if (*v22 == 1032)
      {
        v24 = 8;
        goto LABEL_22;
      }

      if (v23 == 1027)
      {
        break;
      }

      if (v23 == 1026)
      {
        v24 = 2;
LABEL_22:
        *a1 |= v24;
      }

      v21 += 2;
      ++v22;
      if (!--v20)
      {
        goto LABEL_24;
      }
    }

    v24 = 4;
    goto LABEL_22;
  }

LABEL_24:
  CC_SHA256(*(a1 + 56), (*(a1 + 64) - *(a1 + 56)) & 0xFFFFFFE0, (a1 + 24));
  return a1;
}

void sub_185BADAA0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MTLUINT256_t>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<MTLUINT256_t>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void *LibraryWithData::LibraryWithData(void *a1, uint64_t a2, __int128 *a3, NSObject *a4, void *a5)
{
  v7 = MTLLibraryDataWithArchive::MTLLibraryDataWithArchive(a1, a2, a3, a5);
  *v7 = &unk_1EF477088;
  v7[83] = 0;
  v7[84] = a4;
  dispatch_retain(a4);
  buffer_ptr = 0;
  a1[85] = dispatch_data_create_map(a4, &buffer_ptr, a1 + 82);
  a1[81] = buffer_ptr;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLUINT256_t>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void MTLHashKey::MTLHashKey(MTLHashKey *this, const MTLHashKey *a2)
{
  this->var0.var2 = 4;
  *&this->var0.var0 = xmmword_185DB8240;
  this->var2.var0 = 0;
  this->var2.var1 = 0;
  this->var2.var2 = 0;
  this->var0.var2 = a2->var0.var2;
  var1 = a2->var0.var1;
  this->var0.var0 = a2->var0.var0;
  this->var0.var1 = var1;
  v3 = *a2->var1.var0;
  *&this->var1.var0[16] = *&a2->var1.var0[16];
  *this->var1.var0 = v3;
  if (this != a2)
  {
    std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&this->var2.var0, a2->var2.var0, a2->var2.var1, (a2->var2.var1 - a2->var2.var0) >> 5);
  }
}

void sub_185BADEEC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLUINT256_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::__emplace_unique_key_args<HashKey,HashKey const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void MTLCompilerRequest::~MTLCompilerRequest(MTLCompilerRequest *this)
{
  *this = &unk_1EF475CD0;
  v2 = *(this + 22);
  if (v2)
  {
    dispatch_release(v2);
  }

  MTLSchedulerRequest::~MTLSchedulerRequest(this);
}

{
  MTLCompilerRequest::~MTLCompilerRequest(this);

  JUMPOUT(0x1865FF210);
}

void MTLSchedulerRequest::~MTLSchedulerRequest(std::__shared_weak_count **this)
{
  *this = &unk_1EF477990;
  MTLSchedulerRequest::release(this);
  v2 = this[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void MTLSchedulerRequest::release(MTLSchedulerRequest *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    _Block_release(v2);
    *(this + 8) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    _Block_release(v3);
    *(this + 9) = 0;
  }

  v4 = *(this + 10);
  if (v4)
  {
    _Block_release(v4);
    *(this + 10) = 0;
  }

  v5 = *(this + 11);
  if (v5)
  {
    _Block_release(v5);
    *(this + 11) = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(v6 + 72);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(this + 4);
      *(v6 + 72) = 0;
    }

    v8 = *(v6 + 88);
    if (v8)
    {
      _Block_release(v8);
      *(*(this + 4) + 88) = 0;
    }
  }
}

uint64_t MTLXPCCompilerConnection::xpcHandler(void *a1)
{
  Class = object_getClass(a1);
  if (Class == MEMORY[0x1E69E9E80])
  {

    return MTLXPCCompilerConnection::eventHandler(a1);
  }

  else if (Class == MEMORY[0x1E69E9E98])
  {

    return MTLXPCCompilerConnection::errorHandler(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLXPCCompilerConnection::eventHandler(void *a1)
{
  result = xpc_dictionary_get_uint64(a1, "error");
  if (result)
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      MTLXPCCompilerConnection::eventHandler(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 5;
  }

  return result;
}

BOOL MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE();
  }

  if (MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

BOOL MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST();
  }

  if (MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_AGX_LOG_SHADER_COMPILER_REQUEST(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **deserializeCompilerOutputData(uint64_t **result, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v5 = *a3 + 8;
  v6 = *(result + *a3);
  *a3 = v5;
  if (v6)
  {
    v10 = result;
    do
    {
      v11 = *(v10 + v5);
      *a3 = v5 + 8;
      v13 = v11;
      v12 = *(v10 + v5 + 8);
      *a3 = v5 + 16;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(a4, &v13);
      if (!result || !result[3])
      {
        if (v12)
        {
          dispatch_data_create(v10 + *a3, v12, 0, 0);
          result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(a5, &v13);
        }
      }

      v5 = *a3 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      *a3 = v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void MTLCompilerFSCache::addElement(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 136));
  v8 = *(a1 + 144);
  if (v8)
  {
    std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::__emplace_unique_key_args<HashKey,HashKey const&>(v8, a2);
  }

  os_unfair_lock_unlock((a1 + 136));
  v9 = malloc_type_malloc(a4 + 64, 0x100004077774924uLL);
  if (v9)
  {
    v10 = v9;
    *md = 0u;
    v19 = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, a3, a4);
    CC_SHA256_Final(md, &c);
    v11 = v19;
    *v10 = *md;
    v10[1] = v11;
    v12 = *(a2 + 16);
    v10[2] = *a2;
    v10[3] = v12;
    memcpy(v10 + 4, a3, a4);
    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 48))
    {
      *c.count = 0;
      v13 = fscache_insert_and_retain();
      if (v13 && v13 != 207 && v13 != 211)
      {
        MTLCompilerFSCache::invalidateCache(a1);
      }

      if (*c.count)
      {
        MTLCompilerFSCache::flushElement(a1);
        v14 = *(a1 + 48);
        v15 = fscache_release();
        if (v15)
        {
          if (v15 != 205)
          {
            MTLCompilerFSCache::invalidateCache(a1);
          }
        }
      }
    }

    os_unfair_lock_unlock((a1 + 8));
    free(v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void MTLCompilerFSCache::flushElement(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = fscache_sync_element();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::flushElement(v3);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType const&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void MultiLevelBinaryFSCache::addElement(MultiLevelBinaryFSCache *this, MTLBinaryKey *a2, MTLBinaryEntry *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map([(MTLBinaryEntry *)a3 data], &buffer_ptr, &v10);
  v6 = [(MTLBinaryKey *)a2 value];
  v7 = *(this + 3);
  v8 = *&v6->var0[16];
  v12[0] = *v6->var0;
  v12[1] = v8;
  (*(*v7 + 40))(v7, v12, buffer_ptr, v10);
  dispatch_release(v5);
  v9 = *MEMORY[0x1E69E9840];
}

void MTLCompilerServiceRequestHandler::~MTLCompilerServiceRequestHandler(void **this)
{
  v1 = *this;
  if (v1)
  {
    xpc_release(v1);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __destroy_helper_block_e8_88c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE104c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE120c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE136c148_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypeP12MTLBinaryKeyNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEEEE(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[14];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[12];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void ___ZN20MTLCompilerScheduler19createBlockWithDataENSt3__110shared_ptrI19MTLSchedulerRequestEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(*(a1 + 40) + 72) + 16))();
  _Block_release(*(*(a1 + 40) + 72));
  v3 = *(a1 + 40);
  *(v3 + 72) = 0;
  _Block_release(*(v3 + 88));
  v4 = *(a1 + 40);
  *(v4 + 88) = 0;
  v5 = *(v4 + 32);
  if (v5)
  {
    (*(*(v5 + 72) + 16))();
    _Block_release(*(*(*(a1 + 40) + 32) + 72));
    v6 = *(*(a1 + 40) + 32);
    *(v6 + 72) = 0;
    _Block_release(*(v6 + 88));
    *(*(*(a1 + 40) + 32) + 88) = 0;
  }

  v16 = (v2 + 88);
  v17 = 1;
  std::mutex::lock((v2 + 88));
  v7 = *(a1 + 40);
  *(v7 + 167) = 0;
  *(v7 + 165) = 1;
  v8 = *(v7 + 96);
  v9 = *(v8 + 56);
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 96);
  *(v11 + 123) = 0;
  ++*(v2 + 168);
  if ((*(v10 + 168) & 1) == 0)
  {
    MTLCompilerProcess::setCanReceiveThreadUnsafeRequests(*(v11 + 96), 1);
    v10 = *(a1 + 40);
  }

  _Block_release(*(v10 + 64));
  v12 = *(a1 + 40);
  *(v12 + 64) = 0;
  if ((*(v2 + 36) & 1) == 0)
  {
    canReceiveThreadUnsafeRequests = MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(*(v12 + 96) + 96));
    v14 = *(*(a1 + 40) + 96);
    if (canReceiveThreadUnsafeRequests)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    MTLCompilerScheduler::attemptWorksteal(v2, v14, &v16, &v15);
  }

  if (v17 == 1)
  {
    std::mutex::unlock(v16);
  }
}

void sub_185BAF570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerScheduler::attemptWorksteal(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = (a1 + 200);
  v7 = *(a1 + 192);
  v8 = *(a1 + 224);
  v10 = (a1 + 232);
  v9 = *(a1 + 232);
  if (v7 == *(a1 + 200))
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v12 = *v7;
    v11 = v7[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v8 == v9)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v13 = *(a1 + 224);
    v15 = *v13;
    v14 = v13[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v16 = *a4;
  if (!*a4)
  {
    if (!v15)
    {
      goto LABEL_46;
    }

    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_29;
  }

  if (v16 == 2)
  {
    if (v12)
    {
      if (v15)
      {
        if (*(v12 + 136) < *(v15 + 136))
        {
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_29;
        }

        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_53:
      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(*(a1 + 192), *(a1 + 200), &v26, (*(a1 + 200) - *(a1 + 192)) >> 4);
      v17 = *v6;
      v18 = *(*v6 - 8);
      v19 = v11;
      if (!v18)
      {
LABEL_31:
        *v6 = v17 - 16;
        v20 = *(v12 + 96);
        *(v12 + 96) = a2;
        *(v12 + 104) = v20;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(a2 + 56);
        *(a2 + 48) = v12;
        *(a2 + 56) = v19;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        *&v25 = v12;
        *(&v25 + 1) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MTLCompilerConnection::scheduleRequest(a2, 0, &v25, a3);
        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
        }

        v22 = *(v12 + 161);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v23 = 1;
        if (v14)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

LABEL_30:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_31;
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_29:
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,MTLCompilerScheduler::RequestCompare,std::__wrap_iter<std::shared_ptr<MTLSchedulerRequest> *>>(*(a1 + 224), *(a1 + 232), &v26, (*(a1 + 232) - *(a1 + 224)) >> 4);
    v17 = *v10;
    v18 = *(*v10 - 8);
    v6 = v10;
    v12 = v15;
    v19 = v14;
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v16 == 1 && v12)
  {
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_53;
  }

LABEL_46:
  v22 = 0;
  v23 = 0;
  if (v14)
  {
LABEL_42:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_43:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v23 | (v22 << 8);
}

void sub_185BAF880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
LABEL_4:
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_6;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19MTLSchedulerRequestEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MTLCompilerScheduler::buildRequest(sched_param *a1, unsigned int a2, void (****a3)(void), int a4, uint64_t a5, uint64_t a6)
{
  v12 = a1 + 11;
  v66 = &a1[11];
  LOBYTE(v67) = 1;
  std::mutex::lock(&a1[11]);
  if ((a1[7].__opaque[1] & 1) == 0)
  {
    (*(*a1 + 96))(a1, &v66);
  }

  if (a2)
  {
    v13 = *MTLCompilerConnectionManagerInternal::getCompilerPluginAtIndex(a1, a2);
  }

  else
  {
    v13 = 0uLL;
  }

  v57 = v13;
  if (v67 == 1)
  {
    std::mutex::unlock(v66);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN20MTLCompilerScheduler12buildRequestEjNSt3__110shared_ptrI18MTLCompilerRequestEEbP11objc_objectU13block_pointerFv16MTLCompilerErrorPU27objcproto16OS_dispatch_data8NSObjectPKcE_block_invoke;
  aBlock[3] = &unk_1E6EEC690;
  aBlock[4] = a6;
  v14 = _Block_copy(aBlock);
  v15 = *a3;
  (*a3)[11] = v14;
  if (v14)
  {
    *(v15 + 32) |= 1u;
    *(v15 + 9) = v57;
    *(v15 + 161) = a4;
    v16 = a3[1];
    v66 = v15;
    v67 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MTLCompilerScheduler::assignQosToRequest(v14, &v66);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v66 = v12;
    LOBYTE(v67) = 1;
    std::mutex::lock(v12);
    v17 = a1[22];
    a1[22] = (*&v17 + 1);
    (*a3)[3] = v17;
    if (MTLTraceEnabled())
    {
      v18 = *(*a3 + 161);
      v19 = (*a3)[3];
      v20 = *(*a3 + 168);
      kdebug_trace();
    }

    v21 = a3[1];
    *&v62 = *a3;
    *(&v62 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MTLCompilerScheduler::getBestConnection(a1, &v62, &v63);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v22 = *(*a3 + 34);
    sched_priority = a1[4].sched_priority;
    if (a1[4].__opaque[0] == 1)
    {
      v24 = **a3;
    }

    else
    {
      v24 = **a3 + 1;
    }

    a1[4].__opaque[0];
    (*v24)();
    v25 = a3[1];
    v61[0] = *a3;
    v61[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      (*a3)[8] = MTLCompilerScheduler::createBlockWithData(a1, v61);
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      v26 = *a3;
    }

    else
    {
      BlockWithData = MTLCompilerScheduler::createBlockWithData(a1, v61);
      v26 = *a3;
      (*a3)[8] = BlockWithData;
    }

    v36 = v63;
    v26[12] = v63;
    v26[13] = 0;
    if (a5)
    {
      std::allocate_shared[abi:ne200100]<MTLCompileToken,std::allocator<MTLCompileToken>,std::shared_ptr<MTLCompilerRequest> &,0>();
    }

    if (a1[4].__opaque[0] == 1)
    {
      v38 = *a3;
      v37 = a3[1];
      if (v37)
      {
        atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
      }

      v39 = *(v36 + 7);
      *(v36 + 6) = v38;
      *(v36 + 7) = v37;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      v40 = a3[1];
      *&v60 = *a3;
      *(&v60 + 1) = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(v40 + 1, 1uLL, memory_order_relaxed);
      }

      MTLCompilerConnection::scheduleRequest(v36, 1, &v60, &v66);
      v41 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_73;
      }
    }

    else
    {
      v42 = *a3;
      if (*(v36 + 6) || (v42[21] & 1) == 0 && (canReceiveThreadUnsafeRequests = MTLCompilerProcess::canReceiveThreadUnsafeRequests(*(v36 + 12)), v42 = *a3, !canReceiveThreadUnsafeRequests))
      {
        v43 = a3[1];
        *&v62 = v42;
        *(&v62 + 1) = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
        }

        MTLCompilerScheduler::insertRequest(a1, &v62);
        if (*(&v62 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
        }

        v44 = a3[1];
        *&v62 = *a3;
        *(&v62 + 1) = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
        }

        (*(*v36 + 16))(v36, &v62, &v66);
        if (*(&v62 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
        }

        if (a4)
        {
          while ((*(*a3 + 165) & 1) == 0)
          {
            v45 = a3[1];
            *&v62 = *a3;
            *(&v62 + 1) = v45;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
            }

            shouldScheduleAfterCompilerBoost = MTLCompilerScheduler::shouldScheduleAfterCompilerBoost(a1, &v62, &v66);
            if (*(&v62 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
            }

            if (shouldScheduleAfterCompilerBoost)
            {
              v47 = *a3;
              v48 = a3[1];
              v49 = (*a3)[12];
              if (v48)
              {
                atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
              }

              v50 = v49[7];
              v49[6] = v47;
              v49[7] = v48;
              if (v50)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
              }

              v51 = a3[1];
              v52 = (*a3)[12];
              *&v58 = *a3;
              *(&v58 + 1) = v51;
              if (v51)
              {
                atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
              }

              MTLCompilerConnection::scheduleRequest(v52, 1, &v58, &v66);
              v41 = *(&v58 + 1);
              if (*(&v58 + 1))
              {
                goto LABEL_72;
              }

              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

      v54 = a3[1];
      if (v54)
      {
        atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
      }

      v55 = *(v36 + 7);
      *(v36 + 6) = v42;
      *(v36 + 7) = v54;
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      v56 = a3[1];
      *&v59 = *a3;
      *(&v59 + 1) = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(v56 + 1, 1uLL, memory_order_relaxed);
      }

      MTLCompilerConnection::scheduleRequest(v36, a4, &v59, &v66);
      v41 = *(&v59 + 1);
      if (!*(&v59 + 1))
      {
LABEL_73:
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        if (v67 == 1)
        {
          std::mutex::unlock(v66);
        }

        return;
      }
    }

LABEL_72:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    goto LABEL_73;
  }

  v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v27)
  {
    MTLCompilerScheduler::buildRequest(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  (*(a6 + 16))(a6, 4, 0, "Internal Metal Compiler Scheduler Error.");
}

void sub_185BAFE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (*(v22 - 80) == 1)
  {
    std::mutex::unlock(*(v22 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_185BAFFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerFunctionRequest::~MTLCompilerFunctionRequest(id *this)
{
  *this = &unk_1EF475BC0;

  this[31] = 0;
  this[32] = 0;

  this[33] = 0;
  this[34] = 0;
  v2 = this[29];
  if (v2)
  {
    dispatch_release(v2);
    this[29] = 0;
  }

  v3 = this[28];
  if (v3)
  {
    dispatch_release(v3);
    this[28] = 0;
  }

  v4 = this[37];
  if (v4)
  {
    free(v4);
    this[37] = 0;
  }

  v5 = this[39];
  if (v5)
  {
    dispatch_release(v5);
    this[39] = 0;
  }

  v6 = this[41];
  if (v6)
  {
    dispatch_release(v6);
    this[41] = 0;
  }

  this[42] = 0;

  MTLCompilerRequest::~MTLCompilerRequest(this);
}

{
  MTLCompilerFunctionRequest::~MTLCompilerFunctionRequest(this);

  JUMPOUT(0x1865FF210);
}

uint64_t std::__shared_ptr_pointer<MTLCompilerRequest *,std::shared_ptr<MTLCompilerRequest>::__shared_ptr_default_delete<MTLCompilerRequest,MTLCompilerRequest>,std::allocator<MTLCompilerRequest>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void MTLCompileToken::~MTLCompileToken(MTLCompileToken *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    [v2 clearInternalCompileTokenIfMatches:this];
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t createFragmentColorAttachmentDescriptorVector(flatbuffers::FlatBufferBuilder *a1, const MTLRenderPipelineColorAttachmentDescriptorArrayInternal *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v4 = 8;
  do
  {
    v5 = v2->_descriptors[0];
    if (v5)
    {
      *(a1 + 70) = 1;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v8 = *(a1 + 10);
      v9 = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 pixelFormat];
      if ((v9 - 1) >= 0x28C)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 writeMask], 15);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 blendingStateSPI], 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 alphaBlendOperation], 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 rgbBlendOperation], 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 destinationAlphaBlendFactor], 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 destinationRGBBlendFactor], 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 sourceAlphaBlendFactor], 1);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v5 sourceRGBBlendFactor], 1);
      v18 = flatbuffers::FlatBufferBuilder::EndTable(a1, v6 - v7 + v8);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v18);
    }

    else
    {
      *(a1 + 70) = 1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 12);
      v13 = *(a1 + 10);
      if (*(a1 + 80) == 1)
      {
        v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(a1, 0);
        flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v14);
      }

      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, 1, 1);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, 1, 1);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, 0, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, 0, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, 0, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, 0, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, 0, 0);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, 15, 15);
      v18 = flatbuffers::FlatBufferBuilder::EndTable(a1, v11 - v12 + v13);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v18);
    }

    v2 = (v2 + 8);
    --v4;
  }

  while (v4);
  if (v20 == __p)
  {
    v15 = &flatbuffers::data<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v15 = __p;
  }

  v16 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v15, (v20 - __p) >> 2);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_185BB057C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,MTLBinaryKey *>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(void *a1, char *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *FunctionReplyParameters::FunctionReplyParameters(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *a1 = a2;
  a1[1] = a3;
  v9 = 0;
  v10 = &v9;
  a1[2] = [std::__hash_table<std::__hash_value_type<CompilerOutputType MTLBinaryKey *>];
  v9 = 0;
  v10 = &v9;
  a1[3] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 2;
  v10 = &v9;
  a1[4] = [std::__hash_table<std::__hash_value_type<CompilerOutputType MTLBinaryKey *>];
  v9 = 2;
  v10 = &v9;
  a1[5] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 1;
  v10 = &v9;
  a1[6] = [std::__hash_table<std::__hash_value_type<CompilerOutputType MTLBinaryKey *>];
  v9 = 1;
  v10 = &v9;
  a1[7] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 3;
  v10 = &v9;
  a1[8] = [std::__hash_table<std::__hash_value_type<CompilerOutputType MTLBinaryKey *>];
  v9 = 3;
  v10 = &v9;
  a1[9] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 6;
  v10 = &v9;
  a1[12] = [std::__hash_table<std::__hash_value_type<CompilerOutputType MTLBinaryKey *>];
  v9 = 6;
  v10 = &v9;
  a1[13] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 4;
  v10 = &v9;
  a1[10] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 5;
  v10 = &v9;
  a1[11] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  v9 = 7;
  v10 = &v9;
  a1[14] = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,std::piecewise_construct_t const&,std::tuple<CompilerOutputType&&>,std::tuple<>>(a4, &v9)[3];
  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void getGPUCompilerHashForScript(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = 0u;
  a3[1] = 0u;
  if (!a1)
  {
    return;
  }

  v4 = MEMORY[0x1EEE88980];
  if (a2 <= 4)
  {
    if (a2 == 1)
    {
      v4 = MEMORY[0x1EEE889A0];
      if (!MEMORY[0x1EEE889A0])
      {
        return;
      }

      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v4 = MEMORY[0x1EEE88988];
      if (!MEMORY[0x1EEE88988])
      {
        return;
      }

      goto LABEL_17;
    }

    if (a2 != 3)
    {
      return;
    }

LABEL_16:
    if (!v4)
    {
      return;
    }

LABEL_17:
    v6 = v4(&a1[*a1]);
    goto LABEL_18;
  }

  if ((a2 - 5) >= 2)
  {
    if (a2 != 7)
    {
      if (a2 != 8)
      {
        return;
      }

      v4 = MEMORY[0x1EEE88998];
      if (!MEMORY[0x1EEE88998])
      {
        return;
      }

      goto LABEL_17;
    }

    v4 = MEMORY[0x1EEE88990];
    goto LABEL_16;
  }

  v5 = *a1;
  v6 = MTLGPUCompilerHashFunctionScript();
LABEL_18:
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;

  free(v6);
}

void *FunctionHashFactory::createHash(uint64_t a1, int a2, dispatch_data_t data, NSObject *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  size_ptr = 0;
  buffer_ptr = 0;
  if (data)
  {
    v8 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  }

  else
  {
    v8 = 0;
  }

  v24 = 0;
  v25 = 0;
  if (a4)
  {
    v9 = dispatch_data_create_map(a4, &v25, &v24);
    v11 = v24;
    v10 = v25;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  Hash = FunctionHashFactory::createHash(a1, a2, buffer_ptr, size_ptr, v10, v11);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (*(a1 + 104) == 1)
  {
    if (a2)
    {
      v13 = FunctionHashFactory::functionHashStringForType(a1, a2);
    }

    else
    {
      v13 = "function binary";
    }

    if (!(data | a4))
    {
      v16 = 0;
LABEL_23:
      v17 = *(a1 + 112);
      v18 = [Hash value];
      v19 = v18[1];
      v28[0] = *v18;
      v28[1] = v19;
      v20 = _MTLRequestHashToString(v28);
      if (v16)
      {
        v21 = [v16 UTF8String];
      }

      else
      {
        v21 = "";
      }

      NSLog(&cfstr_HashForSHashS.isa, v17, v13, v20, v21);
      goto LABEL_27;
    }

    if (data)
    {
      _MTLHashForData(data, v28);
      v14 = _MTLRequestHashToString(v28);
      if (a4)
      {
LABEL_18:
        _MTLHashForData(a4, v28);
        v15 = _MTLRequestHashToString(v28);
LABEL_22:
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[driver key(%@), framework key(%@)]", v14, v15];
        goto LABEL_23;
      }
    }

    else
    {
      v14 = @"<null>";
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v15 = @"<null>";
    goto LABEL_22;
  }

LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return Hash;
}

void MultiLevelCacheFactory::createBinaryCache(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 supportsAIRNT])
    {
      operator new();
    }

    if (([a2 supportsAIRNT] & 1) == 0)
    {
      operator new();
    }
  }

  operator new();
}

BOOL MultiLevelBinaryCache::getElement(uint64_t a1, void *a2, dispatch_object_t *a3, dispatch_object_t *a4, uint64_t a5)
{
  if (*(a1 + 48) == 1)
  {
    NSLog(&cfstr_LookingForFunc.isa, [a2 description]);
  }

  v10 = 0;
  while (1)
  {
    v11 = v10;
    v12 = [*(a1 + 40) count];
    if (v11 >= v12)
    {
      break;
    }

    if ([objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{v11), "supportsAIRNT"}])
    {
      v13 = [objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{v11), "getBinaryDataForKey:reflectionType:", a2, a5}];
    }

    else
    {
      v13 = 0;
    }

    v10 = v11 + 1;
    if (v13)
    {
      *a3 = [v13 data];
      *a4 = [v13 reflectionBlock];
      dispatch_retain(*a3);
      dispatch_retain(*a4);
      return v11 < v12;
    }
  }

  return v11 < v12;
}

BOOL MultiLevelBinaryFSCache::initialize(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  *(a1 + 40) = a2;
  if (!a2 || ![a2 count])
  {
    a5 &= ~2u;
  }

  if (_MTLDebugShouldLogKeys(void)::onceToken != -1)
  {
    _MTLDebugShouldLogKeys();
  }

  *(a1 + 48) = _MTLDebugShouldLogKeys(void)::shouldLogHashKeys;

  return MultiLevelCacheBase::initialize(a1, a3, a4, a5);
}

uint64_t FunctionHashFactory::getGPUCompilerSPIOptionsMask(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "enable-shader-validation");
    v21 = 1;
    std::string::basic_string[abi:ne200100]<0>(v22, "disable-shader-validation");
    v23 = 2;
    std::string::basic_string[abi:ne200100]<0>(v24, "enable-bounds-checking");
    v25 = 4;
    std::string::basic_string[abi:ne200100]<0>(v26, "enable-threadgroup-memory-checks");
    v27 = 8;
    std::string::basic_string[abi:ne200100]<0>(v28, "enable-texture-checks");
    v29 = 16;
    std::string::basic_string[abi:ne200100]<0>(v30, "enable-resource-usage-validation");
    v31 = 32;
    std::string::basic_string[abi:ne200100]<0>(v32, "enable-stack-overflow");
    v33 = 64;
    std::unordered_map<std::string,FunctionHashFactory::hashFactoryMask>::unordered_map(v17, __p, 7);
    for (i = 0; i != -224; i -= 32)
    {
      if (v32[i + 23] < 0)
      {
        operator delete(*&v32[i]);
      }
    }

    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = 0;
    v5 = [a2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(a2);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v13 + 1) + 8 * v7) UTF8String]);
          v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v17, __p);
          v9 = v8;
          if ((v20 & 0x80000000) == 0)
          {
            if (!v8)
            {
              goto LABEL_14;
            }

LABEL_13:
            v4 = *(v9 + 10) | v4;
            goto LABEL_14;
          }

          operator delete(__p[0]);
          if (v9)
          {
            goto LABEL_13;
          }

LABEL_14:
          ++v7;
        }

        while (v5 != v7);
        v10 = [a2 countByEnumeratingWithState:&v13 objects:v18 count:16];
        v5 = v10;
      }

      while (v10);
    }

    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v17);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

const char *FunctionHashFactory::functionHashStringForType(uint64_t a1, int a2)
{
  v3 = MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0);
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v4 = "reflection";
        v5 = "RM_reflection";
        break;
      case 3:
        v4 = "pipelineStatistics";
        v5 = "RM_pipelineStatistics";
        break;
      case 6:
        v4 = "debugInstrumentation";
        v5 = "RM_debugInstrumentation";
        break;
      default:
LABEL_17:
        abort();
    }

LABEL_11:
    if (v3)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_17;
    }

    v4 = "linking";
    v5 = "RM_linking";
    goto LABEL_11;
  }

  if (v3)
  {
    return "RM_Bin";
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,MTLUINT256_t const> const*,std::pair<unsigned int,MTLUINT256_t const> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BB19E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 0xB)
    {
      flatbuffers::vector_downward::reallocate(v5, 0xCuLL);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - 12;
    v7 = *a3;
    *(v6 - 4) = *(a3 + 2);
    *(v6 - 12) = v7;
    v8 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

void flatbuffers::DetachedBuffer::~DetachedBuffer(flatbuffers::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x1865FF1F0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t FunctionHashFactory::FunctionHashFactory(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, void *a6, void *a7)
{
  v83 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(a1);
  CC_SHA256_Update(a1, (a3 + 56), 0x20u);
  CC_SHA256_Update(a1, [objc_msgSend(a2 "name")], objc_msgSend(objc_msgSend(a2, "name"), "length"));
  v64 = a3;
  CC_SHA256_Update(a1, (a3 + 88), 1u);
  data = a4 & 0xC7DC1C98;
  CC_SHA256_Update(a1, &data, 8u);
  GPUCompilerSPIOptionsMask = FunctionHashFactory::getGPUCompilerSPIOptionsMask(a1, a5);
  if (GPUCompilerSPIOptionsMask)
  {
    CC_SHA256_Update(a1, &GPUCompilerSPIOptionsMask, 4u);
  }

  __src[0] = 0;
  __src[1] = 0;
  v76 = 0;
  if (!a6)
  {
    v14 = 0;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v14 = [a6 count];
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = [a7 count];
LABEL_8:
  std::vector<MTLUINT256_t>::reserve(__src, v15 + v14);
  v65 = a2;
  if (a6)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v16 = [a6 countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v16)
    {
      v17 = *v72;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v72 != v17)
          {
            objc_enumerationMutation(a6);
          }

          v19 = [*(*(&v71 + 1) + 8 * i) functionData];
          v20 = __src[1];
          if (__src[1] >= v76)
          {
            v23 = __src[0];
            v24 = __src[1] - __src[0];
            v25 = (__src[1] - __src[0]) >> 5;
            v26 = v25 + 1;
            if ((v25 + 1) >> 59)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v27 = v76 - __src[0];
            if ((v76 - __src[0]) >> 4 > v26)
            {
              v26 = v27 >> 4;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(__src, v26);
            }

            v28 = (__src[1] - __src[0]) >> 5;
            v29 = (32 * v25);
            v30 = *(v19 + 72);
            *v29 = *(v19 + 56);
            v29[1] = v30;
            v22 = (32 * v25 + 32);
            v31 = &v29[-2 * v28];
            memcpy(v31, v23, v24);
            v32 = __src[0];
            __src[0] = v31;
            __src[1] = v22;
            v76 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            v21 = *(v19 + 72);
            *__src[1] = *(v19 + 56);
            v20[1] = v21;
            v22 = v20 + 2;
          }

          __src[1] = v22;
        }

        v16 = [a6 countByEnumeratingWithState:&v71 objects:v82 count:16];
      }

      while (v16);
    }
  }

  if (a7)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v33 = [a7 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v33)
    {
      v34 = *v68;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(a7);
          }

          v36 = [*(*(&v67 + 1) + 8 * j) functionData];
          v37 = __src[1];
          if (__src[1] >= v76)
          {
            v40 = __src[0];
            v41 = __src[1] - __src[0];
            v42 = (__src[1] - __src[0]) >> 5;
            v43 = v42 + 1;
            if ((v42 + 1) >> 59)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v44 = v76 - __src[0];
            if ((v76 - __src[0]) >> 4 > v43)
            {
              v43 = v44 >> 4;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFE0)
            {
              v43 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v43)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(__src, v43);
            }

            v45 = (__src[1] - __src[0]) >> 5;
            v46 = (32 * v42);
            v47 = *(v36 + 72);
            *v46 = *(v36 + 56);
            v46[1] = v47;
            v39 = (32 * v42 + 32);
            v48 = &v46[-2 * v45];
            memcpy(v48, v40, v41);
            v49 = __src[0];
            __src[0] = v48;
            __src[1] = v39;
            v76 = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            v38 = *(v36 + 72);
            *__src[1] = *(v36 + 56);
            v37[1] = v38;
            v39 = v37 + 2;
          }

          __src[1] = v39;
        }

        v33 = [a7 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v33);
    }
  }

  if (__src[0] != __src[1])
  {
    std::__introsort<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,false>(__src[0], __src[1], &c, 126 - 2 * __clz((__src[1] - __src[0]) >> 5), 1);
    CC_SHA256_Update(a1, __src[0], (LODWORD(__src[1]) - LODWORD(__src[0])) & 0xFFFFFFE0);
  }

  *(a1 + 112) = 0;
  if (FunctionHashFactory::shouldLogHashKeys(void)::onceToken != -1)
  {
    FunctionHashFactory::FunctionHashFactory();
  }

  v50 = FunctionHashFactory::shouldLogHashKeys(void)::shouldLogHashKeys;
  *(a1 + 104) = FunctionHashFactory::shouldLogHashKeys(void)::shouldLogHashKeys;
  if (v50 == 1)
  {
    *(a1 + 112) = [v65 name];
    v51 = *(a1 + 80);
    *&c.wbuf[6] = *(a1 + 64);
    *&c.wbuf[10] = v51;
    *&c.wbuf[14] = *(a1 + 96);
    v52 = *(a1 + 16);
    *c.count = *a1;
    *&c.hash[2] = v52;
    v53 = *(a1 + 48);
    *&c.hash[6] = *(a1 + 32);
    *&c.wbuf[2] = v53;
    CC_SHA256_Final(md, &c);
    v54 = *(a1 + 112);
    v55 = MTLFunctionTypeString([v65 functionType]);
    *v79 = md[0];
    *&v79[16] = md[1];
    v56 = _MTLRequestHashToString(v79);
    v57 = *(a1 + 112);
    v58 = *(v64 + 72);
    *v79 = *(v64 + 56);
    *&v79[16] = v58;
    v59 = _MTLRequestHashToString(v79);
    v60 = *(v64 + 88);
    std::to_string(v79, data);
    v61 = v79[23] >= 0 ? v79 : *v79;
    NSLog(&cfstr_HashForBaseHas.isa, v54, v55, v56, v57, v59, v60, v61);
    if ((v79[23] & 0x80000000) != 0)
    {
      operator delete(*v79);
    }
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  v62 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_185BB2188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FunctionHashFactory::createHash(uint64_t a1, int a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 80);
  *&v20.wbuf[6] = *(a1 + 64);
  *&v20.wbuf[10] = v10;
  *&v20.wbuf[14] = *(a1 + 96);
  v11 = *(a1 + 16);
  *v20.count = *a1;
  *&v20.hash[2] = v11;
  v12 = *(a1 + 48);
  *&v20.hash[6] = *(a1 + 32);
  *&v20.wbuf[2] = v12;
  v13 = FunctionHashFactory::functionHashStringForType(a1, a2);
  if (v13)
  {
    v14 = v13;
    v15 = strlen(v13);
    CC_SHA256_Update(&v20, v14, v15);
  }

  if (a3 && a4)
  {
    CC_SHA256_Update(&v20, a3, a4);
  }

  if (a5 && a6)
  {
    CC_SHA256_Update(&v20, a5, a6);
  }

  CC_SHA256_Final(md, &v20);
  MTLHashKey::MTLHashKey(&v21, md);
  v16 = [MTLBinaryKey alloc];
  v17 = [(MTLBinaryKey *)v16 initWithHash:&v21, *v20.count, *&v20.hash[2], *&v20.hash[6], *&v20.wbuf[2], *&v20.wbuf[6], *&v20.wbuf[10], *&v20.wbuf[14]];
  MTLHashKey::~MTLHashKey(&v21);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t std::vector<MTLUINT256_t const*>::__init_with_size[abi:ne200100]<MTLUINT256_t const**,MTLUINT256_t const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLUINT256_t const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185BB238C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,MTLUINT256_t const>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<unsigned int,MTLUINT256_t const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,MTLUINT256_t const>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void MTLHashKey::MTLHashKey(MTLHashKey *this, const MTLFunctionToolList *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  this->var0.var2 = 4;
  *&this->var0.var0 = xmmword_185DB8240;
  this->var2.var0 = 0;
  p_var2 = &this->var2;
  this->var2.var1 = 0;
  this->var2.var2 = 0;
  std::vector<MTLUINT256_t>::reserve(&this->var2.var0, 0x8E38E38E38E38E39 * ((*(a2 + 5) - *(a2 + 4)) >> 2) + ((*(a2 + 2) - *(a2 + 1)) >> 3) + 1);
  std::vector<MTLUINT256_t>::push_back[abi:ne200100](p_var2, *a2);
  this->var0.var0 |= 1uLL;
  v5 = *(a2 + 1);
  for (i = *(a2 + 2); v5 != i; ++v5)
  {
    std::vector<MTLUINT256_t>::push_back[abi:ne200100](p_var2, *v5);
    this->var0.var0 += 1 << this->var0.var2;
  }

  var0 = this->var2.var0;
  var1 = this->var2.var1;
  if ((var1 - var0) > 0x20)
  {
    v9 = var0 + 32;
    v10 = 126 - 2 * __clz((var1 - (var0 + 32)) >> 5);
    if (var1 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v9, var1, v11, 1);
  }

  v13 = *(a2 + 4);
  v12 = *(a2 + 5);
  if (v13 != v12)
  {
    while (1)
    {
      v14 = *v13;
      v15 = v13[1];
      v19 = *(v13 + 8);
      v18[0] = v14;
      v18[1] = v15;
      std::vector<MTLUINT256_t>::push_back[abi:ne200100](p_var2, (v18 + 4));
      if (LODWORD(v18[0]) == 1026)
      {
        v16 = 2;
        goto LABEL_15;
      }

      if (LODWORD(v18[0]) == 1027)
      {
        break;
      }

      if (LODWORD(v18[0]) == 1032)
      {
        v16 = 8;
LABEL_15:
        this->var0.var0 |= v16;
      }

      v13 = (v13 + 36);
      if (v13 == v12)
      {
        goto LABEL_17;
      }
    }

    v16 = 4;
    goto LABEL_15;
  }

LABEL_17:
  CC_SHA256(this->var2.var0, (LODWORD(this->var2.var1) - this->var2.var0) & 0xFFFFFFE0, this->var1.var0);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_185BB26A4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLUseAirntReflection(void)
{
  if (MTLUseAirntReflection(void)::once_token != -1)
  {
    MTLUseAirntReflection();
  }

  return 1;
}

dispatch_data_t _MTLNewReflectionData(dispatch_data_t data, int a2)
{
  v2 = data;
  if (data)
  {
    if (MTLUseAirntReflection(void)::once_token != -1)
    {
      MTLUseAirntReflection();
    }

    v17 = 0;
    buffer_ptr = 0;
    subrange = dispatch_data_create_subrange(v2, 0, 0x50uLL);
    v5 = dispatch_data_create_map(subrange, &buffer_ptr, &v17);
    dispatch_release(subrange);
    v6 = buffer_ptr;
    if (*buffer_ptr == 0x8EF13C710)
    {
      if (a2 <= 2)
      {
        if (a2 == 1)
        {
          v7 = *(buffer_ptr + 7);
          if (!v7)
          {
            goto LABEL_20;
          }

          v8 = 48;
        }

        else
        {
          v7 = *(buffer_ptr + 5);
          if (!v7)
          {
            goto LABEL_20;
          }

          v8 = 32;
        }

LABEL_19:
        v12 = dispatch_data_create_subrange(v2, *(buffer_ptr + v8), v7);
        if (v12)
        {
LABEL_25:
          dispatch_release(v5);
          return v12;
        }

LABEL_20:
        v13 = v6[3];
        if (v13)
        {
          v12 = dispatch_data_create_subrange(v2, v6[2], v13);
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_25;
      }

      if (a2 == 3)
      {
        v7 = *(buffer_ptr + 3);
        if (!v7)
        {
          goto LABEL_20;
        }

        v8 = 16;
        goto LABEL_19;
      }

      v9 = *(buffer_ptr + 9);
      if (v9)
      {
        v11 = *(buffer_ptr + 8);
        v10 = v2;
        goto LABEL_31;
      }

LABEL_33:
      v2 = 0;
      goto LABEL_34;
    }

    dispatch_release(v5);
    if (*buffer_ptr != 0x56484645524C544DLL)
    {
      dispatch_retain(v2);
      return v2;
    }

    size_ptr = 0;
    v20 = 0;
    v5 = dispatch_data_create_map(v2, &v20, &size_ptr);
    v9 = *(v20 + 2);
    if (a2 == 4)
    {
      v14 = *(v20 + 6);
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = v9 + *(v20 + 3) + *(v20 + 4) + *(v20 + 5);
    }

    else
    {
      if (a2 == 3)
      {
        goto LABEL_16;
      }

      v14 = *(v20 + a2 + 3);
      if (!v14)
      {
        if (!v9)
        {
          goto LABEL_33;
        }

LABEL_16:
        v10 = v2;
        v11 = 56;
LABEL_31:
        v2 = dispatch_data_create_subrange(v10, v11, v9);
LABEL_34:
        dispatch_release(v5);
        return v2;
      }

      v15 = v9 + *(v20 + (a2 - 1) + 3);
    }

    v11 = v15 + 56;
    v10 = v2;
    v9 = v14;
    goto LABEL_31;
  }

  return v2;
}

uint64_t ReflectionValidator<MTLFragmentReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(a2, v6);
  }

  return 1;
}

BOOL MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION();
  }

  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

uint64_t ShouldCreateAIRVersion(NSObject *a1)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  size_ptr = 0;
  v1 = dispatch_data_create_map(a1, &v7, &size_ptr);
  v2 = v1;
  if (size_ptr < 8)
  {
    v5 = 0;
    if (!v1)
    {
      return v5;
    }

LABEL_10:
    dispatch_release(v2);
    return v5;
  }

  v3 = *v7;
  v4 = MTLUseAirntReflection();
  if (v3 == 0x4E494253504C544DLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (v2)
  {
    goto LABEL_10;
  }

  return v5;
}

void dataTypeInfoFromString(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v31 = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32[0] = 0;
  v33 = p_dst;
  v32[1] = strlen(p_dst);
  while (1)
  {
    NextToken = BasicParser::getNextToken(v32);
    if (!NextToken)
    {
      goto LABEL_29;
    }

    v7 = NextToken;
    v8 = bufferTypeMap();
    std::string::basic_string[abi:ne200100]<0>(&__p, v7);
    v9 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v8, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (bufferTypeMap() + 8 == v9)
    {
      break;
    }

    if (*(v9 + 56) != 1)
    {
      v11 = *(v9 + 60);
      *&v10 = *(v9 + 64);
      goto LABEL_30;
    }
  }

  v12 = pixelFormatTypeMap();
  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  v13 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v12, &__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (pixelFormatTypeMap() + 8 == v13)
  {
LABEL_29:
    v11 = 0;
    v10 = 0uLL;
    goto LABEL_30;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&__p, v13 + 56);
  v14 = __p;
  if ((v28 & 0x80u) == 0)
  {
    v15 = &v26;
  }

  else
  {
    v15 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v16 = v28;
  }

  else
  {
    v16 = v27;
  }

  dataTypeInfoFromString(&v23, v15, v16);
  v11 = v29;
  v21 = v24;
  v17 = BasicParser::getNextToken(v32);
  v18 = strlen(v17);
  dataTypeInfoFromString(&v22, v17, v18);
  v19 = v22;
  if (v28 < 0)
  {
    operator delete(v26);
  }

  *&v10 = v21;
  *(&v10 + 1) = __PAIR64__(v19, v14);
LABEL_30:
  *a3 = v11;
  *(a3 + 4) = v10;
  if (v31 < 0)
  {
    operator delete(__dst);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_185BB2F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(a17);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void ContextStack::ContextStack(ContextStack *this, MTLFunctionType a2, char a3)
{
  *(this + 2) = 0u;
  *(this + 1) = 0u;
  *(this + 12) = 1065353216;
  *this = a2;
  *(this + 8) = a3;
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(this + 16, v3);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v3);
}

uint64_t deserializeArgument(void *a1, unsigned int *a2, uint64_t a3, ReflectionDeserializeContext *a4, void *a5)
{
  v6 = a3 + 4;
  v7 = (a3 + 4 + 4 * *a2);
  v8 = (v7 + *v7);
  v9 = (v8 - *v8);
  if (*v9 < 5u)
  {
    LODWORD(v10) = 0;
    goto LABEL_12;
  }

  v10 = v9[2];
  if (!v10)
  {
LABEL_12:
    AirReflection::EnumNameNodeType(v10);
    v14 = 0;
    v21 = 0;
    return v21 | v14;
  }

  v14 = 0;
  LODWORD(v10) = *(v8 + v10);
  if (v10 > 270342)
  {
    if (v10 >= 282624)
    {
      if ((v10 - 282624) <= 0x16)
      {
        v21 = 0;
        if (((1 << v10) & 0x7F6FFE) != 0)
        {
          return v21 | v14;
        }

        if (v10 == 282624)
        {
          v23 = AirReflection::Node::node_as_PayloadArg(v8);
          v24 = *v23;
          v25 = -v24;
          v26 = (v23 - v24);
          if (*v26 >= 0xFu && (v27 = v26[7]) != 0)
          {
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23 + v27 + *(v23 + v27) + 4];
            v25 = -*v23;
          }

          else
          {
            v28 = &stru_1EF478240;
          }

          v143 = (v23 + v25);
          v144 = *v143;
          if (v144 >= 7 && v143[3])
          {
            v145 = (v23 + v143[3]);
          }

          else
          {
            v145 = 0;
          }

          if (v144 < 0xB)
          {
            v146 = 0;
            v184 = 0;
            if (v144 < 9)
            {
              goto LABEL_450;
            }
          }

          else if (v143[5])
          {
            v146 = *(v23 + v143[5]);
          }

          else
          {
            v146 = 0;
          }

          if (v143[4])
          {
            v184 = *(v23 + v143[4]);
          }

          else
          {
            v184 = 0;
          }

LABEL_450:
          LOBYTE(v565[0]) = 1;
          if (v145)
          {
            v467 = *(a4 + 5) + *(a4 + 4) - 1;
            ContextStack::ContextStack((v565 + 4), *(*(*(a4 + 1) + 8 * (v467 / 0x49)) + 56 * (v467 % 0x49)), 1);
            std::deque<ContextStack>::push_back(a4, (v565 + 4));
            ContextStack::~ContextStack((v565 + 4));
            v189 = deserializeStructArgument(a1, v145, a3, a4, v565);
            std::deque<ContextStack>::pop_back(a4);
            v468 = 1;
          }

          else
          {
            v469 = v23 + v143[6] + *(v23 + v143[6]);
            v470 = strlen(v469 + 4);
            v471 = dataTypeFromString(v469 + 4, v470);
            v189 = 0;
            v468 = v471;
          }

          v472 = *(a4 + 5) + *(a4 + 4) - 1;
          v473 = *(*(*(a4 + 1) + 8 * (v472 / 0x49)) + 56 * (v472 % 0x49)) != 7;
          v474 = [MTLObjectPayloadBindingInternal alloc];
          v475 = (v23 - *v23);
          v477 = *v475 < 0x11u || (v476 = v475[8]) == 0 || *(v23 + v476) == 0;
          v478 = [(MTLObjectPayloadBindingInternal *)v474 initWithName:v28 type:34 access:v473 isActive:v477 locationIndex:0xFFFFFFFFLL arraySize:1 dataType:v468 dataSize:v184 alignment:v146];
          v479 = v478;
          if (!v189)
          {
            goto LABEL_589;
          }

          [(MTLObjectPayloadBindingInternal *)v478 setStructType:v189 doRetain:LOBYTE(v565[0])];
LABEL_588:

LABEL_589:
          [(MTLBindingInternal *)v479 setIsArgument:1];
          v14 = 0;
          goto LABEL_590;
        }
      }

      if (v10 != 286720)
      {
        if (v10 == 290816)
        {
          v96 = AirReflection::Node::node_as_MeshGridPropertiesArg(v8);
          v97 = *v96;
          v98 = -v97;
          v99 = (v96 - v97);
          if (*v99 >= 9u && (v100 = v99[4]) != 0)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v96 + v100 + *(v96 + v100) + 4];
            v98 = -*v96;
          }

          else
          {
            v20 = &stru_1EF478240;
          }

          v174 = (v96 + *(v96 + v98 + 6));
          v175 = v174 + *v174;
          v176 = strlen(v175 + 4);
          v74 = dataTypeFromString(v175 + 4, v176);
          v75 = [MTLBuiltInArgument alloc];
          v177 = (v96 - *v96);
          v78 = *v177 < 0xBu || (v178 = v177[5]) == 0 || *(v96 + v178) == 0;
          v79 = 23;
          goto LABEL_437;
        }

        goto LABEL_12;
      }

      v127 = AirReflection::Node::node_as_MeshArg(v8);
      v128 = *v127;
      v129 = -v128;
      v130 = (v127 - v128);
      if (*v130 >= 0xBu && (v131 = v130[5]) != 0)
      {
        v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v127 + v131 + *(v127 + v131) + 4];
        v129 = -*v127;
      }

      else
      {
        v132 = &stru_1EF478240;
      }

      v154 = (v127 + v129);
      v155 = *v154 < 0xDu || !v154[6] || *(v127 + v154[6]) == 0;
      v156 = v127 + v154[4] + *(v127 + v154[4]);
      v157 = strlen(v156 + 4);
      v158 = dataTypeFromString(v156 + 4, v157);
      v159 = (v6 + 4 * *(v127 + *(v127 - *v127 + 6)));
      v160 = AirReflection::Node::node_as_MeshTypeInfo((v159 + *v159));
      v161 = v160;
      v162 = (v160 - *v160);
      if (*v162 >= 5u && (v163 = v162[2]) != 0)
      {
        v164 = (v160 + v163 + *(v160 + v163));
      }

      else
      {
        v164 = 0;
      }

      v165 = v158;
      v166 = deserializeMeshStructArgument(v164, a3);
      v167 = (v161 - *v161);
      if (*v167 >= 7u && (v168 = v167[3]) != 0)
      {
        v169 = (v161 + v168 + *(v161 + v168));
      }

      else
      {
        v169 = 0;
      }

      v170 = deserializeMeshStructArgument(v169, a3);
      v171 = (v161 - *v161);
      v172 = *v171;
      if (v172 < 9)
      {
        LOWORD(v193) = 0;
        LOWORD(v173) = 0;
      }

      else
      {
        if (v171[4])
        {
          v173 = *(v161 + v171[4]);
        }

        else
        {
          LOWORD(v173) = 0;
        }

        if (v172 < 0xB)
        {
          LOWORD(v193) = 0;
        }

        else
        {
          if (v171[5])
          {
            v193 = *(v161 + v171[5]);
          }

          else
          {
            LOWORD(v193) = 0;
          }

          if (v172 >= 0xD)
          {
            v540 = v171[6];
            if (v540)
            {
              v541 = *(v161 + v540);
LABEL_546:
              WORD1(v563) = v193;
              LOWORD(v563) = v173;
              v479 = [[MTLBuiltInMeshArgument alloc] initWithName:v132 type:35 access:2 active:v155 index:0 dataType:v165 builtInType:24 meshVertexStructType:v166 meshPrimitiveStructType:v170 meshVertexCount:v563 meshPrimitiveCount:v541 meshTopologyType:?];

              v14 = 1;
              [(MTLBindingInternal *)v479 setIsArgument:1];
LABEL_590:
              *a5 = v479;
LABEL_440:
              v21 = 0x100000000;
              return v21 | v14;
            }
          }
        }
      }

      v541 = 1;
      goto LABEL_546;
    }

    if (v10 < 278528)
    {
      if (v10 <= 270350)
      {
        v21 = 0;
        if ((v10 - 270344) < 2)
        {
          return v21 | v14;
        }

        if (v10 == 270343)
        {
          v116 = AirReflection::Node::node_as_PositionInPatchArg(v8);
          v117 = *v116;
          v118 = -v117;
          v119 = (v116 - v117);
          if (*v119 >= 9u && (v120 = v119[4]) != 0)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v116 + v120 + *(v116 + v120) + 4];
            v118 = -*v116;
          }

          else
          {
            v20 = &stru_1EF478240;
          }

          v133 = (v116 + *(v116 + v118 + 6));
          v134 = v133 + *v133;
          v135 = strlen(v134 + 4);
          v74 = dataTypeFromString(v134 + 4, v135);
          v75 = [MTLBuiltInArgument alloc];
          v136 = (v116 - *v116);
          v78 = *v136 < 0xBu || (v137 = v136[5]) == 0 || *(v116 + v137) == 0;
          v79 = 14;
          goto LABEL_437;
        }

        if (v10 == 270350)
        {
          v66 = AirReflection::Node::node_as_AmplificationCountArg(v8);
          v67 = *v66;
          v68 = -v67;
          v69 = (v66 - v67);
          if (*v69 >= 9u && (v70 = v69[4]) != 0)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66 + v70 + *(v66 + v70) + 4];
            v68 = -*v66;
          }

          else
          {
            v20 = &stru_1EF478240;
          }

          v138 = (v66 + *(v66 + v68 + 6));
          v139 = v138 + *v138;
          v140 = strlen(v139 + 4);
          v74 = dataTypeFromString(v139 + 4, v140);
          v75 = [MTLBuiltInArgument alloc];
          v141 = (v66 - *v66);
          v78 = *v141 < 0xBu || (v142 = v141[5]) == 0 || *(v66 + v142) == 0;
          v79 = 22;
          goto LABEL_437;
        }

        goto LABEL_12;
      }

      v29 = (v10 - 274432) > 0xE || ((1 << v10) & 0x61FF) == 0;
      v21 = 0;
      if (!v29)
      {
        return v21 | v14;
      }

      if (v10 == 270351)
      {
        v30 = AirReflection::Node::node_as_AmplificationIDArg(v8);
        v31 = *v30;
        v32 = -v31;
        v33 = (v30 - v31);
        if (*v33 >= 9u && (v34 = v33[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30 + v34 + *(v30 + v34) + 4];
          v32 = -*v30;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v179 = (v30 + *(v30 + v32 + 6));
        v180 = v179 + *v179;
        v181 = strlen(v180 + 4);
        v74 = dataTypeFromString(v180 + 4, v181);
        v75 = [MTLBuiltInArgument alloc];
        v182 = (v30 - *v30);
        v78 = *v182 < 0xBu || (v183 = v182[5]) == 0 || *(v30 + v183) == 0;
        v79 = 21;
        goto LABEL_437;
      }

      goto LABEL_12;
    }

    v21 = 0;
    if ((v10 - 278528) < 3)
    {
      return v21 | v14;
    }

    if (v10 != 278531)
    {
      if (v10 != 278532)
      {
        goto LABEL_12;
      }

      v60 = AirReflection::Node::node_as_ImageblockDataArg(v8);
      v61 = *v60;
      v62 = -v61;
      v63 = (v60 - v61);
      if (*v63 >= 0x15u && (v64 = v63[10]) != 0)
      {
        v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v60 + v64 + *(v60 + v64) + 4];
        v62 = -*v60;
      }

      else
      {
        v65 = &stru_1EF478240;
      }

      v147 = (v60 + v62);
      v148 = *v147;
      if (v148 < 7)
      {
        v149 = 0;
      }

      else
      {
        if (v147[3])
        {
          v149 = *(v60 + v147[3]);
        }

        else
        {
          v149 = 0;
        }

        if (v148 >= 0xB && v147[5])
        {
          v480 = *(a4 + 5) + *(a4 + 4) - 1;
          ContextStack::ContextStack((v565 + 4), *(*(*(a4 + 1) + 8 * (v480 / 0x49)) + 56 * (v480 % 0x49)), 1);
          std::deque<ContextStack>::push_back(a4, (v565 + 4));
          ContextStack::~ContextStack((v565 + 4));
          v481 = (v60 - *v60);
          if (*v481 >= 0xBu && (v482 = v481[5]) != 0)
          {
            v483 = (v60 + v482);
          }

          else
          {
            v483 = 0;
          }

          v484 = deserializeStructArgument(a1, v483, a3, a4, 0);
          std::deque<ContextStack>::pop_back(a4);
LABEL_466:
          v485 = *(a4 + 5) + *(a4 + 4) - 1;
          ContextStack::ContextStack((v565 + 4), *(*(*(a4 + 1) + 8 * (v485 / 0x49)) + 56 * (v485 % 0x49)), 1);
          std::deque<ContextStack>::push_back(a4, (v565 + 4));
          ContextStack::~ContextStack((v565 + 4));
          v486 = (v60 - *v60);
          if (*v486 >= 9u && (v487 = v486[4]) != 0)
          {
            v488 = (v60 + v487);
          }

          else
          {
            v488 = 0;
          }

          v489 = deserializeStructArgument(a1, v488, a3, a4, 0);
          std::deque<ContextStack>::pop_back(a4);
          v490 = (v60 - *v60);
          v491 = *v490;
          if (v491 < 0xD)
          {
            v492 = 0;
          }

          else
          {
            if (v490[6])
            {
              v492 = *(v60 + v490[6]) != 0;
            }

            else
            {
              v492 = 0;
            }

            if (v491 >= 0xF)
            {
              v499 = v490[7];
              if (v499)
              {
                v500 = *(v60 + v499);
                goto LABEL_494;
              }
            }
          }

          v500 = -1;
LABEL_494:
          v501 = [MTLImageBlockDataArgument alloc];
          v502 = (v60 - *v60);
          v504 = *v502 < 0x17u || (v503 = v502[11]) == 0 || *(v60 + v503) == 0;
          HIDWORD(v561) = v500;
          LOBYTE(v561) = v492;
          v479 = [(MTLImageBlockDataArgument *)v501 initWithName:v65 type:16 access:0 isActive:v504 index:0 dataSize:v149 masterStructMembers:v484 aliasImplicitImageBlock:v561 aliasImplicitImageBlockRenderTarget:?];
          [(MTLBuiltInMeshArgument *)v479 setStructType:v489];

          goto LABEL_589;
        }
      }

      v484 = 0;
      goto LABEL_466;
    }

    v121 = AirReflection::Node::node_as_ImageblockArg(v8);
    v122 = *v121;
    v123 = -v122;
    v124 = (v121 - v122);
    if (*v124 >= 0x13u && (v125 = v124[9]) != 0)
    {
      v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v121 + v125 + *(v121 + v125) + 4];
      v123 = -*v121;
    }

    else
    {
      v126 = &stru_1EF478240;
    }

    v150 = (v121 + v123);
    if (*v150 < 7u)
    {
      v152 = 0;
    }

    else
    {
      v151 = v150[3];
      v152 = v151 != 0;
      if (v151)
      {
        v153 = *(v121 + v151);
        v152 = 1;
LABEL_172:
        v185 = *(a4 + 5) + *(a4 + 4) - 1;
        ContextStack::ContextStack((v565 + 4), *(*(*(a4 + 1) + 8 * (v185 / 0x49)) + 56 * (v185 % 0x49)), 1);
        std::deque<ContextStack>::push_back(a4, (v565 + 4));
        ContextStack::~ContextStack((v565 + 4));
        v186 = (v121 - *v121);
        if (*v186 >= 9u && (v187 = v186[4]) != 0)
        {
          v188 = (v121 + v187);
        }

        else
        {
          v188 = 0;
        }

        v189 = deserializeStructArgument(a1, v188, a3, a4, 0);
        std::deque<ContextStack>::pop_back(a4);
        v190 = (v121 - *v121);
        v191 = *v190;
        if (v191 < 0xB)
        {
          v192 = 0;
        }

        else
        {
          if (v190[5])
          {
            v192 = *(v121 + v190[5]) != 0;
          }

          else
          {
            v192 = 0;
          }

          if (v191 >= 0xD)
          {
            v493 = v190[6];
            if (v493)
            {
              v494 = *(v121 + v493);
              goto LABEL_484;
            }
          }
        }

        v494 = -1;
LABEL_484:
        v495 = [MTLImageBlockArgument alloc];
        v496 = (v121 - *v121);
        v498 = *v496 < 0x15u || (v497 = v496[10]) == 0 || *(v121 + v497) == 0;
        HIDWORD(v562) = v494;
        LOBYTE(v562) = v192;
        LODWORD(v560) = v153;
        v479 = [(MTLImageBlockArgument *)v495 initWithName:v126 type:17 access:0 isActive:v498 index:0 kind:v152 dataSize:v560 masterStructMembers:0 aliasImplicitImageBlock:v562 aliasImplicitImageBlockRenderTarget:?];
        [(MTLBuiltInMeshArgument *)v479 setStructType:v189];
        goto LABEL_588;
      }
    }

    v153 = 0;
    goto LABEL_172;
  }

  if (v10 < 270336)
  {
    v21 = 0;
    switch(v10)
    {
      case 266240:
        v35 = AirReflection::Node::node_as_ThreadPositionInGridArg(v8);
        v36 = *v35;
        v37 = -v36;
        v38 = (v35 - v36);
        if (*v38 >= 9u && (v39 = v38[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v35 + v39 + *(v35 + v39) + 4];
          v37 = -*v35;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v431 = (v35 + *(v35 + v37 + 6));
        v432 = v431 + *v431;
        v433 = strlen(v432 + 4);
        v74 = dataTypeFromString(v432 + 4, v433);
        v75 = [MTLBuiltInArgument alloc];
        v434 = (v35 - *v35);
        v78 = *v434 < 0xBu || (v435 = v434[5]) == 0 || *(v35 + v435) == 0;
        v79 = 5;
        goto LABEL_437;
      case 266241:
        v270 = AirReflection::Node::node_as_ThreadsPerGridArg(v8);
        v271 = *v270;
        v272 = -v271;
        v273 = (v270 - v271);
        if (*v273 >= 9u && (v274 = v273[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v270 + v274 + *(v270 + v274) + 4];
          v272 = -*v270;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v411 = (v270 + *(v270 + v272 + 6));
        v412 = v411 + *v411;
        v413 = strlen(v412 + 4);
        v74 = dataTypeFromString(v412 + 4, v413);
        v75 = [MTLBuiltInArgument alloc];
        v414 = (v270 - *v270);
        v78 = *v414 < 0xBu || (v415 = v414[5]) == 0 || *(v270 + v415) == 0;
        v79 = 6;
        goto LABEL_437;
      case 266242:
        v285 = AirReflection::Node::node_as_ThreadgroupPositionInGridArg(v8);
        v286 = *v285;
        v287 = -v286;
        v288 = (v285 - v286);
        if (*v288 >= 9u && (v289 = v288[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v285 + v289 + *(v285 + v289) + 4];
          v287 = -*v285;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v426 = (v285 + *(v285 + v287 + 6));
        v427 = v426 + *v426;
        v428 = strlen(v427 + 4);
        v74 = dataTypeFromString(v427 + 4, v428);
        v75 = [MTLBuiltInArgument alloc];
        v429 = (v285 - *v285);
        v78 = *v429 < 0xBu || (v430 = v429[5]) == 0 || *(v285 + v430) == 0;
        v79 = 10;
        goto LABEL_437;
      case 266243:
        v260 = AirReflection::Node::node_as_ThreadgroupsPerGridArg(v8);
        v261 = *v260;
        v262 = -v261;
        v263 = (v260 - v261);
        if (*v263 >= 9u && (v264 = v263[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v260 + v264 + *(v260 + v264) + 4];
          v262 = -*v260;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v401 = (v260 + *(v260 + v262 + 6));
        v402 = v401 + *v401;
        v403 = strlen(v402 + 4);
        v74 = dataTypeFromString(v402 + 4, v403);
        v75 = [MTLBuiltInArgument alloc];
        v404 = (v260 - *v260);
        v78 = *v404 < 0xBu || (v405 = v404[5]) == 0 || *(v260 + v405) == 0;
        v79 = 11;
        goto LABEL_437;
      case 266244:
        v265 = AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(v8);
        v266 = *v265;
        v267 = -v266;
        v268 = (v265 - v266);
        if (*v268 >= 9u && (v269 = v268[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v265 + v269 + *(v265 + v269) + 4];
          v267 = -*v265;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v406 = (v265 + *(v265 + v267 + 6));
        v407 = v406 + *v406;
        v408 = strlen(v407 + 4);
        v74 = dataTypeFromString(v407 + 4, v408);
        v75 = [MTLBuiltInArgument alloc];
        v409 = (v265 - *v265);
        v78 = *v409 < 0xBu || (v410 = v409[5]) == 0 || *(v265 + v410) == 0;
        v79 = 7;
        goto LABEL_437;
      case 266245:
        v280 = AirReflection::Node::node_as_ThreadsPerThreadgroupArg(v8);
        v281 = *v280;
        v282 = -v281;
        v283 = (v280 - v281);
        if (*v283 >= 9u && (v284 = v283[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v280 + v284 + *(v280 + v284) + 4];
          v282 = -*v280;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v421 = (v280 + *(v280 + v282 + 6));
        v422 = v421 + *v421;
        v423 = strlen(v422 + 4);
        v74 = dataTypeFromString(v422 + 4, v423);
        v75 = [MTLBuiltInArgument alloc];
        v424 = (v280 - *v280);
        v78 = *v424 < 0xBu || (v425 = v424[5]) == 0 || *(v280 + v425) == 0;
        v79 = 9;
        goto LABEL_437;
      case 266246:
      case 266249:
      case 266254:
      case 266255:
      case 266256:
      case 266258:
      case 266259:
      case 266260:
        return v21 | v14;
      case 266247:
        v305 = AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(v8);
        v306 = *v305;
        v307 = -v306;
        v308 = (v305 - v306);
        if (*v308 >= 9u && (v309 = v308[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v305 + v309 + *(v305 + v309) + 4];
          v307 = -*v305;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v451 = (v305 + *(v305 + v307 + 6));
        v452 = v451 + *v451;
        v453 = strlen(v452 + 4);
        v74 = dataTypeFromString(v452 + 4, v453);
        v75 = [MTLBuiltInArgument alloc];
        v454 = (v305 - *v305);
        v78 = *v454 < 0xBu || (v455 = v454[5]) == 0 || *(v305 + v455) == 0;
        v79 = 8;
        goto LABEL_437;
      case 266248:
        v275 = AirReflection::Node::node_as_ThreadExecutionWidthArg(v8);
        v276 = *v275;
        v277 = -v276;
        v278 = (v275 - v276);
        if (*v278 >= 9u && (v279 = v278[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v275 + v279 + *(v275 + v279) + 4];
          v277 = -*v275;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v416 = (v275 + *(v275 + v277 + 6));
        v417 = v416 + *v416;
        v418 = strlen(v417 + 4);
        v74 = dataTypeFromString(v417 + 4, v418);
        v75 = [MTLBuiltInArgument alloc];
        v419 = (v275 - *v275);
        v78 = *v419 < 0xBu || (v420 = v419[5]) == 0 || *(v275 + v420) == 0;
        v79 = 12;
        goto LABEL_437;
      case 266250:
        v315 = AirReflection::Node::node_as_StageInGridOriginArg(v8);
        v316 = *v315;
        v317 = -v316;
        v318 = (v315 - v316);
        if (*v318 >= 9u && (v319 = v318[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v315 + v319 + *(v315 + v319) + 4];
          v317 = -*v315;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v461 = (v315 + *(v315 + v317 + 6));
        v462 = v461 + *v461;
        v463 = strlen(v462 + 4);
        v74 = dataTypeFromString(v462 + 4, v463);
        v75 = [MTLBuiltInArgument alloc];
        v464 = (v315 - *v315);
        v78 = *v464 < 0xBu || (v465 = v464[5]) == 0 || *(v315 + v465) == 0;
        v79 = 15;
        goto LABEL_437;
      case 266251:
        v290 = AirReflection::Node::node_as_StageInGridSizeArg(v8);
        v291 = *v290;
        v292 = -v291;
        v293 = (v290 - v291);
        if (*v293 >= 9u && (v294 = v293[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v290 + v294 + *(v290 + v294) + 4];
          v292 = -*v290;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v436 = (v290 + *(v290 + v292 + 6));
        v437 = v436 + *v436;
        v438 = strlen(v437 + 4);
        v74 = dataTypeFromString(v437 + 4, v438);
        v75 = [MTLBuiltInArgument alloc];
        v439 = (v290 - *v290);
        v78 = *v439 < 0xBu || (v440 = v439[5]) == 0 || *(v290 + v440) == 0;
        v79 = 16;
        goto LABEL_437;
      case 266252:
        v300 = AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(v8);
        v301 = *v300;
        v302 = -v301;
        v303 = (v300 - v301);
        if (*v303 >= 9u && (v304 = v303[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v300 + v304 + *(v300 + v304) + 4];
          v302 = -*v300;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v446 = (v300 + *(v300 + v302 + 6));
        v447 = v446 + *v446;
        v448 = strlen(v447 + 4);
        v74 = dataTypeFromString(v447 + 4, v448);
        v75 = [MTLBuiltInArgument alloc];
        v449 = (v300 - *v300);
        v78 = *v449 < 0xBu || (v450 = v449[5]) == 0 || *(v300 + v450) == 0;
        v79 = 18;
        goto LABEL_437;
      case 266253:
        v310 = AirReflection::Node::node_as_ThreadsPerSimdgroupArg(v8);
        v311 = *v310;
        v312 = -v311;
        v313 = (v310 - v311);
        if (*v313 >= 9u && (v314 = v313[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v310 + v314 + *(v310 + v314) + 4];
          v312 = -*v310;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v456 = (v310 + *(v310 + v312 + 6));
        v457 = v456 + *v456;
        v458 = strlen(v457 + 4);
        v74 = dataTypeFromString(v457 + 4, v458);
        v75 = [MTLBuiltInArgument alloc];
        v459 = (v310 - *v310);
        v78 = *v459 < 0xBu || (v460 = v459[5]) == 0 || *(v310 + v460) == 0;
        v79 = 20;
        goto LABEL_437;
      case 266257:
        v295 = AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(v8);
        v296 = *v295;
        v297 = -v296;
        v298 = (v295 - v296);
        if (*v298 >= 9u && (v299 = v298[4]) != 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v295 + v299 + *(v295 + v299) + 4];
          v297 = -*v295;
        }

        else
        {
          v20 = &stru_1EF478240;
        }

        v441 = (v295 + *(v295 + v297 + 6));
        v442 = v441 + *v441;
        v443 = strlen(v442 + 4);
        v74 = dataTypeFromString(v442 + 4, v443);
        v75 = [MTLBuiltInArgument alloc];
        v444 = (v295 - *v295);
        v78 = *v444 < 0xBu || (v445 = v444[5]) == 0 || *(v295 + v445) == 0;
        v79 = 17;
        goto LABEL_437;
      default:
        v21 = 0;
        switch(v10)
        {
          case 262144:
            v45 = AirReflection::Node::node_as_BufferArg(v8);
            v46 = *v45;
            v47 = -v46;
            v48 = (v45 - v46);
            if (*v48 >= 0x1Bu && (v49 = v48[13]) != 0)
            {
              v564 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45 + v49 + *(v45 + v49) + 4];
              v47 = -*v45;
            }

            else
            {
              v564 = &stru_1EF478240;
            }

            v353 = (v45 + *(v45 + v47 + 24));
            v354 = v353 + *v353;
            v355 = strlen(v354 + 4);
            v356 = pixelFormatAndALUTypeFromString(v354 + 4, v355);
            v357 = (v45 - *v45);
            v358 = *v357;
            if (v358 >= 0x17 && v357[11])
            {
              v359 = *(v45 + v357[11]);
            }

            else
            {
              LOWORD(v359) = 0;
            }

            v360 = *(a4 + 5) + *(a4 + 4) - 1;
            v361 = *(*(a4 + 1) + 8 * (v360 / 0x49));
            v362 = v360 % 0x49;
            if (*(v361 + 56 * v362 + 8) == 1 && v357[3])
            {
              v363 = v357[3];
LABEL_300:
              v364 = *(v45 + v363);
              goto LABEL_444;
            }

            if (v358 >= 0x15 && v357[10])
            {
              v363 = v357[10];
              goto LABEL_300;
            }

            v364 = 0;
LABEL_444:
            if (v357[7])
            {
              v466 = *(v45 + v357[7]) == 2;
            }

            else
            {
              v466 = 0;
            }

            v505 = v357[8];
            LOBYTE(v565[0]) = 1;
            if (v505)
            {
              ContextStack::ContextStack((v565 + 4), *(v361 + 56 * v362), 1);
              std::deque<ContextStack>::push_back(a4, (v565 + 4));
              ContextStack::~ContextStack((v565 + 4));
              v189 = deserializeStructArgument(a1, (v45 + v505), a3, a4, v565);
              std::deque<ContextStack>::pop_back(a4);
              v506 = 1;
              if (v466)
              {
                goto LABEL_502;
              }
            }

            else
            {
              v508 = v45 + v357[12] + *(v45 + v357[12]);
              v509 = strlen(v508 + 4);
              v510 = dataTypeFromString(v508 + 4, v509);
              v189 = 0;
              v506 = v510;
              if (v466)
              {
LABEL_502:
                v507 = 1;
                if ([a1 minConstantBufferAlignmentBytes] >= v359)
                {
                  LOWORD(v359) = [a1 minConstantBufferAlignmentBytes];
                }

LABEL_514:
                v517 = (v45 - *v45);
                if (*v517 < 0xFu || (v518 = v517[7]) == 0 || *(v45 + v518) != 3)
                {
                  v524 = v356;
                  v525 = HIDWORD(v356);
                  v526 = [MTLBufferBindingInternal alloc];
                  v527 = (v45 - *v45);
                  v528 = *v527;
                  if (v528 < 0xD)
                  {
                    v531 = 0;
                    v532 = 1;
                    v529 = v564;
                  }

                  else
                  {
                    v529 = v564;
                    if (v527[6])
                    {
                      v530 = *(v45 + v527[6]);
                      if (v530 == 3)
                      {
                        v531 = 1;
                      }

                      else
                      {
                        v531 = 2 * (v530 == 2);
                      }
                    }

                    else
                    {
                      v531 = 0;
                    }

                    v532 = v528 < 0x1D || !v527[14] || *(v45 + v527[14]) == 0;
                  }

                  LOBYTE(v563) = v507;
                  v544 = [(MTLBufferBindingInternal *)v526 initWithName:v529 type:0 access:v531 isActive:v532 locationIndex:*(v45 + v527[4]) arraySize:*(v45 + v527[5]) dataType:v506 pixelFormat:v524 aluType:v525 isConstantBuffer:v563 dataSize:v364 alignment:v359];
LABEL_585:
                  v479 = v544;
                  if (v506 == 1)
                  {
                    [(MTLBufferBindingInternal *)v544 setStructType:v189 doRetain:LOBYTE(v565[0])];
                  }

                  if (!v189)
                  {
                    goto LABEL_589;
                  }

                  goto LABEL_588;
                }

                v519 = [MTLThreadgroupMemoryBindingInternal alloc];
                v520 = (v45 - *v45);
                v521 = *v520;
                if (v521 < 0xD)
                {
                  v523 = 0;
                }

                else
                {
                  if (v520[6])
                  {
                    v522 = *(v45 + v520[6]);
                    if (v522 == 3)
                    {
                      v523 = 1;
                    }

                    else
                    {
                      v523 = 2 * (v522 == 2);
                    }
                  }

                  else
                  {
                    v523 = 0;
                  }

                  if (v521 >= 0x1D && v520[14])
                  {
                    v559 = *(v45 + v520[14]) == 0;
LABEL_604:
                    v544 = [(MTLThreadgroupMemoryBindingInternal *)v519 initWithName:v564 type:1 access:v523 isActive:v559 locationIndex:*(v45 + v520[4]) arraySize:*(v45 + v520[5]) dataType:v506 dataSize:v364 alignment:v359];
                    goto LABEL_585;
                  }
                }

                v559 = 1;
                goto LABEL_604;
              }
            }

            v507 = 0;
            goto LABEL_514;
          case 262145:
            v234 = AirReflection::Node::node_as_SamplerArg(v8);
            v235 = (v234 - *v234);
            if (*v235 >= 0xDu && (v236 = v235[6]) != 0)
            {
              v237 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v234 + v236 + *(v234 + v236) + 4];
            }

            else
            {
              v237 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v387 = (v234 - *v234);
            v322 = *(v234 + v387[3]);
            v323 = *v387 < 0xFu || !v387[7] || *(v234 + v387[7]) == 0;
            v324 = *(v234 + v387[4]);
            v325 = v237;
            v326 = 3;
            goto LABEL_356;
          case 262146:
            v242 = AirReflection::Node::node_as_TextureArg(v8);
            v243 = *v242;
            v244 = -v243;
            v245 = (v242 - v243);
            if (*v245 >= 0x11u && (v246 = v245[8]) != 0)
            {
              v247 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v242 + v246 + *(v242 + v246) + 4];
              v244 = -*v242;
            }

            else
            {
              v247 = &stru_1EF478240;
            }

            HIDWORD(v565[0]) = 0;
            LOBYTE(v565[0]) = 0;
            v389 = (v242 + *(v242 + v244 + 14));
            v390 = v389 + *v389;
            v391 = strlen(v390 + 4);
            v392 = textureTypeFromString(v390 + 4, v391, v565 + 1, v565);
            v393 = [MTLTextureBindingInternal alloc];
            v394 = (v242 - *v242);
            v395 = *v394;
            if (v395 < 0xB)
            {
              v397 = 0;
            }

            else
            {
              if (v394[5])
              {
                v396 = *(v242 + v394[5]);
                if (v396 == 3)
                {
                  v397 = 1;
                }

                else
                {
                  v397 = 2 * (v396 == 2);
                }
              }

              else
              {
                v397 = 0;
              }

              if (v395 >= 0x13 && v394[9])
              {
                v543 = *(v242 + v394[9]) == 0;
                goto LABEL_558;
              }
            }

            v543 = 1;
LABEL_558:
            LOBYTE(v561) = v565[0];
            v352 = [(MTLTextureBindingInternal *)v393 initWithName:v247 access:v397 isActive:v543 locationIndex:*(v242 + v394[3]) arraySize:*(v242 + v394[4]) dataType:HIDWORD(v565[0]) textureType:v392 isDepthTexture:v561];
LABEL_357:
            v115 = v352;
            goto LABEL_358;
          case 262147:
            v222 = AirReflection::Node::node_as_ConstantArg(v8);
            v223 = *v222;
            v224 = -v223;
            v225 = (v222 - v223);
            if (*v225 >= 0x13u && (v226 = v225[9]) != 0)
            {
              v227 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v222 + v226 + *(v222 + v226) + 4];
              v224 = -*v222;
            }

            else
            {
              v227 = &stru_1EF478240;
            }

            v366 = (v222 + *(v222 + v224 + 16));
            v367 = v366 + *v366;
            v368 = strlen(v367 + 4);
            v369 = pixelFormatAndALUTypeFromString(v367 + 4, v368);
            v370 = HIDWORD(v369);
            v371 = v369;
            v372 = v222 - *v222;
            v373 = *(v222 + *(v372 + 7));
            v374 = v222 + *(v372 + 8) + *(v222 + *(v372 + 8));
            v375 = strlen(v374 + 4);
            v376 = dataTypeFromString(v374 + 4, v375);
            v377 = [MTLBufferBindingInternal alloc];
            v378 = (v222 - *v222);
            v379 = *v378 < 0x15u || !v378[10] || *(v222 + v378[10]) == 0;
            LOBYTE(v563) = 0;
            v352 = [(MTLBufferBindingInternal *)v377 initWithName:v227 type:22 access:0 isActive:v379 locationIndex:*(v222 + v378[3]) arraySize:*(v222 + v378[4]) dataType:v376 pixelFormat:v371 aluType:v370 isConstantBuffer:v563 dataSize:*(v222 + v378[6]) alignment:v373];
            goto LABEL_357;
          case 262148:
            v228 = AirReflection::Node::node_as_IndirectBufferArg(v8);
            v229 = *v228;
            v230 = -v229;
            v231 = (v228 - v229);
            if (*v231 >= 0x1Bu && (v232 = v231[13]) != 0)
            {
              v233 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v228 + v232 + *(v228 + v232) + 4];
              v230 = -*v228;
            }

            else
            {
              v233 = &stru_1EF478240;
            }

            v380 = (v228 + *(v228 + v230 + 24));
            v381 = v380 + *v380;
            v382 = strlen(v381 + 4);
            v383 = pixelFormatAndALUTypeFromString(v381 + 4, v382);
            v384 = (v228 - *v228);
            if (*v384 >= 0x17u && v384[11])
            {
              v385 = *(v228 + v384[11]);
            }

            else
            {
              LOWORD(v385) = 0;
            }

            if (v384[7])
            {
              v386 = *(v228 + v384[7]) == 2;
            }

            else
            {
              v386 = 0;
            }

            v511 = v384[8];
            LOBYTE(v565[0]) = 1;
            if (v511)
            {
              v512 = *(a4 + 5) + *(a4 + 4) - 1;
              ContextStack::ContextStack((v565 + 4), *(*(*(a4 + 1) + 8 * (v512 / 0x49)) + 56 * (v512 % 0x49)), 1);
              std::deque<ContextStack>::push_back(a4, (v565 + 4));
              ContextStack::~ContextStack((v565 + 4));
              v189 = deserializeStructArgument(a1, (v228 + v511), a3, a4, v565);
              std::deque<ContextStack>::pop_back(a4);
              v506 = 1;
              if (v386)
              {
                goto LABEL_509;
              }
            }

            else
            {
              v514 = v228 + v384[12] + *(v228 + v384[12]);
              v515 = strlen(v514 + 4);
              v516 = dataTypeFromString(v514 + 4, v515);
              v189 = 0;
              v506 = v516;
              if (v386)
              {
LABEL_509:
                if ([a1 minConstantBufferAlignmentBytes] >= v385)
                {
                  v533 = [a1 minConstantBufferAlignmentBytes];
                  v513 = 1;
                  LOWORD(v385) = v533;
                }

                else
                {
                  v513 = 1;
                }

LABEL_529:
                v534 = *(a4 + 5) + *(a4 + 4) - 1;
                v535 = *(*(*(a4 + 1) + 8 * (v534 / 0x49)) + 56 * (v534 % 0x49) + 8);
                v536 = -*v228;
                if (v535 == 1 && (v537 = *(v228 - *v228), v537 >= 7) && *(v228 - *v228 + 6))
                {
                  v538 = *(v228 + *(v228 - *v228 + 6));
                }

                else
                {
                  v539 = (v228 - *v228);
                  v537 = *v539;
                  if (v537 >= 0x15)
                  {
                    if (v539[10])
                    {
                      v538 = *(v228 + v539[10]);
                    }

                    else
                    {
                      v538 = 0;
                    }

                    goto LABEL_566;
                  }

                  v538 = 0;
                }

                if (v537 < 0xF)
                {
                  goto LABEL_573;
                }

LABEL_566:
                if (!*(v228 - *v228 + 14) || *(v228 + *(v228 - *v228 + 14)) != 3)
                {
LABEL_573:
                  v550 = v383;
                  v551 = HIDWORD(v383);
                  v552 = [MTLBufferBindingInternal alloc];
                  v553 = (v228 - *v228);
                  v554 = *v553;
                  if (v554 < 0xD)
                  {
                    v556 = 0;
                  }

                  else
                  {
                    if (v553[6])
                    {
                      v555 = *(v228 + v553[6]);
                      if (v555 == 3)
                      {
                        v556 = 1;
                      }

                      else
                      {
                        v556 = 2 * (v555 == 2);
                      }
                    }

                    else
                    {
                      v556 = 0;
                    }

                    if (v554 >= 0x1D && v553[14])
                    {
                      v557 = *(v228 + v553[14]) == 0;
LABEL_584:
                      LOBYTE(v563) = v513;
                      v544 = [(MTLBufferBindingInternal *)v552 initWithName:v233 type:0 access:v556 isActive:v557 locationIndex:*(v228 + v553[4]) arraySize:*(v228 + v553[5]) dataType:v506 pixelFormat:v550 aluType:v551 isConstantBuffer:v563 dataSize:v538 alignment:v385];
                      goto LABEL_585;
                    }
                  }

                  v557 = 1;
                  goto LABEL_584;
                }

                v545 = [MTLThreadgroupMemoryBindingInternal alloc];
                v546 = (v228 - *v228);
                v547 = *v546;
                if (v547 < 0xD)
                {
                  v549 = 0;
                }

                else
                {
                  if (v546[6])
                  {
                    v548 = *(v228 + v546[6]);
                    if (v548 == 3)
                    {
                      v549 = 1;
                    }

                    else
                    {
                      v549 = 2 * (v548 == 2);
                    }
                  }

                  else
                  {
                    v549 = 0;
                  }

                  if (v547 >= 0x1D && v546[14])
                  {
                    v558 = *(v228 + v546[14]) == 0;
LABEL_598:
                    v544 = [(MTLThreadgroupMemoryBindingInternal *)v545 initWithName:v233 type:1 access:v549 isActive:v558 locationIndex:*(v228 + v546[4]) arraySize:*(v228 + v546[5]) dataType:v506 dataSize:v538 alignment:v385];
                    goto LABEL_585;
                  }
                }

                v558 = 1;
                goto LABEL_598;
              }
            }

            v513 = 0;
            goto LABEL_529;
          case 262149:
            v212 = AirReflection::Node::node_as_IndirectConstantArg(v8);
            v213 = *v212;
            v214 = -v213;
            v215 = (v212 - v213);
            if (*v215 >= 0xDu && (v216 = v215[6]) != 0)
            {
              v217 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v212 + v216 + *(v212 + v216) + 4];
              v214 = -*v212;
            }

            else
            {
              v217 = &stru_1EF478240;
            }

            v339 = (v212 + *(v212 + v214 + 10));
            v340 = v339 + *v339;
            v341 = strlen(v340 + 4);
            v342 = pixelFormatAndALUTypeFromString(v340 + 4, v341);
            v343 = HIDWORD(v342);
            v344 = v342;
            v565[0] = 0;
            v345 = (v212 + *(v212 - *v212 + 10));
            v346 = v345 + *v345;
            v347 = strlen(v346 + 4);
            v348 = dataTypeFromString(v346 + 4, v347, v565 + 1, v565);
            v349 = [MTLIndirectConstantArgument alloc];
            v350 = (v212 - *v212);
            v351 = *v350 < 0xFu || !v350[7] || *(v212 + v350[7]) == 0;
            v352 = [(MTLIndirectConstantArgument *)v349 initWithName:v217 type:4 access:0 isActive:v351 locationIndex:*(v212 + v350[3]) dataType:v348 pixelFormat:v344 aluType:v343 dataSize:LODWORD(v565[0]) alignment:HIDWORD(v565[0])];
            goto LABEL_357;
          case 262150:
            v218 = AirReflection::Node::node_as_CommandBufferArg(v8);
            v219 = (v218 - *v218);
            if (*v219 >= 0xDu && (v220 = v219[6]) != 0)
            {
              v221 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v218 + v220 + *(v218 + v220) + 4];
            }

            else
            {
              v221 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v365 = (v218 - *v218);
            v322 = *(v218 + v365[3]);
            v323 = *v365 < 0xFu || !v365[7] || *(v218 + v365[7]) == 0;
            v324 = *(v218 + v365[4]);
            v325 = v221;
            v326 = 21;
            goto LABEL_356;
          case 262151:
            v208 = AirReflection::Node::node_as_ComputePipelineStateArg(v8);
            v209 = (v208 - *v208);
            if (*v209 >= 0xDu && (v210 = v209[6]) != 0)
            {
              v211 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v208 + v210 + *(v208 + v210) + 4];
            }

            else
            {
              v211 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v338 = (v208 - *v208);
            v322 = *(v208 + v338[3]);
            v323 = *v338 < 0xFu || !v338[7] || *(v208 + v338[7]) == 0;
            v324 = *(v208 + v338[4]);
            v325 = v211;
            v326 = 20;
            goto LABEL_356;
          case 262152:
            v248 = AirReflection::Node::node_as_RenderPipelineStateArg(v8);
            v249 = (v248 - *v248);
            if (*v249 >= 0xDu && (v250 = v249[6]) != 0)
            {
              v251 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v248 + v250 + *(v248 + v250) + 4];
            }

            else
            {
              v251 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v398 = (v248 - *v248);
            v322 = *(v248 + v398[3]);
            v323 = *v398 < 0xFu || !v398[7] || *(v248 + v398[7]) == 0;
            v324 = *(v248 + v398[4]);
            v325 = v251;
            v326 = 19;
            goto LABEL_356;
          case 262153:
            v252 = AirReflection::Node::node_as_VisibleFunctionTableArg(v8);
            v253 = (v252 - *v252);
            if (*v253 >= 0x11u && (v254 = v253[8]) != 0)
            {
              v255 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v252 + v254 + *(v252 + v254) + 4];
            }

            else
            {
              v255 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v399 = (v252 - *v252);
            v322 = *(v252 + v399[3]);
            v323 = *v399 < 0x13u || !v399[9] || *(v252 + v399[9]) == 0;
            v324 = *(v252 + v399[4]);
            v325 = v255;
            v326 = 24;
            goto LABEL_356;
          case 262154:
            v238 = AirReflection::Node::node_as_IntersectionFunctionTableArg(v8);
            v239 = (v238 - *v238);
            if (*v239 >= 0x11u && (v240 = v239[8]) != 0)
            {
              v241 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v238 + v240 + *(v238 + v240) + 4];
            }

            else
            {
              v241 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v388 = (v238 - *v238);
            v322 = *(v238 + v388[3]);
            v323 = *v388 < 0x13u || !v388[9] || *(v238 + v388[9]) == 0;
            v324 = *(v238 + v388[4]);
            v325 = v241;
            v326 = 27;
            goto LABEL_356;
          case 262155:
            v198 = AirReflection::Node::node_as_InstanceAccelerationStructureArg(v8);
            v199 = (v198 - *v198);
            if (*v199 >= 0x11u && (v200 = v199[8]) != 0)
            {
              v201 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v198 + v200 + *(v198 + v200) + 4];
            }

            else
            {
              v201 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v327 = (v198 - *v198);
            v322 = *(v198 + v327[3]);
            v323 = *v327 < 0x13u || !v327[9] || *(v198 + v327[9]) == 0;
            v324 = *(v198 + v327[4]);
            v325 = v201;
            v326 = 26;
            goto LABEL_356;
          case 262156:
            v194 = AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(v8);
            v195 = (v194 - *v194);
            if (*v195 >= 0x11u && (v196 = v195[8]) != 0)
            {
              v197 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v194 + v196 + *(v194 + v196) + 4];
            }

            else
            {
              v197 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v321 = (v194 - *v194);
            v322 = *(v194 + v321[3]);
            v323 = *v321 < 0x13u || !v321[9] || *(v194 + v321[9]) == 0;
            v324 = *(v194 + v321[4]);
            v325 = v197;
            v326 = 25;
            goto LABEL_356;
          case 262157:
            return v21 | v14;
          case 262158:
            v256 = AirReflection::Node::node_as_DepthStencilStateArg(v8);
            v257 = (v256 - *v256);
            if (*v257 >= 0xDu && (v258 = v257[6]) != 0)
            {
              v259 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v256 + v258 + *(v256 + v258) + 4];
            }

            else
            {
              v259 = &stru_1EF478240;
            }

            v320 = [MTLBindingInternal alloc];
            v400 = (v256 - *v256);
            v322 = *(v256 + v400[3]);
            v323 = *v400 < 0xFu || !v400[7] || *(v256 + v400[7]) == 0;
            v324 = *(v256 + v400[4]);
            v325 = v259;
            v326 = 36;
LABEL_356:
            v352 = [(MTLBindingInternal *)v320 initWithName:v325 type:v326 access:0 index:v322 active:v323 arrayLength:v324];
            goto LABEL_357;
          case 262160:
            v202 = AirReflection::Node::node_as_TensorArg(v8);
            v203 = *v202;
            v204 = -v203;
            v205 = (v202 - v203);
            if (*v205 >= 0x11u && (v206 = v205[8]) != 0)
            {
              v207 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v202 + v206 + *(v202 + v206) + 4];
              v204 = -*v202;
            }

            else
            {
              v207 = &stru_1EF478240;
            }

            v565[0] = 0;
            v328 = (v202 + *(v202 + v204 + 14));
            v329 = v328 + *v328;
            v330 = strlen(v329 + 4);
            v331 = tensorDataTypeFromString(v329 + 4, v330, v565, v565 + 1);
            v332 = newTensorExtentsWithNegativeOnes(LODWORD(v565[0]));
            v333 = [MTLTensorBindingInternal alloc];
            v334 = (v202 - *v202);
            v335 = *v334;
            if (v335 < 0xB)
            {
              v337 = 0;
            }

            else
            {
              if (v334[5])
              {
                v336 = *(v202 + v334[5]);
                if (v336 == 3)
                {
                  v337 = 1;
                }

                else
                {
                  v337 = 2 * (v336 == 2);
                }
              }

              else
              {
                v337 = 0;
              }

              if (v335 >= 0x13 && v334[9])
              {
                v542 = *(v202 + v334[9]) == 0;
                goto LABEL_552;
              }
            }

            v542 = 1;
LABEL_552:
            v115 = [(MTLTensorBindingInternal *)v333 initWithName:v207 access:v337 isActive:v542 locationIndex:*(v202 + v334[3]) arrayLength:*(v202 + v334[4]) dataType:dataTypeToTensorDataType(v331) indexType:HIDWORD(v565[0]) dimensions:v332];

            v352 = v115;
LABEL_358:
            [(MTLBindingInternal *)v352 setIsArgument:1];
            v14 = 0;
            goto LABEL_439;
          default:
            goto LABEL_12;
        }
    }
  }

  if (v10 <= 270338)
  {
    if (v10 == 270336)
    {
      v55 = AirReflection::Node::node_as_BaseInstanceArg(v8);
      v56 = *v55;
      v57 = -v56;
      v58 = (v55 - v56);
      if (*v58 >= 9u && (v59 = v58[4]) != 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55 + v59 + *(v55 + v59) + 4];
        v57 = -*v55;
      }

      else
      {
        v20 = &stru_1EF478240;
      }

      v85 = (v55 + *(v55 + v57 + 6));
      v86 = v85 + *v85;
      v87 = strlen(v86 + 4);
      v74 = dataTypeFromString(v86 + 4, v87);
      v75 = [MTLBuiltInArgument alloc];
      v88 = (v55 - *v55);
      v78 = *v88 < 0xBu || (v89 = v88[5]) == 0 || *(v55 + v89) == 0;
      v79 = 4;
    }

    else if (v10 == 270337)
    {
      v50 = AirReflection::Node::node_as_BaseVertexArg(v8);
      v51 = *v50;
      v52 = -v51;
      v53 = (v50 - v51);
      if (*v53 >= 9u && (v54 = v53[4]) != 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v50 + v54 + *(v50 + v54) + 4];
        v52 = -*v50;
      }

      else
      {
        v20 = &stru_1EF478240;
      }

      v80 = (v50 + *(v50 + v52 + 6));
      v81 = v80 + *v80;
      v82 = strlen(v81 + 4);
      v74 = dataTypeFromString(v81 + 4, v82);
      v75 = [MTLBuiltInArgument alloc];
      v83 = (v50 - *v50);
      v78 = *v83 < 0xBu || (v84 = v83[5]) == 0 || *(v50 + v84) == 0;
      v79 = 3;
    }

    else
    {
      v15 = AirReflection::Node::node_as_InstanceIDArg(v8);
      v16 = *v15;
      v17 = -v16;
      v18 = (v15 - v16);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15 + v19 + *(v15 + v19) + 4];
        v17 = -*v15;
      }

      else
      {
        v20 = &stru_1EF478240;
      }

      v71 = (v15 + *(v15 + v17 + 6));
      v72 = v71 + *v71;
      v73 = strlen(v72 + 4);
      v74 = dataTypeFromString(v72 + 4, v73);
      v75 = [MTLBuiltInArgument alloc];
      v76 = (v15 - *v15);
      v78 = *v76 < 0xBu || (v77 = v76[5]) == 0 || *(v15 + v77) == 0;
      v79 = 2;
    }

LABEL_437:
    v114 = [(MTLBuiltInArgument *)v75 initWithName:v20 type:15 access:0 active:v78 index:0 dataType:v74 builtInType:v79];
    v115 = v114;
    v14 = 1;
    goto LABEL_438;
  }

  v21 = 0;
  if ((v10 - 270340) >= 2)
  {
    if (v10 == 270339)
    {
      v90 = AirReflection::Node::node_as_VertexIDArg(v8);
      v91 = *v90;
      v92 = -v91;
      v93 = (v90 - v91);
      if (*v93 >= 9u && (v94 = v93[4]) != 0)
      {
        v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v90 + v94 + *(v90 + v94) + 4];
        v92 = -*v90;
      }

      else
      {
        v95 = &stru_1EF478240;
      }

      v106 = (v90 + *(v90 + v92 + 6));
      v107 = v106 + *v106;
      v108 = strlen(v107 + 4);
      v109 = dataTypeFromString(v107 + 4, v108);
      v110 = [MTLBuiltInArgument alloc];
      v111 = (v90 - *v90);
      v113 = *v111 < 0xBu || (v112 = v111[5]) == 0 || *(v90 + v112) == 0;
      v14 = 1;
      v114 = [(MTLBuiltInArgument *)v110 initWithName:v95 type:15 access:0 active:v113 index:0 dataType:v109 builtInType:1];
      v115 = v114;
LABEL_438:
      [(MTLBindingInternal *)v114 setIsArgument:1];
LABEL_439:
      *a5 = v115;
      goto LABEL_440;
    }

    if (v10 == 270342)
    {
      v40 = AirReflection::Node::node_as_PatchIDArg(v8);
      v41 = *v40;
      v42 = -v41;
      v43 = (v40 - v41);
      if (*v43 >= 9u && (v44 = v43[4]) != 0)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v40 + v44 + *(v40 + v44) + 4];
        v42 = -*v40;
      }

      else
      {
        v20 = &stru_1EF478240;
      }

      v101 = (v40 + *(v40 + v42 + 6));
      v102 = v101 + *v101;
      v103 = strlen(v102 + 4);
      v74 = dataTypeFromString(v102 + 4, v103);
      v75 = [MTLBuiltInArgument alloc];
      v104 = (v40 - *v40);
      v78 = *v104 < 0xBu || (v105 = v104[5]) == 0 || *(v40 + v105) == 0;
      v79 = 13;
      goto LABEL_437;
    }

    goto LABEL_12;
  }

  return v21 | v14;
}

void sub_185BB618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ContextStack::~ContextStack(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t bufferTypeMap(void)
{
  if (atomic_load_explicit(&bufferTypeMapOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&bufferTypeMapOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<bufferTypeMap(void)::$_0 &&>>);
  }

  return bufferTypeMap(void)::nonGlobalBufferTypeMap;
}

char *BasicParser::getNextToken(BasicParser *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (v2 < v1)
  {
    v3 = (*(this + 1) + v2);
    while (1)
    {
      v4 = *v3++;
      v5 = (1 << v4) & 0x5000144100000001;
      if (v4 > 0x3E || v5 == 0)
      {
        break;
      }

      LODWORD(v2) = v2 + 1;
      *this = v2;
      if (v1 == v2)
      {
        LODWORD(v2) = v1;
        goto LABEL_10;
      }
    }
  }

  if (v2 <= v1)
  {
LABEL_10:
    v7 = 0;
    v8 = *(this + 1);
    v9 = this + 16;
    while (1)
    {
      v10 = *(v8 + (v2 + v7));
      if (v10 <= 0x3E && ((1 << v10) & 0x5000144100000001) != 0)
      {
        break;
      }

      if (v7 == 63)
      {
        *(this + 79) = 0;
        return v9;
      }

      v12 = this + v7;
      v13 = v2 + v7++;
      v12[16] = v10;
      *this = v13 + 1;
      if (v2 + v7 > v1)
      {
        return v9;
      }
    }

    *(this + v7 + 16) = 0;
    if (v7)
    {
      return v9;
    }
  }

  return 0;
}

_DWORD *getStructIndirectArgumentIndexStride(_DWORD *result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!*result)
  {
    return 0;
  }

  v3 = (&result[*result - 1 + 1] + result[*result - 1 + 1]);
  v4 = (v3 - *v3);
  v5 = *v4;
  if (v5 < 0x15)
  {
    v6 = 0;
    StructIndirectArgumentIndexStride = 0;
    if (v5 < 5)
    {
      goto LABEL_25;
    }
  }

  else if (v4[10])
  {
    v6 = *(v3 + v4[10]);
  }

  else
  {
    v6 = 0;
  }

  if (v4[2])
  {
    v8 = a2 + 4 * *(v3 + v4[2]);
    v9 = AirReflection::Node::node_as_StructTypeInfo((v8 + 4 + *(v8 + 4)));
    v10 = (v9 - *v9);
    if (*v10 >= 5u && (v11 = v10[2]) != 0)
    {
      v12 = v9 + v11 + *(v9 + v11);
    }

    else
    {
      v12 = 0;
    }

    StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride(v12, a2);
  }

  else
  {
    if (v5 >= 0x13)
    {
      v13 = v4[9];
      if (v13)
      {
        v14 = a2 + 4 * *(v3 + v13);
        v15 = (v14 + 4 + *(v14 + 4));
        v16 = (v15 - *v15);
        if (*v16 < 5u)
        {
          LODWORD(v17) = 0;
        }

        else
        {
          v17 = v16[2];
          if (v17)
          {
            LODWORD(v17) = *(v15 + v17);
            switch(v17)
            {
              case 262144:
                v18 = AirReflection::Node::node_as_BufferArg(v15);
                goto LABEL_39;
              case 262145:
                v22 = AirReflection::Node::node_as_SamplerArg(v15);
                goto LABEL_50;
              case 262146:
                v22 = AirReflection::Node::node_as_TextureArg(v15);
                goto LABEL_50;
              case 262148:
                v18 = AirReflection::Node::node_as_IndirectBufferArg(v15);
LABEL_39:
                v23 = v18;
                v24 = (v18 - *v18);
                v25 = *v24;
                if (v25 < 0xB)
                {
                  StructIndirectArgumentIndexStride = 1;
                  if (v25 < 9)
                  {
                    goto LABEL_59;
                  }
                }

                else if (v24[5])
                {
                  StructIndirectArgumentIndexStride = *(v18 + v24[5]);
                }

                else
                {
                  StructIndirectArgumentIndexStride = 1;
                }

                v28 = v24[4];
                goto LABEL_57;
              case 262149:
                v22 = AirReflection::Node::node_as_IndirectConstantArg(v15);
                goto LABEL_50;
              case 262150:
                v22 = AirReflection::Node::node_as_CommandBufferArg(v15);
                goto LABEL_50;
              case 262151:
                v22 = AirReflection::Node::node_as_ComputePipelineStateArg(v15);
                goto LABEL_50;
              case 262152:
                v22 = AirReflection::Node::node_as_RenderPipelineStateArg(v15);
                goto LABEL_50;
              case 262153:
                v22 = AirReflection::Node::node_as_VisibleFunctionTableArg(v15);
                goto LABEL_50;
              case 262154:
                v22 = AirReflection::Node::node_as_IntersectionFunctionTableArg(v15);
                goto LABEL_50;
              case 262155:
                v22 = AirReflection::Node::node_as_InstanceAccelerationStructureArg(v15);
                goto LABEL_50;
              case 262156:
                v22 = AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(v15);
                goto LABEL_50;
              case 262157:
                v22 = AirReflection::Node::node_as_BufferStrideArg(v15);
                goto LABEL_50;
              case 262160:
                v22 = AirReflection::Node::node_as_TensorArg(v15);
LABEL_50:
                v23 = v22;
                v26 = (v22 - *v22);
                v27 = *v26;
                if (v27 < 9)
                {
                  StructIndirectArgumentIndexStride = 1;
                  if (v27 < 7)
                  {
                    goto LABEL_59;
                  }
                }

                else if (v26[4])
                {
                  StructIndirectArgumentIndexStride = *(v22 + v26[4]);
                }

                else
                {
                  StructIndirectArgumentIndexStride = 1;
                }

                v28 = v26[3];
LABEL_57:
                if (v28)
                {
                  v6 = *(v23 + v28);
                  goto LABEL_25;
                }

LABEL_59:
                v6 = 0;
                break;
              default:
                goto LABEL_23;
            }

            goto LABEL_25;
          }
        }

LABEL_23:
        AirReflection::EnumNameNodeType(v17);
      }
    }

    StructIndirectArgumentIndexStride = 0;
  }

LABEL_25:
  v19 = (v3 - *v3);
  if (*v19 >= 0xBu)
  {
    v20 = v19[5];
    if (v20)
    {
      v21 = *(v3 + v20);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      StructIndirectArgumentIndexStride *= v21;
    }
  }

  return (StructIndirectArgumentIndexStride + v6);
}

uint64_t AirReflection::Node::node_as_StructTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524289) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t deserializeArguments(void *a1, unsigned int *a2, uint64_t a3, ReflectionDeserializeContext *a4, void **a5, char a6, _DWORD *a7)
{
  if (a2)
  {
    v8 = *a2;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (v8)
    {
      LODWORD(v12) = 0;
      LODWORD(v13) = 0;
      v14 = a2 + 1;
      while (1)
      {
        v29 = 0;
        v15 = deserializeArgument(a1, v14, a3, a4, &v29);
        if (v29)
        {
          if ([v29[5] isEqualToString:@"trace.buffer"])
          {
            *a7 = [v29 index];
            if ((a6 & 1) == 0)
            {

              goto LABEL_12;
            }
          }
        }

        LODWORD(v12) = v12 + HIDWORD(v15);
        LODWORD(v13) = v13 + v15;
        if (v15)
        {
          break;
        }

        if (HIDWORD(v15))
        {
          p_p = &v33;
          goto LABEL_11;
        }

LABEL_12:
        ++v14;
        if (!--v8)
        {
          v12 = v12;
          v13 = v13;
          goto LABEL_17;
        }
      }

      p_p = &__p;
LABEL_11:
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](p_p, &v29);
      goto LABEL_12;
    }

    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    __p = 0;
    v31 = 0;
    v32 = 0;
  }

LABEL_17:
  *a5 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
  v17 = v33;
  v18 = v34;
  if (v33 == v34)
  {
    v21 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      *(*a5 + v20) = *&v17[v20];
      v20 += 8;
      --v19;
    }

    while (&v17[v20] != v18);
    v21 = -v19;
  }

  v22 = __p;
  v23 = v31;
  if (__p != v31)
  {
    v24 = 8 * v21;
    do
    {
      v25 = *v22++;
      *(*a5 + v24) = v25;
      v24 += 8;
    }

    while (v22 != v23);
    v22 = __p;
  }

  if (v22)
  {
    v31 = v22;
    operator delete(v22);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  return v13 | (v12 << 32);
}

void sub_185BB6980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pixelFormatTypeMap(void)
{
  if (atomic_load_explicit(&pixelFormatTypeMapOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&pixelFormatTypeMapOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<pixelFormatTypeMap(void)::$_0 &&>>);
  }

  return pixelFormatTypeMap(void)::nonGlobalPixelFormatTypeMap;
}

uint64_t structIsIndirectArgumentBuffer(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_23;
  }

  v1 = result;
  if ([result isIndirectArgumentBuffer])
  {
LABEL_3:
    result = 1;
    goto LABEL_23;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 members];
  result = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!result)
  {
    goto LABEL_23;
  }

  v3 = result;
  v4 = *v15;
LABEL_6:
  v5 = 0;
  while (1)
  {
    if (*v15 != v4)
    {
      objc_enumerationMutation(v2);
    }

    v6 = *(*(&v14 + 1) + 8 * v5);
    v7 = [v6 dataType];
    if (v7 <= 1)
    {
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      if (structIsIndirectArgumentBuffer([v6 structType]))
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v8 = v7;
    if (v7 != 2)
    {
      break;
    }

    if (arrayIsIndirectArgumentBuffer([v6 arrayType]))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (v3 == ++v5)
    {
      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      result = 0;
      if (v3)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  result = 1;
  if ((v8 - 57) >= 4)
  {
    v9 = v8 - 78;
    v10 = v9 > 0x3D;
    v11 = (1 << v9) & 0x2000000000000007;
    if (v10 || v11 == 0)
    {
LABEL_24:
      result = 0;
    }
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

double deserializeReturn@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, ReflectionDeserializeContext *a4@<X3>, MTLImageBlockDataArgument **a5@<X4>, uint64_t a6@<X8>)
{
  *a5 = 0;
  v8 = (a3 + 4 * *a2 + 4 + *(a3 + 4 * *a2 + 4));
  v9 = (v8 - *v8);
  if (*v9 < 5u || (v10 = v9[2]) == 0)
  {
    v11 = 0;
    *a6 = -1;
    *(a6 + 64) = 0;
    *(a6 + 72) = 0;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0;
    goto LABEL_13;
  }

  v11 = *(v8 + v10);
  *a6 = -1;
  result = 0.0;
  *(a6 + 8) = 0u;
  v13 = (a6 + 8);
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0;
  if (v11 > 143361)
  {
    switch(v11)
    {
      case 528385:
        return result;
      case 528386:
        v19 = 53;
        goto LABEL_70;
      case 528387:
        v19 = 45;
        goto LABEL_70;
      case 528388:
        v19 = 49;
        goto LABEL_70;
      case 528389:
        v19 = 37;
        goto LABEL_70;
      case 528390:
        v19 = 41;
        goto LABEL_70;
      case 528391:
        v19 = 29;
        goto LABEL_70;
      case 528392:
        v19 = 33;
        goto LABEL_70;
      case 528393:
        v19 = 81;
        goto LABEL_70;
      case 528394:
        v19 = 85;
        goto LABEL_70;
      case 528395:
      case 528396:
        goto LABEL_13;
      case 528397:
        v19 = 16;
        goto LABEL_70;
      case 528398:
        v19 = 3;
        goto LABEL_70;
      case 528399:
        v19 = 89;
        goto LABEL_70;
      case 528400:
        v19 = 121;
LABEL_70:
        *(a6 + 64) = v19;
        return result;
      default:
        if (v11 == 143362)
        {
          v96 = AirReflection::Node::node_as_PrimitiveCulledRet(v8);
          v21 = v96;
          v97 = (v96 - *v96);
          if (*v97 >= 9u && (v98 = v97[4]) != 0)
          {
            v99 = (v96 + v98 + *(v96 + v98));
          }

          else
          {
            v99 = 0;
          }

          flatbuffers::String::str(v99, __p);
          *(a6 + 64) = stringToDataType(__p);
          if (SBYTE7(v200[0]) < 0)
          {
            operator delete(__p[0]);
          }

          v153 = *v21;
          v107 = -v153;
          v142 = v21 - v153;
          v109 = *(v21 - v153);
          if (v109 < 0xB)
          {
            goto LABEL_242;
          }

          if (!*(v142 + 5))
          {
            goto LABEL_243;
          }
        }

        else
        {
          if (v11 != 143363)
          {
            goto LABEL_13;
          }

          v33 = AirReflection::Node::node_as_PrimitiveIDRet(v8);
          v21 = v33;
          v34 = (v33 - *v33);
          if (*v34 >= 9u && (v35 = v34[4]) != 0)
          {
            v36 = (v33 + v35 + *(v33 + v35));
          }

          else
          {
            v36 = 0;
          }

          flatbuffers::String::str(v36, __p);
          *(a6 + 64) = stringToDataType(__p);
          if (SBYTE7(v200[0]) < 0)
          {
            operator delete(__p[0]);
          }

          v152 = *v21;
          v107 = -v152;
          v142 = v21 - v152;
          v109 = *(v21 - v152);
          if (v109 < 0xB)
          {
            goto LABEL_242;
          }

          if (!*(v142 + 5))
          {
            goto LABEL_243;
          }
        }

        break;
    }

    goto LABEL_238;
  }

  if (v11 <= 135169)
  {
    if (v11 <= 131075)
    {
      if (v11 <= 131073)
      {
        if (v11 != 0x20000)
        {
          if (v11 == 131073)
          {
            v14 = AirReflection::Node::node_as_PointSizeRet(v8);
            v15 = v14;
            v16 = (v14 - *v14);
            if (*v16 >= 9u && (v17 = v16[4]) != 0)
            {
              v18 = (v14 + v17 + *(v14 + v17));
            }

            else
            {
              v18 = 0;
            }

            flatbuffers::String::str(v18, __p);
            *(a6 + 64) = stringToDataType(__p);
            if (SBYTE7(v200[0]) < 0)
            {
              operator delete(__p[0]);
            }

            v134 = *v15;
            v135 = -v134;
            v136 = v15 - v134;
            v137 = *(v15 - v134);
            if (v137 >= 0xB)
            {
              if (!*(v136 + 5))
              {
                goto LABEL_178;
              }

              flatbuffers::String::str((v15 + *(v136 + 5) + *(v15 + *(v136 + 5))), __p);
              if (*(a6 + 55) < 0)
              {
                operator delete(*(a6 + 32));
              }

              result = *__p;
              *(a6 + 32) = *__p;
              *(a6 + 48) = *&v200[0];
              v138 = *v15;
              v135 = -v138;
              v137 = *(v15 - v138);
            }

            if (v137 < 5)
            {
              LOBYTE(v139) = 0;
LABEL_277:
              *(a6 + 72) = v139;
              v156 = 3;
              goto LABEL_296;
            }

LABEL_178:
            v139 = *(v15 + v135 + 4);
            if (v139)
            {
              LOBYTE(v139) = *(v15 + v139) != 0;
            }

            goto LABEL_277;
          }

          goto LABEL_13;
        }

        v54 = AirReflection::Node::node_as_ClipDistanceRet(v8);
        v55 = v54;
        v56 = (v54 - *v54);
        if (*v56 >= 0xBu && (v57 = v56[5]) != 0)
        {
          v58 = (v54 + v57 + *(v54 + v57));
        }

        else
        {
          v58 = 0;
        }

        flatbuffers::String::str(v58, __p);
        *(a6 + 64) = stringToDataType(__p);
        if (SBYTE7(v200[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v100 = *v55;
        v101 = -v100;
        v102 = v55 - v100;
        v103 = *(v55 - v100);
        if (v103 >= 0xD)
        {
          if (!*(v102 + 6))
          {
            goto LABEL_107;
          }

          flatbuffers::String::str((v55 + *(v102 + 6) + *(v55 + *(v102 + 6))), __p);
          if (*(a6 + 55) < 0)
          {
            operator delete(*(a6 + 32));
          }

          result = *__p;
          *(a6 + 32) = *__p;
          *(a6 + 48) = *&v200[0];
          v104 = *v55;
          v101 = -v104;
          v103 = *(v55 - v104);
        }

        if (v103 < 5)
        {
          LOBYTE(v105) = 0;
LABEL_249:
          *(a6 + 72) = v105;
          v156 = 6;
          goto LABEL_296;
        }

LABEL_107:
        v105 = *(v55 + v101 + 4);
        if (v105)
        {
          LOBYTE(v105) = *(v55 + v105) != 0;
        }

        goto LABEL_249;
      }

      if (v11 != 131074)
      {
        v37 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(v8);
        v21 = v37;
        v38 = (v37 - *v37);
        if (*v38 >= 9u && (v39 = v38[4]) != 0)
        {
          v40 = (v37 + v39 + *(v37 + v39));
        }

        else
        {
          v40 = 0;
        }

        flatbuffers::String::str(v40, __p);
        *(a6 + 64) = stringToDataType(__p);
        if (SBYTE7(v200[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v144 = *v21;
        v107 = -v144;
        v142 = v21 - v144;
        v109 = *(v21 - v144);
        if (v109 >= 0xB)
        {
          if (!*(v142 + 5))
          {
            goto LABEL_243;
          }

          goto LABEL_238;
        }

LABEL_242:
        if (v109 < 5)
        {
          LOBYTE(v155) = 0;
LABEL_246:
          *(a6 + 72) = v155;
          return result;
        }

LABEL_243:
        v155 = *(v21 + v107 + 4);
        if (v155)
        {
          LOBYTE(v155) = *(v21 + v155) != 0;
        }

        goto LABEL_246;
      }

      v72 = AirReflection::Node::node_as_PositionRet(v8);
      v73 = v72;
      v74 = (v72 - *v72);
      if (*v74 >= 0xBu && (v75 = v74[5]) != 0)
      {
        v76 = (v72 + v75 + *(v72 + v75));
      }

      else
      {
        v76 = 0;
      }

      flatbuffers::String::str(v76, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v116 = *v73;
      v117 = -v116;
      v118 = v73 - v116;
      v119 = *(v73 - v116);
      if (v119 >= 0xD)
      {
        if (!*(v118 + 6))
        {
          goto LABEL_141;
        }

        flatbuffers::String::str((v73 + *(v118 + 6) + *(v73 + *(v118 + 6))), __p);
        if (*(a6 + 55) < 0)
        {
          operator delete(*(a6 + 32));
        }

        result = *__p;
        *(a6 + 32) = *__p;
        *(a6 + 48) = *&v200[0];
        v116 = *v73;
        v117 = -v116;
        v119 = *(v73 - v116);
      }

      if (v119 < 5)
      {
        LOBYTE(v120) = 0;
        goto LABEL_255;
      }

LABEL_141:
      v120 = *(v73 + v117 + 4);
      if (v120)
      {
        LOBYTE(v120) = *(v73 + v120) != 0;
      }

LABEL_255:
      *(a6 + 72) = v120;
      v160 = (v73 - v116);
      v161 = *v160;
      if (v161 >= 7)
      {
        if (v160[3] && *(v73 + v160[3]))
        {
          v156 = 2;
          goto LABEL_296;
        }

        if (v161 >= 9)
        {
          v176 = v160[4];
          if (v176)
          {
            if (*(v73 + v176))
            {
              v156 = 5;
              goto LABEL_296;
            }
          }
        }
      }

      v156 = 1;
      goto LABEL_296;
    }

    if (v11 < 135168)
    {
      if (v11 != 131076)
      {
        if (v11 == 131077)
        {
          v25 = AirReflection::Node::node_as_ViewportArrayIndexRet(v8);
          v21 = v25;
          v26 = (v25 - *v25);
          if (*v26 >= 9u && (v27 = v26[4]) != 0)
          {
            v28 = (v25 + v27 + *(v25 + v27));
          }

          else
          {
            v28 = 0;
          }

          flatbuffers::String::str(v28, __p);
          *(a6 + 64) = stringToDataType(__p);
          if (SBYTE7(v200[0]) < 0)
          {
            operator delete(__p[0]);
          }

          v141 = *v21;
          v107 = -v141;
          v142 = v21 - v141;
          v109 = *(v21 - v141);
          if (v109 < 0xB)
          {
            goto LABEL_242;
          }

          if (!*(v142 + 5))
          {
            goto LABEL_243;
          }

LABEL_238:
          flatbuffers::String::str((v21 + *(v142 + 5) + *(v21 + *(v142 + 5))), __p);
          goto LABEL_239;
        }

LABEL_13:

        AirReflection::EnumNameNodeType(v11);
        return result;
      }

      v63 = AirReflection::Node::node_as_VertexOutputRet(v8);
      v64 = v63;
      v65 = (v63 - *v63);
      if (*v65 >= 0xDu && (v66 = v65[6]) != 0)
      {
        v67 = (v63 + v66 + *(v63 + v66));
      }

      else
      {
        v67 = 0;
      }

      flatbuffers::String::str(v67, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v110 = *v64;
      v111 = -v110;
      v112 = v64 - v110;
      v113 = *(v64 - v110);
      if (v113 >= 0xF)
      {
        if (!*(v112 + 7))
        {
          goto LABEL_124;
        }

        flatbuffers::String::str((v64 + *(v112 + 7) + *(v64 + *(v112 + 7))), __p);
        if (*(a6 + 55) < 0)
        {
          operator delete(*(a6 + 32));
        }

        result = *__p;
        *(a6 + 32) = *__p;
        *(a6 + 48) = *&v200[0];
        v110 = *v64;
        v111 = -v110;
        v113 = *(v64 - v110);
      }

      if (v113 < 5)
      {
        LOBYTE(v114) = 0;
        goto LABEL_251;
      }

LABEL_124:
      v114 = *(v64 + v111 + 4);
      if (v114)
      {
        LOBYTE(v114) = *(v64 + v114) != 0;
      }

LABEL_251:
      *(a6 + 72) = v114;
      v157 = -v110;
      v158 = (v64 - v110);
      v159 = *v158;
      if (v159 >= 9)
      {
        if (v158[4])
        {
          *a6 = *(v64 + v158[4]);
          v157 = -*v64;
        }

        else if (v159 >= 0xB)
        {
          v191 = v158[5];
          if (v191)
          {
            if (*(v64 + v191))
            {
              *(a6 + 56) = 5;
            }
          }
        }
      }

      if (*(v64 + v157) >= 7u && *(v64 + v157 + 6))
      {
        flatbuffers::String::str((v64 + *(v64 + v157 + 6) + *(v64 + *(v64 + v157 + 6))), __p);
        v192 = std::string::find[abi:ne200100](__p, "generated", 0);
        if (SBYTE7(v200[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v192 == -1)
        {
          v193 = (v64 - *v64);
          if (*v193 >= 7u && (v194 = v193[3]) != 0)
          {
            v169 = (v64 + v194 + *(v64 + v194));
          }

          else
          {
            v169 = 0;
          }

LABEL_335:
          flatbuffers::String::str(v169, __p);
          if (*(a6 + 31) < 0)
          {
            operator delete(*v13);
          }

          result = *__p;
          *v13 = *__p;
          *(a6 + 24) = *&v200[0];
          return result;
        }
      }

      return result;
    }

    if (v11 != 135168)
    {
      v45 = AirReflection::Node::node_as_DepthRet(v8);
      v21 = v45;
      v46 = (v45 - *v45);
      if (*v46 >= 9u && (v47 = v46[4]) != 0)
      {
        v48 = (v45 + v47 + *(v45 + v47));
      }

      else
      {
        v48 = 0;
      }

      flatbuffers::String::str(v48, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v146 = *v21;
      v107 = -v146;
      v142 = v21 - v146;
      v109 = *(v21 - v146);
      if (v109 >= 0xB)
      {
        if (!*(v142 + 5))
        {
          goto LABEL_243;
        }

        goto LABEL_238;
      }

      goto LABEL_242;
    }

    v86 = AirReflection::Node::node_as_RenderTargetRet(v8);
    v87 = v86;
    v88 = (v86 - *v86);
    if (*v88 >= 0xFu && (v89 = v88[7]) != 0)
    {
      v90 = (v86 + v89 + *(v86 + v89));
    }

    else
    {
      v90 = 0;
    }

    flatbuffers::String::str(v90, __p);
    *(a6 + 64) = stringToDataType(__p);
    if (SBYTE7(v200[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v124 = *v87;
    v125 = -v124;
    v126 = v87 - v124;
    v127 = *(v87 - v124);
    if (v127 >= 0x11)
    {
      if (!*(v126 + 8))
      {
        goto LABEL_156;
      }

      flatbuffers::String::str((v87 + *(v126 + 8) + *(v87 + *(v126 + 8))), __p);
      if (*(a6 + 55) < 0)
      {
        operator delete(*(a6 + 32));
      }

      result = *__p;
      *(a6 + 32) = *__p;
      *(a6 + 48) = *&v200[0];
      v124 = *v87;
      v125 = -v124;
      v127 = *(v87 - v124);
    }

    if (v127 < 5)
    {
      LOBYTE(v128) = 0;
LABEL_260:
      *(a6 + 72) = v128;
      v162 = (v87 - v124);
      if (*v162 < 7u || !v162[3])
      {
        return result;
      }

      v156 = 4;
LABEL_296:
      *(a6 + 56) = v156;
      return result;
    }

LABEL_156:
    v128 = *(v87 + v125 + 4);
    if (v128)
    {
      LOBYTE(v128) = *(v87 + v128) != 0;
    }

    goto LABEL_260;
  }

  if (v11 <= 139264)
  {
    if (v11 <= 135171)
    {
      if (v11 == 135170)
      {
        v59 = AirReflection::Node::node_as_StencilRet(v8);
        v21 = v59;
        v60 = (v59 - *v59);
        if (*v60 >= 7u && (v61 = v60[3]) != 0)
        {
          v62 = (v59 + v61 + *(v59 + v61));
        }

        else
        {
          v62 = 0;
        }

        flatbuffers::String::str(v62, __p);
        *(a6 + 64) = stringToDataType(__p);
        if (SBYTE7(v200[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v106 = *v21;
        v107 = -v106;
        v108 = v21 - v106;
        v109 = *(v21 - v106);
        if (v109 < 9)
        {
          goto LABEL_242;
        }

        if (!*(v108 + 4))
        {
          goto LABEL_243;
        }
      }

      else
      {
        v20 = AirReflection::Node::node_as_SampleMaskRet(v8);
        v21 = v20;
        v22 = (v20 - *v20);
        if (*v22 >= 7u && (v23 = v22[3]) != 0)
        {
          v24 = (v20 + v23 + *(v20 + v23));
        }

        else
        {
          v24 = 0;
        }

        flatbuffers::String::str(v24, __p);
        *(a6 + 64) = stringToDataType(__p);
        if (SBYTE7(v200[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v140 = *v21;
        v107 = -v140;
        v108 = v21 - v140;
        v109 = *(v21 - v140);
        if (v109 < 9)
        {
          goto LABEL_242;
        }

        if (!*(v108 + 4))
        {
          goto LABEL_243;
        }
      }

      goto LABEL_209;
    }

    if (v11 != 135172)
    {
      if (v11 != 139264)
      {
        goto LABEL_13;
      }

      v41 = AirReflection::Node::node_as_AcceptIntersectionRet(v8);
      v21 = v41;
      v42 = (v41 - *v41);
      if (*v42 >= 7u && (v43 = v42[3]) != 0)
      {
        v44 = (v41 + v43 + *(v41 + v43));
      }

      else
      {
        v44 = 0;
      }

      flatbuffers::String::str(v44, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v145 = *v21;
      v107 = -v145;
      v108 = v21 - v145;
      v109 = *(v21 - v145);
      if (v109 < 9)
      {
        goto LABEL_242;
      }

      if (!*(v108 + 4))
      {
        goto LABEL_243;
      }

      goto LABEL_209;
    }

    v80 = AirReflection::Node::node_as_ImageblockDataRet(v8);
    v81 = *v80;
    v82 = -v81;
    v83 = (v80 - v81);
    if (*v83 >= 0x15u && (v84 = v83[10]) != 0)
    {
      v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v80 + v84 + *(v80 + v84) + 4];
      v82 = -*v80;
    }

    else
    {
      v85 = &stru_1EF478240;
    }

    v121 = (v80 + v82);
    v122 = *v121;
    if (v122 < 7)
    {
      v123 = 0;
    }

    else
    {
      if (v121[3])
      {
        v123 = *(v80 + v121[3]);
      }

      else
      {
        v123 = 0;
      }

      if (v122 >= 0xB && v121[5])
      {
        v177 = *(a4 + 5) + *(a4 + 4) - 1;
        ContextStack::ContextStack(__p, *(*(*(a4 + 1) + 8 * (v177 / 0x49)) + 56 * (v177 % 0x49)), 1);
        std::deque<ContextStack>::push_back(a4, __p);
        ContextStack::~ContextStack(__p);
        v178 = (v80 - *v80);
        if (*v178 >= 0xBu && (v179 = v178[5]) != 0)
        {
          v180 = (v80 + v179);
        }

        else
        {
          v180 = 0;
        }

        v181 = deserializeStructArgument(a1, v180, a3, a4, 0);
        std::deque<ContextStack>::pop_back(a4);
LABEL_304:
        v182 = *(a4 + 5) + *(a4 + 4) - 1;
        v183 = *(*(*(a4 + 1) + 8 * (v182 / 0x49)) + 56 * (v182 % 0x49));
        memset(v200, 0, sizeof(v200));
        v201 = 1065353216;
        __p[0] = v183;
        LOBYTE(__p[1]) = 1;
        memset(v202, 0, sizeof(v202));
        v203 = 1065353216;
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v200, v202);
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v202);
        std::deque<ContextStack>::push_back(a4, __p);
        ContextStack::~ContextStack(__p);
        v184 = (v80 - *v80);
        if (*v184 >= 9u && (v185 = v184[4]) != 0)
        {
          v186 = (v80 + v185);
        }

        else
        {
          v186 = 0;
        }

        v187 = deserializeStructArgument(a1, v186, a3, a4, 0);
        std::deque<ContextStack>::pop_back(a4);
        v188 = (v80 - *v80);
        v189 = *v188;
        if (v189 < 0xD)
        {
          v190 = 0;
        }

        else
        {
          if (v188[6])
          {
            v190 = *(v80 + v188[6]) != 0;
          }

          else
          {
            v190 = 0;
          }

          if (v189 >= 0xF)
          {
            v195 = v188[7];
            if (v195)
            {
              v196 = *(v80 + v195);
LABEL_329:
              HIDWORD(v198) = v196;
              LOBYTE(v198) = v190;
              v197 = [[MTLImageBlockDataArgument alloc] initWithName:v85 type:16 access:0 isActive:1 index:0 dataSize:v123 masterStructMembers:v181 aliasImplicitImageBlock:v198 aliasImplicitImageBlockRenderTarget:?];
              [(MTLImageBlockDataArgument *)v197 setStructType:v187];

              [(MTLBindingInternal *)v197 setIsArgument:1];
              *a5 = v197;
              return result;
            }
          }
        }

        v196 = -1;
        goto LABEL_329;
      }
    }

    v181 = 0;
    goto LABEL_304;
  }

  if (v11 < 143360)
  {
    if (v11 == 139265)
    {
      v68 = AirReflection::Node::node_as_ContinueSearchRet(v8);
      v21 = v68;
      v69 = (v68 - *v68);
      if (*v69 >= 7u && (v70 = v69[3]) != 0)
      {
        v71 = (v68 + v70 + *(v68 + v70));
      }

      else
      {
        v71 = 0;
      }

      flatbuffers::String::str(v71, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v115 = *v21;
      v107 = -v115;
      v108 = v21 - v115;
      v109 = *(v21 - v115);
      if (v109 < 9)
      {
        goto LABEL_242;
      }

      if (!*(v108 + 4))
      {
        goto LABEL_243;
      }
    }

    else
    {
      if (v11 != 139266)
      {
        goto LABEL_13;
      }

      v29 = AirReflection::Node::node_as_DistanceRet(v8);
      v21 = v29;
      v30 = (v29 - *v29);
      if (*v30 >= 7u && (v31 = v30[3]) != 0)
      {
        v32 = (v29 + v31 + *(v29 + v31));
      }

      else
      {
        v32 = 0;
      }

      flatbuffers::String::str(v32, __p);
      *(a6 + 64) = stringToDataType(__p);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v143 = *v21;
      v107 = -v143;
      v108 = v21 - v143;
      v109 = *(v21 - v143);
      if (v109 < 9)
      {
        goto LABEL_242;
      }

      if (!*(v108 + 4))
      {
        goto LABEL_243;
      }
    }

LABEL_209:
    flatbuffers::String::str((v21 + *(v108 + 4) + *(v21 + *(v108 + 4))), __p);
LABEL_239:
    if (*(a6 + 55) < 0)
    {
      operator delete(*(a6 + 32));
    }

    result = *__p;
    *(a6 + 32) = *__p;
    *(a6 + 48) = *&v200[0];
    v154 = *v21;
    v107 = -v154;
    v109 = *(v21 - v154);
    goto LABEL_242;
  }

  if (v11 == 143360)
  {
    v91 = AirReflection::Node::node_as_MeshPrimitiveDataRet(v8);
    v92 = v91;
    v93 = (v91 - *v91);
    if (*v93 >= 0xDu && (v94 = v93[6]) != 0)
    {
      v95 = (v91 + v94 + *(v91 + v94));
    }

    else
    {
      v95 = 0;
    }

    flatbuffers::String::str(v95, __p);
    *(a6 + 64) = stringToDataType(__p);
    if (SBYTE7(v200[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v129 = *v92;
    v130 = -v129;
    v131 = v92 - v129;
    v132 = *(v92 - v129);
    if (v132 >= 0xF)
    {
      if (!*(v131 + 7))
      {
        goto LABEL_167;
      }

      flatbuffers::String::str((v92 + *(v131 + 7) + *(v92 + *(v131 + 7))), __p);
      if (*(a6 + 55) < 0)
      {
        operator delete(*(a6 + 32));
      }

      result = *__p;
      *(a6 + 32) = *__p;
      *(a6 + 48) = *&v200[0];
      v129 = *v92;
      v130 = -v129;
      v132 = *(v92 - v129);
    }

    if (v132 < 5)
    {
      LOBYTE(v133) = 0;
      goto LABEL_264;
    }

LABEL_167:
    v133 = *(v92 + v130 + 4);
    if (v133)
    {
      LOBYTE(v133) = *(v92 + v133) != 0;
    }

LABEL_264:
    *(a6 + 72) = v133;
    v163 = (v92 - v129);
    v164 = *v163;
    if (v164 < 0xB)
    {
      if (v164 < 9)
      {
        return result;
      }
    }

    else if (v163[5] && *(v92 + v163[5]))
    {
      *(a6 + 56) = 5;
    }

    v165 = v163[4];
    if (v165)
    {
      flatbuffers::String::str((v92 + v165 + *(v92 + v165)), __p);
      v166 = std::string::find[abi:ne200100](__p, "generated", 0);
      if (SBYTE7(v200[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v166 == -1)
      {
        v167 = (v92 - *v92);
        if (*v167 >= 9u && (v168 = v167[4]) != 0)
        {
          v169 = (v92 + v168 + *(v92 + v168));
        }

        else
        {
          v169 = 0;
        }

        goto LABEL_335;
      }
    }

    return result;
  }

  v49 = AirReflection::Node::node_as_MeshVertexDataRet(v8);
  v50 = v49;
  v51 = (v49 - *v49);
  if (*v51 >= 0xDu && (v52 = v51[6]) != 0)
  {
    v53 = (v49 + v52 + *(v49 + v52));
  }

  else
  {
    v53 = 0;
  }

  flatbuffers::String::str(v53, __p);
  *(a6 + 64) = stringToDataType(__p);
  if (SBYTE7(v200[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v147 = *v50;
  v148 = -v147;
  v149 = v50 - v147;
  v150 = *(v50 - v147);
  if (v150 >= 0xF)
  {
    if (!*(v149 + 7))
    {
      goto LABEL_225;
    }

    flatbuffers::String::str((v50 + *(v149 + 7) + *(v50 + *(v149 + 7))), __p);
    if (*(a6 + 55) < 0)
    {
      operator delete(*(a6 + 32));
    }

    result = *__p;
    *(a6 + 32) = *__p;
    *(a6 + 48) = *&v200[0];
    v147 = *v50;
    v148 = -v147;
    v150 = *(v50 - v147);
  }

  if (v150 < 5)
  {
    LOBYTE(v151) = 0;
    goto LABEL_279;
  }

LABEL_225:
  v151 = *(v50 + v148 + 4);
  if (v151)
  {
    LOBYTE(v151) = *(v50 + v151) != 0;
  }

LABEL_279:
  *(a6 + 72) = v151;
  v170 = (v50 - v147);
  v171 = *v170;
  if (v171 < 0xB)
  {
    if (v171 < 9)
    {
      return result;
    }
  }

  else if (v170[5] && *(v50 + v170[5]))
  {
    *(a6 + 56) = 5;
  }

  v172 = v170[4];
  if (v172)
  {
    flatbuffers::String::str((v50 + v172 + *(v50 + v172)), __p);
    v173 = std::string::find[abi:ne200100](__p, "generated", 0);
    if (SBYTE7(v200[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v173 == -1)
    {
      v174 = (v50 - *v50);
      if (*v174 >= 9u && (v175 = v174[4]) != 0)
      {
        v169 = (v50 + v175 + *(v50 + v175));
      }

      else
      {
        v169 = 0;
      }

      goto LABEL_335;
    }
  }

  return result;
}

uint64_t stringToDataType(char *__s2)
{
  v1 = __s2;
  if ((__s2[23] & 0x80000000) == 0)
  {
    if (*__s2 != 1634692198 || *(__s2 + 2) != 116)
    {
      if (*__s2 != 1634692198 || *(__s2 + 3) != 3306593)
      {
        if (*__s2 != 1634692198 || *(__s2 + 3) != 3372129)
        {
          if (*__s2 != 1634692198 || *(__s2 + 3) != 3437665)
          {
            if (*__s2 != 1634231157 || *(__s2 + 2) != 114)
            {
              if (*__s2 != 1634231157 || *(__s2 + 3) != 3306081)
              {
                if (*__s2 != 1634231157 || *(__s2 + 3) != 3371617)
                {
                  if (*__s2 != 1634231157 || *(__s2 + 3) != 3437153)
                  {
                    if (*__s2 ^ 0x72616863 | __s2[4])
                    {
                      if (*__s2 != 1918986339 || *(__s2 + 2) != 50)
                      {
                        if (*__s2 != 1918986339 || *(__s2 + 2) != 51)
                        {
                          if (*__s2 != 1918986339 || *(__s2 + 2) != 52)
                          {
                            if (*__s2 != 7630441)
                            {
                              if (*__s2 ^ 0x32746E69 | __s2[4])
                              {
                                if (*__s2 ^ 0x33746E69 | __s2[4])
                                {
                                  if (*__s2 ^ 0x34746E69 | __s2[4])
                                  {
                                    if (*__s2 ^ 0x746E6975 | __s2[4])
                                    {
                                      if (*__s2 != 1953393013 || *(__s2 + 2) != 50)
                                      {
                                        if (*__s2 != 1953393013 || *(__s2 + 2) != 51)
                                        {
                                          if (*__s2 != 1953393013 || *(__s2 + 2) != 52)
                                          {
                                            if (*__s2 ^ 0x6C6F6F62 | __s2[4])
                                            {
                                              if (*__s2 != 1819242338 || *(__s2 + 2) != 50)
                                              {
                                                if (*__s2 != 1819242338 || *(__s2 + 2) != 51)
                                                {
                                                  if (*__s2 != 1819242338 || *(__s2 + 2) != 52)
                                                  {
                                                    if (*__s2 ^ 0x666C6168 | __s2[4])
                                                    {
                                                      if (*__s2 != 1718378856 || *(__s2 + 2) != 50)
                                                      {
                                                        if (*__s2 != 1718378856 || *(__s2 + 2) != 51)
                                                        {
                                                          if (*__s2 != 1718378856 || *(__s2 + 2) != 52)
                                                          {
                                                            if (*__s2 ^ 0x676E6F6C | __s2[4])
                                                            {
                                                              if (*__s2 != 1735290732 || *(__s2 + 2) != 50)
                                                              {
                                                                if (*__s2 != 1735290732 || *(__s2 + 2) != 51)
                                                                {
                                                                  if (*__s2 != 1735290732 || *(__s2 + 2) != 52)
                                                                  {
                                                                    if (*__s2 != 1852796021 || *(__s2 + 2) != 103)
                                                                    {
                                                                      if (*__s2 != 1852796021 || *(__s2 + 3) != 3303278)
                                                                      {
                                                                        if (*__s2 != 1852796021 || *(__s2 + 3) != 3368814)
                                                                        {
                                                                          if (*__s2 != 1852796021 || *(__s2 + 3) != 3434350)
                                                                          {
                                                                            if (*__s2 != 1869375074 || *(__s2 + 3) != 7627119)
                                                                            {
                                                                              if (*__s2 != 0x3274616F6C6662)
                                                                              {
                                                                                if (*__s2 == 0x3374616F6C6662)
                                                                                {
                                                                                  return 123;
                                                                                }

                                                                                goto LABEL_165;
                                                                              }

                                                                              return 122;
                                                                            }

                                                                            return 121;
                                                                          }

                                                                          return 88;
                                                                        }

                                                                        return 87;
                                                                      }

                                                                      return 86;
                                                                    }

                                                                    return 85;
                                                                  }

                                                                  return 84;
                                                                }

                                                                return 83;
                                                              }

                                                              return 82;
                                                            }

                                                            return 81;
                                                          }

                                                          return 19;
                                                        }

                                                        return 18;
                                                      }

                                                      return 17;
                                                    }

                                                    return 16;
                                                  }

                                                  return 56;
                                                }

                                                return 55;
                                              }

                                              return 54;
                                            }

                                            return 53;
                                          }

                                          return 36;
                                        }

                                        return 35;
                                      }

                                      return 34;
                                    }

                                    return 33;
                                  }

                                  return 32;
                                }

                                return 31;
                              }

                              return 30;
                            }

                            return 29;
                          }

                          return 48;
                        }

                        return 47;
                      }

                      return 46;
                    }

                    return 45;
                  }

                  return 52;
                }

                return 51;
              }

              return 50;
            }

            return 49;
          }

          return 6;
        }

        return 5;
      }

      return 4;
    }

    return 3;
  }

  v1 = *__s2;
  if (!strcmp("float", *__s2))
  {
    return 3;
  }

  if (!strcmp("float2", v1))
  {
    return 4;
  }

  if (!strcmp("float3", v1))
  {
    return 5;
  }

  if (!strcmp("float4", v1))
  {
    return 6;
  }

  if (!strcmp("uchar", v1))
  {
    return 49;
  }

  if (!strcmp("uchar2", v1))
  {
    return 50;
  }

  if (!strcmp("uchar3", v1))
  {
    return 51;
  }

  if (!strcmp("uchar4", v1))
  {
    return 52;
  }

  if (!strcmp("char", v1))
  {
    return 45;
  }

  if (!strcmp("char2", v1))
  {
    return 46;
  }

  if (!strcmp("char3", v1))
  {
    return 47;
  }

  if (!strcmp("char4", v1))
  {
    return 48;
  }

  if (!strcmp("int", v1))
  {
    return 29;
  }

  if (!strcmp("int2", v1))
  {
    return 30;
  }

  if (!strcmp("int3", v1))
  {
    return 31;
  }

  if (!strcmp("int4", v1))
  {
    return 32;
  }

  if (!strcmp("uint", v1))
  {
    return 33;
  }

  if (!strcmp("uint2", v1))
  {
    return 34;
  }

  if (!strcmp("uint3", v1))
  {
    return 35;
  }

  if (!strcmp("uint4", v1))
  {
    return 36;
  }

  if (!strcmp("BOOL", v1))
  {
    return 53;
  }

  if (!strcmp("BOOL2", v1))
  {
    return 54;
  }

  if (!strcmp("BOOL3", v1))
  {
    return 55;
  }

  if (!strcmp("BOOL4", v1))
  {
    return 56;
  }

  if (!strcmp("half", v1))
  {
    return 16;
  }

  if (!strcmp("half2", v1))
  {
    return 17;
  }

  if (!strcmp("half3", v1))
  {
    return 18;
  }

  if (!strcmp("half4", v1))
  {
    return 19;
  }

  if (!strcmp("long", v1))
  {
    return 81;
  }

  if (!strcmp("long2", v1))
  {
    return 82;
  }

  if (!strcmp("long3", v1))
  {
    return 83;
  }

  if (!strcmp("long4", v1))
  {
    return 84;
  }

  if (!strcmp("ulong", v1))
  {
    return 85;
  }

  if (!strcmp("ulong2", v1))
  {
    return 86;
  }

  if (!strcmp("ulong3", v1))
  {
    return 87;
  }

  if (!strcmp("ulong4", v1))
  {
    return 88;
  }

  if (!strcmp("bfloat", v1))
  {
    return 121;
  }

  if (!strcmp("bfloat2", v1))
  {
    return 122;
  }

  if (!strcmp("bfloat3", v1))
  {
    return 123;
  }

LABEL_165:
  if (!strcmp("bfloat4", v1))
  {
    return 124;
  }

  else
  {
    return 0;
  }
}

void MTLLibraryDataWithArchive::~MTLLibraryDataWithArchive(id *this)
{
  *this = &unk_1EF4765A8;

  this[31] = 0;
  for (i = this[47]; i; i = i->isa)
  {
    dispatch_release(i[5].isa);
  }

  v3 = this[79];
  if (v3)
  {
    dispatch_release(v3);
  }

  this[32] = 0;
  this[33] = 0;

  this[34] = 0;
  this[80] = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table((this + 60));
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table((this + 55));
  v4 = this[54];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy((this + 50), this[51]);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((this + 45));
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table((this + 40));
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((this + 35));

  MTLCachedLibraryData::~MTLCachedLibraryData(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void LibraryWithData::~LibraryWithData(dispatch_object_t *this)
{
  *this = &unk_1EF477088;
  dispatch_release(this[85]);
  dispatch_release(this[84]);

  MTLLibraryDataWithArchive::~MTLLibraryDataWithArchive(this);
}

{
  LibraryWithData::~LibraryWithData(this);

  JUMPOUT(0x1865FF210);
}

void std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a1, *a2);
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void MTLCachedLibraryData::~MTLCachedLibraryData(MTLCachedLibraryData *this)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF476748;
  v2 = *(this + 18);
  v3 = *(this + 24);
  v5[0] = *(this + 8);
  v5[1] = v3;
  MTLLibraryCache::removeLibraryData(v2, v5);

  *(this + 17) = 0;
  *(this + 12) = 0;

  *(this + 13) = 0;
  *(this + 14) = 0;

  *(this + 15) = 0;
  *(this + 16) = 0;
  v4 = *MEMORY[0x1E69E9840];

  MTLLibraryData::~MTLLibraryData(this);
}

void sub_185BB932C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void MTLLibraryCache::removeLibraryData(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v4 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 8, v7);
  if ((a1 + 16) != v4)
  {
    v5 = v4;
    std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer((a1 + 8), v4);
    operator delete(v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void MTLLibraryData::~MTLLibraryData(MTLLibraryData *this)
{
  *this = &unk_1EF474A58;

  *(this + 11) = 0;
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 40);
}