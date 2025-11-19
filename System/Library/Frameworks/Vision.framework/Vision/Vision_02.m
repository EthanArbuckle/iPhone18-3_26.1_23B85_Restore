void ___ZN5apple6vision9libraries8facecore3mod6bundle17initializeGlobalsEv_block_invoke()
{
  v0 = objc_opt_new();
  v1 = apple::vision::libraries::facecore::mod::bundle::_semaphore;
  apple::vision::libraries::facecore::mod::bundle::_semaphore = v0;

  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.VN"];
  v3 = apple::vision::libraries::facecore::mod::bundle::_bundle;
  apple::vision::libraries::facecore::mod::bundle::_bundle = v2;

  operator new();
}

void apple::vision::libraries::facecore::mod::bundle::getResourcePath(char *a1@<X0>, _BYTE *a2@<X8>)
{
  apple::vision::libraries::facecore::mod::bundle::initializeGlobals(a1);
  obj = apple::vision::libraries::facecore::mod::bundle::_semaphore;
  objc_sync_enter(obj);
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v6 = [apple::vision::libraries::facecore::mod::bundle::_bundle pathForResource:v5 ofType:0];
  if (!v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [apple::vision::libraries::facecore::mod::bundle::_bundle resourcePath];
    v9 = [v7 stringWithFormat:@"Error while trying to get resource path for file: %@, bundle resources path: %@ - resource not found (resource path == NULL)", v5, v8];

    [VNFaceCoreExceptionUtils throwRuntimeErrorException:v9];
  }

  std::string::basic_string[abi:ne200100]<0>(a2, [v6 UTF8String]);

  objc_sync_exit(obj);
}

void sub_23B038E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::bundle::getBundleResourcePath(apple::vision::libraries::facecore::mod::bundle *this@<X0>, _BYTE *a2@<X8>)
{
  apple::vision::libraries::facecore::mod::bundle::initializeGlobals(this);
  obj = apple::vision::libraries::facecore::mod::bundle::_semaphore;
  objc_sync_enter(obj);
  v3 = [apple::vision::libraries::facecore::mod::bundle::_bundle resourcePath];
  std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);

  objc_sync_exit(obj);
}

void sub_23B038F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(apple::vision::libraries::facecore::mod::bundle *a1)
{
  apple::vision::libraries::facecore::mod::bundle::initializeGlobals(a1);
  v2 = apple::vision::libraries::facecore::mod::bundle::_semaphore;
  objc_sync_enter(v2);
  v3 = apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::get(apple::vision::libraries::facecore::mod::bundle::_memoryBlockManager, a1);
  objc_sync_exit(v2);

  return v3;
}

void sub_23B038FF8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::get(uint64_t a1, uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v4)
  {
    apple::vision::libraries::facecore::mod::bundle::getResourcePath(a2, __p);
    if (v39 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = fopen(v6, "rb");
    if (!v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = *(a2 + 23);
      v10 = *a2;
      v11 = __error();
      if (v9 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = v10;
      }

      v13 = [v8 stringWithFormat:@"Could not open file: %s, error: %d", v12, *v11];
      [VNFaceCoreExceptionUtils throwRuntimeErrorException:v13];
    }

    if (fseek(v7, 0, 2))
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = *(a2 + 23);
      v16 = *a2;
      v17 = __error();
      if (v15 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = v16;
      }

      v19 = [v14 stringWithFormat:@"Error while calling fseek on file: %s, error: %d", v18, *v17];
      [VNFaceCoreExceptionUtils throwRuntimeErrorException:v19];
    }

    v20 = MEMORY[0x23EE98590](v7);
    if (v20 == -1)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = *(a2 + 23);
      v23 = *a2;
      v24 = __error();
      if (v22 >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = v23;
      }

      v26 = [v21 stringWithFormat:@"Error while calling ftell on file: %s, error: %d", v25, *v24];
      [VNFaceCoreExceptionUtils throwRuntimeErrorException:v26];
    }

    if (fseek(v7, 0, 0))
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = *(a2 + 23);
      v29 = *a2;
      v30 = __error();
      if (v28 >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = v29;
      }

      v32 = [v27 stringWithFormat:@"Error while calling fseek on file: %s, error: %d", v31, *v30];
      [VNFaceCoreExceptionUtils throwRuntimeErrorException:v32];
    }

    v33 = fileno(v7);
    v40 = a2;
    v34 = std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2);
    v34[7] = v20;
    v5 = v34 + 7;
    v35 = mmap(0, v20, 1, 1, v33, 0);
    v34[8] = v35;
    if (v35 == -1)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error while calling mmap, error: %d", *__error()];
      [VNFaceCoreExceptionUtils throwRuntimeErrorException:v36];
    }

    v34[9] = v7;
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = (v4 + 56);
  }

  return *v5;
}

void sub_23B0392D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::find<std::string>(uint64_t a1, void **a2)
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

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
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

void sub_23B0395FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::__map_value_compare<std::string,std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,apple::vision::libraries::facecore::mod::bundle::MemoryBlockManager::Entry>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

apple::vision::libraries::facecore::processing::detection::IntegralImage *apple::vision::libraries::facecore::processing::detection::IntegralImage::IntegralImage(apple::vision::libraries::facecore::processing::detection::IntegralImage *this, int a2, int a3)
{
  *(this + 20) = 0;
  *this = &unk_284DF3E28;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = vcvts_n_f32_s32(a3 - a2, 1uLL);
  *(this + 15) = malloc_type_valloc(2 * a2, 0x1000040BDFB0063uLL);
  *(this + 16) = malloc_type_valloc((*(this + 2) * *(this + 2)), 0x100004077774924uLL);
  *(this + 17) = malloc_type_valloc((*(this + 3) * *(this + 3)), 0x100004077774924uLL);
  v4 = malloc_type_valloc(4 * (*(this + 3) * *(this + 3)), 0x100004052888210uLL);
  *(this + 18) = v4;
  *(this + 152) = 0;
  *(this + 24) = *(this + 8);
  *(this + 5) = v4;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0x3F80000000000000;
  *(this + 10) = 0;
  *(this + 104) = 0;
  *(this + 12) = 0;
  *(this + 39) = 0;
  *(this + 20) = 0;
  return this;
}

void sub_23B05D9C0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 168) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::detection::IntegralImage::~IntegralImage(void **this)
{
  *this = &unk_284DF3E28;
  free(this[15]);
  free(this[16]);
  free(this[17]);
  free(this[18]);
  v2 = this[20];
  if (v2)
  {
    this[21] = v2;
    operator delete(v2);
  }
}

{
  apple::vision::libraries::facecore::processing::detection::IntegralImage::~IntegralImage(this);

  JUMPOUT(0x23EE98360);
}

uint64_t apple::vision::libraries::facecore::processing::detection::IntegralImage::setShadowLUT(uint64_t this, unsigned __int8 *a2)
{
  *(this + 104) = a2 != 0;
  *(this + 96) = a2;
  return this;
}

float apple::vision::libraries::facecore::processing::detection::IntegralImage::setImage(int32x2_t *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  this[11].i32[0] = a3;
  this[11].i32[1] = a4;
  this[19].i8[0] = 0;
  bzero(*&this[16], (this[1].i32[0] * this[1].i32[0]));
  v9 = this[1].i32[0];
  v10 = v9 / 2;
  if (a3 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  this[10].i32[0] = v10;
  this[10].i32[1] = v10;
  *v8.i32 = v11 / v9;
  if (*v8.i32 < 1.0)
  {
    *v8.i32 = 1.0;
  }

  this[9].i32[1] = v8.i32[0];
  v12 = vmin_s32(vdup_n_s32(v9), vcvt_s32_f32(vadd_f32(vdiv_f32(vcvt_f32_u32(__PAIR64__(a4, a3)), vdup_lane_s32(v8, 0)), 0x3F0000003F000000)));
  this[8] = v12;
  LODWORD(v13) = v12.i32[0];
  this[13].i16[1] = (v9 - v12.i32[0]) / 2;
  v14 = v12.i32[1];
  this[13].i16[3] = (v9 - v12.i32[1]) / 2;
  this[13].i16[2] = v12.i16[0] + (v9 - v12.i32[0]) / 2;
  this[14].i16[0] = v12.i16[2] + (v9 - v12.i32[1]) / 2;
  if (*v8.i32 <= 1.0)
  {
    if ((a4 * a3) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = v22;
        if (a3 >= 1)
        {
          v24 = &a2[v22];
          v25 = (*&this[16] + v23);
          v26 = a3;
          do
          {
            v28 = *v24++;
            v27 = v28;
            *v25 = v28;
            if (this[13].i8[0] == 1)
            {
              *v25 = *(*&this[12] + v27);
            }

            ++v25;
            --v26;
          }

          while (v26);
        }

        v22 = v23 + a3;
      }

      while ((v23 + a3) < (a4 * a3));
    }
  }

  else if (this[2].i8[4])
  {
    v46.data = a2;
    v46.height = a4;
    v46.width = a3;
    v46.rowBytes = a3;
    dest.data = this[3];
    v15.i64[0] = v12.i32[0];
    v15.i64[1] = v12.i32[1];
    *&dest.height = vextq_s8(v15, v15, 8uLL);
    dest.rowBytes = v12.i32[0];
    vImageScale_Planar8(&v46, &dest, 0, 0);
    if (this[13].i8[0] == 1)
    {
      v16 = this[8].i32[1];
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = 0;
        LODWORD(v19) = this[8].i32[0];
        do
        {
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = *&this[16] + v17;
            do
            {
              *(v21 + v20) = *(*&this[12] + *(v21 + v20));
              ++v20;
              v19 = this[8].i32[0];
            }

            while (v20 < v19);
            v16 = this[8].i32[1];
          }

          ++v18;
          v17 += v19;
        }

        while (v18 < v16);
      }
    }
  }

  else
  {
    if (v12.i32[0] >= 1)
    {
      v29 = 0;
      v30 = vdupq_n_s64(v12.u32[0] - 1);
      v31 = xmmword_23B2C7400;
      v32 = xmmword_23B2C7410;
      v33 = xmmword_23B253330;
      v34 = xmmword_23B251FC0;
      v35 = vdupq_n_s64(8uLL);
      v36 = (*&this[15] + 8);
      do
      {
        v37 = vmovn_s64(vcgeq_u64(v30, v34));
        if (vuzp1_s8(vuzp1_s16(v37, v8), v8).u8[0])
        {
          *(v36 - 4) = (*v8.i32 * v29);
        }

        if (vuzp1_s8(vuzp1_s16(v37, v8), *&v8).i8[1])
        {
          *(v36 - 3) = (*v8.i32 * (v29 + 1));
        }

        if (vuzp1_s8(vuzp1_s16(v8, vmovn_s64(vcgeq_u64(v30, *&v33))), *&v8).i8[2])
        {
          *(v36 - 2) = (*v8.i32 * (v29 + 2));
          *(v36 - 1) = (*v8.i32 * (v29 + 3));
        }

        v38 = vmovn_s64(vcgeq_u64(v30, v32));
        if (vuzp1_s8(*&v8, vuzp1_s16(v38, v8)).i32[1])
        {
          *v36 = (*v8.i32 * (v29 + 4));
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(v38, v8)).i8[5])
        {
          v36[1] = (*v8.i32 * (v29 + 5));
        }

        if (vuzp1_s8(*&v8, vuzp1_s16(v8, vmovn_s64(vcgeq_u64(v30, *&v31)))).i8[6])
        {
          v36[2] = (*v8.i32 * (v29 + 6));
          v36[3] = (*v8.i32 * (v29 + 7));
        }

        v29 += 8;
        v32 = vaddq_s64(v32, v35);
        v33 = vaddq_s64(v33, v35);
        v34 = vaddq_s64(v34, v35);
        v31 = vaddq_s64(v31, v35);
        v36 += 8;
      }

      while (((v13 + 7) & 0xFFFFFFF8) != v29);
    }

    if (v14 >= 1)
    {
      v39 = 0;
      for (i = 0; i < v14; ++i)
      {
        if (v13 >= 1)
        {
          v41 = 0;
          v42 = *&this[9].i32[1] * i;
          v43 = *&this[16] + v39;
          do
          {
            v44 = a2[v42 * a3 + *(*&this[15] + 2 * v41)];
            *(v43 + v41) = v44;
            if (this[13].i8[0] == 1)
            {
              *(v43 + v41) = *(*&this[12] + v44);
            }

            ++v41;
            v13 = this[8].i32[0];
          }

          while (v41 < v13);
          v14 = this[8].i32[1];
        }

        v39 += v13;
      }
    }
  }

  result = 1.0 / *&this[9].i32[1];
  *&this[9].i32[1] = result;
  return result;
}

void apple::vision::libraries::facecore::processing::detection::IntegralImage::setAnglePrivate(apple::vision::libraries::facecore::processing::detection::IntegralImage *this, float a2)
{
  *(this + 152) = 1;
  *(this + 18) = a2;
  v4 = (a2 * 0.0055556) * 3.1416;
  v5 = tanf(v4 * 0.5);
  v6 = sinf(v4);
  v7 = *(this + 3);
  v8 = (*(this + 2) - 1) >> 1;
  *(this + 20) = v8;
  *(this + 21) = v8;
  *(this + 3) = *(this + 16);
  v9 = *(this + 136);
  *(this + 2) = v9;
  bzero(v9, (v7 * v7));
  v10 = *(this + 3);
  v11 = v10 - 1;
  v12 = *(this + 16);
  v13 = *(this + 17);
  if (v13 * v12 >= 1)
  {
    v14 = 0;
    v15 = (v11 - v13) / 2 * v10 + (v11 - v12) / 2;
    do
    {
      memcpy((*(this + 4) + v15), (*(this + 3) + v14), v12);
      v12 = *(this + 16);
      v13 = *(this + 17);
      v14 += v12;
      v10 = *(this + 3);
      v15 += v10;
    }

    while (v14 < v13 * v12);
    v11 = v10 - 1;
  }

  v16 = fabsf(v5);
  v17 = (v16 * ((v13 - 1) >> 1));
  v18 = fabsf(v6);
  v19 = (v18 * (((v12 - 1) >> 1) - v17));
  v20 = v17 + ((v12 - 1) >> 1);
  v21 = v11 + (v11 >> 31);
  v22 = v11 / 2;
  v23 = v20 + (v16 * (((v13 - 1) >> 1) - (v18 * v20)));
  v24 = v11 / 2 - v23;
  v25 = v24 & 3;
  if (v23 - v11 / 2 >= 0)
  {
    v25 = -((v23 - v11 / 2) & 3);
  }

  v26 = (v24 - v25) & ~((v24 - v25) >> 31);
  v27 = v23 + v11 / 2;
  v28 = v27 & 3;
  if (v27 <= 0)
  {
    v28 = -(-v27 & 3);
  }

  v29 = v28 + v27;
  if (v29 < v10)
  {
    v11 = v29;
  }

  *(this + 12) = v26;
  *(this + 13) = v11;
  v30 = v19 + ((v13 - 1) >> 1);
  *(this + 14) = v22 - v30;
  *(this + 15) = v30 + (v21 >> 1);
  v31 = *(this + 18);
  if (fabsf(v31) > 0.001)
  {
    if (*(this + 20))
    {
      src.width = v12;
      src.rowBytes = v12;
      v32 = *(this + 4);
      src.data = *(this + 3);
      src.height = v13;
      v33.width = v10;
      v33.rowBytes = v10;
      v33.data = v32;
      v33.height = v10;
      vImageRotate_Planar8(&src, &v33, 0, a2 * -0.017453, 0, 4u);
    }

    else
    {
      performShearRotation(*(this + 4), v31, v10, v12, v13);
    }
  }

  bzero(*(this + 5), (4 * *(this + 3) * *(this + 3)));
}

void performShearRotation(unsigned __int8 *a1, float a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = (a2 * 0.0055556) * 3.1416;
  v10 = tanf(v9 * 0.5);
  v11 = sinf(v9);
  v12 = a3 / 2;
  v13 = (a3 - a5) / 2;
  v14 = v13 - a3 / 2;
  if (v14 < a3 / 2 - v13)
  {
    v15 = a3 * (~v13 + a3);
    v16 = 2 * v12 - 2 * v13;
    do
    {
      v17 = (v10 * v14);
      if (v17)
      {
        if (((v17 & 0x40000000) != 0) ^ __OFSUB__(v17, -v17) | (v17 == -v17))
        {
          v18 = -v17;
        }

        else
        {
          v18 = (v10 * v14);
        }

        v19 = v17 <= 0;
        if (v17 < 0)
        {
          v17 = -v17;
        }

        v20 = v18 + v15;
        if (v19)
        {
          v21 = v20;
        }

        else
        {
          v21 = v15;
        }

        if (v19)
        {
          v20 = v15;
        }

        memmove(&a1[v20], &a1[v21], a3 - v17);
      }

      ++v14;
      v15 -= a3;
      --v16;
    }

    while (v16);
  }

  v22 = (a3 - a4) / 2;
  v23 = vcvts_n_f32_s32(a5, 1uLL);
  v24 = fabsf(v10);
  v25 = (v23 * v24);
  LODWORD(v26) = v22 - v25;
  v27 = v22 - v25 - v12;
  if (v27 <= -2)
  {
    v28 = (a3 * a3);
    v29 = a1 - 2;
    v30 = (a3 - (a3 - a5) / 2) * a3;
    v31 = v22 + v13 * a3 - v25;
    v26 = v26;
    v32 = v28 - v13 * a3;
    v33 = v13 * a3;
    v34 = a3 * (a3 - v13 - 1) - v25;
    v35 = v28 - v13 * a3 - v25;
    v36 = -v25;
    v37 = v25 - (v28 - v13 * a3) - v22;
    v38 = v25 + v13 * a3 - v22 - 2;
    do
    {
      v39 = (v11 * ++v27);
      if (v39)
      {
        if (v39 >= 0)
        {
          v40 = (v11 * v27);
        }

        else
        {
          v40 = -v39;
        }

        if (v39 < 1)
        {
          if (v33 < v32)
          {
            v49 = v40 * a3;
            v50 = v31;
            do
            {
              v51 = v50 - v49;
              v52 = v28 - v50 - 2;
              if (((v50 - v49) & 0x8000000000000000) == 0)
              {
                a1[v51] = a1[v50];
                v29[v28 - v51] = a1[v52];
              }

              a1[v50] = 0;
              a1[v52] = 0;
              v50 += a3;
            }

            while (v50 < v26 + v32);
          }
        }

        else if (v30 >= v33)
        {
          if (((v39 & 0x40000000) != 0) ^ __OFSUB__(v39, -v39) | (v39 == -v39))
          {
            v41 = -v39;
          }

          else
          {
            v41 = (v11 * v27);
          }

          v42 = v36 + a3 * (a3 - v13 + v41);
          v43 = v37 + a3 * (a3 - v41);
          v44 = v38;
          v45 = v22;
          do
          {
            v46 = v35 + v45;
            if (v42 + v45 >= v28)
            {
              v47 = v44;
            }

            else
            {
              a1[v42 + v45] = a1[v46];
              v47 = v44;
              v29[v43] = a1[v44];
            }

            a1[v46] = 0;
            a1[v47] = 0;
            v48 = v34 + v45;
            v45 -= a3;
            v43 += a3;
            v44 += a3;
          }

          while (v26 + v33 <= v48);
        }
      }

      ++v26;
      ++v31;
      ++v22;
      --v37;
      --v38;
    }

    while (v27 != -1);
  }

  v53 = v13 - (fabsf(v11) * (vcvts_n_f32_s32(a4, 1uLL) - (v23 * v24)));
  v54 = v53 - v12;
  v55 = v12 - v53;
  if (v53 - v12 < v12 - v53)
  {
    v56 = a3 * (~v53 + a3);
    do
    {
      v57 = (v10 * v54);
      if (v57)
      {
        if (((v57 & 0x40000000) != 0) ^ __OFSUB__(v57, -v57) | (v57 == -v57))
        {
          v58 = -v57;
        }

        else
        {
          v58 = (v10 * v54);
        }

        v59 = v57 <= 0;
        if (v57 < 0)
        {
          v57 = -v57;
        }

        v60 = v58 + v56;
        if (v59)
        {
          v61 = v56;
        }

        else
        {
          v61 = v60;
        }

        if (!v59)
        {
          v60 = v56;
        }

        memmove(&a1[v61], &a1[v60], ~v57 + a3);
      }

      ++v54;
      v56 -= a3;
    }

    while (v54 < v55);
  }
}

uint64_t apple::vision::libraries::facecore::processing::detection::IntegralImage::computeIntegralImage(uint64_t this)
{
  v1 = *(this + 12);
  v2 = *(this + 48);
  v3 = v1 - v2;
  v4 = *(this + 56) * v1;
  v5 = v4 + v2;
  v7 = *(this + 32);
  v6 = *(this + 40);
  v8 = *(v7 + v4 + v2);
  *(v6 + 4 * (v4 + v2)) = v8;
  if (v1 - v2 >= 2)
  {
    v9 = (v2 + v4 + v7 + 1);
    v10 = (v6 + 4 * v5 + 4);
    v11 = v1 - v2 + 1;
    do
    {
      v12 = *v9++;
      v8 += v12;
      *v10++ = v8;
      --v11;
    }

    while (v11 > 2);
  }

  v13 = *(this + 56) + 1;
  if (v3 <= 0)
  {
    v14 = -(-v3 & 3);
  }

  else
  {
    v14 = v3 & 3;
  }

  LODWORD(v15) = *(this + 12);
  if (v13 < v15)
  {
    v16 = *(this + 48) + v13 * v15;
    v17 = (v6 + 4 * v16);
    v18 = (v7 + v16);
    do
    {
      v19 = &v17[-v15];
      if (v3 <= v14)
      {
        v20 = 0;
        v23 = v17;
        v22 = v18;
      }

      else
      {
        v20 = 0;
        v21 = v3;
        v22 = v18;
        v23 = v17;
        do
        {
          v24 = v20 + *v22;
          *v23 = v24 + *v19;
          v25 = v24 + v22[1];
          v23[1] = v25 + v19[1];
          v26 = v25 + v22[2];
          v23[2] = v26 + v19[2];
          v20 = v26 + v22[3];
          v23[3] = v20 + v19[3];
          v22 += 4;
          v23 += 4;
          v19 += 4;
          v21 -= 4;
        }

        while (v21 > v14);
      }

      v27 = v14 + 1;
      if (v14 >= 1)
      {
        do
        {
          v29 = *v22++;
          v28 = v29;
          v30 = *v19++;
          v20 += v28;
          *v23++ = v20 + v30;
          --v27;
        }

        while (v27 > 1);
      }

      v15 = *(this + 12);
      v18 += v15;
      v17 += v15;
      LODWORD(v13) = v13 + 1;
    }

    while (v13 < v15);
  }

  return this;
}

double apple::vision::libraries::facecore::processing::detection::IntegralImage::getOriginalCoord(apple::vision::libraries::facecore::processing::detection::IntegralImage *this, double a2, double a3, double *a4, double *a5)
{
  v8 = (*(this + 3) - 1);
  v9 = a2 - v8 * 0.5;
  v10 = a3 - v8 * 0.5;
  v11 = __sincos_stret(*(this + 18) * -0.0174532925);
  v12 = *(this + 19);
  v13 = *(this + 23);
  *a4 = (v11.__cosval * v9 - v11.__sinval * v10) / v12 + (*(this + 22) - 1) * 0.5;
  result = (v10 * v11.__cosval + v11.__sinval * v9) / v12 + (v13 - 1) * 0.5;
  *a5 = result;
  return result;
}

void apple::vision::libraries::facecore::processing::detection::IntegralImage::setROIs(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 160);
  v4 = (a1 + 160);
  v4[1] = v5;
  std::vector<apple::vision::libraries::facecore::utils::RegionOfInterest>::resize(v4, (a2[1] - *a2) >> 5);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if ((v7 >> 5) >= 1)
  {
    v8 = *(a1 + 76);
    v9 = (v7 >> 5) & 0x7FFFFFFF;
    v10 = (*(a1 + 160) + 8);
    v11 = (v6 + 28);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 1);
      v14 = *(v11 - 2);
      v15 = *v11;
      v11 += 8;
      v16 = (v8 * v13);
      v17 = (v8 * v15);
      v20 = 0.0;
      v21 = 0.0;
      apple::vision::libraries::facecore::processing::detection::IntegralImage::getRotatedScaledCoord(a1, vcvtd_n_f64_s32(v13, 1uLL) + v12, vcvtd_n_f64_s32(v15, 1uLL) + v14, &v21, &v20);
      v18 = v21 - v16 * 0.5;
      v19 = v20 - v17 * 0.5;
      *(v10 - 2) = v18;
      *(v10 - 1) = (v18 + v16);
      *v10 = v19;
      v10[1] = (v19 + v17);
      v10 += 8;
      --v9;
    }

    while (v9);
  }
}

void std::vector<apple::vision::libraries::facecore::utils::RegionOfInterest>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<apple::vision::libraries::facecore::utils::RegionOfInterest>::__append(a1, a2 - v2);
  }
}

