void sub_185C11C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(MTL4MetalScriptBuilderImpl *this@<X0>, MTL4FunctionDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [-[MTL4FunctionDescriptor library](a2 "library")];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 libraryData];
      v9 = (*(*v8 + 352))(v8);
      v10 = (*(*v8 + 344))(v8);
      v11 = (*(*v8 + 312))(v8);
      MTL4MetalScriptBuilderImpl::addLibraryData(this, v9, v10, v11);
      v12 = [v7 bitCodeHash];
      v13 = v12[1];
      v106 = *v12;
      v107 = v13;
      v14 = [(MTL4FunctionDescriptor *)a2 name];
      v15 = (*(*v8 + 344))(v8);
      MTL4MetalScriptBuilderImpl::addFunctionFromLibrary(this, &v106, v14, v15);
      std::string::basic_string[abi:ne200100]<0>(&c, [-[MTL4FunctionDescriptor name](a2 "name")]);
      v16 = *c.count;
      *&v86 = *c.hash;
      *(&v86 + 7) = *(&c.hash[1] + 3);
      v17 = HIBYTE(c.hash[3]);
      v18 = v107;
      *a3 = v106;
      *(a3 + 16) = v18;
      v19 = v86;
      *(a3 + 32) = v16;
      *(a3 + 40) = v19;
      *(a3 + 47) = *(&v86 + 7);
      *(a3 + 55) = v17;
      *(a3 + 56) = v7;
      *(a3 + 64) = 1;
      goto LABEL_111;
    }

LABEL_55:
    *a3 = 0;
    *(a3 + 64) = 0;
    goto LABEL_111;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(&v101, this, [(MTL4FunctionDescriptor *)a2 functionDescriptor]);
    if ((v105 & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 64) = 0;
      goto LABEL_111;
    }

    data = v101;
    v98 = v102;
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = v103;
    }

    v100 = v104;
    v40 = [(MTL4FunctionDescriptor *)a2 constantValues];
    v41 = [(MTL4FunctionDescriptor *)a2 specializedName];
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 0x20u);
    if (v100)
    {
      if ([(MTL4FunctionDescriptor *)a2 specializedName])
      {
        v42 = [(MTL4FunctionDescriptor *)a2 specializedName];
        if (([v42 isEqualToString:{objc_msgSend(v100, "name")}] & 1) != 0 || objc_msgSend(-[MTL4FunctionDescriptor specializedName](a2, "specializedName"), "isEqualToString:", &stru_1EF478240))
        {
          v41 = 0;
        }
      }

      if (![objc_msgSend(v100 "functionConstants")] && !v41)
      {
        v86 = data;
        v87 = v98;
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v88, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          *v88 = *&__s.__r_.__value_.__l.__data_;
          *&v89 = *(&__s.__r_.__value_.__l + 2);
        }

        v52 = v100;
        v53 = v87;
        *a3 = v86;
        *(a3 + 16) = v53;
        *(a3 + 32) = *v88;
        *(a3 + 48) = v89;
        *(a3 + 56) = v52;
        *(a3 + 64) = 1;
        goto LABEL_105;
      }

      *&v86 = 0;
      v45 = newConstantScriptForFunction(v40, v100, [v100 name], v41, &v86);

      __src.__r_.__value_.__r.__words[0] = 0;
      size_ptr.__r_.__value_.__r.__words[0] = 0;
      map = dispatch_data_create_map(v45, &__src.__r_.__value_.__l.__data_, &size_ptr);
      serializeConstantScript(__src.__r_.__value_.__l.__data_, size_ptr.__r_.__value_.__l.__data_, &__p);
    }

    else
    {
      *&v86 = 0;
      BYTE8(v86) = 0;
      v87 = xmmword_185DB8250;
      *v88 = 0u;
      v89 = 0u;
      v90 = 0;
      v91 = 1;
      v92 = 256;
      v93 = 0;
      p_s = &__s;
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (p_s = __s.__r_.__value_.__r.__words[0]) != 0)
      {
        if (p_s->__r_.__value_.__s.__data_[0])
        {
          v44 = strlen(p_s);
          LODWORD(p_s) = flatbuffers::FlatBufferBuilder::CreateString(&v86, p_s, v44);
        }

        else
        {
          LODWORD(p_s) = 0;
        }
      }

      v49 = [v41 cStringUsingEncoding:4];
      v50 = v49;
      if (v49)
      {
        if (*v49)
        {
          v51 = strlen(v49);
          LODWORD(v50) = flatbuffers::FlatBufferBuilder::CreateString(&v86, v50, v51);
        }

        else
        {
          LODWORD(v50) = 0;
        }
      }

      v54 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v86, &flatbuffers::data<flatbuffers::Offset<Air::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Air::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Air::FunctionConstantValue>> const&)::t, 0);
      BYTE6(v90) = 1;
      v55 = v89;
      v56 = v88[0];
      v57 = v88[1];
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v86, 4, p_s);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v86, 6, v50);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v86, 8, v54);
      v58 = flatbuffers::FlatBufferBuilder::EndTable(&v86, v56 - v55 + v57);
      BYTE6(v90) = 1;
      v59 = v89;
      LOWORD(v54) = v88[0];
      v60 = v88[1];
      v61 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&v86, 2);
      flatbuffers::FlatBufferBuilder::TrackField(&v86, 6, v61);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v86, 8, v58);
      v62 = flatbuffers::FlatBufferBuilder::EndTable(&v86, v54 - v59 + v60);
      flatbuffers::FlatBufferBuilder::Finish(&v86, v62, "AIRC", 0);
      v63 = v89;
      v64 = (LODWORD(v88[0]) + LODWORD(v88[1]) - v89);
      __src.__r_.__value_.__r.__words[0] = v86;
      __src.__r_.__value_.__s.__data_[8] = BYTE8(v86);
      __src.__r_.__value_.__r.__words[2] = v88[1];
      v81 = v88[0];
      v82 = v89;
      v83 = v64;
      if (BYTE8(v86) == 1)
      {
        *&v86 = 0;
        BYTE8(v86) = 0;
      }

      *v88 = 0u;
      v89 = 0u;
      serializeConstantScript(v63, v64, &__p);
      flatbuffers::DetachedBuffer::~DetachedBuffer(&__src);
      flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v86);
    }

    CC_SHA256_Update(&c, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[1]);
    free(__p.__r_.__value_.__l.__data_);
    if (__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__r.__words[2]);
    }

    if (v41)
    {
      CC_SHA256_Update(&c, [-[MTL4FunctionDescriptor specializedName](a2 "specializedName")], objc_msgSend(-[MTL4FunctionDescriptor specializedName](a2, "specializedName"), "cStringLength"));
      std::string::basic_string[abi:ne200100]<0>(&__src, [v41 UTF8String]);
    }

    else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__src, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      __src = __s;
    }

    if (v100)
    {
    }

    CC_SHA256_Final(v94, &c);
    MTL4MetalScriptBuilderImpl::addSpecializedFunction(this, v94, &data, v41, [(MTL4FunctionDescriptor *)a2 constantValues]);
    v86 = *v94;
    v87 = v95;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v88, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      *v88 = *&__src.__r_.__value_.__l.__data_;
      *&v89 = *(&__src.__r_.__value_.__l + 2);
    }

    v65 = v87;
    *a3 = v86;
    *(a3 + 16) = v65;
    *(a3 + 32) = *v88;
    *(a3 + 48) = v89;
    *(a3 + 56) = 0;
    *(a3 + 64) = 1;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

LABEL_105:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if ((v105 & 1) != 0 && SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      v48 = v103.__r_.__value_.__r.__words[0];
      goto LABEL_110;
    }

    goto LABEL_111;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_55;
  }

  v20 = [(MTL4FunctionDescriptor *)a2 functionGraph];
  std::string::basic_string[abi:ne200100]<0>(&data, -[NSString UTF8String](-[MTLFunctionStitchingGraph functionName](v20, "functionName"), "UTF8String"));
  v67 = v20;
  v68 = a3;
  memset(&__src, 0, sizeof(__src));
  v94[0] = 0;
  v94[1] = 0;
  *&v95 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v21 = [(MTL4FunctionDescriptor *)a2 functionDescriptors];
  v22 = [v21 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v22)
  {
    v23 = *v77;
    v69 = v21;
    do
    {
      v24 = 0;
      do
      {
        if (*v77 != v23)
        {
          objc_enumerationMutation(v21);
        }

        MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(&c, this, *(*(&v76 + 1) + 8 * v24));
        if ((c.wbuf[6] & 1) == 0)
        {
          *v68 = 0;
          *(v68 + 64) = 0;
          goto LABEL_75;
        }

        v86 = *c.count;
        v87 = *&c.hash[2];
        v25 = SHIBYTE(c.wbuf[3]);
        if (SHIBYTE(c.wbuf[3]) < 0)
        {
          std::string::__init_copy_ctor_external(v88, *&c.hash[6], *c.wbuf);
        }

        else
        {
          *v88 = *&c.hash[6];
          *&v89 = *&c.wbuf[2];
        }

        *(&v89 + 1) = *&c.wbuf[4];
        v101 = v86;
        v102 = v87;
        MTL4MetalScriptBuilderImpl::HashToString(&v101, &size_ptr);
        if ((size_ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_size_ptr = &size_ptr;
        }

        else
        {
          p_size_ptr = size_ptr.__r_.__value_.__r.__words[0];
        }

        if ((size_ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(size_ptr.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = size_ptr.__r_.__value_.__l.__size_;
        }

        MTL4MetalScriptBuilderImpl::makeFunctionName(p_size_ptr, size, &__p);
        v75 = MTLMetalScriptSerializer::addString((this + 368), &__p);
        std::vector<unsigned int>::push_back[abi:ne200100](v94, &v75);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(size_ptr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(size_ptr.__r_.__value_.__l.__data_);
        }

        if (*(&v89 + 1))
        {
        }

        v28 = __src.__r_.__value_.__l.__size_;
        if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
        {
          v31 = __src.__r_.__value_.__r.__words[0];
          v32 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
          v33 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 5;
          v34 = v33 + 1;
          if ((v33 + 1) >> 59)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v35 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
          if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 4 > v34)
          {
            v34 = v35 >> 4;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFE0)
          {
            v34 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(&__src, v34);
          }

          v36 = (32 * v33);
          v37 = v87;
          *v36 = v86;
          v36[1] = v37;
          v30 = 32 * v33 + 32;
          memcpy(0, v31, v32);
          v38 = __src.__r_.__value_.__r.__words[0];
          __src.__r_.__value_.__r.__words[0] = 0;
          *&__src.__r_.__value_.__r.__words[1] = v30;
          if (v38)
          {
            operator delete(v38);
          }

          v21 = v69;
        }

        else
        {
          v29 = v87;
          *__src.__r_.__value_.__l.__size_ = v86;
          *(v28 + 16) = v29;
          v30 = v28 + 32;
        }

        __src.__r_.__value_.__l.__size_ = v30;
        if (SBYTE7(v89) < 0)
        {
          operator delete(v88[0]);
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        operator delete(*&c.hash[6]);
LABEL_44:
        ++v24;
      }

      while (v22 != v24);
      v39 = [v21 countByEnumeratingWithState:&v76 objects:v85 count:16];
      v22 = v39;
    }

    while (v39);
  }

  v86 = 0u;
  v87 = 0u;
  v73 = __src;
  memset(&__src, 0, sizeof(__src));
  _MTLGetStitchingLookupHash(&v73, v67, &v86);
  if (v73.__r_.__value_.__r.__words[0])
  {
    v73.__r_.__value_.__l.__size_ = v73.__r_.__value_.__r.__words[0];
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v70 = v94[0];
  v71 = *v94;
  v72 = v95;
  v94[1] = 0;
  *&v95 = 0;
  v94[0] = 0;
  MTL4MetalScriptBuilderImpl::addStitchedFunction(this, &v86, &v71, v67);
  if (v70)
  {
    operator delete(v70);
  }

  *c.count = v86;
  *&c.hash[2] = v87;
  if (SBYTE7(v98) < 0)
  {
    std::string::__init_copy_ctor_external(&c.hash[6], data, *(&data + 1));
  }

  else
  {
    *&c.hash[6] = data;
    *&c.wbuf[2] = v98;
  }

  v47 = *&c.hash[2];
  *v68 = *c.count;
  *(v68 + 16) = v47;
  *(v68 + 32) = *&c.hash[6];
  *(v68 + 48) = *&c.wbuf[2];
  *(v68 + 56) = 0;
  *(v68 + 64) = 1;
LABEL_75:
  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }

  if (__src.__r_.__value_.__r.__words[0])
  {
    __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v98) < 0)
  {
    v48 = data;
LABEL_110:
    operator delete(v48);
  }

LABEL_111:
  v66 = *MEMORY[0x1E69E9840];
}

void sub_185C127FC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (*(v1 - 160) == 1 && *(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(MTL4MetalScriptBuilderImpl *this, MTL4StaticLinkingDescriptor *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2 && ([(NSArray *)[(MTL4StaticLinkingDescriptor *)a2 functionDescriptors] count]|| [(NSArray *)[(MTL4StaticLinkingDescriptor *)a2 privateFunctionDescriptors] count]|| [(NSDictionary *)[(MTL4StaticLinkingDescriptor *)a2 groups] count]))
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = [(MTL4StaticLinkingDescriptor *)a2 functionDescriptors];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v5)
    {
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v4);
          }

          MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, *(*(&v33 + 1) + 8 * i), &v46);
          if (v48)
          {
            v44 = v46;
            v45 = v47;
            MTL4MetalScriptBuilderImpl::HashToString(&v44, &v30);
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v8 = &v30;
            }

            else
            {
              v8 = v30.__r_.__value_.__r.__words[0];
            }

            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v30.__r_.__value_.__l.__size_;
            }

            MTL4MetalScriptBuilderImpl::makeFunctionName(v8, size, &__p);
            v32 = MTLMetalScriptSerializer::addString((this + 368), &__p);
            std::vector<unsigned int>::push_back[abi:ne200100](&v40, &v32);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }
          }
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v5);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(MTL4StaticLinkingDescriptor *)a2 privateFunctionDescriptors];
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v43 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, *(*(&v26 + 1) + 8 * j), &v46);
          if (v48)
          {
            v44 = v46;
            v45 = v47;
            MTL4MetalScriptBuilderImpl::HashToString(&v44, &v30);
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &v30;
            }

            else
            {
              v14 = v30.__r_.__value_.__r.__words[0];
            }

            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v15 = v30.__r_.__value_.__l.__size_;
            }

            MTL4MetalScriptBuilderImpl::makeFunctionName(v14, v15, &__p);
            v32 = MTLMetalScriptSerializer::addString((this + 368), &__p);
            std::vector<unsigned int>::push_back[abi:ne200100](&v37, &v32);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v43 count:16];
      }

      while (v11);
    }

    if (v41 == v40)
    {
      v16 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
    }

    else
    {
      v16 = v40;
    }

    v17 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v16, (v41 - v40) >> 2);
    if (v38 == v37)
    {
      v18 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
    }

    else
    {
      v18 = v37;
    }

    v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v18, (v38 - v37) >> 2);
    *(this + 438) = 1;
    v20 = *(this + 100);
    v21 = *(this + 104);
    v22 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v17);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v19);
    v23 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v20 - v21 + v22);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_185C12D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createColorAttachments(MTL4MetalScriptBuilderImpl *this, MTLTileRenderPipelineColorAttachmentDescriptorArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  do
  {
    if ([[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:v4] pixelFormat])
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 8);
  if (v5 == 0xFFFFFFFF)
  {
    return 0;
  }

  __src = 0;
  v25 = 0;
  v26 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v5);
  v7 = 0;
  v8 = v5 + 1;
  do
  {
    *(this + 438) = 1;
    v9 = *(this + 100);
    v10 = *(this + 104);
    v11 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this + 46, 4, [[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:v7] pixelFormat], 0);
    v12 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v9 - v10 + v11);
    v13 = v25;
    if (v25 >= v26)
    {
      v15 = __src;
      v16 = v25 - __src;
      v17 = (v25 - __src) >> 2;
      v18 = v17 + 1;
      if ((v17 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v19 = v26 - __src;
      if ((v26 - __src) >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v20);
      }

      *(4 * v17) = v12;
      v14 = (4 * v17 + 4);
      memcpy(0, v15, v16);
      v21 = __src;
      __src = 0;
      v25 = v14;
      v26 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v25 = v12;
      v14 = v13 + 4;
    }

    v25 = v14;
    ++v7;
  }

  while (v8 != v7);
  if (v14 == __src)
  {
    v22 = &flatbuffers::data<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v22 = __src;
  }

  v6 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v22, (v14 - __src) >> 2);
  if (__src)
  {
    v25 = __src;
    operator delete(__src);
  }

  return v6;
}

