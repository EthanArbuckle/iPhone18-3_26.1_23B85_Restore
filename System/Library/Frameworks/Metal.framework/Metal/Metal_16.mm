void MTLLibraryDataWithArchive::getInputListForStitchedFunction(MTLLibraryDataWithArchive *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 60, a2);
  if (!v6 || (v7 = v6[6]) == 0)
  {
    v8 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
    if (!v8)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      goto LABEL_16;
    }

    v7 = v8[6];
  }

  v16.bitcodeType = 0;
  v16.pluginData = 0;
  *&v16.renderTargetArrayIndexType = 0;
  v16.functionInputs = 0;
  v16.airScript = 0;
  memset(&v16, 0, 56);
  v15 = 0;
  *__p = 0u;
  v13 = 0u;
  *v12 = 0u;
  *v11 = 0u;
  MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v7, &v16, &v10);
  if (v16.airScript)
  {
    dispatch_release(v16.airScript);
  }

  if (v16.functionInputs)
  {
    dispatch_release(v16.functionInputs);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(a3, __p[0], __p[1], (__p[1] - __p[0]) >> 5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(v11[0]);
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
}

_MTLFunctionInternal *MTLLibraryDataWithArchive::newFunction(MTLLibraryDataWithArchive *a1, unint64_t *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(a1 + 40, a2);
  if (v5)
  {
    v6 = v5[6];
    v26.bitcodeType = 0;
    v26.pluginData = 0;
    *&v26.renderTargetArrayIndexType = 0;
    v26.functionInputs = 0;
    v26.airScript = 0;
    memset(&v26, 0, 56);
    v25 = 0;
    *__p = 0u;
    v23 = 0u;
    *v22 = 0u;
    *v21 = 0u;
    if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v6, &v26, &v20))
    {
      if (*(a1 + 48))
      {
        v7 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 45, v21);
        if (v7)
        {
          v26.airScript = v7[5];
          std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::erase(a1 + 45, v7);
        }
      }

      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (SHIBYTE(v22[0]) >= 0)
      {
        v9 = v21;
      }

      else
      {
        v9 = v21[0];
      }

      v10 = [v8 initWithUTF8String:v9];
      v11 = [_MTLFunctionInternal alloc];
      v12 = [(_MTLFunctionInternal *)v11 initWithName:v10 type:v20 libraryData:a1 functionData:&v26 device:a3];
      v13 = v12;
      if (*(a1 + 53))
      {
        v14 = *(a1 + 54);
        v18 = *(a1 + 53);
        v19 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(_MTLFunctionInternal *)v12 setTrackingData:&v18];
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      if (*(a1 + 66))
      {
        if (v13)
        {
          v15 = [(_MTLFunctionInternal *)v13 sourceArchiveOffset];
          if (v15 != -1)
          {
            [(_MTLFunctionInternal *)v13 setSourceArchiveOffset:*(a1 + 65) + v15];
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(v21[0]);
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_185CEBE3C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MTLLibraryDataWithArchive::AdditionalFunctionData::~AdditionalFunctionData(va);
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::newFunctionReflection(MTLLibraryDataWithArchive *this, NSString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](a2, "UTF8String"));
  v3 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(this + 35, &__p);
  v4 = v3;
  if (SHIBYTE(__p.publicArgumentsOffset) < 0)
  {
    operator delete(__p.bitCodeOffset);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_20;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = v4[5];
  __p.bitcodeType = 0;
  __p.pluginData = 0;
  *&__p.renderTargetArrayIndexType = 0;
  __p.functionInputs = 0;
  __p.airScript = 0;
  memset(&__p, 0, 56);
  v14 = 0;
  *v13 = 0u;
  v12 = 0u;
  *v11 = 0u;
  *v10 = 0u;
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(this, v5, &__p, &v9))
  {
    if (__p.airScript)
    {
      dispatch_release(__p.airScript);
    }

    if (__p.functionInputs)
    {
      dispatch_release(__p.functionInputs);
    }

    if (__p.reflectionDataOffset == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*(*this + 152))(this);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(v10[0]);
  }

LABEL_20:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

NSObject *MTLLibraryDataWithArchive::newMetalScript(MTLLibraryDataWithArchive *this)
{
  result = *(this + 79);
  if (result)
  {
    dispatch_retain(result);
    return *(this + 79);
  }

  return result;
}

dispatch_data_t MTLLibraryDataWithArchive::handleMetalScript(MTLLibraryDataWithArchive *this, char *buffer, size_t size)
{
  v3 = size;
  v6 = *(this + 79);
  if (v6)
  {
    dispatch_release(v6);
  }

  result = dispatch_data_create(buffer, v3, 0, *MEMORY[0x1E69E9648]);
  *(this + 79) = result;
  return result;
}

uint64_t MTLLibraryDataWithArchive::extractFlatbuffer(MTLLibraryDataWithArchive *this, char **a2, unsigned int *a3, NSError **a4)
{
  v35[0] = this;
  v35[1] = a4;
  v34 = 0;
  if ((*(*this + 368))(this, &v34, 4) == 4)
  {
    *a2 = 0;
    *a3 = 0;
    v8 = -1;
    v33 = 0;
    *&size[1] = 0;
    size[0] = -1;
    while ((*(*this + 368))(this, &v33, 4) == 4)
    {
      v9 = bswap32(v33);
      v33 = v9;
      if (v9 > 1396855641)
      {
        if (v9 == 1396855642)
        {
          goto LABEL_21;
        }

        if (v9 == 1396856134)
        {
LABEL_15:
          if ((*(*this + 368))(this, &size[2], 4) != 4)
          {
            break;
          }

          v12 = (*(*this + 392))(this);
          v31 = 0;
          v30 = 0;
          if (((*(*this + 224))(this, a2, v12, size[2], 16, &v31, &v30) & 1) == 0)
          {
            goto LABEL_48;
          }

          if (((*(*this + 360))(this, v31) & 1) == 0)
          {
            if (!a4)
            {
              return 0;
            }

            v25 = MEMORY[0x1E695DF20];
            v26 = *MEMORY[0x1E696A578];
            v27 = @"Invalid library file (unexpected end of file)";
            goto LABEL_44;
          }

          v13 = v30;
          if ((*(*this + 368))(this, *a2, v30) != v13)
          {
            if (a4)
            {
              v29 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
              *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v29];
            }

            free(*a2);
LABEL_48:
            *a2 = 0;
            return 0;
          }

          *a3 = v30;
          goto LABEL_26;
        }

        v10 = 1396856154;
      }

      else
      {
        if (v9 <= 1380078917)
        {
          if (v9 == 1380078426)
          {
LABEL_21:
            LOWORD(v31) = 0;
            if ((*(*this + 368))(this, &v31, 2) != 2 || (v14 = v31, (*(*this + 368))(this, &size[1], v31) != v14))
            {
              if (!a4)
              {
                return 0;
              }

              v25 = MEMORY[0x1E695DF20];
              v26 = *MEMORY[0x1E696A578];
              v27 = @"Invalid library file/data (unexpected end of file)";
LABEL_44:
              v28 = [v25 dictionaryWithObject:v27 forKey:v26];
              *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v28];
              return 0;
            }

            goto LABEL_26;
          }

          if (v9 == 1162757204)
          {
            goto LABEL_27;
          }

          goto LABEL_25;
        }

        if (v9 == 1380078918)
        {
          goto LABEL_15;
        }

        v10 = 1380078938;
      }

      if (v9 == v10)
      {
        if ((*(*this + 368))(this, size, 4) != 4)
        {
          break;
        }

        v8 = (*(*this + 392))(this);
        v11 = (*(*this + 392))(this);
        if (((*(*this + 360))(this, v11 + size[0]) & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_26;
      }

LABEL_25:
      v15 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v15 + size[2]) & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_26:
      if (v33 == 1162757204)
      {
LABEL_27:
        result = 1;
        if (size[0] == -1 || v8 == -1)
        {
          return result;
        }

        v17 = (*(*this + 392))(this);
        if ((*(*this + 360))(this, v8))
        {
          if (malloc_type_posix_memalign(a2, 0x10uLL, size[1], 0x37A90BEDuLL))
          {
            return 0;
          }

          v18 = malloc_type_malloc(size[0], 0xE761EB1CuLL);
          if (MTLLibraryDataWithArchive::extractFlatbuffer(char **,unsigned int *,NSError **)::$_0::operator()(v35, v18, size[0]))
          {
            v19 = (*(*this + 232))(this, *a2, size[1], v18, size[0]);
            free(v18);
            if (v19)
            {
              *a3 = 0;
              if ((*(*this + 360))(this, v17))
              {
                return 1;
              }

LABEL_49:
              generateNSError(a4, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
              return 0;
            }
          }

          else
          {
            free(v18);
          }

          free(*a2);
          result = 0;
          *a2 = 0;
          return result;
        }

LABEL_40:
        if (!a4)
        {
          return 0;
        }

        v20 = MEMORY[0x1E695DF20];
        v21 = *MEMORY[0x1E696A578];
        v22 = @"Invalid library file (unexpected end of file)";
        goto LABEL_37;
      }
    }
  }

  if (!a4)
  {
    return 0;
  }

  v20 = MEMORY[0x1E695DF20];
  v21 = *MEMORY[0x1E696A578];
  v22 = @"Invalid library file/data (unexpected end of file)";
LABEL_37:
  v23 = [v20 dictionaryWithObject:v22 forKey:v21];
  v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v23];
  result = 0;
  *a4 = v24;
  return result;
}

BOOL MTLLibraryDataWithArchive::extractFlatbuffer(char **,unsigned int *,NSError **)::$_0::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**a1 + 368))(*a1);
  if (v5 != a3)
  {
    v6 = a1[1];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
      *v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
    }
  }

  return v5 == a3;
}

dispatch_data_t MTLLibraryDataWithArchive::newFunctionReflectionData(MTLLibraryDataWithArchive *this, uint64_t a2)
{
  (*(*this + 360))(this, *(this + 73) + a2);
  memset(size, 0, sizeof(size));
  v6 = 0;
  v3 = (*(*this + 384))(this, &size[1], size, &v6);
  v4 = 0;
  if (v3)
  {
    v4 = dispatch_data_create(*&size[1], size[0], 0, 0);
    free(*&size[1]);
  }

  return v4;
}

uint64_t MTLLibraryDataWithArchive::functionHashes(MTLLibraryDataWithArchive *this)
{
  v2 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 33);
  if (!v3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<NSValue *>::reserve(&v9, *(this + 43));
    for (i = *(this + 42); i; i = *i)
    {
      v8 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:i + 2 objCType:"{?=[32C]}"];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v9, &v8);
    }

    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
    *(this + 33) = v3;
    v5 = v9;
    v6 = v10;
    if (v9 != v10)
    {
      do
      {
      }

      while (v5 != v6);
      v3 = *(this + 33);
      v5 = v9;
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }

  os_unfair_lock_unlock(v2);
  return v3;
}

void sub_185CECB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v11);
  _Unwind_Resume(a1);
}

void MTLLibraryDataWithArchive::readFunctionSourceArchiveMetadata(MTLLibraryDataWithArchive *this, unint64_t a2, _MTLFunction *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if ((*(*this + 360))(this))
  {
    HIDWORD(v30[0]) = 0;
    if ((*(*this + 368))(this, v30 + 4, 4) == 4)
    {
      LODWORD(v30[0]) = 0;
      HIDWORD(v30[0]) = bswap32(HIDWORD(v30[0]));
      if ((*(*this + 368))(this, v30, 4) == 4)
      {
        MEMORY[0x1EEE9AC00](4);
        v20 = v30 - ((v19 + 15) & 0x1FFFFFFF0);
        v21 = (*(*this + 368))(this, v20, LODWORD(v30[0]));
        if (v21 == LODWORD(v30[0]))
        {
          if (LODWORD(v30[0]))
          {
            v26 = 0;
            while (v20[v26])
            {
              if (LODWORD(v30[0]) == ++v26)
              {
                goto LABEL_9;
              }
            }
          }

          else
          {
LABEL_9:
            v20 = 0;
          }

          -[_MTLFunction setUnpackedFilePath:](a3, "setUnpackedFilePath:", [objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{v20), "stringByAppendingPathComponent:", -[_MTLFunction filePath](a3, "filePath")), "stringByStandardizingPath"}]);
        }

        else
        {
          MTLReportFailure(0, "readFunctionSourceArchiveMetadata", 6902, @"Invalid library file/data (unexpected end of file)", v22, v23, v24, v25, v30[0]);
        }

        goto LABEL_18;
      }

      v28 = 6899;
    }

    else
    {
      v28 = 6893;
    }

    MTLReportFailure(0, "readFunctionSourceArchiveMetadata", v28, @"Invalid library file/data (unexpected end of file)", v15, v16, v17, v18, v30[0]);
LABEL_18:
    v29 = *MEMORY[0x1E69E9840];
    return;
  }

  v27 = *MEMORY[0x1E69E9840];

  MTLReportFailure(0, "readFunctionSourceArchiveMetadata", 6888, @"Invalid library file/data (unexpected end of file)", v11, v12, v13, v14, a9);
}

MTLStructType *typeFromBuffer(MTLDataType a1, const char *a2, unsigned int *a3, unsigned int a4)
{
  if (a1 > (MTLDataTypeBool4|MTLDataTypeStruct))
  {
    if (a1 == MTLDataTypePointer)
    {
      v13 = *a3;
      if (*a3 >= a4)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2[v13++];
        *a3 = v13;
      }

      if (v13 >= a4)
      {
        v23 = 0;
      }

      else
      {
        v23 = a2[v13++];
        *a3 = v13;
      }

      v24 = v13 + 8;
      if (v24 <= a4)
      {
        v25 = *&a2[v13];
        *a3 = v24;
        v13 += 8;
      }

      else
      {
        v25 = 0;
      }

      if (v13 >= a4)
      {
        v26 = MTLDataTypeNone;
      }

      else
      {
        v26 = a2[v13];
        *a3 = v13 + 1;
      }

      v27 = typeFromBuffer(v26, a2, a3, a4);
      if ([v27 dataType] == 1)
      {
        IsIndirectArgumentBuffer = structIsIndirectArgumentBuffer(v27);
      }

      else
      {
        IsIndirectArgumentBuffer = 0;
      }

      LOBYTE(v29) = 0;
      v21 = [[MTLPointerType alloc] initWithElementType:v26 elementTypeDescription:v27 access:v14 alignment:v23 dataSize:v25 elementIsIndirectArgumentBuffer:IsIndirectArgumentBuffer isConstantBuffer:v29];

      return v21;
    }

    if (a1 == MTLDataTypeTexture)
    {
      v9 = *a3;
      if (*a3 >= a4)
      {
        v10 = 0;
      }

      else
      {
        v10 = a2[v9++];
        *a3 = v9;
      }

      v16 = v9 + 4;
      if (v16 <= a4)
      {
        v17 = *&a2[v9];
        *a3 = v16;
        v9 += 4;
      }

      else
      {
        v17 = 0;
      }

      if (v9 >= a4)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2[v9];
        *a3 = v9 + 1;
      }

      v21 = [[MTLTextureReferenceType alloc] initWithDataType:v10 textureType:v19 & 0x1F access:(v19 >> 5) & 3 isDepthTexture:v19 >> 7];
      if (v17 >= 2)
      {
        v22 = [[MTLArrayType alloc] initWithArrayLength:v17 elementType:58 stride:0 pixelFormat:0 aluType:0 details:v21];

        return v22;
      }

      return v21;
    }

    goto LABEL_10;
  }

  if (a1 != MTLDataTypeStruct)
  {
    if (a1 == MTLDataTypeArray)
    {
      v5 = *a3;
      v6 = v5 + 4;
      if (v5 + 4 <= a4)
      {
        v7 = *&a2[v5];
        *a3 = v6;
        v8 = v5 + 8;
        v5 += 4;
      }

      else
      {
        v7 = 0;
        v8 = v5 + 4;
        v6 = *a3;
      }

      if (v8 <= a4)
      {
        v15 = *&a2[v5];
        *a3 = v8;
        v6 = v8;
      }

      else
      {
        v15 = 0;
      }

      if (v6 >= a4)
      {
        v18 = MTLDataTypeNone;
      }

      else
      {
        v18 = a2[v6];
        *a3 = v6 + 1;
      }

      v20 = typeFromBuffer(v18, a2, a3, a4);
      v21 = [[MTLArrayType alloc] initWithArrayLength:v7 elementType:v18 stride:v15 pixelFormat:0 aluType:0 details:v20];

      return v21;
    }

LABEL_10:
    v11 = [MTLType alloc];

    return [(MTLType *)v11 initWithDataType:a1];
  }

  return initStructType(a2, a3, a4);
}

