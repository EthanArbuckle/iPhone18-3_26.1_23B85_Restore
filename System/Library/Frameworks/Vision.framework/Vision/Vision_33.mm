void sub_1A5E91940(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5E91954(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E92AE8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

uint64_t AltruisticBodyPoseKitLibraryCore(char **a1)
{
  if (!AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary)
  {
    AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL32AltruisticBodyPoseKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL18getABPKOutputClassv_block_invoke(uint64_t a1)
{
  AltruisticBodyPoseKitLibrary();
  result = objc_getClass("ABPKOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getABPKOutputClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return getABPKInputClass();
  }

  return result;
}

id getABPKInputClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getABPKInputClass(void)::softClass;
  v7 = getABPKInputClass(void)::softClass;
  if (!getABPKInputClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL17getABPKInputClassv_block_invoke;
    v3[3] = &unk_1E77B69F0;
    v3[4] = &v4;
    ___ZL17getABPKInputClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A5E93DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getABPKCameraParamsClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getABPKCameraParamsClass(void)::softClass;
  v7 = getABPKCameraParamsClass(void)::softClass;
  if (!getABPKCameraParamsClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL24getABPKCameraParamsClassv_block_invoke;
    v3[3] = &unk_1E77B69F0;
    v3[4] = &v4;
    ___ZL24getABPKCameraParamsClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A5E93E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL24getABPKCameraParamsClassv_block_invoke(uint64_t a1)
{
  AltruisticBodyPoseKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ABPKCameraParams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getABPKCameraParamsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    AltruisticBodyPoseKitLibrary();
  }
}

void AltruisticBodyPoseKitLibrary(void)
{
  v2 = 0;
  v0 = AltruisticBodyPoseKitLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np();
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

Class ___ZL17getABPKInputClassv_block_invoke(uint64_t a1)
{
  AltruisticBodyPoseKitLibrary();
  result = objc_getClass("ABPKInput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getABPKInputClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VNHumanBodyPose3DDetector *)v3 createRegionOfInterestCrop:v4 options:v11 qosClass:v5 warningRecorder:v6 pixelBuffer:v7 error:v8 progressHandler:v9, v10];
  }

  return result;
}

void sub_1A5E947F4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((v2 + 2));
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

void Geometry2D_mallocHomo2D(uint64_t a1, int a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2 >= 1)
  {
    v4 = 4 * a2;
    v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
    *a1 = v5;
    if (v5 && (v6 = malloc_type_malloc(v4, 0x100004052888210uLL), (*(a1 + 8) = v6) != 0) && (v7 = malloc_type_malloc(v4, 0x100004052888210uLL), (*(a1 + 16) = v7) != 0))
    {
      *(a1 + 24) = a2;
    }

    else
    {

      Geometry3D_freeCart3D(a1);
    }
  }
}

_OWORD *Geometry2D_cloneHomo2D(_OWORD *result, uint64_t a2)
{
  *result = 0u;
  result[1] = 0u;
  if (a2)
  {
    if (*a2)
    {
      if (*(a2 + 8))
      {
        if (*(a2 + 16))
        {
          v3 = *(a2 + 24);
          if (v3 >= 1)
          {
            v4 = result;
            Geometry2D_mallocHomo2D(result, v3);
            result = *v4;
            if (*v4)
            {
              v5 = *(v4 + 1);
              if (v5)
              {
                v6 = *(v4 + 2);
                if (v6)
                {
                  if (*(v4 + 6) >= 1)
                  {
                    v7 = *(a2 + 24);
                    v8 = 4 * v7;
                    *(v4 + 6) = v7;
                    memcpy(result, *a2, 4 * v7);
                    memcpy(v5, *(a2 + 8), v8);
                    v9 = *(a2 + 16);

                    return memcpy(v6, v9, v8);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1A5E94F34(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v3 - 136));

  _Unwind_Resume(a1);
}

void sub_1A5E9531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::unique_ptr<vision::mod::FaceID3Model>::reset[abi:ne200100](va);
  std::istream::~istream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v11 - 168));

  _Unwind_Resume(a1);
}

void vision::mod::FaceID3Model::~FaceID3Model(vision::mod::FaceID3Model *this)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 96);
  v2 = *(this + 9);
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

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

uint64_t std::shared_ptr<vision::mod::FaceID3Model>::operator=[abi:ne200100]<vision::mod::FaceID3Model,std::default_delete<vision::mod::FaceID3Model>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

vision::mod::FaceID3Model *std::unique_ptr<vision::mod::FaceID3Model>::reset[abi:ne200100](vision::mod::FaceID3Model **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    vision::mod::FaceID3Model::~FaceID3Model(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<vision::mod::FaceID3Model  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN6vision3mod12FaceID3ModelEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

vision::mod::FaceID3Model *std::__shared_ptr_pointer<vision::mod::FaceID3Model  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    vision::mod::FaceID3Model::~FaceID3Model(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::FaceID3Model  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E95F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, void *a56)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(v59);

  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a50, 8);

  _Block_object_dispose((v60 - 144), 8);
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&a56);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49_17602(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17604(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_1F1975C88;
  *(result + 56) = *(a2 + 56);
  return result;
}

void sub_1A5E96378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_72c47_ZTSN6vision3mod28ImageDescriptorBufferFloat32E(uint64_t a1)
{
  v1 = (a1 + 72);
  *(a1 + 72) = &unk_1F19764A8;
  free(*(a1 + 184));

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v1);
}

__n128 __copy_helper_block_ea8_72c47_ZTSN6vision3mod28ImageDescriptorBufferFloat32E(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 72) = &unk_1F1975D68;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  std::map<long long,int>::map[abi:ne200100]((v4 + 24), a2 + 104);
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v5;
  *(a1 + 144) = v6;
  *(a1 + 72) = &unk_1F19764A8;
  result = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = result;
  return result;
}

void sub_1A5E96518(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E97534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, __int128 a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__121(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__122(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __destroy_helper_block_ea8_48c53_ZTSNSt3__110shared_ptrIN6vision3mod12FaceID3ModelEEE64c69_ZTSNSt3__110shared_ptrIN6vision3mod28ImageDescriptorBufferFloat32EEE80c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[7];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t __copy_helper_block_ea8_48c53_ZTSNSt3__110shared_ptrIN6vision3mod12FaceID3ModelEEE64c69_ZTSNSt3__110shared_ptrIN6vision3mod28ImageDescriptorBufferFloat32EEE80c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(void *a1, void *a2)
{
  v2 = a2[7];
  a1[6] = a2[6];
  a1[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  a1[8] = a2[8];
  a1[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 10), a2[10], a2[11], (a2[11] - a2[10]) >> 2);
}

void sub_1A5E979BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::FaceID3Model>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E97C3C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A5E97E78(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t Geometry2D_estimateRST(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = 1917;
  if (a3 && a1)
  {
    v5 = *a1;
    if (!*a1)
    {
      return 1917;
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      return 1917;
    }

    v3 = 1917;
    if (!a2)
    {
      return v3;
    }

    v8 = *(a1 + 16);
    if (v8 < 1)
    {
      return v3;
    }

    v9 = *a2;
    if (!*a2)
    {
      return 1917;
    }

    v10 = *(a2 + 8);
    if (!v10)
    {
      return 1917;
    }

    v11 = *(a2 + 16);
    if (v11 < 1)
    {
      return 1917;
    }

    v3 = 1916;
    if (v8 >= 2 && v8 == v11)
    {
      if (v8 == 2)
      {
        v13 = v5[1];
        v14 = *v5 - v13;
        v15 = v6[1];
        v16 = *v6 - v15;
        v17 = (v16 * v16) + (v14 * v14);
        v18 = v14 / v17;
        v19 = v16 / v17;
        v20 = v9[1];
        v21 = *v9 - v20;
        v22 = v10[1];
        v23 = *v10 - v22;
        v24 = (v19 * v23) + (v18 * v21);
        v25 = (v18 * v23) - (v19 * v21);
        v26 = (v20 - (v24 * v13)) + (v25 * v15);
        v27 = (v22 - (v24 * v15)) - (v25 * v13);
        a3[1] = sqrtf((v25 * v25) + (v24 * v24));
        *a3 = atan2f(v25, v24);
        a3[2] = v26;
        a3[3] = v27;
        return 1920;
      }

      else
      {
        __A = 0;
        v47 = 0;
        __N = 0;
        Geometry2D_mallocCart2D(&__A, v8);
        __B = 0;
        v44 = 0;
        v45 = 0;
        Geometry2D_mallocCart2D(&__B, *(a2 + 16));
        v29 = malloc_type_malloc(4 * *(a1 + 16), 0x100004052888210uLL);
        v42 = 0;
        v41 = 0.0;
        v3 = Geometry2D_normalizePoints(a1, v29, &__A, &v42 + 1, &v42, &v41);
        if ((v3 & 0x80) != 0)
        {
          v40 = 0.0;
          v39 = 0;
          v3 = Geometry2D_normalizePoints(a2, v29, &__B, &v40, &v39 + 1, &v39);
          if ((v3 & 0x80) != 0)
          {
            __C = 0;
            vDSP_svesq(__A, 1, &__C + 1, *(a1 + 16));
            vDSP_svesq(v47, 1, &__C, *(a1 + 16));
            v30 = *(&__C + 1) + *&__C;
            v37 = 0;
            vDSP_dotpr(__A, 1, __B, 1, &v37 + 1, __N);
            vDSP_dotpr(v47, 1, v44, 1, &v37, __N);
            v31 = (*(&v37 + 1) + *&v37) / v30;
            v36 = 0;
            vDSP_dotpr(v47, 1, __B, 1, &v36 + 1, __N);
            vDSP_dotpr(__A, 1, v44, 1, &v36, __N);
            v32 = v31 * (v41 / *&v39);
            v33 = ((*&v36 - *(&v36 + 1)) / v30) * (v41 / *&v39);
            v34 = -(((v32 * *(&v42 + 1)) - (v33 * *&v42)) - v40);
            v35 = -(((v32 * *&v42) + (v33 * *(&v42 + 1))) - *(&v39 + 1));
            a3[1] = v41 / *&v39;
            *a3 = atan2f(v33, v32);
            a3[2] = v34;
            a3[3] = v35;
            free(__A);
            __A = 0;
            free(v47);
            v47 = 0;
            LODWORD(__N) = 0;
            free(__B);
            __B = 0;
            free(v44);
            free(v29);
          }
        }
      }
    }
  }

  return v3;
}

uint64_t ctrTrackerComputation_repairNonValidRegion(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  LODWORD(v4) = *a4;
  if (*a4 >= 1)
  {
    v5 = 0;
    v6 = result;
    v7 = a2;
    v8 = a3;
    do
    {
      if (v4 >= 1)
      {
        v9 = 0;
        v10 = v5 << 7;
        do
        {
          *(v6 + v9) = *(result + v4 + v10);
          *(v7 + v9) = *(a2 + *a4 + v10);
          *(v8 + v9++) = *(a3 + *a4 + v10);
          v4 = *a4;
        }

        while (v9 < v4);
      }

      ++v5;
      v8 += 128;
      v7 += 128;
      v6 += 128;
    }

    while (v5 != 128);
  }

  v11 = a4[2];
  if (v11 <= 126)
  {
    v12 = 0;
    v13 = a3 + 1;
    v14 = a2 + 1;
    for (i = result + 1; ; i += 128)
    {
      if (v11 <= 126)
      {
        v16 = v11;
        do
        {
          *(i + v16) = *(result + (v12 << 7) + a4[2]);
          *(v14 + v16) = *(a2 + (v12 << 7) + a4[2]);
          *(v13 + v16++) = *(a3 + (v12 << 7) + a4[2]);
        }

        while (v16 != 127);
      }

      if (++v12 == 128)
      {
        break;
      }

      v11 = a4[2];
      v13 += 128;
      v14 += 128;
    }
  }

  if (a4[1] >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = result;
      v20 = a2;
      v21 = a3;
      v22 = 128;
      do
      {
        *(v19 + v17) = *(v19 + (a4[1] << 7));
        *(v20 + v17) = *(v20 + (a4[1] << 7));
        *(v21 + v17) = *(v21 + (a4[1] << 7));
        ++v21;
        ++v20;
        ++v19;
        --v22;
      }

      while (v22);
      ++v18;
      v17 += 128;
    }

    while (v18 < a4[1]);
  }

  v23 = a4[3];
  if (v23 <= 126)
  {
    v24 = (v23 << 7) + 128;
    v25 = a3 + v24;
    v26 = a2 + v24;
    v27 = result + v24;
    do
    {
      v28 = 0;
      ++v23;
      do
      {
        *(v27 + v28) = *(result + (a4[3] << 7) + v28);
        *(v26 + v28) = *(a2 + (a4[3] << 7) + v28);
        *(v25 + v28) = *(a3 + (a4[3] << 7) + v28);
        ++v28;
      }

      while (v28 != 128);
      v25 += 128;
      v26 += 128;
      v27 += 128;
    }

    while (v23 != 127);
  }

  return result;
}

uint64_t ctrTrackerComputation_YCbCr2nRGB(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = 0; i != 0x4000; ++i)
  {
    v7 = *(a2 + i) - 128;
    v8 = *(a3 + i) - 128;
    v9 = (*(result + i) << 6) | 0x20;
    v10 = v9 + 101 * v8;
    v11 = v10 >> 6;
    v12 = ((v10 >> 6) & ~(v10 >> 31));
    if (v11 > 255)
    {
      v12 = 255;
    }

    v13 = v9 - 12 * v7 - 30 * v8;
    v14 = v13 >> 6;
    v15 = ((v13 >> 6) & ~(v13 >> 31));
    if (v14 > 255)
    {
      v15 = 255;
    }

    v16 = v9 + 119 * v7;
    v17 = v16 >> 6;
    v18 = ((v16 >> 6) & ~(v16 >> 31));
    if (v17 > 255)
    {
      v18 = 255;
    }

    if (v15 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (v12 > v19)
    {
      v19 = v12;
    }

    v20 = ctrTrackerComputation_YCbCr2nRGB_kIlluminationInvariantLookupTable[v19];
    v21 = v12 * v20;
    v22 = v21 >> 4;
    v23 = (v21 + 16) >> 5;
    if (v22 > 0x1FE)
    {
      LOBYTE(v23) = -1;
    }

    *(a4 + i) = v23;
    v24 = v15 * v20;
    v25 = v24 >> 4;
    v26 = (v24 + 16) >> 5;
    if (v25 > 0x1FE)
    {
      LOBYTE(v26) = -1;
    }

    *(a5 + i) = v26;
    v27 = v18 * v20;
    v28 = v27 >> 4;
    v29 = (v27 + 16) >> 5;
    if (v28 > 0x1FE)
    {
      LOBYTE(v29) = -1;
    }

    *(a6 + i) = v29;
  }

  return result;
}

uint64_t ctrTrackerComputation_normedGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + 129);
  v5 = (a1 + 128);
  v6 = (a2 + 128);
  v7 = (a3 + 128);
  v8 = 1;
  do
  {
    ++v8;
    v9 = v7;
    v10 = v6;
    v11 = v5;
    v12 = v4;
    result = 126;
    do
    {
      v14 = v11[2] - *v11;
      v15 = v11[129] - *(v11 - 127);
      if (v14 < 0)
      {
        v14 = *v11 - v11[2];
      }

      if (v15 < 0)
      {
        v15 = *(v11 - 127) - v11[129];
      }

      v16 = v15 + v14;
      if (v10[2] - *v10 >= 0)
      {
        v17 = v10[2] - *v10;
      }

      else
      {
        v17 = *v10 - v10[2];
      }

      if (v10[129] - *(v10 - 127) >= 0)
      {
        v18 = v10[129] - *(v10 - 127);
      }

      else
      {
        v18 = *(v10 - 127) - v10[129];
      }

      v19 = v18 + v17;
      if (v9[2] - *v9 >= 0)
      {
        v20 = v9[2] - *v9;
      }

      else
      {
        v20 = *v9 - v9[2];
      }

      if (v9[129] - *(v9 - 127) >= 0)
      {
        v21 = v9[129] - *(v9 - 127);
      }

      else
      {
        v21 = *(v9 - 127) - v9[129];
      }

      v22 = v21 + v20;
      if (v16 <= v19)
      {
        v16 = v19;
      }

      if (v16 <= v22)
      {
        v16 = v22;
      }

      if (v16 >= 0xFF)
      {
        LOBYTE(v16) = -1;
      }

      *v12++ = v16;
      ++v11;
      ++v10;
      ++v9;
      --result;
    }

    while (result);
    v4 += 128;
    v5 += 128;
    v6 += 128;
    v7 += 128;
  }

  while (v8 != 127);
  return result;
}

uint64_t ctrTrackerComputation_updateLocation(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6)
{
  v6 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v7 = a4 - 2;
  v8 = a4 + (a3 << 7) - 2;
  do
  {
    v9 = HIBYTE(v7) & 0x80;
    if (v7 >= 128)
    {
      LODWORD(v9) = -128;
    }

    *(v34 + v6) = *(result + 4 * (v9 + v8));
    v6 += 4;
    ++v7;
    ++v8;
  }

  while (v6 != 20);
  v10 = 0;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v13 = *(v34 + v10 * 4);
    v12 = v12 + (*&dword_1A603B4F8[v10] * v13);
    v11 = v11 + (*&dword_1A603B50C[v10++] * v13);
  }

  while (v10 != 5);
  if (v11 <= -0.0002)
  {
    v14 = -2.0;
    if (v12 > 0.0 == v11 < 0.0)
    {
      v14 = 2.0;
      if (v12 <= (v11 * -8.0))
      {
        v14 = -2.0 - (v12 / (v11 + v11));
      }
    }
  }

  else
  {
    v14 = NAN;
  }

  v15 = 0;
  v16 = v14 + a4;
  v17 = HIBYTE(a4) & 0x80;
  if (a4 >= 128)
  {
    v17 = -128;
  }

  v18 = v17 + a4;
  v19 = a3 - 2;
  do
  {
    v20 = HIBYTE(v19) & 0x80;
    if (v19 >= 128)
    {
      LODWORD(v20) = -128;
    }

    *(v34 + v15) = *(result + 4 * (v18 + ((v20 + v19) << 7)));
    v15 += 4;
    ++v19;
  }

  while (v15 != 20);
  v21 = 0;
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v24 = *(v34 + v21 * 4);
    v23 = v23 + (*&dword_1A603B4F8[v21] * v24);
    v22 = v22 + (*&dword_1A603B50C[v21++] * v24);
  }

  while (v21 != 5);
  if (v16 >= 64.0)
  {
    v16 = v16 + -128.0;
  }

  if (v22 <= -0.0002)
  {
    v25 = -2.0;
    if (v23 > 0.0 == v22 < 0.0)
    {
      v25 = 2.0;
      if (v23 <= (v22 * -8.0))
      {
        v25 = -2.0 - (v23 / (v22 + v22));
      }
    }
  }

  else
  {
    v25 = NAN;
  }

  v26 = 0;
  v27 = v25 + a3;
  if (v27 >= 64.0)
  {
    v27 = v27 + -128.0;
  }

  *&v28 = -v27;
  v29 = vdupq_lane_s64(COERCE__INT64(-v16), 0);
  v30 = vdupq_lane_s64(*&a5, 0);
  v31 = vdupq_lane_s64(v28, 0);
  v32 = vdupq_lane_s64(*&a6, 0);
  do
  {
    v33 = (a2 + v26);
    v37 = vld2q_f64(v33);
    v37.val[0] = vmlaq_f64(v37.val[0], v30, v29);
    v37.val[1] = vmlaq_f64(v37.val[1], v32, v31);
    vst2q_f64(v33, v37);
    v26 += 32;
  }

  while (v26 != 64);
  return result;
}

void ctrTrackerComputation_colorHistogram(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  bzero(a4, 0x400uLL);
  bzero(a5, 0x400uLL);
  v10 = a3 + 5031;
  v11 = a2 + 5031;
  v12 = a1 + 5031;
  v13 = 39;
  do
  {
    for (i = 0; i != 50; ++i)
    {
      v15 = *(v12 + i);
      v16 = v15;
      v17 = v15;
      v18 = *(v11 + i);
      *&v19 = v18;
      LOBYTE(v19) = *(v10 + i);
      v20 = ((v16 + v18) + v19);
      if (v20 < 0.01)
      {
        v20 = 0.01;
      }

      v21 = v17 / v20;
      v22 = vcvtms_s32_f32(v21 * 256.0);
      v23 = v18 / v20;
      if (v22 >= 255)
      {
        v24 = 255;
      }

      else
      {
        v24 = v22;
      }

      v25 = vcvtms_s32_f32(v23 * 256.0);
      if (v25 >= 255)
      {
        v25 = 255;
      }

      *&a4[4 * v24] = *&a4[4 * v24] + 1.0;
      *&a5[4 * v25] = *&a5[4 * v25] + 1.0;
    }

    ++v13;
    v10 += 128;
    v11 += 128;
    v12 += 128;
  }

  while (v13 != 89);
  for (j = 0; j != 1024; j += 4)
  {
    *&a4[j] = *&a4[j] / 2500.0;
    *&a5[j] = *&a5[j] / 2500.0;
  }
}

uint64_t ctrTrackerComputation_sizeAdaption(uint64_t a1, float64x2_t *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 + 250184;
  v10 = (a1 + 246072);
  v11 = (a1 + 114688);
  v12 = (a1 + 84500);
  v13 = (a1 + 248120);
  v14 = 256;
  v15 = a2;
  do
  {
    *v13 = sqrtf(*v15);
    v13[256] = sqrtf(v15[256]);
    ++v13;
    ++v15;
    --v14;
  }

  while (v14);
  v16 = (a1 + 247096);
  bzero((a1 + 246072), 0x800uLL);
  for (i = 20; i != 108; ++i)
  {
    v18 = v12;
    v19 = 88;
    do
    {
      v20 = *(v18 - 0x8000);
      v21 = *(v18 - 0x4000);
      v22 = *v18++;
      v23 = ((v20 + v21) + v22);
      if (v23 < 0.01)
      {
        v23 = 0.01;
      }

      v24 = v20 / v23;
      v25 = vcvtms_s32_f32(v24 * 256.0);
      if (v25 >= 255)
      {
        v25 = 255;
      }

      v26 = v21 / v23;
      v27 = vcvtms_s32_f32(v26 * 256.0);
      if (v27 >= 255)
      {
        v27 = 255;
      }

      ++v10[v25];
      ++v16[v27];
      --v19;
    }

    while (v19);
    v12 += 128;
  }

  v29 = (v10 + 1);
  v28 = *v10;
  v30 = 0.0;
  v31 = 255;
  do
  {
    v32 = *v29;
    v28 += v32;
    v30 = v30 + (*(a4 + 4 * v32) * v29[512]);
    ++v29;
    --v31;
  }

  while (v31);
  v33 = v30 / sqrtf(v28);
  *v11 = v33;
  v34 = v10[256];
  v35 = (v10 + 257);
  v36 = 0.0;
  v37 = 255;
  do
  {
    v38 = *v35;
    v34 += v38;
    v36 = v36 + (*(a4 + 4 * v38) * v35[512]);
    ++v35;
    --v37;
  }

  while (v37);
  v39 = sqrtf(v34);
  v40 = a1 + 51692;
  v41 = a1 + 68076;
  v42 = a1 + 84460;
  v43 = a1 + 84371;
  v44 = a1 + 67987;
  v45 = a1 + 51603;
  v46 = a1 + 95764;
  v47 = a1 + 79380;
  v48 = a1 + 62996;
  v49 = a1 + 84372;
  result = a1 + 67988;
  v51 = a1 + 51604;
  v52 = (v33 + (v36 / v39)) * 0.5;
  *v11 = v52;
  v53 = 1;
  v54 = 11520;
  v55 = 88;
  do
  {
    v56 = 0;
    do
    {
      v57 = *(v45 + v56);
      v58 = v57;
      v59 = v57;
      v60 = *(v44 + v56);
      *&v61 = v60;
      LOBYTE(v61) = *(v43 + v56);
      v62 = ((v58 + v60) + v61);
      if (v62 < 0.01)
      {
        v62 = 0.01;
      }

      v63 = v59 / v62;
      v64 = vcvtms_s32_f32(v63 * 256.0);
      v65 = v60;
      if (v64 >= 255)
      {
        v66 = 255;
      }

      else
      {
        v66 = v64;
      }

      v67 = v65 / v62;
      v68 = vcvtms_s32_f32(v67 * 256.0);
      ++v10[v66];
      if (v68 >= 255)
      {
        v69 = 255;
      }

      else
      {
        v69 = v68;
      }

      ++v16[v69];
      v70 = *(v40 + v56);
      v71 = v70;
      v72 = v70;
      v73 = *(v41 + v56);
      *&v74 = v73;
      LOBYTE(v74) = *(v42 + v56);
      v75 = ((v71 + v73) + v74);
      if (v75 < 0.01)
      {
        v75 = 0.01;
      }

      v76 = v72 / v75;
      v77 = vcvtms_s32_f32(v76 * 256.0);
      if (v77 >= 255)
      {
        v77 = 255;
      }

      v78 = v73 / v75;
      v79 = vcvtms_s32_f32(v78 * 256.0);
      if (v79 >= 255)
      {
        v79 = 255;
      }

      ++v10[v77];
      ++v16[v79];
      v56 += 128;
    }

    while (v54 != v56);
    v80 = 0;
    do
    {
      v81 = *(v51 + v80);
      v82 = v81;
      v83 = v81;
      v84 = *(result + v80);
      *&v85 = v84;
      LOBYTE(v85) = *(v49 + v80);
      v86 = ((v82 + v84) + v85);
      if (v86 < 0.01)
      {
        v86 = 0.01;
      }

      v87 = v83 / v86;
      v88 = vcvtms_s32_f32(v87 * 256.0);
      v89 = v84;
      if (v88 >= 255)
      {
        v90 = 255;
      }

      else
      {
        v90 = v88;
      }

      v91 = v89 / v86;
      v92 = vcvtms_s32_f32(v91 * 256.0);
      ++v10[v90];
      if (v92 >= 255)
      {
        v93 = 255;
      }

      else
      {
        v93 = v92;
      }

      ++v16[v93];
      v94 = *(v48 + v80);
      v95 = v94;
      v96 = v94;
      v97 = *(v47 + v80);
      *&v98 = v97;
      LOBYTE(v98) = *(v46 + v80);
      v99 = ((v95 + v97) + v98);
      if (v99 < 0.01)
      {
        v99 = 0.01;
      }

      v100 = v96 / v99;
      v101 = vcvtms_s32_f32(v100 * 256.0);
      if (v101 >= 255)
      {
        v101 = 255;
      }

      v102 = v97 / v99;
      v103 = vcvtms_s32_f32(v102 * 256.0);
      if (v103 >= 255)
      {
        v103 = 255;
      }

      ++v10[v101];
      ++v16[v103];
      ++v80;
    }

    while (v55 != v80);
    v104 = *v10;
    v105 = 0.0;
    v106 = (v10 + 1);
    v107 = 255;
    do
    {
      v108 = *v106;
      v104 += v108;
      v105 = v105 + (*(a4 + 4 * v108) * v106[512]);
      ++v106;
      --v107;
    }

    while (v107);
    v109 = v105 / sqrtf(v104);
    v11[v53] = v109;
    v110 = *v16;
    v111 = 0.0;
    v112 = (v10 + 257);
    v113 = 255;
    do
    {
      v114 = *v112;
      v110 += v114;
      v111 = v111 + (*(a4 + 4 * v114) * v112[512]);
      ++v112;
      --v113;
    }

    while (v113);
    v11[v53++] = (v109 + (v111 / sqrtf(v110))) * 0.5;
    v40 -= 127;
    v41 -= 127;
    v42 -= 127;
    v43 -= 129;
    v44 -= 129;
    v45 -= 129;
    v54 += 256;
    v55 += 2;
    v46 += 127;
    v47 += 127;
    v48 += 127;
    v49 -= 129;
    result -= 129;
    v51 -= 129;
  }

  while (v53 != 21);
  v115 = 0;
  v116 = v11[1];
  v117 = ((v116 * 0.19) + (v52 * 0.79)) + (*a3 * 0.02);
  v11[21] = v117;
  v118 = v11 + 21;
  v119 = v11;
  do
  {
    v120 = (*v119 * 0.19) + (v116 * 0.6);
    v116 = v119[2];
    v119[22] = (v120 + (v116 * 0.19)) + (a3[v115 + 1] * 0.02);
    ++v119;
    ++v115;
  }

  while (v115 != 19);
  v121 = ((v11[19] * 0.19) + (v11[20] * 0.79)) + (a3[20] * 0.02);
  v11[41] = v121;
  v122 = (((((((((((((((((((((v11[22] * 0.0019763) + (v117 * 0.0028233)) + (v11[23] * 0.0012185)) + (v11[24] * 0.00054979)) + (v11[25] * -0.000029719)) + (v11[26] * -0.00052007)) + (v11[27] * -0.00092128)) + (v11[28] * -0.0012333)) + (v11[29] * -0.0014562)) + (v11[30] * -0.0015899)) + (v11[31] * -0.0016345)) + (v11[32] * -0.0015899)) + (v11[33] * -0.0014562)) + (v11[34] * -0.0012333)) + (v11[35] * -0.00092128)) + (v11[36] * -0.00052007)) + (v11[37] * -0.000029719)) + (v11[38] * 0.00054979)) + (v11[39] * 0.0012185)) + (v11[40] * 0.0019763)) + (v121 * 0.0028233)) * -1000.0;
  v123 = 0.0;
  if (v122 >= 0.0)
  {
    v124 = v122;
  }

  else
  {
    v124 = 0.0;
  }

  if (v122 <= 1.0)
  {
    v125 = v124;
  }

  else
  {
    v125 = 1.0;
  }

  *v9 = v125;
  if (*(v9 + 8))
  {
    if (v125 >= *(v9 + 4))
    {
      v126 = 0;
      v127 = 10;
      do
      {
        if (v118[v126] > v123)
        {
          v127 = v126;
          v123 = v118[v126];
        }

        ++v126;
      }

      while (v126 != 21);
      v128 = v127 - 2;
      v123 = 0.0;
      if (v128 < 0x11)
      {
        v129 = 0;
        v130 = &v118[v128];
        v131 = 0.0;
        do
        {
          v132 = v130[v129];
          v131 = v131 + (*&dword_1A603B4F8[v129] * v132);
          v123 = v123 + (*&dword_1A603B50C[v129++] * v132);
        }

        while (v129 != 5);
        if (v123 <= -0.0002)
        {
          v133 = 0.0;
          if (v131 > 0.0 == v123 < 0.0)
          {
            v133 = 4.0;
            if (v131 <= (v123 * -8.0))
            {
              v133 = v131 / (v123 * -2.0);
            }
          }
        }

        else
        {
          v133 = NAN;
        }

        v123 = 0.0;
        if ((LODWORD(v133) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v147 = v133 + v128;
          v123 = -4.0;
          if (v147 > 0.0)
          {
            v123 = 4.0;
            if (v147 < 20.0)
            {
              v148 = (((v147 - v147) * (v147 + 1)) + ((1.0 - (v147 - v147)) * v147)) + -10.0;
              v123 = (v148 * 0.2) + (v148 * 0.2);
            }
          }
        }
      }
    }
  }

  else
  {
    *(v9 + 8) = 1;
    *(v9 + 4) = v125 * 0.5;
  }

  v134 = v123 / 20.0;
  if (v134 != 0.0)
  {
    v135 = (v134 + 1.0);
    v136 = *(a5 + 32);
    v137 = vsubq_f64(v136, *a5);
    __asm { FMOV            V2.2D, #0.5 }

    v143 = vmulq_f64(vaddq_f64(v136, *a5), _Q2);
    v144 = vmulq_f64(vmulq_n_f64(v137, v135), _Q2);
    v145 = vsubq_f64(v143, v144);
    *v150 = v145.f64[0];
    v146 = vaddq_f64(v143, v144);
    *&v150[8] = vextq_s8(v146, v146, 8uLL);
    *&v150[24] = *&v150[8];
    *&v150[40] = v145.f64[1];
    *a5 = v145;
    *(a5 + 16) = *v150;
    *(a5 + 32) = *&v150[16];
    *(a5 + 48) = *&v150[32];
    a2[133] = vmulq_n_f64(a2[133], v135);
  }

  return result;
}

void sub_1A5E9B134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E9C5B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E9C938(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id getVCPRequestRevisionPropertyKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
  v8 = getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr)
  {
    v1 = VideoProcessingLibrary();
    v6[3] = dlsym(v1, "VCPRequestRevisionPropertyKey");
    getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *___ZL41getVCPRequestRevisionPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestRevisionPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestRevisionPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VideoProcessingLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VideoProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL26VideoProcessingLibraryCorePPc_block_invoke_18091;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77B4140;
    v5 = 0;
    VideoProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = VideoProcessingLibraryCore(char **)::frameworkLibrary;
    if (VideoProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return VideoProcessingLibraryCore(char **)::frameworkLibrary;
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VideoProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL26VideoProcessingLibraryCorePPc_block_invoke_19330;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77B42F0;
    v5 = 0;
    VideoProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = VideoProcessingLibraryCore(char **)::frameworkLibrary;
    if (VideoProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return VideoProcessingLibraryCore(char **)::frameworkLibrary;
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VideoProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL26VideoProcessingLibraryCorePPc_block_invoke_32768;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77B5D20;
    v5 = 0;
    VideoProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = VideoProcessingLibraryCore(char **)::frameworkLibrary;
    if (VideoProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return VideoProcessingLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL26VideoProcessingLibraryCorePPc_block_invoke_18091()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1A5E9D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL32getVCPHumanPoseImageRequestClassv_block_invoke(uint64_t a1)
{
  VideoProcessingLibrary();
  result = objc_getClass("VCPHumanPoseImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHumanPoseImageRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(VNEntityIdentificationModelTrainedModel *)v3];
  }

  return result;
}

uint64_t vision::mod::ObjectTrackerEx::free(vision::mod::ObjectTrackerEx *this)
{
  result = ctpl_trackerDelete(*(this + 4));
  *(this + 4) = 0;
  if (result == 128)
  {
    return 6784;
  }

  return result;
}

uint64_t vision::mod::ObjectTrackerEx::init(vision::mod::ObjectTrackerEx *this)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200401EF7F3E0uLL);
  *(this + 4) = v2;
  v3 = (this + 32);
  if (v2)
  {
    v3 = v2 + 72;
    result = 6784;
  }

  else
  {
    ctpl_trackerDelete(0);
    result = 6779;
  }

  *v3 = 0;
  return result;
}

uint64_t vision::mod::ObjectTrackerEx::track(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v364 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 6751;
  }

  v7 = *&v3[4].f64[1];
  *(v7 + 44968) = 1;
  *(v7 + 44980) = 0;
  *(v7 + 44988) = 0u;
  *(v7 + 45004) = 0u;
  *(v7 + 45020) = 0;
  v8 = v3[2];
  v9 = *v3;
  __asm { FMOV            V3.2D, #23.0 }

  v345 = _Q3;
  v15 = vcvt_f32_f64(vdivq_f64(vsubq_f64(v8, *v3), _Q3));
  *(v7 + 44996) = vrev64_s32(v15);
  *(v7 + 45004) = xmmword_1A6038C80;
  __asm { FMOV            V3.2S, #24.0 }

  v16 = vcvtq_f64_f32(vmul_f32(v15, *&_Q3.f64[0]));
  v17 = vsubq_f64(v9, v16);
  v18 = vaddq_f64(v8, v16);
  v16.f64[0] = v18.f64[0];
  v16.f64[1] = v17.f64[1];
  v353[0] = v17;
  v353[1] = v16;
  v17.f64[1] = v18.f64[1];
  v353[2] = v18;
  v353[3] = v17;
  PeakXY = tplTrackerResampler_setImage(*(v7 + 341240), a2, v353);
  if (PeakXY != 128)
  {
    goto LABEL_318;
  }

  v344 = (v7 + 44988);
  v347 = v3;
  v20 = (v7 + 45024);
  tplTrackerResampler_resample(*(v7 + 341240), v353[0].f64, *(v7 + 45012), *(v7 + 45016), v7 + 45040, (v7 + 50224), (v7 + 55408), (v7 + 45024), *(v7 + 44996), *(v7 + 45000));
  tplTracker_YCbCr2RGB((v7 + 45040), (v7 + 50224), (v7 + 55408), *(v7 + 45016) * *(v7 + 45012), (v7 + 60592), (v7 + 65776), (v7 + 70960));
  tplTracker_computeNormedGradient(v7 + 60592, v7 + 65776, v7 + 70960, *(v7 + 45012), *(v7 + 45016), (v7 + 45024), v7 + 88152);
  v21 = *(v7 + 45016);
  if (v21 > 95)
  {
    goto LABEL_135;
  }

  v339 = a2;
  v340 = a1;
  v341 = a3;
  v22 = *(v7 + 45012);
  v23 = v21 + 1;
  v24 = *(v7 + 42064);
  v25 = *(v7 + 42068);
  v26 = *(v7 + 42072);
  v27 = v21 + 2;
  v28 = calculateIntegralImage((v7 + 60592), v21, *(v7 + 45012), v21, v21 + 1, (v7 + 93336 + 4 * (v21 + 2)));
  if (v28 == 128 && (v28 = calculateIntegralImage((v7 + 65776), v21, v22, v21, v21 + 1, (v7 + 114652 + 4 * v27)), v28 == 128))
  {
    PeakXY = calculateIntegralImage((v7 + 70960), v21, v22, v21, v21 + 1, (v7 + 135968 + 4 * v27));
    if (PeakXY == 128)
    {
      v29 = (v7 + 76144);
      v30 = (v7 + 78548);
      v31 = 4 * v23;
      if ((v22 & 0x80000000) == 0)
      {
        v32 = v22 + 1;
        v33 = v7;
        do
        {
          v33[23334] = 0;
          v33[28663] = 0;
          v33[33992] = 0;
          v33 = (v33 + v31);
          --v32;
        }

        while (v32);
      }

      bzero((v7 + 93336), 4 * v23);
      bzero((v7 + 114652), 4 * v23);
      bzero((v7 + 135968), 4 * v23);
      if (v22 < 24)
      {
        v44 = 0.0;
        v45 = 195080.0;
        v47 = v22 - 23;
        v64 = v21 - 23;
      }

      else
      {
        v34 = 0;
        v35 = *(v7 + 45036) + 1;
        v36 = v7 + 72 * v23;
        v37 = v36 + 136040;
        v38 = v7 + 24 * v23;
        v39 = v38 + 136040;
        v40 = v38 + 93360;
        v41 = v36 + 93360;
        v42 = v38 + 114676;
        v43 = v36 + 114676;
        v44 = 0.0;
        v45 = 195080.0;
        v46 = v7 + 78548;
        v47 = v22 - 23;
        do
        {
          v48 = v35;
          if (v34 + 6 <= v35)
          {
            v48 = *(v7 + 45028);
            if (v34 + 6 > v48)
            {
              v48 = v34 + 6;
            }
          }

          v49 = v35;
          if (v34 + 18 <= v35)
          {
            v49 = *(v7 + 45028);
            if (v34 + 18 > v49)
            {
              v49 = v34 + 18;
            }
          }

          v50 = v49 - v48;
          if (v50 < 1)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = 1.0 / v50;
          }

          if (v21 >= 24)
          {
            v52 = 0;
            v53 = 0;
            v54 = *(v7 + 45032) + 1;
            do
            {
              v55 = v54;
              if (v53 + 6 <= v54)
              {
                v55 = *v20;
                if (v53 + 6 > *v20)
                {
                  v55 = v53 + 6;
                }
              }

              v56 = v54;
              if (v54 >= v53 + 18)
              {
                v56 = *v20;
                if (v53 + 18 > *v20)
                {
                  v56 = v53 + 18;
                }
              }

              v57 = v56 - v55;
              if (v57 < 1)
              {
                v58 = 0.0;
              }

              else
              {
                v58 = 1.0 / v57;
              }

              v59 = v51 * v58;
              if (v59 > 0.0)
              {
                v60 = *(v40 + v52) - (*(v40 + v52 + 48) + *(v41 + v52)) + *(v41 + v52 + 48);
                v61 = *(v42 + v52) - (*(v42 + v52 + 48) + *(v43 + v52)) + *(v43 + v52 + 48);
                v62 = (*(v39 + v52 - 48) - (*(v39 + v52) + *(v37 + v52 - 48)) + *(v37 + v52));
                v63 = ((((v59 * v60) - v24) * ((v59 * v60) - v24)) + (((v59 * v61) - v25) * ((v59 * v61) - v25))) + (((v59 * v62) - v26) * ((v59 * v62) - v26));
                *(v46 + v52) = v63;
                if (v63 > v44)
                {
                  v44 = v63;
                }

                if (v63 < v45)
                {
                  v45 = v63;
                }
              }

              ++v53;
              v52 += 4;
            }

            while (4 * (v21 - 23) != v52);
          }

          ++v34;
          v46 += 4 * (v21 - 23);
          v37 += v31;
          v39 += v31;
          v40 += v31;
          v41 += v31;
          v42 += v31;
          v43 += v31;
        }

        while (v34 != v22 - 23);
        v64 = v21 - 23;
        if (v45 < 0.0 || v44 < 0.0)
        {
          goto LABEL_135;
        }
      }

      v82 = (v64 * v47);
      if (v82 >= 1)
      {
        v83 = sqrtf(v45);
        v84 = sqrtf(v44);
        v85 = fminf((v83 + ((v84 - v83) * 0.7)) * (v83 + ((v84 - v83) * 0.7)), 1600.0);
        do
        {
          v86 = *v30++;
          *v29++ = v86 > v85;
          --v82;
        }

        while (v82);
      }
    }
  }

  else
  {
    PeakXY = v28;
  }

  v3 = v347;
  if (PeakXY != 128)
  {
    goto LABEL_318;
  }

  if (*(v7 + 45016) != 72 || *(v7 + 45012) != 72)
  {
    goto LABEL_135;
  }

  v65 = 0;
  v333 = (v7 + 44980);
  v66 = v7 + 216824;
  v67 = v7 + 216828;
  v68 = v7 + 88152;
  do
  {
    v69 = 0;
    v70 = v67;
    do
    {
      *(v70 - 4) = *(v68 + v69++) & 0xF0;
      v70 += 8;
    }

    while (v69 != 72);
    v68 += 72;
    ++v65;
    v67 += 576;
  }

  while (v65 != 72);
  v71 = 72;
  v72 = v7 + 258296;
  do
  {
    v73 = tplTracker_FFT_3324(v66, v72);
    if (v73 != 128)
    {
      PeakXY = v73;
      v3 = v347;
      goto LABEL_68;
    }

    v66 += 576;
    v72 += 576;
    --v71;
  }

  while (v71);
  v74 = 0;
  v75 = v7 + 299768;
  v76 = v7 + 258296;
  v3 = v347;
  do
  {
    v77 = 0;
    v78 = 0;
    do
    {
      *(v75 + v77) = *(v76 + v78);
      v78 += 8;
      v77 += 576;
    }

    while (v78 != 576);
    v76 += 576;
    v75 += 8;
    ++v74;
  }

  while (v74 != 72);
  v79 = 72;
  v80 = v7 + 258296;
  v81 = v7 + 299768;
  while (1)
  {
    PeakXY = tplTracker_FFT_3324(v81, v80);
    if (PeakXY != 128)
    {
      break;
    }

    v81 += 576;
    v80 += 576;
    if (!--v79)
    {
      memcpy((v7 + 299768), (v7 + 258296), 0xA200uLL);
      break;
    }
  }

LABEL_68:
  if (PeakXY == 128)
  {
    v87 = 5184;
    v88 = v7;
    v89 = (v7 + 216824);
    do
    {
      v90 = (v88[74942] + 4) >> 3;
      v91 = (v88[74943] + 4) >> 3;
      v92 = (v88[146] + 4) >> 3;
      v93 = (v88[147] + 4) >> 3;
      *v89 = (26512144 * (v92 * v90 - v93 * v91) + 0x40000000) >> 31;
      v89[1] = (26512144 * (v92 * v91 + v93 * v90) + 0x40000000) >> 31;
      v89 += 2;
      v88 += 2;
      --v87;
    }

    while (v87);
    PeakXY = tplTracker_IFFT_2D(v7 + 216824, (v7 + 258296), (v7 + 299768));
    if (PeakXY == 128)
    {
      v94 = 0;
      v95 = v7 + 197808;
      v96 = 299768;
      do
      {
        v97 = 0;
        v98 = v96;
        do
        {
          *(v95 + v97) = *(v7 + v98);
          v97 += 4;
          v98 += 8;
        }

        while (v97 != 196);
        v95 += 196;
        ++v94;
        v96 += 576;
      }

      while (v94 != 49);
      if (!v7)
      {
LABEL_135:
        *(v7 + 44968) = 0;
LABEL_136:
        BYTE1(v347[4].f64[0]) = 1;
        return 6780;
      }

      v99 = *(v7 + 45012);
      v100 = *(v7 + 45016);
      v101 = v100 + 1;
      v103 = v7 + 93336;
      v102 = v7 + 114652;
      if ((v100 & 0x80000000) == 0)
      {
        v104 = (v7 + 93336);
        v105 = (v7 + 114652);
        v106 = (v100 + 1);
        do
        {
          *v104++ = 0;
          *v105++ = 0;
          --v106;
        }

        while (v106);
      }

      v107 = 93336;
      v108 = 4 * v101;
      if (v99 >= 1)
      {
        v109 = 4 * v101 + 114676 + v7 - 24;
        v110 = v7 + 4 * v101 + 93336;
        v111 = 1;
        v112 = v7 + 88152;
        do
        {
          if (v100 < 1)
          {
            v115 = 0;
            v114 = 0;
          }

          else
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            do
            {
              v116 = *(v112 + v113) & 0xF0;
              *(v110 + 4 * v113) = *(v103 + 4 * v113) + v115;
              *(v109 + 4 * v113) = *(v102 + 4 * v113) + v114;
              v115 += v116;
              v114 += v116 * v116;
              ++v113;
            }

            while (v100 != v113);
          }

          *(v103 + v108 + 4 * v100) = *(v103 + 4 * v100) + v115;
          *(v102 + v108 + 4 * v100) = *(v102 + 4 * v100) + v114;
          v112 += v100;
          v109 += v108;
          v110 += v108;
          v103 += v108;
          v102 += v108;
          _ZF = v111++ == v99;
        }

        while (!_ZF);
      }

      v117 = 0;
      v118 = 24 * v101;
      v119 = 4 * (v100 - 23);
      v120 = 4 * v118 + 93336;
      v121 = 114748;
      v122 = 4 * v118 + 114748;
      v123 = 178600;
      v3 = v347;
      do
      {
        v124 = v122;
        v125 = v120;
        v126 = v121;
        v127 = v107;
        v128 = v123;
        v129 = 49;
        do
        {
          v130 = (*(v7 + v127) - (*(v7 + v127 + 96) + *(v7 + v125)) + *(v7 + v125 + 96)) * 0.0017361;
          v131 = (v7 + v128);
          v128 += 4;
          v127 += 4;
          *v131 = sqrtf(((*(v7 + v126 - 96) - (*(v7 + v126) + *(v7 + v124 - 96)) + *(v7 + v124)) * 0.0017361) - (v130 * v130));
          v131[2401] = v130;
          v126 += 4;
          v125 += 4;
          v124 += 4;
          --v129;
        }

        while (v129);
        ++v117;
        v123 += v119;
        v107 += v108;
        v121 += v108;
        v120 += v108;
        v122 += v108;
      }

      while (v117 != 49);
      PeakXY = tplTracker_normalizeScoreField(v7);
    }
  }

  if (PeakXY != 128)
  {
    goto LABEL_318;
  }

  if (!v7)
  {
    goto LABEL_135;
  }

  v342 = (v7 + 45024);
  v132 = *(v7 + 45012);
  v133 = v132 - 23;
  v134 = *(v7 + 45016);
  v135 = ((v134 - 23) * (v132 - 23));
  if (v135 < 1)
  {
    goto LABEL_105;
  }

  v136 = 3.4028e38;
  v137 = 1.1755e-38;
  v138 = (v7 + 197808);
  do
  {
    v139 = *v138;
    if (*v138 != 0.0)
    {
      if (v139 > v137)
      {
        v137 = *v138;
      }

      if (v139 < v136)
      {
        v136 = *v138;
      }
    }

    ++v138;
    --v135;
  }

  while (v135);
  if (v137 < (v136 + 0.000001))
  {
LABEL_105:
    v337 = (v7 + 45020);
    *(v7 + 45020) = 0;
LABEL_106:
    *(v7 + 44968) = 0;
LABEL_107:
    v140 = 0;
    __asm { FMOV            V1.2D, #0.5 }

    v335 = _Q1;
    v142 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vaddq_f64(*v3, v3[2]), _Q1), vcvtq_f64_f32(*v344)));
    __asm { FMOV            V0.2S, #11.5 }

    v334 = _D0;
    v144 = vmul_f32(*(v7 + 44996), _D0);
    v343 = *(v7 + 44996);
    do
    {
      v145 = 1.0 - kTrackerSizeChangeScale[v140];
      v146 = v343.f32[0] * v145;
      v147 = v343.f32[1] * v145;
      v148 = vrev64_s32(vmul_n_f32(v144, v145));
      v149 = vcvtq_f64_f32(vsub_f32(v142, v148));
      v150 = vcvtq_f64_f32(vadd_f32(v148, v142));
      *&v151 = v150.f64[0];
      *(&v151 + 1) = *&v149.f64[1];
      *__p = v149;
      v350 = v151;
      v149.f64[1] = v150.f64[1];
      v351 = v150;
      v352 = v149;
      tplTrackerResampler_resample(*(v7 + 341240), __p, 0x18u, 24, v7 + 45040, (v7 + 50224), (v7 + 55408), v342, v146, v147);
      tplTracker_YCbCr2RGB((v7 + 45040), (v7 + 50224), (v7 + 55408), 576, (v7 + 60592), (v7 + 65776), (v7 + 70960));
      v152 = v7 + 88152;
      tplTracker_computeNormedGradient(v7 + 60592, v7 + 65776, v7 + 70960, 24, 24, v342, v7 + 88152);
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = 0;
      v157 = *(v7 + 42060);
      v158 = v7 + 8;
      do
      {
        for (i = 0; i != 24; ++i)
        {
          v160 = *(v152 + i) & 0xF0;
          v153 += v160;
          v154 += v160 * v160;
          v155 += (*(v158 + i) & 0xF0) * v160;
        }

        v152 += 24;
        v158 += 24;
        ++v156;
      }

      while (v156 != 24);
      v161 = v153 / 576.0;
      v162 = (v154 / 576.0) - (v161 * v161);
      if (v162 < 0.0)
      {
        v162 = 0.0;
      }

      v163 = sqrtf(v162);
      v164 = ((v155 / -576.0) + (v157 * v163)) + (*(v7 + 42056) * v161);
      v165 = (v157 + v157) * v163;
      if (v165 < 0.00000011921)
      {
        v165 = 0.00000011921;
      }

      v166 = v164 / v165;
      if (v166 < 0.0)
      {
        v166 = 0.0;
      }

      *(&v354 + v140) = (1.0 - sqrtf(v166)) * kTrackerSizeChangePenalty[v140];
      ++v140;
    }

    while (v140 != 11);
    v167 = (((((((((((*(&v354 + 1) * 0.006993) + (*&v354 * 0.017483)) + (v355 * -0.0011655)) + (v356 * -0.006993)) + (v357 * -0.01049)) + (v358 * -0.011655)) + (v359 * -0.01049)) + (v360 * -0.006993)) + (v361 * -0.0011655)) + (v362 * 0.006993)) + (v363 * 0.017483)) * -100.0;
    v168 = 0.0;
    if (v167 >= 0.0)
    {
      v169 = (((((((((((*(&v354 + 1) * 0.006993) + (*&v354 * 0.017483)) + (v355 * -0.0011655)) + (v356 * -0.006993)) + (v357 * -0.01049)) + (v358 * -0.011655)) + (v359 * -0.01049)) + (v360 * -0.006993)) + (v361 * -0.0011655)) + (v362 * 0.006993)) + (v363 * 0.017483)) * -100.0;
    }

    else
    {
      v169 = 0.0;
    }

    if (v167 <= 1.0)
    {
      v170 = v169;
    }

    else
    {
      v170 = 1.0;
    }

    *(v7 + 44984) = v170;
    v172 = v340;
    v171 = v341;
    v173 = v339;
    if (v170 >= 0.3)
    {
      v174 = 0;
      v175 = 5;
      do
      {
        if (*(&v354 + v174) > v168)
        {
          v175 = v174;
          v168 = *(&v354 + v174);
        }

        ++v174;
      }

      while (v174 != 11);
      v176 = v175 - 2;
      if ((v175 - 2) >= 7)
      {
        v199 = kTrackerSizeChangeScale[v175];
      }

      else
      {
        v177 = 0;
        v178 = 0.0;
        v179 = 0.0;
        do
        {
          v180 = *(&v354 + 4 * v176 + v177 * 4);
          v179 = v179 + (*&dword_1A603B4F8[v177] * v180);
          v178 = v178 + (*&dword_1A603B50C[v177++] * v180);
        }

        while (v177 != 5);
        if (v178 <= -0.005)
        {
          v181 = 0.0;
          if (v179 > 0.0 == v178 < 0.0)
          {
            v181 = 4.0;
            if (v179 <= (v178 * -8.0))
            {
              v181 = v179 / (v178 * -2.0);
            }
          }
        }

        else
        {
          v181 = NAN;
        }

        v199 = 0.0;
        if ((LODWORD(v181) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v258 = v181 + v176;
          if (v258 <= 0.0)
          {
            v199 = -0.1;
          }

          else if (v258 >= 10.0)
          {
            v199 = 0.1;
          }

          else
          {
            v199 = ((v258 - v258) * kTrackerSizeChangeScale[v258 + 1]) + ((1.0 - (v258 - v258)) * kTrackerSizeChangeScale[v258]);
          }
        }
      }

      *(v7 + 44996) = vmul_n_f32(v343, 1.0 - v199);
    }

    if (*v337 == 1)
    {
      v259 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vaddq_f64(*v3, v3[2]), v335), vcvtq_f64_f32(*v344)));
      v260 = vrev64_s32(vmul_f32(*(v7 + 44996), v334));
      v261 = vcvtq_f64_f32(vsub_f32(v259, v260));
      v262 = vcvtq_f64_f32(vadd_f32(v260, v259));
      v263.f64[0] = v262.f64[0];
      v263.f64[1] = v261.f64[1];
      *v3 = v261;
      v3[1] = v263;
      v261.f64[1] = v262.f64[1];
      v3[2] = v262;
      v3[3] = v261;
    }

    v264 = *&v3[4].f64[1];
    v265 = (v264 + 44956);
    v266 = *(v264 + 44968);
    LOBYTE(v3[4].f64[0]) = v266;
    v267 = v3[2];
    v268 = *v3;
    *(v264 + 44960) = vrev64_s32(vcvt_f32_f64(vdivq_f64(vsubq_f64(v267, *v3), v345)));
    v269 = *(v264 + 44972);
    v270 = v268.f64[1];
    if (v266)
    {
      if (!v269)
      {
        goto LABEL_257;
      }

      v271 = v269 + 1;
      *(v264 + 44972) = v271;
      v272 = *(v264 + 44976);
    }

    else
    {
      if (!v269)
      {
        v273 = *(v264 + 44976) + 1;
        *(v264 + 44972) = 1;
        *(v264 + 44976) = v273;
        goto LABEL_257;
      }

      v271 = v269 + 1;
      v272 = *(v264 + 44976) + 1;
      *(v264 + 44972) = v271;
      *(v264 + 44976) = v272;
    }

    if (v272 == 2)
    {
      BYTE1(v3[4].f64[0]) = 1;
LABEL_255:
      *(v264 + 44972) = 0;
      goto LABEL_257;
    }

    if (v271 == 3)
    {
      goto LABEL_255;
    }

LABEL_257:
    v274 = v3->f64[0];
    v267.f64[0] = v3[2].f64[0];
    v268.f64[0] = v3->f64[0];
    v275 = vsubq_f64(v267, v268);
    __asm { FMOV            V3.2D, #1.0 }

    v277 = vaddq_f64(v275, _Q3);
    v366.size.width = (*v264 - 1);
    v366.size.height = (*(v264 + 4) - 1);
    _Q3.f64[0] = v277.f64[1];
    v366.origin.x = 0.0;
    v366.origin.y = 0.0;
    v346 = v277;
    v365 = CGRectIntersection(*(&v270 - 1), v366);
    PeakXY = 6784;
    if (*(v264 + 45020) == 1)
    {
      v278 = v365.size.width * v365.size.height / vmuld_lane_f64(v346.f64[0], v346, 1);
      if (v278 > 0.5)
      {
        v279 = v264 + 42076;
        v280 = v3;
        v281 = 576 * *v265;
        tplTrackerResampler_resample(*(v264 + 341240), v280, 0x18u, 24, v264 + 45040, (v264 + 50224), (v264 + 55408), (v264 + 45024), *(v264 + 44960), *(v264 + 44964));
        tplTracker_YCbCr2RGB((v264 + 45040), (v264 + 50224), (v264 + 55408), 576, (v264 + 60592), (v264 + 65776), (v264 + 70960));
        tplTracker_computeTemplateAvgColor(v264, v282);
        tplTracker_computeNormedGradient(v264 + 60592, v264 + 65776, v264 + 70960, 24, 24, (v264 + 45024), v264 + 42076 + v281);
        v283 = *(v264 + 45024);
        if ((v283 & 0x80000000) != 0)
        {
          goto LABEL_136;
        }

        v284 = *(v264 + 45028);
        if ((v284 & 0x80000000) != 0)
        {
          goto LABEL_136;
        }

        v285 = *(v264 + 45032);
        if (v285 > 23)
        {
          goto LABEL_136;
        }

        v286 = *(v264 + 45036);
        if (v286 > 23 || v283 > v285 || v284 > v286)
        {
          goto LABEL_136;
        }

        v287 = v264 + 8;
        v288 = 3 * v284;
        if (v284)
        {
          memcpy((v264 + 42076 + v281), (v264 + 8), 24 * v284);
          v288 = 3 * v284;
        }

        if (v283 || v285 <= 0x16)
        {
          v289 = v264 + 8 * v288;
          v290 = v264 + v285 + 8 * v288;
          do
          {
            v291 = v289;
            v292 = v283;
            if (v283)
            {
              do
              {
                *(v291 + v281 + 42076) = *(v291 + 8);
                ++v291;
                --v292;
              }

              while (v292);
            }

            v293 = v290;
            v294 = v285 - 1;
            if (v285 <= 0x16)
            {
              do
              {
                *(v293 + v281 + 42077) = *(v293 + 9);
                ++v294;
                ++v293;
              }

              while (v294 < 22);
            }

            v289 += 24;
            v290 += 24;
          }

          while (v286 > v284++);
        }

        if (v286 <= 22)
        {
          memcpy((v264 + 42076 + v281 + 24 * v286 + 24), (v287 + 24 * v286 + 24), (24 * (23 - v286)));
        }

        v296 = *v265 + 1;
        *v265 = v296;
        if (v296 == 5)
        {
          for (j = 0; j != 576; ++j)
          {
            v298 = 0;
            v299 = 2;
            do
            {
              v299 += *(v279 + v298);
              v298 += 576;
            }

            while (v298 != 2880);
            if (v299 > 0x4FF)
            {
              v300 = -1;
            }

            else
            {
              v300 = v299 / 5;
            }

            *(v287 + j) = v300;
            ++v279;
          }

          tplTracker_computeTemplateStats(v264);
          PeakXY = tplTracker_computeTemplateFFT(v264);
          v172 = v340;
          v171 = v341;
          v173 = v339;
          if (PeakXY != 128)
          {
            BYTE1(v347[4].f64[0]) = 1;
            return PeakXY;
          }

          *v265 = 0;
        }

        else
        {
          PeakXY = 6784;
          v172 = v340;
          v171 = v341;
          v173 = v339;
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
    HIDWORD(v352.f64[0]) = 0;
    LOBYTE(v352.f64[1]) = 0;
    HIDWORD(v352.f64[1]) = 0;
    LOWORD(v352.f64[0]) = 0;
    v351 = 0uLL;
    v301 = *(v172 + 32);
    v302 = v301[2] - *v301;
    *(v351.f64 + 1) = v302;
    v303 = v301[5] - v301[3];
    *&v304 = v301[6];
    *v351.f64 = v303;
    *(&v350 + 1) = v304 | 0x7FC0000000000000;
    Height = CVPixelBufferGetHeight(v173);
    v306 = *(v172 + 32);
    v307 = *(v306 + 56);
    v308 = Height - v307;
    LOBYTE(v307) = *(v306 + 64);
    *(&v350 + 3) = v308;
    *(&v352.f64[1] + 1) = LODWORD(v307);
    v309 = v171[1];
    if (v309 >= v171[2])
    {
      v310 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(v171, __p);
    }

    else
    {
      vision::mod::DetectedObject::DetectedObject(v171[1], __p);
      v310 = v309 + 80;
      v171[1] = v309 + 80;
    }

    v171[1] = v310;
    if (SBYTE7(v350) < 0)
    {
      operator delete(__p[0]);
    }

    return PeakXY;
  }

  if (v132 < 24)
  {
    v193 = 1.1755e-38;
    v192 = 3.4028e38;
  }

  else
  {
    v182 = 0;
    v183 = *(v7 + 45004);
    v184 = *(v7 + 44996);
    v185 = *(v7 + 45008);
    v186 = *(v7 + 45000);
    v187 = ((v186 * (v134 - 23 - v185)) * (v186 * (v134 - 23 - v185))) + ((v184 * (v133 - v183)) * (v184 * (v133 - v183)));
    v188 = v137 * 0.5;
    v189 = (v188 * (v184 * v184)) / v187;
    v190 = -v185;
    v191 = (v188 * (v186 * v186)) / v187;
    v192 = 3.4028e38;
    v193 = 1.1755e-38;
    v194 = v7 + 197808;
    do
    {
      if (v134 >= 24)
      {
        v195 = 0;
        v196 = v190;
        do
        {
          v197 = *(v194 + v195);
          if (v197 != 0.0)
          {
            v198 = v197 - ((v189 * ((v182 - v183) * (v182 - v183))) + ((v196 * v196) * v191));
            *(v194 + v195) = v198;
            if (v198 > v193)
            {
              v193 = v198;
            }

            if (v198 < v192)
            {
              v192 = v198;
            }
          }

          ++v196;
          v195 += 4;
        }

        while (4 * (v134 - 23) != v195);
      }

      ++v182;
      v194 += 4 * v134 - 92;
    }

    while (v182 != v133);
  }

  for (k = 0; k != 12; k += 4)
  {
    v354 = 0x3F7AE1483F733333;
    v355 = 0.99;
    *(__p + k) = v192 + (*(&v354 + k) * (v193 - v192));
  }

  v201 = 0;
  v202 = 0;
  v203 = v7 + 207412;
  v204 = *__p;
  v205 = v7 + 197808;
  do
  {
    v206 = 0;
    v207 = 0;
    while (*(v205 + 4 * v206) <= v204)
    {
LABEL_161:
      if (++v206 == 49)
      {
        goto LABEL_164;
      }
    }

    if (v207 && v206 - v207[2] <= 2)
    {
      v207[2] = v206;
      v207[5] = v206;
      ++v207[8];
      goto LABEL_161;
    }

    if (v202 <= 255)
    {
      v207 = (v203 + 36 * v202);
      *v207 = v201;
      v207[1] = v206;
      v207[2] = v206;
      v207[3] = v202;
      v207[4] = v206;
      v207[5] = v206;
      v207[6] = v201;
      v207[7] = v201;
      v207[8] = 1;
      v202 = (v202 + 1);
      goto LABEL_161;
    }

    v202 = 0xFFFFFFFFLL;
LABEL_164:
    ++v201;
    v205 += 196;
  }

  while (v201 != 49);
  v331 = v7 + 216628;
  tplTracker_mergeSpans(v333, 0, v202);
  v208 = 0;
  v209 = 0;
  v210 = __p + 1;
  do
  {
    v336 = v208;
    v211 = v202;
    if (v209 < v202)
    {
      v212 = v209;
      v213 = v209;
      v214 = v202;
      v338 = v210;
      v332 = v209;
      do
      {
        v215 = v203 + 36 * v213;
        v216 = *(v215 + 12);
        if (v216 != v213 || *(v215 + 32) < 9)
        {
          v211 = v214;
          goto LABEL_188;
        }

        v217 = *v210;
        v218 = v212;
        v211 = v214;
LABEL_171:
        while (2)
        {
          v219 = *(v203 + 36 * v218 + 12);
          do
          {
            v220 = v219;
            v219 = *(v203 + 36 * v219 + 12);
          }

          while (v220 != v219);
          if (v220 == v216)
          {
            v221 = (v203 + 36 * v218);
            v222 = v221[1];
            v223 = v221[2];
            if (v222 <= v223)
            {
              v224 = 0;
              v225 = *v221;
              v226 = v223 + 1;
              v227 = (v7 + 197808 + 4 * v222 + 196 * v225);
              do
              {
                if (*v227 > v217)
                {
                  if (v224 && v222 - v224[2] <= 2)
                  {
                    v224[2] = v222;
                    v224[5] = v222;
                    ++v224[8];
                  }

                  else
                  {
                    if (v211 > 255)
                    {
                      ++v218;
                      v211 = 0xFFFFFFFFLL;
                      if (v218 == v202)
                      {
                        goto LABEL_296;
                      }

                      goto LABEL_171;
                    }

                    v224 = (v203 + 36 * v211);
                    *v224 = v225;
                    v224[1] = v222;
                    v224[2] = v222;
                    v224[3] = v211;
                    v224[4] = v222;
                    v224[5] = v222;
                    v224[6] = v225;
                    v224[7] = v225;
                    v224[8] = 1;
                    v211 = (v211 + 1);
                  }
                }

                ++v222;
                ++v227;
              }

              while (v226 != v222);
            }
          }

          if (++v218 != v202)
          {
            continue;
          }

          break;
        }

        if (v211 == -1)
        {
          goto LABEL_296;
        }

        if (v211 > v214)
        {
          tplTracker_mergeSpans(v333, v214, v211);
          v212 = v332;
          v210 = v338;
          *(v203 + 36 * v213 + 32) = 0;
        }

LABEL_188:
        ++v213;
        v214 = v211;
      }

      while (v202 != v213);
    }

    v208 = 1;
    v210 = &__p[1];
    v209 = v202;
    v202 = v211;
  }

  while ((v336 & 1) == 0);
  if (v211 < 1)
  {
    LODWORD(v211) = 0;
  }

  else
  {
    v228 = 0;
    v229 = v211;
    LODWORD(v211) = 0;
    do
    {
      v230 = (v203 + 36 * v228);
      if (v228 == v230[3] && v230[8])
      {
        v231 = v230[4];
        v232 = v230[5];
        if (v231 <= 1)
        {
          v233 = 1;
        }

        else
        {
          v233 = v230[4];
        }

        v234 = v233 - 1;
        if (v231 <= 49)
        {
          v235 = v234;
        }

        else
        {
          v235 = 48;
        }

        if (v232 < 0)
        {
          v236 = -1;
        }

        else
        {
          v236 = v230[5];
        }

        if (v232 < 48)
        {
          v237 = v236 + 1;
        }

        else
        {
          v237 = 48;
        }

        v238 = v230[6];
        v239 = v230[7];
        if (v238 <= 1)
        {
          v240 = 1;
        }

        else
        {
          v240 = v230[6];
        }

        v241 = v240 - 1;
        if (v238 > 49)
        {
          v241 = 48;
        }

        if (v239 < 0)
        {
          v242 = -1;
        }

        else
        {
          v242 = v239;
        }

        if (v239 < 48)
        {
          v243 = v242 + 1;
        }

        else
        {
          v243 = 48;
        }

        if (v241 <= v243)
        {
          v246 = 4 * v235 + 196 * v241;
          v247 = (v7 + 78548 + v246);
          v248 = (v7 + 197808 + v246);
          v245 = 3.4028e38;
          v244 = 1.1755e-38;
          v249 = v241;
          do
          {
            v250 = v248;
            v251 = v247;
            v252 = v237 - v235 + 1;
            if (v235 <= v237)
            {
              do
              {
                v253 = *v250++;
                v254 = v253;
                if (v244 < v253)
                {
                  v244 = v254;
                }

                v255 = *v251++;
                v256 = v255;
                if (v245 >= v255)
                {
                  v245 = v256;
                }

                --v252;
              }

              while (v252);
            }

            v247 += 49;
            v248 += 49;
            _ZF = v249++ == v243;
          }

          while (!_ZF);
        }

        else
        {
          v244 = 1.1755e-38;
          v245 = 3.4028e38;
        }

        v257 = v331 + 12 * v211;
        *v257 = v235;
        *(v257 + 1) = v241;
        *(v257 + 2) = v237;
        *(v257 + 3) = v243;
        *(v257 + 4) = v244;
        *(v257 + 8) = v245;
        LODWORD(v211) = v211 + 1;
      }

      ++v228;
    }

    while (v228 != v229);
  }

LABEL_296:
  v311 = (v7 + 216636);
  *(v7 + 216820) = v211;
  if (v211 <= 0)
  {
    v321 = 0;
    PeakXY = 6784;
    v3 = v347;
LABEL_314:
    *(v7 + 45020) = v321;
    goto LABEL_315;
  }

  v312 = 0;
  v313 = *(v7 + 45016) - 23;
  v314 = *(v7 + 45012) - 23;
  v315 = v211;
  v316 = -1;
  v317 = 3.4028e38;
  v318 = (v7 + 216636);
  v3 = v347;
  do
  {
    v319 = *v318;
    v318 += 3;
    v320 = v319;
    if (v319 < v317)
    {
      v317 = v320;
      v316 = v312;
    }

    ++v312;
  }

  while (v211 != v312);
  if (v316 == -1)
  {
    v321 = 0;
    PeakXY = 6784;
    goto LABEL_314;
  }

  v321 = 0;
  v322 = 5.0;
  if ((v317 * 1.5) >= 5.0)
  {
    v322 = v317 * 1.5;
  }

  if ((v317 * 1.5) <= 1000.0)
  {
    v323 = v322;
  }

  else
  {
    v323 = 1000.0;
  }

  do
  {
    v324 = *v311;
    v311 += 3;
    if (v324 <= v323)
    {
      ++v321;
    }

    --v315;
  }

  while (v315);
  v325 = (v331 + 12 * v316);
  v326 = *v325;
  v327 = v325[1];
  v328 = v325[2];
  v329 = v325[3];
  v348 = 0;
  PeakXY = tplTracker_findPeakXY(v7 + 197808, v313, v314, v326, v327, v328, v329, &v348 + 4, &v348);
  if (PeakXY == 128)
  {
    *v333 = v317;
    *v344 = vrev64_s32(vmul_f32(*(v7 + 44996), vsub_f32(v348, vcvt_f32_s32(*(v7 + 45004)))));
    goto LABEL_314;
  }

LABEL_315:
  if (PeakXY == 128)
  {
    v337 = (v7 + 45020);
    if (*(v7 + 45020) == 1)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_318:
  *(v7 + 44968) = 0;
  BYTE1(v3[4].f64[0]) = 1;
  return PeakXY;
}

void sub_1A5E9FFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  *(v39 + 8) = v38;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ObjectTrackerEx::setTargetObjects(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (a3[1] - *a3 != 80)
  {
    return 6780;
  }

  v6 = *(v3 + 24);
  v7 = *(v3 + 28);
  v8 = *(v3 + 36);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  *v10.i32 = CVPixelBufferGetHeight(pixelBuffer);
  v11 = vdiv_f32(v7, vdup_lane_s32(v10, 0));
  v12 = *(a1 + 32);
  if (CVPixelBufferGetPlaneCount(pixelBuffer))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
    HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
  }

  v16 = (v6 / Width) * WidthOfPlane;
  v17 = vmulq_n_f64(vcvtq_f64_f32(v11), HeightOfPlane);
  v18 = WidthOfPlane + -1.0;
  if (v16 >= 0.0)
  {
    v19 = (v6 / Width) * WidthOfPlane;
  }

  else
  {
    v19 = 0.0;
  }

  if (v16 > v18)
  {
    v19 = WidthOfPlane + -1.0;
  }

  v20 = HeightOfPlane + -1.0;
  if (v17.f64[0] >= 0.0)
  {
    v21 = v17.f64[0];
  }

  else
  {
    v21 = 0.0;
  }

  if (v17.f64[0] > v20)
  {
    v21 = HeightOfPlane + -1.0;
  }

  *v12 = v19;
  *(v12 + 8) = v21;
  v22 = v16 + (v8 / Width) * WidthOfPlane;
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  if (v22 <= v18)
  {
    v18 = v23;
  }

  *(v12 + 16) = v18;
  *(v12 + 24) = v21;
  v24 = vaddvq_f64(v17);
  if (v24 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  if (v24 <= v20)
  {
    v20 = v25;
  }

  *(v12 + 48) = v19;
  *(v12 + 56) = v20;
  *(v12 + 32) = v18;
  *(v12 + 40) = v20;
  v26 = *(v12 + 72);
  if (!v26)
  {
    v27 = malloc_type_calloc(1uLL, 0x53500uLL, 0x10200401370116FuLL);
    if (!v27)
    {
      *(v12 + 72) = 0;
      return 6779;
    }

    v26 = v27;
    v27[42655] = tplTrackerResampler_alloc(72, 72);
    *(v12 + 72) = v26;
  }

  *(v26 + 44972) = 0;
  *(v26 + 42056) = 0u;
  *(v26 + 42072) = 0;
  v28 = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *v26 = v28;
  *(v26 + 4) = Height;
  *(v26 + 44968) = 1;
  v30 = *(v12 + 32);
  v31 = *v12;
  __asm { FMOV            V3.2D, #23.0 }

  *&_Q3.f64[0] = vcvt_f32_f64(vdivq_f64(vsubq_f64(v30, *v12), _Q3));
  *(v26 + 44960) = vrev64_s32(*&_Q3.f64[0]);
  __asm { FMOV            V2.2S, #24.0 }

  v38 = vcvtq_f64_f32(vmul_f32(*&_Q3.f64[0], _D2));
  v39 = vsubq_f64(v31, v38);
  v40 = vaddq_f64(v30, v38);
  v38.f64[0] = v40.f64[0];
  v38.f64[1] = v39.f64[1];
  v42 = _Q3.f64[0];
  v43[0] = v39;
  v43[1] = v38;
  v43[2] = v40;
  v39.f64[1] = v40.f64[1];
  v43[3] = v39;
  if (tplTrackerResampler_setImage(*(v26 + 341240), pixelBuffer, v43) == 128)
  {
    tplTrackerResampler_resample(*(v26 + 341240), v12, 0x18u, 24, v26 + 45040, (v26 + 50224), (v26 + 55408), (v26 + 45024), *(&v42 + 1), *&v42);
    tplTracker_YCbCr2RGB((v26 + 45040), (v26 + 50224), (v26 + 55408), 576, (v26 + 60592), (v26 + 65776), (v26 + 70960));
    tplTracker_computeNormedGradient(v26 + 60592, v26 + 65776, v26 + 70960, 24, 24, (v26 + 45024), v26 + 8);
    tplTracker_computeTemplateAvgColor(v26, v41);
    tplTracker_computeTemplateStats(v26);
    tplTracker_computeTemplateFFT(v26);
  }

  memcpy((v26 + 42076), (v26 + 8), 0x240uLL);
  *(v26 + 44956) = 1;
  *(v12 + 65) = 0;
  return 6784;
}

void vision::mod::ObjectTrackerEx::~ObjectTrackerEx(vision::mod::ObjectTrackerEx *this)
{
  vision::mod::ObjectTrackerEx::~ObjectTrackerEx(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F19734E0;
  ctpl_trackerDelete(*(this + 4));
  *(this + 4) = 0;
  *this = &unk_1F19763B0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t tplTracker_FFT_3324(uint64_t a1, uint64_t a2)
{
  v101[70] = *MEMORY[0x1E69E9840];
  result = 6780;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 + 4 * v7 + 8 * v6 + 24 * v5;
      if (v9 >= 0x48)
      {
        __assert_rtn("tplTracker_FFT_3324", "tplTrackerFFT.c", 99, "(outputIndex >= 0) && (outputIndex < 72)");
      }

      *&v100[8 * v9 + 560] = *(a1 + v4);
      v10 = v6 + 1;
      v11 = !v7;
      if (v7)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = v10 >= 3;
      if (v10 >= 3)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v11 = v7;
        v15 = v6 + 1;
      }

      if (v5 < 2)
      {
        ++v5;
      }

      else
      {
        v8 = v14;
        v7 = v11;
        v6 = v15;
        v5 = 0;
      }

      v4 += 8;
    }

    while (v4 != 576);
    v16 = v100;
    v17 = v101;
    v18 = -4;
    do
    {
      *v20.i8 = *v17;
      v19 = v17[1];
      v21 = vdup_lane_s32(v19, 1);
      v22 = v17[-1];
      *v23.i8 = v22;
      v23.i32[3] = vdup_lane_s32(v19, 0).i32[1];
      *v24.i8 = vadd_s32(v22, v19);
      v20.u64[1] = vadd_s32(*v17, vdup_lane_s32(v22, 1));
      *v25.i8 = v19;
      *v26.i8 = v17[-2];
      v26.i64[1] = v26.i64[0];
      v25.u64[1] = vadd_s32(vzip1_s32(v21, v22), *v17);
      v27 = v20;
      v24.u64[1] = v21;
      v27.i32[3] = v22.i32[0];
      v28 = vaddq_s32(vsubq_s32(v26, v20), v24);
      v24.i32[3] = vadd_s32(v19, vdup_lane_s32(*v17, 1)).u32[0];
      v23.i32[2] = v22.i32[1];
      v29 = vaddq_s32(v26, v27);
      v30 = vsubq_s32(v29, v24);
      v29.i64[1] = v26.i64[0];
      v31 = vaddq_s32(v29, v23);
      v32.i64[0] = vaddq_s32(v31, v25).u64[0];
      v30.i32[2] = v28.i32[2];
      v32.i64[1] = vsubq_s32(v31, v25).i64[1];
      v16[-1] = v32;
      *v16 = v30;
      v18 += 4;
      v16 += 2;
      v17 += 4;
    }

    while (v18 < 0x44);
    v33 = 0;
    v34 = -8;
    do
    {
      v35 = (1518500250 * *&v100[v33 + 24] + 0x40000000) >> 31;
      v36 = (1518500250 * *&v100[v33 + 28] + 0x40000000) >> 31;
      v37.i32[0] = v36 + v35;
      v37.i32[1] = v36 - v35;
      v38 = &v98[v33 + 380];
      v39 = (1518500250 * *&v100[v33 + 40] + 0x40000000) >> 31;
      v40 = (1518500250 * *&v100[v33 + 44] + 0x40000000) >> 31;
      v42.i64[0] = *&v100[v33 + 8];
      v41.i64[0] = *&v100[v33 + 16];
      v43.i32[0] = v39 - v40;
      v43.i32[1] = v39 + v40;
      v43.i64[1] = v41.i64[0];
      v44 = *&v99[v33 + 508];
      v41.u64[1] = v37;
      *v38 = vaddq_s32(v44, v41);
      *(v38 + 5) = vsub_s32(*&vextq_s8(v44, v44, 8uLL), v37);
      LODWORD(v39) = *&v99[v33 + 524];
      LODWORD(v40) = *&v100[v33 + 4];
      v45 = *&v100[v33 + 32];
      v46 = *&v100[v33 + 36];
      *(v38 + 4) = v46 + v39;
      *(v38 + 5) = v40 - v45;
      *(v38 + 12) = v39 - v46;
      *(v38 + 13) = v45 + v40;
      v42.i64[1] = v44.i64[0];
      *(v38 + 24) = vsubq_s32(v42, v43);
      *(v38 + 7) = vadd_s32(*v42.i8, *v43.i8);
      v34 += 8;
      v33 += 64;
    }

    while (v34 < 0x40);
    v47 = 0;
    v48 = v99;
    v49 = &v97;
    do
    {
      v50 = &qword_1A603B998;
      v51 = &qword_1A603B6C8;
      v52 = v49;
      v53 = v48;
      v54 = 8;
      do
      {
        v55 = *(v53 - 1);
        v56 = *v53;
        v57 = *(v51 - 24);
        v58 = *(v51 - 6);
        v60 = v53[15];
        v59 = v53[16];
        v61 = *(v50 - 24);
        v62 = *(v50 - 15);
        v64 = *(v53 - 17);
        v63 = *(v53 - 16);
        v65 = ((v57 * v55 + 0x40000000) >> 31) + v64 + ((v61 * v60 + 0x40000000) >> 31) - (((v58 * v56 + 0x40000000) >> 31) + ((v62 * v59 + 0x40000000) >> 31));
        LODWORD(v57) = ((v57 * v56 + 0x40000000) >> 31) + v63 + ((v58 * v55 + 0x40000000) >> 31) + ((v61 * v59 + 0x40000000) >> 31) + ((v62 * v60 + 0x40000000) >> 31);
        v66 = v51[18];
        v67 = v50[9];
        v68 = ((*v51 * v55 + 0x40000000) >> 31) + v64 + ((*v50 * v60 + 0x40000000) >> 31) - (((v66 * v56 + 0x40000000) >> 31) + ((v67 * v59 + 0x40000000) >> 31));
        LODWORD(v58) = ((*v51 * v56 + 0x40000000) >> 31) + v63 + ((v66 * v55 + 0x40000000) >> 31) + ((*v50 * v59 + 0x40000000) >> 31) + ((v67 * v60 + 0x40000000) >> 31);
        v69 = v51[24];
        v70 = v51[42];
        v71 = v50[24];
        v72 = v50[33];
        *(v52 - 17) = v65;
        *(v52 - 16) = v57;
        *(v52 - 1) = v68;
        *v52 = v58;
        v53 += 2;
        v52[15] = ((v69 * v55 + 0x40000000) >> 31) + v64 + ((v71 * v60 + 0x40000000) >> 31) - (((v70 * v56 + 0x40000000) >> 31) + ((v72 * v59 + 0x40000000) >> 31));
        v52[16] = ((v69 * v56 + 0x40000000) >> 31) + v63 + ((v70 * v55 + 0x40000000) >> 31) + ((v71 * v59 + 0x40000000) >> 31) + ((v72 * v60 + 0x40000000) >> 31);
        v52 += 2;
        v51 += 3;
        v50 += 3;
        --v54;
      }

      while (v54);
      v48 += 48;
      v49 += 48;
      v13 = v47 >= 0x30;
      v47 += 24;
    }

    while (!v13);
    v73 = v98;
    v74 = &coeffsB_3324;
    v75 = (a2 + 196);
    v76 = 24;
    result = 6784;
    v77 = &coeffsC_3324;
    do
    {
      v78 = *(v73 - 1);
      v79 = *v73;
      v80 = v74[18];
      v82 = v73[47];
      v81 = v73[48];
      v83 = v77[9];
      v85 = *(v73 - 49);
      v84 = *(v73 - 48);
      v86 = ((*v74 * v78 + 0x40000000) >> 31) + v85 + ((*v77 * v82 + 0x40000000) >> 31) - (((v80 * v79 + 0x40000000) >> 31) + ((v83 * v81 + 0x40000000) >> 31));
      v87 = ((*v74 * v79 + 0x40000000) >> 31) + v84 + ((v80 * v78 + 0x40000000) >> 31) + ((*v77 * v81 + 0x40000000) >> 31) + ((v83 * v82 + 0x40000000) >> 31);
      v88 = v74[24];
      v89 = v74[42];
      v90 = v77[24];
      v91 = v77[33];
      v92 = ((v88 * v78 + 0x40000000) >> 31) + v85 + ((v90 * v82 + 0x40000000) >> 31) - (((v89 * v79 + 0x40000000) >> 31) + ((v91 * v81 + 0x40000000) >> 31));
      LODWORD(v88) = ((v88 * v79 + 0x40000000) >> 31) + v84 + ((v89 * v78 + 0x40000000) >> 31) + ((v90 * v81 + 0x40000000) >> 31) + ((v91 * v82 + 0x40000000) >> 31);
      v93 = v74[48];
      v94 = v74[66];
      v95 = v77[48];
      v96 = v77[57];
      *(v75 - 49) = v86;
      *(v75 - 48) = v87;
      *(v75 - 1) = v92;
      *v75 = v88;
      v73 += 2;
      v75[47] = ((v93 * v78 + 0x40000000) >> 31) + v85 + ((v95 * v82 + 0x40000000) >> 31) - (((v94 * v79 + 0x40000000) >> 31) + ((v96 * v81 + 0x40000000) >> 31));
      v75[48] = ((v93 * v79 + 0x40000000) >> 31) + v84 + ((v94 * v78 + 0x40000000) >> 31) + ((v95 * v81 + 0x40000000) >> 31) + ((v96 * v82 + 0x40000000) >> 31);
      v75 += 2;
      ++v74;
      ++v77;
      --v76;
    }

    while (v76);
  }

  return result;
}

uint64_t tplTracker_IFFT_3324(uint64_t a1, uint64_t a2)
{
  v95[70] = *MEMORY[0x1E69E9840];
  result = 6780;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8 + 4 * v7 + 8 * v6 + 24 * v5;
      if (v9 >= 0x48)
      {
        __assert_rtn("tplTracker_IFFT_3324", "tplTrackerFFT.c", 313, "(outputIndex >= 0) && (outputIndex < 72)");
      }

      *&v94[8 * v9 + 568] = *(a1 + v4);
      v10 = v6 + 1;
      v11 = !v7;
      if (v7)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = v10 >= 3;
      if (v10 >= 3)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v11 = v7;
        v15 = v6 + 1;
      }

      if (v5 < 2)
      {
        ++v5;
      }

      else
      {
        v8 = v14;
        v7 = v11;
        v6 = v15;
        v5 = 0;
      }

      v4 += 8;
    }

    while (v4 != 576);
    v16 = v94;
    v17 = v95;
    v18 = -4;
    do
    {
      v19 = *(v17 - 2);
      v20.i64[0] = *(v17 - 1);
      v21.i64[0] = *v17;
      v22.i64[0] = v17[1];
      v17 += 4;
      v23 = vdup_lane_s32(*v20.i8, 1);
      v24 = vzip1_s32(vadd_s32(vsub_s32(v19, vadd_s32(*v21.i8, v23)), vdup_lane_s32(*v22.i8, 1)), vsub_s32(vadd_s32(*v20.i8, vdup_lane_s32(v19, 1)), vadd_s32(*v22.i8, vdup_lane_s32(*v21.i8, 1))));
      *v25.i8 = v19;
      v25.i32[3] = vdup_lane_s32(*&v22, 0).i32[1];
      v21.i64[1] = __PAIR64__(v19.u32[1], v23.u32[0]);
      v25.i32[2] = v19.i32[0];
      v26 = vaddq_s32(v25, v21);
      *(v16 - 1) = vadd_s32(*v26.i8, vadd_s32(*v20.i8, *v22.i8));
      *v16 = v24;
      v20.i64[1] = __PAIR64__(v20.u32[0], v21.u32[0]);
      v22.u64[1] = vzip2_s32(*v22.i8, *v21.i8);
      *(v16 + 8) = vsubq_s32(v26, vaddq_s32(v20, v22));
      v18 += 4;
      v16 += 32;
    }

    while (v18 < 0x44);
    v27 = 0;
    v28 = -8;
    do
    {
      v29 = (1518500250 * *&v94[v27 + 32] + 0x40000000) >> 31;
      v30 = (1518500250 * *&v94[v27 + 36] + 0x40000000) >> 31;
      v31.i32[0] = v29 - v30;
      v31.i32[1] = v29 + v30;
      v32 = &v92[v27 + 380];
      v33 = (1518500250 * *&v94[v27 + 48] + 0x40000000) >> 31;
      v34 = (1518500250 * *&v94[v27 + 52] + 0x40000000) >> 31;
      v36.i64[0] = *&v94[v27 + 16];
      v35.i64[0] = *&v94[v27 + 24];
      v37.i32[0] = v34 + v33;
      v37.i32[1] = v34 - v33;
      v37.i64[1] = v35.i64[0];
      v38 = *&v93[v27 + 508];
      v35.u64[1] = v31;
      *v32 = vaddq_s32(v38, v35);
      *(v32 + 5) = vsub_s32(*&vextq_s8(v38, v38, 8uLL), v31);
      LODWORD(v33) = *&v94[v27 + 8];
      LODWORD(v34) = *&v94[v27 + 12];
      v39 = *&v94[v27 + 40];
      v40 = *&v94[v27 + 44];
      *(v32 + 4) = v33 - v40;
      *(v32 + 5) = v39 + v34;
      *(v32 + 12) = v40 + v33;
      *(v32 + 13) = v34 - v39;
      v36.i64[1] = v38.i64[0];
      *(v32 + 24) = vsubq_s32(v36, v37);
      *(v32 + 7) = vadd_s32(*v36.i8, *v37.i8);
      v28 += 8;
      v27 += 64;
    }

    while (v28 < 0x40);
    v41 = 0;
    v42 = v93;
    v43 = &v91;
    do
    {
      v44 = &qword_1A603B998;
      v45 = &qword_1A603B6C8;
      v46 = v43;
      v47 = v42;
      v48 = 8;
      do
      {
        v49 = *(v47 - 1);
        v50 = *v47;
        v51 = *(v45 - 24);
        v52 = *(v45 - 6);
        v54 = v47[15];
        v53 = v47[16];
        v55 = *(v44 - 24);
        v56 = *(v44 - 15);
        v58 = *(v47 - 17);
        v57 = *(v47 - 16);
        v59 = ((v51 * v49 + 0x40000000) >> 31) + v58 + ((v52 * v50 + 0x40000000) >> 31) + ((v55 * v54 + 0x40000000) >> 31) + ((v56 * v53 + 0x40000000) >> 31);
        LODWORD(v51) = ((v51 * v50 + 0x40000000) >> 31) + v57 + ((v55 * v53 + 0x40000000) >> 31) - (((v52 * v49 + 0x40000000) >> 31) + ((v56 * v54 + 0x40000000) >> 31));
        v60 = v45[18];
        v61 = v44[9];
        v62 = ((*v45 * v49 + 0x40000000) >> 31) + v58 + ((v60 * v50 + 0x40000000) >> 31) + ((*v44 * v54 + 0x40000000) >> 31) + ((v61 * v53 + 0x40000000) >> 31);
        LODWORD(v52) = ((*v45 * v50 + 0x40000000) >> 31) + v57 + ((*v44 * v53 + 0x40000000) >> 31) - (((v60 * v49 + 0x40000000) >> 31) + ((v61 * v54 + 0x40000000) >> 31));
        v63 = v45[24];
        v64 = v45[42];
        v65 = v44[24];
        v66 = v44[33];
        *(v46 - 17) = v59;
        *(v46 - 16) = v51;
        *(v46 - 1) = v62;
        *v46 = v52;
        v47 += 2;
        v46[15] = ((v63 * v49 + 0x40000000) >> 31) + v58 + ((v64 * v50 + 0x40000000) >> 31) + ((v65 * v54 + 0x40000000) >> 31) + ((v66 * v53 + 0x40000000) >> 31);
        v46[16] = ((v63 * v50 + 0x40000000) >> 31) + v57 + ((v65 * v53 + 0x40000000) >> 31) - (((v64 * v49 + 0x40000000) >> 31) + ((v66 * v54 + 0x40000000) >> 31));
        v46 += 2;
        v45 += 3;
        v44 += 3;
        --v48;
      }

      while (v48);
      v42 += 48;
      v43 += 48;
      v13 = v41 >= 0x30;
      v41 += 24;
    }

    while (!v13);
    v67 = v92;
    v68 = &coeffsB_3324;
    v69 = (a2 + 196);
    v70 = 24;
    result = 6784;
    v71 = &coeffsC_3324;
    do
    {
      v72 = *(v67 - 1);
      v73 = *v67;
      v74 = v68[18];
      v76 = v67[47];
      v75 = v67[48];
      v77 = v71[9];
      v79 = *(v67 - 49);
      v78 = *(v67 - 48);
      v80 = ((*v68 * v72 + 0x40000000) >> 31) + v79 + ((v74 * v73 + 0x40000000) >> 31) + ((*v71 * v76 + 0x40000000) >> 31) + ((v77 * v75 + 0x40000000) >> 31);
      v81 = ((*v68 * v73 + 0x40000000) >> 31) + v78 + ((*v71 * v75 + 0x40000000) >> 31) - (((v74 * v72 + 0x40000000) >> 31) + ((v77 * v76 + 0x40000000) >> 31));
      v82 = v68[24];
      v83 = v68[42];
      v84 = v71[24];
      v85 = v71[33];
      v86 = ((v82 * v72 + 0x40000000) >> 31) + v79 + ((v83 * v73 + 0x40000000) >> 31) + ((v84 * v76 + 0x40000000) >> 31) + ((v85 * v75 + 0x40000000) >> 31);
      LODWORD(v82) = ((v82 * v73 + 0x40000000) >> 31) + v78 + ((v84 * v75 + 0x40000000) >> 31) - (((v83 * v72 + 0x40000000) >> 31) + ((v85 * v76 + 0x40000000) >> 31));
      v87 = v68[48];
      v88 = v68[66];
      v89 = v71[48];
      v90 = v71[57];
      *(v69 - 49) = v80;
      *(v69 - 48) = v81;
      *(v69 - 1) = v86;
      *v69 = v82;
      v67 += 2;
      v69[47] = ((v87 * v72 + 0x40000000) >> 31) + v79 + ((v88 * v73 + 0x40000000) >> 31) + ((v89 * v76 + 0x40000000) >> 31) + ((v90 * v75 + 0x40000000) >> 31);
      v69[48] = ((v87 * v73 + 0x40000000) >> 31) + v78 + ((v89 * v75 + 0x40000000) >> 31) - (((v88 * v72 + 0x40000000) >> 31) + ((v90 * v76 + 0x40000000) >> 31));
      v69 += 2;
      ++v68;
      ++v71;
      --v70;
    }

    while (v70);
  }

  return result;
}

uint64_t tplTracker_IFFT_2D(uint64_t a1, char *a2, void *a3)
{
  v3 = 6780;
  if (a1 && a3)
  {
    v6 = a1;
    v7 = 72;
    v8 = a2;
    do
    {
      v9 = tplTracker_IFFT_3324(v6, v8);
      if (v9 != 128)
      {
        return v9;
      }

      v6 += 576;
      v8 += 576;
      --v7;
    }

    while (v7);
    if (a2)
    {
      v10 = 0;
      v11 = a3;
      v12 = a2;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          *v14 = *&v12[v13];
          v14 += 72;
          v13 += 8;
        }

        while (v13 != 576);
        v12 += 576;
        ++v11;
        ++v10;
      }

      while (v10 != 72);
      v15 = 0;
      v16 = 72;
      while (1)
      {
        v3 = tplTracker_IFFT_3324(&a3[v15], &a2[v15 * 8]);
        if (v3 != 128)
        {
          break;
        }

        v15 += 72;
        if (!--v16)
        {
          memcpy(a3, a2, 0xA200uLL);
          return v3;
        }
      }
    }

    else
    {
      return 6780;
    }
  }

  return v3;
}

void sub_1A5EA1DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __CVBuffer **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  apple::vision::libraries::autotrace::BitmapToContourEnvironment::~BitmapToContourEnvironment(&a40);
  apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(&a39);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(a9);

  _Unwind_Resume(a1);
}

uint64_t BinSerializer_fseek(FILE *__stream, _BYTE *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    v5 = 5381;
    do
    {
      v5 = 33 * v5 + v3;
      v6 = *v4++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 5381;
  }

  v7 = 370;
  while (1)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    if (!fread(v10, 0x28uLL, 1uLL, __stream))
    {
      break;
    }

    if (*&v10[0] == v5)
    {
      fseek(__stream, -40, 1);
      return 384;
    }

    v8 = WORD4(v10[0]) - 1;
    if (v8 >= 9)
    {
      return 371;
    }

    fseek(__stream, qword_1A603BBD8[v8] * v11, 1);
  }

  return v7;
}

uint64_t BinSerializer_fgetBlobInfo(FILE *a1, _BYTE *a2, void *a3, _WORD *a4, void *a5, void *a6, void *a7)
{
  v14 = MEMORY[0x1AC5576A0]();
  if (a2)
  {
    fseek(a1, 0, 0);
    v15 = BinSerializer_fseek(a1, a2);
    if ((v15 & 0x80) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      if (fread(&v18, 0x28uLL, 1uLL, a1))
      {
        *a3 = v18;
        *a4 = WORD4(v18);
        v16 = *(&v19 + 1);
        *a5 = v19;
        *a6 = v16;
        *a7 = v20;
      }

      else
      {
        v15 = 373;
      }
    }
  }

  else
  {
    v15 = 381;
  }

  fseek(a1, v14, 0);
  return v15;
}

uint64_t BinSerializer_freadInBytes(FILE *__stream, _BYTE *a2, void *a3, size_t *a4)
{
  if (!__stream)
  {
    return 381;
  }

  if (a2)
  {
    v7 = BinSerializer_fseek(__stream, a2);
    if ((v7 & 0x80) == 0)
    {
      return v7;
    }
  }

  else
  {
    v7 = 384;
  }

  size = 0;
  memset(v11, 0, sizeof(v11));
  if (fread(v11, 0x28uLL, 1uLL, __stream) != 1)
  {
    return 373;
  }

  if (WORD4(v11[0]) != 9)
  {
    return 371;
  }

  v8 = size;
  *a4 = size;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  *a3 = v9;
  if (!v9)
  {
    return 379;
  }

  if (fread(v9, 1uLL, v8, __stream) != v8)
  {
    return 373;
  }

  return v7;
}

uint64_t BinSerializer_convertFloats(uint64_t a1, float *a2, float *__dst)
{
  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (a2 != __dst)
      {
        memcpy(__dst, a2, 4 * *(a1 + 32));
      }

      goto LABEL_18;
    }

    if (v3 == 4)
    {
      v8 = &CVML_status_notImplementedError;
      return (*v8 + 128) | 0x100;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 24) - v5;
        v7 = v5;
        v8 = &CVML_status_ok;
        do
        {
          v9 = *a2;
          a2 = (a2 + 2);
          *__dst++ = ((v6 * v9) / 65535.0) + v7;
          --v4;
        }

        while (v4);
        return (*v8 + 128) | 0x100;
      }

LABEL_18:
      v8 = &CVML_status_ok;
      return (*v8 + 128) | 0x100;
    }

LABEL_11:
    v8 = &CVML_status_invalidType;
    return (*v8 + 128) | 0x100;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24) - v11;
  v13 = v11;
  v8 = &CVML_status_ok;
  do
  {
    v14 = *a2;
    a2 = (a2 + 1);
    *__dst++ = ((v12 * v14) / 255.0) + v13;
    --v10;
  }

  while (v10);
  return (*v8 + 128) | 0x100;
}

uint64_t BinSerializer_freadInFloat(FILE *__stream, _BYTE *a2, int a3, float **a4, size_t *a5)
{
  if (!__stream)
  {
    return 381;
  }

  if (!a2 || (v9 = BinSerializer_fseek(__stream, a2), (v9 & 0x80) != 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    if (fread(v16, 0x28uLL, 1uLL, __stream) != 1)
    {
      return 373;
    }

    v10 = v17;
    *a5 = v17;
    if (a3)
    {
      v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
      *a4 = v11;
      if (!v11)
      {
        return 379;
      }
    }

    else
    {
      v11 = *a4;
      if (!*a4)
      {
        return 379;
      }
    }

    if (WORD4(v16[0]) > 2u)
    {
      if (WORD4(v16[0]) == 3)
      {
        if (fread(v11, 4uLL, v10, __stream) != v10)
        {
          return 373;
        }

        v13 = *a4;
LABEL_26:
        v9 = BinSerializer_convertFloats(v16, v13, *a4);
        if (v13 != *a4)
        {
          free(v13);
        }

        return v9;
      }

      if (WORD4(v16[0]) == 4)
      {
        return 383;
      }
    }

    else
    {
      if (WORD4(v16[0]) == 1)
      {
        v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
        if (v12)
        {
          v13 = v12;
          v14 = 1;
LABEL_21:
          if (fread(v12, v14, v10, __stream) != v10)
          {
            free(v13);
            return 373;
          }

          goto LABEL_26;
        }

        return 379;
      }

      if (WORD4(v16[0]) == 2)
      {
        v12 = malloc_type_malloc(2 * v10, 0x100004077774924uLL);
        if (v12)
        {
          v13 = v12;
          v14 = 2;
          goto LABEL_21;
        }

        return 379;
      }
    }

    return 371;
  }

  return v9;
}

void sub_1A5EA3788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EA5764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VNSequenceRequestHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierGlimmer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void releaseContourDatabaseMemory(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a1;
    if (*a1 >= 1)
    {
      v5 = 0;
      v6 = v3 + 7;
      do
      {
        if (*v6)
        {
          free(*v6);
          *v6 = 0;
          v4 = *a1;
        }

        ++v5;
        v6 += 5;
      }

      while (v5 < v4);
      v3 = *(a1 + 16);
    }

    free(v3);
    *(a1 + 16) = 0;
  }
}

uint64_t SelfClosureContourHeal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v65[6] = *MEMORY[0x1E69E9840];
  v7 = *(result + 4);
  v46 = *result;
  v8 = *(result + 8);
  v9 = *(result + 16);
  v62 = a3;
  v10 = a3 << 32;
  if (v7 >= 1)
  {
    v11 = 0;
    v51 = a3 << 32;
    v52 = *(result + 16);
    v49 = *(result + 8);
    v50 = *(result + 4);
    do
    {
      v12 = v9 + 40 * *(v8 + 2 * v11);
      if ((*(v12 + 8) & 1) != 0 || *v12 != 1)
      {
        goto LABEL_23;
      }

      v53 = *(v8 + 2 * v11);
      v61 = v11;
      v13 = *(v12 + 16);
      v14 = *v13;
      v58 = v14;
      v15 = v13[1];
      v57 = v15;
      v16 = &v13[2 * *(v12 + 4)];
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v55 = v18;
      v56 = v17;
      v19 = v14 | (v15 << 16);
      v20 = v17 | (v18 << 16);
      v59 = v19 | v59 & 0xFFFFFFFF00000000;
      v60 = v20 | v60 & 0xFFFFFFFF00000000;
      result = healCenters(v59, v17 | (v18 << 16), v64);
      if (!result)
      {
LABEL_9:
        v10 = v51;
        v9 = v52;
        if (a5)
        {
          *(a4 + 2 * v58 + ((v51 * v57) >> 31)) = v53;
          *(a4 + 2 * v56 + ((v51 * v55) >> 31)) = v53;
        }

        v8 = v49;
        v7 = v50;
        v11 = v61;
        goto LABEL_23;
      }

      v48 = v12;
      v21 = 0;
      v22 = result;
      v23 = v65;
      while (1)
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v5 = v5 & 0xFFFFFFFF00000000 | v20;
        result = heal((a2 + v24 + (v25 - 1) * v62 - 1), v62, v6, v5, v64, v21);
        if ((result & 0x80000000) == 0)
        {
          break;
        }

        v23 += 2;
        if (v22 == ++v21)
        {
          goto LABEL_9;
        }
      }

      v10 = v51;
      if ((a5 & 1) == 0)
      {
        *(a4 + 2 * v58 + ((v51 * v57) >> 31)) = 0;
        *(a4 + 2 * v56 + ((v51 * v55) >> 31)) = 0;
      }

      v9 = v52;
      if (result > 1)
      {
        v30 = v51 * v55;
        v26 = v48;
        if (result != 2)
        {
          *(a2 + v58 + ((v51 * v57) >> 32)) = 0;
          *(a2 + v56 + (v30 >> 32)) = 0;
          v33 = *(v48 + 16);
          *v33 = v24;
          v33[1] = v25;
          v29 = *(v48 + 4) - 1;
          goto LABEL_21;
        }

        *(a2 + v56 + (v30 >> 32)) = 0;
        v31 = *(v48 + 16) + 4 * *(v48 + 4);
        *(v31 - 4) = v24;
        *(v31 - 2) = v25;
      }

      else
      {
        v26 = v48;
        if (!result)
        {
          v27 = *(v48 + 4);
          v28 = (*(v48 + 16) + 4 * v27);
          *v28 = v24;
          v28[1] = v25;
          v29 = v27 + 1;
LABEL_21:
          *(v26 + 4) = v29;
          goto LABEL_22;
        }

        *(a2 + v58 + ((v51 * v57) >> 32)) = 0;
        v32 = *(v48 + 16);
        *v32 = v24;
        v32[1] = v25;
      }

LABEL_22:
      *(a2 + v24 + v25 * v62) = 1;
      *(v26 + 8) = 1;
      v8 = v49;
      v7 = v50;
      v11 = v61;
LABEL_23:
      ++v11;
    }

    while (v11 != v7);
  }

  if (a5 && v7 < v46 - 1)
  {
    v34 = v46 - 1 - v7;
    v35 = (v8 + 2 * v7);
    do
    {
      v37 = *v35++;
      v36 = v37;
      v38 = v9 + 40 * v37;
      if ((*(v38 + 8) & 1) == 0)
      {
        v39 = *(v38 + 16);
        v40 = *v39;
        v41 = v39[1];
        v42 = &v39[2 * *(v38 + 4)];
        v43 = *(v42 - 2);
        v44 = *(v42 - 1);
        v45 = -v36;
        *(a4 + 2 * v40 + ((v10 * v41) >> 31)) = v45;
        *(a4 + 2 * v43 + ((v10 * v44) >> 31)) = v45;
      }

      --v34;
    }

    while (v34);
  }

  return result;
}

