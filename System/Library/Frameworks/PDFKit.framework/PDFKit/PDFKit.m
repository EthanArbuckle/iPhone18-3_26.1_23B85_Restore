uint64_t sub_1C1CB1F60()
{
  v16 = sub_1C1D6C38C();
  v1 = *(v16 - 8);
  v17 = *(v1 + 80);
  v2 = (v17 + 24) & ~v17;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1C1D6C27C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910) - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v15 = *(v9 + 64);

  (*(v1 + 8))(v0 + v2, v16);

  (*(v5 + 8))(v0 + v7, v4);
  v12 = sub_1C1D6C2CC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v11, 1, v12))
  {
    (*(v13 + 8))(v0 + v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v15 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v6 | v10 | 7);
}

void sub_1C1CB3508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  objc_sync_exit(v25);

  applesauce::CF::ObjectRef<__CVBuffer *>::~ObjectRef(&a16);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CVBuffer *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1C1CB3A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGColorSpace *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

PDFQuadPoints *PDFQuadPoints::boundingBox(PDFQuadPoints *this)
{
  v19 = *MEMORY[0x1E69E9840];
  y = this->var0.y;
  v2 = this->var1.y;
  v15 = y;
  v16 = v2;
  v3 = this->var2.y;
  v4 = this->var3.y;
  v17 = v3;
  v18 = v4;
  v5 = 8;
  v6 = y;
  do
  {
    if (*(&v15 + v5) < v6)
    {
      v6 = *(&v15 + v5);
    }

    v5 += 8;
  }

  while (v5 != 32);
  v15 = y;
  v16 = v2;
  v7 = 8;
  v17 = v3;
  v18 = v4;
  do
  {
    if (y < *(&v15 + v7))
    {
      y = *(&v15 + v7);
    }

    v7 += 8;
  }

  while (v7 != 32);
  x = this->var0.x;
  v9 = this->var1.x;
  v15 = x;
  v16 = v9;
  v10 = this->var2.x;
  v11 = this->var3.x;
  v17 = v10;
  v18 = v11;
  v12 = 8;
  v13 = x;
  do
  {
    if (*(&v15 + v12) < v13)
    {
      v13 = *(&v15 + v12);
    }

    v12 += 8;
  }

  while (v12 != 32);
  v15 = x;
  v16 = v9;
  v14 = 8;
  v17 = v10;
  v18 = v11;
  do
  {
    if (x < *(&v15 + v14))
    {
      x = *(&v15 + v14);
    }

    v14 += 8;
  }

  while (v14 != 32);
  return this;
}

void sub_1C1CB4230(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C1CB445C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C1CB47A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v12 = va_arg(va4, const void *);
  applesauce::CF::ObjectRef<CGPDFDocument *>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(va1);
  applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(va2);
  applesauce::CF::ObjectRef<CGDataConsumer *>::~ObjectRef(va3);
  applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(va4);

  _Unwind_Resume(a1);
}

void sub_1C1CB52B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

double PDFQuadPoints::getSideLengths(PDFQuadPoints *this)
{
  x = this->var1.x;
  y = this->var1.y;
  v4 = this->var0.x;
  v5 = this->var0.y;
  v11 = hypot(x - this->var0.x, y - v5);
  v6 = this->var2.x;
  v7 = this->var2.y;
  hypot(v4 - v6, v5 - v7);
  v9 = this->var3.x;
  v8 = this->var3.y;
  hypot(v9 - v6, v8 - v7);
  hypot(x - v9, y - v8);
  return v11;
}

const void **applesauce::CF::ObjectRef<__CTLine const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CTFont const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

id getCRFormFieldOutputRegionClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRFormFieldOutputRegionClass(void)::softClass;
  v7 = getCRFormFieldOutputRegionClass(void)::softClass;
  if (!getCRFormFieldOutputRegionClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL31getCRFormFieldOutputRegionClassv_block_invoke;
    v3[3] = &unk_1E8150870;
    v3[4] = &v4;
    ___ZL31getCRFormFieldOutputRegionClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C1CB60C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL17getVNSessionClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNSessionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL17getVNSessionClassv_block_invoke_cold_1();
    VisionLibrary();
  }
}

void VisionLibrary(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = ___ZL17VisionLibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8150890;
    v3 = 0;
    VisionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL17VisionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL35getVNRecognizeDocumentsRequestClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRecognizeDocumentsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRecognizeDocumentsRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL35getVNRecognizeDocumentsRequestClassv_block_invoke_cold_1();
    return ___ZL29getVNImageRequestHandlerClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL29getVNImageRequestHandlerClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = ___ZL29getVNImageRequestHandlerClassv_block_invoke_cold_1();
    std::vector<unsigned char>::__throw_length_error[abi:ne200100](v3);
  }

  getVNImageRequestHandlerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81507C8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C1CB71E0(_Unwind_Exception *exception_object)
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

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

unsigned __int8 *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned char *>>(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if ((a3 - result) < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v46 = result[1];
      v47 = *(a3 - 1);
      if (v46 >= v47)
      {
        v48 = *(a3 - 1);
      }

      else
      {
        v48 = result[1];
      }

      if (v46 <= v47)
      {
        LOBYTE(v46) = *(a3 - 1);
      }

      *(a3 - 1) = v46;
      result[1] = v48;
      v49 = *(a3 - 1);
      v50 = *result;
      if (v49 >= v50)
      {
        v51 = *result;
      }

      else
      {
        v51 = *(a3 - 1);
      }

      if (v49 <= v50)
      {
        LOBYTE(v49) = *result;
      }

      *(a3 - 1) = v49;
      v52 = result[1];
      if (v51 >= v52)
      {
        *result = v52;
        LOBYTE(v52) = v51;
      }

      result[1] = v52;
      return result;
    }

    if (v3 == 2)
    {
      v53 = *(a3 - 1);
      v54 = *result;
      if (v53 < v54)
      {
        *result = v53;
        *(a3 - 1) = v54;
      }

      return result;
    }

    if (v3 <= 7)
    {
      return std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned char *>>(result, a3);
    }

    v4 = &result[v3 >> 1];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (v7 >= v6)
    {
      v8 = *(a3 - 1);
    }

    else
    {
      v8 = *v4;
    }

    if (v7 <= v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (v10 >= v11)
    {
      v12 = *result;
    }

    else
    {
      v12 = *v5;
    }

    if (v10 <= v11)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    if (v12 < v14)
    {
      v15 = *v4;
    }

    else
    {
      *result = v14;
      v15 = v12;
    }

    *v4 = v15;
    v18 = v7 >= v6 || v10 >= v11 || v12 >= v14;
    v19 = *result;
    if (v19 >= v15)
    {
      v20 = a3 - 1;
      while (--v20 != result)
      {
        v21 = *v20;
        if (v21 < v15)
        {
          *result = v21;
          *v20 = v19;
          if (v18)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_39;
        }
      }

      v34 = result + 1;
      v35 = *v5;
      if (v19 >= v35)
      {
        while (v34 != v5)
        {
          v36 = *v34;
          if (v19 < v36)
          {
            *v34++ = v35;
            *v5 = v36;
            goto LABEL_71;
          }

          ++v34;
        }

        return result;
      }

LABEL_71:
      if (v34 == v5)
      {
        return result;
      }

      while (1)
      {
        v40 = *result;
        do
        {
          v42 = *v34++;
          v41 = v42;
        }

        while (v40 >= v42);
        v43 = v34 - 1;
        do
        {
          v45 = *--v5;
          v44 = v45;
        }

        while (v40 < v45);
        if (v43 >= v5)
        {
          break;
        }

        *v43 = v44;
        *v5 = v41;
      }

      result = v34 - 1;
      if (v43 > a2)
      {
        return result;
      }
    }

    else
    {
      v20 = a3 - 1;
LABEL_39:
      v22 = result + 1;
      if (result + 1 >= v20)
      {
        v27 = result + 1;
      }

      else
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v4;
          do
          {
            v26 = *v23++;
            v25 = v26;
          }

          while (v26 < v24);
          v27 = v23 - 1;
          do
          {
            v29 = *--v20;
            v28 = v29;
          }

          while (v29 >= v24);
          if (v27 >= v20)
          {
            break;
          }

          *v27 = v28;
          *v20 = v25;
          ++v18;
          if (v27 == v4)
          {
            v4 = v20;
          }
        }
      }

      if (v27 != v4)
      {
        v30 = *v4;
        v31 = *v27;
        if (v30 < v31)
        {
          *v27 = v30;
          *v4 = v31;
          ++v18;
        }
      }

      if (v27 == a2)
      {
        return result;
      }

      if (!v18)
      {
        if (v27 <= a2)
        {
          v37 = v27 + 1;
          while (v37 != a3)
          {
            v38 = *v37;
            v39 = *(v37++ - 1);
            if (v38 < v39)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          while (v22 != v27)
          {
            v32 = *v22;
            v33 = *(v22++ - 1);
            if (v32 < v33)
            {
              goto LABEL_55;
            }
          }
        }

        return result;
      }

LABEL_55:
      if (v27 <= a2)
      {
        result = v27 + 1;
      }

      else
      {
        a3 = v27;
      }
    }
  }

  return result;
}

unsigned __int8 *std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned char *>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  while (result != a2 - 1)
  {
    v2 = result++;
    if (v2 != a2 && result != a2)
    {
      v3 = *v2;
      v4 = result;
      v5 = v2;
      v6 = result;
      do
      {
        v8 = *v6++;
        v7 = v8;
        if (v8 < v3)
        {
          v3 = v7;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v2)
      {
        v9 = *v2;
        *v2 = *v5;
        *v5 = v9;
      }
    }
  }

  return result;
}

Class ___ZL40getVNRecognizedTextBlockObservationClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRecognizedTextBlockObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRecognizedTextBlockObservationClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL40getVNRecognizedTextBlockObservationClassv_block_invoke_cold_1();
    return PDFQuadPoints::PDFQuadPoints(v3, v4);
  }

  return result;
}

void PDFQuadPoints::PDFQuadPoints(PDFQuadPoints *this, CRNormalizedQuad *a2)
{
  v3 = a2;
  [(CRNormalizedQuad *)v3 topLeft];
  this->var0.x = v4;
  this->var0.y = v5;
  [(CRNormalizedQuad *)v3 topRight];
  this->var1.x = v6;
  this->var1.y = v7;
  [(CRNormalizedQuad *)v3 bottomLeft];
  this->var2.x = v8;
  this->var2.y = v9;
  [(CRNormalizedQuad *)v3 bottomRight];
  this->var3.x = v10;
  this->var3.y = v11;
}

float64x2_t PDFQuadPoints::applyTransform(PDFQuadPoints *this, const CGAffineTransform *a2)
{
  this->var0 = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, this->var0.y), *&a2->a, this->var0.x));
  this->var1 = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, this->var1.y), *&a2->a, this->var1.x));
  this->var2 = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, this->var2.y), *&a2->a, this->var2.x));
  result = vaddq_f64(*&a2->tx, vmlaq_n_f64(vmulq_n_f64(*&a2->c, this->var3.y), *&a2->a, this->var3.x));
  this->var3 = result;
  return result;
}

Class ___ZL31getCRFormFieldOutputRegionClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TextRecognitionLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL26TextRecognitionLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E81508C8;
    v6 = 0;
    TextRecognitionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TextRecognitionLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("CRFormFieldOutputRegion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL31getCRFormFieldOutputRegionClassv_block_invoke_cold_1();
  }

  getCRFormFieldOutputRegionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26TextRecognitionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  TextRecognitionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

const void **applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGDataConsumer *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGPDFDocument *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CTFontDescriptor const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFAttributedString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1C1CB8D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PDFAnnotationCGPathApplierFunc(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = [v23 objectForKey:@"bounds"];
  [v3 PDFKitPDFRectValue];
  v5 = v4;
  v7 = v6;

  v8 = [v23 objectForKey:@"elementCount"];
  v9 = [v8 integerValue];

  v10 = [v23 objectForKey:@"pathArray"];
  v11 = *(a2 + 8);
  v12 = MEMORY[0x1E695EFF8];
  v13 = (MEMORY[0x1E695EFF8] + 8);
  v14 = *a2;
  if (*a2 <= 1)
  {
    if (v14 == 1)
    {
      v12 = *(a2 + 8);
      v13 = v11 + 1;
    }

    if (!v14)
    {
      v12 = *(a2 + 8);
      v13 = v11 + 1;
    }
  }

  else
  {
    switch(v14)
    {
      case 2:
        v12 = v11 + 2;
        v13 = v11 + 3;
        break;
      case 3:
        v12 = v11 + 4;
        v13 = v11 + 5;
        break;
      case 4:
        if (v9 < 1)
        {
          goto LABEL_18;
        }

        v15 = [v23 objectForKey:@"firstPoint"];
        [v15 PDFKitPDFPointValue];
        v17 = v16;
        v19 = v18;
        goto LABEL_16;
    }
  }

  v19 = *v13;
  v17 = *v12;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v17, *v13}];
    [v23 setObject:v15 forKey:@"firstPoint"];
LABEL_16:
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v5 + v17];
  [v10 addObject:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v7 + v19];
  [v10 addObject:v21];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v9 + 1];
  [v23 setObject:v22 forKey:@"elementCount"];

LABEL_18:
}

BOOL getStreams(const char *a1, uint64_t a2, uint64_t a3)
{
  if (!strcmp(a1, "Off"))
  {
    v5 = 16;
  }

  else
  {
    *(a3 + 24) = a1;
    v5 = 8;
  }

  v6 = *a3;

  return CGPDFDictionaryGetStream(v6, a1, (a3 + v5));
}

