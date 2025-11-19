_DWORD *Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v40 = 0uLL;
  *&v41 = 0;
  v10 = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::size(a1, &v40, 0, a4, a5, a6, a7, a8, v37);
  v11 = malloc_type_malloc(v10, 0x10000403E1C8BA9uLL);
  if (!v11)
  {
    Security::UnixError::throwMe(0xC);
  }

  v12 = v11;
  v13 = *(a1 + 16);
  *v11 = -1072898310;
  v11[1] = bswap32(v10);
  v11[2] = bswap32(v13);
  v14 = *a1;
  if (*a1 != a1 + 8)
  {
    v15 = 0;
    v16 = 8 * v9 + 12;
    do
    {
      v17 = &v12[2 * v15 + 3];
      *v17 = bswap32(*(v14 + 8));
      v17[1] = bswap32(v16);
      memcpy(v12 + v16, v14[5], bswap32(*(v14[5] + 4)));
      v18 = v14[1];
      v19 = v14;
      if (v18)
      {
        do
        {
          v20 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v20 = v19[2];
          v21 = *v20 == v19;
          v19 = v20;
        }

        while (!v21);
      }

      v16 += bswap32(*(v14[5] + 4));
      ++v15;
      v14 = v20;
    }

    while (v20 != (a1 + 8));
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47[7] = v22;
  v47[8] = v22;
  v47[5] = v22;
  v47[6] = v22;
  v47[3] = v22;
  v47[4] = v22;
  v47[1] = v22;
  v47[2] = v22;
  v47[0] = v22;
  v45 = v22;
  v46 = v22;
  *__src = v22;
  *__p = v22;
  v41 = v22;
  v42 = v22;
  v40 = v22;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Maker ", 6);
  v23 = MEMORY[0x18CFD9640](&v40, a1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " assembles ", 11);
  v25 = MEMORY[0x18CFD9670](v24, *(a1 + 16));
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " blob(s) into ", 14);
  v27 = MEMORY[0x18CFD9640](v26, v12);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " (size=", 7);
  v29 = MEMORY[0x18CFD9660](v28, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
  v30 = secLogObjForScope("superblob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if ((BYTE8(v46) & 0x10) != 0)
    {
      v34 = v46;
      if (v46 < __src[1])
      {
        *&v46 = __src[1];
        v34 = __src[1];
      }

      v35 = __src[0];
    }

    else
    {
      if ((BYTE8(v46) & 8) == 0)
      {
        v33 = 0;
        v39 = 0;
LABEL_27:
        *(&__dst + v33) = 0;
        p_dst = &__dst;
        if (v39 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v50 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v39 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_11;
      }

      v35 = *(&v41 + 1);
      v34 = *(&v42 + 1);
    }

    v33 = v34 - v35;
    if ((v34 - v35) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    v39 = v34 - v35;
    if (v33)
    {
      memmove(&__dst, v35, v33);
    }

    goto LABEL_27;
  }

LABEL_11:
  *&v40 = *MEMORY[0x1E69E54E8];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v40 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v40 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v41);
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v47);
  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::size(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a1;
  if (*a1 == a1 + 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v9[1];
      v12 = v9;
      if (v11)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v10 += bswap32(*(v9[5] + 4));
      v9 = v13;
    }

    while (v13 != a1 + 1);
  }

  v15 = a2[1];
  if (*a2 != v15)
  {
    v16 = *a2;
    do
    {
      v17 = *v16++;
      v10 += v17;
    }

    while (v16 != v15);
  }

  v18 = a1[2] + v15 - *a2;
  if (a3)
  {
    v21 = &a9;
    do
    {
      ++v18;
      v10 += a3;
      v19 = v21;
      v21 += 8;
      a3 = *v19;
    }

    while (*v19);
  }

  return v10 + 8 * v18 + 12;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x18CFD9680](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_18891F054(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x18CFD9610](v20, a1);
  if (LOBYTE(v20[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2].__locale_) = v16;
      memset(__b, v9, v16);
      *(&__b[0].__locale_ + v16) = 0;
      if (SHIBYTE(__b[2].__locale_) >= 0)
      {
        locale = __b;
      }

      else
      {
        locale = __b[0].__locale_;
      }

      v18 = (*(*v7 + 96))(v7, locale, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x18CFD9620](v20);
  return a1;
}

void sub_18891F354(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD9620](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18891F328);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](a1 + 112);
  return a1;
}

void Security::CodeSigning::DYLDCacheRep::Writer::addDiscretionary(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(*(v4 + 80) + 20);
  v6 = bswap32(v5);
  if (*(v4 + 96))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = 24 * (v7 + 1);
  *(a2 + 160) = v8;
  v9 = malloc_type_realloc(*(a2 + 152), v8, 0x1000040504FFAC1uLL);
  *(a2 + 152) = v9;
  if (!v9)
  {
    Security::UnixError::throwMe(0xC);
  }

  bzero(v9, *(a2 + 160));
  if (v7)
  {
    v10 = *(a1 + 128);
    v11 = *(v10 + 72);
    v12 = *(v10 + 96);
    v13 = bswap32(*(*(v10 + 80) + 16));
    if (!*(v10 + 96))
    {
      v13 = *(*(v10 + 80) + 16);
    }

    v14 = (*(a2 + 152) + 8);
    do
    {
      if (v13 + 32 > v11)
      {
        Security::UnixError::throwMe(8);
      }

      v15 = *(v10 + 64) + v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = bswap64(*v15);
      if (v12)
      {
        v16 = v18;
      }

      *v14 = bswap64(v16);
      v19 = *(v15 + 16);
      v20 = bswap64(v19);
      if (v12)
      {
        v19 = v20;
      }

      v21 = bswap32(v19 >> 12);
      v22 = bswap64(v17);
      if (v12)
      {
        v17 = v22;
      }

      *(v14 - 2) = bswap32(v17 >> 12);
      *(v14 - 1) = v21;
      v23 = *(v15 + 24);
      if (v12)
      {
        LOBYTE(v23) = HIBYTE(v23);
      }

      if ((v23 & 4) != 0)
      {
        *(a2 + 168) = v19;
        *(a2 + 176) = v17;
        *(a2 + 184) = 0;
      }

      v14 += 3;
      v13 += 32;
      --v7;
    }

    while (v7);
  }
}

void Security::CodeSigning::DYLDCacheRep::Writer::~Writer(Security::CodeSigning::DYLDCacheRep::Writer *this)
{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 104);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 104);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

uint64_t Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v3[5]);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(a1 + 8));
  return a1;
}

void *Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}

uint64_t Security::CodeSigning::DYLDCacheRep::pageSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 33554444 || *a3 == 16777228)
  {
    return 0x4000;
  }

  else
  {
    return 4096;
  }
}

_BYTE *Security::CodeSigning::DYLDCacheRep::format@<X0>(Security::CodeSigning::DYLDCacheRep *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = NXGetArchInfoFromCpuType(**(this + 11), *(*(this + 11) + 4) & 0xFFFFFF);
  if (v4 && (name = v4->name) != 0)
  {
    v18 = -1431655766;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    *__str = v6;
    v13 = v6;
    v7 = *(*(this + 10) + 32);
    v8 = bswap64(v7);
    if (*(this + 96))
    {
      v7 = v8;
    }

    snprintf(__str, 0x64uLL, "OS X Shared Library Cache (%s @ 0x%llx)", name, v7);
    result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return std::string::basic_string[abi:ne200100]<0>(a2, "OS X Shared Library Cache (unknown type)");
  }

  return result;
}

Security::CodeSigning::EmbeddedSignatureBlob *Security::CodeSigning::DYLDCacheRep::component(Security::CodeSigning::DYLDCacheRep *this, Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  result = *(this + 15);
  if (result)
  {
    return Security::CodeSigning::EmbeddedSignatureBlob::component(result, a2, a3);
  }

  return result;
}

void Security::CodeSigning::DYLDCacheRep::~DYLDCacheRep(void **this)
{
  *this = &unk_1EFA8AFC0;
  DYLDCache::~DYLDCache((this + 6));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AFC0;
  DYLDCache::~DYLDCache((this + 6));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::CodeSigning::SingleDiskRep::~SingleDiskRep(void **this)
{
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

uint64_t Security::CodeSigning::DirScanner::DirScanner(uint64_t a1, const std::string *a2)
{
  *(a1 + 1080) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::string::operator=(a1, a2);
  if (*(a1 + 24))
  {
    Security::MacOSError::throwMe(0xFFFEF7A9);
  }

  *__error() = 0;
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = opendir(v3);
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    if (*__error() != 2)
    {
      v7 = __error();
      Security::UnixError::throwMe(*v7);
    }

    v5 = 0;
  }

  *(a1 + 1080) = v5;
  return a1;
}

void sub_18891FBD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::DirScanner::~DirScanner(Security::CodeSigning::DirScanner *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    closedir(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

dirent *Security::CodeSigning::DirScanner::getNext(Security::CodeSigning::DirScanner *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v2 = readdir_r(*(this + 3), (this + 32), &v4);
    if (v2)
    {
      Security::UnixError::throwMe(v2);
    }

    result = v4;
  }

  while (v4 && v4->d_name[0] == 46 && (!v4->d_name[1] || v4->d_name[1] == 46 && !v4->d_name[2]));
  return result;
}

BOOL Security::CodeSigning::DirScanner::isRegularFile(Security::CodeSigning::DirScanner *this, dirent *a2)
{
  if (a2->d_type)
  {
    return a2->d_type == 8;
  }

  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v17.st_blksize = v5;
  *v17.st_qspare = v5;
  v17.st_birthtimespec = v5;
  *&v17.st_size = v5;
  v17.st_mtimespec = v5;
  v17.st_ctimespec = v5;
  *&v17.st_uid = v5;
  v17.st_atimespec = v5;
  *&v17.st_dev = v5;
  if (*(this + 23) >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  memset(&v14, 170, sizeof(v14));
  v7 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(this + 23) >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = *this;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 47;
  v9 = strlen(a2->d_name);
  v10 = std::string::append(&v14, a2->d_name, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = stat(v12, &v17);
  if (v13)
  {
    Security::MacOSError::throwMe(v13);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return (v17.st_mode & 0xF000) == 0x8000;
}

void sub_18891FE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::DirValidator::~DirValidator(uint64_t **this)
{
  v3 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 64);
        if (v5)
        {
          _Block_release(v5);
        }

        Security::CodeSigning::ResourceBuilder::Rule::~Rule(v4);
        MEMORY[0x18CFD9760]();
        v2 = this[1];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void Security::CodeSigning::DirValidator::validate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __b[129] = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = 0;
  v56 = &v57;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  __b[0] = v6;
  __b[1] = 0;
  v7 = fts_open(__b, 21, 0);
  v51 = a3;
  if (!v7)
  {
    v50 = __error();
    Security::UnixError::throwMe(*v50);
  }

LABEL_5:
  while (1)
  {
    v8 = fts_read(v7);
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    v11 = &v8->fts_path[v10];
    v12 = v8->fts_statp->st_mode & 0x49;
    fts_info = v8->fts_info;
    v14 = secLogObjForScope("dirval");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (fts_info > 7)
    {
      if (fts_info == 12)
      {
        if (v15)
        {
          fts_path = v9->fts_path;
          LODWORD(__b[0]) = 136315138;
          *(__b + 4) = fts_path;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "symlink %s", __b, 0xCu);
        }

        memset(__b, 170, 0x400uLL);
        v27 = readlink(v9->fts_accpath, __b, 0x3FFuLL);
        if (v27 < 0)
        {
          v46 = __error();
          Security::UnixError::throwMe(*v46);
        }

        *(__b + v27) = 0;
        v19 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 4, v12 != 0, __b);
      }

      else
      {
        if (fts_info != 8)
        {
LABEL_74:
          if (v15)
          {
            v47 = v9->fts_info;
            fts_errno = v9->fts_errno;
            v49 = v9->fts_path;
            LODWORD(__b[0]) = 67109634;
            HIDWORD(__b[0]) = v47;
            LOWORD(__b[1]) = 1024;
            *(&__b[1] + 2) = fts_errno;
            HIWORD(__b[1]) = 2080;
            __b[2] = v49;
            _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "type %d (errno %d): %s", __b, 0x18u);
          }

          Security::MacOSError::throwMe(v51);
        }

        if (v15)
        {
          v35 = v9->fts_path;
          LODWORD(__b[0]) = 136315138;
          *(__b + 4) = v35;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "file %s", __b, 0xCu);
        }

        v19 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 1, v12 != 0, 0);
      }

      v22 = v19;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_38:
      if (v9->fts_info != 8 || (*(a2 + 23) >= 0 ? (v28 = a2) : (v28 = *a2), !Security::CodeSigning::pathFileSystemUsesXattrFiles(v28, v20)))
      {
LABEL_72:
        Security::MacOSError::throwMe(v51);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v9->fts_path);
      IsValidXattrFile = Security::CodeSigning::pathIsValidXattrFile(__p, "csutilities");
      v30 = IsValidXattrFile;
      if (v55 < 0)
      {
        operator delete(__p[0]);
        if ((v30 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (!IsValidXattrFile)
      {
        goto LABEL_72;
      }

      v31 = secLogObjForScope("dirval");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v32;
        v17 = v31;
        v18 = "skipping file due to xattr: %s";
LABEL_49:
        _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, v18, __b, 0xCu);
      }
    }

    else if (fts_info == 1)
    {
      if (v15)
      {
        v33 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v33;
        _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "entering %s", __b, 0xCu);
      }

      if (v9->fts_level)
      {
        v21 = Security::CodeSigning::DirValidator::match(a1, v11 + 1, 2, v12 != 0, 0);
        v22 = v21;
        if (v21)
        {
          v23 = *(&v21[1].re_magic + 1);
          if ((v23 & 0x20) != 0)
          {
            goto LABEL_25;
          }
        }

        fts_set(v7, v9, 4);
        if (!v22)
        {
          goto LABEL_38;
        }

LABEL_24:
        v23 = *(&v22[1].re_magic + 1);
LABEL_25:
        if ((v23 & 0x10) != 0)
        {
          for (i = v57; i; i = *v25)
          {
            while (1)
            {
              v25 = i;
              v26 = i[4];
              if (v22 < v26)
              {
                break;
              }

              if (v26 >= v22)
              {
                goto LABEL_5;
              }

              i = v25[1];
              if (!i)
              {
                goto LABEL_50;
              }
            }
          }

LABEL_50:
          operator new();
        }
      }
    }

    else
    {
      if (fts_info != 6)
      {
        goto LABEL_74;
      }

      if (v15)
      {
        v16 = v9->fts_path;
        LODWORD(__b[0]) = 136315138;
        *(__b + 4) = v16;
        v17 = v14;
        v18 = "leaving %s";
        goto LABEL_49;
      }
    }
  }

  if (v58 != *(a1 + 24))
  {
    __b[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v37 = 0xAAAAAAAAAAAAAAAALL;
    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[28] = v37;
    *&__b[30] = v37;
    *&__b[24] = v37;
    *&__b[26] = v37;
    *&__b[20] = v37;
    *&__b[22] = v37;
    *&__b[16] = v37;
    *&__b[18] = v37;
    *&__b[12] = v37;
    *&__b[14] = v37;
    *&__b[8] = v37;
    *&__b[10] = v37;
    *&__b[6] = v37;
    *&__b[2] = v37;
    *&__b[4] = v37;
    *__b = v37;
    std::ostringstream::basic_ostringstream[abi:ne200100](__b);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__b, "matched ", 8);
    v38 = MEMORY[0x18CFD9670](__b, v58);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " of ", 4);
    v40 = MEMORY[0x18CFD9650](v39, *(a1 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " required rules", 15);
    v41 = secLogObjForScope("dirval");
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_71;
    }

    if ((__b[13] & 0x10) != 0)
    {
      v43 = __b[12];
      if (__b[12] < __b[7])
      {
        __b[12] = __b[7];
        v43 = __b[7];
      }

      v44 = __b[6];
    }

    else
    {
      if ((__b[13] & 8) == 0)
      {
        v42 = 0;
        v53 = 0;
LABEL_67:
        *(&__dst + v42) = 0;
        p_dst = &__dst;
        if (v53 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v60 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v41, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v53 < 0)
        {
          operator delete(__dst);
        }

LABEL_71:
        Security::MacOSError::throwMe(v51);
      }

      v44 = __b[3];
      v43 = __b[5];
    }

    v42 = v43 - v44;
    if ((v43 - v44) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v53 = v43 - v44;
    if (v42)
    {
      memmove(&__dst, v44, v42);
    }

    goto LABEL_67;
  }

  fts_close(v7);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v57);
  v36 = *MEMORY[0x1E69E9840];
}

void sub_188920580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  fts_close(v42);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a24);
  _Unwind_Resume(a1);
}