uint64_t healCenters(unint64_t a1, int a2, uint64_t a3)
{
  v3 = a2 - a1;
  v4 = (a2 >> 16) - (a1 >> 16);
  if (v3 >= 0)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = a1 - a2;
  }

  if (v4 >= 0)
  {
    v6 = (a2 >> 16) - (a1 >> 16);
  }

  else
  {
    v6 = (a1 >> 16) - (a2 >> 16);
  }

  v7 = v5 > 2 || v6 > 2;
  if (!v7 && (v5 <= 1 ? (v8 = v6 > 1) : (v8 = 1), v8))
  {
    v9 = v5 == 2;
    v10 = v5 == 2 && HIWORD(a2) == WORD1(a1);
    v11 = a2 == a1;
    if (v6 != 2)
    {
      v9 = 0;
      v11 = 0;
    }

    if (v10 || v9 || v11)
    {
      *a3 = a1 + (v3 >> 1);
      *(a3 + 2) = (v4 >> 1) + WORD1(a1);
      *(a3 + 4) = 0;
      return 1;
    }

    else
    {
      if (v5 == 2)
      {
        v12 = a1 + (v3 >> 1);
        *a3 = v12;
        *(a3 + 2) = WORD1(a1);
        *(a3 + 4) = v12;
        *(a3 + 6) = HIWORD(a2);
      }

      else
      {
        if (v6 != 2)
        {
          __assert_rtn("healCenters", "Contours.c", 133, "ady == 2");
        }

        *a3 = a1;
        v14 = (a1 >> 16) + (v4 >> 1);
        *(a3 + 2) = v14;
        *(a3 + 4) = a2;
        *(a3 + 6) = v14;
      }

      return 2;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t heal(_BYTE *a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v6 = (a5 + 4 * a6);
  v7 = *v6;
  v8 = v6[1];
  v9 = 3 * (a3 - v7) - v8 + (a3 >> 16);
  v10 = v9 + 5;
  v11 = 3 * (a4 - v7) - v8 + (a4 >> 16);
  v12 = v11 + 5;
  v13 = heal_htab[(*a1 | (8 * a1[1]) | (32 * a1[2]) | (2 * a1[a2]) | (a1[a2 + 2] << 6) | (4 * a1[2 * a2]) | (16 * a1[2 * a2 + 1]) | (a1[2 * a2 + 2] << 7))];
  result = 0xFFFFFFFFLL;
  if (v13 > 8)
  {
    if (v13 <= 11)
    {
      if (v13 == 9)
      {
        if ((v9 | 2) != 3)
        {
          if ((v11 | 2) != 3)
          {
            __assert_rtn("heal", "Contours.c", 210, "(endpoint2 == 8)|| (endpoint2 == 6)");
          }

          return 2;
        }
      }

      else if (v13 == 10)
      {
        if ((v10 & 0xFFFFFFFB) != 2)
        {
          if ((v12 & 0xFFFFFFFB) != 2)
          {
            __assert_rtn("heal", "Contours.c", 213, "(endpoint2 == 6)|| (endpoint2 == 2)");
          }

          return 2;
        }
      }

      else if ((v9 | 2) != 0xFFFFFFFF)
      {
        if ((v11 | 2) != 0xFFFFFFFF)
        {
          __assert_rtn("heal", "Contours.c", 216, "(endpoint2 == 2)|| (endpoint2 == 4)");
        }

        return 2;
      }

      return 1;
    }

    switch(v13)
    {
      case 12:
        v18 = v9 == -3 && v12 == 8;
        v19 = v12 == 2 && v10 == 8;
        break;
      case 13:
        v18 = v9 == -1 && v12 == 6;
        v19 = v12 == 4 && v10 == 6;
        break;
      case 14:
        return 0;
      default:
        return result;
    }

    if (v19 || v18)
    {
      return 3;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v13 <= 5)
  {
    if (v13 == 4)
    {
      if (v11 == -1)
      {
        v15 = 2;
      }

      else
      {
        v15 = -1;
      }

      v16 = v10 == 4;
    }

    else
    {
      if (v13 != 5)
      {
        return result;
      }

      if (v11 == 3)
      {
        v15 = 2;
      }

      else
      {
        v15 = -1;
      }

      v16 = v10 == 8;
    }

    goto LABEL_50;
  }

  if (v13 == 6)
  {
    if (v11 == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = -1;
    }

    v16 = v10 == 6;
    goto LABEL_50;
  }

  if (v13 == 7)
  {
    if (v11 == -3)
    {
      v15 = 2;
    }

    else
    {
      v15 = -1;
    }

    v16 = v10 == 2;
LABEL_50:
    if (v16)
    {
      return 1;
    }

    else
    {
      return v15;
    }
  }

  result = 1;
  if (v9 != -1 && v9 != 3)
  {
    result = 2;
    if (v11 != -1 && v11 != 3)
    {
      __assert_rtn("heal", "Contours.c", 207, "(endpoint2 == 4)|| (endpoint2 == 8)");
    }
  }

  return result;
}

uint64_t testJoin(__int16 *a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = 3 * (v5 - a1[3]) + v4 - a1[2];
  if ((v6 - 5) <= 0xFFF6u)
  {
    __assert_rtn("testJoin", "Contours.c", 427, "(orn >= 0) && (orn <= 8)");
  }

  v7 = *a1;
  v8 = a2 + 2 * v4;
  v9 = a1[1];
  v10 = a3 << 32;
  v11 = *(v8 + (((a3 << 32) * v5) >> 31));
  if (v6 > 0xFFFBu)
  {
    if (v6 > 0xFFFDu)
    {
      if (v6 == 65534)
      {
        for (i = 0; i != 11; ++i)
        {
          *&v24[2 * i + 22] = v7 - testJoin_rx[i];
          *&v24[2 * i] = v9 + testJoin_ry[i];
        }
      }

      else
      {
        for (j = 0; j != 11; ++j)
        {
          *&v24[2 * j + 22] = v7 + testJoin_sy[j];
          *&v24[2 * j] = v9 + testJoin_sx[j];
        }
      }
    }

    else if (v6 == 65532)
    {
      for (k = 0; k != 11; ++k)
      {
        *&v24[2 * k + 22] = v7 + testJoin_rx[k];
        *&v24[2 * k] = v9 + testJoin_ry[k];
      }
    }

    else
    {
      for (m = 0; m != 11; ++m)
      {
        *&v24[2 * m + 22] = v7 + testJoin_sx[m];
        *&v24[2 * m] = v9 + testJoin_sy[m];
      }
    }
  }

  else if (v6 > 2u)
  {
    if (v6 == 3)
    {
      for (n = 0; n != 11; ++n)
      {
        *&v24[2 * n + 22] = v7 + testJoin_sx[n];
        *&v24[2 * n] = v9 - testJoin_sy[n];
      }
    }

    else
    {
      for (ii = 0; ii != 11; ++ii)
      {
        *&v24[2 * ii + 22] = v7 - testJoin_rx[ii];
        *&v24[2 * ii] = v9 - testJoin_ry[ii];
      }
    }
  }

  else if (v6 == 1)
  {
    for (jj = 0; jj != 11; ++jj)
    {
      *&v24[2 * jj + 22] = v7 - testJoin_sy[jj];
      *&v24[2 * jj] = v9 + testJoin_sx[jj];
    }
  }

  else
  {
    if (v6 != 2)
    {
      __assert_rtn("testJoin", "Contours.c", 443, "orn != 4");
    }

    for (kk = 0; kk != 11; ++kk)
    {
      *&v24[2 * kk + 22] = v7 + testJoin_rx[kk];
      *&v24[2 * kk] = v9 - testJoin_ry[kk];
    }
  }

  v20 = 0;
  result = 0;
  do
  {
    v22 = *&v24[v20 + 22];
    v23 = (v10 * *&v24[v20]) >> 31;
    if (*(a2 + 2 * v22 + v23))
    {
      if (result)
      {
        goto LABEL_40;
      }

      v7 = *&v24[v20 + 22];
      v9 = *&v24[v20];
      result = *(a2 + 2 * v22 + v23);
    }

    v20 += 2;
  }

  while (v20 != 22);
  if (result == v11 || result <= 0)
  {
LABEL_40:
    v7 = 0;
    v9 = 0;
    result = 0;
  }

  *a4 = v7;
  a4[1] = v9;
  return result;
}

int *canonicalizeQuad(int *result, float a2)
{
  if (a2 < 0.0)
  {
    v2 = vextq_s8(*result, *result, 8uLL);
    *result = vextq_s8(*(result + 1), *(result + 1), 8uLL);
    *(result + 1) = v2;
  }

  v3 = 0;
  v4 = (result + 1);
  v5 = -1;
  v6 = 1.0e12;
  do
  {
    v7 = *v4;
    v8 = (v7 * v7) + (*(v4 - 1) * *(v4 - 1));
    if (v8 <= v6 && (v8 != v6 || v7 < *&result[2 * v5 + 1]))
    {
      v6 = (v7 * v7) + (*(v4 - 1) * *(v4 - 1));
      v5 = v3;
    }

    ++v3;
    v4 += 2;
  }

  while (v3 != 4);
  if (v5 == 1)
  {
    v14 = *result;
    v9 = result[1];
    *result = *(result + 2);
    *(result + 2) = *(result + 3);
    result[6] = v14;
    goto LABEL_15;
  }

  if (v5 == 2)
  {
    v12 = result[2];
    v9 = result[3];
    v13 = *(result + 1);
    *(result + 2) = *result;
    *result = v13;
    result[6] = v12;
LABEL_15:
    v11 = 7;
    goto LABEL_16;
  }

  if (v5 != 3)
  {
    return result;
  }

  v10 = result[6];
  v9 = result[7];
  *(result + 3) = *(result + 2);
  *(result + 2) = *result;
  *result = v10;
  v11 = 1;
LABEL_16:
  result[v11] = v9;
  return result;
}

uint64_t *std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(uint64_t a1, int a2)
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

uint64_t vision::mod::LandmarkDetectorDNN_Options::LandmarkDetectorDNN_Options(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = xmmword_1A6038B40;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  v4 = a1 + 48;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  v5 = a1 + 72;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  v6 = a1 + 96;
  *(a1 + 112) = 0;
  if (a2 == 2)
  {
    *(a1 + 47) = 5;
    *v3 = 1734438249;
    *(a1 + 28) = 101;
    *(a1 + 29) = 0;
    v45 = 1;
    v46 = &v45;
    v22 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(a1 + 48, 1);
    if (*(v22 + 63) < 0)
    {
      v22[6] = 12;
      v23 = v22[5];
    }

    else
    {
      v23 = (v22 + 5);
      *(v22 + 63) = 12;
    }

    strcpy(v23, "landmarks_63");
    v45 = 1;
    v46 = &v45;
    *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 1) + 64) = 0;
    v45 = 1;
    v46 = &v45;
    v33 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1);
    v34 = v33;
    if (*(v33 + 63) < 0)
    {
      operator delete(v33[5]);
    }

    v34[5] = 0;
    v34[6] = 0;
    v34[7] = 0;
    v45 = 1;
    v46 = &v45;
    *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1) + 64) = 0;
    v45 = 1;
    v46 = &v45;
    v35 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1);
    v36 = v35;
    if (*(v35 + 63) < 0)
    {
      operator delete(v35[5]);
    }

    v36[5] = 0;
    v36[6] = 0;
    v36[7] = 0;
    v45 = 1;
    v46 = &v45;
    *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1) + 64) = 0;
    v45 = 2;
    v46 = &v45;
    v37 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2);
    if (*(v37 + 63) < 0)
    {
      v37[6] = 12;
      v38 = v37[5];
    }

    else
    {
      v38 = (v37 + 5);
      *(v37 + 63) = 12;
    }

    strcpy(v38, "landmarks_76");
    v45 = 2;
    v46 = &v45;
    *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2) + 64) = 1;
    v45 = 2;
    v46 = &v45;
    v39 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2);
    if (*(v39 + 63) < 0)
    {
      v39[6] = 10;
      v40 = v39[5];
    }

    else
    {
      v40 = (v39 + 5);
      *(v39 + 63) = 10;
    }

    strcpy(v40, "confidence");
    v45 = 2;
    v46 = &v45;
    *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2) + 64) = 0;
    v45 = 2;
    v46 = &v45;
    v41 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 2);
    if (*(v41 + 63) < 0)
    {
      v41[6] = 9;
      v42 = v41[5];
    }

    else
    {
      v42 = (v41 + 5);
      *(v41 + 63) = 9;
    }

    strcpy(v42, "occlusion");
    v45 = 2;
    v46 = &v45;
    v19 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 2);
  }

  else
  {
    if (a2 == 1)
    {
      *(a1 + 47) = 5;
      *v3 = 1734438249;
      *(a1 + 28) = 101;
      *(a1 + 29) = 0;
      v45 = 1;
      v46 = &v45;
      v20 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(a1 + 48, 1);
      if (*(v20 + 63) < 0)
      {
        v20[6] = 9;
        v21 = v20[5];
      }

      else
      {
        v21 = (v20 + 5);
        *(v20 + 63) = 9;
      }

      strcpy(v21, "landmarks");
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 1) + 64) = 0;
      v45 = 1;
      v46 = &v45;
      v24 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1);
      v25 = v24;
      if (*(v24 + 63) < 0)
      {
        operator delete(v24[5]);
      }

      v25[5] = 0;
      v25[6] = 0;
      v25[7] = 0;
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1) + 64) = 0;
      v45 = 1;
      v46 = &v45;
      v26 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1);
      v27 = v26;
      if (*(v26 + 63) < 0)
      {
        operator delete(v26[5]);
      }

      v27[5] = 0;
      v27[6] = 0;
      v27[7] = 0;
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v28 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2);
      v29 = v28;
      if (*(v28 + 63) < 0)
      {
        operator delete(v28[5]);
      }

      v29[5] = 0;
      v29[6] = 0;
      v29[7] = 0;
      v45 = 2;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v30 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2);
      v31 = v30;
      if (*(v30 + 63) < 0)
      {
        operator delete(v30[5]);
      }

      v31[5] = 0;
      v31[6] = 0;
      v31[7] = 0;
      v45 = 2;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v32 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 2);
      v18 = v32;
      if (*(v32 + 63) < 0)
      {
        operator delete(v32[5]);
      }
    }

    else
    {
      if (a2)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = 2935;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      *v3 = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v45 = 1;
      v46 = &v45;
      v7 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(a1 + 48, 1);
      v8 = v7;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
      }

      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 1) + 64) = 0;
      v45 = 1;
      v46 = &v45;
      v9 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1);
      v10 = v9;
      if (*(v9 + 63) < 0)
      {
        operator delete(v9[5]);
      }

      v10[5] = 0;
      v10[6] = 0;
      v10[7] = 0;
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 1) + 64) = 0;
      v45 = 1;
      v46 = &v45;
      v11 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1);
      v12 = v11;
      if (*(v11 + 63) < 0)
      {
        operator delete(v11[5]);
      }

      v12[5] = 0;
      v12[6] = 0;
      v12[7] = 0;
      v45 = 1;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 1) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v13 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2);
      v14 = v13;
      if (*(v13 + 63) < 0)
      {
        operator delete(v13[5]);
      }

      v14[5] = 0;
      v14[6] = 0;
      v14[7] = 0;
      v45 = 2;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v4, 2) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v15 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2);
      v16 = v15;
      if (*(v15 + 63) < 0)
      {
        operator delete(v15[5]);
      }

      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v45 = 2;
      v46 = &v45;
      *(std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v5, 2) + 64) = 0;
      v45 = 2;
      v46 = &v45;
      v17 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 2);
      v18 = v17;
      if (*(v17 + 63) < 0)
      {
        operator delete(v17[5]);
      }
    }

    v18[5] = 0;
    v18[6] = 0;
    v18[7] = 0;
    v45 = 2;
    v46 = &v45;
    v19 = std::__tree<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::__map_value_compare<vision::mod::_constellationType,std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>,std::less<vision::mod::_constellationType>,true>,std::allocator<std::__value_type<vision::mod::_constellationType,std::pair<std::string,BOOL>>>>::__emplace_unique_key_args<vision::mod::_constellationType,std::piecewise_construct_t const&,std::tuple<vision::mod::_constellationType&&>,std::tuple<>>(v6, 2);
  }

  *(v19 + 64) = 0;
  return a1;
}