double apple::vision::libraries::facecore::processing::detection::IntegralImage::getRotatedScaledCoord(apple::vision::libraries::facecore::processing::detection::IntegralImage *this, double a2, double a3, double *a4, double *a5)
{
  v8 = *(this + 19);
  v9 = (a2 - vcvtd_n_f64_s32(*(this + 22) - 1, 1uLL)) * v8;
  v10 = (a3 - vcvtd_n_f64_s32(*(this + 23) - 1, 1uLL)) * v8;
  v11 = __sincos_stret(*(this + 18) * -0.0174532925);
  v12 = (*(this + 3) - 1);
  *a4 = v11.__cosval * v9 + v11.__sinval * v10 + v12 * 0.5;
  result = v11.__cosval * v10 - v11.__sinval * v9 + v12 * 0.5;
  *a5 = result;
  return result;
}

uint64_t apple::vision::libraries::facecore::processing::detection::IntegralImage::getIntegral(apple::vision::libraries::facecore::processing::detection::IntegralImage *this)
{
  if ((*(this + 152) & 1) == 0)
  {
    (*(*this + 24))(this, *(this + 18));
    (*(*this + 40))(this);
  }

  return *(this + 5);
}

void std::vector<apple::vision::libraries::facecore::utils::RegionOfInterest>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::utils::RegionOfInterest>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::utils::RegionOfInterest>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void apple::vision::libraries::facecore::processing::detection::detectWindowsWithROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::vector[abi:ne200100](v22, ((*(a1 + 192) - *(a1 + 184)) >> 5));
  global_queue = dispatch_get_global_queue(2, 0);
  v13 = ((*(a1 + 192) - *(a1 + 184)) >> 5);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZN5apple6vision9libraries8facecore10processing9detection20detectWindowsWithROIERKNS2_15FaceCoreContextERKNSt3__16vectorItNS8_9allocatorItEEEERKNS4_13IntegralImageEdRKNS9_IPKNS4_8cascades9t_cascadeENSA_ISL_EEEERNS9_INS2_12FaceInternalENSA_ISQ_EEEE_block_invoke;
  v16[3] = &unk_278B7A5B0;
  v16[5] = a2;
  v16[6] = a3;
  *&v16[7] = a6;
  v16[8] = a4;
  v16[4] = &v17;
  dispatch_apply(v13, global_queue, v16);
  if (((*(a1 + 192) - *(a1 + 184)) >> 5) >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>,std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>>(a5, a5[1], *(v18[5] + v14), *(v18[5] + v14 + 8), 0x84BDA12F684BDA13 * ((*(v18[5] + v14 + 8) - *(v18[5] + v14)) >> 3));
      ++v15;
      v14 += 24;
    }

    while (v15 < ((*(a1 + 192) - *(a1 + 184)) >> 5));
  }

  _Block_object_dispose(&v17, 8);
  v23 = v22;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__destroy_vector::operator()[abi:ne200100](&v23);
}

void sub_23B05ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  *(v11 - 88) = v10;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__destroy_vector::operator()[abi:ne200100]((v11 - 88));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void apple::vision::libraries::facecore::processing::detection::detectWindowsInROI(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4, int a5, int a6, int a7, int a8, double a9)
{
  v9 = *a1;
  v10 = a1[1];
  if (((v10 - *a1) >> 1) >= 1)
  {
    v11 = a7;
    v19 = 0;
    do
    {
      v20 = *(v9 + 2 * v19);
      if ((a8 - v20) >= v11)
      {
        v21 = ((v20 * 0.05) + 1.0);
        do
        {
          v22 = a5;
          if (a6 - v20 >= a5)
          {
            do
            {
              if (apple::vision::libraries::facecore::processing::detection::evaluateCascade(a3, *(a2 + 40), v19, v22 + v11 * *(a2 + 12)))
              {
                apple::vision::libraries::facecore::processing::detection::addFaceToVector(*(*a1 + 2 * v19), v22, v11, a2, a4, a9);
              }

              v22 += v21;
              v9 = *a1;
              v23 = *(*a1 + 2 * v19);
            }

            while (v22 <= a6 - v23);
            LOWORD(v20) = *(*a1 + 2 * v19);
          }

          else
          {
            v23 = v20;
          }

          v11 += v21;
        }

        while (v11 <= a8 - v23);
        v10 = a1[1];
        v11 = a7;
      }

      ++v19;
    }

    while (v19 < ((v10 - v9) >> 1));
  }
}

void apple::vision::libraries::facecore::processing::detection::detectWindowsInROIWithGCD(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, int a7, int a8, double a9)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x4002000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::vector[abi:ne200100](v32, ((a1[1] - *a1) >> 1));
  global_queue = dispatch_get_global_queue(2, 0);
  v19 = ((a1[1] - *a1) >> 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN5apple6vision9libraries8facecore10processing9detection25detectWindowsInROIWithGCDERKNSt3__16vectorItNS5_9allocatorItEEEERKNS4_13IntegralImageEdRKNS6_IPKNS4_8cascades9t_cascadeENS7_ISI_EEEERNS6_INS2_12FaceInternalENS7_ISN_EEEEiiii_block_invoke;
  block[3] = &unk_278B7A780;
  v23 = a7;
  v24 = a8;
  v25 = a5;
  v26 = a6;
  block[6] = a3;
  block[7] = a2;
  *&block[8] = a9;
  block[4] = &v27;
  block[5] = a1;
  dispatch_apply(v19, global_queue, block);
  if (((a1[1] - *a1) >> 1) >= 1)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>,std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>>(a4, a4[1], *(v28[5] + v20), *(v28[5] + v20 + 8), 0x84BDA12F684BDA13 * ((*(v28[5] + v20 + 8) - *(v28[5] + v20)) >> 3));
      ++v21;
      v20 += 24;
    }

    while (v21 < ((a1[1] - *a1) >> 1));
  }

  _Block_object_dispose(&v27, 8);
  v33 = v32;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_23B05F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  *(v14 - 112) = v13;
  std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__destroy_vector::operator()[abi:ne200100]((v14 - 112));
  _Unwind_Resume(a1);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection25detectWindowsInROIWithGCDERKNSt3__16vectorItNS5_9allocatorItEEEERKNS4_13IntegralImageEdRKNS6_IPKNS4_8cascades9t_cascadeENS7_ISI_EEEERNS6_INS2_12FaceInternalENS7_ISN_EEEEiiii_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(**(a1 + 40) + 2 * a2);
  v4 = *(a1 + 72);
  v3 = *(a1 + 76);
  if (v4 <= (v3 - v2))
  {
    v7 = ((v2 * 0.05) + 1.0);
    v8 = *(a1 + 84);
    do
    {
      v9 = *(a1 + 80);
      if (v9 <= v8 - v2)
      {
        do
        {
          if (apple::vision::libraries::facecore::processing::detection::evaluateCascade(*(a1 + 48), *(*(a1 + 56) + 40), a2, v9 + v4 * *(*(a1 + 56) + 12)))
          {
            apple::vision::libraries::facecore::processing::detection::addFaceToVector(*(**(a1 + 40) + 2 * a2), v9, v4, *(a1 + 56), *(*(*(a1 + 32) + 8) + 40) + 24 * a2, *(a1 + 64));
          }

          v9 += v7;
          v8 = *(a1 + 84);
          v10 = *(**(a1 + 40) + 2 * a2);
        }

        while (v9 <= v8 - v10);
        v3 = *(a1 + 76);
        LOWORD(v2) = *(**(a1 + 40) + 2 * a2);
      }

      else
      {
        v10 = v2;
      }

      v4 += v7;
    }

    while (v4 <= v3 - v10);
  }
}

BOOL apple::vision::libraries::facecore::processing::detection::evaluateCascade(uint64_t **a1, uint64_t a2, int a3, int a4)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3;
  v7 = **a1;
  v8 = 1;
  v9 = a2 + 4 * a4;
  do
  {
    v10 = (*(*(v7 + 16 * v5) + 16 * v6 + 8))(v9);
    v7 = **a1;
    v11 = v10 >= *(v7 + 16 * v5 + 8);
    result = v11;
    if (v11)
    {
      break;
    }

    v5 = v8++;
  }

  while (v5 < a1[1] - *a1);
  return result;
}

void apple::vision::libraries::facecore::processing::detection::addFaceToVector(int a1, int a2, int a3, apple::vision::libraries::facecore::processing::detection::IntegralImage *this, uint64_t a5, double a6)
{
  v16 = 0u;
  v17 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v25 = 0x100000001;
  v27 = 0x100000000;
  __asm { FMOV            V1.2D, #1.0 }

  v28 = _Q1;
  v29 = _Q1;
  v30 = _Q1;
  HIDWORD(v17) = vcvts_n_f32_s32(a1 + 1 + 2 * a2, 1uLL);
  LODWORD(v18) = vcvts_n_f32_s32(a1 + 1 + 2 * a3, 1uLL);
  v13 = a1 / 2;
  LODWORD(v16) = a1 / 2;
  DWORD2(v22) = -a6;
  v26 = 0x3FF0000000000000;
  v14 = 0.0;
  v15 = 0.0;
  apple::vision::libraries::facecore::processing::detection::IntegralImage::getOriginalCoord(this, SHIDWORD(v17), v18, &v15, &v14);
  LODWORD(v16) = (v13 / *(this + 19));
  HIDWORD(v17) = v15;
  LODWORD(v18) = v14;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](a5, &v16);
  apple::vision::libraries::facecore::Face::~Face(&v16);
}

void sub_23B05F378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::detectWindowsWithoutROI(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v9 = 0;
    v10 = *(a3 + 40);
    v11 = *a4;
    v12 = a4[1] - *a4;
    v13 = v12 & 0x7FFFFFFF8;
    v27 = -a6;
    v14 = (v12 >> 3);
    __asm { FMOV            V0.2D, #1.0 }

    v26 = _Q0;
    do
    {
      v20 = v14;
      v21 = v11;
      if (v13)
      {
        while (1)
        {
          v22 = *(*(a1 + 8) + v9);
          if (v22 < (a2[1] - *a2) >> 1 && (*(**v21 + 16 * v22 + 8))(v10 + 4 * *(*a1 + 4 * v9)) >= *(*v21 + 8))
          {
            break;
          }

          v21 += 8;
          if (!--v20)
          {
            goto LABEL_9;
          }
        }

        v23 = *(*a2 + 2 * *(*(a1 + 8) + v9));
        v24 = *(*a1 + 4 * v9);
        v25 = *(a3 + 12);
        v32 = 0u;
        v33 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        v41 = 0x100000001;
        v43 = 0x100000000;
        v44 = v26;
        v45 = v26;
        v46 = v26;
        HIDWORD(v33) = vcvts_n_f32_s32(v23 + 1 + 2 * (v24 % v25), 1uLL);
        LODWORD(v34) = vcvts_n_f32_s32(v23 + 1 + 2 * (v24 / v25), 1uLL);
        LODWORD(v32) = v23 >> 1;
        DWORD2(v38) = v27;
        v42 = 0x3FF0000000000000;
        v30 = 0.0;
        v31 = 0.0;
        apple::vision::libraries::facecore::processing::detection::IntegralImage::getOriginalCoord(a3, SHIDWORD(v33), v34, &v31, &v30);
        LODWORD(v32) = (v32 / *(a3 + 76));
        HIDWORD(v33) = v31;
        LODWORD(v34) = v30;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](a5, &v32);
        apple::vision::libraries::facecore::Face::~Face(&v32);
      }

LABEL_9:
      ++v9;
    }

    while (v9 != v6);
  }
}

void sub_23B05F580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::detectWindows(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void *a6, double a7)
{
  if (*(a1 + 184) == *(a1 + 192))
  {
    apple::vision::libraries::facecore::processing::detection::detectWindowsWithoutROI(a2, a3, a4, a5, a6, a7);
  }

  else
  {
    apple::vision::libraries::facecore::processing::detection::detectWindowsWithROI(a1, a3, a4, a5, a6, a7);
  }
}

void apple::vision::libraries::facecore::processing::detection::detectWindowsGCD(uint64_t a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  if (v9 == v10 || *(a1 + 20) != 1)
  {
    operator new[]();
  }

  if (v10 - v9 == 32)
  {
    v12 = *(a5 + 160);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    apple::vision::libraries::facecore::processing::detection::detectWindowsInROIWithGCD(a4, a5, a6, a7, v13, v14, v15, v16, a2);
  }

  else
  {

    apple::vision::libraries::facecore::processing::detection::detectWindowsWithROI(a1, a4, a5, a6, a7, a2);
  }
}

void std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<apple::vision::libraries::facecore::FaceInternal>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<apple::vision::libraries::facecore::FaceInternal>>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<apple::vision::libraries::facecore::FaceInternal>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

apple::vision::libraries::facecore::mod::aam::AamSearch *apple::vision::libraries::facecore::mod::aam::AamSearch::AamSearch(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  *this = &unk_284DF3CE8;
  bzero(this + 8, 0x13D0uLL);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 5080);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 5272);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 5464);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 5656);
  apple::vision::libraries::facecore::mod::aam::AffineWarp::AffineWarp((this + 34656));
  *(this + 27540) = 0;
  *(this + 6884) = 0;
  *(this + 55084) = 0x6400000000;
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 55112);
  v2 = 0;
  v3 = 55304;
  do
  {
    apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + v3);
    v3 += 192;
    v2 -= 192;
  }

  while (v2 != -9600);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 64904);
  v4 = 0;
  v5 = 65096;
  do
  {
    apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + v5);
    v5 += 192;
    v4 -= 192;
  }

  while (v4 != -19200);
  v6 = 0;
  v7 = 84296;
  do
  {
    apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + v7);
    v7 += 192;
    v6 -= 192;
  }

  while (v6 != -5760);
  v8 = 0;
  v9 = 90056;
  do
  {
    apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + v9);
    v9 += 192;
    v8 -= 192;
  }

  while (v8 != -5760);
  *(this + 6448) = 0u;
  *(this + 6449) = 0u;
  *(this + 6446) = 0u;
  *(this + 6447) = 0u;
  *(this + 6444) = 0u;
  *(this + 6445) = 0u;
  *(this + 6442) = 0u;
  *(this + 6443) = 0u;
  *(this + 6441) = 0u;
  bzero(this + 148720, 0x2370uLL);
  *(this + 1185030) = 0;
  *(this + 592514) = 0u;
  *(this + 103208) = 0u;
  *(this + 103224) = 0u;
  *(this + 103240) = 0u;
  *(this + 103256) = 0u;
  bzero(this + 103344, 0x7620uLL);
  bzero(this + 141448, 0x13B0uLL);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 9480248);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 9480440);
  *(this + 1185081) = 0;
  *(this + 9480632) = 0u;
  bzero(this + 11578208, 0x3F0uLL);
  bzero(this + 11579576, 0x3F0uLL);
  apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this + 11580584);
  vDSP_vclrD(this + 732, 1, 0xE10uLL);
  *(this + 16780) = 0;
  *(this + 8388) = 0u;
  *(this + 8389) = 0u;
  *(this + 8386) = 0u;
  *(this + 8387) = 0u;
  *(this + 8384) = 0u;
  *(this + 8385) = 0u;
  *(this + 8382) = 0u;
  *(this + 8383) = 0u;
  *(this + 8380) = 0u;
  *(this + 8381) = 0u;
  *(this + 8378) = 0u;
  *(this + 8379) = 0u;
  *(this + 592541) = 0u;
  *(this + 592542) = 0u;
  return this;
}

void sub_23B088504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  apple::vision::libraries::facecore::mod::aam::AamSearch::AamSearch(v16 + v18);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  for (i = 0; i != 72; i += 8)
  {
    free(*(a10 + i));
  }

  for (j = 0; j != 72; j += 8)
  {
    free(*(a14 + j));
  }

  a16 = a11;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v27 = a15 + 103184;
  v28 = -144;
  do
  {
    v27 = std::valarray<unsigned int>::~valarray(v27) - 16;
    v28 += 16;
  }

  while (v28);
  v29 = a15 + 95624;
  v30 = 95816;
  do
  {
    v31 = 0;
    v30 -= 192;
    do
    {
      free(*(v29 + v31));
      v31 += 8;
    }

    while (v31 != 72);
    v29 -= 192;
  }

  while (v30 != v17);
  v32 = a15 + 89864;
  do
  {
    v33 = 0;
    v17 -= 192;
    do
    {
      free(*(v32 + v33));
      v33 += 8;
    }

    while (v33 != 72);
    v32 -= 192;
  }

  while (v17 != v24);
  v34 = a15 + 84104;
  do
  {
    v35 = 0;
    v24 -= 192;
    do
    {
      free(*(v34 + v35));
      v35 += 8;
    }

    while (v35 != 72);
    v34 -= 192;
  }

  while (v24 != 65096);
  for (k = 0; k != 72; k += 8)
  {
    free(*(v23 + k));
  }

  v37 = a15 + 64712;
  for (m = 64904; m != 55304; m -= 192)
  {
    for (n = 0; n != 72; n += 8)
    {
      free(*(v37 + n));
    }

    v37 -= 192;
  }

  for (ii = 0; ii != 72; ii += 8)
  {
    free(*(v22 + ii));
  }

  for (jj = 0; jj != 72; jj += 8)
  {
    free(*(v21 + jj));
  }

  for (kk = 0; kk != 72; kk += 8)
  {
    free(*(v20 + kk));
  }

  for (mm = 0; mm != 72; mm += 8)
  {
    free(*(v19 + mm));
  }

  for (nn = 0; nn != 72; nn += 8)
  {
    free(*(a13 + nn));
  }

  for (i1 = 0; i1 != 72; i1 += 8)
  {
    free(*(a12 + i1));
  }

  std::valarray<unsigned int>::~valarray(a15 + 5064);
  std::valarray<unsigned int>::~valarray(a15 + 5048);
  _Unwind_Resume(a1);
}