const regex_t *Security::CodeSigning::DirValidator::match(const regex_t ***this, char *a2, int a3, char a4, char *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this != this[1])
  {
    while (1)
    {
      v11 = *v5;
      v12 = *(&(*v5)[1].re_magic + 1);
      if ((v12 & a3) != 0 && ((v12 & 8) == 0 || (a4 & 1) == 0))
      {
        if (Security::CodeSigning::ResourceBuilder::Rule::match(*v5, a2))
        {
          break;
        }
      }

LABEL_29:
      if (++v5 == this[1])
      {
        goto LABEL_35;
      }
    }

    if (!a5)
    {
      goto LABEL_36;
    }

    v14 = *&v11[2].re_magic;
    if (!v14)
    {
      Security::Syslog::notice("code signing internal problem: !mTargetBlock", v13);
      Security::MacOSError::throwMe(0xFFFEFA18);
    }

    memset(v28, 170, sizeof(v28));
    std::string::basic_string[abi:ne200100]<0>(&v29, a2);
    std::string::basic_string[abi:ne200100]<0>(__p, a5);
    (*(v14 + 16))(v28, v14, &v29, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.re_endp) < 0)
    {
      operator delete(*&v29.re_magic);
    }

    v15 = HIBYTE(v28[2]);
    if (SHIBYTE(v28[2]) < 0)
    {
      v15 = v28[1];
    }

    if (v15)
    {
      v16 = secLogObjForScope("dirval");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        if (SHIBYTE(v28[2]) >= 0)
        {
          v23 = v28;
        }

        else
        {
          v23 = v28[0];
        }

        v29.re_magic = 136315650;
        *(&v29.re_magic + 1) = a2;
        WORD2(v29.re_nsub) = 2080;
        *(&v29.re_nsub + 6) = a5;
        HIWORD(v29.re_endp) = 2080;
        v29.re_g = v23;
        _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%s: match target %s against %s", &v29, 0x20u);
      }

      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v29.re_magic = v17;
      *&v29.re_endp = v17;
      if (SHIBYTE(v28[2]) >= 0)
      {
        v18 = v28;
      }

      else
      {
        v18 = v28[0];
      }

      if (regcomp(&v29, v18, 5))
      {
        Security::Syslog::notice("code signing internal problem: failed to compile internal RE", v19);
        Security::MacOSError::throwMe(0xFFFEFA18);
      }

      v20 = regexec(&v29, a5, 0, 0, 0);
      MEMORY[0x18CFDB4E0](&v29);
      if (v20)
      {
        if (v20 != 1)
        {
          Security::Syslog::notice("code signing internal error: regexec failed error=%d", v21, v20);
          Security::MacOSError::throwMe(0xFFFEFA18);
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      if ((HIBYTE(v28[2]) & 0x80) == 0)
      {
LABEL_28:
        if (v22)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v22 = 1;
      if ((HIBYTE(v28[2]) & 0x80) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(v28[0]);
    goto LABEL_28;
  }

LABEL_35:
  v11 = 0;
LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1889209A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::DirValidator::Rule::Rule(uint64_t a1, __int128 *a2, int a3, const void *a4)
{
  *&Security::CodeSigning::ResourceBuilder::Rule::Rule(a1, a2, 0, a3)[2].re_magic = 0;
  if (a4)
  {
    *(a1 + 64) = _Block_copy(a4);
  }

  return a1;
}

void Security::CodeSigning::registerStapledTicketWithSystem(Security::CodeSigning *this, const __CFData *a2)
{
  if (this)
  {
    v2 = secLogObjForScope("notarization");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "Registering stapled ticket with system", v3, 2u);
    }
  }
}

const void **Security::CFRef<__CFError *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_188920B24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188920B1CLL);
}

uint64_t SecCodeSignerCreate(const __CFDictionary *a1, int a2, void *a3)
{
  if ((a2 & 0xFEFFF000) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  v6 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v8 = Security::SecCFObject::allocate(0x140, *(v6 + 408), v7);
  *(v8 + 8) = 1;
  *v8 = &unk_1EFA8B958;
  *(v8 + 16) = a2;
  *(v8 + 168) = 0;
  *(v8 + 160) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 152) = v8 + 160;
  *(v8 + 288) = 0;
  *(v8 + 296) = 0;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0;
  *(v8 + 256) = 0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  Security::SecPointerBase::SecPointerBase(&v11, v8);
  Security::CodeSigning::SecCodeSigner::parameters(v11, a1);
  v9 = Security::SecCFObject::handle(v11, 1);
  if (!a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *a3 = v9;
  Security::SecPointerBase::~SecPointerBase(&v11);
  return 0;
}

void sub_188920F74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188920F3CLL);
}

uint64_t SecCodeSignerAddSignatureWithErrors(uint64_t a1, Security::CodeSigning::SecStaticCode *a2, int a3)
{
  if ((a3 & 0xEFFFFFFF) != 0)
  {
    v3 = 4294900226;
    goto LABEL_6;
  }

  v3 = 4294900225;
  {
LABEL_6:
    Security::MacOSError::throwMe(v3);
  }

  v9 = v7;
  v10 = Security::CodeSigning::SecStaticCode::required(a2, v8);
  Security::CodeSigning::SecCodeSigner::sign(v9, v10, a3);
  return 0;
}

void *Security::CodeSigning::SecStaticCode::required(Security::CodeSigning::SecStaticCode *this, const __SecCode *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

CFDateRef Security::CodeSigning::copyCutOffDate(const __CFString *this, const __CFString *a2, CFAbsoluteTime a3)
{
  v4 = CFDateCreate(0, a3);
  v5 = CFPreferencesCopyValue(this, @"com.apple.security.syspolicy", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v5)
  {
    CFRetain(v4);
    v8 = v4;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v8 = v4;
  if (v7 == CFDateGetTypeID())
  {
    if (CFDateCompare(v4, v6, 0) <= kCFCompareEqualTo)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }
  }

  CFRetain(v8);
  CFRelease(v6);
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return v8;
}

uint64_t *Security::CodeSigning::SecCode::checkValidity(uint64_t *this, uint64_t a2)
{
  v2 = this;
  v24 = *MEMORY[0x1E69E9840];
  if (!this[2])
  {
    goto LABEL_23;
  }

  v21 = this;
  Security::CodeSigning::SecCode::checkValidity(this[2], a2);
  if ((*(v2 + 24) & 1) == 0)
  {
    (*(*v2 + 80))(v2);
    *(v2 + 24) = 1;
  }

  v4 = *(v2 + 32);
  *(v4 + 208) = a2;
  v5 = *(v2 + 16);
  if ((*(v5 + 24) & 1) == 0)
  {
    (*(*v5 + 80))(*(v2 + 16));
    *(v5 + 24) = 1;
  }

  v6 = *(v5 + 32);
  Security::CodeSigning::SecStaticCode::validateNonResourceComponents(v4);
  if ((a2 & 0x10) != 0)
  {
    v9 = *(v4 + 32);
    v10 = Security::CodeSigning::SecStaticCode::codeDirectory(v4, 1);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = &__p[8];
    (*(*v9 + 232))(v9, v10, __p, a2);
    goto LABEL_11;
  }

  if ((a2 & 0x2000) != 0)
  {
    v7 = *(v4 + 32);
    v8 = Security::CodeSigning::SecStaticCode::codeDirectory(v4, 1);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = &__p[8];
    (*(*v7 + 240))(v7, v8, __p, a2);
LABEL_11:
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*&__p[8]);
  }

  v11 = (*(**(v2 + 16) + 104))(*(v2 + 16), v2);
  if ((v11 & 1) == 0)
  {
    v12 = os_variant_allows_internal_security_policies();
    if ((v11 & 0x10000000) == 0 || !(((v11 & 0x4000000) == 0) | v12 & 1))
    {
      Security::MacOSError::throwMe(0xFFFEFA09);
    }
  }

  if (*(v2 + 24))
  {
    v14 = (v2 + 40);
    v13 = *(v2 + 40);
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_19:
    v15 = Security::CodeSigning::SecStaticCode::cdHash(v4);
    if (!CFEqual(v13, v15))
    {
      v17 = (*(**(v4 + 32) + 48))(*(v4 + 32));
      v18 = secLogObjForScope("SecCode");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(v2 + 24) & 1) == 0)
        {
          (*(*v2 + 80))(v2);
          *(v2 + 24) = 1;
        }

        v19 = *v14;
        v20 = Security::CodeSigning::SecStaticCode::cdHash(v4);
        *__p = 138412802;
        *&__p[4] = v17;
        *&__p[12] = 2112;
        *&__p[14] = v19;
        *&__p[22] = 2112;
        v23 = v20;
        _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "cdhash mismatch: %@, %@, %@", __p, 0x20u);
      }

      Security::MacOSError::throwMe(0xFFFEFA26);
    }

    goto LABEL_20;
  }

  (*(*v2 + 80))(v2);
  v14 = (v2 + 40);
  v13 = *(v2 + 40);
  *(v2 + 24) = 1;
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (*(*(v2 + 16) + 16))
  {
    Security::CodeSigning::SecStaticCode::validateRequirements(v4, kSecHostRequirementType, v6, 4294900249);
    Security::CodeSigning::SecStaticCode::validateRequirements(v6, kSecGuestRequirementType, v4, 0);
  }

  this = Security::CodeSigning::SecCode::checkValidity::_DTFrameCODESIGN_EVAL_DYNAMIC::~_DTFrameCODESIGN_EVAL_DYNAMIC(&v21);
LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_188921A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  Security::CFRef<__CFURL const*>::~CFRef(&a9);
  Security::CodeSigning::SecCode::checkValidity::_DTFrameCODESIGN_EVAL_DYNAMIC::~_DTFrameCODESIGN_EVAL_DYNAMIC(&a10);
  _Unwind_Resume(a1);
}

uint64_t Security::CodeSigning::BundleDiskRep::createRawComponents@<X0>(Security::CodeSigning::BundleDiskRep *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v13 = 0;
  do
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v4);
    if (v5)
    {
      v12 = Security::CodeSigning::BundleDiskRep::metaData(this, v5);
      if (v12)
      {
        v14 = &v13;
        v6 = std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v13);
        Security::CFRef<__CFURL const*>::operator=(v6 + 5, &v12);
      }
    }

    else
    {
      v12 = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v12);
    v7 = v13;
    v4 = ++v13;
  }

  while (v7 < 10);
  result = 4096;
  v13 = 4096;
  do
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v9 = Security::CodeSigning::CodeDirectory::canonicalSlotName(result);
    if (v9)
    {
      v12 = Security::CodeSigning::BundleDiskRep::metaData(this, v9);
      if (v12)
      {
        v14 = &v13;
        v10 = std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a2, v13);
        Security::CFRef<__CFURL const*>::operator=(v10 + 5, &v12);
      }
    }

    else
    {
      v12 = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v12);
    v11 = v13;
    result = ++v13;
  }

  while (v11 < 4100);
  return result;
}

uint64_t *std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
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

void sub_188921EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a9);
  std::__tree<std::string>::destroy(*v12);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(v11);
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer((v9 + 24));
  MEMORY[0x18CFD9760](v9, v10);
  _Unwind_Resume(a1);
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

