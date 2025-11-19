void vision::mod::ObjectDetectorAbstract::detectObjectsInImage_RGBA8888(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 6015;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void sub_1A5DDE68C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float vision::mod::ObjectDetector_DCNFaceDetector_v2::getSuggestedImageSize(vision::mod::ObjectDetector_DCNFaceDetector_v2 *this, _Geometry2D_size2D_ *a2)
{
  height = a2->height;
  width = a2->width;
  if (width >= a2->height)
  {
    v4 = a2->height;
  }

  else
  {
    v4 = a2->width;
  }

  if (height >= width)
  {
    v5 = a2->height;
  }

  else
  {
    v5 = a2->width;
  }

  if (v4 == 0.0 || v5 == 0.0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5998;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if ((v5 / v4) >= 1.3326)
  {
    v6 = 597.0 / v5;
  }

  else
  {
    v6 = 448.0 / v4;
  }

  return roundf(height * v6);
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2::getLabels(void *a1@<X8>)
{
  __p[3] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "face");
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1A5DDE808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v17;
  *(v16 + 8) = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void vision::mod::ObjectDetector_DCNFaceDetector_v2::~ObjectDetector_DCNFaceDetector_v2(vision::mod::ObjectDetector_DCNFaceDetector_v2 *this)
{
  vision::mod::ObjectDetector_DCNFaceDetector_v2::~ObjectDetector_DCNFaceDetector_v2(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1971EA8;
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

void ___ZN6vision3mod33ObjectDetector_DCNFaceDetector_v2C2ERKNS0_41ObjectDetector_DCNFaceDetector_v2_OptionsE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (v2 + 32);
  if (*(v2 + 55) < 0)
  {
    v3 = *v3;
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v7 = v5;
  v8 = *(a1 + 40);
  v9 = (v8 + 56);
  if (*(v8 + 79) < 0)
  {
    if (!*(v8 + 64))
    {
      goto LABEL_9;
    }

    v9 = *v9;
    goto LABEL_8;
  }

  if (*(v8 + 79))
  {
LABEL_8:
    v14 = v5;
    v10 = [v5 stringByAppendingFormat:@":%s", v9];

    v8 = *(a1 + 40);
    v7 = v10;
  }

LABEL_9:
  v15 = v7;
  LODWORD(v6) = *(v8 + 4);
  v11 = [VNShotflowDetectorANFDv1 processingDeviceDetectorWithModelPath:v7 networkThreshold:*(v8 + 20) preferredDeviceID:*(v8 + 24) engineID:*(v8 + 28) storageType:v6];
  v12 = *(v4 + 112);
  v13 = *(v12 + 96);
  *(v12 + 96) = v11;
}

void std::__shared_ptr_emplace<vision::mod::ObjectDetector_DCNFaceDetector_v2::priv>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
}

void std::__shared_ptr_emplace<vision::mod::ObjectDetector_DCNFaceDetector_v2::priv>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1971F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5DDF3CC(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DE01F8(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL39_writeVersion1PersonAndFaceObservationsPU44objcproto9NSCopying8NSObject14NSSecureCoding11objc_objectP7NSArrayIP17VNFaceObservationEP14NSOutputStreamP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v10 = [v9 length];
    [*(a1 + 32) appendBytes:&v10 length:4];
    [*(a1 + 32) appendData:v9];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1A5DE2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42, void *a43)
{
  _Block_object_dispose(&STACK[0x300], 8);

  _Unwind_Resume(a1);
}

void sub_1A5DE2808(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((*(*(v1 + 48) + 8) + 48));
  objc_exception_rethrow();
}

void sub_1A5DE2824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5DE45CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a60, 8);

  _Unwind_Resume(a1);
}

void sub_1A5DE4878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1A5DE4F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1A5DE6328(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&+[VNRequest publicRevisionsSet]::ourLock);
  objc_exception_rethrow();
}

uint64_t _getObjectFromOptionsDictionary(void *a1, void *a2, void *a3, int a4, objc_class *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = [v11 objectForKey:v12];
  v14 = v13;
  if (a1)
  {
    v15 = v13;
    *a1 = v14;
  }

  if (v14)
  {
    if (a5 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a6)
      {
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v17 = NSStringFromClass(a5);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v16 initWithFormat:@"The %@ option was expected to be a %@, but was instead a %@ (%@)", v12, v17, v19, v14];

        v21 = [VNError errorWithCode:5 message:v20];
LABEL_11:
        *a6 = v21;

        a6 = 0;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_12:
    a6 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The %@ required option was not found", v12];
    v21 = [VNError errorWithCode:7 message:v20];
    goto LABEL_11;
  }

LABEL_13:

  return a6;
}

{
  v11 = a2;
  v12 = a3;
  v13 = [v11 objectForKey:v12];
  v14 = v13;
  if (a1)
  {
    v15 = v13;
    *a1 = v14;
  }

  if (v14)
  {
    if (a5 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a6)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = NSStringFromClass(a5);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v16 stringWithFormat:@"The %@ option was expected to be a %@, but was instead a %@ (%@)", v12, v17, v19, v14];

        v21 = [VNError errorWithCode:5 message:v20];
LABEL_11:
        *a6 = v21;

        a6 = 0;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_12:
    a6 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The %@ required option was not found", v12];
    v21 = [VNError errorWithCode:7 message:v20];
    goto LABEL_11;
  }

LABEL_13:

  return a6;
}

id VNRequestPrivateRevisionsSet(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = &a9;
  do
  {
    if (a1 >= 0xDECAF000)
    {
      [v10 addIndex:a1];
    }

    v11 = v14++;
    a1 = *v11;
  }

  while (*v11);
  v12 = [v10 copy];

  return v12;
}

void sub_1A5DE94E8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DE9594(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DE95BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DE9708(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DE985C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 4);
  objc_exception_rethrow();
}

void sub_1A5DE9890(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5DEAFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1A5DEBF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v33 = *(v31 - 192);
  if (v33)
  {
    *(v31 - 184) = v33;
    operator delete(v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a12);

  _Unwind_Resume(a1);
}

void sub_1A5DECB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 120);
  if (v34)
  {
    *(v32 - 112) = v34;
    operator delete(v34);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorsForAugmentedImages(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a5;
  (*(*a1 + 64))(&v15, a1);
  v12 = vision::mod::ImageDescriptorAugmenterAbstract::augment(a4, *a2, a2[1], a3);
  if ((v12 & 0x80) != 0)
  {
    vision::mod::ImageDescriptorAugmenterAbstract::getAugmentedImages(__p, a4);
    v12 = (*(*a1 + 96))(a1, __p, a3, v11, v15);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v12 & 0x80) != 0)
    {
      v12 = (*(*a4 + 24))(a4, v15, a6);
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v12;
}

void sub_1A5DED0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorsForImages(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v9 = a4;
  if (a3)
  {
    if ((a3 & (a3 - 1)) != 0)
    {
      syslog(5, "ERROR: this function can handle only one image type");
      v11 = 3710;
      goto LABEL_12;
    }

    switch(a3)
    {
      case 4:
        v10 = (*a1 + 80);
        goto LABEL_11;
      case 2:
        v10 = (*a1 + 72);
        goto LABEL_11;
      case 1:
        v10 = (*a1 + 88);
LABEL_11:
        v11 = (*v10)(a1, a2, v9, a5);
        goto LABEL_12;
    }
  }

  v11 = 3708;
LABEL_12:

  return v11;
}

uint64_t vision::mod::ImageDescriptorProcessorAbstract::computeDescriptorForImage(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 3708;
  }

  if ((a3 & (a3 - 1)) != 0)
  {
    syslog(5, "ERROR: this function can handle only one image type", v3, v4);
    return 3710;
  }

  if (a3 == 4)
  {
    v5 = *(*a1 + 24);

    return v5();
  }

  if (a3 == 2)
  {
    v5 = *(*a1 + 16);

    return v5();
  }

  if (a3 != 1)
  {
    return 3708;
  }

  v5 = *(*a1 + 32);

  return v5();
}

BOOL prune(float *a1, uint64_t a2, float a3, float a4)
{
  if (*a2 != 1)
  {
    return 0;
  }

  v6 = *(a2 + 4);
  if (a3 != a4)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 12);
    v12 = __sincosf_stret(a3 * 0.017453);
    v13 = atan2f(v12.__sinval * v10, v12.__cosval) * 57.296;
    v14 = __sincosf_stret(a4 * 0.017453);
    v15 = atan2f(v14.__sinval * v10, v14.__cosval) * 57.296;
    v16 = (v13 + v15) * 0.5;
    if (vabds_f32(v13, v15) > 90.0)
    {
      v16 = fmodf(v16 + 90.0, 180.0);
    }

    v17 = v16 >= 22.5 && v16 < 67.5;
    v18 = 1.0 / v10;
    if (!v17)
    {
      if (v16 >= 67.5 && v16 < 112.5)
      {
        v36 = v18 * a1[1];
        v37 = v18 * a1[2];
        v38 = v18 * a1[9];
        v39 = v18 * a1[10];
        v27 = (v39 / v38) - (v37 / v36);
        v40 = (v39 + (a1[8] * (v11 - 1))) / v38;
        v41 = -(v37 - (*a1 * (v11 - 1))) / v36;
      }

      else
      {
        v20 = (v11 - 1);
        v21 = *a1;
        v22 = v18 * a1[1];
        v23 = v18 * a1[2];
        v24 = a1[8];
        v25 = v18 * a1[9];
        v26 = v18 * a1[10];
        if (v16 >= 112.5 && v16 < 157.5)
        {
          v27 = v23 - v26;
          v28 = v23 + ((v21 + v22) * v20);
          v29 = v26 + ((v24 + v25) * v20);
LABEL_21:
          v35 = v28 - v29;
          goto LABEL_25;
        }

        v27 = (v26 / v24) - (v23 / v21);
        v40 = (v26 + (v25 * v20)) / v24;
        v41 = (v23 + (v22 * v20)) / v21;
      }

      v35 = v40 - v41;
LABEL_25:
      v8 = fabsf(v27);
      v42 = fabsf(v35);
      if (v8 <= v42)
      {
        v8 = v42;
      }

      return v8 < v6;
    }

    v30 = (v11 - 1);
    v31 = v18 * a1[1];
    v32 = v18 * a1[2];
    v33 = v18 * a1[9];
    v34 = v18 * a1[10];
    v27 = (v32 + (v31 * v30)) - (v34 + (v33 * v30));
    v28 = v32 + (*a1 * v30);
    v29 = v34 + (a1[8] * v30);
    goto LABEL_21;
  }

  v7 = llroundf((a3 * 1440.0) / 180.0);
  if (v7 == 1440)
  {
    v7 = 0;
  }

  v8 = *(&cosScaleTab + v7) * vabds_f32(a1[2], a1[10]);
  return v8 < v6;
}

unint64_t singleton(unint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *result;
  v4 = *(result + 4);
  v18 = *(result + 8);
  v19 = result;
  v20 = v18;
  v21 = result;
  if (v3 < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (result + 16);
    v9 = (result + 20);
    v10 = 1;
    v11 = &leqBuffer;
    do
    {
      v12 = v9;
      v13 = v10;
      do
      {
        DWORD2(v18) = *v12;
        DWORD2(v19) = v13;
        DWORD2(v20) = v8[v6];
        DWORD2(v21) = v6;
        result = prune(&v18, a2, v4, v4);
        if ((result & 1) == 0)
        {
          v14 = v18;
          v15 = v19;
          v16 = v21;
          v11[2] = v20;
          v11[3] = v16;
          *v11 = v14;
          v11[1] = v15;
          v11 += 4;
          ++v7;
        }

        ++v13;
        ++v12;
      }

      while (v3 != v13);
      ++v6;
      ++v10;
      ++v9;
    }

    while (v6 != v3 - 1);
  }

  *a3 = v7;
  return result;
}

unsigned int *doubleton(unsigned int *result, unsigned int *a2, uint64_t a3, _DWORD *a4)
{
  v5 = *result;
  v6 = *a2;
  memset(&v19[8], 0, 56);
  *v19 = *(result + 1);
  *&v19[16] = result;
  *&v19[32] = *(a2 + 1);
  *&v19[48] = a2;
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = result + 4;
    v11 = a2 + 4;
    v12 = *(result + 1);
    v13 = *(a2 + 1);
    v14 = &leqBuffer;
    do
    {
      *&v19[8] = v10[v8];
      *&v19[24] = v8;
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          *&v19[40] = v11[i];
          *&v19[56] = i;
          result = prune(v19, a3, v12, v13);
          if ((result & 1) == 0)
          {
            v16 = *v19;
            v17 = *&v19[16];
            v18 = *&v19[48];
            v14[2] = *&v19[32];
            v14[3] = v18;
            *v14 = v16;
            v14[1] = v17;
            v14 += 4;
            ++v9;
          }
        }
      }

      ++v8;
    }

    while (v8 != v5);
  }

  *a4 = v9;
  return result;
}

float *leqIntersect(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[1];
  v5 = result[1];
  v6 = (*result * v4) - (*a2 * v5);
  if (fabsf(v6) < 0.00000001)
  {
    *a3 = -1.0;
    v8 = -1.0;
  }

  else
  {
    v7 = 1.0 / v6;
    *a3 = v7 * ((v5 * a2[2]) - (result[2] * v4));
    v8 = v7 * ((result[2] * *a2) - (*result * a2[2]));
  }

  *a4 = v8;
  return result;
}

void apple::vision::OpticalFlow::LKTCPU::AllocationException::~AllocationException(std::bad_alloc *this)
{
  std::bad_alloc::~bad_alloc(this);

  JUMPOUT(0x1AC556B00);
}

void *apple::vision::AlignedAllocator<unsigned char,32ul>::allocate(size_t size)
{
  result = malloc_type_aligned_alloc(0x20uLL, size, 0x100004077774924uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  return result;
}

int32x2_t apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::estimateFlow(int32x2_t *a1, __CVBuffer **a2, __CVBuffer **a3, int *a4)
{
  v7 = *a2;
  v11 = v7;
  if (v7)
  {
    CVPixelBufferRetain(v7);
  }

  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::createImagePyramid(a1, &v11, a1[115].i32[1], a4);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v11);
  bzero(*&a1[112], 8 * *&a1[2 * *a4 + 3] * *&a1[2 * *a4 + 4]);
  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::calculateFeaturesAndDerivatives(a1, a1[115].i32[1], *a4);
  v8 = *a3;
  v10 = v8;
  if (v8)
  {
    CVPixelBufferRetain(v8);
  }

  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::computeOpticalFlow(a1, &v10, a4);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v10);
  result = vrev64_s32(a1[115]);
  a1[115] = result;
  return result;
}

void apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::createImagePyramid(uint64_t a1, CVPixelBufferRef *a2, int a3, int *a4)
{
  v8 = a1 + 80 * a3;
  v9 = *(v8 + 224);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(v8 + 384);
  if (CVPixelBufferGetPixelFormatType(*a2) != 1111970369)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v37 = apple::vision::CVPixelBufferWrapper::pixelFormatType(*a2);
    v38 = apple::vision::OpticalFlow::LKTCPU::InvalidPixelFormatException::InvalidPixelFormatException(exception, v37);
  }

  v13 = *a2;
  pixelBuffer = v13;
  if (v13)
  {
    CVPixelBufferRetain(v13);
  }

  Width = CVPixelBufferGetWidth(v13);
  *(&context + 1) = CVPixelBufferGetHeight(v13);
  *&v43 = Width;
  *(&v43 + 1) = CVPixelBufferGetBytesPerRow(pixelBuffer);
  apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::BaseAddressLock(&texture[8], pixelBuffer);
  *&context = CVPixelBufferGetBaseAddress(pixelBuffer);
  *texture = pixelBuffer;
  pixelBuffer = 0;
  v40 = context;
  v41 = v43;
  apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(&texture[8]);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(texture);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&pixelBuffer);
  if (*(a4 + 8) == 1)
  {
    *texture = v40;
    *&texture[16] = v41;
    *&context = a1;
    *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::convertBGRA8888ToYUVF32;
    v43 = *(a1 + 40);
    v45 = v9;
    v46 = v11;
    v47 = v10;
    v48 = v10;
    v49 = v12;
    v50 = v11;
    v51 = v10;
    v52 = 2 * v10;
    v15 = *(a1 + 16);
    v16 = _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS1_13Pixel_BGRA_8UES8_EENS6_INS0_9NamedTypeIhNS1_15YImageParameterEEESC_EENS6_INSA_IDv2_hNS1_16UVImageParameterEEESG_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSO_ENUlPvmE_8__invokeESR_m;
  }

  else
  {
    *texture = v40;
    *&texture[16] = v41;
    *&context = a1;
    *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::convertBGRA8888ToYF32;
    v43 = *(a1 + 40);
    v45 = v9;
    v46 = v11;
    v47 = v10;
    v48 = v10;
    v15 = *(a1 + 16);
    v16 = apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::dispatchProcessing<apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>>(void (*)(apple::vision::OpticalFlow::ComputeParameters const&,apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&),int,apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&)::{lambda(void *,unsigned long)#1}::__invoke;
  }

  dispatch_apply_f(v15, 0, &context, v16);
  if (*a4 >= 2)
  {
    v17 = 0;
    v18 = a1 + 392;
    v19 = (a1 + 392 + 80 * a3);
    v20 = 1;
    do
    {
      v21 = (v18 + v17 - 352);
      v22 = *(v19 - 21);
      v23 = *(v19 - 20);
      v24 = (v18 + v17 - 336);
      v25 = *v24;
      v26 = (v18 + v17 - 328);
      v27 = *v26;
      *&context = a1;
      *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::downscale2x;
      *&v43 = v25;
      *(&v43 + 1) = v27;
      *texture = v22;
      v28 = *v21;
      *&texture[8] = vextq_s8(v28, v28, 8uLL);
      *&texture[24] = v28.i64[0];
      v45 = v23;
      v46 = v27;
      v47 = v25;
      v48 = v25;
      dispatch_apply_f(*(a1 + 16), 0, &context, apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::dispatchProcessing<apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>>(void (*)(apple::vision::OpticalFlow::ComputeParameters const&,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&),int,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&)::{lambda(void *,unsigned long)#1}::__invoke);
      if (*(a4 + 8) == 1)
      {
        v29 = *(v19 - 1);
        v30 = *v19;
        v31 = *v24;
        v32 = *v26;
        v33 = vextq_s8(*v21, *v21, 8uLL);
        v34 = v21->i64[0];
        v35 = 2 * *v24;
        *&context = a1;
        *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::downscale2x;
        *&v43 = v31;
        *(&v43 + 1) = v32;
        *texture = v29;
        *&texture[8] = v33;
        *&texture[24] = 2 * v34;
        v45 = v30;
        v46 = v32;
        v47 = v31;
        v48 = v35;
        dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_hNS1_16UVImageParameterEEESB_EENS6_ISA_SA_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSK_ENUlPvmE_8__invokeESN_m);
      }

      ++v20;
      ++v19;
      v17 += 16;
    }

    while (v20 < *a4);
  }
}

void apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::calculateFeaturesAndDerivatives(uint64_t a1, int a2, int a3)
{
  if (a3 >= 1)
  {
    v25 = v3;
    v26 = v4;
    v6 = a3;
    v7 = 8 * a3 + 80 * a2;
    do
    {
      v8 = *(a1 + v7 + 216);
      v9 = a1 + 16 * v6;
      v10 = *(a1 + v7 + 536);
      v11 = *(a1 + v7 + 696);
      context = a1;
      v17 = apple::vision::OpticalFlow::LKTCPUCompute::computeFeatures;
      v18 = *(v9 + 24);
      v21 = v18.i64[0];
      v12 = 8 * v18.i64[0];
      v13 = 16 * v18.i64[0];
      v19 = v8;
      v15 = vextq_s8(v18, v18, 8uLL);
      v20 = v15;
      v22 = v10;
      v23 = v15;
      v24 = 8 * v18.i64[0];
      dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIhNS1_15YImageParameterEEESA_EENS6_INS7_IDv2_fNS1_16FeatureParameterEEESE_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSM_ENUlPvmE_8__invokeESP_m);
      context = a1;
      v17 = apple::vision::OpticalFlow::LKTCPUCompute::computeDerivatives;
      v18 = *(v9 + 24);
      v19 = v10;
      v20 = v15;
      v21 = v12;
      v22 = v11;
      v23 = v15;
      v24 = v13;
      dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_16FeatureParameterEEESB_EENS6_INS7_IDv4_fNS1_19DerivativeParameterEEESF_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSN_ENUlPvmE_8__invokeESQ_m);
      v7 -= 8;
    }

    while (v6-- > 1);
  }
}

void apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::computeOpticalFlow(uint64_t a1, __CVBuffer **a2, unsigned int *a3)
{
  v4 = *a3;
  if (v4 < 1)
  {
    v86 = 0;
  }

  else
  {
    v5 = a3;
    v86 = 0;
    v73 = a1 + 40;
    v64 = a1 + 896;
    __asm { FMOV            V0.4S, #1.0 }

    v72 = _Q0;
    v61 = a1 + 704;
    v62 = a1 + 544;
    v58 = a1 + 384;
    v59 = a1 + 224;
    __asm { FMOV            V10.2S, #-1.0 }

    do
    {
      v12 = v4 - 1;
      v13 = *v5 - 1;
      if (v4 < v13)
      {
        v13 = v4;
      }

      v14 = (v73 + 16 * v12);
      v15 = v14->i64[0];
      v16 = v72;
      if (*v5 != v4)
      {
        *v17.f32 = vcvt_f32_f64(vcvtq_f64_u64(*v14));
        *v18.f32 = vcvt_f32_f64(vcvtq_f64_u64(*(v73 + 16 * v4)));
        *&v17.u32[2] = vadd_f32(*v18.f32, _D10);
        *&v18.u32[2] = vadd_f32(*v17.f32, _D10);
        v16 = vdivq_f32(v17, v18);
      }

      v60 = v4;
      v19 = v5[1];
      if (v19 >= 1)
      {
        v20 = 0;
        v70 = 16 * v15;
        v71 = *(a1 + 864);
        v21.i64[0] = v14->i64[1];
        v21.i64[1] = v14->i64[0];
        v87 = v21;
        v69 = *(a1 + 872);
        v67 = 4 * v15;
        v68 = *(a1 + 880);
        v65 = v12;
        v66 = *(a1 + 888);
        do
        {
          v22 = 0;
          v23 = v14->i64[0];
          v85 = v20 + 1;
          if (v20 + 1 == v19)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            if (v5[2])
            {
              v26 = *(a1 + 912);
              v22 = 4 * v23;
              v24 = v14->i64[0];
              v25 = v14->i64[1];
            }
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
          }

          v75 = v26;
          v76 = v25;
          v83 = v14->i64[1];
          v84 = v22;
          v77 = *(v64 + 8 * v86);
          v27 = *(v73 + 16 * v13);
          v86 ^= 1uLL;
          v81 = v24;
          v82 = *(v64 + 8 * v86);
          v28 = *(v62 + 80 * *(a1 + 920) + 8 * v12);
          v29 = *(v61 + 80 * *(a1 + 920) + 8 * v12);
          v30 = *(v62 + 80 * *(a1 + 924) + 8 * v12);
          v31 = *v14;
          v32 = *(v61 + 80 * *(a1 + 924) + 8 * v12);
          v80 = vextq_s8(v27, v27, 8uLL);
          v97 = v80;
          v78 = 8 * v27.i64[0];
          v98 = 8 * v27.i64[0];
          *v109 = v71;
          *&v109[8] = v87;
          v110 = v70;
          v111 = v68;
          v112 = v87;
          v113 = v67;
          v114 = v16;
          v96 = v77;
          v95 = v31;
          v79 = 8 * v23;
          v33 = v23;
          *&context = a1;
          *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::prepareMatrices;
          *v99 = v28;
          *&v99[8] = vextq_s8(v31, v31, 8uLL);
          *&v99[24] = 8 * v31.i64[0];
          v100 = v29;
          v101 = *&v99[8];
          v102 = 16 * v31.i64[0];
          v103 = v30;
          v104 = *&v99[8];
          v105 = 8 * v31.i64[0];
          v106 = v32;
          v107 = *&v99[8];
          v108 = 16 * v31.i64[0];
          v74 = v16;
          dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_IKNS7_IS8_NS1_16FeatureParameterEEESF_EENS6_IKNS7_IDv4_fNS1_19DerivativeParameterEEESK_EESG_SL_NS6_INS7_ISH_NS1_21MatrixAdiagBParameterEEESN_EENS6_INS7_IfNS1_18MatrixIxyParameterEEESQ_EENS1_16SolverParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSZ_ENUlPvmE_8__invokeES12_m);
          v101 = v87;
          v102 = v70;
          v103 = v66;
          v104 = v87;
          v105 = v67;
          *&v99[24] = v67;
          v100 = v69;
          *&context = a1;
          *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::solverBox7;
          v95 = *v14;
          v96 = v71;
          v97 = v87;
          v98 = v70;
          *v99 = v68;
          *&v99[8] = v87;
          dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv4_fNS1_21MatrixAdiagBParameterEEESB_EENS6_IKNS7_IfNS1_18MatrixIxyParameterEEESF_EENS6_ISA_SA_EENS6_ISE_SE_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSP_ENUlPvmE_8__invokeESS_m);
          v97 = v80;
          v98 = v78;
          *v99 = v69;
          *v109 = v74;
          v96 = v77;
          *&context = a1;
          *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::solverBoxXAndAxb;
          v95 = *v14;
          *&v99[8] = v87;
          *&v99[24] = v70;
          v100 = v66;
          v101 = v87;
          v102 = v67;
          v103 = v82;
          v104.i64[0] = v83;
          v104.i64[1] = v33;
          v12 = v65;
          v105 = v79;
          v106 = v75;
          v107.i64[0] = v76;
          v107.i64[1] = v81;
          v108 = v84;
          dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_IKNS7_IDv4_fNS1_21MatrixAdiagBParameterEEESG_EENS6_IKNS7_IfNS1_18MatrixIxyParameterEEESK_EENS6_ISA_SA_EENS6_INS7_IfNS1_14NLRegParameterEEESO_EENS1_16SolverParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSX_ENUlPvmE_8__invokeES10_m);
          v5 = a3;
          v19 = a3[1];
          v16 = v72;
          v13 = v65;
          v20 = v85;
        }

        while (v85 < v19);
      }

      if (v5[2])
      {
        v34 = *(v5 + 7);
        v35 = *(v59 + 80 * *(a1 + 920) + 8 * v12);
        v36 = *(v5 + 3);
        v37 = *(v58 + 80 * *(a1 + 920) + 8 * v12);
        v38 = *(v64 + 8 * v86);
        v86 ^= 1uLL;
        v39 = *(v64 + 8 * v86);
        v40 = *(a1 + 912);
        v41 = *v14;
        *v109 = vdiv_f32(0x3F0000003F000000, *(v5 + 5));
        *&v109[8] = 0.5 / v34;
        *&v109[12] = vrev64_s32(v36);
        *&context = a1;
        *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::nonLocalRegularization;
        v95 = v41;
        v98 = v41.i64[0];
        v96 = v35;
        v97 = vextq_s8(v41, v41, 8uLL);
        *v99 = v37;
        *&v99[8] = v97;
        *&v99[24] = 2 * v41.i64[0];
        v100 = v38;
        v101 = v97;
        v102 = 8 * v41.i64[0];
        v103 = v40;
        v104 = v97;
        v105 = 4 * v41.i64[0];
        v106 = v39;
        v107 = v97;
        v108 = 8 * v41.i64[0];
        dispatch_apply_f(*(a1 + 16), 0, &context, _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIhNS1_15YImageParameterEEESA_EENS6_IKNS7_IDv2_hNS1_16UVImageParameterEEESF_EENS6_IKNS7_IDv2_fNS1_13FlowParameterEEESK_EENS6_IKNS7_IfNS1_14NLRegParameterEEESO_EENS6_ISJ_SJ_EENS1_12NLParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSY_ENUlPvmE_8__invokeES11_m);
      }

      v4 = v12;
    }

    while (v60 > 1);
  }

  v42 = *(a1 + 8 * v86 + 896);
  v88 = *(a1 + 40);
  v43 = *a2;
  texture = v43;
  if (v43)
  {
    CVPixelBufferRetain(v43);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v43);
  v45 = 8 * v88.i64[0];
  v89 = vextq_s8(v88, v88, 8uLL);
  if (PixelFormatType == 843264102)
  {
    pixelBuffer = texture;
    if (texture)
    {
      CVPixelBufferRetain(texture);
    }

    Width = CVPixelBufferGetWidth(texture);
    Height = CVPixelBufferGetHeight(texture);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    *&context = 0;
    *(&context + 1) = Height;
    v95.i64[0] = Width;
    v95.i64[1] = BytesPerRow;
    v96 = 0;
    apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::BaseAddressLock(&v97, pixelBuffer);
    *&context = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (v96)
    {
      CVPixelBufferRelease(v96);
    }

    v96 = pixelBuffer;
    pixelBuffer = 0;
    v92 = context;
    v93 = v95;
    apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::~BaseAddressLock(&v97);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v96);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&pixelBuffer);
    *&context = a1;
    *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::copyFlowToOutput32F;
    v95 = *(a1 + 40);
    v96 = v42;
    v97 = v89;
    v98 = v45;
    *v99 = v92;
    *&v99[16] = v93;
    v49 = *(a1 + 16);
    v50 = _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_INS1_12Pixel_UV_32FESD_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSL_ENUlPvmE_8__invokeESO_m;
  }

  else
  {
    if (PixelFormatType != 843264104)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v55 = CVPixelBufferGetPixelFormatType(texture);
      v56 = apple::vision::OpticalFlow::LKTCPU::InvalidPixelFormatException::InvalidPixelFormatException(exception, v55);
    }

    pixelBuffer = texture;
    if (texture)
    {
      CVPixelBufferRetain(texture);
    }

    v46 = CVPixelBufferGetWidth(texture);
    v47 = CVPixelBufferGetHeight(texture);
    v48 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    *&context = 0;
    *(&context + 1) = v47;
    v95.i64[0] = v46;
    v95.i64[1] = v48;
    v96 = 0;
    apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::BaseAddressLock(&v97, pixelBuffer);
    *&context = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (v96)
    {
      CVPixelBufferRelease(v96);
    }

    v96 = pixelBuffer;
    pixelBuffer = 0;
    v92 = context;
    v93 = v95;
    apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::~BaseAddressLock(&v97);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v96);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&pixelBuffer);
    *&context = a1;
    *(&context + 1) = apple::vision::OpticalFlow::LKTCPUCompute::copyFlowToOutput16F;
    v95 = *(a1 + 40);
    v96 = v42;
    v97 = v89;
    v98 = v45;
    *v99 = v92;
    *&v99[16] = v93;
    v49 = *(a1 + 16);
    v50 = _ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_INS1_12Pixel_UV_16FESD_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSL_ENUlPvmE_8__invokeESO_m;
  }

  dispatch_apply_f(v49, 0, &context, v50);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&texture);
}

void sub_1A5DEF32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __CVBuffer *a47, __int16 a48, char a49, char a50)
{
  __cxa_free_exception(v50);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a47);
  _Unwind_Resume(a1);
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIhNS1_15YImageParameterEEESA_EENS6_IKNS7_IDv2_hNS1_16UVImageParameterEEESF_EENS6_IKNS7_IDv2_fNS1_13FlowParameterEEESK_EENS6_IKNS7_IfNS1_14NLRegParameterEEESO_EENS6_ISJ_SJ_EENS1_12NLParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSY_ENUlPvmE_8__invokeES11_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v14 = *(v2 + 3);
        v20[0] = *(v2 + 2);
        v20[1] = v14;
        v15 = *(v2 + 5);
        v21[0] = *(v2 + 4);
        v21[1] = v15;
        v16 = *(v2 + 7);
        v22[0] = *(v2 + 6);
        v22[1] = v16;
        v17 = *(v2 + 8);
        v23[1] = *(v2 + 9);
        v23[0] = v17;
        v18 = *(v2 + 10);
        v24[1] = *(v2 + 11);
        v19[0] = v13;
        v19[1] = v4;
        v19[2] = v5;
        v24[0] = v18;
        v26 = *(v2 + 52);
        v25 = *(v2 + 12);
        result = v3(v19, v20, v21, v22, v23, v24, &v25);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void apple::vision::OpticalFlow::LKTCPUCompute::nonLocalRegularization(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v7 = *a1;
  if ((*a1 & 1) == 0)
  {
    v8 = a1;
    if (a1[1] >= 1)
    {
      v9 = a3;
      v11 = 0;
      v12 = vzip1q_s32(*a7, vextq_s8(*a7, *a7, 4uLL));
      v109 = v12;
      v96 = v7;
      v94 = v7 | 1;
      v95 = v7 | 1;
      v104 = vdup_n_s32(0x437F0000u);
      v97 = *a1;
      do
      {
        v12.i64[0] = __PAIR64__(v7, v11);
        v119 = v12;
        v13 = apple::vision::OpticalFlow::LKTCPUCompute::gather<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>(a2, COERCE_DOUBLE(__PAIR64__(v7, v11)));
        v14 = _ZN5apple6vision11OpticalFlow13LKTCPUCompute6gatherIKNS0_9NamedTypeIDv2_hNS1_16UVImageParameterEEEEEDaRKNS0_11ImageBufferIT_SB_EEDv2_i(v9, *v119.i64);
        v24.i64[0] = *(a7 + 12);
        *v23.i8 = vdup_lane_s32(*v24.f32, 0);
        v17 = v24.i32[0];
        *v24.f32 = vdup_n_s32(v24.i32[1] * v24.i32[0]);
        v18 = v23.i32[1];
        v19 = v23.i32[0];
        v101 = v11;
        v23.i32[0] = v11 / v23.i32[0];
        v23.i32[1] = v7 / v23.i32[1];
        v20.i64[1] = v119.i64[1];
        v21 = vadd_s32(vmvn_s8(*v119.i8), vmovn_s64(*(v8 + 1)));
        v22.i32[0] = v21.i32[0] / v19;
        v22.i32[1] = v21.i32[1] / v18;
        v22.i64[1] = v119.i64[1];
        *v23.i8 = vsub_s32(*v119.i8, vmin_s32(*v23.i8, *v24.f32));
        *v24.f32 = vadd_s32(vmin_s32(*v22.i8, *v24.f32), *v119.i8);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0uLL;
        if ((vcgt_s32(*&v23, *&v24).i32[1] & 1) == 0)
        {
          v30 = 0;
          v16.f32[0] = v13;
          v31.f32[0] = v14;
          v31.f32[1] = BYTE1(v14);
          *&v16.i32[1] = vdiv_f32(v31, v104);
          v115 = v16;
          v16.f32[0] = BYTE1(v13);
          v31.f32[0] = BYTE2(v14);
          v31.f32[1] = BYTE3(v14);
          *&v16.i32[1] = vdiv_f32(v31, v104);
          v114 = v16;
          v16.f32[0] = BYTE2(v13);
          v31.f32[0] = BYTE4(v14);
          v31.f32[1] = BYTE5(v14);
          *&v16.i32[1] = vdiv_f32(v31, v104);
          v113 = v16;
          v16.f32[0] = HIBYTE(v13);
          v31.f32[0] = BYTE6(v14);
          v31.f32[1] = HIBYTE(v14);
          *&v16.i32[1] = vdiv_f32(v31, v104);
          v112 = v16;
          v107 = v24.i32[1];
          v22 = v23;
          v32 = v23.i32[0];
          v33 = v24.i32[0];
          v103 = v17 + v23.i32[0];
          v106 = v23.i32[0];
          v110 = v17;
          v111 = *(a7 + 12);
          do
          {
            v22.i32[0] = v30 + v32;
            v108 = v30;
            if (v30 + v32 <= v33)
            {
              v34 = v32 + v30;
              v35 = v103 + v30;
              do
              {
                v118 = v29;
                v120 = v22;
                v36 = apple::vision::OpticalFlow::LKTCPUCompute::gather<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>(a2, *v22.i64);
                v37 = BYTE1(v36);
                v38 = v36;
                v39 = BYTE2(v36);
                v40 = HIBYTE(v36);
                v41 = _ZN5apple6vision11OpticalFlow13LKTCPUCompute6gatherIKNS0_9NamedTypeIDv2_hNS1_16UVImageParameterEEEEEDaRKNS0_11ImageBufferIT_SB_EEDv2_i(a3, *v120.i64);
                if (a5[2] - 1 >= (v120.i32[0] + 1))
                {
                  v46 = v120.i32[0] + 1;
                }

                else
                {
                  v46 = a5[2] - 1;
                }

                v47.i64[1] = v120.i64[1];
                v48 = v120.i32[1] + 1;
                v49 = v120.i32[1] + 1;
                v50 = *a5;
                v51 = a5[1] - 1;
                if (v51 >= v49)
                {
                  v51 = v48;
                }

                v52 = a5[3] >> 2;
                v53 = v50 + 4 * v52 * v120.i32[1];
                v54 = v50 + 4 * v52 * v51;
                v55 = a4[3];
                v56 = a4[2] - 1;
                if (v56 >= v34 + 1)
                {
                  v56 = v34 + 1;
                }

                v57 = *a4;
                if (a4[1] - 1 < v48)
                {
                  v49 = a4[1] - 1;
                }

                v58 = v57 + 8 * (v55 >> 3) * v120.i32[1];
                v59 = *(v58 + 8 * v34);
                v117 = *(v58 + 8 * v56);
                v47.i32[1] = v117.i32[1];
                v60 = v57 + 8 * (v55 >> 3) * v49;
                v61 = *(v60 + 8 * v34);
                v62 = *(v60 + 8 * v56);
                *v47.i32 = v38;
                *v42.i32 = v41;
                *&v42.i32[1] = BYTE1(v41);
                *v42.i8 = vdiv_f32(*v42.i8, v104);
                *v43.i32 = v37;
                *v44.i32 = BYTE2(v41);
                v63 = vextq_s8(vextq_s8(v47, v47, 4uLL), v42, 0xCuLL);
                *&v44.i32[1] = BYTE3(v41);
                *v42.i8 = vdiv_f32(*v44.i8, v104);
                *v44.i32 = v39;
                *v45.i32 = BYTE4(v41);
                v64 = vextq_s8(v43, v43, 4uLL);
                *&v45.i32[1] = BYTE5(v41);
                v65 = vextq_s8(v64, v42, 0xCuLL);
                *v64.i8 = vdiv_f32(*v45.i8, v104);
                v66 = vextq_s8(v44, v44, 4uLL);
                v67 = vextq_s8(v66, v64, 0xCuLL);
                *v66.i32 = v40;
                *v45.i32 = BYTE6(v41);
                *&v45.i32[1] = HIBYTE(v41);
                *v45.i8 = vdiv_f32(*v45.i8, v104);
                v68 = vsubq_f32(v115, v63);
                v68.i32[3] = *(v53 + 4 * v120.i32[0]);
                v69 = vsubq_f32(v114, v65);
                v69.i32[3] = *(v53 + 4 * v46);
                v70 = vsubq_f32(v113, v67);
                v70.i32[3] = *(v54 + 4 * v120.i32[0]);
                v71 = vsubq_f32(v112, vextq_s8(vextq_s8(v66, v66, 4uLL), v45, 0xCuLL));
                v71.i32[3] = *(v54 + 4 * v46);
                v72 = vmulq_f32(v109, v68);
                v73 = vmulq_f32(v72, v72);
                *v73.f32 = vadd_f32(*v73.f32, *&vextq_s8(v73, v73, 8uLL));
                v74 = vmulq_f32(v109, v69);
                v75 = vmulq_f32(v74, v74);
                *v75.i8 = vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
                v76 = vmulq_f32(v109, v70);
                v77 = vmulq_f32(v76, v76);
                *v77.i8 = vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
                v78 = vmulq_f32(v109, v71);
                v79 = vmulq_f32(v78, v78);
                *v80.f32 = vzip1_s32(*v73.f32, *v75.i8);
                v80.i32[2] = v77.i32[0];
                *v79.i8 = vadd_f32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
                v80.i32[3] = v79.i32[0];
                *v73.f32 = vzip2_s32(*v73.f32, *v75.i8);
                v73.i64[1] = __PAIR64__(v79.u32[1], vdup_lane_s32(*v77.i8, 1).u32[0]);
                v24 = _simd_exp_f4(vnegq_f32(vaddq_f32(v80, v73)));
                v17 = v111;
                v22 = v120;
                v29 = vaddq_f32(v118, v24);
                v28 = vmla_n_f32(v28, v59, v24.f32[0]);
                v27 = vmla_lane_f32(v27, v117, *v24.f32, 1);
                v26 = vmla_laneq_f32(v26, v61, v24, 2);
                v25 = vmla_laneq_f32(v25, v62, v24, 3);
                v34 += v110;
                v22.i32[0] = v35;
                v35 += v111;
              }

              while (v34 <= v33);
            }

            v30 = v17 + ~v108;
            v22.i32[1] += v17;
            v32 = v106;
          }

          while (v22.i32[1] <= v107);
        }

        if (a4[2] - 1 >= (v101 | 1uLL))
        {
          v81 = v101 + 1;
        }

        else
        {
          v81 = a4[2] - 1;
        }

        v82 = *a4;
        v83 = a4[1] - 1;
        if (v83 >= v95)
        {
          v83 = v95;
        }

        v84 = a4[3] >> 3;
        v85 = v82 + 8 * v84 * v96;
        v22.i64[0] = *(v85 + 8 * v81);
        v86 = v82 + 8 * v84 * v83;
        v24.i64[0] = *(v86 + 8 * v81);
        *v20.i8 = vdup_lane_s32(*v29.i8, 0);
        if (*v29.i32 <= 0.00097656)
        {
          v87 = 0;
        }

        else
        {
          v87 = -1;
        }

        *v20.i8 = vdiv_f32(v28, *v20.i8);
        v88 = vcltzq_s32(vdupq_n_s32(v87).u64[0]);
        v23.i64[0] = *(v85 + 8 * v101);
        v23.i64[0] = vbslq_s8(v88, v20, v23).u64[0];
        *v88.i8 = vdup_lane_s32(*v29.i8, 1);
        if (*&v29.i32[1] <= 0.00097656)
        {
          v89 = 0;
        }

        else
        {
          v89 = -1;
        }

        *v88.i8 = vdiv_f32(v27, *v88.i8);
        v90 = vbslq_s8(vcltzq_s32(vdupq_n_s32(v89).u64[0]), v88, v22).u64[0];
        *v88.i8 = vdup_laneq_s32(v29, 2);
        if (*&v29.i32[2] <= 0.00097656)
        {
          v91 = 0;
        }

        else
        {
          v91 = -1;
        }

        *v88.i8 = vdiv_f32(v26, *v88.i8);
        v15.i64[0] = *(v86 + 8 * v101);
        v15.i64[0] = vbslq_s8(vcltzq_s32(vdupq_n_s32(v91).u64[0]), v88, v15).u64[0];
        *v88.i8 = vdup_laneq_s32(v29, 3);
        if (*&v29.i32[3] <= 0.00097656)
        {
          v92 = 0;
        }

        else
        {
          v92 = -1;
        }

        *v88.i8 = vdiv_f32(v25, *v88.i8);
        LODWORD(v7) = v97;
        *(*a6 + 8 * (a6[3] >> 3) * v97 + 8 * v101) = v23.i64[0];
        v93 = (8 * v101) | 8;
        *(*a6 + 8 * (a6[3] >> 3) * v97 + v93) = v90;
        v12 = vbslq_s8(vcltzq_s32(vdupq_n_s32(v92).u64[0]), v88, v24);
        *(*a6 + 8 * (a6[3] >> 3) * v94 + 8 * v101) = v15.i64[0];
        *(*a6 + 8 * (a6[3] >> 3) * v94 + v93) = v12.i64[0];
        v11 = v101 + 2;
        v8 = a1;
        v9 = a3;
      }

      while (v101 + 2 < a1[1]);
    }
  }
}

uint64_t apple::vision::OpticalFlow::LKTCPUCompute::gather<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>(void *a1, double a2)
{
  LODWORD(v2) = LODWORD(a2) + 1;
  if (a1[2] - 1 >= (LODWORD(a2) + 1))
  {
    v2 = v2;
  }

  else
  {
    v2 = a1[2] - 1;
  }

  v4 = HIDWORD(a2) + 1;
  if (a1[1] - 1 < v4)
  {
    v4 = a1[1] - 1;
  }

  v3 = a1[3];
  return *(*a1 + v3 * SHIDWORD(a2) + SLODWORD(a2)) | (*(*a1 + v3 * SHIDWORD(a2) + v2) << 8) | (*(*a1 + v4 * v3 + SLODWORD(a2)) << 16) | (*(*a1 + v4 * v3 + v2) << 24);
}

