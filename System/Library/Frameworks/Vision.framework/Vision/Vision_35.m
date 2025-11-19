void sub_1A5ECB980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
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

uint64_t vision::mod::anonymous namespace::readSizeFromBytesHelper(uint64_t a1, void *a2)
{
  v3 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, a1);
  if (!v3 || *(v3 + 10) != 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Error: ", 7);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " failed to load from ERT model file!", 36);
    exception = __cxa_allocate_exception(0x20uLL);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v16, v17);
  }

  v4 = v3[6];
  v5 = v3[7];
  if (!v5)
  {
    if (v3[8] == 8)
    {
      return *v4;
    }

LABEL_16:
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Error: ", 7);
    v12 = *(a1 + 23);
    if (v12 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 23);
    }

    else
    {
      v14 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " unexpected size of value", 25);
    v15 = __cxa_allocate_exception(0x20uLL);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v16, v17);
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v3[8] != 8)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v6;
}

void sub_1A5ECBBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void vision::mod::anonymous namespace::readTypedVectorFromBytesHelper<float>(uint64_t a1, void *a2, std::vector<unsigned int> *a3)
{
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, a1);
  if (!v5 || *(v5 + 10) != 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Error: ", 7);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " failed to load from ERT model file!", 36);
    exception = __cxa_allocate_exception(0x20uLL);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v13, v14);
  }

  v7 = v5[6];
  v6 = v5[7];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v5[8];
  std::vector<float>::resize(a3, v8 >> 2);
  memcpy(a3->__begin_, v7, v8);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1A5ECBDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
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

uint64_t std::vector<vision::mod::ERTTreeNode>::__init_with_size[abi:ne200100]<vision::mod::ERTTreeNode*,vision::mod::ERTTreeNode*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vision::mod::ERTTreeNode>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5ECBE90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vision::mod::ERTTreeNode>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5ECC764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void addSpan(int *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("addSpan", "Spans.c", 88, "spl != NULL");
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 < v5 - 1)
  {
    v6 = *(a1 + 1);
LABEL_9:
    v6[v4] = a2;
    ++*a1;
    return;
  }

  if (v5 <= 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2 * v5;
  }

  v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  if (v8)
  {
    v6 = v8;
    memcpy(v8, *(a1 + 1), 8 * *a1);
    bzero(&v6[*a1], 8 * (v7 - *a1));
    a1[1] = v7;
    free(*(a1 + 1));
    *(a1 + 1) = v6;
    v4 = *a1;
    goto LABEL_9;
  }
}

void sub_1A5ECE840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void sub_1A5ECF468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  _Unwind_Resume(a1);
}

BOOL horizonDetectionFFT(uint64_t a1, int a2, int a3, int a4, float *a5, int a6)
{
  v13[0] = a1;
  v13[1] = a4;
  v13[2] = a3;
  v13[3] = a2;
  Angles = HorizonDetection::getAngles(v13, a6 != 0, &v12, v13, 0.0);
  if (Angles == 1)
  {
    v8 = (v12 * -180.0) / 3.14159265;
    if (v8 <= 135.0)
    {
      if (v8 < 45.0)
      {
LABEL_7:
        v10 = v8 * 3.14159265 / -180.0;
        *a5 = v10;
        return Angles == 1;
      }

      v9 = -90.0;
    }

    else
    {
      v9 = -180.0;
    }

    v8 = v8 + v9;
    goto LABEL_7;
  }

  return Angles == 1;
}

unint64_t HorizonDetection::getAngles(uint64_t a1, int a2, float *a3, float *a4, float a5)
{
  ++HorizonDetection::frameCount_;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  std::vector<unsigned char,apple::vision::AlignedAllocator<unsigned char,32ul>>::vector[abi:ne200100](data, (v12 << 16));
  if (a2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
  }

  v14 = DeviceRGB;
  v15 = CGDataProviderCreateWithData(0, *a1, *(a1 + 8) * *(a1 + 24), 0);
  if (a2)
  {
    v16 = 32;
  }

  else
  {
    v16 = 8;
  }

  v17 = CGImageCreate(*(a1 + 16), *(a1 + 8), 8uLL, v16, *(a1 + 24), v14, 5u, v15, 0, 1, kCGRenderingIntentDefault);
  v18 = CGBitmapContextCreate(data[0], 0x100uLL, 0x100uLL, 8uLL, (v12 << 8), v14, 5u);
  CGContextSetInterpolationQuality(v18, kCGInterpolationHigh);
  v99.size.width = 256.0;
  v99.origin.x = 0.0;
  v99.origin.y = 0.0;
  v99.size.height = 256.0;
  CGContextDrawImage(v18, v99, v17);
  Image = CGBitmapContextCreateImage(v18);
  CGContextRelease(v18);
  CGImageRelease(v17);
  CGImageRelease(Image);
  CGDataProviderRelease(v15);
  CGColorSpaceRelease(v14);
  std::vector<unsigned char,apple::vision::AlignedAllocator<unsigned char,32ul>>::vector[abi:ne200100](v91, 0x10000uLL);
  cannyEdgeWithGradientOutput(data[0], v91[0], 0, 0, 0.55, 0.7);
  thinBin(v91[0]);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](v98, 0x10000);
  *&src.height = vdupq_n_s64(0x100uLL);
  src.rowBytes = 256;
  dest.data = v98[0];
  *&dest.height = *&src.height;
  dest.rowBytes = 1024;
  src.data = v91[0];
  vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](v90, 0x10000);
  fftGrayMag(v98[0], v90[0], 0);
  if (v98[0])
  {
    v98[1] = v98[0];
    free(v98[0]);
  }

  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](v89, 1440);
  fftProject(v90[0], v89[0], &src, 0.0);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](v95, 1440);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](&src, 1440);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](&dest, 1440);
  std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](v98, 1440);
  v20 = malloc_type_aligned_alloc(0x20uLL, 0x1680uLL, 0x100004052888210uLL);
  v21 = v20;
  v88 = a5;
  if (!v20)
  {
    exception = __cxa_allocate_exception(8uLL);
    v87 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v87, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v22 = v10 / v11;
  v23 = v11 / v10;
  bzero(v20, 0x1680uLL);
  if (v22 >= v23)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = v11 / v10;
  }

  if (v22 >= v23)
  {
    v25 = v10 / v11;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = atan2f(v25 * -0.0010908, v24 * 1.0) * 458.366236 + 1440.0;
  v27 = atan2f(v25 * 0.0010908, v24 * 1.0) * 458.366236;
  v28 = modff(v26, &v97 + 1);
  v29 = modff(v27, &v97);
  v30 = src.data;
  *src.data = 1.0 - v28;
  v31 = dest.data;
  *dest.data = v29;
  v32 = v98[0];
  *v98[0] = 0;
  *v21 = 0;
  for (i = 1; i != 1440; ++i)
  {
    v34 = (i + -0.5) * 3.14159265 / 1440.0;
    v35 = __sincosf_stret(v34);
    v36 = atan2f(v25 * v35.__sinval, v24 * v35.__cosval) * 458.366236;
    v37 = i * 3.14159265 / 1440.0;
    v38 = __sincosf_stret(v37);
    v39 = atan2f(v25 * v38.__sinval, v24 * v38.__cosval) * 458.366236;
    v40 = (i + 0.5) * 3.14159265 / 1440.0;
    v41 = __sincosf_stret(v40);
    v42 = atan2f(v25 * v41.__sinval, v24 * v41.__cosval) * 458.366236;
    v97 = 0;
    v43 = modff(v36, &v97 + 1);
    v44 = modff(v42, &v97);
    v45 = *&v97;
    v46 = *(&v97 + 1);
    v21[i] = v39;
    v47 = v45 - v46;
    if (v47 == 2)
    {
      v30[i] = 1.0 - v43;
      v31[i] = 1065353216;
      goto LABEL_27;
    }

    if (v47 != 1)
    {
      if (v47)
      {
        continue;
      }

      v30[i] = 0.0;
      v44 = v44 - v43;
      goto LABEL_29;
    }

    if (v46 == v39)
    {
      v30[i] = 0.0;
      *&v31[i] = 1.0 - v43;
LABEL_27:
      v32[i] = v44;
      continue;
    }

    v30[i] = 1.0 - v43;
LABEL_29:
    *&v31[i] = v44;
    v32[i] = 0.0;
  }

  v48 = 0;
  v49 = v89[0];
  v50 = v95[0];
  do
  {
    v51 = v49[v48];
    v52 = v51 * *&v31[v48];
    v53 = v21[v48];
    if (v53 >= 1)
    {
      v54 = -1;
    }

    else
    {
      v54 = 1439;
    }

    v55 = v32[v48];
    v50[v54 + v53] = (v51 * v30[v48]) + v50[v54 + v53];
    if (v53 <= 1438)
    {
      v56 = v53 + 1;
    }

    else
    {
      v56 = v53 - 1439;
    }

    v50[v53] = v52 + v50[v53];
    v50[v56] = (v51 * v55) + v50[v56];
    ++v48;
  }

  while (v48 != 1440);
  free(v21);
  free(v32);
  free(v31);
  free(v30);
  v57 = *v95;
  v95[1] = 0;
  v96 = 0;
  v95[0] = 0;
  v58 = *(&v57 + 1);
  v59 = v57;
  v60.i32[0] = *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__identity,std::__less<void,void>>(v57, *(&v57 + 1));
  v62 = *v61;
  if (*v61 != 1.0 && (*v60.i32 != 0.0 ? (v63 = *v60.i32 == v62) : (v63 = 0), v63))
  {
    if (v58 - v59 >= 1)
    {
      memset_pattern16(v59, &unk_1A6038F40, v58 - v59);
    }
  }

  else
  {
    v64 = v62 - *v60.i32;
    v65 = vdupq_lane_s32(v60, 0);
    v66 = 5760;
    v67 = v59;
    v68 = 1.0 / v64;
    do
    {
      v69 = vmulq_n_f32(vsubq_f32(v67[1], v65), v68);
      *v67 = vmulq_n_f32(vsubq_f32(*v67, v65), v68);
      v67[1] = v69;
      v67 += 2;
      v66 -= 32;
    }

    while (v66);
  }

  if (v95[0])
  {
    v95[1] = v95[0];
    free(v95[0]);
  }

  if (v59 == v58)
  {
    v71 = a3;
    if (v59)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v70 = 0.0;
    v71 = a3;
    v72 = v59;
    do
    {
      v73 = *v72;
      v74 = a3;
      if (v71 != a3)
      {
        v75 = (v71 - a3) >> 3;
        v74 = a3;
        do
        {
          v76 = v75 >> 1;
          v77 = &v74[2 * (v75 >> 1)];
          v78 = v77[1];
          v79 = v77 + 2;
          v75 += ~(v75 >> 1);
          if (v78 < v73)
          {
            v75 = v76;
          }

          else
          {
            v74 = v79;
          }
        }

        while (v75);
      }

      if (v74 != a4)
      {
        v80 = a3;
        v81 = (v70 * -3.1416) / 1440.0;
        if (v74 == a3)
        {
LABEL_63:
          v82 = v74;
          if (v74 != v71)
          {
            v82 = v74;
            do
            {
              if (vabds_f32(*v82, v81) < v88)
              {
                break;
              }

              v82 += 2;
            }

            while (v82 != v71);
          }

          if (v82 != v71)
          {
            for (j = v82 + 2; j != v71; j += 2)
            {
              if (vabds_f32(*j, v81) >= v88)
              {
                *v82 = *j;
                v82 += 2;
              }
            }
          }

          v84 = v82 + 2;
          if (v84 <= a4)
          {
            v71 = v84;
          }

          else
          {
            v71 = a4;
          }

          if (v74 < v71 && v71 - 2 != v74)
          {
            memmove(v74 + 2, v74, (v71 - 2) - v74);
          }

          *v74 = v81;
          v74[1] = v73;
        }

        else
        {
          while (vabds_f32(*v80, v81) >= v88)
          {
            v80 += 2;
            if (v80 == v74)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v70 = v70 + 1.0;
      ++v72;
    }

    while (v72 != v58);
    if (v59)
    {
LABEL_82:
      free(v59);
    }
  }

  if (v89[0])
  {
    v89[1] = v89[0];
    free(v89[0]);
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    free(v90[0]);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    free(v91[0]);
  }

  if (data[0])
  {
    data[1] = data[0];
    free(data[0]);
  }

  return (v71 - a3) >> 3;
}

void sub_1A5ECFD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (a25)
  {
    free(a25);
  }

  if (a29)
  {
    free(a29);
  }

  if (a33)
  {
    free(a33);
  }

  if (a13)
  {
    free(a13);
  }

  if (a16)
  {
    free(a16);
  }

  if (a19)
  {
    free(a19);
  }

  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float,apple::vision::AlignedAllocator<float,32ul>>::vector[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = 4 * a2;
  v5 = malloc_type_aligned_alloc(0x20uLL, 4 * a2, 0x100004052888210uLL);
  v6 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = v5;
  a1[2] = &v5[4 * a2];
  bzero(v5, v4);
  a1[1] = &v6[v4];
  return a1;
}

void sub_1A5ECFF44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char,apple::vision::AlignedAllocator<unsigned char,32ul>>::vector[abi:ne200100](void *a1, size_t size)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = apple::vision::AlignedAllocator<unsigned char,32ul>::allocate(size);
  *a1 = v4;
  v5 = &v4[size];
  a1[2] = &v4[size];
  bzero(v4, size);
  a1[1] = v5;
  return a1;
}

void sub_1A5ECFFB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t horizonDetectionFFTAngles(uint64_t a1, int a2, int a3, int a4, int a5, int a6, float *a7, float a8)
{
  v9[0] = a1;
  v9[1] = a4;
  v9[2] = a3;
  v9[3] = a2;
  return HorizonDetection::getAngles(v9, a5, a7, &a7[2 * a6], a8);
}

void std::vector<vImage_Buffer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5ED1620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a57)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::GazeFollowPredictorConcrete>::__on_zero_shared(uint64_t a1)
{
  vision::mod::GazeFollowPredictor::releaseCachedImageBuffers((a1 + 24));
  if (espresso_plan_destroy())
  {
    syslog(5, "[Espresso Error]: Failed to destroy the existing GazeFollow espresso plan");
LABEL_5:
    syslog(5, "[Error]: Failed to destroy GazeFollowPredictor object");
    goto LABEL_6;
  }

  *(a1 + 376) = 0;
  if (espresso_context_destroy())
  {
    syslog(5, "[Espresso Error]: Failed to destroy the existing GazeFollow context");
    goto LABEL_5;
  }

  *(a1 + 368) = 0;
LABEL_6:
  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }
}

double vision::mod::GazeFollowPredictor::releaseCachedImageBuffers(void **this)
{
  free(this[12]);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  free(this[16]);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  free(this[20]);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  free(this[24]);
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  return result;
}

void std::__shared_ptr_emplace<vision::mod::GazeFollowPredictorConcrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1973CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GazeFollowPredictor::runInference(uint64_t a1, float *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 240);
  v7 = *(a1 + 232);
  std::vector<std::vector<long long>>::clear[abi:ne200100]((a3 + 24));
  LODWORD(v61) = 0;
  std::vector<float>::vector[abi:ne200100](__p, v7);
  v8 = v6;
  std::vector<std::vector<float>>::resize((a3 + 24), v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::vector<std::vector<long long>>::clear[abi:ne200100]((a3 + 88));
  LODWORD(v61) = 0;
  std::vector<float>::vector[abi:ne200100](__p, v7);
  std::vector<std::vector<float>>::resize((a3 + 88), v8, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a3 + 120) = *(a3 + 112);
  LODWORD(__p[0]) = 0;
  std::vector<float>::resize((a3 + 112), 2uLL, __p, v9);
  v10 = *(a1 + 144);
  *__p = *(a1 + 128);
  v51 = v10;
  espresso_network_bind_input_vimagebuffer_bgra8();
  v11 = *(a1 + 208);
  *__p = *(a1 + 192);
  v51 = v11;
  espresso_network_bind_input_vimagebuffer_bgra8();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *__p = 0u;
  v51 = 0u;
  v61 = xmmword_1A5FF36F0;
  espresso_buffer_pack_tensor_shape();
  __p[0] = (a1 + 224);
  LODWORD(v60) = 65568;
  if (espresso_network_bind_buffer())
  {
    syslog(5, "[Espresso Error]: Could not bind the input blobs to espresso model");
    return 10843;
  }

  if (espresso_plan_execute_sync())
  {
    espresso_plan_get_error_info();
    syslog(5, "[Espresso Error]: Could not execute plan: %s", v12);
    return 10843;
  }

  v14 = *(a1 + 232);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *(a1 + 240);
    v20 = *(a3 + 24);
    v21 = v19;
    v23 = v14;
    v24 = NAN;
    v25 = v19;
    v27 = NAN;
    v28 = NAN;
    v29 = NAN;
    v30 = *(a1 + 232);
    do
    {
      if (v19)
      {
        v31 = 0;
        v32 = *(v20 + 24 * v16);
        v33 = v16 + 0.5;
        v35 = *(a1 + 360) + v15;
        do
        {
          v36 = *(v35 + 4 * v31);
          *v32 = v36;
          if (v36 > *(a3 + 48))
          {
            *(a3 + 48) = v36;
            *(a3 + 52) = v31;
            *(a3 + 56) = v16;
          }

          v37 = *a2;
          if (v36 > *a2)
          {
            if (v25 > v31)
            {
              if (v31)
              {
                v29 = (v31 + 0.5 - ((*v32 - v37) / ((*v32 - v37) + (v37 - *(v32 - 1))))) / v21;
                v25 = v31;
              }

              else
              {
                v25 = 0;
                v22 = 0.5 / v19;
                v29 = v22;
              }
            }

            if (v31 > v18)
            {
              if (v19 - 1 <= v31)
              {
                v38 = v31 + 0.5;
              }

              else
              {
                v38 = v31 + 0.5 + ((*v32 - v37) / ((*v32 - v37) + (v37 - v32[1])));
              }

              v28 = v38 / v21;
              v18 = v31;
            }

            if (v30 > v16)
            {
              v30 = 0;
              v26 = 0.5 / v14;
              v27 = v26;
              if (v16)
              {
                v27 = (v33 - ((*v32 - v37) / ((*v32 - v37) + (v37 - *(*(v20 - 24 + 24 * v16) + 4 * v31))))) / v23;
                v30 = v16;
              }
            }

            if (v16 > v17)
            {
              if (v14 - 1 <= v16)
              {
                v17 = v16;
                v34 = v33 / v23;
                v24 = v34;
              }

              else
              {
                v24 = (v33 + ((*v32 - v37) / ((*v32 - v37) + (v37 - *(*(v20 + 24 + 24 * v16) + 4 * v31))))) / v23;
                v17 = v16;
              }
            }
          }

          ++v31;
          ++v32;
        }

        while (v19 != v31);
      }

      ++v16;
      v15 += 4 * v19;
    }

    while (v16 != v14);
  }

  else
  {
    v29 = NAN;
    v28 = NAN;
    v27 = NAN;
    v24 = NAN;
  }

  if (*(a3 + 48) > *a2)
  {
    *(a3 + 68) = v29;
    *(a3 + 72) = v27;
    *(a3 + 76) = v24 - v27;
    *(a3 + 80) = v28 - v29;
  }

  v39 = *(a1 + 696);
  v40 = *v39;
  v41 = *(a3 + 112);
  *v41 = *v39;
  v42 = v39[1];
  v41[1] = v42;
  v43 = 1.0;
  v44 = 1.0;
  if (v40 <= 1.0)
  {
    v44 = v40;
    if (v40 < -1.0)
    {
      v44 = -1.0;
    }
  }

  if (v42 <= 1.0)
  {
    v43 = v42;
    if (v42 < -1.0)
    {
      v43 = -1.0;
    }
  }

  v45 = acosf(v43);
  v46 = asinf(v44);
  if (v44 >= 0.0)
  {
    if (v43 < 0.0)
    {
      v47 = v46;
      v48 = 3.14159265;
      goto LABEL_50;
    }
  }

  else
  {
    v45 = -v45;
    if (v43 < 0.0)
    {
      v47 = v46;
      v48 = -3.14159265;
LABEL_50:
      v46 = v48 - v47;
    }
  }

  v49 = (((v44 * v44) * v45) + (1.0 - (v44 * v44)) * v46) * 180.0 / 3.14159265;
  *(a3 + 64) = v49;
  return 10880;
}

void sub_1A5ED30D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::resize(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v5 + 24 * a2);
      if (v4 != v13)
      {
        v14 = a1[1];
        do
        {
          v16 = *(v14 - 3);
          v14 -= 3;
          v15 = v16;
          if (v16)
          {
            *(v4 - 2) = v15;
            operator delete(v15);
          }

          v4 = v14;
        }

        while (v14 != v13);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
        v11 = 0x5555555555555556 * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v12);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v17 = &v4[3 * v7];
    v18 = 24 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
  }
}

