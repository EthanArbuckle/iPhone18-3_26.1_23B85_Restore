void matrixMultiply256_NEON(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  do
  {
    v3 = v1;
    do
    {
      *v6.i64 = sub_23ACBA100(v2, v3);
      do
      {
        *v6.i64 = sub_23ACBA18C(v4, v5, v6);
      }

      while (v17 != 1);
      *v7 = vshrn_high_n_s32(vshrn_n_s32(vpaddq_s32(vpaddq_s32(v6, v10), vpaddq_s32(v11, v12)), 0x10uLL), vpaddq_s32(vpaddq_s32(v13, v14), vpaddq_s32(v15, v16)), 0x10uLL);
      v2 = v4 - 64;
      v3 = v5 + 448;
    }

    while (v8 != 1);
    v2 += 64;
  }

  while (v9 != 1);
}

void apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage::createSubimageRotatedAroundCenter(apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage *this, apple::vision::libraries::facecore::utils::aev::AEVGImage *a2, CGPoint a3, float a4)
{
  y = a3.y;
  x = a3.x;
  v8 = __sincosf_stret(a4);
  v9 = x;
  v10 = y;

  apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage::createSubimageRotatedAroundCenter(this, a2, *&v9, v8.__cosval, v8.__sinval);
}

float64x2_t apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage::computeInvertedRotationMatrix(apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage *this)
{
  v1 = *(this + 11);
  if (!*(this + 120))
  {
    v1 = -v1;
  }

  v2.f32[0] = *(this + 12);
  v3 = v1;
  v4 = 1.0 / ((v3 * v3) + (v2.f32[0] * v2.f32[0]));
  v2.f32[1] = -v3;
  result = vmulq_n_f64(vcvtq_f64_f32(v2), v4);
  *(this + 56) = result;
  *(this + 9) = v4 * v3;
  *(this + 10) = *&result.f64[0];
  return result;
}

void apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage::computeImageData(apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage *this)
{
  apple::vision::libraries::facecore::utils::aev::AEVGRotatedImage::computeInvertedRotationMatrix(this);
  v2 = *(this + 5);
  if (v2)
  {
    if (!*(this + 2))
    {
      v3 = *(v2 + 16);
      *(this + 2) = malloc_type_malloc(8 * *(this + 8), 0x10040436913F5uLL);
      *(this + 1) = malloc_type_malloc(*(this + 8) * *(this + 7), 0x100004077774924uLL);
      v4 = dispatch_get_global_queue(2, 0);
      v5 = *(this + 9);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = ___ZN5apple6vision9libraries8facecore5utils3aev16AEVGRotatedImage16computeImageDataEv_block_invoke;
      v6[3] = &__block_descriptor_48_e8_v16__0Q8l;
      v6[4] = this;
      v6[5] = v3;
      dispatch_apply(v5, v4, v6);
    }
  }
}

uint64_t ___ZN5apple6vision9libraries8facecore5utils3aev16AEVGRotatedImage16computeImageDataEv_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 36);
  v5 = v3 * a2 / v4;
  v6 = (v3 + v3 * a2) / v4;
  if (v5 < v6)
  {
    v7 = v5 - v3 / 2;
    v5 = v5;
    v8 = *(v2 + 28);
    do
    {
      *(*(v2 + 16) + 8 * v5) = *(v2 + 8) + v5 * v8;
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = *(*(v2 + 16) + 8 * v5);
        v11 = -(v8 >> 1);
        do
        {
          *(v10 + v9) = *(*(*(result + 40) + 8 * vcvtmd_s64_f64(*(v2 + 112) + *(v2 + 80) * v7 + *(v2 + 72) * (v11 + v9) + 0.5)) + vcvtmd_s64_f64(*(v2 + 104) + *(v2 + 64) * v7 + *(v2 + 56) * (v11 + v9) + 0.5));
          ++v9;
        }

        while (v9 < *(v2 + 28));
        v8 = *(v2 + 28);
      }

      ++v7;
      ++v5;
    }

    while (v5 < v6);
  }

  return result;
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::~KPointDescriptorArray(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::swap(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *a2)
{
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  *(this + 262) = *(a2 + 262);
  memccpy(this + 24, a2 + 24, 256, 4uLL);
  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B7A540, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t apple::vision::libraries::facecore::mod::classifiers::SvmModel::SvmModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);
  std::string::basic_string[abi:ne200100]<0>(__p, "fc-svm-sv.dat");
  apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
  *(a1 + 80) = v7;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a2 + 88);
  if (!*v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "fc-svm-sv-coef.dat");
    apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
    **(a2 + 88) = v9;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a2 + 88);
  }

  *(a1 + 88) = v8;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_23ACDFC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
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
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void apple::vision::libraries::facecore::mod::classifiers::SvmModel::predict_probability(apple::vision::libraries::facecore::mod::classifiers::SvmModel *this, const float *a2, float *a3)
{
  v5 = *(this + 18);
  v66 = malloc_type_malloc(((2 * ((v5 - 1) * v5 + (((v5 - 1) * v5) >> 31))) & 0xFFFFFFFC), 0x100004052888210uLL);
  apple::vision::libraries::facecore::mod::classifiers::SvmModel::predict_values(this, a2, v66);
  v63 = 8 * v5;
  v6 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v7 = v5;
  v64 = v5;
  v70 = v6;
  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      *v6++ = malloc_type_malloc((4 * v7), 0x100004052888210uLL);
      --v5;
    }

    while (v5);
    v8 = 0;
    v9 = 0;
    v6 = v70;
    v10 = v70 + 1;
    v11 = v7 - 1;
    v12 = 4;
    do
    {
      v13 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v67 = v12;
        v14 = 0;
        v15 = v6[v8];
        v16 = &v66[v9];
        v17 = *(this + 13) + 4 * v9;
        v68 = v9;
        v18 = *(this + 14) + 4 * v9;
        v19 = v15 + v12;
        do
        {
          v20 = *(v18 + 4 * v14) + (v16[v14] * *(v17 + 4 * v14));
          if (v20 >= 0.0)
          {
            v21 = expf(-v20);
            v22 = v21;
          }

          else
          {
            v21 = expf(v20);
            v22 = 1.0;
          }

          v23 = v22 / (v21 + 1.0);
          if (v23 < 0.0000001)
          {
            v23 = 0.0000001;
          }

          if (v23 > 1.0)
          {
            v23 = 1.0;
          }

          *(v19 + 4 * v14) = v23;
          *(v10[v14++] + v8) = 1.0 - v23;
        }

        while (v11 != v14);
        v9 = v68 + v14;
        v6 = v70;
        v13 = v8 + 1;
        v12 = v67;
      }

      ++v10;
      v12 += 4;
      --v11;
      v8 = v13;
    }

    while (v13 != v7);
  }

  if (v64 <= 100)
  {
    v24 = 100;
  }

  else
  {
    v24 = v64;
  }

  v69 = v24;
  v25 = malloc_type_malloc(v63, 0x80040B8603338uLL);
  v26 = malloc_type_malloc(4 * v64, 0x100004052888210uLL);
  v27 = v7;
  if (v7 > 0)
  {
    v28 = 0;
    v29 = v7 - 1;
    v30 = (v6 + 1);
    v31 = 1;
    do
    {
      a3[v28] = 1.0 / v27;
      v32 = malloc_type_malloc(4 * v64, 0x100004052888210uLL);
      v25[v28] = v32;
      v32[v28] = 0;
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          v34 = *(v6[i] + v28);
          *&v32[v28] = *&v32[v28] + (v34 * v34);
          v32[i] = *(v25[i] + 4 * v28);
        }
      }

      v35 = v28 + 1;
      if (v28 + 1 < v7)
      {
        v36 = &v32[v31];
        v37 = v6[v28] + v31 * 4;
        v38 = v30;
        v39 = v29;
        do
        {
          v40 = *v38++;
          *&v32[v28] = *&v32[v28] + (*(v40 + 4 * v28) * *(v40 + 4 * v28));
          v41 = *(v40 + 4 * v28);
          LODWORD(v40) = *v37++;
          *v36++ = -(v41 * *&v40);
          --v39;
        }

        while (v39);
      }

      --v29;
      ++v31;
      ++v30;
      ++v28;
    }

    while (v35 != v7);
  }

  v42 = 0;
  v43 = 0.005 / v27;
  do
  {
    if (v7 < 1)
    {
      if (v43 > 0.0)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    v44 = 0;
    v45 = 0.0;
    do
    {
      v46 = 0;
      v26[v44] = 0;
      v47 = v25[v44];
      v48 = 0.0;
      do
      {
        v48 = v48 + (*(v47 + 4 * v46) * a3[v46]);
        *&v26[v44] = v48;
        ++v46;
      }

      while (v7 != v46);
      v45 = v45 + (a3[v44++] * v48);
    }

    while (v44 != v7);
    v49 = 0;
    v50 = 0.0;
    do
    {
      v51 = vabds_f32(*&v26[v49], v45);
      if (v51 > v50)
      {
        v50 = v51;
      }

      ++v49;
    }

    while (v7 != v49);
    if (v50 < v43)
    {
      break;
    }

    if (v64 >= 1)
    {
      for (j = 0; j != v7; ++j)
      {
        v53 = 0;
        v54 = v25[j];
        v55 = (v45 - *&v26[j]) / *(v54 + 4 * j);
        a3[j] = a3[j] + v55;
        v56 = (*&v26[j] + *&v26[j]) + (v55 * *(v54 + 4 * j));
        v57 = v55 + 1.0;
        do
        {
          *&v26[v53] = (*&v26[v53] + (v55 * *(v54 + 4 * v53))) / v57;
          a3[v53] = a3[v53] / v57;
          ++v53;
        }

        while (v7 != v53);
        v45 = ((v45 + (v55 * v56)) / v57) / v57;
      }
    }

LABEL_47:
    ++v42;
    v6 = v70;
  }

  while (v42 != v69);
  if (v7 < 1)
  {
    free(v25);
    free(v26);
    goto LABEL_56;
  }

  v58 = v25;
  v59 = v7;
  do
  {
    v60 = *v58++;
    free(v60);
    --v59;
  }

  while (v59);
LABEL_51:
  free(v25);
  free(v26);
  v6 = v70;
  if (v7 >= 1)
  {
    v61 = v70;
    do
    {
      v62 = *v61++;
      free(v62);
      --v7;
    }

    while (v7);
  }

LABEL_56:
  free(v66);

  free(v6);
}

float *apple::vision::libraries::facecore::mod::classifiers::SvmModel::predict_values(apple::vision::libraries::facecore::mod::classifiers::SvmModel *this, const float *a2, float *a3)
{
  v55 = &v55;
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(this + 18);
  v60 = *(this + 19);
  v5 = v60;
  v7 = MEMORY[0x28223BE20](this);
  v56 = (&v55 - ((v8 + 15) & 0x7FFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v12 = (&v55 - v11);
  __C = 1.0;
  if (v5 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v57 = 4 * v10;
    v58 = v10;
    v15 = v56;
    do
    {
      v16 = v9;
      v17 = v58;
      vDSP_vsbsm(v9, 1, (*(this + 10) + v13), 1, &__C, v12, 1, v58);
      vDSP_svesq(v12, 1, v15, v17);
      v9 = v16;
      *v15 = -(*(this + 3) * *v15);
      ++v15;
      ++v14;
      v13 += v57;
    }

    while (v14 < v5);
  }

  v18 = v56;
  vvexpf(v56, v56, &v60);
  result = MEMORY[0x28223BE20](v19);
  v22 = (&v55 - ((v21 + 15) & 0x7FFFFFFF0));
  *v22 = 0;
  if (v6 > 1)
  {
    v23 = 0;
    v24 = *(this + 16);
    v25 = v22 + 1;
    v26 = v6 - 1;
    do
    {
      v27 = *v24++;
      v23 += v27;
      *v25++ = v23;
      --v26;
    }

    while (v26);
  }

  if (v6 >= 1)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = 1;
    do
    {
      v31 = v28 + 1;
      if (v28 + 1 < v6)
      {
        v32 = v22[v28];
        v33 = *(this + 16);
        v34 = *(v33 + 4 * v28);
        v36 = *(this + 11);
        v35 = *(this + 12);
        v37 = *(v36 + 8 * v28);
        v38 = v36 - 8;
        v29 = v29;
        v39 = 4 * v32;
        result = &v18[v32];
        v40 = v30;
        do
        {
          if (v34 < 1)
          {
            v42 = 0.0;
          }

          else
          {
            v41 = (*(v38 + 8 * v40) + v39);
            v42 = 0.0;
            v43 = v34;
            v44 = result;
            do
            {
              v45 = *v41++;
              v46 = v45;
              v47 = *v44++;
              v42 = v42 + (v46 * v47);
              --v43;
            }

            while (v43);
          }

          v48 = *(v33 + 4 * v40);
          if (v48 >= 1)
          {
            v49 = v22[v40];
            v50 = (v37 + 4 * v49);
            v51 = &v18[v49];
            do
            {
              v52 = *v50++;
              v53 = v52;
              v54 = *v51++;
              v42 = v42 + (v53 * v54);
              --v48;
            }

            while (v48);
          }

          a3[v29] = v42 - *(v35 + 4 * v29);
          ++v29;
          ++v40;
        }

        while (v40 != v6);
      }

      ++v30;
      v28 = v31;
    }

    while (v31 != v6);
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::utils::ParsingUtils::parseBooleanValue(uint64_t *a1, _DWORD *a2)
{
  v2 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1) != 4 || **a2 != 1702195828)
    {
      if (*(a2 + 1) != 5)
      {
        v7 = MEMORY[0x277CCACA8];
        goto LABEL_18;
      }

      v3 = *a2;
LABEL_9:
      v4 = *v3;
      v5 = *(v3 + 4);
      if (v4 == 1936482662 && v5 == 101)
      {
        return 0;
      }

      v7 = MEMORY[0x277CCACA8];
      if ((v2 & 0x80) == 0)
      {
LABEL_19:
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        v8 = [v7 stringWithFormat:@"Expected true/false but found<%s> for %s parameter.", a2, a1];
        [VNFaceCoreExceptionUtils throwInvalidArgumentException:v8];

        return 0;
      }

LABEL_18:
      a2 = *a2;
      goto LABEL_19;
    }
  }

  else
  {
    if (v2 != 4)
    {
      v3 = a2;
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (*a2 != 1702195828)
    {
LABEL_16:
      v7 = MEMORY[0x277CCACA8];
      goto LABEL_19;
    }
  }

  return 1;
}

float apple::vision::libraries::facecore::utils::ParsingUtils::parseFloatValue(const char *a1, uint64_t a2, int a3, int a4, float a5, float a6)
{
  v10 = a2;
  v12 = *(a2 + 23);
  v13 = a2;
  if (v12 < 0)
  {
    v13 = *a2;
  }

  v14 = atof(v13);
  v15 = v14 >= a5;
  if (!a3)
  {
    v15 = v14 > a5;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v14 <= a6;
  if (!a4)
  {
    v16 = v14 < a6;
  }

  if (!v16)
  {
LABEL_9:
    if (v12 < 0)
    {
      v10 = *v10;
    }

    v17 = "(";
    if (a3)
    {
      v17 = "[";
    }

    v18 = ")";
    if (a4)
    {
      v18 = "]";
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    throwValidatedException("Value <%s> evaluated to <%.4f> is out of range %s%.4f, %.4f%s for %s parameter.", v10, v14, v17, a5, a6, v18, a1);
  }

  return v14;
}

void throwValidatedException(const char *a1, ...)
{
  va_start(va, a1);
  v3 = 0;
  vasprintf(&v3, a1, va);
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = [v1 initWithValidatedFormat:@"%s" validFormatSpecifiers:@"%s" error:0, v3];
  [VNFaceCoreExceptionUtils throwInvalidArgumentException:v2];

  free(v3);
}

uint64_t apple::vision::libraries::facecore::utils::ParsingUtils::parseIntValue(const char *a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v10 = a2;
  v12 = *(a2 + 23);
  v13 = a2;
  if (v12 < 0)
  {
    v13 = *a2;
  }

  v14 = atoi(v13);
  v15 = v14;
  v16 = v14 >= a3;
  if (!a5)
  {
    v16 = v14 > a3;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v14 <= a4;
  if (!a6)
  {
    v17 = v14 < a4;
  }

  if (!v17)
  {
LABEL_9:
    if (v12 < 0)
    {
      v10 = *v10;
    }

    v18 = "(";
    if (a5)
    {
      v18 = "[";
    }

    v19 = "]";
    if (!a6)
    {
      v19 = ")";
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    throwValidatedException("Value <%s> evaluated to <%i> is out of range %s%i, %i%s for %s parameter.", v10, v14, v18, a3, a4, v19, a1);
  }

  return v15;
}

double apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::FaceImage(apple::vision::libraries::facecore::processing::detection::histogram::FaceImage *this, int a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 40) = xmmword_23B251EC0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = a2;
  return result;
}

void apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::~FaceImage(apple::vision::libraries::facecore::processing::detection::histogram::FaceImage *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
}

void apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::SetImage(apple::vision::libraries::facecore::processing::detection::histogram::FaceImage *this, const unsigned __int8 *a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, int a10)
{
  v12 = a9;
  *(this + 5) = -a10;
  *(this + 6) = v12;
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
  v13 = (v12 * (*(this + 38) * a8 + 1) + 0.5);
  if (*(this + 6) != v13 || *(this + 7) != v13 || *(this + 8) != a5)
  {
    *(this + 6) = v13;
    *(this + 7) = v13;
    *(this + 8) = a5;
    v14 = *(this + 2);
    if (v14)
    {
      MEMORY[0x23EE98340](v14, 0x1000C8077774924);
    }

    *(this + 2) = 0;
    operator new[]();
  }

  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::SetParameters(this, a6, a7);
  v15 = *(this + 7);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(this + 2);
    v18 = *(this + 6);
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      if (v18 >= 1)
      {
        v24 = 0;
        v25 = v16;
        do
        {
          v26 = *(this + 8);
          if (v26 == 1)
          {
            v30 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(*(this + 136), vmlaq_n_f64(vmulq_n_f64(*(this + 120), v25), *(this + 104), v24)), _Q0)));
            v31 = vcltz_s32(v30);
            if (((v31.i32[0] | v31.i32[1]) & 1) != 0 || *this <= v30.i32[0] || *(this + 1) <= v30.i32[1])
            {
              v32 = 0;
            }

            else
            {
              v32 = a2[*(this + 2) * (v30.i32[0] + *this * v30.i32[1])];
            }

            *v17++ = v32;
          }

          else if (v26 == 3)
          {
            v27 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(*(this + 136), vmlaq_n_f64(vmulq_n_f64(*(this + 120), v25), *(this + 104), v24)), _Q0)));
            v28 = vcltz_s32(v27);
            if (((v28.i32[0] | v28.i32[1]) & 1) != 0 || *this <= v27.i32[0] || *(this + 1) <= v27.i32[1])
            {
              v29 = 0;
            }

            else
            {
              v29 = a2[*(this + 2) * (v27.i32[0] + *this * v27.i32[1])];
            }

            v39 = vdupq_lane_s64(COERCE__INT64(v24), 0);
            *v17 = v29;
            v40 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(*(this + 136), vmlaq_f64(vmulq_n_f64(*(this + 120), v25), v39, *(this + 104))), _Q0)));
            v41 = vcltz_s32(v40);
            if (((v41.i32[0] | v41.i32[1]) & 1) != 0 || *this <= v40.i32[0] || *(this + 1) <= v40.i32[1])
            {
              v42 = 0;
            }

            else
            {
              v42 = a2[*(this + 2) * (v40.i32[0] + *this * v40.i32[1]) + 1];
            }

            v17[1] = v42;
            v43 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(*(this + 136), vmlaq_f64(vmulq_n_f64(*(this + 120), v25), v39, *(this + 104))), _Q0)));
            v44 = vcltz_s32(v43);
            if (((v44.i32[0] | v44.i32[1]) & 1) != 0 || *this <= v43.i32[0] || *(this + 1) <= v43.i32[1])
            {
              v45 = 0;
            }

            else
            {
              v45 = a2[*(this + 2) * (v43.i32[0] + *this * v43.i32[1]) + 2];
            }

            v17[2] = v45;
            v17 += 3;
          }

          else if (v26 >= 1)
          {
            v33 = 0;
            v34 = vdupq_lane_s64(COERCE__INT64(v24), 0);
            v35 = a2;
            do
            {
              v36 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vaddq_f64(*(this + 136), vmlaq_f64(vmulq_n_f64(*(this + 120), v25), v34, *(this + 104))), _Q0)));
              v37 = vcltz_s32(v36);
              if (((v37.i32[0] | v37.i32[1]) & 1) != 0 || *this <= v36.i32[0] || *(this + 1) <= v36.i32[1])
              {
                v38 = 0;
              }

              else
              {
                v38 = v35[*(this + 2) * (v36.i32[0] + *this * v36.i32[1])];
              }

              *v17++ = v38;
              ++v33;
              ++v35;
            }

            while (v33 < *(this + 8));
          }

          ++v24;
          v18 = *(this + 6);
        }

        while (v24 < v18);
        v15 = *(this + 7);
      }

      ++v16;
    }

    while (v16 < v15);
  }
}

double apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::SetParameters(apple::vision::libraries::facecore::processing::detection::histogram::FaceImage *this, int a2, int a3)
{
  v4 = a2;
  v5 = a3;
  v6 = vcvtd_n_f64_s32(*(this + 6) - 1, 1uLL);
  v7 = vcvtd_n_f64_s32(*(this + 7) - 1, 1uLL);
  v8 = __sincos_stret(*(this + 5) / 180.0 * 3.1415);
  v9 = *(this + 6);
  *(this + 7) = v9 * v8.__cosval;
  *(this + 8) = v9 * v8.__sinval;
  v10 = -(v8.__sinval * v9);
  *(this + 9) = v10;
  *(this + 10) = v9 * v8.__cosval;
  *(this + 11) = v6 - (v10 * v5 + v9 * v8.__cosval * v4);
  *(this + 12) = v7 - (v9 * v8.__cosval * v5 + v9 * v8.__sinval * v4);
  v11 = -v8.__sinval / v9;
  *(this + 13) = v8.__cosval / v9;
  *(this + 14) = v11;
  *(this + 15) = v8.__sinval / v9;
  *(this + 16) = v8.__cosval / v9;
  result = v4 - (v7 * (v8.__sinval / v9) + v8.__cosval / v9 * v6);
  *(this + 17) = result;
  *(this + 18) = v5 - (v7 * (v8.__cosval / v9) + v11 * v6);
  return result;
}

double derotatePoint(CGPoint a1, CGPoint a2, double (*a3)[2], int a4)
{
  v4 = (a1.x - a2.x);
  if (a4)
  {
    v4 = vcvtmd_s64_f64((*a3)[1] * (a1.y - a2.y) + (*a3)[0] * v4 + 0.5);
  }

  return (a2.x + v4);
}

apple::vision::libraries::facecore::utils::aev::AEVGImage *apple::vision::libraries::facecore::utils::aev::AEVGImage::AEVGImage(apple::vision::libraries::facecore::utils::aev::AEVGImage *this)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284DF3C88;
  *(this + 24) = 0;
  *(this + 9) = 4;
  apple::vision::libraries::facecore::utils::aev::AEVGImage::computeImageData(this);
  return this;
}

apple::vision::libraries::facecore::utils::aev::AEVGImage *apple::vision::libraries::facecore::utils::aev::AEVGImage::AEVGImage(apple::vision::libraries::facecore::utils::aev::AEVGImage *this, unsigned __int8 *a2, int a3, int a4, char a5)
{
  *this = &unk_284DF3C88;
  *(this + 1) = a2;
  *(this + 7) = a3;
  *(this + 8) = a4;
  *(this + 24) = a5;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 2) = 0;
  *(this + 9) = 4;
  apple::vision::libraries::facecore::utils::aev::AEVGImage::computeImageData(this);
  return this;
}

uint64_t apple::vision::libraries::facecore::utils::aev::AEVGImage::detachBaseImage(uint64_t this)
{
  v1 = this;
  if (*(this + 48) == 1)
  {
    this = *(this + 40);
    if (this)
    {
      apple::vision::libraries::facecore::utils::aev::AEVGImage::~AEVGImage(this);
      this = MEMORY[0x23EE98360]();
    }
  }

  *(v1 + 40) = 0;
  return this;
}

void apple::vision::libraries::facecore::utils::aev::AEVGImage::~AEVGImage(apple::vision::libraries::facecore::utils::aev::AEVGImage *this)
{
  *this = &unk_284DF3C88;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
  }

  apple::vision::libraries::facecore::utils::aev::AEVGImage::detachBaseImage(this);
}

int *apple::vision::libraries::facecore::utils::aev::AEVGImage::computeImageData(int *this)
{
  if (*(this + 1))
  {
    v1 = this;
    if (!*(this + 2))
    {
      this = malloc_type_malloc(8 * this[8], 0x10040436913F5uLL);
      v1[2] = this;
      v2 = *(v1 + 8);
      if (v2 >= 1)
      {
        v3 = 0;
        v4 = v1[1];
        v5 = *(v1 + 7);
        v6 = 8 * v2;
        do
        {
          *(v1[2] + v3) = v4;
          v4 += v5;
          v3 += 8;
        }

        while (v6 != v3);
      }
    }
  }

  return this;
}

uint64_t apple::vision::libraries::facecore::utils::aev::AEVGImage::equalizeHistogram(apple::vision::libraries::facecore::utils::aev::AEVGImage *this)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v15, 0x400uLL);
  bzero(v14, 0x400uLL);
  if (*(this + 8) * *(this + 7) > 0)
  {
    v3 = *(this + 1);
    v4 = (*(this + 8) * *(this + 7));
    do
    {
      v5 = *v3++;
      *&v15[4 * v5] = *&v15[4 * v5] + 1.0;
      --v4;
    }

    while (v4);
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v7 = (*&v15[4 * v6] + v7);
    *&v14[4 * v6++] = v7;
  }

  while (v6 != 256);
  result = MEMORY[0x28223BE20](v2);
  for (i = 0; i != 1024; i += 4)
  {
    if (*&v15[i] != 0.0)
    {
      *&v13[i] = vcvtmd_s64_f64((*&v14[i] - *&v14[4 * v10]) / (v9 - *&v14[4 * v10]) * 255.0 + 0.5);
    }
  }

  if (v9 >= 1)
  {
    v12 = 0;
    do
    {
      *(*(this + 1) + v12) = *&v13[4 * *(*(this + 1) + v12)];
      ++v12;
    }

    while (v9 != v12);
  }

  return result;
}

void apple::vision::libraries::facecore::utils::aev::AEVGImage::performGammaCorrection(apple::vision::libraries::facecore::utils::aev::AEVGImage *this, float a2)
{
  v10 = *MEMORY[0x277D85DE8];
  __A = a2;
  MEMORY[0x28223BE20](this);
  v4 = (block - ((v3 + 15) & 0x7FFFFFFF0));
  vDSP_vfill(&__A, v4, 1, v5);
  v6 = dispatch_get_global_queue(2, 0);
  v7 = *(this + 9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN5apple6vision9libraries8facecore5utils3aev9AEVGImage22performGammaCorrectionEf_block_invoke;
  block[3] = &__block_descriptor_48_e8_v16__0Q8l;
  block[4] = this;
  block[5] = v4;
  dispatch_apply(v7, v6, block);
}

void ___ZN5apple6vision9libraries8facecore5utils3aev9AEVGImage22performGammaCorrectionEf_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 36);
  v5 = v3 * a2 / v4;
  v6 = (v3 + v3 * a2) / v4;
  v7 = (&v11 - ((4 * *(v2 + 28) + 15) & 0x7FFFFFFF0));
  HIDWORD(v11) = 1132396544;
  if (v5 < v6)
  {
    v9 = v5;
    v10 = v6;
    do
    {
      vDSP_vfltu8(*(*(v2 + 16) + 8 * v9), 1, v7, 1, *(v2 + 28));
      vDSP_vsdiv(v7, 1, &v11 + 1, v7, 1, *(v2 + 28));
      vvpowf(v7, *(a1 + 40), v7, (v2 + 28));
      MEMORY[0x23EE98A60](v7, 1, &v11 + 4, v7, 1, *(v2 + 28));
      vDSP_vfixu8(v7, 1, *(*(v2 + 16) + 8 * v9++), 1, *(v2 + 28));
    }

    while (v9 < v10);
  }
}

