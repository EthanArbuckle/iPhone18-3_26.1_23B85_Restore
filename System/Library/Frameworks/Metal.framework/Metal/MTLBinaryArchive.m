@interface MTLBinaryArchive
@end

@implementation MTLBinaryArchive

void __54___MTLBinaryArchive_initWithOptions_device_url_error___block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  [_MTLBinaryArchive initWithOptions:device:url:error:]::shouldPrintBinaryArchiveLoadFromURL = _os_feature_enabled_impl();
  if (_MTLIsInternalBuild())
  {
    v0 = MTLGetEnvDefault("MTL_DEBUG_PRINT_BINARY_ARCHIVE_URL_LOAD_ERRORS", 0) != 0;
  }

  else
  {
    v0 = 0;
  }

  v1 = v0 | [_MTLBinaryArchive initWithOptions:device:url:error:]::shouldPrintBinaryArchiveLoadFromURL;
  [_MTLBinaryArchive initWithOptions:device:url:error:]::shouldPrintBinaryArchiveLoadFromURL = v1;
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "MTL_DEBUG_PRINT_BINARY_ARCHIVE_URL_LOAD_ERRORS";
    _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s was set, printing errors/faults from loading from URL.", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_151(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  if (a2 == *(a1 + 72))
  {
    v8 = *(a1 + 64);
    *v8 = 257;
LABEL_9:
    *(v8 + 8) = a3;
    *(v8 + 16) = a4;
    goto LABEL_20;
  }

  if (v19 == *(a1 + 80))
  {
    v9 = *(a1 + 64);
    *(v9 + 24) = 1;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
  }

  else if (v19 == *(a1 + 88))
  {
    if (*(a1 + 96) >= HIDWORD(a2))
    {
      v10 = *(a1 + 64);
      if (*(v10 + 64) != 1 || *(*(*(a1 + 40) + 8) + 24) < SHIDWORD(a2))
      {
        *(v10 + 64) = 1;
        *(v10 + 72) = a3;
        *(v10 + 80) = a4;
        *(*(*(a1 + 40) + 8) + 24) = HIDWORD(a2);
      }
    }
  }

  else if ((a2 - 16777235) >= 3)
  {
    if (a2 == 16777239 && *(a1 + 96) >= HIDWORD(a2))
    {
      v11 = *(a1 + 64);
      if (*(v11 + 64) != 1 || *(*(*(a1 + 40) + 8) + 24) < SHIDWORD(a2))
      {
        *(v11 + 64) = 1;
        *(v11 + 72) = a3;
        *(v11 + 80) = a4;
      }
    }
  }

  else
  {
    v8 = *(a1 + 64);
    *(v8 + 1) = 1;
    if (!*(v8 + 16) && !*(v8 + 8))
    {
      goto LABEL_9;
    }
  }

LABEL_20:
  v12 = [[MTLArchitecture alloc] initWithCPUType:a2 cpuSubtype:HIDWORD(a2)];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_2;
  v18[3] = &unk_1E6EEA9B8;
  v13 = *(a1 + 64);
  v18[4] = *(a1 + 32);
  v18[5] = v13;
  if (![MTLLoader airNTMachOEmpty:v18 type:0])
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
    v14 = *(*(a1 + 56) + 8);
    v17 = (a2 << 32) | (a2 >> 32);
    v15 = std::unordered_map<unsigned long long,+[_MTLBinaryArchive deserializeBinaryArchiveHeader:fileData:device:]::archSliceId>::operator[]((v14 + 48), &v17);
    *v15 = a3;
    v15[1] = a4;
  }

  return 1;
}

uint64_t __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + a2 + *(*(a1 + 40) + 8);
  if (v5 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + a2 + *(*(a1 + 40) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + a2 + *(*(a1 + 40) + 8);
  if (v5 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + a2 + *(*(a1 + 40) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *__s1, size_t __n, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  result = memcmp(__s1, &_MTLBinaryArchiveDescriptorUUID, __n);
  if (result)
  {
    return 1;
  }

  if (a3 == 1 && v21 == a1[6])
  {
    if (*(a1[5] + 48))
    {
      return 0;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_2;
    v16[3] = &unk_1E6EEAA08;
    v16[4] = &v17;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_3;
    v15[3] = &unk_1E6EEAA30;
    v15[5] = a6;
    v15[6] = a7;
    v15[4] = a1[4];
    [MTLLoader deserializeMachOWrapperWithType:v16 payloadHandler:v15 reader:?];
    v12 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v12)
    {
      return 0;
    }

    v13 = a1[5];
    v14 = v13[5] - a6;
    v13[6] = v13[4] + a6;
    v13[7] = v14;
    return 1;
  }

  return result;
}

BOOL __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1] | a3[2] | a3[3] | a3[4];
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 == 0;
}

uint64_t __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40) + a2;
  if ((v3 + a3) <= *(a1 + 48))
  {
    return [*(a1 + 32) bytes] + v3;
  }

  else
  {
    return 0;
  }
}