void MTLLibraryDataWithSource::readFunctionMetadata(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v4 = (*(a1 + 152) + a2);
    v5 = *(a1 + 160) - a2;
    v23 = v4;
    v24 = v5;
    if (v5 <= 3)
    {
      goto LABEL_26;
    }

    v7 = *v4;
    v25 = 4;
    v8 = 8 * v7;
    MEMORY[0x1EEE9AC00](a1);
    if (v9)
    {
      v22[0] = v9;
      v22[1] = v22;
      v10 = 0;
      do
      {
        v11 = DeserialContext::stringFromSerializedData(&v23);
        v12 = v25;
        if (v24 <= v25 || v24 - v25 <= 3)
        {
          goto LABEL_26;
        }

        v14 = *(v23 + v25);
        v25 += 4;
        if (v24 <= v12 + 4 || v24 - (v12 + 4) <= 3)
        {
          goto LABEL_26;
        }

        v16 = v11;
        v17 = *(v23 + v12 + 4);
        v25 = v12 + 8;
        if ([a3 functionType] == 1)
        {
          v18 = off_1E6EEA270;
        }

        else
        {
          v18 = off_1E6EE9E40;
        }

        *(&v22[v10 / 8] - ((v8 + 15) & 0xFFFFFFFF0)) = [objc_alloc(*v18) initWithName:v16 attributeIndex:v14 & 0x1FFFFFFF attributeType:v17 flags:(v14 >> 29) & 2 | (v14 >> 31) | (v14 >> 27) & 4];
        v10 += 8;
      }

      while (v8 != v10);
      if (LODWORD(v22[0]))
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v22 - ((v8 + 15) & 0xFFFFFFFF0) count:v22[0]];
        [a3 setVertexAttributes:v19];
      }
    }

    if (v24 <= v25 || v24 - v25 <= 3)
    {
LABEL_26:
      abort();
    }

    v20 = *(v23 + v25);
    v25 += 4;
    if (v20)
    {
      operator new[]();
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t MTLLibraryContainer::newLibrary(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  v4 = [_MTLLibrary alloc];

  return [(_MTLLibrary *)v4 initWithLibraryContainer:a1 device:a2];
}

_MTLLibrary *MTLLibraryBuilder::newLibraryWithProxyData(uint64_t a1, _OWORD *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v5 = MTLLibraryBuilder::findOrCreateLibraryContainer(a1, a2, &v10);
  v6 = v5;
  if (v10)
  {
    operator new();
  }

  dispatch_group_wait(*(v5 + 80), 0xFFFFFFFFFFFFFFFFLL);
  if (!v6->var3)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = [[_MTLLibrary alloc] initWithLibraryContainer:v6 device:*(a1 + 32)];
  if (a3)
  {
LABEL_5:
    *a3 = [v6->var8 copy];
  }

LABEL_6:
  MTLLibraryBuilder::releaseCacheEntry(a1, v6);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

_MTLLibrary *MTLLibraryBuilder::newLibraryWithFunctionArray(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithFunctionArray(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v32);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithFunctionArray(a1, 0, a3, a4, a5, a6, a7, a8, v32);
  }

  data = 0;
  v41 = 0;
  v42 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [a3 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v19)
  {
    v20 = *v35;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(a3);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        std::string::basic_string[abi:ne200100]<0>(&__p, [objc_msgSend(v22 "name")]);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v38, &__p);
        v24 = v23;
        if (SHIBYTE(__p.hash[3]) < 0)
        {
          operator delete(*__p.count);
        }

        if ((v24 & 1) == 0)
        {
          if (a4)
          {
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"function names must be unique" forKey:*MEMORY[0x1E696A578]];
            v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v28];
            v27 = 0;
            *a4 = v29;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_23;
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](&data, [v22 bitCodeHash]);
      }

      v19 = [a3 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v25 = 126 - 2 * __clz((v41 - (data + 32)) >> 5);
  if (v41 == data + 32)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(data + 32, v41, v26, 1);
  CC_SHA256_Init(&__p);
  CC_SHA256_Update(&__p, data, (v41 - data) & 0xFFFFFFE0);
  CC_SHA256_Final(md, &__p);
  v27 = MTLLibraryBuilder::newLibraryWithProxyData(a1, md, a4);
LABEL_23:
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(&v38, v39[0]);
  if (data)
  {
    v41 = data;
    operator delete(data);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

id MTLLibraryContainer::functionNames(MTLLibraryContainer *this)
{
  if (this->var5)
  {
    return this->var5;
  }

  else
  {
    return (*(*this->var3 + 40))();
  }
}

id MTLLibraryContainer::externFunctionNames(MTLLibraryContainer *this)
{
  if (this->var6)
  {
    return this->var6;
  }

  else
  {
    return (*(*this->var3 + 48))();
  }
}

uint64_t MTLLibraryCache::findLibraryData(os_unfair_lock_s *a1, _OWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(&a1[2], v9);
  if (&a1[4] == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[8];
    (*(*v6 + 16))(v6);
  }

  os_unfair_lock_unlock(a1);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *MTLCachedLibraryData::swapLibraryInfo(void *result, void *a2)
{
  if (a2)
  {
    v2 = result[17];
    result[17] = a2[5];
    a2[5] = v2;
    v3 = result[12];
    result[12] = *a2;
    *a2 = v3;
    v4 = result[13];
    result[13] = a2[1];
    a2[1] = v4;
    v5 = result[14];
    result[14] = a2[2];
    a2[2] = v5;
    v6 = result[15];
    result[15] = a2[3];
    a2[3] = v6;
    v7 = result[16];
    result[16] = a2[4];
    a2[4] = v7;
  }

  return result;
}

uint64_t MTLCachedLibraryData::MTLCachedLibraryData(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v7 = MTLLibraryData::MTLLibraryData(a1, a3);
  *v7 = &unk_1EF476748;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = a2;
  MTLCachedLibraryData::swapLibraryInfo(v7, a4);
  return a1;
}

void processFunctions(void *a1, void *a2, unsigned int *a3, void *a4, uint64_t a5, unsigned int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = (_MTLCompilePerformanceStatisticsEnabled() & 1) != 0 || a3[13] != 0;
  if (!a2 && v8)
  {
    a2 = [MEMORY[0x1E695DF70] array];
  }

  v9 = a3[5];
  v10 = (a3 + a3[4]);
  v40 = v10;
  v41 = v9;
  if (v9 <= 3)
  {
    goto LABEL_45;
  }

  if ((v9 & 0xFFFFFFFC) == 4)
  {
    goto LABEL_45;
  }

  v30 = a6;
  v31 = v8;
  v36 = a3;
  if (v9 < 9 || (v9 & 0xFFFFFFFC) == 8)
  {
    goto LABEL_45;
  }

  v32 = *v10;
  v37 = v10[1];
  v11 = v10[2];
  v42 = 12;
  if (v11)
  {
    while (1)
    {
      v12 = v42;
      if (v41 <= v42 || v41 - v42 <= 3)
      {
        break;
      }

      v14 = *(v40 + v42);
      v42 += 4;
      if (v41 <= v12 + 4 || v41 - (v12 + 4) <= 3)
      {
        break;
      }

      v16 = *(v40 + v12 + 4);
      v42 = v12 + 8;
      if (v41 <= v12 + 8 || v41 - (v12 + 8) <= 3)
      {
        break;
      }

      v18 = *(v40 + v12 + 8);
      v42 = v12 + 12;
      if (v41 <= v12 + 12 || v41 - (v12 + 12) <= 3)
      {
        break;
      }

      v20 = *(v40 + v12 + 12);
      v42 = v12 + 16;
      if (v41 <= v12 + 16)
      {
        break;
      }

      if (v41 - (v12 + 16) <= 3)
      {
        break;
      }

      v21 = *(v40 + v12 + 16);
      v42 = v12 + 20;
      if (v41 <= v12 + 20)
      {
        break;
      }

      if (v41 - (v12 + 20) <= 3)
      {
        break;
      }

      v22 = *(v40 + v12 + 20);
      v42 = v12 + 24;
      if (v41 <= v12 + 24 || v41 - (v12 + 24) <= 3)
      {
        break;
      }

      v23 = *(v40 + v12 + 24);
      v42 = v12 + 28;
      v24 = DeserialContext::stringFromSerializedData(&v40);
      if ((v14 - 1) > 5)
      {
        v25 = 1;
      }

      else
      {
        v25 = qword_185DE2868[v14 - 1];
      }

      v39 = v25;
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      memset(v47, 0, sizeof(v47));
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v26 = v36[10] + v21;
      v27 = v36[6] + v18;
      v43 = v26;
      *(&v44 + 1) = v27;
      *&v45 = v36[8] + v20;
      *(&v45 + 1) = -1;
      MTLLibraryDataWithSource::getBitCodeHash(a4, v47, v26);
      WORD4(v46) = HIWORD(v32);
      WORD5(v46) = v32;
      WORD6(v46) = HIWORD(v37);
      HIWORD(v46) = v37;
      LOBYTE(v48) = v22;
      BYTE1(v48) = v23 & 0xFC | (0x20100u >> (8 * (v23 & 3)));
      v28 = [[_MTLFunctionInternal alloc] initWithName:v24 type:v39 libraryData:a4 functionData:&v43 device:a5];
      [(_MTLFunctionInternal *)v28 setLineNumber:v16];
      [a1 setObject:v28 forKey:v24];
      [a2 addObject:v24];

      if (!--v11)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    abort();
  }

LABEL_42:
  if (v31)
  {
    processCompileTimeStats(v36, a2, v30);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void processCompileTimeStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v6;
  if (a2)
  {
    [(NSDictionary *)v6 setObject:a2 forKey:MTLLibraryPerformanceKeyFunctionNames];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(NSDictionary *)v7 setObject:v8 forKey:MTLLibraryPerformanceKeyCachedLibrary];
  v9 = *(a1 + 52);
  if (v9)
  {
    if (v9 <= 3)
    {
LABEL_33:
      abort();
    }

    v10 = *(a1 + 48);
    v11 = *(a1 + v10);
    if (v11)
    {
      v12 = (v10 + a1 + 8);
      v13 = v9 - 8;
      v14 = 4;
      do
      {
        if (v14 >= v9 || v13 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_33;
        }

        v15 = *(v12 - 1);
        if (v15 > 3)
        {
          if (v15 <= 5)
          {
            if (v15 == 4)
            {
              v17 = MTLCompileTimeStatisticsKeyFrameworkTotal;
            }

            else
            {
              v17 = MTLCompileTimeStatisticsKeyBackendCompilerBuildRequest;
            }

            goto LABEL_26;
          }

          if (v15 == 7)
          {
            v17 = &MTLCompileTimeStatisticsKeyFrameworkInstrumentation;
LABEL_26:
            v16 = *v17;
            goto LABEL_27;
          }

          v16 = @"Invalid key";
          if (v15 == 6)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v16 = MTLLibraryPerformanceKeyCoreImageSPI;
              goto LABEL_27;
            }

LABEL_21:
            v16 = MTLCompileTimeStatisticsKeyTotal[0];
            goto LABEL_27;
          }

          if (v15)
          {
            v16 = @"Invalid key";
            if (v15 == 1)
            {
              v16 = MTLLibraryPerformanceKeyFunctionSpecialization;
            }
          }

          else
          {
            v16 = MTLLibraryPerformanceKeyTotalFrontendTotalTime;
          }
        }

LABEL_27:
        v18 = v14 + 4;
        if (v14 + 4 >= v9 || v13 <= 7)
        {
          goto LABEL_33;
        }

        --v11;
        v19 = *v12;
        v12 = (v12 + 12);
        -[NSDictionary setObject:forKey:](v7, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19], v16);
        v13 -= 12;
        v14 = v18 + 8;
      }

      while (v11);
    }
  }

  _MTLAddCompileLibraryPerformanceStatistics(v7);
}

uint64_t newErrorWithWarningLog(uint64_t result)
{
  if (result)
  {
    v1 = [@"Compilation succeeded with: \n\n" stringByAppendingString:result];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:v1 forKey:*MEMORY[0x1E696A578]];
    v3 = objc_alloc(MEMORY[0x1E696ABC0]);

    return [v3 initWithDomain:@"MTLLibraryErrorDomain" code:4 userInfo:v2];
  }

  return result;
}

uint64_t MTLLibraryContainer::MTLLibraryContainer(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  atomic_store(1u, (a1 + 8));
  v3 = *a2;
  *(a1 + 28) = a2[1];
  *(a1 + 12) = v3;
  v4 = dispatch_group_create();
  *(a1 + 80) = v4;
  dispatch_group_enter(v4);
  return a1;
}

void MTLLibraryBuilder::initLibraryContainerWithRequestData(uint64_t a1, MTLLibraryContainer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    MTLLibraryBuilder::initLibraryContainerWithRequestData(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  }

  if (!*(a3 + 8))
  {
    MTLLibraryBuilder::initLibraryContainerWithRequestData(a1, a2, a3, a4, a5, a6, a7, a8, v37);
  }

  v13 = _MTLGetLibrariesCache(*(a1 + 32));
  v14 = *(a3 + 32);
  if (!v14)
  {
    v16 = *(a3 + 24);
    if (!v16)
    {
      goto LABEL_11;
    }

LABEL_10:
    [v16 libraryType];
    goto LABEL_11;
  }

  v15 = MTLCompilerFunctionRequest::library(v14);
  v16 = *(a3 + 24);
  if (v16)
  {
    goto LABEL_10;
  }

  if (v15)
  {
    [v15 type];
  }

LABEL_11:
  MTLHashKey::MTLHashKey(&v39, &a2->var2);
  v17 = *(a3 + 16);
  if (v17 <= 0xF && ((1 << v17) & 0xE020) != 0)
  {
    v18 = *(a1 + 32);
    MTLHashKey::MTLHashKey(&v38, &v39);
    v19 = *(a1 + 40);
    v20 = *(a3 + 16);
    v40 = MEMORY[0x1E69E9820];
    v41 = 3321888768;
    v42 = ___ZL40initLibraryContainerWithRequestToArchivePU23objcproto12MTLDeviceSPI11objc_objectP19MTLLibraryContainerRK21MTLLibraryRequestData10MTLHashKeyP15MTLLibraryCachebP11objc_objectU13block_pointerFvvE_block_invoke;
    v43 = &unk_1EF477270;
    v46 = v13;
    MTLHashKey::MTLHashKey(&v47, &v38);
    v49 = v20;
    v50 = v19;
    v48 = a2;
    v44 = v18;
    v45 = a5;
    v21 = *(a3 + 48);
    v22 = *(a3 + 56);
    v23 = *(v13 + 32);
    *(a3 + 64);
    MultiLevelCacheFactory::createAirCache();
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  LibraryData = MTLLibraryCache::findLibraryData(v13, v39.var1.var0);
  v27 = LibraryData;
  if (!LibraryData)
  {
    v34 = *(a3 + 48);
    v35 = *(a3 + 56);
    v36 = *(v13 + 32);
    MultiLevelCacheFactory::createAirCache();
  }

  v28 = *(LibraryData + 19);
  processFunctions(v24, v25, v28, LibraryData, *(a1 + 32), 1u);
  if (!v28[3])
  {
    v32 = 0;
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_22:
    [a4 setStatus:1];
    [a4 setStatus:2];
    goto LABEL_23;
  }

  v29 = v28[2];
  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28 + v29];
  if (!v30)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithCString:v28 + v29 encoding:1];
  }

  v31 = [MEMORY[0x1E695DF20] dictionaryWithObject:v30 forKey:*MEMORY[0x1E696A578]];
  v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v31];
  if (a4)
  {
    goto LABEL_22;
  }

LABEL_23:
  MTLLibraryContainer::init(a2, v27, v24, v25, v32);
  (*(a5 + 16))(a5);

  (*(*v27 + 24))(v27);
  free(*a3);
  *a3 = 0;
  MTLHashKey::~MTLHashKey(&v39);
  v33 = *MEMORY[0x1E69E9840];
}

void sub_185CEFE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, MTLHashKey *a35, MTLHashKey *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1865FF210](v64, 0x10B1C405A97020CLL);
  MTLHashKey::~MTLHashKey(&a30);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a64);
  }

  MTLHashKey::~MTLHashKey(&a53);
  _Unwind_Resume(a1);
}

uint64_t processCompiledLibrary(NSObject *a1, _MTLDevice *a2, int a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, void *a9, uint64_t *a10, uint64_t *a11, void *a12, unsigned __int8 a13)
{
  if (a3 == 7)
  {
    v13 = (a12 != 0) & (a13 >> 1);
  }

  else
  {
    v13 = 0;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  if (a1)
  {
    v18 = dispatch_data_create_map(a1, &buffer_ptr, &size_ptr);
    v20 = buffer_ptr;
    v21 = *buffer_ptr;
    if (*buffer_ptr == 1112298573)
    {
      v22 = 1;
    }

    else
    {
      v22 = v13;
    }

    if ((v22 & 1) == 0)
    {
      v23 = v18;
      v24 = dispatch_data_get_size(a1) > 0x68;
      v18 = v23;
      if (!v24)
      {
        if (a11)
        {
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compilation failed: \n\n compiler response is invalid" forKey:*MEMORY[0x1E696A578]];
          *a11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v25];
          v18 = v23;
        }

        goto LABEL_12;
      }
    }

    if (!v18)
    {
      return 0;
    }

    if (v13)
    {
      v26 = v18;
      __p[0] = dispatch_data_create(v20, size_ptr, 0, 0);
      LOBYTE(v66) = 2;
      std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(a12, &v66);
      dispatch_release(v26);
      return 1;
    }

    if (v21 == 1112298573)
    {
      v29 = v18;
      v27 = processArchiveLibrary(a2, a1, 0, a8, a9, a10, a11, v19);
      v30 = v29;
LABEL_55:
      dispatch_release(v30);
      return v27;
    }

    object = v18;
    if (v20[3])
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithCString:v20 + v20[2] encoding:4];
      v32 = *v20;
      if (*v20)
      {
LABEL_23:
        if ((v32 & 2) != 0)
        {
          if (!processArchiveLibrary(a2, a1, v20, a8, a9, a10, a11, v19))
          {
            v18 = object;
LABEL_12:
            dispatch_release(v18);
            return 0;
          }
        }

        else
        {
          v49 = _MTLGetLibrariesCache(a2);
          if (a7 == 1)
          {
            v33 = v20[11];
            v48 = v20[10];
          }

          else
          {
            v33 = 0;
            v48 = 0;
          }

          v66 = 0;
          v67 = &v66;
          v68 = 0x6012000000;
          v69 = __Block_byref_object_copy__1981;
          v70 = __Block_byref_object_dispose__1982;
          v71 = "e";
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          SerializedLibraryInfo::SerializedLibraryInfo(__p, v20, v20);
          Array = SerializedLibraryInfo::createArray(&v61 + 1);
          v67[10] = Array;
          LibraryInstallName = SerializedLibraryInfo::getLibraryInstallName(__p);
          v67[6] = LibraryInstallName;
          v40 = SerializedLibraryInfo::createArray(v63);
          v67[9] = v40;
          v41 = SerializedLibraryInfo::createArray(v64);
          v67[8] = v41;
          v42 = SerializedLibraryInfo::createArray(v65);
          v67[7] = v42;
          v75[0] = 0;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = ___ZL24processSerializedLibraryPU27objcproto16OS_dispatch_data8NSObjectPU19objcproto9MTLDevice11objc_object19MTLBuildRequestTypeRK10MTLHashKeybP36MTLBuildLibraryFromSourceReplyHeader14MTLLibraryTypeP19NSMutableDictionaryP14NSMutableArrayPP14MTLLibraryDataPP7NSError17MTLCompilerOption_block_invoke;
          v58[3] = &unk_1E6EEC5F0;
          v58[6] = v49;
          v58[7] = a5;
          v58[4] = a1;
          v58[5] = &v66;
          v58[8] = v33;
          v58[9] = v48;
          v59 = a3;
          v43 = MTLLibraryCache::newLibraryData(v49, (a5 + 24), v75, v58);

          processFunctions(a8, a9, v20, v43, a2, a6 ^ 1);
          if (a10)
          {
            *a10 = v43;
          }

          else if (v43)
          {
            (*(*v43 + 24))(v43);
          }

          v75[0] = v65;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
          v75[0] = v64;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
          v75[0] = v63;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
          v75[0] = &v61 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v75);
          if (SBYTE7(v61) < 0)
          {
            operator delete(__p[0]);
          }

          _Block_object_dispose(&v66, 8);
        }

        if (a3 == 7)
        {
          if (a12)
          {
            v44 = v20[25];
            if (v44)
            {
              *__p = 0u;
              v61 = 0u;
              v62 = 1065353216;
              v66 = v20[24];
              deserializeCompilerOutputData(buffer_ptr, v66 + v44, &v66, __p, a12);
              std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(__p);
            }
          }
        }

        if (a6)
        {
          v45 = size_ptr;
          v46 = a4[1];
          v55[0] = *a4;
          v55[1] = v46;
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          addReplyToCompilerCache(v20, v45, v55, a5);
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
          }
        }

        if (!a11)
        {
          goto LABEL_54;
        }

        v37 = newErrorWithWarningLog(v31);
        goto LABEL_53;
      }
    }

    else
    {
      v32 = v21;
      v31 = 0;
      if (v32)
      {
        goto LABEL_23;
      }
    }

    if (v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = @"compiler error log is invalid";
    }

    v35 = [@"Compilation failed: \n\n" stringByAppendingString:v34];
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObject:v35 forKey:*MEMORY[0x1E696A578]];
    if (!a11)
    {
      goto LABEL_54;
    }

    v37 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v36];
LABEL_53:
    *a11 = v37;
LABEL_54:
    v27 = v32 & 1;
    v30 = object;
    goto LABEL_55;
  }

  v28 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiler returned an empty reply" forKey:*MEMORY[0x1E696A578]];
  if (!a11)
  {
    return 0;
  }

  v27 = 0;
  *a11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v28];
  return v27;
}