uint64_t ___ZN5apple6vision9libraries8facecore5utils3aev9AEVGImage38getImageRescaledAndRotatedAroundCenterE7CGPointfb6CGSizeS7_ib_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(result + 72);
  v4 = *(v2 + 36);
  v5 = v3 * a2 / v4;
  v6 = (v3 + v3 * a2) / v4;
  if (v5 < v6)
  {
    v7 = v5 - v3 / 2;
    v5 = v5;
    LODWORD(v8) = *(result + 76);
    do
    {
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = (*(result + 80) * v7);
        v11 = -(v8 >> 1);
        do
        {
          v12 = *(result + 88);
          if (v12 < 1)
          {
            v26 = NAN;
          }

          else
          {
            v13 = 0;
            v14 = (*(result + 84) * v11);
            v15 = v12 + v14;
            v16 = v12 + v10;
            v17 = 0.0;
            do
            {
              v18 = v14;
              v19 = v10;
              do
              {
                v20 = v14;
                v21 = v19;
                if (*(result + 92))
                {
                  v22 = *(result + 40);
                  v23 = vcvtmd_s64_f64(v22[1] * v19 + *v22 * v18 + 0.5);
                  v21 = vcvtmd_s64_f64(v22[3] * v19 + v22[2] * v18 + 0.5);
                  v20 = v23;
                }

                v24 = (*(result + 48) + v20);
                v25 = *(result + 56) + v21;
                LOBYTE(v25) = *(*(*(v2 + 16) + 8 * v25) + v24);
                v17 = v17 + LODWORD(v25);
                ++v13;
                ++v19;
              }

              while (v19 < v16);
              ++v14;
            }

            while (v14 < v15);
            v26 = (v17 / v13) + 0.5;
          }

          *(*(*(result + 64) + 8 * v5) + v9) = vcvtmd_s64_f64(v26);
          ++v11;
          ++v9;
          v8 = *(result + 76);
        }

        while (v9 < v8);
      }

      ++v7;
      ++v5;
    }

    while (v5 < v6);
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::utils::aev::AEVLinearSVMModel::AEVLinearSVMModel(uint64_t this, double *a2, double a3, int a4, char a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 20) = a5;
  return this;
}

void apple::vision::libraries::facecore::utils::aev::AEVLinearSVMModel::~AEVLinearSVMModel(void **this)
{
  if (*(this + 20) == 1)
  {
    free(*this);
  }
}

double apple::vision::libraries::facecore::utils::aev::AEVLinearSVMModel::computePredictionForData(double **this, double *a2)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v4 = 0.0;
  }

  else
  {
    v3 = *this;
    v4 = 0.0;
    do
    {
      v5 = *v3++;
      v6 = v5;
      v7 = *a2++;
      v4 = v4 + v6 * v7;
      --v2;
    }

    while (v2);
  }

  return v4 - *(this + 1);
}

void *std::vector<apple::vision::libraries::facecore::FaceInternal>::reserve(void *result, unint64_t a2)
{
  if (0x84BDA12F684BDA13 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>>(result, a2);
    }

    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23ACE1B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<apple::vision::libraries::facecore::FaceInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::getFaces(uint64_t a1, uint64_t *a2, int **a3, int a4)
{
  v7 = *a3;
  if (*a3 != a3[1])
  {
    __asm { FMOV            V0.2D, #1.0 }

    v16 = _Q0;
    do
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      v24 = 0x3FF0000000000000;
      v25 = 0;
      v27 = v16;
      v28 = v16;
      v29 = v16;
      *(&v17[1] + 12) = *(v7 + 7);
      v14 = *v7;
      DWORD2(v20) = v7[26];
      v23 = 0x100000001;
      v26 = *(v7 + 19);
      v15 = v7[18];
      LODWORD(v17[0]) = v14;
      DWORD2(v18) = v15;
      std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](a2, v17);
      apple::vision::libraries::facecore::Face::~Face(v17);
      v7 += 54;
    }

    while (v7 != a3[1]);
  }

  if (a4 >= 1)
  {
    apple::vision::libraries::facecore::processing::detection::FaceManager::groupFaces(a1, a2, a4, 60, 1.0, 0.25);
  }
}

void sub_23ACE1C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<apple::vision::libraries::facecore::FaceInternal>::__emplace_back_slow_path<apple::vision::libraries::facecore::FaceInternal const&>(a1, a2);
  }

  else
  {
    apple::vision::libraries::facecore::FaceInternal::FaceInternal(*(a1 + 8), a2);
    result = v3 + 216;
    *(a1 + 8) = v3 + 216;
  }

  *(a1 + 8) = result;
  return result;
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::groupFaces(uint64_t a1, uint64_t *a2, int a3, int a4, float a5, float a6)
{
  memset(&v63, 0, sizeof(v63));
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::reserve(&v67, 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) / 3);
  std::vector<apple::vision::libraries::facecore::FaceInternal>::reserve(&v64, 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) / 3);
  std::vector<int>::reserve(&v63, 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) / 3);
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 - *a2) >> 3;
  v14 = 0x84BDA12F684BDA13 * v13;
  if (1749801491 * v13 >= 1)
  {
    v15 = 0;
    v16 = a5;
    do
    {
      v17 = (v68 - v67) >> 3;
      v18 = 0x84BDA12F684BDA13 * v17;
      if (1749801491 * v17 < 1)
      {
LABEL_14:
        if (v14 <= v15 || (std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](&v64, v12 + 216 * v15), 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) <= v15))
        {
LABEL_48:
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        v34 = *a2 + 216 * v15;
        v35 = *(v34 + 164);
        *(v34 + 28) = vmul_s32(*(v34 + 28), vdup_n_s32(v35));
        *v34 *= v35;
        *(v34 + 104) *= v35;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](&v67, v34);
        end = v63.__end_;
        if (v63.__end_ >= v63.__end_cap_.__value_)
        {
          begin = v63.__begin_;
          v39 = v63.__end_ - v63.__begin_;
          v40 = v63.__end_ - v63.__begin_;
          v41 = v40 + 1;
          if ((v40 + 1) >> 62)
          {
            std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
          }

          v42 = v63.__end_cap_.__value_ - v63.__begin_;
          if ((v63.__end_cap_.__value_ - v63.__begin_) >> 1 > v41)
          {
            v41 = v42 >> 1;
          }

          v43 = v42 >= 0x7FFFFFFFFFFFFFFCLL;
          v44 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v43)
          {
            v44 = v41;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v63, v44);
          }

          *(4 * v40) = 1;
          v37 = (4 * v40 + 4);
          memcpy(0, begin, v39);
          v45 = v63.__begin_;
          v63.__begin_ = 0;
          v63.__end_ = v37;
          v63.__end_cap_.__value_ = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v63.__end_ = 1;
          v37 = end + 1;
        }

        v63.__end_ = v37;
        v12 = *a2;
        v11 = a2[1];
      }

      else
      {
        if (v14 <= v15)
        {
LABEL_47:
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        v19 = 0;
        v20 = v12 + 216 * v15;
        v21 = v64;
        v22 = *(v20 + 28);
        v23 = (v67 + 104);
        while (1)
        {
          if (0x84BDA12F684BDA13 * ((v65 - v64) >> 3) == v19)
          {
            goto LABEL_47;
          }

          v24 = *(v21 + 7);
          v25 = *(v21 + 8);
          v26 = *(v20 + 32);
          v27 = (sqrt((v22 - v24) * (v22 - v24) + (v26 - v25) * (v26 - v25)) * v16);
          v28 = *v20;
          if (*v20 > v27)
          {
            v29 = *v21;
            if (*v21 > v27)
            {
              v30 = *(v20 + 104);
              v31 = *(v21 + 26);
              v32 = vabds_f32(v30, v31);
              if ((vabds_f32(v28, v29) / (v29 + v28)) < a6 && v32 < a4)
              {
                break;
              }
            }
          }

          ++v19;
          v21 += 27;
          v23 += 54;
          if ((v18 & 0x7FFFFFFF) == v19)
          {
            goto LABEL_14;
          }
        }

        v47 = v63.__begin_;
        if (v19 >= v63.__end_ - v63.__begin_)
        {
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        *(v21 + 7) = (v22 + v63.__begin_[v19] * v24) / (v63.__begin_[v19] + 1);
        *(v21 + 8) = (v26 + v47[v19] * v25) / (v47[v19] + 1);
        *v21 = (v28 + v47[v19] * v29) / (v47[v19] + 1);
        *(v21 + 26) = (v30 + v47[v19] * v31) / (v47[v19] + 1);
        v48 = *(v20 + 164);
        v49 = vmul_s32(*(v20 + 28), vdup_n_s32(v48));
        *(v20 + 28) = v49;
        v50 = *v20 * v48;
        *v20 = v50;
        v51 = *(v20 + 104) * v48;
        *(v20 + 104) = v51;
        if (v18 <= v19)
        {
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        *(v23 - 19) = vadd_s32(*(v23 - 19), v49);
        *(v23 - 26) += v50;
        *v23 += v51;
        v23[11] += *(v20 + 148);
        v23[15] += v48;
        ++v47[v19];
      }

      ++v15;
      v46 = (v11 - v12) >> 3;
      v14 = 0x84BDA12F684BDA13 * v46;
    }

    while (v15 < 1749801491 * v46);
  }

  while (v11 != v12)
  {
    apple::vision::libraries::facecore::Face::~Face((v11 - 216));
  }

  a2[1] = v12;
  v52 = v67;
  v53 = v68;
  v54 = 0x84BDA12F684BDA13 * ((v68 - v67) >> 3);
  if (v54 >= 1)
  {
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = v63.__begin_;
      if (v56 >= v63.__end_ - v63.__begin_)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      if (v63.__begin_[v56] >= a3)
      {
        if (v54 <= v56)
        {
          goto LABEL_48;
        }

        v58 = (v52 + v55);
        v59 = *(v52 + v55 + 164);
        v60 = v58[8] / v59;
        v58[7] /= v59;
        v58[8] = v60;
        *v58 /= v59;
        v58[26] /= v59;
        v61 = v59 / v57[v56];
        v58[41] = v61;
        v58[41] = v57[v56] + v61;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](a2, v58);
        v52 = v67;
        v53 = v68;
      }

      ++v56;
      v54 = 0x84BDA12F684BDA13 * ((v53 - v52) >> 3);
      v55 += 216;
    }

    while (v56 < v54);
  }

  if (a3 >= 1)
  {
    apple::vision::libraries::facecore::processing::detection::FaceManager::groupFaces(a1, a2, 0, 75, 1.0, 0.5);
  }

  if (v63.__begin_)
  {
    v63.__end_ = v63.__begin_;
    operator delete(v63.__begin_);
  }

  v63.__begin_ = &v64;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v63);
  v64 = &v67;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v64);
}

void sub_23ACE2214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, char **a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  a13 = &a16;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }
}

int32x4_t apple::vision::libraries::facecore::processing::detection::FaceManager::getEyes(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  v4 = __sincos_stret((v3 - 45) / 180.0 * 3.1415);
  v10 = *a2;
  v5 = __sincos_stret((v3 + 45) / 180.0 * 3.1415);
  v6.i64[0] = *(a2 + 28);
  v6.i64[1] = v6.i64[0];
  v7 = vdupq_n_s64(0x3FFCCCCCCCCCCCCDuLL);
  v8 = vuzp1q_s32(vcvtq_s64_f64(vdivq_f64(vmulq_n_f64(v4, v10), v7)), vcvtq_s64_f64(vdivq_f64(vmulq_n_f64(v5, v10), v7)));
  result = vtrn2q_s32(vrev64q_s32(vaddq_s32(v6, v8)), vsubq_s32(v6, v8));
  *(a2 + 4) = result;
  return result;
}

int32x2_t apple::vision::libraries::facecore::processing::detection::FaceManager::getMouth(uint64_t a1, uint64_t a2)
{
  v3 = __sincos_stret(*(a2 + 104) / 180.0 * 3.1415);
  v4 = *(a2 + 28);
  __asm { FMOV            V1.2D, #0.5 }

  *&v3.__sinval = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vmulq_n_f64(v3, *a2), _Q1)));
  LODWORD(_Q1.f64[0]) = vsub_s32(v4, *&v3.__sinval).u32[0];
  result = vadd_s32(v4, *&v3.__sinval);
  HIDWORD(_Q1.f64[0]) = result.i32[1];
  *(a2 + 20) = _Q1.f64[0];
  return result;
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::getAccuracy(uint64_t a1, void *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3);
  if (v2 >= 1)
  {
    v3 = v2 & 0x7FFFFFFF;
    v4 = *a2 + 148;
    do
    {
      if (!v2)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      v5 = *v4;
      if (*v4 <= 0)
      {
        *(v4 + 4) = 0;
      }

      else
      {
        v6 = *(v4 + 52);
        v7 = *(v4 + 60);
        if (v5 > 2)
        {
          if (v5 > 0xC)
          {
            *(v4 + 4) = 0x3FF0000000000000;
            goto LABEL_14;
          }

          v9 = ((v5 - 2) / 10.0 + *(v4 + 44) + v6 * 3.0 + v7 * 2.0) * 0.142857143;
        }

        else
        {
          v8 = (v7 + v6 * 3.0) * 0.25;
          if (v5 == 1)
          {
            v9 = v8 * 0.5;
          }

          else
          {
            v9 = v8 * 0.7;
          }
        }

        *(v4 + 4) = v9;
      }

LABEL_14:
      --v2;
      v4 += 216;
      --v3;
    }

    while (v3);
  }
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::removeOverlappingFaces(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  isInside = std::vector<apple::vision::libraries::facecore::FaceInternal>::reserve(&v12, 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3));
  v5 = *a2;
  v4 = a2[1];
  if ((1749801491 * ((v4 - *a2) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = 0x84BDA12F684BDA13 * ((v4 - v5) >> 3);
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          if (v6 != v9)
          {
            v10 = (v5 + 216 * v6);
            v11 = v10[37];
            if (v11 <= *(v5 + v8 + 148))
            {
              isInside = apple::vision::libraries::facecore::processing::detection::FaceManager::isInside(isInside, (v5 + 216 * v6), (v5 + v8));
              if (isInside)
              {
                goto LABEL_18;
              }

              isInside = apple::vision::libraries::facecore::processing::detection::FaceManager::isInside(isInside, (v5 + v8), (v5 + 216 * v6));
              if ((isInside & 1) != 0 || apple::vision::libraries::facecore::utils::aev::AEVOverlappingUtils::computeOptimisticFaceOverlap(isInside, v10[7], v10[8], *v10, *(v5 + v8 + 28), *(v5 + v8 + 32), *(v5 + v8)) > 0.6)
              {
                goto LABEL_18;
              }

              v5 = *a2;
              v11 = *(*a2 + 216 * v6 + 148);
            }

            if (v11 <= 9 && v11 <= *(v5 + v8 + 148))
            {
              if (apple::vision::libraries::facecore::utils::aev::AEVOverlappingUtils::computeOptimisticFaceOverlap(isInside, *(v5 + 216 * v6 + 28), *(v5 + 216 * v6 + 32), *(v5 + 216 * v6), *(v5 + v8 + 28), *(v5 + v8 + 32), *(v5 + v8)) > 0.4)
              {
                goto LABEL_18;
              }

              v5 = *a2;
            }
          }

          ++v9;
          v7 = 0x84BDA12F684BDA13 * ((a2[1] - v5) >> 3);
          v8 += 216;
        }

        while (v9 < v7);
      }

      if (v7 <= v6)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      isInside = std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](&v12, v5 + 216 * v6);
LABEL_18:
      ++v6;
      v5 = *a2;
      v4 = a2[1];
    }

    while (v6 < (1749801491 * ((v4 - *a2) >> 3)));
  }

  if (&v12 != a2)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(a2, v12, v13, 0x84BDA12F684BDA13 * ((v13 - v12) >> 3));
  }

  v15 = &v12;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v15);
}

void sub_23ACE2784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL apple::vision::libraries::facecore::processing::detection::FaceManager::isInside(uint64_t a1, int *a2, int *a3)
{
  v3 = a2[7];
  v4 = *a2;
  v5 = a3[7];
  v6 = *a3;
  if (v3 - *a2 < v5 - *a3)
  {
    return 0;
  }

  v8 = a3[8];
  v9 = v8 + v6;
  v10 = v8 - v6;
  v11 = a2[8];
  v12 = v11 + v4;
  v13 = v11 - v4;
  return v4 + v3 <= v6 + v5 && v12 <= v9 && v13 >= v10;
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::removeHitsOnBorders(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = 0x84BDA12F684BDA13 * ((v6 - *a2) >> 3);
  if (v7 >= 1)
  {
    v11 = 0;
    v12 = (v4 - 1) / 2;
    do
    {
      if (v7 <= v11)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = (v5 + 216 * v11);
      v14 = *v13;
      if (*v13 > v12)
      {
        *v13 = v12;
        v14 = v12;
      }

      v15 = v13[7];
      if (v15 >= v14 && ((v16 = v13[8], v17 = v14 + v15, v16 >= v14) ? (v18 = v17 < a3) : (v18 = 0), v18 ? (v19 = v16 + v14 < a4) : (v19 = 0), v19))
      {
        ++v11;
      }

      else
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(&v22, (v5 + 216 * v11 + 216), v6, v5 + 216 * v11);
        v6 = v20;
        v21 = a2[1];
        if (v21 != v20)
        {
          do
          {
            apple::vision::libraries::facecore::Face::~Face((v21 - 216));
          }

          while (v21 != v6);
        }

        a2[1] = v6;
        v5 = *a2;
      }

      v7 = 0x84BDA12F684BDA13 * ((v6 - v5) >> 3);
    }

    while (v11 < v7);
  }
}

void apple::vision::libraries::facecore::processing::detection::FaceManager::sortFacesBySize(uint64_t a1, void *a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0x100000001;
  v25 = 0x3FF0000000000000;
  v26 = 0x100000000;
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v28 = _Q0;
  v29 = _Q0;
  v7 = 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3);
  if (v7 >= 2)
  {
    v9 = 0;
    v10 = (v7 - 1);
    v11 = v7 & 0x7FFFFFFF;
    v12 = 1;
    v13 = 216;
    do
    {
      v14 = v9++;
      v15 = 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3);
      v16 = (*a2 + v13);
      v17 = v12;
      v18 = v14;
      do
      {
        if (v15 <= v17 || v15 <= v18)
        {
          goto LABEL_20;
        }

        v19 = *v16;
        v16 += 54;
        if (v19 > *(*a2 + 216 * v18))
        {
          v18 = v17;
        }

        ++v17;
      }

      while (v11 != v17);
      if (v14 != v18)
      {
        if (0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) <= v18 || ((v20 = v18, apple::vision::libraries::facecore::FaceInternal::operator=(v23, *a2 + 216 * v18), v21 = 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3), v21 > v14) ? (v22 = v21 > v20) : (v22 = 0), !v22 || (apple::vision::libraries::facecore::FaceInternal::operator=(*a2 + 216 * v20, *a2 + 216 * v14), 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) <= v14)))
        {
LABEL_20:
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        apple::vision::libraries::facecore::FaceInternal::operator=(*a2 + 216 * v14, v23);
      }

      ++v12;
      v13 += 216;
    }

    while (v9 != v10);
  }

  apple::vision::libraries::facecore::Face::~Face(v23);
}

uint64_t apple::vision::libraries::facecore::FaceInternal::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    apple::vision::libraries::facecore::Face::operator=(a1, a2);
    v4 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v4;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, apple::vision::libraries::facecore::Face *a2, apple::vision::libraries::facecore::Face *a3, apple::vision::libraries::facecore::Face *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(a4, v8);
      v8 += 216;
      a4 = (a4 + 216);
      v7 -= 216;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      apple::vision::libraries::facecore::Face::~Face(v6);
      v6 = (v6 + 216);
    }
  }
}

void sub_23ACE2C50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 216);
    do
    {
      apple::vision::libraries::facecore::Face::~Face(v4);
      v4 = (v5 - 216);
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<apple::vision::libraries::facecore::FaceInternal>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    apple::vision::libraries::facecore::Face::~Face((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal>::__emplace_back_slow_path<apple::vision::libraries::facecore::FaceInternal const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  apple::vision::libraries::facecore::FaceInternal::FaceInternal((216 * v2), a2);
  v15 = 216 * v2 + 216;
  v7 = *(a1 + 8);
  v8 = (216 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<apple::vision::libraries::facecore::FaceInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_23ACE2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<apple::vision::libraries::facecore::FaceInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::Face::~Face(apple::vision::libraries::facecore::Face *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    free(*v2);
    *v2 = 0;
    MEMORY[0x23EE98360](v2, 0x10C0C40FA6900CELL);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B7A548, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        apple::vision::libraries::facecore::Face::~Face((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 apple::vision::libraries::facecore::FaceInternal::FaceInternal(apple::vision::libraries::facecore::Face *a1, uint64_t a2)
{
  v3 = apple::vision::libraries::facecore::Face::Face(a1, a2);
  v4 = *(a2 + 152);
  *(v3 + 18) = *(a2 + 144);
  *(v3 + 19) = v4;
  *(v3 + 20) = *(a2 + 160);
  *(v3 + 168) = *(a2 + 168);
  *(v3 + 184) = *(a2 + 184);
  result = *(a2 + 200);
  *(v3 + 200) = result;
  return result;
}

apple::vision::libraries::facecore::Face *apple::vision::libraries::facecore::Face::Face(apple::vision::libraries::facecore::Face *this, const apple::vision::libraries::facecore::Face *a2)
{
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  *(this + 12) = *(a2 + 12);
  *(this + 20) = *(a2 + 20);
  *(this + 28) = *(a2 + 28);
  *(this + 9) = *(a2 + 9);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  v4 = *(a2 + 18);
  *(this + 10) = 0;
  *(this + 18) = v4;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<apple::vision::libraries::facecore::coord>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::coord*,apple::vision::libraries::facecore::coord*>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  *(this + 26) = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 14) = *(a2 + 14);
  *(this + 120) = *(a2 + 120);
  *(this + 31) = *(a2 + 31);
  *(this + 128) = *(a2 + 128);
  *(this + 33) = *(a2 + 33);
  *(this + 17) = 0;
  if (*(a2 + 17))
  {
    operator new();
  }

  return this;
}

void sub_23ACE3164(_Unwind_Exception *a1)
{
  MEMORY[0x23EE98360](v4, 0x10C0C40FA6900CELL);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23ACE3218(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<apple::vision::libraries::facecore::coord>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::coord*,apple::vision::libraries::facecore::coord*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23ACE3318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

apple::vision::libraries::facecore::naturalSmileData *apple::vision::libraries::facecore::naturalSmileData::naturalSmileData(apple::vision::libraries::facecore::naturalSmileData *this, const naturalSmileData *a2)
{
  if (*a2)
  {
    v4 = malloc_type_malloc(*(a2 + 1), 0x2B057272uLL);
  }

  else
  {
    v4 = 0;
  }

  *this = v4;
  v5 = *(a2 + 1);
  if (v4)
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  *(this + 1) = v6;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  if (v4)
  {
    memcpy(v4, *a2, v5);
  }

  return this;
}

void std::vector<apple::vision::libraries::facecore::FaceInternal>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__vdeallocate(a1);
    if (a4 <= 0x12F684BDA12F684)
    {
      v9 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
      {
        v10 = 0x12F684BDA12F684;
      }

      else
      {
        v10 = v9;
      }

      std::vector<apple::vision::libraries::facecore::FaceInternal>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x84BDA12F684BDA13 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        apple::vision::libraries::facecore::FaceInternal::operator=(v8, v6);
        v6 += 216;
        v8 = (v8 + 216);
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 216);
      apple::vision::libraries::facecore::Face::~Face(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        apple::vision::libraries::facecore::FaceInternal::operator=(v8, v14);
        v14 += 216;
        v8 = (v8 + 216);
        v13 -= 216;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(a1, v6 + v12, a3, v11);
  }
}

void std::vector<apple::vision::libraries::facecore::FaceInternal>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        apple::vision::libraries::facecore::Face::~Face((v3 - 216));
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

void std::vector<apple::vision::libraries::facecore::FaceInternal>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

apple::vision::libraries::facecore::Face *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, apple::vision::libraries::facecore::Face *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(a4, v6);
      v6 += 216;
      a4 = (a4 + 216);
      v7 -= 216;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_23ACE3664(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 216);
    do
    {
      apple::vision::libraries::facecore::Face::~Face(v4);
      v4 = (v5 - 216);
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[2];
    *(a4 + 16) = v5[1];
    *(a4 + 32) = v8;
    *a4 = v7;
    std::vector<double>::__move_assign(a4 + 48, v5 + 3);
    *(a4 + 72) = *(v5 + 18);
    std::vector<double>::__move_assign(a4 + 80, v5 + 5);
    v9 = *(v5 + 104);
    v10 = *(v5 + 120);
    *(a4 + 136) = *(v5 + 17);
    *(a4 + 120) = v10;
    *(a4 + 104) = v9;
    v12 = v5[11];
    v11 = v5[12];
    v13 = v5[10];
    *(a4 + 208) = *(v5 + 26);
    *(a4 + 176) = v12;
    *(a4 + 192) = v11;
    *(a4 + 160) = v13;
    *(a4 + 144) = v5[9];
    a4 += 216;
    v5 = (v5 + 216);
  }

  while (v5 != v6);
  return v6;
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t apple::vision::libraries::facecore::Face::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      free(*v4);
      *v4 = 0;
      MEMORY[0x23EE98360](v4, 0x10C0C40FA6900CELL);
    }

    *(a1 + 136) = 0;
    if (*(a2 + 136))
    {
      operator new();
    }

    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 28) = *(a2 + 28);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 40) = *(a2 + 40);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
    *(a1 + 72) = *(a2 + 72);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 132) = *(a2 + 132);
  }

  return a1;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
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

void *apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::GradientLocalDescriptor(void *this)
{
  this[14] = 0;
  this[8] = 0;
  this[9] = 0;
  return this;
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::~GradientLocalDescriptor(apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    free(v4);
  }
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::init(apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor *this, int a2, int a3)
{
  *(this + 8) = a2;
  *(this + 9) = a3;
  if (a3 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = floor(log(v6) / 0.693147181) + -3.0;
  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  *(this + 10) = v7;
  *(this + 44) = xmmword_23B251F80;
  *(this + 15) = 0;
  v8 = *(this + 8);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    free(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    free(v10);
  }

  v11 = a3 * a2;
  *(this + 9) = malloc_type_malloc(4 * (v11 + v11 * (*(this + 14) - *(this + 13))), 0x100004052888210uLL);
  v12 = 0;
  *(this + 14) = malloc_type_malloc(8 * v11 * (*(this + 14) - *(this + 13)), 0x100004052888210uLL);
  *this = xmmword_23B251F90;
  *(this + 1) = xmmword_23B251FA0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 6) = xmmword_23B251FB0;
  *(this + 30) = -1;
  v13 = xmmword_23B251FC0;
  v14 = &unk_27E12D8E0;
  v16 = vdupq_n_s64(0x101uLL);
  v17 = vdupq_n_s64(2uLL);
  do
  {
    v19 = vmovn_s64(vcgtq_u64(v16, v13)).u8[0];
    v20 = v13;
    v18 = exp(v12 * -0.09765625);
    v15 = exp((v12 + 1) * -0.09765625);
    if (v19)
    {
      *(v14 - 1) = v18;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v20)).i32[1])
    {
      *v14 = v15;
    }

    v12 += 2;
    v13 = vaddq_s64(v20, v17);
    v14 += 2;
  }

  while (v12 != 258);
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::extract(apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor *this, const float *a2, int a3, int a4, double *a5, int a6, unsigned __int8 *a7, int *a8)
{
  v37 = *MEMORY[0x277D85DE8];
  apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::init(this, a3, a4);
  if (*(this + 15) != 2)
  {
    v11 = 0;
    LODWORD(v12) = 0;
    v32 = a6;
    v13 = 1;
    v27 = a6;
    v30 = vdupq_n_s64(0x406FE00000000000uLL);
    v31 = vdupq_n_s64(0x4080000000000000uLL);
    do
    {
      if (v13)
      {
        if (apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::process_first_octave(this, a2))
        {
          break;
        }
      }

      else if (apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::process_next_octave(this))
      {
        break;
      }

      if (v12 < a6)
      {
        v12 = v12;
        v14 = &a7[128 * v11];
        while (1)
        {
          apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::keypoint_init(this, v33, a5[4 * v12 + 1], a5[4 * v12], a5[4 * v12 + 2]);
          if (v33[0] != *(this + 15))
          {
            break;
          }

          v15 = a5[4 * v12 + 3];
          memset(&v36, 0, 512);
          memset(v35, 0, sizeof(v35));
          memset(v34, 0, sizeof(v34));
          v16 = &v36;
          apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::calc_keypoint_descriptor(this, &v36, v33, 1.57079633 - v15);
          v17 = 0;
          v18 = &v35[1] + 12;
          do
          {
            v19 = 0;
            v20 = v16;
            v21 = v18;
            do
            {
              *(v35 + 8 * v19 - 32 * v17) = v36.i32[(32 * v17) | (8 * v19)];
              v22 = v21;
              for (i = 1; i != 8; ++i)
              {
                *v22-- = v20->i32[i];
              }

              ++v19;
              v21 += 8;
              v20 += 4;
            }

            while (v19 != 4);
            ++v17;
            v18 -= 128;
            v16 += 16;
          }

          while (v17 != 4);
          v24 = 0;
          v25 = v14;
          do
          {
            *v25++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvtq_f64_f32(*&v34[v24]), v31), v30)), vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvt_hight_f64_f32(v34[v24]), v31), v30))), vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvtq_f64_f32(*&v34[v24 + 1]), v31), v30)), vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvt_hight_f64_f32(v34[v24 + 1]), v31), v30)))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvtq_f64_f32(*&v34[v24 + 2]), v31), v30)), vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvt_hight_f64_f32(v34[v24 + 2]), v31), v30))), vuzp1q_s32(vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvtq_f64_f32(*&v34[v24 + 3]), v31), v30)), vcvtq_s64_f64(vminnmq_f64(vmulq_f64(vcvt_hight_f64_f32(v34[v24 + 3]), v31), v30)))));
            v24 += 4;
          }

          while (v24 != 32);
          ++v11;
          ++v12;
          v14 += 128;
          if (v12 == v32)
          {
            a6 = v27;
            LODWORD(v12) = v27;
            goto LABEL_21;
          }
        }

        a6 = v27;
      }