void sub_1A5ED32C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<float>::resize(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1A6027760)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1A6027770)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

uint64_t vision::mod::GazeFollowPredictor::postProcessGazeLabels(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = *a4;
    v5 = *(a4 + 8);
    v6 = a2;
    do
    {
      if (!*(v6 + 16) && *(v6 + 48) >= v4 && (*(v6 + 12) >= v5 || *(v6 + 8) >= v5))
      {
        v8 = 0;
        v9 = *(a4 + 4);
        for (i = a2; i != a3; i += 136)
        {
          if (*(i + 16) != -1 && (vabds_f32(*v6, *i) >= 0.00000011921 || vabds_f32(*(v6 + 4), *(i + 4)) >= 0.00000011921))
          {
            v11 = *(i + 8);
            v12 = *(i + 12);
            if (v12 >= v5 || v11 >= v5)
            {
              v14 = *(v6 + 52);
              v15 = v14 - llroundf((*i + (v12 * 0.5)) * (*(result + 232) - 1));
              if (v15 < 0)
              {
                v15 = -v15;
              }

              if (v15 <= v9)
              {
                v16 = *(v6 + 56) - llroundf(((v11 * 0.5) + *(i + 4)) * (*(result + 240) - 1));
                if (v16 < 0)
                {
                  v16 = -v16;
                }

                if (v16 <= v9)
                {
                  *(v6 + 16) = 3;
                  *(v6 + 60) = v8;
                  break;
                }
              }

              v17 = v14 - *(i + 52);
              if (v17 < 0)
              {
                v17 = -v17;
              }

              if (v17 <= v9)
              {
                v18 = *(v6 + 56) - *(i + 56);
                if (v18 < 0)
                {
                  v18 = *(i + 56) - *(v6 + 56);
                }

                if (v18 <= v9 && *(i + 48) >= v4)
                {
                  *(v6 + 16) = 4;
                }
              }
            }
          }

          ++v8;
        }
      }

      v6 += 136;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_1A5ED55E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32)
{
  objc_destroyWeak(&STACK[0x2E8]);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose((v33 - 248), 8);

  v35 = *(v33 - 200);
  if (v35)
  {
    *(v33 - 192) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5ED5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  objc_end_catch();

  JUMPOUT(0x1A5ED5DC8);
}

void sub_1A5ED649C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5ED6D84(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(a1);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v9 reason];
    v11 = [v10 initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion object. Error: %@"];

    v12 = [VNError errorForInternalErrorWithLocalizedDescription:v11];
    [v2 failWithError:v12];

    objc_end_catch();
    JUMPOUT(0x1A5ED6B70);
  }

  _Unwind_Resume(a1);
}

void sub_1A5ED75C4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED7758(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED7B64(_Unwind_Exception *a1, int a2)
{
  v8 = v5;

  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v10 reason];
    v12 = [v11 initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion2D object. Error: %@"];

    v13 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
    [v2 failWithError:v13];

    objc_end_catch();
    JUMPOUT(0x1A5ED7B3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5ED8080(_Unwind_Exception *a1, int a2)
{
  v8 = v5;

  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v10 reason];
    v12 = [v11 initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion3D object. Error: %@"];

    v13 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
    [v2 failWithError:v13];

    objc_end_catch();
    JUMPOUT(0x1A5ED8058);
  }

  _Unwind_Resume(a1);
}

void sub_1A5ED866C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5ED8F4C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v10 reason];
    v12 = [v11 initWithFormat:@"Failed to unarchive VNFaceLandmarks object. Error: %@"];

    v13 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
    [v2 failWithError:v13];

    objc_end_catch();
    JUMPOUT(0x1A5ED8DDCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5ED9474(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9544(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9614(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED96E4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED97B4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9884(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9954(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9A24(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9AF4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9BC4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9C94(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1A5ED9F1C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDA0E0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v4));
  objc_exception_rethrow();
}

void sub_1A5EDA6A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v8 = objc_begin_catch(a1);
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v8 reason];
    v10 = [v9 initWithFormat:@"Failed to unarchive VNFaceLandmarks2D object. Error: %@"];

    v11 = [VNError errorForInternalErrorWithLocalizedDescription:v10];
    [v2 failWithError:v11];

    objc_end_catch();
    JUMPOUT(0x1A5EDA674);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EDABFC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDAD08(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDAE14(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDAF20(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB02C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB138(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB244(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB350(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB45C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB568(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v3));
  objc_exception_rethrow();
}

void sub_1A5EDB6F4(void *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v4));
  objc_exception_rethrow();
}

void sub_1A5EDBA40(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v8 = objc_begin_catch(a1);
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v8 reason];
    v10 = [v9 initWithFormat:@"Failed to unarchive VNFaceLandmarks3D object. Error: %@"];

    v11 = [VNError errorForInternalErrorWithLocalizedDescription:v10];
    [v2 failWithError:v11];

    objc_end_catch();
    JUMPOUT(0x1A5EDBA0CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t straightLineLSQ(__int16 *a1, int a2)
{
  if (a2 == 2)
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = (a1[2] - v2) / (a1[3] - v3);
    v5 = v3 - (v4 * v2);
  }

  else
  {
    if (a2 < 1)
    {
      v14 = 0.0;
      v16 = 0.0;
      v15 = 0.0;
      v17 = 0.0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = a2;
      v11 = a1;
      do
      {
        v12 = *v11;
        v13 = v11[1];
        v9 += v12;
        v8 += v13;
        v7 += v12 * v12;
        v6 += v13 * v12;
        v11 += 2;
        --v10;
      }

      while (v10);
      v14 = v9;
      v15 = v7;
      v16 = v8;
      v17 = v6;
    }

    v18 = v14 / a2;
    v19 = -(v18 * a2);
    v20 = v15 + (v19 * v18);
    if (v20 == 0.0)
    {
      v5 = *a1;
      v4 = INFINITY;
    }

    else
    {
      v21 = v16 / a2;
      v4 = (v17 + (v19 * v21)) / v20;
      v5 = v21 - (v4 * v18);
      if (a2 >= 1)
      {
        v22 = 0;
        v23 = -1.0;
        do
        {
          v24 = vabds_f32(a1[1] + (-v4 * *a1), v5);
          if (v24 > v23)
          {
            v23 = v24;
          }

          ++v22;
          a1 += 2;
        }

        while (a2 != v22);
      }
    }
  }

  return LODWORD(v4) | (LODWORD(v5) << 32);
}

unint64_t straightLineWLSQ(__int16 *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2 == 2)
  {
    v4 = (a1[3] - v3) / (a1[2] - v2);
    v5 = v3 - (v4 * v2);
  }

  else
  {
    v5 = v3;
    if (a2 < 2)
    {
      goto LABEL_17;
    }

    v6 = 0;
    v7 = v2;
    v8 = a1 + 2;
    v9 = 0.5;
    v10 = (v2 * v5) * 0.5;
    v11 = (v7 * v7) * 0.5;
    v12 = v5 * 0.5;
    v13 = v2 * 0.5;
    v14 = a2 - 1;
    v15 = 0.0;
    v16 = v3;
    v17 = v2;
    do
    {
      v18 = *v8;
      v19 = v8[1];
      if (v3 != v19)
      {
        v20 = vcvts_n_f32_s32(v2 + v18, 1uLL);
        v21 = v20 - v17;
        if (v6)
        {
          if (v21 > v15)
          {
            v15 = v20 - v17;
          }

          v13 = v13 + (v17 * v15);
          v12 = v12 + (v16 * v15);
          v11 = v11 + ((v17 * v17) * v15);
          v10 = v10 + ((v17 * v16) * v15);
          v9 = v9 + v15;
        }

        v16 = vcvts_n_f32_s32(v3 + v19, 1uLL);
        ++v6;
        v17 = v20;
        v15 = v21;
      }

      v8 += 2;
      v3 = v19;
      v2 = v18;
      --v14;
    }

    while (v14);
    if (v6)
    {
      v22 = &a1[2 * (a2 - 2)];
      v23 = v22[2];
      v24 = v23;
      if ((v23 - v17) > v15)
      {
        v15 = v23 - v17;
      }

      v25 = (v11 + ((v17 * v17) * v15)) + ((v24 * v24) * 0.5);
      v26 = (v9 + v15) + 0.5;
      v27 = ((v13 + (v17 * v15)) + (v24 * 0.5)) / v26;
      v28 = -(v26 * v27);
      v29 = v25 + (v28 * v27);
      if (v29 == 0.0)
      {
        v4 = INFINITY;
        v5 = v7;
      }

      else
      {
        v31 = 0;
        v32 = v22[3];
        v33 = ((v12 + (v16 * v15)) + (v32 * 0.5)) / v26;
        v4 = (((v10 + ((v17 * v16) * v15)) + ((v24 * v32) * 0.5)) + (v28 * v33)) / v29;
        v5 = v33 - (v4 * v27);
        v34 = -1.0;
        do
        {
          v35 = vabds_f32(a1[1] + (-v4 * *a1), v5);
          if (v35 > v34)
          {
            v34 = v35;
          }

          ++v31;
          a1 += 2;
        }

        while (a2 != v31);
      }
    }

    else
    {
LABEL_17:
      v4 = 0.0;
    }
  }

  return LODWORD(v4) | (LODWORD(v5) << 32);
}

float Lsq2Leq(uint64_t a1)
{
  if (fabsf(*&a1) == INFINITY)
  {
    return 1.0;
  }

  v1 = 1.0 / sqrtf((*&a1 * *&a1) + 1.0);
  result = -(*&a1 * v1);
  if ((v1 * COERCE_FLOAT(HIDWORD(a1) ^ 0x80000000)) > 0.0)
  {
    return -(v1 * -*&a1);
  }

  return result;
}

uint64_t applyCoordTransform(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1 && (result & 1) != 0)
  {
    v3 = a3;
    v4 = a2;
    do
    {
      HIDWORD(v5) = *v4;
      LODWORD(v5) = *v4;
      *v4++ = v5 >> 16;
      --v3;
    }

    while (v3);
  }

  if ((result & 0x100) != 0 && a3 >= 1)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      *v7 = -*v7;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  if ((result & 0x10000) != 0 && a3 >= 1)
  {
    v8 = (a2 + 2);
    do
    {
      *v8 = -*v8;
      v8 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

BOOL _validatePercentageValue(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a3 <= 1.0 && a3 >= 0.0;
  if (!v6 && a2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    *a2 = [VNError errorForInvalidOption:v7 named:v5 localizedDescription:0];
  }

  return v6;
}

void sub_1A5EDFC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *exc_buf, void *a12, void *a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a2)
  {

    if (__p)
    {
      operator delete(__p);
    }

    if (a17)
    {
      operator delete(a17);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x1A5EDFABCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EE0788(_Unwind_Exception *a1, int a2)
{
  v7 = v5;

  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A5EE0690);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EE09B8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5EE0F08(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A5EE0DDCLL);
  }

  JUMPOUT(0x1A5EE0EF8);
}

void sub_1A5EE1A28(_Unwind_Exception *a1, int a2)
{
  v7 = v5;

  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A5EE19BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EE1C70(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5EE221C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22455(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t vision::mod::FaceID3KmeansParams::serialize()
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

  return (*v2 + 128) | 0x2B00;
}

uint64_t vision::mod::FaceID3KmeansParams::deserialize()
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

  return (*v2 + 128) | 0x2B00;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<long long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<long long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<long long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<long long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
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

uint64_t vision::mod::FaceID3Model::buildModel(int *a1, vision::mod::ImageDescriptorBufferAbstract *a2, uint64_t *a3, uint64_t a4)
{
  v290 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v4 = *(a2 + 12) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v6 = *(a2 + 9)) == 0)
  {
    syslog(5, "ERROR: invalid image descriptor buffer for training");
    return 11132;
  }

  if (v6 != (a3[1] - *a3) >> 2)
  {
    syslog(5, "ERROR: size mismatch between descriptors and their labels");
    return 11132;
  }

  if (*a1 < 1)
  {
    syslog(5, "ERROR: negative or zero maxElems_");
LABEL_23:
    v12 = &CVML_status_invalidParameter;
    goto LABEL_24;
  }

  if (a1[1] < 1)
  {
    syslog(5, "ERROR: negative or zero maxNumIds_");
    goto LABEL_23;
  }

  if (a1[4] < 1)
  {
    syslog(5, "ERROR: negative or zero maxIter_");
    goto LABEL_23;
  }

  if (a1[3] < 1)
  {
    v11 = "ERROR: negative or zero nInits_ in kmeans";
LABEL_22:
    syslog(5, v11);
    goto LABEL_23;
  }

  v10 = *(a1 + 3);
  v11 = "ERROR: invalid tol_ in kmeans";
  if (v10 >= 1.0 || v10 <= 0.0)
  {
    goto LABEL_22;
  }

  v12 = &CVML_status_ok;
LABEL_24:
  v13 = (*v12 + 128) | 0x2B00;
  if (v13 != 11136)
  {
    return v13;
  }

  memset(v234, 0, sizeof(v234));
  v235 = 1065353216;
  v231 = 0u;
  v232 = 0u;
  v233 = 1065353216;
  v15 = *a3;
  if (a3[1] == *a3)
  {
    goto LABEL_317;
  }

  v218 = a2;
  v213 = a4;
  v16 = 0;
  do
  {
    *v289.__x_ = v15 + 4 * v16;
    v17 = std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v234, **v289.__x_);
    v18 = v17;
    v20 = v17[4];
    v19 = v17[5];
    if (v20 >= v19)
    {
      v22 = v17[3];
      v23 = v20 - v22;
      v24 = (v20 - v22) >> 2;
      v25 = v24 + 1;
      if ((v24 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v26 = v19 - v22;
      if (v26 >> 1 > v25)
      {
        v25 = v26 >> 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v27 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v27);
      }

      v28 = (v20 - v22) >> 2;
      v29 = (4 * v24);
      v30 = (4 * v24 - 4 * v28);
      *v29 = v16;
      v21 = v29 + 1;
      memcpy(v30, v22, v23);
      v31 = v18[3];
      v18[3] = v30;
      v18[4] = v21;
      v18[5] = 0;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v20 = v16;
      v21 = v20 + 4;
    }

    v18[4] = v21;
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v231, *(*a3 + 4 * v16++));
    v15 = *a3;
  }

  while (v16 < (a3[1] - *a3) >> 2);
  if (!*(&v232 + 1) || (v32 = v232) == 0)
  {
LABEL_317:
    v13 = 11136;
    goto LABEL_318;
  }

  v215 = 0;
  v228 = vdupq_n_s64(2uLL);
  while (1)
  {
    v214 = v32;
    v33 = *(v32 + 16);
    v34 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*&v234[0], *(&v234[0] + 1), v33);
    v247 = v33;
    v36 = v34[3];
    v35 = v34[4];
    v37 = v35 - v36;
    if (v35 == v36)
    {
      goto LABEL_305;
    }

    v38 = v34;
    v39 = *(v218 + 12);
    v40 = *(a1 + 6);
    v41 = v39;
    if (v40)
    {
      if (v39 != *(v40 + 96))
      {
        break;
      }
    }

    v42 = v37 >> 2;
    vision::mod::CVMLMatrix<float,16ul>::initialize_(v243, v37 >> 2, v39);
    v219 = v39 << 32;
    v43 = v38[3];
    if (v38[4] != v43)
    {
      v44 = 0;
      do
      {
        DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(v218, *(v43 + 4 * v44));
        v46 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, v44);
        if (v219)
        {
          memmove(v46, DataForKthDescriptor, v219 >> 30);
        }

        ++v44;
        v43 = v38[3];
      }

      while (v44 < (v38[4] - v43) >> 2);
    }

    v47 = *a1;
    if (v47 < (v37 >> 2))
    {
      v222 = *a1;
      vision::mod::CVMLMatrix<float,16ul>::initialize_(v239, v47, v41);
      vision::mod::CVMLVector<float,16ul>::initialize_(v236, v41);
      v48 = a1[8];
      if (v48 == 1)
      {
        vision::mod::CVMLMatrix<float,16ul>::mean(v243, v236, 0);
        v74 = v236[1];
        goto LABEL_270;
      }

      if (v48)
      {
        syslog(5, "ERROR: unknown index mode");
        v75 = 0;
        v13 = 11132;
        goto LABEL_290;
      }

      v49 = *(a1 + 3);
      v212 = v49;
      if (v49 < 1 || (v221 = HIDWORD(v49), v49 <= 0))
      {
        syslog(5, "ERROR: invalid parameters in kmeans");
        syslog(5, "ERROR: kmeans error");
        v75 = 0;
        v13 = 11136;
        goto LABEL_290;
      }

      v50 = *(a1 + 3);
      v51 = a1[2];
      v52 = *(&v244 + 1);
      vision::mod::CVMLVector<float,16ul>::initialize_(&v271, *(&v244 + 1));
      if (v273 < *(&v244 + 1))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "vector length < cols");
        exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
        __cxa_throw(exception, off_1E77B0718, MEMORY[0x1E69E5280]);
      }

      vision::mod::CVMLMatrix<float,16ul>::mean(v243, &v271, 0);
      v53 = *(&v244 + 1);
      v54 = v272;
      if (*(&v244 + 1))
      {
        v55 = 0;
        v56 = v274;
        v58 = v243[1];
        v57 = v244;
        v59 = v244;
        v60 = 4 * v245;
        do
        {
          v61 = v56 * v55;
          if (v57)
          {
            v62 = 0.0;
            v63 = v58;
            v64 = v57;
            do
            {
              v62 = v62 + ((*v63 - v54[v61]) * (*v63 - v54[v61]));
              v63 = (v63 + v60);
              --v64;
            }

            while (v64);
          }

          else
          {
            v62 = 0.0;
          }

          v54[v61] = v62 / v59;
          ++v55;
          ++v58;
        }

        while (v55 != v53);
      }

      if (v52)
      {
        v65 = 4 * v52;
        v66 = 0.0;
        do
        {
          v67 = *v54++;
          v66 = v66 + v67;
          v65 -= 4;
        }

        while (v65);
      }

      else
      {
        v66 = 0.0;
      }

      if (v275 == 1 && v271)
      {
        free(v271);
      }

      *v258 = 0u;
      v259 = 0u;
      v260 = 1;
      vision::mod::CVMLMatrix<float,16ul>::mean(v243, v258, 1);
      *v289.__x_ = &unk_1F1973E60;
      *&v289.__x_[6] = &v289;
      vision::mod::broadcast<float,16ul>(v243, v258, &v289, 0, v243);
      std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](&v289);
      *v255 = 0u;
      v256 = 0u;
      v257 = 1;
      vision::mod::CVMLMatrix<float,16ul>::rowNorms(v243, v255, 1);
      vision::mod::CVMLMatrix<float,16ul>::initialize_(&v249, v222, *(&v244 + 1));
      v79 = v50;
      v80 = (v66 / v52) * v79;
      v81 = 5489;
      v289.__x_[0] = 5489;
      for (i = 1; i != 624; ++i)
      {
        v81 = i + 1812433253 * (v81 ^ (v81 >> 30));
        v289.__x_[i] = v81;
      }

      v289.__i_ = 0;
      if ((v51 & 0x80000000) == 0)
      {
        v289.__x_[0] = v51;
        for (j = 1; j != 624; ++j)
        {
          v51 = j + 1812433253 * (v51 ^ (v51 >> 30));
          v289.__x_[j] = v51;
        }

        v289.__i_ = 0;
      }

      v84 = log(v222);
      v85 = 0;
      v217 = v84;
      LODWORD(v86) = v84 + 2;
      v87 = v86;
      if (v86 <= 1)
      {
        v86 = 1;
      }

      else
      {
        v86 = v86;
      }

      v229 = v87;
      v230 = v86;
      v224 = 4 * v222;
      v88 = 3.4028e38;
      while (1)
      {
        v216 = v85;
        v89 = v244;
        LODWORD(v288) = 0;
        HIDWORD(v288) = v244 - 1;
        v90 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v289, &v288);
        v91 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, 0);
        v92 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, v90);
        __n = 4 * *(&v89 + 1);
        memcpy(v91, v92, 4 * *(&v89 + 1));
        vision::mod::CVMLMatrix<float,16ul>::initialize_(&v277, 1, v89);
        if (!v251)
        {
          v209 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v209, "row index out of range");
          goto LABEL_314;
        }

        if (!v252 || *(&v89 + 1) > v252)
        {
          v209 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v209, "col index out of range");
LABEL_314:
          v209->__vftable = (MEMORY[0x1E69E55B8] + 16);
          __cxa_throw(v209, off_1E77B0718, MEMORY[0x1E69E5280]);
        }

        v271 = v250;
        v272 = v250;
        v273 = 1;
        v274 = *(&v89 + 1);
        v275 = v253;
        v276 = 0;
        vision::mod::euclideanDistances<float,16ul>(&v271, v243, &v277, v255);
        if (v276 == 1 && v271)
        {
          free(v271);
        }

        v93 = v278;
        *(v278 + 4 * v90) = 0;
        vision::mod::CVMLMatrix<float,16ul>::initialize_(&v271, v229, *(&v89 + 1));
        vision::mod::CVMLMatrix<float,16ul>::initialize_(__p, v229, v89);
        v94 = v217;
        std::vector<unsigned long>::vector[abi:ne200100](&v262, v229);
        std::vector<float>::vector[abi:ne200100](&__dst, v89);
        std::vector<float>::vector[abi:ne200100](&__src, v89);
        std::vector<float>::vector[abi:ne200100](&v265, v89);
        if (v222 >= 2)
        {
          v225 = 4 * v89;
          v220 = __p[1];
          v95 = 4 * v269;
          v223 = 1;
          do
          {
            v96 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v277, 0);
            v97 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v277, 0) + 4 * v89;
            v98 = v265;
            if (v96 != v97)
            {
              v100 = *v96;
              v99 = v96 + 1;
              v101 = v100;
              *v265 = v100;
              if (v99 != v97)
              {
                v102 = v98 + 1;
                do
                {
                  v103 = *v99++;
                  v101 = v101 + v103;
                  *v102++ = v101;
                }

                while (v99 != v97);
              }
            }

            if (!v98 || !v89)
            {
              v208 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v208, "empty cumsum vector");
              v208->__vftable = (MEMORY[0x1E69E55C8] + 16);
              __cxa_throw(v208, off_1E77B0720, MEMORY[0x1E69E5298]);
            }

            if (v229)
            {
              v104 = 0;
              v105 = v262;
              v106 = v98[v89 - 1];
              do
              {
                v107 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v289);
                v108 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v289);
                if ((v89 & 0x3FFFFFFFFFFFFFFFLL) != 0)
                {
                  v109 = ((v108 >> 6) + (v107 >> 5) * 67108864.0) * 1.11022302e-16;
                  v110 = v106 * v109;
                  v111 = v98;
                  v112 = (4 * v89) >> 2;
                  do
                  {
                    v113 = v112 >> 1;
                    v114 = &v111[v112 >> 1];
                    v116 = *v114;
                    v115 = v114 + 1;
                    v112 += ~(v112 >> 1);
                    if (v116 < v110)
                    {
                      v111 = v115;
                    }

                    else
                    {
                      v112 = v113;
                    }
                  }

                  while (v112);
                }

                else
                {
                  v111 = v98;
                }

                v105[v104++] = v111 - v98;
              }

              while (v104 != v229);
              v94 = v217;
              if (v217 >= -1)
              {
                for (k = 0; k != v230; ++k)
                {
                  v118 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v271, k);
                  v119 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, *(v262 + k));
                  memcpy(v118, v119, __n);
                }
              }
            }

            vision::mod::euclideanDistances<float,16ul>(&v271, v243, __p, v255);
            if (v94 < -1)
            {
              v134 = -1;
            }

            else
            {
              v120 = v262;
              v121 = v220;
              v122 = v230;
              do
              {
                v123 = *v120++;
                v121[v123] = 0.0;
                v121 = (v121 + v95);
                --v122;
              }

              while (v122);
              v124 = 0;
              LODWORD(v125) = -1;
              v126 = 3.4028e38;
              v127 = v220;
              do
              {
                v128 = 0;
                v129 = __src;
                do
                {
                  v130 = v127[v128];
                  if (v130 >= *(v93 + 4 * v128))
                  {
                    v130 = *(v93 + 4 * v128);
                  }

                  v129[v128++] = v130;
                }

                while (v89 != v128);
                v131 = 0.0;
                if (v129 != v283)
                {
                  v132 = v129;
                  do
                  {
                    v133 = *v132++;
                    v131 = v131 + v133;
                  }

                  while (v132 != v283);
                }

                if (v125 == -1 || v131 < v126 && (v126 - v131) > 1.0e-14)
                {
                  v125 = *(v262 + v124);
                  memcpy(__dst, v129, v225);
                  v126 = v131;
                }

                ++v124;
                v127 = (v127 + v95);
              }

              while (v124 != v230);
              v134 = v125;
            }

            v135 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, v223);
            v136 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, v134);
            memcpy(v135, v136, __n);
            v137 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v277, 0);
            memcpy(v137, __dst, v225);
            ++v223;
          }

          while (v223 != v222);
        }

        if (v265)
        {
          v266 = v265;
          operator delete(v265);
        }

        if (__src)
        {
          v283 = __src;
          operator delete(__src);
        }

        if (__dst)
        {
          v286 = __dst;
          operator delete(__dst);
        }

        if (v262)
        {
          v263 = v262;
          operator delete(v262);
        }

        if (v270 == 1 && __p[0])
        {
          free(__p[0]);
        }

        if (v276 == 1 && v271)
        {
          free(v271);
        }

        if (v281 == 1 && v277)
        {
          free(v277);
        }

        v248 = 0.0;
        v139 = *(&v244 + 1);
        v138 = v244;
        LODWORD(v287) = -1;
        std::vector<int>::vector[abi:ne200100](__b, v244);
        std::vector<float>::vector[abi:ne200100](&__src, v138);
        vision::mod::CVMLMatrix<float,16ul>::initialize_(&v277, v222, v139);
        vision::mod::CVMLMatrix<float,16ul>::initialize_(&v271, v222, v139);
        v269 = 0;
        *__p = 0u;
        v268 = 0u;
        v270 = 1;
        vision::mod::CVMLMatrix<float,16ul>::initialize_(__p, v222, v138);
        LODWORD(v262) = 0;
        std::vector<int>::vector[abi:ne200100](&v265, v222);
        v248 = 3.4028e38;
        vision::mod::CVMLVector<float,16ul>::initialize_(&v262, v222);
        v140 = 0;
        v141 = v279;
        do
        {
          if (v141 < v251 || v280 < v252)
          {
            v206 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v206, "output matrix size too small");
            v206->__vftable = (MEMORY[0x1E69E55B8] + 16);
            __cxa_throw(v206, off_1E77B0718, MEMORY[0x1E69E5280]);
          }

          if (v251)
          {
            for (m = 0; m < v251; ++m)
            {
              v143 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v277, m);
              v144 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, m);
              memcpy(v143, v144, 4 * v252);
            }
          }

          __na = v140;
          v261 = 0.0;
          vision::mod::Kmeans<float,16ul>::labelEstimation_(v243, v222, &v249, v255, __p, __b[0], __src, &v261);
          v145 = __b[0];
          v146 = __src;
          v147 = v265;
          v148 = v244;
          bzero(v265, v224);
          v149 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, 0);
          bzero(v149, v253 * v224);
          if (v148)
          {
            v150 = 0;
            do
            {
              ++v147[v145[v150++]];
            }

            while (v148 != v150);
            v151 = 0;
            do
            {
              v152 = v145[v151];
              vision::mod::CVMLMatrix<float,16ul>::ptr(v243, v151);
              vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, v152);
              cblas_saxpy_NEWLAPACK();
              ++v151;
            }

            while (v148 != v151);
          }

          if (v222 >= 1)
          {
            v153 = 0;
            v154 = 0;
            v155 = 0;
            do
            {
              if (!v147[v155])
              {
                v156 = v153 - v154;
                v157 = (v153 - v154) >> 2;
                v158 = v157 + 1;
                if ((v157 + 1) >> 62)
                {
                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                if (-v154 >> 1 > v158)
                {
                  v158 = -v154 >> 1;
                }

                if (-v154 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v159 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v159 = v158;
                }

                if (v159)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v159);
                }

                v160 = (v153 - v154) >> 2;
                v161 = (4 * v157);
                v162 = (4 * v157 - 4 * v160);
                *v161 = v155;
                v153 = v161 + 1;
                memcpy(v162, v154, v156);
                if (v154)
                {
                  operator delete(v154);
                }

                v154 = v162;
              }

              ++v155;
            }

            while (v222 != v155);
            if (v153 == v154)
            {
              goto LABEL_211;
            }

            std::vector<unsigned long>::vector[abi:ne200100](&__dst, v148);
            v163 = __dst;
            v287 = v146;
            v164 = (__dst + 8 * v148);
            if (v148)
            {
              v165 = 0;
              v166 = (v148 - 1) & 0x1FFFFFFFFFFFFFFFLL;
              v167 = vdupq_n_s64(v166);
              v168 = xmmword_1A6027760;
              do
              {
                v169 = vmovn_s64(vcgeq_u64(v167, v168));
                if (v169.i8[0])
                {
                  v163[v165] = v165;
                }

                if (v169.i8[4])
                {
                  v163[v165 + 1] = v165 + 1;
                }

                v165 += 2;
                v168 = vaddq_s64(v168, v228);
              }

              while (((v166 + 2) & 0x3FFFFFFFFFFFFFFELL) != v165);
              v288 = &v287;
              if (v148 >= 129)
              {
                v170 = v148;
                while (1)
                {
                  v171 = operator new(8 * v170, MEMORY[0x1E69E5398]);
                  if (v171)
                  {
                    break;
                  }

                  v172 = v170 >> 1;
                  v173 = v170 > 1;
                  v170 >>= 1;
                  if (!v173)
                  {
                    goto LABEL_203;
                  }
                }

                v191 = v171;
                std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v163, v164, &v288, v148, v171, v170);
                operator delete(v191);
LABEL_204:
                v174 = v153 - v154;
                if (v153 != v154)
                {
                  v175 = 0;
                  v176 = v174 >> 2;
                  if (v176 <= 1)
                  {
                    v177 = 1;
                  }

                  else
                  {
                    v177 = v176;
                  }

                  do
                  {
                    v178 = *(__dst + v175);
                    v179 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, *(v154 + 4 * v175));
                    v180 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, v178);
                    memcpy(v179, v180, 4 * *(&v148 + 1));
                    ++v175;
                  }

                  while (v177 != v175);
                }

                if (__dst)
                {
                  v286 = __dst;
                  operator delete(__dst);
                }