void ___ZN17MTLLibraryBuilder35initLibraryContainerWithRequestDataEP19MTLLibraryContainerR21MTLLibraryRequestDataP11objc_objectU13block_pointerFvvE_block_invoke(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v10;
  v19 = 0;
  if (a2)
  {
    if (a4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
      if (!v12)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
      }
    }

    else
    {
      v12 = @"empty error message";
    }

    v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:*MEMORY[0x1E696A578]];
    v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v16];
    MTLLibraryContainer::init(*(a1 + 160), 0, 0, 0, v19);
  }

  else
  {
    v13 = *(v8 + 32);
    v14 = *(a1 + 168);
    v15 = *(a1 + 64);
    v17[0] = *(a1 + 56);
    v17[1] = v15;
    v18 = 0;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    processCompiledLibrary(a3, v13, v14, v17, a1 + 72, 1, *(a1 + 152), v9, v10, &v18, &v19, 0, 0);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    MTLLibraryContainer::init(*(a1 + 160), v18, v9, v11, v19);
    if (v18)
    {
      (*(*v18 + 24))(v18);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_185CF07FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

MTLHashKey *__copy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE72c17_ZTSK10MTLHashKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return MTLHashKey::MTLHashKey((a1 + 72), (a2 + 72));
}

void sub_185CF0858(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE72c17_ZTSK10MTLHashKey(uint64_t a1)
{
  MTLHashKey::~MTLHashKey((a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

double downgradeRequestHashAndData(_OWORD *a1, dispatch_data_t *a2, const MTLCompilerFunctionRequest *a3, int a4)
{
  v10 = 0;
  v11 = 0;
  downgradeRequestData(&v10, &v11, a3, a4);
  v7 = v10;
  v8 = v11;
  *a2 = dispatch_data_create(v10, v11, 0, *MEMORY[0x1E69E9648]);

  return generateDowngradeRequestHash(a1, a3, v7, v8);
}

uint64_t downgradeRequest(MTLCompilerFunctionRequest *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = MTLCompilerFunctionRequest::function(a1);
    v8 = MTLCompilerFunctionRequest::library(a1);
    if (v7)
    {
      v8 = v7;
    }

    v12 = [v8 device];
    MTLCompilerFunctionRequest::getOptions(a1);
    v13 = _MTLGetMTLCompilerLLVMVersionForDevice(v12);
    getCompilerConnectionManager(v12, v13);
    operator new();
  }

  v9 = *(a6 + 16);
  v10 = *MEMORY[0x1E69E9840];

  return v9(a6, 1, 0, "Downgrade request was nil!");
}

void MTLLibraryBuilder::newLibraryWithRequestData(os_unfair_lock_s *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 7)
  {
    generateDowngradeRequestHash(md, *(a2 + 32), *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    *md = 0u;
    v13 = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, v8, v9);
    CC_SHA256_Final(md, &c);
  }

  MTLLibraryBuilder::newLibraryWithRequestDataAndHash(a1, a2, md, a3, a4);
  v10 = *MEMORY[0x1E69E9840];
}

double generateDowngradeRequestHash(_OWORD *a1, MTLCompilerFunctionRequest *this, const void *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MTLCompilerFunctionRequest::function(this))
  {
    v8 = [MTLCompilerFunctionRequest::function(this) functionData];
    v9 = *(v8 + 72);
    v17 = *(v8 + 56);
    v18 = v9;
  }

  else
  {
    v10 = [MTLCompilerFunctionRequest::library(this) libraryData];
    v11 = (*(*v10 + 344))(v10);
    v12 = v11[1];
    v17 = *v11;
    v18 = v12;
  }

  createHashForType(7, a3, a4, &v17, this, 0, 0, v16);
  result = *v16;
  v14 = v16[1];
  *a1 = v16[0];
  a1[1] = v14;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLLibraryBuilder::newLibraryWithRequestDataAndHash(os_unfair_lock_s *a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v23 = 0;
  v12 = MTLLibraryBuilder::findOrCreateLibraryContainer(a1, a3, &v23);
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v17 = ___ZN17MTLLibraryBuilder32newLibraryWithRequestDataAndHashER21MTLLibraryRequestDataRK12MTLUINT256_tP11objc_objectU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
  v18 = &unk_1E6EEC008;
  v21 = a1;
  v22 = v12;
  v19 = v13;
  v20 = a5;
  if (v23 == 1)
  {
    MTLLibraryBuilder::initLibraryContainerWithRequestData(a1, v12, a2, a4, block, v9, v10, v11);
  }

  else
  {
    free(*a2);
    *a2 = 0;
    global_queue = dispatch_get_global_queue(0, 0);
    if (v13)
    {
      [v13 setStatus:1];
      [v13 setGroup:v12->var7];
      [v13 setStatus:2];
    }

    var7 = v12->var7;
    if (*(a2 + 44) == 1)
    {
      dispatch_group_wait(var7, 0xFFFFFFFFFFFFFFFFLL);
      v17(block);
    }

    else
    {
      dispatch_group_notify(var7, global_queue, block);
    }
  }
}

void ___ZN17MTLLibraryBuilder32newLibraryWithRequestDataAndHashER21MTLLibraryRequestDataRK12MTLUINT256_tP11objc_objectU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (*(v3 + 48))
  {
    v5 = [[_MTLLibrary alloc] initWithLibraryContainer:v3 device:*(v2 + 4)];
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 32) setStatus:3];

  v4 = *(*(a1 + 56) + 88);
  (*(*(a1 + 40) + 16))();
  MTLLibraryBuilder::releaseCacheEntry(v2, *(a1 + 56));
}

uint64_t MTLLibraryBuilder::findLibraryContainer(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v4 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 8, v7);
  if ((a1 + 16) == v4)
  {
    result = 0;
  }

  else
  {
    result = v4[8];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLLibraryBuilder::insertLibraryContainer(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  result = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier&&>,std::tuple<>>(a1 + 8, v7);
  *(result + 64) = a3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLLibraryBuilder::deleteLibraryCache(MTLLibraryBuilder *this)
{
  os_unfair_lock_lock(this);
  std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::erase(this + 1, *(this + 1), this + 2);

  os_unfair_lock_unlock(this);
}

void MTLLibraryBuilder::newLibraryWithSource(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v198 = a5;
  v261 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithSource(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v176);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithSource(a1, a2, 0, a4, a5, a6, a7, a8, v176);
  }

  if (a4)
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if ((v19 & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithSource(v19, v20, v21, v22, v23, v24, v25, v26, v176);
    }

    if ([a4 libraryType] == 1 && !objc_msgSend(objc_msgSend(a4, "installName"), "length"))
    {
      v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"options.installName cannot be nil or empty when options.libraryType is MTLLibraryTypeDynamic."];
      if (!v108)
      {
        v108 = [MEMORY[0x1E696AEC0] stringWithCString:"options.installName cannot be nil or empty when options.libraryType is MTLLibraryTypeDynamic." encoding:1];
      }

      v109 = [MEMORY[0x1E695DF20] dictionaryWithObject:v108 forKey:*MEMORY[0x1E696A578]];
      v208 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v109];
      (*(a7 + 16))(a7, 0);
      v110 = *MEMORY[0x1E69E9840];

      return;
    }

    if ([a4 optimizationLevel] < 0 || (isKindOfClass = objc_msgSend(a4, "optimizationLevel"), isKindOfClass >= 2))
    {
      MTLLibraryBuilder::newLibraryWithSource(a4);
    }
  }

  if (a2)
  {
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();
    if ((v27 & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithSource(v27, v28, v29, v30, v31, v32, v33, v34, v176);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithSource(isKindOfClass, v12, v13, v14, v15, v16, v17, v18, v176);
  }

  if (a4)
  {
    *&v253 = 0;
    v251 = 0u;
    v252 = 0u;
    *__p = 0u;
    _MTLMessageContextBegin_(__p, "newLibraryWithSource", 9747, a2, 24, "Library From Source Validation");
    [a4 requiredThreadsPerThreadgroup];
    v35 = [a4 maxTotalThreadsPerThreadgroup];
    validateRequiredThreadsPerThreadgroup(__p, 8, a2, v209, v35, "requiredThreadsPerThreadgroup", v36, v37);
    _MTLMessageContextEnd(__p);
    v245 = 0;
    v244 = 0;
    v246 = 0;
    v38 = [a4 preprocessorMacros];
  }

  else
  {
    v38 = 0;
    v245 = 0;
    v244 = 0;
    v246 = 0;
  }

  v39 = getenv("MTL_DISABLE_FASTMATH");
  if (!v39)
  {
    v39 = "0";
  }

  MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled = strtoul(v39, 0, 0) != 0;
  v40 = getenv("MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH");
  if (!v40)
  {
    v40 = "0";
  }

  MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envReplaceFastMathWithRelaxedMath = strtoul(v40, 0, 0) != 0;
  if (a4)
  {
    v194 = [a4 glBufferBindPoints];
    v41 = MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled;
    if ((MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled & 1) == 0)
    {
      v41 = [a4 fastMathEnabled];
    }
  }

  else
  {
    v194 = 0;
    v41 = MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled;
    if ((MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled & 1) == 0)
    {
      v41 = 1;
    }
  }

  v42 = [a2 workaroundNewLibraryWithSourceReplaceFastMathWithRelaxedMath];
  v43 = MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled;
  if (MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled)
  {
    v44 = 0;
  }

  else
  {
    v44 = 2;
  }

  v45 = (v41 != 0) & ~MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled;
  if (a4 && (MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envFastMathDisabled & 1) == 0)
  {
    v44 = [a4 mathMode];
    v43 = [a4 mathFloatingPointFunctions];
    v45 = v41;
  }

  if (v42)
  {
    v46 = v44 == 2;
  }

  else
  {
    v46 = v44 == 2;
    if (MTLLibraryBuilder::newLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,MTLCompileOptions *,BOOL,objc_object *,void({block_pointer})(objc_object  {objcproto10MTLLibrary}*,NSError *))::envReplaceFastMathWithRelaxedMath != 1)
    {
      goto LABEL_37;
    }
  }

  if ((v46 | v45))
  {
    v43 = 1;
    v44 = 1;
  }

LABEL_37:
  if (a4)
  {
    v183 = [a4 debuggingEnabled];
    v179 = [a4 compileSymbolVisibility];
    v193 = [a4 allowReferencingUndefinedSymbols];
    v192 = [a4 maxTotalThreadsPerThreadgroup];
    v242 = 0;
    v241 = 0;
    v243 = 0;
    [a4 requiredThreadsPerThreadgroup];
  }

  else
  {
    v192 = 0;
    v179 = 0;
    v183 = 0;
    v193 = 0;
    v242 = 0;
    v241 = 0;
    v243 = 0;
  }

  v47 = _MTLCompilePerformanceStatisticsEnabled();
  v48 = v47;
  if (a4)
  {
    v49 = v47;
  }

  else
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    v48 = [a4 compileTimeStatisticsEnabled];
    goto LABEL_47;
  }

  if (a4)
  {
LABEL_47:
    v191 = [a4 tracingEnabled];
    goto LABEL_48;
  }

  v191 = 0;
LABEL_48:
  std::string::basic_string[abi:ne200100]<0>(&v240, "");
  v196 = v48;
  v205 = a1;
  v206 = a4;
  v185 = v43;
  v201 = v44;
  if ([a4 libraries] && (v238 = 0u, v239 = 0u, v236 = 0u, v237 = 0u, v50 = objc_msgSend(a4, "libraries"), (v51 = objc_msgSend(v50, "countByEnumeratingWithState:objects:count:", &v236, v260, 16)) != 0))
  {
    v207 = 0;
    v52 = *v237;
    do
    {
      v53 = 0;
      do
      {
        if (*v237 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v236 + 1) + 8 * v53);
        v55 = [v54 airData];
        v218 = v55;
        if (v55)
        {
          size = dispatch_data_get_size(v55);
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v244, &v218);
          v207 += (size + 7) & 0xFFFFFFFC;
        }

        else
        {
          v57 = [v54 libraryPath];
          if ([v57 length])
          {
            std::string::basic_string[abi:ne200100]<0>(&v222, [v57 UTF8String]);
            escapeString(&v222, __src);
            v58 = std::string::insert(__src, 0, "-Wl,");
            v59 = *&v58->__r_.__value_.__l.__data_;
            *&v209[16] = *(&v58->__r_.__value_.__l + 2);
            *v209 = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            v60 = std::string::append(v209, " ");
            v61 = *&v60->__r_.__value_.__l.__data_;
            *&v251 = *(&v60->__r_.__value_.__l + 2);
            *__p = v61;
            v60->__r_.__value_.__l.__size_ = 0;
            v60->__r_.__value_.__r.__words[2] = 0;
            v60->__r_.__value_.__r.__words[0] = 0;
            if ((SBYTE7(v251) & 0x80u) == 0)
            {
              v62 = __p;
            }

            else
            {
              v62 = __p[0];
            }

            if ((SBYTE7(v251) & 0x80u) == 0)
            {
              v63 = BYTE7(v251);
            }

            else
            {
              v63 = __p[1];
            }

            std::string::append(&v240, v62, v63);
            if (SBYTE7(v251) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v209[23] & 0x80000000) != 0)
            {
              operator delete(*v209);
            }

            if ((__src[23] & 0x80000000) != 0)
            {
              operator delete(*__src);
            }

            if (SHIBYTE(v224) < 0)
            {
              operator delete(v222);
            }
          }
        }

        ++v53;
      }

      while (v51 != v53);
      v64 = [v50 countByEnumeratingWithState:&v236 objects:v260 count:16];
      v51 = v64;
    }

    while (v64);
  }

  else
  {
    v207 = 0;
  }

  v65 = v206;
  v66 = v205;
  if (![objc_msgSend(v206 "installName")])
  {
    goto LABEL_90;
  }

  std::string::basic_string[abi:ne200100]<0>(&v222, [objc_msgSend(v206 "installName")]);
  escapeString(&v222, __src);
  v67 = std::string::insert(__src, 0, "-Wl,-install_name -Wl,");
  v68 = *&v67->__r_.__value_.__l.__data_;
  *&v209[16] = *(&v67->__r_.__value_.__l + 2);
  *v209 = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(v209, " ");
  v70 = *&v69->__r_.__value_.__l.__data_;
  *&v251 = *(&v69->__r_.__value_.__l + 2);
  *__p = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v251) & 0x80u) == 0)
  {
    v71 = __p;
  }

  else
  {
    v71 = __p[0];
  }

  if ((SBYTE7(v251) & 0x80u) == 0)
  {
    v72 = BYTE7(v251);
  }

  else
  {
    v72 = __p[1];
  }

  std::string::append(&v240, v71, v72);
  if (SBYTE7(v251) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v209[23] & 0x80000000) != 0)
  {
    operator delete(*v209);
  }

  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
  }

  if (SHIBYTE(v224) < 0)
  {
    operator delete(v222);
    if (v206)
    {
      goto LABEL_91;
    }
  }

  else
  {
LABEL_90:
    if (v206)
    {
LABEL_91:
      v73 = [v206 preserveInvariance];
      goto LABEL_94;
    }
  }

  v73 = 0;
LABEL_94:
  v74 = [a2 workaroundNewLibraryWithSourceImplicitInvariantPosition];
  v190 = [a2 workaroundNewLibraryWithSourceImplicitInvariantPosition];
  if (v206)
  {
    if ([v206 optimizationLevel] == 1)
    {
      v75 = "-Os ";
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    v75 = 0;
  }

  v189 = [v206 enableLogging];
  memset(__src, 0, sizeof(__src));
  v76 = "--driver-mode=metal -x metal ";
  if (!v206)
  {
    v79 = 1;
LABEL_107:
    v81 = _MTLGetMTLCompilerLLVMVersionForDevice(a2);
    if (getDefaultLanguageVersion(int)::pred != -1)
    {
      [MTLCompileOptionsInternal init];
    }

    v82 = getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion;
    if (getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion >= 0x40000)
    {
      v82 = 0x40000;
    }

    if ((v81 - 32023) >= 2)
    {
      v80 = 0;
    }

    else
    {
      v80 = v82;
    }

    goto LABEL_114;
  }

  v77 = [v206 sourceLanguage];
  v78 = "--driver-mode=openclc -x cl ";
  if (v77 != 1)
  {
    v78 = 0;
  }

  v79 = v77 == 0;
  if (v77)
  {
    v76 = v78;
  }

  if ((v206[8] & 1) == 0)
  {
    goto LABEL_107;
  }

  v80 = [v206 languageVersion];
LABEL_114:
  std::string::basic_string[abi:ne200100]<0>(v234, "");
  std::string::basic_string[abi:ne200100]<0>(v232, "");
  v187 = v73 | v74;
  v200 = v76;
  __s = v75;
  v195 = v79;
  if (!v79)
  {
    v91 = 0;
    v92 = 0;
    v93 = v207;
    goto LABEL_192;
  }

  if (!v38 || (v230 = 0u, v231 = 0u, v228 = 0u, v229 = 0u, (v83 = [v38 countByEnumeratingWithState:&v228 objects:v258 count:16]) == 0))
  {
    v84 = 0;
    goto LABEL_133;
  }

  v84 = 0;
  v85 = *v229;
  do
  {
    for (i = 0; i != v83; ++i)
    {
      if (*v229 != v85)
      {
        objc_enumerationMutation(v38);
      }

      v87 = *(*(&v228 + 1) + 8 * i);
      v88 = [v38 objectForKey:v87];
      v84 += [v87 lengthOfBytesUsingEncoding:4] + 2;
      if (v88)
      {
        objc_opt_class();
        v89 = v84 + 1;
        if (objc_opt_isKindOfClass())
        {
          v90 = [objc_msgSend(v88 "stringValue")];
          goto LABEL_126;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = [v88 lengthOfBytesUsingEncoding:4];
LABEL_126:
          v89 += v90;
        }

        v84 = v89 + 1;
        continue;
      }
    }

    v83 = [v38 countByEnumeratingWithState:&v228 objects:v258 count:16];
  }

  while (v83);
LABEL_133:
  v94 = "-fmetal-math-mode=relaxed ";
  if (!v201)
  {
    v94 = "-fmetal-math-mode=safe ";
  }

  if (v201 == 2)
  {
    v95 = "-fmetal-math-mode=fast ";
  }

  else
  {
    v95 = v94;
  }

  MEMORY[0x1865FEFC0](v234, v95);
  if ((v235 & 0x80u) == 0)
  {
    v96 = v235;
  }

  else
  {
    v96 = v234[1];
  }

  if (v185 == 1)
  {
    v97 = "-fmetal-math-fp32-functions=precise ";
  }

  else
  {
    v97 = "-fmetal-math-fp32-functions=fast ";
  }

  MEMORY[0x1865FEFC0](v232, v97);
  v98 = v233;
  v99 = v232[1];
  v100 = [v206 libraryType];
  if ((v98 & 0x80u) == 0)
  {
    v101 = v98;
  }

  else
  {
    v101 = v99;
  }

  v102 = &v101[v96 + v84];
  if (v179 == 1 && v100 == 1)
  {
    v102 += 20;
  }

  if (v193)
  {
    v104 = v102 + 24;
  }

  else
  {
    v104 = v102;
  }

  if (v192)
  {
    v252 = 0u;
    v253 = 0u;
    *__p = 0u;
    v251 = 0u;
    snprintf(__p, 0x3FuLL, "-fmax-total-threads-per-threadgroup=%lu ", v192);
    v104 += strlen(__p);
  }

  v66 = v205;
  v65 = v206;
  v93 = v207;
  v76 = v200;
  if (v241 && v242 && v243)
  {
    v257 = 0u;
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    *__p = 0u;
    snprintf(__p, 0x7FuLL, "-frequired-threads-per-threadgroup=%lu,%lu,%lu ", v241, v242, v243);
    v104 += strlen(__p);
  }

  v105 = v104 + 22;
  if (!v187)
  {
    v105 = v104;
  }

  if (v190)
  {
    v106 = v105 + 30;
  }

  else
  {
    v106 = v105;
  }

  if (__s)
  {
    v106 += strlen(__s);
  }

  if (v189)
  {
    v106 += 23;
  }

  if (HIWORD(v80) <= 2u)
  {
    snprintf(__src, 0x1FuLL, "-std=ios-metal%u.%u ");
  }

  else
  {
    snprintf(__src, 0x1FuLL, "-std=metal%u.%u ");
  }

  v107 = &v106[strlen(__src)];
  if (v191)
  {
    v92 = 0;
    v107 += 24;
  }

  else if ((v183 & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && [a2 shaderDebugInfoCaching])
  {
    v107 += 34;
    v92 = "-debug-info-kind=line-tables-only ";
  }

  else
  {
    v92 = 0;
  }

  v111 = [v206 libraryType];
  v112 = v107 + 16;
  if (!v194)
  {
    v112 = v107;
  }

  if (v111 == 1)
  {
    v112 += 27;
  }

  v113 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
  if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v113 = v240.__r_.__value_.__l.__size_;
  }

  v91 = &v112[v113];
LABEL_192:
  v177 = v92;
  if (v65)
  {
    v114 = [v65 additionalCompilerArguments];
    v115 = v114;
    if (v114)
    {
      v186 = 0;
      v91 += [v114 lengthOfBytesUsingEncoding:4] + 1;
      goto LABEL_197;
    }
  }

  else
  {
    v115 = 0;
  }

  v186 = 1;
LABEL_197:
  v116 = strlen(v76);
  MTLGetCompilerWorkingDir(v226);
  v178 = v115;
  if (v227 < 0)
  {
    if (!v226[1])
    {
      goto LABEL_203;
    }

    v117 = v226[0];
LABEL_202:
    v202 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-working-directory %@ ", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v117, 4)];
    v118 = [v202 lengthOfBytesUsingEncoding:4];
  }

  else
  {
    if (v227)
    {
      v117 = v226;
      goto LABEL_202;
    }

LABEL_203:
    v202 = 0;
    v118 = 0;
  }

  v119 = *(v66 + 48);
  if (v119)
  {
    v118 += [v119 length] + 24;
  }

  v120 = v116 + v91;
  v121 = v116 + v91 + v118 + 1;
  v122 = [a3 lengthOfBytesUsingEncoding:4] + 1;
  v123 = ((v122 + 19) & 0x1FFFFFFFCLL) + v93;
  v182 = v123 + v121;
  v124 = malloc_type_calloc(v182, 1uLL, 0xD7427C7BuLL);
  v125 = v124;
  v126 = v124[3];
  if (v196)
  {
    v127 = 2;
  }

  else
  {
    v127 = 0;
  }

  v124[2] = v121;
  v124[3] = v126 & 0xFFFFFFFD | v127;
  *v124 = v122;
  v124[1] = v93;
  v124[3] = v124[3] & 0xFFFFFFFB | (4 * ([v65 libraryType] == 1));
  v128 = a3;
  if ((atomic_load_explicit(&qword_1EA8D8958, memory_order_acquire) & 1) == 0)
  {
    MTLLibraryBuilder::newLibraryWithSource();
    v93 = v207;
    v128 = a3;
  }

  if (_MergedGlobals && *_MergedGlobals == 49)
  {
    v125[3] |= 1u;
  }

  v180 = v123;
  v181 = v120;
  v184 = v125;
  [v128 getCString:v125 + 4 maxLength:v122 encoding:4];
  v222 = 0;
  v223 = &v222;
  v224 = 0x2020000000;
  v225 = (v125 + v122 + 19) & 0xFFFFFFFFFFFFFFFCLL;
  v218 = 0;
  v219 = &v218;
  v220 = 0x2020000000;
  v204 = v93;
  v221 = v93;
  v129 = v244;
  v130 = v245;
  if (v244 != v245)
  {
    v131 = MEMORY[0x1E69E9820];
    v132 = 1;
    do
    {
      v133 = *v129;
      v134 = v223;
      v135 = v223[3];
      v136 = ((v135 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if ((v132 & 1) == 0)
      {
        v219[3] = (v219[3] + v135 - v136);
      }

      v134[3] = v136;
      *v136 = dispatch_data_get_size(v133);
      v223[3] = v223[3] + 4;
      v219[3] = (v219[3] - 4);
      applier[0] = v131;
      applier[1] = 3221225472;
      applier[2] = ___ZN17MTLLibraryBuilder20newLibraryWithSourceEPU19objcproto9MTLDevice11objc_objectP8NSStringP17MTLCompileOptionsbP11objc_objectU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke;
      applier[3] = &unk_1E6EEC030;
      applier[4] = &v222;
      applier[5] = &v218;
      dispatch_data_apply(v133, applier);
      dispatch_release(v133);
      v132 = 0;
      ++v129;
    }

    while (v129 != v130);
  }

  v137 = ((v125 + v122 + 19) & 0xFFFFFFFFFFFFFFFCLL) + v204;
  if (!v195)
  {
    v148 = 0;
    v149 = v205;
    v150 = v206;
    v151 = v184;
    v152 = v202;
    goto LABEL_277;
  }

  if (!v38 || (v215 = 0u, v216 = 0u, v213 = 0u, v214 = 0u, (v138 = [v38 countByEnumeratingWithState:&v213 objects:v249 count:16]) == 0))
  {
    v139 = 0;
    goto LABEL_238;
  }

  v139 = 0;
  v140 = *v214;
  while (2)
  {
    v141 = 0;
    while (2)
    {
      if (*v214 != v140)
      {
        objc_enumerationMutation(v38);
      }

      v142 = *(*(&v213 + 1) + 8 * v141);
      v143 = [v38 objectForKey:v142];
      *(v137 + v139) = 17453;
      v144 = [v142 lengthOfBytesUsingEncoding:4];
      memcpy((v137 + v139 + 2), [v142 cStringUsingEncoding:4], v144);
      v139 += v144 + 2;
      if (v143)
      {
        *(v137 + v139) = 61;
        objc_opt_class();
        v145 = v139 + 1;
        if (objc_opt_isKindOfClass())
        {
          v146 = [objc_msgSend(v143 "stringValue")];
          v147 = [objc_msgSend(v143 "stringValue")];
          goto LABEL_231;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v146 = [v143 lengthOfBytesUsingEncoding:4];
          v147 = [v143 cStringUsingEncoding:4];
LABEL_231:
          memcpy((v137 + v145), v147, v146);
          v145 += v146;
        }

        *(v137 + v145) = 32;
        v139 = v145 + 1;
      }

      if (v138 != ++v141)
      {
        continue;
      }

      break;
    }

    v138 = [v38 countByEnumeratingWithState:&v213 objects:v249 count:16];
    if (v138)
    {
      continue;
    }

    break;
  }

LABEL_238:
  if ((v235 & 0x80u) == 0)
  {
    v153 = v234;
  }

  else
  {
    v153 = v234[0];
  }

  v154 = strlen(v153);
  memcpy((v137 + v139), v153, v154);
  v155 = v154 + v139;
  if ((v233 & 0x80u) == 0)
  {
    v156 = v232;
  }

  else
  {
    v156 = v232[0];
  }

  v157 = strlen(v156);
  memcpy((v137 + v155), v156, v157);
  v150 = v206;
  v149 = v205;
  v151 = v184;
  v158 = v157 + v155;
  if ([v206 libraryType] == 1 && v179 == 1)
  {
    v159 = v137 + v158;
    *v159 = *"-fvisibility hidden ";
    *(v159 + 16) = 544105828;
    v158 += 20;
  }

  if (v193)
  {
    qmemcpy((v137 + v158), "-Wl,-undefined,suppress ", 24);
    v158 += 24;
  }

  if (v192)
  {
    v252 = 0u;
    v253 = 0u;
    *__p = 0u;
    v251 = 0u;
    snprintf(__p, 0x3FuLL, "-fmax-total-threads-per-threadgroup=%lu ", v192);
    v160 = strlen(__p);
    memcpy((v137 + v158), __p, v160);
    v158 += v160;
  }

  if (v241 && v242 && v243)
  {
    v257 = 0u;
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    *__p = 0u;
    snprintf(__p, 0x7FuLL, "-frequired-threads-per-threadgroup=%lu,%lu,%lu ", v241, v242, v243);
    v161 = strlen(__p);
    memcpy((v137 + v158), __p, v161);
    v158 += v161;
  }

  if (v187)
  {
    qmemcpy((v137 + v158), "-fpreserve-invariance ", 22);
    v158 += 22;
  }

  if (v190)
  {
    qmemcpy((v137 + v158), "-fimplicit-invariant-position ", 30);
    v158 += 30;
  }

  if (__s)
  {
    v162 = strlen(__s);
    memcpy((v137 + v158), __s, v162);
    v158 += v162;
  }

  if (v189)
  {
    qmemcpy((v137 + v158), "-fmetal-enable-logging ", 23);
    v158 += 23;
  }

  v163 = strlen(__src);
  memcpy((v137 + v158), __src, v163);
  v148 = v163 + v158;
  if (v177)
  {
    v164 = strlen(v177);
    memcpy((v137 + v148), v177, v164);
    v148 += v164;
  }

  if (v194)
  {
    *(v137 + v148) = *"-fgl_max_buffer ";
    v148 += 16;
  }

  if (v191)
  {
    qmemcpy((v137 + v148), "-ftracepoint-instrument ", 24);
    v148 += 24;
  }

  if ([v206 libraryType] == 1)
  {
    qmemcpy((v137 + v148), "-Wl,-create-shared-library ", 27);
    v148 += 27;
  }

  v152 = v202;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v240.__r_.__value_.__l.__size_)
    {
      v165 = v240.__r_.__value_.__r.__words[0];
LABEL_276:
      v166 = strlen(v165);
      memcpy((v137 + v148), v165, v166);
      v148 += v166;
    }
  }

  else if (*(&v240.__r_.__value_.__s + 23))
  {
    v165 = &v240;
    goto LABEL_276;
  }

LABEL_277:
  v167 = strlen(v200);
  memcpy((v137 + v148), v200, v167);
  v168 = v167 + v148;
  if ((v186 & 1) == 0)
  {
    v169 = strlen([v178 UTF8String]);
    memcpy((v137 + v168), [v178 UTF8String], v169);
    *(v137 + v169 + v168) = 32;
    v168 += v169 + 1;
  }

  if (v152)
  {
    v170 = strlen([v152 UTF8String]);
    memcpy((v137 + v168), [v152 UTF8String], v170);
    v168 += v170;
  }

  if (*(v149 + 48))
  {
    v171 = (v137 + v168);
    qmemcpy(v171, "-fmodules-cache-path=", 22);
    v172 = strlen([*(v149 + 48) UTF8String]);
    v171 += 22;
    memcpy(v171, [*(v149 + 48) UTF8String], v172);
    *&v171[v172] = 8226;
  }

  v173 = (v151[3] & 4 | v207) != 0;
  if (dyld_program_sdk_at_least())
  {
    v173 = [v150 sourceLanguage] == 0;
  }

  *&v209[16] = 0u;
  v210 = 0u;
  v211 = 0uLL;
  v212 = 0;
  *v209 = v151;
  *&v209[8] = v182;
  if (v173)
  {
    v174 = 13;
  }

  else
  {
    v174 = 3;
  }

  *&v209[16] = v174;
  *&v209[24] = v150;
  DWORD2(v210) = 0;
  BYTE12(v210) = v198;
  *&v211 = 0;
  LOBYTE(v212) = 0;
  *md = 0uLL;
  v248 = 0uLL;
  CC_SHA256_Init(__p);
  CC_SHA256_Update(__p, v151, v180 + v181);
  CC_SHA256_Final(md, __p);
  md[0] ^= v173;
  MTLLibraryBuilder::newLibraryWithRequestDataAndHash(v149, v209, md, a6, a7);
  _Block_object_dispose(&v218, 8);
  _Block_object_dispose(&v222, 8);
  if (v227 < 0)
  {
    operator delete(v226[0]);
  }

  if (v233 < 0)
  {
    operator delete(v232[0]);
  }

  if (v235 < 0)
  {
    operator delete(v234[0]);
  }

  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (v244)
  {
    v245 = v244;
    operator delete(v244);
  }

  v175 = *MEMORY[0x1E69E9840];
}