LABEL_21:
      v13 = 0;
    }

    while (*(this + 15) != 2);
  }

  *a8 = 128;
}

uint64_t apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::process_first_octave(apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor *this, const float *a2)
{
  if (!*(this + 10))
  {
    return 5;
  }

  *(this + 15) = *(this + 12);
  v3 = *(this + 8);
  v4 = *(this + 9);
  *(this + 20) = v3;
  *(this + 21) = v4;
  memcpy(*(this + 9), a2, 4 * v3 * v4);
  v6 = *(this + 1);
  v5 = *(this + 2);
  v7 = *(this + 13);
  v8 = v6 * pow(v5, v7);
  v9 = *this;
  v10 = v9 * ldexp(1.0, -*(this + 12));
  if (v8 > v10)
  {
    apple::vision::libraries::facecore::mod::filters::basic_smoothing(*(this + 9), *(this + 9), *(this + 8), *(this + 9), sqrt(v8 * v8 - v10 * v10));
    v7 = *(this + 13);
    v5 = *(this + 2);
  }

  v11 = *(this + 3);
  v12 = pow(v5, (v7 + 1));
  apple::vision::libraries::facecore::mod::filters::basic_smoothing((*(this + 9) + 4 * *(this + 21) * *(this + 20)), *(this + 9), *(this + 8), *(this + 9), v11 * v12);
  return 0;
}

uint64_t apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::process_next_octave(apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor *this)
{
  v1 = *(this + 15);
  if (v1 == *(this + 12) + *(this + 10) - 1)
  {
    return 5;
  }

  v4 = *(this + 9);
  v5 = *(this + 21);
  v6 = *(this + 13);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = *(this + 20);
    v9 = v4 - 4 * v8 * v5 * v6;
    v10 = v8 - 1;
    v11 = 8 * v8;
    v12 = *(this + 9);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        do
        {
          *v12++ = *&v9[4 * v13];
          v13 += 2;
        }

        while (v13 < v10);
      }

      v7 += 2;
      v9 += v11;
    }

    while (v7 < v5);
  }

  v14 = v1 + 1;
  *(this + 15) = v14;
  v15 = (*(this + 8) >> v14);
  v16 = *(this + 9) >> v14;
  *(this + 20) = v15;
  *(this + 21) = v16;
  v18 = *(this + 1);
  v17 = *(this + 2);
  v19 = v17;
  v20 = v18 * powf(v19, v6);
  v21 = v17;
  v22 = v18 * powf(v21, -*(this + 11));
  if (v20 > v22)
  {
    apple::vision::libraries::facecore::mod::filters::basic_smoothing(v4, v4, v15, v16, sqrt(v20 * v20 - v22 * v22));
    v6 = *(this + 13);
    v17 = *(this + 2);
    v15 = *(this + 20);
    v16 = *(this + 21);
    v4 = *(this + 9);
  }

  v23 = *(this + 3);
  v24 = pow(v17, (v6 + 1));
  apple::vision::libraries::facecore::mod::filters::basic_smoothing((v4 + 4 * v16 * v15), v4, v15, v16, v23 * v24);
  return 0;
}

float apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::keypoint_init(uint64_t a1, uint64_t a2, float64_t a3, float64_t a4, double a5)
{
  v8 = log(a5 / *(a1 + 8)) / 0.693147181;
  v10 = *(a1 + 48);
  v9 = *(a1 + 52);
  v11 = *(a1 + 44);
  v12 = vcvtmd_s64_f64(v8 - (v9 + 0.5) / v11);
  if (v10 + *(a1 + 40) - 1 < v12)
  {
    v12 = v10 + *(a1 + 40) - 1;
  }

  if (v12 <= v10)
  {
    v13 = *(a1 + 48);
  }

  else
  {
    v13 = v12;
  }

  v14 = (v8 - v13) * v11;
  v15 = (v14 + 0.5);
  if (*(a1 + 56) - 2 < v15)
  {
    v15 = *(a1 + 56) - 2;
  }

  if (v15 <= v9 + 1)
  {
    v16 = v9 + 1;
  }

  else
  {
    v16 = v15;
  }

  *&v17 = ldexp(1.0, v13);
  v18.f64[0] = a3;
  v18.f64[1] = a4;
  *a2 = v13;
  v19 = vdivq_f64(v18, vdupq_lane_s64(v17, 0));
  __asm { FMOV            V1.2D, #0.5 }

  *(a2 + 4) = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v19, _Q1)));
  *(a2 + 12) = v16;
  *v19.f64 = a3;
  *_Q1.f64 = a4;
  *(a2 + 16) = LODWORD(v19.f64[0]);
  *(a2 + 20) = LODWORD(_Q1.f64[0]);
  result = v14;
  *_Q1.f64 = a5;
  *(a2 + 24) = result;
  *(a2 + 28) = LODWORD(_Q1.f64[0]);
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::calc_keypoint_descriptor(uint64_t a1, float32x2_t *a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 96);
  v9 = *(a1 + 60);
  v10 = ldexp(1.0, v9);
  v11 = *(a1 + 84);
  v12 = *(a1 + 80);
  v13 = *(a3 + 16);
  v14 = *(a3 + 20);
  v15 = *(a3 + 28);
  v16 = *(a3 + 12);
  v17 = __sincos_stret(a4);
  if (*a3 == v9)
  {
    v18 = v13 / v10;
    v19 = (v18 + 0.5);
    if ((v19 & 0x80000000) == 0)
    {
      v20 = v12 - v19;
      if (v12 > v19)
      {
        v21 = v14 / v10;
        v22 = (v21 + 0.5);
        if ((v22 & 0x80000000) == 0 && v11 - 1 > v22 && v16 > *(a1 + 52) && v16 <= *(a1 + 56) - 2)
        {
          v23 = v8 * (v15 / v10);
          v24 = vcvtmd_s64_f64(v23 * 5.0 * 0.5 + 0.5);
          apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::update_gradient(a1);
          *a2[60].f32 = 0u;
          *a2[62].f32 = 0u;
          *a2[56].f32 = 0u;
          *a2[58].f32 = 0u;
          *a2[52].f32 = 0u;
          *a2[54].f32 = 0u;
          *a2[48].f32 = 0u;
          *a2[50].f32 = 0u;
          *a2[44].f32 = 0u;
          *a2[46].f32 = 0u;
          *a2[40].f32 = 0u;
          *a2[42].f32 = 0u;
          *a2[36].f32 = 0u;
          *a2[38].f32 = 0u;
          *a2[32].f32 = 0u;
          *a2[34].f32 = 0u;
          *a2[28].f32 = 0u;
          *a2[30].f32 = 0u;
          *a2[24].f32 = 0u;
          *a2[26].f32 = 0u;
          *a2[20].f32 = 0u;
          *a2[22].f32 = 0u;
          *a2[16].f32 = 0u;
          *a2[18].f32 = 0u;
          *a2[12].f32 = 0u;
          *a2[14].f32 = 0u;
          *a2[8].f32 = 0u;
          *a2[10].f32 = 0u;
          if (1 - v22 <= -v24)
          {
            LODWORD(v25) = -v24;
          }

          else
          {
            LODWORD(v25) = 1 - v22;
          }

          *a2[4].f32 = 0uLL;
          *a2[6].f32 = 0uLL;
          if (v11 - v22 - 2 >= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v11 - v22 - 2;
          }

          *a2->f32 = 0uLL;
          *a2[2].f32 = 0uLL;
          if (v25 <= v26)
          {
            v27 = 2 * v12;
            v28 = *(a1 + 112) + 4 * (2 * v19) + 4 * 2 * v12 * v22 + 4 * 2 * v12 * v11 * (v16 + ~*(a1 + 52));
            v29 = 1 - v19;
            if (1 - v19 <= -v24)
            {
              v29 = -v24;
            }

            v30 = v20 - 2;
            if (v20 - 2 >= v24)
            {
              v30 = v24;
            }

            v25 = v25;
            v34 = v26 + 1;
            do
            {
              if (v29 <= v30)
              {
                v33 = v21;
                v35 = ((v25 + v22) - v33);
                v36 = v17.__sinval * v35;
                v37 = v17.__cosval * v35;
                v38 = *(a1 + 104);
                v39 = (v38 + v38) * v38;
                v40 = v29;
                do
                {
                  v41 = (v28 + 4 * v25 * v27 + 8 * v40);
                  v31 = a4;
                    ;
                  }

                  while (i < 0.0)
                  {
                    i = i + 6.2832;
                  }

                  v32 = v18;
                  v43 = ((v40 + v19) - v32);
                  v44 = (v36 + v17.__cosval * v43) / v23;
                  v45 = (v37 + -v17.__sinval * v43) / v23;
                  v46 = ((v45 * v45) + (v44 * v44)) / v39;
                  v47 = 0.0;
                  if (v46 <= 25.0)
                  {
                    v48 = vcvtmd_s64_f64(v46 * 10.24);
                    v47 = *(&apple::vision::libraries::facecore::mod::facerecognition::expn_tab + v48) + (v46 * 10.24 - v48) * (*(&apple::vision::libraries::facecore::mod::facerecognition::expn_tab + v48 + 1) - *(&apple::vision::libraries::facecore::mod::facerecognition::expn_tab + v48));
                  }

                  v49 = 0;
                  v50 = *v41;
                  v51 = (i * 8.0) / 6.28318531;
                  v52 = vcvtmd_s64_f64(v44 + -0.5);
                  v53 = vcvtmd_s64_f64(v45 + -0.5);
                  v54 = vcvtms_s32_f32(v51);
                  v55 = v44 - (v52 + 0.5);
                  v56 = v45 - (v53 + 0.5);
                  v57 = v50 * v47;
                  v58 = floorf(v51) - v51;
                  v59 = 1;
                  do
                  {
                    v60 = 0;
                    v61 = v59;
                    v62 = v49 + v52 - 2;
                    v63 = v57 * vabds_f32((v49 ^ 1), v55);
                    v64 = &a2[4 * v49 + 40 + 4 * v52];
                    v65 = 1;
                    do
                    {
                      v66 = 0;
                      v67 = v65;
                      v68 = v60 + v53 - 2;
                      v69 = v63 * vabds_f32((v60 ^ 1), v56);
                      v70 = v64 + ((v60 + v53) << 7);
                      v72 = v62 < 0xFFFFFFFC || v68 < 0xFFFFFFFC;
                      v73 = 1;
                      do
                      {
                        v74 = v73;
                        if (!v72)
                        {
                          v75 = v69 * fabsf(v58 + (v66 ^ 1u));
                          v76 = v66 + v54;
                          v77 = v76 & 7;
                          v79 = -v76;
                          v78 = v79 < 0;
                          v80 = v79 & 7;
                          if (v78)
                          {
                            v81 = v77;
                          }

                          else
                          {
                            v81 = -v80;
                          }

                          *(v70 + 4 * v81) = v75 + *(v70 + 4 * v81);
                        }

                        v73 = 0;
                        v66 = 1;
                      }

                      while ((v74 & 1) != 0);
                      v65 = 0;
                      v60 = 1;
                    }

                    while ((v67 & 1) != 0);
                    v59 = 0;
                    v49 = 1;
                  }

                  while ((v61 & 1) != 0);
                  ++v40;
                }

                while (v30 + 1 != v40);
              }

              ++v25;
            }

            while (v34 != v25);
          }

          v82 = 0;
          v83 = 0;
          do
          {
            v84 = vmulq_f32(*a2[v82].f32, *a2[v82].f32);
            *v83.i32 = (((*v83.i32 + v84.f32[0]) + v84.f32[1]) + v84.f32[2]) + v84.f32[3];
            v82 += 2;
          }

          while (v82 != 64);
          v85.i32[1] = 1044740494;
          if (*v83.i32 >= 0.00000001)
          {
            v86 = ((((*v83.i32 * -0.5) * COERCE_FLOAT(1597463007 - (v83.i32[0] >> 1))) * COERCE_FLOAT(1597463007 - (v83.i32[0] >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v83.i32[0] >> 1));
            *v83.i32 = (*v83.i32 * (v86 * ((((*v83.i32 * -0.5) * v86) * v86) + 1.5))) + 0.00000011921;
          }

          else
          {
            v83 = 0x3400000034000000;
          }

          v87 = 0;
          v88 = vdupq_lane_s32(v83, 0);
          do
          {
            *a2[v87].f32 = vdivq_f32(*a2[v87].f32, v88);
            v87 += 2;
          }

          while (v87 != 64);
          v89 = *(a1 + 88);
          v90 = *v83.i32;
          if (v89 <= 0.0 || v89 <= v90)
          {
            v92 = 32;
            v93 = vdupq_n_s64(0x3FC999999999999AuLL);
            v94 = a2;
            do
            {
              v95 = *v94->f32;
              v96 = vmovn_s64(vcgtq_f64(vcvtq_f64_f32(*v94), v93));
              if (vuzp1_s16(v96, 0x3E45798EE2308C3ALL).u8[0])
              {
                v94->i32[0] = 1045220557;
              }

              if (vuzp1_s16(v96, 0x3E45798EE2308C3ALL).i8[2])
              {
                v94->i32[1] = 1045220557;
              }

              if (vuzp1_s16(0x3E45798EE2308C3ALL, vmovn_s64(vcgtq_f64(vcvt_hight_f64_f32(v95), v93))).i32[1])
              {
                v94[1].i32[0] = 1045220557;
                v94[1].i32[1] = 1045220557;
              }

              v94 += 2;
              --v92;
            }

            while (v92 * 4);
            v97 = 0.0;
            do
            {
              v98 = vmulq_f32(*&a2->f32[v92], *&a2->f32[v92]);
              v97 = (((v97 + v98.f32[0]) + v98.f32[1]) + v98.f32[2]) + v98.f32[3];
              v92 += 4;
            }

            while (v92 != 128);
            if (v97 >= 0.00000001)
            {
              v99 = ((((v97 * -0.5) * COERCE_FLOAT(1597463007 - (SLODWORD(v97) >> 1))) * COERCE_FLOAT(1597463007 - (SLODWORD(v97) >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (SLODWORD(v97) >> 1));
              *v85.i32 = (v97 * (v99 * ((((v97 * -0.5) * v99) * v99) + 1.5))) + 0.00000011921;
            }

            else
            {
              v85 = 0x3400000034000000;
            }

            v100 = 0;
            v101 = vdupq_lane_s32(v85, 0);
            do
            {
              *a2[v100].f32 = vdivq_f32(*a2[v100].f32, v101);
              v100 += 2;
            }

            while (v100 != 64);
          }

          else
          {
            *a2[60].f32 = 0u;
            *a2[62].f32 = 0u;
            *a2[56].f32 = 0u;
            *a2[58].f32 = 0u;
            *a2[52].f32 = 0u;
            *a2[54].f32 = 0u;
            *a2[48].f32 = 0u;
            *a2[50].f32 = 0u;
            *a2[44].f32 = 0u;
            *a2[46].f32 = 0u;
            *a2[40].f32 = 0u;
            *a2[42].f32 = 0u;
            *a2[36].f32 = 0u;
            *a2[38].f32 = 0u;
            *a2[32].f32 = 0u;
            *a2[34].f32 = 0u;
            *a2[28].f32 = 0u;
            *a2[30].f32 = 0u;
            *a2[24].f32 = 0u;
            *a2[26].f32 = 0u;
            *a2[20].f32 = 0u;
            *a2[22].f32 = 0u;
            *a2[16].f32 = 0u;
            *a2[18].f32 = 0u;
            *a2[12].f32 = 0u;
            *a2[14].f32 = 0u;
            *a2[8].f32 = 0u;
            *a2[10].f32 = 0u;
            *a2[4].f32 = 0u;
            *a2[6].f32 = 0u;
            *a2->f32 = 0u;
            *a2[2].f32 = 0u;
          }
        }
      }
    }
  }
}

uint64_t apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::update_gradient(uint64_t this)
{
  v1 = *(this + 60);
  if (*(this + 120) != v1)
  {
    v2 = *(this + 84);
    v3 = *(this + 80);
    v4 = (*(this + 72) + 4 * v2 * v3);
    v5 = *(this + 112);
    v6 = *v4;
    v7 = &v4[v3];
    v9 = v4[1];
    v8 = v4 + 1;
    v10 = v9 - v6;
    v11 = *v7 - v6;
    *&v12 = (v11 * v11) + (v10 * v10);
    v13 = *&v12;
    v14 = ((((*&v12 * -0.5) * COERCE_FLOAT(1597463007 - (v12 >> 1))) * COERCE_FLOAT(1597463007 - (v12 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v12 >> 1));
    v15 = *&v12 * (v14 * ((((*&v12 * -0.5) * v14) * v14) + 1.5));
    if (v13 < 0.00000001)
    {
      v15 = 0.0;
    }

    *v5 = v15;
    v16 = -v11;
    if (v11 >= 0.0)
    {
      v16 = v11;
    }

    v17 = v16 + 0.00000011921;
    v18 = v10 + (v16 + 0.00000011921);
    if (v10 >= 0.0)
    {
      v22 = v10 - v17;
      v20 = 0.7854;
      v21 = v22 / v18;
    }

    else
    {
      v19 = v17 - v10;
      v20 = 2.3562;
      v21 = v18 / v19;
    }

    v23 = v20 + ((((v21 * 0.1821) * v21) + -0.9675) * v21);
    v24 = -v23;
    if (v11 >= 0.0)
    {
      v24 = v23;
    }

      ;
    }

    while (i < 0.0)
    {
      i = i + 6.2832;
    }

    v5[1] = i;
    v26 = v5 + 2;
    if (v3 < 3)
    {
      v28 = v8;
      v29 = v5;
    }

    else
    {
      v27 = v7 - 1;
      v28 = v8;
      do
      {
        v29 = v26;
        v30 = v28[1];
        ++v28;
        v31 = (v30 - *(v8 - 1)) * 0.5;
        v32 = v8[v3] - *v8;
        *&v33 = (v32 * v32) + (v31 * v31);
        v34 = *&v33;
        v35 = ((((*&v33 * -0.5) * COERCE_FLOAT(1597463007 - (v33 >> 1))) * COERCE_FLOAT(1597463007 - (v33 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v33 >> 1));
        v36 = *&v33 * (v35 * ((((*&v33 * -0.5) * v35) * v35) + 1.5));
        if (v34 < 0.00000001)
        {
          v36 = 0.0;
        }

        *v26 = v36;
        v37 = -v32;
        if (v32 >= 0.0)
        {
          v37 = v32;
        }

        v38 = v37 + 0.00000011921;
        v39 = v31 + (v37 + 0.00000011921);
        if (v31 >= 0.0)
        {
          v43 = v31 - v38;
          v41 = 0.7854;
          v42 = v43 / v39;
        }

        else
        {
          v40 = v38 - v31;
          v41 = 2.3562;
          v42 = v39 / v40;
        }

        if (v32 >= 0.0)
        {
          v44 = v41 + ((((v42 * 0.1821) * v42) + -0.9675) * v42);
        }

        else
        {
          v44 = -(v41 + ((((v42 * 0.1821) * v42) + -0.9675) * v42));
        }

          ;
        }

        while (j < 0.0)
        {
          j = j + 6.2832;
        }

        v5[3] = j;
        v26 += 2;
        v5 = v29;
        v8 = v28;
      }

      while (v28 < v27);
    }

    v46 = *v28 - *(v28 - 1);
    v47 = v28[v3] - *v28;
    *&v48 = (v47 * v47) + (v46 * v46);
    v49 = *&v48;
    v50 = ((((*&v48 * -0.5) * COERCE_FLOAT(1597463007 - (v48 >> 1))) * COERCE_FLOAT(1597463007 - (v48 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v48 >> 1));
    v51 = *&v48 * (v50 * ((((*&v48 * -0.5) * v50) * v50) + 1.5));
    if (v49 < 0.00000001)
    {
      v51 = 0.0;
    }

    *v26 = v51;
    v52 = -v47;
    if (v47 >= 0.0)
    {
      v52 = v47;
    }

    v53 = v52 + 0.00000011921;
    v54 = v46 + (v52 + 0.00000011921);
    if (v46 >= 0.0)
    {
      v58 = v46 - v53;
      v56 = 0.7854;
      v57 = v58 / v54;
    }

    else
    {
      v55 = v53 - v46;
      v56 = 2.3562;
      v57 = v54 / v55;
    }

    if (v47 >= 0.0)
    {
      v59 = v56 + ((((v57 * 0.1821) * v57) + -0.9675) * v57);
    }

    else
    {
      v59 = -(v56 + ((((v57 * 0.1821) * v57) + -0.9675) * v57));
    }

      ;
    }

    while (k < 0.0)
    {
      k = k + 6.2832;
    }

    v29[3] = k;
    v61 = v28 + 1;
    v62 = v26 + 2;
    v63 = -v3;
    if (v2 >= 3)
    {
      v64 = v2 - 2;
      v65 = 1;
      do
      {
        v66 = (v28 + 2);
        v67 = v28[2] - v28[1];
        v68 = &v61[v3];
        v69 = (*v68 - v61[v63]) * 0.5;
        *&v70 = (v69 * v69) + (v67 * v67);
        v71 = *&v70;
        v72 = ((((*&v70 * -0.5) * COERCE_FLOAT(1597463007 - (v70 >> 1))) * COERCE_FLOAT(1597463007 - (v70 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v70 >> 1));
        v73 = *&v70 * (v72 * ((((*&v70 * -0.5) * v72) * v72) + 1.5));
        if (v71 < 0.00000001)
        {
          v73 = 0.0;
        }

        *v62 = v73;
        v74 = -v69;
        if (v69 >= 0.0)
        {
          v74 = v69;
        }

        v75 = v74 + 0.00000011921;
        v76 = v67 + (v74 + 0.00000011921);
        if (v67 >= 0.0)
        {
          v80 = v67 - v75;
          v78 = 0.7854;
          v79 = v80 / v76;
        }

        else
        {
          v77 = v75 - v67;
          v78 = 2.3562;
          v79 = v76 / v77;
        }

        if (v69 >= 0.0)
        {
          v81 = v78 + ((((v79 * 0.1821) * v79) + -0.9675) * v79);
        }

        else
        {
          v81 = -(v78 + ((((v79 * 0.1821) * v79) + -0.9675) * v79));
        }

          ;
        }

        while (m < 0.0)
        {
          m = m + 6.2832;
        }

        v83 = v26 + 4;
        v26[3] = m;
        v84 = v68 - 1;
        if (v66 >= (v68 - 1))
        {
          v28 = v66;
          v26 += 4;
        }

        else
        {
          v28 = v66;
          do
          {
            v85 = v28[1];
            ++v28;
            v86 = (v85 - *(v66 - 4)) * 0.5;
            v87 = (*(v66 + 4 * v3) - *(v66 + 4 * v63)) * 0.5;
            *&v88 = (v87 * v87) + (v86 * v86);
            v89 = *&v88;
            v90 = ((((*&v88 * -0.5) * COERCE_FLOAT(1597463007 - (v88 >> 1))) * COERCE_FLOAT(1597463007 - (v88 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v88 >> 1));
            v91 = *&v88 * (v90 * ((((*&v88 * -0.5) * v90) * v90) + 1.5));
            if (v89 < 0.00000001)
            {
              v91 = 0.0;
            }

            *v83 = v91;
            v92 = -v87;
            if (v87 >= 0.0)
            {
              v92 = v87;
            }

            v93 = v92 + 0.00000011921;
            v94 = v86 + (v92 + 0.00000011921);
            if (v86 >= 0.0)
            {
              v98 = v86 - v93;
              v96 = 0.7854;
              v97 = v98 / v94;
            }

            else
            {
              v95 = v93 - v86;
              v96 = 2.3562;
              v97 = v94 / v95;
            }

            if (v87 >= 0.0)
            {
              v99 = v96 + ((((v97 * 0.1821) * v97) + -0.9675) * v97);
            }

            else
            {
              v99 = -(v96 + ((((v97 * 0.1821) * v97) + -0.9675) * v97));
            }

              ;
            }

            while (n < 0.0)
            {
              n = n + 6.2832;
            }

            v26 = v83 + 2;
            v83[1] = n;
            v83 += 2;
            v66 = v28;
          }

          while (v28 < v84);
        }

        v101 = *v28 - *(v28 - 1);
        v102 = (v28[v3] - v28[v63]) * 0.5;
        *&v103 = (v102 * v102) + (v101 * v101);
        v104 = *&v103;
        v105 = ((((*&v103 * -0.5) * COERCE_FLOAT(1597463007 - (v103 >> 1))) * COERCE_FLOAT(1597463007 - (v103 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v103 >> 1));
        v106 = *&v103 * (v105 * ((((*&v103 * -0.5) * v105) * v105) + 1.5));
        if (v104 < 0.00000001)
        {
          v106 = 0.0;
        }

        *v26 = v106;
        v107 = -v102;
        if (v102 >= 0.0)
        {
          v107 = v102;
        }

        v108 = v107 + 0.00000011921;
        v109 = v101 + (v107 + 0.00000011921);
        if (v101 >= 0.0)
        {
          v113 = v101 - v108;
          v111 = 0.7854;
          v112 = v113 / v109;
        }

        else
        {
          v110 = v108 - v101;
          v111 = 2.3562;
          v112 = v109 / v110;
        }

        if (v102 >= 0.0)
        {
          v114 = v111 + ((((v112 * 0.1821) * v112) + -0.9675) * v112);
        }

        else
        {
          v114 = -(v111 + ((((v112 * 0.1821) * v112) + -0.9675) * v112));
        }

          ;
        }

        while (ii < 0.0)
        {
          ii = ii + 6.2832;
        }

        v26[1] = ii;
        v61 = v28 + 1;
        v62 = v26 + 2;
      }

      while (v65++ != v64);
    }

    v118 = v28[2];
    v117 = v28 + 2;
    v119 = *(v117 - 1);
    v120 = v118 - v119;
    v121 = v119 - v61[v63];
    *&v122 = (v121 * v121) + (v120 * v120);
    v123 = *&v122;
    v124 = ((((*&v122 * -0.5) * COERCE_FLOAT(1597463007 - (v122 >> 1))) * COERCE_FLOAT(1597463007 - (v122 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v122 >> 1));
    v125 = *&v122 * (v124 * ((((*&v122 * -0.5) * v124) * v124) + 1.5));
    if (v123 < 0.00000001)
    {
      v125 = 0.0;
    }

    *v62 = v125;
    v126 = -v121;
    if (v121 >= 0.0)
    {
      v126 = v121;
    }

    v127 = v126 + 0.00000011921;
    v128 = v120 + (v126 + 0.00000011921);
    if (v120 >= 0.0)
    {
      v132 = v120 - v127;
      v130 = 0.7854;
      v131 = v132 / v128;
    }

    else
    {
      v129 = v127 - v120;
      v130 = 2.3562;
      v131 = v128 / v129;
    }

    if (v121 >= 0.0)
    {
      v133 = v130 + ((((v131 * 0.1821) * v131) + -0.9675) * v131);
    }

    else
    {
      v133 = -(v130 + ((((v131 * 0.1821) * v131) + -0.9675) * v131));
    }

      ;
    }

    while (jj < 0.0)
    {
      jj = jj + 6.2832;
    }

    v26[3] = jj;
    v135 = &v61[v3 - 1];
    v136 = v62 + 2;
    if (v117 >= v135)
    {
      v137 = v117;
      v138 = v62;
    }

    else
    {
      v137 = v117;
      do
      {
        v138 = v136;
        v139 = v137[1];
        ++v137;
        v140 = (v139 - *(v117 - 1)) * 0.5;
        v141 = *v117 - v117[v63];
        *&v142 = (v141 * v141) + (v140 * v140);
        v143 = *&v142;
        v144 = ((((*&v142 * -0.5) * COERCE_FLOAT(1597463007 - (v142 >> 1))) * COERCE_FLOAT(1597463007 - (v142 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v142 >> 1));
        v145 = *&v142 * (v144 * ((((*&v142 * -0.5) * v144) * v144) + 1.5));
        if (v143 < 0.00000001)
        {
          v145 = 0.0;
        }

        *v136 = v145;
        v146 = -v141;
        if (v141 >= 0.0)
        {
          v146 = v141;
        }

        v147 = v146 + 0.00000011921;
        v148 = v140 + (v146 + 0.00000011921);
        if (v140 >= 0.0)
        {
          v152 = v140 - v147;
          v150 = 0.7854;
          v151 = v152 / v148;
        }

        else
        {
          v149 = v147 - v140;
          v150 = 2.3562;
          v151 = v148 / v149;
        }

        if (v141 >= 0.0)
        {
          v153 = v150 + ((((v151 * 0.1821) * v151) + -0.9675) * v151);
        }

        else
        {
          v153 = -(v150 + ((((v151 * 0.1821) * v151) + -0.9675) * v151));
        }

          ;
        }

        while (kk < 0.0)
        {
          kk = kk + 6.2832;
        }

        v62[3] = kk;
        v136 += 2;
        v62 = v138;
        v117 = v137;
      }

      while (v137 < v135);
    }

    v155 = *v137 - *(v137 - 1);
    v156 = *v137 - v137[v63];
    *&v157 = (v156 * v156) + (v155 * v155);
    v158 = *&v157;
    LODWORD(v159) = 1597463007 - (v157 >> 1);
    v160 = *&v157 * ((((((*&v157 * -0.5) * v159) * v159) + 1.5) * v159) * ((((*&v157 * -0.5) * (((((*&v157 * -0.5) * v159) * v159) + 1.5) * v159)) * (((((*&v157 * -0.5) * v159) * v159) + 1.5) * v159)) + 1.5));
    if (v158 >= 0.00000001)
    {
      v161 = v160;
    }

    else
    {
      v161 = 0.0;
    }

    *v136 = v161;
    v162 = -v156;
    if (v156 >= 0.0)
    {
      v162 = v156;
    }

    v163 = v162 + 0.00000011921;
    if (v155 >= 0.0)
    {
      v164 = v155 - v163;
      v165 = v155 + v163;
      v166 = 0.7854;
    }

    else
    {
      v164 = v155 + v163;
      v165 = v163 - v155;
      v166 = 2.3562;
    }

    v167 = v166 + (((((v164 / v165) * 0.1821) * (v164 / v165)) + -0.9675) * (v164 / v165));
    v168 = -v167;
    if (v156 >= 0.0)
    {
      v168 = v167;
    }

      ;
    }

    while (mm < 0.0)
    {
      mm = mm + 6.2832;
    }

    v138[3] = mm;
    *(this + 120) = v1;
  }

  return this;
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C8077774924);
    *(this + 3) = 0;
  }
}

double apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::copyCoordinates(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a2)
{
  *(this + 2) = *(a2 + 2);
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::takeOwnershipToCropBuffer(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a2)
{
  *(this + 2) = *(a2 + 2);
  *this = *a2;
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x23EE98340](result, 0x1000C8077774924);
    *(this + 3) = 0;
  }

  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = 0;
  return result;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::generateCropWithFace(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[7] - *a2;
  v4 = a2[8] - *a2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *a1 = 2 * v2;
  *(a1 + 4) = 2 * v2;
  result = v3;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  v6 = (v3 + 2 * v2);
  *(a1 + 40) = v6;
  *(a1 + 44) = v4;
  v7 = (v4 + 2 * v2);
  *(a1 + 48) = v6;
  *(a1 + 52) = v7;
  *(a1 + 56) = v3;
  *(a1 + 60) = v7;
  return result;
}

int32x2_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::updateFaceWithCrop(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vcvtq_f64_s64(v3);
  v3.i64[0] = *a1;
  v3.i64[1] = HIDWORD(*a1);
  __asm { FMOV            V2.2D, #0.5 }

  v10 = vmulq_f64(vcvtq_f64_s64(v3), _Q2);
  result = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v10, v4)));
  *(a2 + 28) = result;
  *a2 = v10.f64[0];
  return result;
}

int32x2_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::generateCropFromPreviousCrop(int32x2_t *this, int32x2_t *a2, const image *a3, unsigned int a4)
{
  v4 = vdup_n_s32(a4);
  v5 = vmax_s32(vsub_s32(a2[2], v4), 0);
  this[2] = v5;
  result = vsub_s32(vmin_s32(vadd_s32(vadd_s32(a2[2], *a2), v4), *&a3->var1), v5);
  *this = result;
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AffineWarp::SetWarpTarget(uint64_t result, uint64_t a2)
{
  v2 = (result + 1448);
  v3 = (result + 200);
  v4 = 99;
  while (1)
  {
    v5 = *(a2 + 16 * *(v3 - 2));
    v6 = (a2 + 16 * *(v3 - 1));
    v7 = *v6;
    v8 = v6[1];
    v9 = (a2 + 16 * *v3);
    v10 = v7 - *&v5;
    v11 = *(a2 + 16 * *(v3 - 2) + 8);
    v12 = v8 - v11;
    v13 = *v9 - *&v5;
    v14 = v9[1] - v11;
    v15 = v10 * v14 - v13 * v12;
    if (v15 == 0.0)
    {
      break;
    }

    v3 += 3;
    v16 = 1.0 / v15;
    *(v2 - 8) = v14 * v16;
    *(v2 - 7) = v16 * -v13;
    *(v2 - 6) = -(v12 * v16);
    *(v2 - 5) = v10 * v16;
    *v2 = v5;
    v2 += 12;
    if (!--v4)
    {
      *(result + 20408) = 1;
      return result;
    }
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AffineWarp::SetWarpTargetMts(uint64_t result, uint64_t a2)
{
  v2 = result + 10888;
  v3 = (result + 200);
  v4 = 99;
  do
  {
    v5 = *(v3 - 2);
    v6 = (a2 + 16 * *(v3 - 1));
    v7 = (a2 + 16 * *v3);
    v8 = *(a2 + 16 * v5);
    v9 = *(a2 + 16 * v5 + 8);
    v10 = *v6 - *&v8;
    v11 = v6[1] - v9;
    v12 = *v7 - *&v8;
    v13 = v7[1] - v9;
    v14 = 1.0 / (v10 * v13 - v12 * v11);
    *v2 = v13 * v14;
    *(v2 + 8) = -(v12 * v14);
    *(v2 + 16) = -(v11 * v14);
    *(v2 + 24) = v10 * v14;
    *(v2 + 64) = v8;
    v3 += 3;
    v2 += 96;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AffineWarp::SetSourceImage(uint64_t this, float *a2, int a3, int a4)
{
  *(this + 20392) = a2;
  *(this + 20400) = a3;
  *(this + 20404) = a4;
  *(this + 20409) = 1;
  return this;
}

float64x2_t apple::vision::libraries::facecore::mod::aam::AffineWarp::UpdateWarpTable(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 200; i != 1388; i += 12)
  {
    v4 = (a1 + v2);
    v5 = (a1 + v2 + 1384);
    v6 = (a1 + v2 + 1400);
    result = *(a2 + 16 * *(a1 + i - 8));
    _Q3 = *v5;
    v9 = vextq_s8(*v6, *v6, 8uLL);
    _Q1 = vsubq_f64(*(a2 + 16 * *(a1 + i - 4)), result);
    _Q2 = vsubq_f64(*(a2 + 16 * *(a1 + i)), result);
    v4[88].f64[1] = vmulq_f64(_Q2, *v6).f64[0] + _Q1.f64[0] * *v5->i64;
    v4[89] = vmlaq_f64(vmulq_f64(_Q2, v9), vextq_s8(_Q3, _Q3, 8uLL), _Q1);
    _Q3.i64[0] = _Q3.i64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v4[90].f64[0] = _Q2.f64[0];
    *(a1 + v2 + 1464) = result;
    v2 += 96;
  }

  return result;
}

void apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20408) != 1 || (*(a1 + 20409) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "soft_assertion failed!");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  apple::vision::libraries::facecore::mod::aam::AffineWarp::UpdateWarpTable(a1, a2);
  v5 = a1 + 4 * *(a1 + 80);
  v19 = *(v5 + 120);
  if (v19)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v5 + 84);
    v9 = 0.0;
    do
    {
      if (v8)
      {
        v10 = 4 * v6;
        v20 = v8 + v6;
        v11 = 0.0;
        v12 = v8;
        do
        {
          v13 = *(*(a1 + 72) + v10);
          if (v13 != -1)
          {
            v14 = (a1 + 1384 + 96 * v13);
            v15 = v11 - v14[8];
            v16 = v9 - v14[9];
            v17 = v14[10] + v14[4] * v15 + v14[5] * v16;
            *&v15 = v14[11] + v14[6] * v15 + v14[7] * v16;
            v21 = LODWORD(v15);
            v22 = v17;
            *(a3 + v10) = apple::vision::libraries::facecore::mod::aam::utils::SampleImage<float,float>(&v22, &v21, *(a1 + 20392), (a1 + 20400), (a1 + 20404));
          }

          v11 = v11 + 1.0;
          v10 += 4;
          --v12;
        }

        while (v12);
        v6 = v20;
      }

      v9 = v9 + 1.0;
      ++v7;
    }

    while (v7 != v19);
  }
}

float apple::vision::libraries::facecore::mod::aam::utils::SampleImage<float,float>(float *a1, float *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = floorf(*a1);
  v6 = *a2;
  v7 = floorf(*a2);
  v8 = (v5 + 0.5);
  v9 = 1.0;
  v10 = (v7 + 0.5);
  v11 = 0.0;
  if (v8 < 0)
  {
    v8 = 0;
    v13 = 1.0;
    v12 = 0.0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v12 = 1.0;
  if (*a4 - 2 >= v8)
  {
    v14 = *a1 - v5;
    v13 = 1.0 - v14;
    v12 = v14;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_11;
  }

  v13 = 0.0;
  v8 = *a4 - 2;
  if (v10 < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*a5 - 2 >= v10)
  {
    v11 = v6 - v7;
    v9 = 1.0 - (v6 - v7);
  }

  else
  {
    v9 = 0.0;
    v11 = 1.0;
    v10 = *a5 - 2;
  }

LABEL_11:
  v15 = v8 + *a4 * v10;
  return ((((v12 * v9) * *(a3 + 4 * (v15 + 1))) + (*(a3 + 4 * v15) * (v13 * v9))) + (*(a3 + 4 * (v15 + *a4)) * (v13 * v11))) + (*(a3 + 4 * (v15 + 1 + *a4)) * (v12 * v11));
}

double apple::vision::libraries::facecore::mod::aam::AffineWarp::Warp_dWdp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 20408) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "soft_assertion failed!");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *&result = *&apple::vision::libraries::facecore::mod::aam::AffineWarp::UpdateWarpTable(a1, a2);
  v8 = a1 + 4 * *(a1 + 80);
  v9 = *(v8 + 120);
  if (v9 >= 1)
  {
    v10 = 0;
    result = v9;
    v11 = *(v8 + 84);
    v12 = 0.0;
    do
    {
      if (v11 >= 1)
      {
        v13 = (a3 + 4 * v10);
        v14 = (a4 + 4 * v10);
        v15 = (*(a1 + 72) + 4 * v10);
        v16 = 0.0;
        do
        {
          v18 = *v15++;
          v17 = v18;
          if (v18 == -1)
          {
            v23 = 0.0;
            v24 = 0.0;
          }

          else
          {
            v19 = (a1 + 1384 + 96 * v17);
            v20 = v16 - v19[8];
            v21 = v19[11] + v19[6] * v20;
            v22 = v12 - v19[9];
            v23 = v19[10] + v19[4] * v20 + v19[5] * v22;
            v24 = v21 + v19[7] * v22;
          }

          *v13++ = v23;
          *v14++ = v24;
          v16 = v16 + 1.0;
          ++v10;
        }

        while (v16 < v11);
      }

      v12 = v12 + 1.0;
    }

    while (v12 < result);
  }

  return result;
}

float64x2_t apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  bzero(a3, 0x3F0uLL);
  v6 = 0;
  v7 = a1 + 192;
  do
  {
    v8 = 0;
    v9 = (a1 + 1384 + 96 * v6);
    v10 = v9[8];
    v11 = v9[9];
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[10];
    v15 = v9[11];
    v16 = v9[6];
    v17 = v9[7];
    do
    {
      v18 = *(v7 + v8);
      v19 = (a2 + 16 * v18);
      v20 = *v19 - v10;
      v21 = v19[1] - v11;
      f64 = a3[v18].f64;
      v23 = *f64 + v14 + v12 * v20 + v13 * v21;
      v24 = f64[1] + v15 + v16 * v20 + v17 * v21;
      v25 = *(v30 + v18);
      *f64 = v23;
      f64[1] = v24;
      *(v30 + v18) = v25 + 1.0;
      v8 += 4;
    }

    while (v8 != 12);
    ++v6;
    v7 += 12;
  }

  while (v6 != 99);
  for (i = 0; i != 63; ++i)
  {
    v27 = v30 + i;
    v28 = vld1q_dup_f64(v27);
    result = vdivq_f64(a3[i], v28);
    a3[i] = result;
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::mod::Image::SetSize(uint64_t this, int a2, int a3, int a4)
{
  if ((a3 | a2) < 0 || a4 <= 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "SetSize - incorrect image size");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = this;
  if (*this != a2 || *(this + 4) != a3)
  {
    *this = a2;
    *(this + 4) = a3;
    *(this + 8) = a4;
    if (*(this + 24) == 1)
    {
      v5 = *(this + 16);
      if (v5)
      {
        MEMORY[0x23EE98340](v5, 0x1000C8077774924);
      }
    }

    *(v4 + 24) = 1;
    *(v4 + 16) = 0;
    operator new[]();
  }

  if (*(this + 8) != a4)
  {
    operator new[]();
  }

  return this;
}

apple::vision::libraries::facecore::mod::Image *apple::vision::libraries::facecore::mod::Image::Image(apple::vision::libraries::facecore::mod::Image *this, int a2, int a3, int a4)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 2) = 0;
  apple::vision::libraries::facecore::mod::Image::SetSize(this, a2, a3, a4);
  return this;
}

void apple::vision::libraries::facecore::mod::Image::~Image(apple::vision::libraries::facecore::mod::Image *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x23EE98340](v2, 0x1000C8077774924);
    }

    *(this + 2) = 0;
  }
}