uint64_t __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 32) + a2;
  if (v4 + a3 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __51___MTLBinaryArchive_archiveTypeAtURL_device_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __39___MTLBinaryArchive_loadFromURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(*(a1 + 32) + 48) length])
  {
    return [*(*(a1 + 32) + 48) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[9];
  *(*(a1[4] + 8) + 24) = a1[8] + a4;
  *(*(a1[5] + 8) + 24) = a5;
  v6 = *(a3 + 24);
  *v5 = *(a3 + 8);
  v5[1] = v6;
  v7 = *(a1[6] + 8);
  v8 = *(a3 + 64);
  *(a3 + 64) = *(v7 + 40);
  *(v7 + 40) = v8;
  v9 = *(a1[7] + 8);
  v10 = *(a3 + 72);
  *(a3 + 72) = *(v9 + 40);
  *(v9 + 40) = v10;
  return 1;
}

uint64_t __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(*(a1 + 32) + 48) length])
  {
    return [*(*(a1 + 32) + 48) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

void __42___MTLBinaryArchive_formattedDescription___block_invoke(uint64_t a1)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v2 = [@"\n" stringByPaddingToLength:*(a1 + 48) + 4 withString:@" " startingAtIndex:0];
  v3 = [*(a1 + 32) retainedLabel];
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = *(a1 + 32);
  v8.super_class = _MTLBinaryArchive;
  v5 = objc_msgSendSuper2(&v8, sel_description);
  v9[0] = v2;
  v9[1] = @"label =";
  v6 = @"<none>";
  if (v3)
  {
    v6 = v3;
  }

  v9[2] = v6;
  v9[3] = v2;
  v9[4] = @"count =";
  v9[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{*(*(a1 + 32) + 304) + objc_msgSend(*(*(a1 + 32) + 376), "count")}];
  *(*(*(a1 + 40) + 8) + 40) = [v4 stringWithFormat:@"%@%@", v5, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 6), "componentsJoinedByString:", @" "];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __63___MTLBinaryArchive_getSpecializedFunctionArchivesToSerialize___block_invoke(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(*(a1 + 32), a2) || (v6 = *(a1 + 32), v7 = *(a2 + 16), v11[0] = *a2, v11[1] = v7, v12 = a3, std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>(v6, v11), (v8 & 1) == 0))
  {
    dispatch_release(a3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[49];
  if (v3)
  {
    result = [v3 isEqualToString:{objc_msgSend(*(a1 + 40), "absoluteString")}];
    v2 = *(a1 + 32);
  }

  else
  {
    result = 0;
  }

  v5 = v2[40] == v2[39] && v2[111] == 0;
  *(*(*(a1 + 48) + 8) + 24) = v5;
  v6 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(*(a1 + 80) + 8) + 24) = v6[28] != v6[27];
    v8 = *(*(a1 + 32) + 216);
    v7 = *(*(a1 + 32) + 224);
    if (!((v7 == v8) | result & 1))
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      result = [v9 replaceItemAtURL:*(a1 + 40) withItemAtURL:objc_msgSend(MEMORY[0x1E695DFF8] backupItemName:"URLWithString:" options:*(*(a1 + 32) + 392)) resultingItemURL:0 error:{0, 0, *(*(a1 + 88) + 8) + 40}];
      *(*(*(a1 + 80) + 8) + 24) = result;
      v8 = *(*(a1 + 32) + 216);
      v7 = *(*(a1 + 32) + 224);
    }

    if (v7 == v8)
    {
      result = newErrorWithMessage(&cfstr_NothingToSeria.isa, MTLBinaryArchiveErrorCompilationFailure);
      *(*(*(a1 + 88) + 8) + 40) = result;
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    return result;
  }

  v10 = *(a1 + 104);
  v59 = *(a1 + 96);
  v60 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v6 materializeAirNTAllForSlice:a1 + 112 entryList:&v59];
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 104);
  v57 = *(a1 + 96);
  v58 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v11 materializeAirNTFromOnlineForSlice:a1 + 112 entryList:&v57];
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v13 = *(a1 + 32);
  *__p = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v15 = *(v13 + 264);
  v14 = *(v13 + 272);
  if (v15 != v14)
  {
    v53 = v13;
    while (1)
    {
      v16 = *v15;
      v17 = **v15;
      v18 = *(*v15 + 32);
      if (v17 > 1)
      {
        break;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_45;
        }

LABEL_40:
        if ((v18 & 0xA) == 0)
        {
          v25 = v16[2];
          if (v25 != -1)
          {
            v16[2] = *(v53 + 56) + v25;
          }
        }

        v26 = ((v17 << 6) + 2654435769u + (v17 >> 2) + (v18 & 0xFFFFFFFFFFFFFFF7)) ^ v17;
        if ((v18 & 2) != 0)
        {
LABEL_57:
          v34 = *(v16 + 1);
LABEL_62:
          v37 = HIDWORD(v34);
          v38 = 0x9DDFEA08EB382D69 * ((8 * (v34 & 0x1FFFFFFF) + 8) ^ HIDWORD(v34));
          v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) ^ ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 47));
          goto LABEL_63;
        }

LABEL_44:
        v27 = v16[2];
        goto LABEL_63;
      }

      if ((v18 & 0xA) == 0)
      {
        v28 = v16[2];
        if (v28 != -1)
        {
          v16[2] = *(v53 + 56) + v28;
        }
      }

      if ((v18 & 9) == 0)
      {
        v29 = v16[4];
        if (v29 != -1)
        {
          v16[4] = *(v53 + 56) + v29;
        }
      }

      if ((v18 & 2) != 0)
      {
        v35 = 0x9DDFEA08EB382D69 * ((8 * (*(v16 + 1) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(v16 + 1)));
        v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 1)) ^ (v35 >> 47) ^ v35)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 1)) ^ (v35 >> 47) ^ v35)) >> 47));
      }

      else
      {
        v30 = v16[2];
      }

      v36 = ((v17 << 6) + 2654435769u + (v17 >> 2) + (v18 & 0xFFFFFFFFFFFFFFF7)) ^ v17;
      v26 = ((v36 << 6) + 2654435769u + (v36 >> 2) + v30) ^ v36;
      if (v18)
      {
        v34 = *(v16 + 2);
        goto LABEL_62;
      }

      v27 = v16[4];
LABEL_63:
      v39 = ((v26 << 6) + 2654435769u + (v26 >> 2) + v27) ^ v26;
      if (!__p[1])
      {
        goto LABEL_109;
      }

      v40 = vcnt_s8(__p[1]);
      v40.i16[0] = vaddlv_u8(v40);
      if (v40.u32[0] > 1uLL)
      {
        v41 = ((v26 << 6) + 2654435769u + (v26 >> 2) + v27) ^ v26;
        if (v39 >= __p[1])
        {
          v41 = v39 % __p[1];
        }
      }

      else
      {
        v41 = (__p[1] - 1) & v39;
      }

      v42 = *(__p[0] + v41);
      if (!v42 || (v43 = *v42) == 0)
      {
LABEL_109:
        operator new();
      }

      while (1)
      {
        v44 = v43[1];
        if (v44 == v39)
        {
          break;
        }

        if (v40.u32[0] > 1uLL)
        {
          if (v44 >= __p[1])
          {
            v44 %= __p[1];
          }
        }

        else
        {
          v44 &= __p[1] - 1;
        }

        if (v44 != v41)
        {
          goto LABEL_109;
        }

LABEL_82:
        v43 = *v43;
        if (!v43)
        {
          goto LABEL_109;
        }
      }

      v45 = v43[2];
      if (*v45 != v17)
      {
        goto LABEL_82;
      }

      v46 = *(v45 + 32);
      if (((v46 ^ v18) & 0xFFFFFFF7) != 0)
      {
        goto LABEL_82;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (v17 != 3)
          {
            goto LABEL_82;
          }

          if ((v46 & 2) != 0)
          {
            if (*(v45 + 16) != *(v16 + 2))
            {
              goto LABEL_82;
            }
          }

          else if (*(v45 + 16) != v16[4])
          {
            goto LABEL_82;
          }

          if (v46)
          {
            if (*(v45 + 24) != *(v16 + 3))
            {
              goto LABEL_82;
            }
          }

          else if (*(v45 + 24) != v16[6])
          {
            goto LABEL_82;
          }

          if ((v46 & 4) != 0)
          {
LABEL_105:
            v49 = *(v45 + 8);
            v50 = *(v16 + 1);
            goto LABEL_106;
          }

LABEL_90:
          v47 = *(v45 + 8);
          v48 = v16[2];
LABEL_91:
          if (v47 == v48)
          {
            goto LABEL_112;
          }

          goto LABEL_82;
        }