void sub_185CF28D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  v73 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v73;
    operator delete(v73);
  }

  _Unwind_Resume(a1);
}

void escapeString(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1[23];
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  std::string::reserve(a2, v4 + 4);
  v5 = *(v2 + 1);
  if ((v2[23] & 0x80u) == 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = *v2;
    v6 = v5;
  }

  for (; v6; --v6)
  {
    v7 = *v2;
    if ((v7 - 9) < 5 || ((v7 - 32) <= 0x3C ? (v8 = ((1 << (v7 - 32)) & 0x1000000000000085) == 0) : (v8 = 1), !v8))
    {
      std::string::push_back(a2, 92);
    }

    std::string::push_back(a2, v7);
    ++v2;
  }
}

uint64_t ___ZN17MTLLibraryBuilder20newLibraryWithSourceEPU19objcproto9MTLDevice11objc_objectP8NSStringP17MTLCompileOptionsbP11objc_objectU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorE_block_invoke(uint64_t a1, int a2, int a3, void *__src, size_t __n)
{
  memcpy(*(*(*(a1 + 32) + 8) + 24), __src, __n);
  *(*(*(a1 + 32) + 8) + 24) += __n;
  *(*(*(a1 + 40) + 8) + 24) -= __n;
  return 1;
}

void MTLLibraryBuilder::newLibraryWithDAG(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = __Block_byref_object_copy__10;
  v11[4] = __Block_byref_object_dispose__10;
  v11[5] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = __Block_byref_object_copy__10;
  v10[4] = __Block_byref_object_dispose__10;
  v10[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN17MTLLibraryBuilder17newLibraryWithDAGEP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEPP7NSErrorNSt3__110shared_ptrINSA_6vectorI21stitchedAirDescriptorNSA_9allocatorISD_EEEEEEmPS2_IPU27objcproto16MTLBinaryArchive11objc_objectESJ_P11objc_object_block_invoke;
  v9[3] = &unk_1E6EEC058;
  v9[4] = v11;
  v9[5] = v10;
  v7 = a5[1];
  v8[0] = *a5;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  MTLLibraryBuilder::newLibraryWithDAG(a1, a2, a3, v9, 1, v8, a6, a7);
}

void sub_185CF2D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

id ___ZN17MTLLibraryBuilder17newLibraryWithDAGEP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEPP7NSErrorNSt3__110shared_ptrINSA_6vectorI21stitchedAirDescriptorNSA_9allocatorISD_EEEEEEmPS2_IPU27objcproto16MTLBinaryArchive11objc_objectESJ_P11objc_object_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  v5 = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void MTLLibraryBuilder::newLibraryWithDAG(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    MTLLibraryBuilder::newLibraryWithDAG(a1, 0, a3, a4, a5, a6, a7, a8, v29);
  }

  if (!a3)
  {
    MTLLibraryBuilder::newLibraryWithDAG(a1, a2, a3, a4, a5, a6, a7, a8, v29);
  }

  if (![a3 count])
  {
    MTLLibraryBuilder::newLibraryWithDAG(0, v11, v12, v13, v14, v15, v16, v17, v29);
  }

  *md = 0u;
  v42 = 0u;
  CC_SHA256_Init(&c);
  data = 14;
  CC_SHA256_Update(&c, &data, 4u);
  __p = 0;
  v37 = 0;
  v38 = 0;
  *v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [a3 countByEnumeratingWithState:v32 objects:&v43 count:16];
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(a3);
        }

        std::vector<MTLUINT256_t>::push_back[abi:ne200100](&__p, [*(&v32[1]->var0 + i) bitCodeHash]);
      }

      v18 = [a3 countByEnumeratingWithState:v32 objects:&v43 count:16];
    }

    while (v18);
    v21 = __p;
    v22 = v37;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = 126 - 2 * __clz((v22 - v21) >> 5);
  if (v22 == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v21, v22, v24, 1);
  v31 = (v37 - __p) >> 5;
  CC_SHA256_Update(&c, &v31, 8u);
  CC_SHA256_Update(&c, __p, 32 * v31);
  len = [a2 lengthOfBytesUsingEncoding:4];
  CC_SHA256_Update(&c, &len, 4u);
  v25 = [a2 UTF8String];
  CC_SHA256_Update(&c, v25, len);
  CC_SHA256_Final(md, &c);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v26 = _MTLGetLibrariesCache(*(a1 + 32));
  v27 = *(a1 + 32);
  v28 = *(v26 + 32);
  MultiLevelCacheFactory::createLibraryCache();
}

void sub_185CF345C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a55);
  }

  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

void storeStitchingTrackingData(char a1)
{
  if (storeStitchingTrackingData(unsigned long,NSArray<objc_object  {objcproto11MTLFunction}*> *,std::shared_ptr<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector<stitchedAirDescriptor,NSArray<objc_object  {objcproto11MTLFunction}*> *::allocator<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector>>>,objc_object  {objcproto10MTLLibrary}*)::onceToken == -1)
  {
    if ((a1 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    storeStitchingTrackingData();
    if ((a1 & 2) != 0)
    {
LABEL_4:
      operator new();
    }
  }

  if (storeStitchingTrackingData(unsigned long,NSArray<objc_object  {objcproto11MTLFunction}*> *,std::shared_ptr<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector<stitchedAirDescriptor,NSArray<objc_object  {objcproto11MTLFunction}*> *::allocator<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector>>>,objc_object  {objcproto10MTLLibrary}*)::enableMetalScriptCollection)
  {
    goto LABEL_4;
  }
}

void sub_185CF37EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void ___ZN17MTLLibraryBuilder17newLibraryWithDAGEP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorEbNSt3__110shared_ptrINSD_6vectorI21stitchedAirDescriptorNSD_9allocatorISG_EEEEEEmPS2_IPU27objcproto16MTLBinaryArchive11objc_objectESM_P11objc_object_block_invoke_2(uint64_t a1, uint64_t a2, dispatch_data_t data, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 64);
  v40 = 0;
  if (a2 || !data)
  {
    if (a4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
      if (!v14)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
      }
    }

    else
    {
      v14 = @"empty error message";
    }

    v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:v14 forKey:*MEMORY[0x1E696A578]];
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v23];
    goto LABEL_28;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  v8 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (!v8)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Compiler returned an empty reply."];
    if (!v25)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithCString:"Compiler returned an empty reply." encoding:1];
    }

    v26 = [MEMORY[0x1E695DF20] dictionaryWithObject:v25 forKey:*MEMORY[0x1E696A578]];
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v26];
LABEL_28:
    subrange = 0;
    v21 = 0;
    v40 = v24;
LABEL_29:
    v22 = 1;
    goto LABEL_30;
  }

  v9 = v8;
  v10 = buffer_ptr;
  if (*(buffer_ptr + 13))
  {
    if (*(buffer_ptr + 12))
    {
      v11 = _MTLCompilePerformanceStatisticsEnabled();
      v10 = buffer_ptr;
      if (v11)
      {
        processCompileTimeStats(buffer_ptr, 0, 0);
        v10 = buffer_ptr;
      }
    }
  }

  if ((*v10 & 1) != 0 && (v12 = v10[11], v12))
  {
    subrange = dispatch_data_create_subrange(data, v10[10], v12);
    v10 = buffer_ptr;
  }

  else
  {
    subrange = 0;
  }

  v40 = newErrorFromCompilerLog(v10);
  if ((*(a1 + 128) & 1) == 0)
  {
    v15 = buffer_ptr;
    v16 = *(buffer_ptr + 10);
    size_ptr = *(buffer_ptr + 11);
    v17 = *(a1 + 72);
    v18 = MTLHashKey::MTLHashKey(&v46, a1 + 129);
    (*(*v17 + 48))(v17, &v46, &v15[v16], size_ptr, v18);
    MTLHashKey::~MTLHashKey(&v46);
  }

  dispatch_release(v9);
  if (!subrange)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3321888768;
  v41[2] = ___ZN17MTLLibraryBuilder17newLibraryWithDAGEP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEU13block_pointerFvPU21objcproto10MTLLibrary11objc_objectP7NSErrorEbNSt3__110shared_ptrINSD_6vectorI21stitchedAirDescriptorNSD_9allocatorISG_EEEEEEmPS2_IPU27objcproto16MTLBinaryArchive11objc_objectESM_P11objc_object_block_invoke_3;
  v41[3] = &unk_1EF476908;
  v44 = *(a1 + 129);
  v45 = *(a1 + 145);
  v41[4] = subrange;
  v41[5] = v6;
  v19 = *(a1 + 88);
  v42 = v19;
  v20 = *(a1 + 104);
  v43 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = MTLLibraryCache::newLibraryData(v19, (a1 + 129), &v40, v41);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v22 = 0;
LABEL_30:
  v27 = objc_opt_new();
  MTLLibraryContainer::init(*(a1 + 112), v21, v27, 0, v40);
  v28 = *(a1 + 112);
  if (*(v28 + 48))
  {
    v29 = [[_MTLLibrary alloc] initWithLibraryContainer:v28 device:*(v6 + 4)];
    if (v29)
    {
      if (*(a1 + 32))
      {
        v30 = *(a1 + 72);
        v31 = MTLHashKey::MTLHashKey(&v46, a1 + 129);
        (*(*v30 + 144))(v30, &v46, *(a1 + 96), *(a1 + 40), v29, v31);
        MTLHashKey::~MTLHashKey(&v46);
      }

      v32 = *(a1 + 120);
      v33 = *(a1 + 40);
      v34 = *(a1 + 104);
      v37 = *(a1 + 96);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      storeStitchingTrackingData(v32);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }
  }

  else
  {
    v29 = 0;
  }

  v35 = *(*(a1 + 112) + 88);
  (*(*(a1 + 56) + 16))();
  MTLLibraryBuilder::releaseCacheEntry(v6, *(a1 + 112));

  if ((v22 & 1) == 0)
  {
    dispatch_release(subrange);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t newErrorFromCompilerLog(uint64_t a1)
{
  if (!*(a1 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*a1)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1 + v2];
    v8 = newErrorWithWarningLog(v7);

    return v8;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1 + v2];
    if (!v3)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:a1 + v2 encoding:1];
    }

    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:*MEMORY[0x1E696A578]];
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);

    return [v5 initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v4];
  }
}

uint64_t __copy_helper_block_e8_56c81_ZTSNSt3__110shared_ptrINS_6vectorI21stitchedAirDescriptorNS_9allocatorIS2_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c81_ZTSNSt3__110shared_ptrINS_6vectorI21stitchedAirDescriptorNS_9allocatorIS2_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_72c50_ZTSNSt3__110shared_ptrI22MultiLevelLibraryCacheEE96c81_ZTSNSt3__110shared_ptrINS_6vectorI21stitchedAirDescriptorNS_9allocatorIS2_EEEEEE(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_72c50_ZTSNSt3__110shared_ptrI22MultiLevelLibraryCacheEE96c81_ZTSNSt3__110shared_ptrINS_6vectorI21stitchedAirDescriptorNS_9allocatorIS2_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t MTLLibraryBuilder::newLibraryWithCIFilters(os_unfair_lock_s *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v155 = *MEMORY[0x1E69E9840];
  v102 = [a2 count];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v148 objects:v154 count:16];
  v101 = a3;
  if (v8)
  {
    v9 = 0;
    v10 = *v149;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v149 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v9 += [objc_msgSend(*(*(&v148 + 1) + 8 * i) "name")] + 1;
      }

      v8 = [a2 countByEnumeratingWithState:&v148 objects:v154 count:16];
    }

    while (v8);
    v12 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  v13 = 12 * v102;
  v100 = a5;
  if (v102)
  {
    v14 = (v101 + 8);
    v15 = v102;
    do
    {
      v16 = *v14;
      v14 += 3;
      v13 += 12 * v16;
      --v15;
    }

    while (v15);
  }

  v146 = 0;
  __src = 0;
  v147 = 0;
  v143 = 0;
  v142 = 0;
  v144 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  __p = 0;
  v137 = 0;
  v138 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v17 = [a2 countByEnumeratingWithState:&v129 objects:v153 count:16];
  if (v17)
  {
    v18 = *v130;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v130 != v18)
        {
          objc_enumerationMutation(a2);
        }

        v20 = *(*(&v129 + 1) + 8 * j);
        v21 = [v20 libraryData];
        v22 = v21;
        v23 = __src;
        if (__src != v146)
        {
          while (*v23 != v21)
          {
            v23 += 8;
            if (v23 == v146)
            {
              v23 = v146;
              break;
            }
          }
        }

        if (v146 == v23)
        {
          v104[0] = 0;
          v116 = 0;
          LODWORD(v110) = 0;
          v24 = (*(*v21 + 208))(v21, [v20 bitCodeOffset], objc_msgSend(v20, "bitCodeFileSize"), v104, &v116, &v110);
          v25 = v24;
          if (v116)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0;
          }

          if ((v26 & 1) == 0)
          {
            if (v100)
            {
              v86 = [v20 name];
              if (v25)
              {
                v87 = @"invalid bitcode size 0 for function ";
              }

              else
              {
                v87 = @"unable to locate bitcode for function ";
              }

              v88 = [(__CFString *)v87 stringByAppendingString:v86];
              v89 = [MEMORY[0x1E695DF20] dictionaryWithObject:v88 forKey:*MEMORY[0x1E696A578]];
              *v100 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v89];
            }

            v90 = 0;
            goto LABEL_111;
          }

          v27 = v146;
          if (v146 >= v147)
          {
            v29 = (v146 - __src) >> 3;
            if ((v29 + 1) >> 61)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v30 = (v147 - __src) >> 2;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (v147 - __src >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(&__src, v31);
            }

            *(8 * v29) = v22;
            v28 = 8 * v29 + 8;
            v32 = (8 * v29 - (v146 - __src));
            memcpy(v32, __src, v146 - __src);
            v33 = __src;
            __src = v32;
            v146 = v28;
            v147 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v146 = v22;
            v28 = (v27 + 8);
          }

          v146 = v28;
          std::vector<MTLTagType>::push_back[abi:ne200100](&v142, v104);
          std::vector<MTLTagType>::push_back[abi:ne200100](&v139, &v116);
          v34 = v137;
          if (v137 >= v138)
          {
            v36 = __p;
            v37 = v137 - __p;
            v38 = (v137 - __p) >> 2;
            v39 = v38 + 1;
            if ((v38 + 1) >> 62)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v40 = v138 - __p;
            if ((v138 - __p) >> 1 > v39)
            {
              v39 = v40 >> 1;
            }

            v41 = v40 >= 0x7FFFFFFFFFFFFFFCLL;
            v42 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v41)
            {
              v42 = v39;
            }

            if (v42)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__p, v42);
            }

            *(4 * v38) = v110;
            v35 = 4 * v38 + 4;
            memcpy(0, v36, v37);
            v43 = __p;
            __p = 0;
            v137 = v35;
            v138 = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            *v137 = v110;
            v35 = (v34 + 4);
          }

          v137 = v35;
          LODWORD(v126) = ((v146 - __src) >> 3) - 1;
          std::vector<unsigned int>::push_back[abi:ne200100](&v133, &v126);
        }

        else
        {
          LODWORD(v104[0]) = (v23 - __src) >> 3;
          std::vector<unsigned int>::push_back[abi:ne200100](&v133, v104);
        }
      }

      v17 = [a2 countByEnumeratingWithState:&v129 objects:v153 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v96 = (v146 - __src) >> 3;
  v97 = v12 + v13 + 27;
  v44 = (((v146 - __src) & 0x7FFFFFFF8) + v97) & 0xFFFFFFFFFFFFFFF8;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  if (v96)
  {
    v45 = 0;
    v46 = 0;
    v47 = ((v146 - __src) >> 3);
    do
    {
      if (v45 >= v128)
      {
        v48 = v126;
        v49 = v45 - v126;
        v50 = (v45 - v126) >> 3;
        v51 = v50 + 1;
        if ((v50 + 1) >> 61)
        {
          std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
        }

        v52 = v128 - v126;
        if ((v128 - v126) >> 2 > v51)
        {
          v51 = v52 >> 2;
        }

        if (v52 >= 0x7FFFFFFFFFFFFFF8)
        {
          v53 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(&v126, v53);
        }

        v54 = (v45 - v126) >> 3;
        v55 = (8 * v50);
        v56 = (8 * v50 - 8 * v54);
        *v55 = v44;
        v45 = v55 + 1;
        memcpy(v56, v48, v49);
        v57 = v126;
        v126 = v56;
        v127 = v45;
        v128 = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        *v45++ = v44;
      }

      v127 = v45;
      v58 = (*(v139 + v46) + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = *(__p + v46);
      if (v59)
      {
        v58 = (v59 + 7) & 0xFFFFFFF8;
      }

      v44 += v58;
      ++v46;
    }

    while (v47 != v46);
  }

  v60 = _MTLCompilePerformanceStatisticsEnabled();
  v61 = malloc_type_calloc(v44, 1uLL, 0x5FFAD7DDuLL);
  v62 = v61;
  *v61 = v102;
  v61[1] = v12 + 20;
  if (v60)
  {
    v63 = 512;
  }

  else
  {
    v63 = 0;
  }

  v61[2] = v96;
  v61[3] = v97 & 0xFFFFFFF8;
  v61[4] = v63;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v64 = [a2 countByEnumeratingWithState:&v122 objects:v152 count:16];
  if (v64)
  {
    v65 = v62 + 5;
    v66 = *v123;
    do
    {
      for (k = 0; k != v64; ++k)
      {
        if (*v123 != v66)
        {
          objc_enumerationMutation(a2);
        }

        v68 = *(*(&v122 + 1) + 8 * k);
        [objc_msgSend(v68 "name")];
        v65 = (v65 + [objc_msgSend(v68 "name")] + 1);
      }

      v64 = [a2 countByEnumeratingWithState:&v122 objects:v152 count:16];
    }

    while (v64);
  }

  if (v102)
  {
    v69 = 0;
    v70 = (v62 + v62[1]);
    v71 = v133;
    do
    {
      v72 = (v101 + 24 * v69);
      v73 = *(v72 + 1);
      *v70 = *v72;
      v70[1] = v71[v69];
      v70[2] = v73;
      v70 += 3;
      if (v73 >= 1)
      {
        v74 = *(v72 + 2);
        v75 = v73 & 0x7FFFFFFF;
        v76 = (v74 + 8);
        do
        {
          *v70 = *(v76 - 1);
          v77 = *v76;
          v76 = (v76 + 24);
          *(v70 + 1) = vmovn_s64(v77);
          v70 += 3;
          --v75;
        }

        while (v75);
      }

      ++v69;
    }

    while (v69 != v102);
  }

  v78 = __src;
  if (v146 == __src)
  {
LABEL_94:
    v116 = 0;
    v117 = &v116;
    v118 = 0x3052000000;
    v119 = __Block_byref_object_copy__10;
    v120 = __Block_byref_object_dispose__10;
    v121 = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x3052000000;
    v113 = __Block_byref_object_copy__10;
    v114 = __Block_byref_object_dispose__10;
    v115 = 0;
    v109 = 0;
    v104[0] = v62;
    v104[1] = v44;
    v105 = 5uLL;
    v106 = 0;
    v107 = 0x100000000;
    v108 = 0uLL;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = ___ZN17MTLLibraryBuilder23newLibraryWithCIFiltersEPK7NSArrayPK29MTLImageFilterFunctionInfoSPIP11objc_objectPP7NSError_block_invoke;
    v103[3] = &unk_1E6EEC058;
    v103[4] = &v116;
    v103[5] = &v110;
    MTLLibraryBuilder::newLibraryWithRequestData(a1, v104, a4, v103);
    v85 = v111[5];
    if (v100)
    {
      *v100 = v85;
    }

    else
    {
    }

    v90 = v117[5];
    _Block_object_dispose(&v110, 8);
    _Block_object_dispose(&v116, 8);
  }

  else
  {
    v79 = 0;
    v80 = (v62 + v62[3]);
    while (1)
    {
      v81 = *(v126 + v79);
      *v80 = v81;
      v82 = v62 + v81;
      if (*(__p + v79))
      {
        v83 = (*(*v78[v79] + 240))(v78[v79], v82, *(v142 + v79), *(v139 + v79));
        v80[1] = *(__p + v79);
      }

      else
      {
        v84 = *(v139 + v79);
        v80[1] = v84;
        v83 = (*(*v78[v79] + 216))(v78[v79], v82, *(v142 + v79), v84);
      }

      if ((v83 & 1) == 0)
      {
        break;
      }

      ++v79;
      v78 = __src;
      v80 += 2;
      if (v79 >= (v146 - __src) >> 3)
      {
        goto LABEL_94;
      }
    }

    if (v100)
    {
      if (*(__p + v79))
      {
        v91 = @"unable to copy compressed bitcode for function ";
      }

      else
      {
        v91 = @"unable to copy bitcode for function ";
      }

      v92 = [MEMORY[0x1E695DF20] dictionaryWithObject:v91 forKey:*MEMORY[0x1E696A578]];
      v93 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v92];
      v90 = 0;
      *v100 = v93;
    }

    else
    {
      v90 = 0;
    }
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

LABEL_111:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (__p)
  {
    v137 = __p;
    operator delete(__p);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (__src)
  {
    v146 = __src;
    operator delete(__src);
  }

  v94 = *MEMORY[0x1E69E9840];
  return v90;
}

void sub_185CF4A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a66)
  {
    operator delete(a66);
  }

  if (a69)
  {
    operator delete(a69);
  }

  if (a72)
  {
    STACK[0x200] = a72;
    operator delete(a72);
  }

  v73 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v74;
    operator delete(v74);
  }

  _Unwind_Resume(a1);
}

