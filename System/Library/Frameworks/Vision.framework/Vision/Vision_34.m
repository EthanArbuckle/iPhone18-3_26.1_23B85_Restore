void sub_1A5EADD80()
{
  __cxa_end_catch();
  if (v1 == 1 && v0)
  {
    free(v0);
  }

  if (v3 == 1)
  {
    if (v2)
    {
      free(v2);
    }
  }

  JUMPOUT(0x1A5EADED8);
}

void sub_1A5EADE2C()
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&STACK[0x2E0]);
  if (LOBYTE(STACK[0x3A8]) == 1)
  {
    if (STACK[0x380])
    {
      free(STACK[0x380]);
    }
  }

  JUMPOUT(0x1A5EADEC8);
}

void sub_1A5EADE94(void *a1, int a2)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v5);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(&v6);
  switch(a2)
  {
    case 3:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: memory allocation error");
      __cxa_end_catch();
      break;
    case 2:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: an unexpected exception thrown");
      __cxa_end_catch();
      break;
    case 1:
      v4 = __cxa_begin_catch(a1);
      syslog(5, "ERROR: Caught unexpected failure with status code %lld", *v4);
      __cxa_end_catch();
      break;
    default:
      JUMPOUT(0x1A5EADFA8);
  }

  JUMPOUT(0x1A5EAB89CLL);
}

void sub_1A5EADEA8(void *a1, int a2)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&STACK[0x380]);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v5);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(&v6);
  switch(a2)
  {
    case 3:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: memory allocation error");
      __cxa_end_catch();
      break;
    case 2:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: an unexpected exception thrown");
      __cxa_end_catch();
      break;
    case 1:
      v4 = __cxa_begin_catch(a1);
      syslog(5, "ERROR: Caught unexpected failure with status code %lld", *v4);
      __cxa_end_catch();
      break;
    default:
      JUMPOUT(0x1A5EADFA8);
  }

  JUMPOUT(0x1A5EAB89CLL);
}

void sub_1A5EADEBC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p)
{
  if (v36)
  {
    operator delete(v36);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v40);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(&v41);
  switch(a2)
  {
    case 3:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: memory allocation error");
      __cxa_end_catch();
      break;
    case 2:
      __cxa_begin_catch(a1);
      syslog(5, "ERROR: an unexpected exception thrown");
      __cxa_end_catch();
      break;
    case 1:
      v39 = __cxa_begin_catch(a1);
      syslog(5, "ERROR: Caught unexpected failure with status code %lld", *v39);
      __cxa_end_catch();
      break;
    default:
      JUMPOUT(0x1A5EADFA8);
  }

  JUMPOUT(0x1A5EAB89CLL);
}

void sub_1A5EADF94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::FeatureSignSparseCoder<double,16ul>::initialize(uint64_t a1, void *a2)
{
  free(*(a1 + 80));
  *(a1 + 80) = 0;
  *a1 = a2;
  v5 = a2[2];
  v4 = a2[3];
  if (v4 >= v5)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = a2[3];
  }

  v7 = (a2[2] & 1) + a2[2];
  v8 = v7 * 8 * v5 + 15;
  v9 = 8 * v5 + 15;
  v10 = 8 * v4 + 15;
  v52 = 8 * v6 + 15;
  v51 = 8 * (v6 + 1) + 15;
  __val = 16 * (v52 + v10) + 8 * (v8 + v9 + v51) + 112;
  v11 = malloc_type_calloc(__val, 1uLL, 0x100004077774924uLL);
  *(a1 + 80) = v11;
  if (!v11)
  {
    exception = __cxa_allocate_exception(8uLL);
    v41 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v41, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v12 = 16 - (v11 & 0xF);
  if ((v11 & 0xF) == 0)
  {
    v12 = 0;
  }

  v13 = &v11[v12];
  if (*(a1 + 48) == 1)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      free(v14);
    }
  }

  v15 = &v13[8 * v8];
  v16 = 16 - (v15 & 0xF);
  *(a1 + 8) = v13;
  *(a1 + 16) = v13;
  *(a1 + 24) = v5;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  if ((v15 & 0xF) == 0)
  {
    v16 = 0;
  }

  v17 = &v15[v16];
  if (*(a1 + 120) == 1)
  {
    v18 = *(a1 + 88);
    if (v18)
    {
      free(v18);
    }
  }

  v19 = &v17[8 * v9];
  v20 = 16 - (v19 & 0xF);
  *(a1 + 88) = v17;
  *(a1 + 96) = v17;
  *(a1 + 104) = v5;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if ((v19 & 0xF) == 0)
  {
    v20 = 0;
  }

  v21 = &v19[v20];
  if (*(a1 + 160) == 1)
  {
    v22 = *(a1 + 128);
    if (v22)
    {
      free(v22);
    }
  }

  v23 = &v21[8 * v52];
  v24 = 16 - (v23 & 0xF);
  *(a1 + 128) = v21;
  *(a1 + 136) = v21;
  *(a1 + 144) = v6;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0;
  if ((v23 & 0xF) == 0)
  {
    v24 = 0;
  }

  v25 = &v23[v24];
  if (*(a1 + 200) == 1)
  {
    v26 = *(a1 + 168);
    if (v26)
    {
      free(v26);
    }
  }

  v27 = &v25[8 * v10];
  v28 = 16 - (v27 & 0xF);
  *(a1 + 168) = v25;
  *(a1 + 176) = v25;
  *(a1 + 184) = v4;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  if ((v27 & 0xF) == 0)
  {
    v28 = 0;
  }

  v29 = &v27[v28];
  if (*(a1 + 240) == 1)
  {
    v30 = *(a1 + 208);
    if (v30)
    {
      free(v30);
    }
  }

  v31 = v29 + 8 * v10;
  v32 = 16 - (v31 & 0xF);
  *(a1 + 208) = v29;
  *(a1 + 216) = v29;
  *(a1 + 224) = v4;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  if ((v31 & 0xF) == 0)
  {
    v32 = 0;
  }

  v33 = v31 + v32;
  if (*(a1 + 280) == 1)
  {
    v34 = *(a1 + 248);
    if (v34)
    {
      free(v34);
    }
  }

  v35 = v33 + 8 * v51;
  v36 = 16 - (v35 & 0xF);
  *(a1 + 248) = v33;
  *(a1 + 256) = v33;
  *(a1 + 272) = 1;
  *(a1 + 264) = v6 + 1;
  *(a1 + 280) = 0;
  if ((v35 & 0xF) == 0)
  {
    v36 = 0;
  }

  v37 = v35 + v36;
  if (*(a1 + 320) == 1)
  {
    v38 = *(a1 + 288);
    if (v38)
    {
      free(v38);
    }
  }

  *(a1 + 288) = v37;
  *(a1 + 296) = v37;
  *(a1 + 304) = v6;
  *(a1 + 312) = 1;
  *(a1 + 320) = 0;
  if (v37 + 8 * v52 - *(a1 + 80) > __val)
  {
    v42 = v37 + 8 * v52 - *(a1 + 80);
    v43 = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v55, v42);
    v44 = std::string::insert(&v55, 0, "aligned buffer allocation of ", 0x1DuLL);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v56, " exceeded calculated size of ", 0x1DuLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, __val);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v54;
    }

    else
    {
      v48 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&v57, v48, size);
    v58 = *v50;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    vision::mod::FeatureSignSparseCoder_bad_alloc::FeatureSignSparseCoder_bad_alloc(v43, &v58);
  }

  std::vector<float>::resize((a1 + 328), v6);

  return vision::mod::matMult<double,16ul>(a2, a2, 1, (a1 + 8), 0);
}

void sub_1A5EAE3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v38 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v37);
  goto LABEL_14;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

std::bad_alloc *vision::mod::FeatureSignSparseCoder_bad_alloc::FeatureSignSparseCoder_bad_alloc(std::bad_alloc *a1, __int128 *a2)
{
  v4 = std::bad_alloc::bad_alloc(a1);
  v4->__vftable = &unk_1F1973710;
  v5 = &v4[1];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  return a1;
}

void vision::mod::FeatureSignSparseCoder_bad_alloc::~FeatureSignSparseCoder_bad_alloc(std::bad_alloc *this)
{
  this->__vftable = &unk_1F1973710;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::bad_alloc::~bad_alloc(this);
}

{
  this->__vftable = &unk_1F1973710;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::bad_alloc::~bad_alloc(this);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::FeatureSignSparseCoder_bad_alloc::what(vision::mod::FeatureSignSparseCoder_bad_alloc *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t vision::mod::FaceIDModel::predict(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[8];
  v4 = a2[12];
  v5 = v3 < 1 || v4 < 1;
  if (v5 || (v6 = a2[9], (v6 & 0x80000000) != 0))
  {
    syslog(5, "ERROR: invalid image descriptor buffer");
    return 7804;
  }

  v7 = a1;
  v8 = a2[7];
  if (*(a1 + 24))
  {
    if (*(a1 + 60) <= 0.0)
    {
      v9 = &CVML_status_invalidParameter;
      syslog(5, "ERROR: negative or zero sparsity");
    }

    else if (*(a1 + 104) && *(a1 + 112))
    {
      if (*(a1 + 208))
      {
        v9 = &CVML_status_ok;
      }

      else
      {
        v9 = &CVML_status_inconsistentState;
        syslog(5, "ERROR: empty dictionary labels");
      }
    }

    else
    {
      v9 = &CVML_status_inconsistentState;
      syslog(5, "ERROR: empty dictionary D_");
    }
  }

  else
  {
    v9 = &CVML_status_inconsistentState;
    syslog(5, "ERROR: empty usedIds_");
  }

  if ((*v9 + 0x80) != 128)
  {
    return (*v9 + 128) | 0x1E00;
  }

  if (!v6)
  {
    return 7808;
  }

  v11 = v4 & 0x7FFFFFFF;
  v227 = v6 & 0x7FFFFFFF;
  vision::mod::CVMLMatrix<double,16ul>::initialize_(v244, v227, v11);
  v12 = 0;
  do
  {
    v13 = vision::mod::CVMLMatrix<double,16ul>::ptr(v244, v12);
    if (v11)
    {
      v14 = (v8 + v12 * (v3 & 0x7FFFFFFF));
      v15 = 4 * v11;
      do
      {
        v16 = *v14++;
        *v13++ = v16;
        v15 -= 4;
      }

      while (v15);
    }

    ++v12;
  }

  while (v12 != v227);
  v242 = 0;
  *v240 = 0u;
  v241 = 0u;
  v243 = 1;
  v17 = *(v7 + 60);
  if (v17 <= 0.0)
  {
    syslog(5, "lambda must be > 0");
    v10 = 7804;
    goto LABEL_239;
  }

  if (!*(v7 + 344) || (v18 = *(v7 + 264)) == 0)
  {
    syslog(5, "encoder is not initialized");
    v10 = 7796;
    goto LABEL_239;
  }

  *(v7 + 320) = v17;
  *(v7 + 328) = 0;
  v19 = v245;
  vision::mod::CVMLMatrix<double,16ul>::reset(v240, v245, *(v18 + 16));
  v20 = vision::mod::CVMLMatrix<double,16ul>::ptr(v240, 0);
  bzero(v20, 8 * v242 * v241);
  v270 = 0;
  *v268 = 0u;
  v269 = 0u;
  v271 = 1;
  vision::mod::matMult<double,16ul>(v244, *(v7 + 264), 1, v268, 1);
  *(v7 + 336) = v268;
  v255 = 0;
  v254 = 0u;
  v256 = 1;
  memset(&v257, 0, sizeof(v257));
  v259 = 0;
  v260 = 0;
  memset(v265, 0, sizeof(v265));
  v264 = 0u;
  v266 = 1;
  memset(&__p, 0, sizeof(__p));
  v261 = 0;
  v262 = 0;
  v258 = 0;
  v21 = *(v7 + 264);
  if (v21[3] >= v21[2])
  {
    v22 = v21[2];
  }

  else
  {
    v22 = v21[3];
  }

  *v253 = 0uLL;
  vision::mod::CVMLMatrix<double,16ul>::reset(v253, v22, v22);
  vision::mod::CVMLMatrix<double,16ul>::reset(&v264, v21[2], v21[3]);
  std::vector<float>::resize(&v257, v22);
  std::vector<float>::resize(&__p, v22);
  v23 = v21[2];
  v24 = v259;
  v25 = v260;
  v26 = v23 - (v260 - v259);
  v239 = v7;
  v228 = v11;
  if (v23 <= v260 - v259)
  {
    if (v23 < v260 - v259)
    {
      v25 = v259 + v23;
      v260 = v259 + v23;
    }
  }

  else
  {
    if (v261 - v260 < v26)
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(v260, v23 - (v260 - v259));
    v260 = &v25[v26];
    v25 += v26;
    v24 = v259;
  }

  bzero(v24, v25 - v24);
  v221 = (v7 + 272);
  v262 = (v7 + 272);
  v263 = v21;
  v258 = 0;
  if (!v19)
  {
    v177 = 0;
    goto LABEL_221;
  }

  v27 = 0;
  while (2)
  {
    v258 = 0;
    bzero(v259, v260 - v259);
    if (v19 <= v27)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "row index out of range");
      exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
    }

    v28 = v27;
    __src = vision::mod::CVMLMatrix<double,16ul>::ptr(v244, v27);
    if (v269 <= v27)
    {
      v212 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v212, "row index out of range");
      v212->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v212, off_1E77B0718, MEMORY[0x1E69E5280]);
    }

    v225 = v246;
    v29 = vision::mod::CVMLMatrix<double,16ul>::ptr(v268, v27);
    if (v241 <= v27)
    {
      v211 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v211, "row index out of range");
      v211->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v211, off_1E77B0718, MEMORY[0x1E69E5280]);
    }

    v30 = v29;
    v219 = v28;
    v31 = vision::mod::CVMLMatrix<double,16ul>::ptr(v240, v28);
    v32 = 0;
    v248 = v31;
    v249 = v31;
    v250 = *(&v241 + 1);
    v251 = 1;
    v252 = 0;
    v222 = DWORD2(v241);
    __n = 8 * SDWORD2(v241);
    v220 = DWORD2(v241) & 0x7FFFFFFF;
    v229 = v30;
    while (2)
    {
      v224 = v32;
      memcpy(*(v7 + 360), v30, __n);
      vision::mod::matVecMult<double,16ul>(v221, 0, &v248, v7 + 352);
      if (v222 < 1)
      {
        v35 = -1;
        v34 = 0.0;
        v7 = v239;
      }

      else
      {
        v33 = 0;
        v34 = 0.0;
        v35 = -1;
        v7 = v239;
        do
        {
          if (!*(v259 + v33))
          {
            v36 = fabs(*(*(v239 + 360) + 8 * *(v239 + 376) * v33));
            if (v36 > v34)
            {
              v34 = v36;
              v35 = v33;
            }
          }

          ++v33;
        }

        while (v220 != v33);
      }

      if (v34 <= *(v7 + 320))
      {
LABEL_209:
        v64 = 7552;
        goto LABEL_212;
      }

      v37 = v258;
      v38 = v258;
      v39 = *(v7 + 400);
      v40 = *(v7 + 416);
      if (v258 >= 1)
      {
        begin = v257.__begin_;
        v42 = *(v7 + 400);
        v43 = v258;
        v44 = v249;
        v45 = v251;
        do
        {
          v46 = *begin++;
          if (v44[v45 * v46] < 0.0)
          {
            v47 = -1.0;
          }

          else
          {
            v47 = 1.0;
          }

          *v42 = v47;
          v42 += v40;
          --v43;
        }

        while (v43);
      }

      if (*(*(v7 + 360) + 8 * *(v7 + 376) * v35) < 0.0)
      {
        v48 = 1.0;
      }

      else
      {
        v48 = -1.0;
      }

      *(v39 + 8 * v40 * v38) = v48;
      if (v35 < 0 && v35 >= *(v262 + 4))
      {
        syslog(5, "ERROR: dictionary index out of range");
        v50 = &CVML_status_internalError;
      }

      else
      {
        v49 = v257.__begin_;
        if (v37 == ((v257.__end_ - v257.__begin_) >> 2))
        {
          syslog(5, "ERROR: sparsity constraint is too small, increase lambda");
          v50 = &CVML_status_smallSparsity;
        }

        else
        {
          if (v38)
          {
            v51 = vision::mod::CVMLMatrix<double,16ul>::ptr(v262, v35);
            v52 = vision::mod::CVMLMatrix<double,16ul>::ptr(v253, v258);
            v53 = v52;
            v54 = v258;
            if (v258 >= 1)
            {
              v55 = v257.__begin_;
              v56 = v52;
              v57 = v258;
              do
              {
                v58 = *v55++;
                *v56++ = *(v51 + 8 * v58);
                --v57;
              }

              while (v57);
            }

            v59 = v255;
            vision::mod::CVMLMatrix<double,16ul>::ptr(v253, 0);
            v276 = 85;
            v273 = 84;
            v272 = 78;
            LODWORD(v284) = v54;
            LODWORD(v277) = 1;
            LODWORD(v274[0]) = v59;
            LODWORD(v283) = v54;
            LODWORD(v282) = 0;
            v218 = &v282;
            v217 = &v283;
            dtrtrs_NEWLAPACK();
            if ((LODWORD(v282) & 0x80000000) != 0)
            {
              v50 = &CVML_status_LAPACKError;
              goto LABEL_79;
            }

            cblas_ddot_NEWLAPACK();
            v61 = v258;
            *(v53 + 8 * v258) = sqrt(fmax(*(v51 + 8 * v35) - v60, 0.0));
            v49 = v257.__begin_;
          }

          else
          {
            v61 = 0;
            *v253[1] = sqrt(*(v262[1] + 8 * v262[4] * v35 + 8 * v35));
          }

          v49[v61] = v35;
          *(v259 + v35) = 1;
          v62 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v264, v258);
          v63 = vision::mod::CVMLMatrix<double,16ul>::ptr(v263, v35);
          memcpy(v62, v63, 8 * v263[3]);
          ++v258;
          v50 = &CVML_status_ok;
        }
      }