void sub_1A5EA7610(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(v1 + 104));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(v1 + 80));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(v1 + 56));
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void vision::mod::LandmarkDetectorDNN_Options::getBlobNamesOutput(vision::mod::LandmarkDetectorDNN_Options *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

{
  vision::mod::LandmarkDetectorDNN_Options::getBlobNamesOutput(this);
}

void sub_1A5EA77D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::at(uint64_t *a1, int a2)
{
  if (!a1)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 8);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A5EA7A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__split_buffer<std::string> *a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void ***a13)
{
  *(v13 + 8) = v14;
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a10 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::FaceIDKmeansParams::serialize()
{
  v0 = std::ostream::write();
  if ((*(v0 + *(*v0 - 24) + 32) & 5) != 0 || (v1 = std::ostream::write(), (*(v1 + *(*v1 - 24) + 32) & 5) != 0))
  {
    v2 = &CVML_status_IOError;
  }

  else
  {
    v4 = std::ostream::write();
    v2 = &CVML_status_IOError;
    if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
    {
      v5 = std::ostream::write();
      if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
      {
        v2 = &CVML_status_ok;
      }
    }
  }

  return (*v2 + 128) | 0x1E00;
}

uint64_t vision::mod::FaceIDKmeansParams::deserialize()
{
  v0 = std::istream::read();
  if ((*(v0 + *(*v0 - 24) + 32) & 5) != 0 || (v1 = std::istream::read(), (*(v1 + *(*v1 - 24) + 32) & 5) != 0))
  {
    v2 = &CVML_status_IOError;
  }

  else
  {
    v4 = std::istream::read();
    v2 = &CVML_status_IOError;
    if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
    {
      v5 = std::istream::read();
      if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
      {
        v2 = &CVML_status_ok;
      }
    }
  }

  return (*v2 + 128) | 0x1E00;
}

double vision::mod::FaceIDModel::FaceIDModel(vision::mod::FaceIDModel *this, int a2, int a3, int a4, int a5, float a6, int a7, int a8)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 10) = a2;
  *(this + 11) = a4;
  *(this + 12) = a3;
  *(this + 13) = a5;
  *(this + 14) = a8;
  *(this + 15) = a6;
  *(this + 16) = a7;
  *&result = 0x12C0000000ALL;
  *(this + 68) = 0x12C0000000ALL;
  *(this + 10) = 0x3F1A36E2EB1C432DLL;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 128) = 1;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 176) = 1;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 1;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 384) = 1;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 1;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 464) = 1;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 1;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 544) = 1;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 1;
  *(this + 76) = 0;
  *(this + 37) = 0u;
  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::find<long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