LABEL_211:
                if (v154)
                {
                  operator delete(v154);
                }

                goto LABEL_213;
              }

              v172 = 0;
            }

            else
            {
              v172 = 0;
              v288 = &v287;
            }

LABEL_203:
            std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v163, v164, &v288, v148, 0, v172);
            goto LABEL_204;
          }

LABEL_213:
          v181 = v261;
          if (v261 < v248)
          {
            if (v273 < v251 || v274 < v252)
            {
              v207 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v207, "output matrix size too small");
              v207->__vftable = (MEMORY[0x1E69E55B8] + 16);
              __cxa_throw(v207, off_1E77B0718, MEMORY[0x1E69E5280]);
            }

            if (v251)
            {
              for (n = 0; n < v251; ++n)
              {
                v183 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v271, n);
                v184 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, n);
                memcpy(v183, v184, 4 * v252);
              }
            }

            v248 = v181;
          }

          v141 = v279;
          vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, 0);
          vision::mod::CVMLMatrix<float,16ul>::ptr(&v277, 0);
          cblas_saxpy_NEWLAPACK();
          vision::mod::CVMLMatrix<float,16ul>::rowNorms(&v277, &v262, 0);
          if (v222)
          {
            v185 = v263;
            v186 = 0.0;
            v187 = 4 * v222;
            do
            {
              v188 = *v185++;
              v186 = v186 + v188;
              v187 -= 4;
            }

            while (v187);
          }

          else
          {
            v186 = 0.0;
          }

          v189 = sqrtf(v186);
          v140 = __na + 1;
        }

        while (v189 > v80 && v140 != v221);
        if (v189 > 0.0)
        {
          vision::mod::Kmeans<float,16ul>::labelEstimation_(v243, v222, &v271, v255, __p, __b[0], __src, &v248);
        }

        if (v264 == 1 && v262)
        {
          free(v262);
        }

        if (v265)
        {
          v266 = v265;
          operator delete(v265);
        }

        if ((v270 & 1) != 0 && __p[0])
        {
          free(__p[0]);
        }

        if (v276 == 1 && v271)
        {
          free(v271);
        }

        if (v281 == 1 && v277)
        {
          free(v277);
        }

        if (__src)
        {
          v283 = __src;
          operator delete(__src);
        }

        if (__b[0])
        {
          __b[1] = __b[0];
          operator delete(__b[0]);
        }

        v192 = v248;
        if (v248 < v88)
        {
          if (v240 < v251 || *(&v240 + 1) < v252)
          {
            v210 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v210, "output matrix size too small");
            v210->__vftable = (MEMORY[0x1E69E55B8] + 16);
            __cxa_throw(v210, off_1E77B0718, MEMORY[0x1E69E5280]);
          }

          if (v251)
          {
            for (ii = 0; ii < v251; ++ii)
            {
              v194 = vision::mod::CVMLMatrix<float,16ul>::ptr(v239, ii);
              v195 = vision::mod::CVMLMatrix<float,16ul>::ptr(&v249, ii);
              memcpy(v194, v195, 4 * v252);
            }
          }

          v88 = v192;
        }

        v85 = v216 + 1;
        if (v216 + 1 == v212)
        {
          vision::mod::broadcastAdd<float,16ul>(v243, v258, 0, v243);
          vision::mod::broadcastAdd<float,16ul>(v239, v258, 0, v239);
          if (v254 == 1 && v249)
          {
            free(v249);
          }

          if (v257 == 1 && v255[0])
          {
            free(v255[0]);
          }

          if (v260 == 1 && v258[0])
          {
            free(v258[0]);
          }

          v74 = vision::mod::CVMLMatrix<float,16ul>::ptr(v239, 0);
LABEL_270:
          __p[1] = 0;
          __p[0] = 0;
          *&v268 = 0;
          if (v222)
          {
            v75 = 0;
            v196 = 1;
            v197 = v222;
            while (1)
            {
              v249 = 0;
              if (vision::mod::FaceID3Model::generateDescriptorID_(a1, &v249) != 11136)
              {
                break;
              }

              std::vector<long long>::push_back[abi:ne200100](__p, &v249);
              v198 = v247;
              *v289.__x_ = &v249;
              *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 12, v249) + 6) = v198;
              v75 = v196++ >= v222;
              if (!--v197)
              {
                v199 = __p[1];
                v200 = __p[0];
                v201 = (__p[1] - __p[0]) >> 3;
                goto LABEL_276;
              }
            }

            v200 = __p[0];
            v13 = 11107;
          }

          else
          {
            v199 = 0;
            v200 = 0;
            v201 = 0;
LABEL_276:
            vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(&v289, __p, v74, v219 >> 30, v201, 0);
            v289.__x_[26] = 1;
            *&v289.__x_[28] = 0;
            *v289.__x_ = &unk_1F19764A8;
            *&v289.__x_[24] = (v219 >> 30) >> 2;
            v202 = *(a1 + 6);
            if (v202)
            {
              (*(*v202 + 40))(v202, &v289);
            }

            else
            {
              DeepCopy = vision::mod::ImageDescriptorBufferAbstract::createDeepCopy(&v289);
              v204 = *(a1 + 6);
              *(a1 + 6) = DeepCopy;
              if (v204)
              {
                (*(*v204 + 8))(v204);
              }
            }

            v249 = &v247;
            v205 = std::__hash_table<std::__hash_value_type<int,std::vector<long long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<long long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<long long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<long long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 7, v247);
            std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v205 + 3, v200, v199, (v199 - v200) >> 3);
            if (v238 == 1 && v236[0])
            {
              free(v236[0]);
            }

            *v236 = 0u;
            v237 = 0u;
            v238 = 1;
            if (v242 == 1 && v239[0])
            {
              free(v239[0]);
            }

            v241 = 0;
            *v239 = 0u;
            v240 = 0u;
            v75 = 1;
            v242 = 1;
            *v289.__x_ = &unk_1F19764A8;
            free(*&v289.__x_[28]);
            vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(&v289);
            v13 = 11136;
          }

          if (v200)
          {
            __p[1] = v200;
            operator delete(v200);
          }

LABEL_290:
          if (v238 == 1 && v236[0])
          {
            free(v236[0]);
          }

          if (v242 == 1 && v239[0])
          {
            free(v239[0]);
          }

          if (v75)
          {
LABEL_297:
            if (v246 == 1 && v243[0])
            {
              free(v243[0]);
            }

            v245 = 0;
            *v243 = 0u;
            v244 = 0u;
            v13 = 11136;
            v246 = 1;
          }

          goto LABEL_301;
        }
      }
    }

    __p[1] = 0;
    __p[0] = 0;
    *&v268 = 0;
    while (1)
    {
      v249 = 0;
      if (vision::mod::FaceID3Model::generateDescriptorID_(a1, &v249) != 11136)
      {
        break;
      }

      std::vector<long long>::push_back[abi:ne200100](__p, &v249);
      v68 = v247;
      *v289.__x_ = &v249;
      *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 12, v249) + 6) = v68;
      if (!--v42)
      {
        v69 = vision::mod::CVMLMatrix<float,16ul>::ptr(v243, 0);
        v70 = __p[1];
        v71 = __p[0];
        v72 = (__p[1] - __p[0]) >> 3;
        vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(&v289, __p, v69, v219 >> 30, v72, 0);
        v289.__x_[26] = 1;
        *&v289.__x_[28] = 0;
        *v289.__x_ = &unk_1F19764A8;
        *&v289.__x_[24] = (v219 >> 30) >> 2;
        v73 = *(a1 + 6);
        if (v73)
        {
          (*(*v73 + 40))(v73, &v289);
        }

        else
        {
          v76 = vision::mod::ImageDescriptorBufferAbstract::createDeepCopy(&v289);
          v77 = *(a1 + 6);
          *(a1 + 6) = v76;
          if (v77)
          {
            (*(*v77 + 8))(v77);
          }
        }

        v249 = &v247;
        v78 = std::__hash_table<std::__hash_value_type<int,std::vector<long long>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<long long>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<long long>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<long long>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 7, v247);
        std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v78 + 3, v71, v70, v72);
        *v289.__x_ = &unk_1F19764A8;
        free(*&v289.__x_[28]);
        vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(&v289);
        if (v71)
        {
          operator delete(v71);
        }

        goto LABEL_297;
      }
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v13 = 11107;
LABEL_301:
    if (v246 == 1 && v243[0])
    {
      free(v243[0]);
    }

    if (v13 != 11136)
    {
      goto LABEL_323;
    }

LABEL_305:
    ++v215;
    if ((*(*v213 + 8))(v213))
    {
      if (v215 == DWORD2(v232))
      {
        v13 = 11136;
      }

      else
      {
        v13 = 11107;
      }

      goto LABEL_318;
    }

    v32 = *v214;
    if (!*v214)
    {
      goto LABEL_317;
    }
  }

  syslog(5, "ERROR: dimension mismatch between input data and global dictionary");
  v13 = 11112;
LABEL_323:
  syslog(5, "ERROR: error happened in building subdictionary");
LABEL_318:
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v231);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(v234);
  return v13;
}

void sub_1A5EE61B8()
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

  JUMPOUT(0x1A5EE62BCLL);
}

void sub_1A5EE61D4(void *a1, int a2)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&STACK[0x378]);
  if (v2)
  {
    STACK[0x298] = v2;
    operator delete(v2);
  }

  if (v8 == 1 && v7)
  {
    free(v7);
  }

  if (v10 == 1 && v9)
  {
    free(v9);
  }

  if (v12 == 1 && v11)
  {
    free(v11);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v5);
  std::__hash_table<std::__hash_value_type<int,std::vector<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<int>>>>::~__hash_table(&v6);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    syslog(5, "ERROR: memory allocation error");
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      JUMPOUT(0x1A5EE6368);
    }

    __cxa_begin_catch(a1);
    syslog(5, "ERROR: an unexpected exception thrown");
    __cxa_end_catch();
  }

  JUMPOUT(0x1A5EE4568);
}

void sub_1A5EE6354(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *vision::mod::CVMLMatrix<float,16ul>::initialize_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (16 - ((4 * a3) & 0xCuLL)) >> 2;
  if (((4 * a3) & 0xC) == 0)
  {
    v6 = 0;
  }

  v7 = v6 + a3;
  result = malloc_type_calloc(4 * a2 * (v6 + a3) + 15, 1uLL, 0xE79D4E86uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v11, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  v9 = 16 - (result & 0xF);
  if ((result & 0xF) == 0)
  {
    v9 = 0;
  }

  *a1 = result;
  *(a1 + 8) = &result[v9];
  *(a1 + 24) = a3;
  *(a1 + 32) = v7;
  *(a1 + 16) = a2;
  *(a1 + 40) = 1;
  return result;
}

uint64_t vision::mod::CVMLMatrix<float,16ul>::ptr(void *a1, unint64_t a2)
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

  return a1[1] + 4 * a1[4] * a2;
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

  return a1[1] + 4 * a1[4] * a2;
}