uint64_t apple::vision::libraries::facecore::mod::Image::SetBuffer(uint64_t this, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v9 = this;
  if (*(this + 24) == 1)
  {
    this = *(this + 16);
    if (this)
    {
      this = MEMORY[0x23EE98340](this, 0x1000C8077774924);
    }
  }

  *(v9 + 24) = 0;
  *(v9 + 16) = a2;
  *v9 = a3;
  *(v9 + 4) = a4;
  *(v9 + 8) = a5;
  return this;
}

void *apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::SVMBasedFrontalClassifier(void *this)
{
  *this = &unk_284DF3F88;
  this[1] = 0;
  return this;
}

void apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::~SVMBasedFrontalClassifier(apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier *this)
{
  *this = &unk_284DF3F88;
  v2 = *(this + 1);
  if (v2)
  {
    apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::~FrontalSVMClassifier(v2);
    MEMORY[0x23EE98360]();
    *(this + 1) = 0;
  }
}

double apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::initialize(apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier *this, apple::vision::libraries::facecore::FaceCoreContext *a2, double result)
{
  if (*(a2 + 69) == 1)
  {
    if (!*(this + 1))
    {
      operator new();
    }

    v3 = *(this + 1);
    if (*(a2 + 2) == 1)
    {
      v4 = *(a2 + 10);
    }

    else
    {
      v4 = *(a2 + 9);
    }

    v5 = v4;
    return apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::setThreshold(v3, &v5);
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::performProcessing(apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier **this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  result = (**this)(this);
  if (*(a2 + 69) == 1)
  {
    v5 = *(a2 + 16);
    if (*(a2 + 17) != v5)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = (v5 + 216 * v6);
        if (v8[36])
        {
          if (v8[37] < *(a2 + 7) && v8[18] == 0)
          {
            apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::classifyFace(this[1], *(a2 + 14), *(a2 + 30), *(a2 + 31), v8[7], v8[8], v8[26], *v8, 0);
          }
        }

        v6 = v7;
        v5 = *(a2 + 16);
      }

      while (0x84BDA12F684BDA13 * ((*(a2 + 17) - v5) >> 3) > v7++);
    }
  }

  return result;
}

apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix *apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::SimilarityMatrix(apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix *this)
{
  pthread_mutex_lock(&apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_mutex);
  if (!apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_nbInst)
  {
    apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::alloc_nb_faces = 256;
    apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::alloc_dim_faces = 156;
    apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::cpu_input = 0;
    apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::cpu_output = 0;
  }

  ++apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_nbInst;
  pthread_mutex_unlock(&apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_mutex);
  return this;
}

void apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::~SimilarityMatrix(apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix *this)
{
  pthread_mutex_lock(&apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_mutex);
  --apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_nbInst;
  pthread_mutex_unlock(&apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::m_mutex);
}

void *apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::FaceprintAndMeshExtractor(void *this)
{
  *this = &unk_284DF4098;
  this[1] = 0;
  return this;
}

apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor *apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::deleteFaceprintExtractor(apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor *this)
{
  result = *(this + 1);
  if (result)
  {
    apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::~FaceprintExtractor(result);
    result = MEMORY[0x23EE98360]();
    *(this + 1) = 0;
  }

  return result;
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::~FaceprintAndMeshExtractor(apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor *this)
{
  *this = &unk_284DF4098;
  apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::deleteFaceprintExtractor(this);
}

{
  *this = &unk_284DF4098;
  apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::deleteFaceprintExtractor(this);

  JUMPOUT(0x23EE98360);
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::performProcessing(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination ***this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if (!*(*(a2 + 26) + 72))
  {
    v4 = *(a2 + 27);
    if ((*(a2 + 176) & 1) != 0 || *(a2 + 177) == 1)
    {
      apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::initializeFaceprintExtractorIfNeeded(this, a2);
      v5 = this[1];
      if (!v5 || (apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::m_initDone & 1) == 0)
      {
        [VNFaceCoreExceptionUtils throwRuntimeErrorException:@"API not configured for face details extraction."];
        v5 = this[1];
      }

      apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::setFaceprintExtraction(v5, *(a2 + 176));
      v6 = this[1];
      v7 = *(a2 + 14);
      v8 = *(a2 + 30);
      v9 = *(a2 + 31);
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(v31, v4);
      apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::ExtractFaceprint(v6, v7, v8, v9, v31, a2, &v32);
      apple::vision::libraries::facecore::Face::~Face(v31);
      if ((v4 + 48) != &v32)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v4 + 48), v32, v33, (v33 - v32) >> 3);
      }

      if (*(a2 + 177) == 1)
      {
        apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::GetShapeVertices(this[1], &v29);
        v10 = v29;
        v11 = v30;
        v12 = v29[71] + v29[77];
        *(v4 + 20) = (v29[70] + v29[76]) / 2;
        *(v4 + 24) = v12 / 2;
        if (((v11 - v10) >> 3) < 2)
        {
          goto LABEL_26;
        }

        v13 = 0;
        v14 = 0;
        v15 = *(v4 + 88);
        do
        {
          v16 = v10[v13];
          v17 = v10[v13 + 1];
          v18 = *(v4 + 96);
          if (v15 >= v18)
          {
            v19 = *(v4 + 80);
            v20 = (v15 - v19) >> 3;
            if ((v20 + 1) >> 61)
            {
              std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
            }

            v21 = v18 - v19;
            v22 = v21 >> 2;
            if (v21 >> 2 <= (v20 + 1))
            {
              v22 = v20 + 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v23 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4 + 80, v23);
            }

            v24 = (8 * v20);
            *v24 = v16 | (v17 << 32);
            v15 = (8 * v20 + 8);
            v25 = *(v4 + 80);
            v26 = *(v4 + 88) - v25;
            v27 = v24 - v26;
            memcpy(v24 - v26, v25, v26);
            v28 = *(v4 + 80);
            *(v4 + 80) = v27;
            *(v4 + 88) = v15;
            *(v4 + 96) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v15++ = v16 | (v17 << 32);
          }

          *(v4 + 88) = v15;
          ++v14;
          v10 = v29;
          v13 += 2;
        }

        while (v14 < ((v30 - v29) >> 3) / 2);
        if (v29)
        {
LABEL_26:
          v30 = v10;
          operator delete(v10);
        }
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }
    }
  }
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::initializeFaceprintExtractorIfNeeded(apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if (!*(this + 1))
  {
    if (*(a2 + 255) < 0)
    {
      std::string::__init_copy_ctor_external(&v2, *(a2 + 29), *(a2 + 30));
    }

    else
    {
      v2 = *(a2 + 232);
    }

    if ((SHIBYTE(v2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&v2.__r_.__value_.__s + 23))
      {
        return;
      }

LABEL_9:
      operator new();
    }

    if (v2.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23AD6013C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  MEMORY[0x23EE98360](v17, 0x1020C40BCB15178);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::deleteFaceprintExtractor(v16);
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not initialize faceprint extractor from path: %s"];
    [VNFaceCoreExceptionUtils throwInvalidArgumentException:v20];

    __cxa_end_catch();
    JUMPOUT(0x23AD60118);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::extraction::Faceprint::~Faceprint(apple::vision::libraries::facecore::processing::extraction::Faceprint *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain::FaceDetectionProcessingChain(apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284DF3EE8;
  *(this + 3) = 0;
  *(this + 4) = &unk_284DF4028;
  *(this + 5) = &unk_284DF4008;
  *(this + 6) = &unk_284DF4048;
  *(this + 14) = 4000000;
  *(this + 8) = 0;
  *(this + 10) = &unk_284DF3F48;
  *(this + 11) = &unk_284DF3FA8;
  *(this + 12) = 0;
  apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::SVMBasedFrontalClassifier(this + 13);
  *(this + 15) = &unk_284DF3FC8;
  *(this + 16) = &unk_284DF3F68;
  apple::vision::libraries::facecore::processing::detection::DetectorFactory::getDetector(a2, v4);
}

void sub_23AD6048C(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::~EyesAndMouthLocalizer(v4);
  v1[6] = v3;
  v6 = v1[8];
  if (v6)
  {
    MEMORY[0x23EE98340](v6, 0x1000C8052888210);
  }

  *v1 = v2;
  v7 = v1[1];
  if (v7)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain::initializeProcessingChain(apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain *this)
{
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 32);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 40);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 48);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, *(this + 9));
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 80);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 104);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 88);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 120);

  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 128);
}

void apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing::~QuotientImagePreprocessing(apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing *this)
{
  *this = &unk_284DF4048;
  v1 = *(this + 2);
  if (v1)
  {
    MEMORY[0x23EE98340](v1, 0x1000C8052888210);
  }
}