void sub_1C1CCF4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCRNormalizedQuadClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TextRecognitionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TextRecognitionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8150C98;
    v6 = 0;
    TextRecognitionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TextRecognitionLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CRNormalizedQuad");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRNormalizedQuadClass_block_invoke_cold_1();
  }

  getCRNormalizedQuadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextRecognitionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TextRecognitionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVKCFormRegionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionKitCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8150CB0;
    v6 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VKCFormRegion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCFormRegionClass_block_invoke_cold_1();
  }

  getVKCFormRegionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C1CD2F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CGPDFDictionaryCreateNSDictionary(CGPDFDictionary *a1)
{
  v2 = objc_opt_new();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CGPDFDictionaryCreateNSDictionary_block_invoke;
  block[3] = &unk_1E8150B70;
  v3 = v2;
  v6 = v3;
  CGPDFDictionaryApplyBlock(a1, block, 0);

  return v3;
}

uint64_t __CGPDFDictionaryCreateNSDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v7 = CGPDFDictionaryCreateNSObject(a3, Mutable);
  if (a2)
  {
    v8 = CGPDFDictionaryKeyString(a2);
    v9 = *(a1 + 32);
    if (v7)
    {
      [v9 setValue:v7 forKey:v8];
    }

    else
    {
      [v9 removeObjectForKey:v8];
    }
  }

  CFRelease(Mutable);

  return 1;
}

id CGPDFDictionaryCreateNSObject(void *value, CFSetRef theSet)
{
  v2 = 0;
  if (value && theSet)
  {
    if (CFSetContainsValue(theSet, value))
    {
LABEL_4:
      v2 = 0;
      goto LABEL_16;
    }

    CFSetAddValue(theSet, value);
    valuea = 0;
    v31 = 0.0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeBoolean, &valuea))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:valuea != 0];
LABEL_15:
      v2 = v5;
      goto LABEL_16;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeInteger, &v32))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
      goto LABEL_15;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeReal, &v31))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
      goto LABEL_15;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeName, &v30))
    {
      v5 = CGPDFDictionaryKeyString(v30);
      goto LABEL_15;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeString, &v29))
    {
      v5 = CGPDFStringCopyTextString(v29);
      goto LABEL_15;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeStream, &v26))
    {
      Dictionary = CGPDFStreamGetDictionary(v26);
      __s1 = 0;
      if (!CGPDFDictionaryGetName(Dictionary, "Type", &__s1) || strncmp(__s1, "Data", 4uLL))
      {
        goto LABEL_4;
      }

      v5 = CGPDFStreamCopyData(v26, 0);
      goto LABEL_15;
    }

    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeArray, &v28))
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = v28;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __CGPDFDictionaryCreateNSObject_block_invoke;
      block[3] = &unk_1E8150D68;
      v24 = theSet;
      v2 = v8;
      v23 = v2;
      CGPDFArrayApplyBlock(v9, block, 0);
      v10 = v23;
    }

    else
    {
      if (!CGPDFObjectGetValue(value, kCGPDFObjectTypeDictionary, &v27))
      {
        Type = CGPDFObjectGetType(value);
        _PDFLog(OS_LOG_TYPE_DEBUG, "PDFCGUtilities", "CGPDFDictionaryCreateNSObject: Encountered unknown CGPDFObject of type: %d", v14, v15, v16, v17, v18, Type);
        goto LABEL_4;
      }

      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = v27;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __CGPDFDictionaryCreateNSObject_block_invoke_2;
      v19[3] = &unk_1E8150D90;
      v21 = theSet;
      v2 = v11;
      v20 = v2;
      CGPDFDictionaryApplyBlock(v12, v19, 0);
      v10 = v20;
    }
  }

LABEL_16:

  return v2;
}

id CGPDFDictionaryKeyString(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
    if (v1)
    {
      v2 = [@"/" stringByAppendingString:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __CGPDFDictionaryCreateNSObject_block_invoke(uint64_t a1, int a2, void *value)
{
  v4 = CGPDFDictionaryCreateNSObject(value, *(a1 + 40));
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

uint64_t __CGPDFDictionaryCreateNSObject_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = CGPDFDictionaryKeyString(a2);
    if (v5)
    {
      v6 = CGPDFDictionaryCreateNSObject(a3, *(a1 + 40));
      if (v6)
      {
        [*(a1 + 32) setObject:v6 forKey:v5];
      }
    }
  }

  return 1;
}

void sub_1C1CD67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1C1CD6A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  std::mutex::unlock((v20 + 48));

  _Unwind_Resume(a1);
}

void sub_1C1CD6EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23)
{
  std::mutex::unlock((v23 + 48));

  _Unwind_Resume(a1);
}

void sub_1C1CD7278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  std::mutex::unlock((v13 + 48));

  _Unwind_Resume(a1);
}

void sub_1C1CD73E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1C1CD7B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va6, a4);
  va_start(va5, a4);
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v16 = va_arg(va5, const void *);
  va_copy(va6, va5);
  v18 = va_arg(va6, const void *);
  applesauce::CF::ObjectRef<CGPDFDocument *>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(va1);
  applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(va2);
  applesauce::CF::ObjectRef<CGDataConsumer *>::~ObjectRef(va3);
  applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(va4);
  applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(va5);
  applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(va6);

  _Unwind_Resume(a1);
}

void sub_1C1CD88C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFTypeRef cf, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id quadTransformedWithAffineTransform(void *a1, double *a2)
{
  v3 = a1;
  [v3 topLeft];
  v5 = v4;
  v7 = v6;
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[3];
  v51 = a2[2];
  v11 = a2[5];
  v50 = a2[4];
  [v3 bottomLeft];
  v13 = v12;
  v15 = v14;
  v46 = v11;
  v47 = v10;
  v48 = v9;
  v49 = v8;
  v44 = *a2;
  v45 = a2[1];
  v40 = a2[4];
  v41 = a2[2];
  v42 = a2[5];
  v43 = a2[3];
  [v3 topRight];
  v17 = v16;
  v19 = v18;
  v38 = *a2;
  v39 = a2[1];
  v34 = a2[4];
  v35 = a2[2];
  v36 = a2[5];
  v37 = a2[3];
  [v3 bottomRight];
  v21 = v20;
  v23 = v22;
  v32 = *a2;
  v33 = a2[1];
  v28 = a2[4];
  v29 = a2[2];
  v30 = a2[5];
  v31 = a2[3];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2050000000;
  v24 = getVKQuadClass(void)::softClass;
  v56 = getVKQuadClass(void)::softClass;
  if (!getVKQuadClass(void)::softClass)
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = ___ZL14getVKQuadClassv_block_invoke;
    v52[3] = &unk_1E8150870;
    v52[4] = &v53;
    ___ZL14getVKQuadClassv_block_invoke(v52);
    v24 = v54[3];
  }

  v25 = v24;
  _Block_object_dispose(&v53, 8);
  v26 = [[v24 alloc] initWithTopLeft:v50 + v7 * v51 + v48 * v5 topRight:v46 + v7 * v47 + v49 * v5 bottomLeft:v34 + v19 * v35 + v38 * v17 bottomRight:{v36 + v19 * v37 + v39 * v17, v40 + v15 * v41 + v44 * v13, v42 + v15 * v43 + v45 * v13, v28 + v23 * v29 + v32 * v21, v30 + v23 * v31 + v33 * v21}];

  return v26;
}

void sub_1C1CD8D04(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1C1CD91C8(_Unwind_Exception *a1)
{
  CGBuf::~CGBuf((v1 + 392));

  _Unwind_Resume(a1);
}

void divideQuadSideIntoSegments(void *a1, uint64_t a2, double *a3)
{
  v5 = a1;
  v18 = v5;
  if (a2)
  {
    [v5 topRight];
    v16 = v7;
    v17 = v6;
    [v18 bottomRight];
  }

  else
  {
    [v5 topLeft];
    v16 = v11;
    v17 = v10;
    [v18 bottomLeft];
  }

  v12 = vdupq_lane_s64(*&v16, 0);
  v13 = vdupq_lane_s64(*&v17, 0);
  v21.val[0] = vmlaq_n_f64(v13, xmmword_1C1D79B10, v8 - v17);
  v21.val[1] = vmlaq_n_f64(v12, xmmword_1C1D79B10, v9 - v16);
  v14 = a3 + 2;
  vst2q_f64(v14, v21);
  *a3 = v17;
  a3[1] = v16;
  v20.val[0] = vmlaq_n_f64(v13, xmmword_1C1D79B20, v8 - v17);
  v20.val[1] = vmlaq_n_f64(v12, xmmword_1C1D79B20, v9 - v16);
  v15 = a3 + 6;
  vst2q_f64(v15, v20);
  a3[10] = v8;
  a3[11] = v9;
}

void sub_1C1CD95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::destroy(&a19, a20);

  _Unwind_Resume(a1);
}

void ___ZL23getVKImageAnalyzerClassv_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VKImageAnalyzer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKImageAnalyzerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL23getVKImageAnalyzerClassv_block_invoke_cold_1();
    VisionKitCoreLibrary();
  }
}

void VisionKitCoreLibrary(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = ___ZL24VisionKitCoreLibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8150EC8;
    v3 = 0;
    VisionKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL24VisionKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL30getVKImageAnalyzerRequestClassv_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKImageAnalyzerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKImageAnalyzerRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL30getVKImageAnalyzerRequestClassv_block_invoke_cold_1();
    return CGBuf::CGBuf(v3, v4);
  }

  return result;
}

void CGBuf::CGBuf(CGBuf *this, const CGBuf *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4)
  {
    if (atomic_load_explicit(v4, memory_order_acquire) <= 0)
    {
      CGBuf::CGBuf();
    }

    atomic_fetch_add(v4, 1uLL);
  }

  *(this + 1) = CGImageRetain(*(a2 + 1));
  *(this + 2) = CGContextRetain(*(a2 + 2));
  *(this + 24) = *(a2 + 24);
  v5 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  v6 = CGColorSpaceRetain(v5);
  v7 = *(a2 + 7);
  *(this + 6) = v6;
  *(this + 7) = v7;
  if (v7)
  {
    *(this + 7) = this + 64;
    v8 = *(a2 + 326);
    if ((*(a2 + 80) & 0x1Fu) - 1 < 4)
    {
      ++v8;
    }

    memcpy(this + 64, *(a2 + 7), 16 * v8);
  }

  *(this + 80) = *(a2 + 80);
  *(this + 81) = *(a2 + 81);
}

void CGBuf::~CGBuf(CGBuf *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CGColorSpaceRelease(v2);
  }

  *(this + 6) = 0;
  v3 = *this;
  if (*this)
  {
    add = atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL);
    if (add <= 0)
    {
      _CGHandleAssert();
    }

    else if (add == 1)
    {
      CGBufferStorage::~CGBufferStorage(v3);
    }
  }

  *this = 0;
  v5 = *(this + 1);
  if (v5)
  {
    CGImageRelease(v5);
  }

  *(this + 1) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    CGContextRelease(v6);
  }

  *(this + 2) = 0;
}

void CGBufferStorage::~CGBufferStorage(atomic_ullong *this)
{
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    _CGHandleAssert();
  }

  v2 = this[9];
  if (v2)
  {
    v2(this[10], this[2]);
  }

  v3 = this[8];
  if (v3)
  {
    v3(this, this[6]);
  }
}

const void **___ZL14getVKQuadClassv_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKQuad");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKQuadClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL14getVKQuadClassv_block_invoke_cold_1();
    return applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(v3);
  }

  return result;
}

void std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<double const,applesauce::CF::ObjectRef<__CTFont const*>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<double const,applesauce::CF::ObjectRef<__CTFont const*>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t *std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::__emplace_unique_key_args<double,double &,applesauce::CF::ObjectRef<__CTFont const*>&>(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::__map_value_compare<double,std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,std::less<double>,true>,std::allocator<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<double,applesauce::CF::ObjectRef<__CTFont const*>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<double const,applesauce::CF::ObjectRef<__CTFont const*>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::pair<double const,applesauce::CF::ObjectRef<__CTFont const*>>::pair[abi:ne200100]<double &,applesauce::CF::ObjectRef<__CTFont const*>&,0>(void *a1, void *a2, CFTypeRef *a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  a1[1] = v4;
  return a1;
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

const void **applesauce::CF::ObjectRef<CGPath *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<double,PDFAnnotation * {__strong}>,std::__map_value_compare<double,std::__value_type<double,PDFAnnotation * {__strong}>,std::less<double>,true>,std::allocator<std::__value_type<double,PDFAnnotation * {__strong}>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<double,PDFAnnotation * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<double,PDFAnnotation * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1C1CDC178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PDFPageEvaluator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C1CDC278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<CGPDFScanner,std::function<void ()(CGPDFScanner*)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(CGPDFScanner *)>::~__value_func[abi:ne200100](v5 + 8);
  _Unwind_Resume(a1);
}

void sub_1C1CDC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(CGPDFScanner *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(CGPDFScanner *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *std::unique_ptr<CGPDFScanner,std::function<void ()(CGPDFScanner*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(CGPDFScanner *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(CGPDFScanner *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void sub_1C1CDE710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C1CDEAEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1C1CDEFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1CDF54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1CE0B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1CE0D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1CE1A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1CE26C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1CE60D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getIOSurfaceContextOptions_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F260];
  v3[0] = &unk_1F4184168;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = getIOSurfaceContextOptions_options;
  getIOSurfaceContextOptions_options = v0;
}

void sub_1C1CEE154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PDFPageLayerTileRectFromPoints(__n128 a1, __n128 a2, double a3, double a4)
{
  v4 = a3 - a1.n128_f64[0];
  if (v4 >= 0.0)
  {
    v5 = a4 - a2.n128_f64[0];
    if (v5 >= 0.0)
    {
      return PDFRectMake(a1, a2, v4, v5);
    }
  }

  return result;
}

void sub_1C1CF6640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C1CFA3C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C1CFA4D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C1CFA78C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C1CFA854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PDFDocumentView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C1CFB220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void std::vector<CGRect>::resize(void *a1, unint64_t a2)
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
    std::vector<CGRect>::__append(a1, a2 - v2);
  }
}

void sub_1C1CFBD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31)
{
  std::__tree<unsigned long>::destroy(&a27, a28);
  std::__tree<unsigned long>::destroy(&a30, a31);

  _Unwind_Resume(a1);
}

void sub_1C1CFC244(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C1CFD524(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1C1CFD668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1C1CFDA78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::vector<CGRect>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__tree<unsigned long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long>::destroy(a1, *a2);
    std::__tree<unsigned long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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

void *std::set<unsigned long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<unsigned long>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1C1CFF97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

Class __getAFInsertionManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AutoFillCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AutoFillCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8151630;
    v6 = 0;
    AutoFillCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AutoFillCoreLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFInsertionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFInsertionManagerClass_block_invoke_cold_1();
  }

  getAFInsertionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AutoFillCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AutoFillCoreLibraryCore_frameworkLibrary = result;
  return result;
}

id _dictionaryForPDFDictionary(CGPDFDictionary *a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v7[0] = @"resultDict";
  v7[1] = @"visitedSet";
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  CGPDFDictionaryApplyFunction(a1, _iterateDictionaryValueCallback, v5);

  return v4;
}

void _iterateDictionaryValueCallback(uint64_t a1, CGPDFObject *a2, void *a3)
{
  v5 = a3;
  v10 = [v5 objectForKeyedSubscript:@"resultDict"];
  v6 = [v5 objectForKeyedSubscript:@"visitedSet"];

  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
  v8 = _objectForCGPDFObjectRefAndVisitedSet(a2, v6);
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    [v10 setObject:v9 forKeyedSubscript:v7];
  }
}