void sub_1A5EE6538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

char *vision::mod::CVMLVector<float,16ul>::initialize_(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(4 * a2 + 15, 1uLL, 0x495ACE9DuLL);
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

uint64_t vision::mod::CVMLMatrix<float,16ul>::mean(uint64_t result, void *a2, char a3)
{
  v4 = result;
  if (a3)
  {
    result = vision::mod::CVMLVector<float,16ul>::reset(a2, *(result + 24));
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
          result = vision::mod::CVMLMatrix<float,16ul>::ptr(v4, v8);
          v9 = v9 + *(result + 4 * v6);
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

      v10 = v9 / v7;
      *(a2[1] + 4 * a2[3] * v6++) = v10;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t vision::mod::FaceID3Model::generateDescriptorID_(vision::mod::FaceID3Model *this, uint64_t *a2)
{
  v4 = 10001;
  v5 = 11136;
  while (1)
  {
    v6 = rand();
    *a2 = v6;
    if (!std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::find<long long>(this + 12, v6))
    {
      break;
    }

    if (!--v4)
    {
      syslog(5, "reach maximum try to find the descriptorID");
      return 11107;
    }
  }

  return v5;
}

char *vision::mod::CVMLVector<float,16ul>::reset(uint64_t a1, uint64_t a2)
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

  return vision::mod::CVMLVector<float,16ul>::initialize_(a1, a2);
}

uint64_t vision::mod::CVMLMatrix<float,16ul>::rowNorms(uint64_t result, void *a2, char a3)
{
  v4 = result;
  if (a3)
  {
    result = vision::mod::CVMLVector<float,16ul>::reset(a2, *(result + 16));
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
      vision::mod::CVMLMatrix<float,16ul>::ptr(v4, v6);
      result = cblas_sdot_NEWLAPACK();
      *(a2[1] + 4 * a2[3] * v6++) = v7;
    }

    while (v6 < v4[2]);
  }

  return result;
}

void sub_1A5EE69EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t vision::mod::broadcastAdd<float,16ul>(void *a1, void *a2, int a3, void *a4)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F1973EF0;
  v5[3] = v5;
  vision::mod::broadcast<float,16ul>(a1, a2, v5, a3, a4);
  return std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v5);
}

void sub_1A5EE6AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::broadcast<float,16ul>(void *a1, void *a2, uint64_t a3, int a4, void *a5)
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
      v11 = vision::mod::CVMLMatrix<float,16ul>::ptr(a1, 0);
      v12 = a1[4];
      result = vision::mod::CVMLMatrix<float,16ul>::ptr(a5, 0);
      v14 = a1[3];
      if (v14)
      {
        v15 = result;
        v16 = 0;
        v17 = a1[2];
        v18 = 4 * a5[4];
        v19 = 4 * v12;
        do
        {
          if (v17)
          {
            v20 = 0;
            v36 = v11;
            v21 = v15;
            do
            {
              result = std::function<float ()(float,float)>::operator()(*(a3 + 24), *v11, *(a2[1] + 4 * a2[3] * v20));
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

  v23 = vision::mod::CVMLMatrix<float,16ul>::ptr(a1, 0);
  v24 = a1[4];
  result = vision::mod::CVMLMatrix<float,16ul>::ptr(a5, 0);
  v25 = a1[2];
  if (v25)
  {
    v26 = result;
    v27 = 0;
    v28 = a1[3];
    v29 = 4 * a5[4];
    v30 = 4 * v24;
    do
    {
      if (v28)
      {
        for (i = 0; i < v28; ++i)
        {
          result = std::function<float ()(float,float)>::operator()(*(a3 + 24), *(v23 + 4 * i), *(a2[1] + 4 * a2[3] * i));
          *(v26 + 4 * i) = v32;
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

uint64_t std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<float ()(float,float)>::operator()(uint64_t a1, float a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<void vision::mod::broadcastAdd<float,16ul>(vision::mod::CVMLMatrix<float,16ul> const&,vision::mod::CVMLVector<float,16ul> const&,int,vision::mod::CVMLMatrix<float,16ul>&,BOOL)::{lambda(float,float)#1},std::allocator<void vision::mod::broadcastAdd<float,16ul>(vision::mod::CVMLMatrix<float,16ul> const&,vision::mod::CVMLVector<float,16ul> const&,int,vision::mod::CVMLMatrix<float,16ul>&,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod12broadcastAddIfLm16EEEvRKNS0_10CVMLMatrixIT_XT0_EEERKNS0_10CVMLVectorIS3_XT0_EEEiRS4_bEUlffE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void vision::mod::Kmeans<float,16ul>::labelEstimation_(void *a1, int a2, void *a3, void **a4, void *a5, void *__b, float *a7, float *a8)
{
  v16 = a1[2];
  v17 = 4 * v16;
  if (v16)
  {
    memset(__b, 255, 4 * v16);
    memset_pattern16(a7, &unk_1A6038F20, 4 * v16);
  }

  vision::mod::euclideanDistances<float,16ul>(a3, a1, a5, a4);
  if (a2 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = vision::mod::CVMLMatrix<float,16ul>::ptr(a5, v18);
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
      v17 -= 4;
    }

    while (v17);
  }

  *a8 = v24;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * *result))
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
        std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, v25, a5);
        v26 = &v22[8 * v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[8 * a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
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
        std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
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
          v18 = *(v14 + 4 * v16);
          if (v18 > *(v14 + 4 * v17))
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
              if (v18 <= *(v14 + 4 * v17))
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

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
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
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
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
      std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
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
          if (*(v16 + 4 * *v14) <= *(v16 + 4 * v20))
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
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v23))
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

char *std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
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
        if (*(v14 + 4 * *a2) > *(v14 + 4 * *v13))
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
            if (*(v14 + 4 * v30) > *(v14 + 4 * *v20))
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
            if (*(v14 + 4 * *v18) > *(v14 + 4 * v24))
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
        result = std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v32, v18, v37, v16, a5, v10, a7, v52);
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
        result = std::__inplace_merge<std::_ClassicAlgPolicy,void vision::mod::argsort<float const*>(float const*,float const*,unsigned long *,BOOL)::{lambda(unsigned long,unsigned long)#2} &,unsigned long *>(v13, v35, v32, v36, v33, v17, a7, v52);
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
          v48 = *(*v46 + 4 * *a2);
          v49 = *(*v46 + 4 * *a7);
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
        if (*(*v41 + 4 * v42) <= *(*v41 + 4 * *(a2 - 1)))
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

void vision::mod::euclideanDistances<float,16ul>(void *a1, void *a2, void *a3, void **a4)
{
  if (a1[3] != a2[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "dimensions of data points mismatch");
    v16 = off_1E77B0720;
    v17 = MEMORY[0x1E69E5298];
LABEL_31:
    __cxa_throw(exception, v16, v17);
  }

  if (a1[2] > a3[2] || (v7 = a2[2], v7 > a3[3]))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "output distance matrix too small");
    v16 = off_1E77B0718;
    v17 = MEMORY[0x1E69E5280];
    goto LABEL_31;
  }

  v8 = a4;
  *v26 = 0u;
  v27 = 0u;
  v28 = 1;
  if (!a4)
  {
    vision::mod::CVMLVector<float,16ul>::reset(v26, v7);
    v8 = v26;
    vision::mod::CVMLMatrix<float,16ul>::rowNorms(a2, v26, 0);
  }

  *v23 = 0u;
  v24 = 0u;
  v22 = v8;
  v25 = 1;
  if (a1 != a2)
  {
    vision::mod::CVMLVector<float,16ul>::reset(v23, a1[2]);
    v22 = v23;
    vision::mod::CVMLMatrix<float,16ul>::rowNorms(a1, v23, 0);
  }

  if (a1[3] != a2[3])
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v18, "matrix size mismatch");
    v19 = MEMORY[0x1E69E5298];
    v20 = off_1E77B0720;
    v21 = MEMORY[0x1E69E55C8] + 16;
    goto LABEL_34;
  }

  if (a3[2] < a1[2] || a3[3] < a2[2])
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v18, "matrix size too small for output");
    v19 = MEMORY[0x1E69E5280];
    v20 = off_1E77B0718;
    v21 = MEMORY[0x1E69E55B8] + 16;
LABEL_34:
    v18->__vftable = v21;
    __cxa_throw(v18, v20, v19);
  }

  vision::mod::CVMLMatrix<float,16ul>::ptr(a1, 0);
  vision::mod::CVMLMatrix<float,16ul>::ptr(a2, 0);
  vision::mod::CVMLMatrix<float,16ul>::ptr(a3, 0);
  cblas_sgemm_NEWLAPACK();
  vision::mod::broadcastAdd<float,16ul>(a3, v22, 1, a3);
  vision::mod::broadcastAdd<float,16ul>(a3, v8, 0, a3);
  if (a3[2])
  {
    v9 = 0;
    do
    {
      v10 = vision::mod::CVMLMatrix<float,16ul>::ptr(a3, v9);
      for (i = a3[3]; i; --i)
      {
        *v10 = fmaxf(*v10, 0.0);
        ++v10;
      }

      ++v9;
      v12 = a3[2];
    }

    while (v9 < v12);
    if (a1 == a2 && v12)
    {
      v13 = 0;
      do
      {
        *(vision::mod::CVMLMatrix<float,16ul>::ptr(a3, v13) + 4 * v13) = 0;
        ++v13;
      }

      while (v13 < a3[2]);
    }
  }

  if (v25 == 1 && v23[0])
  {
    free(v23[0]);
  }

  if (v28 == 1)
  {
    v14 = v26[0];
    if (v26[0])
    {

      free(v14);
    }
  }
}

void sub_1A5EE7B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  __cxa_free_exception(v25);
  if (a19 == 1 && a15)
  {
    free(a15);
  }

  if (a25 == 1)
  {
    if (a21)
    {
      free(a21);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void vision::mod::broadcastMinus<float,16ul>(vision::mod::CVMLMatrix<float,16ul> const&,vision::mod::CVMLVector<float,16ul> const&,int,vision::mod::CVMLMatrix<float,16ul>&,BOOL)::{lambda(float,float)#1},std::allocator<void vision::mod::broadcastMinus<float,16ul>(vision::mod::CVMLMatrix<float,16ul> const&,vision::mod::CVMLVector<float,16ul> const&,int,vision::mod::CVMLMatrix<float,16ul>&,BOOL)::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod14broadcastMinusIfLm16EEEvRKNS0_10CVMLMatrixIT_XT0_EEERKNS0_10CVMLVectorIS3_XT0_EEEiRS4_bEUlffE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t vision::mod::FaceID3Model::getIdentityTrainingData(vision::mod::FaceID3Model *this, vision::mod::FaceID3Model *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v8 = vision::mod::FaceID3Model::checkTestingParams_(a2);
  *a4 = v8;
  if (v8 != 11136)
  {
    result = 0;
    goto LABEL_23;
  }

  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v9 <= v5)
    {
      v11 = v5 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & v5;
  }

  v13 = *(*(a2 + 7) + 8 * v11);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_21:
    v15 = &CVML_status_invalidParameter;
    goto LABEL_22;
  }

  v15 = &CVML_status_invalidParameter;
  while (1)
  {
    v16 = v14[1];
    if (v16 == v5)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v16 >= v9)
      {
        v16 %= v9;
      }
    }

    else
    {
      v16 &= v9 - 1;
    }

    if (v16 != v11)
    {
      goto LABEL_22;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (*(v14 + 4) != v5)
  {
    goto LABEL_19;
  }

  v18 = v14[3];
  v19 = v14[4];
  v17 = v14 + 3;
  if (v19 == v18)
  {
    v15 = &CVML_status_inconsistentState;
LABEL_22:
    result = 0;
    *a4 = (*v15 + 128) | 0x2B00;
  }

  else
  {
    result = (*(**(a2 + 6) + 32))(*(a2 + 6), v17);
    if (!result)
    {
      v15 = &CVML_status_memoryAllocationError;
      goto LABEL_22;
    }
  }

LABEL_23:
  *this = result;
  return result;
}

uint64_t vision::mod::FaceID3Model::checkTestingParams_(vision::mod::FaceID3Model *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    syslog(5, "ERROR: empty dictIds_");
LABEL_10:
    v3 = &CVML_status_inconsistentState;
    return (*v3 + 128) | 0x2B00;
  }

  if (!*(this + 10))
  {
    syslog(5, "ERROR: empty labels");
    goto LABEL_10;
  }

  v2 = *(*(this + 6) + 72);
  if (!v2)
  {
    syslog(5, "ERROR: empty dictionary data");
    goto LABEL_10;
  }

  if (v1 != v2)
  {
    syslog(5, "ERROR: number of elements dismatch between dictIds_ and dictData_");
    goto LABEL_10;
  }

  v3 = &CVML_status_ok;
  return (*v3 + 128) | 0x2B00;
}

uint64_t vision::mod::FaceID3Model::predict(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 64) < 1 || *(a2 + 96) < 1;
  if (v3 || (v4 = a2, v5 = *(a2 + 72), (v5 & 0x80000000) != 0))
  {
    syslog(5, "ERROR: invalid image descriptor buffer");
    return 11132;
  }

  if (v5)
  {
    result = vision::mod::FaceID3Model::checkTestingParams_(a1);
    if (result != 11136)
    {
      return result;
    }

    v9 = *(a1 + 48);
    v79 = 0;
    v80 = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v9 + 8), *(v9 + 16), (*(v9 + 16) - *(v9 + 8)) >> 3);
    vision::mod::FaceID3Model::normalizeDescriptor_(&v77, *(a1 + 48));
    v65 = v5 & 0x7FFFFFFF;
    if ((v5 & 0x7FFFFFFF) != 0)
    {
      v10 = 0;
      v63 = v4;
      v64 = a3;
      do
      {
        v11 = (*(*v4 + 16))(v4);
        (*(*v4 + 112))(v4, v11, v10);
        vision::mod::FaceID3Model::normalizeDescriptor_(&v76, v11);
        v13 = v76;
        v12 = v77;
        *(v76 + 104) = *(a1 + 44);
        v66 = v12;
        (*(*v13 + 80))(&__p, v13);
        v14 = __p;
        v15 = v75;
        while (v14 != v15)
        {
          *v14 = *v14 + *v14;
          ++v14;
        }

        v72 = 0;
        v73 = 0;
        v71 = &v72;
        v16 = v78;
        if (v79 == v78)
        {
          goto LABEL_41;
        }

        v17 = v10;
        v18 = 0;
        v19 = ((v79 - v78) >> 3) <= 1 ? 1 : (v79 - v78) >> 3;
        do
        {
          v68 = v16[v18];
          v20 = *(__p + v18);
          v82 = &v68;
          v21 = 1.0 - v20;
          v22 = *(std::__hash_table<std::__hash_value_type<long long,int>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,int>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,int>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 96), v68) + 6);
          LODWORD(v81) = v22;
          v23 = v72;
          if (!v72)
          {
            goto LABEL_26;
          }

          v24 = &v72;
          do
          {
            v25 = v23;
            v26 = v24;
            v27 = *(v23 + 8);
            if (v27 >= v22)
            {
              v24 = v23;
            }

            v23 = v23[v27 < v22];
          }

          while (v23);
          if (v24 == &v72)
          {
            goto LABEL_26;
          }

          if (v27 < v22)
          {
            v25 = v26;
          }

          if (v22 >= *(v25 + 8))
          {
            v82 = &v81;
            v28 = v21;
            if (*(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, v22) + 5) >= v28)
            {
              v82 = &v81;
              v28 = *(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, v81) + 5);
            }

            v82 = &v81;
            *(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, v81) + 5) = v28;
          }

          else
          {
LABEL_26:
            v82 = &v81;
            *(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v71, v22) + 5) = v21;
          }

          ++v18;
        }

        while (v18 != v19);
        v10 = v17;
        if (v73 != 1)
        {
LABEL_41:
          if (v71 != &v72)
          {
            operator new();
          }

          std::__introsort<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,false>(0, 0, 0, 1);
          v83 = 0;
          *&v84 = 0;
          v82 = &v83;
          v69 = 0;
          v70 = 0;
          v68 = &v69;
          v30 = v64;
          v36 = v71;
          if (v71 != &v72)
          {
            do
            {
              v37 = *(v36 + 8);
              v38 = v69;
              if (!v69)
              {
                goto LABEL_53;
              }

              v39 = &v69;
              do
              {
                v40 = v38;
                v41 = v39;
                v42 = *(v38 + 8);
                if (v42 >= v37)
                {
                  v39 = v38;
                }

                v38 = v38[v42 < v37];
              }

              while (v38);
              if (v39 == &v69)
              {
                goto LABEL_53;
              }

              if (v42 < v37)
              {
                v40 = v41;
              }

              if (v37 < *(v40 + 8))
              {
LABEL_53:
                v81 = v36 + 4;
                std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v68, v37)[5] = 0;
              }

              v43 = v36[1];
              if (v43)
              {
                do
                {
                  v44 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v36[2];
                  v35 = *v44 == v36;
                  v36 = v44;
                }

                while (!v35);
              }

              v36 = v44;
            }

            while (v44 != &v72);
          }

          std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v83);
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v68 = &v69;
          v29 = v71;
          v30 = v64;
          if (v71 != &v72)
          {
            do
            {
              v31 = *(v29 + 5);
              v32 = *(v29 + 8);
              v82 = v29 + 4;
              *(std::__tree<std::__value_type<int,double>,std::__map_value_compare<int,std::__value_type<int,double>,std::less<int>,true>,std::allocator<std::__value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v68, v32) + 5) = fmax(fmin(v31, 1.0), 0.0);
              v33 = v29[1];
              if (v33)
              {
                do
                {
                  v34 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v34 = v29[2];
                  v35 = *v34 == v29;
                  v29 = v34;
                }

                while (!v35);
              }

              v29 = v34;
            }

            while (v34 != &v72);
          }
        }

        v45 = v30[1];
        v46 = v30[2];
        if (v45 >= v46)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *v30) >> 3);
          v51 = v50 + 1;
          if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v52 = 0xAAAAAAAAAAAAAAABLL * ((v46 - *v30) >> 3);
          if (2 * v52 > v51)
          {
            v51 = 2 * v52;
          }

          if (v52 >= 0x555555555555555)
          {
            v53 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v53 = v51;
          }

          v85 = v30;
          if (v53)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<int,double>>>(v53);
          }

          v55 = 24 * v50;
          v82 = 0;
          v83 = v55;
          *(&v84 + 1) = 0;
          *v55 = v68;
          v56 = v69;
          *(24 * v50 + 8) = v69;
          v57 = 24 * v50 + 8;
          v58 = v70;
          *(v55 + 16) = v70;
          if (v58)
          {
            v56[2] = v57;
            v68 = &v69;
            v69 = 0;
            v70 = 0;
          }

          else
          {
            *v55 = v57;
          }

          *&v84 = v55 + 24;
          v59 = v30[1];
          v60 = v55 + *v30 - v59;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<int,double>>,std::map<int,double>*>(v30, *v30, v59, v60);
          v61 = *v30;
          *v30 = v60;
          v62 = v30[2];
          v67 = v84;
          *(v30 + 1) = v84;
          *&v84 = v61;
          *(&v84 + 1) = v62;
          v82 = v61;
          v83 = v61;
          std::__split_buffer<std::map<int,double>>::~__split_buffer(&v82);
          v54 = v67;
        }

        else
        {
          *v45 = v68;
          v47 = v69;
          v45[1] = v69;
          v48 = v45 + 1;
          v49 = v70;
          v45[2] = v70;
          if (v49)
          {
            v47[2] = v48;
            v68 = &v69;
            v69 = 0;
            v70 = 0;
          }

          else
          {
            *v45 = v48;
          }

          v54 = v45 + 3;
        }

        v30[1] = v54;
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v69);
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v72);
        if (__p)
        {
          v75 = __p;
          operator delete(__p);
        }

        (*(*v13 + 8))(v13);
        ++v10;
        v4 = v63;
      }

      while (v10 != v65);
    }

    else
    {
      v66 = v77;
    }

    if (v66)
    {
      (*(*v66 + 8))(v66);
    }

    if (v78)
    {
      operator delete(v78);
    }
  }

  return 11136;
}