void sub_185C12F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createColorAttachments(MTL4MetalScriptBuilderImpl *this, MTL4RenderPipelineColorAttachmentDescriptorArray *a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0xFFFFFFFFLL;
  do
  {
    v8 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "pixelFormat"}];
    v9 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "writeMask"}];
    v10 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "alphaBlendOperation"}] | v8;
    v11 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "blendingState"}];
    v12 = v10 | v11 | [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "rgbBlendOperation"}];
    v13 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "destinationAlphaBlendFactor"}];
    v14 = v12 | v13 | [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "destinationRGBBlendFactor"}];
    v15 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "sourceAlphaBlendFactor"}];
    if ([-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "sourceRGBBlendFactor"}] != 1 || v15 != 1 || v14 != 0 || v9 != 15)
    {
      v7 = v6;
    }

    ++v6;
  }

  while (v6 != 8);
  if (v7 == 0xFFFFFFFF)
  {
    return 0;
  }

  __src = 0;
  v44 = 0;
  v45 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v7);
  v20 = 0;
  v21 = v7 + 1;
  do
  {
    *(this + 438) = 1;
    v22 = *(this + 100);
    v23 = *(this + 104);
    v24 = *(this + 102);
    v25 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "pixelFormat"}];
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this + 46, 4, v25, 0);
    if (v25 <= 301)
    {
      if (v25 == 26 || v25 == 66 || v25 == 116)
      {
        v27 = *a3;
        if ((*a3 & 0x1FFFFFF8) == 0)
        {
          v27 = *a3 & 0x60000000 | 8;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v26 = v25 - 95;
      if ((v25 - 607) <= 0x2B)
      {
        if (((1 << v26) & 0x1FFF7F) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 9;
          v29 = (*a3 & 0x1FFFFFFF) >= 9;
          goto LABEL_24;
        }

        if (((1 << v26) & 0x7FFF800000) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 0xA;
          v29 = (*a3 & 0x1FFFFFFE) >= 0xA;
          goto LABEL_24;
        }

        if (((1 << v26) & 0xF8000000000) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 0xB;
          v29 = (*a3 & 0x1FFFFFFF) >= 0xB;
LABEL_24:
          if (!v29)
          {
            v27 = v28;
          }

LABEL_26:
          v30 = v27 | 0x80000000;
LABEL_27:
          *a3 = v30;
          goto LABEL_28;
        }
      }

      if (v25 == 302)
      {
        v30 = *a3 | 0x60000000;
        goto LABEL_27;
      }
    }

LABEL_28:
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 6, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "writeMask"}], 15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "blendingState"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 10, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "alphaBlendOperation"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 12, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "rgbBlendOperation"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 14, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "destinationAlphaBlendFactor"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 16, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "destinationRGBBlendFactor"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 18, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "sourceAlphaBlendFactor"}], 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 20, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "sourceRGBBlendFactor"}], 1);
    v31 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v22 - v23 + v24);
    v32 = v44;
    if (v44 >= v45)
    {
      v34 = __src;
      v35 = v44 - __src;
      v36 = (v44 - __src) >> 2;
      v37 = v36 + 1;
      if ((v36 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v38 = v45 - __src;
      if ((v45 - __src) >> 1 > v37)
      {
        v37 = v38 >> 1;
      }

      v29 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
      v39 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v39 = v37;
      }

      if (v39)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v39);
      }

      *(4 * v36) = v31;
      v33 = (4 * v36 + 4);
      memcpy(0, v34, v35);
      v40 = __src;
      __src = 0;
      v44 = v33;
      v45 = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v44 = v31;
      v33 = v32 + 4;
    }

    v44 = v33;
    ++v20;
  }

  while (v21 != v20);
  if (v33 == __src)
  {
    v41 = &flatbuffers::data<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v41 = __src;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v41, (v33 - __src) >> 2);
  if (__src)
  {
    v44 = __src;
    operator delete(__src);
  }

  return v19;
}

void sub_185C1348C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::addSize(MTL4MetalScriptBuilderImpl *this, MTLSize *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v10, &v11, 3uLL);
  if (v8 == __p)
  {
    v3 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v3 = __p;
  }

  v4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>((this + 368), v3, (v8 - __p) >> 3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_185C13570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::initFromData(MTL4MetalScriptBuilderImpl *this, char *a2)
{
  v113 = *a2;
  v3 = &a2[v113];
  v4 = *&a2[v113];
  v5 = -v4;
  v6 = &a2[v113 - v4];
  v115 = &a2[v113];
  if (*v6 >= 0xDu)
  {
    v7 = *(v6 + 6);
    if (v7)
    {
      v8 = *&v3[v7];
      v9 = *&v3[v7 + v8];
      if (v9)
      {
        v10 = 0;
        v11 = 4 * v9;
        v12 = &a2[v7 + v113 + v8];
        do
        {
          v13 = *&v12[v10 + 4];
          v14 = &v12[v10 + v13];
          v15 = Mtl4::CloneLibrary<Mtl4::Library>((this + 368), v14 + 4);
          v16 = &v12[v10 + v13 - *(v14 + 1)];
          if (*(v16 + 2) >= 5u && (v17 = *(v16 + 4)) != 0)
          {
            v18 = &v12[v10 + 4 + v13 + v17 + *&v12[v10 + 4 + v13 + v17]];
          }

          else
          {
            v18 = 0;
          }

          flatbuffers::String::str(v18, __p);
          v118 = __p;
          *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 11, __p) + 10) = v15;
          if (v117 < 0)
          {
            operator delete(__p[0]);
          }

          v10 += 4;
        }

        while (v11 != v10);
        v3 = v115;
        v5 = -*v115;
      }
    }
  }

  v19 = &v3[v5];
  if (*v19 >= 0xFu)
  {
    v20 = *(v19 + 7);
    if (*(v19 + 7))
    {
      v21 = *&v115[v20];
      v22 = &v115[v20 + v21];
      v23 = *v22;
      v24 = -v23;
      v25 = &v22[-v23];
      if (*v25 >= 5u)
      {
        v26 = *(v25 + 2);
        if (v26)
        {
          v27 = *&v22[v26];
          v28 = *&v22[v26 + v27];
          if (v28)
          {
            v107 = &v115[v20 + v21];
            v109 = *&v115[v20];
            v29 = 0;
            v30 = 4 * v28;
            v111 = v20;
            v31 = &a2[v26 + v21 + v20 + v113 + v27];
            do
            {
              v32 = *&v31[v29 + 4];
              v33 = &v31[v29 + v32];
              v34 = Mtl4::CloneLibraryFunctionDescriptor<Mtl4::LibraryFunctionDescriptor>((this + 368), v33 + 4);
              v35 = &v31[v29 + v32 - *(v33 + 1)];
              if (*(v35 + 2) >= 5u && (v36 = *(v35 + 4)) != 0)
              {
                v37 = &v31[v29 + 4 + v32 + v36 + *&v31[v29 + 4 + v32 + v36]];
              }

              else
              {
                v37 = 0;
              }

              flatbuffers::String::str(v37, __p);
              v118 = __p;
              *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 16, __p) + 10) = v34;
              if (v117 < 0)
              {
                operator delete(__p[0]);
              }

              v29 += 4;
            }

            while (v30 != v29);
            v22 = v107;
            v21 = v109;
            v24 = -*v107;
            v20 = v111;
          }
        }
      }

      if (*&v22[v24] >= 7u)
      {
        v38 = *&v22[v24 + 6];
        if (*&v22[v24 + 6])
        {
          v39 = *&v22[v38];
          v40 = *&v22[v38 + v39];
          if (v40)
          {
            v108 = v22;
            v110 = v21;
            v41 = 0;
            v42 = 4 * v40;
            v112 = v20;
            v43 = &a2[v38 + v21 + v20 + v113 + v39];
            do
            {
              v44 = *&v43[v41 + 4];
              v45 = &v43[v41 + v44];
              v46 = Mtl4::CloneSpecializedFunctionDescriptor<Mtl4::SpecializedFunctionDescriptor>(this + 368, v45 + 4);
              v47 = &v43[v41 + v44 - *(v45 + 1)];
              if (*(v47 + 2) >= 5u && (v48 = *(v47 + 4)) != 0)
              {
                v49 = &v43[v41 + 4 + v44 + v48 + *&v43[v41 + 4 + v44 + v48]];
              }

              else
              {
                v49 = 0;
              }

              flatbuffers::String::str(v49, __p);
              v118 = __p;
              *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 21, __p) + 10) = v46;
              if (v117 < 0)
              {
                operator delete(__p[0]);
              }

              v41 += 4;
            }

            while (v42 != v41);
            v22 = v108;
            v21 = v110;
            v24 = -*v108;
            v20 = v112;
          }
        }
      }

      v50 = &v22[v24];
      if (*v50 >= 9u)
      {
        v51 = *(v50 + 4);
        if (v51)
        {
          v52 = *&v22[v51];
          v53 = *&v22[v51 + v52];
          if (v53)
          {
            v54 = 0;
            v55 = 4 * v53;
            v56 = &a2[v51 + v21 + v20 + v113 + v52];
            do
            {
              v57 = *&v56[v54 + 4];
              v58 = &v56[v54 + v57];
              v59 = Mtl4::CloneStitchedFunctionDescriptor<Mtl4::StitchedFunctionDescriptor>(this + 368, v58 + 4);
              v60 = &v56[v54 + v57 - *(v58 + 1)];
              if (*(v60 + 2) >= 5u && (v61 = *(v60 + 4)) != 0)
              {
                v62 = &v56[v54 + 4 + v57 + v61 + *&v56[v54 + 4 + v57 + v61]];
              }

              else
              {
                v62 = 0;
              }

              flatbuffers::String::str(v62, __p);
              v118 = __p;
              *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 26, __p) + 10) = v59;
              if (v117 < 0)
              {
                operator delete(__p[0]);
              }

              v54 += 4;
            }

            while (v55 != v54);
          }
        }
      }
    }
  }

  v63 = &v115[-*v115];
  if (*v63 >= 0x11u)
  {
    v64 = *(v63 + 8);
    if (*(v63 + 8))
    {
      v65 = *&v115[v64];
      v66 = &v115[v64 + v65];
      v67 = *v66;
      v68 = -v67;
      v69 = &v66[-v67];
      if (*v69 >= 5u)
      {
        v70 = *(v69 + 2);
        if (v70)
        {
          v71 = *&v66[v70];
          v72 = *&v66[v70 + v71];
          if (v72)
          {
            v73 = 4 * v72;
            v74 = &a2[v65 + 4 + v64 + v113 + v71 + v70];
            v75 = v74;
            do
            {
              v76 = *v75;
              v75 += 4;
              LODWORD(__p[0]) = Mtl4::CloneComputePipelineDescriptor<Mtl4::ComputePipelineDescriptor>(this + 368, &v74[v76]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 31, __p);
              v74 = v75;
              v73 -= 4;
            }

            while (v73);
            v68 = -*v66;
          }
        }
      }

      if (*&v66[v68] >= 7u)
      {
        v77 = *&v66[v68 + 6];
        if (*&v66[v68 + 6])
        {
          v78 = *&v66[v77];
          v79 = *&v66[v77 + v78];
          if (v79)
          {
            v80 = 4 * v79;
            v81 = &a2[v64 + 4 + v113 + v78 + v77 + v65];
            v82 = v81;
            do
            {
              v83 = *v82;
              v82 += 4;
              LODWORD(__p[0]) = Mtl4::CloneRenderPipelineDescriptor<Mtl4::RenderPipelineDescriptor>(this + 368, &v81[v83]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 34, __p);
              v81 = v82;
              v80 -= 4;
            }

            while (v80);
            v68 = -*v66;
          }
        }
      }

      if (*&v66[v68] >= 9u)
      {
        v84 = *&v66[v68 + 8];
        if (*&v66[v68 + 8])
        {
          v85 = *&v66[v84];
          v86 = *&v66[v84 + v85];
          if (v86)
          {
            v87 = 4 * v86;
            v88 = &a2[v64 + 4 + v113 + v85 + v84 + v65];
            v89 = v88;
            do
            {
              v90 = *v89;
              v89 += 4;
              LODWORD(__p[0]) = Mtl4::CloneTileRenderPipelineDescriptor<Mtl4::TileRenderPipelineDescriptor>(this + 368, &v88[v90]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 37, __p);
              v88 = v89;
              v87 -= 4;
            }

            while (v87);
            v68 = -*v66;
          }
        }
      }

      v91 = &v66[v68];
      if (*v91 >= 0xBu)
      {
        v92 = *(v91 + 5);
        if (v92)
        {
          v93 = *&v66[v92];
          v94 = *&v66[v92 + v93];
          if (v94)
          {
            v95 = 4 * v94;
            v96 = &a2[v64 + 4 + v113 + v93 + v92 + v65];
            v97 = v96;
            do
            {
              v98 = *v97;
              v97 += 4;
              LODWORD(__p[0]) = Mtl4::CloneMeshRenderPipelineDescriptor<Mtl4::MeshRenderPipelineDescriptor>(this + 368, &v96[v98]);
              std::vector<unsigned int>::push_back[abi:ne200100](this + 40, __p);
              v96 = v97;
              v95 -= 4;
            }

            while (v95);
          }
        }
      }
    }
  }

  v99 = &v115[-*v115];
  if (*v99 >= 0x13u)
  {
    v100 = *(v99 + 9);
    if (v100)
    {
      v101 = *&v115[v100];
      v102 = *&v115[v100 + v101];
      if (v102)
      {
        v103 = 4 * v102;
        v104 = &a2[v113 + 4 + v101 + v100];
        v105 = v104;
        do
        {
          v106 = *v105;
          v105 += 4;
          LODWORD(__p[0]) = Mtl4::CloneBinaryFunctionDescriptor<Mtl4::BinaryFunctionDescriptor>(this + 368, &v104[v106]);
          std::vector<unsigned int>::push_back[abi:ne200100](this + 43, __p);
          v104 = v105;
          v103 -= 4;
        }

        while (v103);
      }
    }
  }
}