{
  *this = &unk_284DF4048;
  v1 = *(this + 2);
  if (v1)
  {
    MEMORY[0x23EE98340](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x23EE98360);
}

void apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain::~FaceDetectionProcessingChain(apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain *this)
{
  *this = &unk_284DF3EE8;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  apple::vision::libraries::facecore::processing::postprocessing::SVMBasedFrontalClassifier::~SVMBasedFrontalClassifier((this + 104));
  apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::~EyesAndMouthLocalizer((this + 88));
  *(this + 6) = &unk_284DF4048;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C8052888210);
  }

  *this = &unk_284DF3F08;
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void apple::vision::libraries::facecore::processing::preprocessing::RegionOfInterestPreprocessing::performProcessing(uint64_t a1, int32x2_t *a2)
{
  v3 = a2[23];
  v2 = a2[24];
  if (((*&v2 - *&v3) >> 5) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = a2[15];
      v7 = a2[2].i32[0];
      if (v7 == 270 || v7 == 90)
      {
        v6 = vrev64_s32(v6);
      }

      v8 = *&v3 + v4;
      v10 = *(*&v3 + v4 + 16);
      v9 = *(*&v3 + v4 + 24);
      v11 = vadd_s32(v9, v10);
      if (v11.i32[0] >= 1 && (vcgt_s32(v6, v10).u8[0] & 1) != 0 && (v11.i32[1] >= 1 ? (v12 = v10.i32[1] < v6.i32[1]) : (v12 = 0), v12))
      {
        v13 = vmax_s32(v10, 0);
        v14 = vmin_s32(v6, vadd_s32(v9, v13));
        v15 = vand_s8(v13, vcgt_s32(v6, v13.u32[0]));
        v16 = vbsl_s8(vcltz_s32(v14), v6, v14);
        v17 = vsub_s32(v6, v16);
        v18 = vsub_s32(v16, v15);
        v15.i32[1] = v17.i32[1];
        *(v8 + 16) = v15;
        *(v8 + 24) = v18;
      }

      else
      {
        *v8 = 0uLL;
        *(v8 + 16) = 0uLL;
        v3 = a2[23];
        v2 = a2[24];
      }

      ++v5;
      v4 += 32;
    }

    while (v5 < ((*&v2 - *&v3) >> 5));
  }
}

void apple::vision::libraries::facecore::processing::preprocessing::InitialImageRotationPreprocessing::performProcessing(apple::vision::libraries::facecore::processing::preprocessing::InitialImageRotationPreprocessing *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  v7 = *(a2 + 7);
  v3 = apple::vision::libraries::facecore::utils::ImageRotationUtils::rotateImageByAngle(&v7, *(a2 + 4));
  if (v7 != v3)
  {
    v5 = v3;
    v6 = v4;
    apple::vision::libraries::facecore::FaceCoreContext::cleanUpProcessedImage(a2);
    *(a2 + 14) = v5;
    *(a2 + 15) = v6;
  }
}

uint64_t apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing::initialize(uint64_t this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if ((*(a2 + 64) & 2) != 0 && !*(this + 16))
  {
    operator new[]();
  }

  return this;
}

void apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing::performProcessing(apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing *this, image *a2)
{
  if ((a2[4].var0 & 2) != 0)
  {
    (**this)(this);
    apple::vision::libraries::facecore::FaceCoreContext::duplicateImageDataIfNeeded(a2);

    apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing::preprocess(this, a2 + 7, 7.0, 7.0, 1.5);
  }
}

void apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing::preprocess(apple::vision::libraries::facecore::processing::preprocessing::QuotientImagePreprocessing *this, image *a2, float a3, float a4, float a5)
{
  var1 = a2->var1;
  var2 = a2->var2;
  v8 = var2 * var1;
  v9 = *(this + 2);
  if (v8 <= 0)
  {
    v24 = *(this + 2);

    apple::vision::libraries::facecore::mod::filters::blur<float>(v24, var1, var2, 0, a3);
  }

  else
  {
    v11 = a4;
    v12 = 0;
    var0 = a2->var0;
    do
    {
      LOBYTE(a4) = var0[v12];
      a4 = LODWORD(a4);
      v9[v12++] = a4;
    }

    while (v8 != v12);
    apple::vision::libraries::facecore::mod::filters::blur<float>(v9, var1, var2, 0, a3);
    for (i = 0; i != v8; ++i)
    {
      LOBYTE(v14) = var0[i];
      v14 = LODWORD(v14) / (v9[i] + v11);
      if (v14 > a5)
      {
        v14 = a5;
      }

      v9[i] = v14;
    }

    v16 = *v9;
    v17 = v8;
    v18 = v9;
    v19 = *v9;
    do
    {
      v20 = *v18++;
      v21 = v20;
      if (v19 < v20)
      {
        v19 = v21;
      }

      if (v21 < v16)
      {
        v16 = v21;
      }

      --v17;
    }

    while (v17);
    if (vabds_f32(v19, v16) < 0.000000001)
    {
      v19 = v19 + 0.000000001;
    }

    v22 = v19 - v16;
    do
    {
      v23 = *v9++;
      *var0++ = ((((v23 - v16) * 255.0) / v22) + 0.5);
      --v8;
    }

    while (v8);
  }
}

void apple::vision::libraries::facecore::mod::filters::blur<float>(uint64_t a1, unsigned int a2, unsigned int a3, int a4, float a5)
{
  if (a4)
  {
    apple::vision::libraries::facecore::mod::filters::deriche<float>(a1, a3, a2, 0, 120, 1, a5);
    v9 = a1;
    v10 = a3;
    v11 = a2;
  }

  else
  {
    apple::vision::libraries::facecore::mod::filters::deriche<float>(a1, a2, a3, 0, 120, 1, a5);
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  apple::vision::libraries::facecore::mod::filters::deriche<float>(v9, v10, v11, 0, 121, 1, a5);
}

void apple::vision::libraries::facecore::mod::filters::deriche<float>(uint64_t a1, unsigned int a2, int a3, unsigned int a4, int a5, int a6, float a7)
{
  if (a7 < 0.0 || a4 >= 3)
  {
    printf("deriche() : Bad arguments (sigma=%g, order=%d)", a7, a4);
  }

  if (a7 >= 0.01)
  {
    v15 = 0.0;
    if (a7 <= 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.695 / a7;
    }

    v17 = expf(v16);
    v18 = expf(-v16);
    v19 = v18 * v18;
    if (a4 == 2)
    {
      v33 = (((((v17 * 3.0) + -1.0) - ((v17 * 3.0) * v17)) + ((v17 * v17) * v17)) * -2.0) / ((((v17 * 3.0) + 1.0) + ((v17 * 3.0) * v17)) + ((v17 * v17) * v17));
      v39 = -(v19 + -1.0) / ((v16 + v16) * v18);
      v34 = v18 * -(v33 * ((v39 * v16) + 1.0));
      v98 = 1.0;
      v35 = v18 * ((1.0 - (v39 * v16)) * v33);
      v36 = -(v33 * v19);
      if (a6)
      {
        v37 = v33;
      }

      else
      {
        v37 = 0.0;
      }

      if (a6)
      {
        v38 = v33 * 0.5;
      }

      else
      {
        v38 = 0.0;
      }

      if (a6)
      {
        v15 = v33 + (v33 * 0.5);
      }
    }

    else
    {
      v20 = 1.0;
      v21 = 1.0 - v18;
      v22 = (v21 * v21) / ((((v16 + v16) * v18) + 1.0) - v19);
      v23 = -(v22 * v19);
      v24 = (v17 + -1.0) * (v17 + -1.0);
      v25 = (((v17 + (v16 * v17)) + -1.0) * v22) / v24;
      v26 = v22 + v25;
      if (a6)
      {
        v27 = v22;
      }

      else
      {
        v27 = 0.0;
      }

      if (!a6)
      {
        v25 = 0.0;
        v26 = 0.0;
      }

      v28 = (v21 * -(v21 * v21)) / (v18 * ((v18 + 1.0) + (v18 + 1.0)));
      v29 = v18 * v28;
      v30 = -(v28 * v18);
      v31 = (v17 * v28) / v24;
      v32 = v31 + 0.0;
      if (!a6)
      {
        v31 = 0.0;
        v32 = 0.0;
      }

      if (a4 == 1)
      {
        v20 = -1.0;
      }

      v98 = v20;
      if (a4 == 1)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v22;
      }

      if (a4 == 1)
      {
        v34 = v29;
      }

      else
      {
        v34 = (v16 + -1.0) * (v18 * v22);
      }

      if (a4 == 1)
      {
        v35 = v30;
      }

      else
      {
        v35 = (v16 + 1.0) * (v18 * v22);
      }

      if (a4 == 1)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v23;
      }

      if (a4 == 1)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v27;
      }

      if (a4 == 1)
      {
        v38 = v31;
      }

      else
      {
        v38 = v25;
      }

      if (a4 == 1)
      {
        v15 = v32;
      }

      else
      {
        v15 = v26;
      }
    }

    v40 = v18 + v18;
    v97 = -(v18 * v18);
    if (a2 <= a3)
    {
      v41 = a3;
    }

    else
    {
      v41 = a2;
    }

    std::vector<double>::vector[abi:ne200100](__p, v41);
    v42 = __p[0];
    if (a5 == 121)
    {
      if (a2 >= 2 && a3 >= 1)
      {
        v72 = 0;
        v73 = v40;
        v74 = v97;
        v75 = v98 * v38;
        v76 = __p[0];
        do
        {
          v77 = (a1 + 4 * v72 * a2);
          v80 = *v77;
          v79 = v77[1];
          v78 = v77 + 2;
          v81 = (v15 * v80);
          v82 = ((v38 * v80) + (v37 * v79));
          v83 = v76 + 2;
          *v76 = v81;
          v76[1] = v82;
          if (a2 >= 3)
          {
            v84 = a2 - 2;
            do
            {
              v85 = *v78++;
              v86 = ((v34 * v80) + (v33 * v85)) + v73 * v82 + v74 * v81;
              *v83++ = v86;
              v81 = v82;
              v82 = v86;
              v80 = v85;
              --v84;
            }

            while (v84);
          }

          v87 = *(v78 - 2);
          v88 = *(v78 - 1);
          *&v89 = (v75 * v88);
          v76 = v83 - 2;
          *(v78 - 1) = vcvt_f32_f64(vaddq_f64(*(v83 - 2), vdupq_lane_s64(v89, 0)));
          if (a2 >= 3)
          {
            v90 = v83 - 3;
            v91 = v78 - 3;
            v92 = a2 - 2;
            v93 = (v75 * v88);
            do
            {
              v94 = ((v36 * v88) + (v35 * v87)) + v73 * v93 + v74 * *&v89;
              v88 = v87;
              v87 = *v91;
              v95 = *v90--;
              v96 = v94 + v95;
              *v91-- = v96;
              *&v89 = v93;
              v93 = v94;
              --v92;
            }

            while (v92);
            v76 = v90 + 1;
          }

          ++v72;
        }

        while (v72 != a3);
      }
    }

    else if (a5 == 120 && a3 >= 2 && a2 >= 1)
    {
      v43 = 0;
      v44 = v40;
      v45 = v97;
      v46 = v98 * v38;
      v47 = 8 * a2;
      v48 = -4 * a2;
      v49 = __p[0];
      do
      {
        v50 = (a1 + 4 * v43);
        v51 = *v50;
        v52 = &v50[a2];
        v53 = *v52;
        v54 = (v15 * *v50);
        v55 = ((v38 * *v50) + (v37 * *v52));
        v56 = v49 + 2;
        *v49 = v54;
        v49[1] = v55;
        if (a3 < 3)
        {
          v51 = v53;
        }

        else
        {
          v57 = a3 - 2;
          v58 = a1;
          do
          {
            v59 = v34 * v51;
            v51 = *(v58 + v47);
            v60 = (v59 + (v33 * v51)) + v44 * v55 + v45 * v54;
            *v56++ = v60;
            v58 += 4 * a2;
            v54 = v55;
            v55 = v60;
            --v57;
          }

          while (v57);
          v52 = (v58 - v48);
        }

        v61 = (v46 * v51);
        v62 = *(v56 - 2);
        v49 = v56 - 2;
        v63 = *(v56 - 1) + v61;
        v64 = v52[-a2];
        *v52 = v63;
        *&v62 = v62 + v61;
        v52[-a2] = *&v62;
        if (a3 >= 3)
        {
          v65 = v56 - 3;
          v66 = &v52[-2 * a2];
          v67 = a3 - 2;
          v68 = (v46 * v51);
          do
          {
            v69 = ((v36 * v51) + (v35 * v64)) + v44 * v68 + v45 * v61;
            v51 = v64;
            v64 = *v66;
            v70 = *v65--;
            v71 = v69 + v70;
            *v66 = v71;
            v66 -= a2;
            v61 = v68;
            v68 = v69;
            --v67;
          }

          while (v67);
          v49 = v65 + 1;
        }

        ++v43;
        v48 -= 4;
        v47 += 4;
      }

      while (v43 != a2);
    }

    if (v42)
    {
      __p[1] = v42;
      operator delete(v42);
    }
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23AD61098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::postprocessing::AccuracyAndHitsBasedPostprocessing::performProcessing(apple::vision::libraries::facecore::processing::postprocessing::AccuracyAndHitsBasedPostprocessing *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  memset(v20, 0, sizeof(v20));
  v3 = *(a2 + 16);
  if (*(a2 + 17) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(v14, v3 + 216 * v4);
      v6 = v19;
      v15 = v6;
      if (v19 < 0.25 || v16 != 0)
      {
        goto LABEL_34;
      }

      v8 = v19 < 0.4 || v18 <= 5;
      if (v8 && (v19 >= 0.52 ? (v9 = v18 <= 2) : (v9 = 1), v9))
      {
        v10 = 0;
        v11 = v19 >= 0.4;
        if (v18 != 2)
        {
          v11 = 0;
        }

        v12 = v18 <= 2 || v19 < 0.5;
        if (v12 && !v11)
        {
          if (v19 < 0.37 || v18 != 1)
          {
            goto LABEL_34;
          }

          v10 = 0;
        }
      }

      else
      {
        v10 = 1;
      }

      v17 = v10;
      std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](v20, v14);
LABEL_34:
      apple::vision::libraries::facecore::Face::~Face(v14);
      v4 = v5;
      v3 = *(a2 + 16);
      v8 = 0x84BDA12F684BDA13 * ((*(a2 + 17) - v3) >> 3) > v5++;
    }

    while (v8);
  }

  apple::vision::libraries::facecore::FaceCoreContext::updateDetectedFaces(a2, v20);
  v14[0] = v20;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](v14);
}

void sub_23AD61224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 120);
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::initialize(uint64_t this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if (*(a2 + 68) == 1 && !*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::performProcessing(apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  result = (**this)(this);
  if (*(a2 + 68) == 1)
  {
    v5 = *(a2 + 27);
    if (v5)
    {
      if (*(v5 + 144))
      {
        v6 = *(a2 + 14);
        v7 = *(a2 + 30);
        v8 = *(a2 + 31);

        apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::processFace(this, v6, v7, v8);
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 17);
      if ((1749801491 * ((v9 - v10) >> 3)) >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (*(v10 + v11 + 144))
          {
            apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::processFace(this, *(a2 + 14), *(a2 + 30), *(a2 + 31));
          }

          ++v12;
          v11 += 216;
        }

        while (v12 < (1749801491 * ((v9 - v10) >> 3)));
      }
    }
  }

  return result;
}

void apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::processFace(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v7 = apple::vision::libraries::facecore::mod::Image::Image(v9, 0, 0, 1);
  apple::vision::libraries::facecore::mod::Image::SetBuffer(v7, a2, a3, a4, 1);
  apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::FaceAlignment(v8);
}

void sub_23AD6158C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  apple::vision::libraries::facecore::mod::Image::~Image(va);
  apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::~FaceAlignment(va1);
  apple::vision::libraries::facecore::mod::Image::~Image((v9 - 80));
  _Unwind_Resume(a1);
}

double apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::tranformImagePointInverse(apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment *this, double a2, double a3, double *a4, double *a5)
{
  v5 = *(this + 1);
  v6 = v5[1];
  v8 = v5[2];
  v7 = v5[3];
  v9 = ((*v5 * v7) - (v6 * v8));
  v10 = 1.0 / v9;
  v11 = 1.0 / v9 * v7;
  v12 = -1.0 / v9;
  v13 = v10 * *v5;
  v14 = a2 - *(this + 5);
  v15 = a3 - *(this + 6);
  *a4 = v15 * (v12 * v6) + v11 * v14;
  result = v15 * v13 + v12 * v8 * v14;
  *a5 = result;
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::FaceAlignment(apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment *this)
{
  *this = &unk_284DF3DB8;
  *(this + 1) = 0;
  *(this + 4) = 0x40000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  operator new[]();
}

void apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::~FaceAlignment(apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment *this)
{
  apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::~FaceAlignment(this);

  JUMPOUT(0x23EE98360);
}

{
  *this = &unk_284DF3DB8;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C8077774924);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x23EE98340](v4, 0x1000C8000313F17);
  }
}

void apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::_getTranformation(const double **this, float *a2, float *a3, float *a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v70 = *MEMORY[0x277D85DE8];
  __A[0] = a5;
  __A[1] = -a6;
  v54 = xmmword_23B2520C0;
  v55 = a6;
  v56 = a5;
  v57 = xmmword_23B251EC0;
  v58 = a7;
  v59 = -a8;
  v60 = xmmword_23B2520C0;
  v61 = a8;
  v62 = a7;
  v63 = xmmword_23B251EC0;
  v64 = a9;
  v65 = -a10;
  v66 = xmmword_23B2520C0;
  v67 = a10;
  v68 = a9;
  v69 = xmmword_23B251EC0;
  vDSP_mtransD(__A, 1, __C, 1, 4uLL, 6uLL);
  vDSP_mmulD(__C, 1, __A, 1, &v36, 1, 4uLL, 4uLL, 6uLL);
  vDSP_mmulD(__C, 1, this[5], 1, v33, 1, 4uLL, 1uLL, 6uLL);
  v14 = v36 * v41 - v37 * v40;
  v15 = v36 * v42 - v38 * v40;
  v16 = v36 * v43 - v39 * v40;
  v17 = v37 * v42 - v38 * v41;
  v18 = v37 * v43 - v39 * v41;
  v19 = v38 * v43 - v39 * v42;
  v20 = v44 * v49 - v45 * v48;
  v21 = v44 * v50 - v46 * v48;
  v22 = v44 * v51 - v47 * v48;
  v23 = v45 * v50 - v46 * v49;
  v24 = v45 * v51 - v47 * v49;
  v25 = v46 * v51 - v47 * v50;
  v35[0] = v41 * v25 - v42 * v24 + v43 * v23;
  v35[1] = v38 * v24 - v37 * v25 - v39 * v23;
  v35[2] = v49 * v19 - v50 * v18 + v51 * v17;
  v35[3] = v18 * v46 - v45 * v19 - v47 * v17;
  v35[4] = v42 * v22 - v40 * v25 - v43 * v21;
  v35[5] = v36 * v25 - v38 * v22 + v39 * v21;
  v35[6] = v16 * v50 - v48 * v19 - v51 * v15;
  v35[7] = v44 * v19 - v46 * v16 + v47 * v15;
  v35[8] = v40 * v24 - v41 * v22 + v43 * v20;
  v35[9] = v37 * v22 - v36 * v24 - v39 * v20;
  v35[10] = v48 * v18 - v49 * v16 + v51 * v14;
  v35[11] = v16 * v45 - v44 * v18 - v47 * v14;
  v35[12] = v41 * v21 - v40 * v23 - v42 * v20;
  v35[13] = v36 * v23 - v37 * v21 + v38 * v20;
  v35[14] = v15 * v49 - v48 * v17 - v50 * v14;
  v35[15] = v44 * v17 - v45 * v15 + v46 * v14;
  __B = v14 * v25 - v15 * v24 + v16 * v23 + v17 * v22 - v18 * v21 + v19 * v20;
  vDSP_vsdivD(v35, 1, &__B, v34, 1, 0x10uLL);
  vDSP_mmulD(v33, 1, v34, 1, v32, 1, 1uLL, 4uLL, 4uLL);
  v26 = v32[0];
  v27 = v32[1];
  *a2 = v26;
  a2[1] = -v27;
  a2[2] = v27;
  a2[3] = v26;
  v28 = v32[3];
  v29 = v32[2];
  *a3 = v29;
  v30 = v28;
  *a4 = v30;
}

uint64_t apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::_transformImage(apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment *this, apple::vision::libraries::facecore::mod::Image *a2, float *a3, float a4, float a5, int a6, unsigned __int8 *a7)
{
  if (a6 < 1)
  {
    LOBYTE(v26) = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3[1];
    v11 = a3[2];
    v10 = a3[3];
    v12 = ((*a3 * v10) - (v9 * v11));
    v13 = 1.0 / v12;
    v14 = 1.0 / v12 * v10;
    v15 = -1.0 / v12;
    v16 = v15 * v9;
    v17 = v15 * v11;
    v18 = v13 * *a3;
    v19 = *(a2 + 2);
    v20 = *(a2 + 2);
    v21 = *(a2 + 2);
    v22 = *a2;
    v23 = *a2 - 1;
    v24 = *(a2 + 1) - 1;
    v25 = a6 * a6;
    LOBYTE(v26) = 1;
    do
    {
      v27 = 0;
      v28 = (v8 - a5);
      v29 = v16 * v28;
      v30 = v18 * v28;
      v31 = v7;
      do
      {
        v32 = (v27 - a4);
        v33 = v29 + v14 * v32;
        v34 = v33;
        if (v33 < 0 || v23 <= v34 || (v35 = v30 + v17 * v32, v36 = v35, v35 < 0) || v24 <= v36)
        {
          if (v19 < 1)
          {
            LOBYTE(v26) = 0;
          }

          else
          {
            v26 = v19;
            v58 = v31;
            do
            {
              a7[v58] = 0;
              v58 += v25;
              --v26;
            }

            while (v26);
          }
        }

        else if (v20 >= 1)
        {
          v37 = v34 + v22 * v36;
          v38 = v19 + v19 * (v37 + v22);
          v39 = v33 - v34;
          v40 = v35 - v36;
          v41 = (1.0 - v39) * (1.0 - v40);
          v42 = v39 * (1.0 - v40);
          v43 = v40 * (1.0 - v39);
          v44 = (v21 + v19 * v37);
          v45 = (v21 + v19 * (v37 + v22));
          v46 = v39 * v40;
          v47 = (v21 + v19 + v19 * v37);
          v48 = (v21 + v38);
          v49 = v19;
          v50 = v31;
          do
          {
            v52 = *v44++;
            v51 = v52;
            v54 = *v45++;
            v53 = v54;
            v56 = *v47++;
            v55 = v56;
            v57 = *v48++;
            a7[v50] = (v42 * v55 + v41 * v51 + v43 * v53 + v46 * v57 + 0.5);
            v50 += v25;
            --v49;
          }

          while (v49);
        }

        ++v27;
        ++v31;
      }

      while (v27 != a6);
      ++v8;
      v7 += a6;
    }

    while (v8 != a6);
  }

  return v26 & 1;
}

void apple::vision::libraries::facecore::processing::postprocessing::RegularFacesFilter::performProcessing(apple::vision::libraries::facecore::processing::postprocessing::RegularFacesFilter *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  memset(v10, 0, sizeof(v10));
  v3 = *(a2 + 16);
  if (*(a2 + 17) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(v8, v3 + 216 * v4);
      if (v9)
      {
        v6 = 1;
      }

      else
      {
        v6 = *(a2 + 2) == 4;
      }

      if (v6)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](v10, v8);
      }

      apple::vision::libraries::facecore::Face::~Face(v8);
      v4 = v5;
      v3 = *(a2 + 16);
    }

    while (0x84BDA12F684BDA13 * ((*(a2 + 17) - v3) >> 3) > v5++);
  }

  apple::vision::libraries::facecore::FaceCoreContext::updateDetectedFaces(a2, v10);
  v8[0] = v10;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](v8);
}

void sub_23AD61E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 72);
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::processing::postprocessing::FacesCoordinatesPostprocessing::performProcessing(apple::vision::libraries::facecore::processing::postprocessing::FacesCoordinatesPostprocessing *this, apple::vision::libraries::facecore::FaceCoreContext *a2, uint64_t a3, image *a4)
{
  v4 = *(a2 + 16);
  if (*(a2 + 17) != v4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = apple::vision::libraries::facecore::utils::ImageRotationUtils::computeFaceCoordinatesInImageRotatedByAngle((360 - *(a2 + 4)), v4 + 216 * v6, a2 + 14, a4);
      v6 = v7;
      v4 = *(a2 + 16);
    }

    while (0x84BDA12F684BDA13 * ((*(a2 + 17) - v4) >> 3) > v7++);
  }

  return result;
}

void apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::~EyesAndMouthLocalizer(apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer *this)
{
  *this = &unk_284DF3FA8;
  v2 = *(this + 1);
  if (v2)
  {
    apple::vision::libraries::facecore::mod::keypoints::EyesAndMouth::~EyesAndMouth(v2);
    MEMORY[0x23EE98360]();
    *(this + 1) = 0;
  }
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::~KeypointLocalization_U8(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8 *this)
{
  *this = &unk_284DF3CB8;
  v2 = *(this + 151);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 152);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 153);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 154);
  if (v5)
  {
    free(v5);
  }

  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::~KeypointLocalization(this);
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::matrixMultiply(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8 *this, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, int a6, int a7, int a8)
{
  v15[6] = *MEMORY[0x277D85DE8];
  if (a8 == 256)
  {
    v9 = a5;
    v10 = a2;
    v11 = a7 + 7;
    v12 = ((a7 + 7) & 0xFFFFFFF8);
    v15[0] = a2;
    v15[1] = a3;
    v15[2] = a4;
    v15[3] = a5;
    v15[4] = a6;
    v15[5] = v12;
    matrixMultiply256_NEON(v15);
    if (a6 >= 1)
    {
      v13 = 0;
      do
      {
        if (v12 >= 1)
        {
          v14 = 0;
          do
          {
            v10[v14++] -= *v9;
          }

          while ((v11 & 0xFFFFFFF8) != v14);
        }

        ++v13;
        ++v9;
        v10 += v12;
      }

      while (v13 != a6);
    }
  }
}

double apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8 *this, __int16 *a2, unsigned __int8 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    for (i = 0; i != 16; ++i)
    {
      v9 = a3[i];
      a2[i] = v9;
      v7 += v9;
      v6 += v9 * v9;
    }

    ++v5;
    a2 += 16;
    a3 += 32;
  }

  while (v5 != 16);
  *a4 = v7;
  result = sqrt(((v6 << 8) - v7 * v7));
  *a5 = result;
  return result;
}

float apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::localize(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8 *this, const apple::vision::libraries::facecore::mod::Image *a2, int a3, int a4, int *a5, int *a6)
{
  v9 = 0;
  v10 = 0;
  v104 = *MEMORY[0x277D85DE8];
  v11 = a4 - 16;
  do
  {
    v12 = 32;
    v13 = a3 - 16;
    v14 = v9;
    do
    {
      *(*(this + 151) + v14++) = *(*(a2 + 2) + v11 * *a2 + v13++);
      --v12;
    }

    while (v12);
    ++v10;
    v9 += 32;
    ++v11;
  }

  while (v10 != 32);
  v15 = 0;
  v16 = *(this + 152);
  v17 = *(this + 151);
  v18 = *(this + 153);
  v19 = *(this + 154);
  v20 = v16;
  do
  {
    v21 = 0;
    v22 = 8 * v15;
    v23 = v17;
    do
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = v20;
      v28 = v23;
      do
      {
        for (i = 0; i != 16; ++i)
        {
          v30 = *(v28 + i);
          *(v27 + 2 * i) = v30;
          v25 += v30;
          v26 += v30 * v30;
        }

        ++v24;
        v28 += 32;
        v27 += 32;
      }

      while (v24 != 16);
      *(v18 + 2 * (v21 + v22)) = v25;
      *(v19 + 2 * (v21 + v22)) = sqrt(((v26 << 8) - v25 * v25));
      ++v21;
      v20 += 512;
      v23 += 2;
    }

    while (v21 != 8);
    ++v15;
    v17 += 64;
  }

  while (v15 != 8);
  for (j = 0; j != 64; ++j)
  {
    for (k = 0; k != 512; k += 2)
    {
      *(v16 + k) = ((*(v16 + k) << 20) - (*(v18 + 2 * j) << 12)) / *(v19 + 2 * j);
    }

    v16 += 512;
  }

  v33 = malloc_type_malloc(0x8C00uLL, 0x1000040BDFB0063uLL);
  v34 = malloc_type_malloc(0x8C00uLL, 0x1000040BDFB0063uLL);
  v35 = malloc_type_malloc(0x118uLL, 0x100004052888210uLL);
  v36 = malloc_type_malloc(0x118uLL, 0x100004052888210uLL);
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::matrixMultiply(v36, v33, *(this + 155), *(this + 152), *(this + 156), 256, 64, 256);
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::matrixMultiply(v37, v34, *(this + 158), *(this + 152), *(this + 159), 256, 64, 256);
  v39 = 0;
  v40 = 0;
  v41 = *(this + 157);
  v42 = *(this + 160);
  do
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v39;
    do
    {
      v45 -= (((*(v41 + v43) * *(v33 + v46)) >> 16) * *(v33 + v46)) >> 6;
      v44 -= (((*(v42 + v43) * *(v34 + v46)) >> 16) * *(v34 + v46)) >> 6;
      v46 += 128;
      v43 += 2;
    }

    while (v43 != 512);
    v35[v40] = v45;
    *(v36 + v40++) = v44;
    v39 += 2;
  }

  while (v40 != 64);
  v47 = 0;
  v48 = *v35 - *v36;
  for (m = 1; m != 64; ++m)
  {
    if (v35[m] - *(v36 + m) > v48)
    {
      v47 = m;
      v48 = v35[m] - *(v36 + m);
    }
  }

  v50 = (*(this + 152) + 0x8000);
  *a5 = 2 * (v47 & 7);
  v52 = (v47 >> 2) & 0xFFFFFFFE;
  v51 = v52 <= 0;
  *a6 = v52;
  v53 = *(this + 151) + 32 * v52;
  v54 = *a5;
  v55 = v53 + v54;
  v101 = a5;
  v102 = a6;
  v99 = v53 + v54;
  v100 = v50;
  if (v51)
  {
    v57 = 0;
  }

  else
  {
    if (v54 < 1)
    {
      v56 = 0;
    }

    else
    {
      apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v38, v50, (v55 - 33), (*(this + 153) + 128), (*(this + 154) + 128));
      v103[0] = *a5 - 1;
      v103[1] = *a6 - 1;
      v56 = 1;
    }

    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v38, &v50[v56 << 8], (v55 - 32), (*(this + 153) + 2 * (v56 | 0x40u)), (*(this + 154) + 2 * (v56 | 0x40u)));
    v58 = &v103[2 * v56];
    *v58 = *a5;
    v58[1] = *v102 - 1;
    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v59, &v50[(v56 + 1) << 8], (v55 - 31), (*(this + 153) + 2 * (v56 + 65)), (*(this + 154) + 2 * (v56 + 65)));
    LODWORD(v54) = *a5;
    v60 = &v103[2 * (v56 + 1)];
    *v60 = *a5 + 1;
    v60[1] = *v102 - 1;
    v57 = v56 | 2;
  }

  if (v54 < 1)
  {
    v63 = a5;
    v64 = v102;
    v61 = v99;
    v62 = v100;
  }

  else
  {
    v61 = v99;
    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v38, &v100[v57 << 8], (v99 - 1), (*(this + 153) + 2 * (v57 | 0x40u)), (*(this + 154) + 2 * (v57 | 0x40u)));
    v62 = v100;
    v63 = v101;
    v64 = v102;
    v65 = &v103[2 * v57];
    *v65 = *v101 - 1;
    v65[1] = *v102;
    ++v57;
  }

  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v38, &v62[v57 << 8], (v61 + 1), (*(this + 153) + 2 * (v57 | 0x40u)), (*(this + 154) + 2 * (v57 | 0x40u)));
  v67 = *v63;
  v68 = &v103[2 * v57];
  *v68 = *v63 + 1;
  v68[1] = *v64;
  v69 = v61;
  v70 = v57 + 1;
  if (v67 < 1)
  {
    v72 = v57 + 1;
  }

  else
  {
    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v66, &v100[v70 << 8], (v69 + 31), (*(this + 153) + 2 * (v57 + 65)), (*(this + 154) + 2 * (v57 + 65)));
    v71 = &v103[2 * v70];
    *v71 = *v63 - 1;
    v71[1] = *v64 + 1;
    v72 = v57 + 2;
  }

  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v66, &v100[256 * v72], (v99 + 32), (*(this + 153) + 2 * (v72 | 0x40)), (*(this + 154) + 2 * (v72 | 0x40)));
  v73 = &v103[2 * v72];
  *v73 = *v101;
  v73[1] = *v102 + 1;
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::copyPatch(v74, &v100[256 * v72 + 256], (v99 + 33), (*(this + 153) + 2 * (v72 + 65)), (*(this + 154) + 2 * (v72 + 65)));
  v76 = 0;
  v77 = &v103[2 * v72 + 2];
  *v77 = *v101 + 1;
  v77[1] = *v102 + 1;
  v78 = v72 + 2;
  v79 = *(this + 153);
  v80 = *(this + 154);
  v81 = v100;
  do
  {
    for (n = 0; n != 256; ++n)
    {
      v81[n] = ((v81[n] << 20) - (*(v79 + 2 * (v76 + 64)) << 12)) / *(v80 + 2 * (v76 + 64));
    }

    ++v76;
    v81 += 256;
  }

  while (v76 != v78);
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::matrixMultiply(v75, v33, *(this + 155), v100, *(this + 156), 256, v72 + 2, 256);
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::matrixMultiply(v83, v34, *(this + 158), v100, *(this + 159), 256, v72 + 2, 256);
  v84 = 0;
  v85 = 0;
  v86 = *(this + 157);
  v87 = *(this + 160);
  do
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = v84;
    do
    {
      v90 -= (((*(v86 + v88) * *(v33 + v91)) >> 16) * *(v33 + v91)) >> 6;
      v89 -= (((*(v87 + v88) * *(v34 + v91)) >> 16) * *(v34 + v91)) >> 6;
      v91 += 16;
      v88 += 2;
    }

    while (v88 != 512);
    v92 = 4 * v85 + 256;
    *(v35 + v92) = v90;
    *(v36 + v92) = v89;
    ++v85;
    v84 += 2;
  }

  while (v85 != v78);
  v93 = -1;
  v94 = 64;
  do
  {
    if (v35[v94] - *(v36 + v94) > v48)
    {
      v93 = v94 - 64;
      v48 = v35[v94] - *(v36 + v94);
    }

    ++v94;
  }

  while (-2 - v72 + v94 != 64);
  if ((v93 & 0x80000000) == 0)
  {
    v95 = &v103[2 * v93];
    *v101 = *v95;
    *v102 = v95[1];
  }

  free(v33);
  free(v34);
  free(v35);
  free(v36);
  *v101 = a3 + *v101 - 8;
  *v102 = a4 + *v102 - 8;
  return v48;
}

void sub_23AD88384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::~AamFeature(apple::vision::libraries::facecore::mod::aam::AamFeature *this)
{
  v1 = *this;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::setLandmarksAndDoShearch(uint64_t a1, const unsigned __int8 *a2, int a3, int a4, int *a5)
{
  apple::vision::libraries::facecore::mod::aam::AamSearch::SetEyePositions(*a1, a5[1], a5[2], a5[3], a5[4], a5[5], a5[6]);
  apple::vision::libraries::facecore::mod::aam::AamSearch::MakeSearchImage(*a1, a2, a3, a4);
  apple::vision::libraries::facecore::mod::aam::AamSearch::InitSimilarityTransform(*a1);
  v9 = *a1;
  v10 = *(a1 + 8);

  apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearch(v9, 4, 0.1, 3.0, 100, v10);
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::extractFaceprint(apple::vision::libraries::facecore::mod::aam::AamSearch3d **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  apple::vision::libraries::facecore::mod::aam::AamSearch3d::Optimize3dOrthographicSuccessive(*this);
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetShapeParameters(*this, *(*this + 13774), &v22);
  apple::vision::libraries::facecore::mod::aam::AamSearch3d::Get3dShapeParameters(*this, &v20);
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetTextureParameters(*this, 7, &v18);
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetShapeStd(*this, __p);
  apple::vision::libraries::facecore::mod::aam::AamFeature::Mahalanobis(v4, &v22, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  apple::vision::libraries::facecore::mod::aam::AamSearch3d::Get3dShapeStd(*this, v16);
  apple::vision::libraries::facecore::mod::aam::AamFeature::Mahalanobis(v5, &v20, v16);
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  apple::vision::libraries::facecore::mod::aam::AamSearch::GetTextureStd(*this, 7, v15);
  apple::vision::libraries::facecore::mod::aam::AamFeature::Mahalanobis(v6, &v18, v15);
  v7 = v15[0];
  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  apple::vision::libraries::facecore::mod::aam::AamFeature::Normalize(1.0, v7, &v22);
  apple::vision::libraries::facecore::mod::aam::AamFeature::Normalize(1.0, v8, &v20);
  apple::vision::libraries::facecore::mod::aam::AamFeature::Normalize(1.0, v9, &v18);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, 0, v22, v23, (v23 - v22) >> 3);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *(a2 + 8), v20, v21, (v21 - v20) >> 3);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *(a2 + 8), v18, v19, (v19 - v18) >> 3);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = v11 - *a2;
  if (v11 != *a2)
  {
    v13 = 0;
    v14 = v12 >> 3;
    do
    {
      *(v10 + 8 * v13) = defaultL1Weight[v13] * *(v10 + 8 * v13);
      ++v13;
    }

    while (v14 > v13);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_23AD88698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 64);
  if (v22)
  {
    *(v20 - 56) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 40);
  if (v23)
  {
    *(v20 - 32) = v23;
    operator delete(v23);
  }

  v24 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::Mahalanobis(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  v5 = *a3;
  if ((a3[1] - *a3) >> 3 >= (v4 >> 3))
  {
    v6 = v4 >> 3;
  }

  else
  {
    v6 = (a3[1] - *a3) >> 3;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 8 * v7);
      if (v8 != 0.0)
      {
        *(v3 + 8 * v7) = sqrt(1.0 / fabs(v8)) * *(v3 + 8 * v7);
      }

      ++v7;
    }

    while (v6 > v7);
  }
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::Normalize(double a1, uint64_t a2, double **a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = v4 - *a3;
  v6 = 0.0;
  if (v4 != *a3)
  {
    v7 = 1;
    v8 = *a3;
    do
    {
      v9 = *v8++;
      v6 = v6 + v9 * v9;
      v10 = v5 > v7++;
    }

    while (v10);
  }

  v11 = sqrt(v6);
  if (v11 > 0.0 && v4 != v3)
  {
    v13 = 1;
    do
    {
      *v3 = *v3 / v11 * a1;
      ++v3;
      v10 = v5 > v13++;
    }

    while (v10);
  }
}

void apple::vision::libraries::facecore::mod::aam::AamFeature::GetShapeVertices(apple::vision::libraries::facecore::mod::aam::AamSearch **this@<X0>, uint64_t a2@<X8>)
{
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetShape(*this, v4);
  v3 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  do
  {
    std::vector<double>::push_back[abi:ne200100](a2, &v4[v3]);
    std::vector<double>::push_back[abi:ne200100](a2, &v4[v3 + 8]);
    v3 += 16;
  }

  while (v3 != 1008);
}

void sub_23AD88850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void apple::vision::libraries::facecore::processing::detection::Detector::Detector(apple::vision::libraries::facecore::processing::detection::Detector *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_284DF3DF0;
  *(this + 1) = 0;
  *(this + 7) = 0;
  operator new();
}

void sub_23AD88E78(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x23EE98360](v4, 0x10B2C405E811E7BLL);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::Detector::~Detector(apple::vision::libraries::facecore::processing::detection::Detector *this)
{
  *this = &unk_284DF3DF0;
  v2 = *(this + 1);
  if (v2)
  {
    apple::vision::libraries::facecore::processing::detection::PostProcessing::~PostProcessing(v2);
    MEMORY[0x23EE98360]();
    *(this + 1) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(v3);
    MEMORY[0x23EE98360]();
  }

  v4 = *(this + 9);
  if (v4)
  {
    v5 = apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::~DetectorAttributes(v4);
    MEMORY[0x23EE98360](v5, 0x10B2C405E811E7BLL);
    *(this + 9) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    v7 = apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::~DetectorAttributes(v6);
    MEMORY[0x23EE98360](v7, 0x10B2C405E811E7BLL);
    *(this + 8) = 0;
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }
}

{
  apple::vision::libraries::facecore::processing::detection::Detector::~Detector(this);

  JUMPOUT(0x23EE98360);
}

void apple::vision::libraries::facecore::processing::detection::Detector::initialize(apple::vision::libraries::facecore::processing::detection::Detector *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if (!*(this + 1))
  {
    operator new();
  }

  if (vabds_f32(*(this + 23), apple::vision::libraries::facecore::FaceCoreContext::getMinFaceSize(a2)) >= 0.00001)
  {
    *(this + 23) = apple::vision::libraries::facecore::FaceCoreContext::getMinFaceSize(a2);
    apple::vision::libraries::facecore::processing::detection::Detector::setMinWindowSize(this);
  }

  v4 = *(a2 + 5);
  if ((*(this + 96) & 1) != 0 || v4 != *(this + 4) || *(a2 + 6) != *(this + 21))
  {
    *(this + 4) = v4;
    *(this + 21) = *(a2 + 6);
    apple::vision::libraries::facecore::processing::detection::Detector::updateDetectionAngles(this, a2);
  }

  v5 = *(a2 + 16) & 1;
  if (*(this + 88) != v5)
  {
    *(this + 88) = v5;
    apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::setShadowPreprocessing(*(this + 8), v5, a2);
    apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::setShadowPreprocessing(*(this + 9), *(this + 88), a2);
  }

  v6 = *(this + 1);
  v7 = *(a2 + 88);
  if (*(v6 + 9) != v7)
  {
    *(v6 + 9) = v7;
  }

  v8 = *(a2 + 89);
  if (*(v6 + 10) != v8)
  {
    *(v6 + 10) = v8;
  }
}

void apple::vision::libraries::facecore::processing::detection::Detector::updateDetectionAngles(apple::vision::libraries::facecore::processing::detection::Detector *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  v2 = a2;
  generateAngles(*(this + 4), *(this + 21), &__p);
  *(this + 4) = *(this + 3);
  std::__copy_impl::operator()[abi:ne200100]<double *,double *,std::back_insert_iterator<std::vector<double>>>(&v8, __p, v7, this + 3);
  v5 = *(this + 20);
  if (v5 == 2)
  {
    apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::createIntegrals(*(this + 8), (*(this + 4) - *(this + 3)) >> 3, v2, v4);
    v5 = *(this + 20);
  }

  if (!v5)
  {
    apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::createIntegrals(*(this + 9), (*(this + 4) - *(this + 3)) >> 3, v2, v4);
  }

  *(this + 96) = 0;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23AD891E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::detection::Detector::performProcessing(apple::vision::libraries::facecore::processing::detection::Detector *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  (**this)(this);
  v6 = 0uLL;
  v7 = 0;
  v4 = *(this + 20);
  if (v4 == 2)
  {
    apple::vision::libraries::facecore::processing::detection::Detector::detect<apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>>(this, &v5);
  }

  if (!v4)
  {
    apple::vision::libraries::facecore::processing::detection::Detector::detect<apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>>(this, &v5);
  }

  apple::vision::libraries::facecore::FaceCoreContext::updateDetectedFaces(a2, &v6);
  *&v5 = &v6;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_23AD892F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::Detector::detect<apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  is_mul_ok((*(a1 + 32) - *(a1 + 24)) >> 3, 0x18uLL);
  operator new[]();
}

void apple::vision::libraries::facecore::processing::detection::Detector::detect<apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  is_mul_ok((*(a1 + 32) - *(a1 + 24)) >> 3, 0x18uLL);
  operator new[]();
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::setShadowPreprocessing(uint64_t a1, int a2, uint64_t **this)
{
  *(a1 + 56) = a2;
  if (a2 && !*(a1 + 64))
  {
    *(a1 + 64) = apple::vision::libraries::facecore::FaceCoreContext::getPreprocessingLookupTable(this);
  }

  return apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::updateIntegralsLookupTables(a1);
}

void apple::vision::libraries::facecore::processing::detection::Detector::setMinWindowSize(apple::vision::libraries::facecore::processing::detection::Detector *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(v1);
    MEMORY[0x23EE98360]();
  }

  operator new();
}

void generateAngles(int a1@<W0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1 >= 1)
  {
    v3 = a1;
    v5 = 0;
    v6 = a2;
    v7 = -(a1 >> 1);
    do
    {
      v8 = v6 * v7;
      v9 = a3[2];
      if (v5 >= v9)
      {
        v10 = *a3;
        v11 = v5 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v5 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v5;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5++ = v8;
      }

      a3[1] = v5;
      ++v7;
      --v3;
    }

    while (v3);
  }
}

void sub_23AD8A26C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::createIntegrals(uint64_t a1, int a2, int a3, apple::vision::libraries::facecore::FaceCoreContext *a4)
{
  v7 = *(a1 + 8);
  v8 = (a1 + 8);
  if (*(a1 + 16) != v7)
  {
    v9 = 0;
    do
    {
      v10 = *(v7 + 8 * v9);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v7 = *v8;
      }

      *(v7 + 8 * v9++) = 0;
      v7 = *(a1 + 8);
    }

    while (v9 < (*(a1 + 16) - v7) >> 3);
  }

  *(a1 + 16) = v7;
  if (a2 >= 1)
  {
    apple::vision::libraries::facecore::processing::detection::IntegralImage::create(0x14C, 470, a3, a4);
  }

  return apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::updateIntegralsLookupTables(a1);
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::createIntegrals(uint64_t a1, int a2, int a3, apple::vision::libraries::facecore::FaceCoreContext *a4)
{
  v7 = *(a1 + 8);
  v8 = (a1 + 8);
  if (*(a1 + 16) != v7)
  {
    v9 = 0;
    do
    {
      v10 = *(v7 + 8 * v9);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v7 = *v8;
      }

      *(v7 + 8 * v9++) = 0;
      v7 = *(a1 + 8);
    }

    while (v9 < (*(a1 + 16) - v7) >> 3);
  }

  *(a1 + 16) = v7;
  if (a2 >= 1)
  {
    apple::vision::libraries::facecore::processing::detection::IntegralImage::create(0x244, 820, a3, a4);
  }

  return apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::updateIntegralsLookupTables(a1);
}

uint64_t apple::vision::libraries::facecore::processing::detection::Detector::refine(apple::vision::libraries::facecore::processing::detection::Detector *this, apple::vision::libraries::facecore::processing::detection::IntegralImage *a2, char a3, float a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, int a9, int a10)
{
  v10 = a9;
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v15 = this;
  if (a3)
  {
    v16 = &apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::evaluatorsWithProfile(void)::e;
  }

  else
  {
    v16 = (*(this + 9) + 32);
  }

  if (a8 > a9)
  {
    return 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = a4 * a4;
  __asm { FMOV            V0.2D, #1.0 }

  v53 = _Q0;
  do
  {
    (*(*a2 + 24))(a2, v11);
    (*(*a2 + 40))(a2);
    (*(*a2 + 48))(a2);
    v26 = *(v15 + 7);
    v27 = *(v26 + 8);
    if (*(v26 + 16) != v27)
    {
      v28 = 0;
      v50 = 0;
      v29 = *(a2 + 3);
      v47 = *(a2 + 12) + v29 * *(a2 + 14);
      v46 = v11;
      while (1)
      {
        v30 = *(v27 + 2 * v28);
        if (v30 >= v13 && v30 <= v12)
        {
          v51 = (*(a2 + 15) - v30) & ~((*(a2 + 15) - v30) >> 31);
          if (*(a2 + 14) < v51)
          {
            break;
          }
        }

LABEL_30:
        v27 = *(v26 + 8);
        v28 = ++v50;
        if (v50 >= ((*(v26 + 16) - v27) >> 1))
        {
          goto LABEL_31;
        }
      }

      v32 = (*(a2 + 13) - v30) & ~((*(a2 + 13) - v30) >> 31);
      v56 = v30 + 1;
      v54 = v30 >> 1;
      v33 = v47;
      v34 = *(a2 + 14);
      while (1)
      {
        v35 = *(a2 + 12);
        if (v35 < v32)
        {
          break;
        }

LABEL_28:
        v33 += 4 * v29;
        v34 += 4;
        if (v34 >= v51)
        {
          v15 = this;
          v26 = *(this + 7);
          v10 = a9;
          v11 = v46;
          v13 = a6;
          v12 = a7;
          goto LABEL_30;
        }
      }

      v48 = v33;
      v49 = v34;
      v55 = vcvts_n_f32_u32(v56 + 2 * v34, 1uLL);
      while (1)
      {
        v36 = *v16;
        if (*v16 == v16[1])
        {
          if ((v18 & 1) == 0)
          {
LABEL_25:
            v18 = 0;
            goto LABEL_26;
          }
        }

        else
        {
          while (1)
          {
            v37 = *(**v36 + 16 * v28 + 8);
            v38 = (*(*a2 + 56))(a2);
            if (v37(v38 + 4 * v33) >= *(*v36 + 8))
            {
              break;
            }

            v36 += 8;
            if (v36 == v16[1])
            {
              goto LABEL_25;
            }
          }
        }

        v59 = 0u;
        v60 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v68 = 0x100000001;
        v70 = 0x100000000;
        v71 = v53;
        v72 = v53;
        v73 = v53;
        HIDWORD(v60) = vcvts_n_f32_u32(v56 + 2 * v35, 1uLL);
        LODWORD(v61) = v55;
        LODWORD(v59) = v54;
        DWORD2(v65) = -*(a2 + 18);
        v69 = 0x3FF0000000000000;
        v57 = 0.0;
        v58 = 0.0;
        apple::vision::libraries::facecore::processing::detection::IntegralImage::getOriginalCoord(a2, SHIDWORD(v60), v55, &v58, &v57);
        LODWORD(v59) = (v59 / *(a2 + 19));
        HIDWORD(v60) = v58;
        v39 = *(a2 + 17);
        v40 = v58 - *(a2 + 16) / 2;
        LODWORD(v61) = v57;
        v41 = (v57 - v39 / 2) * (v57 - v39 / 2) + v40 * v40;
        if (v20 > v41 && ++v19 > a5)
        {
          apple::vision::libraries::facecore::Face::~Face(&v59);
          return 1;
        }

        apple::vision::libraries::facecore::Face::~Face(&v59);
        v18 = 1;
LABEL_26:
        v33 += 4;
        v35 += 4;
        if (v35 >= v32)
        {
          v29 = *(a2 + 3);
          v33 = v48;
          v34 = v49;
          goto LABEL_28;
        }
      }
    }

LABEL_31:
    result = 0;
    v11 += a10;
  }

  while (v11 <= v10);
  return result;
}

void sub_23AD8A820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(apple::vision::libraries::facecore::mod::windows::Window **this)
{
  v2 = *this;
  if (v2)
  {
    apple::vision::libraries::facecore::mod::windows::Window::~Window(v2);
    MEMORY[0x23EE98360]();
  }

  v3 = this[4];
  if (v3)
  {
    this[5] = v3;
    operator delete(v3);
  }

  v4 = this[1];
  if (v4)
  {
    this[2] = v4;
    operator delete(v4);
  }
}

void apple::vision::libraries::facecore::mod::windows::Window::~Window(apple::vision::libraries::facecore::mod::windows::Window *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    if (*this)
    {
      MEMORY[0x23EE98340]();
      *this = 0;
    }

    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x23EE98340](v2, 0x1000C8077774924);
      *(this + 1) = 0;
    }
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<double *,double *,std::back_insert_iterator<std::vector<double>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
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

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4, v14);
        }

        *(8 * v11) = *v5;
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 8;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::DetectorAttributes(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *(a1 + 8) = 0u;
  v3 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  apple::vision::libraries::facecore::FaceCoreContext::FaceCoreContext((a1 + 72));
  *a1 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::cascades::t_cascade const*>::push_back[abi:ne200100](v3 + 24, &v5);
  return a1;
}

void sub_23AD8AA84(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::FaceCoreContext::~FaceCoreContext((v2 + 64));
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::vector<apple::vision::libraries::facecore::processing::detection::cascades::t_cascade const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::cascades::t_cascade const*>>(a1, v10);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::cascades::t_cascade const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::DetectorAttributes(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *(a1 + 8) = 0u;
  v3 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  apple::vision::libraries::facecore::FaceCoreContext::FaceCoreContext((a1 + 72));
  *a1 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::cascades::t_cascade const*>::push_back[abi:ne200100](v3 + 24, &v5);
  return a1;
}

void sub_23AD8AC44(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::FaceCoreContext::~FaceCoreContext((v2 + 64));
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::~DetectorAttributes(uint64_t a1)
{
  if (*(a1 + 64))
  {
    *(a1 + 64) = 0;
  }

  v2 = *a1;
  if (*a1)
  {
    apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(v2);
    MEMORY[0x23EE98360]();
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 8);
      }

      *(v3 + 8 * v4++) = 0;
      v3 = *(a1 + 8);
    }

    while (v4 < (*(a1 + 16) - v3) >> 3);
  }

  *(a1 + 16) = v3;
  apple::vision::libraries::facecore::FaceCoreContext::~FaceCoreContext((a1 + 72));
  v6 = *(a1 + 32);
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi580ELi820EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 3);
  (*(**(__p + a2) + 16))(*(__p + a2), *(a1 + 40), *(a1 + 48), *(a1 + 52));
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_23AD8ADE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi580ELi820EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v3 + 8), *(v3 + 16), (*(v3 + 16) - *(v3 + 8)) >> 3);
  v5 = *(*(v4 + 24) + 8 * a2);
  (*(**(__p + a2) + 24))(*(__p + a2), v5);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23AD8AE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi580ELi820EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 3);
  (*(**(__p + a2) + 40))(*(__p + a2));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v5 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
  (*(**(__p + a2) + 48))(*(__p + a2));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v6 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  apple::vision::libraries::facecore::processing::detection::IntegralImage::setROIs(*(__p + a2), (*(a1 + 40) + 184));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_23AD8AFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi580ELi820EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_4(void *a1, uint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 56);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  v10 = a1[6];
  if (*(v5 + 52) <= a2)
  {
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 3);
    apple::vision::libraries::facecore::processing::detection::detectWindows(v4, v8, v7, *(__p + a2), (a1[6] + 32), (a1[7] + 24 * a2), *(*(v5 + 24) + 8 * a2));
  }

  else
  {
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 3);
    apple::vision::libraries::facecore::processing::detection::detectWindows(v4, v8, v7, *(__p + a2), &apple::vision::libraries::facecore::processing::detection::DetectorAttributes<580,820>::evaluatorsWithProfile(void)::e, (a1[7] + 24 * a2), *(*(v5 + 24) + 8 * a2));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_23AD8B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23AD8B188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::IntegralImage *>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::IntegralImage *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