LABEL_89:
        if ((v46 & 2) != 0)
        {
          goto LABEL_105;
        }

        goto LABEL_90;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      }

      if ((v46 & 2) != 0)
      {
        if (*(v45 + 8) != *(v16 + 1))
        {
          goto LABEL_82;
        }
      }

      else if (*(v45 + 8) != v16[2])
      {
        goto LABEL_82;
      }

      if ((v46 & 1) == 0)
      {
        v47 = *(v45 + 16);
        v48 = v16[4];
        goto LABEL_91;
      }

      v49 = *(v45 + 16);
      v50 = *(v16 + 2);
LABEL_106:
      if (v49 != v50)
      {
        goto LABEL_82;
      }

LABEL_112:
      if (*(v16 + 63) < 0)
      {
        operator delete(*(v16 + 5));
      }

      MEMORY[0x1865FF210](v16, 0x1032C40B82182A8);
      if (++v15 == v14)
      {
        v13 = *(a1 + 32);
        goto LABEL_115;
      }
    }

    if (v17 == 2)
    {
      goto LABEL_40;
    }

    if (v17 != 3)
    {
LABEL_45:
      v27 = v18 & 0xFFFFFFFFFFFFFFF7;
      v26 = *v16;
      goto LABEL_63;
    }

    if ((v18 & 0xA) == 0)
    {
      v19 = v16[4];
      if (v19 != -1)
      {
        v16[4] = *(v53 + 56) + v19;
      }
    }

    if ((v18 & 9) == 0)
    {
      v20 = v16[6];
      if (v20 != -1)
      {
        v16[6] = *(v53 + 56) + v20;
      }
    }

    if ((v18 & 0xC) == 0)
    {
      v21 = v16[2];
      if (v21 != -1)
      {
        v16[2] = *(v53 + 56) + v21;
      }
    }

    if ((v18 & 2) != 0)
    {
      v31 = 0x9DDFEA08EB382D69 * ((8 * (*(v16 + 2) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(v16 + 2)));
      v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 2)) ^ (v31 >> 47) ^ v31)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 2)) ^ (v31 >> 47) ^ v31)) >> 47));
      if (v18)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v22 = v16[4];
      if (v18)
      {
LABEL_39:
        v23 = 0x9DDFEA08EB382D69 * ((8 * (*(v16 + 3) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(v16 + 3)));
        v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 3)) ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(v16 + 3)) ^ (v23 >> 47) ^ v23)) >> 47));
        goto LABEL_56;
      }
    }

    v24 = v16[6];
LABEL_56:
    v32 = ((v17 << 6) + 2654435769u + (v17 >> 2) + (v18 & 0xFFFFFFFFFFFFFFF7)) ^ v17;
    v33 = ((v32 << 6) + 2654435769u + (v32 >> 2) + v22) ^ v32;
    v26 = ((v33 << 6) + 2654435769u + (v33 >> 2) + v24) ^ v33;
    if ((v18 & 4) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

LABEL_115:
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::clear(v13 + 648);
  *(*(a1 + 32) + 272) = *(*(a1 + 32) + 264);
  *(*(a1 + 32) + 56) = 0;
  v51 = *(a1 + 32);
  if ((*(v51 + 32) & 0x80) == 0)
  {
    *(*(*(a1 + 64) + 8) + 40) = MTLMetalScriptBuilder::newSerializedMetalScript(*(v51 + 696));
    v51 = *(a1 + 32);
  }

  *(v51 + 888) = 0;
  v52 = *(*(a1 + 32) + 64);
  if (v52)
  {
    *(*(*(a1 + 72) + 8) + 24) = strdup(v52);
    free(*(*(a1 + 32) + 64));
    *(*(a1 + 32) + 64) = 0;
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(__p);
}

void __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke_222(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 64) + 8) + 24);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 104);
  v6 = *v5;
  if (v5[1] != *v5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + v7 + 32);
      if (v9)
      {
        dispatch_release(v9);
      }

      v10 = *(v6 + v7 + 16);
      if (v10)
      {
        dispatch_release(v10);
      }

      v11 = *(v6 + v7 + 24);
      if (v11)
      {
        dispatch_release(v11);
      }

      v12 = *(v6 + v7 + 40);
      if (v12)
      {
        dispatch_release(v12);
      }

      v13 = *(v6 + v7 + 8);
      if (v13)
      {
        MTLHashKey::~MTLHashKey(v13);
        MEMORY[0x1865FF210]();
      }

      ++v8;
      v14 = *(a1 + 104);
      v6 = *v14;
      v7 += 72;
    }

    while (v8 < 0x8E38E38E38E38E39 * ((v14[1] - *v14) >> 3));
  }

  v15 = *(a1 + 72);
  v16 = *(v15 + 8);
  v17 = *(v16 + 48);
  if (*(v16 + 56) != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        if (*(v19 + 63) < 0)
        {
          operator delete(*(v19 + 40));
        }

        MEMORY[0x1865FF210](v19, 0x1032C40B82182A8);
        v15 = *(a1 + 72);
      }

      ++v18;
      v16 = *(v15 + 8);
      v17 = *(v16 + 48);
    }

    while (v18 < (*(v16 + 56) - v17) >> 3);
  }

  *(v16 + 56) = v17;
  v20 = *(a1 + 32);
  v21 = *(v20 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke_2;
  block[3] = &unk_1E6EEAAF0;
  v26 = *(a1 + 40);
  v22 = *(a1 + 56);
  v29 = *(a1 + 80);
  v23 = *(a1 + 96);
  v27 = v22;
  v28 = v20;
  v24 = *(a1 + 72);
  v30 = v23;
  v31 = v24;
  v32 = a2;
  dispatch_sync(v21, block);
}