uint64_t std::valarray<unsigned int>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::~AamSearch(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v2 = (this + 9480656);
  *this = &unk_284DF3CE8;
  v3 = *(this + 1185082);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C8000313F17);
  }

  v4 = v2[1];
  if (v4)
  {
    MEMORY[0x23EE98340](v4, 0x1000C8000313F17);
  }

  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x23EE98340](v5, 0x1000C8000313F17);
  }

  v6 = (this + 103192);
  v7 = v2[3];
  if (v7)
  {
    MEMORY[0x23EE98340](v7, 0x1000C8000313F17);
  }

  for (i = 0; i != 72; i += 8)
  {
    free(*(this + i + 11580584));
  }

  v36 = (this + 9480632);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v36);
  for (j = 0; j != 72; j += 8)
  {
    free(*(this + j + 9480440));
  }

  for (k = 0; k != 72; k += 8)
  {
    free(*(this + k + 9480248));
  }

  v36 = (this + 9480224);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v36);
  v11 = -144;
  do
  {
    v12 = *(v6 - 1);
    if (v12)
    {
      if (*v6 != v12)
      {
        *v6 = *v6 + ((v12 - *v6 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      }

      operator delete(v12);
      *(v6 - 1) = 0;
      *v6 = 0;
    }

    v6 -= 2;
    v11 += 16;
  }

  while (v11);
  v13 = 90056;
  v14 = this + 95624;
  for (m = 95816; m != 90056; m -= 192)
  {
    for (n = 0; n != 72; n += 8)
    {
      free(*&v14[n]);
    }

    v14 -= 192;
  }

  v17 = 84296;
  v18 = this + 89864;
  do
  {
    v19 = 0;
    v13 -= 192;
    do
    {
      free(*&v18[v19]);
      v19 += 8;
    }

    while (v19 != 72);
    v18 -= 192;
  }

  while (v13 != 84296);
  v20 = this + 84104;
  do
  {
    v21 = 0;
    v17 -= 192;
    do
    {
      free(*&v20[v21]);
      v21 += 8;
    }

    while (v21 != 72);
    v20 -= 192;
  }

  while (v17 != 65096);
  for (ii = 0; ii != 72; ii += 8)
  {
    free(*(this + ii + 64904));
  }

  v23 = this + 64712;
  for (jj = 64904; jj != 55304; jj -= 192)
  {
    for (kk = 0; kk != 72; kk += 8)
    {
      free(*&v23[kk]);
    }

    v23 -= 192;
  }

  for (mm = 0; mm != 72; mm += 8)
  {
    free(*(this + mm + 55112));
  }

  for (nn = 0; nn != 72; nn += 8)
  {
    free(*(this + nn + 34656));
  }

  for (i1 = 707; i1 != 716; ++i1)
  {
    free(*(this + i1));
  }

  for (i2 = 683; i2 != 692; ++i2)
  {
    free(*(this + i2));
  }

  for (i3 = 659; i3 != 668; ++i3)
  {
    free(*(this + i3));
  }

  for (i4 = 635; i4 != 644; ++i4)
  {
    free(*(this + i4));
  }

  v32 = *(this + 633);
  if (v32)
  {
    v33 = *(this + 634);
    if (v33 != v32)
    {
      *(this + 634) = &v33[(v32 - v33 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v32);
    *(this + 633) = 0;
    *(this + 634) = 0;
  }

  v34 = *(this + 631);
  if (v34)
  {
    v35 = *(this + 632);
    if (v35 != v34)
    {
      *(this + 632) = &v35[(v34 - v35 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v34);
    *(this + 631) = 0;
    *(this + 632) = 0;
  }
}

{
  apple::vision::libraries::facecore::mod::aam::AamSearch::~AamSearch(this);

  JUMPOUT(0x23EE98360);
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(apple::vision::libraries::facecore::mod::aam::AamSearch *this, int a2)
{
  v3 = this + 55079;
  v4 = this + 34728;
  v5 = (this + 4040);
  *(this + 1290) = a2;
  v6 = a2;
  v7 = (this + 8 * a2);
  *(this + 644) = v7[635];
  *(this + 1338) = a2;
  *(this + 668) = v7[659];
  *(this + 1386) = a2;
  *(this + 692) = v7[683];
  *(this + 1434) = a2;
  *(this + 716) = v7[707];
  *(this + 13798) = a2;
  *(this + 6898) = v7[6889];
  *(this + 2895166) = a2;
  *(this + 1447582) = v7[1447573];
  *(this + 2370082) = a2;
  *(this + 1185040) = v7[1185031];
  *(this + 2370130) = a2;
  *(this + 1185064) = v7[1185055];
  v8 = this + 84296;
  v9 = 30;
  do
  {
    *(v8 + 20) = a2;
    *(v8 + 9) = *&v8[8 * a2];
    *(v8 + 1460) = a2;
    *(v8 + 729) = *&v8[8 * a2 + 5760];
    v8 += 192;
    --v9;
  }

  while (v9);
  v10 = this + 55304;
  v11 = 50;
  do
  {
    *(v10 + 20) = a2;
    *(v10 + 9) = *&v10[8 * a2];
    v10 += 192;
    --v11;
  }

  while (v11);
  *v3 = 0;
  *(this + 12900) = *(this + 2 * a2 + 12882);
  v12 = (*(this + a2 + 13799) - 1);
  v13 = 63;
  do
  {
    v14 = v5 - 126;
    v15 = *v5++;
    *v14 = vmulq_n_f64(v15, v12);
    --v13;
  }

  while (v13);
  v16 = this + 34656;
  memcpy(v18, this + 2024, sizeof(v18));
  *(v4 + 2) = a2;
  *v4 = *&v16[8 * v6];
  result = apple::vision::libraries::facecore::mod::aam::AffineWarp::SetWarpTarget(v16, v18);
  *(v3 + 13) = a2;
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::SetEyePositions(uint64_t this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = (this + 55073);
  *(this + 103272) = a2;
  *(this + 103280) = a3;
  *(this + 103288) = a4;
  *(this + 103296) = a5;
  *(this + 103304) = a6;
  *(this + 103312) = a7;
  v8 = *(this + 103224) - *(this + 103208);
  v9 = sqrt((a4 - a2) * (a4 - a2) + (a5 - a3) * (a5 - a3));
  if (fmin(v8 * 256.0, fmin(v8 * 64.0, v8 * 128.0)) >= v9)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  *(this + 55096) = v10;
  if (*(this + 55081) == 1)
  {
    this = printf("Eye distance: %g maxLod: %d\nTemplate eye distance at this LOD: %g\n", v9, v10, v8 * (1 << v10));
  }

  *v7 = 1;
  return this;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::MakeSearchImage(apple::vision::libraries::facecore::mod::aam::AamSearch *this, const unsigned __int8 *a2, int a3, int a4)
{
  v4 = this + 55073;
  if ((*(this + 55073) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "must SetEyePositions() before calling MakeSearchImage()");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = (this + 103208);
  apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, 6);
  v73 = v4;
  v10 = *(this + *(v4 + 119) + 13799) - 1;
  v12 = v9[8];
  v11 = v9[9];
  v14 = v9[10];
  v13 = v9[11];
  v15 = v14 - v12;
  v16 = v13 - v11;
  v17 = vcvtmd_s64_f64(sqrt(v16 * v16 + v15 * v15) / (v9[2] * v10 - *v9 * v10));
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = v12 - v15;
  v20 = v11 - v16;
  v21 = v12 - v15 - v16 * -0.75;
  v22 = v11 - v16 - v15 * 0.75;
  v23 = v14 + v15;
  v24 = v13 + v16;
  v25 = v14 + v15 - v16 * -0.75;
  v26 = v13 + v16 - v15 * 0.75;
  v27 = v16 * -2.25;
  v28 = v15 * 2.25;
  v29 = v19 + v27;
  v30 = v28 + v20;
  v31 = v23 + v27;
  v32 = v28 + v24;
  v33 = v21;
  if (v29 < v21)
  {
    v33 = v29;
  }

  v34 = v33 & ~(v33 >> 31);
  v35 = v26;
  if (v26 >= v22)
  {
    v35 = v22;
  }

  v36 = v35 & ~(v35 >> 31);
  v37 = v25;
  if (v25 <= v31)
  {
    v37 = v31;
  }

  if (v37 >= a3)
  {
    v38 = a3;
  }

  else
  {
    v38 = v37;
  }

  v39 = v30;
  if (v30 <= v32)
  {
    v39 = v32;
  }

  if (v39 >= a4)
  {
    v40 = a4;
  }

  else
  {
    v40 = v39;
  }

  v41 = (v38 - v34) / v18;
  *(this + 1462) = v41;
  v42 = (v40 - v36) / v18;
  *(this + 1463) = v42;
  v43 = v18;
  v9[8] = (v12 - v34) / v18;
  v9[9] = (v11 - v36) / v18;
  v9[10] = (v14 - v34) / v18;
  v9[11] = (v13 - v36) / v18;
  v44 = v9[12];
  if (v44 != 0.0)
  {
    v45 = (v9[13] - v36) / v43;
    v9[12] = (v44 - v34) / v43;
    v9[13] = v45;
  }

  std::valarray<float>::resize(this + 5064, (v42 * v41));
  std::valarray<float>::resize(this + 5048, *(this + 1463) * *(this + 1462));
  v47 = v40 - v18 + 1;
  if (v36 < v47)
  {
    v48 = 0;
    v49 = v38 - v18 + 1;
    v50 = v18 + v36;
    v51 = v34 + a3 * v36;
    v52 = v36;
    do
    {
      v53 = v52 + v18;
      if (v34 < v49)
      {
        v54 = *(this + 633);
        v55 = v51;
        v56 = v34;
        do
        {
          v57 = v56 + v18;
          v58 = 0.0;
          if (v52 < v53)
          {
            v59 = v55;
            v60 = v52;
            do
            {
              v61 = v59;
              v62 = v18;
              if (v56 < v57)
              {
                do
                {
                  LOBYTE(v46) = a2[v61];
                  v46 = *&v46 / 255.0;
                  v58 = v58 + v46;
                  ++v61;
                  --v62;
                }

                while (v62);
              }

              ++v60;
              v59 += a3;
            }

            while (v60 != v50);
          }

          v63 = v58 / (v18 * v18);
          *(v54 + 4 * v48++) = v63;
          v55 += v18;
          v56 += v18;
        }

        while (v57 < v49);
      }

      v50 += v18;
      v51 += a3 * v18;
      v52 += v18;
    }

    while (v53 < v47);
  }

  v64 = *(this + 1462);
  v65 = *(this + 1463);
  v66 = (v65 * v64);
  v67 = *(this + 631);
  if (v66 >= 1)
  {
    v68 = *(this + 633);
    v69 = *(this + 631);
    do
    {
      v70 = *v68++;
      *v69++ = v70;
      --v66;
    }

    while (v66);
  }

  result = apple::vision::libraries::facecore::mod::aam::AffineWarp::SetSourceImage(this + 34656, v67, v64, v65);
  *(v9 + 28) = v18;
  *(v9 + 29) = v34;
  *(v9 + 30) = v36;
  v73[2] = 1;
  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v1 = this + 55075;
  if ((*(this + 55075) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "Must load a searchimage prior to filtering it");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(this + *(this + 13798) + 13799) - 1;
  v3 = sqrt((*(this + 12912) - *(this + 12910)) * (*(this + 12912) - *(this + 12910)) + (*(this + 12911) - *(this + 12909)) * (*(this + 12911) - *(this + 12909))) / (*(this + 12903) * v2 - *(this + 12901) * v2);
  if (v3 >= 1.0)
  {
    v8 = v3 * 0.5;
    apple::vision::libraries::facecore::mod::filters::blur<float>(*(this + 631), *(this + 1462), *(this + 1463), 0, v8);
    v1[1] = 1;
  }

  else
  {
    v4 = (*(this + 1463) * *(this + 1462));
    if (v4 >= 1)
    {
      v5 = *(this + 633);
      v6 = *(this + 631);
      do
      {
        v7 = *v5++;
        *v6++ = v7;
        --v4;
      }

      while (v4);
    }
  }
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch::InitSimilarityTransform(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v1 = this + 55073;
  if ((*(this + 55073) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "must SetEyePositions() prior to calling InitSimilarityTransform()");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = (this + 7847392);
  v4 = (this + 133808);
  v5 = (this + 103240);
  v7 = *(this + 12906);
  v6 = *(this + 12907);
  v8 = *(this + 12905);
  v9 = v6 - v8;
  v10 = *(this + 103272);
  v11 = *(this + 103288);
  _Q3 = vsubq_f64(v11, v10);
  _D6 = *(this + 12913);
  if (_D6 == 0.0)
  {
    v18 = -_Q3.f64[1];
    v25 = 1.0;
  }

  else
  {
    v14 = *(this + 12908);
    v15 = v9 * *(this + 450) - (v14 - v7) * *(this + 449) + v8 * v14 - v6 * v7;
    v16 = sqrt((v14 - v7) * (v14 - v7) + v9 * v9);
    v17 = v15 / v16 / v16;
    v18 = -_Q3.f64[1];
    __asm { FMLS            D17, D6, V3.D[1] }

    v24 = sqrt(vmuld_lane_f64(_Q3.f64[1], _Q3, 1) + _Q3.f64[0] * _Q3.f64[0]);
    v25 = fmin(fmax((_D17 + v10.f64[0] * v11.f64[1] - v10.f64[1] * v11.f64[0]) / v24 / v24 / v17, 0.75), 1.25);
  }

  v52 = v25;
  v26 = vdupq_lane_s64(*&v9, 0);
  v50 = vdivq_f64(_Q3, v26);
  v51 = v18 / v9;
  v27.f64[0] = -_Q3.f64[0];
  v27.f64[1] = v18;
  v49 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(v27, v8), v10, v9), v26);
  bzero(v54, 0x3F0uLL);
  v28 = 0;
  v29 = vdupq_lane_s64(*&v50.f64[0], 0);
  v29.f64[0] = v51;
  v30 = vmulq_n_f64(v29, v52);
  do
  {
    *&v54[v28] = vaddq_f64(v49, vmlaq_n_f64(vmulq_n_f64(v30, *(this + v28 + 3040) - v7), v50, *(this + v28 + 3032)));
    v28 += 16;
  }

  while (v28 != 1008);
  v31 = v55;
  v32 = v5 + 14;
  v33 = 0.0;
  v34 = 63;
  do
  {
    v33 = v33 + *v32 * *v31 + *(v32 - 1) * *(v31 - 1);
    v31 += 2;
    v32 += 2;
    --v34;
  }

  while (v34);
  *v3 = v33;
  *v4 = v33;
  v35 = v55;
  v36 = v5 + 140;
  v37 = 0.0;
  v38 = 63;
  do
  {
    v37 = v37 + *v36 * *v35 + *(v36 - 1) * *(v35 - 1);
    v35 += 2;
    v36 += 2;
    --v38;
  }

  while (v38);
  v3[1] = v37;
  v4[1] = v37;
  v39 = v55;
  v40 = v5 + 266;
  v41 = 0.0;
  v42 = 63;
  do
  {
    v41 = v41 + *v40 * *v39 + *(v40 - 1) * *(v39 - 1);
    v39 += 2;
    v40 += 2;
    --v42;
  }

  while (v42);
  v3[2] = v41;
  v4[2] = v41;
  v43 = v55;
  v44 = v5 + 392;
  v45 = 0.0;
  v46 = 63;
  do
  {
    v45 = v45 + *v44 * *v43 + *(v44 - 1) * *(v43 - 1);
    v43 += 2;
    v44 += 2;
    --v46;
  }

  while (v46);
  v3[3] = v45;
  v4[3] = v45;
  memcpy(this + 8, this + 3032, 0x3F0uLL);
  apple::vision::libraries::facecore::mod::aam::AamSearch::TransformShape(this, this + 8, __src);
  result = memcpy(this + 8, __src, 0x3F0uLL);
  v1[1] = 1;
  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::TransformShape(float64x2_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 + 0x2000;
  bzero(a3, 0x3F0uLL);
  v6 = 0;
  v7 = v5[171];
  v8 = v5[172];
  v9 = vdupq_lane_s64(*&v7.f64[0], 0);
  v9.f64[0] = -v5[171].f64[1];
  v10 = (a2 + 8);
  do
  {
    *&a3[v6] = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v9, *v10), v7, *(v10 - 1)));
    v10 += 2;
    v6 += 16;
  }

  while (v6 != 1008);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::ImageGradientAndMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 4 * *(a2 + 80);
  v6 = *(v5 + 84);
  v7 = *(v5 + 156);
  v8 = (v6 + 1);
  if (v8 < v7 + ~v6)
  {
    v9 = 0;
    v10 = *(a2 + 72);
    v11 = a5 + 4 * v8;
    v12 = 2 * v6 + 2 - v7;
    v13 = v6 + 1;
    do
    {
      v14 = *(v10 + 4 * (v6 + v9 + 2));
      if (v14 == 0.0 || (v15 = *(v10 + 4 * (v6 + v9)), v15 == 0.0))
      {
        v16 = v13;
        v17 = 0.0;
      }

      else
      {
        v16 = v8 + v9;
        v17 = ((v14 - v15) * 0.5) * *(v11 + 4 * v9);
      }

      *(a3 + 4 * v16) = v17;
      v18 = *(v10 + 4 * (2 * v6 + v9 + 1));
      if (v18 == 0.0 || (v19 = *(v10 + 4 * (v9 + 1)), v19 == 0.0))
      {
        v20 = v13;
        v21 = 0.0;
      }

      else
      {
        v20 = v8 + v9;
        v21 = ((v18 - v19) * 0.5) * *(v11 + 4 * v9);
      }

      *(a4 + 4 * v20) = v21;
      ++v9;
      ++v13;
    }

    while (v12 + v9);
  }
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::calculate_dWdp(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v13 = (this + 85136);
  v14 = this + 107376;
  v2 = 5;
  do
  {
    v15 = v2;
    apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v2);
    v3 = 84376;
    v4 = 84452;
    v5 = 90212;
    v6 = 84368;
    v7 = 4;
    v8 = 90136;
    v9 = 103344;
    do
    {
      bzero(*(this + v6), 4 * *(this + 4 * *(this + v3) + v4));
      bzero(*(this + v6 + 5760), 4 * *(this + 4 * *(this + v8) + v5));
      apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp_dWdp(this + 34656, this + v9, *(this + v6), *(this + v6 + 5760));
      v9 += 1008;
      v8 += 192;
      v5 += 192;
      v3 += 192;
      v4 += 192;
      v6 += 192;
      --v7;
    }

    while (v7);
    v11 = v13;
    v10 = v14;
    v12 = 26;
    do
    {
      bzero(*v11, 4 * *(v11 + *(v11 + 2) + 21));
      bzero(v11[720], 4 * *(v11 + *(v11 + 1442) + 1461));
      apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp_dWdp(this + 34656, v10, *v11, v11[720]);
      v11 += 24;
      v10 += 1008;
      --v12;
    }

    while (v12);
    v2 = v15 + 1;
  }

  while (v15 != 6);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::CalculateSDFactorsWithTemporarySDimages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 55092);
  *(a1 + 5544) = v6;
  v7 = *(a1 + 8 * v6 + 5464);
  *(a1 + 5536) = v7;
  bzero(v7, 4 * *(a1 + 4 * v6 + 5620));
  v8 = *(a1 + 55092);
  *(a1 + 5736) = v8;
  v9 = *(a1 + 8 * v8 + 5656);
  *(a1 + 5728) = v9;
  bzero(v9, 4 * *(a1 + 4 * v8 + 5812));
  apple::vision::libraries::facecore::mod::aam::AamSearch::ImageGradientAndMultiply(v10, a1 + 5080, *(a1 + 5536), *(a1 + 5728), *(a3 + 72));
  for (i = 0; i != 30; ++i)
  {
    v12 = a1 + 90056 + 192 * i;
    v13 = *(v12 + 4 * *(v12 + 80) + 156);
    v14 = 0.0;
    v15 = 0.0;
    if (v13)
    {
      v16 = *(v12 + 72);
      v17 = *(a1 + 5728);
      v18 = 4 * v13;
      do
      {
        v19 = *v16++;
        v20 = v19;
        v21 = *v17++;
        v15 = v15 + (v20 * v21);
        v18 -= 4;
      }

      while (v18);
    }

    v22 = a1 + 84296 + 192 * i;
    v23 = *(v22 + 4 * *(v22 + 80) + 156);
    if (v23)
    {
      v24 = *(v22 + 72);
      v25 = *(a1 + 5536);
      v26 = 4 * v23;
      v14 = 0.0;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v14 = v14 + (v28 * v29);
        v26 -= 4;
      }

      while (v26);
    }

    *(a2 + 8 * i) = (v15 + v14);
  }

  v30 = 0;
  v31 = *(a3 + 72);
  do
  {
    v32 = a1 + 55304 + 192 * v30;
    v33 = *(v32 + 4 * *(v32 + 80) + 156);
    if (v33)
    {
      v34 = *(v32 + 72);
      v35 = 4 * v33;
      v36 = 0.0;
      v37 = v31;
      do
      {
        v38 = *v34++;
        v39 = v38;
        v40 = *v37++;
        v36 = v36 + (v39 * v40);
        v35 -= 4;
      }

      while (v35);
      v41 = v36;
    }

    else
    {
      v41 = 0.0;
    }

    *(a2 + 240 + 8 * v30++) = v41;
  }

  while (v30 != 30);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::ComputeHessianUsingTrick(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v46 = *MEMORY[0x277D85DE8];
  __p = 0;
  v36 = 0;
  std::valarray<float>::resize(&__p, 0x1F0uLL);
  v2 = 0;
  LODWORD(v3) = 0;
  v4 = *(this + 8383);
  v42 = *(this + 8382);
  v43 = v4;
  v44 = *(this + 8384);
  v5 = *(this + 8379);
  v38 = *(this + 8378);
  v39 = v5;
  v6 = *(this + 8381);
  v40 = *(this + 8380);
  v41 = v6;
  v37 = 1065353216;
  v45 = *(this + 16770);
  v7 = 1;
  v8 = __p;
  do
  {
    v9 = &v37;
    v10 = *(&v37 + v2);
    v3 = v3;
    v11 = v7;
    do
    {
      v12 = *v9++;
      v8[v3++] = v10 * v12;
      --v11;
    }

    while (v11);
    ++v2;
    ++v7;
  }

  while (v2 != 31);
  v13 = 0;
  v14 = v36;
  v15 = *(this + 13773) - 5;
  v16 = this + 5856;
  do
  {
    for (i = v13; i != 30; ++i)
    {
      if (v8 == v14)
      {
        v19 = 0.0;
      }

      else
      {
        v18 = (this + 1785600 * v15 + 59520 * i + 1984 * v13 + 161392);
        v19 = 0.0;
        v20 = v8;
        do
        {
          v21 = *v20++;
          v22 = v21;
          v23 = *v18++;
          v19 = v19 + (v22 * v23);
        }

        while (v20 != v14);
      }

      *&v16[480 * i + 8 * v13] = v19;
      *&v16[480 * v13 + 8 * i] = v19;
    }

    ++v13;
  }

  while (v13 != 30);
  v24 = this + 111600 * v15 + 7303792;
  for (j = 30; j != 60; ++j)
  {
    v26 = 0;
    v27 = v24;
    do
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + (*(&v37 + v28) * *&v27[v28]);
        v28 += 4;
      }

      while (v28 != 124);
      *&v16[480 * v26 + 8 * j] = v29;
      *&v16[480 * j + 8 * v26++] = v29;
      v27 += 3720;
    }

    while (v26 != 30);
    v24 += 124;
  }

  v30 = this + 20496;
  v31 = 30;
  v32 = 14400;
  do
  {
    v33 = 0;
    v34 = v30;
    do
    {
      if (v33)
      {
        *&v30[v33] = 0;
        *v34 = 0;
      }

      else
      {
        *&v16[488 * v31] = 0x3FF0000000000000;
      }

      v33 += 480;
      ++v34;
    }

    while (v32 != v33);
    ++v31;
    v30 += 488;
    v32 -= 480;
  }

  while (v31 != 60);
  if (v8)
  {
    if (v8 != v14)
    {
      v36 = &v14[(v8 - v14 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v8);
  }
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::AddPriorsToHessian(uint64_t this)
{
  v1 = 0;
  v2 = this + 5856;
  v3 = this + 7775152;
  do
  {
    v4 = v3;
    for (i = v1; i != 60; ++i)
    {
      v6 = 0;
      v7 = v1 + 60 * i;
      v8 = 0.0;
      do
      {
        v9 = vmulq_f32(*(v4 + v6), *(v3 + v6));
        v10 = vcvt_hight_f64_f32(v9);
        v11 = vcvtq_f64_f32(*v9.f32);
        v8 = v8 + v11.f64[0] + v11.f64[1] + v10.f64[0] + v10.f64[1];
        v6 += 16;
      }

      while (v6 != 240);
      v12 = *(v2 + 8 * v7) + v8;
      *(v2 + 8 * v7) = v12;
      *(v2 + 8 * (i + 60 * v1)) = v12;
      v4 += 240;
    }

    ++v1;
    v3 += 240;
  }

  while (v1 != 60);
  return this;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::SolveHessianForParameterUpdates(apple::vision::libraries::facecore::mod::aam::AamSearch *this, double *a2, double *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v5 = v4;
  v7 = v6;
  v15[3630] = *MEMORY[0x277D85DE8];
  v14 = 60;
  v12 = 0;
  v13 = 1;
  vDSP_mtransD((v3 + 5856), 1, v15, 1, 0x3CuLL, 0x3CuLL);
  MEMORY[0x28223BE20](v8);
  vDSP_mtransD(v7, 1, v11, 1, 0x3CuLL, 1uLL);
  result = dgesv_NEWLAPACK();
  for (i = 0; i != 60; ++i)
  {
    *(v5 + i * 8) = v11[i];
  }

  return result;
}

float64x2_t apple::vision::libraries::facecore::mod::aam::AamSearch::UpdateShape(float64x2_t *this)
{
  v2 = (this + 584);
  memcpy(&this[63].f64[1], &this[189].f64[1], 0x3F0uLL);
  for (i = 0; i != 26; ++i)
  {
    memcpy(__dst, &this[63 * i + 6711], sizeof(__dst));
    v5 = 0;
    v4 = &this[8365].f64[i];
    v6 = vld1q_dup_f64(v4);
    do
    {
      *&__dst[v5] = vmulq_f64(v6, *&__dst[v5]);
      v5 += 16;
    }

    while (v5 != 1008);
    memcpy(v30, __dst, sizeof(v30));
    for (j = 0; j != 63; ++j)
    {
      *(&this[j + 63] + 8) = vaddq_f64(*&v30[j * 16], *(&this[j + 63] + 8));
    }
  }

  apple::vision::libraries::facecore::mod::aam::AamSearch::TransformShape(this, &this[63].f64[1], __dst);
  memcpy(&this->f64[1], __dst, 0x3F0uLL);
  result.f64[0] = this[29].f64[1] - this[33].f64[1];
  v9 = this[30].f64[0] - this[34].f64[0];
  v10 = this[34].f64[1];
  v11 = this[35].f64[0];
  v12 = this[39].f64[1];
  v13 = this[40].f64[0];
  if (result.f64[0] * (v11 - v13) - v9 * (v10 - v12) > 0.0)
  {
    v14 = (v10 + v12) * 0.5;
    this[34].f64[1] = v14;
    v15 = (v11 + v13) * 0.5;
    this[35].f64[0] = v15;
    this[39].f64[1] = v14;
    this[40].f64[0] = v15;
  }

  v16 = this[35].f64[1];
  v17 = this[36].f64[0];
  v18 = this[38].f64[1];
  v19 = this[39].f64[0];
  if ((v16 - v18) * -v9 + result.f64[0] * (v17 - v19) > 0.0)
  {
    v20 = (v16 + v18) * 0.5;
    this[35].f64[1] = v20;
    v21 = (v17 + v19) * 0.5;
    this[36].f64[0] = v21;
    this[38].f64[1] = v20;
    this[39].f64[0] = v21;
  }

  v22 = v2[1];
  _Q4 = vsubq_f64(*v2, v22);
  __asm { FMLA            D1, D0, V4.D[1] }

  if (_D1 > 0.0)
  {
    __asm { FMOV            V1.2D, #0.5 }

    result = vmulq_f64(vaddq_f64(*v2, v22), _Q1);
    *v2 = result;
    v2[1] = result;
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::ConstrainCoefficients(uint64_t this, double a2)
{
  v2 = (this + 133840);
  v3 = 26;
  do
  {
    v4 = *(v2 - 32) * a2;
    if (fabs(*v2) > v4)
    {
      if (*v2 >= 0.0)
      {
        v5 = *(v2 - 32) * a2;
      }

      else
      {
        v5 = -v4;
      }

      *v2 = v5;
    }

    ++v2;
    --v3;
  }

  while (v3);
  v6 = 0;
  v7 = this + 134048;
  v8 = this + 400 * *(this + 55092) + 95816;
  do
  {
    v9 = *(v8 + 8 * v6) * a2;
    v10 = *(v7 + 4 * v6);
    if (v9 < fabsf(v10))
    {
      v11 = v9;
      if (v10 >= 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      *(v7 + 4 * v6) = v12;
    }

    ++v6;
  }

  while (v6 != 30);
  return this;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::reset(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v2 = this + 133792;
  v3 = this + 55073;
  *(this + 55080) = 0;
  memset_pattern16(this + 146488, &unk_23B2C74B0, 0x48uLL);
  *v2 = xmmword_23B2520C0;
  *(v2 + 2) = 0x3FF0000000000000;
  *(this + 133816) = 0u;
  *(this + 133832) = 0u;
  *(this + 133848) = 0u;
  *(this + 133864) = 0u;
  *(this + 133880) = 0u;
  *(this + 133896) = 0u;
  *(this + 133912) = 0u;
  *(this + 133928) = 0u;
  *(this + 133944) = 0u;
  *(this + 133960) = 0u;
  *(this + 133976) = 0u;
  *(this + 133992) = 0u;
  *(this + 134008) = 0u;
  *(this + 134024) = 0u;
  *(this + 134040) = 0u;
  *(this + 134056) = 0u;
  *(this + 134072) = 0u;
  *(this + 134088) = 0u;
  *(this + 134104) = 0u;
  *(this + 134120) = 0u;
  *(this + 134136) = 0u;
  *(this + 134152) = 0u;
  *(this + 134168) = 0u;
  *(this + 134184) = 0u;
  *(this + 134200) = 0u;
  *(this + 134216) = 0u;
  *(this + 134232) = 0u;
  memcpy(this + 8, this + 2024, 0x3F0uLL);
  if (*v3 == 1)
  {
    apple::vision::libraries::facecore::mod::aam::AamSearch::InitSimilarityTransform(this);
  }

  bzero(*(this + 644), 4 * *(this + *(this + 1290) + 1309));
  bzero(*(this + 668), 4 * *(this + *(this + 1338) + 1357));
  bzero(*(this + 692), 4 * *(this + *(this + 1386) + 1405));
  v4 = *(this + 716);
  v5 = 4 * *(this + *(this + 1434) + 1453);

  bzero(v4, v5);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearch(apple::vision::libraries::facecore::mod::aam::AamSearch *this, int a2, double a3, double a4, int a5, int a6)
{
  v12 = (this + 9464384);
  v13 = this + 55080;
  apple::vision::libraries::facecore::mod::aam::AamSearch::initBias(this);
  apple::vision::libraries::facecore::mod::aam::AamSearch::setBias(this);
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetPriorsConstants(this);
  memcpy(v12, this + 9465344, 0x1E0uLL);
  *(v13 + 2) = a5;
  *v13 = 0;
  v14 = *(v13 + 4);
  if (v14 >= a6)
  {
    v14 = a6;
  }

  *(v13 + 4) = v14;
  if ((a2 & 0x20) == 0)
  {
    apple::vision::libraries::facecore::mod::aam::AamSearch::reset(this);
  }

  v93 = (this + 8);
  v92 = (this + 11577840);
  if (a2 <= 11)
  {
    if (a2 == 4)
    {
      if (*(v13 + 4) >= 5)
      {
        v64 = 5;
        do
        {
          apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v64);
          apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
          *v13 = 0;
          *v92 = 0x408F400000000000;
          *(v13 + 1) = 0;
          if (a5 >= 1)
          {
            do
            {
              if (v13[1] == 1)
              {
                putchar(46);
              }

              (*(*this + 16))(this, *v93);
              apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 4, a3, a4);
              if (*v13)
              {
                break;
              }

              v65 = *(v13 + 1) + 1;
              *(v13 + 1) = v65;
            }

            while (v65 < a5);
          }

          apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
          if (v13[1] == 1)
          {
            if (*v13)
            {
              v66 = ">";
            }

            else
            {
              v66 = "<";
            }

            puts(v66);
          }

          v18 = v64++ < *(v13 + 4);
        }

        while (v18);
      }

      goto LABEL_134;
    }

    if (a2 == 8)
    {
      v19 = 0;
      v20 = 0.0;
      do
      {
        *v13 = 0;
        *v92 = 0x408F400000000000;
        v21 = dword_23B2C74C0[v19];
        *(v13 + 1) = 0;
        do
        {
          if (v13[1] == 1)
          {
            putchar(46);
          }

          apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 8, a3, v20);
          (*(*this + 16))(this);
          v22 = *v13;
          if (v22)
          {
            break;
          }

          v23 = *(v13 + 1) + 1;
          *(v13 + 1) = v23;
        }

        while (v23 < v21);
        if (v13[1] == 1)
        {
          if (v22)
          {
            v24 = ">";
          }

          else
          {
            v24 = "<";
          }

          puts(v24);
        }

        ++v19;
        v20 = v20 + 0.5;
      }

      while (v19 != 6);
      apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
      goto LABEL_134;
    }

LABEL_103:
    apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, *(v13 + 4));
    apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
    *v13 = 0;
    *v92 = 0x408F400000000000;
    *(v13 + 1) = 0;
    if (a5 >= 1)
    {
      do
      {
        if (v13[1] == 1)
        {
          putchar(46);
        }

        apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, a2, a3, a4);
        (*(*this + 16))(this);
        if (*v13)
        {
          break;
        }

        v67 = *(v13 + 1) + 1;
        *(v13 + 1) = v67;
      }

      while (v67 < a5);
    }

    apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
    if (v13[1] == 1)
    {
      if (*v13 == 1)
      {
        v68 = ">";
      }

      else
      {
        v68 = "<";
      }

      puts(v68);
    }

    goto LABEL_134;
  }

  if (a2 == 256)
  {
    v91 = (this + 133808);
    if (*(v13 + 4) >= 5)
    {
      v25 = 5;
    }

    else
    {
      v25 = *(v13 + 4);
    }

    apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v25);
    apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
    v26 = 0;
    v27 = (this + 133840);
    v28 = (this + 11579216);
    do
    {
      v28[v26] = v27[v26];
      ++v26;
    }

    while (v26 != 13);
    v29 = 0;
    v30 = (this + 134048);
    v31 = (this + 11579424);
    do
    {
      *(v31 + v29) = *(v30 + v29);
      v29 += 4;
    }

    while (v29 != 120);
    v32 = 0;
    v33 = *(this + 8364);
    *(this + 11579544) = *v91;
    *(this + 11579560) = v33;
    v34 = this + 11579576;
    do
    {
      *&v34[v32] = *(this + v32 + 8);
      v32 += 16;
    }

    while (v32 != 1008);
    v35 = 0;
    v90 = 0;
    v89 = this + 5236;
    v36 = 1000.0;
    do
    {
      v37 = (this + 480 * v35 + 9465344);
      v38 = v37[13];
      v12[12] = v37[12];
      v12[13] = v38;
      v12[14] = v37[14];
      v39 = v37[9];
      v12[8] = v37[8];
      v12[9] = v39;
      v40 = v37[11];
      v12[10] = v37[10];
      v12[11] = v40;
      v41 = v37[5];
      v12[4] = v37[4];
      v12[5] = v41;
      v42 = v37[7];
      v12[6] = v37[6];
      v12[7] = v42;
      v43 = v37[1];
      *v12 = *v37;
      v12[1] = v43;
      v44 = v37[3];
      v12[2] = v37[2];
      v12[3] = v44;
      apple::vision::libraries::facecore::mod::aam::AamSearch::InitSimilarityTransform(this);
      *v13 = 0;
      *v92 = 0x408F400000000000;
      *(v13 + 1) = 0;
      if (a5 >= 1)
      {
        do
        {
          if (v13[1] == 1)
          {
            putchar(46);
          }

          apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 0, a3, a4);
          (*(*this + 16))(this);
          if (*v13)
          {
            break;
          }

          v45 = *(v13 + 1) + 1;
          *(v13 + 1) = v45;
        }

        while (v45 < a5);
      }

      if (v13[1] == 1)
      {
        if (*v13)
        {
          v46 = ">";
        }

        else
        {
          v46 = "<";
        }

        puts(v46);
      }

      v47 = *(this + *(this + 1338) + 1357);
      if (v47)
      {
        v48 = *(this + 668);
        v49 = 4 * v47;
        v50 = 0.0;
        do
        {
          v51 = *v48++;
          v50 = v50 + (v51 * v51);
          v49 -= 4;
        }

        while (v49);
      }

      else
      {
        v50 = 0.0;
      }

      v52 = sqrt(v50 / v47);
      if (v52 < v36)
      {
        v53 = 0;
        v90 = v35;
        do
        {
          v28[v53] = v27[v53];
          ++v53;
        }

        while (v53 != 13);
        for (i = 0; i != 120; i += 4)
        {
          *(v31 + i) = *(v30 + i);
        }

        v55 = 0;
        v56 = *(this + 8364);
        *(this + 11579544) = *v91;
        *(this + 11579560) = v56;
        do
        {
          *&v34[v55] = *(this + v55 + 8);
          v55 += 16;
        }

        while (v55 != 1008);
        v57 = *&v89[4 * *(this + 1290)];
        if (v57)
        {
          v58 = 0;
          v59 = *(this + 644);
          v60 = *(this + 1447582);
          do
          {
            *(v60 + 4 * v58) = *(v59 + 4 * v58);
            ++v58;
          }

          while (v57 != v58);
        }

        apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
        v36 = v52;
      }

      ++v35;
    }

    while (v35 != 30);
    v69 = *(this + 723712);
    *(this + 8375) = *(this + 723711);
    *(this + 8376) = v69;
    *(this + 8377) = *(this + 723713);
    v70 = *(this + 723708);
    *(this + 8371) = *(this + 723707);
    *(this + 8372) = v70;
    v71 = *(this + 723710);
    *(this + 8373) = *(this + 723709);
    *(this + 8374) = v71;
    v72 = *(this + 723704);
    *(this + 8367) = *(this + 723703);
    *(this + 8368) = v72;
    v73 = *(this + 723706);
    *(this + 8369) = *(this + 723705);
    *(this + 8370) = v73;
    v74 = *(this + 723702);
    *v27 = *v28;
    *(this + 8366) = v74;
    v75 = *(this + 723719);
    *(this + 8382) = *(this + 723718);
    *(this + 8383) = v75;
    *(this + 8384) = *(this + 723720);
    *(this + 16770) = *(this + 1447442);
    v76 = *(this + 723715);
    *v30 = *v31;
    *(this + 8379) = v76;
    v77 = *(this + 723717);
    *(this + 8380) = *(this + 723716);
    *(this + 8381) = v77;
    *&v74 = *(this + 1447443);
    *&v77 = *(this + 1447444);
    *v91 = v74;
    *(this + 16727) = v77;
    v78 = *(this + 1447445);
    v79 = *(this + 1447446);
    *(this + 16728) = v78;
    *(this + 16729) = v79;
    *v12 = v74;
    *(v12 + 1) = v77;
    *(v12 + 2) = v78;
    *(v12 + 3) = v79;
    memcpy(v93, this + 11579576, 0x3F0uLL);
    v80 = *&v89[4 * *(this + 1290)];
    if (v80)
    {
      v81 = 0;
      v82 = *(this + 1447582);
      v83 = *(this + 644);
      do
      {
        *(v83 + 4 * v81) = *(v82 + 4 * v81);
        ++v81;
      }

      while (v80 != v81);
    }

    for (j = 0; j != 480; j += 8)
    {
      *(v12 + j) = *(this + 480 * v90 + j + 9465344);
    }

    if (*(v13 + 4) >= 6)
    {
      v85 = 6;
      do
      {
        apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v85);
        v86 = 0;
        *v13 = 0;
        *v92 = 0x408F400000000000;
        do
        {
          *(v30 + v86) = *(v30 + v86) + *(v30 + v86);
          v86 += 4;
        }

        while (v86 != 120);
        *(v13 + 1) = 0;
        if (a5 >= 1)
        {
          do
          {
            if (v13[1] == 1)
            {
              putchar(46);
            }

            apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 0, a3, a4);
            if (*v13)
            {
              break;
            }

            v87 = *(v13 + 1) + 1;
            *(v13 + 1) = v87;
          }

          while (v87 < a5);
        }

        apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
        if (v13[1] == 1)
        {
          if (*v13)
          {
            v88 = ">";
          }

          else
          {
            v88 = "<";
          }

          puts(v88);
        }

        v18 = v85++ < *(v13 + 4);
      }

      while (v18);
    }

    goto LABEL_134;
  }

  if (a2 == 128)
  {
    if (*(v13 + 4) >= 5)
    {
      v61 = 5;
      do
      {
        apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v61);
        apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
        v62 = 0;
        *v13 = 0;
        *v92 = 0x408F400000000000;
        do
        {
          *(this + v62 + 134048) = *(this + v62 + 134048) + *(this + v62 + 134048);
          v62 += 4;
        }

        while (v62 != 120);
        *(v13 + 1) = 0;
        if (a5 >= 1)
        {
          do
          {
            if (v13[1] == 1)
            {
              putchar(46);
            }

            apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 128, a3, a4);
            (*(*this + 16))(this);
            if (*v13)
            {
              break;
            }

            v63 = *(v13 + 1) + 1;
            *(v13 + 1) = v63;
          }

          while (v63 < a5);
        }

        apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
        v18 = v61++ < *(v13 + 4);
      }

      while (v18);
    }

    goto LABEL_134;
  }

  if (a2 != 12)
  {
    goto LABEL_103;
  }

  if (*(v13 + 4) >= 5)
  {
    v15 = 5;
    do
    {
      apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(this, v15);
      apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
      *v13 = 0;
      *v92 = 0x408F400000000000;
      *(v13 + 1) = 0;
      if (a5 >= 1)
      {
        while (1)
        {
          if (v13[1] == 1)
          {
            putchar(46);
          }

          apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(this, 12, a3, (v15 - 5) * 0.5 + 0.0);
          (*(*this + 16))(this);
          if (*v13 == 1)
          {
            break;
          }

          v16 = *(v13 + 1) + 1;
          *(v13 + 1) = v16;
          if (v16 >= a5)
          {
            goto LABEL_18;
          }
        }

        printf("Converged in %d steps.\n", *(v13 + 1));
      }

LABEL_18:
      apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(this);
      if (v13[1] == 1)
      {
        if (*v13)
        {
          v17 = ">";
        }

        else
        {
          v17 = "<";
        }

        puts(v17);
      }

      v18 = v15++ < *(v13 + 4);
    }

    while (v18);
  }

LABEL_134:
  if (v13[1] == 1)
  {

    putchar(10);
  }
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearchStep(apple::vision::libraries::facecore::mod::aam::AamSearch *this, char a2, double a3, double a4)
{
  v96[60] = *MEMORY[0x277D85DE8];
  v4 = this + 55074;
  if ((*(this + 55074) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "Must initialize shape prior to doing search ");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = this + 11577840;
  v10 = (this + 145488);
  v11 = (this + 133808);
  v12 = (this + 143464);
  v13 = 63;
  do
  {
    v12[63] = *v12;
    ++v12;
    --v13;
  }

  while (v13);
  v14 = 63;
  v15 = (this + 142456);
  do
  {
    v15[63] = *v15;
    ++v15;
    --v14;
  }

  while (v14);
  v16 = this + 141448;
  v17 = 63;
  v18 = (this + 141448);
  do
  {
    v18[63] = *v18;
    ++v18;
    --v17;
  }

  while (v17);
  v19 = this + 8;
  do
  {
    *&v16[v17] = *(this + v17 + 8);
    v17 += 16;
  }

  while (v17 != 1008);
    ;
  }

  __src = this + 142456;
  apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp(this + 34656, this + 8, *(this + 668));
  v4[5] = 0;
  v21 = this + 5428;
  v22 = *(this + 1338);
  v23 = *(this + v22 + 1357);
  if (v23)
  {
    for (j = 0; j < v23; ++j)
    {
      v23 = *&v21[4 * v22];
    }

    if (*(v4 + 26) == 1)
    {
      if (v23)
      {
        v25 = 0;
        v26 = 0.0;
        do
        {
          v27 = v25;
          if ((*(*(this + 4341) + 4 * v25) & 0x80000000) == 0)
          {
            v26 = v26 + *(*(this + 668) + 4 * v25);
          }

          ++v25;
        }

        while (v23 != v27 + 1);
        v28 = 0;
        v29 = *(this + 4341);
        v30 = v26 / *(this + *(v4 + 18) + 25754);
        do
        {
          v31 = v28;
          if ((*(v29 + 4 * v28) & 0x80000000) == 0)
          {
            *(*(this + 668) + 4 * v28) = *(*(this + 668) + 4 * v28) - v30;
          }

          ++v28;
        }

        while (v23 != v31 + 1);
      }
    }

    else if (v23)
    {
      v32 = 0;
      v33 = *(v4 + 110);
      v34 = *(this + 668);
      do
      {
        *(v34 + 4 * v32) = *(v34 + 4 * v32) - *(v33 + 4 * v32);
        ++v32;
      }

      while (v23 != v32);
    }
  }

  if ((a2 & 1) == 0)
  {
    bzero(*(this + 644), 4 * *(this + *(this + 1290) + 1309));
    apple::vision::libraries::facecore::mod::aam::AamSearch::DoSyntheticImageComposite(this);
    v23 = *&v21[4 * *(this + 1338)];
    if (v23)
    {
      v35 = 0;
      v36 = *(this + 644);
      v37 = *(this + 668);
      do
      {
        *(v37 + 4 * v35) = *(v37 + 4 * v35) - *(v36 + 4 * v35);
        ++v35;
      }

      while (v23 != v35);
    }

    v4[5] = 1;
    if (*(v4 + 26) != 1)
    {
      v38 = *(this + *(this + 1290) + 1309);
      if (v38)
      {
        v39 = 0;
        v40 = *(v4 + 110);
        v41 = *(this + 644);
        do
        {
          *(v41 + 4 * v39) = *(v40 + 4 * v39) + *(v41 + 4 * v39);
          ++v39;
        }

        while (v38 != v39);
      }
    }
  }

  v42 = v23;
  if (v23)
  {
    v43 = *(this + 668);
    v44 = 4 * v42;
    v45 = 0.0;
    do
    {
      v46 = *v43++;
      v45 = v45 + (v46 * v46);
      v44 -= 4;
    }

    while (v44);
  }

  else
  {
    v45 = 0.0;
  }

  v47 = sqrt(v45 / v42);
  v48 = (this + 133840);
  if (v47 <= *v9)
  {
    v60 = 0;
    *v9 = v47;
    do
    {
      *(this + v60 * 16 + 11577848) = v48[v60];
      ++v60;
    }

    while (v60 != 13);
    for (k = 0; k != 120; k += 4)
    {
      *(this + k + 11578056) = *(this + k + 134048);
    }

    v62 = 0;
    v63 = v11[1];
    *(v9 + 21) = *v11;
    *(v9 + 22) = v63;
    do
    {
      *(this + v62 + 11578208) = *(this + v62 + 8);
      v62 += 16;
    }

    while (v62 != 1008);
    apple::vision::libraries::facecore::mod::aam::AamSearch::Weighting(this);
    apple::vision::libraries::facecore::mod::aam::AamSearch::CalcPriorsQuad(this, *(this + 1338));
    apple::vision::libraries::facecore::mod::aam::AamSearch::CalculateSDFactorsWithTemporarySDimages(this, v96, this + 5272);
    v64 = 0;
    v65 = this + 7775152;
    do
    {
      v66 = 0;
      v67 = 0.0;
      do
      {
        v68 = vmulq_f32(*&v65[v66], *(this + v66 + 7847152));
        v69 = vcvt_hight_f64_f32(v68);
        v70 = vcvtq_f64_f32(*v68.f32);
        v67 = v67 + v70.f64[0] + v70.f64[1] + v69.f64[0] + v69.f64[1];
        v66 += 16;
      }

      while (v66 != 240);
      v96[v64] = v67 + v96[v64];
      ++v64;
      v65 += 240;
    }

    while (v64 != 60);
    if (a2)
    {
      v71 = 0;
      v72 = this + 134248;
      do
      {
        v73 = 0;
        v74 = 0.0;
        do
        {
          v75 = vmulq_f64(*&v96[v73], *&v72[v73 * 8]);
          v74 = v74 + v75.f64[0] + v75.f64[1];
          v73 += 2;
        }

        while (v73 != 30);
        v95[v71++] = v74;
        v72 += 240;
      }

      while (v71 != 30);
    }

    else
    {
      apple::vision::libraries::facecore::mod::aam::AamSearch::ComputeHessianUsingTrick(this);
      apple::vision::libraries::facecore::mod::aam::AamSearch::AddPriorsToHessian(this);
      apple::vision::libraries::facecore::mod::aam::AamSearch::SolveHessianForParameterUpdates(this, v96, v95);
    }

    apple::vision::libraries::facecore::mod::aam::AamSearch::UpdateParameters(this, v95);
    apple::vision::libraries::facecore::mod::aam::AamSearch::ConstrainCoefficients(this, a4);
    updated = apple::vision::libraries::facecore::mod::aam::AamSearch::UpdateShape(this);
    if ((a2 & 0x40) != 0)
    {
      (*(*this + 32))(this, updated);
    }

    memcpy(__dst, this + 141448, sizeof(__dst));
    for (m = 0; m != 1008; m += 16)
    {
      *&__dst[m] = vsubq_f64(*&__dst[m], *&v19[m]);
    }

    memcpy(this + 145480, __dst, 0x3F0uLL);
    v78 = 0.0;
    v79 = 63;
    v80 = v10;
    do
    {
      v78 = v78 + *v80 * *v80 + *(v80 - 1) * *(v80 - 1);
      v80 += 2;
      --v79;
    }

    while (v79);
    if (sqrt(v78) < a3)
    {
      v4[6] = 1;
    }

    memcpy(v94, __src, sizeof(v94));
    for (n = 0; n != 1008; n += 16)
    {
      *&v94[n] = vsubq_f64(*&v94[n], *&v19[n]);
    }

    result = memcpy(this + 145480, v94, 0x3F0uLL);
    v82 = 0.0;
    v83 = 63;
    do
    {
      v82 = v82 + *v10 * *v10 + *(v10 - 1) * *(v10 - 1);
      v10 += 2;
      --v83;
    }

    while (v83);
    if (sqrt(v82) < a3)
    {
      for (ii = 0; ii != 1008; ii += 16)
      {
        *&v19[ii] = vaddq_f64(*&v16[ii], *&v19[ii]);
      }

      v85 = 8;
      __asm { FMOV            V0.2D, #0.5 }

      do
      {
        *(this + v85) = vmulq_f64(*(this + v85), _Q0);
        v85 += 16;
      }

      while (v85 != 1016);
    }
  }

  else
  {
    v49 = *(this + 11578024);
    *(this + 8375) = *(this + 11578008);
    *(this + 8376) = v49;
    *(this + 8377) = *(this + 11578040);
    v50 = *(this + 11577960);
    *(this + 8371) = *(this + 11577944);
    *(this + 8372) = v50;
    v51 = *(this + 11577992);
    *(this + 8373) = *(this + 11577976);
    *(this + 8374) = v51;
    v52 = *(this + 11577896);
    *(this + 8367) = *(this + 11577880);
    *(this + 8368) = v52;
    v53 = *(this + 11577928);
    *(this + 8369) = *(this + 11577912);
    *(this + 8370) = v53;
    v54 = *(this + 11577864);
    *v48 = *(this + 11577848);
    *(this + 8366) = v54;
    v55 = *(this + 11578136);
    *(this + 8382) = *(this + 11578120);
    *(this + 8383) = v55;
    *(this + 8384) = *(this + 11578152);
    *(this + 16770) = *(this + 1447271);
    v56 = *(this + 11578072);
    *(this + 8378) = *(this + 11578056);
    *(this + 8379) = v56;
    v57 = *(this + 11578104);
    *(this + 8380) = *(this + 11578088);
    *(this + 8381) = v57;
    v58 = *(v9 + 22);
    *v11 = *(v9 + 21);
    v11[1] = v58;
    result = memcpy(this + 8, this + 11578208, 0x3F0uLL);
    v4[6] = 1;
  }

  return result;
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeSearchLod(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v2 = (this + 133792);
  v3 = this + 103320;
  apple::vision::libraries::facecore::mod::aam::AamSearch::CalculateConfidenceMeasure(this, *(this + 13773));
  v4 = 0;
  v5 = this + 208 * *(this + 13773) + 146560;
  do
  {
    *&v5[v4] = *(this + v4 + 133840);
    v4 += 8;
  }

  while (v4 != 208);
  apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeTextureParameters(this);
  v6 = *(this + 13773);
  v7 = this + 32 * v6 + 147456;
  v8 = v2[2];
  *(v7 + 61) = *v2;
  *(v7 + 62) = v8;
  bzero(v15, 0x3F0uLL);
  v9 = 0;
  v10 = *(v3 + 4);
  v11.i64[0] = v10;
  v11.i64[1] = SHIDWORD(v10);
  v12 = vcvtq_f64_s64(v11);
  v13 = vdupq_lane_s64(COERCE__INT64(*v3), 0);
  do
  {
    *&v15[v9] = vmlaq_f64(v12, v13, *(this + v9 + 8));
    v9 += 16;
  }

  while (v9 != 1008);
  return memcpy(this + 1008 * v6 + 148720, v15, 0x3F0uLL);
}

float apple::vision::libraries::facecore::mod::aam::AamSearch::DoSyntheticImageComposite(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v1 = *(this + *(this + 13773) + 25754);
  if (v1 >= 1)
  {
    v2 = (this + 134048);
    v3 = *(this + 12900);
    v4 = *(this + 6922);
    v5 = *(this + 6946);
    v6 = *(this + 6970);
    v7 = *(this + 6994);
    v8 = *(this + 7018);
    v9 = *(this + 7042);
    v10 = *(this + 7066);
    v11 = *(this + 7090);
    v12 = *(this + *(this + 13773) + 25754);
    v13 = *(this + 644);
    do
    {
      v14 = *v3++;
      *(v13 + 4 * v14) = ((((((((v2[1] * *(v5 + 4 * v14)) + (*v2 * *(v4 + 4 * v14))) + (v2[2] * *(v6 + 4 * v14))) + (v2[3] * *(v7 + 4 * v14))) + (v2[4] * *(v8 + 4 * v14))) + (v2[5] * *(v9 + 4 * v14))) + (v2[6] * *(v10 + 4 * v14))) + (v2[7] * *(v11 + 4 * v14))) + *(v13 + 4 * v14);
      --v12;
    }

    while (v12);
    v15 = *(this + 12900);
    v16 = *(this + 7114);
    v17 = *(this + 7138);
    v18 = *(this + 7162);
    v19 = *(this + 7186);
    v20 = *(this + 7210);
    v21 = *(this + 7234);
    v22 = *(this + 7258);
    v23 = *(this + 7282);
    v24 = v1;
    v25 = *(this + 644);
    do
    {
      v26 = *v15++;
      *(v25 + 4 * v26) = ((((((((v2[9] * *(v17 + 4 * v26)) + (v2[8] * *(v16 + 4 * v26))) + (v2[10] * *(v18 + 4 * v26))) + (v2[11] * *(v19 + 4 * v26))) + (v2[12] * *(v20 + 4 * v26))) + (v2[13] * *(v21 + 4 * v26))) + (v2[14] * *(v22 + 4 * v26))) + (v2[15] * *(v23 + 4 * v26))) + *(v25 + 4 * v26);
      --v24;
    }

    while (v24);
    v27 = *(this + 12900);
    v28 = *(this + 7306);
    v29 = *(this + 7330);
    v30 = *(this + 7354);
    v31 = *(this + 7378);
    v32 = *(this + 644);
    do
    {
      v33 = *v27++;
      result = ((((v2[17] * *(v29 + 4 * v33)) + (v2[16] * *(v28 + 4 * v33))) + (v2[18] * *(v30 + 4 * v33))) + (v2[19] * *(v31 + 4 * v33))) + *(v32 + 4 * v33);
      *(v32 + 4 * v33) = result;
      --v1;
    }

    while (v1);
  }

  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::UpdateParameters(apple::vision::libraries::facecore::mod::aam::AamSearch *this, double *a2)
{
  v4 = 0;
  v5 = (this + 133792);
  v6 = (this + 103352);
  v7 = (this + 103352);
  do
  {
    v8 = a2[v4 + 30];
    *(this + v4 + 33512) = *(this + v4 + 33512) + (v8 * 0.9);
    ++v4;
  }

  while (v4 != 30);
  v9 = a2 + 4;
  memcpy(__dst, this + 2024, sizeof(__dst));
    ;
  }

  for (j = 0; j != 4; ++j)
  {
    v41 = a2[j] * 0.899999976;
    memcpy(__src, this + 1008 * j + 103344, sizeof(__src));
    for (k = 0; k != 63; ++k)
    {
      __src[k] = vmulq_n_f64(__src[k], v41);
    }

    memcpy(v43, __src, sizeof(v43));
    for (m = 0; m != 1008; m += 16)
    {
      *&__dst[m] = vsubq_f64(*&__dst[m], *&v43[m]);
    }
  }

  for (n = 0; n != 26; ++n)
  {
    v42 = v9[n] * 0.899999976;
    memcpy(__src, this + 1008 * n + 107376, sizeof(__src));
    for (ii = 0; ii != 63; ++ii)
    {
      __src[ii] = vmulq_n_f64(__src[ii], v42);
    }

    memcpy(v43, __src, sizeof(v43));
    for (jj = 0; jj != 1008; jj += 16)
    {
      *&__dst[jj] = vsubq_f64(*&__dst[jj], *&v43[jj]);
    }
  }

  apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(this + 34656, __dst, __src);
  v17 = &__src[0].f64[1];
  v18 = 0.0;
  v19 = 63;
  do
  {
    v18 = v18 + *v7 * *v17 + *(v7 - 1) * *(v17 - 1);
    v17 += 2;
    v7 += 2;
    --v19;
  }

  while (v19);
  v5[2] = v18;
  v20 = &__src[0].f64[1];
  v21 = v6 + 126;
  v22 = 0.0;
  v23 = 63;
  do
  {
    v22 = v22 + *v21 * *v20 + *(v21 - 1) * *(v20 - 1);
    v20 += 2;
    v21 += 2;
    --v23;
  }

  while (v23);
  v5[3] = v22;
  v24 = &__src[0].f64[1];
  v25 = v6 + 252;
  v26 = 0.0;
  v27 = 63;
  do
  {
    v26 = v26 + *v25 * *v24 + *(v25 - 1) * *(v24 - 1);
    v24 += 2;
    v25 += 2;
    --v27;
  }

  while (v27);
  v5[4] = v26;
  v28 = &__src[0].f64[1];
  v29 = v6 + 378;
  v30 = 0.0;
  v31 = 63;
  do
  {
    v30 = v30 + *v29 * *v28 + *(v29 - 1) * *(v28 - 1);
    v28 += 2;
    v29 += 2;
    --v31;
  }

  while (v31);
  v5[5] = v30;
  v32 = sqrt(v18 * v18 + v22 * v22);
  *v5 = v32;
  if (v32 == 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "UpdateParameters: 0.0 == q_scale");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5[1] = atan(v22 / v18) * 180.0 / 3.14159265;
  apple::vision::libraries::facecore::mod::aam::AamSearch::InverseTransformShape(this, __src, v46);
  for (kk = 0; kk != 1008; kk += 16)
  {
    *&v46[kk] = vsubq_f64(*&v46[kk], *(this + kk + 3032));
  }

  v34 = 0;
  v35 = v6 + 504;
  do
  {
    v36 = 0.0;
    v37 = v35;
    v38 = &v47;
    v39 = 63;
    do
    {
      v36 = v36 + *v37 * *v38 + *(v37 - 1) * *(v38 - 1);
      v38 += 2;
      v37 += 2;
      --v39;
    }

    while (v39);
    *(this + v34++ + 16730) = v36;
    v35 += 126;
  }

  while (v34 != 26);
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::CalculateConfidenceMeasure(apple::vision::libraries::facecore::mod::aam::AamSearch *this, int a2)
{
  if (*(this + 55079) != 1 || *(this + 13773) != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "CalculateConfidenceMeasure() - the data in residualImage is not valid residual data");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(this + *(this + 1338) + 1357);
  if (v2)
  {
    v3 = *(this + 668);
    v4 = 4 * v2;
    v5 = 0.0;
    do
    {
      v6 = *v3++;
      v5 = v5 + (v6 * v6);
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  result = sqrt(v5 / v2);
  *(this + a2 + 18311) = result;
  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::FinalizeTextureParameters(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v2 = this + 53248;
  apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp(this + 34656, this + 8, *(this + 668));
  v2[1831] = 0;
  v3 = *(this + *(this + 1338) + 1357);
  v4 = *(this + 668);
  if (v3)
  {
    v5 = 0;
    v6 = *(v2 + 242);
    do
    {
      v4[v5] = v4[v5] - *(v6 + 4 * v5);
      ++v5;
    }

    while (v3 != v5);
  }

  v7 = 0;
  v8 = this + 200 * *(v2 + 461) + 157792;
  do
  {
    if (v3)
    {
      v9 = *(this + 24 * v7 + 6922);
      v10 = 0.0;
      v11 = 4 * v3;
      v12 = v4;
      do
      {
        v13 = *v12++;
        v14 = v13;
        v15 = *v9++;
        v10 = v10 + (v14 * v15);
        v11 -= 4;
      }

      while (v11);
    }

    else
    {
      v10 = 0.0;
    }

    *&v8[4 * v7++] = v10;
  }

  while (v7 != 50);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::GetShape(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, char *a2@<X8>)
{
  bzero(a2, 0x3F0uLL);
  v4 = 0;
  v5 = *(this + 103324);
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  v7 = vcvtq_f64_s64(v6);
  v8 = vdupq_lane_s64(COERCE__INT64(*(this + 25830)), 0);
  do
  {
    *&a2[v4] = vmlaq_f64(v7, v8, *(this + v4 + 8));
    v4 += 16;
  }

  while (v4 != 1008);
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::GetShapeParameters@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = std::vector<double>::vector[abi:ne200100](a3, 0x1AuLL);
  v6 = 0;
  v7 = *v5;
  do
  {
    result = *(this + 208 * a2 + v6 + 146560);
    *(v7 + v6) = result;
    v6 += 8;
  }

  while (v6 != 208);
  return result;
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::GetShapeStd@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, void *a2@<X8>)
{
  v3 = std::vector<double>::vector[abi:ne200100](a2, 0x1AuLL);
  v4 = 0;
  v5 = *v3;
  do
  {
    result = *(this + v4 + 133584);
    *(v5 + v4) = result;
    v4 += 8;
  }

  while (v4 != 208);
  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::GetTextureParameters(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, int a2@<W1>, double **a3@<X8>)
{
  v6 = (this + 64976);
  v7 = this + 55079;
  v59 = this + 34728;
  v8 = *(this + 13773);
  *(this + 16246) = a2;
  v9 = a2;
  *(this + 8122) = *(this + a2 + 8113);
  v10 = this + 65096;
  v11 = 100;
  v12 = this + 65096;
  do
  {
    *(v12 + 20) = a2;
    *(v12 + 9) = *&v12[8 * a2];
    v12 += 192;
    --v11;
  }

  while (v11);
  if (v8 != a2)
  {
    *(this + 1338) = a2;
    v13 = this + 8 * a2;
    *(this + 668) = *(v13 + 659);
    *(this + 13798) = a2;
    *(this + 6898) = *(v13 + 6889);
    bzero(__src, 0x3F0uLL);
    v14 = 0;
    v15 = (*(this + v9 + 13799) - 1);
    do
    {
      *&__src[v14] = vmulq_n_f64(*(this + v14 + 4040), v15);
      v14 += 16;
    }

    while (v14 != 1008);
    memcpy(__dst, __src, sizeof(__dst));
    *(v59 + 2) = a2;
    *v59 = *(this + v9 + 4332);
    apple::vision::libraries::facecore::mod::aam::AffineWarp::SetWarpTarget(this + 34656, __dst);
    apple::vision::libraries::facecore::mod::aam::AamSearch::FilterSearchImage(this);
  }

  v16 = this + 5428;
  bzero(*(this + 668), 4 * *(this + *(this + 1338) + 1357));
  apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp(this + 34656, this + 8, *(this + 668));
  *v7 = 0;
  v17 = *(v7 + 25);
  if (v17 == 1)
  {
    v22 = *(this + 668);
    v23 = *&v16[4 * *(this + 1338)];
    if (v23)
    {
      v24 = 0.0;
      v25 = 4 * v23;
      v26 = *(this + 668);
      do
      {
        v27 = *v26++;
        v24 = v24 + v27;
        v25 -= 4;
      }

      while (v25);
      v28 = 0;
      v29 = v24 / *(this + v9 + 25754);
      v30 = *v59;
      do
      {
        v31 = v28;
        if (*(v30 + 4 * v28) != -1)
        {
          *(v22 + 4 * v28) = *(v22 + 4 * v28) - v29;
        }

        ++v28;
      }

      while (v23 != v31 + 1);
      v32 = 0;
      v33 = *(v7 + 105);
      v34 = 0.0;
      do
      {
        v34 = v34 + (*(v22 + v32 * 4) * v33[v32]);
        ++v32;
      }

      while (v23 != v32);
      v35 = v34;
    }

    else
    {
      v33 = *(v7 + 105);
      v35 = 0.0;
    }

    if (fabs(v35) < 0.0001)
    {
      v35 = 0.0001;
    }

    v36 = *(this + *(v7 + 113) + 13817);
    if (v36)
    {
      v37 = 4 * v36;
      v38 = 0.0;
      do
      {
        v39 = *v33++;
        v38 = v38 + (v39 * v39);
        v37 -= 4;
      }

      while (v37);
      v40 = v38;
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v40 = 0.0;
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    v41 = 0;
    v42 = v40 / v35;
    do
    {
      *(v22 + 4 * v41) = *(v22 + 4 * v41) * v42;
      ++v41;
    }

    while (v23 != v41);
    goto LABEL_34;
  }

  if (!v17)
  {
    v18 = *&v16[4 * *(this + 1338)];
    if (v18)
    {
      v19 = 0;
      v20 = *v6;
      v21 = *(this + 668);
      do
      {
        *(v21 + 4 * v19) = *(v21 + 4 * v19) - *(v20 + 4 * v19);
        ++v19;
      }

      while (v18 != v19);
    }
  }

LABEL_34:
  std::vector<double>::vector[abi:ne200100](a3, 0x64uLL);
  v43 = 0;
  v44 = *a3;
  do
  {
    v45 = &v10[192 * v43];
    v46 = *&v45[4 * *(v45 + 20) + 156];
    if (v46)
    {
      v47 = *(v45 + 9);
      v48 = *(this + 668);
      v49 = 4 * v46;
      v50 = 0.0;
      do
      {
        v51 = *v47++;
        v52 = v51;
        v53 = *v48++;
        v50 = v50 + (v52 * v53);
        v49 -= 4;
      }

      while (v49);
      v54 = v50;
    }

    else
    {
      v54 = 0.0;
    }

    v44[v43++] = v54;
  }

  while (v43 != 100);
  bzero(*(this + 668), 4 * *&v16[4 * *(this + 1338)]);
  if (*(v7 + 25) == 1)
  {
    v55 = 0;
    v56 = *a3;
    v57 = **a3;
    if (fabs(v57) < 0.0001)
    {
      v57 = 0.0001;
    }

    v58 = vdupq_lane_s64(*&v57, 0);
    do
    {
      *&v56[v55] = vdivq_f64(*&v56[v55], v58);
      v55 += 2;
    }

    while (v55 != 100);
  }

  if (*(v7 + 13) != a2)
  {
    *(this + 1338) = v8;
    *(this + 668) = *(this + v8 + 659);
    *(v7 + 113) = v8;
    *(v7 + 105) = *(this + v8 + 6889);
    memcpy(__src, this + 2024, 0x3F0uLL);
    *(v59 + 2) = v8;
    *v59 = *(this + v8 + 4332);
    apple::vision::libraries::facecore::mod::aam::AffineWarp::SetWarpTarget(this + 34656, __src);
  }
}

void sub_23B08CC4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::GetTextureStd@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = std::vector<double>::vector[abi:ne200100](a3, 0x64uLL);
  v6 = 0;
  v7 = *v5;
  do
  {
    result = *(this + 400 * a2 + v6 + 99416);
    *(v7 + v6) = result;
    v6 += 8;
  }

  while (v6 != 400);
  return result;
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::GetSearchTextureStd@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = std::vector<double>::vector[abi:ne200100](a3, 0x64uLL);
  v6 = 0;
  v7 = *v5;
  do
  {
    result = *(this + 400 * a2 + v6 + 95816);
    *(v7 + v6) = result;
    v6 += 8;
  }

  while (v6 != 400);
  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::InverseTransformShape(float64x2_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 + 0x2000;
  bzero(a3, 0x3F0uLL);
  v6 = 0;
  v7.f64[0] = v5[172].f64[1];
  v11 = v5[171];
  v8 = vextq_s8(v11, v11, 8uLL);
  v7.f64[1] = -v7.f64[0];
  v9 = vmlaq_f64(vmulq_n_f64(v11, v5[172].f64[0]), v8, v7);
  v10 = vdupq_lane_s64(COERCE__INT64(v5[170].f64[0] * v5[170].f64[0]), 0);
  v11.f64[1] = -v5[171].f64[1];
  v12 = (a2 + 8);
  do
  {
    v13 = vmlaq_n_f64(vmulq_n_f64(v8, *v12), v11, *(v12 - 1));
    *&v14.f64[0] = *&vsubq_f64(v13, v9);
    v14.f64[1] = vaddq_f64(v13, v9).f64[1];
    *&a3[v6] = vdivq_f64(v14, v10);
    v12 += 2;
    v6 += 16;
  }

  while (v6 != 1008);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::Constrain3d(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x23EE98180](exception, "AamSearch::Constrain3d should not have been called");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t apple::vision::libraries::facecore::mod::aam::AffineWarp::AffineWarp(apple::vision::libraries::facecore::mod::aam::AffineWarp *this)
{
  v1 = this + 0x4000;
  result = apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(this);
  v3 = -9504;
  do
  {
    v4 = (result + v3 + 10952);
    *v4 = 0uLL;
    v4[1] = 0uLL;
    v3 += 96;
  }

  while (v3);
  v5 = -9504;
  do
  {
    v6 = (result + v5 + 20456);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v5 += 96;
  }

  while (v5);
  *(v1 + 2012) = 0;
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::ImagePyramid<int>::ImagePyramid(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 84);
  v4 = a1 + 156;
  do
  {
    *v3 = 1 << v2;
    v3[9] = 1 << v2;
    v5 = 1 << v2 << v2;
    v3[18] = v5;
    *(v4 + 8 * v2++ - 156) = malloc_type_malloc((4 * v5), 0x100004052888210uLL);
    ++v3;
  }

  while (v2 != 9);
  return a1;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
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

void sub_23B08D024(_Unwind_Exception *exception_object)
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

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

double apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::make_offsets(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures *this, int *a2, int32x4_t a3)
{
  *this = 0x300000002;
  *(this + 2) = 4;
  *(this + 3) = a2 + 5;
  *(this + 4) = 2 * a2 + 6;
  *(this + 5) = 3 * a2 + 6;
  *(this + 6) = 4 * a2 + 6;
  *a3.i8 = vmul_s32(vdup_n_s32(a2), 0x600000005);
  *(this + 28) = vaddq_s32(vzip1q_s32(a3, vdupq_lane_s32(*a3.i8, 1)), xmmword_23B2C7520);
  *(this + 11) = a3.i32[0] + 1;
  *(this + 12) = 4 * a2;
  *(this + 13) = 3 * a2;
  *(this + 14) = 2 * a2;
  *(this + 15) = a2 + 1;
  *(this + 16) = 3 * a2 + 3;
  return *a3.i64;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::fastSqrtf(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures *this, float a2)
{
  v2 = 0.0;
  if (a2 >= 0.00000001)
  {
    v3 = ((((a2 * -0.5) * COERCE_FLOAT(1597463007 - (SLODWORD(a2) >> 1))) * COERCE_FLOAT(1597463007 - (SLODWORD(a2) >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (SLODWORD(a2) >> 1));
    return (v3 * ((((a2 * -0.5) * v3) * v3) + 1.5)) * a2;
  }

  return v2;
}

void apple::vision::libraries::facecore::processing::detection::PostProcessing::PostProcessing(apple::vision::libraries::facecore::processing::detection::PostProcessing *this, apple::vision::libraries::facecore::processing::detection::Detector *a2, apple::vision::libraries::facecore::FaceCoreContext *a3)
{
  v3 = a3;
  *this = a2;
  v5 = (this + 16);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints((this + 11));
  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::FaceImage(v5, 3);
  *(this + 9) = 0;
  *(this + 44) = 1;
  apple::vision::libraries::facecore::processing::detection::IntegralImage::create(0x244, 820, v3, v6);
}

void sub_23B0B4560(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::~FaceImage(v2);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints((v1 + 11));
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::PostProcessing::~PostProcessing(apple::vision::libraries::facecore::processing::detection::PostProcessing *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::~FaceImage((this + 16));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints((this + 11));
}

void apple::vision::libraries::facecore::processing::detection::PostProcessing::postProcess(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, int a4, int a5, __n128 a6)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((v10 - v9) >> 3));
  v73 = apple::vision::libraries::facecore::processing::detection::sortFacesByProperties;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,false>(v9, v10, &v73, v12, 1, a6);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  apple::vision::libraries::facecore::processing::detection::FaceManager::getFaces(a1 + 8, &v73, a2, *(a1 + 176));
  apple::vision::libraries::facecore::processing::detection::FaceManager::sortFacesBySize(a1 + 8, &v73);
  apple::vision::libraries::facecore::processing::detection::FaceManager::removeHitsOnBorders(a1 + 8, &v73, a4, a5);
  v13 = v73;
  v14 = v74;
  v56 = a2;
  if ((1749801491 * ((v74 - v73) >> 3)) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      apple::vision::libraries::facecore::processing::detection::FaceManager::getEyes(a1 + 8, v13 + v15);
      apple::vision::libraries::facecore::processing::detection::FaceManager::getMouth(a1 + 8, v73 + v15);
      v13 = v73;
      *(v73 + v15 + 192) = 0x3FE0000000000000;
      ++v16;
      v14 = v74;
      v15 += 216;
    }

    while (v16 < (1749801491 * ((v74 - v13) >> 3)));
  }

  v17 = a5;
  if (*(a1 + 9))
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    if ((1749801491 * ((v14 - v13) >> 3)) >= 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = (v13 + v18);
        if (*(v13 + v18 + 148) > 12)
        {
          v21[25] = 0x3FF0000000000000;
        }

        else
        {
          if (v19 >= v72)
          {
            v22 = v19 - v70;
            if ((v22 + 1) >> 61)
            {
              std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
            }

            v23 = (v72 - v70) >> 2;
            if (v23 <= v22 + 1)
            {
              v23 = v22 + 1;
            }

            if (v72 - v70 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::IntegralImage *>>(&v70, v24);
            }

            *(8 * v22) = v21;
            v19 = (8 * v22 + 8);
            v25 = (8 * v22 - (v71 - v70));
            memcpy(v25, v70, v71 - v70);
            v26 = v70;
            v70 = v25;
            v71 = v19;
            v72 = 0;
            if (v26)
            {
              operator delete(v26);
            }

            v17 = a5;
          }

          else
          {
            *v19++ = v21;
          }

          v71 = v19;
          v13 = v73;
          v14 = v74;
        }

        ++v20;
        v18 += 216;
      }

      while (v20 < (1749801491 * ((v14 - v13) >> 3)));
      if ((v19 - v70) > 8)
      {
        global_queue = dispatch_get_global_queue(2, 0);
        group = dispatch_group_create();
        v29 = v70;
        v30 = v71 - v70;
        v31 = (v71 - v70) >> 3;
        if (v31 >= 8)
        {
          v32 = 8;
        }

        else
        {
          v32 = v31;
        }

        v33 = v32 - 1;
        if (v31 < 2)
        {
          v37 = a4;
        }

        else
        {
          v34 = 0;
          v35 = MEMORY[0x277D85DD0];
          if (v33 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = v32 - 1;
          }

          v37 = a4;
          do
          {
            block[0] = v35;
            block[1] = 1174405120;
            block[2] = ___ZN5apple6vision9libraries8facecore10processing9detection14PostProcessing11postProcessERNSt3__16vectorINS2_12FaceInternalENS6_9allocatorIS8_EEEEPhjj_block_invoke;
            block[3] = &__block_descriptor_tmp_3;
            block[4] = a1;
            v65 = v34;
            v62 = 0;
            v63 = 0;
            v61 = 0;
            std::vector<apple::vision::libraries::facecore::FaceInternal *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal **,apple::vision::libraries::facecore::FaceInternal **>(&v61, v70, v71, v71 - v70);
            v64 = a3;
            v66 = v32;
            v67 = a4;
            v68 = v17;
            dispatch_group_async(group, global_queue, block);
            if (v61)
            {
              v62 = v61;
              operator delete(v61);
            }

            ++v34;
          }

          while (v36 != v34);
          v29 = v70;
          v30 = v71 - v70;
          v33 = v32 - 1;
        }

        v38 = (v30 >> 3) * v33 / v32;
        if (v38 < v30 >> 3)
        {
          v39 = v29[v38];
          apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogram(a3, v37, v17, 1, v39[7], v39[8], *v39, &__p, v39[26], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6]);
        }

        dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      }

      else if (v19 != v70)
      {
        v27 = *v70;
        apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogram(a3, a4, v17, 1, v27[7], v27[8], *v27, &__p, v27[26], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6]);
      }
    }

    v40 = v74;
    v41 = 0x84BDA12F684BDA13 * ((v74 - v73) >> 3);
    if (v41 >= 1)
    {
      v42 = v41 & 0x7FFFFFFF;
      do
      {
        v43 = v73 + 216 * v42 - 216;
        v44 = *(v43 + 37);
        if (v44 <= 2)
        {
          v45 = *(v43 + 25);
          if (v45 < 0.33 || (v44 != 2 ? (v46 = v45 < 0.5) : (v46 = 0), v46))
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(&__p, (v73 + 216 * v42), v40, v73 + 216 * v42 - 216);
            v40 = v47;
              ;
            }

            v74 = v40;
          }
        }
      }

      while (v42-- > 1);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }
  }

  if (*(a1 + 10) == 1)
  {
    v51 = v73;
    v50 = v74;
    if ((1749801491 * ((v74 - v73) >> 3)) >= 1)
    {
      v52 = 0;
      v53 = 0;
      do
      {
        if (*(v51 + v52 + 148) <= 5)
        {
          v70 = 0;
          v71 = 0;
          v72 = 0;
          apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::SetImage((a1 + 16), a3, a4, v17, 1, *(v51 + v52 + 28), *(v51 + v52 + 32), *(v51 + v52), 50.0 / *(v51 + v52), *(v51 + v52 + 104));
          (*(**(a1 + 184) + 16))(*(a1 + 184), *(a1 + 32), *(a1 + 40), *(a1 + 44));
          v54 = (*(**a1 + 32))(666.0);
          v55 = v73 + v52;
          if (v54)
          {
            *(v55 + 26) = 0x3FF0000000000000;
          }

          else
          {
            *(v55 + 26) = 0;
          }

          __p = &v70;
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
          v51 = v73;
          v50 = v74;
        }

        ++v53;
        v52 += 216;
      }

      while (v53 < (1749801491 * ((v50 - v51) >> 3)));
    }
  }

  apple::vision::libraries::facecore::processing::detection::FaceManager::getAccuracy(a1 + 8, &v73);
  apple::vision::libraries::facecore::processing::detection::FaceManager::removeOverlappingFaces(a1 + 8, &v73);
  if (&v73 != v56)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(v56, v73, v74, 0x84BDA12F684BDA13 * ((v74 - v73) >> 3));
  }

  v70 = &v73;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v70);
}

void sub_23B0B4DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  *(v30 - 152) = v30 - 128;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100]((v30 - 152));
  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::processing::detection::sortFacesByProperties(uint64_t a1, uint64_t a2)
{
  v2 = *a1 - *a2;
  if (*a1 == *a2)
  {
    v2 = *(a1 + 28) - *(a2 + 28);
  }

  if (!v2)
  {
    v2 = *(a1 + 32) - *(a2 + 32);
  }

  if (!v2)
  {
    v2 = *(a1 + 104) - *(a2 + 104);
  }

  if (!v2)
  {
    v2 = *(a1 + 72) - *(a2 + 72);
  }

  if (!v2)
  {
    v2 = (*(a1 + 152) - *(a2 + 152));
  }

  return v2 >> 31;
}

uint64_t ___ZN5apple6vision9libraries8facecore10processing9detection14PostProcessing11postProcessERNSt3__16vectorINS2_12FaceInternalENS6_9allocatorIS8_EEEEPhjj_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48) - v1;
  v3 = *(result + 76);
  v4 = (v2 >> 3) * *(result + 72);
  if (v4 / v3 < (v4 + (v2 >> 3)) / v3)
  {
    v5 = *(v1 + 8 * (v4 / v3));
    apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogram(*(result + 64), *(result + 80), *(result + 84), 1, v5[7], v5[8], *v5, &__p, v5[26], v5[1], v5[2], v5[3], v5[4], v5[5], v5[6]);
  }

  return result;
}

void sub_23B0B4F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c89_ZTSNSt3__16vectorIPN5apple6vision9libraries8facecore12FaceInternalENS_9allocatorIS6_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<apple::vision::libraries::facecore::FaceInternal *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal **,apple::vision::libraries::facecore::FaceInternal **>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void __destroy_helper_block_e8_40c89_ZTSNSt3__16vectorIPN5apple6vision9libraries8facecore12FaceInternalENS_9allocatorIS6_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,false>(unint64_t a1, __n128 *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = &a2[-14].n128_i8[8];
  v69 = &a2[-41].n128_i64[1];
  v70 = &a2[-27];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0x84BDA12F684BDA13 * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        if ((*a3)(&a2[-14].n128_i64[1], v11))
        {
LABEL_82:
          v61 = v11;
LABEL_83:
          v67 = v10;
LABEL_84:

          std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v61, v67);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,0>(v11, &v11[13].n128_i64[1], &v11[27], &a2[-14].n128_i64[1], a3);
      return;
    }

    if (v15 == 5)
    {
      v62 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,0>(v11, &v11[13].n128_i64[1], &v11[27], &v11[40].n128_i64[1], a3);
      if (!(*a3)(&a2[-14].n128_i64[1], &v11[40].n128_i64[1], v62))
      {
        return;
      }

      v63 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(&v11[40].n128_i64[1], &a2[-14].n128_i64[1]);
      if (!(*a3)(&v11[40].n128_i64[1], &v11[27], v63))
      {
        return;
      }

      v64 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(&v11[27], &v11[40].n128_i64[1]);
      if (!(*a3)(&v11[27], &v11[13].n128_i64[1], v64))
      {
        return;
      }

      v65 = &v11[13].n128_i64[1];
      v66 = &v11[27];
LABEL_100:
      v68 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v65, v66);
      if ((*a3)(&v11[13].n128_i64[1], v11, v68))
      {
        v67 = &v11[13].n128_i64[1];
        v61 = v11;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v14 <= 5183)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(v11, a2, a2, a3, a6);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = v11 + 216 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0x6C01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)(&a2[-14].n128_i64[1], v17);
      if (v19)
      {
        if (v20)
        {
          v22 = a1;
          goto LABEL_27;
        }

        v31 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, v17);
        if ((*a3)(&a2[-14].n128_i64[1], v17, v31))
        {
          v22 = v17;
LABEL_27:
          v28 = &a2[-14].n128_i64[1];
LABEL_28:
          v21 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v22, v28);
        }
      }

      else if (v20)
      {
        v27 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v17, &a2[-14].n128_i64[1]);
        if ((*a3)(v17, a1, v27))
        {
          v22 = a1;
          v28 = v17;
          goto LABEL_28;
        }
      }

      v32 = a1 + 216 * v16 - 216;
      v33 = (*a3)(v32, a1 + 216, v21);
      v34 = (*a3)(v70, v32);
      if (v33)
      {
        if (v34)
        {
          v36 = a1 + 216;
          goto LABEL_40;
        }

        v40 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 216, a1 + 216 * v16 - 216);
        if ((*a3)(v70, a1 + 216 * v16 - 216, v40))
        {
          v36 = a1 + 216 * v16 - 216;
LABEL_40:
          v38 = &a2[-27];
LABEL_41:
          v35 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v36, v38);
        }
      }

      else if (v34)
      {
        v37 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 216 * v16 - 216, v70);
        if ((*a3)(a1 + 216 * v16 - 216, a1 + 216, v37))
        {
          v36 = a1 + 216;
          v38 = a1 + 216 * v16 - 216;
          goto LABEL_41;
        }
      }

      v41 = a1 + 216 * v16;
      v42 = (*a3)(v41 + 216, a1 + 432, v35);
      v43 = (*a3)(v69, v41 + 216);
      if (v42)
      {
        if (v43)
        {
          v45 = a1 + 432;
          goto LABEL_50;
        }

        v48 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 432, v41 + 216);
        if ((*a3)(v69, v41 + 216, v48))
        {
          v45 = v41 + 216;
LABEL_50:
          v47 = &a2[-41].n128_i64[1];
LABEL_51:
          v44 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v45, v47);
        }
      }

      else if (v43)
      {
        v46 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v41 + 216, v69);
        if ((*a3)(v41 + 216, a1 + 432, v46))
        {
          v45 = a1 + 432;
          v47 = v41 + 216;
          goto LABEL_51;
        }
      }

      v49 = (*a3)(v17, v32, v44);
      v50 = (*a3)(v41 + 216, v17);
      if (v49)
      {
        if (v50)
        {
          v51 = v41 + 216;
          v52 = v32;
          goto LABEL_60;
        }

        v54 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v32, v17);
        if ((*a3)(v41 + 216, v17, v54))
        {
          v51 = v41 + 216;
          v52 = v17;
LABEL_60:
          std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v52, v51);
        }
      }

      else if (v50)
      {
        v53 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v17, v41 + 216);
        if ((*a3)(v17, v32, v53))
        {
          v52 = v32;
          v51 = v17;
          goto LABEL_60;
        }
      }

      v26 = a1;
      v30 = v17;