void sub_185C13CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneLibrary<Mtl4::Library>(flatbuffers::FlatBufferBuilder *this, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(this, &a2[v7 + 4 + *&a2[v7]], *&a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    v11 = flatbuffers::FlatBufferBuilder::CreateString(this, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    v11 = 0;
  }

  *(this + 70) = 1;
  v12 = *(this + 5);
  v13 = *(this + 6);
  v14 = *(this + 4);
  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, String);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(this, v14 - v13 + v12);
}

uint64_t Mtl4::CloneLibraryFunctionDescriptor<Mtl4::LibraryFunctionDescriptor>(flatbuffers::FlatBufferBuilder *this, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(this, &a2[v7 + 4 + *&a2[v7]], *&a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v9 = flatbuffers::FlatBufferBuilder::CreateString(this, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(this, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    v12 = 0;
  }

  *(this + 70) = 1;
  v13 = *(this + 5);
  v14 = *(this + 6);
  v15 = *(this + 4);
  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 8, String);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(this, v15 - v14 + v13);
}

uint64_t Mtl4::CloneSpecializedFunctionDescriptor<Mtl4::SpecializedFunctionDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0xDu && (v7 = *(v6 + 6)) != 0)
  {
    v19 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl421FunctionConstantValueEEEZNS3_34CloneSpecializedFunctionDescriptorINS3_29SpecializedFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_44SpecializedFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0xBu && *&a2[v5 + 10])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 10] + 4 + *&a2[*&a2[v5 + 10]]], *&a2[*&a2[v5 + 10] + *&a2[*&a2[v5 + 10]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v11 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = &a2[v5];
  if (*v12 >= 5u && (v13 = *(v12 + 2)) != 0)
  {
    v14 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v13 + 4 + *&a2[v13]], *&a2[v13 + *&a2[v13]]);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 70) = 1;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, String);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v11);
  }

  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v14);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v15);
}

uint64_t Mtl4::CloneStitchedFunctionDescriptor<Mtl4::StitchedFunctionDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v8 = Mtl4::FunctionStitching::CloneGraph<Mtl4::FunctionStitching::Graph>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v17 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl431CloneStitchedFunctionDescriptorINS5_26StitchedFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_41StitchedFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t Mtl4::CloneComputePipelineDescriptor<Mtl4::ComputePipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x17u && (v7 = *(v6 + 11)) != 0)
  {
    v8 = Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0xFu && *&a2[v5 + 14])
  {
    v9 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 14] + *&a2[*&a2[v5 + 14]]]);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0xDu && *&a2[v5 + 12])
  {
    VectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[*&a2[v5 + 12] + *&a2[*&a2[v5 + 12]]], &a2[*&a2[v5 + 12] + *&a2[*&a2[v5 + 12]]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = &a2[v5];
  if (*v13 >= 0xBu && (v14 = *(v13 + 5)) != 0)
  {
    v15 = *&a2[v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v15, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v9);
  }

  if (VectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, VectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  v19 = &a2[-*a2];
  v21 = *v19 >= 0x15u && (v20 = *(v19 + 10)) != 0 && a2[v20] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v21, 0);
  v22 = &a2[-*a2];
  if (*v22 >= 0x13u && (v23 = *(v22 + 9)) != 0)
  {
    v24 = a2[v23];
    if (v24 >= 2)
    {
      abort();
    }
  }

  else
  {
    v24 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v24, 0);
  v25 = &a2[-*a2];
  v27 = *v25 >= 0x11u && (v26 = *(v25 + 8)) != 0 && a2[v26] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v27, 0);
  v28 = &a2[-*a2];
  v30 = *v28 >= 9u && (v29 = *(v28 + 4)) != 0 && a2[v29] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v30, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v16);
}

uint64_t Mtl4::CloneRenderPipelineDescriptor<Mtl4::RenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x43u && (v7 = *(v6 + 33)) != 0)
  {
    v8 = Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0x29u && *&a2[v5 + 40])
  {
    v95 = &a2[*&a2[v5 + 40] + *&a2[*&a2[v5 + 40]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl439RenderPipelineColorAttachmentDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v95, &v95, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0x13u && *&a2[v5 + 18])
  {
    v94 = Mtl4::CloneVertexDescriptor<Mtl4::VertexDescriptor>(a1, &a2[*&a2[v5 + 18] + *&a2[*&a2[v5 + 18]]]);
    v5 = -*a2;
  }

  else
  {
    v94 = 0;
  }

  if (*&a2[v5] >= 0xDu && *&a2[v5 + 12])
  {
    v10 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 12] + *&a2[*&a2[v5 + 12]]]);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*&a2[v5] >= 0xBu && *&a2[v5 + 10])
  {
    v11 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 10] + *&a2[*&a2[v5 + 10]]]);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v13 = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v14 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 70) = 1;
  v92 = *(a1 + 48);
  v93 = *(a1 + 40);
  v15 = &a2[v5];
  v91 = *(a1 + 32);
  if (*v15 >= 0x23u && (v16 = *(v15 + 17)) != 0)
  {
    v17 = *&a2[v16];
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 34, v17, -1);
  v18 = &a2[-*a2];
  if (*v18 >= 0x21u && (v19 = *(v18 + 16)) != 0)
  {
    v20 = *&a2[v19];
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 32, v20, 0);
  v21 = &a2[-*a2];
  if (*v21 >= 0x1Fu && (v22 = *(v21 + 15)) != 0)
  {
    v23 = *&a2[v22];
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 30, v23, 1);
  v25 = &a2[-*a2];
  if (*v25 >= 0x17u)
  {
    v26 = *(v25 + 11);
    if (v26)
    {
      v24 = *&a2[v26];
    }

    else
    {
      v24 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 22, v24, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 66, v8);
  }

  v27 = &a2[-*a2];
  if (*v27 >= 0x3Fu && (v28 = *(v27 + 31)) != 0)
  {
    v29 = *&a2[v28];
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 62, v29, 0);
  v30 = &a2[-*a2];
  if (*v30 >= 0x3Du && (v31 = *(v30 + 30)) != 0)
  {
    v32 = *&a2[v31];
  }

  else
  {
    v32 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 60, v32, 0);
  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 40, v9);
  }

  v33 = &a2[-*a2];
  v34 = 1.0;
  if (*v33 >= 0x25u)
  {
    v35 = *(v33 + 18);
    if (v35)
    {
      v34 = *&a2[v35];
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 36, v34, 1.0);
  if (v94)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v94);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v11);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, String);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v13);
  }

  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v14);
  }

  v36 = &a2[-*a2];
  v38 = *v36 >= 0x41u && (v37 = *(v36 + 32)) != 0 && a2[v37] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, v38, 0);
  v39 = &a2[-*a2];
  v41 = *v39 >= 0x3Bu && (v40 = *(v39 + 29)) != 0 && a2[v40] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 58, v41, 0);
  v42 = &a2[-*a2];
  v44 = *v42 >= 0x39u && (v43 = *(v42 + 28)) != 0 && a2[v43] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, v44, 0);
  v45 = &a2[-*a2];
  if (*v45 >= 0x37u && (v46 = *(v45 + 27)) != 0)
  {
    v47 = a2[v46];
  }

  else
  {
    v47 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 54, v47, 255);
  v48 = &a2[-*a2];
  if (*v48 >= 0x35u && (v49 = *(v48 + 26)) != 0)
  {
    v50 = a2[v49];
    if (v50 >= 8)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v50 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 52, v50, 0);
  v51 = &a2[-*a2];
  v53 = *v51 >= 0x33u && (v52 = *(v51 + 25)) != 0 && a2[v52] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, v53, 0);
  v54 = &a2[-*a2];
  if (*v54 >= 0x31u && (v55 = *(v54 + 24)) != 0)
  {
    v56 = a2[v55];
    if (v56 >= 0x10)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v56 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, v56, 0);
  v57 = &a2[-*a2];
  v59 = *v57 >= 0x2Fu && (v58 = *(v57 + 23)) != 0 && a2[v58] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, v59, 0);
  v60 = &a2[-*a2];
  if (*v60 >= 0x2Du && (v61 = *(v60 + 22)) != 0)
  {
    v62 = a2[v61];
    if (v62 >= 2)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v62 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, v62, 0);
  v63 = &a2[-*a2];
  if (*v63 >= 0x2Bu && (v64 = *(v63 + 21)) != 0)
  {
    v65 = a2[v64];
    if (v65 >= 2)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v65 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v65, 0);
  v66 = &a2[-*a2];
  v68 = *v66 >= 0x27u && (v67 = *(v66 + 19)) != 0 && a2[v67] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v68, 0);
  v69 = &a2[-*a2];
  if (*v69 >= 0x1Du && (v70 = *(v69 + 14)) != 0)
  {
    v71 = a2[v70];
    if (v71 >= 2)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v71 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v71, 0);
  v72 = &a2[-*a2];
  if (*v72 >= 0x1Bu && (v73 = *(v72 + 13)) != 0)
  {
    v74 = a2[v73];
    if (v74 >= 2)
    {
LABEL_141:
      abort();
    }
  }

  else
  {
    v74 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v74, 0);
  v75 = &a2[-*a2];
  v77 = *v75 < 0x19u || (v76 = *(v75 + 12)) == 0 || a2[v76] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v77, 1);
  v78 = &a2[-*a2];
  if (*v78 >= 0x15u && (v79 = *(v78 + 10)) != 0)
  {
    v80 = a2[v79];
    if (v80 >= 4)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v80 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v80, 0);
  v81 = &a2[-*a2];
  v83 = *v81 >= 0x11u && (v82 = *(v81 + 8)) != 0 && a2[v82] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v83, 0);
  v84 = &a2[-*a2];
  if (*v84 < 0xFu)
  {
    v88 = 0;
    v87 = v91;
    v86 = v92;
  }

  else
  {
    v85 = *(v84 + 7);
    v87 = v91;
    v86 = v92;
    if (v85)
    {
      v88 = a2[v85] != 0;
    }

    else
    {
      v88 = 0;
    }
  }

  v89 = v87 - v86;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v88, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v89 + v93);
}