unint64_t _ZN5apple6vision11OpticalFlow13LKTCPUCompute6gatherIKNS0_9NamedTypeIDv2_hNS1_16UVImageParameterEEEEEDaRKNS0_11ImageBufferIT_SB_EEDv2_i(uint64_t *a1, double a2)
{
  v2 = a1[3];
  v3 = LODWORD(a2) + 1;
  if (a1[2] - 1 < v3)
  {
    v3 = a1[2] - 1;
  }

  v4 = *a1;
  v5 = HIDWORD(a2) + 1;
  if (a1[1] - 1 < v5)
  {
    v5 = a1[1] - 1;
  }

  v6 = v4 + 2 * (v2 >> 1) * SHIDWORD(a2);
  return *(v6 + 2 * SLODWORD(a2)) | (*(v6 + 2 * v3) << 16) | (*(v4 + 2 * (v2 >> 1) * v5 + 2 * SLODWORD(a2)) << 32) | (*(v4 + 2 * (v2 >> 1) * v5 + 2 * v3) << 48);
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_IKNS7_IDv4_fNS1_21MatrixAdiagBParameterEEESG_EENS6_IKNS7_IfNS1_18MatrixIxyParameterEEESK_EENS6_ISA_SA_EENS6_INS7_IfNS1_14NLRegParameterEEESO_EENS1_16SolverParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSX_ENUlPvmE_8__invokeES10_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v14 = v2[3];
        v20[0] = v2[2];
        v20[1] = v14;
        v15 = v2[5];
        v21[0] = v2[4];
        v21[1] = v15;
        v16 = v2[7];
        v22[0] = v2[6];
        v22[1] = v16;
        v17 = v2[8];
        v23[1] = v2[9];
        v23[0] = v17;
        v18 = v2[10];
        v24[1] = v2[11];
        v19[0] = v13;
        v19[1] = v4;
        v19[2] = v5;
        v24[0] = v18;
        v25 = v2[12];
        result = v3(v19, v20, v21, v22, v23, v24, &v25);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void apple::vision::OpticalFlow::LKTCPUCompute::solverBoxXAndAxb(uint64_t *a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t *a6, float32x2_t *a7)
{
  v7 = a1[1];
  if (v7 >= 1)
  {
    v14 = 0;
    v15 = *a1;
    v44 = *a1;
    __asm { FMOV            V0.4S, #7.0 }

    v43 = _Q0;
    v22 = *a7;
    v21 = a7[1];
    v41 = 16 * *a1;
    v42 = 4 * *a1;
    __asm
    {
      FMOV            V12.2S, #-1.0
      FMOV            V13.2S, #1.0
    }

    do
    {
      if (v14 <= 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = v14;
      }

      v26.f32[0] = v14;
      v26.f32[1] = v44;
      v28 = _ZN5apple6vision11OpticalFlow13LKTCPUCompute8sampleLNINS0_9NamedTypeIDv2_fNS1_13FlowParameterEEEEET_RKNS0_11ImageBufferIKS8_SA_EES5_(a2, COERCE_DOUBLE(vmul_f32(v21, v26)));
      v29 = v14 + 3;
      if (v7 - 1 < v14 + 3)
      {
        v29 = v7 - 1;
      }

      v30 = 0uLL;
      v31 = 0.0;
      if (v25 - 3 <= v29)
      {
        do
        {
          v30 = vaddq_f32(v30, *(*a3 + v41 * (a3[3] >> 4) - 48 + 16 * v25));
          v31 = v31 + *(*a4 + v42 * (a4[3] >> 2) - 12 + 4 * v25);
          v32 = v25 - 3;
          ++v25;
        }

        while (v32 < v29);
      }

      _Q4 = vdivq_f32(v30, v43);
      _S15 = v31 / 7.0;
      _S9 = _Q4.i32[1];
      *v27.i32 = (_Q4.f32[0] * _Q4.f32[1]) - (_S15 * _S15);
      v36 = *a6;
      if (*a6)
      {
        v45 = _Q4.i32[2];
        v46 = v27;
        v37 = expf(((sqrtf(fmaxf((*v27.i32 * -4.0) + ((_Q4.f32[0] + _Q4.f32[1]) * (_Q4.f32[0] + _Q4.f32[1])), 0.0)) * -0.5) + ((_Q4.f32[0] + _Q4.f32[1]) * 0.5)) * -0.5);
        _Q4.i32[2] = v45;
        v27 = v46;
        *(v36 + 4 * (a6[3] >> 2) * v15 + 4 * v14) = v37;
      }

      v38 = vmul_f32(v22, v28);
      __asm
      {
        FMLA            S1, S9, V4.S[2]
        FMLS            S2, S15, V4.S[2]
      }

      _D1.i32[1] = _S2;
      *(*a5 + 8 * (a5[3] >> 3) * v15 + 8 * v14++) = vadd_f32(v38, vminnm_f32(vmaxnm_f32(vsub_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*v27.i32 > 0.0), 0x1FuLL)), vdiv_f32(_D1, vdup_lane_s32(v27, 0)), v38), v38), _D12), _D13));
      v7 = a1[1];
    }

    while (v14 < v7);
  }
}

float32x2_t _ZN5apple6vision11OpticalFlow13LKTCPUCompute8sampleLNINS0_9NamedTypeIDv2_fNS1_13FlowParameterEEEEET_RKNS0_11ImageBufferIKS8_SA_EES5_(uint64_t *a1, double a2)
{
  v2 = a1[2];
  v3 = v2 + -1.0;
  if (v3 >= *&a2)
  {
    v3 = *&a2;
  }

  if (*&a2 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = a1[1];
  v6 = v4 + -1.0;
  if (v6 >= *(&a2 + 1))
  {
    v6 = *(&a2 + 1);
  }

  if (*(&a2 + 1) >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = v3;
  v9 = v7;
  v10 = v2 - 1;
  if (v10 >= v3 + 1)
  {
    v10 = v8 + 1;
  }

  v11 = v4 - 1;
  if (v11 >= v9 + 1)
  {
    v11 = v9 + 1;
  }

  v12 = v3 - v8;
  v13 = a1[3] >> 3;
  v5 = *a1;
  return vmla_n_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(*(v5 + 8 * v11 * v13 + 8 * v10), v12), *(v5 + 8 * v11 * v13 + 8 * v8), 1.0 - v12), v7 - v9), vmla_n_f32(vmul_n_f32(*(v5 + 8 * v13 * v9 + 8 * v10), v12), *(v5 + 8 * v13 * v9 + 8 * v8), 1.0 - v12), 1.0 - (v7 - v9));
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv4_fNS1_21MatrixAdiagBParameterEEESB_EENS6_IKNS7_IfNS1_18MatrixIxyParameterEEESF_EENS6_ISA_SA_EENS6_ISE_SE_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSP_ENUlPvmE_8__invokeESS_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v14 = v2[3];
        v19[0] = v2[2];
        v19[1] = v14;
        v15 = v2[5];
        v20[0] = v2[4];
        v20[1] = v15;
        v16 = v2[7];
        v21[0] = v2[6];
        v21[1] = v16;
        v17 = v2[8];
        v22[1] = v2[9];
        v18[0] = v13;
        v18[1] = v4;
        v18[2] = v5;
        v22[0] = v17;
        result = v3(v18, v19, v20, v21, v22);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::solverBox7(uint64_t *result, void *a2, void *a3, void *a4, void *a5)
{
  if (result[1] >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *result;
    if (*result <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = *result;
    }

    v10 = v9 - 3;
    v11 = v9 - 4;
    __asm { FMOV            V0.4S, #7.0 }

    do
    {
      v17 = result[2] - 1;
      if (v17 >= v8 + 3)
      {
        v17 = v8 + 3;
      }

      if (v10 <= v17)
      {
        v20 = a2[3] >> 4;
        v21 = a3[3] >> 2;
        v22 = (*a3 + v6 + 4 * v10 * v21);
        v23 = 4 * v21;
        v24 = (*a2 + v5 + 16 * v10 * v20);
        v25 = 16 * v20;
        v19 = 0.0;
        v18 = 0uLL;
        v26 = v11;
        do
        {
          v18 = vaddq_f32(v18, *v24);
          v19 = v19 + *v22;
          ++v26;
          v22 = (v22 + v23);
          v24 = (v24 + v25);
        }

        while (v26 < v17);
      }

      else
      {
        v18 = 0uLL;
        v19 = 0.0;
      }

      *(*a4 + 16 * (a4[3] >> 4) * v8 + 16 * v7) = vdivq_f32(v18, _Q0);
      *(*a5 + 4 * (a5[3] >> 2) * v8 + 4 * v7++) = v19 / 7.0;
      v6 += 4;
      v5 += 16;
    }

    while (v7 < result[1]);
  }

  return result;
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_IKNS7_IS8_NS1_16FeatureParameterEEESF_EENS6_IKNS7_IDv4_fNS1_19DerivativeParameterEEESK_EESG_SL_NS6_INS7_ISH_NS1_21MatrixAdiagBParameterEEESN_EENS6_INS7_IfNS1_18MatrixIxyParameterEEESQ_EENS1_16SolverParametersEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSZ_ENUlPvmE_8__invokeES12_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v14 = v2[3];
        v22[0] = v2[2];
        v22[1] = v14;
        v15 = v2[5];
        v23[0] = v2[4];
        v23[1] = v15;
        v16 = v2[7];
        v24[0] = v2[6];
        v24[1] = v16;
        v17 = v2[8];
        v25[1] = v2[9];
        v25[0] = v17;
        v18 = v2[10];
        v26[1] = v2[11];
        v26[0] = v18;
        v19 = v2[12];
        v27[1] = v2[13];
        v27[0] = v19;
        v20 = v2[14];
        v28[1] = v2[15];
        v21[0] = v13;
        v21[1] = v4;
        v21[2] = v5;
        v28[0] = v20;
        v29 = v2[16];
        result = v3(v21, v22, v23, v24, v25, v26, v27, v28, &v29);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void apple::vision::OpticalFlow::LKTCPUCompute::prepareMatrices(uint64_t *a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, float32x2_t *a9)
{
  if (a1[1] >= 1)
  {
    v17 = 0;
    v76 = *a9;
    v77 = a9[1];
    v74 = vdup_n_s32(0x3D23D70Bu);
    v75 = vdup_n_s32(0x3A800000u);
    v18 = vdup_n_s32(0x3E4CCCCDu);
    v19 = *a1;
    v73 = *a1;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v24.f32[0] = v17;
      v24.f32[1] = v73;
      v81 = v24;
      v25 = _ZN5apple6vision11OpticalFlow13LKTCPUCompute8sampleLNINS0_9NamedTypeIDv2_fNS1_13FlowParameterEEEEET_RKNS0_11ImageBufferIKS8_SA_EES5_(a2, COERCE_DOUBLE(vmul_f32(v77, v24)));
      v26 = *(*a3 + 8 * (a3[3] >> 3) * v19 + 8 * v17);
      v27 = vmul_f32(v76, v25);
      v28 = a5[2];
      v29 = vadd_f32(v81, v27);
      v30 = v28 + -1.0;
      if (v30 >= v29.f32[0])
      {
        v30 = v29.f32[0];
      }

      v31 = *a5;
      v32 = a5[1];
      v33 = v32 + -1.0;
      if (v33 >= v29.f32[1])
      {
        v33 = v29.f32[1];
      }

      v34 = v28 - 1;
      v35 = a6[2];
      v36 = v35 + -1.0;
      if (v36 >= v29.f32[0])
      {
        v36 = v29.f32[0];
      }

      v38 = a6[1];
      v39 = v38 + -1.0;
      if (v39 >= v29.f32[1])
      {
        v39 = v29.f32[1];
      }

      if (v29.f32[1] >= 0.0)
      {
        v40 = v33;
      }

      else
      {
        v40 = 0.0;
      }

      if (v29.f32[1] >= 0.0)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0.0;
      }

      _NF = v29.f32[0] < 0.0;
      if (v29.f32[0] >= 0.0)
      {
        v43 = v30;
      }

      else
      {
        v43 = 0.0;
      }

      v44 = v43;
      v45 = v40;
      if (_NF)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = v36;
      }

      if (v34 >= v43 + 1)
      {
        v34 = v44 + 1;
      }

      v47 = v32 - 1;
      if (v47 >= v45 + 1)
      {
        v47 = v45 + 1;
      }

      v48 = a5[3] >> 3;
      v49 = v43 - v44;
      v50 = v40 - v45;
      v51 = vmla_n_f32(vmul_n_f32(*(v31 + 8 * v48 * v45 + 8 * v34), v49), *(v31 + 8 * v48 * v45 + 8 * v44), 1.0 - v49);
      v52 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*(v31 + 8 * v47 * v48 + 8 * v34), v49), *(v31 + 8 * v47 * v48 + 8 * v44), 1.0 - v49), v50);
      v53 = v46;
      v54 = vmla_n_f32(v52, v51, 1.0 - v50);
      v55 = v41;
      v56 = v35 - 1;
      if (v56 >= v46 + 1)
      {
        v56 = v53 + 1;
      }

      if ((v38 - 1) >= v55 + 1)
      {
        v57 = v55 + 1;
      }

      else
      {
        v57 = v38 - 1;
      }

      v58 = v46 - v53;
      v59 = a6[3] >> 4;
      v37 = *a6;
      v60 = vaddq_f32(*(*a4 + 16 * (a4[3] >> 4) * v19 + 16 * v17), vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v37 + 16 * v57 * v59 + 16 * v56), v58), *(v37 + 16 * v57 * v59 + 16 * v53), 1.0 - v58), v41 - v55), vmlaq_n_f32(vmulq_n_f32(*(v37 + 16 * v59 * v55 + 16 * v56), v58), *(v37 + 16 * v59 * v55 + 16 * v53), 1.0 - v58), 1.0 - (v41 - v55)));
      v61.i64[0] = 0x3F0000003F000000;
      v61.i64[1] = 0x3F0000003F000000;
      v62 = vsub_f32(v54, v26);
      v78 = vmulq_f32(v60, v61);
      v79 = vextq_s8(v78, v78, 8uLL).u64[0];
      v80 = vsub_f32(v62, vmla_n_f32(vmul_lane_f32(v79, v27, 1), *v78.f32, v27.f32[0]));
      v82 = vmulq_f32(v78, v78);
      v63 = vextq_s8(v82, v82, 8uLL);
      *v63.f32 = vmla_f32(*v63.f32, *v78.f32, *v78.f32);
      *v64.f32 = vadd_f32(vmla_f32(*&_simd_pow_f4(v63, xmmword_1A6038BB0), 0x4100000041000000, vabd_f32(v54, v26)), v75);
      v65 = vdiv_f32(vmul_f32(*v78.f32, v79), *v64.f32);
      *v66.f32 = v80;
      *&v66.u32[2] = v80;
      v64.i64[1] = v64.i64[0];
      v67 = vdiv_f32(vdiv_f32(_D8, vsqrt_f32(vadd_f32(vdiv_f32(vmul_f32(v62, v62), v74), _D8))), v18);
      v68 = vdivq_f32(v82, v64);
      v69 = vdivq_f32(vmulq_f32(v78, v66), v64);
      *v66.f32 = vadd_f32(v67, vdup_lane_s32(v67, 1));
      *v70.f32 = vdup_lane_s32(*v66.f32, 0);
      v71 = vextq_s8(v68, v68, 8uLL).u64[0];
      v67.f32[0] = -vaddv_f32(v67);
      *v68.f32 = vadd_f32(vzip1_s32(*v68.f32, v71), vzip2_s32(*v68.f32, v71));
      v72 = vextq_s8(v69, v69, 8uLL).u64[0];
      *&v70.u32[2] = vadd_f32(vzip1_s32(*v69.i8, v72), vzip2_s32(*v69.i8, v72));
      *&v68.u32[2] = vdup_lane_s32(v67, 0);
      *(*a7 + 16 * (a7[3] >> 4) * v19 + 16 * v17) = vmulq_f32(v68, v70);
      *(*a8 + 4 * (a8[3] >> 2) * v19 + 4 * v17++) = vmul_f32(vadd_f32(v65, vdup_lane_s32(v65, 1)), *v66.f32).u32[0];
    }

    while (v17 < a1[1]);
  }
}

CVPixelBufferRef *apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::~BaseAddressLock(CVPixelBufferRef *a1)
{
  CVPixelBufferUnlockBaseAddress(*a1, 0);
  CVPixelBufferRelease(*a1);
  return a1;
}

std::logic_error *apple::vision::OpticalFlow::LKTCPU::InvalidPixelFormatException::InvalidPixelFormatException(std::logic_error *this, int a2)
{
  result = std::logic_error::logic_error(this, "pixelFormatType");
  result->__vftable = &unk_1F1972158;
  LODWORD(result[1].__vftable) = a2;
  return result;
}

void apple::vision::OpticalFlow::LKTCPU::InvalidPixelFormatException::~InvalidPixelFormatException(apple::vision::OpticalFlow::LKTCPU::InvalidPixelFormatException *this)
{
  MEMORY[0x1AC556780](this);

  JUMPOUT(0x1AC556B00);
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_INS1_12Pixel_UV_32FESD_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSL_ENUlPvmE_8__invokeESO_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void *apple::vision::OpticalFlow::LKTCPUCompute::copyFlowToOutput32F(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = a3[3];
  v5 = (*a3 + 8 * (v4 >> 3) * *a1);
  v6 = a2[3];
  v7 = (*a2 + 8 * (v6 >> 3) * v3);
  if (v6 >= v4)
  {
    v8 = a3[3];
  }

  else
  {
    v8 = v6;
  }

  return memcpy(v5, v7, v8);
}

void *apple::vision::CVPixelBufferWrapper::BaseAddressLock<0ull>::BaseAddressLock(void *a1, CVPixelBufferRef texture)
{
  *a1 = texture;
  CVPixelBufferRetain(texture);
  v4 = CVPixelBufferLockBaseAddress(texture, 0);
  if (v4)
  {
    v6 = v4;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F1974548;
    exception[2] = v6;
  }

  return a1;
}

void apple::vision::CVPixelBufferWrapper::LockException::~LockException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1AC556B00);
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_13FlowParameterEEESB_EENS6_INS1_12Pixel_UV_16FESD_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSL_ENUlPvmE_8__invokeESO_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