id ___ZN17MTLLibraryBuilder23newLibraryWithCIFiltersEPK7NSArrayPK29MTLImageFilterFunctionInfoSPIP11objc_objectPP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  v5 = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t MTLLibraryBuilder::newDowngradedLibrary(os_unfair_lock_s *this, const MTLCompilerFunctionRequest *a2, int a3, objc_object *a4, NSError **a5)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  v21 = 0;
  v22 = 0;
  downgradeRequestData(&v21, &v22, a2, a3);
  v15 = 0u;
  v18 = 1;
  v20 = 0;
  v14[0] = v21;
  v14[1] = v22;
  LODWORD(v15) = 7;
  v16 = a2;
  v17 = a3;
  v19 = 0uLL;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN17MTLLibraryBuilder20newDowngradedLibraryEPK26MTLCompilerFunctionRequestjP11objc_objectPP7NSError_block_invoke;
  v13[3] = &unk_1E6EEC058;
  v13[4] = &v29;
  v13[5] = &v23;
  MTLLibraryBuilder::newLibraryWithRequestData(this, v14, a4, v13);
  free(v14[0]);
  v10 = v24[5];
  if (a5)
  {
    *a5 = v10;
  }

  else
  {
  }

  v11 = v30[5];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v11;
}

void sub_185CF4D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t downgradeRequestData(void **a1, unint64_t *a2, const MTLCompilerFunctionRequest *this, int a4)
{
  if (MTLCompilerFunctionRequest::shouldRunFrameworkPasses(this))
  {
    v8 = 0;
  }

  else
  {
    v8 = MTLCompilerFunctionRequest::linkDataSize(this);
  }

  v9 = malloc_type_calloc(v8 + 12, 1uLL, 0x5DBCC725uLL);
  v10 = v9;
  if ((a4 - 32023) >= 2)
  {
    v11 = 0x20000;
  }

  else
  {
    v11 = 131080;
  }

  *v9 = v11;
  v9[1] = a4;
  result = MTLCompilerFunctionRequest::getOptions(this);
  v10[8] = v10[8] & 0xFC | ((result & 0x1000) != 0) | (2 * ((~result & 0x81000) == 0));
  if (v8)
  {
    result = MTLCompilerFunctionRequest::copyLinkData(this, v10 + 12);
  }

  *a1 = v10;
  *a2 = v8 + 12;
  return result;
}

id ___ZN17MTLLibraryBuilder20newDowngradedLibraryEPK26MTLCompilerFunctionRequestjP11objc_objectPP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
  }

  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_185CF5684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185CF5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185CF6C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void sub_185CF75B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, MTLHashKey *a37)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CF7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void removeShaderFunctionCache()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0u;
  v4 = 0u;
  addOrRemoveShaderFunctionCache(1, &v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void sub_185CF8B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, MTLHashKey *a31)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_185CF9D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v29 - 240) = &a29;
  std::vector<-[MTLCompiler generateMachOWithID:binaryEntries:machOSpecializedData:machOType:Path:platform:bitcodeList:compilerTask:completionHandler:]::BinaryItem>::__destroy_vector::operator()[abi:ne200100]((v29 - 240));
  _Unwind_Resume(a1);
}

void sub_185CF9F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  v16 = *(v14 - 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFA640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFA8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFABAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFAE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFDA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, std::__shared_weak_count *a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose((v24 - 232), 8);
  MTLHashKey::~MTLHashKey((v24 - 184));
  std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  if (STACK[0x228])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x228]);
  }

  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_185CFE248(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_185CFEED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  MTLHashKey::~MTLHashKey((v58 - 224));

  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  _Unwind_Resume(a1);
}

void sub_185CFF29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_80c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE96c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE112c148_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypeP12MTLBinaryKeyNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEEEE(void *result, void *a2)
{
  v2 = a2[11];
  result[10] = a2[10];
  result[11] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[15];
  result[14] = a2[14];
  result[15] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_80c173_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypePU27objcproto16OS_dispatch_data8NSObjectNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S5_EEEEEEEE96c49_ZTSNSt3__110shared_ptrI21MultiLevelBinaryCacheEE112c148_ZTSNSt3__110shared_ptrINS_13unordered_mapI18CompilerOutputTypeP12MTLBinaryKeyNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorINS_4pairIKS2_S4_EEEEEEEE(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[13];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[11];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_185CFF8B4(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, MTLHashKey *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  _Block_object_dispose(&a10, 8);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void sub_185CFFB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, MTLHashKey *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  MTLHashKey::~MTLHashKey(&a18);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_185CFFF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1378(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_185D00324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void _MTLAddCompilerServiceCompileTimeStats(void *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  object = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v3 = size_ptr;
  if (size_ptr <= 3)
  {
LABEL_28:
    abort();
  }

  v4 = *buffer_ptr;
  if (v4)
  {
    v5 = buffer_ptr + 8;
    v6 = size_ptr - 8;
    v7 = 4;
    do
    {
      if (v7 >= v3 || v6 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_28;
      }

      v8 = *(v5 - 1);
      if (v8 > 3)
      {
        if (v8 <= 5)
        {
          if (v8 == 4)
          {
            v10 = MTLCompileTimeStatisticsKeyFrameworkTotal;
          }

          else
          {
            v10 = MTLCompileTimeStatisticsKeyBackendCompilerBuildRequest;
          }

          goto LABEL_23;
        }

        if (v8 == 7)
        {
          v10 = &MTLCompileTimeStatisticsKeyFrameworkInstrumentation;
LABEL_23:
          v9 = *v10;
          goto LABEL_24;
        }

        v9 = @"Invalid key";
        if (v8 == 6)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v9 = MTLLibraryPerformanceKeyCoreImageSPI;
            goto LABEL_24;
          }

LABEL_18:
          v9 = MTLCompileTimeStatisticsKeyTotal[0];
          goto LABEL_24;
        }

        if (v8)
        {
          v9 = @"Invalid key";
          if (v8 == 1)
          {
            v9 = MTLLibraryPerformanceKeyFunctionSpecialization;
          }
        }

        else
        {
          v9 = MTLLibraryPerformanceKeyTotalFrontendTotalTime;
        }
      }

LABEL_24:
      v11 = v7 + 4;
      if (v7 + 4 >= v3 || v6 <= 7)
      {
        goto LABEL_28;
      }

      --v4;
      v12 = *v5;
      v5 = (v5 + 12);
      [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", v12), v9}];
      v6 -= 12;
      v7 = v11 + 8;
    }

    while (v4);
  }

  dispatch_release(object);
}

void sub_185D00C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

id reportErrorMessage(id result, __CFString *a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v6 = result;
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = @"Compilation failed";
    }

    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E696A578]];
    result = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"CompilerError" code:v6 userInfo:v8];
    if (a3)
    {
      v9 = *(a3 + 16);

      return v9(a3, 0, 0, result);
    }

    else if (a4)
    {
      *a4 = result;
    }
  }

  return result;
}

NSObject *newSerializedVertexDataForReflection(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 vertexDescriptor])
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v9 = dispatch_data_create_map(a2, &buffer_ptr, &size_ptr);
    if ((*(buffer_ptr + 8) & 2) != 0)
    {
      dispatch_retain(a2);
    }

    else
    {
      v11 = 0;
      a2 = [a1 newSerializedVertexDataWithFlags:a4 | 0x1C options:a5 error:&v11];
    }

    dispatch_release(v9);
  }

  else
  {
    dispatch_retain(a2);
  }

  return a2;
}

void *newRenderPipeline(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, NSObject *a12, void *a13, unint64_t a14, uint64_t a15, MTLRenderPipelineReflectionInternal **a16, NSMutableDictionary *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v26 = a20;
  v68[0] = 0;
  if (a6)
  {
    v27 = [a11 newRenderPipelineWithDescriptor:a13 objectVariant:a9 meshVariant:a6 fragmentVariant:a2 errorMessage:v68];
  }

  else
  {
    v27 = [a11 newRenderPipelineWithDescriptor:a13 vertexVariant:a4 fragmentVariant:a2 errorMessage:v68];
  }

  v28 = v27;
  if (!v27)
  {
    reportErrorMessage(2, v68[0], a20, a21);
    return v28;
  }

  v59 = a8;
  v62 = a4;
  v29 = MTLGetCompilerOptions(a11, a14, a15, 0, 0);
  v30 = v29;
  if ((a14 & 0x40000) == 0)
  {
    v31 = 0;
    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (a6)
  {
    v32 = [a11 pipelineFlagsWithObjectVariant:a9 meshVariant:a6 fragmentVariant:a2];
  }

  else
  {
    v32 = [a11 pipelineFlagsWithVertexVariant:v62 fragmentVariant:a2];
  }

  v34 = v32;
  v35 = 0;
  if (a1 && (v30 & 1) != 0)
  {
    v35 = [*(a1 + 432) objectForKey:&stru_1EF478240];
  }

  v58 = v35;
  if (a5)
  {
    v57 = v34;
    if (a8 && (v30 & 1) != 0)
    {
      v36 = [*(a8 + 432) objectForKey:&stru_1EF478240];
    }

    else
    {
      v36 = 0;
      v38 = 0;
      v39 = 0;
      if ((v30 & 1) == 0)
      {
LABEL_25:
        v31 = [[MTLRenderPipelineReflectionInternal alloc] initWithObjectData:v38 meshData:v39 fragmentData:v58 device:a11 options:a14 flags:v57];
        v26 = a20;
LABEL_26:
        v43 = a9;
        if ((a14 & 0x440000) == 0)
        {
          goto LABEL_46;
        }

        if (a5)
        {
          v44 = [a11 pipelinePerformanceStatisticsWithObjectVariant:a9 meshVariant:a6 fragmentVariant:a2 objectCompileTimeOutput:a10 meshCompileTimeOutput:a7 fragmentCompileTimeOutput:a18];
          if ((a14 & 0x400000) != 0)
          {
            v45 = v26;
            v46 = 0;
LABEL_36:
            if (a3)
            {
              addDriverCompilerPerformanceData(a17, [v44 objectForKey:MTLPipelinePerformanceKeyVertexShader[0]], MTLFunctionTypeVertex);
            }

            if (a1)
            {
              addDriverCompilerPerformanceData(a17, [v44 objectForKey:MTLPipelinePerformanceKeyFragmentShader[0]], MTLFunctionTypeFragment);
            }

            if ((v46 & 1) == 0)
            {
              addDriverCompilerPerformanceData(a17, [v44 objectForKey:MTLPipelinePerformanceKeyMeshShader[0]], MTLFunctionTypeMesh);
            }

            if (v59)
            {
              addDriverCompilerPerformanceData(a17, [v44 objectForKey:MTLPipelinePerformanceKeyObjectShader[0]], MTLFunctionTypeObject);
            }

            v26 = v45;
          }

LABEL_45:
          [(MTLRenderPipelineReflectionInternal *)v31 setPerformanceStatistics:v44];
LABEL_46:
          if ((a14 & 0x200000) != 0)
          {
            goto LABEL_47;
          }

          goto LABEL_55;
        }

        v44 = [a11 pipelinePerformanceStatisticsWithVertexVariant:v62 fragmentVariant:a2 vertexCompileTimeOutput:a19 fragmentCompileTimeOutput:a18];
        if ((a14 & 0x400000) == 0)
        {
          goto LABEL_45;
        }

LABEL_35:
        v45 = v26;
        v46 = 1;
        goto LABEL_36;
      }
    }

    v40 = [objc_msgSend(a13 "gpuCompilerSPIOptions")];
    v41 = *(a5 + 432);
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = &stru_1EF478240;
    }

    v39 = [*(a5 + 432) objectForKey:v42];
    v38 = v36;
    goto LABEL_25;
  }

  if (v30)
  {
    v37 = [*(a3 + 432) objectForKey:&stru_1EF478240];
  }

  else
  {
    v37 = 0;
  }

  v47 = newSerializedVertexDataForReflection(a13, a12, v33, a15, a14);
  v31 = [[MTLRenderPipelineReflectionInternal alloc] initWithVertexData:v37 fragmentData:v58 serializedVertexDescriptor:v47 device:a11 options:a14 flags:v34];
  dispatch_release(v47);
  if ((a14 & 0x440000) != 0)
  {
    v44 = [a11 pipelinePerformanceStatisticsWithVertexVariant:v62 fragmentVariant:a2 vertexCompileTimeOutput:a19 fragmentCompileTimeOutput:a18];
    v43 = a9;
    if ((a14 & 0x400000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

  v43 = a9;
  if ((a14 & 0x200000) != 0)
  {
LABEL_47:
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v64 = 0;
    if (a6)
    {
      [a11 getConstantSamplersBitmasks:&v67 uniqueIdentifiers:&v66 constantSamplerCount:&v65 stride:&v64 forObjectVariant:v43 meshVariant:a6 fragmentVariant:a2];
    }

    else
    {
      [a11 getConstantSamplersBitmasks:&v67 uniqueIdentifiers:&v66 constantSamplerCount:&v65 stride:&v64 forVertexVariant:v62 fragmentVariant:a2];
    }

    if (v65)
    {
      [(MTLRenderPipelineReflectionInternal *)v31 setConstantSamplerDescriptorsFromBitmasks:v67 stride:v64 count:?];
      v48 = objc_alloc(MEMORY[0x1E695DF70]);
      v49 = [v48 initWithCapacity:v65];
      if (v65)
      {
        for (i = 0; i < v65; ++i)
        {
          [v49 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedLongLong:", v66[i]), i}];
        }
      }

      [(MTLRenderPipelineReflectionInternal *)v31 setConstantSamplerUniqueIdentifiers:v49];

      free(v67);
      free(v66);
    }
  }

LABEL_55:
  if ((a14 & 0x1000000) != 0)
  {
    if (v62)
    {
      v51 = -[MTLDebugInstrumentationData initWithData:]([MTLDebugInstrumentationData alloc], "initWithData:", [v62 debugInstrumentationData]);
      [v28 setVertexDebugInstrumentationData:v51];
    }

    if (a2)
    {
      v52 = -[MTLDebugInstrumentationData initWithData:]([MTLDebugInstrumentationData alloc], "initWithData:", [a2 debugInstrumentationData]);
      [v28 setFragmentDebugInstrumentationData:v52];
    }

    if (v43)
    {
      v53 = -[MTLDebugInstrumentationData initWithData:]([MTLDebugInstrumentationData alloc], "initWithData:", [v43 debugInstrumentationData]);
      [v28 setObjectDebugInstrumentationData:v53];
    }

    if (a6)
    {
      v54 = -[MTLDebugInstrumentationData initWithData:]([MTLDebugInstrumentationData alloc], "initWithData:", [a6 debugInstrumentationData]);
      [v28 setMeshDebugInstrumentationData:v54];
    }
  }

  if (v26)
  {
    (*(v26 + 16))(v26, v28, v31, 0);

    return 0;
  }

  else if (a16)
  {
    v55 = v31;
    *a16 = v31;
  }

  else if (v31)
  {
  }

  return v28;
}

uint64_t addDriverCompilerPerformanceData(NSMutableDictionary *a1, NSMutableDictionary *a2, MTLFunctionType a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 <= MTLFunctionTypeObject && ((1 << a3) & 0x186) != 0)
  {
    v5 = MTLPipelinePerformanceKeyVertexShader;
    if (a3 != MTLFunctionTypeVertex)
    {
      v5 = MTLPipelinePerformanceKeyFragmentShader;
    }

    if (a3 == MTLFunctionTypeObject)
    {
      v5 = MTLPipelinePerformanceKeyObjectShader;
    }

    if (a3 == MTLFunctionTypeMesh)
    {
      v5 = MTLPipelinePerformanceKeyMeshShader;
    }

    v6 = *v5;
    v7 = [(NSMutableDictionary *)a1 objectForKey:*v5];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)a1 setObject:v7 forKey:v6];
    }
  }

  else
  {
    v7 = a1;
  }

  result = [-[NSMutableDictionary objectForKey:](v7 objectForKey:{MTLCompileTimeStatisticsKeyCachedFunction[0]), "BOOLValue"}];
  if ((result & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)a2 objectForKey:MTLPipelinePerformanceKeyCompileTimeStatistics[0]];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    result = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (result)
    {
      v10 = result;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          -[NSMutableDictionary setObject:forKey:](v7, "setObject:forKey:", [v9 objectForKey:*(*(&v14 + 1) + 8 * v12)], *(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        result = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v10 = result;
      }

      while (result);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185D024B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_185D02C20(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_185D02DAC(_Unwind_Exception *a1, uint64_t a2, RequiredFunctionKeys *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  RequiredFunctionKeys::~RequiredFunctionKeys(&a11);
  v13 = *(v11 - 88);
  if (v13)
  {
    dispatch_release(v13);
  }

  _Unwind_Resume(a1);
}

void sub_185D02FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

dispatch_data_t VariantEntry::newSerializedKeyWithAdditionalData(VariantEntry *this, void *a2, size_t a3)
{
  var1 = this->var1;
  var2 = this->var2;
  if (a2 && a3)
  {
    v8 = var1 + a3;
    v9 = malloc_type_malloc(var1 + a3 + var2, 0x100004077774924uLL);
    memcpy(v9, this->var0, this->var1);
    memcpy(&v9[this->var1], a2, a3);
    memcpy(&v9[this->var1 + a3], &this->var0[this->var1], this->var2);
    v10 = dispatch_data_create(v9, v8 + var2, 0, 0);
    free(v9);
    return v10;
  }

  else
  {
    var0 = this->var0;

    return dispatch_data_create(var0, var2 + var1, 0, 0);
  }
}

uint64_t setLinkedFunctionsForRequest(MTLCompileFunctionRequestData *a1, MTLLinkedFunctions *a2)
{
  if (a2)
  {
    [(MTLCompileFunctionRequestData *)a1 setVisibleFunctions:[(MTLLinkedFunctions *)a2 functions]];
    [(MTLCompileFunctionRequestData *)a1 setVisibleFunctionGroups:[(MTLLinkedFunctions *)a2 groups]];
    v4 = [(MTLLinkedFunctions *)a2 privateFunctions];
  }

  else
  {
    [(MTLCompileFunctionRequestData *)a1 setVisibleFunctions:0];
    [(MTLCompileFunctionRequestData *)a1 setVisibleFunctionGroups:0];
    v4 = 0;
  }

  return [(MTLCompileFunctionRequestData *)a1 setPrivateVisibleFunctions:v4];
}

void VariantEntry::insertVariant(uint64_t a1, void *a2, uint64_t a3, void *a4, NSObject *a5)
{
  os_unfair_lock_lock((a1 + 32));
  if (!*(a1 + 48))
  {
    if (a2)
    {
      *(a1 + 48) = a2;
      v10 = a2;
    }

    *(a1 + 56) = a3;

    *(a1 + 64) = [a4 copy];
    v11 = *(a1 + 72);
    if (v11)
    {
      dispatch_release(v11);
    }

    *(a1 + 72) = a5;
    if (a5)
    {
      dispatch_retain(a5);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  os_unfair_lock_unlock((a1 + 32));
}

void VariantEntry::waitOrNotify(uint64_t a1, int a2, dispatch_queue_t queue, void (**block)(dispatch_block_t))
{
  v5 = *(a1 + 40);
  if (a2)
  {

    dispatch_group_notify(v5, queue, block);
  }

  else
  {
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v6 = block[2];

    v6(block);
  }
}

void sub_185D03CD0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_185D03E60(_Unwind_Exception *a1, uint64_t a2, RequiredFunctionKeys *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  RequiredFunctionKeys::~RequiredFunctionKeys(&a11);
  v13 = *(v11 - 88);
  if (v13)
  {
    dispatch_release(v13);
  }

  _Unwind_Resume(a1);
}

void sub_185D040A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D04C20(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_185D04DD8(_Unwind_Exception *a1, uint64_t a2, RequiredFunctionKeys *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  RequiredFunctionKeys::~RequiredFunctionKeys(&a11);
  v13 = *(v11 - 88);
  if (v13)
  {
    dispatch_release(v13);
  }

  _Unwind_Resume(a1);
}

void sub_185D05024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void initTimebaseInfo(void)
{
  if (initTimebaseInfo(void)::onceToken != -1)
  {
    initTimebaseInfo();
  }
}

double ___Z16initTimebaseInfov_block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  gMachTimeToNS = *&result;
  return result;
}

void sub_185D062E0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  if (STACK[0x3E0])
  {
    dispatch_release(STACK[0x3E0]);
  }

  _Block_object_dispose(&STACK[0x3F8], 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1412(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  result = a2[5];
  a1[6].n128_u64[0] = a2[6].n128_u64[0];
  a1[5] = result;
  return result;
}

void __Block_byref_object_dispose__1413(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_185D072E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a64, 8);
  if (STACK[0x208])
  {
    dispatch_release(STACK[0x208]);
  }

  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose((v64 - 232), 8);
  _Block_object_dispose((v64 - 200), 8);
  _Block_object_dispose((v64 - 168), 8);
  _Block_object_dispose((v64 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_185D08800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a66, 8);
  if (STACK[0x218])
  {
    dispatch_release(STACK[0x218]);
  }

  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v66 - 232), 8);
  _Block_object_dispose((v66 - 200), 8);
  _Block_object_dispose((v66 - 168), 8);
  _Block_object_dispose((v66 - 136), 8);
  _Unwind_Resume(a1);
}

void *_MTLNewMPSGraphCompilationDescriptor(uint64_t a1)
{
  getMPSGraphClassByName("MPSGraphCompilationDescriptor");
  v2 = objc_opt_new();
  [v2 setWaitForCompilationCompletion:1];
  [v2 setCompilerOptions:{objc_msgSend(v2, "compilerOptions") | 0x60000}];
  if (a1 == 2)
  {
    v7 = v2;
    v8 = 0;
LABEL_7:
    [v7 setOptimizationLevel:v8];
    v9 = v2;
    v10 = 0;
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      MTLReportFailure(0, "_MTLNewMPSGraphCompilationDescriptor", 21532, @"Unsupported enum value", v3, v4, v5, v6, v12);
      return v2;
    }

    v7 = v2;
    v8 = 1;
    goto LABEL_7;
  }

  [v2 setOptimizationLevel:1];
  v9 = v2;
  v10 = 1;
LABEL_8:
  [v9 setOptimizationProfile:v10];
  return v2;
}

uint64_t fileSize(NSURL *a1, NSString *a2)
{
  v2 = [[(NSURL *)a1 URLByAppendingPathComponent:a2] path];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v3 fileExistsAtPath:v2])
  {
    return 0;
  }

  v4 = [v3 attributesOfItemAtPath:v2 error:0];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E696A3B8];
  if (![v4 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]])
  {
    return 0;
  }

  v7 = [v5 objectForKeyedSubscript:v6];

  return [v7 integerValue];
}