LABEL_79:
      v64 = (*v50 + 128) | 0x1D00;
      if (v64 != 7552)
      {
        v7 = v239;
        goto LABEL_212;
      }

      v65 = 0;
      v7 = v239;
      while (1)
      {
        v30 = v229;
        if (v65 > 99)
        {
          break;
        }

        v66 = v258;
        v231 = v65;
        if (v65 && v258 >= 1)
        {
          v67 = v257.__begin_;
          v68 = v249;
          v69 = v251;
          v70 = *(v7 + 400);
          v71 = 8 * *(v7 + 416);
          v72 = v258;
          do
          {
            v73 = *v67++;
            if (v68[v69 * v73] < 0.0)
            {
              v74 = -1.0;
            }

            else
            {
              v74 = 1.0;
            }

            *v70 = v74;
            v70 = (v70 + v71);
            --v72;
          }

          while (v72);
        }

        v75 = *(v7 + 360);
        v76 = 8 * *(v7 + 376);
        if (v66 >= 1)
        {
          v77 = v257.__begin_;
          v78 = *(v7 + 400);
          v79 = 8 * *(v7 + 416);
          v80 = *(v7 + 360);
          v81 = v66;
          do
          {
            v82 = *v77++;
            *v80 = *(v229 + v82) - *(v7 + 320) * *v78;
            v80 = (v80 + v76);
            v78 = (v78 + v79);
            --v81;
          }

          while (v81);
        }

        v83 = v255;
        vision::mod::CVMLMatrix<double,16ul>::ptr(v253, 0);
        v276 = 85;
        LODWORD(v284) = v66;
        LODWORD(v277) = 1;
        LODWORD(v274[0]) = v83;
        LODWORD(v283) = v66;
        LODWORD(v282) = 0;
        dpotrs_NEWLAPACK();
        v84 = &CVML_status_ok;
        if ((LODWORD(v282) & 0x80000000) != 0)
        {
          syslog(5, "ERROR: illegal value when solving linear equations");
          v84 = &CVML_status_LAPACKError;
        }

        v64 = (*v84 + 128) | 0x1D00;
        if (v64 != 7552)
        {
          v11 = v228;
          goto LABEL_212;
        }

        v85 = *(v7 + 400);
        v86 = *(v7 + 416);
        v274[0] = v85;
        v274[1] = v85;
        v274[3] = v86;
        v274[2] = v66;
        v275 = 0;
        v234 = v86;
        v87 = 8 * v86;
        if (v66 >= 1)
        {
          v88 = v257.__begin_;
          v89 = v85;
          v90 = v66;
          v91 = v249;
          v92 = v251;
          do
          {
            v93 = *v88++;
            *v89 = v91[v92 * v93];
            v89 = (v89 + v87);
            --v90;
          }

          while (v90);
        }

        if (!v66)
        {
          LODWORD(v103) = v258;
LABEL_121:
          if (v103 >= 1)
          {
            v112 = v257.__begin_;
            v113 = v103;
            v114 = v249;
            v115 = v251;
            do
            {
              v116 = *v112++;
              v114[v115 * v116] = *v75;
              v75 = (v75 + v76);
              --v113;
            }

            while (v113);
          }

LABEL_198:
          v175 = 0;
          v142 = 3;
          goto LABEL_199;
        }

        v94 = 0;
        v95 = v85;
        v96 = v66;
        v97 = v75;
        do
        {
          v98 = *v95;
          if (fabs(*v95) > 2.22044605e-16)
          {
            v99 = *v97;
            if (fabs(*v97) > 2.22044605e-16 && (v98 <= 0.0 || v99 <= 0.0) && (v98 >= 0.0 || v99 >= 0.0) && vabdd_f64(v99, v98) >= 2.22044605e-16)
            {
              v100 = (0.0 - v98) / (v99 - v98);
              if (v100 >= 0.0 && v100 <= 1.0)
              {
                v102 = v94++;
                *(*(v7 + 520) + 8 * *(v7 + 536) * v102) = v100;
              }
            }
          }

          v97 = (v97 + v76);
          v95 = (v95 + v87);
          --v96;
        }

        while (v96);
        v103 = v258;
        if (!v94)
        {
          goto LABEL_121;
        }

        *(*(v239 + 520) + 8 * *(v239 + 536) * v94) = 0x3FF0000000000000;
        v232 = v94;
        std::__sort<std::__less<double,double> &,double *>();
        v284 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v264, 0);
        v285 = v284;
        v286 = v258;
        v287 = *&v265[1];
        v288 = 0;
        v104 = *(v239 + 560);
        v105 = *(v239 + 576);
        v277 = v104;
        v278 = v104;
        v280 = v105;
        v279 = v103;
        v281 = 0;
        if (v103 >= 1)
        {
          v106 = v75;
          v107 = v85;
          v108 = v104;
          v109 = v103;
          do
          {
            *v108 = *v106 - *v107;
            v108 += v105;
            v107 = (v107 + v87);
            v106 = (v106 + v76);
            --v109;
          }

          while (v109);
        }

        vision::mod::matVecMult<double,16ul>(&v284, 1, &v277, v239 + 432);
        cblas_ddot_NEWLAPACK();
        v111 = v110;
        if (*(v239 + 496) == 1)
        {
          memcpy(*(v239 + 480), __src, 8 * v225);
        }

        else
        {
          cblas_dcopy_NEWLAPACK();
        }

        vision::mod::matVecMult<double,16ul>(&v284, 1, v274, v239 + 472);
        cblas_ddot_NEWLAPACK();
        v118 = v117;
        v119 = *(v239 + 320);
        cblas_dasum_NEWLAPACK();
        if ((v232 & 0x80000000) == 0)
        {
          v121 = 0;
          v122 = v119 * v120;
          v123 = v234 == 1 && v105 == 1;
          v124 = v123;
          while (1)
          {
            v125 = *(*(v239 + 520) + 8 * *(v239 + 536) * v121);
            if (v124)
            {
              memcpy(v104, v85, 8 * v66);
            }

            else
            {
              cblas_dcopy_NEWLAPACK();
            }

            catlas_daxpby_NEWLAPACK();
            v126 = *(v239 + 320);
            cblas_dasum_NEWLAPACK();
            v128 = v118 * v125 + v111 * 0.5 * v125 * v125 + v126 * v127;
            if (v128 >= v122)
            {
              break;
            }

            ++v121;
            v122 = v128;
            if (v232 + 1 == v121)
            {
              goto LABEL_141;
            }
          }

          if (!v121)
          {
            v142 = 1;
            goto LABEL_191;
          }
        }

LABEL_141:
        catlas_daxpby_NEWLAPACK();
        if (v103 < 1)
        {
          if (!v258)
          {
            goto LABEL_159;
          }

          v140 = 0;
          v129 = 0;
          v135 = *(v239 + 592);
          v136 = __p.__begin_;
        }

        else
        {
          v129 = 0;
          v130 = v257.__begin_;
          v131 = v249;
          v132 = v251;
          do
          {
            v133 = *v85;
            if (fabs(*v85) >= 2.22044605e-16)
            {
              v134 = *v130;
            }

            else
            {
              *v85 = 0.0;
              v134 = *v130;
              *(*(v239 + 592) + 4 * v129) = *v130;
              v133 = 0.0;
              ++v129;
            }

            v131[v132 * v134] = v133;
            ++v130;
            v85 = (v85 + v87);
            --v103;
          }

          while (v103);
          if (!v258)
          {
LABEL_159:
            syslog(5, "ERROR: empty active set: nothing to delete", v217, v218);
LABEL_162:
            v142 = 0;
            goto LABEL_191;
          }

          v135 = *(v239 + 592);
          v136 = __p.__begin_;
          if (v129 >= 1)
          {
            v137 = 0;
            v138 = v257.__begin_;
            while (1)
            {
              v136[v137] = -1;
              if (v258 < 1)
              {
                break;
              }

              v139 = 0;
              while (v138[v139] != v135[v137])
              {
                if (v258 == ++v139)
                {
                  goto LABEL_160;
                }
              }

              v136[v137++] = v139;
              if (v137 == v129)
              {
                v140 = 1;
                goto LABEL_164;
              }
            }

LABEL_160:
            v141 = "ERROR: index to delete not in active set";
LABEL_161:
            syslog(5, v141, v217, v218);
            goto LABEL_162;
          }

          v140 = 0;
        }

LABEL_164:
        v143 = 126 - 2 * __clz(v129);
        if (v129)
        {
          v144 = v143;
        }

        else
        {
          v144 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v136, &v136[v129], v144, 1);
        if (v140)
        {
          v235 = v135;
          v237 = v129;
          v145 = 0;
          v146 = v129;
          do
          {
            v147 = __p.__begin_[v145];
            if ((v147 & 0x80000000) != 0)
            {
              syslog(5, "ERROR: row index to delete out of range", v217, v218);
              goto LABEL_162;
            }

            v141 = "ERROR: row index to delete out of range";
            if (v258 <= v147)
            {
              goto LABEL_161;
            }

            v148 = vision::mod::CVMLMatrix<double,16ul>::ptr(v253, 0);
            v149 = v148;
            v150 = v255;
            v151 = v147 * v255;
            v152 = v258 - 1;
            if (v258 - 1 > v147)
            {
              v153 = (v148 + 8 * v151);
              v154 = 8 * v147 + 16;
              v155 = 8 * v255;
              v156 = v147;
              do
              {
                v157 = &v153[v155];
                memcpy(v153, &v153[v155], v154);
                v152 = v258 - 1;
                ++v156;
                v154 += 8;
                v153 = v157;
              }

              while (v258 - 1 > v156);
            }

            v282 = 0.0;
            v283 = 0.0;
            if (v152 > v147)
            {
              v158 = 8 * v151;
              v159 = v149 + 8 * v147 + 8 * v150;
              v160 = 8 * v150 + 8;
              v161 = -2 - v147;
              v162 = v149 + 8 * v147;
              do
              {
                cblas_drotg_NEWLAPACK();
                v164 = v282;
                v163 = v283;
                if (*(v162 + v158) < 0.0)
                {
                  *(v162 + v158) = fabs(*(v162 + v158));
                  v282 = -v164;
                  v283 = -v163;
                }

                *(v162 + v158 + 8) = 0;
                cblas_drot_NEWLAPACK();
                v159 += v160;
                --v161;
                LODWORD(v147) = v147 + 1;
                v162 += v160;
              }

              while (v258 - 1 > v147);
            }

            ++v145;
          }

          while (v145 != v146);
          v165 = v235;
          v129 = v237;
          do
          {
            v166 = *v165++;
            *(v259 + v166) = 0;
            --v146;
          }

          while (v146);
        }

        v167 = v258;
        if (v258 >= 1)
        {
          v168 = 0;
          v169 = 0;
          do
          {
            v170 = v257.__begin_[v168];
            if (*(v259 + v170))
            {
              __p.__begin_[v169] = v170;
              if (v168 != v169)
              {
                v171 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v264, v169);
                v172 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v264, v168);
                memcpy(v171, v172, 8 * v265[1]);
              }

              ++v169;
              v167 = v258;
            }

            ++v168;
          }

          while (v168 < v167);
        }

        v142 = 0;
        v173 = *&v257.__begin_;
        *&v257.__begin_ = *&__p.__begin_;
        *&__p.__begin_ = v173;
        value = v257.__end_cap_.__value_;
        v257.__end_cap_.__value_ = __p.__end_cap_.__value_;
        __p.__end_cap_.__value_ = value;
        v258 = v167 - v129;
LABEL_191:
        if (v281 == 1 && v277)
        {
          free(v277);
        }

        if (v288 == 1 && v284)
        {
          free(v284);
        }

        if (v142)
        {
          goto LABEL_198;
        }

        v175 = 1;
LABEL_199:
        v7 = v239;
        v11 = v228;
        if ((v275 & 1) != 0 && v274[0])
        {
          free(v274[0]);
        }

        v65 = v231 + v175;
        if (v142)
        {
          v30 = v229;
          v176 = v224;
          goto LABEL_207;
        }
      }

      v176 = v224;
LABEL_207:
      if (v65 != 100)
      {
        v32 = v176 + 1;
        if (v32 != 1000)
        {
          continue;
        }

        goto LABEL_209;
      }

      break;
    }

    v64 = 7528;
LABEL_212:
    v177 = v64 != 7552;
    if (v252 == 1 && v248)
    {
      free(v248);
    }

    if (v64 == 7552)
    {
      v27 = v219 + 1;
      v19 = v245;
      if (v219 + 1 >= v245)
      {
        LOBYTE(v64) = 0x80;
        break;
      }

      continue;
    }

    break;
  }

  v19 = v64;
LABEL_221:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v266 == 1 && v264)
  {
    free(v264);
  }

  memset(v265, 0, sizeof(v265));
  v264 = 0u;
  v266 = 1;
  if (v259)
  {
    v260 = v259;
    operator delete(v259);
  }

  if (v257.__begin_)
  {
    v257.__end_ = v257.__begin_;
    operator delete(v257.__begin_);
  }

  if (v256 == 1 && v253[0])
  {
    free(v253[0]);
  }

  if (v271 == 1 && v268[0])
  {
    free(v268[0]);
  }

  if (!v177 || v19 == 128)
  {
    vision::mod::CVMLVector<double,16ul>::initialize_(&v277, v227);
    vision::mod::CVMLMatrix<double,16ul>::initialize_(v268, v227, v11);
    v180 = *a3;
    v179 = a3[1];
    v181 = v179 - *a3;
    v182 = 0xAAAAAAAAAAAAAAABLL * (v181 >> 3);
    v183 = v227 - v182;
    if (v227 <= v182)
    {
      if (v227 < v182)
      {
        for (i = v180 + 24 * v227; v179 != i; v179 -= 24)
        {
          std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v179 - 16));
        }

        a3[1] = i;
      }
    }

    else
    {
      v184 = a3[2];
      if (0xAAAAAAAAAAAAAAABLL * ((v184 - v179) >> 3) < v183)
      {
        v255 = a3;
        v185 = 0x5555555555555556 * ((v184 - v180) >> 3);
        if (v185 <= v227)
        {
          v185 = v227;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v184 - v180) >> 3) >= 0x555555555555555)
        {
          v186 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v186 = v185;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<int,double>>>(v186);
      }

      v188 = v179 + 24 * v183;
      v189 = 24 * v227 - 8 * (v181 >> 3);
      v190 = (v179 + 8);
      do
      {
        *v190 = 0;
        v190[1] = 0;
        *(v190 - 1) = v190;
        v190 += 3;
        v189 -= 24;
      }

      while (v189);
      a3[1] = v188;
    }

    v191 = *(v7 + 200);
    if (v191)
    {
      v192 = v241;
      v236 = v242;
      v238 = v240[1];
      v193 = v245;
      v233 = v246;
      v194 = 8 * v246;
      while (1)
      {
        v196 = *(v191 + 5);
        v195 = *(v191 + 6);
        v197 = *(v239 + 104);
        v198 = v195 + v196;
        if (v197 <= v196 || v198 > v197)
        {
          break;
        }

        v200 = *(v239 + 112);
        if (!v200)
        {
          v214 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v214, "col index out of range");
LABEL_292:
          v214->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v214, off_1E77B0718, MEMORY[0x1E69E5280]);
        }

        v201 = *(v239 + 120);
        v253[0] = (*(v239 + 96) + 8 * v201 * v196);
        v253[1] = v253[0];
        *&v254 = v195;
        *(&v254 + 1) = v200;
        v255 = v201;
        v256 = 0;
        if (!v192)
        {
          v215 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v215, "row index out of range");
          goto LABEL_295;
        }

        if (*(&v192 + 1) <= v196 || v198 > *(&v192 + 1))
        {
          v215 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v215, "col index out of range");
LABEL_295:
          v215->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v215, off_1E77B0718, MEMORY[0x1E69E5280]);
        }

        v284 = &v238[8 * v196];
        v285 = v284;
        v286 = v192;
        *&v287 = v195;
        *(&v287 + 1) = v236;
        v288 = 0;
        if (v269 < v193 || *(&v269 + 1) < v233)
        {
          v216 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v216, "output matrix size too small");
          v216->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v216, off_1E77B0718, MEMORY[0x1E69E5280]);
        }

        if (v193)
        {
          for (j = 0; j != v193; ++j)
          {
            v203 = vision::mod::CVMLMatrix<double,16ul>::ptr(v268, j);
            v204 = vision::mod::CVMLMatrix<double,16ul>::ptr(v244, j);
            memcpy(v203, v204, v194);
          }
        }

        vision::mod::matMult<double,16ul>(&v284, v253, 0, v268, 0);
        vision::mod::CVMLMatrix<double,16ul>::rowNorms(v268, &v277, 0);
        v205 = 0;
        v206 = v278;
        v207 = 8 * v280;
        v208 = v227;
        do
        {
          v209 = *v206;
          v210 = *a3;
          v253[0] = v191 + 2;
          *(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v210 + v205, *(v191 + 4)) + 5) = fmax(1.0 - v209, 0.0);
          v205 += 24;
          v206 = (v206 + v207);
          --v208;
        }

        while (v208);
        v191 = *v191;
        if (!v191)
        {
          goto LABEL_280;
        }
      }

      v214 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v214, "row index out of range");
      goto LABEL_292;
    }

LABEL_280:
    if (v271 == 1 && v268[0])
    {
      free(v268[0]);
    }

    if (v281 == 1 && v277)
    {
      free(v277);
    }

    v10 = 7808;
  }

  else
  {
    v10 = v19 | 0x1E00;
LABEL_239:
    syslog(5, "ERROR: error happened in sparse coding", v217, v218);
  }

  if (v243 == 1 && v240[0])
  {
    free(v240[0]);
  }

  if (v247 == 1 && v244[0])
  {
    free(v244[0]);
  }

  return v10;
}

void sub_1A5EAFEFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x218]) == 1 && a71)
  {
    free(a71);
  }

  if (LOBYTE(STACK[0x278]) == 1 && STACK[0x258])
  {
    free(STACK[0x258]);
  }

  if (a34 == 1 && a29)
  {
    free(a29);
  }

  if (a41 == 1 && a36)
  {
    free(a36);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    syslog(5, "ERROR: memory allocation failed");
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    __cxa_begin_catch(a1);
    syslog(5, "ERROR: unexpected exception thrown");
    __cxa_end_catch();
  }

  JUMPOUT(0x1A5EAF920);
}