LABEL_62:
      v25 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v26, v30);
      goto LABEL_63;
    }

    v23 = v18(v11, v17);
    v24 = (*a3)(&a2[-14].n128_i64[1], a1);
    if (v23)
    {
      if (v24)
      {
        v26 = v17;
LABEL_37:
        v30 = &a2[-14].n128_i64[1];
        goto LABEL_62;
      }

      v39 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v17, a1);
      if ((*a3)(&a2[-14].n128_i64[1], a1, v39))
      {
        v26 = a1;
        goto LABEL_37;
      }
    }

    else if (v24)
    {
      v29 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, &a2[-14].n128_i64[1]);
      if ((*a3)(a1, v17, v29))
      {
        v26 = v17;
        v30 = a1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 216, a1, v25) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&)>(a1, a2, a3);
      goto LABEL_70;
    }

    v55 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&)>(a1, a2, a3);
    if ((v56 & 1) == 0)
    {
      goto LABEL_68;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, v55, a3);
    v11 = (v55 + 216);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(v55 + 216, a2, a3))
    {
      a4 = -v13;
      a2 = v55;
      if (v57)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if ((v57 & 1) == 0)
    {
LABEL_68:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,false>(a1, v55, a3, -v13, a5 & 1);
      v11 = (v55 + 216);
LABEL_70:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v58 = (*a3)(&v11[13].n128_i64[1], v11);
  v59 = (*a3)(v10, &v11[13].n128_i64[1]);
  if ((v58 & 1) == 0)
  {
    if (!v59)
    {
      return;
    }

    v65 = &v11[13].n128_i64[1];
    v66 = v10;
    goto LABEL_100;
  }

  if (v59)
  {
    goto LABEL_82;
  }

  v60 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v11, &v11[13].n128_i64[1]);
  if ((*a3)(v10, &v11[13].n128_i64[1], v60))
  {
    v61 = &v11[13].n128_i64[1];
    goto LABEL_83;
  }
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v13 = a1;
LABEL_9:
      v15 = a3;
      goto LABEL_10;
    }

    v16 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a2);
    if ((*a5)(a3, a2, v16))
    {
      v13 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a2, a3);
    if ((*a5)(a2, a1, v14))
    {
      v13 = a1;
      v15 = a2;
LABEL_10:
      v12 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v13, v15);
    }
  }

  if ((*a5)(a4, a3, v12))
  {
    v18 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a3, a4);
    if ((*a5)(a3, a2, v18))
    {
      v19 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a2, a3);
      if ((*a5)(a2, a1, v19))
      {

        *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, int *a2, uint64_t (**a3)(int *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 216);
    if ((a1 + 216) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          apple::vision::libraries::facecore::Face::Face(v26, v9);
          v10 = *(v8 + 102);
          v37 = *(v8 + 98);
          v38 = v10;
          v39 = *(v8 + 53);
          v11 = *(v8 + 94);
          v35 = *(v8 + 90);
          v36 = v11;
          v12 = v7;
          while (1)
          {
            v13 = a1 + v12;
            v14 = *(a1 + v12 + 16);
            *(v13 + 216) = *(a1 + v12);
            *(v13 + 232) = v14;
            *(v13 + 248) = *(a1 + v12 + 32);
            std::vector<double>::__move_assign(a1 + v12 + 264, (a1 + v12 + 48));
            *(v13 + 288) = *(v13 + 72);
            std::vector<double>::__move_assign(v13 + 296, (v13 + 80));
            v15 = *(a1 + v12 + 120);
            *(v13 + 320) = *(v13 + 104);
            *(v13 + 336) = v15;
            *(v13 + 352) = *(v13 + 136);
            v16 = *(a1 + v12 + 192);
            *(v13 + 392) = *(v13 + 176);
            *(v13 + 408) = v16;
            *(v13 + 424) = *(v13 + 208);
            v17 = *(a1 + v12 + 160);
            *(v13 + 360) = *(v13 + 144);
            *(v13 + 376) = v17;
            if (!v12)
            {
              break;
            }

            v12 -= 216;
            if (((*a3)(v26, v13 - 216) & 1) == 0)
            {
              v18 = a1 + v12 + 216;
              goto LABEL_10;
            }
          }

          v18 = a1;
LABEL_10:
          v19 = v26[1];
          *v18 = v26[0];
          *(v18 + 16) = v19;
          *(v18 + 32) = v26[2];
          v22 = *(v13 + 48);
          v21 = v13 + 48;
          v20 = v22;
          if (v22)
          {
            *(v18 + 56) = v20;
            operator delete(v20);
            *v21 = 0;
            *(v21 + 8) = 0;
            *(v21 + 16) = 0;
          }

          *v21 = v27;
          *(v18 + 56) = v28;
          v28 = 0uLL;
          v27 = 0;
          *(v18 + 72) = v29;
          v23 = *(v21 + 32);
          if (v23)
          {
            *(v18 + 88) = v23;
            operator delete(v23);
            *(v21 + 32) = 0;
            *(v21 + 40) = 0;
            *(v21 + 48) = 0;
          }

          *(v21 + 32) = v30;
          *(v18 + 88) = v31;
          v31 = 0uLL;
          v30 = 0;
          *(v21 + 56) = v32;
          *(v21 + 72) = v33;
          *(v21 + 88) = v34;
          v24 = v38;
          *(v21 + 128) = v37;
          *(v21 + 144) = v24;
          *(v21 + 160) = v39;
          v25 = v36;
          *(v21 + 96) = v35;
          *(v21 + 112) = v25;
          apple::vision::libraries::facecore::Face::~Face(v26);
        }

        v5 = v9 + 54;
        v7 += 216;
        v8 = v9;
      }

      while (v9 + 54 != a2);
    }
  }
}