void sub_1A5EE87D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    __cxa_begin_catch(exception_object);
    syslog(5, "ERROR: memory allocation failed");
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    __cxa_begin_catch(exception_object);
    syslog(5, "ERROR: unexpected exception thrown");
    __cxa_end_catch();
  }

  JUMPOUT(0x1A5EE8794);
}

uint64_t vision::mod::FaceID3Model::normalizeDescriptor_(vision::mod::FaceID3Model *this, vision::mod::ImageDescriptorBufferFloat32 *a2)
{
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 12);
    do
    {
      DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v5);
      __C = 0.0;
      vDSP_svesq(DataForKthDescriptor, 1, &__C, v6);
      v9 = 1.0 / sqrtf(__C);
      MEMORY[0x1AC5587B0](DataForKthDescriptor, 1, &v9, DataForKthDescriptor, 1, v6);
      ++v5;
    }

    while (v4 != v5);
  }

  result = (*(*a2 + 24))(a2);
  *this = result;
  return result;
}

double *std::__introsort<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,false>(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v81 = *(a2 - 1);
        v82 = v8[1];
        if (v81 > v82)
        {
          v83 = *v8;
          *v8 = *(a2 - 4);
          *(a2 - 4) = v83;
          v8[1] = v81;
          *(a2 - 1) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v88 = v8 + 3;
      v89 = v8[3];
      v90 = v8 + 1;
      v91 = v8[1];
      v92 = v8[5];
      if (v89 <= v91)
      {
        if (v92 > v89)
        {
          v139 = *(v8 + 4);
          v140 = *(v8 + 8);
          *(v8 + 4) = v140;
          *(v8 + 8) = v139;
          v8[3] = v92;
          v8[5] = v89;
          if (v92 > v91)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 4) = v141;
            goto LABEL_188;
          }

LABEL_189:
          v92 = v89;
        }
      }

      else
      {
        v93 = *v8;
        if (v92 > v89)
        {
          *v8 = *(v8 + 8);
          *(v8 + 8) = v93;
          goto LABEL_187;
        }

        *v8 = *(v8 + 4);
        *(v8 + 4) = v93;
        v8[1] = v89;
        v8[3] = v91;
        if (v92 > v91)
        {
          *(v8 + 4) = *(v8 + 8);
          *(v8 + 8) = v93;
          v90 = v8 + 3;
LABEL_187:
          v88 = v8 + 5;
          v89 = v91;
LABEL_188:
          *v90 = v92;
          *v88 = v91;
          goto LABEL_189;
        }
      }

      v149 = *(a2 - 1);
      if (v149 <= v92)
      {
        return result;
      }

      v150 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 4);
      *(a2 - 4) = v150;
      v8[5] = v149;
      *(a2 - 1) = v92;
      v136 = v8[5];
      v151 = v8[3];
      if (v136 <= v151)
      {
        return result;
      }

      v152 = *(v8 + 4);
      v153 = *(v8 + 8);
      *(v8 + 4) = v153;
      *(v8 + 8) = v152;
      v8[3] = v136;
      v8[5] = v151;
      v137 = v8[1];
      if (v136 <= v137)
      {
        return result;
      }

      v154 = *v8;
      *v8 = v153;
      *(v8 + 4) = v154;
LABEL_194:
      v8[1] = v136;
      v8[3] = v137;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 2;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = v98[3];
            v100 = v98[1];
            v98 = v94;
            if (v99 > v100)
            {
              v101 = *v94;
              v102 = v97;
              while (1)
              {
                v103 = v8 + v102;
                *(v103 + 4) = *(v8 + v102);
                *(v103 + 3) = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v102 -= 16;
                if (v99 <= *(v103 - 1))
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_131;
                }
              }

              v104 = v8;
LABEL_131:
              *v104 = v101;
              *(v104 + 8) = v99;
            }

            v94 = v98 + 2;
            v97 += 16;
          }

          while (v98 + 2 != a2);
        }
      }

      else if (!v96)
      {
        v142 = v8 + 1;
        do
        {
          v143 = v7[3];
          v144 = v7[1];
          v7 = v94;
          if (v143 > v144)
          {
            v145 = *v94;
            v146 = v142;
            do
            {
              *(v146 + 2) = *(v146 - 2);
              v146[2] = *v146;
              v147 = *(v146 - 2);
              v146 -= 2;
            }

            while (v143 > v147);
            *(v146 + 2) = v145;
            v146[2] = v143;
          }

          v94 = v7 + 2;
          v142 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v105 = (v9 - 2) >> 1;
      v106 = v105;
      do
      {
        v107 = v106;
        if (v105 >= v106)
        {
          v108 = (2 * v106) | 1;
          v109 = &v8[2 * v108];
          if (2 * v107 + 2 < v9 && v109[1] > v109[3])
          {
            v109 += 2;
            v108 = 2 * v107 + 2;
          }

          v110 = &v8[2 * v107];
          v111 = v109[1];
          v112 = v110[1];
          if (v111 <= v112)
          {
            v113 = *v110;
            do
            {
              v114 = v110;
              v110 = v109;
              *v114 = *v109;
              v114[1] = v111;
              if (v105 < v108)
              {
                break;
              }

              v115 = 2 * v108;
              v108 = (2 * v108) | 1;
              v109 = &v8[2 * v108];
              v116 = v115 + 2;
              if (v116 < v9 && v109[1] > v109[3])
              {
                v109 += 2;
                v108 = v116;
              }

              v111 = v109[1];
            }

            while (v111 <= v112);
            *v110 = v113;
            v110[1] = v112;
          }
        }

        v106 = v107 - 1;
      }

      while (v107);
      while (2)
      {
        v117 = 0;
        v118 = *v8;
        v119 = v8[1];
        v120 = v8;
        do
        {
          v121 = &v120[2 * v117];
          v122 = v121 + 2;
          v123 = (2 * v117) | 1;
          v117 = 2 * v117 + 2;
          if (v117 >= v9)
          {
            v117 = v123;
          }

          else
          {
            v124 = v121[3];
            v125 = v121[5];
            v126 = v121 + 4;
            if (v124 <= v125)
            {
              v117 = v123;
            }

            else
            {
              v122 = v126;
            }
          }

          *v120 = *v122;
          v120[1] = v122[1];
          v120 = v122;
        }

        while (v117 <= ((v9 - 2) >> 1));
        if (v122 != a2 - 2)
        {
          *v122 = *(a2 - 4);
          v122[1] = *(a2 - 1);
          *(a2 - 4) = v118;
          *(a2 - 1) = v119;
          v127 = (v122 - v8 + 16) >> 4;
          v128 = v127 < 2;
          v129 = v127 - 2;
          if (!v128)
          {
            v130 = v129 >> 1;
            v131 = &v8[2 * v130];
            v132 = v131[1];
            v119 = v122[1];
            if (v132 > v119)
            {
              v133 = *v122;
              do
              {
                v134 = v122;
                v122 = v131;
                *v134 = *v131;
                v134[1] = v132;
                if (!v130)
                {
                  break;
                }

                v130 = (v130 - 1) >> 1;
                v131 = &v8[2 * v130];
                v132 = v131[1];
              }

              while (v132 > v119);
              *v122 = v133;
LABEL_164:
              v122[1] = v119;
            }
          }

          a2 -= 2;
          v128 = v9-- <= 2;
          if (v128)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v122 = v118;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 4);
            *(v8 + 4) = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 4);
        if (v30 > v28)
        {
          *(v8 + 4) = *(a2 - 8);
          *(a2 - 8) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        *(v8 + 4) = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 4);
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 > v44)
          {
            v45 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 4);
            *(v10 + 4) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 8);
        if (v40 > v38)
        {
          *(v8 + 8) = *(a2 - 12);
          *(a2 - 12) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        *(v8 + 8) = *(v10 + 4);
        *(v10 + 4) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 > v39)
        {
          *(v10 + 4) = *(a2 - 12);
          *(a2 - 12) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 4);
          *v10 = v51;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = *(v10 + 4);
          *(v10 + 4) = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 > v48)
        {
          v69 = *(v10 + 4);
          *v10 = v69;
          *(v10 + 4) = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v69;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 4);
      *(a2 - 4) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = v8;
      do
      {
        v57 = v56;
        v56 += 2;
      }

      while (v57[3] > v55);
      v58 = a2;
      if (v57 == v8)
      {
        v61 = a2;
        while (v56 < v61)
        {
          v59 = v61 - 2;
          v62 = *(v61 - 1);
          v61 -= 2;
          if (v62 > v55)
          {
            goto LABEL_70;
          }
        }

        v59 = v61;
      }

      else
      {
        do
        {
          v59 = v58 - 2;
          v60 = *(v58 - 1);
          v58 -= 2;
        }

        while (v60 <= v55);
      }

LABEL_70:
      v8 = v56;
      if (v56 < v59)
      {
        v63 = v59;
        do
        {
          v64 = *v8;
          *v8 = *v63;
          *v63 = v64;
          v65 = *(v8 + 1);
          v8[1] = *(v63 + 8);
          *(v63 + 8) = v65;
          do
          {
            v66 = v8[3];
            v8 += 2;
          }

          while (v66 > v55);
          do
          {
            v67 = *(v63 - 8);
            v63 -= 16;
          }

          while (v67 <= v55);
        }

        while (v8 < v63);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
      if (v56 < v59)
      {
        goto LABEL_81;
      }

      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v68)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 1))
      {
        v72 = v8 + 2;
        do
        {
          v8 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v73 = v72[1];
          v72 += 2;
        }

        while (v55 <= v73);
      }

      else
      {
        v70 = v8;
        do
        {
          v8 = v70 + 2;
          v71 = v70[3];
          v70 += 2;
        }

        while (v55 <= v71);
      }

      v74 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v74 = v75 - 2;
          v76 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 > v76);
      }

      while (v8 < v74)
      {
        v77 = *v8;
        *v8 = *v74;
        *v74 = v77;
        v78 = *(v8 + 1);
        v8[1] = v74[1];
        *(v74 + 1) = v78;
        do
        {
          v79 = v8[3];
          v8 += 2;
        }

        while (v55 <= v79);
        do
        {
          v80 = *(v74 - 1);
          v74 -= 2;
        }

        while (v55 > v80);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 4);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 4) = v54;
      *(v8 - 1) = v55;
    }
  }

  v84 = v8[3];
  v85 = v8[1];
  v86 = *(a2 - 1);
  if (v84 <= v85)
  {
    if (v86 <= v84)
    {
      return result;
    }

    v135 = *(v8 + 4);
    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v135;
    v8[3] = v86;
    *(a2 - 1) = v84;
    v136 = v8[3];
    v137 = v8[1];
    if (v136 <= v137)
    {
      return result;
    }

    v138 = *v8;
    *v8 = *(v8 + 4);
    *(v8 + 4) = v138;
    goto LABEL_194;
  }

  v87 = *v8;
  if (v86 <= v84)
  {
    *v8 = *(v8 + 4);
    *(v8 + 4) = v87;
    v8[1] = v84;
    v8[3] = v85;
    v148 = *(a2 - 1);
    if (v148 <= v85)
    {
      return result;
    }

    *(v8 + 4) = *(a2 - 4);
    *(a2 - 4) = v87;
    v8[3] = v148;
  }

  else
  {
    *v8 = *(a2 - 4);
    *(a2 - 4) = v87;
    v8[1] = v86;
  }

  *(a2 - 1) = v85;
  return result;
}

double *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,0>(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *>(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = *(a1 + 4);
          *(a1 + 4) = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          *(a1 + 4) = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 4);
      *(a2 - 4) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = *(a1 + 4);
      *(a1 + 4) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::FaceID3Model::softmax_(std::map<int,double> const&)::$_0 &,std::pair<int,double> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 4);
      v30 = *(a1 + 8);
      *(a1 + 4) = v30;
      *(a1 + 8) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      *(a1 + 4) = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = *(a1 + 4);
        *(a1 + 4) = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 4) = *(a1 + 8);
        *(a1 + 8) = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 8);
    *(a1 + 8) = *(a2 - 4);
    *(a2 - 4) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 4);
    v46 = *(a1 + 8);
    *(a1 + 4) = v46;
    *(a1 + 8) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    *(a1 + 4) = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 4) = *(a1 + 8);
      *(a1 + 8) = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 4);
    v27 = *(a1 + 8);
    *(a1 + 4) = v27;
    *(a1 + 8) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 4) = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 12) = *(a1 + v39 + 32);
        *(v40 + 7) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= *(v40 + 3))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t vision::mod::FaceID3Model::serialize(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  strcpy(v29, "FaceID3Model_v1_d16");
  v2 = std::ostream::write();
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    return 11125;
  }

  v3 = std::ostream::write();
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    return 11125;
  }

  v4 = std::ostream::write();
  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
  {
    return 11125;
  }

  v5 = std::ostream::write();
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
  {
    return 11125;
  }

  v6 = std::ostream::write();
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    return 11125;
  }

  v7 = std::ostream::write();
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0 || vision::mod::FaceID3KmeansParams::serialize() != 11136)
  {
    return 11125;
  }

  v28 = a1[15];
  std::vector<long long>::vector[abi:ne200100](&v26, v28);
  std::vector<int>::vector[abi:ne200100](&__p, v28);
  v8 = a1[14];
  if (v8)
  {
    v9 = v26;
    v10 = __p;
    do
    {
      *v9++ = v8[2];
      *v10++ = *(v8 + 6);
      v8 = *v8;
    }

    while (v8);
  }

  v11 = std::ostream::write();
  if ((*(v11 + *(*v11 - 24) + 32) & 5) == 0)
  {
    if (!v28)
    {
      v12 = 11136;
      goto LABEL_13;
    }

    v14 = std::ostream::write();
    if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
    {
      v15 = std::ostream::write();
      if ((*(v15 + *(*v15 - 24) + 32) & 5) == 0)
      {
        v27 = v26;
        v25 = __p;
        v16 = a1[6];
        if (*(v16 + 72) == v28)
        {
          v23[3] = *(v16 + 96);
          memset(v23, 0, 24);
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v23, *(v16 + 8), *(v16 + 16), (*(v16 + 16) - *(v16 + 8)) >> 3);
          v17 = std::ostream::write();
          v18 = v23[0];
          if ((*(v17 + *(*v17 - 24) + 32) & 5) != 0)
          {
            v19 = &CVML_status_IOError;
          }

          else
          {
            v20 = std::ostream::write();
            v19 = &CVML_status_IOError;
            if ((*(v20 + *(*v20 - 24) + 32) & 5) == 0)
            {
              v21 = std::ostream::write();
              if ((*(v21 + *(*v21 - 24) + 32) & 5) == 0)
              {
                v19 = &CVML_status_ok;
              }
            }
          }

          v22 = *v19;
          if (v18)
          {
            operator delete(v18);
          }

          v12 = (v22 + 128) | 0x2B00;
          goto LABEL_13;
        }

        syslog(5, "ERROR: number of elements dismatch between dictIds_ and dictData_");
      }
    }
  }

  v12 = 11125;
LABEL_13:
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return v12;
}

void sub_1A5EEA020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::FaceID3Model::deserialize(void *a1, uint64_t a2, void *a3)
{
  *a3 = 11136;
  v5 = std::istream::read();
  if ((*(v5 + *(*v5 - 24) + 32) & 5) == 0)
  {
    if (v13 == 0x4D33444965636146 && *v14 == 0x5F31765F6C65646FLL && *&v14[3] == 0x3631645F31765F6CLL)
    {
      v8 = std::istream::read();
      if ((*(v8 + *(*v8 - 24) + 32) & 5) == 0)
      {
        v9 = std::istream::read();
        if ((*(v9 + *(*v9 - 24) + 32) & 5) == 0)
        {
          v10 = std::istream::read();
          if ((*(v10 + *(*v10 - 24) + 32) & 5) == 0)
          {
            v11 = std::istream::read();
            if ((*(v11 + *(*v11 - 24) + 32) & 5) == 0)
            {
              v12 = std::istream::read();
              if ((*(v12 + *(*v12 - 24) + 32) & 5) == 0 && vision::mod::FaceID3KmeansParams::deserialize() == 11136)
              {
                std::make_unique[abi:ne200100]<vision::mod::FaceID3Model,int &,int &,int &,vision::mod::FaceIDIndexMode &,float &,0>();
              }
            }
          }
        }
      }
    }

    else
    {
      syslog(5, "ERROR: incorrect header");
    }
  }

  *a3 = 11125;
  *a1 = 0;
}

void sub_1A5EEA6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, vision::mod::FaceID3Model *a35)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&a9);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  std::unique_ptr<vision::mod::FaceID3Model>::~unique_ptr[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

vision::mod::FaceID3Model **std::unique_ptr<vision::mod::FaceID3Model>::~unique_ptr[abi:ne200100](vision::mod::FaceID3Model **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vision::mod::FaceID3Model::~FaceID3Model(v2);
    MEMORY[0x1AC556B00]();
  }

  return a1;
}