uint64_t *std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<int,double>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<int,double>>,std::map<int,double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    do
    {
      std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v5 + 8));
      v5 += 24;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<std::map<int,double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t vision::mod::ActiveSet<double,16ul>::~ActiveSet(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  if (*(a1 + 160) == 1)
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      free(v3);
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 160) = 1;
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  if (*(a1 + 40) == 1 && *a1)
  {
    free(*a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t vision::mod::matVecMult<double,16ul>(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (a2)
  {
    if (a1[2] == v4)
    {
      v5 = 3;
      goto LABEL_6;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "matrix vector size mismatch");
    v8 = off_1E77B0720;
    v9 = MEMORY[0x1E69E5298];
LABEL_10:
    __cxa_throw(exception, v8, v9);
  }

  if (a1[3] != v4)
  {
    goto LABEL_9;
  }

  v5 = 2;
LABEL_6:
  if (a1[v5] != *(a4 + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "vector size too small for output");
    v8 = off_1E77B0718;
    v9 = MEMORY[0x1E69E5280];
    goto LABEL_10;
  }

  vision::mod::CVMLMatrix<double,16ul>::ptr(a1, 0);
  return cblas_dgemv_NEWLAPACK();
}

uint64_t vision::mod::FaceIDModel::serialize(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  *&v49[19] = 0u;
  strcpy(v49, "FaceIDModel_v1_d18");
  v2 = std::ostream::write();
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v3 = std::ostream::write();
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v4 = std::ostream::write();
  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v5 = std::ostream::write();
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v6 = std::ostream::write();
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v7 = std::ostream::write();
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v8 = std::ostream::write();
  if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0 || vision::mod::FaceIDKmeansParams::serialize() != 128)
  {
    return 7797;
  }

  v48 = a1[3];
  std::vector<long long>::vector[abi:ne200100](&v46, v48);
  std::vector<int>::vector[abi:ne200100](&__p, v48);
  v9 = a1[2];
  if (v9)
  {
    v10 = v46;
    v11 = __p;
    do
    {
      *v10++ = v9[2];
      *v11++ = *(v9 + 6);
      v9 = *v9;
    }

    while (v9);
  }

  v12 = std::ostream::write();
  if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0 || (v13 = std::ostream::write(), (*(v13 + *(*v13 - 24) + 32) & 5) != 0) || (v14 = std::ostream::write(), (*(v14 + *(*v14 - 24) + 32) & 5) != 0))
  {
    v15 = 7797;
  }

  else
  {
    v47 = v46;
    v45 = __p;
    v15 = vision::mod::_serialize(a1 + 11);
    if (v15 == 128)
    {
      v43 = a1[26];
      std::vector<int>::vector[abi:ne200100](v42, v43);
      std::vector<int>::vector[abi:ne200100](v41, v43);
      std::vector<int>::vector[abi:ne200100](v40, v43);
      v17 = a1[25];
      if (v17)
      {
        v18 = v42[0];
        v19 = v41[0];
        v20 = v40[0];
        do
        {
          *v18++ = *(v17 + 4);
          *v19++ = *(v17 + 5);
          *v20++ = *(v17 + 6);
          v17 = *v17;
        }

        while (v17);
      }

      v21 = std::ostream::write();
      if ((*(v21 + *(*v21 - 24) + 32) & 5) != 0 || (v22 = std::ostream::write(), (*(v22 + *(*v22 - 24) + 32) & 5) != 0) || (v23 = std::ostream::write(), (*(v23 + *(*v23 - 24) + 32) & 5) != 0) || (v24 = std::ostream::write(), (*(v24 + *(*v24 - 24) + 32) & 5) != 0))
      {
        v15 = 7797;
      }

      else
      {
        v15 = vision::mod::_serialize(a1 + 17);
        if (v15 == 128)
        {
          v39 = a1[31];
          std::vector<int>::vector[abi:ne200100](v38, v39);
          std::vector<int>::vector[abi:ne200100](v37, v39);
          std::vector<int>::vector[abi:ne200100](v36, v39);
          v25 = a1[30];
          if (v25)
          {
            v26 = v38[0];
            v27 = v37[0];
            v28 = v36[0];
            do
            {
              *v26++ = *(v25 + 4);
              *v27++ = *(v25 + 5);
              *v28++ = *(v25 + 6);
              v25 = *v25;
            }

            while (v25);
          }

          v29 = std::ostream::write();
          if ((*(v29 + *(*v29 - 24) + 32) & 5) != 0 || (v30 = std::ostream::write(), (*(v30 + *(*v30 - 24) + 32) & 5) != 0))
          {
            v31 = &CVML_status_IOError;
          }

          else
          {
            v34 = std::ostream::write();
            v31 = &CVML_status_IOError;
            if ((*(v34 + *(*v34 - 24) + 32) & 5) == 0)
            {
              v35 = std::ostream::write();
              if ((*(v35 + *(*v35 - 24) + 32) & 5) == 0)
              {
                v31 = &CVML_status_ok;
              }
            }
          }

          v32 = *v31;
          if (v36[0])
          {
            v36[1] = v36[0];
            operator delete(v36[0]);
          }

          v33 = v32 + 128;
          if (v37[0])
          {
            v37[1] = v37[0];
            operator delete(v37[0]);
          }

          v15 = v33 | 0x1E00;
          if (v38[0])
          {
            v38[1] = v38[0];
            operator delete(v38[0]);
          }
        }
      }

      if (v40[0])
      {
        v40[1] = v40[0];
        operator delete(v40[0]);
      }

      if (v41[0])
      {
        v41[1] = v41[0];
        operator delete(v41[0]);
      }

      if (v42[0])
      {
        v42[1] = v42[0];
        operator delete(v42[0]);
      }
    }
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v15;
}

void sub_1A5EB0CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5EB0DEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5EB0E64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::_serialize(void *a1)
{
  v8 = a1[2];
  v2 = std::ostream::write();
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v3 = std::ostream::write();
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v5 = std::ostream::write();
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0 || v8 >= 1 && (vision::mod::CVMLMatrix<double,16ul>::ptr(a1, 0), v7 = std::ostream::write(), (*(v7 + *(*v7 - 24) + 32) & 5) != 0))
  {
    v6 = &CVML_status_IOError;
  }

  else
  {
    v6 = &CVML_status_ok;
  }

  return (*v6 + 128) | 0x1E00;
}