apple::vision::libraries::facecore::Face *std::vector<apple::vision::libraries::facecore::FaceInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>,std::__wrap_iter<apple::vision::libraries::facecore::FaceInternal*>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x84BDA12F684BDA13 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x84BDA12F684BDA13 * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 216 * a5;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__move_range(a1, a2, a1[1], a2 + 216 * a5);
        v20 = v19 + v7;
        v21 = v5;
        do
        {
          apple::vision::libraries::facecore::FaceInternal::operator=(v21, v7);
          v7 += 216;
          v21 += 216;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__move_range(a1, v5, v10, v5 + 216 * a5);
          v18 = v5;
          do
          {
            apple::vision::libraries::facecore::FaceInternal::operator=(v18, v7);
            v7 += 216;
            v18 += 216;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x7B425ED097B425EDLL * ((v10 - *a1) >> 3);
      if (v12 > 0x12F684BDA12F684)
      {
        std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x84BDA12F684BDA13 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x97B425ED097B42)
      {
        v15 = 0x12F684BDA12F684;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 216 * a5;
      v24 = (v22 + 216 * a5);
      do
      {
        apple::vision::libraries::facecore::FaceInternal::FaceInternal(v22, v7);
        v22 = (v22 + 216);
        v7 += 216;
        v23 -= 216;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<apple::vision::libraries::facecore::FaceInternal>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<apple::vision::libraries::facecore::FaceInternal>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = v6;
    do
    {
      apple::vision::libraries::facecore::Face::Face(v8, v10);
      *(v11 + 144) = *(v10 + 144);
      v12 = *(v10 + 160);
      v13 = *(v10 + 176);
      v14 = *(v10 + 192);
      *(v11 + 208) = *(v10 + 208);
      *(v11 + 176) = v13;
      *(v11 + 192) = v14;
      *(v11 + 160) = v12;
      v10 += 216;
      v8 = v11 + 216;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(&v16, a2, v7, v6);
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, apple::vision::libraries::facecore::Face *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::FaceInternal>,apple::vision::libraries::facecore::FaceInternal*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

float apple::vision::libraries::facecore::Face::Face(uint64_t a1, int *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  v3 = *(a2 + 1);
  *(a2 + 1) = 0;
  *(a1 + 4) = v3;
  v4 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 12) = v4;
  v5 = *(a2 + 5);
  *(a2 + 5) = 0;
  *(a1 + 20) = v5;
  v6 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 28) = v6;
  v7 = a2[9];
  LODWORD(v6) = a2[10];
  *(a2 + 9) = 0;
  *(a1 + 36) = v7;
  *(a1 + 40) = v6;
  LODWORD(v6) = a2[11];
  a2[11] = 0;
  *(a1 + 44) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  LODWORD(v6) = a2[18];
  a2[18] = 0;
  *(a1 + 72) = v6;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  LODWORD(v6) = a2[26];
  a2[26] = 0;
  *(a1 + 104) = v6;
  LOBYTE(v6) = *(a2 + 108);
  *(a2 + 108) = 0;
  *(a1 + 108) = v6;
  LOBYTE(v6) = *(a2 + 109);
  *(a2 + 109) = 0;
  *(a1 + 109) = v6;
  v8 = a2[28];
  a2[28] = 0;
  *(a1 + 112) = v8;
  v9 = a2[29];
  a2[29] = 0;
  *(a1 + 116) = v9;
  LOBYTE(v6) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 120) = v6;
  v10 = a2[31];
  a2[31] = 0;
  *(a1 + 124) = v10;
  LOBYTE(v6) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 128) = v6;
  result = *(a2 + 33);
  a2[33] = 0;
  *(a1 + 132) = result;
  v12 = *(a2 + 17);
  *(a2 + 17) = 0;
  *(a1 + 136) = v12;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(a3 + v7 - 216);
      v10 = *(a3 + v7 - 200);
      *(v8 - 184) = *(a3 + v7 - 184);
      *(v8 - 200) = v10;
      *(v8 - 216) = v9;
      std::vector<double>::__move_assign(a4 + v7 - 168, (a3 + v7 - 168));
      *(v8 - 144) = *(a3 + v7 - 144);
      std::vector<double>::__move_assign(a4 + v7 - 136, (a3 + v7 - 136));
      v11 = *(a3 + v7 - 112);
      v12 = *(a3 + v7 - 96);
      *(v8 - 80) = *(a3 + v7 - 80);
      *(v8 - 112) = v11;
      *(v8 - 96) = v12;
      v13 = *(a3 + v7 - 40);
      v14 = *(a3 + v7 - 24);
      v15 = *(a3 + v7 - 8);
      *(v8 - 56) = *(a3 + v7 - 56);
      *(v8 - 8) = v15;
      *(v8 - 24) = v14;
      *(v8 - 40) = v13;
      *(v8 - 72) = *(a3 + v7 - 72);
      v7 -= 216;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi332ELi470EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 3);
  (*(**(__p + a2) + 16))(*(__p + a2), *(a1 + 40), *(a1 + 48), *(a1 + 52));
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_23AD8B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi332ELi470EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v3 + 8), *(v3 + 16), (*(v3 + 16) - *(v3 + 8)) >> 3);
  v5 = *(*(v4 + 24) + 8 * a2);
  (*(**(__p + a2) + 24))(*(__p + a2), v5);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23AD8B908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi332ELi470EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 3);
  (*(**(__p + a2) + 40))(*(__p + a2));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v5 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
  (*(**(__p + a2) + 48))(*(__p + a2));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v6 = *(a1 + 32);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  apple::vision::libraries::facecore::processing::detection::IntegralImage::setROIs(*(__p + a2), (*(a1 + 40) + 184));
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_23AD8BA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5apple6vision9libraries8facecore10processing9detection8Detector6detectINS4_18DetectorAttributesILi332ELi470EEEEENSt3__16vectorINS2_12FaceInternalENS9_9allocatorISB_EEEERNS2_15FaceCoreContextEPhjjPT__block_invoke_4(void *a1, uint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 56);
  v9 = *v6;
  v7 = v6 + 1;
  v8 = v9;
  v10 = a1[6];
  if (*(v5 + 52) <= a2)
  {
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 3);
    apple::vision::libraries::facecore::processing::detection::detectWindows(v4, v8, v7, *(__p + a2), (a1[6] + 32), (a1[7] + 24 * a2), *(*(v5 + 24) + 8 * a2));
  }

  else
  {
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::detection::IntegralImage **,apple::vision::libraries::facecore::processing::detection::IntegralImage **>(&__p, *(v10 + 8), *(v10 + 16), (*(v10 + 16) - *(v10 + 8)) >> 3);
    apple::vision::libraries::facecore::processing::detection::detectWindows(v4, v8, v7, *(__p + a2), apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::evaluatorsWithProfile(void)::e, (a1[7] + 24 * a2), *(*(v5 + 24) + 8 * a2));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_23AD8BB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::facecore::processing::detection::DetectorAttributes<332,470>::updateIntegralsLookupTables(uint64_t result)
{
  v1 = result;
  if (*(result + 56) == 1)
  {
    v2 = *(result + 64);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(result + 8);
  if (((*(result + 16) - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      result = apple::vision::libraries::facecore::processing::detection::IntegralImage::setShadowLUT(*(v3 + 8 * v4++), v2);
      v3 = *(v1 + 8);
    }

    while (v4 < ((*(v1 + 16) - v3) >> 3));
  }

  return result;
}

void apple::vision::libraries::facecore::mod::windows::InlinedNestedWindows<332>::InlinedNestedWindows(uint64_t a1, int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v14 = 24;
  __src = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    std::vector<unsigned short>::insert(&__src, __src, &v14);
    LOWORD(v4) = v14;
    v14 = (v4 * 1.2);
  }

  while ((v4 * 1.2) < 0x14D);
  v5 = __src;
  v6 = v12;
  if (v12 != __src)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*&v5[v7] >= a2 || v8 && *&v5[2 * v8 - 2] > a2)
      {
        std::vector<unsigned short>::push_back[abi:ne200100]((a1 + 8), &v5[v7]);
        v5 = __src;
        v6 = v12;
      }

      ++v8;
      v7 += 2;
    }

    while (v8 < (v6 - v5) >> 1);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fc-sw-3.dat");
  apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fc-sw-4.dat");
  apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23AD8BDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(v17);
  _Unwind_Resume(a1);
}

char *std::vector<unsigned short>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    std::__split_buffer<unsigned short>::emplace_back<unsigned short const&>(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_23AD8BF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *std::__split_buffer<unsigned short>::emplace_back<unsigned short const&>(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void apple::vision::libraries::facecore::mod::windows::InlinedNestedWindows<580>::InlinedNestedWindows(uint64_t a1, int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v14 = 24;
  __src = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    std::vector<unsigned short>::insert(&__src, __src, &v14);
    LOWORD(v4) = v14;
    v14 = (v4 * 1.2);
  }

  while ((v4 * 1.2) < 0x245);
  v5 = __src;
  v6 = v12;
  if (v12 != __src)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*&v5[v7] >= a2 || v8 && *&v5[2 * v8 - 2] > a2)
      {
        std::vector<unsigned short>::push_back[abi:ne200100]((a1 + 8), &v5[v7]);
        v5 = __src;
        v6 = v12;
      }

      ++v8;
      v7 += 2;
    }

    while (v8 < (v6 - v5) >> 1);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fc-sw-7.dat");
  apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fc-sw-8.dat");
  apple::vision::libraries::facecore::mod::bundle::getMemoryBlock(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_23AD8C364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  apple::vision::libraries::facecore::mod::windows::NestedWindows::~NestedWindows(v17);
  _Unwind_Resume(a1);
}

void std::vector<apple::vision::libraries::facecore::processing::detection::IntegralImage *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::IntegralImage *>>(a1, v10);
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

void apple::vision::libraries::facecore::mod::aam::AamSearch::Weighting(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v2 = this + 9478144;
  v3 = this + 9480404;
  v4 = *(this + *(this + 2370082) + 2370101);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 1185040);
    do
    {
      *(v6 + 4 * v5++) = 1065353216;
    }

    while (v4 != v5);
  }

  v7 = *(this + 1338);
  v8 = *(this + v7 + 1357);
  if (v8)
  {
    v9 = *(this + (v7 - 5) + 1185082);
    v10 = 0.0;
    v11 = *(this + v7 + 1357);
    do
    {
      v12 = *v9++;
      v10 = v10 + v12 * v12;
      --v11;
    }

    while (v11);
    v13 = 0;
    v14 = 1.0 / sqrt(v10 / v8);
    v15 = *(this + v7 + 1339);
    v16 = *(this + (v7 - 5) + 1185082);
    v17 = *(this + 1185040);
    v18 = v15;
    v19 = v8;
    do
    {
      v20 = *(v16 + 8 * (((v18 / v15) + ((v13 % v15) * v15)) + -1.0));
      v21 = 0.0;
      if (v20 != 0.0)
      {
        v21 = v20 * (v14 * *(v17 + 4 * v13));
      }

      *(v17 + 4 * v13++) = v21;
      ++v18;
      --v19;
    }

    while (v19);
  }

  v22 = 1374389535 * v8;
  v43 = 0;
  std::vector<double>::vector[abi:ne200100](&v44, 0x64uLL);
  v23 = 0;
  v24 = *(this + 668);
  v25 = v44;
  do
  {
    *&v25[v23] = *v24;
    v24 = (v24 + ((v22 >> 35) & 0xFFFFFFC));
    v23 += 8;
  }

  while (v23 != 800);
  __p = 0;
  v41 = 0;
  v42 = 0;
  v26 = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v25, v45, (v45 - v25) >> 3);
  v27 = apple::vision::libraries::facecore::mod::aam::AamSearch::median(v26, &__p);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  v28 = *(this + *(this + 1338) + 1357);
  if (v28)
  {
    v29 = 0;
    v30 = *(this + 668);
    v31 = *(v2 + 272);
    v32 = *(v2 + 296);
    do
    {
      v33 = (*(v30 + 4 * v29) / *(v31 + 4 * v29));
      v34 = 1.0;
      if (v27 * 5.0 < v33 || v27 * -5.0 > v33)
      {
        *(v31 + 4 * v29) = 0;
        v34 = 0.0;
      }

      *(v32 + 4 * v29++) = v34;
    }

    while (v28 != v29);
  }

  v36 = *&v3[4 * *(v2 + 546)];
  if (v36)
  {
    v37 = 0;
    v38 = *(this + 668);
    v39 = *(v2 + 272);
    do
    {
      *(v38 + 4 * v37) = *(v38 + 4 * v37) * *(v39 + 4 * v37);
      ++v37;
    }

    while (v36 != v37);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_23AD8C724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double apple::vision::libraries::facecore::mod::aam::AamSearch::median(uint64_t a1, double **a2)
{
  v3 = a2[1];
  v4 = *a2;
  if (v3 == *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "median of an empty vector");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v16 = 0;
  v5 = std::remove[abi:ne200100]<std::__wrap_iter<double *>,int>(v4, v3, &v16);
  v6 = *a2;
  v7 = a2[1];
  if (v5 != v7)
  {
    v7 = v5;
    a2[1] = v5;
  }

  v8 = v7 - v6;
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 1;
    v11 = v6;
    do
    {
      if (*v11 < 0.0)
      {
        *v11 = -*v11;
      }

      ++v11;
    }

    while (v9 > v10++);
  }

  std::__sort<std::__less<double,double> &,double *>();
  v13 = &(*a2)[v9 >> 1];
  result = *v13;
  if ((v8 & 8) == 0)
  {
    return (result + *(v13 - 1)) * 0.5;
  }

  return result;
}

double *std::remove[abi:ne200100]<std::__wrap_iter<double *>,int>(double *a1, double *a2, int *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != *a3)
    {
      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      v5 = result + 1;
      if (result + 1 != a2)
      {
        v6 = *a3;
        do
        {
          if (*v5 != v6)
          {
            *result++ = *v5;
          }

          ++v5;
        }

        while (v5 != a2);
      }
    }
  }

  return result;
}

void sub_23AD8C9C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::KeypointLocalization(void *a1, uint64_t a2)
{
  *a1 = &unk_284DF3CD0;
  a1[1] = a2;
  operator new[]();
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::~KeypointLocalization(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization *this)
{
  *this = &unk_284DF3CD0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C80BDFB0063);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x23EE98340](v4, 0x1000C80BDFB0063);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x23EE98340](v5, 0x1000C80BDFB0063);
  }
}

float apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::localize(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization *this, const apple::vision::libraries::facecore::mod::Image *a2, int a3, int a4, int *a5, int *a6)
{
  v12 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v21 = 0;
  v13 = a3 - 8;
  v22 = 0;
  do
  {
    for (i = -8; i != 8; i += 2)
    {
      v19 = v13 + 2 * v12 - *(*(this + 1) + 64);
      std::vector<int>::push_back[abi:ne200100](&v23, &v19);
      v19 = a4 + i - *(*(this + 1) + 68);
      std::vector<int>::push_back[abi:ne200100](&__p, &v19);
    }

    ++v12;
  }

  while (v12 != 8);
  *a5 = a3;
  *a6 = a4;
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::getMaxInSamples(this, &v23, &__p, a2, a5, a6);
  v15 = 0;
  v24 = v23;
  v21 = __p;
  do
  {
    for (j = -1; j != 2; ++j)
    {
      v19 = v15 - 1 + *a5 - *(*(this + 1) + 64);
      std::vector<int>::push_back[abi:ne200100](&v23, &v19);
      v19 = j + *a6 - *(*(this + 1) + 68);
      std::vector<int>::push_back[abi:ne200100](&__p, &v19);
    }

    ++v15;
  }

  while (v15 != 3);
  MaxInSamples = apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::getMaxInSamples(this, &v23, &__p, a2, a5, a6);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return MaxInSamples;
}

void sub_23AD8CD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

float apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::getMaxInSamples(uint64_t a1, void *a2, int **a3, int *a4, _DWORD *a5, _DWORD *a6)
{
  v51 = a6;
  v53 = a4;
  v54 = a3;
  v55[3] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v8 = a2[1];
  v52 = a2;
  v10 = v8 - v9;
  v11 = (v8 - v9) >> 2;
  v12 = *(a1 + 8);
  v13 = v12[15];
  v14 = (v12[13] / v13);
  v15 = (v12[14] / v13);
  v16 = v15 * v14;
  MEMORY[0x28223BE20](a1);
  v18 = (&v51 - v17);
  bzero(&v51 - v17, v19);
  v20 = (v10 >> 2) & 0x7FFFFFFF;
  if (v11 >= 1)
  {
    v21 = 0;
    v22 = *v54;
    v23 = *(v53 + 2);
    v24 = v16;
    v25 = *v53;
    v26 = 2 * (v15 * v14);
    v27 = v18;
    do
    {
      if (v14 >= 1)
      {
        v28 = 0;
        v29 = (v23 + v9[v21] + v25 * v22[v21]);
        v30 = v27;
        do
        {
          v31 = v15;
          v32 = v29;
          v33 = v30;
          if (v15 >= 1)
          {
            do
            {
              *v33 = *v32;
              v33 += v14;
              v32 += v13 * v25;
              --v31;
            }

            while (v31);
          }

          ++v28;
          ++v30;
          v29 += v13;
        }

        while (v28 != v14);
      }

      if (v16 < 1)
      {
        v36 = 0.0;
        v35 = 0.0;
      }

      else
      {
        v34 = 0;
        v35 = 0.0;
        v36 = 0.0;
        do
        {
          v37 = v27[v34 / 2];
          v35 = v35 + v37;
          v36 = v36 + (v37 * v37);
          v34 += 2;
        }

        while (v26 != v34);
      }

      if (v16 >= 1)
      {
        v38 = 0;
        v39 = v35 / v24;
        v40 = sqrtf((v36 / v24) - (v39 * v39));
        do
        {
          v27[v38 / 2] = ((v27[v38 / 2] - v39) / v40);
          v38 += 2;
        }

        while (v26 != v38);
      }

      ++v21;
      v27 += v16;
    }

    while (v21 != v20);
  }

  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::computeScores(a1, v18, v11, v55);
  v41 = v55[0];
  if (v11 > 0)
  {
    v42 = *v54;
    v43 = v51;
    v44 = *v52;
    v45 = -1000000000.0;
    v46 = v55[0];
    do
    {
      v47 = *v46;
      if (*v46 > v45)
      {
        v48 = *v42;
        v49 = *(a1 + 8);
        *a5 = *(v49 + 64) + *v44;
        *v43 = *(v49 + 68) + v48;
        v45 = v47;
      }

      ++v44;
      ++v42;
      ++v46;
      --v20;
    }

    while (v20);
    goto LABEL_24;
  }

  v45 = -1000000000.0;
  if (v55[0])
  {
LABEL_24:
    operator delete(v41);
  }

  return v45;
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::computeScores(__int16 ***this@<X0>, __int16 *a2@<X1>, int a3@<W2>, const void **a4@<X8>)
{
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::computeClassScores(this, a2, a3, this[1], &v21);
  apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::computeClassScores(this, a2, a3, this[1] + 3, __p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v21;
  if (((v22 - v21) >> 2) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8[v10] - *(__p[0] + v10);
      v12 = a4[2];
      if (v9 >= v12)
      {
        v13 = *a4;
        v14 = v9 - *a4;
        v15 = v14 >> 2;
        v16 = (v14 >> 2) + 1;
        if (v16 >> 62)
        {
          std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
        }

        v17 = v12 - v13;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v18);
        }

        *(4 * v15) = v11;
        v9 = (4 * v15 + 4);
        memcpy(0, v13, v14);
        v19 = *a4;
        *a4 = 0;
        a4[1] = v9;
        a4[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v9++ = v11;
      }

      a4[1] = v9;
      ++v10;
      v8 = v21;
    }

    while (v10 < ((v22 - v21) >> 2));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    v8 = v21;
  }

  if (v8)
  {
    v22 = v8;
    operator delete(v8);
  }
}

void sub_23AD8D278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization::computeClassScores(void *a1@<X0>, __int16 *a2@<X1>, int a3@<W2>, __int16 **a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = (*(a1[1] + 56) / *(a1[1] + 60) * (*(a1[1] + 52) / *(a1[1] + 60)));
    v11 = a3;
    v12 = *a4;
    do
    {
      if (v10 >= 1)
      {
        v13 = (a1[4] + v8);
        v14 = v10;
        v15 = a2;
        v16 = v12;
        do
        {
          v18 = *v15++;
          v17 = v18;
          v19 = *v16++;
          *v13 = v17 - v19;
          v13 += a3;
          --v14;
        }

        while (v14);
      }

      ++v9;
      v8 += 2;
      a2 += v10;
    }

    while (v9 != a3);
    v20 = 0;
    v21 = 0;
    for (i = 0; i != v11; ++i)
    {
      v23 = *(a1[1] + 48);
      if (v23 < 1)
      {
        v26 = 0.0;
      }

      else
      {
        v24 = a4[2];
        v25 = (a1[5] + v20);
        v26 = 0.0;
        do
        {
          v27 = *v24++;
          v26 = v26 + (((*v25 * -0.5) * *v25) * v27);
          v25 += v11;
          --v23;
        }

        while (v23);
      }

      v28 = a5[2];
      if (v21 >= v28)
      {
        v29 = *a5;
        v30 = v21 - *a5;
        v31 = v30 >> 2;
        v32 = (v30 >> 2) + 1;
        if (v32 >> 62)
        {
          std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
        }

        v33 = v28 - v29;
        if (v33 >> 1 > v32)
        {
          v32 = v33 >> 1;
        }

        v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
        v35 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v34)
        {
          v35 = v32;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v35);
        }

        *(4 * v31) = v26;
        v21 = (4 * v31 + 4);
        memcpy(0, v29, v30);
        v36 = *a5;
        *a5 = 0;
        a5[1] = v21;
        a5[2] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v21++ = v26;
      }

      a5[1] = v21;
      v20 += 2;
    }
  }
}