void sub_185D09E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryDataWithArchive::setStitchedLibraryTrackingData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 432);
  *(a1 + 424) = v3;
  *(a1 + 432) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MTLLibraryDataWithSource::~MTLLibraryDataWithSource(dispatch_object_t *this)
{
  *this = &unk_1EF476B40;
  dispatch_release(this[23]);
  dispatch_release(this[22]);

  MTLCachedLibraryData::~MTLCachedLibraryData(this);
}

{
  *this = &unk_1EF476B40;
  dispatch_release(this[23]);
  dispatch_release(this[22]);
  MTLCachedLibraryData::~MTLCachedLibraryData(this);

  JUMPOUT(0x1865FF210);
}

BOOL MTLLibraryDataWithSource::setPosition(MTLLibraryDataWithSource *this, unint64_t a2)
{
  v2 = *(this + 20);
  if (v2 >= a2)
  {
    *(this + 21) = a2;
  }

  return v2 >= a2;
}

size_t MTLLibraryDataWithSource::readBytes(MTLLibraryDataWithSource *this, void *__dst, size_t a3)
{
  v3 = *(this + 21);
  if (v3 + a3 > *(this + 20))
  {
    return 0;
  }

  v4 = a3;
  memcpy(__dst, (*(this + 19) + v3), a3);
  *(this + 21) += v4;
  return v4;
}

void MTLLibraryDataWithGLIR::~MTLLibraryDataWithGLIR(dispatch_object_t *this)
{
  *this = &unk_1EF476CE8;
  dispatch_release(this[16]);
  dispatch_release(this[15]);

  MTLLibraryData::~MTLLibraryData(this);
}

{
  *this = &unk_1EF476CE8;
  dispatch_release(this[16]);
  dispatch_release(this[15]);
  MTLLibraryData::~MTLLibraryData(this);

  JUMPOUT(0x1865FF210);
}

BOOL MTLLibraryDataWithGLIR::setPosition(MTLLibraryDataWithGLIR *this, unint64_t a2)
{
  v2 = *(this + 13);
  if (v2 >= a2)
  {
    *(this + 14) = a2;
  }

  return v2 >= a2;
}

size_t MTLLibraryDataWithGLIR::readBytes(MTLLibraryDataWithGLIR *this, void *__dst, size_t a3)
{
  v3 = *(this + 14);
  if (v3 + a3 > *(this + 13))
  {
    return 0;
  }

  v4 = a3;
  memcpy(__dst, (*(this + 12) + v3), a3);
  *(this + 14) += v4;
  return v4;
}

uint64_t ___ZL25getDefaultLanguageVersioni_block_invoke()
{
  if (_getForcedLanguageVersion::onceToken != -1)
  {
    _getForcedLanguageVersion_cold_1();
  }

  v0 = _getForcedLanguageVersion::major;
  v1 = _getForcedLanguageVersion::minor;
  getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 65537;
  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 65538;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 0x20000;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 131073;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 131074;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 131075;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 131076;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 196608;
  }

  v2 = v1 | (v0 << 16);
  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 196609;
  }

  if (dyld_program_sdk_at_least())
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 196610;
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = 0x40000;
  }

  if (v2)
  {
    v4 = getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion;
    if (getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion >= v2)
    {
      v4 = v2;
    }

    getDefaultLanguageVersion(int)::maxAllowedMTLLanguageVersion = v4;
  }

  return result;
}

void *MTLLibraryDataWithGLIR::MTLLibraryDataWithGLIR(void *a1, NSObject *a2)
{
  v4 = MTLLibraryData::MTLLibraryData(a1, 0);
  *v4 = &unk_1EF476CE8;
  v4[14] = 0;
  v4[15] = a2;
  dispatch_retain(a2);
  buffer_ptr = 0;
  a1[16] = dispatch_data_create_map(a2, &buffer_ptr, a1 + 13);
  a1[12] = buffer_ptr;
  return a1;
}

MTLStructType *initStructType(const char *a1, unsigned int *a2, unsigned int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3 >= a3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v26;
    v7 = 0;
  }

  else
  {
    v7 = a1[v3];
    *a2 = v3 + 1;
    MEMORY[0x1EEE9AC00](a1);
    v9 = &v27 - v8;
    if (v7)
    {
      v10 = 0;
      v28 = a3;
      v29 = &v27 - v8;
      do
      {
        v11 = *a2;
        if (v11 >= a3)
        {
LABEL_9:
          v14 = 0;
          *a2 = v11;
        }

        else
        {
          v12 = v11 + 1;
          v13 = *a2;
          while (a1[v13])
          {
            v13 = v12++;
            if (v12 - a3 == 1)
            {
              LODWORD(v11) = a3;
              goto LABEL_9;
            }
          }

          *a2 = v12;
          v14 = &a1[v11];
        }

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = "";
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
        v17 = *a2;
        if (*a2 >= a3)
        {
          v18 = MTLDataTypeNone;
        }

        else
        {
          v18 = a1[v17++];
          *a2 = v17;
        }

        v19 = v17;
        v20 = v17 + 4;
        if (v20 <= v28)
        {
          v21 = *&a1[v19];
          *a2 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = typeFromBuffer(v18, a1, a2, a3);
        v23 = [[MTLStructMemberInternal alloc] initWithName:v16 offset:0 dataType:v18 pixelFormat:0 aluType:0 indirectArgumentIndex:v21 render_target:0xFFFFFFFFLL raster_order_group:0xFFFFFFFFLL details:v22];
        v9 = v29;
        *&v29[8 * v10] = v23;

        ++v10;
      }

      while (v10 != v7);
    }
  }

  result = [[MTLStructType alloc] initWithMembers:v9 count:v7];
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LibraryWithData::copyCompressedBitCode(MTLLibraryData *this, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v10);
  (*(*this + 360))(this, a3);
  v11 = (*(*this + 232))(this, a2, a5, *(this + 81) + *(this + 83), a4);
  v12 = *(this + 83) + a4;
  if (*(this + 82) >= v12)
  {
    *(this + 83) = v12;
  }

  os_unfair_lock_unlock(v10);
  return v11;
}

void ___ZL40initLibraryContainerWithRequestToArchivePU23objcproto12MTLDeviceSPI11objc_objectP19MTLLibraryContainerRK21MTLLibraryRequestData10MTLHashKeyP15MTLLibraryCachebP11objc_objectU13block_pointerFvvE_block_invoke(uint64_t a1, NSObject *a2, NSError *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (a2)
  {
    v5 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = ___ZL40initLibraryContainerWithRequestToArchivePU23objcproto12MTLDeviceSPI11objc_objectP19MTLLibraryContainerRK21MTLLibraryRequestData10MTLHashKeyP15MTLLibraryCachebP11objc_objectU13block_pointerFvvE_block_invoke_2;
    v11[3] = &unk_1EF477238;
    v11[6] = v5;
    MTLHashKey::MTLHashKey(&v12, (a1 + 56));
    v13 = *(a1 + 144);
    v14 = *(a1 + 148);
    v6 = *(a1 + 32);
    v11[4] = a2;
    v11[5] = v6;
    v7 = MTLLibraryCache::newLibraryData(v5, (a1 + 80), &v10, v11);
    MTLHashKey::~MTLHashKey(&v12);
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_new();
  MTLLibraryContainer::init(*(a1 + 136), v7, v8, 0, v10);
  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    dispatch_release(a2);
  }

  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void ___ZL40initLibraryContainerWithRequestToArchivePU23objcproto12MTLDeviceSPI11objc_objectP19MTLLibraryContainerRK21MTLLibraryRequestData10MTLHashKeyP15MTLLibraryCachebP11objc_objectU13block_pointerFvvE_block_invoke_1965(uint64_t a1, uint64_t a2, dispatch_data_t data, uint64_t a4)
{
  if (a2 || !data)
  {
    if (a4)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
      if (!v13)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:1];
      }
    }

    else
    {
      v13 = @"empty error message";
    }

    v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v13 forKey:*MEMORY[0x1E696A578]];
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = 3;
    goto LABEL_26;
  }

  size_ptr = 0;
  buffer_ptr = 0;
  v7 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Compiler returned an empty reply."];
    if (!v20)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithCString:"Compiler returned an empty reply." encoding:1];
    }

    v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:*MEMORY[0x1E696A578]];
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = 2;
LABEL_26:
    [v18 initWithDomain:@"MTLLibraryErrorDomain" code:v19 userInfo:v17];
    subrange = 0;
    goto LABEL_27;
  }

  v8 = v7;
  v9 = buffer_ptr;
  if (*(buffer_ptr + 13))
  {
    if (*(buffer_ptr + 12))
    {
      v10 = _MTLCompilePerformanceStatisticsEnabled();
      v9 = buffer_ptr;
      if (v10)
      {
        processCompileTimeStats(buffer_ptr, 0, 0);
        v9 = buffer_ptr;
      }
    }
  }

  if ((*v9 & 1) != 0 && (v11 = v9[11], v11))
  {
    subrange = dispatch_data_create_subrange(data, v9[10], v11);
    v9 = buffer_ptr;
  }

  else
  {
    subrange = 0;
  }

  newErrorFromCompilerLog(v9);
  if ((*(a1 + 144) & 1) == 0)
  {
    v15 = size_ptr;
    v14 = buffer_ptr;
    v16 = *(a1 + 56);
    v21[0] = *(a1 + 48);
    v21[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    addReplyToCompilerCache(v14, v15, v21, a1 + 64);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  dispatch_release(v8);
LABEL_27:
  (*(*(a1 + 40) + 16))(*(a1 + 40), subrange);
}

void sub_185D0AF14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t addReplyToCompilerCache(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if ((*a1 & 2) != 0)
  {
    v6 = *(a1 + 44);
    v5 = a1 + *(a1 + 40);
  }

  else
  {
    v6 = a2 - (*(a1 + 52) + *(a1 + 100));
    *(a1 + 96) = 0;
    *(a1 + 48) = 0;
  }

  return (*(**a3 + 48))(*a3, a4, v5, v6);
}

MTLHashKey *__copy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE64c17_ZTSK10MTLHashKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return MTLHashKey::MTLHashKey((a1 + 64), (a2 + 64));
}