void sub_1A5EEAA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNPixelBufferMLFeatureProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5EEB060(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23074(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _createValueConfidenceCurveForValidPairData(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  HIDWORD(v5) = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v6 = (a1 + 4);
  v7 = 9;
  do
  {
    LODWORD(v5) = *v6;
    if (*v6 >= 0.0)
    {
      *(v12 + v4) = *(v6 - 1);
      *(v10 + v4++) = LODWORD(v5);
    }

    v6 += 2;
    --v7;
  }

  while (v7);
  if (!v4)
  {
    result = 0;
    goto LABEL_9;
  }

  result = [MEMORY[0x1E69DF9C0] curveWithValues:v12 confidences:v10 count:v4 error:{a3, v5}];
  if (result)
  {
LABEL_9:
    v9 = result;
    *a2 = v9;

    return 1;
  }

  return result;
}

uint64_t _getValueForConfidence(void *a1, float *a2, int a3, float *a4, void *a5, float a6)
{
  v11 = a1;
  v12 = _validateValueConfidencePair(a2, v11, a5);
  if (!a3)
  {
    if (v12)
    {
      if (a2[1] > a6)
      {
        v13 = a2 + 2;
        v16 = 8;
        while (_validateValueConfidencePair(v13, v11, a5))
        {
          v17 = v13[1];
          if (v17 < a6)
          {
            v23 = *(v13 - 1) - v17;
            if (v23 == 0.0)
            {
              v24 = 0.5;
            }

            else
            {
              v24 = (a6 - v17) / v23;
            }

LABEL_28:
            v18 = *(v13 - 2) + (v24 * (*v13 - *(v13 - 2)));
            goto LABEL_29;
          }

          if (v17 == a6)
          {
LABEL_20:
            v18 = *v13;
            goto LABEL_29;
          }

          v13 += 2;
          if (!--v16)
          {
LABEL_17:
            v18 = a2[16];
            goto LABEL_29;
          }
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_30;
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  if (a2[1] < a6)
  {
    v13 = a2 + 2;
    v14 = 8;
    while (_validateValueConfidencePair(v13, v11, a5))
    {
      v15 = v13[1];
      if (v15 > a6)
      {
        v20 = *(v13 - 1);
        v21 = v15 - v20;
        if (v21 == 0.0)
        {
          v22 = 0.5;
        }

        else
        {
          v22 = (a6 - v20) / v21;
        }

        v24 = 1.0 - v22;
        goto LABEL_28;
      }

      if (v15 == a6)
      {
        goto LABEL_20;
      }

      v13 += 2;
      if (!--v14)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  v18 = *a2;
LABEL_29:
  *a4 = v18;
  v19 = 1;
LABEL_30:

  return v19;
}

BOOL _validateValueConfidencePair(float *a1, void *a2, void *a3)
{
  v3 = a1[1];
  if (a3 && v3 < 0.0)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MEMORY[0x1E696AD98];
    v7 = *a1;
    v8 = a2;
    *&v9 = v7;
    v10 = [v6 numberWithFloat:v9];
    v11 = [v5 stringWithFormat:@"no %@ is defined at %@", v8, v10];

    *a3 = [VNError errorForOutOfBoundsErrorWithLocalizedDescription:v11];
  }

  return v3 >= 0.0;
}

uint64_t _getConfidenceForValue(void *a1, float *a2, int a3, float *a4, void *a5, float a6)
{
  v11 = a1;
  if (!_validateValueConfidencePair(a2, v11, a5))
  {
LABEL_9:
    v15 = 0;
    goto LABEL_22;
  }

  if (*a2 < a6)
  {
    v12 = a2 + 2;
    v13 = 8;
    while (_validateValueConfidencePair(v12, v11, a5))
    {
      if (*v12 > a6)
      {
        v16 = v12 - 2;
        v17 = *(v12 - 2);
        v18 = *v12 - v17;
        if (v18 == 0.0)
        {
          v19 = 0.5;
        }

        else
        {
          v19 = (a6 - v17) / v18;
        }

        if (a3)
        {
          v20 = v12 - 2;
        }

        else
        {
          v19 = 1.0 - v19;
          v20 = v12;
        }

        if (a3)
        {
          v16 = v12;
        }

        v14 = v20[1] + (v19 * (v16[1] - v20[1]));
        goto LABEL_21;
      }

      if (*v12 == a6)
      {
        v14 = v12[1];
        goto LABEL_21;
      }

      v12 += 2;
      if (!--v13)
      {
        v14 = a2[17];
        goto LABEL_21;
      }
    }

    goto LABEL_9;
  }

  v14 = a2[1];
LABEL_21:
  *a4 = v14;
  v15 = 1;
LABEL_22:

  return v15;
}

void sub_1A5EF09DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    free(a15);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _parseValueConfidenceArrayWithIncreasingConfidences(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if ([v5 count] == 18)
  {
    v6 = 0;
    v7 = 1.0;
    v8 = 0.0;
    if (a3)
    {
      v7 = 0.0;
    }

    while (1)
    {
      v9 = v7;
      v10 = (a2 + 4 * v6);
      v11 = [v5 objectAtIndex:v6];
      [v11 floatValue];
      *v10 = v12;

      if (*v10 < v8)
      {
        break;
      }

      v14 = v6 + 1;
      *&v13 = *v10;
      v15 = [v5 objectAtIndex:{v14, v13}];
      [v15 floatValue];
      *(v10 + 1) = v16;

      v7 = v10[1];
      if (v7 >= 0.0)
      {
        if (a3)
        {
          if (v7 < v9)
          {
            break;
          }
        }

        else if (v7 > v9)
        {
          break;
        }
      }

      v8 = *v10;
      v17 = v14 - 1;
      v6 = v14 + 1;
      if (v17 >= 0x10)
      {
        v18 = 1;
        goto LABEL_13;
      }
    }
  }

  v18 = 0;
LABEL_13:

  return v18;
}

void polynomialFit(const double *a1, double *a2, double *a3, int a4, const double *a5, const double *a6, const double *a7)
{
  std::vector<double>::vector[abi:ne200100](&__p, 4uLL);
  v10 = __p;
  v11 = *a2;
  v12 = malloc_type_calloc(9uLL, 8uLL, 0x100004000313F17uLL);
  v13 = malloc_type_malloc(0x30uLL, 0x100004000313F17uLL);
  v14 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
  v15 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
  v16 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
  v17 = malloc_type_calloc(3 * a4, 8uLL, 0x100004000313F17uLL);
  v18 = v17;
  if (a4 >= 1)
  {
    v19 = v17;
    v20 = a4 & 0x7FFFFFFF;
    do
    {
      *v19 = 0x3FF0000000000000;
      v21 = *a2 - v11;
      *&v19[8 * (a4 & 0x7FFFFFFF)] = v21;
      v22 = *a2++;
      *&v19[16 * (a4 & 0x7FFFFFFF)] = (v22 - v11) * v21;
      v19 += 8;
      --v20;
    }

    while (v20);
  }

  v23 = 0;
  if (a4 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = a4;
  }

  v25 = 8 * a4;
  v26 = v17;
  do
  {
    if (a4 <= 0)
    {
      v27 = v16[v23];
    }

    else
    {
      v27 = v16[v23];
      v28 = v26;
      v29 = v24;
      do
      {
        v30 = *v28++;
        v27 = v27 + v30 * v30;
        v16[v23] = v27;
        --v29;
      }

      while (v29);
    }

    v16[v23++] = sqrt(v27);
    v26 = (v26 + v25);
  }

  while (v23 != 3);
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = 0;
    v34 = v18;
    do
    {
      v35 = 0.0;
      if (a4 >= 1)
      {
        v36 = v34;
        v37 = &v18[v31];
        v38 = v24;
        do
        {
          v39 = *v36++;
          v40 = v39;
          v41 = *v37++;
          v35 = v35 + v40 * v41;
          --v38;
        }

        while (v38);
      }

      v12[3 * v32 + v33] = v35 / (v16[v33] * v16[v32]);
      ++v33;
      v34 = (v34 + v25);
    }

    while (v33 != 3);
    ++v32;
    v31 += a4;
    if (v32 == 3)
    {
      v42 = 0;
      v43 = v18;
      do
      {
        if (a4 <= 0)
        {
          v44 = v15[v42];
        }

        else
        {
          v44 = v15[v42];
          v45 = v43;
          v46 = a3;
          v47 = a4;
          do
          {
            v48 = *v45++;
            v49 = v48;
            v50 = *v46++;
            v44 = v49 * v50 + v44;
            v15[v42] = v44;
            --v47;
          }

          while (v47);
        }

        v15[v42] = v44 / v16[v42];
        ++v42;
        v43 = (v43 + v25);
      }

      while (v42 != 3);
      v51 = 0;
      v52 = (v13 + 1);
      v53 = 1;
      v54 = 8;
      v55 = 16;
      v56 = v13;
      v57 = v13;
      v58 = v12;
      while (1)
      {
        v59 = *v58;
        *v57 = *v58;
        if (v51)
        {
          for (i = 0; i != v51; ++i)
          {
            v59 = v59 - *&v56[i] * *&v56[i];
            *v57 = v59;
          }

          v61 = *v58;
        }

        else
        {
          v61 = v59;
        }

        v62 = v61 * 0.000000001;
        if (v59 < v62)
        {
          v59 = v62;
        }

        *v57 = sqrt(v59);
        v63 = &v57[v51];
        if (v51 <= 1)
        {
          v64 = v63 + 1;
          v65 = v52;
          v66 = v55;
          v67 = v53;
          do
          {
            v68 = v58[1];
            ++v58;
            v69 = v68;
            *v64 = v68;
            if (v51)
            {
              for (j = 0; j != v51; ++j)
              {
                v69 = v69 - *&v65[8 * j] * *&v56[j];
                *v64 = v69;
              }
            }

            *v64 = v69 / *v57;
            v64 += ++v67;
            v65 += v66;
            v66 += 8;
          }

          while (v67 != 3);
        }

        ++v51;
        v57 = v63 + 2;
        v58 += v51 + 1;
        ++v53;
        v56 = (v56 + v54);
        v54 += 8;
        v52 += v55;
        v55 += 8;
        if (v51 == 3)
        {
          v71 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
          v72 = 0;
          v73 = v13;
          do
          {
            v74 = v15[v72];
            v71[v72] = v74;
            if (v72)
            {
              v75 = v71;
              v76 = v72;
              v77 = v73;
              do
              {
                v78 = *v77++;
                v79 = v78;
                v80 = *v75++;
                v74 = v74 - v79 * v80;
                v71[v72] = v74;
                --v76;
              }

              while (v76);
            }

            else
            {
              v77 = v73;
            }

            v73 = v77 + 1;
            v71[v72++] = v74 / *v77;
          }

          while (v72 != 3);
          v81 = 0;
          for (k = 3; ; --k)
          {
            v83 = k - 1;
            v84 = v71[k - 1];
            v14[k - 1] = v84;
            if (k <= 2)
            {
              v85 = &v77[k];
              v86 = v81;
              do
              {
                v84 = v84 - *v85 * v14[v86 + 3];
                v14[v83] = v84;
                v85 += v86 + 4;
              }

              while (!__CFADD__(v86++, 1));
            }

            v14[v83] = v84 / *v77;
            v77 -= k;
            --v81;
            if (k <= 1)
            {
              free(v71);
              v89 = 0;
              v10[3] = v11;
              do
              {
                v10[v89] = v14[v89] / v16[v89];
                ++v89;
              }

              while (v89 != 3);
              free(v12);
              free(v13);
              free(v14);
              free(v15);
              free(v16);
              free(v18);
              v91 = 0uLL;
              v92 = 0;
              std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v91, __p, v94, (v94 - __p) >> 3);
              a1[3] = 0.0;
              operator new();
            }
          }
        }
      }
    }
  }
}

void sub_1A5EF1728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5EF17B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z13polynomialFitPKdS0_mmS0_S0_S0_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::__clone(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F1973FB0;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a2 + 1), a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  a2[4] = a1[4];
  return result;
}

void std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F1973FB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1AC556B00);
}

void *std::__function::__func<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,std::vector<double> ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F1973FB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1A5EF25D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void generate_size_search_stablizer(_DWORD *a1)
{
  v2 = 0;
  v3 = (a1 + 2);
  v27 = vdupq_n_s64(0xAuLL);
  do
  {
    v33 = vdupq_n_s64(v2);
    v4 = vorrq_s8(v33, xmmword_1A6027760);
    v5 = vmovn_s64(vcgtq_u64(v27, v4));
    v29 = vuzp1_s16(v5, v5).u8[0];
    v31 = v4;
    v35 = expf(((v2 - 9) * (v2 - 9)) / -30.0);
    *&v6 = expf(((v2 - 10) * (v2 - 10)) / -30.0);
    *(&v6 + 1) = v35;
    v36 = v6;
    v7 = expf(((v2 - 8) * (v2 - 8)) / -30.0);
    v8 = v36;
    *(&v8 + 2) = v7;
    v37 = v8;
    v9 = expf(((v2 - 7) * (v2 - 7)) / -30.0);
    if (v29)
    {
      *(v3 - 2) = v37;
    }

    v10 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v31));
    if (vuzp1_s16(v10, v10).i8[2])
    {
      *(v3 - 1) = *(&v37 + 1);
    }

    v11 = vorrq_s8(v33, xmmword_1A6027770);
    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v11))).i32[1])
    {
      *v3 = *(&v37 + 2);
    }

    v12 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v11));
    if (vuzp1_s16(v12, v12).i8[6])
    {
      v3[1] = v9;
    }

    v2 += 4;
    v3 += 4;
  }

  while (v2 != 12);
  v13 = 0;
  a1[10] = 1065353216;
  v14 = (a1 + 14);
  v28 = vdupq_n_s64(0xAuLL);
  do
  {
    v15 = v13 + 4;
    v34 = vdupq_n_s64(v13);
    v16 = vorrq_s8(v34, xmmword_1A6027760);
    v17 = vmovn_s64(vcgtq_u64(v28, v16));
    v30 = vuzp1_s16(v17, v17).u8[0];
    v32 = v16;
    v18 = ((v13 + 1) * (v13 + 1)) / -26.0;
    v19 = ((v13 + 3) * (v13 + 3)) / -26.0;
    v38 = expf(((v13 + 2) * (v13 + 2)) / -26.0);
    *&v20 = expf(v18);
    *(&v20 + 1) = v38;
    v39 = v20;
    v21 = expf(v19);
    v22 = v39;
    *(&v22 + 2) = v21;
    v40 = v22;
    v23 = expf((v15 * v15) / -26.0);
    if (v30)
    {
      *(v14 - 3) = v40;
    }

    v24 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v32));
    if (vuzp1_s16(v24, v24).i8[2])
    {
      *(v14 - 2) = *(&v40 + 1);
    }

    v25 = vorrq_s8(v34, xmmword_1A6027770);
    if (vuzp1_s16(*&v25, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v25))).i32[1])
    {
      *(v14 - 1) = *(&v40 + 2);
    }

    v26 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v25));
    if (vuzp1_s16(v26, v26).i8[6])
    {
      *v14 = v23;
    }

    v14 += 4;
    v13 = v15;
  }

  while (v15 != 12);
}

void ctrTrackerInitialization_freeContext(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      for (i = 2048; i != 2112; i += 16)
      {
        free(*(*a1 + i));
        free(*(*a1 + i + 8));
      }

      free(*(*a1 + 2112));
      free(*(*a1 + 2120));
      v3 = *a1;
    }

    else
    {
      v3 = 0;
    }

    free(v3);
    v4 = *(a1 + 2);
    if (v4)
    {
      free(*(v4 + 245992));
      free(*(*(a1 + 2) + 246000));
      free(*(*(a1 + 2) + 246008));
      free(*(*(a1 + 2) + 246016));
      v5 = 4;
      v6 = 245936;
      do
      {
        free(*(*(a1 + 2) + v6 - 8));
        free(*(*(a1 + 2) + v6));
        v6 += 16;
        --v5;
      }

      while (v5);
      v7 = 246032;
      v8 = 3;
      do
      {
        free(*(*(a1 + 2) + v7 - 8));
        free(*(*(a1 + 2) + v7));
        v7 += 16;
        --v8;
      }

      while (v8);
      vDSP_destroy_fftsetup(*(*(a1 + 2) + 250200));
      v9 = *(a1 + 2);
    }

    else
    {
      v9 = 0;
    }

    free(v9);
    v10 = *(a1 + 4);
    if (v10)
    {
      free(*(v10 + 65632));
      free(*(*(a1 + 4) + 65640));
      v11 = *(a1 + 4);
    }

    else
    {
      v11 = 0;
    }

    free(v11);
    free(*(a1 + 1));
    tplTrackerResampler_free(a1 + 3);

    free(a1);
  }
}

void sub_1A5EF46DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  _Block_object_dispose(&a36, 8);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a42);
  _Block_object_dispose((v45 - 192), 8);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v45 - 144);

  _Unwind_Resume(a1);
}

void sub_1A5EF4C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a14;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void vision::mod::ImageClassifierAbstract::classifyDescriptors(vision::mod::ImageClassifierAbstract *this, const vision::mod::ImageDescriptorBufferAbstract *a2, void *a3, int a4)
{
  (*(*a2 + 24))(&v27, a2);
  (*(*v27 + 8))(&v25);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  vision::mod::ImageClassifierAbstract::classifyDescriptorsNoComulative(v24, a2, a3, a4);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v20 = 0uLL;
  v21 = 0;
  v8 = *(a2 + 24);
  if (v8 == 1)
  {
    v11 = *(a2 + 25);
    v12 = *(a2 + 26);
    ImageClassifier_getBatchCumulativeLabels(&v27, v24, *(a2 + 28));
    ImageClassifier_getLabelsAuto(&v18, v29, v22, v11, v12);
  }

  else
  {
    if (v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3955;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v9 = *(a2 + 25);
    v10 = *(a2 + 27);
    ImageClassifier_getBatchCumulativeLabels(&v27, v24, *(a2 + 28));
    ImageClassifier_getLabels(&v18, v29, v22, v10, v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v29);
  v13 = v27;
  v27 = 0;
  if (v13)
  {
    operator delete(v13);
  }

  std::vector<std::pair<std::string,float>>::__vdeallocate(&v20);
  v20 = v18;
  v21 = v19;
  v19 = 0;
  v18 = 0uLL;
  v27 = &v18;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v27);
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  v15 = *(&v20 + 1);
  for (i = v20; i != v15; i += 32)
  {
    v16 = *(i + 24);
    v27 = i;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, i) + 10) = v16;
  }

  v27 = &v20;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v27);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(0);
  v27 = v24;
  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1A5EF4F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v23 - 104);
  a9 = &a13;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a17);
  a17 = &a23;
  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&a17);
  v25 = *(v23 - 112);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void vision::mod::ImageClassifierAbstract::classifyDescriptorsNoComulative(vision::mod::ImageClassifierAbstract *this, const vision::mod::ImageDescriptorBufferAbstract *a2, void *a3, int a4)
{
  (*(*a2 + 24))(&__p, a2);
  (*(*__p + 64))(&v35);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a3[9])
  {
    v8 = 0;
    do
    {
      (*(*a3 + 112))(a3, v35, v8);
      (*(*a2 + 56))(v32, a2, v35);
      *v29 = 0u;
      *v30 = 0u;
      v31 = 1065353216;
      if (a4)
      {
        vision::mod::ImageClassifierAbstract::ImageClassifier_filterdisallowedListedLabels(&__p, a2, v32);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v29, &__p);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v39[0]);
        v9 = __p;
        __p = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        v31 = v34;
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,float>,void *> *>>(v29, v33);
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 >= v10)
      {
        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *this) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0x666666666666666)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *this) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x333333333333333)
        {
          v16 = 0x666666666666666;
        }

        else
        {
          v16 = v14;
        }

        v40 = this;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<std::string,float>>>(v16);
        }

        __p = 0;
        v38 = (40 * v13);
        v39[0] = (40 * v13);
        v39[1] = 0;
        std::unordered_map<std::string,float>::unordered_map(40 * v13, v29);
        v39[0] = v39[0] + 40;
        v17 = *this;
        v18 = *(this + 1);
        v19 = *this - v18;
        v20 = v38 + v19;
        if (*this != v18)
        {
          v21 = *this;
          v22 = v38 + v19;
          do
          {
            v23 = std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__hash_table(v22, v21);
            v21 += 5;
            v22 = (v23 + 40);
          }

          while (v21 != v18);
          do
          {
            std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v17);
            v17 += 40;
          }

          while (v17 != v18);
        }

        v24 = *this;
        *this = v20;
        v25 = *(this + 2);
        v28 = v39[0];
        *(this + 8) = *v39;
        v39[0] = v24;
        v39[1] = v25;
        __p = v24;
        v38 = v24;
        std::__split_buffer<std::unordered_map<std::string,float>>::~__split_buffer(&__p);
        v12 = v28;
      }

      else
      {
        std::unordered_map<std::string,float>::unordered_map(*(this + 1), v29);
        v12 = (v11 + 40);
      }

      *(this + 1) = v12;
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v30[0]);
      v26 = v29[0];
      v29[0] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v33);
      v27 = v32[0];
      v32[0] = 0;
      if (v27)
      {
        operator delete(v27);
      }

      ++v8;
    }

    while (a3[9] > v8);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_1A5EF52B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unordered_map<std::string,float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1A5EF57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v36 - 112) = &a13;
  std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100]((v36 - 112));

  _Block_object_dispose(&a26, 8);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a32);

  _Unwind_Resume(a1);
}

void sub_1A5EF5D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  _Block_object_dispose((v24 - 152), 8);
  _Block_object_dispose((v24 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1A5EF64A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 144);
  if (v35)
  {
    *(v33 - 136) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1A5EF6718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  vision::mod::ImageDescriptorAugmenterAbstract::~ImageDescriptorAugmenterAbstract(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::vector<vImage_Buffer>::__init_with_size[abi:ne200100]<vImage_Buffer*,vImage_Buffer*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vImage_Buffer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5EF67A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_56c55_ZTSNSt3__16vectorI13vImage_BufferNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_56c55_ZTSNSt3__16vectorI13vImage_BufferNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<vImage_Buffer>::__init_with_size[abi:ne200100]<vImage_Buffer*,vImage_Buffer*>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
}

void std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(*a1);
    std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(a1[1]);
    v2 = a1[10];
    if (v2)
    {
      a1[11] = v2;
      operator delete(v2);
    }

    v3 = a1[7];
    if (v3)
    {
      a1[8] = v3;
      operator delete(v3);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::destroy(*a1);
    std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::destroy(a1[1]);
    InternalObservedParabola::~InternalObservedParabola((a1 + 6));

    operator delete(a1);
  }
}

void InternalObservedParabola::~InternalObservedParabola(InternalObservedParabola *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    *(this + 92) = v2;
    operator delete(v2);
  }

  v3 = *(this + 85);
  if (v3)
  {
    *(this + 86) = v3;
    operator delete(v3);
  }

  v4 = *(this + 82);
  if (v4)
  {
    *(this + 83) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

BOOL sortPointsByXThenY(double *a1, double *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return a1[1] > a2[1];
  }

  return 0;
}

void sanitize(void *a1, __int128 **a2, int a3, int a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v9 - v8));
  v22 = sortPointsByXThenY;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,false>(v8, v9, &v22, v11, 1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = *a2;
  v12 = a2[1];
  std::vector<CGPointWithPts>::push_back[abi:ne200100](a1, v12 - 3);
  v14 = -1431655765 * ((v12 - v13) >> 4) - 2;
  if ((v14 & 0x80000000) == 0)
  {
    v15 = a3;
    v16 = a4;
    v17 = v14 + 1;
    v18 = 3 * (-1431655765 * ((v12 - v13) >> 4) - 2);
    do
    {
      v19 = &(*a2)[v18];
      v20 = a1[1];
      if (vabdd_f64(*v19, *(v20 - 48)) > v15 || vabdd_f64(*(v19 + 8), *(v20 - 40)) > v16)
      {
        std::vector<CGPointWithPts>::push_back[abi:ne200100](a1, v19);
      }

      v18 -= 3;
    }

    while (v17-- > 1);
  }
}