uint64_t vision::mod::FaceIDModel::deserialize(uint64_t a1)
{
  v61[15] = *MEMORY[0x1E69E9840];
  v2 = std::istream::read();
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v4 = v60 == 0x6F4D444965636146 && v61[0] == 0x645F31765F6C6564 && *(v61 + 3) == 0x3831645F31765FLL;
  v5 = !v4;
  if (v4 || (v60 == 0x6F4D444965636146 ? (v6 = v61[0] == 0x645F31765F6C6564) : (v6 = 0), v6 ? (v7 = *(v61 + 3) == 0x3731645F31765FLL) : (v7 = 0), v7))
  {
    v10 = 1;
  }

  else
  {
    if (v60 != 0x6F4D444965636146 || v61[0] != 0x645F31765F6C6564 || *(v61 + 3) != 0x3631645F31765FLL)
    {
      syslog(5, "ERROR: incorrect header");
      return 7797;
    }

    v10 = 0;
  }

  v11 = std::istream::read();
  if ((*(v11 + *(*v11 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v12 = std::istream::read();
  if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v13 = std::istream::read();
  if ((*(v13 + *(*v13 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v14 = std::istream::read();
  if ((*(v14 + *(*v14 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  if (!v5)
  {
    v20 = std::istream::read();
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      return 7797;
    }
  }

  v15 = std::istream::read();
  if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  if (vision::mod::FaceIDKmeansParams::deserialize() != 128)
  {
    return 7797;
  }

  v58 = 0;
  v16 = std::istream::read();
  if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  std::vector<long long>::vector[abi:ne200100](&v56, v58);
  std::vector<int>::vector[abi:ne200100](&__p, v58);
  v17 = std::istream::read();
  if ((*(v17 + *(*v17 - 24) + 32) & 5) == 0)
  {
    v18 = std::istream::read();
    v44 = v5;
    v45 = v10;
    if ((*(v18 + *(*v18 - 24) + 32) & 5) == 0)
    {
      if (v58 >= 1)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(__p + v23);
          v52[0] = v56 + v22;
          *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1, *(v56 + v23++)) + 6) = v24;
          v22 += 8;
        }

        while (v23 < v58);
      }

      v57 = v56;
      v55 = __p;
      v19 = vision::mod::_deserialize();
      if (v19 != 128)
      {
        goto LABEL_39;
      }

      v25 = *(a1 + 112);
      vision::mod::CVMLMatrix<double,16ul>::reset(a1 + 136, 0, v25);
      if (*(a1 + 176) == 1)
      {
        v26 = *(a1 + 136);
        if (v26)
        {
          free(v26);
        }
      }

      *(a1 + 168) = 0;
      *(a1 + 152) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 176) = 1;
      v19 = 7808;
      if (!v25 || !*(a1 + 104))
      {
        goto LABEL_39;
      }

      v53 = 0;
      v27 = std::istream::read();
      if ((*(v27 + *(*v27 - 24) + 32) & 5) == 0)
      {
        std::vector<int>::vector[abi:ne200100](v52, v53);
        std::vector<int>::vector[abi:ne200100](v51, v53);
        std::vector<int>::vector[abi:ne200100](v50, v53);
        v28 = std::istream::read();
        if ((*(v28 + *(*v28 - 24) + 32) & 5) != 0)
        {
          goto LABEL_60;
        }

        v29 = std::istream::read();
        if ((*(v29 + *(*v29 - 24) + 32) & 5) != 0)
        {
          goto LABEL_60;
        }

        v30 = std::istream::read();
        if ((*(v30 + *(*v30 - 24) + 32) & 5) != 0)
        {
          goto LABEL_60;
        }

        if (v53 >= 1)
        {
          for (i = 0; i < v53; ++i)
          {
            v32 = *(v51[0] + i);
            v33 = *(v50[0] + i);
            v48[0] = v52[0] + 4 * i;
            v34 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 184), *v48[0]);
            *(v34 + 5) = v32;
            *(v34 + 6) = v33;
          }
        }

        if (v45)
        {
          v19 = vision::mod::_deserialize();
          if (v19 != 128)
          {
            goto LABEL_61;
          }
        }

        if (v44)
        {
          goto LABEL_73;
        }

        v49 = 0;
        v35 = std::istream::read();
        if ((*(v35 + *(*v35 - 24) + 32) & 5) != 0)
        {
          goto LABEL_60;
        }

        std::vector<int>::vector[abi:ne200100](v48, v49);
        std::vector<int>::vector[abi:ne200100](v47, v49);
        std::vector<int>::vector[abi:ne200100](v46, v49);
        v36 = std::istream::read();
        if ((*(v36 + *(*v36 - 24) + 32) & 5) != 0 || (v37 = std::istream::read(), (*(v37 + *(*v37 - 24) + 32) & 5) != 0) || (v38 = std::istream::read(), (*(v38 + *(*v38 - 24) + 32) & 5) != 0))
        {
          v39 = 0;
        }

        else
        {
          if (v49 >= 1)
          {
            for (j = 0; j < v49; ++j)
            {
              v41 = *(v47[0] + j);
              v42 = *(v46[0] + j);
              v59 = (v48[0] + 4 * j);
              v43 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 224), *v59);
              *(v43 + 5) = v41;
              *(v43 + 6) = v42;
            }
          }

          v39 = 1;
        }

        if (v46[0])
        {
          v46[1] = v46[0];
          operator delete(v46[0]);
        }

        if (v47[0])
        {
          v47[1] = v47[0];
          operator delete(v47[0]);
        }

        if (v48[0])
        {
          v48[1] = v48[0];
          operator delete(v48[0]);
        }

        if ((v39 & 1) == 0)
        {
LABEL_60:
          v19 = 7797;
        }

        else
        {
LABEL_73:
          vision::mod::FeatureSignSparseCoder<double,16ul>::initialize(a1 + 264, (a1 + 88));
          v19 = 7808;
        }

LABEL_61:
        if (v50[0])
        {
          v50[1] = v50[0];
          operator delete(v50[0]);
        }

        if (v51[0])
        {
          v51[1] = v51[0];
          operator delete(v51[0]);
        }

        if (v52[0])
        {
          v52[1] = v52[0];
          operator delete(v52[0]);
        }

        goto LABEL_39;
      }
    }
  }

  v19 = 7797;
LABEL_39:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  return v19;
}

void sub_1A5EB1848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::_deserialize()
{
  v0 = std::istream::read();
  if ((*(v0 + *(*v0 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v1 = std::istream::read();
  if ((*(v1 + *(*v1 - 24) + 32) & 5) != 0)
  {
    return 7797;
  }

  v3 = std::istream::read();
  v4 = &CVML_status_IOError;
  if ((*(v3 + *(*v3 - 24) + 32) & 5) == 0)
  {
    v4 = &CVML_status_ok;
  }

  return (*v4 + 128) | 0x1E00;
}

uint64_t vision::mod::FaceIDModel::getIdentityTrainingData(void *a1, int a2)
{
  v2 = a1[29];
  if (!v2)
  {
    return 7804;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(a1[28] + 8 * v4);
  if (!v5)
  {
    return 7804;
  }

  v6 = *v5;
  if (!v6)
  {
    return 7804;
  }

  v7 = 7804;
  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v8 >= v2)
      {
        v8 %= v2;
      }
    }

    else
    {
      v8 &= v2 - 1;
    }

    if (v8 != v4)
    {
      return v7;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      return v7;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  v10 = *(v6 + 6);
  if (v10 < 1)
  {
    return 7784;
  }

  v11 = a1[20];
  if (!v11)
  {
    return 7784;
  }

  std::vector<long long>::vector[abi:ne200100](__p, *(v6 + 6));
  if (malloc_type_calloc(v10, 4 * v11, 0x82C5C4CEuLL))
  {
    operator new();
  }

  syslog(5, "ERROR: Failed to allocate descriptor data of count %d, stride %d", v10, 4 * v11);
  v7 = 7803;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1A5EB1D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t _getModelDropForConfigurationOptions(void *a1, _DWORD *a2, void *a3)
{
  v5 = a1;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 specifyingRequestClass:objc_opt_class() error:a3];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([v6 requestRevision] != 3)
  {
    if (a3)
    {
      [VNError errorForUnsupportedRequestSpecifier:v7];
      *a3 = v8 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
  *a2 = 1;
LABEL_7:

  return v8;
}

void sub_1A5EB37DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  if (STACK[0x200])
  {
    operator delete(STACK[0x200]);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__19247(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

void __Block_byref_object_dispose__19248(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    operator delete(v1);
  }
}

void sub_1A5EB424C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *exc_buf, void *a13)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x1A5EB41CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EB4A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL46getVCPRequestMaxNumOfHandsPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestMaxNumOfHandsPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestMaxNumOfHandsPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26VideoProcessingLibraryCorePPc_block_invoke_19330()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1A5EB4E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL41getVCPRequestRevisionPropertyKeySymbolLocv_block_invoke_19336(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestRevisionPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A5EB506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL31getVCPHandPoseImageRequestClassv_block_invoke(uint64_t a1)
{
  VideoProcessingLibrary();
  result = objc_getClass("VCPHandPoseImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHandPoseImageRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(VNHumanHandPoseDetector *)v3];
  }

  return result;
}

void vision::mod::ColorGaborImageDescriptorBuffer::computeSelfDistances(vision::mod::ColorGaborImageDescriptorBuffer *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ColorGaborImageDescriptorBuffer::computeDistancesFrom(vision::mod::ColorGaborImageDescriptorBuffer *this@<X0>, const vision::mod::ImageDescriptorBufferAbstract *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
  v5 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, 0);
  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *(DataForKthDescriptor + v6);
    v9 = vcvtq_f32_u32(vmovl_high_u16(v8));
    v10 = *(v5 + v6);
    v11 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v8.i8)), vcvtq_f32_u32(vmovl_u16(*v10.i8)));
    v12 = vsubq_f32(v9, vcvtq_f32_u32(vmovl_high_u16(v10)));
    v13 = vmulq_f32(v12, v12);
    v14 = vmulq_f32(v11, v11);
    v7 = (((((((v7 + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3]) + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3];
    v6 += 16;
  }

  while (v6 != 64);
  v15 = 0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    v19 = v18;
    v20 = v17;
    LOWORD(v17) = *(DataForKthDescriptor + 64 + 2 * v15);
    LOWORD(v18) = *(v5 + 64 + 2 * v15);
    v21 = LODWORD(v17);
    v22 = LODWORD(v18);
    v23 = v19 + LODWORD(v17);
    v24 = v20 + LODWORD(v18);
    if (v15 >= 8)
    {
      v18 = v19;
    }

    else
    {
      v18 = v23;
    }

    if (v15 >= 8)
    {
      v17 = v20;
    }

    else
    {
      v17 = v24;
    }

    v25 = sqrtf(v21 * v22);
    v16 = v16 + v25;
    ++v15;
  }

  while (v15 != 36);
  v26 = v19 / 65535.0;
  v27 = sqrtf(v7) / 65535.0;
  if ((v19 / 65535.0) > 0.97 || (v20 / 65535.0) > 0.97)
  {
    v50 = v27 + v27;
    goto LABEL_37;
  }

  v28 = 0;
  v29 = 1.0 - (v16 / 65535.0);
  v30 = 0.0;
  v31 = 0.0;
  do
  {
    LOWORD(v26) = *(DataForKthDescriptor + 64 + v28);
    LOWORD(v25) = *(v5 + 64 + v28);
    v25 = LODWORD(v25) / 65535.0;
    v32 = v30 + (LODWORD(v26) / 65535.0);
    v30 = v32 - v25;
    v26 = vabds_f32(v32, v25);
    v31 = v31 + v26;
    v28 += 2;
  }

  while (v28 != 72);
  v33 = (v5 + 64);
  v34 = (DataForKthDescriptor + 64);
  v35 = 1.0;
  v36 = 1;
  v37 = 28;
  v38 = 1;
  v39 = 1.0;
  v40 = 0.0;
  do
  {
    v41 = *v34++;
    v42 = vcvtq_f32_u32(vmovl_u16(v41));
    v43 = *v33++;
    v44 = vcvtq_f32_u32(vmovl_u16(v43));
    v45 = ((v44.f32[0] + 0.0) + v44.f32[1]) + v44.f32[2];
    v46 = (((v42.f32[0] + 0.0) + v42.f32[1]) + v42.f32[2]) + v42.f32[3];
    v47 = v45 + v44.f32[3];
    v48 = v39 < v46;
    if (v39 < v46)
    {
      v39 = v46;
    }

    v37 += 4;
    if (v48)
    {
      v38 = v37;
    }

    if (v35 < v47)
    {
      v35 = v45 + v44.f32[3];
      v36 = v37;
    }

    v40 = v40 + sqrtf(v46 * v47);
  }

  while (v37 < 0x40);
  v49 = (v40 / -65535.0) + 1.0;
  if (v38 == v36)
  {
    if (v38 == 32)
    {
      v49 = v29;
      goto LABEL_32;
    }

    if ((v29 / v49) > 3.0)
    {
      v49 = (v49 * 0.75) + v29 * 0.25;
      goto LABEL_32;
    }
  }

  else if (v31 < 2.5)
  {
LABEL_32:
    v51 = fminf(v27, v49);
    if (v27 >= v49)
    {
      v52 = v49;
    }

    else
    {
      v52 = v27;
    }

    v53 = v52 + v52;
    v50 = v27 + v49;
    if (v51 < 0.05)
    {
      v50 = v53;
    }

LABEL_37:
    if ((v50 * 1.4) > 0.6)
    {
      expf(-(((v50 * 1.4) + 0.3572) * ((v50 * 1.4) + 0.3572)));
    }

    operator new();
  }

  v49 = (v29 + v49) * 0.5;
  goto LABEL_32;
}

void vision::mod::ColorGaborImageDescriptorBuffer::~ColorGaborImageDescriptorBuffer(void **this)
{
  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(this);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorsForImages_Planar8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 3712;
  }

  while (!a3 || ((*(a3 + 16))(a3) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1);
    v9 = (*(*a1 + 32))(a1, v4, v11);
    if ((v9 & 0x80) != 0)
    {
      (*(*a4 + 40))(a4, v11);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if ((v9 & 0x80) != 0)
    {
      v4 += 32;
      if (v4 != v5)
      {
        continue;
      }
    }

    return v9;
  }

  return 3683;
}

void sub_1A5EB5EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorsForImages_BGRA8888(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 3712;
  }

  while (!a3 || ((*(a3 + 16))(a3) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1);
    v9 = (*(*a1 + 24))(a1, v4, v11);
    if ((v9 & 0x80) != 0)
    {
      (*(*a4 + 40))(a4, v11);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if ((v9 & 0x80) != 0)
    {
      v4 += 32;
      if (v4 != v5)
      {
        continue;
      }
    }

    return v9;
  }

  return 3683;
}

void sub_1A5EB5FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorsForImages_RGBA8888(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return 3712;
  }

  while (!a3 || ((*(a3 + 16))(a3) & 1) == 0)
  {
    (*(*a1 + 64))(&v11, a1);
    v9 = (*(*a1 + 16))(a1, v4, v11);
    if ((v9 & 0x80) != 0)
    {
      (*(*a4 + 40))(a4, v11);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if ((v9 & 0x80) != 0)
    {
      v4 += 32;
      if (v4 != v5)
      {
        continue;
      }
    }

    return v9;
  }

  return 3683;
}

void sub_1A5EB6140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::ColorGaborImageDescriptorBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19738B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::ColorGaborImageDescriptorProcessor::computeDescriptorForImage(vision::mod::ColorGaborImageDescriptorProcessor *this, __CVBuffer *a2, vision::mod::ImageDescriptorBufferAbstract *a3)
{
  v231 = *MEMORY[0x1E69E9840];
  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a3, 1uLL, 0);
  v6 = *(a3 + 7);
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v7 = MEMORY[0x1E69E5398];
  v8 = operator new[](0x88uLL, MEMORY[0x1E69E5398]);
  v9 = operator new(0xD8uLL, v7);
  if (v9)
  {
    v10 = v9;
    *(v9 + 6) = 0u;
    v11 = (v9 + 96);
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 10) = 0;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 22) = -1;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0;
    *(v9 + 10) = 0;
    *(v9 + 80) = 0;
    *(v9 + 168) = 0u;
    *(v9 + 184) = 0u;
    *(v9 + 200) = 0u;
    if (!v8)
    {
      v18 = &CVML_status_internalError;
LABEL_211:
      ma::GaborFilters::Destroy(v10);
      MEMORY[0x1AC556B00](v10, 0x10B0C406B6CA85BLL);
      goto LABEL_212;
    }

    v9[161] = 1;
    ma::GaborFilters::Destroy(v9);
    *(v10 + 160) = 1;
    *&v12 = 0x8000000080;
    *(&v12 + 1) = 0x8000000080;
    *(v10 + 1) = v12;
    *(v10 + 10) = 7;
    *(v10 + 4) = 0x700000007;
    *(v10 + 22) = 0x4000;
    v13 = MEMORY[0x1E69E96A8];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v10 + 21) = dispatch_queue_create("com.apple.VN.createGaborFilterBankGCDQueueName", v14);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v10 + 22) = dispatch_queue_create("com.apple.VN.extractGaborDescriptorGCDQueueName", v15);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v10 + 23) = dispatch_queue_create("com.apple.VN.gaborReadySyncQueueName", v16);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v10 + 24) = dispatch_queue_create("com.apple.VN.gaborDescriptorReadySyncQueueName", v17);
    *(v10 + 10) = vDSP_create_fftsetup(*(v10 + 8), 0);
    if (*(v10 + 7))
    {
      v212 = 0;
    }

    else
    {
      v19 = *(v10 + 22);
      if (v19 < 0)
      {
        v20 = -1;
      }

      else
      {
        v20 = 4 * v19;
      }

      v21 = operator new[](v20, MEMORY[0x1E69E5398]);
      *(v10 + 7) = v21;
      v212 = v21 == 0;
    }

    if (*(v10 + 8))
    {
      v211 = 0;
    }

    else
    {
      v22 = *(v10 + 22);
      if (v22 < 0)
      {
        v23 = -1;
      }

      else
      {
        v23 = 4 * v22;
      }

      v24 = operator new[](v23, MEMORY[0x1E69E5398]);
      *(v10 + 8) = v24;
      v211 = v24 == 0;
    }

    if (*(v10 + 9))
    {
      v209 = 0;
    }

    else
    {
      v25 = *(v10 + 22);
      if (v25 < 0)
      {
        v26 = -1;
      }

      else
      {
        v26 = 4 * v25;
      }

      v27 = operator new[](v26, MEMORY[0x1E69E5398]);
      *(v10 + 9) = v27;
      v209 = v27 == 0;
    }

    v207 = v8;
    if (*(v10 + 13))
    {
      v28 = 0;
    }

    else
    {
      v29 = *(v10 + 22);
      if (v29 < 0)
      {
        v30 = -1;
      }

      else
      {
        v30 = 4 * v29;
      }

      v31 = operator new[](v30, MEMORY[0x1E69E5398]);
      *(v10 + 13) = v31;
      v28 = v31 == 0;
    }

    if (*(v10 + 15))
    {
      v32 = 0;
    }

    else
    {
      v33 = *(v10 + 22);
      if (v33 < 0)
      {
        v34 = -1;
      }

      else
      {
        v34 = 4 * v33;
      }

      v35 = operator new[](v34, MEMORY[0x1E69E5398]);
      *(v10 + 15) = v35;
      v32 = v35 == 0;
    }

    if (*(v10 + 14))
    {
      v36 = 0;
    }

    else
    {
      v37 = *(v10 + 22);
      if (v37 < 0)
      {
        v38 = -1;
      }

      else
      {
        v38 = 4 * v37;
      }

      v39 = operator new[](v38, MEMORY[0x1E69E5398]);
      *(v10 + 14) = v39;
      v36 = v39 == 0;
    }

    pixelBuffer = a2;
    if (*v10)
    {
      v40 = 0;
    }

    else
    {
      v41 = *(v10 + 22);
      if (v41 < 0)
      {
        v42 = -1;
      }

      else
      {
        v42 = 4 * v41;
      }

      v43 = operator new[](v42, MEMORY[0x1E69E5398]);
      *v10 = v43;
      v40 = v43 == 0;
    }

    v44 = *(v10 + 1);
    if (!v44)
    {
      v45 = *(v10 + 22);
      if (v45 < 0)
      {
        v46 = -1;
      }

      else
      {
        v46 = 4 * v45;
      }

      v44 = operator new[](v46, MEMORY[0x1E69E5398]);
      *(v10 + 1) = v44;
    }

    *(v10 + 16) = 0x800000004;
    if (*(v10 + 17))
    {
      v47 = v10;
      v48 = 0;
    }

    else
    {
      v49 = operator new[](0x80uLL, MEMORY[0x1E69E5398]);
      *(v10 + 17) = v49;
      v47 = v10;
      v48 = v49 == 0;
    }

    v208 = v47;
    __dst = v6;
    v205 = this;
    if (*(v47 + 18))
    {
      v50 = 0;
    }

    else
    {
      v51 = operator new[](0x40uLL, MEMORY[0x1E69E5398]);
      *(v47 + 18) = v51;
      v50 = v51 == 0;
    }

    v52 = *v11;
    if (!*v11)
    {
      v52 = operator new[](0x200uLL, MEMORY[0x1E69E5398]);
      *v11 = v52;
    }

    if (*(v47 + 19))
    {
      v53 = 0;
    }

    else
    {
      v54 = *(v47 + 22);
      if (v54 < 0)
      {
        v55 = -1;
      }

      else
      {
        v55 = v54 << 7;
      }

      v56 = operator new[](v55, MEMORY[0x1E69E5398]);
      *(v47 + 19) = v56;
      v53 = v56 == 0;
    }

    if (v212 || v211 || v209 || v32 || v36 || v40 || v48 || v50 || v28 || v44 == 0 || !v52 || v53)
    {
      v10 = v47;
      ma::GaborFilters::Destroy(v47);
      v122 = v207;
      *(v47 + 160) = 0;
      goto LABEL_209;
    }

    v57 = 0;
    v58 = 0;
    v59 = vdupq_n_s32(0x3EB33333u);
    __asm { FMOV            V6.4S, #1.0 }

    v10 = v47;
    v210 = vdupq_n_s64(0x400921FB54442D18uLL);
    do
    {
      v213 = v59;
      v214 = _Q6;
      v64 = powf(1.85, v57);
      v65.i64[0] = 0x400000004;
      v65.i64[1] = 0x400000004;
      v66.i64[0] = 0x3E0000003E000000;
      v66.i64[1] = 0x3E0000003E000000;
      v67 = xmmword_1A6038C50;
      v59 = v213;
      _Q6 = v214;
      v68 = 0;
      *v69.i32 = 0.2 / v64;
      v70 = vdupq_lane_s32(v69, 0);
      do
      {
        v71 = &v52[4 * v58 + v68];
        v72.i64[0] = v67.u32[0];
        v72.i64[1] = v67.u32[1];
        v73 = vcvtq_f64_u64(v72);
        v72.i64[0] = v67.u32[2];
        v72.i64[1] = v67.u32[3];
        v74 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v73, v210)), vmulq_f64(vcvtq_f64_u64(v72), v210)), v66);
        v75 = v70;
        vst4q_f32(v71, *v59.i8);
        v67 = vaddq_s32(v67, v65);
        v68 += 64;
      }

      while (v68 != 128);
      v58 += 32;
      ++v57;
    }

    while (v57 != 4);
    bzero(v44, 4 * *(v47 + 22));
    *(v47 + 160) = 1;
    v77 = *(v47 + 6);
    v76 = *(v47 + 7);
    if (v76 >= 2)
    {
      v78 = 0;
      v79 = (v77 / 2);
      v80 = v76 / -2;
      v81 = (v76 / 2);
      v82 = v76 / -2;
      do
      {
        if (v77 >= 2)
        {
          v83 = v78;
          v84 = v77 / -2;
          v85 = v10;
          v86 = *(v10 + 15);
          v87 = *(v85 + 14);
          do
          {
            *(v86 + 4 * v83) = sqrtf((v82 * v82 + v84 * v84));
            *(v87 + 4 * v83++) = atan2f(v82, v84++);
          }

          while (v84 < v79);
          v78 = v83;
          v10 = v208;
        }

        ++v82;
      }

      while (v82 < v81);
      v88 = 0;
      v89 = 0;
      v90 = 4 * v77 * v81;
      v91 = 4 * v77;
      v92 = 4 * (v79 + v77 * v81);
      v93 = 4 * (v77 / 2);
      do
      {
        if (v77 >= 2)
        {
          v94 = 0;
          v95 = *(v10 + 14);
          v96 = *(v10 + 15);
          v97 = v95 + v90;
          v98 = v96 + v90;
          v99 = v95 + v92;
          v100 = v96 + v92;
          v101 = v95 + v88;
          v102 = v95 + v93;
          v103 = v96 + v93;
          v104 = v96 + v88;
          do
          {
            v105 = *(v104 + 4 * v94);
            *(v104 + 4 * v94) = *(v100 + 4 * v94);
            *(v100 + 4 * v94) = v105;
            v106 = *(v98 + 4 * v94);
            *(v98 + 4 * v94) = *(v103 + 4 * v94);
            *(v103 + 4 * v94) = v106;
            v107 = *(v101 + 4 * v94);
            *(v101 + 4 * v94) = *(v99 + 4 * v94);
            *(v99 + 4 * v94) = v107;
            v108 = *(v97 + 4 * v94);
            *(v97 + 4 * v94) = *(v102 + 4 * v94);
            *(v102 + 4 * v94++) = v108;
          }

          while (v79 != v94);
        }

        ++v89;
        v90 += v91;
        v92 += v91;
        v88 += v91;
        v93 += v91;
      }

      while (v89 != v81);
      v109 = 0;
      do
      {
        if (v77 >= 2)
        {
          v110 = *v10;
          v111 = v109;
          v112 = v77 / -2;
          do
          {
            *(v110 + 4 * v111++) = expf((v80 * v80 + v112 * v112) * -0.043322);
            ++v112;
          }

          while (v112 < v79);
          v109 = v111;
        }

        ++v80;
      }

      while (v80 < v81);
      v113 = 0;
      v114 = 0;
      v115 = v77 * v81;
      v116 = v115 * 4 + 4 * v79;
      do
      {
        if (v77 >= 2)
        {
          v117 = (*v10 + v113);
          v118 = (v77 / 2);
          do
          {
            v119 = *v117;
            *v117 = *(v117 + v116);
            *(v117 + v116) = v119;
            v120 = v117[v115];
            v117[v115] = v117[v79];
            v117[v79] = v120;
            ++v117;
            --v118;
          }

          while (v118);
        }

        ++v114;
        v113 += v91;
      }

      while (v114 != v81);
    }

    v121 = dispatch_group_create();
    context = v10;
    v220 = v77;
    v221 = 0;
    v222 = v10;
    v223 = v77;
    v224 = 1;
    v225 = v10;
    v226 = v77;
    v227 = 2;
    v228 = v10;
    v229 = v77;
    v230 = 3;
    dispatch_group_async_f(v121, *(v10 + 21), &context, ma::GaborFilters::DispatchHelperCreateGabor);
    dispatch_group_async_f(v121, *(v10 + 21), &v222, ma::GaborFilters::DispatchHelperCreateGabor);
    dispatch_group_async_f(v121, *(v10 + 21), &v225, ma::GaborFilters::DispatchHelperCreateGabor);
    dispatch_group_async_f(v121, *(v10 + 21), &v228, ma::GaborFilters::DispatchHelperCreateGabor);
    dispatch_group_wait(v121, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v121);
    pixelBufferOut = 0;
    context = 0;
    v122 = v207;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v125 = Width;
    v126 = Height;
    if (fminf(Width, Height) < 16.0)
    {
      v127 = *(v10 + 18);
      v127[2] = 0u;
      v127[3] = 0u;
      *v127 = 0u;
      v127[1] = 0u;
      goto LABEL_115;
    }

    v128 = (vcvtps_s32_f32((v126 * 128.0) / v125) + 1) & 0xFFFFFFFE;
    v129 = (vcvtps_s32_f32((v125 * 128.0) / v126) + 1) & 0xFFFFFFFE;
    if (v125 <= v126)
    {
      v130 = 128;
    }

    else
    {
      v128 = 128;
      v130 = v129;
    }

    *(v10 + 51) = v130;
    *(v10 + 52) = v128;
    GaborDescriptorGCD = VTPixelTransferSessionCreate(0, &context);
    if (!GaborDescriptorGCD)
    {
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], *(v10 + 51), *(v10 + 52), 0x34323076u, 0, &pixelBufferOut))
      {
LABEL_106:
        GaborDescriptorGCD = 3710;
        goto LABEL_110;
      }

      GaborDescriptorGCD = VTPixelTransferSessionTransferImage(context, pixelBuffer, pixelBufferOut);
      if (!GaborDescriptorGCD)
      {
        *(v10 + 53) = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
        CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
        if (!BaseAddressOfPlane)
        {
          goto LABEL_106;
        }

        GaborDescriptorGCD = ma::GaborFilters::ExtractGaborDescriptorGCD(v10, BaseAddressOfPlane);
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 1uLL);
      }
    }

LABEL_110:
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }

    if (context)
    {
      CFRelease(context);
    }

    if (GaborDescriptorGCD)
    {
      goto LABEL_209;
    }