void *std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

char *vision::mod::CVMLMatrix<double,16ul>::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    v6 = *a1;
    if (*a1)
    {
      free(v6);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;

  return vision::mod::CVMLMatrix<double,16ul>::initialize_(a1, a2, a3);
}

char *vision::mod::CVMLMatrix<double,16ul>::initialize_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 & 1) + a3;
  result = malloc_type_calloc(8 * a2 * v6 + 15, 1uLL, 0xE79D4E86uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v8 = 16 - (result & 0xF);
  if ((result & 0xF) == 0)
  {
    v8 = 0;
  }

  *a1 = result;
  *(a1 + 8) = &result[v8];
  *(a1 + 24) = a3;
  *(a1 + 32) = v6;
  *(a1 + 16) = a2;
  *(a1 + 40) = 1;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

uint64_t vision::mod::CVMLMatrix<double,16ul>::ptr(void *a1, unint64_t a2)
{
  if (a1[2] <= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "row index ", 10);
    v5 = MEMORY[0x1AC556940](v9, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " of ", 4);
    MEMORY[0x1AC556940](v6, a1[2]);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v8, v9);
    std::logic_error::logic_error(exception, &v8);
    exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
  }

  return a1[1] + 8 * a1[4] * a2;
}

{
  if (a1[2] <= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "row index ", 10);
    v5 = MEMORY[0x1AC556940](v9, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " of ", 4);
    MEMORY[0x1AC556940](v6, a1[2]);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v8, v9);
    std::logic_error::logic_error(exception, &v8);
    exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
  }

  return a1[1] + 8 * a1[4] * a2;
}