vImage_Error apple::vision::OpticalFlow::LKTCPUCompute::copyFlowToOutput16F(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = a2[2];
  v5 = a2[3];
  if (v4 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2[2];
  }

  v7 = v6 - 1;
  v8 = a2[1] - 1;
  if (v8 >= v3)
  {
    v8 = *a1;
  }

  v9 = (v5 >> 3) * v8;
  if (v4 - v7 < v4)
  {
    v4 -= v7;
  }

  src.data = (*a2 + 8 * v7 + 8 * v9);
  src.height = 1;
  src.width = 2 * (v4 & 0x1FFFFFFFFFFFFFFFLL);
  src.rowBytes = v5;
  v10 = a3[2];
  v11 = a3[3];
  if (v10 >= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3[2];
  }

  v13 = v12 - 1;
  if (a3[1] - 1 < v3)
  {
    v3 = a3[1] - 1;
  }

  v14 = (v11 >> 2) * v3;
  if (v10 - v13 < v10)
  {
    v10 -= v13;
  }

  v16.data = (*a3 + 4 * v13 + 4 * v14);
  v16.height = 1;
  v16.width = 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
  v16.rowBytes = v11;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v16, 0x10u);
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_fNS1_16FeatureParameterEEESB_EENS6_INS7_IDv4_fNS1_19DerivativeParameterEEESF_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSN_ENUlPvmE_8__invokeESQ_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::computeDerivatives(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result[1] >= 1)
  {
    v3 = 0;
    v4 = *result;
    v5 = *result - 2;
    v6 = *result - 1;
    v7 = *result + 1;
    v8 = *result + 2;
    v9.i64[0] = 0x4100000041000000;
    v9.i64[1] = 0x4100000041000000;
    __asm { FMOV            V1.4S, #12.0 }

    do
    {
      v15 = v3 - 2;
      v16 = a2[2] - 1;
      if (v16 < (v3 - 2))
      {
        v15 = a2[2] - 1;
      }

      if (v3 >= 2)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = *a2;
      v19 = a2[1];
      v20 = v19 - 1;
      if (v19 - 1 >= v4)
      {
        v21 = v4;
      }

      else
      {
        v21 = v19 - 1;
      }

      v22 = v3 - 1;
      if (v16 < (v3 - 1))
      {
        v22 = a2[2] - 1;
      }

      if (v3)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v3 + 1;
      if (v16 >= (v3 + 1))
      {
        v25 = v3 + 1;
      }

      else
      {
        v25 = a2[2] - 1;
      }

      v26 = v3 + 2;
      if (v16 < (v3 + 2))
      {
        v26 = a2[2] - 1;
      }

      if (v16 >= v3)
      {
        v16 = v3;
      }

      if (v20 >= v5)
      {
        v27 = v5;
      }

      else
      {
        v27 = v20;
      }

      if (v4 < 2)
      {
        v27 = 0;
      }

      if (v20 >= v6)
      {
        v28 = v6;
      }

      else
      {
        v28 = v20;
      }

      if (v4 < 0)
      {
        v21 = 0;
      }

      v29 = a2[3] >> 3;
      v30 = v18 + 8 * v21 * v29;
      v31.i64[0] = *(v30 + 8 * v17);
      if (v4 <= 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v28;
      }

      v33 = *(v18 + 8 * v32 * v29 + 8 * v16);
      if (v20 >= v7)
      {
        v34 = v7;
      }

      else
      {
        v34 = v20;
      }

      if (v4 < -1)
      {
        v34 = 0;
      }

      v35 = *(v18 + 8 * v34 * v29 + 8 * v16);
      if (v20 >= v8)
      {
        v36 = v8;
      }

      else
      {
        v36 = v20;
      }

      if (v4 < -2)
      {
        v36 = 0;
      }

      v37.i64[1] = v35;
      v38.i64[1] = v33;
      v31.i64[1] = *(v18 + 8 * v27 * v29 + 8 * v16);
      v38.i64[0] = *(v30 + 8 * v23);
      v37.i64[0] = *(v30 + 8 * v25);
      v39.i64[1] = *(v18 + 8 * v36 * v29 + 8 * v16);
      v39.i64[0] = *(v30 + 8 * v26);
      *(*a3 + 16 * (a3[3] >> 4) * v4 + 16 * v3++) = vdivq_f32(vsubq_f32(vmlaq_f32(vmlsq_f32(v31, v9, v38), v9, v37), v39), _Q1);
    }

    while (v24 < result[1]);
  }

  return result;
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIhNS1_15YImageParameterEEESA_EENS6_INS7_IDv2_fNS1_16FeatureParameterEEESE_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSM_ENUlPvmE_8__invokeESP_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::computeFeatures(uint64_t *result, uint64_t *a2, void *a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  if (result[1] >= 1)
  {
    v11 = result;
    v12 = 0;
    v13 = *result;
    v34 = *result;
    do
    {
      *&v14 = v12;
      *(&v14 + 1) = v34;
      v35 = *&v14;
      v15 = apple::vision::OpticalFlow::LKTCPUCompute::sampleLN<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>(a2, COERCE_DOUBLE(vadd_f32(*&v14, 3204448256)), v14, a6, a7, a8, a9);
      v21 = apple::vision::OpticalFlow::LKTCPUCompute::sampleLN<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>(a2, COERCE_DOUBLE(vadd_f32(v35, 1056964608)), v16, v17, v18, v19, v20);
      v27 = apple::vision::OpticalFlow::LKTCPUCompute::sampleLN<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>(a2, COERCE_DOUBLE(vadd_f32(v35, 0xBF00000000000000)), v22, v23, v24, v25, v26);
      result = apple::vision::OpticalFlow::LKTCPUCompute::sampleLN<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>(a2, COERCE_DOUBLE(vadd_f32(v35, 0x3F00000000000000)), v28, v29, v30, v31, v32);
      *&v33 = (v21 - v15);
      *(&v33 + 1) = (result - v27);
      *(*a3 + 8 * (a3[3] >> 3) * v13 + 8 * v12++) = v33;
    }

    while (v12 < v11[1]);
  }

  return result;
}

uint64_t apple::vision::OpticalFlow::LKTCPUCompute::sampleLN<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>(uint64_t *a1, double a2, double a3, double a4, double a5, double a6, float a7)
{
  v7 = a1[2];
  v8 = a1[3];
  v9 = v7 + -1.0;
  if (v9 >= *&a2)
  {
    v9 = *&a2;
  }

  if (*&a2 < 0.0)
  {
    v9 = 0.0;
  }

  v11 = *a1;
  v10 = a1[1];
  v12 = v10 + -1.0;
  if (v12 >= *(&a2 + 1))
  {
    v12 = *(&a2 + 1);
  }

  if (*(&a2 + 1) >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v9;
  v15 = v13;
  v16 = v7 - 1;
  if (v16 >= v9 + 1)
  {
    v16 = v14 + 1;
  }

  v17 = v10 - 1;
  if (v17 >= v15 + 1)
  {
    v17 = v15 + 1;
  }

  *&v18 = v14;
  v19 = v9 - v14;
  v20 = v13 - v15;
  v21 = v11 + v8 * v15;
  LOBYTE(v18) = *(v21 + v14);
  LOBYTE(a7) = *(v21 + v16);
  *&v22 = v19 * LODWORD(a7);
  *&v23 = *&v22 + (v18 * (1.0 - v19));
  LODWORD(v21) = *&v23;
  v24 = v11 + v17 * v8;
  LOBYTE(v23) = *(v24 + v14);
  LOBYTE(v22) = *(v24 + v16);
  return ((v20 * ((v19 * v22) + (v23 * (1.0 - v19)))) + (v21 * (1.0 - v20)));
}

CVPixelBufferRef *apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(CVPixelBufferRef *a1)
{
  CVPixelBufferUnlockBaseAddress(*a1, 1uLL);
  CVPixelBufferRelease(*a1);
  return a1;
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS0_9NamedTypeIDv2_hNS1_16UVImageParameterEEESB_EENS6_ISA_SA_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSK_ENUlPvmE_8__invokeESN_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::downscale2x(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result[1] >= 1)
  {
    v3 = 0;
    v4 = *result;
    v5 = 2 * *result;
    v6 = 2;
    v7 = vdup_n_s32(0x42A00000u);
    __asm
    {
      FMOV            V1.2S, #6.0
      FMOV            V2.2S, #21.0
    }

    v14 = vdup_n_s32(0x43C00000u);
    do
    {
      v15 = v6 - 3;
      v16 = a2[2] - 1;
      if (v16 < v6 - 3)
      {
        v15 = a2[2] - 1;
      }

      if (v3)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = *a2;
      v19 = a2[1];
      v20 = v19 - 1;
      if (v19 - 1 >= v5 - 1)
      {
        v21 = v5 - 1;
      }

      else
      {
        v21 = v19 - 1;
      }

      if (v16 >= v6 - 2)
      {
        v22 = v6 - 2;
      }

      else
      {
        v22 = a2[2] - 1;
      }

      if (v20 >= v5)
      {
        v23 = v5;
      }

      else
      {
        v23 = v19 - 1;
      }

      if (v16 >= v6 - 1)
      {
        v24 = v6 - 1;
      }

      else
      {
        v24 = a2[2] - 1;
      }

      if (v16 >= v6)
      {
        v25 = v6;
      }

      else
      {
        v25 = a2[2] - 1;
      }

      if (v20 >= (v5 | 1))
      {
        v26 = v5 | 1;
      }

      else
      {
        v26 = v20;
      }

      if (v4 <= 0)
      {
        v21 = 0;
      }

      v27 = a2[3] >> 1;
      v28 = v18 + 2 * v21 * v27;
      v29.f32[0] = *(v28 + 2 * v17);
      v30 = HIBYTE(*(v28 + 2 * v17));
      v31 = *(v28 + 2 * v22);
      if (v4 < 0)
      {
        v23 = 0;
      }

      v32 = HIBYTE(*(v28 + 2 * v22));
      v33 = v18 + 2 * v23 * v27;
      v34.f32[0] = *(v33 + 2 * v17);
      v35 = HIBYTE(*(v33 + 2 * v17));
      v36.f32[0] = *(v33 + 2 * v22);
      v37 = HIBYTE(*(v33 + 2 * v22));
      v38.f32[0] = *(v28 + 2 * v24);
      v39 = HIBYTE(*(v28 + 2 * v24));
      v40 = *(v28 + 2 * v25);
      v41 = v39;
      v42.f32[0] = v40;
      v43 = (v40 >> 8);
      v44 = *(v33 + 2 * v24);
      v45 = HIBYTE(*(v33 + 2 * v24));
      LODWORD(v33) = *(v33 + 2 * v25);
      v46 = v45;
      v47 = v33;
      v48 = v33 >> 8;
      if (v4 < 0)
      {
        v26 = 0;
      }

      v49 = v18 + 2 * v26 * v27;
      v50.f32[0] = *(v49 + 2 * v17);
      v51 = HIBYTE(*(v49 + 2 * v17));
      v52.f32[0] = *(v49 + 2 * v22);
      v53 = HIBYTE(*(v49 + 2 * v22));
      v29.f32[1] = v30;
      if (v20 >= v5 + 2)
      {
        v20 = v5 + 2;
      }

      if (v4 < -1)
      {
        v20 = 0;
      }

      v54.f32[1] = v32;
      v55 = v18 + 2 * v20 * v27;
      v56 = *(v55 + 2 * v17);
      v34.f32[1] = v35;
      v57.f32[0] = v56;
      v36.f32[1] = v37;
      v58 = *(v55 + 2 * v22);
      v38.f32[1] = v41;
      v59.f32[0] = v58;
      v42.f32[1] = v43;
      v60.f32[1] = v46;
      v61.f32[0] = *(v49 + 2 * v24);
      v62.f32[1] = v48;
      v63 = HIBYTE(*(v49 + 2 * v24));
      v50.f32[1] = v51;
      v64.f32[0] = *(v49 + 2 * v25);
      v52.f32[1] = v53;
      v65 = *(v55 + 2 * v24);
      v61.f32[1] = v63;
      v66.f32[0] = v65;
      v64.f32[1] = HIBYTE(*(v49 + 2 * v25));
      v67 = *(v55 + 2 * v25);
      v57.f32[1] = (v56 >> 8);
      v68.f32[0] = v67;
      v59.f32[1] = (v58 >> 8);
      v66.f32[1] = (v65 >> 8);
      v68.f32[1] = (v67 >> 8);
      v60.f32[0] = v44;
      v54.f32[0] = v31;
      v62.f32[0] = v47;
      v69 = vcvt_s32_f32(vmul_f32(vadd_f32(vmla_f32(vmla_f32(vmul_f32(vadd_f32(vadd_f32(vadd_f32(v36, v60), v52), v61), v7), _D1, vadd_f32(vadd_f32(vadd_f32(v29, v42), v57), v68)), _D2, vadd_f32(v66, vadd_f32(v59, vadd_f32(vadd_f32(vadd_f32(vadd_f32(v34, vadd_f32(v54, v38)), v62), v50), v64)))), v14), 0x3B0000003B000000));
      v70 = (*a3 + 2 * (a3[3] >> 1) * v4 + 2 * v3);
      v70[1] = v69.i8[4];
      *v70 = v69.i8[0];
      ++v3;
      v6 += 2;
    }

    while (v3 < result[1]);
  }

  return result;
}

void *apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::dispatchProcessing<apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>>(void (*)(apple::vision::OpticalFlow::ComputeParameters const&,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&),int,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter> const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&)::{lambda(void *,unsigned long)#1}::__invoke(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::downscale2x(uint64_t *result, uint64_t *a2, void *a3, double a4, double a5, double a6, double a7, double a8, float a9, float a10, float a11)
{
  if (result[1] >= 1)
  {
    v24 = 0;
    v25 = *result;
    v26 = 2 * *result;
    v27 = 2;
    do
    {
      v28 = v27 - 3;
      v29 = a2[2];
      v30 = a2[3];
      v31 = v29 - 1;
      if (v29 - 1 < v27 - 3)
      {
        v28 = v29 - 1;
      }

      if (!v24)
      {
        v28 = 0;
      }

      v33 = *a2;
      v32 = a2[1];
      v34 = v32 - 1;
      if (v32 - 1 >= v26 - 1)
      {
        v35 = v26 - 1;
      }

      else
      {
        v35 = v32 - 1;
      }

      if (v31 >= v27 - 2)
      {
        v36 = v27 - 2;
      }

      else
      {
        v36 = v31;
      }

      if (v34 >= v26)
      {
        v37 = v26;
      }

      else
      {
        v37 = v32 - 1;
      }

      if (v31 >= v27 - 1)
      {
        v38 = v27 - 1;
      }

      else
      {
        v38 = v31;
      }

      if (v31 >= v27)
      {
        v39 = v27;
      }

      else
      {
        v39 = v31;
      }

      if (v34 >= (v26 | 1))
      {
        v40 = v26 | 1;
      }

      else
      {
        v40 = v34;
      }

      if (v25 <= 0)
      {
        v35 = 0;
      }

      v41 = v33 + v35 * v30;
      LOBYTE(a9) = *(v41 + v28);
      v42 = LODWORD(a9);
      LOBYTE(a10) = *(v41 + v36);
      v43 = LODWORD(a10);
      if (v25 < 0)
      {
        v37 = 0;
      }

      v44 = v33 + v37 * v30;
      LOBYTE(a11) = *(v44 + v28);
      a11 = LODWORD(a11);
      LOBYTE(v11) = *(v44 + v36);
      v45 = LODWORD(v11);
      LOBYTE(v12) = *(v41 + v38);
      v12 = LODWORD(v12);
      LOBYTE(v13) = *(v41 + v39);
      v13 = LODWORD(v13);
      LOBYTE(v14) = *(v44 + v38);
      v14 = LODWORD(v14);
      LOBYTE(v15) = *(v44 + v39);
      v15 = LODWORD(v15);
      if (v25 < 0)
      {
        v40 = 0;
      }

      v46 = v33 + v40 * v30;
      LOBYTE(v16) = *(v46 + v28);
      LOBYTE(v17) = *(v46 + v36);
      v16 = LODWORD(v16);
      v17 = LODWORD(v17);
      if (v34 >= v26 + 2)
      {
        v34 = v26 + 2;
      }

      if (v25 < -1)
      {
        v34 = 0;
      }

      v47 = v33 + v34 * v30;
      LOBYTE(v18) = *(v47 + v28);
      v18 = LODWORD(v18);
      LOBYTE(v19) = *(v47 + v36);
      v19 = LODWORD(v19);
      LOBYTE(v20) = *(v46 + v38);
      v20 = LODWORD(v20);
      LOBYTE(v21) = *(v46 + v39);
      v21 = LODWORD(v21);
      LOBYTE(v22) = *(v47 + v38);
      v22 = LODWORD(v22);
      LOBYTE(v23) = *(v47 + v39);
      v23 = LODWORD(v23);
      v11 = (((v45 + v14) + v17) + v20) * 80.0;
      a10 = ((((((v43 + v12) + a11) + v15) + v16) + v21) + v19) + v22;
      a9 = (((v11 + ((((v42 + v13) + v18) + v23) * 6.0)) + (a10 * 21.0)) + 384.0) * 0.0019531;
      *(*a3 + a3[3] * v25 + v24++) = a9;
      v27 += 2;
    }

    while (v24 < result[1]);
  }

  return result;
}

void *apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::dispatchProcessing<apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>>>(void (*)(apple::vision::OpticalFlow::ComputeParameters const&,apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&),int,apple::vision::ImageBuffer<apple::vision::OpticalFlow::Pixel_BGRA_8U const,apple::vision::OpticalFlow::Pixel_BGRA_8U const>,apple::vision::ImageBuffer<apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>,apple::vision::NamedType<unsigned char,apple::vision::OpticalFlow::YImageParameter>> const&)::{lambda(void *,unsigned long)#1}::__invoke(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v16[0] = v13;
        v16[1] = v4;
        v16[2] = v5;
        v14 = v2[3];
        v17[0] = v2[2];
        v17[1] = v14;
        v15 = v2[5];
        v18[0] = v2[4];
        v18[1] = v15;
        result = v3(v16, v17, v18);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::convertBGRA8888ToYF32(uint64_t *result, void *a2, void *a3, double a4, double a5, double a6, float a7, float a8, float a9)
{
  if (result[1] >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *result;
    do
    {
      v12 = (*a2 + 4 * (a2[3] >> 2) * v11 + v9);
      LOBYTE(a7) = v12[1];
      LOBYTE(a8) = *v12;
      LOBYTE(a9) = v12[2];
      a9 = LODWORD(a9);
      a8 = LODWORD(a8);
      a7 = ((LODWORD(a7) * 0.587) + (a9 * 0.299)) + (a8 * 0.114);
      *(*a3 + a3[3] * v11 + v10++) = a7;
      v9 += 4;
    }

    while (v10 < result[1]);
  }

  return result;
}

void *_ZZN5apple6vision11OpticalFlow10LKTCPUImplINS1_13LKTCPUComputeEE18dispatchProcessingIJNS0_11ImageBufferIKNS1_13Pixel_BGRA_8UES8_EENS6_INS0_9NamedTypeIhNS1_15YImageParameterEEESC_EENS6_INSA_IDv2_hNS1_16UVImageParameterEEESG_EEEEEvPFvRKNS1_17ComputeParametersEDpRKT_EiSO_ENUlPvmE_8__invokeESR_m(void *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[1];
    v4 = result[2];
    v5 = result[3];
    v6 = *(*result + 16);
    v7 = v5 / v6;
    v8 = v5 % v6;
    v9 = a2 + 1;
    v10 = -1;
    do
    {
      v11 = v10;
      if (v8 > 0)
      {
        ++v10;
      }

      v10 += v7;
      v8 -= v8 > 0;
      --v9;
    }

    while (v9);
    v12 = v10 - v11;
    if (v10 > v11)
    {
      v13 = v11 + 1;
      do
      {
        v14 = v2[3];
        v18[0] = v2[2];
        v18[1] = v14;
        v15 = v2[5];
        v19[0] = v2[4];
        v19[1] = v15;
        v16 = v2[7];
        v20[0] = v2[6];
        v17[0] = v13;
        v17[1] = v4;
        v17[2] = v5;
        v20[1] = v16;
        result = v3(v17, v18, v19, v20);
        ++v13;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t *apple::vision::OpticalFlow::LKTCPUCompute::convertBGRA8888ToYUVF32(uint64_t *result, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (result[1] >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = *result;
    do
    {
      v17 = (*a2 + 4 * (a2[3] >> 2) * v16 + v14);
      LOBYTE(a12) = *v17;
      v18 = LODWORD(a12);
      v12.i8[0] = v17[1];
      v19 = v12.u32[0];
      LOBYTE(v13) = v17[2];
      v13 = LODWORD(v13);
      *(*a3 + a3[3] * v16 + v15) = (((v19 * 0.587) + (v13 * 0.299)) + (v18 * 0.114));
      v12 = vmla_n_f32(vmla_n_f32(vmul_n_f32(0xBED65FD9BEA9A027, v19), 0x3F000000BE2CBFB1, v13), 0xBDA6809D3F000000, v18);
      a12 = COERCE_DOUBLE(vcvt_s32_f32(vadd_f32(v12, 0x4300000043000000)));
      v20 = (*a4 + 2 * (a4[3] >> 1) * v16 + 2 * v15);
      v20[1] = BYTE4(a12);
      *v20 = LOBYTE(a12);
      ++v15;
      v14 += 4;
    }

    while (v15 < result[1]);
  }

  return result;
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
    *exception = &unk_1F1974548;
    exception[2] = v6;
  }

  return a1;
}

int32x2_t apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::estimateFlow(int32x2_t *a1, __CVBuffer **a2, __CVBuffer **a3, __CVBuffer **a4, int *a5)
{
  a1[115] = 0x100000000;
  v9 = *a2;
  v15 = v9;
  if (v9)
  {
    CVPixelBufferRetain(v9);
  }

  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::createImagePyramid(a1, &v15, 0, a5);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v15);
  v10 = *a3;
  v14 = v10;
  if (v10)
  {
    CVPixelBufferRetain(v10);
  }

  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::createImagePyramid(a1, &v14, 1, a5);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v14);
  bzero(*&a1[112], 8 * *&a1[2 * *a5 + 3] * *&a1[2 * *a5 + 4]);
  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::calculateFeaturesAndDerivatives(a1, 0, *a5);
  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::calculateFeaturesAndDerivatives(a1, 1, *a5);
  v11 = *a4;
  v13 = v11;
  if (v11)
  {
    CVPixelBufferRetain(v11);
  }

  apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::computeOpticalFlow(a1, &v13, a5);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v13);
  result = vrev64_s32(a1[115]);
  a1[115] = result;
  return result;
}

void sub_1A5DF1C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(va);
  _Unwind_Resume(a1);
}

void apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::~LKTCPUImpl(uint64_t a1)
{
  *a1 = &unk_1F19720D8;
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    free(v2);
  }

  JUMPOUT(0x1AC556B00);
}

uint64_t apple::vision::OpticalFlow::LKTCPUImpl<apple::vision::OpticalFlow::LKTCPUCompute>::~LKTCPUImpl(uint64_t a1)
{
  *a1 = &unk_1F19720D8;
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    free(v2);
  }

  return a1;
}

void sub_1A5DF1EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(a4);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1A5DF1F88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5DF20AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DF21F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DF2338(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DF2670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id _validatedEntityPrintOriginatingRequestSpecifierCompatibility(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (v11)
  {
    v13 = [v11 VNEntityIdentificationModelPrintOriginatingRequestSpecifier];
    if ([v13 hasModelEquivalencyToRequestSpecifier:v12])
    {
      v14 = v11;
    }

    else
    {
      if (a5)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ was generated by %@, which is not equivalent to %@", v11, v13, v12];
        *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, v15, 0);
      }

      v14 = 0;
    }

    goto LABEL_9;
  }

  if (a5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not have a %@", v9, v10];
    VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, v13, 0);
    *a5 = v14 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

id VNEntityUniqueIdentifierClasses()
{
  if (VNEntityUniqueIdentifierClasses::ourOnceToken != -1)
  {
    dispatch_once(&VNEntityUniqueIdentifierClasses::ourOnceToken, &__block_literal_global_6617);
  }

  v1 = VNEntityUniqueIdentifierClasses::classesSet;

  return v1;
}

uint64_t __VNEntityUniqueIdentifierClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  VNEntityUniqueIdentifierClasses::classesSet = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __VNEntityUniqueIdentifierSupportedRequestClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  VNEntityUniqueIdentifierSupportedRequestClasses::ourClasses = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

id VNEntityUniqueIdentifierSupportedRequestSpecifiers()
{
  if (VNEntityUniqueIdentifierSupportedRequestSpecifiers::ourOnceToken != -1)
  {
    dispatch_once(&VNEntityUniqueIdentifierSupportedRequestSpecifiers::ourOnceToken, &__block_literal_global_35);
  }

  v1 = VNEntityUniqueIdentifierSupportedRequestSpecifiers::ourRequestSpecifiers;

  return v1;
}

void __VNEntityUniqueIdentifierSupportedRequestSpecifiers_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __VNEntityUniqueIdentifierSupportedRequestSpecifiers_block_invoke_2;
  aBlock[3] = &unk_1E77B2F38;
  v1 = v0;
  v16 = v1;
  v2 = _Block_copy(aBlock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (VNEntityUniqueIdentifierSupportedRequestClasses::ourOnceToken != -1)
  {
    dispatch_once(&VNEntityUniqueIdentifierSupportedRequestClasses::ourOnceToken, &__block_literal_global_30_6619);
  }

  v3 = VNEntityUniqueIdentifierSupportedRequestClasses::ourClasses;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 allSupportedRevisions];
        v2[2](v2, v7, v8);
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = [v1 copy];
  v10 = VNEntityUniqueIdentifierSupportedRequestSpecifiers::ourRequestSpecifiers;
  VNEntityUniqueIdentifierSupportedRequestSpecifiers::ourRequestSpecifiers = v9;
}

void __VNEntityUniqueIdentifierSupportedRequestSpecifiers_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __VNEntityUniqueIdentifierSupportedRequestSpecifiers_block_invoke_3;
  v4[3] = &unk_1E77B2F10;
  v6 = a2;
  v5 = *(a1 + 32);
  [a3 enumerateIndexesUsingBlock:v4];
}

void __VNEntityUniqueIdentifierSupportedRequestSpecifiers_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [VNRequestSpecifier specifierForRequestClass:*(a1 + 40) revision:a2 error:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t VNEntityIdentificationModelPrintConformingObject(void *a1)
{
  v1 = a1;
  v2 = VNEntityIdentificationModelPrintConformingClasses();
  v3 = [v2 containsObject:objc_opt_class()];

  return v3;
}

id VNEntityIdentificationModelPrintConformingClasses()
{
  if (VNEntityIdentificationModelPrintConformingClasses::onceToken != -1)
  {
    dispatch_once(&VNEntityIdentificationModelPrintConformingClasses::onceToken, &__block_literal_global_41_6623);
  }

  v1 = VNEntityIdentificationModelPrintConformingClasses::ourEntityPrintClasses;

  return v1;
}

void __VNEntityIdentificationModelPrintConformingClasses_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VNEntityIdentificationModelPrintConformingClasses_block_invoke_2;
  v5[3] = &unk_1E77B2F60;
  v2 = v0;
  v6 = v2;
  [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities enumerateSubclassesOfClass:v1 excludingRootClass:1 usingBlock:v5];
  v3 = [v2 copy];
  v4 = VNEntityIdentificationModelPrintConformingClasses::ourEntityPrintClasses;
  VNEntityIdentificationModelPrintConformingClasses::ourEntityPrintClasses = v3;
}

void __VNEntityIdentificationModelPrintConformingClasses_block_invoke_2(uint64_t a1, Class aClass)
{
  v4 = NSStringFromClass(aClass);
  v5 = [v4 hasPrefix:@"VN"];

  if ((v5 & 1) != 0 && class_conformsToProtocol(aClass, &unk_1F19D6DD0))
  {
    v6 = *(a1 + 32);

    [v6 addObject:aClass];
  }
}

uint64_t VNEntityIdentificationModelObservationConformingObject(void *a1)
{
  v1 = a1;
  v2 = VNEntityIdentificationModelObservationConformingClasses();
  v3 = [v2 containsObject:objc_opt_class()];

  return v3;
}

id VNEntityIdentificationModelObservationConformingClasses()
{
  if (VNEntityIdentificationModelObservationConformingClasses::onceToken != -1)
  {
    dispatch_once(&VNEntityIdentificationModelObservationConformingClasses::onceToken, &__block_literal_global_106);
  }

  v1 = VNEntityIdentificationModelObservationConformingClasses::ourObservationClasses;

  return v1;
}

void __VNEntityIdentificationModelObservationConformingClasses_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VNEntityIdentificationModelObservationConformingClasses_block_invoke_2;
  v5[3] = &unk_1E77B2F60;
  v2 = v0;
  v6 = v2;
  [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities enumerateSubclassesOfClass:v1 excludingRootClass:1 usingBlock:v5];
  v3 = [v2 copy];
  v4 = VNEntityIdentificationModelObservationConformingClasses::ourObservationClasses;
  VNEntityIdentificationModelObservationConformingClasses::ourObservationClasses = v3;
}

void __VNEntityIdentificationModelObservationConformingClasses_block_invoke_2(uint64_t a1, Class aClass)
{
  v4 = NSStringFromClass(aClass);
  v5 = [v4 hasPrefix:@"VN"];

  if ((v5 & 1) != 0 && class_conformsToProtocol(aClass, &unk_1F19CB820))
  {
    v6 = *(a1 + 32);

    [v6 addObject:aClass];
  }
}