id _objectForCGPDFObjectRefAndVisitedSet(CGPDFObject *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 objectForKey:a1];

    if (v5)
    {
      v5 = 0;
      goto LABEL_28;
    }

    Type = CGPDFObjectGetType(a1);
    if (Type <= kCGPDFObjectTypeReal)
    {
      switch(Type)
      {
        case kCGPDFObjectTypeBoolean:
          LOBYTE(value) = 0;
          CGPDFObjectGetValue(a1, kCGPDFObjectTypeBoolean, &value);
          v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:value];
          break;
        case kCGPDFObjectTypeInteger:
          value = 0;
          CGPDFObjectGetValue(a1, kCGPDFObjectTypeInteger, &value);
          v7 = [MEMORY[0x1E696AD98] numberWithLong:value];
          break;
        case kCGPDFObjectTypeReal:
          value = 0;
          CGPDFObjectGetValue(a1, kCGPDFObjectTypeReal, &value);
          v7 = [MEMORY[0x1E696AD98] numberWithDouble:*&value];
          break;
        default:
          goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (Type <= kCGPDFObjectTypeString)
    {
      value = 0;
      if (Type == kCGPDFObjectTypeName)
      {
        CGPDFObjectGetValue(a1, kCGPDFObjectTypeName, &value);
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:value encoding:4];
      }

      else
      {
        CGPDFObjectGetValue(a1, kCGPDFObjectTypeString, &value);
        v7 = CGPDFStringCopyTextString(value);
      }

LABEL_27:
      v5 = v7;
      goto LABEL_28;
    }

    if (Type == kCGPDFObjectTypeArray)
    {
      v18 = 0;
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeArray, &v18);
      v10 = [MEMORY[0x1E695DFB0] null];
      [v4 setObject:v10 forKey:a1];

      v11 = v18;
      v12 = v4;
      Count = CGPDFArrayGetCount(v11);
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          value = 0;
          CGPDFArrayGetObject(v11, i, &value);
          v15 = _objectForCGPDFObjectRefAndVisitedSet(value, v12);
          if (v15)
          {
            [v5 setObject:v15 atIndexedSubscript:i];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v5 setObject:v16 atIndexedSubscript:i];
          }
        }
      }

      v9 = v12;
    }

    else
    {
      if (Type != kCGPDFObjectTypeDictionary)
      {
        goto LABEL_28;
      }

      value = 0;
      CGPDFObjectGetValue(a1, kCGPDFObjectTypeDictionary, &value);
      v8 = [MEMORY[0x1E695DFB0] null];
      [v4 setObject:v8 forKey:a1];

      v5 = _dictionaryForPDFDictionary(value, v4);
      v9 = v4;
    }

    [v9 removeObjectForKey:a1];
  }

LABEL_28:

  return v5;
}

void sub_1C1D06F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1D08E64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void highlightPath(CGContext *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5)
{
  v5 = vsubq_f64(*a4, *a2);
  v6 = vdupq_n_s64(0x3FB999999999999AuLL);
  *a2 = vmlaq_f64(*a2, v6, v5);
  *a4 = vmlsq_f64(*a4, v6, v5);
  *a3 = vmlaq_f64(*a3, v6, v5);
  v7 = vmlsq_f64(*a5, v6, v5);
  *a5 = v7;
  v9 = a2->f64[0];
  v8 = a2->f64[1];
  v10 = a3->f64[1];
  v11 = a3->f64[0] - a2->f64[0];
  v12 = v10 - v8;
  v13 = sqrt(v12 * v12 + v11 * v11);
  if (v13 != 0.0)
  {
    v19 = a4->f64[1];
    v20 = sqrt((v8 - v19) * (v8 - v19) + (v9 - a4->f64[0]) * (v9 - a4->f64[0])) / (v13 * 4.0);
    v21 = (v9 + a4->f64[0]) * 0.5;
    v22 = (v8 + v19) * 0.5;
    v34 = v22;
    v35 = v21;
    v23 = (v7.f64[0] + a3->f64[0]) * 0.5;
    v24 = (v7.f64[1] + v10) * 0.5;
    CGContextMoveToPoint(a1, v21, v22);
    CGContextAddCurveToPoint(a1, (v21 + a2->f64[0]) * 0.5, (v22 + a2->f64[1]) * 0.5, (a2->f64[0] + a2->f64[0] + v20 * v11) * 0.5, (a2->f64[1] + a2->f64[1] + v20 * v12) * 0.5, a2->f64[0] + v20 * v11, a2->f64[1] + v20 * v12);
    v25 = a3->f64[0] - v20 * v11;
    v26 = a3->f64[1] - v20 * v12;
    CGContextAddLineToPoint(a1, v25, v26);
    CGContextAddCurveToPoint(a1, (v25 + a3->f64[0]) * 0.5, (v26 + a3->f64[1]) * 0.5, (v23 + a3->f64[0]) * 0.5, (v24 + a3->f64[1]) * 0.5, v23, v24);
    CGContextAddCurveToPoint(a1, (v23 + a5->f64[0]) * 0.5, (v24 + a5->f64[1]) * 0.5, (a5->f64[0] + a5->f64[0] - v20 * v11) * 0.5, (a5->f64[1] + a5->f64[1] - v20 * v12) * 0.5, a5->f64[0] - v20 * v11, a5->f64[1] - v20 * v12);
    v27 = a4->f64[0] + v20 * v11;
    v28 = a4->f64[1] + v20 * v12;
    CGContextAddLineToPoint(a1, v27, v28);
    v29 = a4->f64[1];
    v30 = (v27 + a4->f64[0]) * 0.5;
    v31 = (v28 + v29) * 0.5;
    v32 = (v35 + a4->f64[0]) * 0.5;
    v33 = (v34 + v29) * 0.5;

    CGContextAddCurveToPoint(a1, v30, v31, v32, v33, v35, v34);
  }
}

void strikeOutPath(CGContext *a1, double *a2, double *a3, double *a4, double *a5)
{
  v6 = a2[1];
  v7 = a4[1];
  v8 = sqrt((v6 - v7) * (v6 - v7) + (*a2 - *a4) * (*a2 - *a4));
  v9 = (*a3 + *a5) * 0.5;
  v10 = (a3[1] + a5[1]) * 0.5;
  CGContextMoveToPoint(a1, (*a2 + *a4) * 0.5, (v6 + v7) * 0.5);
  CGContextAddLineToPoint(a1, v9, v10);
  v11 = v8 * 0.08;
  if (v8 * 0.08 < 1.0)
  {
    v11 = 1.0;
  }

  CGContextSetLineWidth(a1, v11);
}

void underlinePath(CGContext *a1, double *a2, CGFloat *a3, CGFloat *a4)
{
  v7 = sqrt((a2[1] - a3[1]) * (a2[1] - a3[1]) + (*a2 - *a3) * (*a2 - *a3)) * 0.08;
  if (v7 >= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  CGContextSetLineWidth(a1, v8);
  CGContextMoveToPoint(a1, *a3, a3[1] + v8);
  v9 = *a4;
  v10 = a4[1] + v8;

  CGContextAddLineToPoint(a1, v9, v10);
}

void redactPath(CGContext *a1, CGFloat *a2, double *a3, double *a4, double *a5, double a6)
{
  CGContextSaveGState(a1);
  v12 = *a4;
  v13 = a4[1];
  v14 = *a5;
  v15 = a5[1];
  if (v13 >= v15)
  {
    v16 = a5[1];
  }

  else
  {
    v16 = a4[1];
  }

  if (v13 >= v15)
  {
    v17 = a4[1];
  }

  else
  {
    v17 = a5[1];
  }

  if (v12 >= v14)
  {
    v18 = *a5;
  }

  else
  {
    v18 = *a4;
  }

  if (v12 >= v14)
  {
    v19 = *a4;
  }

  else
  {
    v19 = *a5;
  }

  v20 = a3[1];
  if (*a3 < v18)
  {
    v18 = *a3;
  }

  v21 = a2[1];
  if (*a2 < v18)
  {
    v18 = *a2;
  }

  if (v20 >= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = a3[1];
  }

  if (v21 < v22)
  {
    v22 = a2[1];
  }

  if (*a3 >= v19)
  {
    v19 = *a3;
  }

  if (*a2 >= v19)
  {
    v19 = *a2;
  }

  if (v20 >= v17)
  {
    v23 = a3[1];
  }

  else
  {
    v23 = v17;
  }

  if (v21 >= v23)
  {
    v23 = a2[1];
  }

  v24 = sqrt((v15 - v13) * (v15 - v13) + (v14 - v12) * (v14 - v12));
  if (v24 != 0.0)
  {
    v69 = *a2;
    v62 = a6;
    v25 = (v18 + v19) * 0.5;
    v26 = (v22 + v23) * 0.5;
    v27 = asin((v17 - v16) / v24);
    if (v13 > v21)
    {
      v27 = PDFDegToRad(180.0) - v27;
      v15 = a5[1];
      v13 = a4[1];
      v69 = *a2;
    }

    if (v15 <= v13)
    {
      v28 = v27;
    }

    else
    {
      v28 = -v27;
    }

    v73 = *(MEMORY[0x1E695EFD0] + 16);
    v75 = *MEMORY[0x1E695EFD0];
    *&v81.a = *MEMORY[0x1E695EFD0];
    *&v81.c = v73;
    v70 = *(MEMORY[0x1E695EFD0] + 32);
    *&v81.tx = v70;
    CGAffineTransformTranslate(&v82, &v81, v25, v26);
    v81 = v82;
    CGAffineTransformRotate(&v82, &v81, -v28);
    a = v82.a;
    b = v82.b;
    v29 = v82.b;
    c = v82.c;
    d = v82.d;
    v31 = v82.d;
    v64 = v82.tx;
    v33 = v82.tx;
    v34 = v26;
    ty = v82.ty;
    memset(&v82, 0, sizeof(v82));
    v81.a = a;
    v81.b = v29;
    v36 = a;
    v81.c = c;
    v81.d = v31;
    v37 = c;
    v81.tx = v33;
    v81.ty = ty;
    CGAffineTransformTranslate(&v82, &v81, -0.8, 0.8);
    v80 = v82;
    CGAffineTransformRotate(&v81, &v80, v28);
    v82 = v81;
    v63 = ty;
    v80 = v81;
    CGAffineTransformTranslate(&v81, &v80, -v25, -v34);
    v82 = v81;
    *a2 = vaddq_f64(*&v81.tx, vmlaq_n_f64(vmulq_n_f64(*&v81.c, a2[1]), *&v81.a, v69));
    memset(&v81, 0, sizeof(v81));
    v80.a = v36;
    v80.b = b;
    v80.c = v37;
    v80.d = d;
    v80.tx = v64;
    v80.ty = ty;
    CGAffineTransformTranslate(&v81, &v80, 0.8, 0.8);
    v79 = v81;
    CGAffineTransformRotate(&v80, &v79, v28);
    v81 = v80;
    v79 = v80;
    v38 = -v34;
    CGAffineTransformTranslate(&v80, &v79, -v25, -v34);
    v81 = v80;
    *a3 = vaddq_f64(*&v80.tx, vmlaq_n_f64(vmulq_n_f64(*&v80.c, a3[1]), *&v80.a, *a3));
    memset(&v80, 0, sizeof(v80));
    v79.a = v36;
    v79.b = b;
    v79.c = v37;
    v79.d = d;
    v79.tx = v64;
    v79.ty = v63;
    CGAffineTransformTranslate(&v80, &v79, -0.8, -0.8);
    v78 = v80;
    CGAffineTransformRotate(&v79, &v78, v28);
    v80 = v79;
    v78 = v79;
    CGAffineTransformTranslate(&v79, &v78, -v25, -v34);
    v80 = v79;
    *a4 = vaddq_f64(*&v79.tx, vmlaq_n_f64(vmulq_n_f64(*&v79.c, a4[1]), *&v79.a, *a4));
    memset(&v79, 0, sizeof(v79));
    v78.a = v36;
    v78.b = b;
    v60 = v37;
    v78.c = v37;
    v78.d = d;
    v78.tx = v64;
    v78.ty = v63;
    CGAffineTransformTranslate(&v79, &v78, 0.8, -0.8);
    v77 = v79;
    CGAffineTransformRotate(&v78, &v77, v28);
    v79 = v78;
    v77 = v78;
    v39 = -v25;
    CGAffineTransformTranslate(&v78, &v77, -v25, -v34);
    v79 = v78;
    *a5 = vaddq_f64(*&v78.tx, vmlaq_n_f64(vmulq_n_f64(*&v78.c, a5[1]), *&v78.a, *a5));
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, *a2, a2[1]);
    CGPathAddLineToPoint(Mutable, 0, *a3, a3[1]);
    CGPathAddLineToPoint(Mutable, 0, *a5, a5[1]);
    CGPathAddLineToPoint(Mutable, 0, *a4, a4[1]);
    CGPathAddLineToPoint(Mutable, 0, *a2, a2[1]);
    CGPathCloseSubpath(Mutable);
    v41 = GetDefaultsWriteHighlightRedactions();
    CGContextAddPath(a1, Mutable);
    v42 = [MEMORY[0x1E69DC888] blackColor];
    v43 = v42;
    if (v41)
    {
      CGContextSetStrokeColorWithColor(a1, [v42 CGColor]);

      CGContextStrokePath(a1);
      CGPathRelease(Mutable);
    }

    else
    {
      v44 = [v42 colorWithAlphaComponent:v62];
      CGContextSetFillColorWithColor(a1, [v44 CGColor]);

      CGContextFillPath(a1);
      CGContextAddPath(a1, Mutable);
      CGContextClip(a1);
      CGPathRelease(Mutable);
      *&v77.a = v75;
      *&v77.c = v73;
      *&v77.tx = v70;
      CGAffineTransformRotate(&v78, &v77, v28);
      v80 = v78;
      v77 = v78;
      CGAffineTransformTranslate(&v78, &v77, v39, v38);
      v80 = v78;
      v58 = v78.d;
      v59 = v78.b;
      v57 = v78.ty;
      tx = a4[1];
      v67 = *a4;
      v45 = v78.tx + tx * v78.c + v78.a * *a4;
      *&v77.a = v75;
      *&v77.c = v73;
      *&v77.tx = v70;
      CGAffineTransformRotate(&v78, &v77, v28);
      v79 = v78;
      v77 = v78;
      CGAffineTransformTranslate(&v78, &v77, v39, v38);
      v79 = v78;
      v53 = v78.d;
      v54 = v78.b;
      v52 = v78.ty;
      v55 = a5[1];
      v56 = *a5;
      v46 = v78.tx + v55 * v78.c + v78.a * *a5;
      *&v77.a = v75;
      *&v77.c = v73;
      *&v77.tx = v70;
      CGAffineTransformRotate(&v78, &v77, v28);
      v81 = v78;
      v77 = v78;
      CGAffineTransformTranslate(&v78, &v77, v39, v38);
      v81 = v78;
      if (v45 < v46)
      {
        v47 = v57 + tx * v58 + v59 * v67;
        v76 = v60 * v47;
        v74 = d * v47;
        v71 = v81.ty + a3[1] * v81.d + v81.b * *a3 - (v52 + v55 * v53 + v54 * v56);
        v48 = v47 + v71;
        v66 = d * v48;
        v68 = v60 * v48;
        do
        {
          CGContextMoveToPoint(a1, v64 + v76 + v36 * v45, v63 + v74 + b * v45);
          v49 = v71 + v45;
          CGContextAddLineToPoint(a1, v64 + v68 + v36 * v49, v63 + v66 + b * v49);
          CGContextMoveToPoint(a1, v64 + v68 + v36 * v45, v63 + v66 + b * v45);
          CGContextAddLineToPoint(a1, v64 + v76 + v36 * v49, v63 + v74 + b * v49);
          v45 = v71 + v45;
        }

        while (v49 < v46);
      }

      v50 = [MEMORY[0x1E69DC888] darkGrayColor];
      v51 = [v50 colorWithAlphaComponent:v62];
      CGContextSetStrokeColorWithColor(a1, [v51 CGColor]);

      CGContextSetLineWidth(a1, 1.0);
      CGContextStrokePath(a1);
      CGContextRestoreGState(a1);
    }
  }
}