void sub_1A5EF76F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,false>(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a1;
  v547 = a2;
  v543 = a2 - 9;
  v544 = a2 - 6;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v385 = *a3;
      v386 = *v9;
      v387 = v9[2];
      *v556 = v9[1];
      *&v556[16] = v387;
      v555 = v386;
      v388 = *a1;
      v389 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v389;
      v553 = v388;
      if (!v385(&v555, &v553))
      {
        return;
      }

LABEL_107:
      v400 = *a1;
      v401 = a1[2];
      *v556 = a1[1];
      *&v556[16] = v401;
      v555 = v400;
      v402 = *v9;
      v403 = v9[1];
      *(a1 + 28) = *(v9 + 28);
      *a1 = v402;
      a1[1] = v403;
      v404 = v555;
      v405 = *v556;
      goto LABEL_108;
    }

LABEL_9:
    if (v11 <= 1151)
    {
      v406 = a1 + 3;
      v408 = a1 == a2 || v406 == a2;
      if (a5)
      {
        if (!v408)
        {
          v409 = 0;
          v410 = a1;
          do
          {
            v411 = v410;
            v410 = v406;
            v412 = *a3;
            v413 = *v410;
            v414 = v410[2];
            *v556 = v410[1];
            *&v556[16] = v414;
            v555 = v413;
            v415 = *v411;
            v416 = v411[2];
            *v554 = v411[1];
            *&v554[16] = v416;
            v553 = v415;
            if (v412(&v555, &v553))
            {
              v417 = *v410;
              v418 = v410[2];
              *v556 = v410[1];
              *&v556[16] = v418;
              v555 = v417;
              v419 = v409;
              while (1)
              {
                v420 = (a1 + v419);
                v421 = *(a1 + v419 + 16);
                v420[3] = *(a1 + v419);
                v420[4] = v421;
                *(v420 + 76) = *(a1 + v419 + 28);
                if (!v419)
                {
                  break;
                }

                v422 = *a3;
                v553 = v555;
                *v554 = *v556;
                *&v554[16] = *&v556[16];
                v423 = *(v420 - 3);
                v424 = *(v420 - 1);
                v551 = *(v420 - 2);
                v552 = v424;
                v550 = v423;
                v419 -= 48;
                if (((v422)(&v553, &v550) & 1) == 0)
                {
                  v425 = (a1 + v419 + 48);
                  goto LABEL_125;
                }
              }

              v425 = a1;
LABEL_125:
              v426 = v555;
              v427 = *v556;
              *(v425 + 28) = *&v556[12];
              *v425 = v426;
              v425[1] = v427;
              a2 = v547;
            }

            v406 = v410 + 3;
            v409 += 48;
          }

          while (v410 + 3 != a2);
        }
      }

      else if (!v408)
      {
        do
        {
          v514 = a1;
          a1 = v406;
          v515 = *a3;
          v516 = *a1;
          v517 = a1[2];
          *v556 = a1[1];
          *&v556[16] = v517;
          v555 = v516;
          v518 = *v514;
          v519 = v514[2];
          *v554 = v514[1];
          *&v554[16] = v519;
          v553 = v518;
          if (v515(&v555, &v553))
          {
            v520 = *a1;
            v521 = a1[2];
            *v556 = a1[1];
            *&v556[16] = v521;
            v555 = v520;
            v522 = a1;
            do
            {
              v523 = v522 - 3;
              v524 = *(v522 - 2);
              *v522 = *(v522 - 3);
              v522[1] = v524;
              *(v522 + 28) = *(v522 - 20);
              v525 = *a3;
              v553 = v555;
              *v554 = *v556;
              *&v554[16] = *&v556[16];
              v526 = *(v522 - 6);
              v527 = *(v522 - 4);
              v551 = *(v522 - 5);
              v552 = v527;
              v550 = v526;
              v528 = v525(&v553, &v550);
              v522 = v523;
            }

            while ((v528 & 1) != 0);
            v529 = v555;
            v530 = *v556;
            *(v523 + 28) = *&v556[12];
            *v523 = v529;
            v523[1] = v530;
            a2 = v547;
          }

          v406 = a1 + 3;
        }

        while (a1 + 3 != a2);
      }

      return;
    }

    if (!a4)
    {
      if (a1 != a2)
      {
        v428 = (v12 - 2) >> 1;
        v546 = v428;
        do
        {
          v429 = v428;
          if (v546 >= v428)
          {
            v430 = (2 * v428) | 1;
            v431 = &a1[3 * v430];
            if (2 * v428 + 2 < v12)
            {
              v432 = *a3;
              v433 = *v431;
              v434 = v431[2];
              *v556 = v431[1];
              *&v556[16] = v434;
              v555 = v433;
              v435 = v431[3];
              v436 = v431[5];
              *v554 = v431[4];
              *&v554[16] = v436;
              v553 = v435;
              if (v432(&v555, &v553))
              {
                v431 += 3;
                v430 = 2 * v429 + 2;
              }
            }

            v437 = &a1[3 * v429];
            v438 = *a3;
            v439 = *v431;
            v440 = v431[2];
            *v556 = v431[1];
            *&v556[16] = v440;
            v555 = v439;
            v441 = *v437;
            v442 = v437[2];
            *v554 = v437[1];
            *&v554[16] = v442;
            v553 = v441;
            a2 = v547;
            if (((v438)(&v555, &v553) & 1) == 0)
            {
              v443 = *v437;
              v444 = v437[2];
              *v556 = v437[1];
              *&v556[16] = v444;
              v555 = v443;
              do
              {
                v445 = v431;
                v446 = *v431;
                v447 = v431[1];
                *(v437 + 28) = *(v431 + 28);
                *v437 = v446;
                v437[1] = v447;
                if (v546 < v430)
                {
                  break;
                }

                v448 = (2 * v430) | 1;
                v431 = &a1[3 * v448];
                v449 = 2 * v430 + 2;
                if (v449 < v12)
                {
                  v450 = *a3;
                  v451 = *v431;
                  v452 = v431[2];
                  *v554 = v431[1];
                  *&v554[16] = v452;
                  v553 = v451;
                  v453 = v431[3];
                  v454 = v431[5];
                  v551 = v431[4];
                  v552 = v454;
                  v550 = v453;
                  if (v450(&v553, &v550))
                  {
                    v431 += 3;
                    v448 = v449;
                  }
                }

                v455 = *a3;
                v456 = *v431;
                v457 = v431[2];
                *v554 = v431[1];
                *&v554[16] = v457;
                v550 = v555;
                v551 = *v556;
                v552 = *&v556[16];
                v553 = v456;
                v437 = v445;
                v430 = v448;
              }

              while (!v455(&v553, &v550));
              v458 = v555;
              v459 = *v556;
              *(v445 + 28) = *&v556[12];
              *v445 = v458;
              v445[1] = v459;
              a2 = v547;
            }
          }

          v428 = v429 - 1;
        }

        while (v429);
        v460 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
        do
        {
          v461 = 0;
          *v549 = a1[1];
          *&v549[16] = a1[2];
          v548 = *a1;
          v462 = a1;
          do
          {
            v463 = &v462[3 * v461];
            v464 = v463 + 3;
            v465 = (2 * v461) | 1;
            v466 = 2 * v461 + 2;
            if (v466 < v460)
            {
              v467 = *a3;
              v468 = *v464;
              v469 = v463[5];
              *v556 = v463[4];
              *&v556[16] = v469;
              v555 = v468;
              v470 = v463 + 6;
              v471 = v463[6];
              v472 = v463[8];
              *v554 = v463[7];
              *&v554[16] = v472;
              v553 = v471;
              if (v467(&v555, &v553))
              {
                v464 = v470;
                v465 = v466;
              }
            }

            v473 = *v464;
            v474 = v464[1];
            *(v462 + 28) = *(v464 + 28);
            *v462 = v473;
            v462[1] = v474;
            v462 = v464;
            v461 = v465;
          }

          while (v465 <= (v460 - 2) / 2);
          v475 = a2 - 3;
          if (v464 == a2 - 3)
          {
            v478 = a2 - 3;
            *(v464 + 28) = *&v549[12];
            *v464 = v548;
            v464[1] = *v549;
          }

          else
          {
            v476 = *v475;
            v477 = *(a2 - 2);
            *(v464 + 28) = *(a2 - 20);
            *v464 = v476;
            v464[1] = v477;
            *(a2 - 20) = *&v549[12];
            *v475 = v548;
            *(a2 - 2) = *v549;
            v478 = a2 - 3;
            v479 = v464 - a1 + 48;
            if (v479 >= 49)
            {
              v480 = (-2 - 0x5555555555555555 * (v479 >> 4)) >> 1;
              v481 = &a1[3 * v480];
              v482 = *a3;
              v483 = *v481;
              v484 = v481[2];
              *v556 = v481[1];
              *&v556[16] = v484;
              v555 = v483;
              v485 = *v464;
              v486 = v464[2];
              *v554 = v464[1];
              *&v554[16] = v486;
              v553 = v485;
              if (v482(&v555, &v553))
              {
                v487 = *v464;
                v488 = v464[2];
                *v556 = v464[1];
                *&v556[16] = v488;
                v555 = v487;
                do
                {
                  v489 = v481;
                  v490 = *v481;
                  v491 = v481[1];
                  *(v464 + 28) = *(v481 + 28);
                  *v464 = v490;
                  v464[1] = v491;
                  if (!v480)
                  {
                    break;
                  }

                  v480 = (v480 - 1) >> 1;
                  v492 = *a3;
                  v481 = &a1[3 * v480];
                  v493 = *v481;
                  v494 = v481[2];
                  *v554 = v481[1];
                  *&v554[16] = v494;
                  v550 = v555;
                  v551 = *v556;
                  v552 = *&v556[16];
                  v553 = v493;
                  v464 = v489;
                }

                while (((v492)(&v553, &v550) & 1) != 0);
                v495 = v555;
                v496 = *v556;
                *(v489 + 28) = *&v556[12];
                *v489 = v495;
                v489[1] = v496;
              }
            }
          }

          v497 = v460-- <= 2;
          a2 = v478;
        }

        while (!v497);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &a1[3 * (v12 >> 1)];
    v15 = *a3;
    if (v11 >= 0x1801)
    {
      v16 = *v14;
      v17 = v14[2];
      *v556 = v14[1];
      *&v556[16] = v17;
      v555 = v16;
      v18 = *a1;
      v19 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v19;
      v553 = v18;
      v20 = v15(&v555, &v553);
      v21 = *a3;
      if (v20)
      {
        v22 = *v9;
        v23 = v9[2];
        *v556 = v9[1];
        *&v556[16] = v23;
        v555 = v22;
        v24 = *v14;
        v25 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v25;
        v553 = v24;
        if (v21(&v555, &v553))
        {
          v26 = *a1;
          v27 = a1[2];
          *v556 = a1[1];
          *&v556[16] = v27;
          v555 = v26;
          v28 = *v9;
          v29 = v9[1];
          *(a1 + 28) = *(v9 + 28);
          *a1 = v28;
          a1[1] = v29;
          goto LABEL_26;
        }

        v86 = *a1;
        v87 = a1[2];
        *v556 = a1[1];
        *&v556[16] = v87;
        v555 = v86;
        v88 = *v14;
        v89 = v14[1];
        *(a1 + 28) = *(v14 + 28);
        *a1 = v88;
        a1[1] = v89;
        v90 = v555;
        v91 = *v556;
        *(v14 + 28) = *&v556[12];
        *v14 = v90;
        v14[1] = v91;
        v92 = *a3;
        v93 = *v9;
        v94 = v9[2];
        *v556 = v9[1];
        *&v556[16] = v94;
        v555 = v93;
        v95 = *v14;
        v96 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v96;
        v553 = v95;
        if (v92(&v555, &v553))
        {
          v97 = *v14;
          v98 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v98;
          v555 = v97;
          v99 = *v9;
          v100 = v9[1];
          *(v14 + 28) = *(v9 + 28);
          *v14 = v99;
          v14[1] = v100;
LABEL_26:
          v101 = v555;
          v102 = *v556;
          *(v9 + 28) = *&v556[12];
          *v9 = v101;
          v9[1] = v102;
        }
      }

      else
      {
        v44 = *v9;
        v45 = v9[2];
        *v556 = v9[1];
        *&v556[16] = v45;
        v555 = v44;
        v46 = *v14;
        v47 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v47;
        v553 = v46;
        if (v21(&v555, &v553))
        {
          v48 = *v14;
          v49 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v49;
          v555 = v48;
          v50 = *v9;
          v51 = v9[1];
          *(v14 + 28) = *(v9 + 28);
          *v14 = v50;
          v14[1] = v51;
          v52 = v555;
          v53 = *v556;
          *(v9 + 28) = *&v556[12];
          *v9 = v52;
          v9[1] = v53;
          v54 = *a3;
          v55 = *v14;
          v56 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v56;
          v555 = v55;
          v57 = *a1;
          v58 = a1[2];
          *v554 = a1[1];
          *&v554[16] = v58;
          v553 = v57;
          if (v54(&v555, &v553))
          {
            v59 = *a1;
            v60 = a1[2];
            *v556 = a1[1];
            *&v556[16] = v60;
            v555 = v59;
            v61 = *v14;
            v62 = v14[1];
            *(a1 + 28) = *(v14 + 28);
            *a1 = v61;
            a1[1] = v62;
            v63 = v555;
            v64 = *v556;
            *(v14 + 28) = *&v556[12];
            *v14 = v63;
            v14[1] = v64;
          }
        }
      }

      v103 = *a3;
      v104 = &a1[3 * v13];
      v105 = v104 - 3;
      v106 = *(v104 - 3);
      v107 = *(v104 - 1);
      *v556 = *(v104 - 2);
      *&v556[16] = v107;
      v555 = v106;
      v108 = a1[4];
      v553 = a1[3];
      *v554 = v108;
      *&v554[16] = a1[5];
      v109 = v103(&v555, &v553);
      v110 = *a3;
      if (v109)
      {
        v111 = *v544;
        v112 = v544[2];
        *v556 = v544[1];
        *&v556[16] = v112;
        v555 = v111;
        v113 = *v105;
        v114 = v105[2];
        *v554 = v105[1];
        *&v554[16] = v114;
        v553 = v113;
        if (v110(&v555, &v553))
        {
          v115 = a1[5];
          *v556 = a1[4];
          v116 = *v556;
          *&v556[16] = v115;
          v555 = a1[3];
          v117 = v555;
          v119 = *v544;
          v118 = v544[1];
          *(a1 + 76) = *(v544 + 28);
          a1[3] = v119;
          a1[4] = v118;
          *(v544 + 28) = *&v556[12];
          *v544 = v117;
          v544[1] = v116;
        }

        else
        {
          v156 = a1[5];
          *v556 = a1[4];
          v157 = *v556;
          *&v556[16] = v156;
          v555 = a1[3];
          v158 = v555;
          v160 = *v105;
          v159 = v105[1];
          *(a1 + 76) = *(v105 + 28);
          a1[3] = v160;
          a1[4] = v159;
          *(v105 + 28) = *&v556[12];
          *v105 = v158;
          v105[1] = v157;
          v161 = *a3;
          v162 = *v544;
          v163 = v544[2];
          *v556 = v544[1];
          *&v556[16] = v163;
          v555 = v162;
          v164 = *v105;
          v165 = v105[2];
          *v554 = v105[1];
          *&v554[16] = v165;
          v553 = v164;
          if (v161(&v555, &v553))
          {
            v166 = *v105;
            v167 = v105[2];
            *v556 = v105[1];
            *&v556[16] = v167;
            v555 = v166;
            v168 = *v544;
            v169 = v544[1];
            *(v105 + 28) = *(v544 + 28);
            *v105 = v168;
            v105[1] = v169;
            v170 = v555;
            v171 = *v556;
            *(v544 + 28) = *&v556[12];
            *v544 = v170;
            v544[1] = v171;
          }
        }
      }

      else
      {
        v120 = *v544;
        v121 = v544[2];
        *v556 = v544[1];
        *&v556[16] = v121;
        v555 = v120;
        v122 = *v105;
        v123 = v105[2];
        *v554 = v105[1];
        *&v554[16] = v123;
        v553 = v122;
        if (v110(&v555, &v553))
        {
          v124 = *v105;
          v125 = v105[2];
          *v556 = v105[1];
          *&v556[16] = v125;
          v555 = v124;
          v126 = *v544;
          v127 = v544[1];
          *(v105 + 28) = *(v544 + 28);
          *v105 = v126;
          v105[1] = v127;
          v128 = v555;
          v129 = *v556;
          *(v544 + 28) = *&v556[12];
          *v544 = v128;
          v544[1] = v129;
          v130 = *a3;
          v131 = *v105;
          v132 = v105[2];
          *v556 = v105[1];
          *&v556[16] = v132;
          v555 = v131;
          v133 = a1[4];
          v553 = a1[3];
          *v554 = v133;
          *&v554[16] = a1[5];
          if (v130(&v555, &v553))
          {
            v134 = a1[5];
            *v556 = a1[4];
            v135 = *v556;
            *&v556[16] = v134;
            v555 = a1[3];
            v136 = v555;
            v138 = *v105;
            v137 = v105[1];
            *(a1 + 76) = *(v105 + 28);
            a1[3] = v138;
            a1[4] = v137;
            *(v105 + 28) = *&v556[12];
            *v105 = v136;
            v105[1] = v135;
          }
        }
      }

      v172 = *a3;
      v173 = &a1[3 * v13];
      v174 = v173[3];
      v175 = v173[5];
      *v556 = v173[4];
      *&v556[16] = v175;
      v555 = v174;
      v176 = a1[7];
      v553 = a1[6];
      *v554 = v176;
      *&v554[16] = a1[8];
      v177 = v172(&v555, &v553);
      v178 = *a3;
      if (v177)
      {
        v179 = *v543;
        v180 = v543[2];
        *v556 = v543[1];
        *&v556[16] = v180;
        v555 = v179;
        v181 = v173[3];
        v182 = v173[5];
        *v554 = v173[4];
        *&v554[16] = v182;
        v553 = v181;
        if (v178(&v555, &v553))
        {
          v183 = a1[8];
          *v556 = a1[7];
          v184 = *v556;
          *&v556[16] = v183;
          v555 = a1[6];
          v185 = v555;
          v187 = *v543;
          v186 = v543[1];
          *(a1 + 124) = *(v543 + 28);
          a1[6] = v187;
          a1[7] = v186;
          *(v543 + 28) = *&v556[12];
          *v543 = v185;
          v543[1] = v184;
        }

        else
        {
          v207 = a1[8];
          *v556 = a1[7];
          v208 = *v556;
          *&v556[16] = v207;
          v555 = a1[6];
          v209 = v555;
          v211 = v173[3];
          v210 = v173[4];
          *(a1 + 124) = *(v173 + 76);
          a1[6] = v211;
          a1[7] = v210;
          *(v173 + 76) = *&v556[12];
          v173[3] = v209;
          v173[4] = v208;
          v212 = *a3;
          v213 = *v543;
          v214 = v543[2];
          *v556 = v543[1];
          *&v556[16] = v214;
          v555 = v213;
          v215 = v173[3];
          v216 = v173[5];
          *v554 = v173[4];
          *&v554[16] = v216;
          v553 = v215;
          if (v212(&v555, &v553))
          {
            v217 = v173[3];
            v218 = v173[5];
            *v556 = v173[4];
            *&v556[16] = v218;
            v555 = v217;
            v219 = *v543;
            v220 = v543[1];
            *(v173 + 76) = *(v543 + 28);
            v173[3] = v219;
            v173[4] = v220;
            v221 = v555;
            v222 = *v556;
            *(v543 + 28) = *&v556[12];
            *v543 = v221;
            v543[1] = v222;
          }
        }
      }

      else
      {
        v188 = *v543;
        v189 = v543[2];
        *v556 = v543[1];
        *&v556[16] = v189;
        v555 = v188;
        v190 = v173[3];
        v191 = v173[5];
        *v554 = v173[4];
        *&v554[16] = v191;
        v553 = v190;
        if (v178(&v555, &v553))
        {
          v192 = v173[3];
          v193 = v173[5];
          *v556 = v173[4];
          *&v556[16] = v193;
          v555 = v192;
          v194 = *v543;
          v195 = v543[1];
          *(v173 + 76) = *(v543 + 28);
          v173[3] = v194;
          v173[4] = v195;
          v196 = v555;
          v197 = *v556;
          *(v543 + 28) = *&v556[12];
          *v543 = v196;
          v543[1] = v197;
          v198 = *a3;
          v199 = v173[3];
          v200 = v173[5];
          *v556 = v173[4];
          *&v556[16] = v200;
          v555 = v199;
          v201 = a1[7];
          v553 = a1[6];
          *v554 = v201;
          *&v554[16] = a1[8];
          if (v198(&v555, &v553))
          {
            v202 = a1[8];
            *v556 = a1[7];
            v203 = *v556;
            *&v556[16] = v202;
            v555 = a1[6];
            v204 = v555;
            v206 = v173[3];
            v205 = v173[4];
            *(a1 + 124) = *(v173 + 76);
            a1[6] = v206;
            a1[7] = v205;
            *(v173 + 76) = *&v556[12];
            v173[3] = v204;
            v173[4] = v203;
          }
        }
      }

      v223 = *a3;
      v224 = *v14;
      v225 = v14[2];
      *v556 = v14[1];
      *&v556[16] = v225;
      v555 = v224;
      v226 = *v105;
      v227 = v105[2];
      *v554 = v105[1];
      *&v554[16] = v227;
      v553 = v226;
      v228 = v223(&v555, &v553);
      v229 = *a3;
      if (v228)
      {
        v230 = v173[3];
        v231 = v173[5];
        *v556 = v173[4];
        *&v556[16] = v231;
        v555 = v230;
        v232 = *v14;
        v233 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v233;
        v553 = v232;
        if (v229(&v555, &v553))
        {
          v234 = *v105;
          v235 = v105[2];
          *v556 = v105[1];
          *&v556[16] = v235;
          v555 = v234;
          v236 = v173[4];
          *v105 = v173[3];
          v105[1] = v236;
          *(v105 + 28) = *(v173 + 76);
          goto LABEL_54;
        }

        v256 = *v105;
        v257 = v105[2];
        *v556 = v105[1];
        *&v556[16] = v257;
        v555 = v256;
        v258 = v14[1];
        *v105 = *v14;
        v105[1] = v258;
        *(v105 + 28) = *(v14 + 28);
        v259 = v555;
        v260 = *v556;
        *(v14 + 28) = *&v556[12];
        *v14 = v259;
        v14[1] = v260;
        v261 = *a3;
        v262 = v173[3];
        v263 = v173[5];
        *v556 = v173[4];
        *&v556[16] = v263;
        v555 = v262;
        v264 = *v14;
        v265 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v265;
        v553 = v264;
        if (v261(&v555, &v553))
        {
          v266 = *v14;
          v267 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v267;
          v555 = v266;
          v268 = v173[4];
          *v14 = v173[3];
          v14[1] = v268;
          *(v14 + 28) = *(v173 + 76);
LABEL_54:
          v269 = v555;
          v270 = *v556;
          *(v173 + 76) = *&v556[12];
          v173[3] = v269;
          v173[4] = v270;
        }
      }

      else
      {
        v237 = v173[3];
        v238 = v173[5];
        *v556 = v173[4];
        *&v556[16] = v238;
        v555 = v237;
        v239 = *v14;
        v240 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v240;
        v553 = v239;
        if (v229(&v555, &v553))
        {
          v241 = *v14;
          v242 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v242;
          v555 = v241;
          v243 = v173[4];
          *v14 = v173[3];
          v14[1] = v243;
          *(v14 + 28) = *(v173 + 76);
          v244 = v555;
          v245 = *v556;
          *(v173 + 76) = *&v556[12];
          v173[3] = v244;
          v173[4] = v245;
          v246 = *a3;
          v247 = *v14;
          v248 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v248;
          v555 = v247;
          v249 = *v105;
          v250 = v105[2];
          *v554 = v105[1];
          *&v554[16] = v250;
          v553 = v249;
          if (v246(&v555, &v553))
          {
            v251 = *v105;
            v252 = v105[2];
            *v556 = v105[1];
            *&v556[16] = v252;
            v555 = v251;
            v253 = v14[1];
            *v105 = *v14;
            v105[1] = v253;
            *(v105 + 28) = *(v14 + 28);
            v254 = v555;
            v255 = *v556;
            *(v14 + 28) = *&v556[12];
            *v14 = v254;
            v14[1] = v255;
          }
        }
      }

      v271 = *a1;
      v272 = a1[2];
      *v556 = a1[1];
      *&v556[16] = v272;
      v555 = v271;
      v273 = *v14;
      v274 = v14[1];
      *(a1 + 28) = *(v14 + 28);
      *a1 = v273;
      a1[1] = v274;
      v275 = v555;
      v276 = *v556;
      *(v14 + 28) = *&v556[12];
      *v14 = v275;
      v14[1] = v276;
      goto LABEL_56;
    }

    v30 = *a1;
    v31 = a1[2];
    *v556 = a1[1];
    *&v556[16] = v31;
    v555 = v30;
    v32 = *v14;
    v33 = v14[2];
    *v554 = v14[1];
    *&v554[16] = v33;
    v553 = v32;
    v34 = v15(&v555, &v553);
    v35 = *a3;
    if ((v34 & 1) == 0)
    {
      v65 = *v9;
      v66 = v9[2];
      *v556 = v9[1];
      *&v556[16] = v66;
      v555 = v65;
      v67 = *a1;
      v68 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v68;
      v553 = v67;
      if (v35(&v555, &v553))
      {
        v69 = *a1;
        v70 = a1[2];
        *v556 = a1[1];
        *&v556[16] = v70;
        v555 = v69;
        v71 = *v9;
        v72 = v9[1];
        *(a1 + 28) = *(v9 + 28);
        *a1 = v71;
        a1[1] = v72;
        v73 = v555;
        v74 = *v556;
        *(v9 + 28) = *&v556[12];
        *v9 = v73;
        v9[1] = v74;
        v75 = *a3;
        v76 = *a1;
        v77 = a1[2];
        *v556 = a1[1];
        *&v556[16] = v77;
        v555 = v76;
        v78 = *v14;
        v79 = v14[2];
        *v554 = v14[1];
        *&v554[16] = v79;
        v553 = v78;
        if (v75(&v555, &v553))
        {
          v80 = *v14;
          v81 = v14[2];
          *v556 = v14[1];
          *&v556[16] = v81;
          v555 = v80;
          v82 = *a1;
          v83 = a1[1];
          *(v14 + 28) = *(a1 + 28);
          *v14 = v82;
          v14[1] = v83;
          v84 = v555;
          v85 = *v556;
          *(a1 + 28) = *&v556[12];
          *a1 = v84;
          a1[1] = v85;
        }
      }

      goto LABEL_56;
    }

    v36 = *v9;
    v37 = v9[2];
    *v556 = v9[1];
    *&v556[16] = v37;
    v555 = v36;
    v38 = *a1;
    v39 = a1[2];
    *v554 = a1[1];
    *&v554[16] = v39;
    v553 = v38;
    if (v35(&v555, &v553))
    {
      v40 = *v14;
      v41 = v14[2];
      *v556 = v14[1];
      *&v556[16] = v41;
      v555 = v40;
      v42 = *v9;
      v43 = v9[1];
      *(v14 + 28) = *(v9 + 28);
      *v14 = v42;
      v14[1] = v43;
    }

    else
    {
      v139 = *v14;
      v140 = v14[2];
      *v556 = v14[1];
      *&v556[16] = v140;
      v555 = v139;
      v141 = *a1;
      v142 = a1[1];
      *(v14 + 28) = *(a1 + 28);
      *v14 = v141;
      v14[1] = v142;
      v143 = v555;
      v144 = *v556;
      *(a1 + 28) = *&v556[12];
      *a1 = v143;
      a1[1] = v144;
      v145 = *a3;
      v146 = *v9;
      v147 = v9[2];
      *v556 = v9[1];
      *&v556[16] = v147;
      v555 = v146;
      v148 = *a1;
      v149 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v149;
      v553 = v148;
      if (!v145(&v555, &v553))
      {
        goto LABEL_56;
      }

      v150 = *a1;
      v151 = a1[2];
      *v556 = a1[1];
      *&v556[16] = v151;
      v555 = v150;
      v152 = *v9;
      v153 = v9[1];
      *(a1 + 28) = *(v9 + 28);
      *a1 = v152;
      a1[1] = v153;
    }

    v154 = v555;
    v155 = *v556;
    *(v9 + 28) = *&v556[12];
    *v9 = v154;
    v9[1] = v155;
LABEL_56:
    --a4;
    if (a5 & 1) != 0 || (v277 = *a3, v278 = *(a1 - 3), v279 = *(a1 - 1), *v556 = *(a1 - 2), *&v556[16] = v279, v555 = v278, v280 = *a1, v281 = a1[2], *v554 = a1[1], *&v554[16] = v281, v553 = v280, ((v277)(&v555, &v553)))
    {
      v282 = *a1;
      v283 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v283;
      v553 = v282;
      v284 = a1;
      do
      {
        v285 = v284;
        v286 = *a3;
        v284 += 3;
        v287 = v285[4];
        v555 = v285[3];
        *v556 = v287;
        *&v556[16] = v285[5];
        v550 = v553;
        v551 = *v554;
        v552 = *&v554[16];
      }

      while (((v286)(&v555, &v550) & 1) != 0);
      v288 = a2;
      if (v285 == a1)
      {
        while (v284 < a2)
        {
          v294 = *a3;
          v289 = a2 - 3;
          v295 = *(a2 - 3);
          v296 = *(a2 - 1);
          *v556 = *(a2 - 2);
          *&v556[16] = v296;
          v555 = v295;
          v550 = v553;
          v551 = *v554;
          v552 = *&v554[16];
          a2 -= 3;
          if ((v294)(&v555, &v550))
          {
            goto LABEL_67;
          }
        }

        v289 = a2;
      }

      else
      {
        do
        {
          v289 = v288 - 3;
          v290 = *a3;
          v291 = *(v288 - 3);
          v292 = *(v288 - 1);
          *v556 = *(v288 - 2);
          *&v556[16] = v292;
          v555 = v291;
          v550 = v553;
          v551 = *v554;
          v552 = *&v554[16];
          v293 = v290(&v555, &v550);
          v288 = v289;
        }

        while (!v293);
      }

LABEL_67:
      if (v284 < v289)
      {
        v297 = v284;
        v298 = v289;
        do
        {
          v299 = v297[2];
          *v556 = v297[1];
          v300 = *v556;
          *&v556[16] = v299;
          v555 = *v297;
          v301 = v555;
          v303 = *v298;
          v302 = v298[1];
          *(v297 + 28) = *(v298 + 28);
          *v297 = v303;
          v297[1] = v302;
          *(v298 + 28) = *&v556[12];
          *v298 = v301;
          v298[1] = v300;
          do
          {
            v285 = v297;
            v304 = *a3;
            v297 += 3;
            v305 = v285[4];
            v555 = v285[3];
            *v556 = v305;
            *&v556[16] = v285[5];
            v550 = v553;
            v551 = *v554;
            v552 = *&v554[16];
          }

          while (((v304)(&v555, &v550) & 1) != 0);
          do
          {
            v306 = *(v298 - 3);
            v307 = *(v298 - 2);
            v308 = *(v298 - 1);
            v298 -= 3;
            v309 = *a3;
            *v556 = v307;
            *&v556[16] = v308;
            v555 = v306;
            v550 = v553;
            v551 = *v554;
            v552 = *&v554[16];
          }

          while (!v309(&v555, &v550));
        }

        while (v297 < v298);
      }

      if (v285 != a1)
      {
        v310 = *v285;
        v311 = v285[1];
        *(a1 + 28) = *(v285 + 28);
        *a1 = v310;
        a1[1] = v311;
      }

      v312 = v553;
      v313 = *v554;
      *(v285 + 28) = *&v554[12];
      *v285 = v312;
      v285[1] = v313;
      a2 = v547;
      if (v284 < v289)
      {
        goto LABEL_78;
      }

      v314 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*>(a1, v285, a3);
      v10 = v285 + 3;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*>(v285 + 3, v547, a3))
      {
        a2 = v285;
        if (!v314)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v314)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,false>(a1, v285, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v285 + 3;
      }
    }

    else
    {
      v315 = *a1;
      v316 = a1[2];
      *v554 = a1[1];
      *&v554[16] = v316;
      v553 = v315;
      v317 = *a3;
      v318 = *a1;
      v319 = a1[2];
      *v556 = a1[1];
      *&v556[16] = v319;
      v555 = v318;
      v320 = *v9;
      v321 = v9[2];
      v551 = v9[1];
      v552 = v321;
      v550 = v320;
      if ((v317)(&v555, &v550))
      {
        v322 = a1;
        do
        {
          v10 = v322 + 3;
          v323 = *a3;
          v555 = v553;
          *v556 = *v554;
          *&v556[16] = *&v554[16];
          v324 = v322[4];
          v550 = v322[3];
          v551 = v324;
          v552 = v322[5];
          v325 = v323(&v555, &v550);
          v322 = v10;
        }

        while ((v325 & 1) == 0);
      }

      else
      {
        v326 = a1 + 3;
        do
        {
          v10 = v326;
          if (v326 >= a2)
          {
            break;
          }

          v327 = *a3;
          v555 = v553;
          *v556 = *v554;
          *&v556[16] = *&v554[16];
          v328 = *v10;
          v329 = v10[2];
          v551 = v10[1];
          v552 = v329;
          v550 = v328;
          v330 = v327(&v555, &v550);
          v326 = v10 + 3;
        }

        while (!v330);
      }

      v331 = a2;
      if (v10 < a2)
      {
        v332 = a2;
        do
        {
          v331 = v332 - 3;
          v333 = *a3;
          v555 = v553;
          *v556 = *v554;
          *&v556[16] = *&v554[16];
          v334 = *(v332 - 3);
          v335 = *(v332 - 1);
          v551 = *(v332 - 2);
          v552 = v335;
          v550 = v334;
          v336 = v333(&v555, &v550);
          v332 = v331;
        }

        while ((v336 & 1) != 0);
      }

      while (v10 < v331)
      {
        v337 = *v10;
        v338 = v10[2];
        *v556 = v10[1];
        *&v556[16] = v338;
        v555 = v337;
        v339 = *v331;
        v340 = v331[1];
        *(v10 + 28) = *(v331 + 28);
        *v10 = v339;
        v10[1] = v340;
        v341 = v555;
        v342 = *v556;
        *(v331 + 28) = *&v556[12];
        *v331 = v341;
        v331[1] = v342;
        do
        {
          v555 = v553;
          *v556 = *v554;
          *&v556[16] = *&v554[16];
          v343 = v10[4];
          v550 = v10[3];
          v551 = v343;
          v344 = v10[5];
          v10 += 3;
          v345 = *a3;
          v552 = v344;
        }

        while (!v345(&v555, &v550));
        do
        {
          v555 = v553;
          *v556 = *v554;
          *&v556[16] = *&v554[16];
          v346 = *(v331 - 3);
          v347 = *(v331 - 2);
          v348 = *(v331 - 1);
          v331 -= 3;
          v349 = *a3;
          v551 = v347;
          v552 = v348;
          v550 = v346;
        }

        while (((v349)(&v555, &v550) & 1) != 0);
      }

      v350 = v10 - 3;
      if (v10 - 3 != a1)
      {
        v351 = *v350;
        v352 = *(v10 - 2);
        *(a1 + 28) = *(v10 - 20);
        *a1 = v351;
        a1[1] = v352;
      }

      a5 = 0;
      v353 = v553;
      v354 = *v554;
      *(v10 - 20) = *&v554[12];
      *v350 = v353;
      *(v10 - 2) = v354;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,0>(a1, a1 + 3, a1 + 6, v9, a3);
      return;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a3);
      v355 = *a3;
      v356 = *v9;
      v357 = v9[2];
      *v556 = v9[1];
      *&v556[16] = v357;
      v555 = v356;
      v358 = a1[10];
      v553 = a1[9];
      *v554 = v358;
      *&v554[16] = a1[11];
      if (v355(&v555, &v553))
      {
        v359 = a1[11];
        *v556 = a1[10];
        v360 = *v556;
        *&v556[16] = v359;
        v555 = a1[9];
        v361 = v555;
        v363 = *v9;
        v362 = v9[1];
        *(a1 + 172) = *(v9 + 28);
        a1[9] = v363;
        a1[10] = v362;
        *(v9 + 28) = *&v556[12];
        *v9 = v361;
        v9[1] = v360;
        v364 = *a3;
        v365 = a1[10];
        v366 = a1[11];
        v367 = a1[8];
        v555 = a1[9];
        *v556 = v365;
        *&v556[16] = v366;
        v368 = a1[7];
        v553 = a1[6];
        *v554 = v368;
        *&v554[16] = v367;
        if (v364(&v555, &v553))
        {
          v369 = a1[8];
          v371 = a1[5];
          v370 = a1[6];
          a1[6] = a1[9];
          v373 = a1[6];
          v372 = a1[7];
          a1[7] = a1[10];
          *(a1 + 124) = *(a1 + 172);
          a1[9] = v370;
          a1[10] = v372;
          *v556 = v372;
          *&v556[16] = v369;
          *(a1 + 172) = *&v556[12];
          v374 = *a3;
          v375 = a1[7];
          v376 = a1[8];
          v555 = v373;
          *v556 = v375;
          *&v556[16] = v376;
          v377 = a1[4];
          v553 = a1[3];
          *v554 = v377;
          *&v554[16] = v371;
          if (v374(&v555, &v553))
          {
            v378 = a1[5];
            v380 = a1[3];
            v379 = a1[4];
            v381 = a1[7];
            a1[3] = a1[6];
            a1[4] = v381;
            *(a1 + 76) = *(a1 + 124);
            a1[6] = v380;
            a1[7] = v379;
            v382 = a1[3];
            v383 = a1[4];
            *v556 = v379;
            *&v556[16] = v378;
            *(a1 + 124) = *&v556[12];
            v384 = *a3;
            v555 = v382;
            *v556 = v383;
LABEL_162:
            *&v556[16] = a1[5];
            v507 = *a1;
            v508 = a1[2];
            *v554 = a1[1];
            *&v554[16] = v508;
            v553 = v507;
            if (v384(&v555, &v553))
            {
              v509 = *a1;
              v510 = a1[2];
              v511 = a1[3];
              *v556 = a1[1];
              *&v556[16] = v510;
              v555 = v509;
              v512 = a1[4];
              *a1 = v511;
              a1[1] = v512;
              *(a1 + 28) = *(a1 + 76);
              v513 = *v556;
              a1[3] = v555;
              a1[4] = v513;
              *(a1 + 76) = *&v556[12];
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v391 = *a3;
  v392 = a1[4];
  v555 = a1[3];
  *v556 = v392;
  *&v556[16] = a1[5];
  v393 = *a1;
  v394 = a1[2];
  *v554 = a1[1];
  *&v554[16] = v394;
  v553 = v393;
  v395 = v391(&v555, &v553);
  v396 = *a3;
  if (v395)
  {
    v397 = *v9;
    v398 = v9[2];
    *v556 = v9[1];
    *&v556[16] = v398;
    v555 = v397;
    v399 = a1[4];
    v553 = a1[3];
    *v554 = v399;
    *&v554[16] = a1[5];
    if (v396(&v555, &v553))
    {
      goto LABEL_107;
    }

    v531 = *a1;
    v532 = a1[2];
    v533 = a1[3];
    *v556 = a1[1];
    *&v556[16] = v532;
    v555 = v531;
    v534 = a1[4];
    *a1 = v533;
    a1[1] = v534;
    *(a1 + 28) = *(a1 + 76);
    v535 = *v556;
    a1[3] = v555;
    a1[4] = v535;
    *(a1 + 76) = *&v556[12];
    v536 = *a3;
    v537 = *v9;
    v538 = v9[2];
    *v556 = v9[1];
    *&v556[16] = v538;
    v555 = v537;
    v539 = a1[4];
    v553 = a1[3];
    *v554 = v539;
    *&v554[16] = a1[5];
    if (!v536(&v555, &v553))
    {
      return;
    }

    v405 = a1[4];
    v540 = a1[5];
    *v556 = v405;
    *&v556[16] = v540;
    v404 = a1[3];
    v555 = v404;
    v542 = *v9;
    v541 = v9[1];
    *(a1 + 76) = *(v9 + 28);
    a1[3] = v542;
    a1[4] = v541;
LABEL_108:
    *(v9 + 28) = *&v556[12];
    *v9 = v404;
    v9[1] = v405;
    return;
  }

  v498 = *v9;
  v499 = v9[2];
  *v556 = v9[1];
  *&v556[16] = v499;
  v555 = v498;
  v500 = a1[4];
  v553 = a1[3];
  *v554 = v500;
  *&v554[16] = a1[5];
  if (v396(&v555, &v553))
  {
    v501 = a1[5];
    *v556 = a1[4];
    v502 = *v556;
    *&v556[16] = v501;
    v555 = a1[3];
    v503 = v555;
    v505 = *v9;
    v504 = v9[1];
    *(a1 + 76) = *(v9 + 28);
    a1[3] = v505;
    a1[4] = v504;
    *(v9 + 28) = *&v556[12];
    *v9 = v503;
    v9[1] = v502;
    v384 = *a3;
    v506 = a1[4];
    v555 = a1[3];
    *v556 = v506;
    goto LABEL_162;
  }
}