LABEL_115:
    if (*(v10 + 161) != 1)
    {
      goto LABEL_209;
    }

    v133 = *(v10 + 18);
    v134 = v133[3];
    v136 = *v133;
    v135 = v133[1];
    v207[2] = v133[2];
    v207[3] = v134;
    *v207 = v136;
    v207[1] = v135;
    if (v215)
    {
      goto LABEL_117;
    }

    v189 = operator new[](0x90uLL, MEMORY[0x1E69E5398]);
    v215 = v189;
    v190 = v216;
    if (!v216)
    {
      v190 = operator new[](0x90uLL, MEMORY[0x1E69E5398]);
      v216 = v190;
    }

    if (v217)
    {
      v191 = 0;
    }

    else
    {
      v217 = operator new[](0x90uLL, MEMORY[0x1E69E5398]);
      v191 = v217 == 0;
    }

    if (v189)
    {
      v192 = !v191;
      if (!v190)
      {
        v192 = 0;
      }

      if (v192)
      {
LABEL_117:
        pixelBufferOut = 0;
        context = 0;
        v137 = VTPixelTransferSessionCreate(0, &context);
        if (!v137)
        {
          v139 = CVPixelBufferGetWidth(pixelBuffer);
          v140 = CVPixelBufferGetHeight(pixelBuffer);
          v137 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v139, v140, 0x20u, 0, &pixelBufferOut);
          v141 = pixelBufferOut;
          if (!v137)
          {
            v137 = VTPixelTransferSessionTransferImage(context, pixelBuffer, pixelBufferOut);
            v141 = pixelBufferOut;
            if (!v137)
            {
              if (CVPixelBufferGetPixelFormatType(pixelBufferOut) == 32 && (v142 = v215) != 0 && (v143 = v216) != 0 && (v144 = v217) != 0)
              {
                *(v215 + 7) = 0u;
                *(v142 + 8) = 0u;
                *(v142 + 5) = 0u;
                *(v142 + 6) = 0u;
                *(v142 + 3) = 0u;
                *(v142 + 4) = 0u;
                *(v142 + 1) = 0u;
                *(v142 + 2) = 0u;
                *v142 = 0u;
                *(v143 + 7) = 0u;
                *(v143 + 8) = 0u;
                *(v143 + 5) = 0u;
                *(v143 + 6) = 0u;
                *(v143 + 3) = 0u;
                *(v143 + 4) = 0u;
                *(v143 + 1) = 0u;
                *(v143 + 2) = 0u;
                *v143 = 0u;
                *(v144 + 7) = 0u;
                *(v144 + 8) = 0u;
                *(v144 + 5) = 0u;
                *(v144 + 6) = 0u;
                *(v144 + 3) = 0u;
                *(v144 + 4) = 0u;
                *(v144 + 1) = 0u;
                *(v144 + 2) = 0u;
                *v144 = 0u;
                CVPixelBufferLockBaseAddress(v141, 1uLL);
                v145 = CVPixelBufferGetWidth(v141);
                v146 = CVPixelBufferGetHeight(v141);
                BytesPerRow = CVPixelBufferGetBytesPerRow(v141);
                BaseAddress = CVPixelBufferGetBaseAddress(v141);
                if (v146 >= 0)
                {
                  v150 = v146;
                }

                else
                {
                  v150 = v146 + 7;
                }

                v151 = v150 >> 3;
                v152 = v146 - (v150 >> 3);
                if (v151 >= v152)
                {
                  v153 = 0;
                }

                else
                {
                  v153 = 0;
                  if (v145 >= 0)
                  {
                    v154 = v145;
                  }

                  else
                  {
                    v154 = v145 + 7;
                  }

                  v155 = v154 >> 3;
                  v156 = &BaseAddress[BytesPerRow * v151];
                  v157 = v145 - (v154 >> 3);
                  v158 = v154 >> 3;
                  v159 = v145 - 2 * v155;
                  v160 = v215;
                  v161 = v216;
                  v162 = v217;
                  do
                  {
                    if (v158 < v157)
                    {
                      v163 = v158;
                      do
                      {
                        v164 = &v156[4 * v163];
                        LOBYTE(v149) = v164[1];
                        v165 = LODWORD(v149);
                        LOBYTE(v149) = v164[2];
                        v166 = LODWORD(v149);
                        LOBYTE(v149) = v164[3];
                        v167 = LODWORD(v149);
                        if (v166 >= v165)
                        {
                          v168 = v165;
                        }

                        else
                        {
                          v168 = v166;
                        }

                        if (v168 > v167)
                        {
                          v168 = v167;
                        }

                        if (v165 >= v166)
                        {
                          v169 = v165;
                        }

                        else
                        {
                          v169 = v166;
                        }

                        if (v169 >= v167)
                        {
                          v170 = v169;
                        }

                        else
                        {
                          v170 = v167;
                        }

                        v171 = v170 - v168;
                        if (v171 == 0.0)
                        {
                          v172 = 0.1;
                        }

                        else
                        {
                          v172 = v171;
                        }

                        v173 = 0.0;
                        v174 = 0.0;
                        v175 = 0.0;
                        if (v170 > 0.0)
                        {
                          v174 = v172 / v170;
                          v176 = ((v165 - v166) / v172) + 4.0;
                          if (v170 == v166)
                          {
                            v176 = ((v167 - v165) / v172) + 2.0;
                          }

                          v177 = (v166 - v167) / v172;
                          if (v170 == v165)
                          {
                            v178 = v177;
                          }

                          else
                          {
                            v178 = v176;
                          }

                          v179 = v178 / 6.0;
                          if (v179 < 0.0)
                          {
                            v179 = v179 + 1.0;
                          }

                          v175 = v179 * 360.0;
                          v173 = v170;
                        }

                        v180 = 0;
                        v181 = v173 / 255.0;
                        if ((v173 / 255.0) >= 0.2 && v174 <= 0.1 && v181 < 0.8)
                        {
                          v180 = (floorf((v181 + -0.2) * 10.0) + 1.0);
                        }

                        v183 = v181 >= 0.8 && v174 < 0.1;
                        if (v181 <= 1.0 && v183)
                        {
                          v180 = 7;
                        }

                        if (v181 <= 1.0 && v181 >= 0.2 && v174 >= 0.1 && v174 <= 1.0)
                        {
                          if (v175 > 22.0)
                          {
                            v184 = 0;
                            while (v184 != 6)
                            {
                              v185 = v184 + 1;
                              v186 = ma::HSVHistogram::GenerateHistogramsRgbSpace(__CVBuffer *)::kPivots[++v184];
                              if (v175 <= v186)
                              {
                                v187 = 4 * v185;
                                goto LABEL_179;
                              }
                            }
                          }

                          v187 = 0;
LABEL_179:
                          if (v181 < 0.7)
                          {
                            v188 = 8;
                          }

                          else
                          {
                            v188 = 9;
                          }

                          v180 = (v188 | (2 * (v174 >= 0.65))) + v187;
                        }

                        v160[v180] = v160[v180] + 1.0;
                        v161[v180] = v161[v180] + v163;
                        v149 = v162[v180] + v151;
                        v162[v180] = v149;
                        ++v163;
                      }

                      while (v163 != v157);
                      v153 += v159;
                    }

                    v156 += BytesPerRow;
                    ++v151;
                  }

                  while (v151 != v152);
                }

                CVPixelBufferUnlockBaseAddress(v141, 1uLL);
                v199 = 0;
                v200 = v215;
                v201 = v216;
                v202 = v217;
                do
                {
                  if (v153 < 1)
                  {
                    v203 = 0.0;
                  }

                  else
                  {
                    v203 = v200[v199] / v153;
                  }

                  v200[v199] = v203;
                  if (v153 * v145 < 1)
                  {
                    v201[v199] = 0.0;
                    v202[v199] = 0.0;
                  }

                  else
                  {
                    v201[v199] = v201[v199] / (v145 * v153);
                    v202[v199] = v202[v199] / (v146 * v153);
                  }

                  ++v199;
                }

                while (v199 != 36);
                v137 = 0;
              }

              else
              {
                v137 = -50;
              }

              v141 = pixelBufferOut;
            }
          }

          if (v141)
          {
            CFRelease(v141);
            pixelBufferOut = 0;
          }
        }

        if (context)
        {
          CFRelease(context);
        }

        if (!v137)
        {
          v195 = v215;
          v196 = 64;
          v138.n128_u32[0] = 1199570688;
          do
          {
            v197 = *v195++;
            *(v207 + v196) = (v197 * 65535.0);
            v196 += 2;
          }

          while (v196 != 136);
          v198 = (*(*v205 + 128))(v205, v138);
          memcpy(__dst, v207, v198);
          v18 = &CVML_status_ok;
          goto LABEL_210;
        }

LABEL_209:
        v18 = &CVML_status_internalError;
LABEL_210:
        MEMORY[0x1AC556AE0](v122, 0x1000C80BDFB0063);
        goto LABEL_211;
      }

      MEMORY[0x1AC556AE0](v189, 0x1000C8052888210);
      v190 = v216;
    }

    v215 = 0;
    if (v190)
    {
      MEMORY[0x1AC556AE0](v190, 0x1000C8052888210);
    }

    v216 = 0;
    if (v217)
    {
      MEMORY[0x1AC556AE0](v217, 0x1000C8052888210);
    }

    v217 = 0;
    goto LABEL_209;
  }

  if (v8)
  {
    MEMORY[0x1AC556AE0](v8, 0x1000C80BDFB0063);
  }

  v18 = &CVML_status_internalError;
LABEL_212:
  v193 = *v18;
  ma::HSVHistogram::~HSVHistogram(&v215);
  return (v193 + 128) | 0xE00;
}

void sub_1A5EB7D48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5EB8BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(&a35);

  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x320], 8);

  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  std::deque<-[VNPersonSegmentationGeneratorLearnedMattingTiled _processTiledImageBuffer:inputMaskObservation:options:qosClass:error:]::OutputTileData>::~deque[abi:ne200100](&STACK[0x3B8]);

  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);

  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Block_object_dispose(&STACK[0x5C0], 8);
  _Block_object_dispose((v74 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19611(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double __Block_byref_object_copy__46(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

void sub_1A5EB9B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_1A5EBA418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v29);
  operator delete(v28);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(&a27);
  _Block_object_dispose((v30 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1A5EBA5C4()
{
  if (v0)
  {
    JUMPOUT(0x1A5EBA5CCLL);
  }

  JUMPOUT(0x1A5EBA5D0);
}

void sub_1A5EBAC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  std::optional<std::tuple<std::unordered_map<NSString * {__strong},__CVBuffer *>,std::unordered_map<NSString * {__strong},espresso_buffer_t>>>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1A5EBB28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a13);

  _Unwind_Resume(a1);
}

void sub_1A5EBB89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a18);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a21);

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,MPClusteringTreeNode *>,std::__map_value_compare<int,std::__value_type<int,MPClusteringTreeNode *>,std::less<int>,true>,std::allocator<std::__value_type<int,MPClusteringTreeNode *>>>::__emplace_unique_key_args<int,std::pair<int,MPClusteringTreeNode *>>(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void MPClusteringTreeNode::getLeafNodes(MPClusteringTreeNode *this, uint64_t a2)
{
  this->var0 = 0;
  *&this->var1 = 0;
  *&this->var3 = 0;
  if (!*(a2 + 24) || !*(a2 + 32))
  {
    operator new();
  }

  MPClusteringTreeNode::getLeafNodes(&v7);
  MPClusteringTreeNode::getLeafNodes(&v5);
  var0 = v7.var0;
  std::vector<MPClusteringTreeNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MPClusteringTreeNode **>,std::__wrap_iter<MPClusteringTreeNode **>>(this, 0, v7.var0, *&v7.var1, (*&v7.var1 - v7.var0) >> 3);
  v4 = v5;
  std::vector<MPClusteringTreeNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MPClusteringTreeNode **>,std::__wrap_iter<MPClusteringTreeNode **>>(this, *&this->var1, v5, v6, (v6 - v5) >> 3);
  if (v4)
  {
    operator delete(v4);
  }

  if (var0)
  {
    operator delete(var0);
  }
}

void sub_1A5EBBAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (v13)
  {
    operator delete(v13);
  }

  v16 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MPClusteringTreeNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MPClusteringTreeNode **>,std::__wrap_iter<MPClusteringTreeNode **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v14);
    }

    v32 = 8 * v15;
    v33 = 8 * a5;
    v34 = (8 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 8;
    }

    while (v33);
    memcpy((v32 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v28 = &__dst[8 * a5];
    v29 = &v10[-8 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 8;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v28);
    }

    v27 = 8 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[8 * a5];
    v22 = &v10[v19];
    if (&v20[-8 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -8 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 8;
        v23 += 8;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[8 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

void MPClusteringTreeNode::freeNodeAndItsSubtree(MPClusteringTreeNode *this)
{
  var5 = this->var5;
  if (var5)
  {
    MPClusteringTreeNode::freeNodeAndItsSubtree(var5);
  }

  var6 = this->var6;
  if (var6)
  {
    MPClusteringTreeNode::freeNodeAndItsSubtree(var6);
  }

  free(this);
}

void sub_1A5EBBF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNEspressoResources;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5EBD41C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5EBD89C(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

uint64_t ctpl_trackerDelete(void *a1)
{
  if (a1)
  {
    v2 = a1[9];
    if (v2)
    {
      tplTrackerResampler_free(v2 + 42655);
    }

    free(v2);
    free(a1);
    v3 = &CVML_status_ok;
  }

  else
  {
    v3 = &CVML_status_invalidParameter;
  }

  return (*v3 + 128) | 0x1A00;
}

vision::mod::ImageAnalyzer_CustomClassifier **std::unique_ptr<vision::mod::ImageAnalyzer_CustomClassifier>::~unique_ptr[abi:ne200100](vision::mod::ImageAnalyzer_CustomClassifier **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vision::mod::ImageAnalyzer_CustomClassifier::~ImageAnalyzer_CustomClassifier(v2);
    MEMORY[0x1AC556B00]();
  }

  return a1;
}

void vision::mod::ImageAnalyzer_CustomClassifier::~ImageAnalyzer_CustomClassifier(vision::mod::ImageAnalyzer_CustomClassifier *this)
{
  if ((*(this + 240) & 1) == 0)
  {
    espresso_plan_destroy();
  }

  espresso_context_destroy();
  v2 = (this + 312);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  vision::mod::ImageAnalyzer_CustomClassifierOptions::~ImageAnalyzer_CustomClassifierOptions(this);
}

void vision::mod::ImageAnalyzer_CustomClassifierOptions::~ImageAnalyzer_CustomClassifierOptions(void **this)
{
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_1A5EBE398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(va);
  std::unique_ptr<std::vector<std::pair<std::string,float>>>::~unique_ptr[abi:ne200100]((v3 - 112));
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<std::pair<std::string,float>>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1AC556B00](v2, 0x20C40960023A9);
  }

  return a1;
}

void sub_1A5EC051C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  v19[23].__shared_weak_owners_ = v20;
  if (a2 == 1)
  {
    *a18 = *__cxa_begin_catch(a1);
    *a19 = 0;
    a19[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1A5EC02DCLL);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void vision::mod::ImageAnalyzer::loadLabels(vision::mod::ImageAnalyzer *this, const char *a2)
{
  v11[19] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 && *a2)
  {
    __p = 0uLL;
    v7 = 0;
    std::ifstream::basic_ifstream(v9);
    v3 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v9 + *(v9[0] - 24)));
      v4 = std::locale::use_facet(&v8, v3);
      v5 = (v4->__vftable[2].~facet_0)(v4, 10);
      std::locale::~locale(&v8);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, &__p, v5);
      if ((v10[*(v9[0] - 24) + 16] & 5) != 0)
      {
        break;
      }

      std::vector<std::string>::push_back[abi:ne200100](this, &__p);
    }

    v9[0] = *MEMORY[0x1E69E54C8];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
    MEMORY[0x1AC556860](v10);
    std::istream::~istream();
    MEMORY[0x1AC556A40](v11);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1A5EC0CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_1A5EC0D1C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1A5EC0D14);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1AC556860](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1AC556A40](a1 + 53);
  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::unordered_set<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::unordered_set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t vision::mod::_isBooleanFlag(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v3 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v3)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  if (std::string::compare(&__p, "true"))
  {
    if (std::string::compare(&__p, "false"))
    {
      v5 = 0;
      goto LABEL_21;
    }

    if (!a2)
    {
      goto LABEL_20;
    }

    LOBYTE(v5) = 0;
LABEL_19:
    *a2 = v5;
LABEL_20:
    v5 = 1;
    goto LABEL_21;
  }

  v5 = 1;
  if (a2)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1A5EC10C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::string>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::string>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::string>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::string>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<unsigned long ()(unsigned long)>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,0>(uint64_t a1)
{
  std::__function::__value_func<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<unsigned long ()(unsigned long)>>,0>(uint64_t a1)
{
  std::__function::__value_func<unsigned long ()(unsigned long)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,0>(uint64_t a1)
{
  std::__function::__value_func<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>>>::destroy(*(a2 + 128));
    std::__tree<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>>>::destroy(*(a2 + 104));
    std::__tree<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>>>::destroy(*(a2 + 80));
    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(a2 + 56));
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<std::string const,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::function<unsigned long ()(unsigned long)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<unsigned long ()(unsigned long)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::__bind<long long (&)(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<long long (&)(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A603CA13))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<long long (&)(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<long long (&)(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1973AC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<unsigned long ()(unsigned long)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::__bind<unsigned long (&)(unsigned long),std::placeholders::__ph<1> const&>,std::allocator<std::__bind<unsigned long (&)(unsigned long),std::placeholders::__ph<1> const&>>,unsigned long ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A603C7D6))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<unsigned long (&)(unsigned long),std::placeholders::__ph<1> const&>,std::allocator<std::__bind<unsigned long (&)(unsigned long),std::placeholders::__ph<1> const&>>,unsigned long ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1973A08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::__bind<long long (&)(__sFILE *,char const*,std::map<std::string,std::vector<float>> &),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<long long (&)(__sFILE *,char const*,std::map<std::string,std::vector<float>> &),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIRFxP7__sFILEPKcRNS_3mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIfNS9_IfEEEENS_4lessISB_EENS9_INS_4pairIKSB_SE_EEEEEEEJRKNS_12placeholders4__phILi1EEERKNSQ_ILi2EEERKNSQ_ILi3EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<long long (&)(__sFILE *,char const*,std::map<std::string,std::vector<float>> &),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<long long (&)(__sFILE *,char const*,std::map<std::string,std::vector<float>> &),std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1973960;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(std::vector<std::string> **a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 3;
          v18 = v10;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(a2, a3, v9);
    v17 = a1[1];
    while (v17 != v16)
    {
      v17 -= 3;
      v18 = v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(a2, (a2 + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(a1, (a2 + v15), a3, a1[1]);
  }
}

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(v2);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,float>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
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

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(char ***a1, char ***a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5EC316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<std::vector<long long>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 3;
        v17 = v18;
        if (v18)
        {
          *(v15 - 2) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v13), a3, a1[1]);
  }
}

std::vector<std::string> *std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(std::string **a1, std::string **a2, std::vector<std::string> *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      ++a3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

void std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CGPoint>>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

std::vector<std::string> **std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<std::string>> *,std::vector<std::vector<std::string>> *,std::vector<std::vector<std::string>> *>(std::string ***a1, std::string ***a2, std::vector<std::string> **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<std::vector<std::string>>::__assign_with_size[abi:ne200100]<std::vector<std::string>*,std::vector<std::string>*>(a3, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*,std::vector<std::vector<std::string>>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](a4, 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1A5EC37E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<std::string>>>,std::vector<std::vector<std::string>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<vision::mod::ImageAnalyzerConcrete>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 656) == 1)
  {
    espresso_plan_destroy();
    espresso_context_destroy();
  }

  v2 = *(a1 + 1080);
  *(a1 + 1080) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1008);
  if (v3)
  {
    do
    {
      v4 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 992);
  *(a1 + 992) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 968);
  if (v6)
  {
    v7 = *(a1 + 976);
    v8 = *(a1 + 968);
    if (v7 != v6)
    {
      v9 = *(a1 + 976);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(a1 + 968);
    }

    *(a1 + 976) = v6;
    operator delete(v8);
  }

  v12 = *(a1 + 944);
  if (v12)
  {
    do
    {
      v13 = *v12;
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table((v12 + 3));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *(a1 + 928);
  *(a1 + 928) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 904);
  if (v15)
  {
    do
    {
      v16 = *v15;
      v30 = (v15 + 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(a1 + 888);
  *(a1 + 888) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(a1 + 864);
  if (v18)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = *(a1 + 848);
  *(a1 + 848) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 824);
  if (v21)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = *(a1 + 808);
  *(a1 + 808) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(a1 + 784);
  if (v24)
  {
    do
    {
      v25 = *v24;
      std::__tree<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(std::map<std::string,std::vector<float>> const&,std::vector<float> const&,std::vector<float>&)>>>>::destroy(*(v24 + 16));
      std::__tree<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<unsigned long ()(unsigned long)>>>>::destroy(*(v24 + 13));
      std::__tree<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<long long ()(__sFILE *,char const*,std::map<std::string,std::vector<float>> &)>>>>::destroy(*(v24 + 10));
      std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(v24 + 7));
      if (v24[47] < 0)
      {
        operator delete(*(v24 + 3));
      }

      operator delete(v24);
      v24 = v25;
    }

    while (v25);
  }

  v26 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(a1 + 744);
  if (v27)
  {
    do
    {
      v28 = *v27;
      if (*(v27 + 47) < 0)
      {
        operator delete(v27[3]);
      }

      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = *(a1 + 728);
  *(a1 + 728) = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  std::unique_ptr<vision::mod::ImageProcessing_Preprocessor>::reset[abi:ne200100]((a1 + 664), 0);

  vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options((a1 + 24));
}

void std::__shared_ptr_emplace<vision::mod::ImageAnalyzerConcrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973B70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5EC3BCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageAnalyzer_PostProcessor::getOutputSize(std::string *this, uint64_t a2)
{
  if (!std::string::compare(this, "unknown"))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8564;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(&this[3], &v9, this);
  if (!v4)
  {
    operator new();
  }

  v8 = a2;
  v5 = *(v4 + 80);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v8);
}

uint64_t *std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

vision::mod::ImageAnalyzer *vision::mod::ImageAnalyzer::analyzeUsingCVPixelBuffer(vision::mod::ImageAnalyzer *this, int a2, __CVBuffer *a3)
{
  for (i = *(this + 105); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(this + 832);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*(this + 103) + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }

    *(v10 + 20) = 0;
  }

  v109 = (this + 824);
  v110 = (this + 720);
  v12 = *(this + 90);
  v13 = a2;
  if (!v12)
  {
    goto LABEL_151;
  }

  v118 = (this + 784);
  v115 = (this + 704);
  v116 = (this + 864);
  v113 = *(MEMORY[0x1E69E54E8] + 24);
  v114 = *MEMORY[0x1E69E54E8];
  do
  {
    v14 = (v12 + 2);
    v15 = *(v12 + 4);
    v16 = 1 << (__clz(v15) ^ 0x1F);
    if (!v15)
    {
      v16 = 0;
    }

    v18 = (v16 & v13) == 0 && v15 <= 0x2000;
    if (v15 == 64 || v18)
    {
      goto LABEL_150;
    }

    if (*(v12 + 47) < 0)
    {
      if (!v12[4])
      {
LABEL_208:
        exception = __cxa_allocate_exception(8uLL);
        v108 = 8574;
        goto LABEL_209;
      }
    }

    else if (!*(v12 + 47))
    {
      goto LABEL_208;
    }

    v19 = *(this + 792);
    if (!*&v19)
    {
      goto LABEL_52;
    }

    v20 = vcnt_s8(v19);
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] > 1uLL)
    {
      v21 = *(v12 + 4);
      if (*&v19 <= v15)
      {
        v21 = v15 % v19.i32[0];
      }
    }

    else
    {
      v21 = (v19.i32[0] - 1) & v15;
    }

    v22 = *(*v118 + 8 * v21);
    if (!v22 || (v23 = *v22) == 0)
    {
LABEL_52:
      operator new();
    }

    while (1)
    {
      v24 = v23[1];
      if (v24 == v15)
      {
        break;
      }

      if (v20.u32[0] > 1uLL)
      {
        if (v24 >= *&v19)
        {
          v24 %= *&v19;
        }
      }

      else
      {
        v24 &= *&v19 - 1;
      }

      if (v24 != v21)
      {
        goto LABEL_52;
      }

LABEL_51:
      v23 = *v23;
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    if (*(v23 + 4) != v15)
    {
      goto LABEL_51;
    }

    v25 = espresso_network_bind_buffer();
    v13 = a2;
    if (v25)
    {
LABEL_207:
      espresso_plan_get_error_info();
      exception = __cxa_allocate_exception(8uLL);
      v108 = 8539;
      goto LABEL_209;
    }

    v26 = *(this + 872);
    if (!*&v26)
    {
      goto LABEL_150;
    }

    v27 = *v14;
    v28 = vcnt_s8(v26);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = *v14;
      if (*&v26 <= v27)
      {
        v29 = v27 % v26.i32[0];
      }
    }

    else
    {
      v29 = (v26.i32[0] - 1) & v27;
    }

    v30 = *(*v116 + 8 * v29);
    if (!v30)
    {
      goto LABEL_150;
    }

    v31 = *v30;
    if (!v31)
    {
      goto LABEL_150;
    }

    while (2)
    {
      v32 = v31[1];
      if (v32 != v27)
      {
        if (v28.u32[0] > 1uLL)
        {
          if (v32 >= *&v26)
          {
            v32 %= *&v26;
          }
        }

        else
        {
          v32 &= *&v26 - 1;
        }

        if (v32 != v29)
        {
          goto LABEL_150;
        }

LABEL_69:
        v31 = *v31;
        if (!v31)
        {
          goto LABEL_150;
        }

        continue;
      }

      break;
    }

    if (*(v31 + 4) != v27)
    {
      goto LABEL_69;
    }

    v121.__r_.__value_.__r.__words[0] = (v12 + 2);
    v33 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType const&>,std::tuple<>>(v116, v27);
    v34 = v33[3];
    v35 = v33[4];
    v36 = *v14 & a2;
    if (v36 <= 31)
    {
      if (v36 == 2)
      {
        LODWORD(__dst) = 2;
        v121.__r_.__value_.__r.__words[0] = &__dst;
        v48 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v118, 2u);
        OutputSize = v48[14] * v48[13] * v48[15] * v48[16] * v48[17];
        if (!std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(this + 93, 2u))
        {
          goto LABEL_104;
        }

        LODWORD(__dst) = 2;
        v121.__r_.__value_.__r.__words[0] = &__dst;
        v39 = (this + 744);
        v40 = 2;
      }

      else
      {
        if (v36 != 4)
        {
          goto LABEL_212;
        }

        LODWORD(__dst) = 4;
        v121.__r_.__value_.__r.__words[0] = &__dst;
        v41 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v118, 4u);
        OutputSize = v41[14] * v41[13] * v41[15] * v41[16] * v41[17];
        if (!std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(this + 93, 2u))
        {
          goto LABEL_104;
        }

        LODWORD(__dst) = 4;
        v121.__r_.__value_.__r.__words[0] = &__dst;
        v39 = (this + 744);
        v40 = 4;
      }

LABEL_88:
      v49 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v39, v40);
      OutputSize = vision::mod::ImageAnalyzer_PostProcessor::getOutputSize(v49 + 1, OutputSize);
      goto LABEL_104;
    }

    if (v36 == 32)
    {
      LODWORD(__dst) = 32;
      v121.__r_.__value_.__r.__words[0] = &__dst;
      OutputSize = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v118, 0x20u)[15];
      goto LABEL_104;
    }

    if (v36 != 64)
    {
      if (v36 != 4096)
      {
        goto LABEL_212;
      }

      LODWORD(__dst) = 4096;
      v121.__r_.__value_.__r.__words[0] = &__dst;
      v37 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v118, 0x1000u);
      OutputSize = v37[14] * v37[13] * v37[15] * v37[16] * v37[17];
      if (!std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(this + 93, 0x1000u))
      {
        goto LABEL_104;
      }

      LODWORD(__dst) = 4096;
      v121.__r_.__value_.__r.__words[0] = &__dst;
      v39 = (this + 744);
      v40 = 4096;
      goto LABEL_88;
    }

    if (*(this + 461) != 1)
    {
      OutputSize = *(**(this + 118) + 264);
      goto LABEL_104;
    }

    v111 = v33[4];
    v42 = std::__string_hash<char>::operator()[abi:ne200100](this + 216);
    v43 = *(this + 976);
    if (!*&v43)
    {
      goto LABEL_210;
    }

    v44 = v42;
    v45 = vcnt_s8(v43);
    v45.i16[0] = vaddlv_u8(v45);
    v46 = v45.u32[0];
    if (v45.u32[0] > 1uLL)
    {
      v47 = v42;
      if (v42 >= *&v43)
      {
        v47 = v42 % *&v43;
      }
    }

    else
    {
      v47 = (*&v43 - 1) & v42;
    }

    v50 = *(*(this + 121) + 8 * v47);
    if (!v50 || (v51 = *v50) == 0)
    {
LABEL_210:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    while (2)
    {
      v52 = v51[1];
      if (v52 != v44)
      {
        if (v46 > 1)
        {
          if (v52 >= *&v43)
          {
            v52 %= *&v43;
          }
        }

        else
        {
          v52 &= *&v43 - 1;
        }

        if (v52 != v47)
        {
          goto LABEL_210;
        }

LABEL_102:
        v51 = *v51;
        if (!v51)
        {
          goto LABEL_210;
        }

        continue;
      }

      break;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v51 + 2, this + 27))
    {
      goto LABEL_102;
    }

    OutputSize = v51[17];
    v35 = v111;