uint64_t Mtl4::CloneTileRenderPipelineDescriptor<Mtl4::TileRenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x19u && (v7 = *(v6 + 12)) != 0)
  {
    v32 = Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v32 = 0;
  }

  if (*&a2[v5] >= 0x17u && *&a2[v5 + 22])
  {
    v33 = &a2[*&a2[v5 + 22] + *&a2[*&a2[v5 + 22]]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl443TileRenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneTileRenderPipelineDescriptorINS3_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v33, &v33, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0xFu && *&a2[v5 + 14])
  {
    v9 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 14] + *&a2[*&a2[v5 + 14]]]);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[v5] >= 0xDu && *&a2[v5 + 12])
  {
    VectorIyZN4Mtl433CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN4Mtl433CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[*&a2[v5 + 12] + *&a2[*&a2[v5 + 12]]], &a2[*&a2[v5 + 12] + *&a2[*&a2[v5 + 12]]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN4Mtl433CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = &a2[v5];
  if (*v13 >= 0x15u && (v14 = *(v13 + 10)) != 0)
  {
    v15 = *&a2[v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v15, 0);
  v19 = &a2[-*a2];
  if (*v19 >= 0x13u && (v20 = *(v19 + 9)) != 0)
  {
    v21 = *&a2[v20];
  }

  else
  {
    v21 = 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, v21, 1);
  v22 = &a2[-*a2];
  if (*v22 >= 0xBu && (v23 = *(v22 + 5)) != 0)
  {
    v24 = *&a2[v23];
  }

  else
  {
    v24 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v24, 0);
  if (v32)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, v32);
  }

  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v9);
  }

  if (VectorIyZN4Mtl433CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, VectorIyZN4Mtl433CloneTileRenderPipelineDescriptorINS2_28TileRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43TileRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  v25 = &a2[-*a2];
  v27 = *v25 >= 0x11u && (v26 = *(v25 + 8)) != 0 && a2[v26] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v27, 0);
  v28 = &a2[-*a2];
  v30 = *v28 >= 9u && (v29 = *(v28 + 4)) != 0 && a2[v29] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v30, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v16);
}

uint64_t Mtl4::CloneMeshRenderPipelineDescriptor<Mtl4::MeshRenderPipelineDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0x53u && (v7 = *(v6 + 41)) != 0)
  {
    v112 = Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v112 = 0;
  }

  if (*&a2[v5] >= 0x3Bu && *&a2[v5 + 58])
  {
    v113 = &a2[*&a2[v5 + 58] + *&a2[*&a2[v5 + 58]]];
    v110 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl439RenderPipelineColorAttachmentDescriptorEEEZNS3_33CloneMeshRenderPipelineDescriptorINS3_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v113, &v113, a1);
    v5 = -*a2;
  }

  else
  {
    v110 = 0;
  }

  if (*&a2[v5] >= 0x21u && *&a2[v5 + 32])
  {
    v111 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 32] + *&a2[*&a2[v5 + 32]]]);
    v5 = -*a2;
  }

  else
  {
    v111 = 0;
  }

  if (*&a2[v5] >= 0x1Fu && *&a2[v5 + 30])
  {
    v109 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 30] + *&a2[*&a2[v5 + 30]]]);
    v5 = -*a2;
  }

  else
  {
    v109 = 0;
  }

  if (*&a2[v5] >= 0x1Du && *&a2[v5 + 28])
  {
    v8 = Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(a1, &a2[*&a2[v5 + 28] + *&a2[*&a2[v5 + 28]]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 0x17u && *&a2[v5 + 22])
  {
    VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[*&a2[v5 + 22] + *&a2[*&a2[v5 + 22]]], &a2[*&a2[v5 + 22] + *&a2[*&a2[v5 + 22]]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0x15u && *&a2[v5 + 20])
  {
    VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE1_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE1_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *&a2[*&a2[v5 + 20] + *&a2[*&a2[v5 + 20]]], &a2[*&a2[v5 + 20] + *&a2[*&a2[v5 + 20]]]);
    v5 = -*a2;
  }

  else
  {
    VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE1_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*&a2[v5] >= 0xBu && *&a2[v5 + 10])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 10] + 4 + *&a2[*&a2[v5 + 10]]], *&a2[*&a2[v5 + 10] + *&a2[*&a2[v5 + 10]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  if (*&a2[v5] >= 9u && *&a2[v5 + 8])
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 8] + 4 + *&a2[*&a2[v5 + 8]]], *&a2[*&a2[v5 + 8] + *&a2[*&a2[v5 + 8]]]);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    v13 = 0;
  }

  if (*&a2[v5] >= 5u && *&a2[v5 + 4])
  {
    v14 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 4] + 4 + *&a2[*&a2[v5 + 4]]], *&a2[*&a2[v5 + 4] + *&a2[*&a2[v5 + 4]]]);
    v5 = -*a2;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 70) = 1;
  v107 = *(a1 + 48);
  v108 = *(a1 + 40);
  v15 = &a2[v5];
  v106 = *(a1 + 32);
  if (*v15 >= 0x35u && (v16 = *(v15 + 26)) != 0)
  {
    v17 = *&a2[v16];
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 52, v17, -1);
  v18 = &a2[-*a2];
  if (*v18 >= 0x33u && (v19 = *(v18 + 25)) != 0)
  {
    v20 = *&a2[v19];
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 50, v20, 0);
  v21 = &a2[-*a2];
  if (*v21 >= 0x31u && (v22 = *(v21 + 24)) != 0)
  {
    v23 = *&a2[v22];
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 48, v23, 1);
  v25 = &a2[-*a2];
  if (*v25 >= 0x29u)
  {
    v26 = *(v25 + 20);
    if (v26)
    {
      v24 = *&a2[v26];
    }

    else
    {
      v24 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 40, v24, 1);
  v27 = &a2[-*a2];
  if (*v27 >= 0x1Bu && (v28 = *(v27 + 13)) != 0)
  {
    v29 = *&a2[v28];
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, v29, 0);
  v30 = &a2[-*a2];
  if (*v30 >= 0x19u && (v31 = *(v30 + 12)) != 0)
  {
    v32 = *&a2[v31];
  }

  else
  {
    v32 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 24, v32, 0);
  v33 = &a2[-*a2];
  if (*v33 >= 0x13u && (v34 = *(v33 + 9)) != 0)
  {
    v35 = *&a2[v34];
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 18, v35, 0);
  v36 = &a2[-*a2];
  if (*v36 >= 0x11u && (v37 = *(v36 + 8)) != 0)
  {
    v38 = *&a2[v37];
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v38, 0);
  if (v112)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 82, v112);
  }

  v39 = &a2[-*a2];
  if (*v39 >= 0x4Fu && (v40 = *(v39 + 39)) != 0)
  {
    v41 = *&a2[v40];
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 78, v41, 0);
  if (v110)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v110);
  }

  v42 = &a2[-*a2];
  v43 = 1.0;
  if (*v42 >= 0x37u)
  {
    v44 = *(v42 + 27);
    if (v44)
    {
      v43 = *&a2[v44];
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 54, v43, 1.0);
  if (v111)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, v111);
  }

  if (v109)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v109);
  }

  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v8);
  }

  if (VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE0_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE1_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 20, VectorIyZN4Mtl433CloneMeshRenderPipelineDescriptorINS2_28MeshRenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_43MeshRenderPipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE1_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, String);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v12);
  }

  if (v13)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v13);
  }

  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v14);
  }

  v45 = &a2[-*a2];
  v47 = *v45 >= 0x51u && (v46 = *(v45 + 40)) != 0 && a2[v46] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 80, v47, 0);
  v48 = &a2[-*a2];
  v50 = *v48 >= 0x4Du && (v49 = *(v48 + 38)) != 0 && a2[v49] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 76, v50, 0);
  v51 = &a2[-*a2];
  v53 = *v51 >= 0x4Bu && (v52 = *(v51 + 37)) != 0 && a2[v52] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 74, v53, 0);
  v54 = &a2[-*a2];
  if (*v54 >= 0x49u && (v55 = *(v54 + 36)) != 0)
  {
    v56 = a2[v55];
  }

  else
  {
    v56 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 72, v56, 255);
  v57 = &a2[-*a2];
  if (*v57 >= 0x47u && (v58 = *(v57 + 35)) != 0)
  {
    v59 = a2[v58];
    if (v59 >= 8)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v59 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 70, v59, 0);
  v60 = &a2[-*a2];
  v62 = *v60 >= 0x45u && (v61 = *(v60 + 34)) != 0 && a2[v61] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 68, v62, 0);
  v63 = &a2[-*a2];
  if (*v63 >= 0x43u && (v64 = *(v63 + 33)) != 0)
  {
    v65 = a2[v64];
    if (v65 >= 0x10)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v65 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 66, v65, 0);
  v66 = &a2[-*a2];
  v68 = *v66 >= 0x41u && (v67 = *(v66 + 32)) != 0 && a2[v67] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 64, v68, 0);
  v69 = &a2[-*a2];
  if (*v69 >= 0x3Fu && (v70 = *(v69 + 31)) != 0)
  {
    v71 = a2[v70];
    if (v71 >= 2)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v71 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 62, v71, 0);
  v72 = &a2[-*a2];
  if (*v72 >= 0x3Du && (v73 = *(v72 + 30)) != 0)
  {
    v74 = a2[v73];
    if (v74 >= 2)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v74 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 60, v74, 0);
  v75 = &a2[-*a2];
  v77 = *v75 >= 0x39u && (v76 = *(v75 + 28)) != 0 && a2[v76] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, v77, 0);
  v78 = &a2[-*a2];
  if (*v78 >= 0x2Fu && (v79 = *(v78 + 23)) != 0)
  {
    v80 = a2[v79];
    if (v80 >= 2)
    {
LABEL_162:
      abort();
    }
  }

  else
  {
    v80 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, v80, 0);
  v81 = &a2[-*a2];
  if (*v81 >= 0x2Du && (v82 = *(v81 + 22)) != 0)
  {
    v83 = a2[v82];
    if (v83 >= 2)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v83 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, v83, 0);
  v84 = &a2[-*a2];
  v86 = *v84 < 0x2Bu || (v85 = *(v84 + 21)) == 0 || a2[v85] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v86, 1);
  v87 = &a2[-*a2];
  v89 = *v87 >= 0x27u && (v88 = *(v87 + 19)) != 0 && a2[v88] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v89, 0);
  v90 = &a2[-*a2];
  v92 = *v90 >= 0x25u && (v91 = *(v90 + 18)) != 0 && a2[v91] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v92, 0);
  v93 = &a2[-*a2];
  v95 = *v93 >= 0x23u && (v94 = *(v93 + 17)) != 0 && a2[v94] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v95, 0);
  v96 = &a2[-*a2];
  v98 = *v96 >= 0xFu && (v97 = *(v96 + 7)) != 0 && a2[v97] != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v98, 0);
  v99 = &a2[-*a2];
  if (*v99 < 0xDu)
  {
    v103 = 0;
    v102 = v106;
    v101 = v107;
  }

  else
  {
    v100 = *(v99 + 6);
    v102 = v106;
    v101 = v107;
    if (v100)
    {
      v103 = a2[v100] != 0;
    }

    else
    {
      v103 = 0;
    }
  }

  v104 = v102 - v101;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v103, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v104 + v108);
}