void *Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::release_internal(uint64_t result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

void Security::CodeSigning::BundleDiskRep::Writer::flush(Security::CodeSigning::BundleDiskRep::Writer *this)
{
  __b[136] = *MEMORY[0x1E69E9840];
  (*(**(this + 12) + 48))(*(this + 12));
  memset(__b, 170, 0x440uLL);
  v2 = *(this + 3);
  if (*(v2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v2 + 32), *(v2 + 40));
  }

  else
  {
    v10 = *(v2 + 32);
  }

  Security::CodeSigning::DirScanner::DirScanner(__b, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (LOBYTE(__b[135]) == 1)
  {
    while (1)
    {
      Next = Security::CodeSigning::DirScanner::getNext(__b);
      if (!Next)
      {
        break;
      }

      if (!Security::CodeSigning::DirScanner::isRegularFile(__b, Next))
      {
        Security::MacOSError::throwMe(0xFFFEFA3ALL);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, Next->d_name);
      v4 = std::__tree<std::string>::find<std::string>(this + 176, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      if ((this + 184) == v4)
      {
        if (!__b[3] || (v5 = dirfd(__b[3]), v5 == -1) || unlinkat(v5, Next->d_name, 0) == -1)
        {
          v6 = __error();
          Security::UnixError::throwMe(*v6);
        }
      }
    }
  }

  Security::CodeSigning::DirScanner::~DirScanner(__b);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void Security::CodeSigning::BundleDiskRep::Writer::remove(Security::CodeSigning::BundleDiskRep::Writer *this)
{
  (*(**(this + 12) + 40))(*(this + 12));
  v2 = 0;
  do
  {
    Security::CodeSigning::BundleDiskRep::Writer::remove(this, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 12);

  Security::CodeSigning::BundleDiskRep::Writer::remove(this, 0x10000);
}

void Security::CodeSigning::BundleDiskRep::Writer::remove(const char **this, Security::CodeSigning::CodeDirectory *a2)
{
  v3 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
  if (v3)
  {
    Security::CodeSigning::BundleDiskRep::metaPath(&v10, this[3], v3);
    v4 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v5 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    v7 = unlink(v6);
    v8 = v7;
    if (v4 < 0)
    {
      operator delete(v5);
      if (!v8)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    if (*__error() != 2)
    {
      v9 = __error();
      Security::UnixError::throwMe(*v9);
    }
  }
}

void Security::CodeSigning::BundleDiskRep::Writer::component(Security::CodeSigning::BundleDiskRep::Writer *this, Security::CodeSigning::CodeDirectory *a2, const __CFData *a3)
{
  if (a2 == 3)
  {
    v5 = "CodeResources";
LABEL_8:
    v8 = *(this + 3);
    memset(&__str, 170, sizeof(__str));
    Security::CodeSigning::BundleDiskRep::metaPath(&__str, v8, 0);
    if ((*(v8 + 56) & 1) == 0)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (mkdir(p_str, 0x1EDu))
      {
        if (*__error() != 17)
        {
          v10 = __error();
          Security::UnixError::throwMe(*v10);
        }
      }

      else
      {
        v11 = (*(*v8 + 48))(v8);
        Security::cfStringRelease(__p, v11);
        if (v19 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &__str;
        }

        else
        {
          v13 = __str.__r_.__value_.__r.__words[0];
        }

        copyfile(v12, v13, 0, 3u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::operator=((v8 + 32), &__str);
        *(v8 + 56) = 1;
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    memset(&__str, 170, sizeof(__str));
    Security::CodeSigning::BundleDiskRep::metaPath(&__str, *(this + 3), v5);
    v17 = 0xAAAAAAAAFFFFFFFFLL;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__str;
    }

    else
    {
      v14 = __str.__r_.__value_.__r.__words[0];
    }

    Security::UnixPlusPlus::FileDesc::open(&v17, v14, 1537, 420);
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    Security::UnixPlusPlus::FileDesc::writeAll(&v17, BytePtr, Length);
    Security::UnixPlusPlus::FileDesc::close(&v17);
    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(this + 176, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    Security::UnixPlusPlus::FileDesc::closeAndLog(&v17);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v6 = *(this + 12);
  if (v6[20])
  {
    v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
    if (!v5)
    {
      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    goto LABEL_8;
  }

  v7 = *(*v6 + 16);

  v7();
}

void sub_188922794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void *a2)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void Security::CodeSigning::BundleDiskRep::Writer::~Writer(char **this)
{
  *this = &unk_1EFA8B2E8;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer((this + 12));
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B2E8;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer((this + 12));
  Security::RefPointer<Security::CodeSigning::BundleDiskRep>::~RefPointer(this + 3);
}

CFDataRef Security::CodeSigning::BundleDiskRep::allowedResourceOmissions(CFBundleRef *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "^");
  Security::CodeSigning::BundleDiskRep::resourcesRelativePath(__p, this);
  if ((v19 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v3 = v19;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v20, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v21, ".*\\.lproj/locversion.plist$", 0x1BuLL);
  v14 = *&v6->__r_.__value_.__l.__data_;
  v23 = v6->__r_.__value_.__r.__words[2];
  v22 = v14;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v15 = &v22;
  if (v23 < 0)
  {
    v15 = v22;
  }

  v16 = Security::cfmake<__CFArray const*>(v6, v7, v8, v9, v10, v11, v12, v13, v15);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_188922B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::BundleDiskRep::resourcesRelativePath(Security::CodeSigning::BundleDiskRep *this, CFBundleRef *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(&__str, 170, sizeof(__str));
  (*(*a2 + 7))(&__str, a2);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 3)
  {
    v6 = p_str + size;
    v7 = size;
    v8 = p_str;
    do
    {
      v9 = memchr(v8, 47, v7 - 2);
      if (!v9)
      {
        break;
      }

      if (*v9 == 11823 && v9[2] == 47)
      {
        if (v9 != v6)
        {
          v11 = v9 - p_str;
          if (v9 - p_str != -1)
          {
LABEL_18:
            v12 = std::string::replace(&__str, v11, 2uLL, &unk_188967DD7, 0);
            std::string::operator=(&__str, v12);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &__str;
            }

            else
            {
              v13 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            if (size >= 3)
            {
              v14 = v13 + size;
              v15 = size;
              v16 = v13;
              while (1)
              {
                v17 = memchr(v16, 47, v15 - 2);
                if (!v17)
                {
                  break;
                }

                if (*v17 == 11823 && v17[2] == 47)
                {
                  if (v17 != v14)
                  {
                    v11 = v17 - v13;
                    if (v17 - v13 != -1)
                    {
                      goto LABEL_18;
                    }
                  }

                  goto LABEL_35;
                }

                v16 = (v17 + 1);
                v15 = v14 - v16;
                if (v14 - v16 < 3)
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }

        break;
      }

      v8 = (v9 + 1);
      v7 = v6 - v8;
    }

    while (v6 - v8 >= 3);
  }

LABEL_35:
  std::string::basic_string(&v34, &__str, size - 2, 2uLL, v37);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v34.__r_.__value_.__l.__size_ != 2)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
      goto LABEL_47;
    }

    v19 = *v34.__r_.__value_.__l.__data_;
    operator delete(v34.__r_.__value_.__l.__data_);
    if (v19 != 11823)
    {
      goto LABEL_47;
    }
  }

  else if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) != 2 || LOWORD(v34.__r_.__value_.__l.__data_) != 11823)
  {
    goto LABEL_47;
  }

  v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v34, &__str, 0, v20 - 2, v37);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v34;
LABEL_47:
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = (this + 8);
  *(this + 2) = 0xAAAAAAAAAAAAAAAALL;
  *this = 0xAAAAAAAAAAAAAAAALL;
  v22 = CFBundleCopyResourcesDirectoryURL(a2[3]);
  Security::cfStringRelease(this, v22);
  v23 = *(this + 23);
  if (v23 >= 0)
  {
    v24 = *(this + 23);
  }

  else
  {
    v24 = *(this + 1);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __str.__r_.__value_.__l.__size_;
  }

  if (v24 == v25 && ((v26 = *this, v23 >= 0) ? (v27 = this) : (v27 = *this), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v28 = &__str) : (v28 = __str.__r_.__value_.__r.__words[0]), !memcmp(v27, v28, v24)))
  {
    if (v23 < 0)
    {
      *v21 = 0;
      this = v26;
    }

    else
    {
      *(this + 23) = 0;
    }

    *this = 0;
  }

  else
  {
    if (std::string::compare(this, 0, v25, &__str, 0, v25))
    {
      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v34, this, v29 + 1, 0xFFFFFFFFFFFFFFFFLL, &v36);
    v30 = std::string::append(&v34, "/", 1uLL);
    v31 = v30->__r_.__value_.__r.__words[0];
    *v37 = v30->__r_.__value_.__l.__size_;
    *&v37[7] = *(&v30->__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v31;
    *v21 = *v37;
    *(this + 15) = *&v37[7];
    *(this + 23) = v32;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_188922F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::cfmake<__CFArray const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  v11[0] = "['^(.*/)?\\.DS_Store$''^Info\\.plist$''^PkgInfo$'%s]";
  v11[1] = &v10;
  v11[2] = 0;
  v12 = 0;
  return Security::CFMake::make(v11);
}

void Security::CodeSigning::BundleDiskRep::strictValidateStructure(uint64_t a1, Security::CodeSigning::CodeDirectory *this, void *a3, int a4)
{
  v71 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x4000000) == 0)
  {
    if (Security::CodeSigning::CodeDirectory::slotIsPresent(this, -3))
    {
      LODWORD(__p[0]) = 3;
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 184, 3u);
    }

    v68[0] = 0;
    v68[1] = 0;
    v67 = v68;
    v7 = *(a1 + 184);
    if (v7 != (a1 + 192))
    {
      do
      {
        v8 = *(v7 + 7);
        if (v8 != 1)
        {
          v9 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v8);
          if (v9)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v9);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v67, __p);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != (a1 + 192));
    }

    v13 = (a1 + 32);
    v14 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v14 = *v13;
    }

    v15 = Security::CodeSigning::pathFileSystemUsesXattrFiles(v14, v6);
    memset(__p, 170, sizeof(__p));
    if (*(a1 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v66, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      *&v66.__r_.__value_.__l.__data_ = *v13;
      v66.__r_.__value_.__r.__words[2] = *(a1 + 48);
    }

    Security::CodeSigning::DirScanner::DirScanner(__p, &v66);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (LOBYTE(__p[135]) == 1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            Next = Security::CodeSigning::DirScanner::getNext(__p);
            if (!Next)
            {
              goto LABEL_57;
            }

            if (!Security::CodeSigning::DirScanner::isRegularFile(__p, Next))
            {
              Security::MacOSError::throwMe(0xFFFEFA3ALL);
            }

            d_name = Next->d_name;
            std::string::basic_string[abi:ne200100]<0>(&v70, d_name);
            v18 = std::__tree<std::string>::find<std::string>(&v67, &v70);
            if (SHIBYTE(v70.st_gid) < 0)
            {
              operator delete(*&v70.st_dev);
            }
          }

          while (v68 != v18);
          if (!strcmp(d_name, "CodeSignature"))
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_56;
          }

          if (*(a1 + 55) >= 0)
          {
            v19 = *(a1 + 55);
          }

          else
          {
            v19 = *(a1 + 40);
          }

          memset(&v70, 170, 24);
          std::string::basic_string[abi:ne200100](&v70, v19 + 1);
          if ((v70.st_gid & 0x80000000) == 0)
          {
            v20 = &v70;
          }

          else
          {
            v20 = *&v70.st_dev;
          }

          if (v19)
          {
            if (*(a1 + 55) >= 0)
            {
              v21 = (a1 + 32);
            }

            else
            {
              v21 = *(a1 + 32);
            }

            memmove(v20, v21, v19);
          }

          *(&v20->st_dev + v19) = 47;
          v22 = strlen(d_name);
          v23 = std::string::append(&v70, d_name, v22);
          v24 = *&v23->__r_.__value_.__l.__data_;
          v64 = v23->__r_.__value_.__r.__words[2];
          *v63 = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          IsValidXattrFile = Security::CodeSigning::pathIsValidXattrFile(v63, "bundlediskrep");
          if (SHIBYTE(v64) < 0)
          {
            operator delete(v63[0]);
          }

          if (SHIBYTE(v70.st_gid) < 0)
          {
            operator delete(*&v70.st_dev);
            if (!IsValidXattrFile)
            {
              goto LABEL_56;
            }
          }

          else if (!IsValidXattrFile)
          {
            goto LABEL_56;
          }

          v29 = secLogObjForScope("bundlediskrep");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v70.st_dev = 136315138;
            *&v70.st_mode = d_name;
            _os_log_debug_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEBUG, "meta directory validation on xattr file skipped: %s", &v70, 0xCu);
          }
        }

        v65 = 0xAAAAAAAAFFFFFFFFLL;
        Security::CodeSigning::BundleDiskRep::metaPath(&v70, a1, "CodeSignature");
        if ((v70.st_gid & 0x80000000) == 0)
        {
          v26 = &v70;
        }

        else
        {
          v26 = *&v70.st_dev;
        }

        Security::UnixPlusPlus::FileDesc::open(&v65, v26, 0, 438);
        if (SHIBYTE(v70.st_gid) < 0)
        {
          operator delete(*&v70.st_dev);
        }

        v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v70.st_blksize = v27;
        *v70.st_qspare = v27;
        v70.st_birthtimespec = v27;
        *&v70.st_size = v27;
        v70.st_mtimespec = v27;
        v70.st_ctimespec = v27;
        *&v70.st_uid = v27;
        v70.st_atimespec = v27;
        *&v70.st_dev = v27;
        Security::UnixPlusPlus::FileDesc::fstat(v65, &v70);
        st_size = v70.st_size;
        Security::UnixPlusPlus::FileDesc::closeAndLog(&v65);
        if (st_size)
        {
LABEL_56:
          v70.st_dev = -67014;
          std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1 + 208, -67014);
        }
      }
    }

LABEL_57:
    Security::CodeSigning::DirScanner::~DirScanner(__p);
    std::__tree<std::string>::destroy(v68[0]);
  }

  memset(__p, 170, 24);
  v30 = (*(*a1 + 48))(a1, this);
  Security::cfStringRelease(__p, v30);
  v63[0] = 0xAAAAAAAAFFFFFFFFLL;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  Security::UnixPlusPlus::FileDesc::open(v63, v31, 0, 438);
  if ((a4 & 0x1000000) != 0)
  {
    v32 = LODWORD(v63[0]);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(v63[0]), "com.apple.ResourceFork"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v32, "com.apple.ResourceFork");
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v32, "com.apple.FinderInfo"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v32, "com.apple.FinderInfo");
    }
  }

  if ((a4 & 0x200) != 0)
  {
    v33 = LODWORD(v63[0]);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(v63[0]), "com.apple.ResourceFork"))
    {
      v56 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v56 = __p[0];
      }

      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.ResourceFork", v56);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v57, v58);
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v33, "com.apple.FinderInfo"))
    {
      v59 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v59 = __p[0];
      }

      v60 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.FinderInfo", v59);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v60, v61);
    }
  }

  memset(&v70, 0, 24);
  v34 = *(a1 + 208);
  v35 = (a1 + 216);
  v38 = *a3;
  v36 = (a3 + 1);
  v37 = v38;
  v39 = &v70;
  v66.__r_.__value_.__r.__words[0] = &v70;
  if (v34 != (a1 + 216))
  {
    if (v37 == v36)
    {
LABEL_96:
      v67 = v39;
      if (v34 != v35)
      {
        do
        {
          std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v67, v34 + 7);
          v50 = v34[1];
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = v34[2];
              v12 = *v51 == v34;
              v34 = v51;
            }

            while (!v12);
          }

          v34 = v51;
        }

        while (v51 != v35);
      }
    }

    else
    {
      while (1)
      {
        v40 = *(v34 + 7);
        v41 = v37[7];
        if (v40 >= v41)
        {
          if (v41 >= v40)
          {
            v46 = v34[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v34[2];
                v12 = *v47 == v34;
                v34 = v47;
              }

              while (!v12);
            }

            v48 = *(v37 + 1);
            if (v48)
            {
              do
              {
                v37 = v48;
                v48 = *v48;
              }

              while (v48);
            }

            else
            {
              do
              {
                v49 = v37;
                v37 = *(v37 + 2);
              }

              while (*v37 != v49);
            }

            v34 = v47;
          }

          else
          {
            v44 = *(v37 + 1);
            if (v44)
            {
              do
              {
                v37 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = v37;
                v37 = *(v37 + 2);
              }

              while (*v37 != v45);
            }
          }
        }

        else
        {
          std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v66, v34 + 7);
          v42 = v34[1];
          if (v42)
          {
            do
            {
              v34 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v34;
              v34 = v34[2];
            }

            while (*v34 != v43);
          }
        }

        if (v34 == v35)
        {
          break;
        }

        if (v37 == v36)
        {
          v39 = v66.__r_.__value_.__r.__words[0];
          goto LABEL_96;
        }
      }
    }
  }

  if (*&v70.st_dev != v70.st_ino)
  {
    v52 = **&v70.st_dev;
    goto LABEL_120;
  }

  if ((a4 & 0x100) != 0 && (*(a1 + 73) & 1) == 0)
  {
    v52 = 4294900294;
    v53 = *v36;
    if (!*v36)
    {
      goto LABEL_120;
    }

    v54 = v36;
    do
    {
      if (v53[7] >= 256)
      {
        v54 = v53;
      }

      v53 = *&v53[2 * (v53[7] < 256)];
    }

    while (v53);
    if (v54 == v36 || v54[7] >= 257)
    {
LABEL_120:
      Security::MacOSError::throwMe(v52);
    }
  }

  if (*&v70.st_dev)
  {
    v70.st_ino = *&v70.st_dev;
    operator delete(*&v70.st_dev);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v63);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v55 = *MEMORY[0x1E69E9840];
}

uint64_t *std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
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
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

uint64_t std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t result, int a2)
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
      v4 = *(v2 + 28);
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

uint64_t Security::CodeSigning::BundleDiskRep::strictValidate(void **a1)
{
  ((*a1)[30])(a1);
  v2 = *(*a1[13] + 232);

  return v2();
}

uint64_t Security::CodeSigning::BundleDiskRep::pageSize(uint64_t a1)
{
  return (*(**(a1 + 104) + 224))();
}

{
  return (*(**(a1 + 104) + 216))();
}

CFDataRef Security::CodeSigning::BundleDiskRep::defaultResourceRules(uint64_t a1, uint64_t a2)
{
  memset(v143, 170, sizeof(v143));
  Security::CodeSigning::BundleDiskRep::resourcesRelativePath(v143, a1);
  if (*(a1 + 72) == 1)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v138, "^");
    if (SHIBYTE(v143[2]) >= 0)
    {
      v5 = v143;
    }

    else
    {
      v5 = v143[0];
    }

    if (SHIBYTE(v143[2]) >= 0)
    {
      v6 = HIBYTE(v143[2]);
    }

    else
    {
      v6 = v143[1];
    }

    v7 = std::string::append(v4, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v140, ".*\\.lproj/", 0xAuLL);
    v17 = *&v9->__r_.__value_.__l.__data_;
    v142 = v9->__r_.__value_.__r.__words[2];
    v141 = v17;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v18 = &v141;
    if (v142 < 0)
    {
      v18 = v141;
    }

    v19 = Security::cfmake<__CFDictionary const*>("{rules={'^.*' = #T%s = {optional=#T, weight=1000}'^.*/.*\\.pkg/' = {omit=#T, weight=10000}}}", v10, v11, v12, v13, v14, v15, v16, v18);
    if (SHIBYTE(v142) < 0)
    {
      operator delete(v141);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v139) < 0)
    {
      v20 = v138;
LABEL_138:
      operator delete(v20);
      goto LABEL_142;
    }

    goto LABEL_142;
  }

  if (((*(*a2 + 16))(a2) & 0x10) != 0)
  {
    v83 = std::string::basic_string[abi:ne200100]<0>(&v140, "^");
    if (SHIBYTE(v143[2]) >= 0)
    {
      v84 = v143;
    }

    else
    {
      v84 = v143[0];
    }

    if (SHIBYTE(v143[2]) >= 0)
    {
      v85 = HIBYTE(v143[2]);
    }

    else
    {
      v85 = v143[1];
    }

    v86 = std::string::append(v83, v84, v85);
    v87 = *&v86->__r_.__value_.__l.__data_;
    v142 = v86->__r_.__value_.__r.__words[2];
    v141 = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    if (v142 >= 0)
    {
      v88 = &v141;
    }

    else
    {
      v88 = v141;
    }

    v89 = std::string::basic_string[abi:ne200100]<0>(v135, "^");
    if (SHIBYTE(v143[2]) >= 0)
    {
      v90 = v143;
    }

    else
    {
      v90 = v143[0];
    }

    if (SHIBYTE(v143[2]) >= 0)
    {
      v91 = HIBYTE(v143[2]);
    }

    else
    {
      v91 = v143[1];
    }

    v92 = std::string::append(v89, v90, v91);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = std::string::append(&v137, ".*\\.lproj/", 0xAuLL);
    v95 = *&v94->__r_.__value_.__l.__data_;
    v139 = v94->__r_.__value_.__r.__words[2];
    v138 = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v131, "^");
    if (SHIBYTE(v143[2]) >= 0)
    {
      v96 = v143;
    }

    else
    {
      v96 = v143[0];
    }

    if (SHIBYTE(v143[2]) >= 0)
    {
      v97 = HIBYTE(v143[2]);
    }

    else
    {
      v97 = v143[1];
    }

    v98 = std::string::append(&v131, v96, v97);
    v99 = *&v98->__r_.__value_.__l.__data_;
    v132.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
    *&v132.__r_.__value_.__l.__data_ = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    v100 = std::string::append(&v132, ".*\\.lproj/locversion.plist$", 0x1BuLL);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v134 = v100->__r_.__value_.__r.__words[2];
    v133 = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v19 = Security::cfmake<__CFDictionary const*>("{rules={'^version.plist$' = #T%s = #T%s = {optional=#T, weight=1000}%s = {omit=#T, weight=1100}}}", v102, v103, v104, v105, v106, v107, v108, v88);
    goto LABEL_122;
  }

  if (((*(*a2 + 16))(a2) & 8) != 0)
  {
    v109 = "{rules={'^.*' = #T'^Info\\.plist$' = {omit=#T,weight=10}}}";
LABEL_141:
    v19 = Security::cfmake<__CFDictionary const*>(v109, v21, v22, v23, v24, v25, v26, v27, v111);
    goto LABEL_142;
  }

  v28 = HIBYTE(v143[2]);
  if (SHIBYTE(v143[2]) < 0)
  {
    v28 = v143[1];
  }

  if (!v28)
  {
    v109 = "{rules={'^version.plist$' = #T'^.*' = #T'^.*\\.lproj/' = {optional=#T, weight=1000}'^Base\\.lproj/' = {weight=1010}'^.*\\.lproj/locversion.plist$' = {omit=#T, weight=1100}},rules2={'^.*' = #T'.*\\.dSYM($|/)' = {weight=11}'^(.*/)?\\.DS_Store$' = {omit=#T,weight=2000}'^Info\\.plist$' = {omit=#T, weight=20}'^version\\.plist$' = {weight=20}'^embedded\\.provisionprofile$' = {weight=20}'^PkgInfo$' = {omit=#T, weight=20}'^.*\\.lproj/' = {optional=#T, weight=1000}'^Base\\.lproj/' = {weight=1010}'^.*\\.lproj/locversion.plist$' = {omit=#T, weight=1100}}}";
    goto LABEL_141;
  }

  v29 = std::string::basic_string[abi:ne200100]<0>(&v140, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v30 = v143;
  }

  else
  {
    v30 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v31 = HIBYTE(v143[2]);
  }

  else
  {
    v31 = v143[1];
  }

  v32 = std::string::append(v29, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v142 = v32->__r_.__value_.__r.__words[2];
  v141 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v142 >= 0)
  {
    v34 = &v141;
  }

  else
  {
    v34 = v141;
  }

  v35 = std::string::basic_string[abi:ne200100]<0>(v135, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v36 = v143;
  }

  else
  {
    v36 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v37 = HIBYTE(v143[2]);
  }

  else
  {
    v37 = v143[1];
  }

  v38 = std::string::append(v35, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v137.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v137.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v137, ".*\\.lproj/", 0xAuLL);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v139 = v40->__r_.__value_.__r.__words[2];
  v138 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v131, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v42 = v143;
  }

  else
  {
    v42 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v43 = HIBYTE(v143[2]);
  }

  else
  {
    v43 = v143[1];
  }

  v44 = std::string::append(&v131, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v132.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v132.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v132, "Base\\.lproj/", 0xCuLL);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v134 = v46->__r_.__value_.__r.__words[2];
  v133 = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v127, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v48 = v143;
  }

  else
  {
    v48 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v49 = HIBYTE(v143[2]);
  }

  else
  {
    v49 = v143[1];
  }

  v50 = std::string::append(&v127, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v128.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v128.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v128, ".*\\.lproj/locversion.plist$", 0x1BuLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v130 = v52->__r_.__value_.__r.__words[2];
  v129 = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v124, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v54 = v143;
  }

  else
  {
    v54 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v55 = HIBYTE(v143[2]);
  }

  else
  {
    v55 = v143[1];
  }

  v56 = std::string::append(&v124, v54, v55);
  v57 = *&v56->__r_.__value_.__l.__data_;
  v126 = v56->__r_.__value_.__r.__words[2];
  v125 = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v120, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v58 = v143;
  }

  else
  {
    v58 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v59 = HIBYTE(v143[2]);
  }

  else
  {
    v59 = v143[1];
  }

  v60 = std::string::append(&v120, v58, v59);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = std::string::append(&v121, ".*\\.lproj/", 0xAuLL);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v123 = v62->__r_.__value_.__r.__words[2];
  v122 = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v116, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v64 = v143;
  }

  else
  {
    v64 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v65 = HIBYTE(v143[2]);
  }

  else
  {
    v65 = v143[1];
  }

  v66 = std::string::append(&v116, v64, v65);
  v67 = *&v66->__r_.__value_.__l.__data_;
  v117.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
  *&v117.__r_.__value_.__l.__data_ = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v117, "Base\\.lproj/", 0xCuLL);
  v69 = *&v68->__r_.__value_.__l.__data_;
  v119 = v68->__r_.__value_.__r.__words[2];
  v118 = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v112, "^");
  if (SHIBYTE(v143[2]) >= 0)
  {
    v70 = v143;
  }

  else
  {
    v70 = v143[0];
  }

  if (SHIBYTE(v143[2]) >= 0)
  {
    v71 = HIBYTE(v143[2]);
  }

  else
  {
    v71 = v143[1];
  }

  v72 = std::string::append(&v112, v70, v71);
  v73 = *&v72->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v113, ".*\\.lproj/locversion.plist$", 0x1BuLL);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v115 = v74->__r_.__value_.__r.__words[2];
  *__p = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v19 = Security::cfmake<__CFDictionary const*>("{rules={'^version.plist$' = #T%s = #T%s = {optional=#T, weight=1000}%s = {weight=1010}%s = {omit=#T, weight=1100}},rules2={'^.*' = #T'^[^/]+$' = {nested=#T, weight=10}'^(Frameworks|SharedFrameworks|PlugIns|Plug-ins|XPCServices|Helpers|MacOS|Library/(Automator|Spotlight|LoginItems))/' = {nested=#T, weight=10}'.*\\.dSYM($|/)' = {weight=11}'^(.*/)?\\.DS_Store$' = {omit=#T,weight=2000}'^Info\\.plist$' = {omit=#T, weight=20}'^version\\.plist$' = {weight=20}'^embedded\\.provisionprofile$' = {weight=20}'^PkgInfo$' = {omit=#T, weight=20}%s = {weight=20}%s = {optional=#T, weight=1000}%s = {weight=1010}%s = {omit=#T, weight=1100}}}", v76, v77, v78, v79, v80, v81, v82, v34);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