id PDFMarkupMenuColorForMenuIcon(uint64_t a1)
{
  if (PDFMarkupMenuColorForMenuIcon_onceToken != -1)
  {
    PDFMarkupMenuColorForMenuIcon_cold_1();
  }

  v2 = PDFMarkupMenuColorForMenuIcon_colors;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __PDFMarkupMenuColorForMenuIcon_block_invoke()
{
  v15[7] = *MEMORY[0x1E69E9840];
  v14[0] = &unk_1F4184180;
  v13 = +[PDFAnnotation PDFMarkupColors];
  v12 = [v13 objectAtIndex:0];
  v15[0] = v12;
  v14[1] = &unk_1F4184198;
  v0 = +[PDFAnnotation PDFMarkupColors];
  v1 = [v0 objectAtIndex:1];
  v15[1] = v1;
  v14[2] = &unk_1F41841B0;
  v2 = +[PDFAnnotation PDFMarkupColors];
  v3 = [v2 objectAtIndex:2];
  v15[2] = v3;
  v14[3] = &unk_1F41841C8;
  v4 = +[PDFAnnotation PDFMarkupColors];
  v5 = [v4 objectAtIndex:3];
  v15[3] = v5;
  v14[4] = &unk_1F41841E0;
  v6 = +[PDFAnnotation PDFMarkupColors];
  v7 = [v6 objectAtIndex:4];
  v15[4] = v7;
  v14[5] = &unk_1F41841F8;
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v15[5] = v8;
  v14[6] = &unk_1F4184210;
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v15[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];
  v11 = PDFMarkupMenuColorForMenuIcon_colors;
  PDFMarkupMenuColorForMenuIcon_colors = v10;
}

id PDFMarkupMenuString(uint64_t a1)
{
  if (PDFMarkupMenuString_onceToken != -1)
  {
    PDFMarkupMenuString_cold_1();
  }

  v2 = PDFMarkupMenuString_menuIconStrings;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __PDFMarkupMenuString_block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F4184180;
  v0 = PDFKitLocalizedString(@"Yellow");
  v10[0] = v0;
  v9[1] = &unk_1F4184198;
  v1 = PDFKitLocalizedString(@"Green");
  v10[1] = v1;
  v9[2] = &unk_1F41841B0;
  v2 = PDFKitLocalizedString(@"Blue");
  v10[2] = v2;
  v9[3] = &unk_1F41841C8;
  v3 = PDFKitLocalizedString(@"Pink");
  v10[3] = v3;
  v9[4] = &unk_1F41841E0;
  v4 = PDFKitLocalizedString(@"Purple");
  v10[4] = v4;
  v9[5] = &unk_1F41841F8;
  v5 = PDFKitLocalizedString(@"Underline");
  v10[5] = v5;
  v9[6] = &unk_1F4184210;
  v6 = PDFKitLocalizedString(@"Strikethrough");
  v10[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v8 = PDFMarkupMenuString_menuIconStrings;
  PDFMarkupMenuString_menuIconStrings = v7;
}

uint64_t PDFMarkupMenuColorMenuIconForMarkupStyle(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    return 1;
  }

  else
  {
    return (a1 + 1);
  }
}

void sub_1C1D14B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 88));
  objc_destroyWeak((v21 - 80));
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

void sub_1C1D15648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RVItemClass()
{
  if (loadReveal_onceToken != -1)
  {
    RVItemClass_cold_1();
  }

  v1 = kRVItemClass;

  return v1;
}

id DDParsecCollectionViewControllerClass()
{
  if (loadReveal_onceToken != -1)
  {
    RVItemClass_cold_1();
  }

  v1 = kDDParsecCollectionViewControllerClass;

  return v1;
}

void *__loadReveal_block_invoke()
{
  if (dlopen("/System/Library/PrivateFrameworks/RevealCore.framework/RevealCore", 1))
  {
    kRVItemClass = NSClassFromString(&cfstr_Rvitem.isa);
    kRVDocumentContextClass = NSClassFromString(&cfstr_Rvdocumentcont.isa);
  }

  result = dlopen("/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI", 1);
  if (result)
  {
    result = NSClassFromString(&cfstr_Ddparseccollec.isa);
    kDDParsecCollectionViewControllerClass = result;
  }

  return result;
}

void sub_1C1D1EFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1D1F588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1D1F968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1C1D227F0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void _PDFLog(os_log_type_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_PDFLog_onceToken != -1)
  {
    _PDFLog_cold_1();
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
  v14 = [v12 initWithFormat:v13 arguments:&a9];

  if (v14)
  {
    v15 = sLog;
    if (os_log_type_enabled(sLog, a1))
    {
      *buf = 136446466;
      v17 = a2;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_1C1CB0000, v15, a1, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }
}

void UpdateRectTransformDictionary(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v31 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = [v8 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        v18 = [v8 objectForKey:v17];
        [v11 setObject:v18 forKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
  v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * j);
        v48 = *(v23 + 16);
        v24 = *(v23 + 64);
        *&v36.a = *(v23 + 48);
        *&v36.c = v24;
        *&v36.tx = *(v23 + 80);
        v49 = CGRectApplyAffineTransform(v48, &v36);
        v25 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{PDFRectFromCGRect(v49.origin.x, v49.origin.y, v49.size.width, v49.size.height)}];
        v26 = [v11 objectForKey:v25];
        if (v26)
        {
          v27 = v26;
          if (v10)
          {
            v10[2](v10, v23, v26);
          }

          [v11 removeObjectForKey:v25];
        }

        else
        {
          v28 = v31[2](v31, v23);
          if (!v28)
          {
            goto LABEL_20;
          }

          v27 = v28;
          [v8 setObject:v28 forKey:v25];
        }

LABEL_20:
      }

      v20 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v20);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __UpdateRectTransformDictionary_block_invoke;
  v34[3] = &unk_1E8151CA0;
  v29 = v8;
  v35 = v29;
  [v11 enumerateKeysAndObjectsUsingBlock:v34];
  [v11 removeAllObjects];
  if (a3)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __UpdateRectTransformDictionary_block_invoke_2;
    v33[3] = &__block_descriptor_40_e33_v32__0__NSValue_8__CALayer_16_B24l;
    v33[4] = a3;
    [v29 enumerateKeysAndObjectsUsingBlock:v33];
  }

  [MEMORY[0x1E6979518] commit];
}

void sub_1C1D27C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __UpdateRectTransformDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 removeFromSuperlayer];
  [*(a1 + 32) removeObjectForKey:v5];
}

void __UpdateRectTransformDictionary_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!CGColorEqualToColor([v4 backgroundColor], *(a1 + 32)))
  {
    [v4 setBackgroundColor:*(a1 + 32)];
  }
}

uint64_t get_number(CGPDFArray *a1, size_t a2, CGPDFReal *a3)
{
  value = 0.0;
  if (CGPDFArrayGetNumber(a1, a2, &value))
  {
    *a3 = value;
  }

  else
  {
    if (!CGPDFArrayGetNull(a1, a2) && CGPDFArrayGetCount(a1) > a2)
    {
      NSLog(&cfstr_MissingOrInval.isa);
      return 0;
    }

    *a3 = 3.40282347e38;
  }

  return 1;
}

void sub_1C1D2BF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(&a24);

  _Unwind_Resume(a1);
}

void sub_1C1D2C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(va);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(va1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t __copy_helper_block_ea8_64c62_ZTSNSt3__16vectorIPK18CGDisplayListEntryNS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return std::vector<CGDisplayListEntry const*>::__init_with_size[abi:ne200100]<CGDisplayListEntry const**,CGDisplayListEntry const**>(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
}

void __destroy_helper_block_ea8_64c62_ZTSNSt3__16vectorIPK18CGDisplayListEntryNS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

PDFDetectedFormRow *PDFDetectedFormRow::mergeFields(PDFDetectedFormRow *this)
{
  v3 = *(this + 1);
  v1 = *(this + 2);
  v2 = this + 8;
  v4 = v1 - v3 >= 9 && v1 > (v3 + 1);
  if (v4)
  {
    v5 = this;
    v6 = 1;
    v7 = *(this + 1);
    do
    {
      v8 = v7 + 1;
      if (v1 > (v7 + 1))
      {
        v9 = v7 + 2;
        v10 = v7;
        do
        {
          this = [*v10 canBeMergedWith:*v8];
          if (!this)
          {
            break;
          }

          ++v6;
          ++v10;
          v8 = v9;
          v4 = *(v5 + 2) > v9++;
        }

        while (v4);
        if (v6 < 2)
        {
          v7 = v10;
        }

        else
        {
          [*v7 rect];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = &v3[v6 - 1];
          [*v19 rect];
          v37.origin.x = v20;
          v37.origin.y = v21;
          v37.size.width = v22;
          v37.size.height = v23;
          v33.origin.x = v12;
          v33.origin.y = v14;
          v33.size.width = v16;
          v33.size.height = v18;
          v34 = CGRectUnion(v33, v37);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
          v28 = CGRectGetWidth(v34);
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          if (CGRectGetHeight(v35) > 0.0 && v7 <= v19)
          {
            v30 = 0;
            v31 = v28 / v6;
            v32 = v7;
            while (1)
            {
              [*v32 rect];
              if (vabdd_f64(v31, CGRectGetWidth(v36)) > 0.5)
              {
                break;
              }

              v30 |= v32++ == v19;
              if (v32 > v19)
              {
                std::vector<PDFDetectedFormField * {__strong}>::erase(v2, v3 + 1, &v3[v6]);
                this = [*v7 setRect:{x, y, width, height}];
                if (v30)
                {
                  [*v7 setKind:3];
                  [*v7 setNumberOfSegments:v6];
                  this = [*v7 setSegmentWidth:v31];
                }

                goto LABEL_15;
              }
            }
          }

          std::vector<PDFDetectedFormField * {__strong}>::erase(v2, v3 + 1, &v3[v6]);
          this = [*v7 setRect:{x, y, width, height}];
LABEL_15:
          v6 = 1;
        }
      }

      v3 = v7 + 1;
      v29 = v7 + 2;
      v1 = *(v5 + 2);
      ++v7;
    }

    while (v1 > v29);
  }

  return this;
}

id *PDFDetectedFormRow::fieldNearestXCoordinate(PDFDetectedFormRow *this, double a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 != v3)
  {
    v6 = v2 - v3;
    do
    {
      v7 = &v3[v6 >> 1];
      v9 = *v7;
      v8 = v7 + 1;
      [v9 minX];
      if (v10 >= a2)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v10 < a2)
      {
        v3 = v8;
      }
    }

    while (v6);
    if (*(this + 2) == v3)
    {
      return v3 - 1;
    }

    else
    {
      if (*(this + 1) == v3)
      {
        return v3;
      }

      [*v3 minX];
      v12 = vabdd_f64(a2, v11);
      v2 = v3 - 1;
      [*(v3 - 1) minX];
      if (v12 < vabdd_f64(a2, v13))
      {
        return v3;
      }
    }
  }

  return v2;
}