uint64_t Mtl4::CloneBinaryFunctionDescriptor<Mtl4::BinaryFunctionDescriptor>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v8 = Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(a1, &a2[v7 + *&a2[v7]]);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[*&a2[v5 + 6] + 4 + *&a2[*&a2[v5 + 6]]], *&a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]]);
    v5 = -*a2;
  }

  else
  {
    String = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    v12 = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, String);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTL4MetalScriptBuilderImpl::newSerializedMetalScript(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  if (*&this[64]._os_unfair_lock_opaque != *&this[62]._os_unfair_lock_opaque || *&this[70]._os_unfair_lock_opaque != *&this[68]._os_unfair_lock_opaque || *&this[76]._os_unfair_lock_opaque != *&this[74]._os_unfair_lock_opaque || *&this[82]._os_unfair_lock_opaque != *&this[80]._os_unfair_lock_opaque || *&this[88]._os_unfair_lock_opaque != *&this[86]._os_unfair_lock_opaque)
  {
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v2 = *&this[26]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = 0;
      do
      {
        if (v3 >= v113)
        {
          v4 = v111;
          v5 = v3 - v111;
          v6 = (v3 - v111) >> 2;
          v7 = v6 + 1;
          if ((v6 + 1) >> 62)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v8 = v113 - v111;
          if ((v113 - v111) >> 1 > v7)
          {
            v7 = v8 >> 1;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v9 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v9 = v7;
          }

          if (v9)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v111, v9);
          }

          v10 = (v3 - v111) >> 2;
          v11 = (4 * v6);
          v12 = (4 * v6 - 4 * v10);
          *v11 = *(v2 + 10);
          v3 = (v11 + 1);
          memcpy(v12, v4, v5);
          v13 = v111;
          v111 = v12;
          v112 = v3;
          v113 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v3 = *(v2 + 10);
          v3 += 4;
        }

        v112 = v3;
        v2 = *v2;
      }

      while (v2);
    }

    v14 = *&this[36]._os_unfair_lock_opaque;
    if (v14)
    {
      v15 = v109;
      do
      {
        if (v15 >= v110)
        {
          v16 = v108;
          v17 = v15 - v108;
          v18 = (v15 - v108) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v20 = v110 - v108;
          if ((v110 - v108) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v108, v21);
          }

          v22 = (v15 - v108) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = *(v14 + 10);
          v15 = (v23 + 1);
          memcpy(v24, v16, v17);
          v25 = v108;
          v108 = v24;
          v109 = v15;
          v110 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v15 = *(v14 + 10);
          v15 += 4;
        }

        v109 = v15;
        v14 = *v14;
      }

      while (v14);
    }

    v26 = *&this[46]._os_unfair_lock_opaque;
    if (v26)
    {
      v27 = v106;
      do
      {
        if (v27 >= v107)
        {
          v28 = v105;
          v29 = v27 - v105;
          v30 = (v27 - v105) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v32 = v107 - v105;
          if ((v107 - v105) >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v105, v33);
          }

          v34 = (v27 - v105) >> 2;
          v35 = (4 * v30);
          v36 = (4 * v30 - 4 * v34);
          *v35 = *(v26 + 10);
          v27 = (v35 + 1);
          memcpy(v36, v28, v29);
          v37 = v105;
          v105 = v36;
          v106 = v27;
          v107 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v27 = *(v26 + 10);
          v27 += 4;
        }

        v106 = v27;
        v26 = *v26;
      }

      while (v26);
    }

    v38 = *&this[56]._os_unfair_lock_opaque;
    if (v38)
    {
      v39 = v103;
      do
      {
        if (v39 >= v104)
        {
          v40 = v102;
          v41 = v39 - v102;
          v42 = (v39 - v102) >> 2;
          v43 = v42 + 1;
          if ((v42 + 1) >> 62)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v44 = v104 - v102;
          if ((v104 - v102) >> 1 > v43)
          {
            v43 = v44 >> 1;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v45 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v102, v45);
          }

          v46 = (v39 - v102) >> 2;
          v47 = (4 * v42);
          v48 = (4 * v42 - 4 * v46);
          *v47 = *(v38 + 10);
          v39 = (v47 + 1);
          memcpy(v48, v40, v41);
          v49 = v102;
          v102 = v48;
          v103 = v39;
          v104 = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *v39 = *(v38 + 10);
          v39 += 4;
        }

        v103 = v39;
        v38 = *v38;
      }

      while (v38);
    }

    if (v112 == v111)
    {
      v50 = &flatbuffers::data<flatbuffers::Offset<Mtl4::Library>,std::allocator<flatbuffers::Offset<Mtl4::Library>>>(std::vector<flatbuffers::Offset<Mtl4::Library>> const&)::t;
    }

    else
    {
      v50 = v111;
    }

    v51 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v50, (v112 - v111) >> 2);
    v52 = *&this[64]._os_unfair_lock_opaque - *&this[62]._os_unfair_lock_opaque;
    if (v52)
    {
      v53 = *&this[62]._os_unfair_lock_opaque;
    }

    else
    {
      v53 = &flatbuffers::data<flatbuffers::Offset<Mtl4::ComputePipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::ComputePipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::ComputePipelineDescriptor>> const&)::t;
    }

    v54 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v53, v52 >> 2);
    v55 = *&this[70]._os_unfair_lock_opaque - *&this[68]._os_unfair_lock_opaque;
    if (v55)
    {
      v56 = *&this[68]._os_unfair_lock_opaque;
    }

    else
    {
      v56 = &flatbuffers::data<flatbuffers::Offset<Mtl4::RenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::RenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::RenderPipelineDescriptor>> const&)::t;
    }

    v57 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v56, v55 >> 2);
    v58 = *&this[82]._os_unfair_lock_opaque - *&this[80]._os_unfair_lock_opaque;
    if (v58)
    {
      v59 = *&this[80]._os_unfair_lock_opaque;
    }

    else
    {
      v59 = &flatbuffers::data<flatbuffers::Offset<Mtl4::MeshRenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::MeshRenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::MeshRenderPipelineDescriptor>> const&)::t;
    }

    v60 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v59, v58 >> 2);
    v61 = *&this[76]._os_unfair_lock_opaque - *&this[74]._os_unfair_lock_opaque;
    if (v61)
    {
      v62 = *&this[74]._os_unfair_lock_opaque;
    }

    else
    {
      v62 = &flatbuffers::data<flatbuffers::Offset<Mtl4::TileRenderPipelineDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::TileRenderPipelineDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::TileRenderPipelineDescriptor>> const&)::t;
    }

    v63 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v62, v61 >> 2);
    v64 = *&this[88]._os_unfair_lock_opaque - *&this[86]._os_unfair_lock_opaque;
    if (v64)
    {
      v65 = *&this[86]._os_unfair_lock_opaque;
    }

    else
    {
      v65 = &flatbuffers::data<flatbuffers::Offset<Mtl4::BinaryFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::BinaryFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::BinaryFunctionDescriptor>> const&)::t;
    }

    v66 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v65, v64 >> 2);
    BYTE2(this[109]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_opaque = this[100]._os_unfair_lock_opaque;
    v68 = this[104]._os_unfair_lock_opaque;
    v69 = this[102]._os_unfair_lock_opaque;
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 4, v54);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 6, v57);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 8, v63);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 10, v60);
    v70 = flatbuffers::FlatBufferBuilder::EndTable(&this[92], os_unfair_lock_opaque - v68 + v69);
    if (v109 == v108)
    {
      v71 = &flatbuffers::data<flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>> const&)::t;
    }

    else
    {
      v71 = v108;
    }

    v72 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v71, (v109 - v108) >> 2);
    if (v106 == v105)
    {
      v73 = &flatbuffers::data<flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>> const&)::t;
    }

    else
    {
      v73 = v105;
    }

    v74 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v73, (v106 - v105) >> 2);
    if (v103 == v102)
    {
      v75 = &flatbuffers::data<flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>> const&)::t;
    }

    else
    {
      v75 = v102;
    }

    v76 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&this[92], v75, (v103 - v102) >> 2);
    BYTE2(this[109]._os_unfair_lock_opaque) = 1;
    v77 = this[100]._os_unfair_lock_opaque;
    v78 = this[104]._os_unfair_lock_opaque;
    v79 = this[102]._os_unfair_lock_opaque;
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 4, v72);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 6, v74);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 8, v76);
    v80 = flatbuffers::FlatBufferBuilder::EndTable(&this[92], v77 - v78 + v79);
    v100 = 0x100000000;
    v101 = 0;
    BYTE2(this[109]._os_unfair_lock_opaque) = 1;
    v81 = this[100]._os_unfair_lock_opaque;
    v82 = this[104]._os_unfair_lock_opaque;
    v83 = this[102]._os_unfair_lock_opaque;
    flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(&this[92], 4, &v100);
    v84 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&this[92], 2);
    flatbuffers::FlatBufferBuilder::TrackField(&this[92]._os_unfair_lock_opaque, 6, v84);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 12, v51);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 14, v80);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 16, v70);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(&this[92], 18, v66);
    v85 = flatbuffers::FlatBufferBuilder::EndTable(&this[92], v81 - v82 + v83);
    flatbuffers::FlatBufferBuilder::Finish(&this[92], v85, "MTL4", 0);
    os_unfair_lock_opaque_low = LOBYTE(this[94]._os_unfair_lock_opaque);
    v88 = *&this[100]._os_unfair_lock_opaque;
    v87 = *&this[102]._os_unfair_lock_opaque;
    v89 = *&this[104]._os_unfair_lock_opaque;
    v94 = *&this[92]._os_unfair_lock_opaque;
    v95 = os_unfair_lock_opaque_low;
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v99 = (v88 + v87 - v89);
    if (os_unfair_lock_opaque_low == 1)
    {
      *&this[92]._os_unfair_lock_opaque = 0;
      LOBYTE(this[94]._os_unfair_lock_opaque) = 0;
    }

    *&this[100]._os_unfair_lock_opaque = 0u;
    *&this[104]._os_unfair_lock_opaque = 0u;
    flatbuffers::IDLOptions::IDLOptions(v92);
    v92[1] = 1;
    v93 = 256;
    flatbuffers::Parser::Parser(v91, v92);
  }

  os_unfair_lock_unlock(this);
  return 0;
}

void sub_185C16854(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  flatbuffers::Parser::~Parser(va);
  flatbuffers::IDLOptions::~IDLOptions(&STACK[0x4D0]);
  flatbuffers::DetachedBuffer::~DetachedBuffer((v5 - 248));
  v7 = *(v5 - 184);
  if (v7)
  {
    *(v5 - 176) = v7;
    operator delete(v7);
  }

  v8 = *(v5 - 160);
  if (v8)
  {
    *(v5 - 152) = v8;
    operator delete(v8);
  }

  v9 = *(v5 - 136);
  if (v9)
  {
    *(v5 - 128) = v9;
    operator delete(v9);
  }

  v10 = *(v5 - 112);
  if (v10)
  {
    *(v5 - 104) = v10;
    operator delete(v10);
  }

  os_unfair_lock_unlock(v4);
  _Unwind_Resume(a1);
}

void MTL4MetalScriptBuilder::~MTL4MetalScriptBuilder(MTL4MetalScriptBuilder *this)
{
  v1 = *this;
  if (v1)
  {
    MTL4MetalScriptBuilderImpl::~MTL4MetalScriptBuilderImpl(v1);
    MEMORY[0x1865FF210]();
  }
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(v5, 4uLL);
      v6 = *(v5 + 6);
    }

    *(v6 - 4) = *a3;
    v7 = v6 - 4;
    *(v5 + 6) = v7;
    v8 = *(v5 + 8) - v7 + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

uint64_t std::pair<std::vector<objc_object  {objcproto24MTLFunctionStitchingNode}*>,std::unordered_map<objc_object  {objcproto24MTLFunctionStitchingNode},unsigned int,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,objc_object  {objcproto24MTLFunctionStitchingNode}*<std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

flatbuffers::IDLOptions *flatbuffers::IDLOptions::IDLOptions(flatbuffers::IDLOptions *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 2) = 2;
  *(this + 3) = 257;
  *(this + 16) = 1;
  *(this + 17) = 0;
  *(this + 25) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 32, "std::unique_ptr");
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 112, "T");
  *(this + 18) = 0;
  *(this + 68) = 1;
  *(this + 138) = 0;
  *(this + 11) = 0u;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 165) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 1;
  *(this + 29) = 0;
  *(this + 264) = 0u;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 255) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 336, "_generated");
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 1;
  *(this + 49) = 0;
  *(this + 200) = 257;
  return this;
}