LABEL_122:
  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v139) < 0)
  {
    operator delete(v138);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (v136 < 0)
  {
    operator delete(v135[0]);
  }

  if (SHIBYTE(v142) < 0)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    v20 = v140.__r_.__value_.__r.__words[0];
    goto LABEL_138;
  }

LABEL_142:
  if (SHIBYTE(v143[2]) < 0)
  {
    operator delete(v143[0]);
  }

  return v19;
}

void sub_1889244E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (*(v86 - 233) < 0)
  {
    operator delete(*(v86 - 256));
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (*(v86 - 153) < 0)
  {
    operator delete(*(v86 - 176));
  }

  if (*(v86 - 185) < 0)
  {
    operator delete(*(v86 - 208));
  }

  if (*(v86 - 209) < 0)
  {
    operator delete(*(v86 - 232));
  }

  if (*(v86 - 89) < 0)
  {
    operator delete(*(v86 - 112));
  }

  if (*(v86 - 121) < 0)
  {
    operator delete(*(v86 - 144));
  }

  if (*(v86 - 65) < 0)
  {
    operator delete(*(v86 - 88));
  }

  _Unwind_Resume(a1);
}

_BYTE *Security::CodeSigning::BundleDiskRep::explicitIdentifier@<X0>(CFBundleRef *this@<X0>, Security *a2@<X8>)
{
  Identifier = CFBundleGetIdentifier(this[3]);
  if (Identifier || (InfoDictionary = CFBundleGetInfoDictionary(this[3])) != 0 && (Identifier = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E4F8])) != 0)
  {

    return Security::cfString(a2, Identifier);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, &unk_188967DD7);
  }
}

void Security::CodeSigning::BundleDiskRep::recommendedIdentifier(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v8, 170, sizeof(v8));
  (*(*a1 + 192))(v8);
  v4 = HIBYTE(v8[2]);
  if (SHIBYTE(v8[2]) < 0)
  {
    v4 = v8[1];
  }

  if (v4)
  {
    *a2 = *v8;
    *(a2 + 16) = v8[2];
  }

  else
  {
    v5 = (*(*a1 + 48))(a1);
    Security::cfStringRelease(__p, v5);
    Security::CodeSigning::DiskRep::canonicalIdentifier(a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8[2]) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_188924900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef Security::CodeSigning::BundleDiskRep::copyStapledTicket(Security::CodeSigning::BundleDiskRep *this)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(v26, 170, sizeof(v26));
  v1 = (*(*this + 48))(this);
  Security::cfStringRelease(v26, v1);
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v2;
  *v30.st_qspare = v2;
  v30.st_birthtimespec = v2;
  *&v30.st_size = v2;
  v30.st_mtimespec = v2;
  v30.st_ctimespec = v2;
  *&v30.st_uid = v2;
  v30.st_atimespec = v2;
  *&v30.st_dev = v2;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0;
  if (SHIBYTE(v26[2]) >= 0)
  {
    v3 = HIBYTE(v26[2]);
  }

  else
  {
    v3 = v26[1];
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = __p;
  std::string::basic_string[abi:ne200100](__p, v3 + 23);
  if (v28 < 0)
  {
    v4 = __p[0];
  }

  if (v3)
  {
    if (SHIBYTE(v26[2]) >= 0)
    {
      v5 = v26;
    }

    else
    {
      v5 = v26[0];
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "/Contents/CodeResources");
  v6 = secLogObjForScope("notarization");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v24 = v26;
    if (SHIBYTE(v26[2]) < 0)
    {
      v24 = v26[0];
    }

    *buf = 136315138;
    v32 = v24;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "Extracting ticket from bundle: %s", buf, 0xCu);
  }

  if (v28 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = open(v7, 0);
  v9 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    if (fstat(v8, &v30))
    {
      v10 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = *__error();
      *buf = 67109120;
      LODWORD(v32) = v11;
      v12 = "unable to stat stapling file: %d";
      v13 = v10;
      v14 = 8;
      goto LABEL_26;
    }

    if ((v30.st_mode & 0x80000000) == 0)
    {
      v17 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v12 = "stapling is not a regular file";
      goto LABEL_25;
    }

    st_size = v30.st_size;
    if (v30.st_size > 0x7FFFFFFF)
    {
      v25 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v30.st_size;
        v12 = "ticket size was too large: %lld";
        v13 = v25;
        v14 = 12;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = malloc_type_malloc(v30.st_size, 0x100004077774924uLL);
      if (v22)
      {
        if (read(v9, v22, st_size) == st_size)
        {
          v23 = CFDataCreateWithBytesNoCopy(0, v22, st_size, *MEMORY[0x1E695E488]);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = v23;
          if (!v23)
          {
            v17 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v12 = "unable to create cfdata for notarization";
LABEL_25:
              v13 = v17;
              v14 = 2;
LABEL_26:
              _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
            }
          }
        }

        else
        {
          v17 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v12 = "unable to read entire ticket from bundle";
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "unable to allocate data for ticket";
          goto LABEL_25;
        }
      }
    }

LABEL_27:
    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*__error() != 2)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *__error();
      *buf = 67109120;
      LODWORD(v32) = v16;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "cannot open stapled file for reading: %d", buf, 8u);
    }
  }

LABEL_28:
  close(v9);
LABEL_29:
  v18 = cf;
  cf = 0;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  Security::CFRef<__CFData const*>::~CFRef(&cf);
  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_188924DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  Security::CFRef<__CFData const*>::~CFRef(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

const void **Security::CodeSigning::BundleDiskRep::registerStapledTicket(Security::CodeSigning::BundleDiskRep *this)
{
  v3 = (*(*this + 176))(this);
  Security::CodeSigning::registerStapledTicketWithSystem(v3, v1);
  return Security::CFRef<__CFData const*>::~CFRef(&v3);
}

__CFArray *Security::CodeSigning::BundleDiskRep::modifiedFiles(Security::CodeSigning::BundleDiskRep *this)
{
  v6 = (*(**(this + 13) + 136))(*(this + 13));
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 0);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 0x10000);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 3);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 4);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 5);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 7);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 6);
  v2 = 4096;
  do
  {
    Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 4101);
  v3 = MutableCopy;
  MutableCopy = 0;
  Security::CFRef<__CFArray *>::~CFRef(&MutableCopy);
  Security::CFRef<__CFArray const*>::~CFRef(&v6);
  return v3;
}

void sub_188924FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFArray const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::BundleDiskRep::checkModifiedFile(Security::CodeSigning::BundleDiskRep *this, __CFArray *a2, Security::CodeSigning::CodeDirectory *a3)
{
  v6 = (*(**(this + 13) + 24))(*(this + 13), a3);
  if (v6)
  {

    CFRelease(v6);
  }

  else
  {
    v7 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a3);
    if (v7)
    {
      memset(&__sz, 170, sizeof(__sz));
      Security::CodeSigning::BundleDiskRep::metaPath(&__sz, this, v7);
      v8 = SHIBYTE(__sz.__r_.__value_.__r.__words[2]);
      v9 = __sz.__r_.__value_.__r.__words[0];
      if ((__sz.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_sz = &__sz;
      }

      else
      {
        p_sz = __sz.__r_.__value_.__r.__words[0];
      }

      if (!access(p_sz, 0))
      {
        if (v8 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v9, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __sz;
        }

        v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        CFURL = Security::makeCFURL(v12, 0, 0, v11);
        CFArrayAppendValue(a2, CFURL);
        Security::CFRef<__CFURL const*>::~CFRef(&CFURL);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v8 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

void sub_188925588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_188925890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Security::CodeSigning::ResourceBuilder::Rule *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **Security::CodeSigning::BundleDiskRep::resourcesRootPath@<X0>(CFBundleRef *this@<X0>, Security *a2@<X8>)
{
  v3 = CFBundleCopySupportFilesDirectoryURL(this[3]);

  return Security::cfStringRelease(a2, v3);
}

void ___ZN8Security11CodeSigning13BundleDiskRep21validateFrameworkRootENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "^(\\./)?Versions/");
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v22, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v23, "/", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  Security::CodeSigning::ResourceBuilder::escapeRE(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v24, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v25, "$", 1uLL);
  *a3 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_188925C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8Security11CodeSigning12DirValidator5allowERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjS8__block_invoke(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 32);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 48);
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void ___ZN8Security11CodeSigning12DirValidator7requireERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjS8__block_invoke(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 32);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 48);
  }
}

void Security::CodeSigning::DirValidator::addRule(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void Security::CodeSigning::CodeDirectory::Builder::Builder(Security::CodeSigning::CodeDirectory::Builder *this, Security::CodeSigning::CodeDirectory *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  *(this + 10) = -1;
  *(this + 44) = 0;
  *(this + 18) = 0;
  *(this + 19) = a2;
  *(this + 80) = 0;
  *(this + 88) = 0u;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 177) = 0u;
  *(this + 25) = this + 208;
  *(this + 56) = 0;
  *(this + 29) = 0;
  Security::CodeSigning::CodeDirectory::hashFor(a2);
}

void sub_188925F6C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 208));
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v2);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::CodeDirectory::Builder::~Builder(Security::CodeSigning::CodeDirectory::Builder *this)
{
  free(*(this + 1));
  free(*(this + 19));
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(this + 26));
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 40));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 3));
}

void Security::CodeSigning::CodeDirectory::Builder::specialSlot(Security::CodeSigning::CodeDirectory::Builder *this, unsigned int a2, const __CFData *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = v3;
  v7 = v3;
  v4 = v3;
  v5 = v3;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 19));
}

void sub_1889261A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

unint64_t Security::CodeSigning::CodeDirectory::Builder::size(Security::CodeSigning::CodeDirectory::Builder *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (v4)
  {
    goto LABEL_3;
  }

  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.st_blksize = v5;
  *v15.st_qspare = v5;
  v15.st_birthtimespec = v5;
  *&v15.st_size = v5;
  v15.st_mtimespec = v5;
  v15.st_ctimespec = v5;
  *&v15.st_uid = v5;
  v15.st_atimespec = v5;
  *&v15.st_dev = v5;
  Security::UnixPlusPlus::FileDesc::fstat(*(this + 10), &v15);
  v6 = *(this + 6);
  v4 = v15.st_size - v6;
  v7 = v15.st_size == v6;
  *(this + 7) = v15.st_size - v6;
  if (!v7)
  {
LABEL_3:
    v4 = (v4 - 1) / *(this + 8) + 1;
  }

  *(this + 18) = v4;
  v8 = 96;
  if (a2 < 0x20500)
  {
    v8 = 88;
  }

  if (a2 < 0x20400)
  {
    v8 -= 24;
  }

  if (a2 >= 0x20300)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 - 12;
  }

  if (a2 >> 9 < 0x101)
  {
    v9 -= 4;
  }

  v10 = *(this + 111);
  if (v10 < 0)
  {
    v10 = *(this + 12);
  }

  v11 = v9 + *(this + 20) + v10 + 1;
  v12 = *(this + 135);
  if (v12 < 0)
  {
    v12 = *(this + 15);
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(this + 135))
  {
LABEL_17:
    v11 += v12 + 1;
  }

LABEL_18:
  v13 = *(this + 21);
  result = v11 + (*(this + 17) + v4) * v13;
  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    result += v4 * v13;
  }

  if (result <= v9)
  {
    Security::UnixError::throwMe(8);
  }

  return result;
}