float *generateQuadrilaterals(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6, float a7)
{
  v9 = 0;
  v67 = 0;
  v88 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = (a7 * 256.0) * (a7 * 256.0);
  v68 = a2;
  do
  {
    v12 = 0;
    v70 = v9;
    v13 = (a1 + (v9 << 6));
    v71 = v13 + 8;
    do
    {
      v14 = (a3 + (v12 << 6));
      result = leqIntersect(v13, v14, &v72, &v73);
      if (v72 < 0.0 || v72 > 255.0 || (v73 >= 0.0 ? (v17 = v73 <= 255.0) : (v17 = 0), !v17 || (v74 = v13, v75 = a3 + (v12 << 6), result = leqIntersect(v13, v14 + 8, &v76, &v77), v76 < 0.0) || v76 > 255.0 || (v77 >= 0.0 ? (v18 = v77 <= 255.0) : (v18 = 0), !v18 || (v78 = v13, v79 = v14 + 8, result = leqIntersect(v71, (a3 + (v12 << 6)), &v80, &v81), v80 < 0.0) || v80 > 255.0 || v81 < 0.0 || v81 > 255.0 || (v82 = v13 + 8, v83 = a3 + (v12 << 6), result = leqIntersect(v71, v14 + 8, &v84, &v85), v84 < 0.0) || v84 > 255.0 || v85 < 0.0 || v85 > 255.0 || (v86 = v13 + 8, v87 = v14 + 8, v20 = v73, (((v81 - v73) * (v85 - v77)) + ((v80 - v72) * (v84 - v76))) < 0.0) || (((v85 - v81) * (v77 - v73)) + ((v76 - v72) * (v84 - v80))) < 0.0)))
      {
LABEL_4:
        v16 = 0;
        goto LABEL_5;
      }

      v21 = 0;
      v22 = -3;
      v23 = &v77;
      v24 = v73;
      do
      {
        v25 = *v23;
        if (*v23 <= v24)
        {
          v26 = v22 + 4;
          if (*v23 != v24)
          {
            v21 = v26;
            goto LABEL_37;
          }

          if (*(v23 - 1) < *(&v72 + 6 * v21))
          {
            v21 = v26;
          }
        }

        v25 = v24;
LABEL_37:
        v23 += 6;
        v24 = v25;
        v27 = __CFADD__(v22++, 1);
      }

      while (!v27);
      v28 = 0;
      v29 = -3;
      v30 = &v77;
      do
      {
        v31 = *v30;
        if (*v30 >= v20)
        {
          v32 = v29 + 4;
          if (*v30 != v20)
          {
            v28 = v32;
            goto LABEL_46;
          }

          if (*(v30 - 1) > *(&v72 + 6 * v28))
          {
            v28 = v32;
          }
        }

        v31 = v20;
LABEL_46:
        v30 += 6;
        v20 = v31;
        v27 = __CFADD__(v29++, 1);
      }

      while (!v27);
      v33 = (1 << v28) | (1 << v21);
      if (v33 <= 5)
      {
        v34 = &v80;
        v35 = &v84;
        if (v33 != 3)
        {
          v34 = &v76;
          v35 = &v84;
          if (v33 != 5)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v33 == 6)
      {
        v34 = &v72;
        v35 = &v84;
      }

      else
      {
        v34 = &v76;
        v35 = &v80;
        if (v33 == 9)
        {
          goto LABEL_57;
        }

        if (v33 == 10)
        {
          v34 = &v72;
          v35 = &v80;
          goto LABEL_57;
        }

LABEL_55:
        v34 = &v72;
        v35 = &v76;
      }

LABEL_57:
      v36 = &v72 + 6 * v21;
      v37 = *v36;
      v19.i32[0] = v36[1];
      v38 = *(v36 + 1);
      v39 = *(v36 + 2);
      v40 = &v72 + 6 * v28;
      v42 = *(v40 + 1);
      v41 = *(v40 + 4);
      result = *(v34 + 1);
      v43 = *(v34 + 4);
      *&v44 = *v40;
      *&v45 = *v34;
      *&v46 = *v35;
      v47 = v35[1];
      v48 = v35[2];
      v49 = vzip2_s32(*v35, *&v45);
      v50 = vcltz_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(v49, vdup_lane_s32(v19, 0)), *&v44), vsub_f32(vdup_lane_s32(*&v44, 1), v49), v37), vzip1_s32(*v35, *&v45), *v19.i32 - *(&v44 + 1)));
      if ((v50.i8[4] & 1) == 0)
      {
        if (v50.i8[0])
        {
          v51 = v35[1];
          v52 = v48;
          v53 = v42;
          v54 = v41;
          *(&v46 + 1) = v44;
          v47 = result;
          v48 = v43;
          v55 = v46;
        }

        else
        {
          if ((vcgt_f32(*&v46, *&v45).i32[1] & 1) == 0)
          {
            v51 = v42;
            *(&v44 + 1) = v45;
            v52 = v41;
            v53 = result;
            v54 = v43;
            v55 = v44;
            goto LABEL_70;
          }

          v51 = v42;
          v52 = v41;
          v53 = v47;
          v54 = v48;
          *(&v44 + 1) = v46;
          v47 = result;
          v48 = v43;
          v55 = v44;
        }

        *&v46 = v45;
        goto LABEL_70;
      }

      if (v50.i8[0])
      {
        if (vcgt_f32(*&v46, *&v45).i32[1])
        {
          v51 = result;
          v52 = v43;
          v53 = v47;
          v54 = v48;
          *(&v45 + 1) = v46;
          v47 = v42;
          v48 = v41;
          v55 = v45;
        }

        else
        {
          v51 = v35[1];
          v52 = v48;
          v53 = result;
          v54 = v43;
          *(&v46 + 1) = v45;
          v47 = v42;
          v48 = v41;
          v55 = v46;
        }

        *&v46 = v44;
      }

      else
      {
        v51 = result;
        *(&v45 + 1) = v44;
        v52 = v43;
        v53 = v42;
        v54 = v41;
        v55 = v45;
      }

LABEL_70:
      if ((((*(&v55 + 1) - *v19.i32) * (*(&v55 + 1) - *v19.i32)) + ((*&v55 - v37) * (*&v55 - v37))) < v11 || (((*(&v55 + 3) - *(&v55 + 1)) * (*(&v55 + 3) - *(&v55 + 1))) + ((*(&v55 + 2) - *&v55) * (*(&v55 + 2) - *&v55))) < v11 || (((*(&v46 + 1) - *(&v55 + 3)) * (*(&v46 + 1) - *(&v55 + 3))) + ((*&v46 - *(&v55 + 2)) * (*&v46 - *(&v55 + 2)))) < v11 || (((*v19.i32 - *(&v46 + 1)) * (*v19.i32 - *(&v46 + 1))) + ((v37 - *&v46) * (v37 - *&v46))) < v11)
      {
        goto LABEL_4;
      }

      *a5 = v37;
      *(a5 + 4) = v19.i32[0];
      if (v38 == v52 || v38 == v51)
      {
        v60 = v38;
      }

      else
      {
        v60 = v39;
      }

      if (v51 != v54 && v51 != v53)
      {
        v51 = v52;
      }

      *(a5 + 32) = v60;
      *(a5 + 40) = v51;
      *(a5 + 8) = v55;
      if (v53 == v48 || v53 == v47)
      {
        v63 = v53;
      }

      else
      {
        v63 = v54;
      }

      *(a5 + 24) = v46;
      if (v47 == v39 || v47 == v38)
      {
        v65 = v47;
      }

      else
      {
        v65 = v48;
      }

      *(a5 + 48) = v63;
      *(a5 + 56) = v65;
      ++v67;
      v16 = 64;
LABEL_5:
      a5 += v16;
      ++v12;
    }

    while (v12 != v10);
    v9 = v70 + 1;
  }

  while (v70 + 1 != v68);
  *a6 = v67;
  return result;
}

void processQuadrilaterals(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10, float a11, float a12, float a13)
{
  v59 = *&a7;
  if (a2)
  {
    v16 = *&a8;
    v53 = a6;
    v18 = 0;
    v19 = 0;
    v56 = *&a8 * *&a8;
    v57 = *&a9;
    v20 = a2;
    v21 = vdup_lane_s32(*&a9, 0);
    v58 = *&a10;
    v22 = vdup_lane_s32(*&a10, 0);
    __asm { FMOV            V14.2S, #-1.0 }

    v28 = vdup_n_s32(0x3BA3D70Au);
    __asm { FMOV            V9.2S, #1.0 }

    do
    {
      if (v16 < 0.0)
      {
        goto LABEL_11;
      }

      v30.i32[0] = *(a1 + 24);
      v31.i32[0] = *(a1 + 28);
      *&a9 = (*a1 * v59) - v57;
      *&a10 = *(a1 + 4) - v58;
      *&a7 = (*(a1 + 16) * v59) - v57;
      *&a8 = *(a1 + 20) - v58;
      v13.f32[0] = -*&a10;
      v30.i32[1] = *(a1 + 8);
      v32 = vsub_f32(vmul_n_f32(v30, v59), v21);
      v31.i32[1] = *(a1 + 12);
      v33 = vsub_f32(v31, v22);
      v34 = vdup_lane_s32(*&a8, 0);
      v35 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v33, -(*&a9 - *&a7)), v32, *&a10 - *&a8), v34, *&a9);
      v36 = vdup_lane_s32(v13, 0);
      v37 = vdup_lane_s32(*&a7, 0);
      *&a9 = -*&a9;
      v38 = vmls_lane_f32(v35, v37, *&a10, 0);
      a10 = COERCE_DOUBLE(vrev64_s32(v32));
      v39 = vmla_n_f32(vmla_f32(vmul_f32(v33, vneg_f32(vrev64_s32(vsub_f32(v32, v37)))), v32, vrev64_s32(vsub_f32(v33, v34))), *&a10, *&a8);
      v40 = vrev64_s32(v33);
      v13 = vmls_lane_f32(v39, v40, *&a7, 0);
      v41 = vdiv_f32(v38, v13);
      v42 = vbsl_s8(vcgt_f32(v28, vabs_f32(vadd_f32(v41, _D14))), _D9, v41);
      v43 = vadd_f32(v42, _D14);
      v44 = vmla_f32(v36, v40, v42);
      a8 = COERCE_DOUBLE(vmla_f32(vdup_lane_s32(*&a9, 0), *&a10, v42));
      a9 = COERCE_DOUBLE(vmla_f32(vmla_f32(vmul_f32(v44, v44), v43, vmul_n_f32(v43, v56)), *&a8, *&a8));
      a7 = COERCE_DOUBLE(vdiv_f32(*&a9, vdup_lane_s32(*&a9, 1)));
      *&a7 = sqrtf(*&a7);
      if (*&a7 > 1.0)
      {
        *&a7 = 1.0 / *&a7;
      }

      if (*&a7 >= a11 && *&a7 <= a12)
      {
LABEL_11:
        v62[0] = 0;
        cachedOverlap(a3, a1, (a1 + 8), *(a1 + 32), v62 + 1, v62);
        v46 = v62[0];
        v47 = HIDWORD(v62[0]);
        cachedOverlap(a3, (a1 + 8), (a1 + 16), *(a1 + 40), v62 + 1, v62);
        v48 = HIDWORD(v62[0]);
        v49 = LODWORD(v62[0]) + v46;
        cachedOverlap(a3, (a1 + 16), (a1 + 24), *(a1 + 48), v62 + 1, v62);
        v51 = v62[0];
        v50 = HIDWORD(v62[0]);
        cachedOverlap(a3, (a1 + 24), a1, *(a1 + 56), v62 + 1, v62);
        if (v49 + v51 + LODWORD(v62[0]))
        {
          *&a7 = (v48 + v47 + v50 + HIDWORD(v62[0])) / (v49 + v51 + LODWORD(v62[0]));
        }

        else
        {
          a7 = 0.0;
        }

        if (*&a7 >= a13)
        {
          *(a5 + 4 * v19) = LODWORD(a7);
          *(a4 + 8 * v19++) = v18;
        }
      }

      ++v18;
      a1 += 64;
    }

    while (v20 != v18);
    v52 = v19;
    a6 = v53;
  }

  else
  {
    v52 = 0;
  }

  *a6 = v52;
}

void cachedOverlap(uint64_t a1, float *a2, float *a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v6 = *(*(a4 + 16) + 8 * *(a4 + 24) + 48);
  v7 = *a4;
  v8 = *(a4 + 4);
  if (*a4 >= 0.0)
  {
    v9 = *a4;
  }

  else
  {
    v9 = -*a4;
  }

  if (v8 >= 0.0)
  {
    v10 = *(a4 + 4);
  }

  else
  {
    v10 = -v8;
  }

  if (v6)
  {
    goto LABEL_147;
  }

  v84 = v9;
  v85 = a3;
  v86 = a2;
  v87 = a6;
  v88 = a5;
  v13 = *(a4 + 8);
  v6 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  v14 = fabsf(v8);
  v15 = -v13;
  if (v14 >= 0.0001)
  {
    v19 = fabsf(v7);
    if (v19 < 0.0001)
    {
      v17 = v15 / v8;
      v16 = 0.0;
      if ((v15 / v8) >= 0.0 && v17 <= 255.0)
      {
        v21 = 255.0;
        v22 = v15 / v8;
        goto LABEL_107;
      }

LABEL_105:
      v17 = 0.0;
      goto LABEL_106;
    }

    if (v19 > v14)
    {
      v23 = v15 / v7;
      v21 = -(v13 + (v8 * 255.0)) / v7;
      v17 = 0.0;
      if ((v15 / v7) < 0.0 && v21 < 0.0)
      {
        goto LABEL_13;
      }

      if (v23 > 255.0 && v21 > 255.0)
      {
        goto LABEL_13;
      }

      v22 = 255.0;
      v26 = v23 < 0.0 || v21 > 255.0 || v23 > 255.0;
      if (!v26 && v21 >= 0.0)
      {
LABEL_88:
        v16 = v15 / v7;
        goto LABEL_107;
      }

      v28 = v21 < 0.0 && v23 > 255.0;
      v16 = 0.0;
      v30 = v21 > 255.0 && v23 < 0.0;
      if (v28 || v30)
      {
        v17 = v15 / v8;
        v21 = 255.0;
        v22 = -(v13 + (v7 * 255.0)) / v8;
        goto LABEL_107;
      }

      if (v23 >= 0.0)
      {
        if (v21 >= 0.0)
        {
          if (v23 > 255.0)
          {
            v17 = 255.0;
            v22 = -(v13 + (v7 * 255.0)) / v8;
            v16 = -(v13 + (v8 * 255.0)) / v7;
            v21 = 255.0;
            goto LABEL_107;
          }

          if (v21 <= 255.0)
          {
LABEL_13:
            v16 = 0.0;
LABEL_106:
            v21 = 0.0;
            v22 = 0.0;
            goto LABEL_107;
          }

          v21 = 255.0;
          v22 = -(v13 + (v7 * 255.0)) / v8;
          goto LABEL_88;
        }

        v21 = v15 / v7;
        v22 = 0.0;
      }

      else
      {
        v22 = 255.0;
      }

      v17 = v15 / v8;
      goto LABEL_107;
    }

    v31 = v15 / v8;
    v22 = -(v13 + (v7 * 255.0)) / v8;
    v16 = 0.0;
    if ((v15 / v8) < 0.0 && v22 < 0.0)
    {
      goto LABEL_105;
    }

    if (v31 > 255.0 && v22 > 255.0)
    {
      goto LABEL_105;
    }

    v21 = 255.0;
    v34 = v31 < 0.0 || v22 > 255.0 || v31 > 255.0;
    if (!v34 && v22 >= 0.0)
    {
LABEL_90:
      v17 = v15 / v8;
      goto LABEL_107;
    }

    v36 = v22 < 0.0 && v31 > 255.0;
    v17 = 0.0;
    v38 = v22 > 255.0 && v31 < 0.0;
    if (v36 || v38)
    {
      v16 = v15 / v7;
      v22 = 255.0;
      v21 = -(v13 + (v8 * 255.0)) / v7;
      goto LABEL_107;
    }

    if (v31 >= 0.0)
    {
      if (v22 >= 0.0)
      {
        if (v31 > 255.0)
        {
          v16 = 255.0;
          v21 = -(v13 + (v8 * 255.0)) / v7;
          v17 = -(v13 + (v7 * 255.0)) / v8;
          v22 = 255.0;
          goto LABEL_107;
        }

        v16 = 0.0;
        if (v22 <= 255.0)
        {
          goto LABEL_105;
        }

        v22 = 255.0;
        v21 = -(v13 + (v8 * 255.0)) / v7;
        goto LABEL_90;
      }

      v21 = 0.0;
      v22 = v15 / v8;
    }

    else
    {
      v21 = 255.0;
    }

    v16 = v15 / v7;
    goto LABEL_107;
  }

  v16 = v15 / v7;
  v17 = 0.0;
  if ((v15 / v7) < 0.0 || v16 > 255.0)
  {
    goto LABEL_13;
  }

  v22 = 255.0;
  v21 = v15 / v7;
LABEL_107:
  v39 = vabds_f32(v22, v17);
  v40 = vabds_f32(v21, v16);
  if (v39 <= v40)
  {
    v41 = v22;
  }

  else
  {
    v41 = v21;
  }

  if (v39 > v40)
  {
    v42 = v16;
  }

  else
  {
    v22 = v21;
    v42 = v17;
  }

  if (v39 > v40)
  {
    v16 = v17;
  }

  if (v16 <= v22)
  {
    v43 = v41;
    v44 = v22;
  }

  else
  {
    v43 = v42;
    v44 = v16;
    v42 = v41;
    v16 = v22;
  }

  v45 = (v43 - v42) / (v44 - v16);
  v46 = llroundf(v16);
  v47 = v42 + (v45 * (roundf(v16) - v16));
  v91 = 0.0;
  v48 = modff(v47, &v91);
  v49 = v91;
  v50 = llroundf(v44);
  v90 = 0.0;
  v51 = modff(v43 + (v45 * (roundf(v44) - v44)), &v90);
  v83 = v90;
  v52 = v46;
  v53 = a1 + v46;
  v54 = (v53 + ((v49 << 8) + 256));
  v55 = (v53 + (v49 << 8));
  if (v48 >= 0.5)
  {
    v55 = v54;
  }

  v56 = a1 + v49 + (v46 << 8);
  v57 = v46;
  if (v48 >= 0.5)
  {
    v57 = v46;
    v56 = a1 + v49 + (v46 << 8) + 1;
  }

  if (v39 > v40)
  {
    v52 = v57;
    v55 = v56;
  }

  v58 = *v55 != 0;
  v6[v52] = v58;
  v59 = v45 + v47;
  v89 = 0.0;
  v60 = modff(v59, &v89);
  if (v50 - 1 > v46)
  {
    v61 = v46 + 1;
    v62 = &v6[v61];
    v63 = (v46 << 8) + 256;
    v64 = v50 - 1 - v46;
    v65 = a1 + v61;
    do
    {
      v66 = v89;
      if (v39 <= v40)
      {
        v68 = v66 << 8;
        if (v60 >= 0.5)
        {
          v68 += 256;
        }

        v69 = *(v65 + v68);
      }

      else
      {
        if (v60 >= 0.5)
        {
          v67 = a1 + 1 + v66;
        }

        else
        {
          v67 = a1 + v66;
        }

        v69 = *(v67 + (v63 & 0xFFFFFF00));
      }

      if (v69)
      {
        ++v58;
      }

      *v62++ = v58;
      v59 = v45 + v59;
      v60 = modff(v59, &v89);
      v63 += 256;
      ++v65;
      --v64;
    }

    while (v64);
  }

  v70 = v50;
  v71 = a1 + v50;
  v72 = (v71 + ((v83 << 8) + 256));
  v73 = (v71 + (v83 << 8));
  if (v51 >= 0.5)
  {
    v73 = v72;
  }

  v74 = a1 + v83 + (v50 << 8);
  v75 = v50;
  if (v51 >= 0.5)
  {
    v75 = v50;
    v74 = a1 + v83 + (v50 << 8) + 1;
  }

  if (v39 > v40)
  {
    v70 = v75;
    v73 = v74;
  }

  if (*v73)
  {
    v76 = v58 + 1;
  }

  else
  {
    v76 = v58;
  }

  v6[v70] = v76;
  *(*(a4 + 16) + 8 * *(a4 + 24) + 48) = v6;
  a6 = v87;
  a5 = v88;
  a3 = v85;
  a2 = v86;
  v9 = v84;
LABEL_147:
  if (v9 <= v10)
  {
    v77 = roundf(*a3);
  }

  else
  {
    v77 = roundf(a3[1]);
    ++a2;
  }

  v78 = v77;
  v79 = llroundf(*a2);
  if (v79 >= v77)
  {
    v80 = v77;
  }

  else
  {
    v80 = v79;
  }

  if (v79 > v78)
  {
    v78 = v79;
  }

  if (v79 - v77 >= 0)
  {
    v81 = v79 - v77;
  }

  else
  {
    v81 = v77 - v79;
  }

  *a6 = v81 + 1;
  v82 = v6[v78] - v6[v80];
  *a5 = v82 + (v82 >> 31 << 8);
}

void mergeQuads(uint64_t a1, uint64_t a2, const float *__C, vDSP_Length *__I, char *a5, uint64_t a6, void *a7, vDSP_Length __N, _OWORD *a9, float *a10, unint64_t a11, unint64_t *a12)
{
  if (!__N)
  {
    return;
  }

  v14 = __I;
  v18 = a12;
  v19 = a9;
  v20 = a10;
  if (*a12)
  {
    v21 = *a10;
  }

  else
  {
    v21 = -1.0;
  }

  if (a11 != 1)
  {
    if (__N == 1)
    {
      *__I = 0;
LABEL_42:
      v40 = *a12;
      memmove(a7, a10, 4 * *a12);
      memmove(a5, a9, 32 * v40);
      if (v40)
      {
        v41 = (v40 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v42 = vdupq_n_s64(v40 - 1);
        v43 = xmmword_1A6027760;
        v44 = (a6 + 8);
        v45 = vdupq_n_s64(2uLL);
        do
        {
          v46 = vaddq_s64(vdupq_n_s64(a5), xmmword_1A6038BF0);
          v47 = vmovn_s64(vcgeq_u64(v42, v43));
          if (v47.i8[0])
          {
            *(v44 - 1) = v46.i64[0];
          }

          if (v47.i8[4])
          {
            *v44 = v46.i64[1];
          }

          v43 = vaddq_s64(v43, v45);
          a5 += 64;
          v44 += 2;
          v41 -= 2;
        }

        while (v41);
      }

      v48 = 0;
      do
      {
        v49 = v14[v48];
        *(a7 + v40 + v48) = __C[v49];
        *(a6 + 8 * v40 + 8 * v48++) = a1 + (*(a2 + 8 * v49) << 6);
      }

      while (__N != v48);
      v50 = v40 + __N;
      v18 = a12;
      if (v50)
      {
        v51 = 0;
        v52 = xmmword_1A6027760;
        v53 = vdupq_n_s64(v50 - 1);
        v54 = vdupq_n_s64(2uLL);
        do
        {
          v55 = vmovn_s64(vcgeq_u64(v53, v52));
          if (v55.i8[0])
          {
            v14[v51] = v51;
          }

          if (v55.i8[4])
          {
            v14[v51 + 1] = v51 + 1;
          }

          v51 += 2;
          v52 = vaddq_s64(v52, v54);
        }

        while (((v50 + 1) & 0xFFFFFFFFFFFFFFFELL) != v51);
      }

      vDSP_vsorti(a7, v14, 0, v50, -1);
      v26 = a11;
      if (v50 < a11)
      {
        v26 = v50;
      }

      if (v26)
      {
        v56 = v26;
        do
        {
          v57 = *v14++;
          *v20++ = *(a7 + v57);
          v58 = *(a6 + 8 * v57);
          v59 = v58[1];
          *v19 = *v58;
          v19[1] = v59;
          v19 += 2;
          --v56;
        }

        while (v56);
      }

      goto LABEL_63;
    }

    if (__N == 2)
    {
      if (*__C <= __C[1])
      {
        v31 = xmmword_1A6038BC0;
      }

      else
      {
        v31 = xmmword_1A6027760;
      }

      *__I = v31;
      goto LABEL_42;
    }

    if (__N != 3)
    {
      v32 = 0;
      v33 = xmmword_1A6027760;
      v34 = vdupq_n_s64(__N - 1);
      v35 = vdupq_n_s64(2uLL);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v34, v33));
        if (v36.i8[0])
        {
          __I[v32] = v32;
        }

        if (v36.i8[4])
        {
          __I[v32 + 1] = v32 + 1;
        }

        v32 += 2;
        v33 = vaddq_s64(v33, v35);
      }

      while (((__N + 1) & 0xFFFFFFFFFFFFFFFELL) != v32);
      vDSP_vsorti(__C, __I, 0, __N, -1);
      goto LABEL_42;
    }

    v27 = *__C;
    v28 = __C[1];
    v29 = __C[2];
    if (*__C <= v28)
    {
      if (v27 <= v29)
      {
        if (v28 <= v29)
        {
          v39 = xmmword_1A6038B30;
        }

        else
        {
          v39 = xmmword_1A5FF36F0;
        }

        *__I = v39;
        __I[2] = 0;
        goto LABEL_42;
      }

      v30 = xmmword_1A6038BC0;
    }

    else
    {
      if (v28 <= v29)
      {
        if (v27 <= v29)
        {
          v38 = xmmword_1A6038BD0;
        }

        else
        {
          v38 = xmmword_1A6038BE0;
        }

        *__I = v38;
        v37 = 1;
        goto LABEL_39;
      }

      v30 = xmmword_1A6027760;
    }

    *__I = v30;
    v37 = 2;