void sub_23AD8D4C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fast9_detect(uint64_t a1, int a2, int a3, int a4, int a5, void *a6)
{
  a6[1] = *a6;
  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::resize(a6, 0x2710uLL);
  if (a3 < 7)
  {
    v91 = 0;
    goto LABEL_820;
  }

  v11 = 0;
  v12 = 2 * a4;
  v13 = (a3 - 3);
  v92 = 3 * a4 - 1;
  v14 = v12 - 2;
  v15 = a4 - 3;
  v16 = -3 - a4;
  v17 = -2 * a4 - 2;
  v18 = -3 * a4;
  v19 = v18 - 1;
  v20 = v18 + 1;
  v21 = 2 - v12;
  v22 = 3;
  v23 = 3 - a4;
  v24 = a4 + 3;
  v25 = v12 + 2;
  v26 = 3 * a4 + 1;
  do
  {
    if (a2 >= 7)
    {
      v27 = a1 + v22 * a4;
      v28 = *a6;
      v29 = 3;
      while (1)
      {
        v30 = v27 + v29;
        v31 = *(v27 + v29);
        v32 = v31 + a5;
        v33 = v31 - a5;
        v34 = *(v27 + v29 + 3 * a4);
        if (v32 < v34)
        {
          break;
        }

        if (v33 <= v34)
        {
          v46 = *(v30 + v20);
          if (v32 < v46)
          {
            if (v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v21))
            {
              if (v32 >= *(v30 + v17))
              {
                goto LABEL_781;
              }

              goto LABEL_214;
            }

            if (v32 >= *(v30 + v23))
            {
              if (v32 >= *(v30 + v17))
              {
                goto LABEL_781;
              }

              goto LABEL_282;
            }

            if (v32 >= *(v30 + 3))
            {
              if (v32 >= *(v30 + v17))
              {
                goto LABEL_781;
              }

              goto LABEL_366;
            }

            if (v32 >= *(v30 + v24))
            {
LABEL_677:
              if (v32 >= *(v30 + v17))
              {
                goto LABEL_781;
              }

              goto LABEL_678;
            }

            if (v32 < *(v30 + v25))
            {
              v42 = -v22;
              if (v32 < *(v30 + v26))
              {
                goto LABEL_780;
              }

              v47 = *(v30 + v17);
              goto LABEL_681;
            }

LABEL_554:
            if (v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            goto LABEL_555;
          }

          if (v33 <= v46 || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v21))
          {
            if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

            v68 = *(v30 + v15);
            goto LABEL_342;
          }

          if (v33 <= *(v30 + v23))
          {
            if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

            v73 = *(v30 + v15);
            goto LABEL_381;
          }

          if (v33 > *(v30 + 3))
          {
            if (v33 > *(v30 + v24))
            {
              if (v33 > *(v30 + v25))
              {
                v42 = v22;
                if (v33 > *(v30 + v26))
                {
                  goto LABEL_780;
                }

                goto LABEL_86;
              }

LABEL_114:
              if (v33 <= *(v30 + v17))
              {
                goto LABEL_781;
              }

LABEL_144:
              v51 = *(v30 + v16);
              goto LABEL_779;
            }

            if (v33 <= *(v30 + v17))
            {
              goto LABEL_781;
            }

LABEL_644:
            if (v33 <= *(v30 + v16))
            {
              goto LABEL_781;
            }

LABEL_645:
            v51 = *(v30 - 3);
            goto LABEL_779;
          }

          if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
          {
            goto LABEL_781;
          }

LABEL_693:
          v51 = *(v30 + v15);
          goto LABEL_779;
        }

        v43 = *(v30 + v26);
        if (v32 < v43)
        {
          v44 = *(v30 - 3 * a4);
          if (v32 < v44)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 + v19))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v21))
            {
              if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3) || v32 >= *(v30 + v15))
              {
                goto LABEL_781;
              }

              goto LABEL_273;
            }

            if (v32 >= *(v30 + v23))
            {
              if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
              {
                goto LABEL_781;
              }

              goto LABEL_358;
            }

            if (v32 >= *(v30 + 3))
            {
              if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_455;
            }

            if (v32 >= *(v30 + v24))
            {
              if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_680;
            }

            v42 = -v22;
            if (v32 < *(v30 + v25))
            {
              goto LABEL_780;
            }

            goto LABEL_554;
          }

          if (v33 <= v44 || v33 <= *(v30 + v19) || v33 <= *(v30 + v17))
          {
            goto LABEL_781;
          }

          if (v33 > *(v30 + v16))
          {
            if (v33 <= *(v30 - 3))
            {
              if (v33 <= *(v30 + v24) || v33 <= *(v30 + 3) || v33 <= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v33 <= *(v30 + v15))
            {
              if (v33 <= *(v30 + 3) || v33 <= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v33 <= *(v30 + v14))
            {
              if (v33 <= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else
            {
              v42 = v22;
              if (v33 > *(v30 + v92))
              {
                goto LABEL_780;
              }
            }

            goto LABEL_641;
          }

          if (v33 <= *(v30 + v25) || v33 <= *(v30 + v24) || v33 <= *(v30 + 3))
          {
            goto LABEL_781;
          }

          goto LABEL_499;
        }

        if (v33 <= v43)
        {
          v53 = *(v30 - 3 * a4);
          if (v32 < v53)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            if (v32 < *(v30 + v21))
            {
              if (v32 < *(v30 + v23))
              {
                if (v32 < *(v30 + 3))
                {
                  if (v32 < *(v30 + v24))
                  {
                    v42 = -v22;
                    if (v32 < *(v30 + v25))
                    {
                      goto LABEL_780;
                    }

LABEL_555:
                    v47 = *(v30 + v16);
                    goto LABEL_681;
                  }

LABEL_678:
                  v84 = *(v30 + v16);
LABEL_679:
                  if (v32 >= v84)
                  {
                    goto LABEL_781;
                  }

                  goto LABEL_680;
                }

LABEL_366:
                if (v32 >= *(v30 + v16))
                {
                  goto LABEL_781;
                }

                goto LABEL_455;
              }

LABEL_282:
              if (v32 >= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_283;
            }

LABEL_214:
            if (v32 >= *(v30 + v16))
            {
              goto LABEL_781;
            }

            goto LABEL_215;
          }

          if (v33 <= v53 || v33 <= *(v30 + v19) || v33 <= *(v30 + v17))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v16))
          {
            if (v33 <= *(v30 + v25))
            {
              goto LABEL_781;
            }
          }

          else if (v33 > *(v30 - 3))
          {
            if (v33 > *(v30 + v15))
            {
              if (v33 > *(v30 + v14))
              {
                v42 = v22;
                if (v33 > *(v30 + v92))
                {
                  goto LABEL_780;
                }

LABEL_641:
                if (v33 <= *(v30 + v21))
                {
                  goto LABEL_781;
                }

                v51 = *(v30 + v20);
                goto LABEL_779;
              }

LABEL_499:
              if (v33 <= *(v30 + v23))
              {
                goto LABEL_781;
              }

              goto LABEL_641;
            }

LABEL_498:
            if (v33 <= *(v30 + 3))
            {
              goto LABEL_781;
            }

            goto LABEL_499;
          }

          if (v33 <= *(v30 + v24))
          {
            goto LABEL_781;
          }

          goto LABEL_498;
        }

        v49 = *(v30 + v25);
        if (v32 < v49)
        {
          v50 = *(v30 + v19);
          if (v32 < v50)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v21))
            {
              if (v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
              {
                goto LABEL_781;
              }

              goto LABEL_216;
            }

            if (v32 >= *(v30 + v23))
            {
              if (v32 >= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_283;
            }

            if (v32 < *(v30 + 3))
            {
              v42 = -v22;
              if (v32 < *(v30 + v24))
              {
                goto LABEL_780;
              }

              goto LABEL_678;
            }

            goto LABEL_366;
          }

          if (v33 <= v50 || v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 - 3))
          {
            if (v33 <= *(v30 + v24) || v33 <= *(v30 + 3) || v33 <= *(v30 + v23))
            {
              goto LABEL_781;
            }
          }

          else if (v33 <= *(v30 + v15))
          {
            if (v33 <= *(v30 + 3) || v33 <= *(v30 + v23))
            {
              goto LABEL_781;
            }
          }

          else if (v33 <= *(v30 + v14))
          {
            if (v33 <= *(v30 + v23))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }
          }

          goto LABEL_698;
        }

        if (v33 <= v49)
        {
          v62 = *(v30 + v19);
          if (v32 < v62)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
            {
              goto LABEL_781;
            }

            if (v32 < *(v30 + v21))
            {
              if (v32 < *(v30 + v23))
              {
                if (v32 < *(v30 + 3))
                {
                  v42 = -v22;
                  if (v32 < *(v30 + v24))
                  {
                    goto LABEL_780;
                  }

LABEL_680:
                  v47 = *(v30 - 3);
                  goto LABEL_681;
                }

LABEL_455:
                v78 = *(v30 - 3);
LABEL_456:
                if (v32 >= v78)
                {
                  goto LABEL_781;
                }

                goto LABEL_457;
              }

LABEL_283:
              if (v32 >= *(v30 - 3))
              {
                goto LABEL_781;
              }

              goto LABEL_358;
            }

LABEL_215:
            if (v32 >= *(v30 - 3))
            {
              goto LABEL_781;
            }

            goto LABEL_216;
          }

          if (v33 <= v62 || v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 - 3))
          {
            if (v33 <= *(v30 + v24))
            {
              goto LABEL_781;
            }
          }

          else if (v33 > *(v30 + v15))
          {
            if (v33 > *(v30 + v14))
            {
              v42 = v22;
              if (v33 > *(v30 + v92))
              {
                goto LABEL_780;
              }

LABEL_698:
              if (v33 <= *(v30 + v21) || v33 <= *(v30 + v20))
              {
                goto LABEL_781;
              }

              v51 = *(v30 - 3 * a4);
              goto LABEL_779;
            }

LABEL_660:
            if (v33 <= *(v30 + v23))
            {
              goto LABEL_781;
            }

            goto LABEL_698;
          }

          if (v33 <= *(v30 + 3))
          {
            goto LABEL_781;
          }

          goto LABEL_660;
        }

        v56 = *(v30 + v24);
        if (v32 < v56)
        {
          v57 = *(v30 + v17);
          if (v32 < v57)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v16))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v21))
            {
              if (v32 >= *(v30 - 3))
              {
                goto LABEL_781;
              }

              goto LABEL_216;
            }

            if (v32 < *(v30 + v23))
            {
              v42 = -v22;
              if (v32 < *(v30 + 3))
              {
                goto LABEL_780;
              }

              goto LABEL_455;
            }

            goto LABEL_283;
          }

          if (v33 <= v57 || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v15))
          {
            if (v33 <= *(v30 + 3) || v33 <= *(v30 + v23) || v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

          else if (v33 <= *(v30 + v14))
          {
            if (v33 <= *(v30 + v23) || v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

          goto LABEL_776;
        }

        if (v33 <= v56)
        {
          v77 = *(v30 + v17);
          if (v32 < v77)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
            {
              goto LABEL_781;
            }

            if (v32 < *(v30 + v21))
            {
              if (v32 < *(v30 + v23))
              {
                v42 = -v22;
                if (v32 < *(v30 + 3))
                {
                  goto LABEL_780;
                }

LABEL_457:
                v47 = *(v30 + v15);
                goto LABEL_681;
              }

LABEL_358:
              v72 = *(v30 + v15);
LABEL_359:
              if (v32 >= v72)
              {
                goto LABEL_781;
              }

LABEL_360:
              v47 = *(v30 + v14);
              goto LABEL_681;
            }

LABEL_216:
            v60 = *(v30 + v15);
LABEL_217:
            if (v32 >= v60)
            {
              goto LABEL_781;
            }

            goto LABEL_273;
          }

          if (v33 <= v77 || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v15))
          {
            if (v33 <= *(v30 + 3) || v33 <= *(v30 + v23) || v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

          else if (v33 <= *(v30 + v14))
          {
            if (v33 <= *(v30 + v23) || v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 <= *(v30 + v21))
            {
              goto LABEL_781;
            }
          }

LABEL_776:
          if (v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4))
          {
            goto LABEL_781;
          }

          v51 = *(v30 + v19);
          goto LABEL_779;
        }

        v65 = *(v30 + 3);
        if (v32 < v65)
        {
          v66 = *(v30 + v15);
          if (v32 < v66)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
            {
              goto LABEL_781;
            }

            if (v32 < *(v30 + v21))
            {
              v42 = -v22;
              if (v32 < *(v30 + v23))
              {
                goto LABEL_780;
              }

              goto LABEL_360;
            }

            goto LABEL_273;
          }

          if (v33 <= v66)
          {
            if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19))
            {
              goto LABEL_781;
            }

            goto LABEL_677;
          }

          v83 = *(v30 + v16);
          if (v32 < v83)
          {
            if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19))
            {
              goto LABEL_781;
            }

            v84 = *(v30 + v17);
            goto LABEL_679;
          }

          if (v33 <= v83 || v33 <= *(v30 - 3))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v14))
          {
            if (v33 <= *(v30 + v23) || v33 <= *(v30 + v21) || v33 <= *(v30 + v20))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 <= *(v30 + v21) || v33 <= *(v30 + v20))
            {
              goto LABEL_781;
            }
          }

LABEL_811:
          if (v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19))
          {
            goto LABEL_781;
          }

LABEL_86:
          v51 = *(v30 + v17);
          goto LABEL_779;
        }

        if (v33 <= v65)
        {
          v85 = *(v30 + v16);
          if (v32 < v85)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 - 3) || v32 >= *(v30 + v15))
            {
              goto LABEL_781;
            }

            if (v32 < *(v30 + v21))
            {
              v42 = -v22;
              if (v32 < *(v30 + v23))
              {
                goto LABEL_780;
              }

              goto LABEL_360;
            }

LABEL_273:
            v64 = *(v30 + v14);
LABEL_274:
            if (v32 >= v64)
            {
              goto LABEL_781;
            }

LABEL_275:
            v47 = *(v30 + v92);
LABEL_681:
            v42 = -v22;
            if (v32 < v47)
            {
              goto LABEL_780;
            }

            goto LABEL_781;
          }

          if (v33 <= v85 || v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
          {
            goto LABEL_781;
          }

          if (v33 <= *(v30 + v14))
          {
            if (v33 <= *(v30 + v23) || v33 <= *(v30 + v21) || v33 <= *(v30 + v20))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 <= *(v30 + v21) || v33 <= *(v30 + v20))
            {
              goto LABEL_781;
            }
          }

          goto LABEL_811;
        }

        v80 = *(v30 + v23);
        if (v32 >= v80)
        {
          if (v33 > v80)
          {
            v86 = *(v30 + v21);
            if (v32 < v86)
            {
              if (v33 <= *(v30 + v92))
              {
                if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
                {
                  goto LABEL_781;
                }

                goto LABEL_283;
              }

              v73 = *(v30 + v15);
              if (v32 < v73)
              {
                if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
                {
                  goto LABEL_781;
                }

                v72 = *(v30 - 3);
                goto LABEL_359;
              }

LABEL_381:
              if (v33 <= v73)
              {
                goto LABEL_781;
              }

LABEL_696:
              v51 = *(v30 + v14);
LABEL_779:
              v42 = v22;
              if (v33 > v51)
              {
                goto LABEL_780;
              }

              goto LABEL_781;
            }

            if (v33 > v86)
            {
              v89 = *(v30 + v20);
              if (v32 < v89)
              {
                v69 = *(v30 + v14);
                if (v32 < v69)
                {
                  if (v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
                  {
                    goto LABEL_781;
                  }

                  v64 = *(v30 + v15);
                  goto LABEL_274;
                }

LABEL_344:
                if (v33 <= v69)
                {
                  goto LABEL_781;
                }

LABEL_654:
                v51 = *(v30 + v92);
                goto LABEL_779;
              }

              if (v33 > v89)
              {
                v42 = v22;
                if (v33 > *(v30 - 3 * a4))
                {
LABEL_780:
                  v90 = (v28 + 8 * v11);
                  *v90 = v29;
                  v90[1] = v42;
                  if (++v11 == 10000)
                  {
                    return;
                  }

                  goto LABEL_781;
                }

                goto LABEL_654;
              }

LABEL_343:
              v69 = *(v30 + v14);
              goto LABEL_344;
            }

            v68 = *(v30 + v15);
            if (v32 < v68)
            {
              if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
              {
                goto LABEL_781;
              }

              v60 = *(v30 - 3);
              goto LABEL_217;
            }

LABEL_342:
            if (v33 <= v68)
            {
              goto LABEL_781;
            }

            goto LABEL_343;
          }

          v88 = *(v30 - 3);
          if (v32 < v88)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 + v15) || v32 >= *(v30 + v14))
            {
              goto LABEL_781;
            }

            v42 = -v22;
            if (v32 < *(v30 + v21))
            {
              goto LABEL_780;
            }

            goto LABEL_275;
          }

          if (v33 > v88 && v33 > *(v30 + v15) && v33 > *(v30 + v14))
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 > *(v30 + v21) && v33 > *(v30 + v20) && v33 > *(v30 - 3 * a4))
            {
              goto LABEL_795;
            }
          }
        }

        else
        {
          v81 = *(v30 + v14);
          if (v32 < v81)
          {
            if (v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17) || v32 >= *(v30 + v16) || v32 >= *(v30 - 3) || v32 >= *(v30 + v15))
            {
              goto LABEL_781;
            }

            v42 = -v22;
            if (v32 < *(v30 + v21))
            {
              goto LABEL_780;
            }

            goto LABEL_275;
          }

          if (v33 <= v81)
          {
            if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            goto LABEL_366;
          }

          v87 = *(v30 - 3);
          if (v32 < v87)
          {
            if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            v78 = *(v30 + v16);
            goto LABEL_456;
          }

          if (v33 > v87 && v33 > *(v30 + v15))
          {
            v42 = v22;
            if (v33 > *(v30 + v92))
            {
              goto LABEL_780;
            }

            if (v33 > *(v30 + v21) && v33 > *(v30 + v20) && v33 > *(v30 - 3 * a4))
            {
LABEL_795:
              if (v33 <= *(v30 + v19))
              {
                goto LABEL_781;
              }

              goto LABEL_114;
            }
          }
        }

LABEL_781:
        if (++v29 == a2 - 3)
        {
          goto LABEL_817;
        }
      }

      v35 = *(v30 + v26);
      if (v32 >= v35)
      {
        v45 = *(v30 - 3 * a4);
        if (v33 <= v35)
        {
          if (v32 < v45)
          {
            if (v32 >= *(v30 + v19) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v16))
            {
              if (v32 >= *(v30 + v25) || v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 - 3))
            {
              if (v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v15))
            {
              if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v14))
            {
              if (v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else
            {
              v42 = -v22;
              if (v32 < *(v30 + v92))
              {
                goto LABEL_780;
              }
            }

LABEL_568:
            if (v32 >= *(v30 + v21))
            {
              goto LABEL_781;
            }

            v47 = *(v30 + v20);
            goto LABEL_681;
          }

          if (v33 <= v45 || v33 <= *(v30 + v20) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17))
          {
            goto LABEL_781;
          }

          if (v33 > *(v30 + v21))
          {
            if (v33 > *(v30 + v23))
            {
              if (v33 > *(v30 + 3))
              {
                if (v33 > *(v30 + v24))
                {
                  v42 = v22;
                  if (v33 > *(v30 + v25))
                  {
                    goto LABEL_780;
                  }

                  goto LABEL_144;
                }

                goto LABEL_644;
              }

              if (v33 <= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_692;
            }

            if (v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

            goto LABEL_695;
          }

          if (v33 <= *(v30 + v16) || v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
          {
            goto LABEL_781;
          }
        }

        else
        {
          if (v32 < v45)
          {
            if (v32 >= *(v30 + v19) || v32 >= *(v30 + v17))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 + v16))
            {
              if (v32 >= *(v30 + v25) || v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 - 3))
            {
              if (v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v15))
            {
              if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v14))
            {
              if (v32 >= *(v30 + v23))
              {
                goto LABEL_781;
              }
            }

            else
            {
              v42 = -v22;
              if (v32 < *(v30 + v92))
              {
                goto LABEL_780;
              }
            }

            goto LABEL_568;
          }

          if (v33 <= v45 || v33 <= *(v30 + v20) || v33 <= *(v30 + v19))
          {
            goto LABEL_781;
          }

          if (v33 > *(v30 + v21))
          {
            if (v33 > *(v30 + v23))
            {
              if (v33 > *(v30 + 3))
              {
                if (v33 > *(v30 + v24))
                {
                  v42 = v22;
                  if (v33 > *(v30 + v25))
                  {
                    goto LABEL_780;
                  }

                  goto LABEL_114;
                }

                if (v33 <= *(v30 + v17))
                {
                  goto LABEL_781;
                }

                goto LABEL_644;
              }

              if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
              {
                goto LABEL_781;
              }

              goto LABEL_692;
            }

            if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

LABEL_695:
            if (v33 <= *(v30 + v15))
            {
              goto LABEL_781;
            }

            goto LABEL_696;
          }

          if (v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
          {
            goto LABEL_781;
          }
        }
      }

      else
      {
        v36 = *(v30 + v25);
        if (v32 < v36)
        {
          v37 = *(v30 + v24);
          if (v32 >= v37)
          {
            v52 = *(v30 + v17);
            if (v33 <= v37)
            {
              if (v32 < v52)
              {
                if (v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
                {
                  goto LABEL_781;
                }

                if (v32 >= *(v30 + v15))
                {
                  if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23))
                  {
                    goto LABEL_781;
                  }
                }

                else
                {
                  if (v32 < *(v30 + v14))
                  {
                    v42 = -v22;
                    if (v32 < *(v30 + v92))
                    {
                      goto LABEL_780;
                    }

                    if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                    {
                      goto LABEL_781;
                    }

                    goto LABEL_601;
                  }

                  if (v32 >= *(v30 + v23))
                  {
                    goto LABEL_781;
                  }
                }

                if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                {
                  goto LABEL_781;
                }

LABEL_601:
                if (v32 >= *(v30 - 3 * a4))
                {
                  goto LABEL_781;
                }

                v47 = *(v30 + v19);
                goto LABEL_681;
              }

              if (v33 <= v52 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
              {
                goto LABEL_781;
              }

              if (v33 <= *(v30 + v21))
              {
                if (v33 <= *(v30 + v15))
                {
                  goto LABEL_781;
                }

                v71 = *(v30 + v14);
                goto LABEL_739;
              }

              if (v33 <= *(v30 + v23))
              {
                v82 = *(v30 + v15);
LABEL_772:
                if (v33 <= v82)
                {
                  goto LABEL_781;
                }

                goto LABEL_773;
              }

              v42 = v22;
              if (v33 > *(v30 + 3))
              {
                goto LABEL_780;
              }

LABEL_537:
              v51 = *(v30 + v15);
              goto LABEL_779;
            }

            if (v32 < v52)
            {
              if (v32 >= *(v30 + v16) || v32 >= *(v30 - 3))
              {
                goto LABEL_781;
              }

              if (v32 >= *(v30 + v15))
              {
                if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                {
                  goto LABEL_781;
                }
              }

              else if (v32 >= *(v30 + v14))
              {
                if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                {
                  goto LABEL_781;
                }
              }

              else
              {
                v42 = -v22;
                if (v32 < *(v30 + v92))
                {
                  goto LABEL_780;
                }

                if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                {
                  goto LABEL_781;
                }
              }

              goto LABEL_601;
            }

            if (v33 <= v52 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v16))
            {
              goto LABEL_781;
            }

            if (v33 > *(v30 + v21))
            {
              if (v33 <= *(v30 + v23))
              {
                if (v33 <= *(v30 - 3))
                {
                  goto LABEL_781;
                }

LABEL_736:
                v82 = *(v30 + v15);
                goto LABEL_772;
              }

              v42 = v22;
              if (v33 > *(v30 + 3))
              {
                goto LABEL_780;
              }

              goto LABEL_535;
            }

            if (v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
            {
              goto LABEL_781;
            }
          }

          else
          {
            v38 = *(v30 + 3);
            if (v32 < v38)
            {
              v39 = *(v30 + v23);
              if (v32 < v39)
              {
                v40 = *(v30 + v21);
                if (v32 < v40)
                {
                  v41 = *(v30 + v20);
                  if (v32 < v41)
                  {
                    v42 = -v22;
                    if (v32 < *(v30 - 3 * a4))
                    {
                      goto LABEL_780;
                    }

LABEL_528:
                    v47 = *(v30 + v92);
                    goto LABEL_681;
                  }

                  v70 = *(v30 + v14);
                  if (v33 <= v41)
                  {
                    if (v32 >= v70)
                    {
                      goto LABEL_781;
                    }

                    goto LABEL_528;
                  }

                  if (v32 < v70)
                  {
                    goto LABEL_528;
                  }

                  if (v33 <= v70 || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
                  {
                    goto LABEL_781;
                  }

                  v71 = *(v30 + v15);
                  goto LABEL_739;
                }

                if (v33 > v40)
                {
                  if (v32 < *(v30 + v92))
                  {
                    v63 = *(v30 + v15);
                    if (v32 < v63)
                    {
                      v47 = *(v30 + v14);
                      goto LABEL_681;
                    }

                    if (v33 <= v63 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
                    {
                      goto LABEL_781;
                    }

                    v82 = *(v30 - 3);
                    goto LABEL_772;
                  }

                  if (v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
                  {
                    goto LABEL_781;
                  }

                  goto LABEL_736;
                }

                v76 = *(v30 + v15);
                if (v32 < v76)
                {
                  if (v32 >= *(v30 + v14))
                  {
                    goto LABEL_781;
                  }

                  goto LABEL_528;
                }

                if (v33 <= v76 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
                {
                  goto LABEL_781;
                }

                goto LABEL_703;
              }

              if (v33 <= v39)
              {
                v67 = *(v30 - 3);
                if (v32 < v67)
                {
                  if (v32 >= *(v30 + v15) || v32 >= *(v30 + v14))
                  {
                    goto LABEL_781;
                  }

                  v42 = -v22;
                  if (v32 < *(v30 + v92))
                  {
                    goto LABEL_780;
                  }

                  if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19))
                  {
                    goto LABEL_781;
                  }

                  goto LABEL_318;
                }

                if (v33 <= v67 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 + v15))
                {
                  goto LABEL_781;
                }

                v75 = *(v30 + v14);
                goto LABEL_450;
              }

              v58 = *(v30 + v14);
              if (v32 < v58)
              {
                v59 = *(v30 - 3);
                if (v32 < v59)
                {
                  if (v32 >= *(v30 + v15))
                  {
                    goto LABEL_781;
                  }

                  v42 = -v22;
                  if (v32 < *(v30 + v92))
                  {
                    goto LABEL_780;
                  }

                  if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4) || v32 >= *(v30 + v19))
                  {
                    goto LABEL_781;
                  }

LABEL_318:
                  if (v32 >= *(v30 + v17))
                  {
                    goto LABEL_781;
                  }

                  v47 = *(v30 + v16);
                  goto LABEL_681;
                }

                if (v33 <= v59 || v33 <= *(v30 + v21) || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17))
                {
                  goto LABEL_781;
                }

                v79 = *(v30 + v16);
                goto LABEL_536;
              }

              if (v33 > v58)
              {
                if (v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
                {
                  goto LABEL_781;
                }

                v75 = *(v30 + v15);
LABEL_450:
                if (v33 <= v75)
                {
                  goto LABEL_781;
                }

                v42 = v22;
                if (v33 > *(v30 + v21))
                {
                  goto LABEL_780;
                }

                goto LABEL_740;
              }

              if (v33 <= *(v30 + v21) || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
              {
                goto LABEL_781;
              }

LABEL_535:
              v79 = *(v30 - 3);
LABEL_536:
              if (v33 <= v79)
              {
                goto LABEL_781;
              }

              goto LABEL_537;
            }

            if (v33 <= v38)
            {
              v61 = *(v30 + v16);
              if (v32 < v61)
              {
                if (v32 >= *(v30 - 3) || v32 >= *(v30 + v15))
                {
                  goto LABEL_781;
                }

                if (v32 >= *(v30 + v14))
                {
                  if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4))
                  {
                    goto LABEL_781;
                  }
                }

                else
                {
                  v42 = -v22;
                  if (v32 < *(v30 + v92))
                  {
                    goto LABEL_780;
                  }

                  if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4))
                  {
                    goto LABEL_781;
                  }
                }

                goto LABEL_611;
              }

              if (v33 <= v61 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
              {
                goto LABEL_781;
              }
            }

            else
            {
              v54 = *(v30 + v15);
              if (v32 < v54)
              {
                v55 = *(v30 + v16);
                if (v32 < v55)
                {
                  if (v32 >= *(v30 - 3))
                  {
                    goto LABEL_781;
                  }

                  if (v32 >= *(v30 + v14))
                  {
                    if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4))
                    {
                      goto LABEL_781;
                    }
                  }

                  else
                  {
                    v42 = -v22;
                    if (v32 < *(v30 + v92))
                    {
                      goto LABEL_780;
                    }

                    if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20) || v32 >= *(v30 - 3 * a4))
                    {
                      goto LABEL_781;
                    }
                  }

LABEL_611:
                  if (v32 >= *(v30 + v19))
                  {
                    goto LABEL_781;
                  }

                  v47 = *(v30 + v17);
                  goto LABEL_681;
                }

                if (v33 <= v55 || v33 <= *(v30 + v23) || v33 <= *(v30 + v21) || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19))
                {
                  goto LABEL_781;
                }

                v74 = *(v30 + v17);
                goto LABEL_430;
              }

              if (v33 <= v54)
              {
                if (v33 <= *(v30 + v23) || v33 <= *(v30 + v21) || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17))
                {
                  goto LABEL_781;
                }

                v74 = *(v30 + v16);
LABEL_430:
                if (v33 <= v74)
                {
                  goto LABEL_781;
                }

                v51 = *(v30 - 3);
                goto LABEL_779;
              }

              if (v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v19) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
              {
                goto LABEL_781;
              }
            }

            if (v33 > *(v30 + v21))
            {
              v42 = v22;
              if (v33 > *(v30 + v23))
              {
                goto LABEL_780;
              }

LABEL_773:
              v51 = *(v30 + v14);
              goto LABEL_779;
            }
          }

LABEL_703:
          v71 = *(v30 + v14);
LABEL_739:
          if (v33 <= v71)
          {
            goto LABEL_781;
          }

LABEL_740:
          v51 = *(v30 + v92);
          goto LABEL_779;
        }

        v48 = *(v30 + v19);
        if (v33 <= v36)
        {
          if (v32 < v48)
          {
            if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 - 3))
            {
              if (v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v15))
            {
              if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v14))
            {
              if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            else
            {
              v42 = -v22;
              if (v32 < *(v30 + v92))
              {
                goto LABEL_780;
              }

              if (v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

LABEL_584:
            if (v32 >= *(v30 + v20))
            {
              goto LABEL_781;
            }

            v47 = *(v30 - 3 * a4);
            goto LABEL_681;
          }

          if (v33 <= v48 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v17) || v33 <= *(v30 + v16))
          {
            goto LABEL_781;
          }

          if (v33 > *(v30 + v21))
          {
            if (v33 > *(v30 + v23))
            {
              if (v33 > *(v30 + 3))
              {
                v42 = v22;
                if (v33 > *(v30 + v24))
                {
                  goto LABEL_780;
                }

                goto LABEL_645;
              }

              goto LABEL_692;
            }

            if (v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

            goto LABEL_695;
          }

          if (v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
          {
            goto LABEL_781;
          }
        }

        else
        {
          if (v32 < v48)
          {
            if (v32 >= *(v30 + v17) || v32 >= *(v30 + v16))
            {
              goto LABEL_781;
            }

            if (v32 >= *(v30 - 3))
            {
              if (v32 >= *(v30 + v24) || v32 >= *(v30 + 3) || v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            else if (v32 >= *(v30 + v15))
            {
              if (v32 >= *(v30 + 3) || v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            else
            {
              if (v32 < *(v30 + v14))
              {
                v42 = -v22;
                if (v32 < *(v30 + v92))
                {
                  goto LABEL_780;
                }

                if (v32 >= *(v30 + v21) || v32 >= *(v30 + v20))
                {
                  goto LABEL_781;
                }

                v47 = *(v30 - 3 * a4);
                goto LABEL_681;
              }

              if (v32 >= *(v30 + v23) || v32 >= *(v30 + v21))
              {
                goto LABEL_781;
              }
            }

            goto LABEL_584;
          }

          if (v33 <= v48 || v33 <= *(v30 + v20) || v33 <= *(v30 - 3 * a4) || v33 <= *(v30 + v17))
          {
            goto LABEL_781;
          }

          if (v33 > *(v30 + v21))
          {
            if (v33 > *(v30 + v23))
            {
              if (v33 > *(v30 + 3))
              {
                v42 = v22;
                if (v33 > *(v30 + v24))
                {
                  goto LABEL_780;
                }

                goto LABEL_644;
              }

              if (v33 <= *(v30 + v16))
              {
                goto LABEL_781;
              }

LABEL_692:
              if (v33 <= *(v30 - 3))
              {
                goto LABEL_781;
              }

              goto LABEL_693;
            }

            if (v33 <= *(v30 + v16) || v33 <= *(v30 - 3))
            {
              goto LABEL_781;
            }

            goto LABEL_695;
          }

          if (v33 <= *(v30 + v16) || v33 <= *(v30 - 3) || v33 <= *(v30 + v15))
          {
            goto LABEL_781;
          }
        }
      }

      if (v33 <= *(v30 + v14))
      {
        goto LABEL_781;
      }

      goto LABEL_654;
    }

LABEL_817:
    ++v22;
  }

  while (v22 != v13);
  v91 = v11;
LABEL_820:

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::resize(a6, v91);
}