uint64_t Security::CodeSigning::CodeDirectory::Builder::build(Security::CodeSigning::CodeDirectory::Builder *this)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = *(this + 111);
  if (v2 < 0)
  {
    v2 = *(this + 12);
  }

  v3 = *(this + 135);
  if (v3 < 0)
  {
    v4 = *(this + 15);
  }

  else
  {
    v4 = *(this + 135);
  }

  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    v5 = 132352;
  }

  else
  {
    v5 = 132352;
    if (!*(this + 56))
    {
      if (*(this + 22))
      {
        v5 = 132096;
      }

      else if (*(this + 15))
      {
        v5 = 131840;
      }

      else
      {
        if ((v3 & 0x80000000) != 0)
        {
          v3 = *(this + 15);
        }

        if (v3)
        {
          v5 = 131584;
        }

        else
        {
          v5 = 131328;
        }
      }
    }
  }

  if (*(this + 37))
  {
    Security::MacOSError::throwMe(0xFFFEFA44);
  }

  v6 = Security::CodeSigning::CodeDirectory::Builder::size(this, v5);
  v7 = v6;
  v8 = malloc_type_calloc(1uLL, v6, 0x1000040565EDBD2uLL);
  *(this + 29) = v8;
  if (!v8)
  {
    Security::UnixError::throwMe(0xC);
  }

  v9 = v8;
  v8->i32[0] = 34397946;
  v8->i32[1] = bswap32(v7);
  v10 = bswap32(*(this + 18));
  v8[1].i32[0] = bswap32(v5);
  v8[1].i32[1] = v10;
  v8[3] = vrev32_s8(vmovn_s64(*(this + 136)));
  v11 = *(this + 7);
  if (HIDWORD(v11))
  {
    v8[7] = bswap64(v11);
    v12 = -1;
  }

  else
  {
    v12 = bswap32(v11);
  }

  v13 = v2 + 1;
  v8[4].i32[0] = v12;
  v8[4].i8[5] = *(this + 19);
  v8[4].i8[6] = *(this + 80);
  v8[4].i8[4] = *(this + 21);
  v14 = *(this + 8);
  frexp(v14, &__e);
  v15 = __e - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v9[2].i8[7] = v15;
  v9[4] = vrev64q_s8(*(this + 168));
  v9[5].i64[0] = bswap64(*(this + 23));
  v9[5].i32[2] = bswap32(*(this + 56));
  v16 = 96;
  if (v5 < 0x20500)
  {
    v16 = 88;
  }

  if (v5 < 0x20400)
  {
    v16 -= 24;
  }

  if (v5 < 0x20300)
  {
    v16 -= 12;
  }

  if (v5 >= 0x20200)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 - 4;
  }

  v18 = *(this + 19);
  if (v18)
  {
    v9[2].i32[3] = bswap32(v17);
    memcpy(&v9->i8[v17], v18, *(this + 20));
    v17 += *(this + 20);
    v9 = *(this + 29);
  }

  v19 = (this + 88);
  v9[1].i32[1] = bswap32(v17);
  if (*(this + 111) < 0)
  {
    v19 = *v19;
  }

  memcpy(&v9->i8[v17], v19, v13);
  v20 = v17 + v13;
  v21 = *(this + 135);
  if (v21 < 0)
  {
    v21 = *(this + 15);
  }

  if (v21)
  {
    v22 = (this + 112);
    v23 = *(this + 29);
    *(v23 + 48) = bswap32(v20);
    v24 = bswap32(*(v23 + 8)) < 0x20200 || v20 == 0;
    v25 = (v23 + v20);
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if (*(this + 135) < 0)
    {
      v22 = *v22;
    }

    memcpy(v26, v22, v4 + 1);
    v20 += v4 + 1;
  }

  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    v27 = *(this + 29);
    *(v27 + 92) = bswap32(v20);
    v28 = *(this + 21);
    v20 += *(this + 18) * v28;
  }

  else
  {
    v28 = *(this + 21);
    v27 = *(this + 29);
  }

  v29 = *(this + 17);
  v30 = v29 * v28;
  v31 = v29 * v28 + v20;
  *(v27 + 16) = bswap32(v31);
  bzero((v27 + v31 + -(v29 * *(v27 + 36))), v30);
  if (*(this + 17))
  {
    v32 = 1;
    v33 = 0xFFFFFFFF00000000;
    do
    {
      memcpy((bswap32(*(*(this + 29) + 16)) + *(this + 29) + ((v33 * *(*(this + 29) + 36)) >> 32)), (*(this + 1) + (*(this + 21) * (v32++ - 1))), *(this + 21));
      v33 -= 0x100000000;
    }

    while (v32 <= *(this + 17));
  }

  Security::UnixPlusPlus::FileDesc::seek(*(this + 10), *(this + 6));
  if (*(this + 18))
  {
    if (*(this + 8) < *(this + 7))
    {
      v34 = *(this + 8);
    }

    v99 = 0xAAAAAAAAAAAAAAAALL;
    *&v35 = 0xAAAAAAAAAAAAAAAALL;
    *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v97 = v35;
    v98 = v35;
    v95 = v35;
    v96 = v35;
    Security::CodeSigning::CodeDirectory::hashFor(*(this + 19));
  }

  v37 = this + 208;
  v36 = *(this + 26);
  if (!v36)
  {
    goto LABEL_162;
  }

  v38 = *(this + 19);
  v39 = this + 208;
  do
  {
    v40 = *(v36 + 8);
    v41 = v40 >= v38;
    v42 = v40 < v38;
    if (v41)
    {
      v39 = v36;
    }

    v36 = *&v36[8 * v42];
  }

  while (v36);
  if (v39 == v37 || v38 < *(v39 + 8))
  {
    goto LABEL_162;
  }

  v43 = *(this + 29);
  if (bswap32(*(v43 + 8)) <= 0x204FF)
  {
    v46 = 0;
  }

  else
  {
    v44 = *(v43 + 92);
    v45 = bswap32(v44) + v43;
    v46 = v44 ? v45 : 0;
  }

  BytePtr = CFDataGetBytePtr(*(v39 + 5));
  memcpy(v46, BytePtr, *(this + 18) * *(this + 21));
  v48 = *(this + 26);
  if (!v48)
  {
    goto LABEL_162;
  }

  v49 = *(v39 + 8);
  v50 = this + 208;
  v51 = *(this + 26);
  do
  {
    v52 = *(v51 + 8);
    v41 = v52 >= v49;
    v53 = v52 < v49;
    if (v41)
    {
      v50 = v51;
    }

    v51 = *&v51[8 * v53];
  }

  while (v51);
  if (v50 == v37 || v49 < *(v50 + 8))
  {
    goto LABEL_162;
  }

  v54 = *(v50 + 1);
  if (v54)
  {
    do
    {
      v55 = v54;
      v54 = *v54;
    }

    while (v54);
  }

  else
  {
    v56 = v50;
    do
    {
      v55 = *(v56 + 2);
      v24 = *v55 == v56;
      v56 = v55;
    }

    while (!v24);
  }

  if (*(this + 25) == v50)
  {
    *(this + 25) = v55;
  }

  --*(this + 27);
  v57 = *v50;
  v58 = v50;
  if (*v50)
  {
    v59 = *(v50 + 1);
    if (!v59)
    {
      v58 = v50;
      goto LABEL_97;
    }

    do
    {
      v58 = v59;
      v59 = *v59;
    }

    while (v59);
  }

  v57 = *(v58 + 1);
  if (v57)
  {
LABEL_97:
    v61 = 0;
    v60 = *(v58 + 2);
    *(v57 + 16) = v60;
    goto LABEL_98;
  }

  v60 = *(v58 + 2);
  v61 = 1;
LABEL_98:
  v62 = *v60;
  if (*v60 == v58)
  {
    *v60 = v57;
    if (v58 == v48)
    {
      v62 = 0;
      v48 = v57;
    }

    else
    {
      v62 = v60[1];
    }
  }

  else
  {
    v60[1] = v57;
  }

  v63 = v58[24];
  if (v58 != v50)
  {
    v64 = *(v50 + 2);
    *(v58 + 2) = v64;
    v64[*v64 != v50] = v58;
    v66 = *v50;
    v65 = *(v50 + 1);
    *(v66 + 16) = v58;
    *v58 = v66;
    *(v58 + 1) = v65;
    if (v65)
    {
      *(v65 + 16) = v58;
    }

    v58[24] = v50[24];
    if (v48 == v50)
    {
      v48 = v58;
    }
  }

  if (!v48 || !v63)
  {
    goto LABEL_161;
  }

  if (!v61)
  {
    *(v57 + 24) = 1;
    goto LABEL_161;
  }

  while (1)
  {
    v67 = *(v62 + 2);
    v68 = *v67;
    v69 = v62[24];
    if (*v67 == v62)
    {
      break;
    }

    if ((v62[24] & 1) == 0)
    {
      v62[24] = 1;
      *(v67 + 24) = 0;
      v70 = v67[1];
      v71 = *v70;
      v67[1] = *v70;
      if (v71)
      {
        *(v71 + 16) = v67;
      }

      v72 = v67[2];
      v70[2] = v72;
      v72[*v72 != v67] = v70;
      *v70 = v67;
      v67[2] = v70;
      if (v48 == *v62)
      {
        v48 = v62;
      }

      v62 = *(*v62 + 8);
    }

    v73 = *v62;
    if (*v62 && v73[24] != 1)
    {
      v74 = *(v62 + 1);
      if (v74 && (v74[24] & 1) == 0)
      {
LABEL_147:
        v73 = v62;
      }

      else
      {
        v73[24] = 1;
        v62[24] = 0;
        v82 = *(v73 + 1);
        *v62 = v82;
        if (v82)
        {
          *(v82 + 16) = v62;
        }

        v83 = *(v62 + 2);
        *(v73 + 2) = v83;
        v83[*v83 != v62] = v73;
        *(v73 + 1) = v62;
        *(v62 + 2) = v73;
        v74 = v62;
      }

      v84 = *(v73 + 2);
      v73[24] = *(v84 + 24);
      *(v84 + 24) = 1;
      v74[24] = 1;
      v85 = *(v84 + 8);
      v86 = *v85;
      *(v84 + 8) = *v85;
      if (v86)
      {
        *(v86 + 16) = v84;
      }

      v87 = *(v84 + 16);
      v85[2] = v87;
      v87[*v87 != v84] = v85;
      *v85 = v84;
      goto LABEL_160;
    }

    v74 = *(v62 + 1);
    if (v74 && v74[24] != 1)
    {
      goto LABEL_147;
    }

    v62[24] = 0;
    v75 = *(v62 + 2);
    if (v75 == v48 || (v75[24] & 1) == 0)
    {
      goto LABEL_141;
    }

LABEL_139:
    v62 = *(*(v75 + 2) + 8 * (**(v75 + 2) == v75));
  }

  if ((v62[24] & 1) == 0)
  {
    v62[24] = 1;
    *(v67 + 24) = 0;
    v76 = *(v68 + 1);
    *v67 = v76;
    if (v76)
    {
      *(v76 + 16) = v67;
    }

    v77 = v67[2];
    *(v68 + 2) = v77;
    v77[*v77 != v67] = v68;
    *(v68 + 1) = v67;
    v67[2] = v68;
    v78 = *(v62 + 1);
    if (v48 == v78)
    {
      v48 = v62;
    }

    v62 = *v78;
  }

  v79 = *v62;
  if (*v62 && v79[24] != 1)
  {
    goto LABEL_156;
  }

  v80 = *(v62 + 1);
  if (!v80 || v80[24] == 1)
  {
    v62[24] = 0;
    v75 = *(v62 + 2);
    if (v75[24] != 1 || v75 == v48)
    {
LABEL_141:
      v75[24] = 1;
      goto LABEL_161;
    }

    goto LABEL_139;
  }

  if (v79 && (v79[24] & 1) == 0)
  {
LABEL_156:
    v80 = v62;
    goto LABEL_157;
  }

  v80[24] = 1;
  v62[24] = 0;
  v88 = *v80;
  *(v62 + 1) = *v80;
  if (v88)
  {
    *(v88 + 16) = v62;
  }

  v89 = *(v62 + 2);
  *(v80 + 2) = v89;
  v89[*v89 != v62] = v80;
  *v80 = v62;
  *(v62 + 2) = v80;
  v79 = v62;
LABEL_157:
  v84 = *(v80 + 2);
  v80[24] = *(v84 + 24);
  *(v84 + 24) = 1;
  v79[24] = 1;
  v85 = *v84;
  v90 = *(*v84 + 8);
  *v84 = v90;
  if (v90)
  {
    *(v90 + 16) = v84;
  }

  v91 = *(v84 + 16);
  v85[2] = v91;
  v91[*v91 != v84] = v85;
  v85[1] = v84;
LABEL_160:
  *(v84 + 16) = v85;
LABEL_161:
  Security::CFRef<__CFData const*>::~CFRef(v50 + 5);
  operator delete(v50);
LABEL_162:
  result = *(this + 29);
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188926D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::scanFileData(int *a1, size_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v22.st_blksize = v6;
  *v22.st_qspare = v6;
  v22.st_birthtimespec = v6;
  *&v22.st_size = v6;
  v22.st_mtimespec = v6;
  v22.st_ctimespec = v6;
  *&v22.st_uid = v6;
  v22.st_atimespec = v6;
  *&v22.st_dev = v6;
  Security::UnixPlusPlus::FileDesc::fstat(*a1, &v22);
  if (v22.st_blksize <= 0x10000)
  {
    st_blksize = 0x10000;
  }

  else
  {
    st_blksize = v22.st_blksize;
  }

  v8 = malloc_type_valloc(st_blksize, 0x100004077774924uLL);
  if (v8)
  {
    while (1)
    {
      v9 = a2;
      if (a2 >= st_blksize)
      {
        v10 = st_blksize;
      }

      else
      {
        v10 = a2;
      }

      if (a2)
      {
        v11 = v10;
      }

      else
      {
        v11 = st_blksize;
      }

      v12 = read(*a1, v8, v11);
      v13 = v12;
      if (v12 == -1)
      {
        if (*__error() != 35)
        {
          v21 = __error();
          Security::UnixError::throwMe(*v21);
        }

        goto LABEL_19;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      if (v11)
      {
        *(a1 + 4) = 1;
        v14 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *a1;
          *buf = 67109120;
          v24 = v15;
          v16 = v14;
          v17 = "%d end of data";
LABEL_25:
          _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 8u);
        }
      }

      else
      {
        v18 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a1;
          *buf = 67109120;
          v24 = v19;
          v16 = v18;
          v17 = "%d zero read (ignored)";
          goto LABEL_25;
        }
      }

LABEL_19:
      v13 = 0;
LABEL_20:
      if ((a1[1] & 1) == 0)
      {
        (*(a3 + 16))(a3, v8, v13);
        a2 = 0;
        if (!v9)
        {
          continue;
        }

        a2 = v9 - v13;
        if (v9 != v13)
        {
          continue;
        }
      }

      free(v8);
      break;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_188926F7C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_188926FC4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x188926FCCLL);
  }

  __clang_call_terminate(a1);
}

void Security::CodeSigning::CodeDirectory::multipleHashFileData(uint64_t a1, size_t a2, void *a3, uint64_t a4)
{
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v5 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      v7 = &Security::CodeSigning::hashPriorities;
      do
      {
        v9 = *v7++;
        v8 = v9;
        v10 = v9 == v6 || v8 == 0;
      }

      while (!v10);
      if (v8)
      {
        Security::CodeSigning::CodeDirectory::hashFor(v6);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v10 = *v12 == v5;
          v5 = v12;
        }

        while (!v10);
      }

      v5 = v12;
    }

    while (v12 != a3 + 1);
  }

  LODWORD(CFMutableDictionary) = *a1;
  BYTE4(CFMutableDictionary) = *(a1 + 4);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1174405120;
  v19[2] = ___ZN8Security11CodeSigning13CodeDirectory20multipleHashFileDataENS_12UnixPlusPlus8FileDescEmNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEU13block_pointerFvjPNS_11DynamicHashEE_block_invoke;
  v19[3] = &__block_descriptor_tmp_17474;
  std::map<unsigned int,Security::RefPointer<Security::DynamicHash>>::map[abi:ne200100](v20, &v21);
  Security::CodeSigning::scanFileData(&CFMutableDictionary, a2, v19);
  CFMutableDictionary = Security::makeCFMutableDictionary(v13);
  v14 = v21;
  if (v21 != v22)
  {
    do
    {
      (*(a4 + 16))(a4, *(v14 + 8), v14[5]);
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v10 = *v16 == v14;
          v14 = v16;
        }

        while (!v10);
      }

      v14 = v16;
    }

    while (v16 != v22);
  }

  Security::CFRef<__CFDictionary *>::~CFRef(&CFMutableDictionary);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(v20[1]);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(v22[0]);
}

void sub_1889272B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a17);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a20);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8Security11CodeSigning13CodeDirectory20multipleHashFileDataENS_12UnixPlusPlus8FileDescEmNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEU13block_pointerFvjPNS_11DynamicHashEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = (result + 40);
  if (v3 != (result + 40))
  {
    do
    {
      result = (*(*v3[5] + 24))(v3[5], a2, a3);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  return result;
}

void *std::map<unsigned int,Security::RefPointer<Security::DynamicHash>>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        memset(v14, 170, sizeof(v14));
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a1[1]);
    Security::RefPointer<Security::DynamicHash>::~RefPointer((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      Security::RefPointer<Security::DynamicHash>::~RefPointer(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL Security::DynamicHash::verify(Security::DynamicHash *this, const unsigned __int8 *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 16))(this);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  if (v5)
  {
    memset(v12 - v7, 170, v6);
  }

  (*(*this + 32))(this, v8);
  v9 = (*(*this + 16))(this);
  result = memcmp(v8, a2, v9) == 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SecTaskCopyDebugDescription(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  pidp = -1431655766;
  v2 = *(a1 + 32);
  *atoken = *(a1 + 16);
  *&atoken[16] = v2;
  audit_token_to_au32(atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *v15 = 0xE00000001;
  v16 = 1;
  v17 = pidp;
  memset(atoken, 170, sizeof(atoken));
  v12 = 648;
  if (sysctl(v15, 4u, atoken, &v12, 0, 0) == -1 || !v12)
  {
    v4 = __error();
    v3 = strerror(*v4);
  }

  else
  {
    v3 = &atoken[243];
  }

  v5 = CFGetAllocator(a1);
  v6 = pidp;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    Count = CFDictionaryGetCount(v8);
  }

  else
  {
    Count = 0xFFFFFFFFLL;
  }

  result = CFStringCreateWithFormat(v5, 0, @"%s[%d]/%d#%d LF=%d", v3, v6, v7, Count, *(a1 + 64));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

SecTaskRef SecTaskCreateWithXPCMessage(SecTaskRef result)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v3.val = v1;
  *&v3.val[4] = v1;
  if (result)
  {
    if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_get_audit_token();
      v2 = v3;
      return SecTaskCreateWithAuditToken(0, &v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SecTaskEntitlementsValidated(uint64_t a1)
{
  if (csops_task(a1) == -1)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t SecTaskValidateForLightweightCodeRequirementData(_OWORD *a1, const __CFData *a2, CFErrorRef *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  TypeID = SecTaskGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E695E638];
      v14 = @"Invalid task reference";
      v15 = -67675;
LABEL_13:
      v11 = 0;
      *a3 = createError(v13, v15, v14);
      goto LABEL_15;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!a2 || !CFDataGetLength(a2))
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E695E638];
      v14 = @"Invalid requirement";
      v15 = -50;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  bzero(&v19, 0x404uLL);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v9 = a1[2];
  v18[0] = a1[1];
  v18[1] = v9;
  v10 = amfi_launch_constraint_matches_process(v18, BytePtr, Length, &v19);
  v11 = v10;
  if (a3 && (v10 & 1) == 0)
  {
    v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v20, 0x8000100u);
    if (v19 <= 5)
    {
      *a3 = createError(**(&unk_1E70E4890 + v19), dword_188967778[v19], v12);
    }

    CFRelease(v12);
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

CFErrorRef createError(const __CFString *a1, int a2, const void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E620], a3);

  return CFErrorCreate(v6, a1, a2, Mutable);
}

uint64_t Security::PerThreadPointer<Security::CodeSigning::PerThread>::destructor(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x18CFD9760);
  }

  return result;
}