LABEL_104:
    if (v35 != v34)
    {
      v121.__r_.__value_.__r.__words[0] = (v12 + 2);
      v53 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType const&>,std::tuple<>>(v116, *v14);
      v13 = a2;
      if (0xAAAAAAAAAAAAAAABLL * ((v53[4] - v53[3]) >> 3) == OutputSize)
      {
        goto LABEL_150;
      }

LABEL_212:
      exception = __cxa_allocate_exception(8uLL);
      v108 = 8572;
LABEL_209:
      *exception = v108;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v13 = a2;
    if (!OutputSize)
    {
      goto LABEL_150;
    }

    v54 = 0;
    v112 = OutputSize;
    while (2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v121);
      v55 = *v14;
      v56 = *(this + 712);
      if (!*&v56)
      {
        goto LABEL_125;
      }

      v57 = vcnt_s8(v56);
      v57.i16[0] = vaddlv_u8(v57);
      if (v57.u32[0] > 1uLL)
      {
        v58 = *v14;
        if (*&v56 <= v55)
        {
          v58 = v55 % v56.i32[0];
        }
      }

      else
      {
        v58 = (v56.i32[0] - 1) & v55;
      }

      v59 = *(*v115 + 8 * v58);
      if (!v59 || (v60 = *v59) == 0)
      {
LABEL_125:
        operator new();
      }

      while (2)
      {
        v61 = v60[1];
        if (v61 != v55)
        {
          if (v57.u32[0] > 1uLL)
          {
            if (v61 >= *&v56)
            {
              v61 %= *&v56;
            }
          }

          else
          {
            v61 &= *&v56 - 1;
          }

          if (v61 != v58)
          {
            goto LABEL_125;
          }

LABEL_124:
          v60 = *v60;
          if (!v60)
          {
            goto LABEL_125;
          }

          continue;
        }

        break;
      }

      if (*(v60 + 4) != v55)
      {
        goto LABEL_124;
      }

      v64 = v60[3];
      v63 = (v60 + 3);
      v62 = v64;
      v65 = *(v63 + 23);
      if (v65 >= 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v62;
      }

      if (v65 >= 0)
      {
        v67 = *(v63 + 23);
      }

      else
      {
        v67 = *(v63 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v121, v66, v67);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v121, "-", 1);
      MEMORY[0x1AC556930](&v121, v54);
      *&__dst = v12 + 2;
      v68 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType const&>,std::tuple<>>(v116, *v14);
      if ((v129 & 0x10) != 0)
      {
        v70 = v128;
        if (v128 < v125)
        {
          v128 = v125;
          v70 = v125;
        }

        v71 = __src;
      }

      else
      {
        if ((v129 & 8) == 0)
        {
          v69 = 0;
          v120 = 0;
          goto LABEL_145;
        }

        v71 = v122;
        v70 = v123;
      }

      v69 = v70 - v71;
      if (v70 - v71 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v69 >= 0x17)
      {
        operator new();
      }

      v120 = v70 - v71;
      if (v69)
      {
        memmove(&__dst, v71, v69);
      }

LABEL_145:
      *(&__dst + v69) = 0;
      std::vector<std::string>::push_back[abi:ne200100]((v68 + 3), &__dst);
      v13 = a2;
      if (v120 < 0)
      {
        operator delete(__dst);
      }

      v121.__r_.__value_.__r.__words[0] = v114;
      *(v121.__r_.__value_.__r.__words + *(v114 - 24)) = v113;
      v121.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
      if (v127 < 0)
      {
        operator delete(__p);
      }

      v121.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v121.__r_.__value_.__r.__words[2]);
      std::ostream::~ostream();
      MEMORY[0x1AC556A40](&v130);
      if (++v54 != v112)
      {
        continue;
      }

      break;
    }

LABEL_150:
    v12 = *v12;
  }

  while (v12);
LABEL_151:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_196;
  }

  if (*(this + 461) != 1)
  {
    v72 = *(this + 54);
    v73 = *(this + 119);
    v74 = *(this + 118);
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v73 - v74) >> 3);
    v76 = v72 - v75;
    if (v72 <= v75)
    {
      if (v72 < v75)
      {
        v79 = v74 + 24 * v72;
        if (v73 != v79)
        {
          v80 = *(this + 119);
          do
          {
            v82 = *(v80 - 24);
            v80 -= 24;
            v81 = v82;
            if (v82)
            {
              *(v73 - 16) = v81;
              operator delete(v81);
            }

            v73 = v80;
          }

          while (v80 != v79);
        }

        *(this + 119) = v79;
      }
    }

    else
    {
      v77 = *(this + 120);
      if (0xAAAAAAAAAAAAAAABLL * ((v77 - v73) >> 3) < v76)
      {
        if (v72 <= 0xAAAAAAAAAAAAAAALL)
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v74) >> 3);
          if (2 * v78 > v72)
          {
            v72 = 2 * v78;
          }

          if (v78 >= 0x555555555555555)
          {
            v72 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v72 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(this + 119), 24 * ((24 * v76 - 24) / 0x18) + 24);
      *(this + 119) = v73 + 24 * ((24 * v76 - 24) / 0x18) + 24;
    }

    if (!*(this + 54))
    {
      goto LABEL_196;
    }

    v83 = 0;
    while (1)
    {
      v84 = *(this + 118) + 24 * v83;
      v85 = *v84;
      v86 = *(v84 + 8);
      v87 = v86 - *v84;
      v88 = 0xCF3CF3CF3CF3CF3DLL * (v87 >> 3);
      if (v88 > 1)
      {
        if (v87 == 336)
        {
          goto LABEL_187;
        }

        v94 = v85 + 336;
      }

      else
      {
        v89 = 2 - v88;
        v90 = *(v84 + 16);
        if (0xCF3CF3CF3CF3CF3DLL * ((v90 - v86) >> 3) < v89)
        {
          v91 = 0xCF3CF3CF3CF3CF3DLL * ((v90 - v85) >> 3);
          v92 = 2 * v91;
          if (2 * v91 <= 2)
          {
            v92 = 2;
          }

          if (v91 >= 0xC30C30C30C30C3)
          {
            v93 = 0x186186186186186;
          }

          else
          {
            v93 = v92;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(v93);
        }

        v95 = 168 * ((168 - v87) / 0xA8uLL) + 168;
        bzero(*(v84 + 8), v95);
        v94 = v86 + v95;
      }

      *(v84 + 8) = v94;
LABEL_187:
      v96 = 0;
      v97 = 1;
      do
      {
        v98 = v97;
        v99 = *(*(this + 64) + 24 * v83) + 24 * v96;
        if (*(v99 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v121, *v99, *(v99 + 8));
        }

        else
        {
          v100 = *v99;
          v121.__r_.__value_.__r.__words[2] = *(v99 + 16);
          *&v121.__r_.__value_.__l.__data_ = v100;
        }

        if (espresso_network_bind_buffer())
        {
          espresso_plan_get_error_info();
          v106 = __cxa_allocate_exception(8uLL);
          *v106 = 8539;
          __cxa_throw(v106, MEMORY[0x1E69E54B0], 0);
        }

        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        v97 = 0;
        v96 = 1;
      }

      while ((v98 & 1) != 0);
      if (++v83 >= *(this + 54))
      {
        goto LABEL_196;
      }
    }
  }

  v121.__r_.__value_.__r.__words[0] = this + 216;
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 121, this + 27);
  if (espresso_network_bind_buffer())
  {
    goto LABEL_207;
  }

  v121.__r_.__value_.__r.__words[0] = this + 240;
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 121, this + 30);
  if (espresso_network_bind_buffer())
  {
    goto LABEL_207;
  }

LABEL_196:
  if (espresso_network_bind_cvpixelbuffer() || espresso_plan_execute_sync())
  {
    goto LABEL_207;
  }

  for (j = *v110; j; j = *j)
  {
    v102 = *(j + 4);
    v103 = 1 << (__clz(v102) ^ 0x1F);
    if (v102)
    {
      v104 = (v103 & a2) == 0;
    }

    else
    {
      v104 = 1;
    }

    if (!v104)
    {
      LODWORD(__dst) = v103;
      v121.__r_.__value_.__r.__words[0] = &__dst;
      *(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(v109, v103) + 20) = 1;
    }
  }

  return this;
}

void sub_1A5EC57EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  std::ostringstream::~ostringstream(&a28);
  MEMORY[0x1AC556A40](&a45);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1A5EC5B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::tuple<float,_Geometry2D_rect2D_>>::reserve(void *result)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) <= 0x18)
  {
    operator new();
  }

  return result;
}