void sub_185C16D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 335) < 0)
  {
    operator delete(*(v2 + 312));
  }

  if (*(v2 + 311) < 0)
  {
    operator delete(*(v2 + 288));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 255) < 0)
  {
    operator delete(*v7);
  }

  if (*(v2 + 223) < 0)
  {
    operator delete(*(v2 + 200));
  }

  if (*(v2 + 199) < 0)
  {
    operator delete(*v6);
  }

  if (*(v2 + 167) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(v4[3]);
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void flatbuffers::Parser::Parser(flatbuffers::Parser *this, const flatbuffers::IDLOptions *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0xFFFFFFFF00000000;
  *(this + 24) = 1;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 16) = this + 136;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 29) = 0;
  *(this + 28) = this + 232;
  *(this + 30) = 0;
  *(this + 344) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = xmmword_185DB8250;
  *(this + 24) = 0u;
  *(this + 23) = 0u;
  *(this + 50) = 0;
  *(this + 51) = 1;
  *(this + 208) = 256;
  v4 = this + 432;
  *(this + 53) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](this + 54, 256);
  *(this + 480) = 0;
  *(this + 59) = 0;
  *(this + 456) = 0u;
  *(this + 484) = 7;
  *(this + 504) = 0u;
  *(this + 65) = v4;
  *(this + 62) = this + 504;
  *(this + 536) = 0u;
  *(this + 69) = v4;
  *(this + 66) = this + 536;
  *(this + 55) = *(this + 54);
  *(this + 70) = 0;
  *(this + 284) = 0;
  *(this + 40) = 0u;
  *(this + 616) = 0u;
  *(this + 588) = 0u;
  *(this + 604) = 0u;
  *(this + 572) = 0u;
  *(this + 79) = this + 640;
  *(this + 664) = 0u;
  *(this + 82) = this + 664;
  *(this + 87) = 0;
  *(this + 680) = 0u;
  *(this + 712) = 0u;
  *(this + 88) = this + 712;
  flatbuffers::IDLOptions::IDLOptions((this + 728), a2);
  *(this + 1136) = 0;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  if (*(this + 984) == 1)
  {
    *(this + 416) = 1;
  }

  operator new();
}

void sub_185C1792C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = (v15 + 1176);
  std::vector<std::pair<flatbuffers::Value,flatbuffers::FieldDef *>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v15 + 1175) < 0)
  {
    operator delete(*(v15 + 1152));
  }

  flatbuffers::IDLOptions::~IDLOptions((v15 + 728));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v15 + 704, *(v15 + 712));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(v15 + 656, *(v15 + 664));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v15 + 632, *(v15 + 640));
  if (*(v15 + 631) < 0)
  {
    operator delete(*(v15 + 608));
  }

  if (*(v15 + 607) < 0)
  {
    operator delete(*(v15 + 584));
  }

  flexbuffers::Builder::~Builder(v19);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((v20 + 152));
  if (*(v15 + 335) < 0)
  {
    operator delete(*(v15 + 312));
  }

  v22 = *(v20 + 88);
  if (v22)
  {
    *(v15 + 280) = v22;
    operator delete(v22);
  }

  flatbuffers::SymbolTable<flatbuffers::ServiceDef>::~SymbolTable(v18);
  flatbuffers::SymbolTable<flatbuffers::EnumDef>::~SymbolTable(v20 - 8);
  flatbuffers::SymbolTable<flatbuffers::StructDef>::~SymbolTable(v17);
  flatbuffers::SymbolTable<flatbuffers::Type>::~SymbolTable(v16);
  flatbuffers::ParserState::~ParserState(v15);
  _Unwind_Resume(a1);
}

void flatbuffers::ParserState::~ParserState(void **this)
{
  v2 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C17BA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

flatbuffers::IDLOptions *flatbuffers::IDLOptions::IDLOptions(flatbuffers::IDLOptions *this, const flatbuffers::IDLOptions *a2)
{
  v4 = *a2;
  *(this + 10) = *(a2 + 10);
  *this = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  *(this + 20) = *(a2 + 20);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v8 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v8;
  }

  v9 = *(a2 + 68);
  *(this + 138) = *(a2 + 138);
  *(this + 68) = v9;
  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v10;
  }

  v11 = *(a2 + 42);
  *(this + 172) = *(a2 + 172);
  *(this + 42) = v11;
  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v12 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v12;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v13 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v13;
  }

  *(this + 56) = *(a2 + 56);
  if (*(a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v14 = *(a2 + 232);
    *(this + 31) = *(a2 + 31);
    *(this + 232) = v14;
  }

  v15 = *(a2 + 128);
  *(this + 258) = *(a2 + 258);
  *(this + 128) = v15;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 264, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v16 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v16;
  }

  if (*(a2 + 335) < 0)
  {
    std::string::__init_copy_ctor_external(this + 13, *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v17 = *(a2 + 312);
    *(this + 41) = *(a2 + 41);
    *(this + 312) = v17;
  }

  if (*(a2 + 359) < 0)
  {
    std::string::__init_copy_ctor_external(this + 14, *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v18 = *(a2 + 21);
    *(this + 44) = *(a2 + 44);
    *(this + 21) = v18;
  }

  v19 = (this + 360);
  if (*(a2 + 383) < 0)
  {
    std::string::__init_copy_ctor_external(v19, *(a2 + 45), *(a2 + 46));
  }

  else
  {
    v20 = *(a2 + 360);
    *(this + 47) = *(a2 + 47);
    *&v19->__r_.__value_.__l.__data_ = v20;
  }

  v21 = *(a2 + 24);
  *(this + 200) = *(a2 + 200);
  *(this + 24) = v21;
  return this;
}

void sub_185C17EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 359) < 0)
  {
    operator delete(*(v2 + 336));
  }

  if (*(v2 + 335) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 311) < 0)
  {
    operator delete(*(v2 + 288));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 255) < 0)
  {
    operator delete(*(v2 + 232));
  }

  if (*(v2 + 223) < 0)
  {
    operator delete(*(v2 + 200));
  }

  if (*(v2 + 199) < 0)
  {
    operator delete(*(v2 + 176));
  }

  if (*(v2 + 167) < 0)
  {
    operator delete(*(v2 + 144));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C18048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void std::vector<std::pair<flatbuffers::Value,flatbuffers::FieldDef *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<flatbuffers::Value,flatbuffers::FieldDef *>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<flatbuffers::Value,flatbuffers::FieldDef *>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void flexbuffers::Builder::~Builder(flexbuffers::Builder *this)
{
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 96, *(this + 13));
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 64, *(this + 9));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t flatbuffers::SymbolTable<flatbuffers::ServiceDef>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        flatbuffers::SymbolTable<flatbuffers::RPCCall>::~SymbolTable(v4 + 152);
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 72);
        v6 = (v4 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C401A85D49FLL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::RPCCall>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 72);
        v6 = (v4 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C40EE200C30);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x1865FF210](v4, 0x1032C40E9BF265ALL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::EnumDef>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        flatbuffers::SymbolTable<flatbuffers::EnumVal>::~SymbolTable(v4 + 184);
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 72);
        v6 = (v4 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C409EE52067);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::EnumVal>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 88);
        v6 = (v4 + 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C4072A4B994);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::StructDef>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 224);
        *(v4 + 224) = 0;
        if (v5)
        {
          std::default_delete<std::string>::operator()[abi:ne200100](v4 + 224, v5);
        }

        flatbuffers::SymbolTable<flatbuffers::FieldDef>::~SymbolTable(v4 + 152);
        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 72);
        v7 = (v4 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C4058EA06FBLL);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1865FF210);
  }
}

uint64_t flatbuffers::SymbolTable<flatbuffers::FieldDef>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        if (*(v4 + 207) < 0)
        {
          operator delete(*(v4 + 184));
        }

        flatbuffers::SymbolTable<flatbuffers::Value>::~SymbolTable(v4 + 72);
        v6 = (v4 + 48);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        MEMORY[0x1865FF210](v4, 0x10B2C40559199D4);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

uint64_t flatbuffers::SymbolTable<flatbuffers::Type>::~SymbolTable(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        MEMORY[0x1865FF210](*v3, 0x1020C4001A1C0B8);
        v2 = *(a1 + 32);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a1 + 8));
  return a1;
}