LABEL_39:
    __I[2] = v37;
    goto LABEL_42;
  }

  v22 = 0;
  v23 = -1;
  do
  {
    if (__C[v22] > v21)
    {
      v23 = v22;
      v21 = __C[v22];
    }

    ++v22;
  }

  while (__N != v22);
  if (v23 != -1)
  {
    *a10 = v21;
    v24 = (a1 + (*(a2 + 8 * v23) << 6));
    v25 = v24[1];
    *a9 = *v24;
    a9[1] = v25;
    v26 = 1;
LABEL_63:
    *v18 = v26;
  }
}

void sub_1A5DF683C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  operator delete(__p);
  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DF9368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DF9D44(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5DF9DD8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5DFA538(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *std::deque<std::pair<unsigned int,unsigned int>>::emplace_back<std::pair<unsigned int,unsigned int>>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v12);
    }

    result[4] = v7 - 512;
    v13 = *v5;
    result[1] = v5 + 8;
    result = std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(result, &v13);
    v5 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*&v5[(v8 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_1A5DFAB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1A5DFAD98(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5DFB94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v63 = v59;

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v62 - 240), 8);
  _Block_object_dispose((v62 - 176), 8);
  _Block_object_dispose((v62 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7416(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__87(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1A5DFC0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A5DFC31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A5DFC748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1A5DFCFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t VNHashCGAffineTransform(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  v2 = *(a1 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  v3 = *(a1 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = *(a1 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = *&v4 ^ __ROR8__(*&v3 ^ __ROR8__(*&v2 ^ __ROR8__(*&v1, 51), 51), 51);
  if (*(a1 + 32) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = v6 ^ __ROR8__(v5, 51);
  v8 = *(a1 + 40);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return *&v8 ^ __ROR8__(v7, 51);
}

uint64_t VNHashMatrixFloat4x4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = a1.n128_u32[0] << 13;
  if (a1.n128_f32[0] == 0.0)
  {
    v4 = 0;
  }

  v5 = a1.n128_u32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v5 = 0;
  }

  v6 = v4 ^ v5;
  v7 = a1.n128_u32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v7 = 0;
  }

  v8 = v7 ^ (v6 << 13);
  v9 = a1.n128_u32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v9 = 0;
  }

  v10 = v9 ^ __ROR8__(v8, 51);
  v11 = a2.n128_u32[0];
  if (a2.n128_f32[0] == 0.0)
  {
    v11 = 0;
  }

  v12 = v11 ^ __ROR8__(v10, 51);
  v13 = a2.n128_u32[1];
  if (a2.n128_f32[1] == 0.0)
  {
    v13 = 0;
  }

  v14 = v13 ^ __ROR8__(v12, 51);
  v15 = a2.n128_u32[2];
  if (a2.n128_f32[2] == 0.0)
  {
    v15 = 0;
  }

  v16 = v15 ^ __ROR8__(v14, 51);
  v17 = a2.n128_u32[3];
  if (a2.n128_f32[3] == 0.0)
  {
    v17 = 0;
  }

  v18 = v17 ^ __ROR8__(v16, 51);
  v19 = a3.n128_u32[0];
  if (a3.n128_f32[0] == 0.0)
  {
    v19 = 0;
  }

  v20 = v19 ^ __ROR8__(v18, 51);
  v21 = a3.n128_u32[1];
  if (a3.n128_f32[1] == 0.0)
  {
    v21 = 0;
  }

  v22 = v21 ^ __ROR8__(v20, 51);
  v23 = a3.n128_u32[2];
  if (a3.n128_f32[2] == 0.0)
  {
    v23 = 0;
  }

  v24 = v23 ^ __ROR8__(v22, 51);
  v25 = a3.n128_u32[3];
  if (a3.n128_f32[3] == 0.0)
  {
    v25 = 0;
  }

  v26 = v25 ^ __ROR8__(v24, 51);
  v27 = a4.n128_u32[0];
  if (a4.n128_f32[0] == 0.0)
  {
    v27 = 0;
  }

  v28 = v27 ^ __ROR8__(v26, 51);
  v29 = a4.n128_u32[1];
  if (a4.n128_f32[1] == 0.0)
  {
    v29 = 0;
  }

  v30 = v29 ^ __ROR8__(v28, 51);
  v31 = a4.n128_u32[2];
  if (a4.n128_f32[2] == 0.0)
  {
    v31 = 0;
  }

  v32 = v31 ^ __ROR8__(v30, 51);
  v33 = a4.n128_u32[3];
  if (a4.n128_f32[3] == 0.0)
  {
    v33 = 0;
  }

  return v33 ^ __ROR8__(v32, 51);
}

uint64_t VNHashMemory(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v3 = [v2 hash];

  return v3;
}

void sub_1A5DFEB50(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5DFE8FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VNRequestDependencyProcessingOrdinalityAdjustedForConfiguredRequest(uint64_t a1, void *a2)
{
  v3 = [a2 resolvedComputeStageDeviceAssignments];
  v4 = [v3 objectForKeyedSubscript:@"VNComputeStageMain"];
  if (!v4)
  {
    v4 = +[VNComputeDeviceUtilities mostPerformantComputeDevice];
  }

  v5 = a1 - [VNComputeDeviceUtilities performanceScoreForComputeDevice:v4];

  return v5;
}

id _validatedVNBarcodeSymbology(void *a1)
{
  v1 = a1;
  if (_validatedVNBarcodeSymbology_onceToken != -1)
  {
    dispatch_once(&_validatedVNBarcodeSymbology_onceToken, &__block_literal_global_7846);
  }

  v2 = [_validatedVNBarcodeSymbology_ourValidBarcodeSymbologies indexOfObject:v1];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [_validatedVNBarcodeSymbology_ourValidBarcodeSymbologies objectAtIndex:v2];
  }

  return v3;
}

void ___validatedVNBarcodeSymbology_block_invoke()
{
  v2[25] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNBarcodeSymbologyAztec";
  v2[1] = @"VNBarcodeSymbologyCode39";
  v2[2] = @"VNBarcodeSymbologyCode39Checksum";
  v2[3] = @"VNBarcodeSymbologyCode39FullASCII";
  v2[4] = @"VNBarcodeSymbologyCode39FullASCIIChecksum";
  v2[5] = @"VNBarcodeSymbologyCode93";
  v2[6] = @"VNBarcodeSymbologyCode93i";
  v2[7] = @"VNBarcodeSymbologyCode128";
  v2[8] = @"VNBarcodeSymbologyDataMatrix";
  v2[9] = @"VNBarcodeSymbologyEAN8";
  v2[10] = @"VNBarcodeSymbologyEAN13";
  v2[11] = @"VNBarcodeSymbologyI2of5";
  v2[12] = @"VNBarcodeSymbologyI2of5Checksum";
  v2[13] = @"VNBarcodeSymbologyITF14";
  v2[14] = @"VNBarcodeSymbologyPDF417";
  v2[15] = @"VNBarcodeSymbologyQR";
  v2[16] = @"VNBarcodeSymbologyUPCE";
  v2[17] = @"VNBarcodeSymbologyAppClipCode";
  v2[18] = @"VNBarcodeSymbologyCodabar";
  v2[19] = @"VNBarcodeSymbologyGS1DataBar";
  v2[20] = @"VNBarcodeSymbologyGS1DataBarExpanded";
  v2[21] = @"VNBarcodeSymbologyGS1DataBarLimited";
  v2[22] = @"VNBarcodeSymbologyMicroPDF417";
  v2[23] = @"VNBarcodeSymbologyMicroQR";
  v2[24] = @"VNBarcodeSymbologyMSIPlessey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:25];
  v1 = _validatedVNBarcodeSymbology_ourValidBarcodeSymbologies;
  _validatedVNBarcodeSymbology_ourValidBarcodeSymbologies = v0;
}

double vision::mod::ImageAnalyzer::getSceneSaliency(vision::mod::ImageAnalyzer *this, uint64_t a2)
{
  v7 = 16;
  v8 = &v7;
  if ((*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 824), 0x10u) + 20) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v7 = 16;
  v8 = &v7;
  v4 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 784), 0x10u);
  *&result = vision::mod::ImageAnalyzer_Tensor2D::ImageAnalyzer_Tensor2D(this, (v4 + 3)).n128_u64[0];
  return result;
}

int8x16_t vision::mod::ImageAnalyzer_Tensor2D::getVImageBufferFromTensor(uint64_t a1, int8x16_t *a2, int *a3)
{
  *a3 = 0;
  v3 = a2[10].i32[0];
  if (v3 == 262152)
  {
    v4 = 1;
    v5 = 1;
  }

  else
  {
    if (v3 != 65568)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 8563;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v4 = 32;
    v5 = 4;
  }

  *a3 = v4;
  *a1 = a2->i64[0];
  result = vextq_s8(a2[5], a2[5], 8uLL);
  *(a1 + 8) = result;
  *(a1 + 24) = v5 * a2[8].i64[0];
  return result;
}

__n128 vision::mod::ImageAnalyzer_Tensor2D::ImageAnalyzer_Tensor2D(uint64_t a1, __int128 *a2)
{
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  if (!*a2 || (*(a2 + 13) <= 1uLL ? (v2 = *(a2 + 14) >= 2uLL) : (v2 = 1), v2 || *(a2 + 12) >= 2uLL))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8572;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v3 = *a2;
  v4 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v4;
  *a1 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  result = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  *(a1 + 112) = result;
  return result;
}

double vision::mod::ImageAnalyzer::getSceneSegmentation(vision::mod::ImageAnalyzer *this, uint64_t a2)
{
  v7 = 32;
  v8 = &v7;
  if ((*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 824), 0x20u) + 20) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v7 = 32;
  v8 = &v7;
  v4 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>((a2 + 784), 0x20u);
  *&result = vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(this, (v4 + 3)).n128_u64[0];
  return result;
}

__n128 vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(_OWORD *a1, uint64_t a2, unint64_t a3, float *a4, int *a5)
{
  if (*(a2 + 96) <= a3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v26 = 8556;
LABEL_29:
    *exception = v26;
LABEL_30:
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  *a5 = 0;
  v8 = *(a2 + 160);
  if (v8 == 262152)
  {
    v9 = 1;
    v10 = 1;
  }

  else
  {
    if (v8 != 65568)
    {
      goto LABEL_25;
    }

    v9 = 32;
    v10 = 4;
  }

  v11 = a4[1];
  v12 = *a4;
  *a5 = v9;
  v13 = v10 * *(a2 + 128);
  v15 = *(a2 + 80);
  v14 = *(a2 + 88);
  v28.data = (*a2 + v14 * a3 * v13);
  v28.height = v14;
  v28.width = v15;
  v28.rowBytes = v13;
  v16 = v11;
  if (v14 != v12 || v15 != v16)
  {
    v18 = (a2 + 184);
    v19 = ImageProcessing_reallocVImageBuffer(a2 + 184, v16, v12, v10);
    if ((v19 & 0x80) == 0)
    {
      v27 = v19;
      exception = __cxa_allocate_exception(8uLL);
      *exception = v27;
      goto LABEL_30;
    }

    if (*a5 == 1)
    {
      v20 = vImageScale_Planar8(&v28, (a2 + 184), 0, 0x80u);
LABEL_16:
      if (v20 > *(a2 + 176))
      {
        v21 = malloc_type_realloc(*(a2 + 168), v20, 0x9334588BuLL);
        *(a2 + 168) = v21;
        if (!v21)
        {
          exception = __cxa_allocate_exception(8uLL);
          v26 = 8571;
          goto LABEL_29;
        }
      }

      if (*a5 == 1)
      {
        v22 = vImageScale_Planar8(&v28, (a2 + 184), *(a2 + 168), 0);
        goto LABEL_22;
      }

      if (*a5 == 32)
      {
        v22 = vImageScale_PlanarF(&v28, (a2 + 184), *(a2 + 168), 0);
LABEL_22:
        if (!v22)
        {
          goto LABEL_23;
        }

        exception = __cxa_allocate_exception(8uLL);
        v26 = 8570;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (*a5 == 32)
    {
      v20 = vImageScale_PlanarF(&v28, (a2 + 184), 0, 0x80u);
      goto LABEL_16;
    }

LABEL_25:
    exception = __cxa_allocate_exception(8uLL);
    v26 = 8563;
    goto LABEL_29;
  }

  v18 = &v28;
LABEL_23:
  result = *&v18->data;
  v24 = *&v18->width;
  *a1 = *&v18->data;
  a1[1] = v24;
  return result;
}

float vision::mod::ImageAnalyzer_Tensor3D::valueAt(vision::mod::ImageAnalyzer_Tensor3D *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 40) != 65568)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8563;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return *(*this + 4 * *(this + 17) * a4 + 4 * *(this + 16) * a2 + 4 * a3);
}

void vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(vision::mod::ImageAnalyzer_Tensor3D *this)
{
  free(*(this + 21));
  free(*(this + 23));
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  free(*(this + 27));
  *(this + 232) = 0u;
  *(this + 216) = 0u;
}

__n128 vision::mod::ImageAnalyzer_Tensor3D::ImageAnalyzer_Tensor3D(uint64_t a1, __int128 *a2)
{
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  if (!*a2 || (*(a2 + 13) <= 1uLL ? (v2 = *(a2 + 14) >= 2uLL) : (v2 = 1), v2))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8572;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v3 = *a2;
  v4 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v4;
  *a1 = v3;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  result = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  *(a1 + 112) = result;
  return result;
}

void sub_1A5E03C4C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v3 - 152));
  _Unwind_Resume(a1);
}

void _newFaceIDModel(void *a1, int a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = __Block_byref_object_copy__99;
  v13 = __Block_byref_object_dispose__100;
  v14 = "";
  v15 = 0;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL15_newFaceIDModeliPU15__autoreleasingP7NSError_block_invoke;
  v7[3] = &unk_1E77B54B0;
  v7[4] = &v9;
  v8 = a2;
  v5 = _Block_copy(v7);
  if (VNExecuteBlock(v5, a3))
  {
    v6 = v10[7];
    *a1 = v10[6];
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  _Block_object_dispose(&v9, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = __Block_byref_object_copy__122;
  v13 = __Block_byref_object_dispose__123;
  v14 = "";
  v15 = 0;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL15_newFaceIDModeliPU15__autoreleasingP7NSError_block_invoke_28830;
  v7[3] = &unk_1E77B54B0;
  v7[4] = &v9;
  v8 = a2;
  v5 = _Block_copy(v7);
  if (VNExecuteBlock(v5, a3))
  {
    v6 = v10[7];
    *a1 = v10[6];
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  _Block_object_dispose(&v9, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1A5E0416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_1A5E04324(_Unwind_Exception *a1)
{
  std::istream::~istream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v3 - 120));
  _Unwind_Resume(a1);
}

void VNNSDataStreambuf::~VNNSDataStreambuf(std::locale *this)
{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

{

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1AC556B00);
}

{

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

__n128 __Block_byref_object_copy__99(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__100(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__shared_ptr_emplace<vision::mod::FaceIDModel>::__on_zero_shared(uint64_t a1)
{
  free(*(a1 + 368));
  *(a1 + 368) = 0;
  v2 = *(a1 + 616);
  if (v2)
  {
    *(a1 + 624) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 576);
  if (*(a1 + 608) == 1 && *v3)
  {
    free(*v3);
  }

  v4 = 0uLL;
  *v3 = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 1;
  v5 = (a1 + 536);
  if (*(a1 + 568) == 1 && *v5)
  {
    free(*v5);
    v4 = 0uLL;
  }

  *v5 = v4;
  *(a1 + 552) = v4;
  *(a1 + 568) = 1;
  if (*(a1 + 528) == 1)
  {
    v6 = *(a1 + 496);
    if (v6)
    {
      free(v6);
    }
  }

  v7 = 0uLL;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 1;
  v8 = (a1 + 456);
  if (*(a1 + 488) == 1 && *v8)
  {
    free(*v8);
    v7 = 0uLL;
  }

  *v8 = v7;
  *(a1 + 472) = v7;
  *(a1 + 488) = 1;
  if (*(a1 + 448) == 1)
  {
    v9 = *(a1 + 416);
    if (v9)
    {
      free(v9);
    }
  }

  v10 = 0uLL;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1;
  v11 = (a1 + 376);
  if (*(a1 + 408) == 1 && *v11)
  {
    free(*v11);
    v10 = 0uLL;
  }

  *v11 = v10;
  *(a1 + 392) = v10;
  *(a1 + 408) = 1;
  v12 = (a1 + 296);
  if (*(a1 + 336) == 1 && *v12)
  {
    free(*v12);
  }

  *(a1 + 328) = 0;
  *v12 = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 1;
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(a1 + 248);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(a1 + 208);
  if (*(a1 + 200) == 1)
  {
    v13 = *(a1 + 160);
    if (v13)
    {
      free(v13);
    }
  }

  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 200) = 1;
  if (*(a1 + 152) == 1)
  {
    v14 = *(a1 + 112);
    if (v14)
    {
      free(v14);
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 152) = 1;

  return std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(a1 + 24);
}

void std::__shared_ptr_emplace<vision::mod::FaceIDModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void ___ZL54_serialNumberToPersonUniqueIdentifierDictionaryClassesv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = VNEntityUniqueIdentifierClasses();
  v2 = [v1 mutableCopy];

  [v2 addObject:objc_opt_class()];
  v3 = [v2 copy];
  v4 = _serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes;
  _serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes = v3;

  objc_autoreleasePoolPop(v0);
}

void sub_1A5E048FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E04D34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E051A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose((v40 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8115(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_1F1975C88;
  *(result + 56) = *(a2 + 56);
  return result;
}

void sub_1A5E055BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void **a15, void *a16, uint64_t a17, char a18)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a16);

  a15 = &a18;
  std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

void *std::map<int,double>::map[abi:ne200100](void *result, void *a2)
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

void std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5E063C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36, void *__p, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  v51 = v45;
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Block_object_dispose(&a40, 8);

  _Block_object_dispose((v47 - 216), 8);
  v49 = *(v47 - 144);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(v47 - 112);
  if (v50)
  {
    *(v47 - 104) = v50;
    operator delete(v50);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_48c52_ZTSNSt3__110shared_ptrIN6vision3mod11FaceIDModelEEE64c69_ZTSNSt3__110shared_ptrIN6vision3mod28ImageDescriptorBufferFloat32EEE80c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(void *a1)
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

uint64_t __copy_helper_block_ea8_48c52_ZTSNSt3__110shared_ptrIN6vision3mod11FaceIDModelEEE64c69_ZTSNSt3__110shared_ptrIN6vision3mod28ImageDescriptorBufferFloat32EEE80c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(void *a1, void *a2)
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

void sub_1A5E066A8(_Unwind_Exception *exception_object)
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

void sub_1A5E06B50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1A5E07980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v15);

  vision::mod::ImageDescriptorProcessorEspresso::Options::~Options(v10);
  _Unwind_Resume(a1);
}

void sub_1A5E07D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, vision::mod::ImageClassifierAbstract *a16, void *a17, void *a18)
{
  __cxa_free_exception(v24);

  shared_owners = v21[6].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(a16);

  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v27);

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  vision::mod::ImageDescriptorProcessorEspresso::Options::~Options(v18);
  _Unwind_Resume(a1);
}

void vision::mod::ImageDescriptor_EspressoJunk::~ImageDescriptor_EspressoJunk(vision::mod::ImageDescriptor_EspressoJunk *this)
{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptor_EspressoJunk>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19723C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

BOOL VNEntityIdentificationModelIOWriteUInt32ToOutputStream(int a1, void *a2, CC_MD5_CTX *a3, void *a4)
{
  data = a1;
  v6 = a2;
  v7 = [v6 write:&data maxLength:4];
  if (v7 == 4)
  {
    CC_MD5_Update(a3, &data, 4u);
  }

  else if (a4)
  {
    v8 = [v6 streamError];
    *a4 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v8);
  }

  return v7 == 4;
}

uint64_t VNEntityIdentificationModelIOWriteBufferToOutputStream(const void *a1, CC_LONG a2, void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a3;
  if (!a1)
  {
    if (a5)
    {
      VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"buffer cannot be nil", 0);
      *a5 = v10 = 0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!VNEntityIdentificationModelIOWriteUInt32ToOutputStream(a2, v9, a4, a5))
  {
    goto LABEL_11;
  }

  if (a2)
  {
    if ([v9 write:a1 maxLength:a2] == a2)
    {
      CC_MD5_Update(a4, a1, a2);
      goto LABEL_6;
    }

    if (a5)
    {
      v11 = [v9 streamError];
      *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"failed to write to data stream", v11);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v10 = 1;
LABEL_12:

  return v10;
}

uint64_t VNEntityIdentificationModelIOWriteTaggedBufferToOutputStream(int a1, const void *a2, CC_LONG a3, void *a4, CC_MD5_CTX *a5, void *a6)
{
  v11 = a4;
  if (VNEntityIdentificationModelIOWriteUInt32ToOutputStream(a1, v11, a5, a6))
  {
    v12 = VNEntityIdentificationModelIOWriteBufferToOutputStream(a2, a3, v11, a5, a6);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t VNEntityIdentificationModelIOWriteTaggedUInt32ToOutputStream(int a1, int a2, void *a3, CC_MD5_CTX *a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  if (VNEntityIdentificationModelIOWriteUInt32ToOutputStream(a1, v8, a4, a5))
  {
    v9 = VNEntityIdentificationModelIOWriteBufferToOutputStream(&v11, 4u, v8, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t VNEntityIdentificationModelIOWriteTaggedNSObjectToOutputStream(int a1, void *a2, void *a3, CC_MD5_CTX *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (v9)
  {
    if (VNEntityIdentificationModelIOWriteUInt32ToOutputStream(a1, v10, a4, a5))
    {
      v11 = v9;
      v12 = v10;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:a5];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        v16 = v12;
        v17 = [v15 length];
        if (HIDWORD(v17))
        {
          if (a5)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data overflow to %lu bytes", v17];
            *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, v18, 0);

            a5 = 0;
          }
        }

        else
        {
          a5 = VNEntityIdentificationModelIOWriteBufferToOutputStream([v15 bytes], v17, v16, a4, a5);
        }
      }

      else
      {
        a5 = 0;
      }
    }

    else
    {
      a5 = 0;
    }
  }

  else
  {
    a5 = 1;
  }

  return a5;
}

BOOL VNEntityIdentificationModelIOReadUInt32FromInputStream(void *a1, const void *a2, CC_MD5_CTX *a3, void *a4)
{
  v7 = a1;
  v8 = [v7 read:a2 maxLength:4];
  if (v8 == 4)
  {
    CC_MD5_Update(a3, a2, 4u);
  }

  else if (a4)
  {
    v9 = [v7 streamError];
    *a4 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v9);
  }

  return v8 == 4;
}

BOOL VNEntityIdentificationModelIOReadBufferFromInputStream(void *a1, CC_LONG a2, const void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 read:a3 maxLength:a2];
  if (v11 == a2)
  {
    CC_MD5_Update(a4, a3, a2);
  }

  else if (a5)
  {
    v12 = [v9 streamError];
    *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v12);
  }

  return v11 == v10;
}

uint64_t VNEntityIdentificationModelIOReadPastUnknownTagData(void *a1, CC_MD5_CTX *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v12 = 0;
  v6 = 0;
  if (VNEntityIdentificationModelIOReadUInt32FromInputStream(v5, &v12, a2, a3))
  {
    v7 = v12;
    v8 = v5;
    if (v7)
    {
      while (1)
      {
        v9 = v7 >= 0x100 ? 256 : v7;
        if ([v8 read:data maxLength:v9] != v9)
        {
          break;
        }

        CC_MD5_Update(a2, data, v9);
        v7 -= v9;
        if (!v7)
        {
          goto LABEL_8;
        }
      }

      if (a3)
      {
        v10 = [v8 streamError];
        *a3 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, @"unexpected end of data stream", v10);
      }

      v6 = 0;
    }

    else
    {
LABEL_8:
      v6 = 1;
    }
  }

  return v6;
}