void sub_1A5EA8CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1A5EA8E48(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC556A40](v1);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
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
  std::ostream::~ostream();
  MEMORY[0x1AC556A40](a1 + 112);
  return a1;
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

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t vision::mod::CVMLMatrix<double,16ul>::mean(uint64_t result, void *a2, char a3)
{
  v4 = result;
  if (a3)
  {
    result = vision::mod::CVMLVector<double,16ul>::reset(a2, *(result + 24));
    v5 = v4[3];
  }

  else
  {
    v5 = *(result + 24);
    if (a2[2] < v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "vector length < cols");
      __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
    }
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4[2];
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = 0.0;
        do
        {
          result = vision::mod::CVMLMatrix<double,16ul>::ptr(v4, v8);
          v9 = v9 + *(result + 8 * v6);
          ++v8;
          v7 = v4[2];
        }

        while (v8 < v7);
        v5 = v4[3];
      }

      else
      {
        v9 = 0.0;
      }

      *(a2[1] + 8 * a2[3] * v6++) = v9 / v7;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t vision::mod::CVMLMatrix<double,16ul>::rowNorms(uint64_t result, void *a2, char a3)
{
  v4 = result;
  if (a3)
  {
    result = vision::mod::CVMLVector<double,16ul>::reset(a2, *(result + 16));
    v5 = v4[2];
  }

  else
  {
    v5 = *(result + 16);
    if (a2[2] < v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "vector length < rows");
      __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
    }
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      vision::mod::CVMLMatrix<double,16ul>::ptr(v4, v6);
      result = cblas_ddot_NEWLAPACK();
      *(a2[1] + 8 * a2[3] * v6++) = v7;
    }

    while (v6 < v4[2]);
  }

  return result;
}