void __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (*v2)
  {
    v3 = *(*(*(a1 + 80) + 8) + 40);
    if (v3)
    {
      dispatch_release(v3);
      v2 = *(a1 + 96);
    }

    *(*(*(a1 + 72) + 8) + 40) = newErrorWithMessage(*(v2 + 8), MTLBinaryArchiveErrorCompilationFailure);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) replaceItemAtURL:*(a1 + 40) withItemAtURL:objc_msgSend(MEMORY[0x1E695DFF8] backupItemName:"fileURLWithPath:isDirectory:" options:*(a1 + 48) resultingItemURL:0) error:{0, 0, 0, *(*(a1 + 72) + 8) + 40}];
    v4 = *(*(*(a1 + 80) + 8) + 40);
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = *(v5 + 640);
      if (v6)
      {
        dispatch_release(v6);
        v4 = *(*(*(a1 + 80) + 8) + 40);
        v5 = *(a1 + 56);
      }

      *(v5 + 640) = v4;
    }
  }

  v7 = [*(a1 + 48) UTF8String];
  remove(v7, v8);
  [*(*(a1 + 56) + 376) removeAllObjects];
  [*(*(a1 + 56) + 376) addEntriesFromDictionary:*(*(a1 + 56) + 384)];
  [*(*(a1 + 56) + 384) removeAllObjects];
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::clear(*(a1 + 56) + 96);
  v9 = *(a1 + 56);
  v10 = *(v9 + 216);
  if (*(v9 + 224) != v10)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      if (v12)
      {
        MTLAirNTObject::~MTLAirNTObject(v12);
        MEMORY[0x1865FF210]();
        v9 = *(a1 + 56);
      }

      ++v11;
      v10 = *(v9 + 216);
    }

    while (v11 < (*(v9 + 224) - v10) >> 3);
  }

  *(v9 + 224) = v10;
  *(*(a1 + 56) + 248) = *(*(a1 + 56) + 240);
  [*(a1 + 56) clearLibCache];
  v13 = *(a1 + 56);
  v14 = *(v13 + 40);
  if (v14)
  {
    [(MTLLoader *)*(*(v13 + 24) + 488) releaseLoadedFile:v14];
    v13 = *(a1 + 56);
  }

  *(v13 + 40) = 0;

  *(*(a1 + 56) + 48) = 0;
  if (([*(a1 + 56) recompilationTarget] & 1) == 0)
  {
    v15 = *(a1 + 56);
    if ((*(v15 + 32) & 0x80) == 0 && (*(v15 + 56) || *(*(*(a1 + 64) + 8) + 24) == 1))
    {
      v16 = *(v15 + 264);
      v17 = *(v15 + 272);
      if (v16 != v17)
      {
        do
        {
          v18 = *v16++;
          v24 = v18;
          std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](*(*(a1 + 88) + 8) + 48, &v24);
        }

        while (v16 != v17);
        v15 = *(a1 + 56);
        v16 = *(v15 + 264);
      }

      *(v15 + 272) = v16;
      *(*(a1 + 56) + 72) = 1;
      [*(a1 + 56) loadFromURL:*(a1 + 40) error:*(*(a1 + 72) + 8) + 40];
      v19 = *(*(a1 + 88) + 8);
      v20 = *(v19 + 48);
      v21 = *(v19 + 56);
      while (v20 != v21)
      {
        v22 = *v20++;
        v24 = v22;
        std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](*(a1 + 56) + 264, &v24);
      }
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v23 = *(*(a1 + 56) + 392);
    if (v23)
    {
    }

    *(*(a1 + 56) + 392) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:{objc_msgSend(*(a1 + 40), "absoluteString")}];
  }
}

void __89___MTLBinaryArchive_newRecompiledFunctionWithAIRNTObject_index_destinationArchive_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newLibraryInArchiveAtPos:*(a1 + 56) atIndex:*(a1 + 64) error:*(a1 + 72)];
  v3 = v2;
  if (v2 && (v7 = v2, v4 = [v2 isStub], v3 = v7, !v4))
  {
    v5 = [v7 newFunctionWithHash:*(*(**(a1 + 56) + 8 * *(a1 + 64)) + 24)];
    if (v5)
    {
      v6 = v5;
      *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) recompileFunction:v5 inLibrary:v7 toArchive:*(a1 + 40) toBinary:0 error:*(a1 + 72)];
    }

    else if (*(a1 + 72))
    {
      **(a1 + 72) = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find the requested function hash in the binary archive"], MTLBinaryArchiveErrorInvalidFile);
    }
  }

  else
  {
  }
}

uint64_t __55___MTLBinaryArchive_recompileStatelessToArchive_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) newLibraryInArchiveAtPos:*(a1 + 56) atIndex:0 error:*(a1 + 64)];
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = [result isStub];
    if ((result & 1) == 0)
    {
      result = [*(*(*(a1 + 40) + 8) + 40) newFunctionWithHash:*(***(a1 + 56) + 24)];
      *(*(*(a1 + 48) + 8) + 40) = result;
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        if (*(a1 + 64))
        {
          result = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find the requested function hash in the binary archive"], MTLBinaryArchiveErrorInvalidFile);
          **(a1 + 64) = result;
        }
      }
    }
  }

  return result;
}

uint64_t __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v6 = a1[6];
  *(*(a1[5] + 8) + 24) += a3;
  v7 = a1[4];

  return [v7 writeData:v5 error:v6];
}

uint64_t __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke_286(uint64_t a1)
{
  [*(a1 + 32) materializeAll];
  [*(a1 + 32) materializeAllAIRNTLegacy];
  std::vector<MTLLoaderMachOPayload>::reserve((*(*(a1 + 40) + 8) + 48), [*(*(a1 + 32) + 376) count]);
  v2 = *(*(a1 + 32) + 376);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke_2;
  v4[3] = &unk_1E6EEABB8;
  v5 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v9 = [a3 data];
  v6 = [a2 value];
  v7 = v6[1];
  v10 = *v6;
  v11 = v7;
  *(&v12 + 1) = *(a1 + 40);
  *(&v13 + 1) = [a3 importedLibraries];
  *&v14 = [a3 importedSymbols];
  LOBYTE(v12) = (*(a1 + 48) & 2) != 0;
  std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 48, &v9);
  v8 = *MEMORY[0x1E69E9840];
}