void *VNEntityIdentificationModelIOReadBufferOfExpectedLengthFromInputStream(void *a1, uint64_t a2, const void *a3, CC_MD5_CTX *a4, void *a5)
{
  v9 = a1;
  v12 = 0;
  if (!VNEntityIdentificationModelIOReadUInt32FromInputStream(v9, &v12, a4, a5))
  {
    goto LABEL_6;
  }

  if (v12 != a2)
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encountered unexpected length of %u, instead of %u", v12, a2];
    *a5 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, v10, 0);

LABEL_6:
    a5 = 0;
    goto LABEL_7;
  }

  a5 = VNEntityIdentificationModelIOReadBufferFromInputStream(v9, a2, a3, a4, a5);
LABEL_7:

  return a5;
}

void sub_1A5E09B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a23);

  _Unwind_Resume(a1);
}

void sub_1A5E09F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a23);

  _Unwind_Resume(a1);
}

uint64_t std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5E0A7BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *__Block_byref_object_copy__8547(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void __destroy_helper_block_ea8_56c62_ZTSNSt3__16vectorI20_Geometry2D_point2D_NS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_56c62_ZTSNSt3__16vectorI20_Geometry2D_point2D_NS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<_Geometry2D_point2D_>::__init_with_size[abi:ne200100]<_Geometry2D_point2D_*,_Geometry2D_point2D_*>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
}

void sub_1A5E0AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = VNFaceExpressionDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5E0B098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<vision::mod::LandmarkAttributes>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

vision::mod::LandmarkAttributes **std::unique_ptr<vision::mod::LandmarkAttributes>::~unique_ptr[abi:ne200100](vision::mod::LandmarkAttributes **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vision::mod::LandmarkAttributes::~LandmarkAttributes(v2);
    MEMORY[0x1AC556B00]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vision::mod::LandmarkAttributes *,std::shared_ptr<vision::mod::LandmarkAttributes>::__shared_ptr_default_delete<vision::mod::LandmarkAttributes,vision::mod::LandmarkAttributes>,std::allocator<vision::mod::LandmarkAttributes>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN6vision3mod18LandmarkAttributesEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

vision::mod::LandmarkAttributes *std::__shared_ptr_pointer<vision::mod::LandmarkAttributes *,std::shared_ptr<vision::mod::LandmarkAttributes>::__shared_ptr_default_delete<vision::mod::LandmarkAttributes,vision::mod::LandmarkAttributes>,std::allocator<vision::mod::LandmarkAttributes>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    vision::mod::LandmarkAttributes::~LandmarkAttributes(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::LandmarkAttributes *,std::shared_ptr<vision::mod::LandmarkAttributes>::__shared_ptr_default_delete<vision::mod::LandmarkAttributes,vision::mod::LandmarkAttributes>,std::allocator<vision::mod::LandmarkAttributes>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t __VNFrameworkBundle_block_invoke()
{
  VNFrameworkBundle::bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

id VNErrorForCVMLStatus(id a1)
{
  v1 = a1;
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == -29)
    {
LABEL_5:
      v1 = [VNError errorForCancellationOfRequest:0];
      goto LABEL_8;
    }

    if (a1 == 128)
    {
      v1 = 0;
    }

    else
    {
      if (a1 == 99)
      {
        goto LABEL_5;
      }

      v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"failure with status %lld", a1];
      [v2 appendFormat:@" (%s)", CVML_getStatusDescription(v1)];
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s ", CVML_getModuleDescription(v1)];
      [v2 insertString:v3 atIndex:0];

      v6 = *MEMORY[0x1E696A578];
      v7[0] = v2;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
      v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Vision" code:9 userInfo:v4];
    }
  }

LABEL_8:

  return v1;
}

uint64_t VNExecuteBlock(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 2))(v3, a2);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1A5E0BE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 4)
  {
    v15 = __cxa_begin_catch(exception_object);
    if (v13)
    {
      *v13 = VNErrorForCVMLStatus(*v15);
    }
  }

  else
  {
    if (a2 != 3)
    {
      v20 = objc_begin_catch(exception_object);
      if (a2 == 2)
      {
        v21 = v20;
        if (v13)
        {
          v22 = [MEMORY[0x1E695DF90] dictionary];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encountered an unexpected condition: %@"];
          [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A578]];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v22 setObject:v21 forKeyedSubscript:@"NSException"];
          }

          *v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Vision" code:9 userInfo:v22];
        }

        objc_end_catch();
      }

      else
      {
        if (v13)
        {
          a10 = *MEMORY[0x1E696A578];
          a11 = @"encountered unknown exception";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
          *v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Vision" code:11 userInfo:v24];
        }

        objc_end_catch();
      }

LABEL_20:
      JUMPOUT(0x1A5E0BDD0);
    }

    v16 = __cxa_begin_catch(exception_object);
    if (v13)
    {
      v17 = MEMORY[0x1E696AEC0];
      (*(*v16 + 16))(v16);
      v18 = [v17 stringWithFormat:@"encountered an unexpected condition: %s"];
      a12 = *MEMORY[0x1E696A578];
      a13 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a13 forKeys:&a12 count:1];
      *v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Vision" code:9 userInfo:v19];
    }
  }

  __cxa_end_catch();
  goto LABEL_20;
}

uint64_t ___Z13_VisionLoggerv_block_invoke()
{
  _VisionLogger(void)::_visionLogger = os_log_create([@"com.apple.Vision" UTF8String], objc_msgSend(@"VisionLog", "UTF8String"));

  return MEMORY[0x1EEE66BB8]();
}

void VNValidatedLog(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __VNValidatedLog_block_invoke;
    aBlock[3] = &__block_descriptor_36_e24_v24__0____CFString__8_16l;
    v14 = a1;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if ((v10 & 6) != 0)
    {
      (*(v11 + 2))(v11, a2, &a9);
    }
  }
}

void sub_1A5E0DE58(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void __VNValidatedLog_block_invoke(uint64_t a1, CFStringRef format, va_list arguments)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, arguments);
  if (v4)
  {
    v5 = v4;
    CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      if (_VisionLogger(void)::onceToken != -1)
      {
        dispatch_once(&_VisionLogger(void)::onceToken, &__block_literal_global_8862);
      }

      v8 = _VisionLogger(void)::_visionLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32) - 1;
        if (v9 > 3)
        {
          v10 = "Unknown type: ";
        }

        else
        {
          v10 = off_1E77B3260[v9];
        }

        v11 = 136315394;
        v12 = v10;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&dword_1A5AFB000, v8, OS_LOG_TYPE_DEFAULT, "%s%s\n", &v11, 0x16u);
      }

      CFRelease(v5);
    }
  }
}

id VNPersonsModelErrorForUnknownPersonUniqueIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown person (%@)", a1];
  v2 = VNPersonsModelErrorWithLocalizedDescription(6, v1);

  return v2;
}

id VNPersonsModelErrorWithLocalizedDescription(uint64_t a1, void *a2)
{
  v2 = VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(a1, a2, 0);

  return v2;
}

id VNPersonsModelErrorWithLocalizedDescriptionAndUnderlyingError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v7 initWithObjectsAndKeys:{v5, *MEMORY[0x1E696A578], v6, *MEMORY[0x1E696AA08], 0}];
  v9 = VNPersonsModelErrorWithUserInfo(a1, v8);

  return v9;
}

id VNPersonsModelErrorWithUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.vis.VNPersonsModel" code:a1 userInfo:v3];

  return v4;
}

id VNPersonsModelErrorForInvalidModelData(void *a1)
{
  v1 = VNPersonsModelErrorWithLocalizedDescription(2, a1);

  return v1;
}

id ___ZL43_readVersion1PersonAndFaceObservationsChunkP13NSInputStreamP19NSMutableDictionaryP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"face observation %lu of %lu for person identifier '%@'", a1[5] + 1, a1[6], a1[4]];

  return v1;
}

uint64_t __Block_byref_object_copy__9010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL ___ZL24_readTaggedObjectOfClassP13NSInputStreamjP10objc_classP19NSMutableDictionaryP14CC_MD5state_stPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:*(a1 + 32) error:a2];
  v5 = v4;
  if (v4)
  {
    [v4 setRequiresSecureCoding:1];
    [v5 setDecodingFailurePolicy:1];
    if (*(a1 + 56) == 1919895117)
    {
      [v5 setClass:objc_opt_class() forClassName:@"VNPersonsModelFaceModel"];
    }

    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:a1 + 48 count:1];
    v7 = *MEMORY[0x1E696A508];
    v20 = 0;
    v8 = [v5 decodeTopLevelObjectOfClasses:v6 forKey:v7 error:&v20];
    v9 = v20;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = v12 != 0;
    if (a2 && !v12)
    {
      if (v9)
      {
        v14 = v9;
        *a2 = v9;
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = NSStringFromClass(*(a1 + 48));
        v17 = [v15 stringWithFormat:@"could not decode object of class %@", v16];
        v18 = VNPersonsModelErrorForIOError(v17);
        *a2 = v18;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id VNPersonsModelErrorForIOError(void *a1)
{
  v1 = VNPersonsModelErrorWithLocalizedDescription(1, a1);

  return v1;
}

void sub_1A5E106D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  objc_begin_catch(a1);
  JUMPOUT(0x1A5E1066CLL);
}

id VNPersonsModelErrorForUnacceptableModelVersion(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot accept model version %lu", a1];
  v2 = VNPersonsModelErrorWithLocalizedDescription(2, v1);

  return v2;
}

void sub_1A5E1178C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5E11D64(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id VNPersonsModelErrorForReadOnlyModelWithLocalizedDescription(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{v1, *MEMORY[0x1E696A578], 0}];
  v4 = VNPersonsModelErrorWithUserInfo(3, v3);

  return v4;
}

id VNPersonsModelErrorCancelledOperation()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A578];
  v4[0] = @"operation was cancelled";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Vision" code:1 userInfo:v0];

  return v1;
}

id VNPersonsModelErrorForUnsupportedAlgorithm(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"unsupported algorithm %@", v4];

  v6 = VNPersonsModelErrorWithLocalizedDescription(7, v5);

  return v6;
}

id VNPersonsModelErrorForUnimplementedMethod(uint64_t a1, uint64_t a2)
{
  v2 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];

  return v2;
}

id VNPersonsModelErrorForIncompatibleFaceprint(void *a1)
{
  v1 = VNPersonsModelErrorWithLocalizedDescription(8, a1);

  return v1;
}

void *vision::mod::ImageDescriptorBufferFloat32::getRepresentative(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != 1)
  {
    if (v2)
    {
      v3 = malloc_type_realloc(*(a1 + 112), 4 * v2, 0x100004052888210uLL);
      *(a1 + 112) = v3;
      if (v3)
      {
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }

      exception = __cxa_allocate_exception(8uLL);
      v7 = 3707;
    }

    else
    {
      syslog(5, "ERROR: Cannot compute the representative of an empty buffer");
      exception = __cxa_allocate_exception(8uLL);
      v7 = 3710;
    }

    *exception = v7;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = (*(*a1 + 24))(a1);
  if (!v4)
  {
    return 0;
  }
}

void sub_1A5E1749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  MEMORY[0x1AC556B00](v10, 0x10B1C408DA78774);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorBufferFloat32::computeSelfDistances@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 72);
  if (v3 > 1)
  {
    v4 = this;
    std::vector<float>::vector[abi:ne200100](a2, ((v3 - 1) * v3) >> 1);
    DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v4, 0);
    v6 = 0;
    v7 = v3 & 0x7FFFFFFF;
    v8 = 1;
    do
    {
      v9 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v4, v8);
      this = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(v4, v9, DataForKthDescriptor, v8, (*a2 + 4 * v6));
      if ((this & 0x80) == 0)
      {
        v10 = this;
        exception = __cxa_allocate_exception(8uLL);
        *exception = v10;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      v6 += v8++;
    }

    while (v7 != v8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void sub_1A5E175DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(vision::mod::ImageDescriptorBufferFloat32 *this, const float *__A, const float *a3, vDSP_Length __N, float *__C)
{
  v5 = 3709;
  if (!__A)
  {
    return v5;
  }

  v6 = a3;
  if (!a3)
  {
    return v5;
  }

  v7 = __C;
  if (!__C)
  {
    return v5;
  }

  v8 = __N;
  if (__N <= 7)
  {
    if (__N)
    {
      v5 = 3712;
      while (1)
      {
        v11 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, __A, v6, v7);
        if ((v11 & 0x80) == 0)
        {
          break;
        }

        v6 = (v6 + *(this + 8));
        ++v7;
        if (!--v8)
        {
          return v5;
        }
      }

      goto LABEL_23;
    }

    return 3712;
  }

  v12 = *(this + 26);
  switch(v12)
  {
    case 3:
      v16 = 0.5;
      vDSP_vfill(&v16, __C, 1, __N);
      goto LABEL_19;
    case 2:
      __Aa = 0.5;
      vDSP_vfill(&__Aa, __C, 1, __N);
LABEL_19:
      cblas_sgemv_NEWLAPACK();
      return 3712;
    case 1:
      v5 = 3712;
      while (1)
      {
        v11 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, __A, v6, v7);
        if ((v11 & 0x80) == 0)
        {
          break;
        }

        v6 = (v6 + *(this + 8));
        ++v7;
        if (!--v8)
        {
          return v5;
        }
      }

LABEL_23:
      v14 = v11;
      exception = __cxa_allocate_exception(8uLL);
      *exception = v14;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  syslog(5, "ERROR: Unknown distance function");
  return 3702;
}

uint64_t vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(vision::mod::ImageDescriptorBufferFloat32 *this, const float *__A, const float *a3, float *__C)
{
  v4 = 3709;
  if (__A && a3)
  {
    *__C = 0.0;
    v6 = *(this + 26);
    switch(v6)
    {
      case 3:
        v9 = 0.0;
        vDSP_dotpr(__A, 1, a3, 1, &v9, *(this + 12));
        v7 = (v9 + 1.0) * 0.5;
        break;
      case 2:
        __Ca = 0.0;
        vDSP_dotpr(__A, 1, a3, 1, &__Ca, *(this + 12));
        v7 = ((__Ca + 1.0) * -0.5) + 1.0;
        break;
      case 1:
        vDSP_distancesq(__A, 1, a3, 1, __C, *(this + 12));
        v7 = sqrtf(*__C);
        break;
      default:
        syslog(5, "ERROR: Unknown distance function");
        return 3702;
    }

    *__C = v7;
    return 3712;
  }

  return v4;
}

float vision::mod::ImageDescriptorBufferFloat32::computeDistanceFrom(vision::mod::ImageDescriptorBufferFloat32 *this, const vision::mod::ImageDescriptorBufferAbstract *a2)
{
  if (*(this + 9) != 1 || *(a2 + 9) != 1)
  {
    syslog(5, "ERROR: Invalid number of descriptors, should be 1");
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    goto LABEL_9;
  }

  DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
  v6 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, 0);
  __C = 0.0;
  v7 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptors(this, DataForKthDescriptor, v6, &__C);
  if ((v7 & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = v7;
LABEL_9:
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return __C;
}

void vision::mod::ImageDescriptorBufferFloat32::computeDistancesFrom(vision::mod::ImageDescriptorBufferFloat32 *this@<X0>, vDSP_Length *lpsrc@<X1>, float **a3@<X8>)
{
  if (!v6)
  {
    __cxa_bad_cast();
  }

  if (v6 == this)
  {
    v9 = *(*this + 96);

    v9(this);
  }

  else
  {
    if (*(v6 + 12) != *(this + 12))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3708;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v7 = *(this + 9);
    v8 = lpsrc[9];
    std::vector<float>::vector[abi:ne200100](a3, v8 * v7);
    if (v7 == 1 && v8 == 1)
    {
      **a3 = (*(*this + 88))(this, lpsrc);
    }

    else if (v7 == 1)
    {
      DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      v11 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
      v12 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v11, DataForKthDescriptor, v8, *a3);
      if ((v12 & 0x80) == 0)
      {
        v13 = __cxa_allocate_exception(8uLL);
        *v13 = v12;
        __cxa_throw(v13, MEMORY[0x1E69E54B0], 0);
      }
    }

    else if (v8 == 1)
    {
      v14 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      v15 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, 0);
      v16 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v14, v15, v7, *a3);
      if ((v16 & 0x80) == 0)
      {
        v17 = __cxa_allocate_exception(8uLL);
        *v17 = v16;
        __cxa_throw(v17, MEMORY[0x1E69E54B0], 0);
      }
    }

    else
    {
      v18 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(lpsrc, 0);
      if (v7 >= 1)
      {
        v19 = v18;
        v20 = 0;
        v21 = 0;
        v22 = v7 & 0x7FFFFFFF;
        do
        {
          v23 = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v20);
          v24 = vision::mod::ImageDescriptorBufferFloat32::computeDistanceBetweenDescriptorAndDescriptors(this, v23, v19, v8, &(*a3)[v21]);
          if ((v24 & 0x80) == 0)
          {
            v25 = __cxa_allocate_exception(8uLL);
            *v25 = v24;
            __cxa_throw(v25, MEMORY[0x1E69E54B0], 0);
          }

          v21 += v8;
          ++v20;
        }

        while (v22 != v20);
      }
    }
  }
}