void sub_23B0B5A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(int *a1, int *a2, uint64_t (**a3)(int *, int *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 54;
    if (a1 + 54 != a2)
    {
      v7 = a1 - 54;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          apple::vision::libraries::facecore::Face::Face(v23, v8);
          v9 = *(v4 + 102);
          v34 = *(v4 + 98);
          v35 = v9;
          v36 = *(v4 + 53);
          v10 = *(v4 + 94);
          v32 = *(v4 + 90);
          v33 = v10;
          v11 = v7;
          do
          {
            v12 = *(v11 + 58);
            *(v11 + 27) = *(v11 + 54);
            *(v11 + 28) = v12;
            *(v11 + 29) = *(v11 + 62);
            std::vector<double>::__move_assign((v11 + 120), (v11 + 66));
            v11[126] = v11[72];
            std::vector<double>::__move_assign((v11 + 128), (v11 + 74));
            v13 = *(v11 + 21);
            *(v11 + 134) = *(v11 + 20);
            *(v11 + 138) = v13;
            *(v11 + 71) = *(v11 + 44);
            v14 = *(v11 + 102);
            *(v11 + 38) = *(v11 + 98);
            *(v11 + 39) = v14;
            *(v11 + 80) = *(v11 + 53);
            v15 = *(v11 + 94);
            *(v11 + 36) = *(v11 + 90);
            *(v11 + 37) = v15;
            v16 = (*a3)(v23, v11);
            v11 -= 54;
          }

          while ((v16 & 1) != 0);
          v17 = v23[1];
          *(v11 + 27) = v23[0];
          *(v11 + 28) = v17;
          *(v11 + 29) = v23[2];
          v18 = *(v11 + 60);
          if (v18)
          {
            *(v11 + 61) = v18;
            operator delete(v18);
            *(v11 + 60) = 0;
            *(v11 + 61) = 0;
            *(v11 + 62) = 0;
          }

          *(v11 + 30) = v24;
          *(v11 + 62) = v25;
          v25 = 0;
          v24 = 0uLL;
          v11[126] = v26;
          v19 = *(v11 + 64);
          if (v19)
          {
            *(v11 + 65) = v19;
            operator delete(v19);
            *(v11 + 64) = 0;
            *(v11 + 65) = 0;
            *(v11 + 66) = 0;
          }

          *(v11 + 32) = v27;
          *(v11 + 66) = v28;
          v28 = 0;
          v27 = 0uLL;
          v20 = v30;
          *(v11 + 134) = v29;
          *(v11 + 138) = v20;
          *(v11 + 71) = v31;
          v21 = v35;
          *(v11 + 38) = v34;
          *(v11 + 39) = v21;
          *(v11 + 80) = v36;
          v22 = v33;
          *(v11 + 36) = v32;
          *(v11 + 37) = v22;
          apple::vision::libraries::facecore::Face::~Face(v23);
        }

        v5 = v8 + 54;
        v7 += 54;
        v4 = v8;
      }

      while (v8 + 54 != a2);
    }
  }
}