BOOL __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v9 = **(a1 + 40);
  v10 = v9 != a2;
  if (v9 == a2 && (*(*(a1 + 32) + 32) & 0x10) == 0)
  {
    MTLHashKey::MTLHashKey(&v37, a4, a5, a3);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    MTLHashKey::MTLHashKey(&v32, &v37);
    v33 = a7;
    v34 = v16 + a6;
    v35 = a9;
    v36 = v16 + a8;
    std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<MTLHashKey,std::pair<MTLHashKey const,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>((v15 + 96), &v32);
    MTLHashKey::~MTLHashKey(&v32);
    v17 = *(a1 + 32);
    v32.var0.var0 = *(a1 + 48) + a6;
    v18 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>((v17 + 176), &v32.var0.var0);
    if (v18)
    {
      memset(&v32, 0, 24);
      std::vector<std::pair<MTLHashKey,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(&v32, v18[3], v18[4], 0x2E8BA2E8BA2E8BA3 * ((v18[4] - v18[3]) >> 3));
      LODWORD(v27) = 0;
      var1 = v32.var0.var1;
      if (v32.var0.var1 >= *&v32.var0.var2)
      {
        v20 = std::vector<std::pair<MTLHashKey,unsigned int>>::__emplace_back_slow_path<MTLHashKey&,int>(&v32, &v37, &v27);
      }

      else
      {
        MTLHashKey::MTLHashKey(v32.var0.var1, &v37);
        *(var1 + 80) = 0;
        v20 = var1 + 88;
      }

      v32.var0.var1 = v20;
      v27 = &v32;
      v24 = &v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      LODWORD(v32.var0.var0) = 0;
      v21 = std::vector<std::pair<MTLHashKey,unsigned int>>::__emplace_back_slow_path<MTLHashKey&,int>(&v27, &v37, &v32);
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      v28 = v21;
      v32.var0.var0 = v23 + a6;
      memset(&v32.var0.var1, 0, 24);
      std::vector<std::pair<MTLHashKey,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(&v32.var0.var1, v27, v21, 0x2E8BA2E8BA2E8BA3 * ((v21 - v27) >> 3));
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::vector<std::pair<MTLHashKey,unsigned int>>>>((v22 + 176), &v32.var0.var0);
      p_var1 = &v32.var0.var1;
      std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&p_var1);
      v32.var0.var0 = &v27;
      v24 = &v32;
    }

    std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](v24);
    MTLHashKey::~MTLHashKey(&v37);
  }

  result = !v10;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v43[0] = a2;
  if ((*(a2 + 80) & 0x20) != 0)
  {
    v36 = *(a1 + 32);
    result = 1;
    *(v36 + 73) = 1;
  }

  else
  {
    *(a2 + 56) = *(a1 + 40);
    v42 = 0;
    [*(a1 + 32) preloadLibrariesInAirntObject:a2 error:&v42];
    if (*(a1 + 48) & 1) != 0 || ([*(a1 + 32) getScriptsWithAIRNTObject:v43[0]])
    {
      std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](*(a1 + 32) + 216, v43);
      if ((*(v43[0] + 80) & 4) != 0)
      {
        std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](*(a1 + 32) + 240, v43);
      }

      v3 = *(a1 + 32);
      if ((*(v3 + 32) & 0x10) == 0)
      {
        data = *(v43[0] + 5) + *(a1 + 40);
        v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>((v3 + 176), &data);
        v5 = v4;
        if (v4)
        {
          v6 = v4[3];
          v7 = v4[4];
          v8 = (v7 - v6) >> 3;
          v9 = 0x2E8BA2E8BA2E8BA3 * v8;
          v10 = -1171354717 * v8 - 1;
          if (v7 != v6)
          {
            v11 = -1;
            do
            {
              --v9;
              v12 = v5[3];
              if (0x2E8BA2E8BA2E8BA3 * ((v5[4] - v12) >> 3) <= v9)
              {
                std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
              }

              MTLHashKey::MTLHashKey(&c, (v12 + 88 * v9));
              v46 = 0;
              v47 = 0;
              *md = 0;
              v13 = *v43[0];
              if (*(v43[0] + 1) - *v43[0] < 9uLL)
              {
                v18 = 0;
                v17 = 0;
              }

              else
              {
                v14 = 2;
                v15 = 1;
                do
                {
                  v16 = *(v13 + 8 * v15);
                  if (*(v16 + 32))
                  {
                    break;
                  }

                  std::vector<MTLUINT256_t>::push_back[abi:ne200100](md, *(v16 + 24));
                  v15 = v14;
                  v13 = *v43[0];
                  ++v14;
                }

                while (v15 < (*(v43[0] + 1) - *v43[0]) >> 3);
                v17 = *md;
                v18 = v46;
              }

              v19 = *(*v13 + 24);
              v39 = 0;
              v40 = 0;
              __p = 0;
              std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&__p, v17, v18, (v18 - v17) >> 5);
              v20 = MTLHashKey::areBitcodesEqual(&c, v19, &__p);
              if (__p)
              {
                v39 = __p;
                operator delete(__p);
              }

              if (v20)
              {
                v21 = v5[3];
                if (0x2E8BA2E8BA2E8BA3 * ((v5[4] - v21) >> 3) <= v9)
                {
                  std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
                }

                v22 = *(v21 + 88 * v9 + 80);
                v23 = v22 > v11;
                if (v22 < v11)
                {
                  v11 = v22;
                }

                if (!v23)
                {
                  v10 = v9;
                }
              }

              if (*md)
              {
                v46 = *md;
                operator delete(*md);
              }

              MTLHashKey::~MTLHashKey(&c);
            }

            while (v9);
            v6 = v5[3];
            v9 = 0x2E8BA2E8BA2E8BA3 * ((v5[4] - v6) >> 3);
          }

          if (v9 <= v10)
          {
            std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          ++*(v6 + 88 * v10 + 80);
        }

        v25 = (a1 + 32);
        v24 = *(a1 + 32);
        v27 = v24[27];
        v26 = v24[28];
        *c.count = &data;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v24 + 42, &data)[3] = ((v26 - v27) >> 3) - 1;
        CC_SHA256_Init(&c);
        CC_SHA256_Update(&c, *(**v43[0] + 24), 0x20u);
        CC_SHA256_Update(&c, &data, 8u);
        CC_SHA256_Final(md, &c);
        v28 = *(a1 + 40);
        v30 = *(v43[0] + 16);
        v29 = *(v43[0] + 17);
        v32 = *(v43[0] + 18);
        v31 = *(v43[0] + 19);
        v33 = *v25;
        v43[2] = md;
        v34 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((v33 + 136), md);
        v34[6] = v28 + v30;
        v34[7] = v29;
        v34[8] = v28 + v32;
        v34[9] = v31;
      }

      result = 1;
    }

    else
    {
      result = v43[0];
      if (v43[0])
      {
        MTLAirNTObject::~MTLAirNTObject(v43[0]);
        MEMORY[0x1865FF210]();
        result = 0;
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](*(a1 + 32) + 264, &v11);
  v3 = v11;
  v4 = *(v11 + 8);
  if (v4 != -1)
  {
    v5 = *(a1 + 32);
    if (v4 <= *(v5 + 56))
    {
      v4 = *(v5 + 56);
    }

    *(v5 + 56) = v4;
  }

  v6 = *(v3 + 16);
  if (v6 != -1)
  {
    v7 = *(a1 + 32);
    if (v6 <= *(v7 + 56))
    {
      v6 = *(v7 + 56);
    }

    *(v7 + 56) = v6;
  }

  v8 = *(v3 + 24);
  if (v8 != -1)
  {
    v9 = *(a1 + 32);
    if (v8 <= *(v9 + 56))
    {
      v8 = *(v9 + 56);
    }

    *(v9 + 56) = v8;
  }

  return 1;
}