void sub_188927C3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188927C34);
}

OSStatus SecCodeCopySelf(SecCSFlags flags, SecCodeRef *self)
{
  if (!flags)
  {
    LODWORD(valuePtr) = getpid();
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = Security::makeCFMutableDictionary(v2, v3, v4, @"pid", v2, v2);
    v5 = Security::CFRef<__CFNumber const*>::~CFRef(&v7);
    Security::CodeSigning::SecCode::autoLocateGuest(v5, v6);
  }

  Security::MacOSError::throwMe(0xFFFEFA02);
}

uint64_t sub_188927CB4(void *a1, int a2)
{
  Security::CFRef<__CFDictionary *>::~CFRef(&v12);
  switch(a2)
  {
    case 6:
      v4 = __cxa_begin_catch(a1);
      if (v4[36] == 8)
      {
        v5 = 4294900247;
        goto LABEL_8;
      }

      goto LABEL_6;
    case 5:
      goto LABEL_5;
    case 4:
      v4 = __cxa_begin_catch(a1);
      v9 = v4[36];
      if (v9 <= 0x1A)
      {
        v5 = 4294900263;
        v10 = 1 << v9;
        if ((v10 & 0x800108) != 0)
        {
          goto LABEL_8;
        }

        if ((v10 & 0x4014000) != 0)
        {
          v5 = 4294900264;
          goto LABEL_8;
        }
      }

LABEL_6:
      v7 = (*(*v4 + 24))(v4);
      goto LABEL_7;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      v7 = (*(*v6 + 24))(v6);
LABEL_7:
      v5 = v7;
      goto LABEL_8;
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = 4294967188;
  }

  else
  {
    Security::Syslog::notice("unknown exception in CSAPI", v11);
    v5 = 4294900248;
  }

LABEL_8:
  __cxa_end_catch();
  return v5;
}

uint64_t SecCodeGetStatus(Security::CodeSigning::SecCode *a1, __SecCode *a2, int *a3)
{
  if (a2)
  {
    v7 = 4294900226;
LABEL_8:
    Security::MacOSError::throwMe(v7);
  }

  v4 = *(Security::CodeSigning::SecCode::required(a1, a2) + 2);
  if (!v4)
  {
    v5 = 1;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v5 = (*(*v4 + 104))(v4);
  if (!a3)
  {
LABEL_6:
    v7 = 4294900227;
    goto LABEL_8;
  }

LABEL_4:
  *a3 = v5;
  return 0;
}

void *Security::CodeSigning::SecCode::required(Security::CodeSigning::SecCode *this, __SecCode *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

uint64_t SecCodeSetStatus(Security::CodeSigning::SecCode *a1, __SecCode *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v9 = 4294900226;
    goto LABEL_6;
  }

  v6 = Security::CodeSigning::SecCode::required(a1, a2);
  v7 = v6[2];
  if (!v7)
  {
    v9 = 4294900256;
LABEL_6:
    Security::MacOSError::throwMe(v9);
  }

  (*(*v7 + 112))(v7, v6, a2, a3);
  return 0;
}

void sub_18892856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  Security::SecCFObject::operator delete(v19);
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(&a17);
  Security::SecPointerBase::~SecPointerBase(&a15);
  if (a2 == 6)
  {
    v22 = __cxa_begin_catch(exception_object);
    if (v22[36] == 8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v22 = __cxa_begin_catch(exception_object);
      v24 = v22[36];
      if (v24 <= 0x1A)
      {
        v25 = 1 << v24;
        if ((v25 & 0x800108) != 0 || (v25 & 0x4014000) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      (*(*v22 + 24))(v22);
LABEL_17:
      __cxa_end_catch();
LABEL_19:
      JUMPOUT(0x188928518);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v26);
      }

      goto LABEL_17;
    }
  }

  v23 = __cxa_begin_catch(exception_object);
  (*(*v23 + 24))(v23);
  __cxa_end_catch();
  goto LABEL_19;
}

void sub_188928874(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::SecPointerBase::~SecPointerBase(va);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188928844);
}

void sub_188928B8C(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::SecPointerBase::~SecPointerBase(va);
  switch(a2)
  {
    case 7:
      v6 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v6, v3);
      goto LABEL_32;
    case 6:
      v7 = __cxa_begin_catch(a1);
      if (v7[36] == 8)
      {
        v8 = -67049;
      }

      else
      {
        v8 = (*(*v7 + 24))(v7);
      }

      if (v3)
      {
LABEL_30:
        v11 = CFErrorCreate(0, *MEMORY[0x1E695E638], v8, 0);
        goto LABEL_31;
      }

LABEL_32:
      __cxa_end_catch();
      JUMPOUT(0x188928B64);
    case 5:
      v9 = __cxa_begin_catch(a1);
      v10 = (*(*v9 + 24))(v9);
      if (!v3)
      {
        goto LABEL_32;
      }

      v11 = CFErrorCreate(0, *MEMORY[0x1E695E638], v10, 0);
LABEL_31:
      *v3 = v11;
      goto LABEL_32;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v15 = __cxa_begin_catch(a1);
      v16 = (*(*v15 + 24))(v15);
      if (v3)
      {
        *v3 = CFErrorCreate(0, *MEMORY[0x1E695E638], v16, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v3)
        {
          *v3 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v17);
        if (v3)
        {
          *v3 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_32;
  }

  v12 = __cxa_begin_catch(a1);
  v13 = v12[36];
  if (v13 > 0x1A)
  {
    goto LABEL_28;
  }

  v8 = -67033;
  v14 = 1 << v13;
  if ((v14 & 0x800108) != 0)
  {
    goto LABEL_29;
  }

  if ((v14 & 0x4014000) != 0)
  {
    v8 = -67032;
  }

  else
  {
LABEL_28:
    v8 = (*(*v12 + 24))(v12);
  }

LABEL_29:
  if (!v3)
  {
    goto LABEL_32;
  }

  goto LABEL_30;
}

_BYTE **Security::CodeSigning::SecRequirement::optional(_BYTE **this, __SecRequirement *a2)
{
  if (this)
  {
    v2 = *this[3];
    if (!this)
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }
  }

  return this;
}

void sub_188928F0C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188928F04);
}

void sub_188929094(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Security::SecPointerBase::~SecPointerBase(&a15);
  switch(a2)
  {
    case 7:
      v18 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v18, v15);
      goto LABEL_34;
    case 6:
      v19 = __cxa_begin_catch(a1);
      if (v19[36] == 8)
      {
        v20 = -67049;
      }

      else
      {
        v20 = (*(*v19 + 24))(v19);
      }

      if (v15)
      {
LABEL_32:
        v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v20, 0);
        goto LABEL_33;
      }

LABEL_34:
      __cxa_end_catch();
      JUMPOUT(0x188929068);
    case 5:
      v21 = __cxa_begin_catch(a1);
      v22 = (*(*v21 + 24))(v21);
      if (!v15)
      {
        goto LABEL_34;
      }

      v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v22, 0);
LABEL_33:
      *v15 = v23;
      goto LABEL_34;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v28 = (*(*v27 + 24))(v27);
      if (v15)
      {
        *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], v28, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v29);
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_34;
  }

  v24 = __cxa_begin_catch(a1);
  v25 = v24[36];
  if (v25 > 0x1A)
  {
    goto LABEL_30;
  }

  v20 = -67033;
  v26 = 1 << v25;
  if ((v26 & 0x800108) != 0)
  {
    goto LABEL_31;
  }

  if ((v26 & 0x4014000) != 0)
  {
    v20 = -67032;
  }

  else
  {
LABEL_30:
    v20 = (*(*v24 + 24))(v24);
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_34;
  }

  goto LABEL_32;
}

uint64_t SecStaticCodeValidateResourceWithErrors(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, int a3)
{
  if ((a3 & 0x1FFC9DAE) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  Security::SecPointerBase::SecPointerBase(&v10, v5);
  v6 = v10;
  *(v10 + 208) = a3;
  Security::cfString(__p, a2);
  Security::CodeSigning::SecStaticCode::staticValidateResource(v6, __p, a3, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  Security::SecPointerBase::~SecPointerBase(&v10);
  return 0;
}

void sub_1889294AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Security::SecPointerBase::~SecPointerBase(&a15);
  switch(a2)
  {
    case 7:
      v18 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v18, v15);
      goto LABEL_34;
    case 6:
      v19 = __cxa_begin_catch(a1);
      if (v19[36] == 8)
      {
        v20 = -67049;
      }

      else
      {
        v20 = (*(*v19 + 24))(v19);
      }

      if (v15)
      {
LABEL_32:
        v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v20, 0);
        goto LABEL_33;
      }

LABEL_34:
      __cxa_end_catch();
      JUMPOUT(0x188929484);
    case 5:
      v21 = __cxa_begin_catch(a1);
      v22 = (*(*v21 + 24))(v21);
      if (!v15)
      {
        goto LABEL_34;
      }

      v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v22, 0);
LABEL_33:
      *v15 = v23;
      goto LABEL_34;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v28 = (*(*v27 + 24))(v27);
      if (v15)
      {
        *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], v28, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v29);
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_34;
  }

  v24 = __cxa_begin_catch(a1);
  v25 = v24[36];
  if (v25 > 0x1A)
  {
    goto LABEL_30;
  }

  v20 = -67033;
  v26 = 1 << v25;
  if ((v26 & 0x800108) != 0)
  {
    goto LABEL_31;
  }

  if ((v26 & 0x4014000) != 0)
  {
    v20 = -67032;
  }

  else
  {
LABEL_30:
    v20 = (*(*v24 + 24))(v24);
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_34;
  }

  goto LABEL_32;
}

void sub_188929864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929834);
}

void sub_188929AD4(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929AA4);
}

uint64_t SecCodeCopyInternalRequirement(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, int a3, void *a4)
{
  if (a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v5 = a2;
  v6 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v7 = Security::CodeSigning::SecStaticCode::internalRequirement(v6, v5);
  if (!v7)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  v8 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v10 = Security::SecCFObject::allocate(0x18, *(v8 + 304), v9);
  Security::CodeSigning::SecRequirement::SecRequirement(v10, v7, 0);
  v11 = Security::SecCFObject::handle(v10, 1);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  result = 0;
  *a4 = v11;
  return result;
}

void sub_188929D58(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929D20);
}

uint64_t SecCodeSetDetachedSignature(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, int a3)
{
  if (a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  Security::SecPointerBase::SecPointerBase(&v6, v4);
  Security::CodeSigning::SecStaticCode::detachedSignature(v6, a2);
  Security::CodeSigning::SecStaticCode::resetValidity(v6);
  Security::SecPointerBase::~SecPointerBase(&v6);
  return 0;
}

void sub_188929FA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929F88);
}

void sub_18892A4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v10 + 8))(v10);
  Security::SecPointerBase::~SecPointerBase(&a10);
  if (a2 == 6)
  {
    v13 = __cxa_begin_catch(exception_object);
    if (v13[36] == 8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v13 = __cxa_begin_catch(exception_object);
      v15 = v13[36];
      if (v15 <= 0x1A)
      {
        v16 = 1 << v15;
        if ((v16 & 0x800108) != 0 || (v16 & 0x4014000) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      (*(*v13 + 24))(v13);
LABEL_17:
      __cxa_end_catch();
LABEL_19:
      JUMPOUT(0x18892A418);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v17);
      }

      goto LABEL_17;
    }
  }

  v14 = __cxa_begin_catch(exception_object);
  (*(*v14 + 24))(v14);
  __cxa_end_catch();
  goto LABEL_19;
}

uint64_t SecStaticCodeSetCallback(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v7 = v6;
  if (a3)
  {
    *a3 = v6[74];
  }

  result = 0;
  v7[74] = a4;
  return result;
}

void sub_18892A778(void *a1, int a2)
{
  switch(a2)
  {
    case 6:
      v3 = __cxa_begin_catch(a1);
      if (v3[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v3 + 24))(v3);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v3 = __cxa_begin_catch(a1);
      v5 = v3[36];
      if (v5 > 0x1A)
      {
        goto LABEL_6;
      }

      v6 = 1 << v5;
      if ((v6 & 0x800108) == 0 && (v6 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v4 = __cxa_begin_catch(a1);
      (*(*v4 + 24))(v4);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v7);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892A75CLL);
}

uint64_t SecStaticCodeSetValidationConditions(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  if (a2)
  {
    v4 = v3;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    Security::CFCopyRef<__CFDictionary const*>::CFCopyRef(&v9, a2);
    LODWORD(v10) = -67024;
    v5 = Security::CFDictionary::get<__CFArray const*>(&v9, "omissions");
    Security::CFRef<__CFArray const*>::operator=(v4 + 21, v5);
    v6 = Security::CFDictionary::get<__CFArray const*>(&v9, "errors");
    v7 = v6;
    if (v6)
    {
      v11.length = CFArrayGetCount(v6);
      v11.location = 0;
      CFArrayApplyFunction(v7, v11, Security::CodeSigning::addError, v4 + 18);
    }

    Security::CFRef<__CFDictionary const*>::~CFRef(&v9);
  }

  return 0;
}

void sub_18892AA00(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  Security::CFRef<__CFDictionary const*>::~CFRef(&a9);
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

      goto LABEL_6;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A || (v14 = 1 << v13, (v14 & 0x800108) == 0) && (v14 & 0x4014000) == 0)
      {
LABEL_6:
        (*(*v11 + 24))(v11);
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892A9ECLL);
}

uint64_t SecStaticCodeCancelValidation(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v3 = v2;
  if ((*(v2 + 211) & 0x10) == 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  dispatch_assert_queue_V2(v2[39]);
  result = 0;
  *(v3 + 220) = 1;
  return result;
}

unint64_t SecCodeCopyComponent(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, const __CFData *a3)
{
  v5 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v6 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v7 = (*(*v5 + 80))(v5, a2, 4294900235);
  Security::CFCopyRef<__CFData const*>::CFCopyRef(&v15, v7);
  v8 = v15;
  if (v15)
  {
    if (a3)
    {
      v9 = *(v6 + 4);
      v10 = v6[36];
      if (CFDataGetLength(a3) != v10 || (BytePtr = CFDataGetBytePtr(a3), memcmp(&v6[bswap32(v9) + v10 * a2], BytePtr, v6[36])))
      {
        Length = CFDataGetLength(a3);
        Security::Syslog::notice("copyComponent hash mismatch slot %d length %d", v13, a2, Length);
        v8 = 0;
        goto LABEL_8;
      }

      v8 = v15;
    }

    v15 = 0;
  }

LABEL_8:
  Security::CFRef<__CFData const*>::~CFRef(&v15);
  return v8;
}

void sub_18892AF0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Security::CFRef<__CFData const*>::~CFRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18892AEF0);
}

uint64_t SecCodeSpecialSlotIsPresent(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = a2;
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v4 = Security::CodeSigning::SecStaticCode::codeDirectory(v3, 1);
  IsPresent = Security::CodeSigning::CodeDirectory::slotIsPresent(v4, -v2);
  v6 = MEMORY[0x1E695E4D0];
  if (!IsPresent)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  return *v6;
}

void sub_18892AF88(void *a1)
{
  __cxa_begin_catch(a1);
  v1 = *MEMORY[0x1E695E4C0];
  __cxa_end_catch();
  JUMPOUT(0x18892AF78);
}

uint64_t SecStaticCodeEnableOnlineNotarizationCheck(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = a2;
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  result = 0;
  v5 = v3[152] & 0xFFFFFFFE;
  if (v2)
  {
    ++v5;
  }

  v3[152] = v5;
  return result;
}

OSStatus SecCodeValidateFileResource(SecStaticCodeRef code, CFStringRef relativePath, CFDataRef fileData, SecCSFlags flags)
{
  v25 = *MEMORY[0x1E69E9840];
  if (fileData)
  {
    v5 = Security::CodeSigning::SecStaticCode::requiredStatic(code, relativePath);
    Security::cfString(&__p, relativePath);
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    if (Security::CodeSigning::SecStaticCode::loadResources(v5, &v19, &v18, &v17))
    {
      v6 = v18;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = __p;
      }

      Security::CFTempString::CFTempString<std::string>(key, &v16);
      Value = CFDictionaryGetValue(v6, key[0]);
      Security::CFRef<__CFString const*>::~CFRef(key);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v8 = 4294900242;
      if (Value)
      {
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[0] = v9;
        v15[1] = v9;
        Security::CodeSigning::ResourceSeal::ResourceSeal(v15, Value);
        v10 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
        if (Security::CodeSigning::ResourceSeal::hash(v15, v10[37]))
        {
          v11 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
          v24 = 0xAAAAAAAAAAAAAAAALL;
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v22 = v12;
          v23 = v12;
          *key = v12;
          v21 = v12;
          Security::CodeSigning::CodeDirectory::hashFor(v11[37]);
        }

        Security::CFRef<__CFDictionary const*>::~CFRef(v15);
      }
    }

    else
    {
      v8 = 4294900240;
    }

    Security::MacOSError::throwMe(v8);
  }

  Security::MacOSError::throwMe(0xFFFEFA03);
}