void sub_23B0B5C0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&)>(unint64_t a1, unint64_t a2, unsigned int (**a3)(_OWORD *, unint64_t, __n128))
{
  apple::vision::libraries::facecore::Face::Face(v30, a1);
  v6 = *(a1 + 192);
  v41 = *(a1 + 176);
  v42 = v6;
  v43 = *(a1 + 208);
  v7 = *(a1 + 144);
  v40 = *(a1 + 160);
  v39 = v7;
  if ((*a3)(v30, a2 - 216))
  {
    v8 = a1;
    do
    {
      v8 += 216;
    }

    while (((*a3)(v30, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 216;
    do
    {
      v8 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v10 = (*a3)(v30, v9);
      v9 = v8 + 216;
    }

    while (!v10);
  }

  if (v8 < a2)
  {
    do
    {
      a2 -= 216;
    }

    while (((*a3)(v30, a2) & 1) != 0);
  }

  while (v8 < a2)
  {
    v11 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v8, a2);
    do
    {
      v8 += 216;
    }

    while (!(*a3)(v30, v8, v11));
    do
    {
      a2 -= 216;
    }

    while (((*a3)(v30, a2) & 1) != 0);
  }

  v12 = (v8 - 216);
  if (v8 - 216 != a1)
  {
    v13 = *v12;
    v14 = *(v8 - 184);
    *(a1 + 16) = *(v8 - 200);
    *(a1 + 32) = v14;
    *a1 = v13;
    std::vector<double>::__move_assign(a1 + 48, (v8 - 168));
    *(a1 + 72) = *(v8 - 144);
    std::vector<double>::__move_assign(a1 + 80, (v8 - 136));
    v15 = *(v8 - 112);
    v16 = *(v8 - 96);
    *(a1 + 136) = *(v8 - 80);
    *(a1 + 120) = v16;
    *(a1 + 104) = v15;
    v17 = *(v8 - 40);
    v18 = *(v8 - 24);
    v19 = *(v8 - 56);
    *(a1 + 208) = *(v8 - 8);
    *(a1 + 176) = v17;
    *(a1 + 192) = v18;
    *(a1 + 160) = v19;
    *(a1 + 144) = *(v8 - 72);
  }

  v20 = v30[0];
  v21 = v30[2];
  *(v8 - 200) = v30[1];
  *(v8 - 184) = v21;
  *v12 = v20;
  v22 = *(v8 - 168);
  if (v22)
  {
    *(v8 - 160) = v22;
    operator delete(v22);
    *(v8 - 168) = 0;
    *(v8 - 160) = 0;
    *(v8 - 152) = 0;
  }

  *(v8 - 168) = v31;
  *(v8 - 152) = v32;
  v31 = 0uLL;
  v32 = 0;
  v23 = *(v8 - 136);
  *(v8 - 144) = v33;
  if (v23)
  {
    *(v8 - 128) = v23;
    operator delete(v23);
    *(v8 - 136) = 0;
    *(v8 - 128) = 0;
    *(v8 - 120) = 0;
  }

  *(v8 - 136) = v34;
  *(v8 - 120) = v35;
  v34 = 0uLL;
  v35 = 0;
  v24 = v36;
  v25 = v37;
  *(v8 - 80) = v38;
  *(v8 - 112) = v24;
  *(v8 - 96) = v25;
  v27 = v41;
  v26 = v42;
  v28 = v43;
  *(v8 - 56) = v40;
  *(v8 - 8) = v28;
  *(v8 - 24) = v26;
  *(v8 - 40) = v27;
  *(v8 - 72) = v39;
  apple::vision::libraries::facecore::Face::~Face(v30);
  return v8;
}

void sub_23B0B5E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&)>(uint64_t a1, unint64_t a2, uint64_t (**a3)(unint64_t, _OWORD *, __n128))
{
  apple::vision::libraries::facecore::Face::Face(v32, a1);
  v6 = 0;
  v7 = *(a1 + 192);
  v43 = *(a1 + 176);
  v44 = v7;
  v45 = *(a1 + 208);
  v8 = *(a1 + 144);
  v42 = *(a1 + 160);
  v41 = v8;
  do
  {
    v9 = (*a3)(a1 + v6 + 216, v32);
    v6 += 216;
  }

  while ((v9 & 1) != 0);
  v10 = a1 + v6;
  if (v6 == 216)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 216;
    }

    while (((*a3)(a2, v32) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 216;
    }

    while (!(*a3)(a2, v32));
  }

  v11 = a1 + v6;
  if (v10 < a2)
  {
    v12 = a2;
    do
    {
      v13 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v11, v12);
      do
      {
        v11 += 216;
      }

      while (((*a3)(v11, v32, v13) & 1) != 0);
      do
      {
        v12 -= 216;
      }

      while (!(*a3)(v12, v32));
    }

    while (v11 < v12);
  }

  v14 = (v11 - 216);
  if (v11 - 216 != a1)
  {
    v15 = *v14;
    v16 = *(v11 - 184);
    *(a1 + 16) = *(v11 - 200);
    *(a1 + 32) = v16;
    *a1 = v15;
    std::vector<double>::__move_assign(a1 + 48, (v11 - 168));
    *(a1 + 72) = *(v11 - 144);
    std::vector<double>::__move_assign(a1 + 80, (v11 - 136));
    v17 = *(v11 - 112);
    v18 = *(v11 - 96);
    *(a1 + 136) = *(v11 - 80);
    *(a1 + 120) = v18;
    *(a1 + 104) = v17;
    v19 = *(v11 - 40);
    v20 = *(v11 - 24);
    v21 = *(v11 - 56);
    *(a1 + 208) = *(v11 - 8);
    *(a1 + 176) = v19;
    *(a1 + 192) = v20;
    *(a1 + 160) = v21;
    *(a1 + 144) = *(v11 - 72);
  }

  v22 = v32[0];
  v23 = v32[2];
  *(v11 - 200) = v32[1];
  *(v11 - 184) = v23;
  *v14 = v22;
  v24 = *(v11 - 168);
  if (v24)
  {
    *(v11 - 160) = v24;
    operator delete(v24);
    *(v11 - 168) = 0;
    *(v11 - 160) = 0;
    *(v11 - 152) = 0;
  }

  *(v11 - 168) = v33;
  *(v11 - 152) = v34;
  v33 = 0uLL;
  v34 = 0;
  v25 = *(v11 - 136);
  *(v11 - 144) = v35;
  if (v25)
  {
    *(v11 - 128) = v25;
    operator delete(v25);
    *(v11 - 136) = 0;
    *(v11 - 128) = 0;
    *(v11 - 120) = 0;
  }

  *(v11 - 136) = v36;
  *(v11 - 120) = v37;
  v36 = 0uLL;
  v37 = 0;
  v26 = v38;
  v27 = v39;
  *(v11 - 80) = v40;
  *(v11 - 112) = v26;
  *(v11 - 96) = v27;
  v29 = v43;
  v28 = v44;
  v30 = v45;
  *(v11 - 56) = v42;
  *(v11 - 8) = v30;
  *(v11 - 24) = v28;
  *(v11 - 40) = v29;
  *(v11 - 72) = v41;
  apple::vision::libraries::facecore::Face::~Face(v32);
  return v11 - 216;
}