void std::vector<std::tuple<float,_Geometry2D_rect2D_>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,_Geometry2D_rect2D_>>>(v10);
    }

    v11 = 20 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 4);
    *v11 = v12;
    v6 = 20 * v7 + 20;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,_Geometry2D_rect2D_>>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,false>(unint64_t a1, int *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v158 = a2 - 5;
  v155 = (a2 - 15);
  v156 = (a2 - 10);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 2);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 20), v158, a3);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 20), (a1 + 40), a3);
          v71 = *a3;
          v72 = *v158;
          *&v171[16] = v158[4];
          *v171 = v72;
          *v170 = *(a1 + 40);
          *&v170[16] = *(a1 + 56);
          if (v71(v171, v170))
          {
            v73 = *(a1 + 40);
            *(a1 + 40) = *(a2 - 5);
            *(a2 - 5) = v73;
            *v171 = *(a1 + 44);
            v74 = *v171;
            *(a1 + 44) = *(a2 - 1);
            *(a2 - 1) = v74;
            v75 = *a3;
            *v171 = *(a1 + 40);
            *&v171[16] = *(a1 + 56);
            *v170 = *(a1 + 20);
            *&v170[16] = *(a1 + 36);
            if (v75(v171, v170))
            {
              v76 = *(a1 + 20);
              *(a1 + 20) = *(a1 + 40);
              *(a1 + 40) = v76;
              v77 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 44);
              *(a1 + 44) = v77;
              v78 = *a3;
              *v171 = *(a1 + 20);
              *&v171[16] = *(a1 + 36);
              v79 = *a1;
              *&v170[16] = *(a1 + 16);
              *v170 = v79;
              if (v78(v171, v170))
              {
                v80 = *a1;
                *a1 = *(a1 + 20);
                *(a1 + 20) = v80;
                *v171 = *(a1 + 4);
                *(a1 + 4) = *(a1 + 24);
                *(a1 + 24) = *v171;
              }
            }
          }

          return;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 20), (a1 + 40), (a1 + 60), v158, a3);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v66 = *a3;
        v67 = *v158;
        *&v171[16] = v158[4];
        *v171 = v67;
        v68 = *a1;
        *&v170[16] = *(a1 + 16);
        *v170 = v68;
        if (v66(v171, v170))
        {
          v70 = *a1;
          *a1 = *(a2 - 5);
          *(a2 - 5) = v70;
          *v171 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          *(a2 - 1) = *v171;
        }

        return;
      }
    }

    if (v10 <= 479)
    {
      break;
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v159 = v10;
      v161 = a2;
      v97 = v12 >> 1;
      v98 = v12 >> 1;
      do
      {
        v99 = v98;
        if (v97 >= v98)
        {
          v100 = (2 * v98) | 1;
          v101 = (a1 + 20 * v100);
          if (2 * v98 + 2 < v11)
          {
            v102 = *a3;
            v103 = *v101;
            *&v171[16] = *(v101 + 4);
            *v171 = v103;
            v104 = *(v101 + 20);
            *&v170[16] = *(v101 + 9);
            *v170 = v104;
            if (v102(v171, v170))
            {
              v101 = (v101 + 20);
              v100 = 2 * v99 + 2;
            }
          }

          v105 = (a1 + 20 * v99);
          v106 = *a3;
          v107 = *v101;
          *&v171[16] = *(v101 + 4);
          *v171 = v107;
          v108 = *v105;
          *&v170[16] = *(v105 + 4);
          *v170 = v108;
          if ((v106(v171, v170) & 1) == 0)
          {
            v109 = *v105;
            v167 = *(v105 + 4);
            do
            {
              v110 = v105;
              v105 = v101;
              *v110 = *v101;
              *(v110 + 4) = *(v101 + 4);
              if (v97 < v100)
              {
                break;
              }

              v111 = (2 * v100) | 1;
              v101 = (a1 + 20 * v111);
              v112 = 2 * v100 + 2;
              if (v112 < v11)
              {
                v113 = *a3;
                v114 = *v101;
                *&v171[16] = *(v101 + 4);
                *v171 = v114;
                v115 = *(v101 + 20);
                *&v170[16] = *(v101 + 9);
                *v170 = v115;
                if (v113(v171, v170))
                {
                  v101 = (v101 + 20);
                  v111 = v112;
                }
              }

              v116 = *a3;
              v117 = *v101;
              *&v171[16] = *(v101 + 4);
              *v171 = v117;
              *v170 = v109;
              *&v170[4] = v167;
              v100 = v111;
            }

            while (!v116(v171, v170));
            *v105 = v109;
            *(v105 + 4) = v167;
          }
        }

        v98 = v99 - 1;
      }

      while (v99);
      v118 = v161;
      v119 = 0xCCCCCCCCCCCCCCCDLL * (v159 >> 2);
      while (1)
      {
        v162 = v118;
        v120 = 0;
        v121 = *a1;
        v163 = *(a1 + 4);
        v122 = a1;
        do
        {
          v123 = v122 + 20 * v120;
          v124 = (v123 + 20);
          v125 = (2 * v120) | 1;
          v126 = 2 * v120 + 2;
          if (v126 < v119)
          {
            v127 = *a3;
            v128 = *v124;
            *&v171[16] = *(v123 + 36);
            *v171 = v128;
            v129 = (v123 + 40);
            v130 = *(v123 + 40);
            *&v170[16] = *(v123 + 56);
            *v170 = v130;
            if (v127(v171, v170))
            {
              v124 = v129;
              v125 = v126;
            }
          }

          *v122 = *v124;
          *(v122 + 4) = *(v124 + 1);
          v122 = v124;
          v120 = v125;
        }

        while (v125 <= (v119 - 2) / 2);
        v118 -= 5;
        if (v124 == v162 - 5)
        {
          *v124 = v121;
          v141 = v163;
        }

        else
        {
          *v124 = *(v162 - 5);
          *(v124 + 1) = *(v162 - 1);
          *(v162 - 5) = v121;
          *(v162 - 1) = v163;
          v131 = v124 - a1 + 20;
          if (v131 < 21)
          {
            goto LABEL_110;
          }

          v132 = (-2 - 0x3333333333333333 * (v131 >> 2)) >> 1;
          v133 = (a1 + 20 * v132);
          v134 = *a3;
          v135 = *v133;
          *&v171[16] = *(v133 + 4);
          *v171 = v135;
          v136 = *v124;
          *&v170[16] = v124[4];
          *v170 = v136;
          if (!v134(v171, v170))
          {
            goto LABEL_110;
          }

          v137 = *v124;
          v168 = *(v124 + 1);
          do
          {
            v138 = v124;
            v124 = v133;
            *v138 = *v133;
            *(v138 + 1) = *(v133 + 4);
            if (!v132)
            {
              break;
            }

            v132 = (v132 - 1) >> 1;
            v133 = (a1 + 20 * v132);
            v139 = *a3;
            v140 = *v133;
            *&v171[16] = *(v133 + 4);
            *v171 = v140;
            *v170 = v137;
            *&v170[4] = v168;
          }

          while ((v139(v171, v170) & 1) != 0);
          *v124 = v137;
          v141 = v168;
        }

        *(v124 + 1) = v141;
LABEL_110:
        if (v119-- <= 2)
        {
          return;
        }
      }
    }

    v13 = v11 >> 1;
    v14 = (a1 + 20 * (v11 >> 1));
    if (v10 < 0xA01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(v14, a1, v158, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, v14, v158, a3);
      v15 = 5 * v13;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>((a1 + 20), (a1 + 4 * v15 - 20), v156, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>((a1 + 40), (a1 + 20 + 4 * v15), v155, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>((a1 + 4 * v15 - 20), v14, (a1 + 20 + 4 * v15), a3);
      v16 = *a1;
      *a1 = *v14;
      *v14 = v16;
      *v171 = *(a1 + 4);
      *(a1 + 4) = *(v14 + 4);
      *(v14 + 4) = *v171;
    }

    --a4;
    if (a5 & 1) != 0 || (v17 = *a3, v18 = *(a1 - 20), *&v171[16] = *(a1 - 4), *v171 = v18, v19 = *a1, *&v170[16] = *(a1 + 16), *v170 = v19, (v17(v171, v170)))
    {
      v160 = a4;
      v20 = *a1;
      v164 = *(a1 + 4);
      v21 = a1;
      do
      {
        v22 = v21;
        v21 += 20;
        v23 = *a3;
        *v171 = *(v22 + 20);
        *&v171[16] = *(v22 + 36);
        *v170 = v20;
        *&v170[4] = v164;
      }

      while ((v23(v171, v170) & 1) != 0);
      v24 = a2;
      v25 = a2;
      if (v22 == a1)
      {
        v30 = a2;
        while (v21 < v30)
        {
          v31 = *a3;
          v26 = v30 - 5;
          v32 = *(v30 - 5);
          *&v171[16] = *(v30 - 1);
          *v171 = v32;
          *v170 = v20;
          *&v170[4] = v164;
          v33 = v31(v171, v170);
          v30 = v26;
          if (v33)
          {
            goto LABEL_26;
          }
        }

        v26 = v30;
      }

      else
      {
        do
        {
          v26 = v25 - 5;
          v27 = *a3;
          v28 = *(v25 - 5);
          *&v171[16] = *(v25 - 1);
          *v171 = v28;
          *v170 = v20;
          *&v170[4] = v164;
          v29 = v27(v171, v170);
          v25 = v26;
        }

        while (!v29);
      }

LABEL_26:
      v9 = v21;
      if (v21 < v26)
      {
        v34 = v26;
        do
        {
          v35 = *v9;
          *v9 = *v34;
          *v34 = v35;
          *v171 = *(v9 + 4);
          *(v9 + 4) = *(v34 + 4);
          *(v34 + 4) = *v171;
          do
          {
            v36 = *(v9 + 20);
            v37 = *(v9 + 36);
            v9 += 20;
            v38 = *a3;
            *v171 = v36;
            *&v171[16] = v37;
            *v170 = v20;
            *&v170[4] = v164;
          }

          while ((v38(v171, v170) & 1) != 0);
          do
          {
            v39 = *(v34 - 20);
            v40 = *(v34 - 4);
            v34 -= 20;
            v41 = *a3;
            *&v171[16] = v40;
            *v171 = v39;
            *v170 = v20;
            *&v170[4] = v164;
          }

          while (!v41(v171, v170));
        }

        while (v9 < v34);
      }

      if (v9 - 20 != a1)
      {
        *a1 = *(v9 - 20);
        *(a1 + 4) = *(v9 - 16);
      }

      *(v9 - 20) = v20;
      *(v9 - 16) = v164;
      v42 = v21 >= v26;
      a2 = v24;
      a4 = v160;
      if (v42)
      {
        v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*>(a1, (v9 - 20), a3);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*>(v9, a2, a3))
        {
          a2 = (v9 - 20);
          if (v43)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v43)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,false>(a1, v9 - 20, a3, v160, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v44 = *a1;
      v165 = *(a1 + 4);
      v45 = *a3;
      *v171 = *a1;
      *&v171[4] = *(a1 + 4);
      v46 = *v158;
      *&v170[16] = v158[4];
      *v170 = v46;
      if (v45(v171, v170))
      {
        v47 = a1;
        do
        {
          v9 = v47 + 20;
          v48 = *a3;
          *v171 = v44;
          *&v171[4] = v165;
          *v170 = *(v47 + 20);
          *&v170[16] = *(v47 + 36);
          v49 = v48(v171, v170);
          v47 = v9;
        }

        while ((v49 & 1) == 0);
      }

      else
      {
        v50 = a1 + 20;
        do
        {
          v9 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v51 = *a3;
          *v171 = v44;
          *&v171[4] = v165;
          v52 = *v9;
          *&v170[16] = *(v9 + 16);
          *v170 = v52;
          v53 = v51(v171, v170);
          v50 = v9 + 20;
        }

        while (!v53);
      }

      v54 = a2;
      if (v9 < a2)
      {
        v55 = a2;
        do
        {
          v54 = v55 - 5;
          v56 = *a3;
          *v171 = v44;
          *&v171[4] = v165;
          v57 = *(v55 - 5);
          *&v170[16] = *(v55 - 1);
          *v170 = v57;
          v58 = v56(v171, v170);
          v55 = v54;
        }

        while ((v58 & 1) != 0);
      }

      while (v9 < v54)
      {
        v59 = *v9;
        *v9 = *v54;
        *v54 = v59;
        *v171 = *(v9 + 4);
        *(v9 + 4) = *(v54 + 1);
        *(v54 + 1) = *v171;
        do
        {
          v60 = *(v9 + 20);
          v61 = *(v9 + 36);
          v9 += 20;
          v62 = *a3;
          *v171 = v44;
          *&v171[4] = v165;
          *v170 = v60;
          *&v170[16] = v61;
        }

        while (!v62(v171, v170));
        do
        {
          *v171 = v44;
          *&v171[4] = v165;
          v63 = *(v54 - 5);
          v64 = *(v54 - 1);
          v54 -= 5;
          v65 = *a3;
          *&v170[16] = v64;
          *v170 = v63;
        }

        while ((v65(v171, v170) & 1) != 0);
      }

      if (v9 - 20 != a1)
      {
        *a1 = *(v9 - 20);
        *(a1 + 4) = *(v9 - 16);
      }

      a5 = 0;
      *(v9 - 20) = v44;
      *(v9 - 16) = v165;
    }
  }

  if (a5)
  {
    if (a1 != a2)
    {
      v81 = (a1 + 20);
      if ((a1 + 20) != a2)
      {
        v82 = 0;
        v83 = a1;
        do
        {
          v84 = v81;
          v85 = *a3;
          v86 = *v84;
          *&v171[16] = *(v84 + 4);
          *v171 = v86;
          v87 = *v83;
          *&v170[16] = *(v83 + 4);
          *v170 = v87;
          if (v85(v171, v170))
          {
            v88 = *v84;
            v166 = *(v83 + 24);
            v89 = v82;
            while (1)
            {
              v90 = v89;
              v91 = a1 + v89;
              *(v91 + 20) = *v91;
              *(v91 + 24) = *(v91 + 4);
              if (!v90)
              {
                break;
              }

              v92 = *a3;
              *v171 = v88;
              *&v171[4] = v166;
              v93 = *(v91 - 20);
              *&v170[16] = *(v91 - 4);
              *v170 = v93;
              v94 = v92(v171, v170);
              v89 = v90 - 20;
              if ((v94 & 1) == 0)
              {
                v95 = (a1 + v90);
                v96 = (a1 + v90 + 4);
                goto LABEL_77;
              }
            }

            v96 = (v91 + 4);
            v95 = a1;
LABEL_77:
            *v95 = v88;
            *v96 = v166;
          }

          v81 = (v84 + 20);
          v82 += 20;
          v83 = v84;
        }

        while ((v84 + 20) != a2);
      }
    }
  }

  else if (a1 != a2)
  {
    v143 = (a1 + 20);
    if ((a1 + 20) != a2)
    {
      v144 = (a1 + 24);
      do
      {
        v145 = v143;
        v146 = *a3;
        v147 = *v145;
        *&v171[16] = *(v145 + 4);
        *v171 = v147;
        v148 = *a1;
        *&v170[16] = *(a1 + 16);
        *v170 = v148;
        if (v146(v171, v170))
        {
          v149 = *v145;
          v169 = *(a1 + 24);
          v150 = v144;
          do
          {
            *(v150 - 1) = *(v150 - 6);
            v151 = (v150 - 20);
            *v150 = *(v150 - 20);
            v152 = *a3;
            *v171 = v149;
            *&v171[4] = v169;
            v153 = *(v150 - 44);
            *&v170[16] = *(v150 - 7);
            *v170 = v153;
            v154 = v152(v171, v170);
            v150 = v151;
          }

          while ((v154 & 1) != 0);
          *(v151 - 1) = v149;
          *v151 = v169;
        }

        v143 = (v145 + 20);
        v144 = (v144 + 20);
        a1 = v145;
      }

      while ((v145 + 20) != a2);
    }
  }
}

char *std::vector<std::tuple<float,_Geometry2D_rect2D_>>::__assign_with_size[abi:ne200100]<std::tuple<float,_Geometry2D_rect2D_>*,std::tuple<float,_Geometry2D_rect2D_>*>(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,_Geometry2D_rect2D_>>>(v11);
      }
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 4) = *(v5 + 4);
      v5 = (v5 + 20);
      result += 20;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 4) = *(v5 + 4);
        v5 = (v5 + 20);
        result += 20;
      }

      while (v5 != v13);
      v12 = *(a1 + 8);
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v14 + 4) = *(v13 + 4);
        *v14 = v15;
        v14 += 20;
        v13 = (v13 + 20);
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v8 = *a4;
  v25 = *a2;
  v26 = *(a2 + 4);
  v23 = *a1;
  v24 = *(a1 + 4);
  v9 = v8(&v25, &v23);
  v10 = *a4;
  if (v9)
  {
    v25 = *a3;
    v26 = *(a3 + 4);
    v23 = *a2;
    v24 = *(a2 + 4);
    result = v10(&v25, &v23);
    v12 = (a1 + 4);
    v13 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v13;
      v14 = *v12;
      *v12 = *(a3 + 4);
    }

    else
    {
      *a1 = *a2;
      *a2 = v13;
      v20 = *v12;
      *v12 = *(a2 + 4);
      *(a2 + 4) = v20;
      v21 = *a4;
      v25 = *a3;
      v26 = *(a3 + 4);
      v23 = *a2;
      v24 = *(a2 + 4);
      result = v21(&v25, &v23);
      if (!result)
      {
        return result;
      }

      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v14 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
    }

    *(a3 + 4) = v14;
  }

  else
  {
    v25 = *a3;
    v26 = *(a3 + 4);
    v23 = *a2;
    v24 = *(a2 + 4);
    result = v10(&v25, &v23);
    if (result)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v16;
      v17 = *a4;
      v25 = *a2;
      v26 = *(a2 + 4);
      v23 = *a1;
      v24 = *(a1 + 4);
      result = v17(&v25, &v23);
      if (result)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
        v19 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v19;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(__int128 *a1, __int128 *a2, __int128 *a3, int *a4, int *a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, a2, a3, a6);
  v12 = *a6;
  v35 = *a4;
  v36 = a4[4];
  v33 = *a3;
  v34 = *(a3 + 4);
  if (v12(&v35, &v33))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *(a3 + 4);
    *(a3 + 4) = *(a4 + 1);
    *(a4 + 1) = v14;
    v15 = *a6;
    v35 = *a3;
    v36 = *(a3 + 4);
    v33 = *a2;
    v34 = *(a2 + 4);
    if (v15(&v35, &v33))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v17;
      v18 = *a6;
      v35 = *a2;
      v36 = *(a2 + 4);
      v33 = *a1;
      v34 = *(a1 + 4);
      if (v18(&v35, &v33))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
        v20 = *(a1 + 4);
        *(a1 + 4) = *(a2 + 4);
        *(a2 + 4) = v20;
      }
    }
  }

  v21 = *a6;
  v35 = *a5;
  v36 = a5[4];
  v33 = *a4;
  v34 = a4[4];
  if (v21(&v35, &v33))
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    v24 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v24;
    v25 = *a6;
    v35 = *a4;
    v36 = a4[4];
    v33 = *a3;
    v34 = *(a3 + 4);
    if (v25(&v35, &v33))
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      v27 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 1);
      *(a4 + 1) = v27;
      v28 = *a6;
      v35 = *a3;
      v36 = *(a3 + 4);
      v33 = *a2;
      v34 = *(a2 + 4);
      if (v28(&v35, &v33))
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        v30 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v30;
        v31 = *a6;
        v35 = *a2;
        v36 = *(a2 + 4);
        v33 = *a1;
        v34 = *(a1 + 4);
        if (v31(&v35, &v33))
        {
          v32 = *a1;
          *a1 = *a2;
          *a2 = v32;
          result = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*>(int *a1, int *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 5), (a2 - 5), a3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 5), (a1 + 10), a3);
        v24 = *a3;
        *v37 = *(a2 - 5);
        *&v37[16] = *(a2 - 1);
        v35 = *(a1 + 10);
        v36 = a1[14];
        if (v24(v37, &v35))
        {
          v25 = a1[10];
          a1[10] = *(a2 - 5);
          *(a2 - 5) = v25;
          v26 = *(a1 + 11);
          *(a1 + 11) = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a3;
          *v37 = *(a1 + 10);
          *&v37[16] = a1[14];
          v35 = *(a1 + 5);
          v36 = a1[9];
          if (v27(v37, &v35))
          {
            v28 = a1[5];
            a1[5] = a1[10];
            a1[10] = v28;
            v29 = *(a1 + 6);
            *(a1 + 6) = *(a1 + 11);
            *(a1 + 11) = v29;
            v30 = *a3;
            *v37 = *(a1 + 5);
            *&v37[16] = a1[9];
            v35 = *a1;
            v36 = a1[4];
            if (v30(v37, &v35))
            {
              v31 = *a1;
              *a1 = a1[5];
              a1[5] = v31;
              v32 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 6);
              *(a1 + 6) = v32;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 5), (a1 + 10), a1 + 15, a2 - 5, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    *v37 = *(a2 - 5);
    *&v37[16] = *(a2 - 1);
    v35 = *a1;
    v36 = a1[4];
    if (v7(v37, &v35))
    {
      v8 = *a1;
      *a1 = *(a2 - 5);
      *(a2 - 5) = v8;
      v9 = *(a1 + 1);
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_11:
  v10 = a1 + 10;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::tuple<float,_Geometry2D_rect2D_>,std::tuple<float,_Geometry2D_rect2D_>),std::tuple<float,_Geometry2D_rect2D_>*,0>(a1, (a1 + 5), (a1 + 10), a3);
  v11 = a1 + 15;
  if (a1 + 15 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *a3;
    *v37 = *v11;
    *&v37[16] = v11[4];
    v15 = *v10;
    v36 = v10[4];
    v35 = v15;
    if (v14(v37, &v35))
    {
      v16 = *v11;
      v34 = *(v11 + 1);
      v17 = v12;
      while (1)
      {
        v18 = v17;
        v19 = a1 + v17;
        *(v19 + 60) = *(v19 + 40);
        *(v19 + 64) = *(v19 + 44);
        if (v18 == -40)
        {
          break;
        }

        v20 = *a3;
        *v37 = v16;
        *&v37[4] = v34;
        v35 = *(v19 + 20);
        v36 = *(v19 + 36);
        v21 = v20(v37, &v35);
        v17 = v18 - 20;
        if ((v21 & 1) == 0)
        {
          v22 = (a1 + v17 + 60);
          v23 = (a1 + v18 + 44);
          goto LABEL_19;
        }
      }

      v23 = (v19 + 44);
      v22 = a1;
LABEL_19:
      *v22 = v16;
      *v23 = v34;
      if (++v13 == 8)
      {
        return v11 + 5 == a2;
      }
    }

    v10 = v11;
    v12 += 20;
    v11 += 5;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void *vision::mod::ImageAnalyzer_PostProcessor::process(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>((a1 + 12), &v11, a1);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 80);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = (*(*v7 + 48))(v7, a1 + 3, a2, a3);
  if ((v8 & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return a1;
}

uint64_t vision::mod::ImageAnalyzer::getSceneLabelsConfidences(vision::mod::ImageAnalyzer *this, float a2, uint64_t a3)
{
  v3 = a3;
  v4 = this;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  v35 = 0u;
  v36 = 0u;
  v37 = 1065353216;
  LODWORD(v43) = 2;
  __p = &v43;
  v5 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a3 + 864), 2u);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(&v35, vcvtps_u32_f32((0xAAAAAAAAAAAAAAABLL * ((v5[4] - v5[3]) >> 3)) / 1.0));
  LODWORD(v43) = 2;
  __p = &v43;
  if (*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v3 + 824), 2u) + 20) != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (*(v3 + 384) == 1)
  {
    v30 = __cxa_allocate_exception(8uLL);
    *v30 = 8575;
    __cxa_throw(v30, MEMORY[0x1E69E54B0], 0);
  }

  v39 = 2;
  *&v38 = &v39;
  v6 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v3 + 784), 2u);
  vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&__p, (v6 + 3), 0);
  vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v43, &__p);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&__p);
  __p = 0;
  v41 = 0;
  v42 = 0;
  v34 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>((v3 + 744), 2u);
  if (v34)
  {
    v39 = 2;
    *&v38 = &v39;
    v7 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,vision::mod::ImageAnalyzer_PostProcessor>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v3 + 744), 2u);
    vision::mod::ImageAnalyzer_PostProcessor::process(v7 + 3, &v43, &__p);
  }

  DisallowedLabels = vision::mod::ImageAnalyzer::getDisallowedLabels(v3, 2u);
  v9 = v43;
  if (((v44 - v43) >> 2) >= 1)
  {
    v31 = v4;
    v32 = DisallowedLabels;
    v10 = 0;
    v11 = DisallowedLabels[3];
    v33 = v3;
    do
    {
      v39 = 2;
      *&v38 = &v39;
      v12 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((v3 + 864), 2u)[3];
      v13 = (v12 + 24 * v10);
      if (!v11 || !std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(DisallowedLabels, (v12 + 24 * v10)))
      {
        p_p = &__p;
        if (!v34)
        {
          p_p = &v43;
        }

        v15 = *(*p_p + v10);
        v38 = *(v3 + 1008);
        v16 = std::__string_hash<char>::operator()[abi:ne200100](v13);
        v17 = v16;
        v18 = *(&v35 + 1);
        if (!*(&v35 + 1))
        {
          goto LABEL_27;
        }

        v19 = v11;
        v20 = vcnt_s8(*(&v35 + 8));
        v20.i16[0] = vaddlv_u8(v20);
        v21 = v20.u32[0];
        if (v20.u32[0] > 1uLL)
        {
          v22 = v16;
          if (v16 >= *(&v35 + 1))
          {
            v22 = v16 % *(&v35 + 1);
          }
        }

        else
        {
          v22 = (*(&v35 + 1) - 1) & v16;
        }

        v23 = *(v35 + 8 * v22);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_27:
          operator new();
        }

        while (1)
        {
          v25 = v24[1];
          if (v25 == v17)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v24 + 2, v13))
            {
              DisallowedLabels = v32;
              v3 = v33;
              v11 = v19;
              *(v24 + 10) = v15;
              *(v24 + 44) = v38;
              break;
            }
          }

          else
          {
            if (v21 > 1)
            {
              if (v25 >= v18)
              {
                v25 %= v18;
              }
            }

            else
            {
              v25 &= v18 - 1;
            }

            if (v25 != v22)
            {
              goto LABEL_27;
            }
          }

          v24 = *v24;
          if (!v24)
          {
            goto LABEL_27;
          }
        }
      }

      ++v10;
      v9 = v43;
    }

    while (v10 < ((v44 - v43) >> 2));
    v4 = v31;
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
    v9 = v43;
  }

  if (v9)
  {
    v44 = v9;
    operator delete(v9);
  }

  for (i = v36; i; i = *i)
  {
    v27 = *(i + 10);
    __p = i + 2;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, i + 2) + 10) = v27;
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>>>::~__hash_table(&v35);
}