void sub_1C1D2CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<PDFDetectedFormRow>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = ((v6 - *a1) >> 5) + 1;
    if (v9 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = a2 - v8;
    v11 = v7 - v8;
    v12 = v11 >> 4;
    if (v11 >> 4 <= v9)
    {
      v12 = ((v6 - *a1) >> 5) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 5;
    v16[4] = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormRow>>(a1, v13);
    }

    v16[0] = 0;
    v16[1] = (32 * v14);
    v16[2] = (32 * v14);
    v16[3] = 0;
    std::__split_buffer<PDFDetectedFormRow>::emplace_back<PDFDetectedFormRow>(v16, a3);
    v4 = std::vector<PDFDetectedFormRow>::__swap_out_circular_buffer(a1, v16, v4);
    std::__split_buffer<PDFDetectedFormRow>::~__split_buffer(v16);
  }

  else if (a2 == v6)
  {
    std::vector<PDFDetectedFormRow>::__construct_one_at_end[abi:ne200100]<PDFDetectedFormRow>(a1, a3);
  }

  else
  {
    std::vector<PDFDetectedFormRow>::__move_range(a1, a2, v6, a2 + 32);
    *v4 = *a3;
    if (v4 != a3)
    {
      std::vector<PDFDetectedFormField * {__strong}>::__assign_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>((v4 + 8), *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 3);
    }
  }

  return v4;
}

void sub_1C1D2CD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PDFDetectedFormRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void PDFDetectedFormRow::insertField(PDFDetectedFormRow *this, PDFDetectedFormField *a2)
{
  v6 = a2;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v7 = 0;
  v5 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<PDFDetectedFormField * {__strong}*>,PDFDetectedFormField * {__strong},std::__identity,PDFDetectedFormRow::insertField(PDFDetectedFormField *)::{lambda(PDFDetectedFormField *,PDFDetectedFormField *)#1}>(v3, &v6, (v4 - v3) >> 3);
  std::vector<PDFDetectedFormField * {__strong}>::insert(this + 8, v5, &v6);
}

void sub_1C1D2CFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  std::__tree<unsigned long>::destroy(v32 + 48, a32);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__3(void *result, void *a2)
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

__n128 __Block_byref_object_copy__49(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void *std::vector<CGDisplayListEntry const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGDisplayListEntry const*>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<CGDisplayListEntry const*>::__init_with_size[abi:ne200100]<CGDisplayListEntry const**,CGDisplayListEntry const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGDisplayListEntry const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C1D2D580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGDisplayListEntry const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGDisplayListEntry const*>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGDisplayListEntry const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<PDFDetectedFormField * {__strong}>::erase(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        v9 = *v7;
        *v7++ = v8;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v10 = *--v6;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::vector<PDFDetectedFormRow>::__construct_one_at_end[abi:ne200100]<PDFDetectedFormRow>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v3[2] = 0;
  v3[3] = 0;
  v3[1] = 0;
  result = std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>((v3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t std::vector<PDFDetectedFormRow>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + 8);
    v11 = (a2 + v6 - a4);
    do
    {
      *(v10 - 1) = *v11;
      v10[1] = 0;
      v10[2] = 0;
      *v10 = 0;
      std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(v10, v11[1], v11[2], (v11[2] - v11[1]) >> 3);
      v11 += 4;
      v10 += 4;
    }

    while (v11 < a3);
    v8 = v10 - 1;
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PDFDetectedFormRow *,PDFDetectedFormRow *,PDFDetectedFormRow *>(&v13, a2, v7, v6);
}

uint64_t std::__split_buffer<PDFDetectedFormRow>::emplace_back<PDFDetectedFormRow>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v9 = v4 - *a1;
      v8 = v9 == 0;
      v10 = v9 >> 4;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = a1[4];
      v15 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormRow>>(v12, v11);
    }

    v6 = (((v5 - *a1) >> 5) + 1 + ((((v5 - *a1) >> 5) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PDFDetectedFormRow *,PDFDetectedFormRow *,PDFDetectedFormRow *>(&v14, v5, v4, (v5 - 32 * v6));
    v4 = v7;
    a1[1] -= 32 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  result = std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>((v4 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 3);
  a1[2] += 32;
  return result;
}

uint64_t std::vector<PDFDetectedFormRow>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>(a1, v7, a3, v9);
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

uint64_t std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PDFDetectedFormField * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<PDFDetectedFormField * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormField * {__strong}>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormField * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PDFDetectedFormRow *,PDFDetectedFormRow *,PDFDetectedFormRow *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = a3;
    v8 = a4;
    do
    {
      v9 = *(v7 - 32);
      v7 -= 32;
      *(v8 - 32) = v9;
      v8 -= 32;
      if (v6 != a4)
      {
        std::vector<PDFDetectedFormField * {__strong}>::__assign_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(a4 - 24, *(v6 - 24), *(v6 - 16), (*(v6 - 16) - *(v6 - 24)) >> 3);
      }

      a4 = v8;
      v6 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void std::vector<PDFDetectedFormField * {__strong}>::__assign_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<PDFDetectedFormField * {__strong}>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PDFDetectedFormField * {__strong}>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void std::vector<PDFDetectedFormField * {__strong}>::__vdeallocate(void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
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

void **std::__copy_impl::operator()[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormRow>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PDFDetectedFormRow *,PDFDetectedFormRow *,PDFDetectedFormRow *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        std::vector<PDFDetectedFormField * {__strong}>::__assign_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>((a4 + 1), *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
      }

      v5 += 32;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__split_buffer<PDFDetectedFormRow>::__construct_at_end_with_size<std::move_iterator<PDFDetectedFormRow*>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = (v4 + 8);
    v7 = 32 * a3;
    v4 += 32 * a3;
    do
    {
      *(v6 - 1) = *a2;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      result = std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>(v6, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
      a2 += 4;
      v6 += 4;
      v7 -= 32;
    }

    while (v7);
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      std::vector<PDFDetectedFormField * {__strong}>::__init_with_size[abi:ne200100]<PDFDetectedFormField * {__strong}*,PDFDetectedFormField * {__strong}*>((v4 + 1), v7[1], v7[2], (v7[2] - v7[1]) >> 3);
      v7 += 4;
      v4 = v12 + 4;
      v12 += 4;
    }

    while (v7 != a3);
    v10 = 1;
    while (v6 != a3)
    {
      v13 = (v6 + 1);
      std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v13);
      v6 += 4;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void sub_1C1D2DFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PDFDetectedFormRow>,PDFDetectedFormRow*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<PDFDetectedFormRow>::~__split_buffer(void **a1)
{
  std::__split_buffer<PDFDetectedFormRow>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PDFDetectedFormRow>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

void **std::vector<PDFDetectedFormField * {__strong}>::insert(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormField * {__strong}>>(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (8 * v16);
    v18[2] = (8 * v16);
    v18[3] = 0;
    std::__split_buffer<PDFDetectedFormField * {__strong}>::emplace_back<PDFDetectedFormField * const {__strong}&>(v18, a3);
    v4 = std::vector<PDFDetectedFormField * {__strong}>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<PDFDetectedFormField * {__strong}>::~__split_buffer(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    *(a1 + 8) = v7 + 1;
  }

  else
  {
    std::vector<PDFDetectedFormField * {__strong}>::__move_range(a1, a2, *(a1 + 8), (a2 + 8));
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_1C1D2E238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PDFDetectedFormField * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<PDFDetectedFormField * {__strong}*>,PDFDetectedFormField * {__strong},std::__identity,PDFDetectedFormRow::insertField(PDFDetectedFormField *)::{lambda(PDFDetectedFormField *,PDFDetectedFormField *)#1}>(id *a1, void **a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = &a1[v4 >> 1];
      v7 = *a2;
      v8 = *v6;
      v9 = v7;
      [v8 minX];
      v11 = v10;
      [v9 minX];
      v13 = v12;

      if (v11 >= v13)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v11 < v13)
      {
        a1 = v6 + 1;
      }
    }

    while (v4);
  }

  return a1;
}

void std::vector<PDFDetectedFormField * {__strong}>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6;
    *v6++ = 0;
    *v7 = v8;
    v7 += 8;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = (v4 - 8);
    v10 = a2 - 8;
    do
    {
      v11 = *&v5[v10];
      *&v5[v10] = 0;
      v12 = *v9;
      *v9-- = v11;

      v5 -= 8;
    }

    while (v5);
  }
}

id std::__split_buffer<PDFDetectedFormField * {__strong}>::emplace_back<PDFDetectedFormField * const {__strong}&>(void ***a1, id *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = a1[4];
      v14 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<PDFDetectedFormField * {__strong}>>(v12, v11);
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6++ = 0;
        v10 = *v5;
        *v5++ = v9;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[v8];
    a1[2] = v5;
  }

  result = *a2;
  *v5 = result;
  ++a1[2];
  return result;
}

uint64_t std::vector<PDFDetectedFormField * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
    }

    while (v9 != v7);
    v11 = a3;
    do
    {
      v12 = *v11++;
    }

    while (v11 != v7);
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v15 = (v14 + v13 - a3);
  if (v13 != a3)
  {
    v16 = v13;
    v17 = (v14 + v13 - a3);
    do
    {
      v18 = *v16;
      *v16++ = 0;
      *v17++ = v18;
    }

    while (v16 != a3);
    do
    {
      v19 = *v13++;
    }

    while (v13 != a3);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  *(a1 + 8) = v20;
  a2[1] = v20;
  v21 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v21;
  v22 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__split_buffer<PDFDetectedFormField * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void std::vector<PDFDetectedFormRow>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<PDFDetectedFormField * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t *std::__tree<double>::__emplace_unique_key_args<double,double const&>(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1D34BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1D37380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 136));
  objc_destroyWeak((v1 - 128));
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1C1D37974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

double PDFRectGetMinX(double result, double a2, double a3)
{
  if (result >= result + a3)
  {
    return result + a3;
  }

  return result;
}

double PDFRectGetMinY(double a1, double a2, double a3, double a4)
{
  result = a2 + a4;
  if (a2 < a2 + a4)
  {
    return a2;
  }

  return result;
}

double PDFRectGetMaxX(double result, double a2, double a3)
{
  if (result <= result + a3)
  {
    return result + a3;
  }

  return result;
}

double PDFRectGetMaxY(double a1, double a2, double a3, double a4)
{
  result = a2 + a4;
  if (a2 > a2 + a4)
  {
    return a2;
  }

  return result;
}

BOOL PDFEdgeInsetsEqualToInsets(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (vabdd_f64(a1, a5) > 0.00000011920929)
  {
    return 0;
  }

  v9 = vabdd_f64(a4, a8);
  v10 = vabdd_f64(a2, a6) <= 0.00000011920929;
  if (vabdd_f64(a3, a7) > 0.00000011920929)
  {
    v10 = 0;
  }

  return v9 <= 0.00000011920929 && v10;
}

double PDFEdgeInsetsGetMaxInsets(double result, double a2, double a3, double a4, double a5)
{
  if (result < a5)
  {
    return a5;
  }

  return result;
}

double PDFScaleRectToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a7 / a3;
  if (a4 * (a7 / a3) > a8)
  {
    return a8 / a4;
  }

  return result;
}

double PDFEdgeInsetsInsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 + a6;
  v9 = a3 - (a8 + a6);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

uint64_t PDFNormalizeRotation(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 += 360 * (-a1 / 0x168uLL) + 360;
  }

  return (round(a1 / 90.0) * 90.0) % 360;
}

double PDFRectRotate(uint64_t a1, double a2, double a3)
{
  if (a1 != 270 && a1 != 90)
  {
    return a2;
  }

  return a3;
}

double PDFRectFromPDFPoints(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

void PDFPointsGetMinMaxValues(void *a1, double *a2, double *a3, double *a4, double *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = 3.40282347e38;
    v14 = 1.17549435e-38;
    v15 = 1.17549435e-38;
    v16 = 3.40282347e38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v20 + 1) + 8 * i) PDFKitPDFPointValue];
        if (v18 < v16)
        {
          v16 = v18;
        }

        if (v19 < v13)
        {
          v13 = v19;
        }

        if (v18 >= v15)
        {
          v15 = v18;
        }

        if (v19 >= v14)
        {
          v14 = v19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 3.40282347e38;
    v14 = 1.17549435e-38;
    v15 = 1.17549435e-38;
    v16 = 3.40282347e38;
  }

  *a2 = v16;
  *a3 = v13;
  *a4 = v15;
  *a5 = v14;
}

double PDFPointClampInPDFRect(double result, double a2, double a3, double a4, double a5)
{
  v5 = a3 + a5;
  if (result >= v5)
  {
    result = v5;
  }

  if (result < a3)
  {
    return a3;
  }

  return result;
}

double CGFloatClamp(double result, double a2, double a3)
{
  if (result < a2)
  {
    result = a2;
  }

  if (result > a3)
  {
    return a3;
  }

  return result;
}

BOOL PDFRectValid(double a1, double a2, double a3, double a4)
{
  v5 = fabs(a2) != INFINITY && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (fabs(a3) == INFINITY)
  {
    v5 = 0;
  }

  if (fabs(a4) == INFINITY)
  {
    return 0;
  }

  return v5;
}

id PDFGetToolTipNoLabel(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 document], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = PDFKitLocalizedString(@"Go to page %lu");
    v7 = [v5 stringWithFormat:v6, objc_msgSend(v4, "indexForPage:", v2) + 1];
  }

  else
  {
    v7 = PDFKitLocalizedString(@"Broken link");
  }

  return v7;
}

id PDFKitLocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.PDFKit"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F416DF70 table:0];

  return v4;
}

CFStringRef createFilenameForEncoding(CGPDFObject *a1, CFStringEncoding a2)
{
  value = 0;
  if (!CGPDFObjectGetValue(a1, kCGPDFObjectTypeString, &value))
  {
    dict = 0;
    if (!CGPDFObjectGetValue(a1, kCGPDFObjectTypeDictionary, &dict) || !CGPDFDictionaryGetString(dict, "F", &value))
    {
      return 0;
    }
  }

  result = value;
  if (value)
  {
    result = CGPDFStringGetBytePtr(value);
    if (result)
    {
      v5 = result;
      result = CGPDFStringGetLength(value);
      if (result)
      {
        return CFStringCreateWithBytes(*MEMORY[0x1E695E480], v5, result, a2, 0);
      }
    }
  }

  return result;
}

__CFString *getFilepathFromObjectDetermineEncoding(CGPDFObject *a1, const __CFString *a2)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_65;
  }

  memset(&v35, 0, sizeof(v35));
  FilenameForEncoding = createFilenameForEncoding(a1, 0);
  v5 = MEMORY[0x1E695E480];
  if (FilenameForEncoding)
  {
    v6 = FilenameForEncoding;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    v8 = MutableCopy;
    if (MutableCopy)
    {
      Length = CFStringGetLength(MutableCopy);
      if (CFStringGetCharacterAtIndex(v8, Length - 1) != 47)
      {
        CFStringAppend(v8, @"/");
      }

      CFStringAppend(v8, v6);
      v10 = CFStringGetLength(v8);
      if (v10)
      {
        v11 = 2 * v10;
        v12 = malloc_type_malloc(2 * v10 + 2, 0xE667CFD9uLL);
        if (CFStringGetCString(v8, v12, v11 + 2, 0x8000100u) && (stat(v12, &v35) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        if (v12)
        {
          free(v12);
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  v14 = createFilenameForEncoding(a1, 1u);
  if (v14)
  {
    v6 = v14;
    v15 = CFStringCreateMutableCopy(*v5, 0, a2);
    if (v15)
    {
      v13 = v15;
      v16 = CFStringGetLength(v15);
      if (CFStringGetCharacterAtIndex(v13, v16 - 1) != 47)
      {
        CFStringAppend(v13, @"/");
      }

      CFStringAppend(v13, v6);
      v17 = CFStringGetLength(v13);
      if (v17)
      {
        v18 = 2 * v17;
        v12 = malloc_type_malloc(2 * v17 + 2, 0xA5E36FF1uLL);
        if (CFStringGetCString(v13, v12, v18 + 2, 0x8000100u) && (stat(v12, &v35) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        if (v12)
        {
          free(v12);
        }
      }

      CFRelease(v13);
    }

    CFRelease(v6);
  }

  v19 = createFilenameForEncoding(a1, 2u);
  if (v19)
  {
    v6 = v19;
    v20 = CFStringCreateMutableCopy(*v5, 0, a2);
    if (v20)
    {
      v13 = v20;
      v21 = CFStringGetLength(v20);
      if (CFStringGetCharacterAtIndex(v13, v21 - 1) != 47)
      {
        CFStringAppend(v13, @"/");
      }

      CFStringAppend(v13, v6);
      v22 = CFStringGetLength(v13);
      if (v22)
      {
        v23 = 2 * v22;
        v12 = malloc_type_malloc(2 * v22 + 2, 0xE3D83CD3uLL);
        if (CFStringGetCString(v13, v12, v23 + 2, 0x8000100u) && (stat(v12, &v35) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        if (v12)
        {
          free(v12);
        }
      }

      CFRelease(v13);
    }

    CFRelease(v6);
  }

  v24 = createFilenameForEncoding(a1, 3u);
  if (v24)
  {
    v6 = v24;
    v25 = CFStringCreateMutableCopy(*v5, 0, a2);
    if (v25)
    {
      v13 = v25;
      v26 = CFStringGetLength(v25);
      if (CFStringGetCharacterAtIndex(v13, v26 - 1) != 47)
      {
        CFStringAppend(v13, @"/");
      }

      CFStringAppend(v13, v6);
      v27 = CFStringGetLength(v13);
      if (v27)
      {
        v28 = 2 * v27;
        v12 = malloc_type_malloc(2 * v27 + 2, 0x8FFB4BAAuLL);
        if (CFStringGetCString(v13, v12, v28 + 2, 0x8000100u) && (stat(v12, &v35) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        if (v12)
        {
          free(v12);
        }
      }

      CFRelease(v13);
    }

    CFRelease(v6);
  }

  v29 = createFilenameForEncoding(a1, 0x19u);
  if (!v29)
  {
    goto LABEL_64;
  }

  v6 = v29;
  v30 = CFStringCreateMutableCopy(*v5, 0, a2);
  if (!v30)
  {
    v13 = v8;
LABEL_63:
    CFRelease(v6);
    goto LABEL_65;
  }

  v13 = v30;
  v31 = CFStringGetLength(v30);
  if (CFStringGetCharacterAtIndex(v13, v31 - 1) != 47)
  {
    CFStringAppend(v13, @"/");
  }

  CFStringAppend(v13, v6);
  v32 = CFStringGetLength(v13);
  if (!v32)
  {
    v12 = 0;
LABEL_57:
    CFRelease(v13);
LABEL_58:
    v13 = 0;
    goto LABEL_59;
  }

  v33 = 2 * v32;
  v12 = malloc_type_malloc(2 * v32 + 2, 0x3AD2E643uLL);
  if (!CFStringGetCString(v13, v12, v33 + 2, 0x8000100u) || stat(v12, &v35) < 0)
  {
    goto LABEL_57;
  }

LABEL_59:
  if (v12)
  {
    free(v12);
  }

  CFRelease(v6);
  if (v13)
  {
    v6 = v8;
    if (!v8)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

LABEL_64:
  v13 = v8;
LABEL_65:

  return v13;
}

id PDFCGColorCreateGenericGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  components[0] = a1;
  components[1] = a2;
  v5 = CGColorCreate(DeviceGray, components);
  v6 = [MEMORY[0x1E69DC888] colorWithCGColor:v5];
  if (DeviceGray)
  {
    CGColorSpaceRelease(DeviceGray);
  }

  if (v5)
  {
    CGColorRelease(v5);
  }

  return v6;
}

id PDFCGColorCreateGenericRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v9 = CGColorCreate(DeviceRGB, components);
  v10 = [MEMORY[0x1E69DC888] colorWithCGColor:v9];
  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  if (v9)
  {
    CGColorRelease(v9);
  }

  return v10;
}

id PDFCGColorCreateGenericCMYK(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v11 = CGColorCreate(DeviceCMYK, v14);
  v12 = [MEMORY[0x1E69DC888] colorWithCGColor:v11];
  if (DeviceCMYK)
  {
    CGColorSpaceRelease(DeviceCMYK);
  }

  if (v11)
  {
    CGColorRelease(v11);
  }

  return v12;
}

id PDFColorCreateFromNSArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = [v1 objectAtIndex:0];
      [v3 floatValue];
      v17 = v16;
      v8 = [v1 objectAtIndex:1];
      [v8 floatValue];
      v19 = v18;
      v11 = [v1 objectAtIndex:2];
      [v11 floatValue];
      v5 = PDFCGColorCreateGenericRGB(v17, v19, v20, 1.0);
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_8;
      }

      v3 = [v1 objectAtIndex:0];
      [v3 floatValue];
      v7 = v6;
      v8 = [v1 objectAtIndex:1];
      [v8 floatValue];
      v10 = v9;
      v11 = [v1 objectAtIndex:2];
      [v11 floatValue];
      v13 = v12;
      v14 = [v1 objectAtIndex:3];
      [v14 floatValue];
      v5 = PDFCGColorCreateGenericCMYK(v7, v10, v13, v15, 1.0);
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = PDFCGColorCreateGenericGray(0.0, 0.0);
    goto LABEL_13;
  }

  if (v2 != 1)
  {
LABEL_8:
    NSLog(&cfstr_ErrorCannotCre_3.isa, v1);
    v5 = 0;
    goto LABEL_13;
  }

  v3 = [v1 objectAtIndex:0];
  [v3 floatValue];
  v5 = PDFCGColorCreateGenericGray(v4, 1.0);
LABEL_12:

LABEL_13:

  return v5;
}

id PDFColorCreateFromCGPDFArray(CGPDFArray *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *value = xmmword_1C1D79EE8;
  *v9 = unk_1C1D79EF8;
  Count = CGPDFArrayGetCount(a1);
  if (Count <= 2)
  {
    if (!Count)
    {
      v3 = 0.0;
      v4 = 0.0;
      goto LABEL_10;
    }

    if (Count == 1)
    {
      CGPDFArrayGetNumber(a1, 0, value);
      v3 = value[0];
      v4 = 1.0;
LABEL_10:
      v5 = PDFCGColorCreateGenericGray(v3, v4);
      goto LABEL_12;
    }

LABEL_8:
    v6 = CGPDFArrayGetCount(a1);
    NSLog(&cfstr_ErrorCannotCre_4.isa, v6);
    v5 = 0;
    goto LABEL_12;
  }

  if (Count != 3)
  {
    if (Count == 4)
    {
      CGPDFArrayGetNumber(a1, 0, value);
      CGPDFArrayGetNumber(a1, 1uLL, &value[1]);
      CGPDFArrayGetNumber(a1, 2uLL, v9);
      CGPDFArrayGetNumber(a1, 3uLL, &v9[1]);
      v5 = PDFCGColorCreateGenericCMYK(value[0], value[1], v9[0], v9[1], 1.0);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  CGPDFArrayGetNumber(a1, 0, value);
  CGPDFArrayGetNumber(a1, 1uLL, &value[1]);
  CGPDFArrayGetNumber(a1, 2uLL, v9);
  v5 = PDFCGColorCreateGenericRGB(value[0], value[1], v9[0], 1.0);
LABEL_12:

  return v5;
}

void PDFKitPlatformColorGetRGBA(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 CGColor];
    v12 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, v11, 0);
    CGColorSpaceRelease(v12);
    v14 = [MEMORY[0x1E69DC888] colorWithCGColor:CopyByMatchingToColorSpace];

    CGColorRelease(CopyByMatchingToColorSpace);
    [v14 getRed:a2 green:a3 blue:a4 alpha:a5];
  }
}

BOOL PDFColorComponentsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  NumberOfComponents = CGColorGetNumberOfComponents([v3 CGColor]);
  if (NumberOfComponents == CGColorGetNumberOfComponents([v4 CGColor]))
  {
    Components = CGColorGetComponents([v3 CGColor]);
    v7 = CGColorGetComponents([v4 CGColor]);
    v8 = NumberOfComponents - 1;
    if (NumberOfComponents < 1)
    {
      v15 = 1;
    }

    else
    {
      do
      {
        v9 = *Components++;
        v10 = v9;
        v11 = *v7++;
        v12 = vabdd_f64(v10, v11);
        v14 = v8-- != 0;
        v15 = v12 <= 0.001;
      }

      while (v12 <= 0.001 && v14);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL PDFKitCGImageIsWideGamut(CGImage *a1)
{
  if (!a1)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    return 0;
  }

  return CGColorSpaceIsWideGamutRGB(ColorSpace);
}

uint64_t PDFFontWithNameAndSize(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    a2 = 12.0;
  }

  return [MEMORY[0x1E69DB878] fontWithName:a1 size:a2];
}

double PDFScreenGetBackingScaleFactor()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void PDFKitAddRelativeCurveToPoint(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = a1;
  [v15 currentPoint];
  [v15 addCurveToPoint:a2 + v13 controlPoint1:a3 + v14 controlPoint2:{a4 + v13, a5 + v14, a6 + v13, a7 + v14}];
}

uint64_t PDFURLLooksSuspicious(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];

  if (([v3 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"https")) && (objc_opt_respondsToSelector())
  {
    v4 = [v1 _lp_userVisibleStringUsesEncodedHost];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t GetDefaultsWriteValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:v3];

    if (v6)
    {
      a2 = [v5 BOOLForKey:v3];
    }
  }

  return a2;
}

uint64_t GetUseWhippet()
{
  if (sUseWhippet)
  {
    return 0;
  }

  else
  {
    return GetDefaultsWriteValue(@"PDFKit2_UseWhippet", 1);
  }
}

uint64_t GetUseIOSurfaceForTiles()
{
  if (sUseIOSurfaceForTiles_0 == 2)
  {
    return GetDefaultsWriteValue(@"PDFKit2_UseIOSurfaceForTiles", 1);
  }

  else
  {
    return sUseIOSurfaceForTiles_0 == 1;
  }
}

uint64_t SetUseIOSurfaceForTiles(uint64_t result)
{
  sUseIOSurfaceForTiles_0 = result;
  if ((result & 1) == 0)
  {
    sUseWhippet = 1;
  }

  return result;
}

uint64_t GetDefaultsWriteAnnotationLoggingEnabled()
{
  if (GetDefaultsWriteAnnotationLoggingEnabled_onceToken != -1)
  {
    GetDefaultsWriteAnnotationLoggingEnabled_cold_1();
  }

  return GetDefaultsWriteAnnotationLoggingEnabled_value;
}

uint64_t __GetDefaultsWriteAnnotationLoggingEnabled_block_invoke()
{
  result = GetDefaultsWriteValue(@"PDFKIT_LOG_ANNOTATIONS", 0);
  GetDefaultsWriteAnnotationLoggingEnabled_value = result;
  return result;
}

uint64_t PDFKitIsOCREnabled()
{
  result = GetDefaultsWriteValue(@"PDFKit2_OCR_Enabled", 1);
  if (result)
  {
    if (_os_feature_enabled_impl())
    {
      return 1;
    }

    else
    {

      return _os_feature_enabled_impl();
    }
  }

  return result;
}

uint64_t PDFKitIsVisionKitFormDetectionEnabled()
{
  result = GetDefaultsWriteValue(@"PDFKit2_VisionKitFormDetectionEnabled", 1);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

double GetMachSeconds()
{
  if (*&GetMachSeconds_kMachAbsTimeToSeconds <= 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v1) = info.denom;
    LODWORD(v0) = info.numer;
    *&GetMachSeconds_kMachAbsTimeToSeconds = v0 / v1 / 1000000000.0;
  }

  return *&GetMachSeconds_kMachAbsTimeToSeconds * mach_absolute_time();
}

uint64_t PDFKitDeviceIsiPhone()
{
  if (PDFKitDeviceIsiPhone_onceToken != -1)
  {
    PDFKitDeviceIsiPhone_cold_1();
  }

  return PDFKitDeviceIsiPhone_deviceIsiPhone;
}

void __PDFKitDeviceIsiPhone_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  PDFKitDeviceIsiPhone_deviceIsiPhone = [v0 userInterfaceIdiom] == 0;
}

uint64_t PDFKitDeviceIsiPad()
{
  if (PDFKitDeviceIsiPad_onceToken != -1)
  {
    PDFKitDeviceIsiPad_cold_1();
  }

  return PDFKitDeviceIsiPad_deviceIsiPad;
}

void __PDFKitDeviceIsiPad_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  PDFKitDeviceIsiPad_deviceIsiPad = [v0 userInterfaceIdiom] == 1;
}

uint64_t PDFKitDeviceIsN61()
{
  if (PDFKitDeviceIsN61_onceToken != -1)
  {
    PDFKitDeviceIsN61_cold_1();
  }

  return PDFKitDeviceIsN61_deviceIsN61;
}

uint64_t __PDFKitDeviceIsN61_block_invoke()
{
  result = MGIsDeviceOneOfType();
  PDFKitDeviceIsN61_deviceIsN61 = result;
  return result;
}

uint64_t PDFKitDeviceIsN56()
{
  if (PDFKitDeviceIsN56_onceToken != -1)
  {
    PDFKitDeviceIsN56_cold_1();
  }

  return PDFKitDeviceIsN56_deviceIsN56;
}

uint64_t __PDFKitDeviceIsN56_block_invoke()
{
  result = MGIsDeviceOneOfType();
  PDFKitDeviceIsN56_deviceIsN56 = result;
  return result;
}

BOOL PDFSubclassOverridesSelector(objc_class *a1, objc_class *a2, SEL name)
{
  if (a1 == a2)
  {
    return 0;
  }

  MethodImplementation = class_getMethodImplementation(a1, name);
  v6 = class_getMethodImplementation(a2, name);
  if (MethodImplementation)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7 && MethodImplementation != v6;
}

void sub_1C1D3EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AKAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKAnnotationClass;

  return v1;
}

id AKControllerClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKControllerClass;

  return v1;
}

id AKToolbarViewClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKToolbarViewClass;

  return v1;
}

id AKPageModelControllerClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKPageModelControllerClass;

  return v1;
}

id AKArrowAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKArrowAnnotationClass;

  return v1;
}

id AKArrowShapeAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKArrowShapeAnnotationClass;

  return v1;
}

id AKBorderMaskAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKBorderMaskAnnotationClass;

  return v1;
}

id AKCropAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKCropAnnotationClass;

  return v1;
}

id AKDoodleAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKDoodleAnnotationClass;

  return v1;
}

id AKInkAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKInkAnnotationClass;

  return v1;
}

id AKHeartAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKHeartAnnotationClass;

  return v1;
}

id AKImageAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKImageAnnotationClass;

  return v1;
}

id AKLoupeAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKLoupeAnnotationClass;

  return v1;
}

id AKOvalAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKOvalAnnotationClass;

  return v1;
}

id AKPolygonAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKPolygonAnnotationClass;

  return v1;
}

id AKRectAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKRectAnnotationClass;

  return v1;
}

id AKRedactionRectAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKRedactionRectAnnotationClass;

  return v1;
}

id AKSignatureAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKSignatureAnnotationClass;

  return v1;
}

id AKSpeechBubbleAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKSpeechBubbleAnnotationClass;

  return v1;
}

id AKStarAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKStarAnnotationClass;

  return v1;
}

id AKTextBoxAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKTextBoxAnnotationClass;

  return v1;
}

id AKTextFieldAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKTextFieldAnnotationClass;

  return v1;
}

id AKThoughtBubbleAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKThoughtBubbleAnnotationClass;

  return v1;
}

id AKTriangleAnnotationClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKTriangleAnnotationClass;

  return v1;
}

id AKSignaturesPresentationContextClass()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKSignaturesPresentationContextClass;

  return v1;
}

id AKWillBeginEditingTextAnnotationNotificationString()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKWillBeginEditingTextAnnotationNotificationString;

  return v1;
}

id AKDidEndEditingTextAnnotationNotificationString()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKWillDidEndTextAnnotationNotificationString;

  return v1;
}

id AKEditingTextAnnotationKeyString()
{
  if (loadAnnotationKit_onceToken != -1)
  {
    AKAnnotationClass_cold_1();
  }

  v1 = kAKEditingTextAnnotationKeyString;

  return v1;
}

void __loadAnnotationKit_block_invoke()
{
  if (dlopen("/System/Library/PrivateFrameworks/AnnotationKit.framework/AnnotationKit", 1))
  {
    kAKAnnotationClass = NSClassFromString(&cfstr_Akannotation.isa);
    kAKControllerClass = NSClassFromString(&cfstr_Akcontroller.isa);
    kAKToolbarViewClass = NSClassFromString(&cfstr_Aktoolbarview.isa);
    kAKPageModelControllerClass = NSClassFromString(&cfstr_Akpagemodelcon.isa);
    kAKArrowAnnotationClass = NSClassFromString(&cfstr_Akarrowannotat.isa);
    kAKArrowShapeAnnotationClass = NSClassFromString(&cfstr_Akarrowshapean.isa);
    kAKBorderMaskAnnotationClass = NSClassFromString(&cfstr_Akbordermaskan.isa);
    kAKCropAnnotationClass = NSClassFromString(&cfstr_Akcropannotati.isa);
    kAKDoodleAnnotationClass = NSClassFromString(&cfstr_Akdoodleannota.isa);
    kAKInkAnnotationClass = NSClassFromString(&cfstr_Akinkannotatio.isa);
    kAKHeartAnnotationClass = NSClassFromString(&cfstr_Akheartannotat.isa);
    kAKImageAnnotationClass = NSClassFromString(&cfstr_Akimageannotat.isa);
    kAKLoupeAnnotationClass = NSClassFromString(&cfstr_Akloupeannotat.isa);
    kAKOvalAnnotationClass = NSClassFromString(&cfstr_Akovalannotati.isa);
    kAKPolygonAnnotationClass = NSClassFromString(&cfstr_Akpolygonannot.isa);
    kAKRectAnnotationClass = NSClassFromString(&cfstr_Akrectannotati.isa);
    kAKRedactionRectAnnotationClass = NSClassFromString(&cfstr_Akredactionrec.isa);
    kAKSignatureAnnotationClass = NSClassFromString(&cfstr_Aksignatureann.isa);
    kAKSpeechBubbleAnnotationClass = NSClassFromString(&cfstr_Akspeechbubble.isa);
    kAKStarAnnotationClass = NSClassFromString(&cfstr_Akstarannotati.isa);
    kAKTextBoxAnnotationClass = NSClassFromString(&cfstr_Aktextboxannot.isa);
    kAKTextFieldAnnotationClass = NSClassFromString(&cfstr_Aktextfieldann.isa);
    kAKThoughtBubbleAnnotationClass = NSClassFromString(&cfstr_Akthoughtbubbl.isa);
    kAKTriangleAnnotationClass = NSClassFromString(&cfstr_Aktriangleanno.isa);
    kAKSignaturesPresentationContextClass = NSClassFromString(&cfstr_Aksignaturespr.isa);
    v0 = kAKWillBeginEditingTextAnnotationNotificationString;
    kAKWillBeginEditingTextAnnotationNotificationString = @"com.apple.AnnotationKit.AKWillBeginEditingTextAnnotationNotification";

    v1 = kAKWillDidEndTextAnnotationNotificationString;
    kAKWillDidEndTextAnnotationNotificationString = @"com.apple.AnnotationKit.AKDidEndEditingTextAnnotationNotification";

    v2 = kAKEditingTextAnnotationKeyString;
    kAKEditingTextAnnotationKeyString = @"com.apple.AnnotationKit.AKEditingTextAnnotationKey";
  }
}

void sub_1C1D41C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1D42B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1D43F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1D456A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _sortCGSelections(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CGPDFSelectionGetClientProperty();
  v4 = [v3 document];
  v5 = [v4 indexForPage:v3];

  v6 = CGPDFSelectionGetClientProperty();

  v7 = [v6 document];
  v8 = [v7 indexForPage:v6];

  if (v5 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v5 > v8;
  }

  return v9;
}