void sub_23B0B6138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)(a2 - 216, a1))
      {
        v7 = a1;
        v8 = v4 - 216;
LABEL_30:
        std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = a1 + 432;
    v17 = (*a3)(a1 + 216, a1);
    v18 = (*a3)(a1 + 432, a1 + 216);
    if (v17)
    {
      if (v18)
      {
        v20 = a1;
      }

      else
      {
        v25 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a1 + 216);
        if (!(*a3)(a1 + 432, a1 + 216, v25))
        {
          goto LABEL_35;
        }

        v20 = a1 + 216;
      }

      v23 = a1 + 432;
    }

    else
    {
      if (!v18 || (v22 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 216, a1 + 432), !(*a3)(a1 + 216, a1, v22)))
      {
LABEL_35:
        v26 = a1 + 648;
        if (a1 + 648 != v4)
        {
          v27 = 0;
          v28 = 0;
          v49 = v4;
          while (1)
          {
            if ((*a3)(v26, v16, v19))
            {
              apple::vision::libraries::facecore::Face::Face(v50, v26);
              v29 = *(v26 + 192);
              v61 = *(v26 + 176);
              v62 = v29;
              v63 = *(v26 + 208);
              v30 = *(v26 + 160);
              v59 = *(v26 + 144);
              v60 = v30;
              v31 = v27;
              while (1)
              {
                v32 = a1 + v31;
                v33 = (a1 + v31 + 648);
                v34 = *(a1 + v31 + 448);
                *v33 = *(a1 + v31 + 432);
                v33[1] = v34;
                v33[2] = *(a1 + v31 + 464);
                std::vector<double>::__move_assign(a1 + v31 + 696, (a1 + v31 + 480));
                *(v32 + 720) = *(v32 + 504);
                v35 = (a1 + v31 + 512);
                std::vector<double>::__move_assign(v32 + 728, (v32 + 512));
                v36 = (a1 + v31 + 536);
                v37 = *(a1 + v31 + 552);
                *(v32 + 752) = *(v32 + 536);
                *(v32 + 768) = v37;
                *(v32 + 784) = *(v32 + 568);
                v38 = *(a1 + v31 + 624);
                *(v32 + 824) = *(v32 + 608);
                *(v32 + 840) = v38;
                *(v32 + 856) = *(v32 + 640);
                v39 = *(a1 + v31 + 592);
                *(v32 + 792) = *(v32 + 576);
                *(v32 + 808) = v39;
                if (v31 == -432)
                {
                  break;
                }

                v31 -= 216;
                if (((*a3)(v50, v32 + 216) & 1) == 0)
                {
                  v40 = a1 + v31 + 648;
                  goto LABEL_43;
                }
              }

              v40 = a1;
LABEL_43:
              v41 = v50[1];
              *v40 = v50[0];
              *(v40 + 16) = v41;
              *(v40 + 32) = v50[2];
              v42 = *(v32 + 480);
              if (v42)
              {
                *(v40 + 56) = v42;
                operator delete(v42);
                *(v32 + 480) = 0;
                *(v32 + 488) = 0;
                *(v32 + 496) = 0;
              }

              *(v32 + 480) = v51;
              *(v40 + 56) = v52;
              v52 = 0uLL;
              v51 = 0;
              *(v40 + 72) = v53;
              v43 = *v35;
              if (*v35)
              {
                *(v40 + 88) = v43;
                operator delete(v43);
                *v35 = 0;
                *(v32 + 520) = 0;
                *(v32 + 528) = 0;
              }

              *v35 = v54;
              *(v40 + 88) = v55;
              v55 = 0uLL;
              v54 = 0;
              v44 = v57;
              *v36 = v56;
              *(v32 + 552) = v44;
              *(v32 + 568) = v58;
              v45 = v62;
              *(v32 + 608) = v61;
              *(v32 + 624) = v45;
              *(v32 + 640) = v63;
              v46 = v60;
              ++v28;
              *(v32 + 576) = v59;
              *(v32 + 592) = v46;
              if (v28 == 8)
              {
                v47 = v26 + 216 == v49;
                apple::vision::libraries::facecore::Face::~Face(v50);
                return v47;
              }

              apple::vision::libraries::facecore::Face::~Face(v50);
              v4 = v49;
            }

            v16 = v26;
            v27 += 216;
            v26 += 216;
            if (v26 == v4)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v23 = a1 + 216;
      v20 = a1;
    }

    v19 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v20, v23);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,0>(a1, a1 + 216, a1 + 432, a2 - 216, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v9 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,0>(a1, a1 + 216, a1 + 432, a1 + 648, a3);
    if (!(*a3)(v4 - 216, a1 + 648, v9))
    {
      return 1;
    }

    v10 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 648, v4 - 216);
    if (!(*a3)(a1 + 648, a1 + 432, v10))
    {
      return 1;
    }

    v11 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1 + 432, a1 + 648);
    if (!(*a3)(a1 + 432, a1 + 216, v11))
    {
      return 1;
    }

    v12 = a1 + 216;
    v13 = a1 + 432;
    goto LABEL_22;
  }

  v14 = (*a3)(a1 + 216, a1);
  v15 = (*a3)(v4 - 216, a1 + 216);
  if (v14)
  {
    if (v15)
    {
      v7 = a1;
    }

    else
    {
      v24 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a1 + 216);
      if (!(*a3)(v4 - 216, a1 + 216, v24))
      {
        return 1;
      }

      v7 = a1 + 216;
    }

    v8 = v4 - 216;
    goto LABEL_30;
  }

  if (v15)
  {
    v12 = a1 + 216;
    v13 = v4 - 216;
LABEL_22:
    v21 = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v12, v13);
    if ((*a3)(a1 + 216, a1, v21))
    {
      v8 = a1 + 216;
      v7 = a1;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_23B0B65D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(__n128 *a1, __n128 *a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 217)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 216 * v11);
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, a4, v10, v13);
        v13 = (v13 - 216);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, a1, a5))
        {
          std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v14, a1);
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, a4, v10, a1);
        }

        v14 += 216;
      }

      while (v14 != a3);
    }

    if (v9 >= 217)
    {
      v15 = 0x84BDA12F684BDA13 * (v9 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, v7, a4, v15);
        v7 -= 216;
      }

      while (v15-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __n128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0x84BDA12F684BDA13 * ((a4 - a1) >> 3)))
    {
      v10 = (0x97B425ED097B426 * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 216 * v10);
      v12 = 0x97B425ED097B426 * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)(a1 + 216 * v10, v11 + 216))
      {
        v11 = (v11 + 216);
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        apple::vision::libraries::facecore::Face::Face(v34, v5);
        v14 = v5[12];
        v45 = v5[11];
        v46 = v14;
        v47 = v5[13].n128_i64[0];
        v15 = v5[10];
        v43 = v5[9];
        v44 = v15;
        do
        {
          v16 = v11;
          v17 = *v11;
          v18 = v11[2];
          v5[1] = v11[1];
          v5[2] = v18;
          *v5 = v17;
          std::vector<double>::__move_assign(&v5[3], v11 + 3);
          v5[4].n128_u32[2] = *(v11 + 18);
          std::vector<double>::__move_assign(&v5[5], v11 + 5);
          v19 = *(v11 + 104);
          v20 = *(v11 + 120);
          v5[8].n128_u64[1] = *(v11 + 17);
          *(v5 + 120) = v20;
          *(v5 + 104) = v19;
          v22 = v11[11];
          v21 = v11[12];
          v23 = v11[10];
          v5[13].n128_u64[0] = *(v11 + 26);
          v5[11] = v22;
          v5[12] = v21;
          v5[10] = v23;
          v5[9] = v11[9];
          if (v7 < v10)
          {
            break;
          }

          v24 = (2 * v10) | 1;
          v11 = (a1 + 216 * v24);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v24;
          }

          else if ((*a2)(a1 + 216 * v24, v11 + 216))
          {
            v11 = (v11 + 216);
          }

          else
          {
            v10 = v24;
          }

          v5 = v16;
        }

        while (!(*a2)(v11, v34));
        v25 = v34[0];
        v26 = v34[2];
        v16[1] = v34[1];
        v16[2] = v26;
        *v16 = v25;
        v27 = *(v16 + 6);
        if (v27)
        {
          *(v16 + 7) = v27;
          operator delete(v27);
          *(v16 + 6) = 0;
          *(v16 + 7) = 0;
          *(v16 + 8) = 0;
        }

        v16[3] = v35;
        *(v16 + 8) = v36;
        v35 = 0uLL;
        v36 = 0;
        *(v16 + 18) = v37;
        v28 = *(v16 + 10);
        if (v28)
        {
          *(v16 + 11) = v28;
          operator delete(v28);
          *(v16 + 10) = 0;
          *(v16 + 11) = 0;
          *(v16 + 12) = 0;
        }

        v16[5] = v38;
        *(v16 + 12) = v39;
        v38 = 0uLL;
        v39 = 0;
        v29 = v42;
        v30 = v41;
        *(v16 + 104) = v40;
        *(v16 + 120) = v30;
        *(v16 + 17) = v29;
        v32 = v45;
        v31 = v46;
        v33 = v44;
        *(v16 + 26) = v47;
        v16[11] = v32;
        v16[12] = v31;
        v16[10] = v33;
        v16[9] = v43;
        apple::vision::libraries::facecore::Face::~Face(v34);
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    apple::vision::libraries::facecore::Face::Face(&v36, a1);
    v8 = *(a1 + 192);
    v49 = *(a1 + 176);
    v50 = v8;
    v51 = *(a1 + 208);
    v9 = *(a1 + 160);
    v47 = *(a1 + 144);
    v48 = v9;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 216);
    if (v10 == (a2 - 216))
    {
      v27 = v36;
      v28 = v38;
      v10[1] = v37;
      v10[2] = v28;
      *v10 = v27;
      v29 = *(v10 + 6);
      if (v29)
      {
        *(v11 + 7) = v29;
        operator delete(v29);
        *(v11 + 6) = 0;
        *(v11 + 7) = 0;
        *(v11 + 8) = 0;
      }

      v30 = *(v11 + 10);
      v11[3] = v39;
      *(v11 + 8) = v40;
      v39 = 0uLL;
      v40 = 0;
      *(v11 + 18) = v41;
      if (v30)
      {
        *(v11 + 11) = v30;
        operator delete(v30);
        *(v11 + 10) = 0;
        *(v11 + 11) = 0;
        *(v11 + 12) = 0;
      }

      v11[5] = v42;
      *(v11 + 12) = v43;
      v42 = 0uLL;
      v43 = 0;
      v31 = v46;
      v32 = v45;
      *(v11 + 104) = v44;
      *(v11 + 120) = v32;
      *(v11 + 17) = v31;
      v34 = v49;
      v33 = v50;
      v35 = v48;
      *(v11 + 26) = v51;
      v11[11] = v34;
      v11[12] = v33;
      v11[10] = v35;
      v11[9] = v47;
    }

    else
    {
      v13 = *v12;
      v14 = *(a2 - 184);
      v10[1] = *(a2 - 200);
      v10[2] = v14;
      *v10 = v13;
      std::vector<double>::__move_assign((v10 + 3), (a2 - 168));
      *(v11 + 18) = *(a2 - 144);
      std::vector<double>::__move_assign((v11 + 5), (a2 - 136));
      v15 = *(a2 - 112);
      v16 = *(a2 - 96);
      *(v11 + 17) = *(a2 - 80);
      *(v11 + 120) = v16;
      *(v11 + 104) = v15;
      v17 = *(a2 - 40);
      v18 = *(a2 - 24);
      v19 = *(a2 - 56);
      *(v11 + 26) = *(a2 - 8);
      v11[11] = v17;
      v11[12] = v18;
      v11[10] = v19;
      v11[9] = *(a2 - 72);
      v20 = v11 + 216;
      v21 = v37;
      *v12 = v36;
      *(a2 - 200) = v21;
      *(a2 - 184) = v38;
      v22 = *(a2 - 168);
      if (v22)
      {
        *(a2 - 160) = v22;
        operator delete(v22);
        *(a2 - 168) = 0;
        *(a2 - 160) = 0;
        *(a2 - 152) = 0;
      }

      *(a2 - 168) = v39;
      *(a2 - 152) = v40;
      v40 = 0;
      v39 = 0uLL;
      *(a2 - 144) = v41;
      v23 = *(a2 - 136);
      if (v23)
      {
        *(a2 - 128) = v23;
        operator delete(v23);
        *(a2 - 136) = 0;
        *(a2 - 128) = 0;
        *(a2 - 120) = 0;
      }

      *(a2 - 136) = v42;
      *(a2 - 120) = v43;
      v43 = 0;
      v42 = 0uLL;
      v24 = v45;
      *(a2 - 112) = v44;
      *(a2 - 96) = v24;
      *(a2 - 80) = v46;
      v25 = v50;
      *(a2 - 40) = v49;
      *(a2 - 24) = v25;
      *(a2 - 8) = v51;
      v26 = v48;
      *(a2 - 72) = v47;
      *(a2 - 56) = v26;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(a1, v20, a3, 0x84BDA12F684BDA13 * ((v20 - a1) >> 3));
    }

    apple::vision::libraries::facecore::Face::~Face(&v36);
  }
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(__n128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 216 * v6;
    v9 = (v8 + 216);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 432);
      if ((*a2)(v8 + 216, v8 + 432))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    v14 = v9[2];
    a1[1] = v9[1];
    a1[2] = v14;
    *a1 = v13;
    std::vector<double>::__move_assign(&a1[3], v9 + 3);
    a1[4].n128_u32[2] = *(v9 + 18);
    std::vector<double>::__move_assign(&a1[5], v9 + 5);
    v15 = *(v9 + 104);
    v16 = *(v9 + 120);
    a1[8].n128_u64[1] = *(v9 + 17);
    *(a1 + 120) = v16;
    *(a1 + 104) = v15;
    v18 = v9[11];
    v17 = v9[12];
    v19 = v9[10];
    a1[13].n128_u64[0] = *(v9 + 26);
    a1[11] = v18;
    a1[12] = v17;
    a1[10] = v19;
    a1[9] = v9[9];
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(apple::vision::libraries::facecore::FaceInternal const&,apple::vision::libraries::facecore::FaceInternal const&),apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 216 * (v4 >> 1));
    v10 = (a2 - 216);
    if ((*a3)(v9, a2 - 216))
    {
      apple::vision::libraries::facecore::Face::Face(v29, v10);
      v12 = *(a2 - 56);
      v13 = *(a2 - 24);
      v40 = *(a2 - 40);
      v41 = v13;
      v42 = *(a2 - 8);
      v14 = *(a2 - 72);
      v39 = v12;
      v38 = v14;
      do
      {
        v15 = v9;
        v16 = *v9;
        v17 = v9[2];
        v10[1] = v9[1];
        v10[2] = v17;
        *v10 = v16;
        std::vector<double>::__move_assign(&v10[3], v9 + 3);
        v10[4].n128_u32[2] = *(v9 + 18);
        std::vector<double>::__move_assign(&v10[5], v9 + 5);
        v18 = *(v9 + 104);
        v19 = *(v9 + 120);
        v10[8].n128_u64[1] = *(v9 + 17);
        *(v10 + 120) = v19;
        *(v10 + 104) = v18;
        v21 = v9[11];
        v20 = v9[12];
        v22 = v9[10];
        v10[13].n128_u64[0] = *(v9 + 26);
        v10[11] = v21;
        v10[12] = v20;
        v10[10] = v22;
        v10[9] = v9[9];
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 216 * v8);
        v10 = v15;
      }

      while (((*a3)(v9, v29) & 1) != 0);
      v23 = v29[1];
      *v15 = v29[0];
      v15[1] = v23;
      v15[2] = v29[2];
      v24 = *(v15 + 6);
      if (v24)
      {
        *(v15 + 7) = v24;
        operator delete(v24);
        *(v15 + 6) = 0;
        *(v15 + 7) = 0;
        *(v15 + 8) = 0;
      }

      v15[3] = v30;
      *(v15 + 8) = v31;
      v31 = 0;
      v30 = 0uLL;
      *(v15 + 18) = v32;
      v25 = *(v15 + 10);
      if (v25)
      {
        *(v15 + 11) = v25;
        operator delete(v25);
        *(v15 + 10) = 0;
        *(v15 + 11) = 0;
        *(v15 + 12) = 0;
      }

      v15[5] = v33;
      *(v15 + 12) = v34;
      v34 = 0;
      v33 = 0uLL;
      v26 = v36;
      *(v15 + 104) = v35;
      *(v15 + 120) = v26;
      *(v15 + 17) = v37;
      v27 = v41;
      v15[11] = v40;
      v15[12] = v27;
      *(v15 + 26) = v42;
      v28 = v39;
      v15[9] = v38;
      v15[10] = v28;
      apple::vision::libraries::facecore::Face::~Face(v29);
    }
  }

  return result;
}

void sub_23B0B6FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal **,apple::vision::libraries::facecore::FaceInternal **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23B0B701C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::estimateRigidTransformation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) - *(a2 + 8);
  v3 = *(a2 + 12) - *(a1 + 12);
  if (((v3 * v3) + (v2 * v2)) != 0.0)
  {
    operator new();
  }

  return 0;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeReprojectionError(uint64_t a1, uint64_t *a2)
{
  *(a2 + 7) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 6) < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = *a2;
    v7 = 0.0;
    do
    {
      v13 = 0;
      v14 = 0;
      apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPoint(a1, (v6 + v4 + 8), &v14);
      apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPointReverse(a1, (*a2 + v4 + 32), &v13);
      v9 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::fastSqrtf(v8, ((*(*a2 + v4 + 36) - *(&v14 + 1)) * (*(*a2 + v4 + 36) - *(&v14 + 1))) + ((*(*a2 + v4 + 32) - *&v14) * (*(*a2 + v4 + 32) - *&v14)));
      v11 = v9 + apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::fastSqrtf(v10, ((*(*a2 + v4 + 12) - *(&v13 + 1)) * (*(*a2 + v4 + 12) - *(&v13 + 1))) + ((*(*a2 + v4 + 8) - *&v13) * (*(*a2 + v4 + 8) - *&v13)));
      if (v11 >= 4.0)
      {
        v6 = *a2;
        *(*a2 + v4 + 56) = 0;
      }

      else
      {
        ++*(a1 + 24);
        v6 = *a2;
        *(*a2 + v4 + 56) = 1;
        ++*(a2 + 7);
      }

      v7 = v7 + v11;
      ++v5;
      v4 += 60;
    }

    while (v5 < *(a2 + 6));
  }

  *(a1 + 28) = v7;
  return v7;
}

float32x2_t **apple::vision::libraries::facecore::processing::tracking::keypointtracker::ransac(float32x2_t **result, void *a2)
{
  if (result[1] != *result)
  {
    v2 = result;
    v3 = *(result + 6);
    if (v3 >= 2)
    {
      v5 = *result + 4;
      do
      {
        v5[-3] = vadd_f32(vcvt_f32_s32(v5[-4]), 0xBF000000BF000000);
        *v5 = vadd_f32(vcvt_f32_s32(v5[-1]), 0xBF000000BF000000);
        v5 = (v5 + 60);
        --v3;
      }

      while (v3);
      v6 = 0;
      v7 = 0;
      v8 = 0.0;
      v9 = 1;
      v10 = 20000;
      do
      {
        v11 = rand() % *(v2 + 24);
        do
        {
          v12 = rand() % *(v2 + 24);
        }

        while (v12 == v11);
        v13 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::estimateRigidTransformation(*v2 + 60 * v11, *v2 + 60 * v12);
        apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeReprojectionError(v13, v2);
        v14 = *(v13 + 24);
        v15 = v14 / *(v2 + 24);
        if (v15 > v8)
        {
          v8 = 1.0;
          if (v15 == 1.0)
          {
            v10 = 0;
          }

          else
          {
            if (v15 == 0.0)
            {
              v10 = 20000;
            }

            else
            {
              v16 = (-6.0 / logf(1.0 - v15));
              if (v16 <= 20000)
              {
                v10 = v16;
              }

              else
              {
                v10 = 0;
              }
            }

            v8 = v15;
          }
        }

        if (v7 <= v14)
        {
          if (v6)
          {
            MEMORY[0x23EE98360](v6, 0x1000C40E0EAB150);
          }

          result = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingArray::operator=(a2, v2);
          v7 = v14;
          v6 = v13;
        }

        else
        {
          result = MEMORY[0x23EE98360](v13, 0x1000C40E0EAB150);
        }
      }

      while (v9++ < v10);
      if (v6)
      {
        if ((*(v6 + 24) / *(v2 + 24)) >= 0.0)
        {
          apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeRigidTransformationWithInliers();
        }

        JUMPOUT(0x23EE98360);
      }
    }
  }

  return result;
}

float32x2_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeCentroidOnInliers(uint64_t a1, float32x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, int32x2_t a6)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (*a1 + 32);
    do
    {
      if (v8[3].i32[0])
      {
        *a2 = vadd_f32(v8[-3], *a2);
        *a3 = vadd_f32(*v8, *a3);
        *(a4 + 8 * v7) = v8[-3];
        *(a5 + 8 * v7++) = *v8;
      }

      v8 = (v8 + 60);
      --v6;
    }

    while (v6);
  }

  v9 = vdup_lane_s32(a6, 0);
  *a2 = vdiv_f32(*a2, v9);
  result = vdiv_f32(*a3, v9);
  *a3 = result;
  return result;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeRhoComponant(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float *a5, float *a6, float a7)
{
  if (a7 > 0.0)
  {
    v13 = a1;
    v14 = 1;
    do
    {
      *v13 = vsub_f32(*v13, *a3);
      *a2 = vsub_f32(*a2, *a4);
      v15 = v13->f32[0];
      v16 = v13->f32[1];
      ++v13;
      *a5 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::fastSqrtf(a1, (v16 * v16) + (v15 * v15)) + *a5;
      v17 = a2->f32[0];
      v18 = a2->f32[1];
      ++a2;
      *a6 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::fastSqrtf(v19, (v18 * v18) + (v17 * v17)) + *a6;
      v20 = v14++;
    }

    while (v20 < a7);
  }

  *a5 = *a5 / a7;
  result = *a6 / a7;
  *a6 = result;
  return result;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeThetaComponant(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, float a6, float a7, float a8)
{
  v8 = 1.41421356 / a6;
  v9 = 1.41421356 / a7;
  v10.i32[0] = 0;
  v11 = 0.0;
  v12 = 0.0;
  if (a8 > 0.0)
  {
    v13 = 0;
    v10 = 0;
    do
    {
      *(a1 + 8 * v13) = vmul_n_f32(*(a1 + 8 * v13), v8);
      v14 = vmul_n_f32(*(a2 + 8 * v13), v9);
      *(a2 + 8 * v13) = v14;
      v15 = *(a1 + 8 * v13);
      v16 = v15.f32[1];
      v12 = v12 + (vmuls_lane_f32(v15.f32[1], v15, 1) + (v15.f32[0] * v15.f32[0]));
      v17 = vmul_lane_f32(v15, v14, 1);
      v18 = vdup_lane_s32(v15, 0);
      v18.f32[0] = -v16;
      v10 = vadd_f32(v10, vmla_n_f32(v17, v18, v14.f32[0]));
      ++v13;
    }

    while (v13 < a8);
    v11 = v10.f32[1];
  }

  v19 = (v8 / v9) / v12;
  v20 = v11 * v19;
  v21 = v10.f32[0] * v19;
  v22 = a3[1];
  v23 = a4[1];
  v24 = *a4 + (((v10.f32[0] * v19) * v22) - (v20 * *a3));
  v25 = -(v10.f32[0] * v19);
  v26 = -(v20 * v22) - (v21 * *a3);
  *a5 = v20;
  a5[1] = v25;
  a5[2] = v21;
  a5[3] = v20;
  result = v26 + v23;
  a5[4] = v24;
  a5[5] = v26 + v23;
  return result;
}

id FCRFaceDetectionParameters()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"FCRDetectorType";
  v3[0] = @"FCRDetectorTypeFaceDetection";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id FCRFastFaceDetectionParameters()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"FCRDetectorType";
  v3[0] = @"FCRDetectorTypeFastFaceDetection";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id FCRPreciseDetectionParameters()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"FCRDetectorType";
  v3[0] = @"FCRDetectorTypePreciseFaceDetection";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id FCRStandardTrackingParameters()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"FCRTrackingType";
  v3[0] = @"FCRTrackingTypeStandard";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id FCRKeypointTrackingParameters()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"FCRTrackingType";
  v3[0] = @"FCRTrackingTypeKeypoints";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

void sub_23B0DCBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23B0DDBC0(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::Face::~Face(v2);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23B0DE708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23B0DED68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        apple::vision::libraries::facecore::Face::~Face((v4 - 144));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23B0DF26C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

apple::vision::libraries::facecore::FaceCoreAPI *std::unique_ptr<apple::vision::libraries::facecore::FaceCoreAPI>::reset[abi:ne200100](apple::vision::libraries::facecore::FaceCoreAPI **a1, apple::vision::libraries::facecore::FaceCoreAPI *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    apple::vision::libraries::facecore::FaceCoreAPI::~FaceCoreAPI(result);

    JUMPOUT(0x23EE98360);
  }

  return result;
}

void sub_23B0DF508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, __CVBuffer *);
  apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(va1);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(va);

  _Unwind_Resume(a1);
}

void **apple::vision::LockedPixelImageBuffer<unsigned char const[4],1ull>::LockedPixelImageBuffer(void **a1, CVPixelBufferRef *a2)
{
  Width = CVPixelBufferGetWidth(*a2);
  Height = CVPixelBufferGetHeight(*a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*a2);
  *a1 = 0;
  a1[1] = Height;
  a1[2] = Width;
  a1[3] = BytesPerRow;
  a1[4] = 0;
  apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::BaseAddressLock(a1 + 5, *a2);
  *a1 = CVPixelBufferGetBaseAddress(*a2);
  v7 = a1[4];
  if (v7)
  {
    CVPixelBufferRelease(v7);
    a1[4] = 0;
  }

  a1[4] = *a2;
  *a2 = 0;
  return a1;
}

void *apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::BaseAddressLock(void *a1, CVPixelBufferRef texture)
{
  *a1 = texture;
  CVPixelBufferRetain(texture);
  v4 = CVPixelBufferLockBaseAddress(texture, 1uLL);
  if (v4)
  {
    v6 = v4;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284DF40C8;
    exception[2] = v6;
  }

  return a1;
}

void apple::vision::CVPixelBufferWrapper::LockException::~LockException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x23EE98360);
}

CVPixelBufferRef *apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(CVPixelBufferRef *a1)
{
  CVPixelBufferUnlockBaseAddress(*a1, 1uLL);
  CVPixelBufferRelease(*a1);
  return a1;
}

void apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(__CVBuffer **this)
{
  v2 = *this;
  if (v2)
  {
    CVPixelBufferRelease(v2);
    *this = 0;
  }
}

double apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::DenseGradientFeature(apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature *this)
{
  *this = &unk_284DF3D88;
  *&result = 0x800000012;
  *(this + 1) = 0x800000012;
  *(this + 2) = 0;
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::~DenseGradientFeature(apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature *this)
{
  *this = &unk_284DF3D88;
  v1 = *(this + 2);
  if (v1)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::~FeatureProcessing(v1);
    MEMORY[0x23EE98360]();
  }
}

{
  apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::~DenseGradientFeature(this);

  JUMPOUT(0x23EE98360);
}

apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::setFeatureProcessing(apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature *this, apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *a2)
{
  result = *(this + 2);
  if (result)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::~FeatureProcessing(result);
    result = MEMORY[0x23EE98360]();
  }

  *(this + 2) = a2;
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::extractFaceprintPart(apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature *this, unsigned __int8 *a2, int a3, int a4, apple::vision::libraries::facecore::FaceCoreContext *a5, float a6)
{
  if (a5)
  {
    if (a3 >= 1)
    {
      v6 = 0;
      v7 = (this + 1176);
      do
      {
        v8 = a4;
        v9 = a2;
        v10 = v7;
        if (a4 >= 1)
        {
          do
          {
            LOBYTE(a6) = *v9;
            a6 = LODWORD(a6);
            *v10++ = a6;
            v9 += a3;
            --v8;
          }

          while (v8);
        }

        ++v6;
        v7 += a4;
        ++a2;
      }

      while (v6 != a3);
    }

    v11[0] = 8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor::InitData(v11, this + 294, a4, a3);
  }

  apple::vision::libraries::facecore::mod::facerecognition::DenseGradientFeature::extractFaceprintPart();
}

void sub_23B1033C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor::~GradientDenseDescriptor(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::transformF(apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *this@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, unsigned int a7@<S0>)
{
  v35[1] = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (*(this + 40))
  {
    if (a5)
    {
      if (a4 >= 1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          if (a3 >= 1)
          {
            v15 = (*(this + 1) + 4 * v14);
            v16 = (*(this + 3) + 4 * v14);
            v14 += a3;
            v17 = a3;
            v18 = a2;
            do
            {
              LOBYTE(a7) = *v18;
              v19 = *v15++;
              *&a7 = a7 - v19;
              *v16++ = *&a7;
              v18 += a4;
              --v17;
            }

            while (v17);
          }

          ++v13;
          ++a2;
        }

        while (v13 != a4);
      }
    }

    else
    {
      v24 = *(this + 11);
      if (v24 >= 1)
      {
        v25 = *(this + 1);
        v26 = *(this + 3);
        do
        {
          v27 = *a2++;
          v28 = v27;
          v29 = *v25++;
          *v26++ = v28 - v29;
          --v24;
        }

        while (v24);
      }
    }

    MEMORY[0x28223BE20](this);
    v31 = (v35 - ((v30 + 15) & 0x7FFFFFFF0));
    vDSP_mmul(*this, 1, *(this + 3), 1, *(this + 4), 1, *(this + 12), 1uLL, *(this + 11));
    vDSP_mmul(*(this + 2), 1, *(this + 4), 1, v31, 1, *(this + 12), 1uLL, *(this + 12));
    if (*(this + 12) >= 1)
    {
      v32 = 0;
      do
      {
        v35[0] = v31[v32];
        std::vector<double>::push_back[abi:ne200100](a6, v35);
        ++v32;
      }

      while (v32 < *(this + 12));
    }
  }

  else
  {
    puts("not m_initialized!");
    if (a5)
    {
      if (a4 >= 1)
      {
        v21 = 0;
        do
        {
          v22 = a3;
          v23 = a2;
          if (a3 >= 1)
          {
            do
            {
              LOBYTE(v20) = *v23;
              v35[0] = v20;
              std::vector<double>::push_back[abi:ne200100](a6, v35);
              v23 += a4;
              --v22;
            }

            while (v22);
          }

          ++v21;
          ++a2;
        }

        while (v21 != a4);
      }
    }

    else
    {
      v33 = (a4 * a3);
      if (v33 >= 1)
      {
        do
        {
          v34 = *a2++;
          v35[0] = v34;
          std::vector<double>::push_back[abi:ne200100](a6, v35);
          --v33;
        }

        while (v33);
      }
    }
  }
}