uint64_t __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 7) > 1)
  {
    if (a2 == 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_4_cold_1(a1);
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  return v3 & 1;
}

uint64_t __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_303(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(*(a1 + 32) + 48) length])
  {
    return [*(*(a1 + 32) + 48) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, int a5, uint64_t a6)
{
  v14 = *MEMORY[0x1E69E9840];
  if (**(a1 + 32) == a2 && *(a1 + 40) == a3)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56) + a6;
    v8 = a4[1];
    v11[0] = *a4;
    v11[1] = v8;
    v12 = a5;
    v13 = v7;
    std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,std::pair<unsigned int,unsigned long long>>>(v6, v11);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40) + a2;
  if (v4 + a3 <= [*(*(a1 + 32) + 48) length])
  {
    return [*(*(a1 + 32) + 48) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

uint64_t __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1[4] + 8) + 24) + a2;
  if ((v3 + a3) <= a1[5])
  {
    return a1[6] + v3;
  }

  else
  {
    return 0;
  }
}

uint64_t __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, size_t a5)
{
  if (a2 != **(a1 + 56) || a3[6] != *(a1 + 64))
  {
    return 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    v11 = a3[1] == v7 && a3[2] == v8;
    v12 = v11 && a3[3] == v10;
    if (v12 && a3[4] == v9)
    {
      return 1;
    }
  }

  dispatch_data_create_subrange([*(a1 + 32) dispatchData], *(a1 + 80) + a4 + *(*(*(a1 + 48) + 8) + 24), a5);
  v14 = *(*(a1 + 40) + 16);

  return v14();
}

uint64_t __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != **(a1 + 56) || *(a1 + 64) != a3)
  {
    return 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = a6;
  return [MTLLoader deserializeMachOWrapperWithType:*(a1 + 32) payloadHandler:*(a1 + 40) reader:?];
}

id __25___MTLBinaryArchive_keys__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[60] == 1)
  {
    [v2 materializeAll];
  }

  else
  {
    [v2 materializeAllAIRNTLegacy];
  }

  result = [*(*(a1 + 32) + 376) allKeys];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __78___MTLBinaryArchive_MTLBinaryArchiveInternal__addArchiveEntryInternal_forKey___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 60) == 1)
  {
    if ((*(v2 + 32) & 4) != 0)
    {
      v3 = *(a1 + 48);
      v4 = [*(a1 + 40) data];
      v5 = v3[1];
      v13 = *v3;
      v14 = v5;
      v15 = v4;
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>((v2 + 728), &v13);
      if (v6)
      {
        dispatch_retain([*(a1 + 40) data]);
      }
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v7[1];
    v13 = *v7;
    v14 = v9;
    v15 = v8;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,MTLAirEntry *>>((v2 + 560), &v13);
    if (v10)
    {
      v11 = *(a1 + 40);
      ++*(*(a1 + 32) + 888);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke(uint64_t a1)
{
  v2 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>((*(a1 + 32) + 728), *(a1 + 48));
  v3 = *(a1 + 32);
  if (v2 && (v4 = v2[6]) != 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = v4;
    v5 = *(*(*(a1 + 40) + 8) + 40);

    dispatch_retain(v5);
  }

  else
  {
    v6 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke_2;
    v10[3] = &unk_1E6EEAD90;
    v10[4] = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke_3;
    v9[3] = &unk_1E6EEADB8;
    v9[4] = v3;
    v7 = [v3 materializeEntryForKey:v6 fileIndex:v3 + 768 containsEntry:v10 addEntry:v9];
    *(*(*(a1 + 40) + 8) + 40) = [v7 data];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (v8)
    {
      dispatch_retain(v8);
    }
  }
}

void __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke_3(uint64_t a1, void *a2, _OWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = [a2 data];
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  v12 = v6;
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>((v5 + 728), v11);
  LOBYTE(a3) = v8;
  v9 = a2;
  if (a3)
  {
    dispatch_retain([a2 data]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __77___MTLBinaryArchive_MTLBinaryArchiveInternal__addBinaryEntryInternal_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addBinaryEntryImpl:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(a1 + 40);
}

void __77___MTLBinaryArchive_MTLBinaryArchiveInternal__getArchiveIDWithErrorInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 64))
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0;
    v3 = [*(v1 + 24) compiler];
    v4 = [*(a1 + 32) recompilationTarget];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77___MTLBinaryArchive_MTLBinaryArchiveInternal__getArchiveIDWithErrorInternal___block_invoke_2;
    v6[3] = &unk_1E6EEAE08;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v6[5] = v7;
    v6[6] = v5;
    [v3 createBinaryArchiveAsRecompileTarget:v4 completionHandler:v6];
    _Block_object_dispose(v7, 8);
  }
}

void __77___MTLBinaryArchive_MTLBinaryArchiveInternal__getArchiveIDWithErrorInternal___block_invoke_2(void *a1, uint64_t a2)
{
  if (*a2)
  {
    if (*(a2 + 8))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate archiveID with error: %@", *(a2 + 8)];
    }

    else
    {
      v3 = @"Failed to generate archiveID";
    }

    *(*(a1[6] + 8) + 40) = newErrorWithMessage(&v3->isa, MTLBinaryArchiveErrorInternalError);
  }

  else
  {
    size_ptr = 0;
    v4 = dispatch_data_create_map(*(a2 + 24), (*(a1[5] + 8) + 24), &size_ptr);
    if (size_ptr <= strlen(*(*(a1[5] + 8) + 24)))
    {
      *(*(a1[6] + 8) + 40) = newErrorWithMessage(&cfstr_FailedToGenera.isa, MTLBinaryArchiveErrorInternalError);
    }

    else
    {
      *(a1[4] + 64) = strdup(*(*(a1[5] + 8) + 24));
    }

    dispatch_release(v4);
  }
}