void sub_185D0AFD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrI18MultiLevelAirCacheEE64c17_ZTSK10MTLHashKey(uint64_t a1)
{
  MTLHashKey::~MTLHashKey((a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

BOOL processArchiveLibrary(uint64_t a1, dispatch_data_t data, uint64_t a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t a8)
{
  subrange = data;
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14 = *(a3 + 44);
    if (!v14)
    {
      v23 = 0;
      *a6 = 0;
      goto LABEL_20;
    }

    v28 = a6;
    subrange = dispatch_data_create_subrange(data, *(a3 + 40), v14);
  }

  else
  {
    v28 = a6;
  }

  object = subrange;
  v15 = MTLLibraryBuilder::newLibraryWithData(*(a1 + 440), a1, subrange, 0, a7, a6, a7, a8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [(_MTLLibrary *)v15 functionNames];
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        [a5 addObject:{v21, object}];
        if (a4)
        {
          v22 = [(_MTLLibrary *)v15 newFunctionWithName:v21];
          [a4 setObject:v22 forKey:v21];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v23 = v15 != 0;
  if (v28 && v15)
  {
    v24 = [(_MTLLibrary *)v15 libraryData];
    (*(*v24 + 16))(v24);
    *v28 = v24;
  }

  if (a3)
  {
    dispatch_release(object);
  }

LABEL_20:
  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

__n128 __Block_byref_object_copy__1981(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

uint64_t SerializedLibraryInfo::getLibraryInstallName(SerializedLibraryInfo *this)
{
  v1 = this;
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (*(this + 1))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(this + 23))
  {
    return 0;
  }

LABEL_3:
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  return [v2 initWithUTF8String:v1];
}

void SerializedLibraryInfo::SerializedLibraryInfo(SerializedLibraryInfo *this, unsigned int *a2, uint64_t a3)
{
  *(this + 3) = 0u;
  v6 = (this + 48);
  v7 = (this + 24);
  v8 = (this + 72);
  *(this + 6) = 0u;
  v9 = (this + 96);
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2[15])
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, (a3 + a2[14]));
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v14;
  }

  v10 = a2[17];
  if (v10)
  {
    SerializedLibraryInfo::deserializeStringArray((a3 + a2[16]), v10, &v14);
    std::vector<std::string>::__vdeallocate(v7);
    *(this + 1) = v14;
    memset(&v14, 0, sizeof(v14));
    v15 = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  v11 = a2[19];
  if (v11)
  {
    SerializedLibraryInfo::deserializeStringArray((a3 + a2[18]), v11, &v14);
    std::vector<std::string>::__vdeallocate(v6);
    *(this + 2) = v14;
    memset(&v14, 0, sizeof(v14));
    v15 = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  v12 = a2[21];
  if (v12)
  {
    SerializedLibraryInfo::deserializeStringArray((a3 + a2[20]), v12, &v14);
    std::vector<std::string>::__vdeallocate(v8);
    *(this + 3) = v14;
    memset(&v14, 0, sizeof(v14));
    v15 = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  v13 = a2[23];
  if (v13)
  {
    SerializedLibraryInfo::deserializeStringArray((a3 + a2[22]), v13, &v14);
    std::vector<std::string>::__vdeallocate(v9);
    *(this + 4) = v14;
    memset(&v14, 0, sizeof(v14));
    v15 = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_185D0B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void SerializedLibraryInfo::deserializeStringArray(const char *a1@<X1>, unint64_t a2@<X2>, std::vector<std::string> *a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if (a2 > 3)
  {
    v15 = *a1;
    std::vector<std::string>::reserve(a3, v15);
    if (!v15)
    {
      goto LABEL_47;
    }

    v16 = 0;
    __s1 = (a1 + 4);
    v17 = a2 - 4;
    v36 = v15;
    while (1)
    {
      v18 = strnlen(__s1, v17);
      if (v18 && v18 < v17)
      {
        std::string::basic_string[abi:ne200100](&__dst, __s1, v18);
        std::vector<std::string>::push_back[abi:ne200100](a3, &__dst);
        v19 = v17;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          v20 = __dst.__r_.__value_.__l.__size_ + 1;
          v21 = ~__dst.__r_.__value_.__l.__size_;
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        else
        {
          v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]) + 1;
          v21 = ~*(&__dst.__r_.__value_.__s + 23);
        }

        __s1 += v20;
        v17 = v21 + v19;
        goto LABEL_41;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(__dst.__r_.__value_.__l.__data_) = 134218240;
        *(__dst.__r_.__value_.__r.__words + 4) = v16 + 1;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v15;
        _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Compiler deserialization error, tried to deserialize %zu out of %u strings, but ran out of data, or into an empty string.", &__dst, 0x12u);
      }

      memset(&__dst, 0, sizeof(__dst));
      begin = a3->__begin_;
      if (a3->__end_ == a3->__begin_)
      {
        v32 = 0;
      }

      else
      {
        v35 = v17;
        v23 = 0;
        v24 = 0;
        do
        {
          p_data = &begin[v23].__r_.__value_.__l.__data_;
          v26 = HIBYTE(begin[v23].__r_.__value_.__r.__words[2]);
          if ((v26 & 0x80u) == 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = p_data[1];
          }

          std::string::basic_string[abi:ne200100](&__p, v27 + 1);
          if ((v39 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v27)
          {
            if (*(p_data + 23) >= 0)
            {
              v29 = p_data;
            }

            else
            {
              v29 = *p_data;
            }

            memmove(p_p, v29, v27);
          }

          *(p_p + v27) = 32;
          if ((v39 & 0x80u) == 0)
          {
            v30 = &__p;
          }

          else
          {
            v30 = __p;
          }

          if ((v39 & 0x80u) == 0)
          {
            v31 = v39;
          }

          else
          {
            v31 = *(&__p + 1);
          }

          std::string::append(&__dst, v30, v31);
          if (v39 < 0)
          {
            operator delete(__p);
          }

          ++v24;
          begin = a3->__begin_;
          ++v23;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((a3->__end_ - a3->__begin_) >> 3) > v24);
        v32 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v17 = v35;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        break;
      }

      if (v32 < 0)
      {
        goto LABEL_38;
      }

LABEL_41:
      ++v16;
      LODWORD(v15) = v36;
      if (v16 == v36)
      {
        goto LABEL_47;
      }
    }

    p_dst = &__dst;
    if (v32 < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = p_dst;
    _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Current string list: %s", &__p, 0xCu);
    if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_41;
    }

LABEL_38:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_41;
  }

  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    SerializedLibraryInfo::deserializeStringArray(v5, v6, v7, v8, v9, v10, v11, v12);
  }

LABEL_47:
  v34 = *MEMORY[0x1E69E9840];
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void *SerializedLibraryInfo::createArray(uint64_t **a1)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1)];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = v3;
      if (*(v3 + 23) < 0)
      {
        v6 = *v3;
      }

      v7 = [v5 initWithUTF8String:v6];
      if (v7)
      {
        v8 = v7;
        [v2 addObject:v7];
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  return v2;
}

uint64_t MTLLibraryDataWithSource::MTLLibraryDataWithSource(uint64_t a1, uint64_t a2, __int128 *a3, NSObject *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = MTLLibraryData::MTLLibraryData(a1, a3);
  *v15 = &unk_1EF476748;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 144) = a2;
  MTLCachedLibraryData::swapLibraryInfo(v15, a5);
  *a1 = &unk_1EF476B40;
  *(a1 + 168) = 0;
  *(a1 + 176) = a4;
  dispatch_retain(a4);
  buffer_ptr = 0;
  map = dispatch_data_create_map(a4, &buffer_ptr, (a1 + 160));
  *(a1 + 152) = buffer_ptr;
  *(a1 + 184) = map;
  *(a1 + 192) = a6;
  *(a1 + 200) = a7;
  *(a1 + 208) = a8;
  return a1;
}

void SerializedLibraryInfo::~SerializedLibraryInfo(void **this)
{
  v2 = this + 12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ___ZL26storeStitchingTrackingDatamP7NSArrayIPU22objcproto11MTLFunction11objc_objectENSt3__110shared_ptrINS4_6vectorI21stitchedAirDescriptorNS4_9allocatorIS7_EEEEEEPU21objcproto10MTLLibrary11objc_object_block_invoke()
{
  result = MTLGetEnvDefault("MTL_ENABLE_METAL_SCRIPT_COLLECTION", 0);
  storeStitchingTrackingData(unsigned long,NSArray<objc_object  {objcproto11MTLFunction}*> *,std::shared_ptr<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector<stitchedAirDescriptor,NSArray<objc_object  {objcproto11MTLFunction}*> *::allocator<NSArray<objc_object  {objcproto11MTLFunction}*> *::vector>>>,objc_object  {objcproto10MTLLibrary}*)::enableMetalScriptCollection = result != 0;
  return result;
}

void std::__shared_ptr_emplace<StitchedLibraryTrackingData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void StitchedLibraryTrackingData::~StitchedLibraryTrackingData(StitchedLibraryTrackingData *this)
{
  StitchedLibraryTrackingData::~StitchedLibraryTrackingData(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF477398;
  v2 = *(this + 1);
  if (v2)
  {
  }

  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      dispatch_release(v5);
    }

    while (v3 != v4);
    v3 = *(this + 2);
  }

  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void *std::vector<NSObject  {objcproto16OS_dispatch_data}*>::__assign_with_size[abi:ne200100]<NSObject  {objcproto16OS_dispatch_data}**,NSObject  {objcproto16OS_dispatch_data}**>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMember *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::__shared_ptr_pointer<MTLCompilerCache *,std::shared_ptr<MTLCompilerCache>::__shared_ptr_default_delete<MTLCompilerCache,MTLCompilerCache>,std::allocator<MTLCompilerCache>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t std::__shared_ptr_pointer<MTLCompilerCache *,std::shared_ptr<MTLCompilerCache>::__shared_ptr_default_delete<MTLCompilerCache,MTLCompilerCache>,std::allocator<MTLCompilerCache>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MTLCompilerCache *,std::shared_ptr<MTLCompilerCache>::__shared_ptr_default_delete<MTLCompilerCache,MTLCompilerCache>,std::allocator<MTLCompilerCache>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void MTLFunctionToolList::~MTLFunctionToolList(MTLFunctionToolList *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t std::unordered_map<std::string,FunctionHashFactory::hashFactoryMask>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,FunctionHashFactory::hashFactoryMask> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,FunctionHashFactory::hashFactoryMask> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FunctionHashFactory::hashFactoryMask>>>::__construct_node_hash<std::pair<std::string const,FunctionHashFactory::hashFactoryMask> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_185D0C280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D0C348(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(unint64_t *result, unint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = bswap64(v4[4]);
        v7 = bswap64(*v4);
        if (v6 != v7 || (v6 = bswap64(v5[1]), v7 = bswap64(v4[1]), v6 != v7) || (v6 = bswap64(v5[2]), v7 = bswap64(v4[2]), v6 != v7) || (v6 = bswap64(v5[3]), v7 = bswap64(v4[3]), v6 != v7))
        {
          v8 = v6 < v7 ? -1 : 1;
          if (v8 < 0)
          {
            v17 = *v5;
            v18 = *(v5 + 1);
            v9 = v3;
            while (1)
            {
              v10 = result + v9;
              v11 = *(result + v9 + 16);
              *(v10 + 2) = *(result + v9);
              *(v10 + 3) = v11;
              if (!v9)
              {
                break;
              }

              v12 = bswap64(v17);
              v13 = bswap64(*(v10 - 4));
              if (v12 == v13 && (v12 = bswap64(*(&v17 + 1)), v13 = bswap64(*(v10 - 3)), v12 == v13) && (v12 = bswap64(v18), v13 = bswap64(*(v10 - 2)), v12 == v13) && (v12 = bswap64(*(&v18 + 1)), v13 = bswap64(*(v10 - 1)), v12 == v13))
              {
                v14 = 0;
              }

              else if (v12 < v13)
              {
                v14 = -1;
              }

              else
              {
                v14 = 1;
              }

              v9 -= 32;
              if ((v14 & 0x80000000) == 0)
              {
                v15 = (result + v9 + 32);
                goto LABEL_25;
              }
            }

            v15 = result;
LABEL_25:
            *v15 = v17;
            *(v15 + 1) = v18;
          }
        }

        v2 = v5 + 4;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 4 != a2);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(unint64_t *result, unint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = result - 4;
      do
      {
        v4 = v2;
        v5 = bswap64(*v2);
        v6 = bswap64(*result);
        if (v5 != v6 || (v5 = bswap64(v4[1]), v6 = bswap64(result[1]), v5 != v6) || (v5 = bswap64(v4[2]), v6 = bswap64(result[2]), v5 != v6) || (v5 = bswap64(v4[3]), v6 = bswap64(result[3]), v5 != v6))
        {
          v7 = v5 < v6 ? -1 : 1;
          if (v7 < 0)
          {
            v14 = *v4;
            v15 = *(v4 + 1);
            v8 = v3;
            do
            {
              v9 = *(v8 + 3);
              *(v8 + 4) = *(v8 + 2);
              *(v8 + 5) = v9;
              v10 = bswap64(v14);
              v11 = bswap64(*v8);
              if (v10 == v11 && (v10 = bswap64(*(&v14 + 1)), v11 = bswap64(v8[1]), v10 == v11) && (v10 = bswap64(v15), v11 = bswap64(v8[2]), v10 == v11) && (v10 = bswap64(*(&v15 + 1)), v11 = bswap64(v8[3]), v10 == v11))
              {
                v12 = 0;
              }

              else if (v10 < v11)
              {
                v12 = -1;
              }

              else
              {
                v12 = 1;
              }

              v8 -= 4;
            }

            while (v12 < 0);
            *(v8 + 4) = v14;
            *(v8 + 5) = v15;
          }
        }

        v2 = v4 + 4;
        v3 += 4;
        result = v4;
      }

      while (v4 + 4 != a2);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(unint64_t *a1, unint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = *a1;
  v36 = *(a1 + 1);
  v2 = bswap64(*a1);
  v3 = bswap64(*(a2 - 32));
  if (v2 != v3 || (v2 = bswap64(*(&v35 + 1)), v3 = bswap64(*(a2 - 24)), v2 != v3) || (v2 = bswap64(v36), v3 = bswap64(*(a2 - 16)), v2 != v3) || (v2 = bswap64(*(&v36 + 1)), v3 = bswap64(*(a2 - 8)), v2 != v3))
  {
    v10 = v2 < v3 ? -1 : 1;
    if (v10 < 0)
    {
      v4 = bswap64(v35);
      v5 = a1;
      while (1)
      {
        v6 = v5[4];
        v5 += 4;
        v7 = bswap64(v6);
        if (v4 != v7)
        {
          break;
        }

        v8 = bswap64(*(&v35 + 1));
        v7 = bswap64(v5[1]);
        if (v8 != v7)
        {
          goto LABEL_13;
        }

        v8 = bswap64(v36);
        v7 = bswap64(v5[2]);
        if (v8 != v7)
        {
          goto LABEL_13;
        }

        v8 = bswap64(*(&v36 + 1));
        v7 = bswap64(v5[3]);
        if (v8 != v7)
        {
          goto LABEL_13;
        }

        v9 = 0;
LABEL_16:
        if (v9 < 0)
        {
          goto LABEL_33;
        }
      }

      v8 = v4;
LABEL_13:
      if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_16;
    }
  }

  v11 = a1 + 4;
  do
  {
    v5 = v11;
    if (v11 >= a2)
    {
      break;
    }

    v12 = bswap64(v35);
    v13 = bswap64(*v5);
    if (v12 != v13)
    {
      goto LABEL_29;
    }

    v12 = bswap64(*(&v35 + 1));
    v13 = bswap64(v5[1]);
    if (v12 == v13 && (v12 = bswap64(v36), v13 = bswap64(v5[2]), v12 == v13) && (v12 = bswap64(*(&v36 + 1)), v13 = bswap64(v5[3]), v12 == v13))
    {
      v14 = 0;
    }

    else
    {
LABEL_29:
      v14 = v12 < v13 ? -1 : 1;
    }

    v11 = v5 + 4;
  }

  while ((v14 & 0x80000000) == 0);
LABEL_33:
  if (v5 < a2)
  {
    v15 = bswap64(v35);
    do
    {
      v16 = *(a2 - 32);
      a2 -= 32;
      v17 = bswap64(v16);
      if (v15 == v17)
      {
        v18 = bswap64(*(&v35 + 1));
        v17 = bswap64(*(a2 + 8));
        if (v18 == v17)
        {
          v18 = bswap64(v36);
          v17 = bswap64(*(a2 + 16));
          if (v18 == v17)
          {
            v18 = bswap64(*(&v36 + 1));
            v17 = bswap64(*(a2 + 24));
            if (v18 == v17)
            {
              break;
            }
          }
        }
      }

      else
      {
        v18 = v15;
      }

      if (v18 < v17)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19 < 0);
  }

  if (v5 >= a2)
  {
    goto LABEL_69;
  }

  do
  {
    v37 = *v5;
    v38 = *(v5 + 1);
    v20 = *(a2 + 16);
    *v5 = *a2;
    *(v5 + 1) = v20;
    *a2 = v37;
    *(a2 + 16) = v38;
    v21 = bswap64(v35);
    do
    {
      while (1)
      {
        v22 = v5[4];
        v5 += 4;
        v23 = bswap64(v22);
        if (v21 != v23)
        {
          break;
        }

        v24 = bswap64(*(&v35 + 1));
        v23 = bswap64(v5[1]);
        if (v24 == v23)
        {
          v24 = bswap64(v36);
          v23 = bswap64(v5[2]);
          if (v24 == v23)
          {
            v24 = bswap64(*(&v36 + 1));
            v23 = bswap64(v5[3]);
            if (v24 == v23)
            {
              continue;
            }
          }
        }

        goto LABEL_53;
      }

      v24 = v21;
LABEL_53:
      if (v24 < v23)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }

    while ((v25 & 0x80000000) == 0);
    v26 = bswap64(v35);
    do
    {
      v27 = *(a2 - 32);
      a2 -= 32;
      v28 = bswap64(v27);
      if (v26 == v28)
      {
        v29 = bswap64(*(&v35 + 1));
        v28 = bswap64(*(a2 + 8));
        if (v29 == v28)
        {
          v29 = bswap64(v36);
          v28 = bswap64(*(a2 + 16));
          if (v29 == v28)
          {
            v29 = bswap64(*(&v36 + 1));
            v28 = bswap64(*(a2 + 24));
            if (v29 == v28)
            {
              break;
            }
          }
        }
      }

      else
      {
        v29 = v26;
      }

      if (v29 < v28)
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }
    }

    while (v30 < 0);
  }

  while (v5 < a2);
LABEL_69:
  v31 = v5 - 4;
  if (v5 - 4 != a1)
  {
    v32 = *(v5 - 1);
    *a1 = *v31;
    *(a1 + 1) = v32;
  }

  *v31 = v35;
  *(v5 - 1) = v36;
  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(__int128 *a1, unint64_t *a2)
{
  v2 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v36 = *a1;
  v37 = a1[1];
  v3 = bswap64(*a1);
  do
  {
    v4 = &a1[v2];
    v5 = bswap64(*&a1[v2 + 2]);
    if (v5 == v3)
    {
      v5 = bswap64(v4[5]);
      v6 = bswap64(*(&v36 + 1));
      if (v5 == v6)
      {
        v5 = bswap64(v4[6]);
        v6 = bswap64(v37);
        if (v5 == v6)
        {
          v5 = bswap64(v4[7]);
          v6 = bswap64(*(&v37 + 1));
          if (v5 == v6)
          {
            v7 = 0;
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v6 = v3;
    }

    if (v5 < v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

LABEL_11:
    v2 += 2;
  }

  while (v7 < 0);
  v8 = &a1[v2];
  v9 = &a1[v2 - 2];
  if (v2 != 2)
  {
    v10 = bswap64(v36);
    while (1)
    {
      v11 = *(a2 - 4);
      a2 -= 4;
      v12 = bswap64(v11);
      if (v12 != v10)
      {
        break;
      }

      v12 = bswap64(a2[1]);
      v13 = bswap64(*(&v36 + 1));
      if (v12 == v13)
      {
        v12 = bswap64(a2[2]);
        v13 = bswap64(v37);
        if (v12 == v13)
        {
          v12 = bswap64(a2[3]);
          v13 = bswap64(*(&v37 + 1));
          if (v12 == v13)
          {
            continue;
          }
        }
      }

LABEL_20:
      if (v12 < v13)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if (v14 < 0)
      {
        goto LABEL_35;
      }
    }

    v13 = v10;
    goto LABEL_20;
  }

  do
  {
    if (v8 >= a2)
    {
      break;
    }

    v15 = *(a2 - 4);
    a2 -= 4;
    v16 = bswap64(v15);
    v17 = bswap64(v36);
    if (v16 != v17)
    {
      goto LABEL_31;
    }

    v16 = bswap64(a2[1]);
    v17 = bswap64(*(&v36 + 1));
    if (v16 == v17 && (v16 = bswap64(a2[2]), v17 = bswap64(v37), v16 == v17) && (v16 = bswap64(a2[3]), v17 = bswap64(*(&v37 + 1)), v16 == v17))
    {
      v18 = 0;
    }

    else
    {
LABEL_31:
      v18 = v16 < v17 ? -1 : 1;
    }
  }

  while ((v18 & 0x80000000) == 0);
LABEL_35:
  if (v8 >= a2)
  {
    goto LABEL_61;
  }

  v19 = v8;
  v20 = a2;
  while (2)
  {
    v21 = *v19;
    v38 = *(v19 + 16);
    v22 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 16) = v22;
    *v20 = v21;
    *(v20 + 1) = v38;
    v23 = bswap64(v36);
    do
    {
      v24 = *(v19 + 32);
      v19 += 32;
      v25 = bswap64(v24);
      if (v25 == v23)
      {
        v25 = bswap64(*(v19 + 8));
        v26 = bswap64(*(&v36 + 1));
        if (v25 == v26)
        {
          v25 = bswap64(*(v19 + 16));
          v26 = bswap64(v37);
          if (v25 == v26)
          {
            v25 = bswap64(*(v19 + 24));
            v26 = bswap64(*(&v37 + 1));
            if (v25 == v26)
            {
              break;
            }
          }
        }
      }

      else
      {
        v26 = v23;
      }

      if (v25 < v26)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }
    }

    while (v27 < 0);
    v28 = bswap64(v36);
    do
    {
      while (2)
      {
        v29 = *(v20 - 4);
        v20 -= 4;
        v30 = bswap64(v29);
        if (v30 == v28)
        {
          v30 = bswap64(v20[1]);
          v31 = bswap64(*(&v36 + 1));
          if (v30 == v31)
          {
            v30 = bswap64(v20[2]);
            v31 = bswap64(v37);
            if (v30 == v31)
            {
              v30 = bswap64(v20[3]);
              v31 = bswap64(*(&v37 + 1));
              if (v30 == v31)
              {
                continue;
              }
            }
          }
        }

        else
        {
          v31 = v28;
        }

        break;
      }

      if (v30 < v31)
      {
        v32 = -1;
      }

      else
      {
        v32 = 1;
      }
    }

    while ((v32 & 0x80000000) == 0);
    if (v19 < v20)
    {
      continue;
    }

    break;
  }

  v9 = (v19 - 32);
LABEL_61:
  if (v9 != a1)
  {
    v33 = v9[1];
    *a1 = *v9;
    a1[1] = v33;
  }

  *v9 = v36;
  v9[1] = v37;
  v34 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(unint64_t *a1, unint64_t *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = a1 + 4;
        v15 = a2 - 4;
        v16 = bswap64(a1[4]);
        v17 = bswap64(*a1);
        if (v16 == v17 && (v16 = bswap64(a1[5]), v17 = bswap64(a1[1]), v16 == v17) && (v16 = bswap64(a1[6]), v17 = bswap64(a1[2]), v16 == v17) && (v16 = bswap64(a1[7]), v17 = bswap64(a1[3]), v16 == v17))
        {
          v18 = 0;
        }

        else if (v16 < v17)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        v24 = bswap64(*v15);
        v25 = bswap64(*v14);
        if (v24 == v25 && (v24 = bswap64(*(a2 - 3)), v25 = bswap64(a1[5]), v24 == v25) && (v24 = bswap64(*(a2 - 2)), v25 = bswap64(a1[6]), v24 == v25) && (v24 = bswap64(*(a2 - 1)), v25 = bswap64(a1[7]), v24 == v25))
        {
          v26 = 0;
        }

        else if (v24 < v25)
        {
          v26 = -1;
        }

        else
        {
          v26 = 1;
        }

        if ((v18 & 0x80000000) == 0)
        {
          if (v26 < 0)
          {
            v28 = *v14;
            v27 = *(a1 + 3);
            v29 = *(a2 - 1);
            *v14 = *v15;
            *(a1 + 3) = v29;
            *v15 = v28;
            *(a2 - 1) = v27;
            v30 = bswap64(a1[4]);
            v31 = bswap64(*a1);
            if (v30 != v31)
            {
              goto LABEL_99;
            }

            v30 = bswap64(a1[5]);
            v31 = bswap64(a1[1]);
            if (v30 == v31 && (v30 = bswap64(a1[6]), v31 = bswap64(a1[2]), v30 == v31) && (v30 = bswap64(a1[7]), v31 = bswap64(a1[3]), v30 == v31))
            {
              v32 = 0;
            }

            else
            {
LABEL_99:
              v32 = v30 < v31 ? -1 : 1;
            }

            if (v32 < 0)
            {
              v70 = *a1;
              v69 = *(a1 + 1);
              v71 = *(a1 + 3);
              *a1 = *v14;
              *(a1 + 1) = v71;
              *v14 = v70;
              *(a1 + 3) = v69;
            }
          }

          break;
        }

        if (v26 < 0)
        {
          v73 = *a1;
          v72 = *(a1 + 1);
          v81 = *(a2 - 1);
          *a1 = *v15;
          *(a1 + 1) = v81;
        }

        else
        {
          v52 = *a1;
          v51 = *(a1 + 1);
          v53 = *(a1 + 3);
          *a1 = *v14;
          *(a1 + 1) = v53;
          *v14 = v52;
          *(a1 + 3) = v51;
          v54 = bswap64(*v15);
          v55 = bswap64(a1[4]);
          if (v54 == v55 && (v54 = bswap64(*(a2 - 3)), v55 = bswap64(a1[5]), v54 == v55) && (v54 = bswap64(*(a2 - 2)), v55 = bswap64(a1[6]), v54 == v55) && (v54 = bswap64(*(a2 - 1)), v55 = bswap64(a1[7]), v54 == v55))
          {
            v56 = 0;
          }

          else if (v54 < v55)
          {
            v56 = -1;
          }

          else
          {
            v56 = 1;
          }

          if ((v56 & 0x80000000) == 0)
          {
            break;
          }

          v73 = *v14;
          v72 = *(a1 + 3);
          v74 = *(a2 - 1);
          *v14 = *v15;
          *(a1 + 3) = v74;
        }

        *v15 = v73;
        *(a2 - 1) = v72;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 4, a1 + 8, a2 - 4);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v10 = *(a2 - 4);
        v9 = a2 - 4;
        v11 = bswap64(v10);
        v12 = bswap64(a1[12]);
        if (v11 == v12 && (v11 = bswap64(v9[1]), v12 = bswap64(a1[13]), v11 == v12) && (v11 = bswap64(v9[2]), v12 = bswap64(a1[14]), v11 == v12) && (v11 = bswap64(v9[3]), v12 = bswap64(a1[15]), v11 == v12))
        {
          v13 = 0;
        }

        else if (v11 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 < 0)
        {
          v46 = *(a1 + 6);
          v45 = *(a1 + 7);
          v47 = *(v9 + 1);
          *(a1 + 6) = *v9;
          *(a1 + 7) = v47;
          *v9 = v46;
          *(v9 + 1) = v45;
          v48 = bswap64(a1[12]);
          v49 = bswap64(a1[8]);
          if (v48 != v49)
          {
            goto LABEL_90;
          }

          v48 = bswap64(a1[13]);
          v49 = bswap64(a1[9]);
          if (v48 == v49 && (v48 = bswap64(a1[14]), v49 = bswap64(a1[10]), v48 == v49) && (v48 = bswap64(a1[15]), v49 = bswap64(a1[11]), v48 == v49))
          {
            v50 = 0;
          }

          else
          {
LABEL_90:
            v50 = v48 < v49 ? -1 : 1;
          }

          if (v50 < 0)
          {
            v64 = *(a1 + 4);
            v63 = *(a1 + 5);
            v65 = *(a1 + 7);
            *(a1 + 4) = *(a1 + 6);
            *(a1 + 5) = v65;
            *(a1 + 6) = v64;
            *(a1 + 7) = v63;
            v66 = bswap64(a1[8]);
            v67 = bswap64(a1[4]);
            if (v66 != v67)
            {
              goto LABEL_151;
            }

            v66 = bswap64(a1[9]);
            v67 = bswap64(a1[5]);
            if (v66 == v67 && (v66 = bswap64(a1[10]), v67 = bswap64(a1[6]), v66 == v67) && (v66 = bswap64(a1[11]), v67 = bswap64(a1[7]), v66 == v67))
            {
              v68 = 0;
            }

            else
            {
LABEL_151:
              v68 = v66 < v67 ? -1 : 1;
            }

            if (v68 < 0)
            {
              v99 = *(a1 + 2);
              v98 = *(a1 + 3);
              v100 = *(a1 + 5);
              *(a1 + 2) = *(a1 + 4);
              *(a1 + 3) = v100;
              *(a1 + 4) = v99;
              *(a1 + 5) = v98;
              v101 = bswap64(a1[4]);
              v102 = bswap64(*a1);
              if (v101 != v102)
              {
                goto LABEL_160;
              }

              v101 = bswap64(a1[5]);
              v102 = bswap64(a1[1]);
              if (v101 == v102 && (v101 = bswap64(a1[6]), v102 = bswap64(a1[2]), v101 == v102) && (v101 = bswap64(a1[7]), v102 = bswap64(a1[3]), v101 == v102))
              {
                v103 = 0;
              }

              else
              {
LABEL_160:
                v103 = v101 < v102 ? -1 : 1;
              }

              if (v103 < 0)
              {
                v105 = *a1;
                v104 = *(a1 + 1);
                v106 = *(a1 + 3);
                *a1 = *(a1 + 2);
                *(a1 + 1) = v106;
                *(a1 + 2) = v105;
                *(a1 + 3) = v104;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_148:
    result = 1;
    goto LABEL_149;
  }

  if (v4 < 2)
  {
    goto LABEL_148;
  }

  if (v4 == 2)
  {
    v5 = a2 - 4;
    v6 = bswap64(*(a2 - 4));
    v7 = bswap64(*a1);
    if (v6 == v7 && (v6 = bswap64(*(a2 - 3)), v7 = bswap64(a1[1]), v6 == v7) && (v6 = bswap64(*(a2 - 2)), v7 = bswap64(a1[2]), v6 == v7) && (v6 = bswap64(*(a2 - 1)), v7 = bswap64(a1[3]), v6 == v7))
    {
      v8 = 0;
    }

    else if (v6 < v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 < 0)
    {
      v43 = *a1;
      v42 = *(a1 + 1);
      v44 = *(a2 - 1);
      *a1 = *v5;
      *(a1 + 1) = v44;
      *v5 = v43;
      *(a2 - 1) = v42;
    }

    goto LABEL_148;
  }

LABEL_22:
  v19 = a1 + 8;
  v20 = a1 + 4;
  v21 = bswap64(a1[4]);
  v22 = bswap64(*a1);
  if (v21 == v22 && (v21 = bswap64(a1[5]), v22 = bswap64(a1[1]), v21 == v22) && (v21 = bswap64(a1[6]), v22 = bswap64(a1[2]), v21 == v22) && (v21 = bswap64(a1[7]), v22 = bswap64(a1[3]), v21 == v22))
  {
    v23 = 0;
  }

  else if (v21 < v22)
  {
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  v33 = bswap64(*v19);
  v34 = bswap64(*v20);
  if (v33 == v34 && (v33 = bswap64(a1[9]), v34 = bswap64(a1[5]), v33 == v34) && (v33 = bswap64(a1[10]), v34 = bswap64(a1[6]), v33 == v34) && (v33 = bswap64(a1[11]), v34 = bswap64(a1[7]), v33 == v34))
  {
    v35 = 0;
  }

  else if (v33 < v34)
  {
    v35 = -1;
  }

  else
  {
    v35 = 1;
  }

  if (v23 < 0)
  {
    if (v35 < 0)
    {
      v79 = *a1;
      v78 = *(a1 + 1);
      v82 = *(a1 + 5);
      *a1 = *v19;
      *(a1 + 1) = v82;
    }

    else
    {
      v58 = *a1;
      v57 = *(a1 + 1);
      v59 = *(a1 + 3);
      *a1 = *v20;
      *(a1 + 1) = v59;
      *v20 = v58;
      *(a1 + 3) = v57;
      v60 = bswap64(a1[8]);
      v61 = bswap64(a1[4]);
      if (v60 == v61 && (v60 = bswap64(a1[9]), v61 = bswap64(a1[5]), v60 == v61) && (v60 = bswap64(a1[10]), v61 = bswap64(a1[6]), v60 == v61) && (v60 = bswap64(a1[11]), v61 = bswap64(a1[7]), v60 == v61))
      {
        v62 = 0;
      }

      else if (v60 < v61)
      {
        v62 = -1;
      }

      else
      {
        v62 = 1;
      }

      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      v79 = *v20;
      v78 = *(a1 + 3);
      v80 = *(a1 + 5);
      *v20 = *v19;
      *(a1 + 3) = v80;
    }

    *v19 = v79;
    *(a1 + 5) = v78;
    goto LABEL_123;
  }

  if (v35 < 0)
  {
    v37 = *v20;
    v36 = *(a1 + 3);
    v38 = *(a1 + 5);
    *v20 = *v19;
    *(a1 + 3) = v38;
    *v19 = v37;
    *(a1 + 5) = v36;
    v39 = bswap64(a1[4]);
    v40 = bswap64(*a1);
    if (v39 != v40)
    {
      goto LABEL_109;
    }

    v39 = bswap64(a1[5]);
    v40 = bswap64(a1[1]);
    if (v39 == v40 && (v39 = bswap64(a1[6]), v40 = bswap64(a1[2]), v39 == v40) && (v39 = bswap64(a1[7]), v40 = bswap64(a1[3]), v39 == v40))
    {
      v41 = 0;
    }

    else
    {
LABEL_109:
      v41 = v39 < v40 ? -1 : 1;
    }

    if (v41 < 0)
    {
      v76 = *a1;
      v75 = *(a1 + 1);
      v77 = *(a1 + 3);
      *a1 = *v20;
      *(a1 + 1) = v77;
      *v20 = v76;
      *(a1 + 3) = v75;
    }
  }

LABEL_123:
  v83 = a1 + 12;
  if (a1 + 12 == a2)
  {
    goto LABEL_148;
  }

  v84 = 0;
  v85 = 0;
  while (1)
  {
    v86 = bswap64(*v83);
    v87 = bswap64(*v19);
    if (v86 != v87 || (v86 = bswap64(v83[1]), v87 = bswap64(v19[1]), v86 != v87) || (v86 = bswap64(v83[2]), v87 = bswap64(v19[2]), v86 != v87) || (v86 = bswap64(v83[3]), v87 = bswap64(v19[3]), v86 != v87))
    {
      v88 = v86 < v87 ? -1 : 1;
      if (v88 < 0)
      {
        v107 = *v83;
        v108 = *(v83 + 1);
        v89 = v84;
        while (1)
        {
          v90 = a1 + v89;
          v91 = *(a1 + v89 + 80);
          *(v90 + 6) = *(a1 + v89 + 64);
          *(v90 + 7) = v91;
          if (v89 == -64)
          {
            break;
          }

          v92 = bswap64(v107);
          v93 = bswap64(*(v90 + 4));
          if (v92 == v93 && (v92 = bswap64(*(&v107 + 1)), v93 = bswap64(*(v90 + 5)), v92 == v93) && (v92 = bswap64(v108), v93 = bswap64(*(v90 + 6)), v92 == v93) && (v92 = bswap64(*(&v108 + 1)), v93 = bswap64(*(v90 + 7)), v92 == v93))
          {
            v94 = 0;
          }

          else if (v92 < v93)
          {
            v94 = -1;
          }

          else
          {
            v94 = 1;
          }

          v89 -= 32;
          if ((v94 & 0x80000000) == 0)
          {
            v95 = (a1 + v89 + 96);
            goto LABEL_146;
          }
        }

        v95 = a1;
LABEL_146:
        *v95 = v107;
        *(v95 + 1) = v108;
        if (++v85 == 8)
        {
          break;
        }
      }
    }

    v19 = v83;
    v84 += 32;
    v83 += 4;
    if (v83 == a2)
    {
      goto LABEL_148;
    }
  }

  result = v83 + 4 == a2;
LABEL_149:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = bswap64(*v12);
        v14 = bswap64(*a1);
        if (v13 != v14 || (v13 = bswap64(v12[1]), v14 = bswap64(a1[1]), v13 != v14) || (v13 = bswap64(v12[2]), v14 = bswap64(a1[2]), v13 != v14) || (v13 = bswap64(v12[3]), v14 = bswap64(a1[3]), v13 != v14))
        {
          v15 = v13 < v14 ? -1 : 1;
          if (v15 < 0)
          {
            v17 = *v12;
            v16 = *(v12 + 1);
            v18 = *(a1 + 1);
            *v12 = *a1;
            *(v12 + 1) = v18;
            *a1 = v17;
            *(a1 + 1) = v16;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(a1, a4, v8, a1);
          }
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v19 = a2 - 4;
      do
      {
        v25 = *a1;
        v26 = *(a1 + 1);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(a1, a4, v8);
        if (v19 == v20)
        {
          *v20 = v25;
          *(v20 + 1) = v26;
        }

        else
        {
          v21 = *(v19 + 1);
          *v20 = *v19;
          *(v20 + 1) = v21;
          *v19 = v25;
          *(v19 + 1) = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(a1, (v20 + 4), a4, ((v20 + 4) - a1) >> 5);
        }

        v19 -= 4;
      }

      while (v8-- > 2);
    }

    a3 = v12;
  }

  v23 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = bswap64(*v8);
        v11 = bswap64(v8[4]);
        if (v10 != v11)
        {
          goto LABEL_9;
        }

        v10 = bswap64(v8[1]);
        v11 = bswap64(v8[5]);
        if (v10 == v11 && (v10 = bswap64(v8[2]), v11 = bswap64(v8[6]), v10 == v11) && (v10 = bswap64(v8[3]), v11 = bswap64(v8[7]), v10 == v11))
        {
          v12 = 0;
        }

        else
        {
LABEL_9:
          v12 = v10 < v11 ? -1 : 1;
        }

        if (v12 < 0)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v13 = bswap64(*v8);
      v14 = bswap64(*a4);
      if (v13 == v14 && (v13 = bswap64(v8[1]), v14 = bswap64(a4[1]), v13 == v14) && (v13 = bswap64(v8[2]), v14 = bswap64(a4[2]), v13 == v14) && (v13 = bswap64(v8[3]), v14 = bswap64(a4[3]), v13 == v14))
      {
        v15 = 0;
      }

      else if (v13 < v14)
      {
        v15 = -1;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 0x80000000) == 0)
      {
        v26 = *a4;
        v27 = *(a4 + 1);
        do
        {
          v16 = v8;
          v17 = *(v8 + 1);
          *a4 = *v8;
          *(a4 + 1) = v17;
          if (v5 < v7)
          {
            break;
          }

          v18 = (2 * v7) | 1;
          v8 = (result + 32 * v18);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v18;
          }

          else
          {
            v19 = bswap64(*v8);
            v20 = bswap64(v8[4]);
            if (v19 != v20)
            {
              goto LABEL_32;
            }

            v19 = bswap64(v8[1]);
            v20 = bswap64(v8[5]);
            if (v19 == v20 && (v19 = bswap64(v8[2]), v20 = bswap64(v8[6]), v19 == v20) && (v19 = bswap64(v8[3]), v20 = bswap64(v8[7]), v19 == v20))
            {
              v21 = 0;
            }

            else
            {
LABEL_32:
              v21 = v19 < v20 ? -1 : 1;
            }

            if (v21 >= 0)
            {
              v7 = v18;
            }

            else
            {
              v8 += 4;
            }
          }

          v22 = bswap64(*v8);
          v23 = bswap64(v26);
          if (v22 != v23)
          {
            goto LABEL_43;
          }

          v22 = bswap64(v8[1]);
          v23 = bswap64(*(&v26 + 1));
          if (v22 == v23 && (v22 = bswap64(v8[2]), v23 = bswap64(v27), v22 == v23) && (v22 = bswap64(v8[3]), v23 = bswap64(*(&v27 + 1)), v22 == v23))
          {
            v24 = 0;
          }

          else
          {
LABEL_43:
            v24 = v22 < v23 ? -1 : 1;
          }

          a4 = v16;
        }

        while ((v24 & 0x80000000) == 0);
        *v16 = v26;
        *(v16 + 1) = v27;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[4 * v3];
    v5 = v4 + 4;
    v6 = (2 * v3) | 1;
    v7 = 2 * v3 + 2;
    if (v7 < a3)
    {
      v9 = v4[8];
      v8 = v4 + 8;
      v10 = bswap64(*v5);
      v11 = bswap64(v9);
      if (v10 == v11 && (v10 = bswap64(v5[1]), v11 = bswap64(v8[1]), v10 == v11) && (v10 = bswap64(v5[2]), v11 = bswap64(v8[2]), v10 == v11) && (v10 = bswap64(v5[3]), v11 = bswap64(v8[3]), v10 == v11))
      {
        v12 = 0;
      }

      else if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      if (v12 < 0)
      {
        v5 = v8;
        v6 = v7;
      }
    }

    v13 = *(v5 + 1);
    *a1 = *v5;
    *(a1 + 1) = v13;
    a1 = v5;
    v3 = v6;
  }

  while (v6 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 32 * v4);
    v6 = (a2 - 32);
    v7 = bswap64(*v5);
    v8 = bswap64(*(a2 - 32));
    if (v7 != v8)
    {
      goto LABEL_7;
    }

    v7 = bswap64(v5[1]);
    v8 = bswap64(*(a2 - 24));
    if (v7 == v8 && (v7 = bswap64(v5[2]), v8 = bswap64(*(a2 - 16)), v7 == v8) && (v7 = bswap64(v5[3]), v8 = bswap64(*(a2 - 8)), v7 == v8))
    {
      v9 = 0;
    }

    else
    {
LABEL_7:
      v9 = v7 < v8 ? -1 : 1;
    }

    if (v9 < 0)
    {
      v16 = *v6;
      v17 = *(a2 - 16);
      do
      {
        v10 = v5;
        v11 = *(v5 + 1);
        *v6 = *v5;
        *(v6 + 1) = v11;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 32 * v4);
        v12 = bswap64(*v5);
        v13 = bswap64(v16);
        if (v12 != v13)
        {
          goto LABEL_18;
        }

        v12 = bswap64(v5[1]);
        v13 = bswap64(*(&v16 + 1));
        if (v12 == v13 && (v12 = bswap64(v5[2]), v13 = bswap64(v17), v12 == v13) && (v12 = bswap64(v5[3]), v13 = bswap64(*(&v17 + 1)), v12 == v13))
        {
          v14 = 0;
        }

        else
        {
LABEL_18:
          v14 = v12 < v13 ? -1 : 1;
        }

        v6 = v10;
      }

      while (v14 < 0);
      *v10 = v16;
      *(v10 + 1) = v17;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void MTLLibrary_InvalidReflectionFragment(int a1, int a2, _OWORD *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  snprintf(__str, 0x12CuLL, "fragment function not found in fragment reflection flatbuffer; number of functions found %ul; node type found: %ul, data:\n%016zx %016zx %016zx %016zx %016zx %016zx %016zx %016zx", a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7));
  v4 = abort_with_reason();
  RequiredFunctionKeys::~RequiredFunctionKeys(v4);
}

void RequiredFunctionKeys::~RequiredFunctionKeys(RequiredFunctionKeys *this)
{
  for (i = 0; i != 8; ++i)
  {
  }
}

uint64_t ___ZN16MTLProgramObject17setReflectionDataEPU27objcproto16OS_dispatch_data8NSObjectP8NSString_block_invoke(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = a1[4];
  }

  else
  {
    v3 = &stru_1EF478240;
  }

  result = [*(v2 + 432) objectForKey:v3];
  if (!result)
  {
    v5 = *(v2 + 432);
    v6 = a1[5];
    if (a1[4])
    {
      v7 = a1[4];
    }

    else
    {
      v7 = &stru_1EF478240;
    }

    return [v5 setObject:v6 forKey:v7];
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::piecewise_construct_t const&<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    operator new();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

const void **std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    operator new();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::vector<MTLUINT256_t>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLUINT256_t>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185D0E468(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,unsigned long long>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,unsigned long long>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t&&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*&>(void *a1, char *a2)
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

void std::__shared_ptr_emplace<SpecializedFunctionTrackingData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void SpecializedFunctionTrackingData::~SpecializedFunctionTrackingData(SpecializedFunctionTrackingData *this)
{
  SpecializedFunctionTrackingData::~SpecializedFunctionTrackingData(this);

  JUMPOUT(0x1865FF210);
}

{
  this->var0 = &unk_1EF4774C8;
  var2 = this->var2;
  if (var2)
  {
  }

  var1 = this->var1;
  if (var1)
  {
  }
}

void std::__shared_ptr_emplace<std::unordered_map<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::__shared_ptr_emplace<std::unordered_map<CompilerOutputType,MTLBinaryKey *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

const void **VariantList<4u>::find<VariantKey>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 336);
  v25 = *(a1 + 328);
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v22 = *(a2 + 40);
    v23 = *(a2 + 48);
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a1 + 328);
    while (1)
    {
      v9 = v8[1];
      if (v4 == v9 && (v23 + v5) == v8[3])
      {
        v10 = *v8;
        if (!memcmp(v6, *v8, v4))
        {
          v11 = &v9[v10];
          if (!memcmp(v7, v11, v5) && !memcmp(v22, &v11[v5], v23))
          {
            break;
          }
        }
      }

      v8 += 10;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = *(v25 + 320);
    if (v12)
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v24 = *(a2 + 40);
      v26 = *(a2 + 48);
      v16 = *a2;
      v15 = *(a2 + 8);
LABEL_11:
      v17 = 4;
      v8 = v12;
      while (1)
      {
        v18 = v8[1];
        if (v13 == v18 && (v26 + v14) == v8[3])
        {
          v19 = *v8;
          if (!memcmp(v16, *v8, v13))
          {
            v20 = &v18[v19];
            if (!memcmp(v15, v20, v14) && !memcmp(v24, &v20[v14], v26))
            {
              break;
            }
          }
        }

        v8 += 10;
        if (!--v17)
        {
          v12 = v12[40];
          if (v12)
          {
            goto LABEL_11;
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void *VariantList<4u>::newVariantEntry<VariantKey>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 336);
  if (v4 == 4)
  {
    operator new();
  }

  v5 = *(a1 + 328);
  *(a1 + 336) = v4 + 1;
  v6 = (v5 + 80 * v4);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 48);
  v10 = malloc_type_malloc(v9 + v8 + v7, 0x100004077774924uLL);
  *v6 = v10;
  memcpy(v10, *a2, v7);
  memcpy((*v6 + v7), *(a2 + 8), v8);
  memcpy((*v6 + v7 + v8), *(a2 + 40), v9);
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = v9 + v8;
  v11 = dispatch_group_create();
  v6[5] = v11;
  dispatch_group_enter(v11);
  return v6;
}

void *std::vector<objc_object  {objcproto10MTLBinding}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185D0F118(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tensorDataTypeFromString(void *__src, size_t __len, _DWORD *a3, _DWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v22 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23[0] = 0;
  v24 = p_dst;
  v23[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v23);
  if (!strcmp(NextToken, "array"))
  {
    BasicParser::getNextToken(v23);
  }

  v9 = BasicParser::getNextToken(v23);
  v10 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  v11 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v10, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(v11 + 60);
  BasicParser::getNextToken(v23);
  v13 = BasicParser::getNextToken(v23);
  v14 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v13);
  v15 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v14, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *a4 = *(v15 + 60);
  v16 = BasicParser::getNextToken(v23);
  __p[0] = 0;
  *a3 = strtoul(v16, __p, 10);
  if (v22 < 0)
  {
    operator delete(__dst);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_185D0FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t _MTLGetSerializedVertexFormat(Air::PipelineScript *a1, void *a2, size_t *a3, char **a4)
{
  memset(&v82, 0, sizeof(v82));
  memset(&__p, 0, sizeof(__p));
  *a3 = 0;
  *a2 = 0;
  v5 = (a1 - *a1);
  if (*v5 < 9u || (v6 = v5[4]) == 0 || (v7 = *(a1 + v6), (v7 - 3) <= 0xFFFFFFFD))
  {
    std::string::append(&v82, "Error: pipeline must be render or compute");
    if (a4)
    {
      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v8 = 0;
        if (!*(&v82.__r_.__value_.__s + 23))
        {
          goto LABEL_32;
        }

        goto LABEL_7;
      }

      if (v82.__r_.__value_.__l.__size_)
      {
        v8 = 0;
LABEL_10:
        v9 = v82.__r_.__value_.__r.__words[0];
        goto LABEL_11;
      }
    }

    goto LABEL_31;
  }

  if (v7 == 1)
  {
    v12 = Air::PipelineScript::pipeline_as_render(a1);
    v13 = (v12 - *v12);
    if (*v13 < 9u)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13[4];
      if (v14)
      {
        v14 = (v14 + v12 + *(v14 + v12));
      }
    }

    v18 = (v14 - *v14);
    v19 = *v18;
    if (v19 >= 7 && v18[3])
    {
      v20 = (v14 + v18[3] + *(v14 + v18[3]));
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 <= 4)
      {
        v23 = 0;
      }

      else
      {
        if (v21[2])
        {
          v23 = (v20 + v21[2] + *(v20 + v21[2]));
        }

        else
        {
          v23 = 0;
        }

        if (v22 >= 7)
        {
          v31 = v21[3];
          if (v31)
          {
            v32 = (v20 + v31 + *(v20 + v31));
LABEL_44:
            if (v19 >= 0x13 && (v33 = v18[9]) != 0)
            {
              v34 = 0;
              v30 = 0;
              v35 = *(v14 + v33);
            }

            else
            {
              v35 = 0;
              v34 = 0;
              v30 = 0;
            }

            goto LABEL_56;
          }
        }
      }

      v32 = 0;
      goto LABEL_44;
    }

LABEL_31:
    v8 = 0;
    goto LABEL_32;
  }

  v15 = Air::PipelineScript::pipeline_as_compute(a1);
  v16 = (v15 - *v15);
  if (*v16 < 7u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16[3];
    if (v17)
    {
      v17 = (v17 + v15 + *(v17 + v15));
    }
  }

  v24 = (v17 - *v17);
  if (*v24 < 0xBu)
  {
    goto LABEL_31;
  }

  v25 = v24[5];
  if (!v25)
  {
    goto LABEL_31;
  }

  v26 = (v17 + v25 + *(v17 + v25));
  v27 = (v26 - *v26);
  v28 = *v27;
  if (v28 <= 4)
  {
    v30 = 0;
    v23 = 0;
LABEL_53:
    v32 = 0;
    goto LABEL_54;
  }

  if (v27[2])
  {
    v23 = (v26 + v27[2] + *(v26 + v27[2]));
  }

  else
  {
    v23 = 0;
  }

  if (v28 < 7)
  {
    v30 = 0;
    goto LABEL_53;
  }

  if (v27[3])
  {
    v32 = (v26 + v27[3] + *(v26 + v27[3]));
  }

  else
  {
    v32 = 0;
  }

  if (v28 < 0xB)
  {
    v30 = 0;
    if (v28 < 9)
    {
      v34 = 0;
      goto LABEL_55;
    }
  }

  else if (v27[5])
  {
    v30 = *(v26 + v27[5]);
  }

  else
  {
    v30 = 0;
  }

  v79 = v27[4];
  if (v79)
  {
    v34 = *(v26 + v79);
    goto LABEL_55;
  }

LABEL_54:
  v34 = 0;
LABEL_55:
  v35 = 0;
LABEL_56:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    *__p.__r_.__value_.__l.__data_ = 0;
    __p.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
  }

  *v89 = v35;
  v80 = __PAIR64__(v30, v34);
  *v88 = v30;
  *v87 = v34;
  if (!v23)
  {
    goto LABEL_133;
  }

  v37 = v23 + 1;
  v36 = *v23;
  if (!v36)
  {
    goto LABEL_133;
  }

  v38 = 0;
  v39 = 0;
  v40 = v32 + 1;
  v41 = *v32;
  do
  {
    v42 = (&v37[v39] + v37[v39]);
    v43 = (v42 - *v42);
    v44 = *v43;
    if (v44 >= 5 && v43[2] && *(v42 + v43[2]))
    {
      if (v44 < 9 || (v45 = v43[4]) == 0)
      {
        LOBYTE(v46) = 0;
LABEL_70:
        v38 |= 1 << v46;
        goto LABEL_71;
      }

      v46 = *(v42 + v45);
      if (v46 <= 0x1E)
      {
        goto LABEL_70;
      }
    }

LABEL_71:
    if (v41)
    {
      for (i = 0; i != v41; ++i)
      {
        v48 = (&v40[i] + v40[i]);
        v49 = (v48 - *v48);
        if (*v49 >= 9u)
        {
          v50 = v49[4];
          if (v50)
          {
            if (*(v48 + v50))
            {
              continue;
            }
          }
        }

        if (i >= 0x1F)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
        }

        v38 &= ~(1 << i);
      }
    }

    ++v39;
  }

  while (v39 != v36);
  if ((v38 & 0x7FFFFFFF) == 0)
  {
LABEL_133:
    std::string::append(&v82, "No active buffer found ");
    v8 = 0;
    goto LABEL_134;
  }

  *__s = 0;
  if (*v23)
  {
    v51 = 0;
    do
    {
      v52 = (&v37[v51] + v37[v51]);
      v53 = (v52 - *v52);
      v54 = *v53;
      if (v54 >= 5)
      {
        if (v53[2])
        {
          v55 = *(v52 + v53[2]);
          if (*(v52 + v53[2]))
          {
            if (v54 < 9)
            {
              LOBYTE(v56) = 0;
LABEL_91:
              if ((v38 >> v56))
              {
                *v86 = v55;
                std::string::append(&__p, __s, 4uLL);
                std::string::append(&__p, v86, 4uLL);
                v57 = (v52 - *v52);
                if (*v57 < 9u)
                {
                  LODWORD(v58) = 0;
                }

                else
                {
                  v58 = v57[4];
                  if (v58)
                  {
                    LODWORD(v58) = *(v52 + v58);
                  }
                }

                *v85 = v58;
                std::string::append(&__p, v85, 4uLL);
                v59 = (v52 - *v52);
                if (*v59 < 7u)
                {
                  v60 = 0;
                }

                else
                {
                  v60 = v59[3];
                  if (v60)
                  {
                    v60 = *(v52 + v60);
                  }
                }

                *v84 = v60;
                std::string::append(&__p, v84, 8uLL);
                v51 = *__s;
              }

              goto LABEL_101;
            }

            v56 = v53[4];
            if (!v56)
            {
              goto LABEL_91;
            }

            LODWORD(v56) = *(v52 + v56);
            if (v56 <= 0x1E)
            {
              goto LABEL_91;
            }
          }
        }
      }

LABEL_101:
      *__s = ++v51;
    }

    while (*v23 > v51);
  }

  *v86 = 0;
  if (*v32)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    do
    {
      v64 = (&v40[v61] + v40[v61]);
      v65 = (v64 - *v64);
      if (*v65 >= 9u)
      {
        v66 = v65[4];
        if (v66)
        {
          v67 = *(v64 + v66);
          v68 = v67 && v61 <= 30;
          if (v68 && ((v38 >> v63) & 1) != 0)
          {
            *v84 = v67;
            std::string::append(&__p, v86, 4uLL);
            std::string::append(&__p, v84, 8uLL);
            v69 = (v64 - *v64);
            if (*v69 >= 5u && (v70 = v69[2]) != 0)
            {
              v71 = *(v64 + v70);
            }

            else
            {
              v71 = 1;
            }

            *v85 = v71;
            std::string::append(&__p, v85, 4uLL);
            v72 = *v85 == 4;
            v73 = (v64 - *v64);
            if (*v73 >= 7u && (v74 = v73[3]) != 0)
            {
              v75 = *(v64 + v74);
            }

            else
            {
              v75 = 1;
            }

            *__s = v75;
            std::string::append(&__p, __s, 8uLL);
            v62 |= v72;
            v61 = *v86;
          }
        }
      }

      *v86 = ++v61;
      v63 = v61;
    }

    while (v61 < *v32);
    if (((v35 != 0) & v62) != 0)
    {
      std::string::append(&__p, v89, 2uLL);
    }
  }

  if (v80)
  {
    std::string::append(&__p, v88, 2uLL);
    std::string::append(&__p, v87, 2uLL);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  *a3 = size;
  v77 = malloc_type_malloc(size, 0x100004077774924uLL);
  *a2 = v77;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  memcpy(v77, p_p, *a3);
  v8 = 1;
LABEL_134:
  if (a4)
  {
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v82.__r_.__value_.__l.__size_)
      {
        goto LABEL_10;
      }
    }

    else if (*(&v82.__r_.__value_.__s + 23))
    {
LABEL_7:
      v9 = &v82;
LABEL_11:
      *a4 = strdup(v9);
    }
  }

LABEL_32:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  return v8;
}