void sub_1A5E17C3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::descriptorBufferUnpackedScores(void *a1, uint64_t *a2, std::vector<unsigned int> *a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = a2[9];
  v8 = (*(*a2 + 104))(a2) >> 2;
  if (v8 == a4)
  {
    a3->__end_ = a3->__begin_;
    (*(*a2 + 24))(a2);
    operator new();
  }

  if (v8 == a4 + 1)
  {
    std::vector<float>::resize(a3, v7);
    __p = 0;
    v11 = 0;
    v12 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    if (v7 != (v11 - __p) >> 3)
    {
      std::vector<long long>::resize(&__p, v7);
    }

    malloc_type_malloc(v7 * 4 * (v8 - 1), 0x100004052888210uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = 3708;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void sub_1A5E18010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferFloat32 *,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferFloat32>,std::allocator<vision::mod::ImageDescriptorBufferFloat32>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN6vision3mod28ImageDescriptorBufferFloat32EE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferFloat32 *,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferFloat32>,std::allocator<vision::mod::ImageDescriptorBufferFloat32>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::ImageDescriptorBufferFloat32 *,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>::__shared_ptr_default_delete<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferFloat32>,std::allocator<vision::mod::ImageDescriptorBufferFloat32>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E182AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9973(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t Face3D_estimateCameraProjective(uint64_t a1, uint64_t a2, float *a3, uint64_t a4)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = *(a1 + 16);
    if (v6 != *(a2 + 24))
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 2172;
      goto LABEL_59;
    }

    *__dst = 0u;
    *__C = 0u;
    Geometry2D_mallocHomo2D(__dst, v6);
    v9 = 0;
    v10 = 2171;
    if (!__dst[0] || !__dst[1] || !__C[0])
    {
      goto LABEL_58;
    }

    v11 = 0;
    v12 = 0;
    if (SLODWORD(__C[1]) < 1)
    {
      goto LABEL_59;
    }

    if (*a1 && *(a1 + 8) && (v13 = *(a1 + 16), v13 >= 1))
    {
      if (v13 == LODWORD(__C[1]))
      {
        memcpy(__dst[0], *a1, 4 * LODWORD(__C[1]));
        memcpy(__dst[1], *(a1 + 8), 4 * *(a1 + 16));
        LODWORD(__A) = 1065353216;
        vDSP_vfill(&__A, __C[0], 1, *(a1 + 16));
        __A = 0u;
        *v93 = 0u;
        Geometry2D_mallocHomo2D(&__A, *(a1 + 16));
        v9 = 0;
        v14 = __A;
        v10 = 2171;
        if (__A)
        {
          v15 = *(&__A + 1);
          if (*(&__A + 1))
          {
            v16 = v93[0];
            if (v93[0])
            {
              v11 = 0;
              v12 = 0;
              if (SLODWORD(v93[1]) < 1)
              {
                goto LABEL_59;
              }

              v17 = __dst[0];
              if (!__dst[0] || (v18 = __dst[1]) == 0 || (v19 = __C[0]) == 0)
              {
                v9 = 0;
                v11 = 0;
                v12 = 0;
                v10 = 1916;
                goto LABEL_59;
              }

              v9 = 0;
              v10 = 1916;
              if (SLODWORD(__C[1]) >= 1)
              {
                v11 = 0;
                v12 = 0;
                if (LODWORD(__C[1]) == LODWORD(v93[1]))
                {
                  v20 = 0;
                  v21 = a3[3];
                  v22 = a3[4];
                  v23 = a3[7];
                  v24 = 1.0 / *a3;
                  v25 = *a3 * v22;
                  v26 = -v21 / v25;
                  v27 = ((v21 * v23) / v25) - (a3[6] / *a3);
                  v28 = 1.0 / v22;
                  v29 = 4 * LODWORD(v93[1]);
                  v30 = -v23 / v22;
                  do
                  {
                    *(v14 + v20) = ((v26 * *&v18[v20]) + (v24 * *&v17[v20])) + (v27 * v19[v20 / 4]);
                    *(v15 + v20) = (v30 * v19[v20 / 4]) + (v28 * *&v18[v20]);
                    v20 += 4;
                  }

                  while (v29 != v20);
                  memcpy(v16, v19, v29);
                  v31 = 16 * *(a2 + 24);
                  v32 = malloc_type_malloc(v31, 0x100004052888210uLL);
                  v12 = v32;
                  if (v32)
                  {
                    v33 = 4 * *(a2 + 24);
                    memcpy(v32, *a2, v33);
                    v34 = &v12[4 * *(a2 + 24)];
                    memcpy(v34, *(a2 + 8), v33);
                    v35 = &v34[4 * *(a2 + 24)];
                    memcpy(v35, *(a2 + 16), v33);
                    v36 = *(a2 + 24);
                    LODWORD(v90[0]) = 1065353216;
                    vDSP_vfill(v90, &v35[4 * v36], 1, v36);
                    v9 = malloc_type_malloc(v31, 0x100004052888210uLL);
                    if (v9)
                    {
                      v11 = malloc_type_malloc(8 * *(a2 + 24), 0x100004052888210uLL);
                      if (v11)
                      {
                        *v90 = 0u;
                        *v91 = 0u;
                        Geometry2D_mallocHomo2D(v90, *(a1 + 16));
                        v10 = 2171;
                        if (v90[0])
                        {
                          if (v90[1])
                          {
                            if (v91[0])
                            {
                              if (SLODWORD(v91[1]) >= 1)
                              {
                                *v88 = 0u;
                                *v89 = 0u;
                                Geometry2D_mallocHomo2D(v88, *(a1 + 16));
                                v10 = 2171;
                                if (v88[0])
                                {
                                  if (v88[1])
                                  {
                                    if (v89[0])
                                    {
                                      if (SLODWORD(v89[1]) >= 1)
                                      {
                                        *__src = 0u;
                                        *v87 = 0u;
                                        Geometry2D_cloneHomo2D(__src, &__A);
                                        v10 = 2171;
                                        if (__src[0])
                                        {
                                          if (__src[1] && v87[0] && SLODWORD(v87[1]) >= 1)
                                          {
                                            v37 = 0;
                                            v82 = "The %d argument had an illegal value.";
                                            while (1)
                                            {
                                              v85 = v37;
                                              v38 = SLODWORD(v87[1]);
                                              v39 = 4 * SLODWORD(v87[1]);
                                              memcpy(v11, __src[0], v39);
                                              memcpy(&v11[v38], __src[1], v39);
                                              memcpy(v9, v12, v31);
                                              v100 = *(a2 + 24);
                                              v99 = 78;
                                              v98[3] = 2;
                                              v98[4] = 4;
                                              v98[1] = v100;
                                              v98[2] = v100;
                                              v97 = -1;
                                              v98[0] = 0;
                                              sgels_NEWLAPACK();
                                              v97 = v96;
                                              v40 = malloc_type_malloc(4 * v96, 0x100004052888210uLL);
                                              if (!v40)
                                              {
                                                v10 = 2171;
                                                goto LABEL_69;
                                              }

                                              sgels_NEWLAPACK();
                                              if (v98[0] > 0)
                                              {
                                                break;
                                              }

                                              if ((v98[0] & 0x80000000) != 0)
                                              {
                                                v82 = "The %d-th diagonal element of the triangular factor of A is zero, so that A does not have full rank; the least squares solution could not be computed.";
                                                break;
                                              }

                                              v41 = *v11;
                                              v42 = v11[1];
                                              v43 = v11[2];
                                              v44 = v11[3];
                                              v45 = &v11[v100];
                                              v46 = *v45;
                                              v47 = v45[1];
                                              v48 = v45[2];
                                              v49 = v45[3];
                                              free(v40);
                                              v50 = sqrtf((1.0 / sqrtf(((v42 * v42) + (v41 * v41)) + (v43 * v43))) * (1.0 / sqrtf(((v47 * v47) + (v46 * v46)) + (v48 * v48))));
                                              *(a4 + 44) = v50;
                                              v51 = v41 * v50;
                                              v52 = v42 * v50;
                                              v53 = v43 * v50;
                                              v54 = v44 * v50;
                                              v55 = v46 * v50;
                                              v56 = v47 * v50;
                                              v57 = v48 * v50;
                                              v58 = (v52 * (v48 * v50)) - (v53 * (v47 * v50));
                                              v59 = (v53 * v55) - (v51 * (v48 * v50));
                                              v83 = v59;
                                              v84 = v52;
                                              v60 = (v51 * v56) - (v52 * v55);
                                              *v101 = v58;
                                              *&v101[1] = v59;
                                              *&v101[2] = v60;
                                              *&v101[3] = v50;
                                              *(a4 + 36) = v54;
                                              *(a4 + 40) = v49 * v50;
                                              v10 = Geometry2D_metricToPixelHomo2D(__src, a3, v90);
                                              if ((v10 & 0x80) == 0)
                                              {
                                                goto LABEL_59;
                                              }

                                              v61 = *(a2 + 24);
                                              v62 = v87[0];
                                              v100 = 0;
                                              vDSP_vfill(&v100, v87[0], 1, v61);
                                              v63 = 0;
                                              LODWORD(v64) = 0;
                                              do
                                              {
                                                if (v61 >= 1)
                                                {
                                                  v64 = v64;
                                                  v65 = *&v101[v63];
                                                  v66 = v62;
                                                  v67 = v61;
                                                  do
                                                  {
                                                    *v66 = *v66 + (*&v12[4 * v64] * v65);
                                                    ++v66;
                                                    ++v64;
                                                    --v67;
                                                  }

                                                  while (v67);
                                                }

                                                ++v63;
                                              }

                                              while (v63 != 4);
                                              vDSP_vsdiv(v87[0], 1, (a4 + 44), v87[0], 1, *(a2 + 24));
                                              MEMORY[0x1AC558750](__A, 1, v87[0], 1, __src[0], 1, *(a2 + 24));
                                              MEMORY[0x1AC558750](*(&__A + 1), 1, v87[0], 1, __src[1], 1, *(a2 + 24));
                                              v10 = Geometry2D_metricToPixelHomo2D(__src, a3, v88);
                                              if ((v10 & 0x80) == 0)
                                              {
                                                goto LABEL_59;
                                              }

                                              v68 = LODWORD(v91[1]);
                                              if (SLODWORD(v91[1]) > 0)
                                              {
                                                v69 = v90[0];
                                                v70 = v90[1];
                                                v71 = 0.0;
                                                v72 = v88[0];
                                                v73 = v88[1];
                                                do
                                                {
                                                  v74 = *v69++;
                                                  v75 = v74;
                                                  v76 = *v72++;
                                                  v77 = v76;
                                                  v78 = *v70++;
                                                  v79 = v78;
                                                  v80 = *v73++;
                                                  v71 = v71 + (((v79 - v80) * (v79 - v80)) + ((v75 - v77) * (v75 - v77)));
                                                  --v68;
                                                }

                                                while (v68);
                                                if (v85 <= 0x3E6)
                                                {
                                                  v37 = v85 + 1;
                                                  if (v71 > 1.0)
                                                  {
                                                    continue;
                                                  }
                                                }
                                              }

                                              *a4 = v51;
                                              *(a4 + 4) = v55;
                                              *(a4 + 24) = v53;
                                              *(a4 + 28) = v57;
                                              *(a4 + 8) = v58;
                                              *(a4 + 12) = v84;
                                              *(a4 + 16) = v56;
                                              *(a4 + 20) = v83;
                                              *(a4 + 32) = v60;
                                              goto LABEL_59;
                                            }

                                            syslog(3, v82, v98[0], &v97, v98);
                                            v10 = 2159;
LABEL_69:
                                            free(v40);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v9 = 0;
                  }

                  v11 = 0;
LABEL_65:
                  v10 = 2171;
                }

LABEL_59:
                free(__dst[0]);
                __dst[0] = 0;
                free(__dst[1]);
                __dst[1] = 0;
                free(__C[0]);
                __C[0] = 0;
                LODWORD(__C[1]) = 0;
                free(__A);
                *&__A = 0;
                free(*(&__A + 1));
                *(&__A + 1) = 0;
                free(v93[0]);
                v93[0] = 0;
                LODWORD(v93[1]) = 0;
                free(v90[0]);
                v90[0] = 0;
                free(v90[1]);
                v90[1] = 0;
                free(v91[0]);
                v91[0] = 0;
                LODWORD(v91[1]) = 0;
                free(v88[0]);
                v88[0] = 0;
                free(v88[1]);
                v88[1] = 0;
                free(v89[0]);
                v89[0] = 0;
                LODWORD(v89[1]) = 0;
                free(__src[0]);
                __src[0] = 0;
                free(__src[1]);
                __src[1] = 0;
                free(v87[0]);
                free(v12);
                free(v9);
                free(v11);
                return v10;
              }
            }
          }
        }

LABEL_58:
        v11 = 0;
        v12 = 0;
        goto LABEL_59;
      }

      v10 = 1916;
    }

    else
    {
      v10 = 1917;
    }

    v9 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_59;
  }

  return 893;
}

void VNRecordImageTooSmallWarningWithImageMinimumShortDimension(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  [v4 recordWarning:@"VNRequestWarningImageMinimumShortDimension" value:v3];
}

void VNRecordBlinkDetectionFailureWarning(void *a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 recordWarning:@"VNRequestWarningBlinkDetectionFailure" value:v5];
}

void sub_1A5E195F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void VNRecordImageTilingWarning(void *a1, unint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ((a3 | a2) >= 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v9[0] = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    [v5 recordWarning:@"VNRequestWarningTiledAnalysis" value:v8];
  }
}

void sub_1A5E19708(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5E19FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL31getVCPPetsPoseImageRequestClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VideoProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL26VideoProcessingLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77B3630;
    v6 = 0;
    VideoProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VideoProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VCPPetsPoseImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getVCPPetsPoseImageRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26VideoProcessingLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t apple::vision::libraries::autotrace::ATRRecord::ATRRecord(uint64_t this, const EPolygon *a2, int a3, int a4)
{
  *this = a2;
  *(this + 64) = 0;
  *(this + 8) = a3;
  *(this + 12) = a4;
  v4 = 0uLL;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = *(a2 + 1);
    v7 = *a2;
    v8 = &v6[a3];
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0uLL;
    do
    {
      v15 = *v8;
      if (!v5)
      {
        *(this + 56) = v15.i32[0];
        *(this + 64) = v15;
        v18 = (this + 60);
        v19 = v15.i32[1];
        v20 = v15.f32[1];
        v11 = v15.f32[1];
        v12 = v15.f32[0];
        v13 = v15.f32[0];
LABEL_12:
        *v18 = v19;
        v10 = v20;
        goto LABEL_13;
      }

      if (v15.f32[0] >= v13)
      {
        v16 = (this + 64);
        LODWORD(v17) = *v8->f32;
        if (v15.f32[0] <= v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = (this + 56);
        v17 = v12;
        LODWORD(v13) = *v8->f32;
      }

      *v16 = v15.i32[0];
      v12 = v17;
LABEL_9:
      v19 = v15.i32[1];
      if (v15.f32[1] < v11)
      {
        v18 = (this + 60);
        v20 = v10;
        v11 = v15.f32[1];
        goto LABEL_12;
      }

      v18 = (this + 68);
      v20 = v15.f32[1];
      if (v15.f32[1] > v10)
      {
        goto LABEL_12;
      }

LABEL_13:
      v4 = vaddq_f64(v4, vcvtq_f64_f32(v15));
      v14 = vaddq_f64(v14, vcvtq_f64_f32(vmul_f32(v15, v15)));
      *(this + 16) = v4;
      *(this + 32) = v14;
      v9 = v9 + vmul_lane_f32(v15, v15, 1).f32[0];
      *(this + 48) = v9;
      v21 = a3 + 1;
      ++v8;
      if (a3 + 1 < v7)
      {
        ++a3;
      }

      else
      {
        a3 = 0;
      }

      if (v21 >= v7)
      {
        v8 = v6;
      }

      ++v5;
    }

    while (a4 != v5);
  }

  return this;
}

uint64_t apple::vision::libraries::autotrace::ATRRecord::LinearRegression(float32x2_t *this, BOOL *a2, float *a3, float *a4)
{
  v4 = (1.0 / this[1].i32[1]);
  v6 = *&this[2];
  v5 = *&this[3];
  v7 = v5 * v4;
  v8 = v5 * v4;
  v9 = v6 * v4;
  v10 = v6 * v4;
  v11 = vsub_f32(this[8], this[7]);
  v12 = vcgt_f32(v11, vdup_lane_s32(v11, 1)).u8[0];
  if ((v12 & 1) == 0)
  {
    v17 = *&this[5] - v7 * v5;
    if (v17 != 0.0)
    {
      v19 = *&this[6] - v9 * v5;
      v15 = v19 / v17;
      v16 = v10 - (v15 * v8);
      goto LABEL_7;
    }

    return 0;
  }

  v13 = *&this[4] - v9 * v6;
  if (v13 == 0.0)
  {
    return 0;
  }

  v14 = *&this[6] + -v9 * v5;
  v15 = v14 / v13;
  v16 = v8 - (v15 * v10);
LABEL_7:
  *a2 = v12 & 1;
  *a3 = v16;
  *a4 = v15;
  return 1;
}

float apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(int **this, unsigned int a2, float a3, float a4)
{
  v4 = *(this + 3);
  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = *(*this + 1);
  v6 = **this;
  v7 = 1.0 / sqrtf((a4 * a4) + 1.0);
  v8 = *(this + 2);
  v9 = 0.0;
  do
  {
    v12 = *(v5 + 8 * v8);
    v10 = v7 * vabds_f32(*(&v12 | (4 * a2)), a3 + (a4 * *(&v12 | (4 * (a2 ^ 1)))));
    if (v10 > v9)
    {
      v9 = v10;
    }

    if (v8 + 1 == v6)
    {
      v8 = 0;
    }

    else
    {
      ++v8;
    }

    --v4;
  }

  while (v4);
  return v9;
}

void apple::vision::libraries::autotrace::ATRAngleOfLine(apple::vision::libraries::autotrace *this, const EPolygon *a2, int a3, int a4, int a5, float a6, float a7)
{
  v8 = atanf(a6);
  if (a5)
  {
    v10 = v8;
  }

  else
  {
    v9 = 1.57079633 - v8;
    v10 = v9;
  }

  __sincosf_stret(v10);
}

void sub_1A5E1AC20(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1A5E1AD1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5E1B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, id a25, id a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(v33 + 40);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(&a9);

  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(&a29);
  _Block_object_dispose((v35 - 168), 8);
  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(v34 + 48);

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::unordered_map<NSString * {__strong},__CVBuffer *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},__CVBuffer *> const&>(a1, i + 2);
  }

  return a1;
}

unint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},__CVBuffer *> const&>(void *a1, id *a2)
{
  result = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = result;
    if (result >= *&v5)
    {
      v7 = result % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & result;
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
    if (v10 == result)
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

  return result;
}

void sub_1A5E1BC00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
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

void sub_1A5E1BE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A5E1CD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E1CC60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::tuple<std::unordered_map<NSString * {__strong},__CVBuffer *>,std::unordered_map<NSString * {__strong},espresso_buffer_t>>>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(a1 + 40);
    std::__hash_table<std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},__CVBuffer *>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},__CVBuffer *>>>::~__hash_table(a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},espresso_buffer_t>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
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

void sub_1A5E1DE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<objc_class * {__strong},objc_selector *>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ma::HSVHistogram::~HSVHistogram(ma::HSVHistogram *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x1AC556AE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x1AC556AE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x1AC556AE0](v4, 0x1000C8052888210);
  }
}

void sub_1A5E20030(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void std::__shared_ptr_emplace<vision::mod::FaceFrontalizer>::__on_zero_shared(uint64_t a1)
{
  free(*(a1 + 120));
  free(*(a1 + 32));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  free(*(a1 + 64));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v2 = *(a1 + 24);
}

void std::__shared_ptr_emplace<vision::mod::FaceFrontalizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19726A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t tplTrackerResampler_lumaDownscale2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a6 >= 2)
  {
    v7 = 0;
    v8 = 2 * a2;
    v9 = a5 >> 1;
    v10 = result + a2 * a4 + a3;
    v11 = v10 + a2;
    do
    {
      if (a5 >= 2)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          result = *(v11 + v12 + 1);
          *(a7 + v13++) = (*(v10 + v12) + *(v10 + v12 + 1) + *(v11 + v12) + result + 2) >> 2;
          v12 += 2;
        }

        while (v9 != v13);
      }

      v10 += v8;
      v11 += v8;
      a7 += v9;
      ++v7;
    }

    while (v7 != a6 >> 1);
  }

  return result;
}

uint64_t tplTrackerResampler_chromaDownscale2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v8 = 0;
    v9 = 2 * a2;
    v10 = a5 >> 1;
    v11 = result + a2 * a4 + 2 * a3;
    v12 = v11 + a2;
    do
    {
      if (a5 >= 2)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          *(a7 + v14) = (*(v11 + v13) + *(v11 + v13 + 2) + *(v12 + v13) + *(v12 + v13 + 2) + 2) >> 2;
          result = *(v12 + v13 + 1);
          *(a8 + v14++) = (*(v11 + v13 + 1) + *(v11 + v13 + 3) + result + *(v12 + v13 + 3) + 2) >> 2;
          v13 += 4;
        }

        while (v10 != v14);
      }

      v11 += v9;
      v12 += v9;
      a7 += v10;
      a8 += v10;
      ++v8;
    }

    while (v8 != a6 >> 1);
  }

  return result;
}

uint64_t ImageProcessing_reallocVImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4221;
  }

  v7 = (a4 * a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = malloc_type_realloc(*a1, v7 * a3, 0x45F5D406uLL);
  *a1 = v8;
  if (!v8)
  {
    return 4221;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = v7;
  result = 4224;
  *(a1 + 8) = a3;
  return result;
}

uint64_t ImageProcessing_copyVImageBufferData(char **a1, uint64_t a2, char **a3)
{
  if (!a1)
  {
    return 4220;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 4220;
  }

  v5 = a1[2];
  if (!v5)
  {
    return 4220;
  }

  v6 = a1[1];
  if (!v6)
  {
    return 4220;
  }

  v7 = a1[3];
  result = 4220;
  if (v7 < 2 || !a3)
  {
    return result;
  }

  v10 = *a3;
  if (!*a3)
  {
    return 4220;
  }

  v11 = a3[2];
  if (!v11)
  {
    return 4220;
  }

  v12 = a3[1];
  if (!v12)
  {
    return 4220;
  }

  v13 = a3[3];
  if (v13 < 2)
  {
    return 4220;
  }

  result = 4220;
  if (v5 == v11 && v6 == v12)
  {
    v15 = v5 * a2;
    if (v5 * a2 <= v13)
    {
      if (v6 == 1)
      {
        goto LABEL_18;
      }

      v16 = 0;
      do
      {
        memcpy(v10, v4, v15);
        v4 = &a1[3][v4];
        v10 = &a3[3][v10];
        ++v16;
        v17 = a3[1];
      }

      while (v16 < (v17 - 1));
      if (v17)
      {
LABEL_18:
        memcpy(v10, v4, a3[2] * a2);
      }

      return 4224;
    }
  }

  return result;
}

unint64_t ImageProcessing_getPointerToPoint(void *a1, uint64_t a2, float a3, float a4)
{
  v4 = 0;
  if (a3 >= 0.0 && a4 >= 0.0)
  {
    if ((a1[2] + -1.0) >= a3 && (a1[1] + -1.0) >= a4)
    {
      return *a1 + a1[3] * vcvtas_u32_f32(a4) + vcvtas_u32_f32(a3) * a2;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

float Geometry2D_intersectRect2D(float *a1, float *a2)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *a1;
  if (!a2)
  {
    return NAN;
  }

  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 <= *a2)
  {
    result = *a2;
  }

  else
  {
    result = *a1;
  }

  if (v3 <= v5)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = a1[1];
  }

  v8 = v3 + a1[2];
  if ((v2 + a1[3]) >= (v4 + a2[3]))
  {
    v9 = v4 + a2[3];
  }

  else
  {
    v9 = v2 + a1[3];
  }

  if (v8 >= (v5 + a2[2]))
  {
    v8 = v5 + a2[2];
  }

  if (v9 < result || v8 < v7)
  {
    return NAN;
  }

  return result;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1AC556850](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1A5E21730(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC556A40](v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 12);
    if (v2)
    {
      *(a1 + 13) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1AC556860](a1 + 2);

  return std::istream::~istream();
}

void sub_1A5E21A04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5E219ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5E21FC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::FaceSegmenterDNN>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 400) == 1)
  {
    espresso_plan_destroy();
    espresso_context_destroy();
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = *(a1 + 296);
    if (v5)
    {
      v6 = v5 + 32 * v2;
      free(*v6);
      *v6 = 0u;
      *(v6 + 16) = 0u;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  free(*(a1 + 368));
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  free(*(a1 + 320));
  v7 = *(a1 + 296);
  if (v7)
  {
    *(a1 + 304) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    *(a1 + 256) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    *(a1 + 232) = v9;

    operator delete(v9);
  }
}

void std::__shared_ptr_emplace<vision::mod::FaceSegmenterDNN>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1972790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5E25820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPVideoProcessorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VideoProcessingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VideoProcessingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77B36D8;
    v6 = 0;
    VideoProcessingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VideoProcessingLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VCPVideoProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getVCPVideoProcessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VideoProcessingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A5E25B54(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1A5E25AFCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5E26480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPPersonObservationClass_block_invoke(uint64_t a1)
{
  VideoProcessingLibrary();
  result = objc_getClass("VCPPersonObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPPersonObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getVCPHandObservationClass_block_invoke(v3);
  }

  return result;
}

Class __getVCPHandObservationClass_block_invoke(uint64_t a1)
{
  VideoProcessingLibrary();
  result = objc_getClass("VCPHandObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHandObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getVCPPetsObservationClass_block_invoke(v3);
  }

  return result;
}

void __getVCPPetsObservationClass_block_invoke(uint64_t a1)
{
  VideoProcessingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPPetsObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPPetsObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    VideoProcessingLibrary();
  }
}

void VideoProcessingLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VideoProcessingLibraryCore_frameworkLibrary_11452)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VideoProcessingLibraryCore_block_invoke_11453;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E77B36F0;
    v3 = 0;
    VideoProcessingLibraryCore_frameworkLibrary_11452 = _sl_dlopen();
    v0 = v1[0];
    if (VideoProcessingLibraryCore_frameworkLibrary_11452)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __VideoProcessingLibraryCore_block_invoke_11453()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore_frameworkLibrary_11452 = result;
  return result;
}

uint64_t ImageProcessing_getCVPixelFormatType(int a1)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      return 32;
    }

    if (a1 != 32)
    {
      if (a1 == 16)
      {
        return 1094862674;
      }

      return 0;
    }

    return 1278226534;
  }

  else
  {
    if (a1 == 1)
    {
      return 1278226488;
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return 1111970369;
      }

      return 0;
    }

    return 1380401729;
  }
}

uint64_t ImageProcessing_getCVPixelBufferImageType(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1094862673)
  {
    if (PixelFormatType == 8)
    {
      return 1;
    }

    if (PixelFormatType == 32)
    {
      return 8;
    }
  }

  else
  {
    switch(PixelFormatType)
    {
      case 1380401729:
        return 2;
      case 1111970369:
        return 4;
      case 1094862674:
        return 16;
    }
  }

  return 0;
}

CVPixelBufferRef ImageProcessing_createDeepCopyCVPixelBufferFromVImageBuffer(char **a1, __int16 a2, int *a3)
{
  *a3 = 0;
  pixelBufferOut = 0;
  if (a2)
  {
    v5 = 1;
  }

  else if ((a2 & 0x3E) != 0)
  {
    v5 = 4;
  }

  else
  {
    if ((a2 & 0x3C0) == 0)
    {
      syslog(5, "ERROR: Invalid image type");
      syslog(5, "ERROR: require_action");
      v15 = -16750;
      goto LABEL_13;
    }

    v5 = 16;
  }

  CVPixelFormatType = ImageProcessing_getCVPixelFormatType(a2);
  if (!CVPixelFormatType)
  {
    v15 = -12743;
LABEL_13:
    *a3 = v15;
    return pixelBufferOut;
  }

  v7 = CVPixelFormatType;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9D8];
  v10 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = CFDictionaryCreate(v8, 0, 0, 0, v9, v10);
  if (v12)
  {
    v13 = v12;
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69660D8], v12);
    CFRelease(v13);
  }

  if (CVPixelBufferCreate(v8, a1[2], a1[1], v7, Mutable, &pixelBufferOut))
  {
    v14 = -12730;
    goto LABEL_10;
  }

  if (!CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
  {
    v17 = *a1;
    v18 = a1[1];
    v19 = a1[2];
    v20 = a1[3];
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v25 = v19;
    if (Width == v19 && BaseAddress && v17 && Height == v18)
    {
      v26 = BytesPerRow;
      if (v20 == BytesPerRow)
      {
        memcpy(BaseAddress, v17, v20 * v18);
        goto LABEL_30;
      }

      if (v20 <= BytesPerRow)
      {
        if (v18)
        {
          v27 = v5 * v25;
          do
          {
            memcpy(BaseAddress, v17, v27);
            v17 += v20;
            BaseAddress += v26;
            --v18;
          }

          while (v18);
        }

LABEL_30:
        CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        if (!Mutable)
        {
          return pixelBufferOut;
        }

        goto LABEL_11;
      }
    }

    syslog(5, "ERROR: require_action");
    v14 = -16750;
LABEL_10:
    *a3 = v14;
    if (!Mutable)
    {
      return pixelBufferOut;
    }

LABEL_11:
    CFRelease(Mutable);
    return pixelBufferOut;
  }

  *a3 = -16750;
  CVPixelBufferRelease(pixelBufferOut);
  return 0;
}

void sub_1A5E2737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11523(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5E27718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL43getVCPRequestFrameWidthPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestFrameWidthPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VideoProcessingLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VideoProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL26VideoProcessingLibraryCorePPc_block_invoke_11533;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77B3740;
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