void flatbuffers::Parser::~Parser(flatbuffers::Parser *this)
{
  v3 = *(this + 34);
  for (i = *(this + 35); v3 != i; ++v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v8 = *v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
      MEMORY[0x1865FF210](v4, 0x1020C4016EE4530);
      i = *(this + 35);
    }
  }

  v8 = (this + 1176);
  std::vector<std::pair<flatbuffers::Value,flatbuffers::FieldDef *>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  flatbuffers::IDLOptions::~IDLOptions(this + 91);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(this + 704, *(this + 89));
  v8 = (this + 680);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(this + 656, *(this + 83));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 632, *(this + 80));
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 528, *(this + 67));
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 496, *(this + 63));
  v5 = *(this + 57);
  if (v5)
  {
    *(this + 58) = v5;
    operator delete(v5);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 336));
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  v7 = *(this + 34);
  if (v7)
  {
    *(this + 35) = v7;
    operator delete(v7);
  }

  flatbuffers::SymbolTable<flatbuffers::ServiceDef>::~SymbolTable(this + 224);
  flatbuffers::SymbolTable<flatbuffers::EnumDef>::~SymbolTable(this + 176);
  flatbuffers::SymbolTable<flatbuffers::StructDef>::~SymbolTable(this + 128);
  flatbuffers::SymbolTable<flatbuffers::Type>::~SymbolTable(this + 80);
  v8 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void flatbuffers::IDLOptions::~IDLOptions(void **this)
{
  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this + 33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void MTL4MetalScriptBuilderImpl::~MTL4MetalScriptBuilderImpl(MTL4MetalScriptBuilderImpl *this)
{
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 368));
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 168);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 128);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 8);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = 4 * a3;
  *(a1 + 70) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<MTLUINT256_t,MTL4DescriptorHashAndEqual,MTL4DescriptorHashAndEqual,std::allocator<MTLUINT256_t>>::__emplace_unique_key_args<MTLUINT256_t,MTLUINT256_t const&>(void *a1, unint64_t *a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185C19808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C198D0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185C19B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C19C08(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185C19E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C19F40(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185C1A1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C1A278(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl421FunctionConstantValueEEEZNS3_34CloneSpecializedFunctionDescriptorINS3_29SpecializedFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_44SpecializedFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl4::FunctionConstantValue>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::CloneFunctionConstantValue<Mtl4::FunctionConstantValue>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Mtl4::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionConstantValue>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C1AAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Mtl4::FunctionConstantValue>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1AB54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneFunctionConstantValue<Mtl4::FunctionConstantValue>(uint64_t a1, Mtl4::FunctionConstantValue *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  switch(Mtl4::CloneConstantValue<Mtl4::ConstantValue>(v6))
  {
    case 3u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantFloat(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v114);
      goto LABEL_78;
    case 4u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v114);
      goto LABEL_78;
    case 5u:
      v37 = Mtl4::FunctionConstantValue::value_as_ConstantFloat3(a2);
      v38 = *(v37 + 8);
      *&v114 = *v37;
      DWORD2(v114) = v38;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v114);
      goto LABEL_78;
    case 6u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantFloat4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v114);
      goto LABEL_78;
    case 0x10u:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantHalf(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v114);
      goto LABEL_78;
    case 0x11u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantHalf2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v114);
      goto LABEL_78;
    case 0x12u:
      v46 = Mtl4::FunctionConstantValue::value_as_ConstantHalf3(a2);
      v47 = *v46;
      WORD2(v114) = *(v46 + 4);
      LODWORD(v114) = v47;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v114);
      goto LABEL_78;
    case 0x13u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantHalf4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v114);
      goto LABEL_78;
    case 0x1Du:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantInt(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v114);
      goto LABEL_78;
    case 0x1Eu:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantInt2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v114);
      goto LABEL_78;
    case 0x1Fu:
      v33 = Mtl4::FunctionConstantValue::value_as_ConstantInt3(a2);
      v34 = *(v33 + 8);
      *&v114 = *v33;
      DWORD2(v114) = v34;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v114);
      goto LABEL_78;
    case 0x20u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantInt4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v114);
      goto LABEL_78;
    case 0x21u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUInt(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a1, &v114);
      goto LABEL_78;
    case 0x22u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUInt2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a1, &v114);
      goto LABEL_78;
    case 0x23u:
      v48 = Mtl4::FunctionConstantValue::value_as_ConstantUInt3(a2);
      v49 = *(v48 + 8);
      *&v114 = *v48;
      DWORD2(v114) = v49;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a1, &v114);
      goto LABEL_78;
    case 0x24u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUInt4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a1, &v114);
      goto LABEL_78;
    case 0x25u:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantShort(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v114);
      goto LABEL_78;
    case 0x26u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantShort2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v114);
      goto LABEL_78;
    case 0x27u:
      v27 = Mtl4::FunctionConstantValue::value_as_ConstantShort3(a2);
      v28 = *v27;
      WORD2(v114) = *(v27 + 4);
      LODWORD(v114) = v28;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v114);
      goto LABEL_78;
    case 0x28u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantShort4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v114);
      goto LABEL_78;
    case 0x29u:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUShort(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v114);
      goto LABEL_78;
    case 0x2Au:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUShort2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a1, &v114);
      goto LABEL_78;
    case 0x2Bu:
      v35 = Mtl4::FunctionConstantValue::value_as_ConstantUShort3(a2);
      v36 = *v35;
      WORD2(v114) = *(v35 + 4);
      LODWORD(v114) = v36;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a1, &v114);
      goto LABEL_78;
    case 0x2Cu:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUShort4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a1, &v114);
      goto LABEL_78;
    case 0x2Du:
      LOBYTE(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantChar(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v114);
      goto LABEL_78;
    case 0x2Eu:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantChar2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v114);
      goto LABEL_78;
    case 0x2Fu:
      v68 = Mtl4::FunctionConstantValue::value_as_ConstantChar3(a2);
      v69 = *v68;
      BYTE2(v114) = *(v68 + 2);
      LOWORD(v114) = v69;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v114);
      goto LABEL_78;
    case 0x30u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantChar4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v114);
      goto LABEL_78;
    case 0x31u:
      LOBYTE(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v114);
      goto LABEL_78;
    case 0x32u:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v114);
      goto LABEL_78;
    case 0x33u:
      v52 = Mtl4::FunctionConstantValue::value_as_ConstantUChar3(a2);
      v53 = *v52;
      BYTE2(v114) = *(v52 + 2);
      LOWORD(v114) = v53;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v114);
      goto LABEL_78;
    case 0x34u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantUChar4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v114);
      goto LABEL_78;
    case 0x35u:
      LOBYTE(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantBool(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a1, &v114);
      goto LABEL_78;
    case 0x36u:
      LOWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantBool2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a1, &v114);
      goto LABEL_78;
    case 0x37u:
      v58 = Mtl4::FunctionConstantValue::value_as_ConstantBool3(a2);
      v59 = *v58;
      BYTE2(v114) = *(v58 + 2);
      LOWORD(v114) = v59;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a1, &v114);
      goto LABEL_78;
    case 0x38u:
      LODWORD(v114) = *Mtl4::FunctionConstantValue::value_as_ConstantBool4(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a1, &v114);
      goto LABEL_78;
    case 0x51u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantLong(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v114);
      goto LABEL_78;
    case 0x52u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantLong2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v114);
      goto LABEL_78;
    case 0x53u:
      v25 = Mtl4::FunctionConstantValue::value_as_ConstantLong3(a2);
      v26 = *v25;
      *&v115 = *(v25 + 16);
      v114 = v26;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v114);
      goto LABEL_78;
    case 0x54u:
      v23 = Mtl4::FunctionConstantValue::value_as_ConstantLong4(a2);
      v24 = v23[1];
      v114 = *v23;
      v115 = v24;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v114);
      goto LABEL_78;
    case 0x55u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantULong(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v114);
      goto LABEL_78;
    case 0x56u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantULong2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v114);
      goto LABEL_78;
    case 0x57u:
      v64 = Mtl4::FunctionConstantValue::value_as_ConstantULong3(a2);
      v65 = *v64;
      *&v115 = *(v64 + 16);
      v114 = v65;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v114);
      goto LABEL_78;
    case 0x58u:
      v13 = Mtl4::FunctionConstantValue::value_as_ConstantULong4(a2);
      v14 = v13[1];
      v114 = *v13;
      v115 = v14;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v114);
      goto LABEL_78;
    case 0x59u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantDouble(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a1, &v114);
      goto LABEL_78;
    case 0x5Au:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantDouble2(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a1, &v114);
      goto LABEL_78;
    case 0x5Bu:
      v54 = Mtl4::FunctionConstantValue::value_as_ConstantDouble3(a2);
      v55 = *(v54 + 16);
      v114 = *v54;
      *&v115 = v55;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a1, &v114);
      goto LABEL_78;
    case 0x5Cu:
      v79 = Mtl4::FunctionConstantValue::value_as_ConstantDouble4(a2);
      v80 = v79[1];
      v114 = *v79;
      v115 = v80;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a1, &v114);
      goto LABEL_78;
    case 0x5Du:
      v50 = Mtl4::FunctionConstantValue::value_as_ConstantFloat8(a2);
      v51 = v50[1];
      v114 = *v50;
      v115 = v51;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v114);
      goto LABEL_78;
    case 0x5Eu:
      v19 = Mtl4::FunctionConstantValue::value_as_ConstantFloat16(a2);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v116 = v19[2];
      v117 = v22;
      v114 = v20;
      v115 = v21;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v114);
      goto LABEL_78;
    case 0x5Fu:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantHalf8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v114);
      goto LABEL_78;
    case 0x60u:
      v92 = Mtl4::FunctionConstantValue::value_as_ConstantHalf16(a2);
      v93 = v92[1];
      v114 = *v92;
      v115 = v93;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v114);
      goto LABEL_78;
    case 0x61u:
      v77 = Mtl4::FunctionConstantValue::value_as_ConstantInt8(a2);
      v78 = v77[1];
      v114 = *v77;
      v115 = v78;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v114);
      goto LABEL_78;
    case 0x62u:
      v15 = Mtl4::FunctionConstantValue::value_as_ConstantInt16(a2);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v116 = v15[2];
      v117 = v18;
      v114 = v16;
      v115 = v17;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v114);
      goto LABEL_78;
    case 0x63u:
      v56 = Mtl4::FunctionConstantValue::value_as_ConstantUInt8(a2);
      v57 = v56[1];
      v114 = *v56;
      v115 = v57;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a1, &v114);
      goto LABEL_78;
    case 0x64u:
      v60 = Mtl4::FunctionConstantValue::value_as_ConstantUInt16(a2);
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[3];
      v116 = v60[2];
      v117 = v63;
      v114 = v61;
      v115 = v62;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a1, &v114);
      goto LABEL_78;
    case 0x65u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantShort8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v114);
      goto LABEL_78;
    case 0x66u:
      v66 = Mtl4::FunctionConstantValue::value_as_ConstantShort16(a2);
      v67 = v66[1];
      v114 = *v66;
      v115 = v67;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v114);
      goto LABEL_78;
    case 0x67u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUShort8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a1, &v114);
      goto LABEL_78;
    case 0x68u:
      v94 = Mtl4::FunctionConstantValue::value_as_ConstantUShort16(a2);
      v95 = v94[1];
      v114 = *v94;
      v115 = v95;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a1, &v114);
      goto LABEL_78;
    case 0x69u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantChar8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v114);
      goto LABEL_78;
    case 0x6Au:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantChar16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v114);
      goto LABEL_78;
    case 0x6Bu:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUChar8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v114);
      goto LABEL_78;
    case 0x6Cu:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantUChar16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v114);
      goto LABEL_78;
    case 0x6Du:
      v29 = Mtl4::FunctionConstantValue::value_as_ConstantLong8(a2);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[3];
      v116 = v29[2];
      v117 = v32;
      v114 = v30;
      v115 = v31;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v114);
      goto LABEL_78;
    case 0x6Eu:
      v70 = Mtl4::FunctionConstantValue::value_as_ConstantLong16(a2);
      v71 = *v70;
      v72 = v70[1];
      v73 = v70[3];
      v116 = v70[2];
      v117 = v73;
      v114 = v71;
      v115 = v72;
      v74 = v70[4];
      v75 = v70[5];
      v76 = v70[7];
      v120 = v70[6];
      v121 = v76;
      v118 = v74;
      v119 = v75;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v114);
      goto LABEL_78;
    case 0x6Fu:
      v9 = Mtl4::FunctionConstantValue::value_as_ConstantULong8(a2);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v116 = v9[2];
      v117 = v12;
      v114 = v10;
      v115 = v11;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v114);
      goto LABEL_78;
    case 0x70u:
      v81 = Mtl4::FunctionConstantValue::value_as_ConstantULong16(a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = v81[3];
      v116 = v81[2];
      v117 = v84;
      v114 = v82;
      v115 = v83;
      v85 = v81[4];
      v86 = v81[5];
      v87 = v81[7];
      v120 = v81[6];
      v121 = v87;
      v118 = v85;
      v119 = v86;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v114);
      goto LABEL_78;
    case 0x71u:
      v88 = Mtl4::FunctionConstantValue::value_as_ConstantDouble8(a2);
      v89 = *v88;
      v90 = v88[1];
      v91 = v88[3];
      v116 = v88[2];
      v117 = v91;
      v114 = v89;
      v115 = v90;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a1, &v114);
      goto LABEL_78;
    case 0x72u:
      v39 = Mtl4::FunctionConstantValue::value_as_ConstantDouble16(a2);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[3];
      v116 = v39[2];
      v117 = v42;
      v114 = v40;
      v115 = v41;
      v43 = v39[4];
      v44 = v39[5];
      v45 = v39[7];
      v120 = v39[6];
      v121 = v45;
      v118 = v43;
      v119 = v44;
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a1, &v114);
      goto LABEL_78;
    case 0x77u:
      *&v114 = *Mtl4::FunctionConstantValue::value_as_ConstantBool8(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a1, &v114);
      goto LABEL_78;
    case 0x78u:
      v114 = *Mtl4::FunctionConstantValue::value_as_ConstantBool16(a2);
      v8 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a1, &v114);
LABEL_78:
      v7 = v8;
      break;
    default:
      break;
  }

  v96 = (a2 - *a2);
  if (*v96 >= 5u)
  {
    v97 = v96[2];
    if (v97)
    {
      v98 = *(a2 + v97);
      if (v98 >= 3)
      {
        goto LABEL_100;
      }

      if (v98 == 2)
      {
        v100 = Mtl4::FunctionConstantValue::id_as_FunctionConstantName(a2);
        if (v100)
        {
          String = flatbuffers::FlatBufferBuilder::CreateString(a1, v100 + 4, *v100);
          goto LABEL_87;
        }
      }

      else if (v98 == 1)
      {
        LOWORD(v114) = *Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(a2);
        String = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a1, &v114);
LABEL_87:
        v101 = String;
        goto LABEL_89;
      }
    }
  }

  v101 = 0;
LABEL_89:
  *(a1 + 70) = 1;
  v102 = *(a1 + 40);
  v103 = *(a1 + 48);
  v104 = *(a1 + 32);
  if (v7)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v7);
  }

  if (v101)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v101);
  }

  v105 = (a2 - *a2);
  if (*v105 >= 9u && (v106 = v105[4]) != 0)
  {
    v107 = *(a2 + v106);
  }

  else
  {
    v107 = 0;
  }

  v108 = Mtl4::CloneConstantValue<Mtl4::ConstantValue>(v107);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v108, 0);
  v109 = (a2 - *a2);
  if (*v109 >= 5u && (v110 = v109[2]) != 0)
  {
    v111 = *(a2 + v110);
    if (v111 >= 3)
    {
LABEL_100:
      abort();
    }
  }

  else
  {
    v111 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v111, 0);
  result = flatbuffers::FlatBufferBuilder::EndTable(a1, v104 - v103 + v102);
  v113 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Mtl4::CloneConstantValue<Mtl4::ConstantValue>(uint64_t result)
{
  if ((result > 0x38 || ((1 << result) & 0x1FFFFFFE00F0079) == 0) && ((result - 81) > 0x27 || ((1 << (result - 81)) & 0xC3FFFFFFFFLL) == 0))
  {
    abort();
  }

  return result;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 3) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 4) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 6) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 16) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 17) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 18) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 19) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 29) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 30) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 31) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 32)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 33)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 34)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 35)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 36)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 37)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 38)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 39)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 40)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 41)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 42)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 43)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 44)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 45)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 46)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 47)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 48)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 49)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 50)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 51)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 52)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 53)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 54)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 55)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 56)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 81)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 82)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 83)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 84)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 85)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 86)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 87)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 88)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 89)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble2(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 90)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 91)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble4(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 92)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 93)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 94)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 95)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantHalf16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 96)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 97)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantInt16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 98)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 99)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUInt16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 100)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 101)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantShort16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 102)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 103)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUShort16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 104)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 105)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantChar16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 106)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 107)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantUChar16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 108)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 109)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantLong16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 110)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 111)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantULong16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 112)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 113)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantDouble16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 114)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool8(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 119)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantBool16(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 9 || !v1[4])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 0xB && *(this + v1[4]) == 120)
  {
    v3 = v1[5];
    if (v1[5])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionConstantValue::id_as_FunctionConstantName(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 2) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

uint64_t Mtl4::FunctionStitching::CloneGraph<Mtl4::FunctionStitching::Graph>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 0xBu && (v7 = *(v6 + 5)) != 0)
  {
    v19 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl417FunctionStitching9AttributeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v19 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl417FunctionStitching4NodeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE0_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(a1, *v19, &v19, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v8);
  }

  v16 = &a2[-*a2];
  if (*v16 >= 9u)
  {
    v17 = *(v16 + 4);
    if (v17)
    {
      LODWORD(v19) = *&a2[v17];
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 8, &v19);
    }
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl431CloneStitchedFunctionDescriptorINS5_26StitchedFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_41StitchedFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C1D554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl417FunctionStitching9AttributeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneAttribute<Mtl4::FunctionStitching::Attribute>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C1D638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl417FunctionStitching4NodeEEEZNS4_10CloneGraphINS4_5GraphEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS4_20GraphCloneCompatibleET_EE5valueENS2_IS8_EEE4typeERS0_PKSC_EUlmPvE0_vEENS2_INS_6VectorISC_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Node>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::FunctionStitching::CloneNode<Mtl4::FunctionStitching::Node>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C1D71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1D798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::FunctionStitching::CloneAttribute<Mtl4::FunctionStitching::Attribute>(uint64_t a1, Mtl4::FunctionConstantValue *this)
{
  v4 = (this - *this);
  if (*v4 < 5u)
  {
    goto LABEL_7;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(this + v5);
  if (v6 >= 3)
  {
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      Mtl4::FunctionConstantValue::id_as_FunctionConstantIndex(this);
      goto LABEL_17;
    }

LABEL_7:
    *(a1 + 70) = 1;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    goto LABEL_8;
  }

  Mtl4::FunctionConstantValue::id_as_FunctionConstantName(this);
LABEL_17:
  *(a1 + 70) = 1;
  v14 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40));
  *(a1 + 70) = 1;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (v14)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v14);
  }