void sub_1A5EA9380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t vision::mod::broadcastAdd<double,16ul>(void *a1, void *a2, int a3, void *a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F1973668;
  v5[3] = v5;
  vision::mod::broadcast<double,16ul>(a1, a2, v5, a3, a4);
  return std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](v5);
}

void sub_1A5EA9454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::broadcast<double,16ul>(void *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a1[2];
  if (v9 > a5[2] && a1[3] > a5[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "matrix size too small for output");
    v34 = off_1E77B0718;
    v35 = MEMORY[0x1E69E5280];
    goto LABEL_25;
  }

  v10 = a2[2];
  if (a4)
  {
    if (v10 == v9)
    {
      v11 = vision::mod::CVMLMatrix<double,16ul>::ptr(a1, 0);
      v12 = a1[4];
      result = vision::mod::CVMLMatrix<double,16ul>::ptr(a5, 0);
      v14 = a1[3];
      if (v14)
      {
        v15 = result;
        v16 = 0;
        v17 = a1[2];
        v18 = 8 * a5[4];
        v19 = 8 * v12;
        do
        {
          if (v17)
          {
            v20 = 0;
            v36 = v11;
            v21 = v15;
            do
            {
              result = std::function<double ()(double,double)>::operator()(*(a3 + 24), *v11, *(a2[1] + 8 * a2[3] * v20));
              *v21 = v22;
              ++v20;
              v17 = a1[2];
              v21 = (v21 + v18);
              v11 = (v11 + v19);
            }

            while (v20 < v17);
            v14 = a1[3];
            v11 = v36;
          }

          ++v16;
          ++v15;
          ++v11;
        }

        while (v16 < v14);
      }

      return result;
    }

    goto LABEL_24;
  }

  if (v10 != a1[3])
  {
LABEL_24:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "broadcast op: dimension mismatch");
    v34 = off_1E77B0720;
    v35 = MEMORY[0x1E69E5298];
LABEL_25:
    __cxa_throw(exception, v34, v35);
  }

  v23 = vision::mod::CVMLMatrix<double,16ul>::ptr(a1, 0);
  v24 = a1[4];
  result = vision::mod::CVMLMatrix<double,16ul>::ptr(a5, 0);
  v25 = a1[2];
  if (v25)
  {
    v26 = result;
    v27 = 0;
    v28 = a1[3];
    v29 = 8 * a5[4];
    v30 = 8 * v24;
    do
    {
      if (v28)
      {
        for (i = 0; i < v28; ++i)
        {
          result = std::function<double ()(double,double)>::operator()(*(a3 + 24), *(v23 + 8 * i), *(a2[1] + 8 * a2[3] * i));
          *(v26 + 8 * i) = v32;
          v28 = a1[3];
        }

        v25 = a1[2];
      }

      ++v27;
      v26 += v29;
      v23 += v30;
    }

    while (v27 < v25);
  }

  return result;
}

uint64_t std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

uint64_t std::function<double ()(double,double)>::operator()(uint64_t a1, double a2, double a3)
{
  v4 = a3;
  v5 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<void vision::mod::broadcastAdd<double,16ul>(vision::mod::CVMLMatrix<double,16ul> const&,vision::mod::CVMLVector<double,16ul> const&,int,vision::mod::CVMLMatrix<double,16ul>&,BOOL)::{lambda(double,double)#1},std::allocator<void vision::mod::broadcastAdd<double,16ul>(vision::mod::CVMLMatrix<double,16ul> const&,vision::mod::CVMLVector<double,16ul> const&,int,vision::mod::CVMLMatrix<double,16ul>&,BOOL)::{lambda(double,double)#1}>,double ()(double,double)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod12broadcastAddIdLm16EEEvRKNS0_10CVMLMatrixIT_XT0_EEERKNS0_10CVMLVectorIS3_XT0_EEEiRS4_bEUlddE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5EA9914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *vision::mod::CVMLVector<double,16ul>::initialize_(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(8 * a2 + 15, 1uLL, 0x495ACE9DuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v7, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v5 = 16 - (result & 0xF);
  if ((result & 0xF) == 0)
  {
    v5 = 0;
  }

  *a1 = result;
  *(a1 + 8) = &result[v5];
  *(a1 + 16) = a2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 1;
  return result;
}

void vision::mod::Kmeans<double,16ul>::labelEstimation_(void *a1, int a2, void *a3, void **a4, void *a5, void *__b, double *a7, double *a8)
{
  v16 = a1[2];
  v17 = 8 * v16;
  if (v16)
  {
    memset(__b, 255, 4 * v16);
    memset_pattern16(a7, &unk_1A6038F00, 8 * v16);
  }

  vision::mod::euclideanDistances<double,16ul>(a3, a1, a5, a4);
  if (a2 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = vision::mod::CVMLMatrix<double,16ul>::ptr(a5, v18);
      if (v16)
      {
        v20 = a7;
        v21 = __b;
        v22 = v16;
        do
        {
          v23 = *v19;
          if (*v19 < *v20)
          {
            *v21 = v18;
            *v20 = v23;
          }

          ++v21;
          ++v20;
          ++v19;
          --v22;
        }

        while (v22);
      }

      ++v18;
    }

    while (v18 != a2);
  }

  v24 = 0.0;
  if (v16)
  {
    do
    {
      v25 = *a7++;
      v24 = v24 + v25;
      v17 -= 8;
    }

    while (v17);
  }

  *a8 = v24;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 8 * v9) > *(**a3 + 8 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, v25, a5);
        v26 = &v22[8 * v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[8 * a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 8 * *v29);
          v32 = *(*v28 + 8 * *v22);
          if (v31 <= v32)
          {
            v30 = *v22;
          }

          v22 += 8 * (v31 <= v32);
          v29 += v31 > v32;
          *v8 = v30;
          v8 += 8;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8 = v34;
              v8 += 8;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22;
          v22 += 8;
          *v8 = v33;
          v8 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v17 = *v15;
          v16 = v15[1];
          v15 = v12;
          v18 = *(v14 + 8 * v16);
          if (v18 > *(v14 + 8 * v17))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v17;
              if (!v19)
              {
                break;
              }

              v17 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 <= *(v14 + 8 * v17))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v16;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 8 * v10);
      v13 = *(v11 + 8 * *result);
      if (v12 <= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 8 * *v26);
        v29 = *(*v25 + 8 * *v7);
        if (v28 <= v29)
        {
          v27 = *v7;
        }

        v26 += v28 > v29;
        v7 += v28 <= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 8 * *v14) <= *(v16 + 8 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 8 * *v14) <= *(v16 + 8 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v13 = result;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = **a4;
      while (1)
      {
        v15 = *v13;
        if (*(v14 + 8 * *a2) > *(v14 + 8 * *v13))
        {
          break;
        }

        v13 += 8;
        if (!--a5)
        {
          return result;
        }
      }

      v52 = a8;
      v53 = a3;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {
          *v13 = *a2;
          *a2 = v15;
          return result;
        }

        v16 = a4;
        v25 = a5 / 2;
        v20 = &v13[8 * (a5 / 2)];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v26 = (a3 - a2) >> 3;
          v18 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v18[8 * (v26 >> 1)];
            v30 = *v28;
            v29 = v28 + 8;
            v26 += ~(v26 >> 1);
            if (*(v14 + 8 * v30) > *(v14 + 8 * *v20))
            {
              v18 = v29;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v17 = (v18 - a2) >> 3;
      }

      else
      {
        v16 = a4;
        v17 = v10 / 2;
        v18 = &a2[8 * (v10 / 2)];
        if (a2 == v13)
        {
          v20 = v13;
        }

        else
        {
          v19 = (a2 - v13) >> 3;
          v20 = v13;
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[8 * (v19 >> 1)];
            v24 = *v22;
            v23 = v22 + 8;
            v19 += ~(v19 >> 1);
            if (*(v14 + 8 * *v18) > *(v14 + 8 * v24))
            {
              v19 = v21;
            }

            else
            {
              v20 = v23;
            }
          }

          while (v19);
        }

        v25 = (v20 - v13) >> 3;
      }

      a5 -= v25;
      v10 -= v17;
      v31 = v25;
      v32 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,unsigned long *>(v20, a2, v18);
      v33 = v31;
      v34 = v32;
      if (v33 + v17 >= a5 + v10)
      {
        v37 = v53;
        v54 = v33;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v32, v18, v37, v16, a5, v10, a7, v52);
        v18 = v20;
        a4 = v16;
        a8 = v52;
        v10 = v17;
        a5 = v54;
        a3 = v34;
      }

      else
      {
        v35 = v20;
        a4 = v16;
        v36 = v16;
        a8 = v52;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v13, v35, v32, v36, v33, v17, a7, v52);
        v13 = v34;
        a3 = v53;
      }

      a2 = v18;
      if (!v10)
      {
        return result;
      }
    }

    if (a5 <= v10)
    {
      if (v13 != a2)
      {
        v43 = a7;
        v44 = v13;
        do
        {
          v45 = *v44;
          v44 += 8;
          *v43 = v45;
          v43 += 8;
        }

        while (v44 != a2);
        v46 = *a4;
        while (a2 != a3)
        {
          v47 = *a2;
          v48 = *(*v46 + 8 * *a2);
          v49 = *(*v46 + 8 * *a7);
          if (v48 <= v49)
          {
            v47 = *a7;
          }

          a7 += 8 * (v48 <= v49);
          a2 += 8 * (v48 > v49);
          *v13 = v47;
          v13 += 8;
          if (a7 == v43)
          {
            return result;
          }
        }

        return memmove(v13, a7, v43 - a7);
      }
    }

    else if (a2 != a3)
    {
      v38 = a7;
      v39 = a2;
      do
      {
        v40 = *v39;
        v39 += 8;
        *v38 = v40;
        v38 += 8;
      }

      while (v39 != a3);
      v41 = *a4;
      while (a2 != v13)
      {
        v42 = *(v38 - 1);
        if (*(*v41 + 8 * v42) <= *(*v41 + 8 * *(a2 - 1)))
        {
          v38 -= 8;
        }

        else
        {
          v42 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v42;
        a3 -= 8;
        if (v38 == a7)
        {
          return result;
        }
      }

      if (v38 != a7)
      {
        v50 = -8;
        do
        {
          v51 = *(v38 - 1);
          v38 -= 8;
          *&a3[v50] = v51;
          v50 -= 8;
        }

        while (v38 != a7);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,unsigned long *>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else
    {
      v5 = __src + 8;
      if (__src + 8 == a2)
      {
        v12 = *__src;
        v13 = a3 - a2;
        memmove(__src, __src + 8, a3 - a2);
        v3 = &__src[v13];
        *v3 = v12;
      }

      else
      {
        v6 = a2 + 8;
        if (a2 + 8 == a3)
        {
          v14 = a3 - 8;
          v15 = *(a3 - 1);
          v3 = __src + 8;
          v16 = a3 - 8 - __src;
          if (v14 != __src)
          {
            memmove(__src + 8, __src, v16);
          }

          *__src = v15;
        }

        else
        {
          v7 = a2 - __src;
          v8 = (a2 - __src) >> 3;
          v9 = a3 - a2;
          if (v8 == (a3 - a2) >> 3)
          {
            do
            {
              v10 = *(v5 - 1);
              *(v5 - 1) = *(v6 - 1);
              *(v6 - 1) = v10;
              if (v5 == a2)
              {
                break;
              }

              v5 += 8;
              v11 = v6 == a3;
              v6 += 8;
            }

            while (!v11);
            return a2;
          }

          else
          {
            v17 = v9 >> 3;
            v18 = (a2 - __src) >> 3;
            do
            {
              v19 = v18;
              v18 = v17;
              v17 = v19 % v17;
            }

            while (v17);
            v20 = &__src[8 * v18];
            do
            {
              v22 = *(v20 - 1);
              v20 -= 8;
              v21 = v22;
              v23 = &v20[v7];
              v24 = v20;
              do
              {
                v25 = v24;
                v24 = v23;
                *v25 = *v23;
                v26 = __OFSUB__(v8, (a3 - v23) >> 3);
                v28 = v8 - ((a3 - v23) >> 3);
                v27 = (v28 < 0) ^ v26;
                v23 = &__src[8 * v28];
                if (v27)
                {
                  v23 = v24 + v7;
                }
              }

              while (v23 != v20);
              *v24 = v21;
            }

            while (v20 != __src);
            return &__src[v9];
          }
        }
      }
    }
  }

  return v3;
}

void vision::mod::euclideanDistances<double,16ul>(void *a1, void *a2, void *a3, void **a4)
{
  if (a1[3] != a2[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "dimensions of data points mismatch");
    v17 = off_1E77B0720;
    v18 = MEMORY[0x1E69E5298];
LABEL_28:
    __cxa_throw(exception, v17, v18);
  }

  if (a1[2] > a3[2] || (v7 = a2[2], v7 > a3[3]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "output distance matrix too small");
    v17 = off_1E77B0718;
    v18 = MEMORY[0x1E69E5280];
    goto LABEL_28;
  }

  v8 = a4;
  *v22 = 0u;
  v23 = 0u;
  v24 = 1;
  if (!a4)
  {
    vision::mod::CVMLVector<double,16ul>::reset(v22, v7);
    v8 = v22;
    vision::mod::CVMLMatrix<double,16ul>::rowNorms(a2, v22, 0);
  }

  *v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v21 = 1;
  if (a1 != a2)
  {
    vision::mod::CVMLVector<double,16ul>::reset(v19, a1[2]);
    v9 = v19;
    vision::mod::CVMLMatrix<double,16ul>::rowNorms(a1, v19, 0);
  }

  vision::mod::matMult<double,16ul>(a1, a2, 1, a3, 0);
  vision::mod::broadcastAdd<double,16ul>(a3, v9, 1, a3);
  vision::mod::broadcastAdd<double,16ul>(a3, v8, 0, a3);
  if (a3[2])
  {
    v10 = 0;
    do
    {
      v11 = vision::mod::CVMLMatrix<double,16ul>::ptr(a3, v10);
      for (i = a3[3]; i; --i)
      {
        *v11 = fmax(*v11, 0.0);
        ++v11;
      }

      ++v10;
      v13 = a3[2];
    }

    while (v10 < v13);
    if (a1 == a2 && v13)
    {
      v14 = 0;
      do
      {
        *(vision::mod::CVMLMatrix<double,16ul>::ptr(a3, v14) + 8 * v14) = 0;
        ++v14;
      }

      while (v14 < a3[2]);
    }
  }

  if (v21 == 1 && v19[0])
  {
    free(v19[0]);
  }

  if (v24 == 1)
  {
    v15 = v22[0];
    if (v22[0])
    {

      free(v15);
    }
  }
}

char *vision::mod::CVMLVector<double,16ul>::reset(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      free(v4);
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;

  return vision::mod::CVMLVector<double,16ul>::initialize_(a1, a2);
}

uint64_t vision::mod::matMult<double,16ul>(void *a1, void *a2, char a3, void *a4, char a5)
{
  v8 = a1[3];
  if (a3)
  {
    if (v8 == a2[3])
    {
      v9 = 2;
      goto LABEL_6;
    }

LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "matrix size mismatch");
    v15 = off_1E77B0720;
    v16 = MEMORY[0x1E69E5298];
LABEL_15:
    __cxa_throw(exception, v15, v16);
  }

  if (v8 != a2[2])
  {
    goto LABEL_14;
  }

  v9 = 3;
LABEL_6:
  v10 = a1[2];
  v11 = a2[v9];
  if (a5)
  {
    vision::mod::CVMLMatrix<double,16ul>::reset(a4, v10, v11);
    goto LABEL_13;
  }

  if (a4[2] < v10 || a4[3] < v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "matrix size too small for output");
    v15 = off_1E77B0718;
    v16 = MEMORY[0x1E69E5280];
    goto LABEL_15;
  }

LABEL_13:
  vision::mod::CVMLMatrix<double,16ul>::ptr(a1, 0);
  vision::mod::CVMLMatrix<double,16ul>::ptr(a2, 0);
  vision::mod::CVMLMatrix<double,16ul>::ptr(a4, 0);
  return cblas_dgemm_NEWLAPACK();
}