uint64_t __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 376) objectForKey:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    result = *(a1 + 32);
    if (*(result + 60))
    {
      return result;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    result = [result updateReflectionForEntry:? binaryKey:? requiredReflection:?];
    v5 = *(*(a1 + 48) + 8);
    if ((result & 1) == 0)
    {
      *(v5 + 40) = 0;
      return result;
    }

    if (*(v5 + 40))
    {
      return result;
    }
  }

  v6 = *(a1 + 32);
  if (v6[60])
  {
    v7 = [*(a1 + 40) value];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke_2;
    v10[3] = &unk_1E6EEAD90;
    v10[4] = v8;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke_3;
    v9[3] = &unk_1E6EEADB8;
    v9[4] = v8;
    result = [v6 materializeEntryForKey:v7 fileIndex:v8 + 288 containsEntry:v10 addEntry:v9];
  }

  else
  {
    result = [*(a1 + 32) materializeAIRNTBlockForKey:*(a1 + 40) reflectionType:*(a1 + 56)];
  }

  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

BOOL __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  MTLHashKey::MTLHashKey(&v7, a2);
  v3 = [[MTLBinaryKey alloc] initWithHash:&v7];
  v4 = [*(*(a1 + 32) + 376) objectForKey:v3];

  MTLHashKey::~MTLHashKey(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

void __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  MTLHashKey::MTLHashKey(&v7, a3);
  v5 = [[MTLBinaryKey alloc] initWithHash:&v7];
  [*(*(a1 + 32) + 376) setObject:a2 forKey:v5];

  MTLHashKey::~MTLHashKey(&v7);
  v6 = *MEMORY[0x1E69E9840];
}

void *__76___MTLBinaryArchive_MTLBinaryArchiveInternal__findProgramObjectForFunction___block_invoke(void *a1)
{
  result = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>((a1[4] + 848), a1 + 6);
  if (result)
  {
    v3 = result[6];
  }

  else
  {
    v3 = 0;
  }

  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

void *__72___MTLBinaryArchive_MTLBinaryArchiveInternal__programObjectForFunction___block_invoke(void *a1)
{
  result = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>((a1[4] + 848), a1 + 6);
  if (!result)
  {
    operator new();
  }

  *(*(a1[5] + 8) + 24) = result[6];
  return result;
}

void __85___MTLBinaryArchive_MTLBinaryArchiveInternal__newStitchedLibraryWithKey_descriptors___block_invoke(void *a1)
{
  v1 = a1[7];
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    for (i = 0; ; ++i)
    {
      v6 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>((a1[4] + 480), (v2 + 8));
      v7 = a1[4];
      if (v6)
      {
        v8 = [v7 newLibraryInArchiveWithRange:v6[6] error:{v6[7], 0}];
        v9 = i;
        *(*(*(a1[5] + 8) + 48) + 8 * i) = [v8 newStitchedFunctionWithHash:v2 + 8];
      }

      else
      {
        v9 = i;
        *(*(*(a1[5] + 8) + 48) + 8 * i) = [v7 localStitchedFunctionLookupWithDescriptor:v2];
      }

      v10 = *(a1[6] + 8);
      v11 = *(v10 + 24);
      if (!*(*(*(a1[5] + 8) + 48) + 8 * v9))
      {
        v11 = 0;
      }

      *(v10 + 24) = v11;
      if ((*(*(a1[6] + 8) + 24) & 1) == 0)
      {
        break;
      }

      v2 += 40;
      if (v2 == v3)
      {
        return;
      }
    }

    if (i)
    {
      v12 = 0;
      do
      {
      }

      while (v9 != v12);
    }
  }
}

void *__108___MTLBinaryArchive_MTLBinaryArchiveInternal__addStitchedLibraryWithKey_descriptors_inputFunctions_library___block_invoke(void *result)
{
  v1 = result[6];
  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    v4 = result;
    v5 = 0x1ED5AC000uLL;
    do
    {
      result = std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>((v4[4] + 600), v2 + 1);
      if (!result)
      {
        result = std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>((v4[4] + 480), v2 + 1);
        if (!result)
        {
          if ((*(*v4[7] + 304))(v4[7]))
          {
            v6 = v5;
            v7 = [v4[4] getFunctionNameFromAirDescriptor:v2];
            v8 = (*(*v4[7] + 160))(v4[7], v7, *(v4[4] + 24));
            v9 = [v8 libraryData];
            v10 = (*(*v9 + 128))(v9);

            v5 = v6;
          }

          else
          {
            v10 = (*(*v4[7] + 128))(v4[7]);
          }

          v11 = [objc_alloc((v5 + 3832)) initWithData:v10 bitcode:0 airScript:*v2];
          [v4[4] addStitchingInputsFunction:v4[5] toEntry:v11];
          result = std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>((v4[4] + 600), v2 + 1);
          result[6] = v11;
        }
      }

      v2 += 5;
    }

    while (v2 != v3);
  }

  return result;
}