LABEL_8:
  v10 = (this - *this);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = *(this + v11);
    if (v12 >= 3)
    {
LABEL_11:
      abort();
    }
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v12, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Node>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1D944(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::FunctionStitching::CloneNode<Mtl4::FunctionStitching::Node>(uint64_t a1, Mtl4::FunctionStitching::Node *this)
{
  v4 = (this - *this);
  if (*v4 < 5u)
  {
    goto LABEL_20;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(this + v5);
  if (v6 >= 0xC)
  {
    goto LABEL_33;
  }

  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v18 = AirReflection::Node::node_as_VertexFunction(this);
        v8 = Mtl4::FunctionStitching::CloneBufferNode<Mtl4::FunctionStitching::BufferNode>(a1, v18);
      }

      else if (v6 == 4)
      {
        v16 = AirReflection::Node::node_as_VisibleFunction(this);
        v8 = Mtl4::FunctionStitching::CloneBufferAddressNode<Mtl4::FunctionStitching::BufferAddressNode>(a1, v16);
      }

      else
      {
        v9 = AirReflection::Node::node_as_IntersectionFunction(this);
        v8 = Mtl4::FunctionStitching::CloneBufferDataNode<Mtl4::FunctionStitching::BufferDataNode>(a1, v9);
      }

      goto LABEL_28;
    }

    if (v6 == 1)
    {
      v15 = AirReflection::Node::node_as_FragmentFunction(this);
      v8 = Mtl4::FunctionStitching::CloneInputNode<Mtl4::FunctionStitching::InputNode>(a1, v15);
      goto LABEL_28;
    }

    if (v6 == 2)
    {
      v11 = AirReflection::Node::node_as_KernelFunction(this);
      v8 = Mtl4::FunctionStitching::CloneFunctionNode<Mtl4::FunctionStitching::FunctionNode>(a1, v11);
      goto LABEL_28;
    }

LABEL_20:
    *(a1 + 70) = 1;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    goto LABEL_30;
  }

  if (v6 > 8)
  {
    if (v6 == 9)
    {
      Mtl4::FunctionStitching::Node::node_as_ImageblockNode(this);
      *(a1 + 70) = 1;
      v8 = flatbuffers::FlatBufferBuilder::EndTable(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40));
    }

    else if (v6 == 10)
    {
      v17 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(this);
      v8 = Mtl4::FunctionStitching::CloneBuiltinNode<Mtl4::FunctionStitching::BuiltinNode>(a1, v17);
    }

    else
    {
      v10 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(this);
      v8 = Mtl4::FunctionStitching::CloneEarlyReturnNode<Mtl4::FunctionStitching::EarlyReturnNode>(a1, v10);
    }
  }

  else if (v6 == 6)
  {
    v19 = AirReflection::Node::node_as_MeshFunction(this);
    v8 = Mtl4::FunctionStitching::CloneInputNode<Mtl4::FunctionStitching::InputNode>(a1, v19);
  }

  else
  {
    if (v6 == 7)
    {
      v7 = AirReflection::Node::node_as_ObjectFunction(this);
    }

    else
    {
      v7 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(this);
    }

    v8 = Mtl4::FunctionStitching::CloneInputNode<Mtl4::FunctionStitching::InputNode>(a1, v7);
  }

LABEL_28:
  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

LABEL_30:
  v20 = (this - *this);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = *(this + v21);
    if (v22 >= 0xC)
    {
LABEL_33:
      abort();
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v22, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Mtl4::FunctionStitching::CloneInputNode<Mtl4::FunctionStitching::InputNode>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t Mtl4::FunctionStitching::CloneFunctionNode<Mtl4::FunctionStitching::FunctionNode>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 9u && (v7 = *(v6 + 4)) != 0)
  {
    v17 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder21CreateVectorOfStructsIN4Mtl417FunctionStitching6NodeIdEZNS3_17CloneFunctionNodeINS3_12FunctionNodeEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_27FunctionNodeCloneCompatibleET_EE5valueENS_6OffsetIS6_EEE4typeERS0_PKSA_EUlmPS4_PvE_vEENSB_INS_6VectorISH_EEEEmT0_PT1_(a1, *v17, &v17);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*&a2[v5] >= 7u && *&a2[v5 + 6])
  {
    v17 = &a2[*&a2[v5 + 6] + *&a2[*&a2[v5 + 6]]];
    v9 = _ZN11flatbuffers17FlatBufferBuilder21CreateVectorOfStructsIN4Mtl417FunctionStitching6NodeIdEZNS3_17CloneFunctionNodeINS3_12FunctionNodeEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_27FunctionNodeCloneCompatibleET_EE5valueENS_6OffsetIS6_EEE4typeERS0_PKSA_EUlmPS4_PvE_vEENSB_INS_6VectorISH_EEEEmT0_PT1_(a1, *v17, &v17);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = &a2[v5];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v11 + 4 + *&a2[v11]], *&a2[v11 + *&a2[v11]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t Mtl4::FunctionStitching::CloneBufferNode<Mtl4::FunctionStitching::BufferNode>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 5u)
  {
    v11 = v10[2];
    if (v11)
    {
      if (*(a2 + v11))
      {
        abort();
      }
    }
  }

  if (*(a1 + 80) == 1)
  {
    v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, 0);
    flatbuffers::FlatBufferBuilder::TrackField(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t Mtl4::FunctionStitching::CloneBufferAddressNode<Mtl4::FunctionStitching::BufferAddressNode>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = Mtl4::FunctionStitching::CloneBufferNode<Mtl4::FunctionStitching::BufferNode>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = (a2 + v5);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = *(a2 + v13);
  }

  else
  {
    v14 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v14, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v8);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 - v10 + v9);
}

uint64_t Mtl4::FunctionStitching::CloneBufferDataNode<Mtl4::FunctionStitching::BufferDataNode>(uint64_t a1, int *a2)
{
  v3 = (a2 - *a2);
  if (*v3 >= 5u && (v4 = v3[2]) != 0)
  {
    v5 = Mtl4::FunctionStitching::CloneBufferAddressNode<Mtl4::FunctionStitching::BufferAddressNode>(a1, (a2 + v4 + *(a2 + v4)));
    *(a1 + 70) = 1;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 32);
    if (v5)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v5);
    }
  }

  else
  {
    *(a1 + 70) = 1;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 32);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v8 - v6 + v7);
}

uint64_t Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(Mtl4::FunctionStitching::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 8) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionStitching::Node::node_as_ImageblockNode(Mtl4::FunctionStitching::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 9) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionStitching::Node::node_as_BuiltinNode(Mtl4::FunctionStitching::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 10) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionStitching::CloneBuiltinNode<Mtl4::FunctionStitching::BuiltinNode>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 2)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(Mtl4::FunctionStitching::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 11) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Mtl4::FunctionStitching::CloneEarlyReturnNode<Mtl4::FunctionStitching::EarlyReturnNode>(uint64_t a1, int *a2)
{
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v14 = (a2 + v5 + *(a2 + v5));
    v6 = _ZN11flatbuffers17FlatBufferBuilder21CreateVectorOfStructsIN4Mtl417FunctionStitching6NodeIdEZNS3_17CloneFunctionNodeINS3_12FunctionNodeEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_27FunctionNodeCloneCompatibleET_EE5valueENS_6OffsetIS6_EEE4typeERS0_PKSA_EUlmPS4_PvE_vEENSB_INS_6VectorISH_EEEEmT0_PT1_(a1, *v14, &v14);
    *(a1 + 70) = 1;
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (v6)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v6);
    }
  }

  else
  {
    *(a1 + 70) = 1;
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
  }

  v10 = (a2 - *a2);
  if (*v10 >= 5u)
  {
    v11 = v10[2];
    if (v11)
    {
      v13 = *(a2 + v11);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(a1, 4, &v13);
    }
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v7 + v8);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder21CreateVectorOfStructsIN4Mtl417FunctionStitching6NodeIdEZNS3_17CloneFunctionNodeINS3_12FunctionNodeEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_27FunctionNodeCloneCompatibleET_EE5valueENS_6OffsetIS6_EEE4typeERS0_PKSA_EUlmPS4_PvE_vEENSB_INS_6VectorISH_EEEEmT0_PT1_(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = flatbuffers::FlatBufferBuilder::StartVectorOfStructs<Mtl4::FunctionStitching::NodeId>(a1, a2);
  if (a2)
  {
    v7 = 0;
    v8 = *a3 + 4;
    v9 = a2;
    do
    {
      *(v6 + v7) = *(v8 + (v7 & 0x3FFFFFFFCLL));
      v7 += 4;
      --v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a2);
}

uint64_t flatbuffers::FlatBufferBuilder::StartVectorOfStructs<Mtl4::FunctionStitching::NodeId>(uint64_t a1, uint64_t a2)
{
  v4 = 4 * a2;
  *(a1 + 70) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a2, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v4, 4uLL);
  v5 = *(a1 + 48);
  if (v5 - *(a1 + 56) < (4 * a2))
  {
    flatbuffers::vector_downward::reallocate(a1, v4);
    v5 = *(a1 + 48);
  }

  result = v5 - v4;
  *(a1 + 48) = v5 - v4;
  return result;
}

void *std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1E488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::ClonePipelineOptions<Mtl4::PipelineOptions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = Mtl4::CloneShaderValidationConfiguration<Mtl4::ShaderValidationConfiguration>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = (a2 + v5);
  if (*v9 >= 0x15u && (v10 = v9[10]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v11, 0);
  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v17, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0x17u && (v19 = v18[11]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 22, v20, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  v21 = (a2 - *a2);
  v23 = *v21 >= 0x13u && (v22 = v21[9]) != 0 && *(a2 + v22) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v23, 0);
  v24 = (a2 - *a2);
  v26 = *v24 >= 0x11u && (v25 = v24[8]) != 0 && *(a2 + v25) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v26, 0);
  v27 = (a2 - *a2);
  v29 = *v27 >= 0xFu && (v28 = v27[7]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0xDu && (v31 = v30[6]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 0xBu && (v34 = v33[5]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v35, 0);
  v36 = (a2 - *a2);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = *(a2 + v37);
    if (v38 >= 3)
    {
      abort();
    }
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v38, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Mtl4::CloneStaticLinkingDescriptor<Mtl4::StaticLinkingDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v17 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl413FunctionGroupEEEZNS3_28CloneStaticLinkingDescriptorINS3_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v17 = (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6)));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl428CloneStaticLinkingDescriptorINS5_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + v5);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v17 = (a2 + v11 + *(a2 + v11));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl428CloneStaticLinkingDescriptorINS5_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN4Mtl430CloneComputePipelineDescriptorINS2_25ComputePipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputePipelineDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_185C1E9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneShaderValidationConfiguration<Mtl4::ShaderValidationConfiguration>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  v6 = *v4 >= 0xDu && (v5 = v4[6]) != 0 && *(a2 + v5) != 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v6, 0);
  v10 = (a2 - *a2);
  v12 = *v10 >= 0xBu && (v11 = v10[5]) != 0 && *(a2 + v11) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v12, 0);
  v13 = (a2 - *a2);
  v15 = *v13 >= 9u && (v14 = v13[4]) != 0 && *(a2 + v14) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v15, 0);
  v16 = (a2 - *a2);
  v18 = *v16 >= 7u && (v17 = v16[3]) != 0 && *(a2 + v17) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v18, 0);
  v19 = (a2 - *a2);
  v21 = *v19 >= 5u && (v20 = v19[2]) != 0 && *(a2 + v20) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v21, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl413FunctionGroupEEEZNS3_28CloneStaticLinkingDescriptorINS3_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl4::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::CloneFunctionGroup<Mtl4::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionGroup>,std::allocator<flatbuffers::Offset<Mtl4::FunctionGroup>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C1EC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl428CloneStaticLinkingDescriptorINS5_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C1ED24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl428CloneStaticLinkingDescriptorINS5_23StaticLinkingDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_38StaticLinkingDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C1EE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Mtl4::FunctionGroup>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1EE88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneFunctionGroup<Mtl4::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl418CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN4Mtl418CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185C1F088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1F104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl439RenderPipelineColorAttachmentDescriptorEEEZNS3_29CloneRenderPipelineDescriptorINS3_24RenderPipelineDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39RenderPipelineDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Mtl4::CloneRenderPipelineColorAttachmentDescriptor<Mtl4::RenderPipelineColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_185C1F1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneVertexDescriptor<Mtl4::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl428VertexBufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = (a2 + v10 + *(a2 + v10));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN4Mtl425VertexAttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

void *std::vector<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C1F38C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Mtl4::CloneRenderPipelineColorAttachmentDescriptor<Mtl4::RenderPipelineColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Mtl4::ClonePixelFormat<Mtl4::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x14)
      {
LABEL_36:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(a2 + v30);
    if (v31 >= 3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t Mtl4::ClonePixelFormat<Mtl4::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 263:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}