uint64_t _sortPageRanges(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 page];
  v6 = [v5 document];

  v7 = [v3 page];
  v8 = [v6 indexForPage:v7];

  v9 = [v4 page];
  v10 = [v9 document];

  v11 = [v4 page];
  v12 = [v10 indexForPage:v11];

  if (v8 >= v12)
  {
    if (v8 > v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = [v3 range];
      v15 = [v4 range];
      if (v14 < v15)
      {
        v13 = -1;
      }

      else
      {
        v13 = v14 != v15;
      }
    }
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

void std::vector<CGRect>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<CGRect>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<CGRect>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 5)
  {
    if (a2)
    {
      v12 = 32 * a2;
      v13 = &v5[2 * a2];
      do
      {
        v14 = a3[1];
        *v5 = *a3;
        v5[1] = v14;
        v5 += 2;
        v12 -= 32;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 5);
    if (v8 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 5;
    v10 = v6 - *a1;
    if (v10 >> 4 > v8)
    {
      v8 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v11);
    }

    v15 = 32 * v9;
    v16 = 32 * v9 + 32 * a2;
    v17 = 32 * a2;
    v18 = v15;
    do
    {
      v19 = a3[1];
      *v18 = *a3;
      v18[1] = v19;
      v18 += 2;
      v17 -= 32;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_1C1D55AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1D5ACEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C1D5C1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1D5FF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

id PDFView._intelligenceCollectContent(in:collector:)(void *a1, double a2, double a3, double a4, double a5)
{
  v174 = sub_1C1D6C3BC();
  v173 = *(v174 - 8);
  (MEMORY[0x1EEE9AC00])();
  v171 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1C1D6C3EC();
  v170 = *(v172 - 8);
  (MEMORY[0x1EEE9AC00])();
  v169 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1C1D6C3CC();
  v167 = *(v168 - 8);
  (MEMORY[0x1EEE9AC00])();
  v166 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_1C1D6C2AC();
  v197 = *(v198 - 8);
  (MEMORY[0x1EEE9AC00])();
  v196 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1D6C32C();
  v16 = *(v15 - 8);
  v17 = (MEMORY[0x1EEE9AC00])();
  v199 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v159 - v19;
  v189 = sub_1C1D6C20C();
  v187 = *(v189 - 8);
  v20 = MEMORY[0x1EEE9AC00](v189);
  v178 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v179 = &v159 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v186 = &v159 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v161 = &v159 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v159 - v28;
  v208 = sub_1C1D6C3AC();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v181 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1C1D6C35C();
  v194 = *(v195 - 8);
  v30 = MEMORY[0x1EEE9AC00](v195);
  v193 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v192 = &v159 - v32;
  v33 = sub_1C1D6C38C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v176 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v159 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910);
  v163 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v202 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v206 = &v159 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B918);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v159 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B920);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v159 - v50;
  v209 = sub_1C1D6C27C();
  v203 = *(v209 - 8);
  v52 = MEMORY[0x1EEE9AC00](v209);
  v201 = &v159 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v210 = &v159 - v54;
  v55 = [v5 document];
  if (!v55)
  {
    v221.receiver = v5;
    v221.super_class = PDFView;
    return objc_msgSendSuper2(&v221, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
  }

  v200 = v5;
  v205 = a1;
  v183 = v34;
  v180 = v33;
  v184 = v16;
  v185 = v15;
  v204 = v55;
  v56 = [v55 documentAttributes];
  if (!v56)
  {
    v219 = 0u;
    v220 = 0u;
    goto LABEL_14;
  }

  a1 = v38;
  v57 = v56;
  v58 = sub_1C1D6C3FC();

  v212 = @"Title";
  type metadata accessor for PDFDocumentAttribute();
  sub_1C1D6AE60(&qword_1EBF1B958, type metadata accessor for PDFDocumentAttribute);
  v59 = @"Title";
  sub_1C1D6C51C();
  if (!*(v58 + 16) || (v60 = sub_1C1D6AC94(&aBlock), (v61 & 1) == 0))
  {

    sub_1C1D6ACD8(&aBlock);
    v219 = 0u;
    v220 = 0u;
    goto LABEL_14;
  }

  sub_1C1D6AD2C(*(v58 + 56) + 32 * v60, &v219);
  sub_1C1D6ACD8(&aBlock);

  if (!*(&v220 + 1))
  {
LABEL_14:
    sub_1C1D69FF4(&v219, &qword_1EBF1B928);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v62 = HIBYTE(v214) & 0xF;
    if ((v214 & 0x2000000000000000) == 0)
    {
      v62 = aBlock & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v182 = aBlock;
      v188 = v214;
      goto LABEL_16;
    }
  }

LABEL_15:
  v182 = sub_1C1D6C33C();
  v188 = v64;
LABEL_16:
  sub_1C1D6C39C();
  v65 = 1;
  (*(v207 + 56))(v51, 0, 1, v208);
  v66 = sub_1C1D6C22C();
  v67 = *(*(v66 - 8) + 56);
  v67(v48, 1, 1, v66);
  v67(v46, 1, 1, v66);
  sub_1C1D6C26C();
  v68 = v200;
  v211 = [v200 document];
  v191 = v38;
  if (v211)
  {
    v69 = [v68 visiblePages];
    sub_1C1D6B074(0, &qword_1EBF1B988);
    v70 = sub_1C1D6C47C();

    v71 = v70 & 0xFFFFFFFFFFFFFF8;
    if (v70 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1D6C53C())
    {
      v38 = 0;
      v160 = 0;
      v190 = MEMORY[0x1E69E7CC0];
      v68 = (v70 & 0xC000000000000001);
      if (!i)
      {
        break;
      }

      while (1)
      {
        if (v68)
        {
          v80 = MEMORY[0x1C690B0A0](v38, v70);
        }

        else
        {
          if (v38 >= *(v71 + 16))
          {
            goto LABEL_56;
          }

          v80 = *(v70 + 8 * v38 + 32);
        }

        a1 = v80;
        v77 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        sub_1C1D6C4BC();
        sub_1C1D6C4AC();
        sub_1C1D6C49C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

LABEL_25:
        v78 = [v211 indexForPage_];
        v79 = sub_1C1D6C1EC();

        ++v38;
        if (v78 == v79)
        {
          if (i == v38)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v81 = v190;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1C1D6BA48(0, *(v81 + 2) + 1, 1, v81);
          }

          v83 = *(v81 + 2);
          v82 = *(v81 + 3);
          if (v83 >= v82 >> 1)
          {
            v81 = sub_1C1D6BA48((v82 > 1), v83 + 1, 1, v81);
          }

          *(v81 + 2) = v83 + 1;
          v190 = v81;
          *&v81[8 * v83 + 32] = v78;
          v38 = v77;
          if (i == v77)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

LABEL_20:

    aBlock = v190;

    v71 = v160;
    sub_1C1D6B0BC(&aBlock);
    if (!v71)
    {

      v71 = *(aBlock + 16);
      v38 = v191;
      v73 = v206;
      v70 = v199;
      v68 = v200;
      if (!v71)
      {

LABEL_42:
        v84 = v211;
        [v211 pageCount];
        sub_1C1D6C2BC();

        v65 = 0;
        goto LABEL_43;
      }

      v74 = *(aBlock + 32);
      v75 = *(aBlock + 32 + 8 * v71 - 8);

      v76 = __OFADD__(v75, 1);
      v77 = (v75 + 1);
      if (!v76)
      {
        if (v77 < v74)
        {
          __break(1u);
          goto LABEL_25;
        }

        goto LABEL_42;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v73 = v206;
  v70 = v199;
LABEL_43:
  v85 = sub_1C1D6C2CC();
  (*(*(v85 - 8) + 56))(v73, v65, 1, v85);
  sub_1C1D6C25C();
  __swift_project_boxed_opaque_existential_1(&aBlock, v216);
  sub_1C1D6C34C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v86 = v192;
  sub_1C1D6C36C();
  v87 = v194;
  v88 = v193;
  v89 = v195;
  (*(v194 + 104))(v193, *MEMORY[0x1E69DBCD8], v195);
  sub_1C1D6AE60(&qword_1EBF1B930, MEMORY[0x1E69DBCE8]);
  v90 = sub_1C1D6C40C();
  v91 = *(v87 + 8);
  v91(v88, v89);
  v91(v86, v89);
  if ((v90 & 1) != 0 || (v92 = v181, sub_1C1D6C39C(), v93 = sub_1C1D6C37C(), (*(v207 + 8))(v92, v208), (v93 & 1) == 0))
  {
    v112 = [v204 documentURL];
    if (v112)
    {
      v113 = v178;
      v114 = v112;
      sub_1C1D6C1FC();

      v115 = v187;
      v116 = v179;
      v117 = v189;
      (*(v187 + 32))(v179, v113, v189);
      (*(v115 + 16))(v186, v116, v117);
      v118 = v203;
      v119 = v210;
      (*(v203 + 16))(v201, v210, v209);
      sub_1C1D6C2EC();
      (*(v115 + 8))(v116, v117);
    }

    else
    {
      v118 = v203;
      v120 = v201;
      v119 = v210;
      (*(v203 + 16))(v201, v210, v209);
      MEMORY[0x1C690AE90](v182, v188, v120);
    }

    sub_1C1D69F84(v73, v202);
    sub_1C1D6C2DC();
    v121 = v184;
    v122 = v70;
    v123 = v196;
    v124 = v73;
    v125 = v185;
    (*(v184 + 16))(v196, v122, v185);
    v126 = v197;
    v127 = v198;
    (*(v197 + 104))(v123, *MEMORY[0x1E69DBC00], v198);
    sub_1C1D6C24C();

    (*(v126 + 8))(v123, v127);
    (*(v121 + 8))(v122, v125);
    (*(v183 + 8))(v191, v180);
    sub_1C1D69FF4(v124, &qword_1EBF1B910);
    return (*(v118 + 8))(v119, v209);
  }

  else
  {
    v94 = v73;
    v95 = [v68 undoManager];
    v96 = v209;
    if (v95 && (v97 = v95, v98 = [v95 canUndo], v97, (v98 & 1) != 0) || (v99 = objc_msgSend(v204, sel_documentURL)) == 0)
    {
      v200 = *(v203 + 16);
      v128 = v201;
      (v200)(v201, v210, v96);
      v129 = v188;

      v130 = v177;
      v131 = v129;
      v132 = v128;
      MEMORY[0x1C690AE90](v182, v131, v128);
      v133 = v202;
      sub_1C1D69F84(v73, v202);
      sub_1C1D6C2DC();
      v134 = v196;
      (*(v184 + 16))(v196, v130, v185);
      v135 = v197;
      v136 = v198;
      (*(v197 + 104))(v134, *MEMORY[0x1E69DBC00], v198);
      v207 = sub_1C1D6C23C();
      (*(v135 + 8))(v134, v136);
      sub_1C1D6B074(0, &qword_1EBF1B938);
      v137 = v167;
      v138 = v166;
      v139 = v168;
      (*(v167 + 104))(v166, *MEMORY[0x1E69E7F88], v168);
      v211 = v204;
      v208 = sub_1C1D6C4DC();
      (*(v137 + 8))(v138, v139);
      v140 = v183;
      v141 = v96;
      v142 = v176;
      v143 = v180;
      (*(v183 + 16))(v176, v38, v180);
      (v200)(v132, v210, v141);
      sub_1C1D69F84(v206, v133);
      v144 = (*(v140 + 80) + 24) & ~*(v140 + 80);
      v145 = (v165 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v146 = v203;
      v147 = (*(v203 + 80) + v145 + 16) & ~*(v203 + 80);
      v148 = (v162 + *(v163 + 80) + v147) & ~*(v163 + 80);
      v149 = (v164 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
      v150 = swift_allocObject();
      *(v150 + 16) = v211;
      (*(v140 + 32))(v150 + v144, v142, v143);
      v151 = (v150 + v145);
      v152 = v188;
      *v151 = v182;
      v151[1] = v152;
      (*(v146 + 32))(v150 + v147, v201, v209);
      sub_1C1D6A444(v202, v150 + v148);
      *(v150 + v149) = v207;
      v217 = sub_1C1D6A4B4;
      v218 = v150;
      aBlock = MEMORY[0x1E69E9820];
      v214 = 1107296256;
      v215 = sub_1C1D6A634;
      v216 = &block_descriptor;
      v153 = _Block_copy(&aBlock);
      v154 = v211;

      v155 = v169;
      sub_1C1D6C3DC();
      *&v219 = MEMORY[0x1E69E7CC0];
      sub_1C1D6AE60(&qword_1EBF1B940, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B948);
      sub_1C1D6A690();
      v156 = v171;
      v157 = v174;
      sub_1C1D6C4EC();
      v158 = v208;
      MEMORY[0x1C690B040](0, v155, v156, v153);
      _Block_release(v153);

      (*(v173 + 8))(v156, v157);
      (*(v170 + 8))(v155, v172);
      (*(v184 + 8))(v177, v185);
      (*(v183 + 8))(v191, v143);
      sub_1C1D69FF4(v206, &qword_1EBF1B910);
      (*(v146 + 8))(v210, v209);
    }

    else
    {
      v100 = v161;
      v101 = v99;
      sub_1C1D6C1FC();

      v102 = v187;
      v103 = v175;
      v104 = v189;
      (*(v187 + 32))(v175, v100, v189);
      v105 = v183;
      (*(v183 + 16))(v176, v38, v180);
      (*(v102 + 16))(v186, v103, v104);
      (*(v203 + 16))(v201, v210, v96);
      v106 = v177;
      sub_1C1D6C2FC();
      sub_1C1D69F84(v94, v202);
      sub_1C1D6C2DC();
      v107 = v184;
      v108 = v196;
      v109 = v185;
      (*(v184 + 16))(v196, v106, v185);
      v110 = v197;
      v111 = v198;
      (*(v197 + 104))(v108, *MEMORY[0x1E69DBC00], v198);
      sub_1C1D6C24C();

      (*(v110 + 8))(v108, v111);
      (*(v107 + 8))(v106, v109);
      (*(v102 + 8))(v175, v189);
      (*(v105 + 8))(v38, v180);
      sub_1C1D69FF4(v206, &qword_1EBF1B910);
      return (*(v203 + 8))(v210, v209);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C1D69F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1D69FF4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1D6A054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a4;
  v40 = a6;
  v37 = a5;
  v38 = a3;
  v36 = a2;
  v9 = sub_1C1D6C2AC();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00]();
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910);
  MEMORY[0x1EEE9AC00]();
  v35 = &v32 - v11;
  v33 = sub_1C1D6C27C();
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00]();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1D6C38C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00]();
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C1D6C32C();
  v19 = *(v34 - 8);
  MEMORY[0x1EEE9AC00]();
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 dataRepresentation];
  if (!v22)
  {
    return sub_1C1D6C28C();
  }

  v23 = v22;
  v24 = sub_1C1D6C21C();
  v32 = a7;
  v26 = v25;

  (*(v16 + 16))(v18, v36, v15);
  (*(v12 + 16))(v14, v37, v33);
  sub_1C1D6AFCC(v24, v26);

  sub_1C1D6C30C();
  sub_1C1D69F84(v40, v35);
  sub_1C1D6C2DC();
  v27 = v41;
  v28 = v34;
  (*(v19 + 16))(v41, v21, v34);
  v30 = v42;
  v29 = v43;
  (*(v42 + 104))(v27, *MEMORY[0x1E69DBC00], v43);
  sub_1C1D6C29C();
  sub_1C1D6B020(v24, v26);
  (*(v30 + 8))(v27, v29);
  return (*(v19 + 8))(v21, v28);
}

uint64_t sub_1C1D6A444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1D6A4B4()
{
  v1 = *(sub_1C1D6C38C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1C1D6C27C() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B910) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = *(v0 + v3 + 8);
  v12 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1D6A054(v9, v0 + v2, v10, v11, v0 + v5, v0 + v8, v12);
}

uint64_t sub_1C1D6A634(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C1D6A690()
{
  result = qword_1EBF1B950;
  if (!qword_1EBF1B950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1B950);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for PDFDocumentAttribute()
{
  if (!qword_1EBF1B960)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBF1B960);
    }
  }
}

uint64_t sub_1C1D6A89C(uint64_t a1, id *a2)
{
  result = sub_1C1D6C42C();
  *a2 = 0;
  return result;
}

uint64_t sub_1C1D6A914(uint64_t a1, id *a2)
{
  v3 = sub_1C1D6C43C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C1D6A994@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1D6C44C();
  v2 = sub_1C1D6C41C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1D6A9D8()
{
  v0 = sub_1C1D6C44C();
  v1 = MEMORY[0x1C690AFE0](v0);

  return v1;
}

uint64_t sub_1C1D6AA14()
{
  sub_1C1D6C44C();
  sub_1C1D6C45C();
}

uint64_t sub_1C1D6AA68()
{
  sub_1C1D6C44C();
  sub_1C1D6C57C();
  sub_1C1D6C45C();
  v0 = sub_1C1D6C58C();

  return v0;
}

uint64_t sub_1C1D6AADC()
{
  v0 = sub_1C1D6C44C();
  v2 = v1;
  if (v0 == sub_1C1D6C44C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C1D6C56C();
  }

  return v5 & 1;
}

uint64_t sub_1C1D6AB64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1D6C41C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C1D6ABAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1D6C44C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1D6ABD8(uint64_t a1)
{
  v2 = sub_1C1D6AE60(&qword_1EBF1B958, type metadata accessor for PDFDocumentAttribute);
  v3 = sub_1C1D6AE60(&qword_1EBF1B980, type metadata accessor for PDFDocumentAttribute);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C1D6AC94(uint64_t a1)
{
  v2 = sub_1C1D6C4FC();

  return sub_1C1D6AEA8(a1, v2);
}

uint64_t sub_1C1D6AD2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C1D6AE60(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1D6AEA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C1D6AF70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C690B080](v9, a1);
      sub_1C1D6ACD8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C1D6AFCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1D6B020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1D6B074(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1D6B0BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C1D6BB4C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C1D6C55C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C1D6C48C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C1D6B1F0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C1D6B1F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C1D6B930(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C1D6B73C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C1D6B944(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C1D6B944((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C1D6B73C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C1D6B73C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1C1D6B944(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C1D6BA48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C1D6BB64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1B998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGFontGetFontBBox(CGFontRef font)
{
  MEMORY[0x1EEDB9B58](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x1EEDC6FE8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}