void sub_18892B3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  Security::CFRef<__CFString const*>::~CFRef(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a2 == 6)
  {
    v31 = __cxa_begin_catch(exception_object);
    if (v31[36] == 8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v31 = __cxa_begin_catch(exception_object);
      v33 = v31[36];
      if (v33 <= 0x1A)
      {
        v34 = 1 << v33;
        if ((v34 & 0x800108) != 0 || (v34 & 0x4014000) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      (*(*v31 + 24))(v31);
LABEL_21:
      __cxa_end_catch();
LABEL_23:
      JUMPOUT(0x18892B378);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v35);
      }

      goto LABEL_21;
    }
  }

  v32 = __cxa_begin_catch(exception_object);
  (*(*v32 + 24))(v32);
  __cxa_end_catch();
  goto LABEL_23;
}

void sub_18892B660(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18892B658);
}

OSStatus SecRequirementCreateWithData(CFDataRef data, SecCSFlags flags, SecRequirementRef *requirement)
{
  if (flags)
  {
    v13 = 4294900226;
    goto LABEL_12;
  }

  v5 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v7 = Security::SecCFObject::allocate(0x18, *(v5 + 304), v6);
  BytePtr = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);
  *(v7 + 8) = 1;
  *v7 = &unk_1EFA8BBE0;
  *(v7 + 16) = 0;
  if (Length < 0xC)
  {
LABEL_10:
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  if (*BytePtr != 843514 || (v10 = bswap32(BytePtr[1]), v10 <= 0xB))
  {
    *__error() = 22;
    goto LABEL_10;
  }

  if (Length != v10)
  {
    goto LABEL_10;
  }

  *(v7 + 16) = Security::Blob<Security::CodeSigning::Requirement,4208856064u>::clone(BytePtr);
  v11 = Security::SecCFObject::handle(v7, 1);
  if (!requirement)
  {
    v13 = 4294900227;
LABEL_12:
    Security::MacOSError::throwMe(v13);
  }

  *requirement = v11;
  return 0;
}

void sub_18892B78C(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892B744);
}

OSStatus SecRequirementCreateWithStringAndErrors(CFStringRef text, SecCSFlags flags, CFErrorRef *errors, SecRequirementRef *requirement)
{
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v8 = Security::SecCFObject::allocate(0x18, *(v6 + 304), v7);
  Security::cfString(&__p, text);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  memset(&v20, 0, sizeof(v20));
  v9 = *(*(Security::ModuleNexus<Security::CodeSigning::PluginHost>::operator()() + 72) + 24);
  v10 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v16;
  }

  v11 = v9(&v19, &v20);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v20;
    }

    Security::CFTempString::CFTempString<std::string>(&v18, &v17);
    Security::CodeSigning::CSError::throwMe(0xFFFEFA14, @"SecRequirementSyntax", v18, v14);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
LABEL_13:
  Security::CodeSigning::SecRequirement::SecRequirement(v8, v11, 1);
  v12 = Security::SecCFObject::handle(v8, 1);
  if (!requirement)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *requirement = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_18892BB20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 49) < 0)
  {
    operator delete(*(v37 - 72));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  Security::SecCFObject::operator delete(v36);
  switch(a2)
  {
    case 7:
      v40 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v40, v35);
      goto LABEL_38;
    case 6:
      v41 = __cxa_begin_catch(a1);
      if (v41[36] == 8)
      {
        v42 = -67049;
      }

      else
      {
        v42 = (*(*v41 + 24))(v41);
      }

      if (v35)
      {
LABEL_36:
        v45 = CFErrorCreate(0, *MEMORY[0x1E695E638], v42, 0);
        goto LABEL_37;
      }

LABEL_38:
      __cxa_end_catch();
      JUMPOUT(0x18892BA78);
    case 5:
      v43 = __cxa_begin_catch(a1);
      v44 = (*(*v43 + 24))(v43);
      if (!v35)
      {
        goto LABEL_38;
      }

      v45 = CFErrorCreate(0, *MEMORY[0x1E695E638], v44, 0);
LABEL_37:
      *v35 = v45;
      goto LABEL_38;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v49 = __cxa_begin_catch(a1);
      v50 = (*(*v49 + 24))(v49);
      if (v35)
      {
        *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], v50, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v35)
        {
          *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v51);
        if (v35)
        {
          *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_38;
  }

  v46 = __cxa_begin_catch(a1);
  v47 = v46[36];
  if (v47 > 0x1A)
  {
    goto LABEL_34;
  }

  v42 = -67033;
  v48 = 1 << v47;
  if ((v48 & 0x800108) != 0)
  {
    goto LABEL_35;
  }

  if ((v48 & 0x4014000) != 0)
  {
    v42 = -67032;
  }

  else
  {
LABEL_34:
    v42 = (*(*v46 + 24))(v46);
  }

LABEL_35:
  if (!v35)
  {
    goto LABEL_38;
  }

  goto LABEL_36;
}

void *Security::CodeSigning::SecRequirement::required(Security::CodeSigning::SecRequirement *this, __SecRequirement *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

void sub_18892C20C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  switch(a2)
  {
    case 6:
      v16 = __cxa_begin_catch(a1);
      if (v16[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v16 + 24))(v16);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v16 = __cxa_begin_catch(a1);
      v18 = v16[36];
      if (v18 > 0x1A)
      {
        goto LABEL_6;
      }

      v19 = 1 << v18;
      if ((v19 & 0x800108) == 0 && (v19 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v17 = __cxa_begin_catch(a1);
      (*(*v17 + 24))(v17);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v20);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892C1D8);
}

_DWORD *Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::make(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 == a1 + 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v5 += bswap32(*(v3[5] + 4));
      v3 = v8;
    }

    while (v8 != v4);
  }

  v10 = v5 + 8 * v2;
  v11 = v10 + 12;
  v12 = malloc_type_malloc((v10 + 12), 0x10000403E1C8BA9uLL);
  if (!v12)
  {
    Security::UnixError::throwMe(0xC);
  }

  v13 = v12;
  v14 = *(a1 + 4);
  *v12 = 17620730;
  v12[1] = bswap32(v11);
  v12[2] = bswap32(v14);
  v15 = *a1;
  if (*a1 != v4)
  {
    v16 = 0;
    v17 = 8 * v2 + 12;
    do
    {
      v18 = &v13[2 * v16 + 3];
      *v18 = bswap32(*(v15 + 8));
      v18[1] = bswap32(v17);
      memcpy(v13 + v17, v15[5], bswap32(*(v15[5] + 4)));
      v19 = v15[1];
      v20 = v15;
      if (v19)
      {
        do
        {
          v21 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v21 = v20[2];
          v9 = *v21 == v20;
          v20 = v21;
        }

        while (!v9);
      }

      v17 += bswap32(*(v15[5] + 4));
      ++v16;
      v15 = v21;
    }

    while (v21 != v4);
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[7] = v22;
  v46[8] = v22;
  v46[5] = v22;
  v46[6] = v22;
  v46[3] = v22;
  v46[4] = v22;
  v46[1] = v22;
  v46[2] = v22;
  v46[0] = v22;
  v44 = v22;
  v45 = v22;
  *__src = v22;
  *__p = v22;
  v40 = v22;
  v41 = v22;
  v39 = v22;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Maker ", 6);
  v23 = MEMORY[0x18CFD9640](&v39, a1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " assembles ", 11);
  v25 = MEMORY[0x18CFD9670](v24, a1[2]);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " blob(s) into ", 14);
  v27 = MEMORY[0x18CFD9640](v26, v13);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " (size=", 7);
  v29 = MEMORY[0x18CFD9660](v28, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
  v30 = secLogObjForScope("superblob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if ((BYTE8(v45) & 0x10) != 0)
    {
      v34 = v45;
      if (v45 < __src[1])
      {
        *&v45 = __src[1];
        v34 = __src[1];
      }

      v35 = __src[0];
    }

    else
    {
      if ((BYTE8(v45) & 8) == 0)
      {
        v33 = 0;
        v38 = 0;
LABEL_37:
        *(&__dst + v33) = 0;
        p_dst = &__dst;
        if (v38 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v49 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v38 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_21;
      }

      v35 = *(&v40 + 1);
      v34 = *(&v41 + 1);
    }

    v33 = v34 - v35;
    if ((v34 - v35) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    v38 = v34 - v35;
    if (v33)
    {
      memmove(&__dst, v35, v33);
    }

    goto LABEL_37;
  }

LABEL_21:
  *&v39 = *MEMORY[0x1E69E54E8];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v39 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v39 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v40);
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v46);
  v31 = *MEMORY[0x1E69E9840];
  return v13;
}

_DWORD *Security::Blob<Security::CodeSigning::Requirement,4208856064u>::clone(Security::BlobCore *a1)
{
  result = Security::BlobCore::clone(a1);
  v2 = bswap32(result[1]);
  if (*result != 843514 || v2 <= 0xB)
  {
    v4 = __error();
    result = 0;
    *v4 = 22;
  }

  return result;
}

void Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::add(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *v11 = a2;
  *&v11[8] = a3;
  v6 = std::__tree<std::__value_type<unsigned int,Security::BlobCore *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::BlobCore *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::BlobCore *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,Security::BlobCore *>>(a1, a2);
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = secLogObjForScope("superblob");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 134218240;
      *&v11[4] = a1;
      *&v11[12] = 1024;
      *&v11[14] = a2;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "Maker %p replaces type=%d", v11, 0x12u);
    }

    free(v8[5]);
    v8[5] = a3;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t *std::__tree<std::__value_type<unsigned int,Security::BlobCore *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::BlobCore *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::BlobCore *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,Security::BlobCore *>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *Security::BlobCore::clone(Security::BlobCore *this)
{
  v2 = malloc_type_malloc(bswap32(*(this + 1)), 0x100004000313F17uLL);
  if (!v2)
  {
    Security::UnixError::throwMe(0xC);
  }

  v3 = bswap32(*(this + 1));

  return memcpy(v2, this, v3);
}

const void **Security::CFRef<__SecRequirement *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t SecRequirementCreateWithLightweightCodeRequirementData(const __CFData *a1, int a2, void *a3)
{
  if (a2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  result = 4294900227;
  if (a1 && a3)
  {
    v16 = 1024;
    v6 = malloc_type_malloc(0x400uLL, 0x10000403E1C8BA9uLL);
    v15 = v6;
    *v6 = 843514;
    v6[2] = 0x2000000;
    v17 = 12;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v9 = makeLightweightCodeRequirement(a1);
    if (!v9)
    {
      Security::MacOSError::throwMe(0xFFFFFC73);
    }

    Security::CodeSigning::Requirement::Maker::putData(&v15, BytePtr, Length);
    v10 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    v12 = Security::SecCFObject::allocate(0x18, *(v10 + 304), v11);
    v13 = v15;
    v15[1] = bswap32(v17);
    Security::CodeSigning::SecRequirement::SecRequirement(v12, v13, 1);
    v14 = Security::SecCFObject::handle(v12, 1);
    result = 0;
    *a3 = v14;
  }

  return result;
}

void sub_18892CCA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  Security::SecCFObject::operator delete(v10);
  free(0);
  switch(a2)
  {
    case 7:
      v14 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v14, v9);
      __cxa_end_catch();
      goto LABEL_33;
    case 6:
      v15 = __cxa_begin_catch(a1);
      if (v15[36] == 8)
      {
        v16 = v11 - 16;
      }

      else
      {
        v16 = (*(*v15 + 24))(v15);
      }

      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    case 5:
      v17 = __cxa_begin_catch(a1);
      v18 = (*(*v17 + 24))(v17);
      if (v9)
      {
        v19 = CFErrorCreate(0, *MEMORY[0x1E695E638], v18, 0);
LABEL_31:
        *v9 = v19;
        goto LABEL_32;
      }

      goto LABEL_32;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = (*(*v23 + 24))(v23);
      if (v9)
      {
        *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], v24, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v9)
        {
          *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v25);
        if (v9)
        {
          *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_32;
  }

  v20 = __cxa_begin_catch(a1);
  v21 = v20[36];
  if (v21 > 0x1A)
  {
    goto LABEL_28;
  }

  v22 = 1 << v21;
  v16 = -67033;
  if ((v22 & 0x800108) != 0)
  {
    goto LABEL_29;
  }

  if ((v22 & 0x4014000) != 0)
  {
    v16 = v11 + 1;
  }

  else
  {
LABEL_28:
    v16 = (*(*v20 + 24))(v20);
  }

LABEL_29:
  if (v9)
  {
LABEL_30:
    v19 = CFErrorCreate(0, *MEMORY[0x1E695E638], v16, 0);
    goto LABEL_31;
  }

LABEL_32:
  __cxa_end_catch();
LABEL_33:
  JUMPOUT(0x18892CC6CLL);
}

uint64_t mapFile(const char *a1, const void **a2, off_t *a3, char **a4)
{
  v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v15.st_blksize = v7;
  *v15.st_qspare = v7;
  v15.st_birthtimespec = v7;
  *&v15.st_size = v7;
  v15.st_mtimespec = v7;
  v15.st_ctimespec = v7;
  *&v15.st_uid = v7;
  v15.st_atimespec = v7;
  *&v15.st_dev = v7;
  v8 = open(a1, 0, 0);
  if (v8 == -1)
  {
    v11 = *__error();
    log_error(a4, "cannot open file %s, errno=%d\n");
  }

  else
  {
    v9 = v8;
    if (fstat(v8, &v15))
    {
      v10 = *__error();
      log_error(a4, "fstat(%s) failed, errno=%d\n");
    }

    else
    {
      v13 = mmap(0, v15.st_size, 1, 8194, v9, 0);
      if (v13 != -1)
      {
        v14 = v13;
        close(v9);
        *a2 = v14;
        *a3 = v15.st_size;
        return 1;
      }

      log_error(a4, "cannot mmap file %s\n");
    }
  }

  return 0;
}

BOOL vm_alloc(vm_address_t *a1, vm_size_t size, char **a3)
{
  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1);
  if (v5)
  {
    log_error(a3, "failed to allocate memory\n");
  }

  else
  {
    *a1 = address;
  }

  return v5 == 0;
}

uint64_t assure_signature_space(_DWORD *a1, unsigned int a2, unsigned int a3, unsigned int *a4, char **a5)
{
  v5 = *a1;
  v6 = *a1 == -822415874 || v5 == -805638658;
  v7 = v6;
  v8 = a1[3];
  v9 = bswap32(v8);
  if (v6)
  {
    v8 = v9;
  }

  if (v8 > 0xB || ((1 << v8) & 0x9C4) == 0)
  {
    log_error(a5, "mach-o filetype (%d) does not support code signing\n");
    return 0;
  }

  v11 = v5 == -805638658 || v5 == -17958193;
  v12 = 7;
  if (v11)
  {
    v12 = 8;
  }

  v13 = a1[5];
  v14 = bswap32(a1[4]);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = a1[4];
  }

  LODWORD(v16) = bswap32(v13);
  if (v7)
  {
    v16 = v16;
  }

  else
  {
    v16 = v13;
  }

  if (!v15)
  {
    goto LABEL_68;
  }

  v86 = a5;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &a1[v12];
  v81 = v16;
  v22 = (&a1[v12] + v16);
  v23 = &a1[v12];
  do
  {
    v24 = *v23;
    v25 = bswap32(*v23);
    if (v7)
    {
      v24 = v25;
    }

    v26 = bswap32(*(v23 + 1));
    if (v7)
    {
      v27 = v26;
    }

    else
    {
      v27 = *(v23 + 1);
    }

    switch(v24)
    {
      case 1u:
        if (!strcmp(v23 + 8, "__LINKEDIT"))
        {
          v18 = v23;
        }

        break;
      case 0x19u:
        if (!strcmp(v23 + 8, "__LINKEDIT"))
        {
          v19 = v23;
        }

        break;
      case 0x1Du:
        v17 = v23;
        break;
    }

    v23 += v27;
    if (v23 > v22)
    {
      log_error(v86, "malformed mach-o file, load command #%d is outside size of load commands\n");
      return 0;
    }

    ++v20;
  }

  while (v15 != v20);
  if (!v18)
  {
    v34 = a4;
    a5 = v86;
    v35 = a2;
    v36 = a1;
    v37 = a3;
    v38 = v81;
    if (v19)
    {
      v39 = *(v19 + 5);
      v40 = *(v19 + 6);
      v41 = bswap64(v39);
      if (v7)
      {
        v39 = v41;
      }

      v42 = bswap64(v40);
      if (v7)
      {
        v40 = v42;
      }

      v32 = __CFADD__(v39, v40);
      v43 = v39 + v40;
      if (!v32 && v43 <= a3)
      {
        goto LABEL_60;
      }

LABEL_69:
      log_error(a5, "malformed mach-o file, __LINKEDIT segment extends past end of file\n");
      return 0;
    }

LABEL_68:
    log_error(a5, "malformed mach-o file, no __LINKEDIT segment\n");
    return 0;
  }

  v28 = *(v18 + 8);
  v29 = *(v18 + 9);
  v30 = bswap32(v28);
  if (v7)
  {
    v28 = v30;
  }

  v31 = bswap32(v29);
  if (v7)
  {
    v29 = v31;
  }

  v32 = __CFADD__(v28, v29);
  v33 = v28 + v29;
  v34 = a4;
  a5 = v86;
  v35 = a2;
  v36 = a1;
  v37 = a3;
  v38 = v81;
  if (v32 || v33 > a3)
  {
    goto LABEL_69;
  }