void __107___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiverIdWithBinaryKey_entry_srcArchiverId_functionType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v3 = dispatch_data_create_map(v2, &buffer_ptr, &size_ptr);
    v4 = buffer_ptr;
    if ((getRequiredStagesPresentMask(*(a1 + 80)) & ~*(v4 + 45)) == 0)
    {
      dispatch_release(v3);
      dispatch_retain(*(a1 + 32));
      *(*(*(a1 + 72) + 8) + 40) = *(a1 + 32);
      return;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if ([*(a1 + 40) recompilationTarget])
  {
    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [*(*(a1 + 40) + 376) objectForKey:*(a1 + 56)];
    if (!v5)
    {
LABEL_9:
      [*(a1 + 40) addBinaryEntryImpl:*(a1 + 48) forKey:*(a1 + 56)];
      v5 = *(a1 + 48);
    }
  }

  v6 = std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>((*(a1 + 40) + 648), *(a1 + 88));
  v7 = v6;
  if (*(a1 + 104) == 1)
  {
    v8 = *(a1 + 80);
    v9 = (v8 - *v8);
    if (*v9 >= 9u)
    {
      v10 = v9[4];
      if (v10)
      {
        v11 = *(v8 + v10);
        if (!v6)
        {
          goto LABEL_14;
        }

LABEL_18:
        v14 = 0;
        LODWORD(v15) = -1;
        goto LABEL_27;
      }
    }
  }

  v11 = 0;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ([v5 index] == -1)
  {
    operator new();
  }

  v12 = [v5 index];
  v13 = [v5 index];
  if (v12 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (v13 == -2)
    {
      v15 = (*(*(a1 + 40) + 320) - *(*(a1 + 40) + 312)) >> 4;
      v16 = v15 - 1;
      while (v16 != -1)
      {
        v17 = MTLHashKey::operator==(*(*(*(a1 + 40) + 312) + 16 * v16--), *(a1 + 88));
        LODWORD(v15) = v15 - 1;
        if (v17)
        {
          v14 = 0;
          goto LABEL_26;
        }
      }
    }

    v14 = 0;
    LODWORD(v15) = -1;
  }

  else
  {
    v14 = 1;
    LODWORD(v15) = v13;
  }

LABEL_26:
  if (*(a1 + 104))
  {
LABEL_27:
    RequiredStagesPresentMask = getRequiredStagesPresentMask(*(a1 + 80));
    dispatch_release(*(a1 + 64));
    v19 = malloc_type_malloc(0x30uLL, 0x102204031A510F6uLL);
    v21 = v19;
    if (*(a1 + 32))
    {
      v22 = *v4;
      v23 = v4[2];
      *(v19 + 1) = v4[1];
      *(v19 + 2) = v23;
      *v19 = v22;
      if (!v3)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20.i32[0] = RequiredStagesPresentMask;
      v26 = vaddlv_u8(vcnt_s8(v20));
      *(v19 + 4) = -1;
      *&v27 = -1;
      *(&v27 + 1) = -1;
      *v19 = v27;
      *(v19 + 1) = v27;
      *(v19 + 10) = v11;
      *(v19 + 22) = v26;
      if (!v3)
      {
LABEL_30:
        v24 = *(a1 + 96);
        if (v24 <= 2)
        {
          if (v24 != 1)
          {
            if (v24 == 2)
            {
              if (v7)
              {
                *(v21 + 3) = v7[12];
                v25 = v21[45] | 1;
              }

              else
              {
                *(v21 + 6) = v15;
                v25 = v21[45] & 0xFE;
              }

              goto LABEL_58;
            }

            goto LABEL_59;
          }

          if (v7)
          {
            *v21 = v7[12];
            goto LABEL_48;
          }

          *v21 = v15;
        }

        else
        {
          switch(v24)
          {
            case 3:
              if (v7)
              {
                *(v21 + 4) = v7[12];
LABEL_48:
                v25 = v21[45] | 2;
LABEL_58:
                v21[45] = v25;
                goto LABEL_59;
              }

              *(v21 + 8) = v15;
              break;
            case 7:
              if (v7)
              {
                *(v21 + 1) = v7[12];
                goto LABEL_48;
              }

              *(v21 + 2) = v15;
              break;
            case 8:
              if (v7)
              {
                *(v21 + 2) = v7[12];
                v25 = v21[45] | 4;
              }

              else
              {
                *(v21 + 4) = v15;
                v25 = v21[45] & 0xFB;
              }

              goto LABEL_58;
            default:
LABEL_59:
              if (v14)
              {
                v21[45] |= 8u;
              }

              --v21[44];
              *(*(*(a1 + 72) + 8) + 40) = dispatch_data_create(v21, 0x30uLL, *(*(a1 + 40) + 80), *MEMORY[0x1E69E9648]);
              return;
          }
        }

        v25 = v21[45] & 0xFD;
        goto LABEL_58;
      }
    }

    dispatch_release(v3);
    goto LABEL_30;
  }

  dispatch_release(*(a1 + 64));
  if (v3)
  {
    dispatch_release(v3);
  }

  *(*(*(a1 + 72) + 8) + 40) = 0;
}

void __101___MTLBinaryArchive_MTLBinaryArchiveInternal__updatePipelineWithPipelineArchiverId_key_functionType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 56) - 5) >= 2)
  {
    v12 = 0;
    buffer_ptr[0] = 0;
    v3 = dispatch_data_create_map(v2, buffer_ptr, &v12);
    v4 = buffer_ptr[0];
    v5 = *(a1 + 56) - 1;
    if (v5 > 7)
    {
      v6 = -1;
    }

    else
    {
      v6 = dword_185DD2C54[v5];
    }

    v7 = [*(a1 + 40) getFunctionId];
    if (std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>((*(a1 + 48) + 648), v7))
    {
LABEL_7:
      if ((v4[45] & 0x10) != 0)
      {
LABEL_11:
        dispatch_release(v3);
        return;
      }

LABEL_10:
      if (!v4[44])
      {
        operator new();
      }

      goto LABEL_11;
    }

    if ((v6 | v4[45]) != 0xFFFFFFFF)
    {
      goto LABEL_10;
    }

    v8 = 0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (v10 <= 2)
    {
      v11 = v4;
      if (v10 == 1)
      {
        goto LABEL_23;
      }

      if (v10 == 2)
      {
        v11 = (v4 + 24);
        goto LABEL_23;
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v11 = (v4 + 32);
          goto LABEL_23;
        case 7:
          v11 = (v4 + 8);
          goto LABEL_23;
        case 8:
          v11 = (v4 + 16);
LABEL_23:
          v8 = *v11;
          break;
      }
    }

    buffer_ptr[2] = v7;
    std::__hash_table<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>>>::__emplace_unique_key_args<MTLHashKey,std::piecewise_construct_t const&,std::tuple<MTLHashKey const&>,std::tuple<>>((v9 + 648), v7)[12] = v8;
    goto LABEL_7;
  }
}

void __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_4_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 392) UTF8String];
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "No binaries found in %s ", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end