void sub_1A5EC7B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::tuple<float,_Geometry2D_rect2D_>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t vision::mod::ImageAnalyzer::getSlidersAdjustments(vision::mod::ImageAnalyzer *this, void *a2)
{
  LODWORD(v31[0]) = 256;
  v28[0] = v31;
  result = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(a2 + 103, 0x100u);
  if ((*(result + 20) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  v5 = a2[90];
  if (!v5)
  {
    return result;
  }

  do
  {
    v6 = *(v5 + 4);
    if ((v6 & 0xFFFFFF00) != 0x100)
    {
      goto LABEL_41;
    }

    v7 = a2[99];
    if (!*&v7)
    {
      goto LABEL_43;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = *(v5 + 4);
      if (*&v7 <= v6)
      {
        v9 = v6 % v7.i32[0];
      }
    }

    else
    {
      v9 = (v7.i32[0] + 511) & v6;
    }

    v10 = *(a2[98] + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_43:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_43;
      }

LABEL_19:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    if (*(v11 + 4) != v6)
    {
      goto LABEL_19;
    }

    v13 = *(v11 + 19);
    v31[7] = *(v11 + 17);
    v31[8] = v13;
    v31[9] = *(v11 + 21);
    v32 = v11[23];
    v14 = *(v11 + 11);
    v31[3] = *(v11 + 9);
    v31[4] = v14;
    v15 = *(v11 + 15);
    v31[5] = *(v11 + 13);
    v31[6] = v15;
    v16 = *(v11 + 5);
    v31[0] = *(v11 + 3);
    v31[1] = v16;
    v31[2] = *(v11 + 7);
    vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(v28, v31, 1);
    vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v29, v28);
    v17 = std::__string_hash<char>::operator()[abi:ne200100]((v5 + 3));
    v18 = v17;
    v19 = *(this + 8);
    if (!*&v19)
    {
      goto LABEL_37;
    }

    v20 = vcnt_s8(v19);
    v20.i16[0] = vaddlv_u8(v20);
    v21 = v20.u32[0];
    if (v20.u32[0] > 1uLL)
    {
      v22 = v17;
      if (v17 >= *&v19)
      {
        v22 = v17 % *&v19;
      }
    }

    else
    {
      v22 = (*&v19 - 1) & v17;
    }

    v23 = *(*this + 8 * v22);
    if (!v23 || (v24 = *v23) == 0)
    {
LABEL_37:
      operator new();
    }

    while (2)
    {
      v25 = v24[1];
      if (v25 != v18)
      {
        if (v21 > 1)
        {
          if (v25 >= *&v19)
          {
            v25 %= *&v19;
          }
        }

        else
        {
          v25 &= *&v19 - 1;
        }

        if (v25 != v22)
        {
          goto LABEL_37;
        }

LABEL_36:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v24 + 2, v5 + 3))
    {
      goto LABEL_36;
    }

    v26 = v24[5];
    if (v26)
    {
      v24[6] = v26;
      operator delete(v26);
      v24[5] = 0;
      v24[6] = 0;
      v24[7] = 0;
    }

    *(v24 + 5) = v29;
    v24[7] = v30;
    v30 = 0;
    v29 = 0uLL;
    result = vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(v28);
LABEL_41:
    v5 = *v5;
  }

  while (v5);
  return result;
}

void sub_1A5EC8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>>>>::~unique_ptr[abi:ne200100](v35 - 120);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&a10);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v34);
  _Unwind_Resume(a1);
}

void sub_1A5EC91A4(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x1AC556B00](v3, 0x10F1C40885E7AD1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1A5EC912CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EC93FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5EC98CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5EC9EC0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id _unavailableTensorKeyError(NSString *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VNDetectionprintTensor '%@' is not available", v1];
  v3 = [VNError errorForInvalidArgumentWithLocalizedDescription:v2];

  return v3;
}

void sub_1A5ECA45C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void vision::mod::FaceBoxPoseAligner<signed char>::loadERTModel(uint64_t *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNumCascadeStages");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNumTrees");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNumPredictions");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  memset(&v51, 0, sizeof(v51));
  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNodesThresholds");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  memset(&v50, 0, sizeof(v50));
  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNodesPredictions");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v47, "ERTFaceBox::ERTNodesFeatureIDs");
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, &v47);
  if (!v5 || *(v5 + 10) != 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Error: ", 7);
    if (v49 >= 0)
    {
      v43 = &v47;
    }

    else
    {
      v43 = v47;
    }

    if (v49 >= 0)
    {
      v44 = HIBYTE(v49);
    }

    else
    {
      v44 = v48;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v43, v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " failed to load from ERT model file!", 36);
    exception = __cxa_allocate_exception(0x20uLL);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v52, &__p);
  }

  v7 = v5[6];
  v6 = v5[7];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[8];
  if (v8 >= 8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v8 >> 3);
  }

  memcpy(0, v7, v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  memset(v52, 0, sizeof(v52));
  std::string::basic_string[abi:ne200100]<0>(&__p, "ERTFaceBox::ERTNodesLeafFlags");
  if (SHIBYTE(v54[0]) < 0)
  {
    operator delete(__p);
  }

  v9 = a1[1] * *a1;
  if (!v9)
  {
    syslog(5, "Loading ERT model failed - unexpected zero number of trees");
    goto LABEL_58;
  }

  v10 = v52[1] - v52[0];
  v11 = (v52[1] - v52[0]) / v9;
  a1[2] = v11;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (v9 <= v10)
  {
    std::vector<vision::mod::ERTTreeNode>::__vallocate[abi:ne200100](&v47, v11);
  }

  v12 = a1 + 11;
  v13 = a1[11];
  v14 = a1[12];
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
  v16 = v9 - v15;
  if (v9 > v15)
  {
    v17 = a1[13];
    v46 = a1;
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v14) >> 3) < v16)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3);
        v19 = 0x5555555555555556 * ((v17 - v13) >> 3);
        if (v19 <= v9)
        {
          v19 = v9;
        }

        if (v18 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v19;
        }

        v54[2] = a1 + 11;
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v21 = &v14[3 * v16];
    v25 = v47;
    v26 = 0xAAAAAAAAAAAAAAABLL * (-v47 >> 4);
    v27 = 24 * v9 - 24 * v15;
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<vision::mod::ERTTreeNode>::__init_with_size[abi:ne200100]<vision::mod::ERTTreeNode*,vision::mod::ERTTreeNode*>(v14, v25, 0, v26);
      v14 += 3;
      v27 -= 24;
    }

    while (v27);
    a1 = v46;
LABEL_48:
    a1[12] = v21;
    goto LABEL_49;
  }

  if (v9 < v15)
  {
    v21 = (v13 + 24 * v9);
    if (v14 != v21)
    {
      v22 = a1[12];
      do
      {
        v24 = *(v22 - 3);
        v22 -= 3;
        v23 = v24;
        if (v24)
        {
          *(v14 - 2) = v23;
          operator delete(v23);
        }

        v14 = v22;
      }

      while (v22 != v21);
    }

    goto LABEL_48;
  }

LABEL_49:
  if (v47)
  {
    operator delete(v47);
  }

  v28 = 0;
  v29 = a1[2];
  begin = v51.__begin_;
  v31 = v52[0];
  v32 = v50.__begin_;
  do
  {
    if (v29)
    {
      v33 = 0;
      v34 = v29 * v28;
      v35 = *(*v12 + 24 * v28);
      v36 = (v35 + 16);
      v37 = v32;
      do
      {
        v38 = v35 + 48 * v33;
        *v38 = begin[v34 + v33];
        *(v38 + 8) = *(8 * (v34 + v33));
        *(v38 + 44) = v31[v34 + v33] != 0;
        v39 = v37;
        v40 = v36;
        for (i = SizeFromBytesHelper; i; --i)
        {
          v42 = *v39++;
          *v40++ = v42;
        }

        ++v33;
        v36 += 12;
        v37 += SizeFromBytesHelper;
      }

      while (v33 != v29);
    }

    ++v28;
    v32 += v29 * SizeFromBytesHelper;
  }

  while (v28 != v9);
LABEL_58:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v50.__begin_)
  {
    operator delete(v50.__begin_);
  }

  if (v51.__begin_)
  {
    operator delete(v51.__begin_);
  }
}

void vision::mod::FaceBoxPoseAligner<signed char>::loadGlobalShifts(void *a1, std::vector<unsigned int> *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERTFaceBox::ERTGlobalShift");
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void vision::mod::FaceBoxPoseAligner<signed char>::loadXYPairs(uint64_t a1, void *a2, std::vector<unsigned int> *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERTFaceBox::ERTNumXYPairs");
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERTFaceBox::ERTXYPairs");
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void vision::mod::FaceBoxPoseAligner<signed char>::loadDefaultPixelValue(void *a1, _BYTE *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ERTFaceBox::ERTDefaultPixelValue");
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v8;
  if (v9 == v8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR: ERTDefaultPixelValue failed to load from ERT model file!");
  }

  *a2 = *v8;
  v9 = v4;
  operator delete(v4);
}

void vision::mod::FaceBoxPoseAligner<signed char>::loadDefaultFeatureValue(void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERTFaceBox::ERTDefaultFeatureValue");
  v2 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, __p);
  if (v2 && *(v2 + 10) == 1)
  {
    v3 = v2[7];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = v2[8];
    if (v4)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "ERROR: ERTDefaultFeatureValue failed to load from ERT model file!");
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Error: ", 7);
  if ((v10 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " failed to load from ERT model file!", 36);
  v7 = __cxa_allocate_exception(0x20uLL);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v11, &v12);
}

void std::vector<vision::mod::ERTTree>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

void *vision::mod::anonymous namespace::BoxAlignerException::BoxAlignerException(void *a1, __int128 *a2)
{
  *a1 = &unk_1F1973C28;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void vision::mod::anonymous namespace::BoxAlignerException::~BoxAlignerException(std::exception *this)
{
  this->__vftable = &unk_1F1973C28;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F1973C28;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::anonymous namespace::BoxAlignerException::what(vision::mod::_anonymous_namespace_::BoxAlignerException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void vision::mod::anonymous namespace::readTypedVectorFromBytesHelper<unsigned char>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, a1);
  if (!v5 || *(v5 + 10) != 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Error: ", 7);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " failed to load from ERT model file!", 36);
    exception = __cxa_allocate_exception(0x20uLL);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v15, v16);
  }

  v7 = v5[6];
  v6 = v5[7];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[8];
  v9 = *a3;
  v10 = *(a3 + 8) - *a3;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      *(a3 + 8) = &v9[v8];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, v8 - v10);
    v9 = *a3;
  }

  memcpy(v9, v7, v8);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}