LABEL_60:
  if (v17)
  {
    v44 = *(v17 + 2);
    v45 = *(v17 + 3);
    v46 = bswap32(v44);
    if (v7)
    {
      v44 = v46;
    }

    v47 = bswap32(v45);
    if (v7)
    {
      v45 = v47;
    }

    v32 = __CFADD__(v44, v45);
    v48 = v44 + v45;
    if (v32)
    {
      log_error(a5, "malformed mach-o file, LC_CODE_SIGNATURE offset + size overflows\n");
    }

    else if (v48 >= v37 - 7)
    {
      v65 = bswap32(v35);
      if (!v7)
      {
        v65 = v35;
      }

      *(v17 + 3) = v65;
      v66 = *v34;
      v32 = __CFADD__(v44, v35);
      v64 = v44 + v35;
      *v34 = v64;
      if (!v32)
      {
        if (v66 > v64)
        {
          bzero(v36 + v64, v66 - v64);
          v64 = *v34;
        }

        goto LABEL_112;
      }

      log_error(a5, "mew sigSpace causes overflow\n");
    }

    else
    {
      log_error(a5, "malformed mach-o file, LC_CODE_SIGNATURE does not point to end of file\n");
    }

    return 0;
  }

  v50 = 1;
  v51 = 96;
  v52 = v15;
  v53 = 1;
  while (2)
  {
    v54 = bswap32(*v21);
    if (!v7)
    {
      v54 = *v21;
    }

    v55 = bswap32(*(v21 + 1));
    if (!v7)
    {
      v55 = *(v21 + 1);
    }

    if (v54 != 25)
    {
      if (v54 == 1 && !*(v21 + 8) && *(v21 + 9) && *(v21 + 12))
      {
        goto LABEL_129;
      }

      goto LABEL_85;
    }

    if (*(v21 + 5) || !*(v21 + 6) || !*(v21 + 16))
    {
LABEL_85:
      v21 += v55;
      v53 = v50++ < v15;
      if (!--v52)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  v51 = 120;
LABEL_129:
  v79 = *&v21[v51];
  v80 = bswap32(v79);
  if (v7)
  {
    v79 = v80;
  }

  if (v53 && v38 + 16 > v79)
  {
    log_error(a5, "not enough room in load commands to add LC_CODE_SIGNATURE\n");
    return 0;
  }

LABEL_86:
  v56 = v38 + 16;
  v57 = bswap32(v38 + 16);
  if (v7)
  {
    v56 = v57;
  }

  v58 = bswap32(v15 + 1);
  if (!v7)
  {
    v58 = v15 + 1;
  }

  v36[4] = v58;
  v36[5] = v56;
  if (v7)
  {
    v59 = 486539264;
  }

  else
  {
    v59 = 29;
  }

  if (v7)
  {
    v60 = 0x10000000;
  }

  else
  {
    v60 = 16;
  }

  *v22 = v59;
  v22[1] = v60;
  v61 = (v37 + 15) & 0xFFFFFFF0;
  v62 = bswap32(v61);
  if (!v7)
  {
    v62 = (v37 + 15) & 0xFFFFFFF0;
  }

  v63 = bswap32(v35);
  if (!v7)
  {
    v63 = v35;
  }

  v22[2] = v62;
  v22[3] = v63;
  v32 = __CFADD__(v61, v35);
  v64 = v61 + v35;
  *v34 = v64;
  if (v32)
  {
    log_error(a5, "sigSpace + appendOffset overflows\n");
    return 0;
  }

LABEL_112:
  if (v18)
  {
    v67 = *(v18 + 8);
    v68 = bswap32(v67);
    if (v7)
    {
      v67 = v68;
    }

    v69 = v64 - v67;
    v70 = (v69 + 0x3FFF) & 0xFFFFC000;
    v71 = bswap32(v69);
    if (v7)
    {
      v69 = v71;
    }

    *(v18 + 9) = v69;
    v72 = bswap32(v70);
    if (!v7)
    {
      v72 = v70;
    }

    *(v18 + 7) = v72;
  }

  else
  {
    v73 = *(v19 + 5);
    v74 = bswap64(v73);
    if (v7)
    {
      v73 = v74;
    }

    v75 = v64 - v73;
    v76 = (v75 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    v77 = bswap64(v75);
    if (v7)
    {
      v75 = v77;
    }

    *(v19 + 6) = v75;
    v78 = bswap64(v76);
    if (!v7)
    {
      v78 = v76;
    }

    *(v19 + 4) = v78;
  }

  return 1;
}

uint64_t writeFile(const char *a1, char *a2, unsigned int a3, char **a4)
{
  v7 = open(a1, 1537, 511);
  if (v7 == -1)
  {
    v15 = *__error();
    log_error(a4, "can't open output file for writing: %s, errno=%d\n");
  }

  else
  {
    v8 = v7;
    v9 = 0;
    if (a3)
    {
      v10 = a3;
      while (1)
      {
        v11 = v10 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v10;
        v12 = write(v8, a2, v11);
        if (v12 == -1)
        {
          break;
        }

        if (v12)
        {
          a2 += v12;
          v9 += v12;
          v10 -= v12;
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
LABEL_10:
      if (v9 == a3)
      {
        close(v8);
        return 1;
      }
    }

    v14 = *__error();
    log_error(a4, "can't write to output file (len: %d): %s, errno=%d\n");
  }

  return 0;
}

BOOL vm_dealloc(void **a1, uint64_t a2, char **a3)
{
  v5 = MEMORY[0x18CFDBE70](*MEMORY[0x1E69E9A60], *a1, a2);
  if (v5)
  {
    log_error(a3, "failed to deallocate memory\n");
  }

  else
  {
    *a1 = 0;
  }

  return v5 == 0;
}

uint64_t remove_signature_space(int *a1, unsigned int a2, unsigned int *a3, char **a4)
{
  v4 = *a1;
  v5 = *a1 == -822415874 || v4 == -805638658;
  v6 = v5;
  v7 = a1[3];
  v8 = bswap32(v7);
  if (v5)
  {
    v7 = v8;
  }

  if (v7 > 0xB || ((1 << v7) & 0x9C4) == 0)
  {
    log_error(a4, "mach-o filetype (%d) does not support code signing");
    return 0;
  }

  v11 = v4 == -805638658 || v4 == -17958193;
  v12 = 7;
  if (v11)
  {
    v12 = 8;
  }

  v13 = a1[5];
  v14 = bswap32(a1[4]);
  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = a1[4];
  }

  LODWORD(v16) = bswap32(v13);
  if (v6)
  {
    v16 = v16;
  }

  else
  {
    v16 = v13;
  }

  if (!v15)
  {
    goto LABEL_74;
  }

  v65 = a4;
  v17 = 0;
  v66 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &a1[v12];
  v62 = v16;
  v22 = &a1[v12] + v16;
  do
  {
    v23 = *v21;
    v24 = bswap32(*v21);
    if (v6)
    {
      v23 = v24;
    }

    v25 = bswap32(*(v21 + 1));
    if (v6)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(v21 + 1);
    }

    if (v23 > 24)
    {
      if (v23 == 25)
      {
        if (!strcmp(v21 + 8, "__LINKEDIT"))
        {
          v18 = v21;
        }
      }

      else if (v23 == 29)
      {
        v17 = v21;
      }
    }

    else if (v23 == 1)
    {
      v27 = strcmp(v21 + 8, "__LINKEDIT");
      v28 = v66;
      if (!v27)
      {
        v28 = v21;
      }

      v66 = v28;
    }

    else if (v23 == 2)
    {
      v20 = v21;
    }

    v21 += v26;
    if (v21 > v22)
    {
      log_error(v65, "malformed mach-o file, load command #%d is outside size of load commands\n");
      return 0;
    }

    ++v19;
  }

  while (v15 != v19);
  if (!v66)
  {
    v35 = a3;
    a4 = v65;
    v36 = a2;
    if (v18)
    {
      v37 = *(v18 + 5);
      v38 = *(v18 + 6);
      v39 = bswap64(v37);
      if (v6)
      {
        v37 = v39;
      }

      v40 = bswap64(v38);
      if (v6)
      {
        v38 = v40;
      }

      v33 = __CFADD__(v37, v38);
      v41 = v37 + v38;
      if (v33 || v41 > a2)
      {
        goto LABEL_75;
      }

      goto LABEL_64;
    }

LABEL_74:
    log_error(a4, "malformed mach-o file, no __LINKEDIT segment\n");
    return 0;
  }

  v29 = *(v66 + 8);
  v30 = *(v66 + 9);
  v31 = bswap32(v29);
  if (v6)
  {
    v29 = v31;
  }

  v32 = bswap32(v30);
  if (v6)
  {
    v30 = v32;
  }

  v33 = __CFADD__(v29, v30);
  v34 = v29 + v30;
  v35 = a3;
  a4 = v65;
  v36 = a2;
  if (v33 || v34 > a2)
  {
LABEL_75:
    log_error(a4, "malformed mach-o file, __LINKEDIT segment extends past end of file\n");
    return 0;
  }

LABEL_64:
  if (!v17)
  {
    return 1;
  }

  v42 = *(v17 + 3);
  v43 = bswap32(*(v17 + 2));
  if (v6)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(v17 + 2);
  }

  v45 = bswap32(v42);
  if (v6)
  {
    v46 = v45;
  }

  else
  {
    v46 = v42;
  }

  v47 = v44 + v46;
  if (__CFADD__(v44, v46))
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE wraps around\n");
    return 0;
  }

  if (v47 < v36 - 7)
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE does not point to end of file\n");
    return 0;
  }

  if (v47 > *v35)
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE points past the end of the mach-o\n");
    return 0;
  }

  bzero(a1 + v44, v46);
  *v35 = v44;
  v49 = v15 - 1;
  v50 = bswap32(v15 - 1);
  if (v6)
  {
    v49 = v50;
  }

  *v17 = 0;
  *(v17 + 1) = 0;
  v51 = bswap32(v62 - 16);
  if (!v6)
  {
    v51 = v62 - 16;
  }

  a1[4] = v49;
  a1[5] = v51;
  if (v17 + 16 < v22)
  {
    memmove(v17, v17 + 16, v22 - (v17 + 16));
    *(v22 - 2) = 0;
    *(v22 - 1) = 0;
  }

  v52 = *v35;
  if (v20)
  {
    v53 = *(v20 + 5) + *(v20 + 4);
    if (v52 > v53 && v52 <= v53 + 12)
    {
      *v35 = v53;
      v52 = v53;
    }
  }

  if (v66)
  {
    v54 = *(v66 + 8);
    v55 = bswap32(v54);
    if (v6)
    {
      v54 = v55;
    }

    v56 = v52 - v54;
    v57 = bswap32(v56);
    if (v6)
    {
      v56 = v57;
    }

    *(v66 + 9) = v56;
  }

  else
  {
    v58 = *(v18 + 5);
    v59 = bswap64(v58);
    if (v6)
    {
      v58 = v59;
    }

    v60 = v52 - v58;
    v61 = bswap64(v60);
    if (v6)
    {
      v60 = v61;
    }

    *(v18 + 6) = v60;
  }

  return 1;
}

void Security::CodeSigning::DiskRep::strictValidate(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    v6 = *(a3 + 8);
    v4 = a3 + 8;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v4;
    do
    {
      if (*(v5 + 28) >= -67002)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 28) < -67002));
    }

    while (v5);
    if (v7 == v4 || *(v7 + 28) > -67002)
    {
LABEL_10:
      Security::MacOSError::throwMe(0xFFFEFA46);
    }
  }
}

uint64_t Security::CodeSigning::DiskRep::pageSize()
{
  return 0;
}

{
  return 0;
}

CFArrayRef Security::CodeSigning::DiskRep::modifiedFiles(Security::CodeSigning::DiskRep *this)
{
  (*(*this + 40))(__p);
  if (v9 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  CFURL = Security::makeCFURL(v2, 0, 0, v1);
  v5 = CFURL;
  v10 = CFURL;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  CFArray = Security::makeCFArray(CFURL, v4, v5);
  Security::CFRef<__CFURL const*>::~CFRef(&v10);
  return CFArray;
}

void Security::CodeSigning::DiskRep::canonicalIdentifier(std::string *a1, uint64_t a2)
{
  memset(&__str, 170, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v5 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __str.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    v9 = p_str + v8;
    while (v8)
    {
      v10 = *--v9;
      --v8;
      if (v10 == 47)
      {
        v11 = v9 - p_str;
        if (v11 != -1)
        {
          std::string::basic_string(&v22, &__str, v11 + 1, 0xFFFFFFFFFFFFFFFFLL, &v24);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v22;
          v3 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          size = v22.__r_.__value_.__l.__size_;
          v5 = v22.__r_.__value_.__r.__words[0];
          v4 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        break;
      }
    }
  }

  if ((v4 & 0x80u) != 0)
  {
    v3 = size;
  }

  else
  {
    v5 = &__str;
  }

  if (v3)
  {
    v12 = v5 + v3;
    while (v3)
    {
      v13 = *--v12;
      --v3;
      if (v13 == 46)
      {
        v14 = v12 - v5;
        if (v12 - v5 == -1 || memchr("0123456789", v12[1], 0xBuLL))
        {
          break;
        }

        std::string::basic_string(&v22, &__str, 0, v14, &v24);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v22;
        v4 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        if ((*(&v22.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }
    }
  }

  if ((v4 & 0x80) != 0)
  {
LABEL_33:
    v16 = __str.__r_.__value_.__r.__words[0];
    if (!memchr("0123456789.", *__str.__r_.__value_.__l.__data_, 0xCuLL))
    {
      v15 = __str.__r_.__value_.__l.__size_;
      goto LABEL_36;
    }

LABEL_34:
    *a1 = __str;
    return;
  }

LABEL_28:
  if (memchr("0123456789.", __str.__r_.__value_.__s.__data_[0], 0xCuLL))
  {
    goto LABEL_34;
  }

  v15 = v4;
  v16 = &__str;
  do
  {
LABEL_36:
    v17 = v15--;
  }

  while (memchr("0123456789.", v16->__r_.__value_.__s.__data_[v15], 0xCuLL));
  v18 = v16->__r_.__value_.__s.__data_[v17] == 46;
  if (v16->__r_.__value_.__s.__data_[v17] == 46)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v17;
  }

  if ((v4 & 0x80u) == 0)
  {
    v20 = v4;
  }

  else
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  if (v19 < v20)
  {
    v21 = v16->__r_.__value_.__r.__words + v18 + 1;
    while (memchr("0123456789", *(v21 + v15), 0xBuLL))
    {
      ++v21;
      if (++v19 >= v20)
      {
        v19 = v20;
        break;
      }
    }
  }

  std::string::basic_string(a1, &__str, 0, v19, &v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_18892DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18892E034(_Unwind_Exception *a1)
{
  Security::CodeSigning::SingleDiskRep::Writer::~Writer(v2);
  MEMORY[0x18CFD9760](v2, v1);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SingleDiskRep::Writer::~Writer(Security::CodeSigning::SingleDiskRep::Writer *this)
{
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

void Security::CodeSigning::FileDiskRep::Writer::flush(Security::CodeSigning::FileDiskRep::Writer *this)
{
  v2 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  v3 = Security::UnixPlusPlus::FileDesc::listAttr(*v2, 0, 0);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::UnixPlusPlus::FileDesc::listAttr(*v4, 0, 0);
}

void sub_18892E218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::Writer::remove(Security::CodeSigning::FileDiskRep::Writer *this)
{
  v2 = 0;
  do
  {
    v3 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v2);
    if (v3)
    {
      v4 = v3;
      v5 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
      Security::CodeSigning::FileDiskRep::attrName(&__p, v4);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      Security::UnixPlusPlus::FileDesc::removeAttr(*v5, v6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v2 = (v2 + 1);
  }

  while (v2 != 12);
  v7 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::CodeSigning::FileDiskRep::attrName(&__p, "CodeSignature");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Security::UnixPlusPlus::FileDesc::removeAttr(*v7, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18892E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::attrName(std::string *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "com.apple.cs.");
  v4 = strlen(a2);
  v5 = std::string::append(&v6, a2, v4);
  *this = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_18892E3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::Writer::component(Security::CodeSigning::FileDiskRep::Writer *this, Security::CodeSigning::CodeDirectory *a2, const __CFData *a3)
{
  memset(&__p, 170, sizeof(__p));
  v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
  Security::CodeSigning::FileDiskRep::attrName(&__p, v5);
  v6 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (fsetxattr(*v6, p_p, BytePtr, Length, 0, 0) == -1)
  {
    v10 = __error();
    Security::UnixError::throwMe(*v10);
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (!*std::__tree<std::string>::__find_equal<std::string>(this + 176, &v12, &__p))
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
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

void Security::CodeSigning::FileDiskRep::Writer::~Writer(char **this)
{
  *this = &unk_1EFA8B688;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(this + 13);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 12));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B688;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(this + 13);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 12));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

void *Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}