uint64_t std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a2)
{
  result = a2[1];
  v4 = result - *a2;
  if (result != *a2)
  {
    v5 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v7 = __clz(v5);
      v8 = 31;
      if (((v5 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v11;
      }

      while (v12 >= v5);
      return *a2 + v12;
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t std::__function::__func<void vision::mod::broadcastMinus<double,16ul>(vision::mod::CVMLMatrix<double,16ul> const&,vision::mod::CVMLVector<double,16ul> const&,int,vision::mod::CVMLMatrix<double,16ul>&,BOOL)::{lambda(double,double)#1},std::allocator<void vision::mod::broadcastMinus<double,16ul>(vision::mod::CVMLMatrix<double,16ul> const&,vision::mod::CVMLVector<double,16ul> const&,int,vision::mod::CVMLMatrix<double,16ul>&,BOOL)::{lambda(double,double)#1}>,double ()(double,double)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod14broadcastMinusIdLm16EEEvRKNS0_10CVMLMatrixIT_XT0_EEERKNS0_10CVMLVectorIS3_XT0_EEEiRS4_bEUlddE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void vision::mod::FaceIDModel::shrinkD_(vision::mod::FaceIDModel *this, int a2)
{
  v3 = a2;
  vision::mod::CVMLMatrix<double,16ul>::initialize_(v10, a2, *(this + 14));
  v4 = *(this + 15);
  if (v4 == v10[4])
  {
    v5 = vision::mod::CVMLMatrix<double,16ul>::ptr(v10, 0);
    v6 = vision::mod::CVMLMatrix<double,16ul>::ptr(this + 11, 0);
    memcpy(v5, v6, 8 * v3 * *(this + 15));
    vision::mod::CVMLMatrix<double,16ul>::reset(this + 88, v3, *(this + 14));
    v7 = vision::mod::CVMLMatrix<double,16ul>::ptr(this + 11, 0);
    v8 = vision::mod::CVMLMatrix<double,16ul>::ptr(v10, 0);
    memcpy(v7, v8, 8 * v3 * v4);
  }

  else
  {
    syslog(5, "ERROR: stride mismatch");
  }

  if (v11 == 1)
  {
    v9 = v10[0];
    if (v10[0])
    {

      free(v9);
    }
  }
}

void sub_1A5EAAC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    if (a9)
    {
      free(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::FaceIDModel::createPrintsDictionary_(uint64_t a1, vision::mod::ImageDescriptorBufferAbstract *a2, uint64_t a3)
{
  v4 = *(a1 + 200);
  v5 = 0;
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8);
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v6, v7, *(v4 + 4));
      if (v8)
      {
        v5 = (fmin(*(a1 + 56), ((v8[4] - v8[3]) >> 2)) + v5);
      }

      else
      {
        v5 += *(v4 + 6);
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = a1;
  vision::mod::CVMLMatrix<double,16ul>::reset(a1 + 136, v5, *(a1 + 112));
  v10 = *(a2 + 9);
  v11 = *(a2 + 12);
  v59 = v5;
  syslog(5, "FaceID: labels=%lu printDSize=%d num_prints=%d dimensionality=%d", *(a1 + 208), v5, v10, v11);
  LOBYTE(v65) = 0;
  std::vector<BOOL>::vector(&v78, v10);
  v12 = *(a1 + 200);
  if (v12)
  {
    v60 = 0;
    v54 = *(MEMORY[0x1E69E54E8] + 24);
    v55 = *MEMORY[0x1E69E54E8];
    while (1)
    {
      v13 = *(v12 + 4);
      v77 = v13;
      if (*(v12 + 6) >= 1)
      {
        v62 = 0;
        v14 = *(v12 + 5);
        while (1)
        {
          v15 = vision::mod::CVMLMatrix<double,16ul>::ptr((v9 + 88), v14);
          if (v10 < 1)
          {
            goto LABEL_26;
          }

          v16 = v15;
          v17 = 0;
          v18 = -1;
          v19 = 1000.0;
          do
          {
            if (((*(v78 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v17);
              v21 = 0.0;
              if (v11 >= 1)
              {
                v22 = v16;
                v23 = v11 & 0x7FFFFFFF;
                do
                {
                  v24 = *v22++;
                  v25 = v24;
                  LODWORD(v24) = *DataForKthDescriptor++;
                  v21 = v21 + (v25 - *&v24) * (v25 - *&v24);
                  --v23;
                }

                while (v23);
              }

              v26 = sqrt(v21);
              if (v26 < v19)
              {
                v18 = v17;
                v19 = v26;
              }
            }

            ++v17;
          }

          while (v17 != (v10 & 0x7FFFFFFF));
          if ((v18 & 0x80000000) != 0)
          {
LABEL_26:
            syslog(5, "FaceID: could not find a close enough faceprint for label %d", v77);
          }

          else
          {
            *(v78 + ((v18 >> 3) & 0x1FFFFFF8)) |= 1 << v18;
            if (v62 + v60 >= v59)
            {
              syslog(5, "FaceID: row %d + %d has exceeded the prints count of %d", v60, v62, v59);
              goto LABEL_80;
            }

            v27 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v18);
            v28 = vision::mod::CVMLMatrix<double,16ul>::ptr((v9 + 136), v62 + v60);
            if (v11 >= 1)
            {
              v29 = v11 & 0x7FFFFFFF;
              do
              {
                v30 = *v27++;
                *v28++ = v30;
                --v29;
              }

              while (v29);
            }

            ++v62;
          }

          if (++v14 >= *(v12 + 6) + *(v12 + 5))
          {
            v13 = v77;
            goto LABEL_30;
          }
        }
      }

      v62 = 0;
LABEL_30:
      v31 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, *(a3 + 8), v13);
      v75 = 0;
      v76 = 0;
      v74 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v74, v31[3], v31[4], (v31[4] - v31[3]) >> 2);
      v32 = v75;
      v33 = *(v9 + 64) + ((*(v9 + 64) / 0x7FFFFFFFu) | ((*(v9 + 64) / 0x7FFFFFFFu) << 31));
      if (v33 <= 1)
      {
        v33 = 1;
      }

      LODWORD(__dst) = v33;
      v57 = v74;
      v34 = (v75 - v74) >> 2;
      if (v34 >= 2)
      {
        v35 = (v75 - 1);
        if ((v75 - 1) > v74)
        {
          v36 = v34 - 1;
          v37 = v74;
          v38 = v74;
          do
          {
            v65 = 0;
            v66 = v36;
            v39 = std::uniform_int_distribution<long>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&__dst, &v65);
            if (v39)
            {
              v40 = *v37;
              *v37 = *(v38 + 4 * v39);
              *(v38 + 4 * v39) = v40;
            }

            ++v37;
            --v36;
            v38 += 4;
          }

          while (v37 < v35);
        }
      }

      if (v32 != v57)
      {
        break;
      }

      v9 = a1;
      v44 = v57;
LABEL_63:
      v58 = v44;
      if (v44 != v32)
      {
        while (v62 < *(v9 + 56))
        {
          v48 = *v44;
          if (v48 >= v10)
          {
            syslog(5, "FaceID: cannot place label %d with %d slots", *v44, v10);
            break;
          }

          if ((v78[v48 >> 6] & (1 << v48)) != 0)
          {
            v9 = a1;
          }

          else
          {
            syslog(5, "FaceID: taking slot %d", *v44);
            v78[v48 >> 6] |= 1 << v48;
            v49 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v48);
            v9 = a1;
            v50 = vision::mod::CVMLMatrix<double,16ul>::ptr((a1 + 136), v62 + v60);
            if (v11 >= 1)
            {
              v51 = v11 & 0x7FFFFFFF;
              do
              {
                v52 = *v49++;
                *v50++ = v52;
                --v51;
              }

              while (v51);
            }

            ++v62;
          }

          if (++v44 == v32)
          {
            break;
          }
        }
      }

      syslog(5, "FaceID: label %d -> %d...%d", v77, v60, v62 + v60 - 1);
      v65 = &v77;
      v53 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v9 + 224), v77);
      *(v53 + 5) = v60;
      *(v53 + 6) = v62;
      if (v58)
      {
        operator delete(v58);
      }

      v12 = *v12;
      v60 += v62;
      if (!v12)
      {
        goto LABEL_80;
      }
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
    v9 = a1;
    if (v32 - 1 != v57)
    {
      v41 = v57;
      do
      {
        MEMORY[0x1AC556930](&v65, *v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " ", 1);
        ++v41;
      }

      while (v41 != (v32 - 1));
    }

    MEMORY[0x1AC556930](&v65, *(v32 - 1));
    v42 = *(a1 + 56);
    if ((v72 & 0x10) != 0)
    {
      v45 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v45 = v68;
      }

      locale = v67[4].__locale_;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v43 = 0;
        v64 = 0;
LABEL_56:
        *(&__dst + v43) = 0;
        p_dst = &__dst;
        if (v64 < 0)
        {
          p_dst = __dst;
        }

        syslog(5, "FaceID: %d slots for %s", v42, p_dst);
        if (v64 < 0)
        {
          operator delete(__dst);
        }

        v65 = v55;
        *(&v65 + *(v55 - 24)) = v54;
        v66 = MEMORY[0x1E69E5548] + 16;
        if (v70 < 0)
        {
          operator delete(__p);
        }

        v66 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v67);
        std::ostream::~ostream();
        MEMORY[0x1AC556A40](&v73);
        v44 = v74;
        v32 = v75;
        goto LABEL_63;
      }

      locale = v67[1].__locale_;
      v45 = v67[3].__locale_;
    }

    v43 = v45 - locale;
    if ((v45 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    v64 = v45 - locale;
    if (v43)
    {
      memmove(&__dst, locale, v43);
    }

    goto LABEL_56;
  }

LABEL_80:
  if (v78)
  {
    operator delete(v78);
  }
}

void sub_1A5EAB434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (__p)
  {
    *(v31 - 152) = __p;
    operator delete(__p);
  }

  v33 = *(v31 - 128);
  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::uniform_int_distribution<long>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, void *a2)
{
  result = a2[1];
  v5 = result - *a2;
  if (result != *a2)
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(v10, a1, 0x40uLL);
      return std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(v10);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 63;
      if (((v6 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = 64;
      }

      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(v10, a1, v8 - v7);
      do
      {
        v9 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(v10);
      }

      while (v9 >= v6);
      return *a2 + v9;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      *(result + 32) = v3 - a3 + (v3 << 6);
      *(result + 40) = 0;
      LOBYTE(v4) = 64;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 >= 0x3F)
  {
LABEL_15:
    *(result + 48) = 0;
    v6 = -1;
    *(result + 56) = 0xFFFFFFFF >> -v4;
    goto LABEL_16;
  }

  *(result + 48) = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  v6 = -1;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  *(result + 56) = v7;
  if (v4 <= 0x1E)
  {
    v6 = 0xFFFFFFFF >> ~v4;
  }

LABEL_16:
  *(result + 60) = v6;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    result = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
        v12 = v6 - 1;
      }

      while (*(a1 + 40) <= v12);
      v13 = result << v5;
      if (v5 >= 0x40)
      {
        v13 = 0;
      }

      result = v13 + (*(a1 + 56) & v12);
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v14 = *(a1 + 24);
  if (v2 < v14)
  {
    v15 = *a1;
    v16 = *(a1 + 48);
    v17 = *(a1 + 16);
    v18 = *(a1 + 60);
    v19 = *v15;
    while (1)
    {
      v20 = v19 / 0xADC8;
      v21 = 48271 * (v19 % 0xADC8);
      v20 *= 3399;
      v9 = v21 >= v20;
      v22 = v21 - v20;
      if (v9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFF;
      }

      v19 = v23 + v22;
      v24 = v19 - 1;
      if (v16 > v24)
      {
        v25 = result << (v17 + 1);
        if (v17 >= 0x3F)
        {
          v25 = 0;
        }

        result = v25 + (v18 & v24);
        if (++v2 == v14)
        {
          break;
        }
      }
    }

    *v15 = v19;
  }

  return result;
}

uint64_t vision::mod::FaceIDModel::buildModel(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v376 = *MEMORY[0x1E69E9840];
  v4 = a2[12];
  v5 = a2[9];
  if (a2[8])
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v5 == 0)
  {
    syslog(5, "FaceID: invalid image descriptor buffer for training");
    return 7804;
  }

  if (v5 != (a3[1] - *a3) >> 2)
  {
    syslog(5, "FaceID: size mismatch between descriptors and their labels");
    return 7804;
  }

  if (*(a1 + 48) < 1)
  {
    syslog(5, "ERROR: negative or zero minElems_");
LABEL_28:
    v14 = &CVML_status_invalidParameter;
    goto LABEL_29;
  }

  if (*(a1 + 44) < 1)
  {
    syslog(5, "ERROR: negative or zero maxNumIds_");
    goto LABEL_28;
  }

  if (*(a1 + 52) < 1)
  {
    syslog(5, "ERROR: negative or zero minNumIds_");
    goto LABEL_28;
  }

  if (*(a1 + 72) < 1)
  {
    syslog(5, "ERROR: negative or zero maxIter_");
    goto LABEL_28;
  }

  if (*(a1 + 68) < 1)
  {
    v13 = "ERROR: negative or zero nInits_ in kmeans";
LABEL_27:
    syslog(5, v13);
    goto LABEL_28;
  }

  v12 = *(a1 + 80);
  v13 = "ERROR: invalid tol_ in kmeans";
  if (v12 >= 1.0 || v12 <= 0.0)
  {
    goto LABEL_27;
  }

  v14 = &CVML_status_ok;
LABEL_29:
  v17 = *v14 + 128;
  if (v17 != 128)
  {
    return v17 | 0x1E00;
  }

  memset(v320, 0, sizeof(v320));
  v321 = 1065353216;
  v317 = 0u;
  v318 = 0u;
  v319 = 1065353216;
  v18 = a2[1];
  v19 = a2[2];
  v20 = (a3[1] - *a3) >> 2;
  v21 = a2[9];
  if (v19 - v18 != v20 || v21 != v20)
  {
    syslog(5, "ERROR: size mismatch - descIds=%lu labels=%lu descriptors=%lu", v19 - v18, (a3[1] - *a3) >> 2, v21);
    syslog(5, "ERROR: error happened in searching updated labels");
LABEL_86:
    v15 = 7784;
    goto LABEL_428;
  }

  v308 = a1;
  v309 = a2;
  v293 = a4;
  if (v19 != v18)
  {
    v22 = 0;
    do
    {
      v23 = std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::find<long long>(a1, v18[v22]);
      if (v23)
      {
        v24 = *(v23 + 6);
        __p.__x_[0] = v24;
        v25 = *(*a3 + 4 * v22);
        if (v24 != v25)
        {
          if ((v24 & 0x80000000) == 0)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v317, v24);
            v25 = *(*a3 + 4 * v22);
          }

LABEL_39:
          if ((v25 & 0x80000000) == 0)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v317, v25);
          }
        }
      }

      else
      {
        __p.__x_[0] = -1;
        v25 = *(*a3 + 4 * v22);
        if (v25 != -1)
        {
          goto LABEL_39;
        }
      }

      ++v22;
      v18 = a2[1];
      v19 = a2[2];
    }

    while (v22 < v19 - v18);
  }

  memset(&__p, 0, 32);
  __p.__x_[8] = 1065353216;
  if (v18 == v19)
  {
    goto LABEL_43;
  }

  do
  {
    v55 = *v18;
    if (!*&__p.__x_[2])
    {
      goto LABEL_103;
    }

    v56 = vcnt_s8(*&__p.__x_[2]);
    v56.i16[0] = vaddlv_u8(v56);
    if (v56.u32[0] > 1uLL)
    {
      v57 = *v18;
      if (v55 >= *&__p.__x_[2])
      {
        v57 = v55 % *&__p.__x_[2];
      }
    }

    else
    {
      v57 = (*&__p.__x_[2] - 1) & v55;
    }

    v58 = *(*__p.__x_ + 8 * v57);
    if (!v58 || (v59 = *v58) == 0)
    {
LABEL_103:
      operator new();
    }

    while (1)
    {
      v60 = v59[1];
      if (v60 == v55)
      {
        break;
      }

      if (v56.u32[0] > 1uLL)
      {
        if (v60 >= *&__p.__x_[2])
        {
          v60 %= *&__p.__x_[2];
        }
      }

      else
      {
        v60 &= *&__p.__x_[2] - 1;
      }

      if (v60 != v57)
      {
        goto LABEL_103;
      }

LABEL_102:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_103;
      }
    }

    if (v59[2] != v55)
    {
      goto LABEL_102;
    }

    ++v18;
  }

  while (v18 != v19);
LABEL_43:
  for (i = *(v308 + 2); i; i = *i)
  {
    if (*&__p.__x_[2])
    {
      v27 = i[2];
      v28 = vcnt_s8(*&__p.__x_[2]);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = i[2];
        if (v27 >= *&__p.__x_[2])
        {
          v29 = v27 % *&__p.__x_[2];
        }
      }

      else
      {
        v29 = (*&__p.__x_[2] - 1) & v27;
      }

      v30 = *(*__p.__x_ + 8 * v29);
      if (v30)
      {
        for (j = *v30; j; j = *j)
        {
          v32 = j[1];
          if (v32 == v27)
          {
            if (j[2] == v27)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v28.u32[0] > 1uLL)
            {
              if (v32 >= *&__p.__x_[2])
              {
                v32 %= *&__p.__x_[2];
              }
            }

            else
            {
              v32 &= *&__p.__x_[2] - 1;
            }

            if (v32 != v29)
            {
              break;
            }
          }
        }
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v317, *(i + 6));
LABEL_61:
    ;
  }

  if (a2[2] != a2[1])
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *a3;
      v361[0] = (*a3 + v33);
      v36 = std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v320, *(v35 + 4 * v34));
      v37 = v36;
      v39 = v36[4];
      v38 = v36[5];
      if (v39 >= v38)
      {
        v41 = v36[3];
        v42 = v39 - v41;
        v43 = (v39 - v41) >> 2;
        v44 = v43 + 1;
        if ((v43 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v45 = v38 - v41;
        if (v45 >> 1 > v44)
        {
          v44 = v45 >> 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v46 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v46);
        }

        v47 = (v39 - v41) >> 2;
        v48 = (4 * v43);
        v49 = (4 * v43 - 4 * v47);
        *v48 = v34;
        v40 = v48 + 1;
        memcpy(v49, v41, v42);
        v50 = v37[3];
        v37[3] = v49;
        v37[4] = v40;
        v37[5] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v39 = v34;
        v40 = v39 + 4;
      }

      v37[4] = v40;
      ++v34;
      v33 += 4;
    }

    while (v34 < (a2[2] - a2[1]) >> 3);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&__p);
  if (!*(&v318 + 1))
  {
    v15 = 7808;
    goto LABEL_428;
  }

  v356 = 0;
  v355 = 0;
  v357 = 0;
  v51 = v308;
  v53 = (v308 + 200);
  v52 = *(v308 + 25);
  if (v52)
  {
    v54 = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v317, *(v52 + 4)))
      {
        std::vector<int>::push_back[abi:ne200100](&v355, v52 + 4);
        v54 += *(v52 + 6);
      }

      v52 = *v52;
    }

    while (v52);
  }

  else
  {
    v54 = 0;
  }

  v61 = v318;
  v62 = v54;
  if (v318)
  {
    v63 = v320[0];
    v62 = v54;
    do
    {
      v64 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v63, *(&v63 + 1), *(v61 + 4));
      if (v64)
      {
        v65 = (v64[4] - v64[3]) >> 2;
        if (*(v308 + 10) < v65)
        {
          LODWORD(v65) = *(v308 + 10);
        }

        v62 += v65;
      }

      v61 = *v61;
    }

    while (v61);
  }

  v292 = (v308 + 184);
  if (*(v308 + 3))
  {
    v66 = *(v308 + 2);
    if (v66)
    {
      do
      {
        v67 = *v66;
        operator delete(v66);
        v66 = v67;
      }

      while (v67);
    }

    *(v308 + 2) = 0;
    v68 = *(v308 + 1);
    if (v68)
    {
      for (k = 0; k != v68; ++k)
      {
        *(*v308 + 8 * k) = 0;
      }
    }

    *(v308 + 3) = 0;
  }

  v70 = v355;
  v71 = v356;
  if (v355 == v356)
  {
LABEL_129:
    v77 = v4;
    vision::mod::CVMLMatrix<double,16ul>::reset(v51 + 136, 0, v4);
    if (!v54)
    {
      vision::mod::CVMLMatrix<double,16ul>::reset(v51 + 88, v62, v4);
      if (*(v51 + 26))
      {
        v96 = *v53;
        if (*v53)
        {
          do
          {
            v97 = *v96;
            operator delete(v96);
            v96 = v97;
          }

          while (v97);
        }

        *(v51 + 25) = 0;
        v98 = *(v51 + 24);
        if (v98)
        {
          for (m = 0; m != v98; ++m)
          {
            *(*v292 + 8 * m) = 0;
          }
        }

        v54 = 0;
        *(v51 + 26) = 0;
      }

      else
      {
        v54 = 0;
      }

      v15 = 7808;
      goto LABEL_155;
    }

    vision::mod::CVMLMatrix<double,16ul>::initialize_(&__p, v54, v4);
    *v361 = 0u;
    v362 = 0u;
    v363 = 1065353216;
    if (*(v51 + 14) == v4 && (v78 = *&__p.__x_[8], *&__p.__x_[8] == *(v51 + 15)))
    {
      v315 = v70;
      for (n = 0; v70 != v71; ++v70)
      {
        v351[0] = v70;
        v80 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v292, *v70);
        v81 = vision::mod::CVMLMatrix<double,16ul>::ptr(&__p, n);
        v82 = vision::mod::CVMLMatrix<double,16ul>::ptr(v308 + 11, *(v80 + 5));
        memcpy(v81, v82, 8 * *(v308 + 15) * *(v80 + 6));
        LODWORD(v81) = *(v80 + 6);
        v351[0] = v70;
        v83 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v361, *v70);
        *(v83 + 5) = n;
        *(v83 + 6) = v81;
        n += *(v80 + 6);
      }

      v70 = v315;
      vision::mod::CVMLMatrix<double,16ul>::reset(v308 + 88, v62, v77);
      if (n == v54)
      {
        if (*(v308 + 15) == v78)
        {
          v84 = vision::mod::CVMLMatrix<double,16ul>::ptr(v308 + 11, 0);
          v85 = vision::mod::CVMLMatrix<double,16ul>::ptr(&__p, 0);
          memcpy(v84, v85, 8 * v78 * *&__p.__x_[4]);
          v86 = v361[0];
          v87 = v361[1];
          *v361 = *(v308 + 184);
          v89 = *(v308 + 25);
          v88 = *(v308 + 26);
          v90 = v362;
          v91 = *(v308 + 54);
          v92 = v363;
          *(v308 + 23) = v86;
          *(v308 + 24) = v87;
          *(v308 + 200) = v90;
          *&v362 = v89;
          *(&v362 + 1) = v88;
          *(v308 + 54) = v92;
          v363 = v91;
          if (*(&v90 + 1))
          {
            v93 = *(v90 + 8);
            if ((v87 & (v87 - 1)) != 0)
            {
              if (v93 >= v87)
              {
                v93 %= v87;
              }
            }

            else
            {
              v93 &= v87 - 1;
            }

            v86[v93] = v53;
          }

          if (v88)
          {
            v290 = *(v362 + 8);
            if ((v361[1] & (v361[1] - 1)) != 0)
            {
              if (v290 >= v361[1])
              {
                v290 %= v361[1];
              }
            }

            else
            {
              v290 &= v361[1] - 1;
            }

            *(v361[0] + v290) = &v362;
          }

          v94 = &CVML_status_ok;
          goto LABEL_141;
        }

        n = v54;
        syslog(5, "ERROR: size or stride mismatch");
      }

      else
      {
        syslog(5, "ERROR: size or stride mismatch");
      }
    }

    else
    {
      n = 0;
      syslog(5, "ERROR: dimension or stride mismatch");
    }

    v94 = &CVML_status_inconsistentState;
    v54 = n;
LABEL_141:
    v95 = *v94;
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v361);
    if (LOBYTE(__p.__x_[10]) == 1 && *__p.__x_)
    {
      free(*__p.__x_);
    }

    v15 = (v95 + 128) | 0x1E00;
    goto LABEL_155;
  }

  v72 = v355;
  while (1)
  {
    v73 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*&v320[0], *(&v320[0] + 1), *v72);
    if (!v73)
    {
      break;
    }

    v74 = v73[3];
    v75 = v73[4];
    while (v74 != v75)
    {
      v76 = *v72;
      *__p.__x_ = v309[1] + 8 * *v74;
      *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v308, **__p.__x_) + 6) = v76;
      ++v74;
    }

    ++v72;
    v51 = v308;
    if (v72 == v71)
    {
      goto LABEL_129;
    }
  }

  syslog(5, "ERROR: incomplete labelInfo");
  v54 = 0;
  v15 = 7806;