void sub_23B103688(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::~FeatureProcessing(apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C8052888210);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x23EE98340](v4, 0x1000C8052888210);
  }

  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x23EE98340](v5, 0x1000C8052888210);
  }
}

void sub_23B103854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 255) < 0)
  {
    operator delete(*v3);
  }

  v6 = *v4;
  if (*v4)
  {
    *(v2 + 192) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 152);
  if (v7)
  {
    *(v2 + 160) = v7;
    operator delete(v7);
  }

  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](va);
  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    std::default_delete<apple::vision::libraries::facecore::FaceCoreContext::Impl>::operator()[abi:ne200100](v2, v8);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::FaceCoreContext::~FaceCoreContext(void **this)
{
  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  v2 = this[23];
  if (v2)
  {
    this[24] = v2;
    operator delete(v2);
  }

  v3 = this[19];
  if (v3)
  {
    this[20] = v3;
    operator delete(v3);
  }

  v5 = this + 16;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    std::default_delete<apple::vision::libraries::facecore::FaceCoreContext::Impl>::operator()[abi:ne200100](this, v4);
  }
}

void apple::vision::libraries::facecore::FaceCoreContext::setUpForProcessing(apple::vision::libraries::facecore::FaceCoreContext *this)
{
  v2 = *(this + 17);
  v3 = *(this + 16);
  while (v2 != v3)
  {
    apple::vision::libraries::facecore::Face::~Face((v2 - 216));
  }

  *(this + 17) = v3;
}

apple::vision::libraries::facecore::Face *apple::vision::libraries::facecore::FaceCoreContext::cleanUpTemporaryData(apple::vision::libraries::facecore::FaceCoreContext *this)
{
  v3 = (this + 112);
  v2 = *(this + 14);
  if (v2 && v2 != *(this + 12))
  {
    MEMORY[0x23EE98360](v2, 0x1000C4077774924);
    *v3 = *(this + 6);
  }

  return apple::vision::libraries::facecore::FaceCoreContext::cleanUpDetailsExtractionProcessedFace(this);
}

__n128 apple::vision::libraries::facecore::FaceCoreContext::cleanUpProcessedImage(apple::vision::libraries::facecore::FaceCoreContext *this)
{
  v3 = (this + 112);
  v2 = *(this + 14);
  if (v2)
  {
    v5 = *(this + 12);
    v4 = (this + 96);
    if (v2 != v5)
    {
      MEMORY[0x23EE98360](v2, 0x1000C4077774924);
      result = *v4;
      *v3 = *v4;
    }
  }

  return result;
}

apple::vision::libraries::facecore::Face *apple::vision::libraries::facecore::FaceCoreContext::cleanUpDetailsExtractionProcessedFace(apple::vision::libraries::facecore::FaceCoreContext *this)
{
  result = *(this + 27);
  if (result)
  {
    apple::vision::libraries::facecore::Face::~Face(result);
    result = MEMORY[0x23EE98360]();
    *(this + 27) = 0;
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::FaceCoreContext::duplicateImageDataIfNeeded(uint64_t this)
{
  v1 = *(this + 112);
  if (v1)
  {
    if (v1 == *(this + 96))
    {
      operator new[]();
    }
  }

  return this;
}

uint64_t apple::vision::libraries::facecore::FaceCoreContext::getPreprocessingLookupTable(uint64_t **this)
{
  v1 = *this;
  result = **this;
  if (result != v1[1])
  {
    apple::vision::libraries::facecore::FaceCoreContext::Impl::computeShadowLUT(v1);
    return *v1;
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::FaceCoreContext::updateDetectedFaces(uint64_t a1, uint64_t *a2)
{
  v7 = *(a1 + 128);
  v5 = *(a1 + 136);
  v6 = a1 + 128;
  while (v5 != v7)
  {
    apple::vision::libraries::facecore::Face::~Face((v5 - 216));
  }

  *(a1 + 136) = v7;
  return std::__copy_impl::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal const*,apple::vision::libraries::facecore::FaceInternal const*,std::back_insert_iterator<std::vector<apple::vision::libraries::facecore::FaceInternal>>>(&v9, *a2, a2[1], v6);
}

apple::vision::libraries::facecore::Face *apple::vision::libraries::facecore::FaceCoreContext::getConvertedDetectedFaces@<X0>(apple::vision::libraries::facecore::Face *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 16);
  if ((1749801491 * ((*(this + 17) - v3) >> 3)) >= 1)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (v6 >= a2[2])
      {
        this = std::vector<apple::vision::libraries::facecore::Face>::__emplace_back_slow_path<apple::vision::libraries::facecore::Face const&>(a2, (v3 + v5));
        v6 = this;
      }

      else
      {
        this = apple::vision::libraries::facecore::Face::Face(v6, (v3 + v5));
        v6 = (v6 + 144);
      }

      a2[1] = v6;
      ++v7;
      v3 = *(v4 + 128);
      v5 += 216;
    }

    while (v7 < (1749801491 * ((*(v4 + 136) - v3) >> 3)));
  }

  return this;
}

void sub_23B103C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double apple::vision::libraries::facecore::FaceCoreContext::setROIsArray(apple::vision::libraries::facecore::FaceCoreContext *this, int *a2, int a3)
{
  std::vector<apple::vision::libraries::facecore::utils::RegionOfInterest>::resize(this + 23, a3);
  if (a3 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *a2;
      a2 += 4;
      result = *&v8;
      v9 = *(this + 23) + v7;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = v8;
      v7 += 32;
    }

    while (32 * a3 != v7);
  }

  return result;
}

char **apple::vision::libraries::facecore::FaceCoreContext::setFaceVertices(uint64_t a1, char **a2)
{
  result = (a1 + 152);
  if (result != a2)
  {
    return std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::FaceCoreContext::getFaceVertices@<X0>(apple::vision::libraries::facecore::FaceCoreContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 3);
}

void apple::vision::libraries::facecore::FaceCoreContext::Impl::computeShadowLUT(apple::vision::libraries::facecore::FaceCoreContext::Impl *this)
{
  v2 = *(this + 1) - *this;
  if (v2 > 0xFF)
  {
    if (v2 != 256)
    {
      *(this + 1) = *this + 256;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this, 256 - v2);
  }

  for (i = 0; i != 256; ++i)
  {
    *(*this + i) = ((((1.0 - (i / 255.0)) * ((powf(i / 255.0, 0.7) * 1.5) + -0.25)) + ((i / 255.0) * (i / 255.0))) * 255.0);
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal const*,apple::vision::libraries::facecore::FaceInternal const*,std::back_insert_iterator<std::vector<apple::vision::libraries::facecore::FaceInternal>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      if (v7 >= *(a4 + 16))
      {
        v7 = std::vector<apple::vision::libraries::facecore::FaceInternal>::__emplace_back_slow_path<apple::vision::libraries::facecore::FaceInternal const&>(a4, v5);
      }

      else
      {
        apple::vision::libraries::facecore::FaceInternal::FaceInternal(v7, v5);
        v7 = (v7 + 216);
        *(a4 + 8) = v7;
      }

      *(a4 + 8) = v7;
      v5 += 216;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::default_delete<apple::vision::libraries::facecore::FaceCoreContext::Impl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x23EE98360);
  }
}

_BYTE *apple::vision::libraries::facecore::utils::aev::AEVConversionUtils::convertCGImageToGrayscale(CGImage *a1, void *a2)
{
  v3 = a2;
  if (CGImageGetBitsPerComponent(a1) != 8 || CGImageGetBitsPerPixel(a1) != 32 || CGImageGetBitmapInfo(a1) == 4096 || CGImageGetBitmapInfo(a1) == 12288)
  {
    goto LABEL_5;
  }

  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (CGImageGetAlphaInfo(a1) == kCGImageAlphaNoneSkipLast || CGImageGetAlphaInfo(a1) == kCGImageAlphaPremultipliedLast)
  {
    v12 = 0;
    goto LABEL_13;
  }

  if (CGImageGetAlphaInfo(a1) == kCGImageAlphaNoneSkipFirst || CGImageGetAlphaInfo(a1) == kCGImageAlphaPremultipliedFirst)
  {
    v12 = 1;
LABEL_13:
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    BytesPerRow = CGImageGetBytesPerRow(a1);
    DataProvider = CGImageGetDataProvider(a1);
    v17 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v17);
    v9 = malloc_type_malloc((Width * Height), 0x100004077774924uLL);
    convertToGreyScale(BytePtr, v9, Width, Height, BytesPerRow, v12, (BitmapInfo >> 13) & 1, v3);
    CFRelease(v17);

    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_5:

LABEL_6:
  v4 = v3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = CGImageGetWidth(a1);
  v7 = CGImageGetHeight(a1);
  std::vector<unsigned char>::vector[abi:ne200100](data, 4 * v7 * v6);
  v8 = CGBitmapContextCreate(data[0], v6, v7, 8uLL, 4 * v6, DeviceRGB, 5u);
  CGContextSetAllowsAntialiasing(v8, 0);
  CGContextSetInterpolationQuality(v8, kCGInterpolationNone);
  v20.size.width = v6;
  v20.size.height = v7;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGContextDrawImage(v8, v20, a1);
  CGContextRelease(v8);
  CGColorSpaceRelease(DeviceRGB);
  v9 = malloc_type_malloc(v7 * v6, 0x100004077774924uLL);
  convertToGreyScale(data[0], v9, v6, v7, 4 * v6, 0, 0, v4);
  if (data[0])
  {
    data[1] = data[0];
    operator delete(data[0]);
  }

LABEL_9:
  return v9;
}

void convertToGreyScale(uint64_t a1, _BYTE *a2, int a3, unsigned int a4, int a5, unsigned int a6, int a7, void *a8)
{
  v15 = a8;
  v16 = v15;
  if (a7)
  {
    v17 = 3 - a6;
  }

  else
  {
    v17 = a6;
  }

  if (a7)
  {
    v18 = -1;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  v20 = v17 + v18 + v18;
  if (v15)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZL18convertToGreyScalePKhPhjjjjbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    block[3] = &__block_descriptor_68_e8_v16__0Q8l;
    block[4] = a1;
    block[5] = a2;
    v36 = a5;
    v37 = a3;
    v38 = v17;
    v39 = v17 + v18;
    v40 = v17 + v18 + v18;
    dispatch_apply(a4, v15, block);
  }

  else if (a4)
  {
    v21 = 0;
    v22 = 0;
    v23 = a1 + v17;
    v24 = a1 + v19;
    v25 = a1 + v20;
    do
    {
      if (a3)
      {
        v26 = (v23 + v21);
        v27 = (v24 + v21);
        v28 = a3;
        v29 = (v25 + v21);
        do
        {
          v30 = *v26;
          v26 += 4;
          v31 = 77 * v30;
          v33 = *v27;
          v27 += 4;
          v32 = v33;
          v34 = *v29;
          v29 += 4;
          *a2++ = (v31 + 151 * v32 + 28 * v34) >> 8;
          --v28;
        }

        while (v28);
      }

      ++v22;
      v21 += a5;
    }

    while (v22 != a4);
  }
}

uint64_t ___ZL18convertToGreyScalePKhPhjjjjbPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 52);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 40) + v2 * a2;
    v5 = *(result + 32) + *(result + 48) * a2;
    do
    {
      *(v4 + v3++) = (77 * *(v5 + *(result + 56)) + 151 * *(v5 + *(result + 60)) + 28 * *(v5 + *(result + 64))) >> 8;
      v5 += 4;
    }

    while (v3 < *(result + 52));
  }

  return result;
}

void apple::vision::libraries::facecore::FaceCoreAPI::~FaceCoreAPI(apple::vision::libraries::facecore::FaceCoreAPI *this)
{
  v2 = *(this + 1);
  *this = &unk_284DF3DD8;
  *(this + 1) = 0;
  if (v2)
  {
    apple::vision::libraries::facecore::FaceCoreAPI::Impl::~Impl(v2);
    MEMORY[0x23EE98360]();
  }
}

uint64_t apple::vision::libraries::facecore::FaceCoreAPI::setParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v5 = apple::vision::libraries::facecore::FaceCoreAPI::Impl::setParameter(v4, &v8, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_23B12AFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::facecore::FaceCoreAPI::Impl::setParameter(apple::vision::libraries::facecore::FaceCoreContext **a1, void *a2, const std::string *a3)
{
  v109 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 13)
    {
      v10 = *a2;
      if (**a2 == 0x665F6E616D6C616BLL && *(*a2 + 5) == 0x7265746C69665F6ELL)
      {
        v41 = *a1;
        std::string::__init_copy_ctor_external(&v107, v10, 0xDuLL);
        goto LABEL_119;
      }
    }

    if (a2[1] != 14 || (**a2 == 0x676E696B63617274 ? (v12 = *(*a2 + 6) == 0x7370696B735F676ELL) : (v12 = 0), !v12))
    {
      if (a2[1] == 17)
      {
        v13 = **a2 == 0x676E696B63617274 && *(*a2 + 8) == 0x6572665F7465645FLL;
        if (v13 && *(*a2 + 16) == 113)
        {
          v44 = *a1;
          std::string::__init_copy_ctor_external(&v103, *a2, 0x11uLL);
          goto LABEL_126;
        }
      }

      if (a2[1] == 17)
      {
        v15 = **a2 == 0x676E696B63617274 && *(*a2 + 8) == 0x6F6974617275645FLL;
        if (v15 && *(*a2 + 16) == 110)
        {
          v24 = *a1;
          std::string::__init_copy_ctor_external(&v101, *a2, 0x11uLL);
          goto LABEL_139;
        }
      }

      if (a2[1] == 13 && **a2 == 0x676E696B63617274 && *(*a2 + 5) == 0x74736F705F676E69)
      {
        v9 = *a1;
        std::string::__init_copy_ctor_external(&v99, *a2, 0xDuLL);
        goto LABEL_147;
      }

      if (a2[1] == 9 && **a2 == 0x656C676E615F626ELL && *(*a2 + 8) == 115)
      {
        v19 = *a1;
        std::string::__init_copy_ctor_external(&v97, *a2, 9uLL);
        goto LABEL_77;
      }

LABEL_83:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "min_face_size"))
      {
        v27 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v95, *a2, a2[1]);
        }

        else
        {
          v95 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v94, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v94 = *a3;
        }

        *(v27 + 3) = apple::vision::libraries::facecore::utils::ParsingUtils::parseFloatValue(&v95, &v94, 1, 1, 0.01, 0.5);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v95.__r_.__value_.__r.__words[0];
LABEL_227:
          operator delete(v40);
          return 0;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRDetectionRegion"))
      {
        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          a3 = a3->__r_.__value_.__r.__words[0];
        }

        v29 = [v28 initWithUTF8String:a3];
        v30 = [v29 componentsSeparatedByString:{@", "}];
        v31 = [v30 count];
        std::vector<int>::vector[abi:ne200100](__p, [v30 count]);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v32 = v30;
        v33 = [v32 countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (v33)
        {
          v34 = 0;
          v35 = *v90;
          do
          {
            v36 = 0;
            v37 = v34;
            do
            {
              if (*v90 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v38 = [*(*(&v89 + 1) + 8 * v36) intValue];
              v34 = v37 + 1;
              *(__p[0] + v37) = v38;
              ++v36;
              ++v37;
            }

            while (v33 != v36);
            v33 = [v32 countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v33);
        }

        apple::vision::libraries::facecore::FaceCoreContext::setROIsArray(*a1, __p[0], v31 >> 2);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "pre"))
      {
        if (!std::string::compare(a3, "true"))
        {
          v46 = *a1;
          v47 = *(*a1 + 16) | 1;
        }

        else
        {
          if (std::string::compare(a3, "false"))
          {
            if (std::string::compare(a3, "aggressive"))
            {
              return 0;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::invalid_argument::invalid_argument[abi:ne200100](exception, "Aggressive preprocessing is not available for IOS");
            goto LABEL_104;
          }

          v46 = *a1;
          v47 = *(*a1 + 16) & 0xFFFFFFFC;
        }

        *(v46 + 16) = v47;
        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "post"))
      {
        v42 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v88, *a2, a2[1]);
        }

        else
        {
          v88 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v87 = *a3;
        }

        *(v42 + 69) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v88, &v87);
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v88.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "initial_angle"))
      {
        v45 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *a2, a2[1]);
        }

        else
        {
          v86 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v85, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v85 = *a3;
        }

        v50 = apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(&v86, &v85, 0x80000000, 0x7FFFFFFF, 1, 1) % 360;
        if (v50 > 0xFFFFFE97)
        {
          v50 += 360;
        }

        *(v45 + 4) = v50;
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v86.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "eye_and_mouth"))
      {
        v48 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v84, *a2, a2[1]);
        }

        else
        {
          v84 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v83, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v83 = *a3;
        }

        *(v48 + 68) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v84, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v84.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "refinement"))
      {
        v49 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v82, *a2, a2[1]);
        }

        else
        {
          v82 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v81 = *a3;
        }

        *(v49 + 89) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v82, &v81);
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v82.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "histogram"))
      {
        v51 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v80, *a2, a2[1]);
        }

        else
        {
          v80 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v79, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v79 = *a3;
        }

        *(v51 + 88) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v80, &v79);
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v80.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "recognition_path"))
      {
        v52 = *a1;
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          __str = *a3;
        }

        std::string::operator=((v52 + 232), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetailsExtractionProcessingChainsIfNeeded(a1);
        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRExtractFaceprint"))
      {
        v53 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v77, *a2, a2[1]);
        }

        else
        {
          v77 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v76, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v76 = *a3;
        }

        *(v53 + 176) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v77, &v76);
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v77.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRExtractLandmarkPoints"))
      {
        v55 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *a2, a2[1]);
        }

        else
        {
          v75 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v74, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v74 = *a3;
        }

        *(v55 + 177) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v75, &v74);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v75.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRDetectBlink"))
      {
        v56 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, *a2, a2[1]);
        }

        else
        {
          v73 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v72, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v72 = *a3;
        }

        *(v56 + 179) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v73, &v72);
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v73.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRDetectSmile"))
      {
        v57 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v71, *a2, a2[1]);
        }

        else
        {
          v71 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v70, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v70 = *a3;
        }

        *(v57 + 178) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v71, &v70);
        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v71.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRExtractNaturalSmileFeatures"))
      {
        v58 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v69, *a2, a2[1]);
        }

        else
        {
          v69 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v68, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v68 = *a3;
        }

        *(v58 + 180) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v69, &v68);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v69.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRDetectFaceBlur"))
      {
        v59 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v67, *a2, a2[1]);
        }

        else
        {
          v67 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v66, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v66 = *a3;
        }

        *(v59 + 181) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v67, &v66);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v67.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRTrackingModeKeypoints"))
      {
        v60 = *a1;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v65, *a2, a2[1]);
        }

        else
        {
          v65 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v64, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v64 = *a3;
        }

        *(v60 + 60) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v65, &v64);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v65.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FCRSetupParamLoadModelFiles"))
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v63, *a2, a2[1]);
        }

        else
        {
          v63 = *a2;
        }

        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v62, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v62 = *a3;
        }

        v61 = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v63, &v62);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v61)
        {
          apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetectionProcessingChainsIfNeeded(a1);
        }

        return 0;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unrecognized parameter");
LABEL_104:
      __cxa_throw(exception, off_278B7A550, MEMORY[0x277D82610]);
    }

    v43 = *a1;
    std::string::__init_copy_ctor_external(&v105, *a2, 0xEuLL);
LABEL_123:
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v104, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    else
    {
      v104 = *a3;
    }

    *(v43 + 12) = apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(&v105, &v104, 0, 0x7FFFFFFF, 1, 1);
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      v40 = v105.__r_.__value_.__r.__words[0];
      goto LABEL_227;
    }

    return 0;
  }

  v6 = *(a2 + 23);
  if (v6 > 0xD)
  {
    if (v6 != 14)
    {
      if (v6 != 17)
      {
        goto LABEL_83;
      }

      if (*a2 != 0x676E696B63617274 || a2[1] != 0x6572665F7465645FLL || *(a2 + 16) != 113)
      {
        if (*a2 != 0x676E696B63617274 || a2[1] != 0x6F6974617275645FLL || *(a2 + 16) != 110)
        {
          goto LABEL_83;
        }

        v24 = *a1;
        v101 = *a2;
LABEL_139:
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v100, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
        }

        else
        {
          v100 = *a3;
        }

        *(v24 + 9) = apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(&v101, &v100, 0, 0x7FFFFFFF, 1, 1);
        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          v40 = v101.__r_.__value_.__r.__words[0];
          goto LABEL_227;
        }

        return 0;
      }

      v44 = *a1;
      v103 = *a2;
LABEL_126:
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v102, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
      }

      else
      {
        v102 = *a3;
      }

      *(v44 + 10) = apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(&v103, &v102, 0, 0x7FFFFFFF, 1, 1);
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        v40 = v103.__r_.__value_.__r.__words[0];
        goto LABEL_227;
      }

      return 0;
    }

    if (*a2 != 0x676E696B63617274 || *(a2 + 6) != 0x7370696B735F676ELL)
    {
      goto LABEL_83;
    }

    v43 = *a1;
    v105 = *a2;
    goto LABEL_123;
  }

  if (v6 == 9)
  {
    if (*a2 != 0x656C676E615F626ELL || *(a2 + 8) != 115)
    {
      goto LABEL_83;
    }

    v19 = *a1;
    v97 = *a2;
LABEL_77:
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v96, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    else
    {
      v96 = *a3;
    }

    *(v19 + 5) = apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(&v97, &v96, 0, 11, 0, 1);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      v40 = v97.__r_.__value_.__r.__words[0];
      goto LABEL_227;
    }

    return 0;
  }

  if (v6 != 13)
  {
    goto LABEL_83;
  }

  if (*a2 != 0x665F6E616D6C616BLL || *(a2 + 5) != 0x7265746C69665F6ELL)
  {
    if (*a2 != 0x676E696B63617274 || *(a2 + 5) != 0x74736F705F676E69)
    {
      goto LABEL_83;
    }

    v9 = *a1;
    v99 = *a2;
LABEL_147:
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v98, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    else
    {
      v98 = *a3;
    }

    *(v9 + 44) = apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(&v99, &v98);
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      v40 = v99.__r_.__value_.__r.__words[0];
      goto LABEL_227;
    }

    return 0;
  }

  v41 = *a1;
  v107 = *a2;
LABEL_119:
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = *a3;
  }

  *(v41 + 14) = apple::vision::libraries::facecore::utils::ParsingUtils::parseFloatValue(&v107, &v106, 1, 0, 0.0, 1.0);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    v40 = v107.__r_.__value_.__r.__words[0];
    goto LABEL_227;
  }

  return 0;
}

void sub_23B12C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFaces(apple::vision::libraries::facecore::FaceCoreContext **this@<X0>, image *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(*this + 90) == 1)
  {
    apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesAllCardinalDirections(this, a2, &v5);
  }

  else
  {
    apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesOneDirection(this, a2, &v5);
  }

  std::vector<apple::vision::libraries::facecore::Face>::__vdeallocate(a3);
  *a3 = v5;
  *(a3 + 16) = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&v7);
  *(*this + 24) = *(*this + 23);
}

uint64_t apple::vision::libraries::facecore::FaceCoreAPI::Impl::extractFaceDetails(apple::vision::libraries::facecore::FaceCoreContext **this, image *a2, apple::vision::libraries::facecore::Face *a3)
{
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetailsExtractionProcessingChainsIfNeeded(this);
  apple::vision::libraries::facecore::FaceCoreContext::setUpForProcessing(*this);
  v6 = *this;
  *(v6 + 6) = *a2;
  *(v6 + 7) = *a2;
  *(*this + 26) = a3;
  (*(*this[8] + 8))(this[8]);
  apple::vision::libraries::facecore::FaceCoreContext::cleanUpTemporaryData(*this);
  return 0;
}

void apple::vision::libraries::facecore::FaceCoreAPI::version(apple::vision::libraries::facecore::FaceCoreAPI *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 1);
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    v3 = *(v2 + 8);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 24);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetailsExtractionProcessingChainsIfNeeded(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetectionProcessingChainsIfNeeded(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
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