LABEL_155:
  if (v70)
  {
    operator delete(v70);
  }

  if (v15 != 128)
  {
    syslog(5, "ERROR: error happened in initializing global dictionary");
    goto LABEL_428;
  }

  v298 = v54;
  v100 = v318;
  if (!v318)
  {
    goto LABEL_426;
  }

  v296 = 0;
  v313 = vdupq_n_s64(2uLL);
  while (1)
  {
    v101 = *(v100 + 4);
    v102 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*&v320[0], *(&v320[0] + 1), v101);
    if (v102)
    {
      v103 = v102[3];
      v299 = v102;
      v104 = v102[4] - v103;
      if (v104)
      {
        break;
      }
    }

LABEL_181:
    v100 = *v100;
    if (!v100)
    {
      goto LABEL_426;
    }
  }

  v332 = v101;
  v105 = v309[12];
  v106 = v105;
  v294 = v100;
  if (v105 != *(v308 + 14))
  {
    v121 = "ERROR: dimension mismatch between input data and global dictionary";
    goto LABEL_174;
  }

  v107 = v309[7];
  v108 = *(v309 + 16);
  v109 = *(v309 + 18);
  v110 = v105 << 32;
  if (*(v308 + 10) >= (v104 >> 2))
  {
    v128 = 0;
    v129 = 4 * v105;
    do
    {
      v130 = *(v103 + 4 * v128);
      v121 = "ERROR: index out of range";
      v122 = &CVML_status_internalError;
      if (v130 >= v109 || v130 < 0)
      {
        goto LABEL_175;
      }

      v131 = vision::mod::CVMLMatrix<double,16ul>::ptr(v308 + 11, v298 + v128);
      if (v110)
      {
        v132 = (v107 + v130 * v108);
        v133 = v129;
        do
        {
          v134 = *v132++;
          *v131++ = v134;
          v133 -= 4;
        }

        while (v133);
      }

      ++v128;
      v103 = v299[3];
      v135 = v299[4] - v103;
    }

    while (v128 < v135 >> 2);
    v136 = v332;
    if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v292, v332))
    {
      v164 = *(v308 + 10);
      v355 = &v332;
      v165 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v292, v136);
      v166 = v135 >> 2;
      if (v164 < (v135 >> 2))
      {
        LODWORD(v166) = v164;
      }

      *(v165 + 5) = v298;
      *(v165 + 6) = v166;
      v162 = 7808;
      goto LABEL_411;
    }

    v121 = "ERROR: duplicated labels detected when build sub-dictionary";
LABEL_174:
    v122 = &CVML_status_inconsistentState;
LABEL_175:
    syslog(5, v121);
    v15 = (*v122 + 128) | 0x1E00;
    goto LABEL_176;
  }

  vision::mod::CVMLMatrix<double,16ul>::initialize_(v327, (v104 >> 2), v105);
  v111 = v299[3];
  if (v299[4] == v111)
  {
    LODWORD(v120) = 0;
  }

  else
  {
    v112 = 0;
    v113 = 4 * v106;
    do
    {
      v114 = *(v111 + 4 * v112);
      if (v114 >= v109 || v114 < 0)
      {
        syslog(5, "ERROR: index out of range");
        v163 = 0;
        v162 = 7808;
        v15 = 7806;
        goto LABEL_407;
      }

      v115 = vision::mod::CVMLMatrix<double,16ul>::ptr(v327, v112);
      if (v110)
      {
        v116 = (v107 + v114 * v108);
        v117 = v113;
        do
        {
          v118 = *v116++;
          *v115++ = v118;
          v117 -= 4;
        }

        while (v117);
      }

      ++v112;
      v111 = v299[3];
      v119 = v299[4] - v111;
    }

    while (v112 < v119 >> 2);
    v120 = v119 >> 2;
  }

  v137 = *(v308 + 10);
  if (v137 >= v120)
  {
    v138 = v120;
  }

  else
  {
    v138 = v137;
  }

  v139 = *(v308 + 13);
  if (v139 <= v298 || (v140 = v138, v138 + v298 > v139))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "row index out of range");
    goto LABEL_445;
  }

  v141 = *(v308 + 14);
  if (!v141)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "col index out of range");
LABEL_445:
    exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
  }

  v142 = *(v308 + 10);
  v143 = *(v308 + 16);
  v144 = *(v308 + 68);
  v145 = *(v308 + 15);
  v322[0] = (*(v308 + 12) + 8 * v145 * v298);
  v322[1] = v322[0];
  v323 = v138;
  v324 = v141;
  v325 = v145;
  v326 = 0;
  v295 = v144;
  if (v144 < 1 || (v303 = HIDWORD(v144), v144 <= 0))
  {
    syslog(5, "ERROR: invalid parameters in kmeans");
    v162 = 7804;
    syslog(5, "ERROR: kmeans error %lu", 7804);
    v163 = 0;
    v15 = 7804;
    goto LABEL_404;
  }

  v146 = v329;
  vision::mod::CVMLVector<double,16ul>::initialize_(&__p, v329);
  if (*&__p.__x_[4] < v329)
  {
    v289 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v289, "vector length < cols");
    v289->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(v289, off_1E77B0718, MEMORY[0x1E69E5280]);
  }

  vision::mod::CVMLMatrix<double,16ul>::mean(v327, &__p, 0);
  v147 = v329;
  v148 = *&__p.__x_[2];
  if (v329)
  {
    v149 = 0;
    v150 = *&__p.__x_[6];
    v152 = v327[1];
    v151 = v328;
    v153 = v328;
    v154 = 8 * v330;
    do
    {
      v155 = v150 * v149;
      if (v151)
      {
        v156 = 0.0;
        v157 = v152;
        v158 = v151;
        do
        {
          v156 = v156 + (*v157 - v148[v155]) * (*v157 - v148[v155]);
          v157 = (v157 + v154);
          --v158;
        }

        while (v158);
      }

      else
      {
        v156 = 0.0;
      }

      v148[v155] = v156 / v153;
      ++v149;
      ++v152;
    }

    while (v149 != v147);
  }

  if (v146)
  {
    v159 = 8 * v146;
    v160 = 0.0;
    do
    {
      v161 = *v148++;
      v160 = v160 + v161;
      v159 -= 8;
    }

    while (v159);
  }

  else
  {
    v160 = 0.0;
  }

  if (LOBYTE(__p.__x_[8]) == 1 && *__p.__x_)
  {
    free(*__p.__x_);
  }

  *v343 = 0u;
  v344 = 0u;
  v345 = 1;
  vision::mod::CVMLMatrix<double,16ul>::mean(v327, v343, 1);
  *__p.__x_ = &unk_1F19735D8;
  *&__p.__x_[6] = &__p;
  vision::mod::broadcast<double,16ul>(v327, v343, &__p, 0, v327);
  std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](&__p);
  *v340 = 0u;
  v341 = 0u;
  v342 = 1;
  vision::mod::CVMLMatrix<double,16ul>::rowNorms(v327, v340, 1);
  vision::mod::CVMLMatrix<double,16ul>::initialize_(&v334, v138, v329);
  v167 = v160 / v146 * v142;
  v168 = 5489;
  __p.__x_[0] = 5489;
  for (ii = 1; ii != 624; ++ii)
  {
    v168 = ii + 1812433253 * (v168 ^ (v168 >> 30));
    __p.__x_[ii] = v168;
  }

  __p.__i_ = 0;
  if ((v143 & 0x80000000) == 0)
  {
    __p.__x_[0] = v143;
    for (jj = 1; jj != 624; ++jj)
    {
      v143 = jj + 1812433253 * (v143 ^ (v143 >> 30));
      __p.__x_[jj] = v143;
    }

    __p.__i_ = 0;
  }

  v171 = log(v138);
  v172 = 0;
  v301 = v171;
  LODWORD(v173) = v171 + 2;
  v174 = v173;
  if (v173 <= 1)
  {
    v173 = 1;
  }

  else
  {
    v173 = v173;
  }

  v314 = v174;
  v316 = v173;
  v302 = 4 * v138;
  v306 = v138;
  v307 = 8 * v138;
  v175 = 1.79769313e308;
  v310 = v138;
  while (2)
  {
    v297 = v172;
    v176 = v328;
    v177 = v329;
    LODWORD(v350[0]) = 0;
    HIDWORD(v350[0]) = v328 - 1;
    v178 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&__p, v350);
    v179 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, 0);
    v180 = vision::mod::CVMLMatrix<double,16ul>::ptr(v327, v178);
    v181 = 8 * v177;
    memcpy(v179, v180, 8 * v177);
    vision::mod::CVMLMatrix<double,16ul>::initialize_(v361, 1, v176);
    if (!v336)
    {
      v287 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v287, "row index out of range");
      goto LABEL_419;
    }

    if (!v337 || v177 > v337)
    {
      v287 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v287, "col index out of range");
LABEL_419:
      v287->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v287, off_1E77B0718, MEMORY[0x1E69E5280]);
    }

    v355 = v335;
    v356 = v335;
    v357 = 1;
    v358 = v177;
    v359 = v338;
    v360 = 0;
    vision::mod::euclideanDistances<double,16ul>(&v355, v327, v361, v340);
    if (v360 == 1 && v355)
    {
      free(v355);
    }

    v182 = v361[1];
    *(v361[1] + v178) = 0;
    vision::mod::CVMLMatrix<double,16ul>::initialize_(&v355, v314, v177);
    vision::mod::CVMLMatrix<double,16ul>::initialize_(v351, v314, v176);
    std::vector<unsigned long>::vector[abi:ne200100](&v347, v314);
    std::vector<double>::vector[abi:ne200100](&__dst, v176);
    std::vector<double>::vector[abi:ne200100](&__src, v176);
    std::vector<double>::vector[abi:ne200100](&v365, v176);
    if (v138 >= 2)
    {
      v311 = 1;
      do
      {
        v183 = vision::mod::CVMLMatrix<double,16ul>::ptr(v361, 0);
        v184 = vision::mod::CVMLMatrix<double,16ul>::ptr(v361, 0) + 8 * v176;
        v185 = v365;
        if (v183 != v184)
        {
          v187 = *v183;
          v186 = v183 + 1;
          v188 = v187;
          *v365 = v187;
          if (v186 != v184)
          {
            v189 = v185 + 1;
            do
            {
              v190 = *v186++;
              v188 = v188 + v190;
              *v189++ = v188;
            }

            while (v186 != v184);
          }
        }

        if (!v185 || !v176)
        {
          v286 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v286, "empty cumsum vector");
          v286->__vftable = (MEMORY[0x1E69E55C8] + 16);
          __cxa_throw(v286, off_1E77B0720, MEMORY[0x1E69E5298]);
        }

        if (v314)
        {
          v191 = 0;
          v192 = v347;
          v193 = v185[v176 - 1];
          do
          {
            v194 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
            v195 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
            if ((v176 & 0x1FFFFFFFFFFFFFFFLL) != 0)
            {
              v196 = v185;
              v197 = (8 * v176) >> 3;
              do
              {
                v198 = v197 >> 1;
                v199 = &v196[v197 >> 1];
                v201 = *v199;
                v200 = v199 + 1;
                v197 += ~(v197 >> 1);
                if (v201 < v193 * (((v195 >> 6) + (v194 >> 5) * 67108864.0) * 1.11022302e-16))
                {
                  v196 = v200;
                }

                else
                {
                  v197 = v198;
                }
              }

              while (v197);
            }

            else
            {
              v196 = v185;
            }

            v192[v191++] = v196 - v185;
          }

          while (v191 != v314);
          v181 = 8 * v177;
          v140 = v306;
          if (v301 >= -1)
          {
            for (kk = 0; kk != v316; ++kk)
            {
              v203 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v355, kk);
              v204 = vision::mod::CVMLMatrix<double,16ul>::ptr(v327, *(v347 + kk));
              memcpy(v203, v204, 8 * v177);
            }
          }
        }

        vision::mod::euclideanDistances<double,16ul>(&v355, v327, v351, v340);
        if (v301 < -1)
        {
          v220 = -1;
        }

        else
        {
          v205 = v347;
          v206 = v351[1];
          v207 = 8 * v353;
          v208 = v351[1];
          v209 = v316;
          do
          {
            v210 = *v205++;
            *&v208[8 * v210] = 0;
            v208 += v207;
            --v209;
          }

          while (v209);
          v211 = 0;
          LODWORD(v212) = -1;
          v213 = 1.79769313e308;
          do
          {
            v214 = 0;
            v215 = __src;
            do
            {
              v216 = v206[v214];
              if (v216 >= v182[v214])
              {
                v216 = v182[v214];
              }

              v215[v214++] = v216;
            }

            while (v176 != v214);
            v217 = 0.0;
            if (v215 != v369)
            {
              v218 = v215;
              do
              {
                v219 = *v218++;
                v217 = v217 + v219;
              }

              while (v218 != v369);
            }

            if (v212 == -1 || v217 < v213 && v213 - v217 > 1.0e-14)
            {
              v212 = *(v347 + v211);
              memcpy(__dst, v215, 8 * v176);
              v213 = v217;
            }

            ++v211;
            v206 = (v206 + v207);
          }

          while (v211 != v316);
          v220 = v212;
          v181 = 8 * v177;
          v140 = v306;
        }

        v221 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, v311);
        v222 = vision::mod::CVMLMatrix<double,16ul>::ptr(v327, v220);
        memcpy(v221, v222, v181);
        v223 = vision::mod::CVMLMatrix<double,16ul>::ptr(v361, 0);
        memcpy(v223, __dst, 8 * v176);
        ++v311;
      }

      while (v311 != v310);
    }

    if (v365)
    {
      v366 = v365;
      operator delete(v365);
    }

    LODWORD(v138) = v310;
    if (__src)
    {
      v369 = __src;
      operator delete(__src);
    }

    if (__dst)
    {
      v371 = __dst;
      operator delete(__dst);
    }

    if (v347)
    {
      v348 = v347;
      operator delete(v347);
    }

    if (v354 == 1 && v351[0])
    {
      free(v351[0]);
    }

    if (v360 == 1 && v355)
    {
      free(v355);
    }

    if (v364 == 1 && v361[0])
    {
      free(v361[0]);
    }

    v333 = 0.0;
    v224 = v328;
    v15 = v329;
    LODWORD(v374) = -1;
    std::vector<int>::vector[abi:ne200100](__b, v328);
    std::vector<double>::vector[abi:ne200100](&v365, v224);
    vision::mod::CVMLMatrix<double,16ul>::initialize_(v361, v140, v15);
    vision::mod::CVMLMatrix<double,16ul>::initialize_(&v355, v140, v15);
    v353 = 0;
    *v351 = 0u;
    v352 = 0u;
    v354 = 1;
    vision::mod::CVMLMatrix<double,16ul>::reset(v351, v140, v224);
    LODWORD(v347) = 0;
    std::vector<int>::vector[abi:ne200100](v350, v140);
    v333 = 1.79769313e308;
    vision::mod::CVMLVector<double,16ul>::initialize_(&v347, v140);
    v225 = 0;
    v304 = *(&v362 + 1);
    v305 = v362;
    v226 = v333;
    v227 = 1.79769313e308;
    while (2)
    {
      if (v305 < v336 || v304 < v337)
      {
        v333 = v226;
        v284 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v284, "output matrix size too small");
        v284->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v284, off_1E77B0718, MEMORY[0x1E69E5280]);
      }

      if (v336)
      {
        for (mm = 0; mm < v336; ++mm)
        {
          v230 = vision::mod::CVMLMatrix<double,16ul>::ptr(v361, mm);
          v231 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, mm);
          memcpy(v230, v231, 8 * v337);
        }
      }

      v312 = v225;
      v346 = 0.0;
      vision::mod::Kmeans<double,16ul>::labelEstimation_(v327, v138, &v334, v340, v351, __b[0], v365, &v346);
      v232 = __b[0];
      v233 = v365;
      v234 = v350[0];
      v236 = v328;
      v235 = v329;
      bzero(v350[0], v302);
      v237 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, 0);
      bzero(v237, v307 * v338);
      if (v236)
      {
        for (nn = 0; nn != v236; ++nn)
        {
          ++v234[v232[nn]];
        }

        for (i1 = 0; i1 != v236; ++i1)
        {
          v240 = v232[i1];
          v15 = v234[v240];
          vision::mod::CVMLMatrix<double,16ul>::ptr(v327, i1);
          vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, v240);
          cblas_daxpy_NEWLAPACK();
        }
      }

      v371 = 0;
      __dst = 0;
      v372 = 0;
      LODWORD(__src) = 0;
      LODWORD(v138) = v310;
      if (v310 < 1)
      {
        v258 = v312;
        goto LABEL_344;
      }

      v241 = 1;
      v242 = v310;
      do
      {
        if (!*v234++)
        {
          std::vector<int>::push_back[abi:ne200100](&__dst, &__src);
        }

        LODWORD(__src) = v241++;
        --v242;
      }

      while (v242);
      v244 = __dst;
      v245 = v371 - __dst;
      if (v371 == __dst)
      {
        v258 = v312;
        if (__dst)
        {
          goto LABEL_343;
        }

        goto LABEL_344;
      }

      std::vector<unsigned long>::vector[abi:ne200100](&__src, v236);
      v246 = __src;
      v373 = v233;
      v247 = (__src + 8 * v236);
      v300 = v245;
      if (!v236)
      {
        v256 = 0;
        v374 = &v373;
LABEL_334:
        std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v246, v247, &v374, v236, 0, v256);
        goto LABEL_335;
      }

      v248 = 0;
      v249 = (8 * v236 - 8) >> 3;
      v250 = vdupq_n_s64(v249);
      v251 = (v249 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v252 = xmmword_1A6027760;
      v15 = MEMORY[0x1E69E5398];
      do
      {
        v253 = vmovn_s64(vcgeq_u64(v250, v252));
        if (v253.i8[0])
        {
          v246[v248] = v248;
        }

        if (v253.i8[4])
        {
          v246[v248 + 1] = v248 + 1;
        }

        v248 += 2;
        v252 = vaddq_s64(v252, v313);
      }

      while (v251 != v248);
      v374 = &v373;
      if (v236 < 129)
      {
        v256 = 0;
        goto LABEL_334;
      }

      v254 = v236;
      while (1)
      {
        v255 = operator new(8 * v254, v15);
        if (v255)
        {
          break;
        }

        v256 = v254 >> 1;
        v257 = v254 > 1;
        v254 >>= 1;
        if (!v257)
        {
          goto LABEL_334;
        }
      }

      v275 = v255;
      std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<double const*>(double const*,double const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v246, v247, &v374, v236, v255, v254);
      operator delete(v275);
LABEL_335:
      v259 = 0;
      v260 = 8 * v235;
      if ((v300 >> 2) <= 1)
      {
        v261 = 1;
      }

      else
      {
        v261 = v300 >> 2;
      }

      LODWORD(v138) = v310;
      do
      {
        v262 = *(__src + v259);
        v263 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, v244[v259]);
        v264 = vision::mod::CVMLMatrix<double,16ul>::ptr(v327, v262);
        memcpy(v263, v264, v260);
        ++v259;
      }

      while (v261 != v259);
      if (__src)
      {
        v369 = __src;
        operator delete(__src);
      }

      v258 = v312;
LABEL_343:
      operator delete(v244);
LABEL_344:
      v265 = v346;
      if (v346 >= v227)
      {
        v140 = v306;
      }

      else
      {
        v140 = v306;
        if (v357 < v336 || v358 < v337)
        {
          v333 = v226;
          v285 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v285, "output matrix size too small");
          v285->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v285, off_1E77B0718, MEMORY[0x1E69E5280]);
        }

        if (v336)
        {
          for (i2 = 0; i2 < v336; ++i2)
          {
            v267 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v355, i2);
            v268 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, i2);
            memcpy(v267, v268, 8 * v337);
          }
        }

        v226 = v265;
        v227 = v265;
      }

      vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, 0);
      vision::mod::CVMLMatrix<double,16ul>::ptr(v361, 0);
      cblas_daxpy_NEWLAPACK();
      vision::mod::CVMLMatrix<double,16ul>::rowNorms(v361, &v347, 0);
      if (v138)
      {
        v269 = v348;
        v270 = 0.0;
        v271 = v307;
        do
        {
          v272 = *v269++;
          v270 = v270 + v272;
          v271 -= 8;
        }

        while (v271);
      }

      else
      {
        v270 = 0.0;
      }

      v273 = sqrt(v270);
      v225 = v258 + 1;
      if (v273 > v167 && v225 != v303)
      {
        continue;
      }

      break;
    }

    v333 = v226;
    if (v273 > 0.0)
    {
      vision::mod::Kmeans<double,16ul>::labelEstimation_(v327, v138, &v355, v340, v351, __b[0], v365, &v333);
    }

    if (v349 == 1 && v347)
    {
      free(v347);
    }

    if (v350[0])
    {
      v350[1] = v350[0];
      operator delete(v350[0]);
    }

    if ((v354 & 1) != 0 && v351[0])
    {
      free(v351[0]);
    }

    if (v360 == 1 && v355)
    {
      free(v355);
    }

    if (v364 == 1 && v361[0])
    {
      free(v361[0]);
    }

    if (v365)
    {
      v366 = v365;
      operator delete(v365);
    }

    if (__b[0])
    {
      __b[1] = __b[0];
      operator delete(__b[0]);
    }

    v276 = v333;
    if (v333 < v175)
    {
      if (v323 < v336 || v324 < v337)
      {
        v288 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v288, "output matrix size too small");
        v288->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(v288, off_1E77B0718, MEMORY[0x1E69E5280]);
      }

      if (v336)
      {
        for (i3 = 0; i3 < v336; ++i3)
        {
          v15 = vision::mod::CVMLMatrix<double,16ul>::ptr(v322, i3);
          v278 = vision::mod::CVMLMatrix<double,16ul>::ptr(&v334, i3);
          memcpy(v15, v278, 8 * v337);
        }
      }

      v175 = v276;
    }

    v172 = v297 + 1;
    if (v297 + 1 != v295)
    {
      continue;
    }

    break;
  }

  vision::mod::broadcastAdd<double,16ul>(v327, v343, 0, v327);
  vision::mod::broadcastAdd<double,16ul>(v322, v343, 0, v322);
  if (v339 == 1 && v334)
  {
    free(v334);
  }

  if (v342 == 1 && v340[0])
  {
    free(v340[0]);
  }

  if (v345 == 1 && v343[0])
  {
    free(v343[0]);
  }

  v279 = v332;
  if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v292, v332))
  {
    syslog(5, "ERROR: duplicated labels detected when build sub-dictionary");
    v163 = 0;
    v162 = 7808;
    v15 = 7784;
  }

  else
  {
    *__p.__x_ = &v332;
    v280 = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v292, v279);
    *(v280 + 5) = v298;
    *(v280 + 6) = v138;
    v163 = 1;
    v162 = 7808;
  }

LABEL_404:
  if (v326 == 1 && v322[0])
  {
    free(v322[0]);
  }

LABEL_407:
  if (v331 == 1 && v327[0])
  {
    free(v327[0]);
  }

  if (v163)
  {
LABEL_411:
    v281 = v299[3];
    if (v299[4] != v281)
    {
      v282 = 0;
      do
      {
        v283 = v332;
        v355 = (v309[1] + 8 * *(v281 + 4 * v282));
        *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v308, *v355) + 6) = v283;
        ++v282;
        v281 = v299[3];
      }

      while (v282 < (v299[4] - v281) >> 2);
    }

    v15 = v162;
  }

LABEL_176:
  if (v15 != 128)
  {
    syslog(5, "ERROR: error happened in building subdictionary");
    goto LABEL_428;
  }

  v124 = v299[3];
  v123 = v299[4];
  v125 = *(v308 + 10);
  ++v296;
  v126 = (*(*v293 + 8))(v293);
  v127 = (v123 - v124) >> 2;
  if (v125 < v127)
  {
    LODWORD(v127) = v125;
  }

  v298 += v127;
  if (!v126)
  {
    v100 = v294;
    goto LABEL_181;
  }

  if (v296 != DWORD2(v318))
  {
    vision::mod::FaceIDModel::shrinkD_(v308, v298);
    v15 = 7779;
  }

LABEL_426:
  if (*(v308 + 13) != v298)
  {
    syslog(5, "ERROR: size mismatch in the end: bad memory access");
    goto LABEL_86;
  }

  vision::mod::FaceIDModel::createPrintsDictionary_(v308, v309, v320);
  vision::mod::FeatureSignSparseCoder<double,16ul>::initialize(v308 + 264, v308 + 11);
LABEL_428:
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v317);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(v320);
  return v15;
}