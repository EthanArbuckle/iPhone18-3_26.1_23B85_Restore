void sub_1C7E50D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E50E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7E519A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v72 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C7E51F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

Class ___ZL31getVKCStickerFromPKDrawingClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A5140)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL24VisionKitCoreLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82D97C8;
    v6 = 0;
    qword_1ED6A5140 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A5140)
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
  result = objc_getClass("VKCStickerFromPKDrawing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_141 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL24VisionKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A5140 = result;
  return result;
}

Class ___ZL37getLTUITranslationViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TranslationUIServicesLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL32TranslationUIServicesLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82D97E0;
    v6 = 0;
    TranslationUIServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TranslationUIServicesLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("LTUITranslationViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getLTUITranslationViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL32TranslationUIServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  TranslationUIServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

__CFString *PKTextInputDescriptionForCursorStyle(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E82D97F8[a1];
  }
}

__CFString *PKTextInputDescriptionForCursorMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E82D9818[a1];
  }
}

void sub_1C7E53358(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C7E55520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKRulerController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7E577E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CGPathRandomAccess::CGPathRandomAccess(CGPathRandomAccess *this, const CGPath *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  CGPathRandomAccess::addPath(this, a2);
}

void sub_1C7E57EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CGPathRandomAccess::addPath(CGPathRandomAccess *this, CGPathRef path)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4812000000;
  v10[3] = __Block_byref_object_copy__16;
  v10[4] = __Block_byref_object_dispose__16;
  v10[5] = "";
  v12 = 0;
  v13 = 0;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke;
  block[3] = &unk_1E82D9838;
  block[4] = v10;
  CGPathApplyWithBlock(path, block);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4012000000;
  v7[3] = __Block_byref_object_copy__2;
  v7[4] = __Block_byref_object_dispose__3;
  v7[5] = "";
  v8 = *MEMORY[0x1E695EFF8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_5;
  v6[3] = &unk_1E82D9860;
  v6[6] = this;
  v6[7] = v4;
  v6[4] = v10;
  v6[5] = v7;
  CGPathApplyWithBlock(path, v6);
  CGPathRandomAccessSubpath::closeIfNeeded((*(this + 1) - 48));
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v10, 8);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v4;
}

void sub_1C7E580E8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__16(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__16(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((*a2 - 2) < 2)
  {
    v7 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v7 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 3;
LABEL_8:
    *(v8 - 8) = v9;
    return;
  }

  if (v2 == 1)
  {
    v10 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v10 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 1;
    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = v3[7];
    v4 = v3[8];
    if (v5 >= v4)
    {
      v11 = v3[6];
      v12 = v5 - v11;
      v13 = (v5 - v11) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v15 = v4 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (v5 - v11) >> 4;
      v18 = (16 * v13);
      v19 = (16 * v13 - 16 * v17);
      *v18 = vdupq_n_s64(1uLL);
      v6 = v18 + 1;
      memcpy(v19, v11, v12);
      v3[6] = v19;
      v3[7] = v6;
      v3[8] = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v5 = vdupq_n_s64(1uLL);
      v6 = v5 + 1;
    }

    v3[7] = v6;
  }
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_5(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = v3[1];
      v6 = ((*(v5 - 16) - *(v5 - 24)) >> 4) - 1;
      v8 = *(v5 - 40);
      v7 = *(v5 - 32);
      if (v8 < v7)
      {
        *v8 = v6;
        *(v8 + 8) = 0;
        v9 = v8 + 16;
        goto LABEL_51;
      }

      v24 = *(v5 - 48);
      v25 = v8 - v24;
      v26 = (v8 - v24) >> 4;
      v27 = v26 + 1;
      if (!((v26 + 1) >> 60))
      {
        v28 = v7 - v24;
        if (v28 >> 3 > v27)
        {
          v27 = v28 >> 3;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF0)
        {
          v29 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v29);
        }

        v47 = v26;
        v48 = 16 * v26;
        *v48 = v6;
        *(v48 + 8) = 0;
        v9 = 16 * v26 + 16;
        v49 = (v48 - 16 * v47);
        memcpy(v49, v24, v25);
        v50 = *(v5 - 48);
        *(v5 - 48) = v49;
        *(v5 - 40) = v9;
        *(v5 - 32) = 0;
        if (v50)
        {
          operator delete(v50);
        }

LABEL_51:
        *(v5 - 40) = v9;
        v51 = v3[1];
        v52 = *(a2 + 8);
        v54 = *(v51 - 16);
        v53 = *(v51 - 8);
        if (v54 < v53)
        {
          v55 = *v52;
LABEL_126:
          *v54 = v55;
          v138 = v54 + 1;
LABEL_141:
          *(v51 - 16) = v138;
          return;
        }

        v56 = *(v51 - 24);
        v57 = (v54 - v56) >> 4;
        v58 = v57 + 1;
        if (!((v57 + 1) >> 60))
        {
          v59 = v53 - v56;
          if (v59 >> 3 > v58)
          {
            v58 = v59 >> 3;
          }

          if (v59 >= 0x7FFFFFFFFFFFFFF0)
          {
            v60 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v51 - 24, v60);
          }

          v108 = (16 * v57);
          v109 = *v52;
LABEL_139:
          *v108 = v109;
          v138 = v108 + 1;
          v149 = *(v51 - 24);
          v150 = *(v51 - 16) - v149;
          v151 = v108 - v150;
          memcpy(v108 - v150, v149, v150);
          v152 = *(v51 - 24);
          *(v51 - 24) = v151;
          *(v51 - 16) = v138;
          *(v51 - 8) = 0;
          if (v152)
          {
            operator delete(v152);
          }

          goto LABEL_141;
        }

        goto LABEL_143;
      }
    }

    else
    {
      v16 = v3[1];
      if (v16 != *v3)
      {
        CGPathRandomAccessSubpath::closeIfNeeded((v16 - 3));
        v16 = v3[1];
      }

      v17 = v3[2];
      if (v16 >= v17)
      {
        v36 = *v3;
        v37 = v16 - *v3;
        v38 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 4) + 1;
        if (v38 > 0x555555555555555)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v39 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v36) >> 4);
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x2AAAAAAAAAAAAAALL)
        {
          v40 = 0x555555555555555;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          if (v40 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v76 = (16 * (v37 >> 4));
        v76[1] = 0u;
        v76[2] = 0u;
        *v76 = 0u;
        v18 = v76 + 3;
        v77 = v76 - v37;
        if (v36 != v16)
        {
          v78 = v36;
          v79 = v77;
          do
          {
            *v79 = *v78;
            *(v79 + 2) = *(v78 + 2);
            *v78 = 0;
            *(v78 + 1) = 0;
            *(v78 + 2) = 0;
            *(v79 + 4) = 0;
            *(v79 + 5) = 0;
            *(v79 + 24) = *(v78 + 24);
            *(v79 + 5) = *(v78 + 5);
            *(v78 + 3) = 0;
            *(v78 + 4) = 0;
            *(v78 + 5) = 0;
            v78 += 3;
            v79 += 48;
          }

          while (v78 != v16);
          do
          {
            std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(v36);
            v36 += 3;
          }

          while (v36 != v16);
          v36 = *v3;
        }

        *v3 = v77;
        v3[1] = v18;
        v3[2] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        v16[1] = 0u;
        v16[2] = 0u;
        *v16 = 0u;
        v18 = v16 + 3;
      }

      v3[1] = v18;
      v80 = (*(*(a1[4] + 8) + 48) - 0x5555555555555555 * (v18 - *v3) + 16 * ~a1[7]);
      v81 = *v80;
      if (*v80 <= (*(v18 - 4) - *(v18 - 6)) >> 4)
      {
        std::vector<CGPoint>::reserve((v3[1] - 24), v80[1]);
        *(*(a1[5] + 8) + 48) = **(a2 + 8);
        v82 = v3[1];
        v83 = *(a1[5] + 8);
        v85 = *(v82 - 16);
        v84 = *(v82 - 8);
        if (v85 >= v84)
        {
          v87 = *(v82 - 24);
          v88 = (v85 - v87) >> 4;
          v89 = v88 + 1;
          if ((v88 + 1) >> 60)
          {
            goto LABEL_143;
          }

          v90 = v84 - v87;
          if (v90 >> 3 > v89)
          {
            v89 = v90 >> 3;
          }

          if (v90 >= 0x7FFFFFFFFFFFFFF0)
          {
            v91 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v89;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v82 - 24, v91);
          }

          v144 = (16 * v88);
          *v144 = *(v83 + 48);
          v86 = 16 * v88 + 16;
          v145 = *(v82 - 24);
          v146 = *(v82 - 16) - v145;
          v147 = v144 - v146;
          memcpy(v144 - v146, v145, v146);
          v148 = *(v82 - 24);
          *(v82 - 24) = v147;
          *(v82 - 16) = v86;
          *(v82 - 8) = 0;
          if (v148)
          {
            operator delete(v148);
          }
        }

        else
        {
          *v85 = *(v83 + 48);
          v86 = (v85 + 1);
        }

        *(v82 - 16) = v86;
        return;
      }

      if (!(v81 >> 60))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v81);
      }
    }

LABEL_144:
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (v4 == 2)
  {
    v19 = v3[1];
    v20 = ((*(v19 - 16) - *(v19 - 24)) >> 4) - 1;
    v22 = *(v19 - 40);
    v21 = *(v19 - 32);
    if (v22 >= v21)
    {
      v41 = *(v19 - 48);
      v42 = v22 - v41;
      v43 = (v22 - v41) >> 4;
      v44 = v43 + 1;
      if ((v43 + 1) >> 60)
      {
        goto LABEL_144;
      }

      v45 = v21 - v41;
      if (v45 >> 3 > v44)
      {
        v44 = v45 >> 3;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF0)
      {
        v46 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v46);
      }

      v92 = v43;
      v93 = 16 * v43;
      *v93 = v20;
      *(v93 + 8) = 1;
      v23 = 16 * v43 + 16;
      v94 = (v93 - 16 * v92);
      memcpy(v94, v41, v42);
      v95 = *(v19 - 48);
      *(v19 - 48) = v94;
      *(v19 - 40) = v23;
      *(v19 - 32) = 0;
      if (v95)
      {
        operator delete(v95);
      }
    }

    else
    {
      *v22 = v20;
      *(v22 + 8) = 1;
      v23 = v22 + 16;
    }

    *(v19 - 40) = v23;
    v96 = v3[1];
    v98 = *(v96 - 16);
    v97 = *(v96 - 8);
    v99 = vmlaq_f64(v98[-1], vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), v98[-1]));
    if (v98 >= v97)
    {
      v101 = *(v96 - 24);
      v102 = v98 - v101;
      v103 = (v98 - v101) >> 4;
      v104 = v103 + 1;
      if ((v103 + 1) >> 60)
      {
        goto LABEL_143;
      }

      v105 = v97 - v101;
      if (v105 >> 3 > v104)
      {
        v104 = v105 >> 3;
      }

      v106 = v105 >= 0x7FFFFFFFFFFFFFF0;
      v107 = 0xFFFFFFFFFFFFFFFLL;
      if (!v106)
      {
        v107 = v104;
      }

      if (v107)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v96 - 24, v107);
      }

      v117 = (v98 - v101) >> 4;
      v118 = (16 * v103);
      v119 = (16 * v103 - 16 * v117);
      *v118 = v99;
      f64 = v118[1].f64;
      memcpy(v119, v101, v102);
      v120 = *(v96 - 24);
      *(v96 - 24) = v119;
      *(v96 - 16) = f64;
      *(v96 - 8) = 0;
      if (v120)
      {
        operator delete(v120);
      }
    }

    else
    {
      *v98 = v99;
      f64 = v98[1].f64;
    }

    *(v96 - 16) = f64;
    v121 = v3[1];
    v122 = vmlaq_f64(*(*(a2 + 8) + 16), vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), *(*(a2 + 8) + 16)));
    v124 = *(v121 - 16);
    v123 = *(v121 - 8);
    if (v124 >= v123)
    {
      v126 = *(v121 - 24);
      v127 = v124 - v126;
      v128 = (v124 - v126) >> 4;
      v129 = v128 + 1;
      if ((v128 + 1) >> 60)
      {
        goto LABEL_143;
      }

      v130 = v123 - v126;
      if (v130 >> 3 > v129)
      {
        v129 = v130 >> 3;
      }

      v106 = v130 >= 0x7FFFFFFFFFFFFFF0;
      v131 = 0xFFFFFFFFFFFFFFFLL;
      if (!v106)
      {
        v131 = v129;
      }

      if (v131)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v121 - 24, v131);
      }

      v132 = (v124 - v126) >> 4;
      v133 = (16 * v128);
      v134 = (16 * v128 - 16 * v132);
      *v133 = v122;
      v125 = v133[1].f64;
      memcpy(v134, v126, v127);
      v135 = *(v121 - 24);
      *(v121 - 24) = v134;
      *(v121 - 16) = v125;
      *(v121 - 8) = 0;
      if (v135)
      {
        operator delete(v135);
      }
    }

    else
    {
      *v124 = v122;
      v125 = v124 + 16;
    }

    *(v121 - 16) = v125;
    v51 = v3[1];
    v136 = *(a2 + 8);
    v54 = *(v51 - 16);
    v137 = *(v51 - 8);
    if (v54 < v137)
    {
      v55 = *(v136 + 16);
      goto LABEL_126;
    }

    v139 = *(v51 - 24);
    v140 = (v54 - v139) >> 4;
    v141 = v140 + 1;
    if (!((v140 + 1) >> 60))
    {
      v142 = v137 - v139;
      if (v142 >> 3 > v141)
      {
        v141 = v142 >> 3;
      }

      if (v142 >= 0x7FFFFFFFFFFFFFF0)
      {
        v143 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v143 = v141;
      }

      if (v143)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v51 - 24, v143);
      }

      v108 = (16 * v140);
      v109 = *(v136 + 16);
      goto LABEL_139;
    }

LABEL_143:
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (v4 != 3)
  {
    return;
  }

  v10 = v3[1];
  v11 = ((*(v10 - 16) - *(v10 - 24)) >> 4) - 1;
  v13 = *(v10 - 40);
  v12 = *(v10 - 32);
  if (v13 >= v12)
  {
    v30 = *(v10 - 48);
    v31 = v13 - v30;
    v32 = (v13 - v30) >> 4;
    v33 = v32 + 1;
    if ((v32 + 1) >> 60)
    {
      goto LABEL_144;
    }

    v34 = v12 - v30;
    if (v34 >> 3 > v33)
    {
      v33 = v34 >> 3;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFF0)
    {
      v35 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v35);
    }

    v61 = v32;
    v62 = 16 * v32;
    *v62 = v11;
    *(v62 + 8) = 1;
    v14 = 16 * v32 + 16;
    v63 = (v62 - 16 * v61);
    memcpy(v63, v30, v31);
    v64 = *(v10 - 48);
    *(v10 - 48) = v63;
    *(v10 - 40) = v14;
    *(v10 - 32) = 0;
    if (v64)
    {
      operator delete(v64);
    }
  }

  else
  {
    *v13 = v11;
    *(v13 + 8) = 1;
    v14 = v13 + 16;
  }

  *(v10 - 40) = v14;
  v65 = v3[1];
  v66 = *(a2 + 8);
  v68 = *(v65 - 16);
  v67 = *(v65 - 8);
  if (v67 - v68 >= 33)
  {
    v74 = *v66;
    v75 = v66[2];
    v68[1] = v66[1];
    v68[2] = v75;
    *v68 = v74;
    *(v65 - 16) = v68 + 3;
    return;
  }

  v69 = *(v65 - 24);
  v70 = (v68 - v69) >> 4;
  if ((v70 + 3) >> 60)
  {
    goto LABEL_143;
  }

  v71 = v67 - v69;
  v72 = v71 >> 3;
  if (v71 >> 3 <= (v70 + 3))
  {
    v72 = v70 + 3;
  }

  if (v71 >= 0x7FFFFFFFFFFFFFF0)
  {
    v73 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v73 = v72;
  }

  if (v73)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v65 - 24, v73);
  }

  v110 = 0;
  v111 = 16 * v70;
  do
  {
    *(v111 + v110 * 16) = v66[v110];
    ++v110;
  }

  while (v110 != 3);
  memcpy((v111 + 48), v68, *(v65 - 16) - v68);
  v112 = *(v65 - 24);
  v113 = v111 + 48 + *(v65 - 16) - v68;
  *(v65 - 16) = v68;
  v114 = v68 - v112;
  v115 = (v111 - (v68 - v112));
  memcpy(v115, v112, v114);
  v116 = *(v65 - 24);
  *(v65 - 24) = v115;
  *(v65 - 16) = v113;
  *(v65 - 8) = 0;
  if (v116)
  {

    operator delete(v116);
  }
}

void CGPathRandomAccessSubpath::closeIfNeeded(CGPathRandomAccessSubpath *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = v2 - *this;
  v4 = v3 >> 4;
  if ((v3 >> 4) >= 2)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = ((v7 - v6) >> 4) - 1;
    if (*(v2 - 16) != v8 && (*(v7 - 16) != *v6 || *(v7 - 8) != v6[1]))
    {
      v10 = *(this + 2);
      if (v2 >= v10)
      {
        v12 = v4 + 1;
        if ((v4 + 1) >> 60)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v13 = v10 - v1;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v14);
        }

        v15 = 16 * v4;
        *v15 = v8;
        *(v15 + 8) = 0;
        v11 = 16 * v4 + 16;
        memcpy(0, v1, v3);
        v16 = *this;
        *this = 0;
        *(this + 1) = v11;
        *(this + 2) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v2 = v8;
        *(v2 + 8) = 0;
        v11 = v2 + 16;
      }

      *(this + 1) = v11;
    }
  }
}

void std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZNK25CGPathRandomAccessSubpath11clipperPathEdRNSt3__16vectorIN10ClipperLib8IntPointENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 48);
  v4 = (a2 * v3);
  v5 = (a3 * v3);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (v8 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
    v12 = *v6;
    v13 = v8 - *v6;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 < 0x555555555555555)
    {
      v11 = v14;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(*(a1 + 40), v11);
    }

    v16 = (8 * (v13 >> 3));
    *v16 = v4;
    v16[1] = v5;
    v16[2] = *(v7 + 48);
    v10 = v16 + 3;
    v17 = v16 - v13;
    memcpy(v16 - v13, v12, v13);
    v18 = *v6;
    *v6 = v17;
    *(v6 + 8) = v10;
    *(v6 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v8 = v4;
    v8[1] = v5;
    v8[2] = *(v7 + 48);
    v10 = v8 + 3;
  }

  *(v6 + 8) = v10;
}

void sub_1C7E596A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKTextInputCanvasController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7E5B104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1C7E5B2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1C7E5B3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1C7E5B57C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7E5C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

void PKInputSmoother::drawingBeganWithInk(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v10 = a2;
  PKInputBaseFilter<_PKStrokePoint,_PKStrokePoint>::drawingBeganWithInk(a1, v10, a3, a4);
  [v10 behavior];
  if (a3 == 1)
    v7 = {;
    v8 = [v7 smoothingDescriptor];
    [v8 stylusSmoothing];
  }

  else
    v7 = {;
    v8 = [v7 smoothingDescriptor];
    [v8 touchSmoothing];
  }

  *(a1 + 104) = v9;
}

void PKInputSmoother::run(PKInputSmoother *this)
{
  v1 = (this + 48);
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5);
  v3 = *(this + 5);
  v53 = v2 > v3;
  v4 = v2 - v3;
  if (v53)
  {
    v5 = this;
    v6 = *(this + 14);
    v68 = (this + 112);
    if (*(this + 15) != v6)
    {
      *(this + 15) = v6;
    }

    if (0x6DB6DB6DB6DB6DB7 * ((*(this + 16) - v6) >> 3) < 8 * v4)
    {
      if (8 * v4 <= 0x492492492492492)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PKSmoothingPoint>>(8 * v4);
      }

LABEL_58:
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v7 = *(this + 5);
    if (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 5) - 1)
    {
      v8 = 1.0 / *(this + 3);
      do
      {
        for (i = 0; i != 8; ++i)
        {
          v10 = vcvtd_n_f64_u64(i, 3uLL);
          v11 = splinePoint(v1, v7, b, v10);
          v13 = v12;
          v14 = splinePoint(v1, v7, b2, v10);
          v16 = v15;
          v17 = splinePoint(v1, v7, b3, v10);
          v19 = v18;
          v20 = pow(v16 * v16 + v14 * v14, 1.5);
          if (v20 <= 0.001)
          {
            v21 = 100.0;
          }

          else
          {
            v21 = fabs((v14 * v19 - v16 * v17) / v20);
          }

          v22 = *(v5 + 14);
          v23 = *(v5 + 15);
          v24 = 0.0;
          v25 = v23 - v22;
          if (v23 != v22)
          {
            v24 = sqrt((v13 - *(v23 - 6)) * (v13 - *(v23 - 6)) + (v11 - *(v23 - 7)) * (v11 - *(v23 - 7)));
          }

          v26 = fmax(v21 * *(v5 + 3), 0.0);
          v27 = (*(v5 + 6) + 96 * v7);
          v28 = v10 * v27[12] + *v27 * (1.0 - v10);
          v29 = v10 * v27[15] + v27[3] * (1.0 - v10);
          v30 = v8 * v24;
          v31 = *(v5 + 16);
          if (v23 >= v31)
          {
            v33 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 3) + 1;
            if (v33 > 0x492492492492492)
            {
              goto LABEL_58;
            }

            v34 = 0x6DB6DB6DB6DB6DB7 * ((v31 - v22) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x249249249249249)
            {
              v35 = 0x492492492492492;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PKSmoothingPoint>>(v35);
            }

            v36 = 8 * (v25 >> 3);
            *v36 = v11;
            *(v36 + 8) = v13;
            *(v36 + 16) = v26;
            *(v36 + 24) = 0;
            *(v36 + 32) = v30;
            *(v36 + 40) = v28;
            *(v36 + 48) = v29;
            v32 = v36 + 56;
            v37 = v36 - v25;
            memcpy((v36 - v25), v22, v25);
            this = *(v5 + 14);
            *(v5 + 14) = v37;
            *(v5 + 15) = v32;
            *(v5 + 16) = 0;
            if (this)
            {
              operator delete(this);
            }
          }

          else
          {
            *v23 = v11;
            v23[1] = v13;
            v23[2] = v26;
            v23[3] = 0.0;
            v23[4] = v30;
            v23[5] = v28;
            v32 = (v23 + 7);
            v23[6] = v29;
          }

          *(v5 + 15) = v32;
        }

        ++v7;
      }

      while (v7 < -1 - 0x5555555555555555 * ((*(v5 + 7) - *(v5 + 6)) >> 5));
    }

    PKInputSmoother::smoothCurvaturesDistance(this, v68);
    v38 = *(v5 + 5);
    std::vector<_PKStrokePoint>::resize(v5 + 10, *(v5 + 9));
    if (*(v5 + 11) == *(v5 + 10))
    {
      std::vector<_PKStrokePoint>::push_back[abi:ne200100](v5 + 80, *v1);
    }

    v39 = *(v5 + 14);
    v40 = *(v5 + 15) - v39;
    if (!v40 || v40 == 56)
    {
      v44 = v38;
      v52 = v38;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v43 = 0.0;
      v44 = v38;
      do
      {
        v45 = (v39 + v41);
        v46 = v45[11];
        v47 = v45[6];
        v48 = v45[13];
        v49 = (v45[12] - v45[5]) * 1000.0;
        if (v49 > 2.0)
        {
          v49 = 2.0;
        }

        if (v46 >= v49)
        {
          v49 = v45[11];
        }

        v50 = v46 * 0.4 + (v45[3] + v45[10]) * 0.5 * v49;
        v51 = v47 - v48;
        if (v47 - v48 < 0.0)
        {
          v51 = -(v47 - v48);
        }

        v43 = v43 + v51 + v50;
        v52 = *(v5 + 5) + (v42 >> 3);
        v53 = v43 > *(v5 + 13) && v38 < v52;
        if (v53)
        {
          std::vector<_PKStrokePoint>::push_back[abi:ne200100](v5 + 80, (*(v5 + 6) + 96 * v52));
          v43 = 0.0;
          if (v52 < *(v5 + 4))
          {
            *(v5 + 9) = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 11) - *(v5 + 10)) >> 5);
            v44 = v52;
          }
        }

        else
        {
          v52 = v38;
        }

        ++v42;
        v39 = *(v5 + 14);
        v41 += 56;
        v38 = v52;
      }

      while (v42 < 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 15) - v39) >> 3) - 1);
    }

    *(v5 + 5) = v44;
    v54 = *(v5 + 7);
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *(v5 + 6)) >> 5);
    if (v52 + 1 < v55)
    {
      v56 = *(v54 - 80);
      v71[0] = *(v54 - 96);
      v71[1] = v56;
      v57 = *(v54 - 64);
      v58 = *(v54 - 48);
      v59 = *(v54 - 16);
      v71[4] = *(v54 - 32);
      v71[5] = v59;
      v71[2] = v57;
      v71[3] = v58;
      v60 = *(v5 + 11);
      if (v60 == *(v5 + 10) || (v61 = (v54 - 96), v62 = *(v60 - 48), __s1[2] = *(v60 - 64), __s1[3] = v62, v63 = *(v60 - 16), __s1[4] = *(v60 - 32), __s1[5] = v63, v64 = *(v60 - 80), __s1[0] = *(v60 - 96), __s1[1] = v64, v65 = v61[3], __s2[2] = v61[2], __s2[3] = v65, v66 = v61[5], __s2[4] = v61[4], __s2[5] = v66, v67 = v61[1], __s2[0] = *v61, __s2[1] = v67, memcmp(__s1, __s2, 0x60uLL)))
      {
        std::vector<_PKStrokePoint>::push_back[abi:ne200100](v5 + 80, v71);
        v55 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 7) - *(v5 + 6)) >> 5);
      }

      if (*(v5 + 4) >= v55)
      {
        *(v5 + 9) = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 11) - *(v5 + 10)) >> 5);
      }
    }
  }
}

void PKInputSmoother::smoothCurvaturesDistance(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
    v6 = v2 + 88;
    v7 = v5 - 1;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v8 = v4 - 1;
      if (!v4)
      {
        v8 = 0;
      }

      if (v4 >= 2)
      {
        v9 = (v6 - 56 * (v4 != 0));
        v10 = 0.0;
        do
        {
          v11 = v8--;
          if (v11 < 2)
          {
            break;
          }

          v12 = *v9;
          v9 -= 7;
          v10 = v10 + v12;
        }

        while (v10 < 0.85);
      }

      if (v4 < v7)
      {
        v13 = v4 + 1;
      }

      else
      {
        v13 = v7;
      }

      if (v13 < v7)
      {
        v14 = (v2 + 32 + 56 * v13);
        v15 = 0.0;
        do
        {
          if (++v13 >= v7)
          {
            break;
          }

          v16 = *v14;
          v14 += 7;
          v15 = v15 + v16;
        }

        while (v15 < 0.85);
      }

      v17 = 0.0;
      if (v8 <= v13)
      {
        v18 = v13 - v8 + 1;
        v19 = (v2 + 16 + 56 * v8);
        do
        {
          v20 = *v19;
          v19 += 7;
          v21 = v20;
          if (v17 < v20)
          {
            v17 = v21;
          }

          --v18;
        }

        while (v18);
      }

      *(v2 + 56 * v4 + 24) = v17;
      v6 += 56;
      ++v4;
    }

    while (v4 != v5);
  }
}

uint64_t PKInputSmoother::copyUpdatedRangeFromIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 136));
  v7 = [WeakRetained isSnappedToRuler];

  if (v7)
  {
    v8 = *(**(a1 + 8) + 24);

    return v8();
  }

  else
  {

    return PKInputBufferedFilter<_PKStrokePoint,_PKStrokePoint>::copyUpdatedRangeFromIndex(a1, a2, a3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKSmoothingPoint>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id PKPencilSqueezeAnalyticsLog()
{
  if (PKPencilSqueezeAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&PKPencilSqueezeAnalyticsLog_onceToken, &__block_literal_global_45);
  }

  v1 = PKPencilSqueezeAnalyticsLog_log;

  return v1;
}

void __PKPencilSqueezeAnalyticsLog_block_invoke()
{
  v0 = os_log_create("com.apple.PencilKit", "PencilSqueezeAnalytics");
  v1 = PKPencilSqueezeAnalyticsLog_log;
  PKPencilSqueezeAnalyticsLog_log = v0;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void ClipperLib::PolyTree::Clear(ClipperLib::PolyTree *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  v4 = (this + 80);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 8 * v5);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v2 = *(this + 10);
        v3 = *(this + 11);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::resize(v4, 0);

  std::vector<ClipperLib::PolyNode *>::resize(this + 4, 0);
}

void std::vector<ClipperLib::PolyNode *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<ClipperLib::PolyNode *>::__append(a1, a2 - v2);
  }
}

uint64_t ClipperLib::PolyTree::GetFirst(ClipperLib::PolyTree *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ClipperLib::PolyTree::Total(ClipperLib::PolyTree *this)
{
  v2 = *(this + 10);
  result = (*(this + 11) - v2) >> 3;
  if (result >= 1)
  {
    return result - (**(this + 4) != *v2);
  }

  return result;
}

double ClipperLib::PolyNode::PolyNode(ClipperLib::PolyNode *this)
{
  *this = &unk_1F47697C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0u;
  return result;
}

{
  *this = &unk_1F47697C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0u;
  return result;
}

void ClipperLib::PolyNode::AddChild(ClipperLib::PolyNode *this, ClipperLib::PolyNode *a2)
{
  v5 = *(this + 4);
  v6 = *(this + 5);
  v4 = this + 32;
  v7 = *(v4 + 2);
  v8 = v6 - v5;
  if (v6 >= v7)
  {
    v10 = v8 >> 3;
    v11 = (v8 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v5;
    v13 = v12 >> 2;
    if (v12 >> 2 <= v11)
    {
      v13 = (v8 >> 3) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(v4, v14);
    }

    *(8 * v10) = a2;
    v9 = 8 * v10 + 8;
    v15 = *(this + 4);
    v16 = *(this + 5) - v15;
    v17 = (8 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(this + 4);
    *(this + 4) = v17;
    *(this + 5) = v9;
    *(this + 6) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a2;
    v9 = (v6 + 1);
  }

  *(this + 5) = v9;
  *(a2 + 7) = this;
  *(a2 + 16) = v8 >> 3;
}

uint64_t ClipperLib::PolyNode::GetNext(ClipperLib::PolyNode *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    do
    {
      v4 = *(this + 7);
      if (!v4)
      {
        return 0;
      }

      v2 = *(this + 16);
      v3 = *(v4 + 32);
      this = *(this + 7);
    }

    while (((*(v4 + 40) - v3) >> 3) - 1 == v2);
    v1 = v3 + 8 * (v2 + 1);
  }

  return *v1;
}

uint64_t ClipperLib::PolyNode::GetNextSiblingUp(ClipperLib::PolyNode *this)
{
  while (1)
  {
    v1 = *(this + 7);
    if (!v1)
    {
      break;
    }

    v2 = *(this + 16);
    v3 = *(v1 + 32);
    this = *(this + 7);
    if (((*(v1 + 40) - v3) >> 3) - 1 != v2)
    {
      return *(v3 + 8 * (v2 + 1));
    }
  }

  return 0;
}

uint64_t ClipperLib::PolyNode::IsHole(ClipperLib::PolyNode *this)
{
  v1 = 1;
  do
  {
    v2 = v1;
    this = *(this + 7);
    v1 ^= 1u;
  }

  while (this);
  return v2 & 1;
}

uint64_t ClipperLib::Int128Mul@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a2 ^ this;
  if (this >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = -this;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = HIDWORD(v5);
  v7 = v5;
  v8 = v5 * v4;
  v9 = v6 * v4 + v7 * HIDWORD(v4);
  v10 = HIDWORD(v9) + v6 * HIDWORD(v4);
  v11 = v8 + (v9 << 32);
  *a3 = v11;
  a3[1] = v10;
  if (__CFADD__(v8, v9 << 32))
  {
    a3[1] = ++v10;
    if ((v3 & 0x8000000000000000) == 0)
    {
      return this;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    return this;
  }

  v12 = -v10;
  if (v11)
  {
    v12 = ~v10;
  }

  *a3 = -v11;
  a3[1] = v12;
  return this;
}

double ClipperLib::Area(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  result = 0.0;
  if (v2 >= 3)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = v2 & 0x7FFFFFFF;
    v7 = (v1 + 8);
    do
    {
      result = result + (*(v1 + 24 * v5) + *(v7 - 1)) * (*(v1 + 24 * v5 + 8) - *v7);
      v5 = v4++;
      v7 += 3;
    }

    while (v6 != v4);
    return result * -0.5;
  }

  return result;
}

double ClipperLib::Area(void *a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = a1;
    do
    {
      result = result + (v2[1] + *(v2[5] + 8)) * (*(v2[5] + 16) - v2[2]);
      v2 = v2[4];
    }

    while (v2 != a1);
    return result * 0.5;
  }

  return result;
}

double ClipperLib::Area(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0.0;
  v3 = *(a1 + 24);
  do
  {
    v2 = v2 + (v3[1] + *(v3[5] + 8)) * (*(v3[5] + 16) - v3[2]);
    v3 = v3[4];
  }

  while (v3 != v1);
  return v2 * 0.5;
}

uint64_t ClipperLib::PointIsVertex(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2;
  do
  {
    v5 = v4[1] == v2 && v4[2] == v3;
    result = v5;
    if (v5)
    {
      break;
    }

    v4 = v4[4];
  }

  while (v4 != a2);
  return result;
}

uint64_t ClipperLib::PointInPolygon(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
  if (v3 < 3)
  {
    return 0;
  }

  result = 0;
  v6 = *v2;
  v7 = v2[1];
  v8 = 1;
  v11 = a1;
  v9 = *a1;
  v10 = v11[1];
  while (1)
  {
    v12 = v3 == v8 ? 0 : v8;
    v13 = &v2[3 * v12];
    v14 = *v13;
    v15 = v13[1];
    if (v15 == v10 && (v14 == v9 || v7 == v10 && v6 >= v9 != v14 > v9))
    {
      return 0xFFFFFFFFLL;
    }

    if (v7 < v10 == v15 >= v10)
    {
      v17 = __OFSUB__(v6, v9);
      v16 = v6 - v9 < 0;
      v18 = v6 - v9;
      if (v16 != v17)
      {
        v19 = v14 - v9;
        if (v14 <= v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v19 = v14 - v9;
        if (v14 > v9)
        {
          result = (1 - result);
          goto LABEL_22;
        }
      }

      v20 = v18 * (v15 - v10) - v19 * (v7 - v10);
      if (v20 == 0.0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v15 <= v7 != v20 > 0.0)
      {
        result = (1 - result);
      }

      else
      {
        result = result;
      }
    }

LABEL_22:
    ++v8;
    v7 = v15;
    v6 = v14;
    if (v8 > v3)
    {
      return result;
    }
  }
}

uint64_t ClipperLib::PointInPolygon(void *a1, void *a2)
{
  result = 0;
  v6 = a1;
  v4 = *a1;
  v5 = v6[1];
  v7 = a2;
  while (1)
  {
    v8 = v7;
    v7 = v7[4];
    v9 = v7[2];
    if (v9 == v5)
    {
      v10 = v7[1];
      if (v10 == v4)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = v8[2];
      if (v11 == v5)
      {
        if (v10 > v4 != v8[1] >= v4)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = v8[2];
    }

    if (v9 >= v5 != v11 < v5)
    {
      goto LABEL_20;
    }

    v12 = v8[1];
    v13 = v7[1];
    v15 = __OFSUB__(v12, v4);
    v14 = v12 - v4 < 0;
    v16 = v12 - v4;
    if (v14 == v15)
    {
      break;
    }

    v15 = __OFSUB__(v13, v4);
    v17 = v13 == v4;
    v14 = v13 - v4 < 0;
    v18 = v13 - v4;
    if (!(v14 ^ v15 | v17))
    {
      goto LABEL_16;
    }

LABEL_20:
    if (v7 == a2)
    {
      return result;
    }
  }

  v15 = __OFSUB__(v13, v4);
  v17 = v13 == v4;
  v14 = v13 - v4 < 0;
  v18 = v13 - v4;
  if (!(v14 ^ v15 | v17))
  {
    result = (1 - result);
    goto LABEL_20;
  }

LABEL_16:
  v19 = v16 * (v9 - v5) - v18 * (v11 - v5);
  if (v19 != 0.0)
  {
    if (v9 <= v11 != v19 > 0.0)
    {
      result = (1 - result);
    }

    else
    {
      result = result;
    }

    goto LABEL_20;
  }

  return 0xFFFFFFFFLL;
}

BOOL ClipperLib::Poly2ContainsPoly1(uint64_t a1, void *a2)
{
  v4 = a1;
  while (1)
  {
    v5 = ClipperLib::PointInPolygon((v4 + 8), a2);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v4 = *(v4 + 32);
    if (v4 == a1)
    {
      return 1;
    }
  }

  return v5 != 0;
}

BOOL ClipperLib::SlopesEqual(void *a1, void *a2, int a3)
{
  if (a3)
  {
    ClipperLib::Int128Mul(a1[7] - a1[1], a2[6] - *a2, v8);
    ClipperLib::Int128Mul(a1[6] - *a1, a2[7] - a2[1], v7);
    return v8[1] == v7[1] && v8[0] == v7[0];
  }

  else
  {
    return (a2[6] - *a2) * (a1[7] - a1[1]) == (a2[7] - a2[1]) * (a1[6] - *a1);
  }
}

BOOL ClipperLib::SlopesEqual(void *a1, uint64_t *a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = *a2;
    v6 = a2[1];
    ClipperLib::Int128Mul(a1[1] - v6, *a2 - *a3, v11);
    ClipperLib::Int128Mul(*a1 - v7, v6 - a3[1], v10);
    return v11[1] == v10[1] && v11[0] == v10[0];
  }

  else
  {
    return (*a2 - *a3) * (a1[1] - a2[1]) == (a2[1] - a3[1]) * (*a1 - *a2);
  }
}

BOOL ClipperLib::SlopesEqual(void *a1, void *a2, void *a3, void *a4, int a5)
{
  if (a5)
  {
    ClipperLib::Int128Mul(a1[1] - a2[1], *a3 - *a4, v12);
    ClipperLib::Int128Mul(*a1 - *a2, a3[1] - a4[1], v11);
    return v12[1] == v11[1] && v12[0] == v11[0];
  }

  else
  {
    return (*a3 - *a4) * (a1[1] - a2[1]) == (a3[1] - a4[1]) * (*a1 - *a2);
  }
}

uint64_t ClipperLib::IntersectPoint(uint64_t result, uint64_t a2, int64x2_t *a3)
{
  a3[1].i64[0] = 0xBF800000BF800000;
  v3 = *(result + 72);
  v4 = *(a2 + 72);
  if (v3 == v4)
  {
    v5 = *(result + 32);
    a3->i64[1] = v5;
    if (*(result + 56) != v5)
    {
      v11 = v3 * (v5 - *(result + 8));
      v12 = 0.5;
      if (v11 < 0.0)
      {
        v12 = -0.5;
      }

      v6 = *result + (v11 + v12);
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  if (v3 == 0.0)
  {
    v7 = *result;
    a3->i64[0] = *result;
    v8 = *(a2 + 8);
    if (v4 != -1.0e40)
    {
      v9 = v8 - *a2 / v4;
      v10 = v7 / v4;
LABEL_13:
      v14 = v10 + v9;
      v15 = 0.5;
      if (v14 < 0.0)
      {
        v15 = -0.5;
      }

      v8 = (v14 + v15);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v4 == 0.0)
  {
    v13 = *a2;
    a3->i64[0] = *a2;
    v8 = *(result + 8);
    if (v3 != -1.0e40)
    {
      v9 = v8 - *result / v3;
      v10 = v13 / v3;
      goto LABEL_13;
    }

LABEL_16:
    a3->i64[1] = v8;
    goto LABEL_17;
  }

  v20 = *result - *(result + 8) * v3;
  v21 = *a2 - *(a2 + 8) * v4;
  v22 = (v21 - v20) / (v3 - v4);
  v23 = v21 + v4 * v22;
  v24.f64[0] = v20 + v3 * v22;
  if (fabs(v3) >= fabs(v4))
  {
    v24.f64[0] = v23;
  }

  v24.f64[1] = v22;
  __asm
  {
    FMOV            V4.2D, #0.5
    FMOV            V5.2D, #-0.5
  }

  v31 = vcvtq_s64_f64(vaddq_f64(v24, vbslq_s8(vcltzq_f64(v24), _Q5, _Q4)));
  *a3 = v31;
  v8 = v31.i64[1];
LABEL_17:
  v16 = *(result + 56);
  v17 = *(a2 + 56);
  if (v8 < v16 || v8 < v17)
  {
    if (v16 <= v17)
    {
      v8 = *(a2 + 56);
    }

    else
    {
      v8 = *(result + 56);
    }

    a3->i64[1] = v8;
    if (fabs(v3) >= fabs(v4))
    {
      if (*(a2 + 56) == v8)
      {
        v19 = *(a2 + 48);
        goto LABEL_38;
      }

      v32 = *a2;
      v33 = v4 * (v8 - *(a2 + 8));
    }

    else
    {
      if (*(result + 56) == v8)
      {
        v19 = *(result + 48);
LABEL_38:
        a3->i64[0] = v19;
        goto LABEL_39;
      }

      v32 = *result;
      v33 = v3 * (v8 - *(result + 8));
    }

    v34 = 0.5;
    if (v33 < 0.0)
    {
      v34 = -0.5;
    }

    v19 = v32 + (v33 + v34);
    goto LABEL_38;
  }

LABEL_39:
  v35 = *(result + 32);
  if (v8 <= v35)
  {
    return result;
  }

  a3->i64[1] = v35;
  if (fabs(v3) > fabs(v4))
  {
    if (*(a2 + 56) == v35)
    {
      v6 = *(a2 + 48);
      goto LABEL_49;
    }

    v36 = *a2;
    v37 = v4 * (v35 - *(a2 + 8));
LABEL_46:
    v38 = 0.5;
    if (v37 < 0.0)
    {
      v38 = -0.5;
    }

    v6 = v36 + (v37 + v38);
    goto LABEL_49;
  }

  if (*(result + 56) != v35)
  {
    v36 = *result;
    v37 = v3 * (v35 - *(result + 8));
    goto LABEL_46;
  }

LABEL_3:
  v6 = *(result + 48);
LABEL_49:
  a3->i64[0] = v6;
  return result;
}

int8x16_t ClipperLib::ReversePolyPtLinks(__n128 *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      result = v1[2];
      v1[2] = vextq_s8(result, result, 8uLL);
      v1 = result.i64[0];
    }

    while (result.i64[0] != a1);
  }

  return result;
}

void *ClipperLib::DisposeOutPts(void *result)
{
  if (*result)
  {
    v1 = result;
    *(*(*result + 40) + 32) = 0;
    result = *result;
    if (result)
    {
      do
      {
        *v1 = result[4];
        MEMORY[0x1CCA6ECB0]();
        result = *v1;
      }

      while (*v1);
    }
  }

  return result;
}

uint64_t ClipperLib::InitEdge2(uint64_t result, int a2)
{
  v2 = *(result + 104);
  if (*(result + 32) >= *(v2 + 32))
  {
    *result = *(result + 24);
    *(result + 16) = *(result + 40);
    v4 = *(v2 + 40);
    *(result + 48) = *(v2 + 24);
    *(result + 64) = v4;
  }

  else
  {
    *(result + 48) = *(result + 24);
    *(result + 64) = *(result + 40);
    v3 = *(v2 + 40);
    *result = *(v2 + 24);
    *(result + 16) = v3;
  }

  v5 = *(result + 56) - *(result + 8);
  if (v5)
  {
    v6 = (*(result + 48) - *result) / v5;
  }

  else
  {
    v6 = -1.0e40;
  }

  *(result + 72) = v6;
  *(result + 80) = a2;
  return result;
}

uint64_t ClipperLib::RemoveEdge(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  *(v2 + 104) = v1;
  *(v1 + 112) = v2;
  *(a1 + 112) = 0;
  return v1;
}

__n128 ClipperLib::SwapPoints(ClipperLib *this, IntPoint *a2, IntPoint *a3)
{
  v3 = *(this + 2);
  result = *this;
  v5 = *(a2 + 2);
  *this = *a2;
  *(this + 2) = v5;
  *a2 = result;
  *(a2 + 2) = v3;
  return result;
}

BOOL ClipperLib::GetOverlapSegment(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, int64x2_t *a4, int64x2_t *a5, int64x2_t *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = vabsq_s64(vsubq_s64(*a1, *a2));
  if (vmovn_s64(vcgtq_u64(v8, vdupq_laneq_s64(v8, 1))).u8[0])
  {
    if (vmovn_s64(vcgtq_s64(v6, v7)).u8[0])
    {
      v9 = a1[1].i64[0];
      v10 = *a1;
      v11 = a2[1].i64[0];
      *a1 = *a2;
      a1[1].i64[0] = v11;
      *a2 = v10;
      a2[1].i64[0] = v9;
    }

    v12 = a3->i64[0];
    if (a3->i64[0] > a4->i64[0])
    {
      v13 = a3[1].i64[0];
      v14 = *a3;
      v15 = a4[1].i64[0];
      *a3 = *a4;
      a3[1].i64[0] = v15;
      *a4 = v14;
      a4[1].i64[0] = v13;
      v12 = a3->i64[0];
    }

    if (a1->i64[0] <= v12)
    {
      v16 = a3;
    }

    else
    {
      v16 = a1;
    }

    v17 = *v16;
    a5[1].i64[0] = v16[1].i64[0];
    *a5 = v17;
    if (a2->i64[0] >= a4->i64[0])
    {
      v18 = a4;
    }

    else
    {
      v18 = a2;
    }

    v19 = *v18;
    a6[1].i64[0] = v18[1].i64[0];
    *a6 = v19;
    return a5->i64[0] < a6->i64[0];
  }

  else
  {
    if (vmovn_s64(vcgtq_s64(v7, v6)).i32[1])
    {
      v21 = a1[1].i64[0];
      v22 = *a1;
      v23 = a2[1].i64[0];
      *a1 = *a2;
      a1[1].i64[0] = v23;
      *a2 = v22;
      a2[1].i64[0] = v21;
    }

    v24 = a3->i64[1];
    if (v24 < a4->i64[1])
    {
      v25 = a3[1].i64[0];
      v26 = *a3;
      v27 = a4[1].i64[0];
      *a3 = *a4;
      a3[1].i64[0] = v27;
      *a4 = v26;
      a4[1].i64[0] = v25;
      v24 = a3->i64[1];
    }

    if (a1->i64[1] >= v24)
    {
      v28 = a3;
    }

    else
    {
      v28 = a1;
    }

    v29 = *v28;
    a5[1].i64[0] = v28[1].i64[0];
    *a5 = v29;
    if (a2->i64[1] <= a4->i64[1])
    {
      v30 = a4;
    }

    else
    {
      v30 = a2;
    }

    v31 = *v30;
    a6[1].i64[0] = v30[1].i64[0];
    *a6 = v31;
    return a5->i64[1] > a6->i64[1];
  }
}

uint64_t ClipperLib::FirstIsBottomPt(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = result;
  do
  {
    v4 = v4[5];
    v5 = v4[1];
    v6 = v4[2];
  }

  while (v4 != result && v5 == v2 && v6 == v3);
  v9 = v6 - v3;
  if (v9)
  {
    v10 = (v5 - v2) / v9;
  }

  else
  {
    v10 = -1.0e40;
  }

  v11 = result;
  do
  {
    v11 = v11[4];
    v12 = v11[1];
    v13 = v11[2];
  }

  while (v11 != result && v12 == v2 && v13 == v3);
  v16 = v13 - v3;
  if (v16)
  {
    v17 = (v12 - v2) / v16;
  }

  else
  {
    v17 = -1.0e40;
  }

  v18 = fabs(v10);
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2;
  do
  {
    v21 = v21[5];
    v22 = v21[1];
    v23 = v21[2];
  }

  while (v21 != a2 && v22 == v19 && v23 == v20);
  if (v23 == v20)
  {
    v26 = -1.0e40;
  }

  else
  {
    v26 = (v22 - v19) / (v23 - v20);
  }

  v27 = fabs(v17);
  v28 = a2;
  do
  {
    v28 = v28[4];
    v29 = v28[1];
    v30 = v28[2];
  }

  while (v28 != a2 && v29 == v19 && v30 == v20);
  v33 = fabs(v26);
  v34 = v30 - v20;
  if (v34)
  {
    v35 = (v29 - v19) / v34;
  }

  else
  {
    v35 = -1.0e40;
  }

  v36 = fabs(v35);
  if (v18 >= v27)
  {
    v37 = v18;
  }

  else
  {
    v37 = v27;
  }

  if (v33 >= v36)
  {
    v38 = v33;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == v38 && (v27 >= v18 ? (v39 = v18) : (v39 = v27), v36 >= v33 ? (v40 = v33) : (v40 = v36), v39 == v40))
  {
    if (result)
    {
      v41 = 0.0;
      v42 = result;
      do
      {
        v41 = v41 + (v42[1] + *(v42[5] + 8)) * (*(v42[5] + 16) - v42[2]);
        v42 = v42[4];
      }

      while (v42 != result);
      return v41 * 0.5 > 0.0;
    }
  }

  else
  {
    v43 = v27 >= v33;
    if (v27 < v36)
    {
      v43 = 0;
    }

    return v18 >= v33 && v18 >= v36 || v43;
  }

  return result;
}

void *ClipperLib::GetBottomPt(void *a1)
{
  v1 = a1;
  v2 = a1[4];
  if (v2 == a1)
  {
    return v1;
  }

  v3 = 0;
  do
  {
    v4 = v2[2];
    v5 = v1[2];
    if (v4 > v5)
    {
LABEL_4:
      v3 = 0;
      v1 = v2;
      goto LABEL_11;
    }

    if (v4 == v5)
    {
      v6 = v2[1];
      v7 = v1[1];
      if (v6 <= v7)
      {
        if (v6 < v7)
        {
          goto LABEL_4;
        }

        if (v2[4] != v1 && v2[5] != v1)
        {
          v3 = v2;
        }
      }
    }

LABEL_11:
    v2 = v2[4];
  }

  while (v2 != v1);
  if (!v3 || v3 == v1)
  {
    return v1;
  }

  v8 = v1;
  do
  {
    if (!ClipperLib::FirstIsBottomPt(v2, v3))
    {
      v8 = v3;
    }

    do
    {
      v3 = v3[4];
    }

    while (v3[1] != v8[1] || v3[2] != v8[2]);
  }

  while (v3 != v1);
  return v8;
}

uint64_t ClipperLib::Pt2IsBetweenPt1AndPt3(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  if (*a1 == *a3 && v4 == v6)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v3 == *a2 && v4 == v9)
  {
    return 0;
  }

  if (v5 == v8 && v6 == v9)
  {
    return 0;
  }

  v12 = (v9 > v4) ^ (v9 >= v6);
  if (v3 == v5)
  {
    return v12;
  }

  else
  {
    return (v8 > v3) ^ (v8 >= v5);
  }
}

BOOL ClipperLib::HorzSegmentsOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (this >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = this;
  }

  if (this <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = this;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  return v4 < v7 && v6 < v5;
}

double ClipperLib::ClipperBase::ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_1F47697E0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = &unk_1F47697E0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

void ClipperLib::ClipperBase::~ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_1F47697E0;
  ClipperLib::ClipperBase::Clear(this);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
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

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

{
  ClipperLib::ClipperBase::~ClipperBase(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t *ClipperLib::RangeTest(uint64_t *this, IntPoint *a2, BOOL *a3)
{
  v3 = *this;
  if ((*a2 & 1) == 0)
  {
    if (v3 <= 0x3FFFFFFF && v3 >= -1073741823 && (this[1] - 0x40000000) >= 0xFFFFFFFF80000001)
    {
      return this;
    }

    *a2 = 1;
  }

  if (v3 > 0x3FFFFFFFFFFFFFFFLL || (v3 >= 0xC000000000000001 ? (v6 = (this[1] - 0x4000000000000000) > 0x8000000000000000) : (v6 = 0), !v6))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Coordinate outside allowed range");
  }

  return this;
}

uint64_t ClipperLib::FindNextLocMin(uint64_t result)
{
  while (1)
  {
    while (1)
    {
      v1 = *(result + 112);
      if (*result == *v1 && *(result + 8) == *(v1 + 8) && (*(result + 24) != *(result + 48) || *(result + 32) != *(result + 56)))
      {
        break;
      }

      result = *(result + 104);
    }

    if (*(result + 72) != -1.0e40 && *(v1 + 72) != -1.0e40)
    {
      break;
    }

    v4 = result;
    do
    {
      v5 = v4;
      v4 = *(v4 + 112);
    }

    while (*(v4 + 72) == -1.0e40);
    v6 = v4;
    result = v5;
    if (*(v5 + 72) == -1.0e40)
    {
      result = v5;
      do
      {
        result = *(result + 104);
      }

      while (*(result + 72) == -1.0e40);
      v6 = *(result + 112);
    }

    if (*(result + 56) != *(v6 + 8))
    {
      if (*v4 < *result)
      {
        return v5;
      }

      return result;
    }
  }

  return result;
}

uint64_t ClipperLib::ClipperBase::ProcessBound(uint64_t a1, uint64_t *a2, int a3, __n128 a4)
{
  if (*(a2 + 25) == -2)
  {
    v5 = a2;
    if (a3)
    {
      do
      {
        v6 = v5;
        v7 = *(v5 + 7);
        v5 = *(v5 + 13);
      }

      while (v7 == *(v5 + 1));
      if (v6 != a2)
      {
        a4.n128_u64[0] = 0xC83D6329F1C35CA5;
        do
        {
          if (v6[9] != -1.0e40)
          {
            break;
          }

          v6 = *(v6 + 14);
        }

        while (v6 != a2);
      }
    }

    else
    {
      do
      {
        v6 = v5;
        v8 = *(v5 + 7);
        v5 = *(v5 + 14);
      }

      while (v8 == *(v5 + 1));
      if (v6 != a2)
      {
        a4.n128_u64[0] = 0xC83D6329F1C35CA5;
        do
        {
          if (v6[9] != -1.0e40)
          {
            break;
          }

          v6 = *(v6 + 13);
        }

        while (v6 != a2);
      }
    }

    if (v6 == a2)
    {
      if (a3)
      {
        return *(v6 + 13);
      }

      else
      {
        return *(v6 + 14);
      }
    }

    else
    {
      v9 = 14;
      if (a3)
      {
        v9 = 13;
      }

      v10 = a2[v9];
      v39 = *(v10 + 8);
      v40 = v10;
      *(v10 + 88) = 0;
      v11 = ClipperLib::ClipperBase::ProcessBound(a1, a4);
      std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](a1 + 16, &v39);
      return v11;
    }
  }

  if (*(a2 + 9) == -1.0e40)
  {
    v13 = 13;
    if (a3)
    {
      v13 = 14;
    }

    v14 = a2[v13];
    v15 = *v14;
    v16 = *a2;
    if (v14[9] == -1.0e40)
    {
      if (*&v15 == *&v16 || *(v14 + 6) == *&v16)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (*&v15 != *&v16)
    {
LABEL_28:
      v17 = a2[6];
      *(a2 + 6) = v16;
      *a2 = v17;
      v18 = a2[8];
      a2[8] = a2[2];
      a2[2] = v18;
    }
  }

LABEL_29:
  v19 = a2;
  if (a3)
  {
    do
    {
      v20 = v19;
      v21 = v19[7];
      v19 = v19[13];
    }

    while (v21 == v19[1] && *(v19 + 25) != -2);
    if (v20[9] == -1.0e40 && *(v19 + 25) != -2)
    {
      v22 = v20;
      do
      {
        v22 = *(v22 + 14);
      }

      while (v22[9] == -1.0e40);
      if (*(v22 + 6) > v19[6])
      {
        v20 = v22;
      }
    }

    if (v20 != a2)
    {
      v23 = a2;
      do
      {
        v24 = v23;
        v23 = *(v23 + 13);
        *(v24 + 15) = v23;
        if (v24 != a2 && v24[9] == -1.0e40 && *v24 != *(*(v24 + 14) + 48))
        {
          v25 = *(v24 + 6);
          v24[6] = *v24;
          *v24 = v25;
          v26 = *(v24 + 8);
          v24[8] = v24[2];
          *(v24 + 2) = v26;
        }
      }

      while (v23 != v20);
      if (v23[9] == -1.0e40 && *v23 != *(*(v23 + 14) + 48))
      {
        v27 = *(v23 + 6);
        v23[6] = *v23;
        *v23 = v27;
        v28 = *(v23 + 8);
        v23[8] = v23[2];
        *(v23 + 2) = v28;
      }
    }

    v29 = (v20 + 13);
  }

  else
  {
    do
    {
      v30 = v19;
      v31 = v19[7];
      v19 = v19[14];
    }

    while (v31 == v19[1] && *(v19 + 25) != -2);
    if (v30[9] == -1.0e40 && *(v19 + 25) != -2)
    {
      v32 = v30;
      do
      {
        v32 = *(v32 + 13);
      }

      while (v32[9] == -1.0e40);
      if (*(v32 + 6) >= v19[6])
      {
        v30 = v32;
      }
    }

    if (v30 != a2)
    {
      v33 = a2;
      do
      {
        v34 = v33;
        v33 = *(v33 + 14);
        *(v34 + 15) = v33;
        if (v34 != a2 && v34[9] == -1.0e40 && *v34 != *(*(v34 + 13) + 48))
        {
          v35 = *(v34 + 6);
          v34[6] = *v34;
          *v34 = v35;
          v36 = *(v34 + 8);
          v34[8] = v34[2];
          *(v34 + 2) = v36;
        }
      }

      while (v33 != v30);
      if (v33[9] == -1.0e40 && *v33 != *(*(v33 + 13) + 48))
      {
        v37 = *(v33 + 6);
        v33[6] = *v33;
        *v33 = v37;
        v38 = *(v33 + 8);
        v33[8] = v33[2];
        *(v33 + 2) = v38;
      }
    }

    v29 = (v30 + 14);
  }

  return *v29;
}

void std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t ClipperLib::ClipperBase::AddPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 == 1 && (a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "AddPath: Open paths must be subject.");
  }

  v4 = *a2;
  v5 = -1431655765 * ((*(a2 + 8) - *a2) >> 3);
  v6 = v5 - 1;
  if (a4 && v5 >= 2)
  {
    do
    {
      v7 = &v4[3 * --v5];
      v9 = *v7;
      v8 = v7[1];
      if (v9 != *v4 || v8 != v4[1])
      {
        v6 = v5;
        goto LABEL_12;
      }
    }

    while (v5 > 1);
    v6 = 0;
  }

LABEL_12:
  v11 = v6 & (v6 >> 31);
  while (1)
  {
    v12 = v6 - 1;
    if (v6 < 1)
    {
      break;
    }

    v13 = &v4[3 * v6];
    v14 = &v4[3 * v12];
    v16 = *v13;
    v15 = v13[1];
    v18 = *v14;
    v17 = v14[1];
    v19 = v16 == v18 && v15 == v17;
    v6 = v12;
    if (!v19)
    {
      v11 = v12 + 1;
      break;
    }
  }

  if (v11 > a4)
  {
    operator new[]();
  }

  return 0;
}

void std::vector<ClipperLib::TEdge *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
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
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t ClipperLib::ClipperBase::AddPaths(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v11 |= (*(*a1 + 16))(a1, v4 + v9, a3, a4);
      ++v10;
      v4 = *a2;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return v11 & 1;
}

void *ClipperLib::ClipperBase::Clear(void *this)
{
  v1 = this;
  v2 = this[2];
  this[3] = v2;
  this[1] = v2;
  v3 = this[6];
  v4 = this[7];
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      this = *(v3 + 8 * v5);
      if (this)
      {
        this = MEMORY[0x1CCA6EC90](this, 0x1020C80A8A5F671);
        v3 = v1[6];
        v4 = v1[7];
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  v1[7] = v3;
  *(v1 + 40) = 0;
  *(v1 + 73) = 0;
  return this;
}

void *ClipperLib::ClipperBase::DisposeLocalMinimaList(void *this)
{
  v1 = this[2];
  this[3] = v1;
  this[1] = v1;
  return this;
}

void ClipperLib::ClipperBase::Reset(ClipperLib::ClipperBase *this, __n128 a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  *(this + 1) = v3;
  if (v3 != v4)
  {
    std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(v3, v4, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3)), 1, a2);
    v5 = *(this + 14);
    if (v5)
    {
      *(this + 15) = v5;
      operator delete(v5);
    }

    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 16) = 0;
    v6 = *(this + 2);
    if (v6 != *(this + 3))
    {
      do
      {
        ClipperLib::ClipperBase::InsertScanbeam(this, *v6);
        v7 = v6[1];
        if (v7)
        {
          *(v7 + 24) = *v7;
          *(v7 + 40) = *(v7 + 16);
          *(v7 + 84) = 1;
          *(v7 + 100) = -1;
        }

        v8 = v6[2];
        if (v8)
        {
          *(v8 + 24) = *v8;
          *(v8 + 40) = *(v8 + 16);
          *(v8 + 84) = 2;
          *(v8 + 100) = -1;
        }

        v6 += 3;
      }

      while (v6 != *(this + 3));
      v6 = *(this + 2);
    }

    *(this + 13) = 0;
    *(this + 1) = v6;
  }
}

uint64_t ClipperLib::ClipperBase::InsertScanbeam(ClipperLib::ClipperBase *this, uint64_t a2)
{
  v4 = *(this + 15);
  v3 = *(this + 16);
  if (v4 >= v3)
  {
    v6 = *(this + 14);
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
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

    v12 = v8;
    v13 = (8 * v8);
    v14 = &v13[-v12];
    *v13 = a2;
    v5 = (v13 + 1);
    memcpy(v14, v6, v7);
    *(this + 14) = v14;
    *(this + 15) = v5;
    *(this + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 8);
  }

  *(this + 15) = v5;
  v15 = *(this + 14);

  return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v15, v5, (v5 - v15) >> 3);
}

uint64_t ClipperLib::ClipperBase::PopLocalMinima(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 24) || *v3 != a2)
  {
    return 0;
  }

  *a3 = v3;
  *(a1 + 8) += 24;
  return 1;
}

double ClipperLib::ClipperBase::GetBounds@<D0>(ClipperLib::ClipperBase *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = *(v2 + 8);
    v6 = *v4;
    v5 = v4[1];
    *(a2 + 8) = v5;
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (v5 <= v9[1])
      {
        v5 = v9[1];
      }

      *(a2 + 24) = v5;
      v11 = v9;
      do
      {
        v12 = v11[15];
        if (v12)
        {
          v13 = v11;
          do
          {
            v14 = v12;
            if (*v13 < v6)
            {
              v6 = *v13;
            }

            if (*v13 > v7)
            {
              v7 = *v13;
            }

            v12 = v12[15];
            v13 = v14;
          }

          while (v12);
        }

        else
        {
          v14 = v11;
        }

        *a2 = v6;
        *(a2 + 16) = v7;
        if (*v14 < v6)
        {
          v6 = *v14;
        }

        *a2 = v6;
        if (v7 <= *v14)
        {
          v7 = *v14;
        }

        *(a2 + 16) = v7;
        if (v14[6] < v6)
        {
          v6 = v14[6];
        }

        *a2 = v6;
        if (v7 <= v14[6])
        {
          v7 = v14[6];
        }

        *(a2 + 16) = v7;
        v15 = v14[7];
        if (v15 < v8)
        {
          v8 = v15;
        }

        *(a2 + 8) = v8;
        v16 = v11 == v9;
        v11 = v10;
      }

      while (v16);
      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL ClipperLib::ClipperBase::PopScanbeam(ClipperLib::ClipperBase *this, uint64_t *a2)
{
  v2 = *(this + 15);
  v3 = *(this + 14);
  if (v3 == v2)
  {
    return v3 != v2;
  }

  v6 = *v3;
  *a2 = *v3;
  v7 = v2 - v3;
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = v3;
    do
    {
      v10 = &v9[v8 + 1];
      v11 = (2 * v8) | 1;
      v12 = 2 * v8 + 2;
      if (v12 < v7)
      {
        v13 = *v10 < v10[1];
        v10 += v13;
        if (v13)
        {
          v11 = v12;
        }
      }

      *v9 = *v10;
      v9 = v10;
      v8 = v11;
    }

    while (v11 <= ((v7 - 2) >> 1));
    v14 = v2 - 1;
    if (v10 != v2 - 1)
    {
      *v10 = *v14;
      *v14 = v6;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v3, (v10 + 1), v10 + 1 - v3);
      v15 = *(this + 14);
      v16 = *(this + 15);
      goto LABEL_12;
    }

    *v10 = v6;
  }

  v15 = v3;
  v16 = v2;
LABEL_12:
  for (i = v16 - 1; ; --i)
  {
    *(this + 15) = i;
    if (v15 == i)
    {
      break;
    }

    v18 = *a2;
    if (*a2 != *v15)
    {
      break;
    }

    v19 = i - v15;
    if (v19 >= 2)
    {
      v20 = 0;
      v21 = v15;
      do
      {
        v22 = &v21[v20 + 1];
        v23 = (2 * v20) | 1;
        v24 = 2 * v20 + 2;
        if (v24 < v19)
        {
          v13 = *v22 < v22[1];
          v22 += v13;
          if (v13)
          {
            v23 = v24;
          }
        }

        *v21 = *v22;
        v21 = v22;
        v20 = v23;
      }

      while (v23 <= ((v19 - 2) >> 1));
      v25 = v16 - 2;
      if (v22 == v25)
      {
        *v22 = v18;
      }

      else
      {
        *v22 = *v25;
        *v25 = v18;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v15, (v22 + 1), v22 + 1 - v15);
        v15 = *(this + 14);
        i = *(this + 15);
      }
    }

    v16 = i;
  }

  return v3 != v2;
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::DisposeAllOutRecs(ClipperLib::ClipperBase *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (*(this + 11) != v2)
  {
    v3 = 0;
    do
    {
      this = ClipperLib::ClipperBase::DisposeOutRec(v1, v3++);
      v2 = *(v1 + 10);
    }

    while (v3 < (*(v1 + 11) - v2) >> 3);
  }

  *(v1 + 11) = v2;
  return this;
}

uint64_t ClipperLib::ClipperBase::DisposeOutRec(ClipperLib::ClipperBase *this, uint64_t a2)
{
  v4 = *(*(this + 10) + 8 * a2);
  if (*(v4 + 24))
  {
    ClipperLib::DisposeOutPts((v4 + 24));
  }

  result = MEMORY[0x1CCA6ECB0](v4, 0x1020C401FC46325);
  *(*(this + 10) + 8 * a2) = 0;
  return result;
}

uint64_t ClipperLib::ClipperBase::DeleteFromAEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  if (*(a2 + 128) == 0)
  {
    if (*(result + 104) != a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v4 = (result + 104);
    goto LABEL_6;
  }

  v4 = (v3 + 128);
LABEL_6:
  *v4 = v2;
  if (v2)
  {
    *(v2 + 136) = v3;
  }

  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return result;
}

uint64_t ClipperLib::ClipperBase::SwapPositionsInAEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 128);
  v3 = *(a2 + 136);
  if (v4 != v3)
  {
    v6 = *(a3 + 128);
    v5 = *(a3 + 136);
    if (v6 != v5)
    {
      if (v4 == a3)
      {
        if (v6)
        {
          *(v6 + 136) = a2;
          v3 = *(a2 + 136);
        }

        if (v3)
        {
          *(v3 + 128) = a3;
        }

        *(a3 + 128) = a2;
        *(a3 + 136) = v3;
        *(a2 + 128) = v6;
        *(a2 + 136) = a3;
        v3 = *(a3 + 136);
      }

      else
      {
        if (v6 == a2)
        {
          if (v4)
          {
            *(v4 + 136) = a3;
            v5 = *(a3 + 136);
          }

          if (v5)
          {
            *(v5 + 128) = a2;
          }

          *(a2 + 128) = a3;
          *(a2 + 136) = v5;
          v3 = a2;
          *(a3 + 128) = v4;
          *(a3 + 136) = a2;
        }

        else
        {
          *(a2 + 128) = v6;
          if (v6)
          {
            *(v6 + 136) = a2;
            v5 = *(a3 + 136);
          }

          *(a2 + 136) = v5;
          if (v5)
          {
            *(v5 + 128) = a2;
          }

          *(a3 + 128) = v4;
          if (v4)
          {
            *(v4 + 136) = a3;
          }

          *(a3 + 136) = v3;
          if (v3)
          {
            *(v3 + 128) = a3;
          }
        }

        if (!*(a2 + 136))
        {
          goto LABEL_26;
        }
      }

      a2 = a3;
      if (v3)
      {
        return result;
      }

LABEL_26:
      *(result + 104) = a2;
    }
  }

  return result;
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::UpdateEdgeIntoAEL(ClipperLib::ClipperBase *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 120);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "UpdateEdgeIntoAEL: invalid call");
  }

  *(v3 + 100) = *(v2 + 100);
  v6 = v2 + 128;
  v5 = *(v2 + 128);
  v4 = *(v6 + 8);
  v7 = (result + 104);
  if (v4)
  {
    v7 = (v4 + 128);
  }

  *v7 = v3;
  if (v5)
  {
    *(v5 + 136) = *(*a2 + 120);
  }

  v8 = *(*a2 + 120);
  *(v8 + 84) = *(*a2 + 84);
  *a2 = v8;
  *(v8 + 24) = *v8;
  *(v8 + 40) = *(v8 + 16);
  *(*a2 + 136) = v4;
  *(*a2 + 128) = v5;
  if (*(*a2 + 72) != -1.0e40)
  {
    v9 = *(*a2 + 56);

    return ClipperLib::ClipperBase::InsertScanbeam(result, v9);
  }

  return result;
}

ClipperLib *ClipperLib::Clipper::Clipper(ClipperLib *this, uint64_t *a2, char a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 120) = 0;
  v4 = *this;
  *(this + *(*this - 24) + 40) = 0;
  *(this + 132) = a3 & 1;
  *(this + 134) = (a3 & 2) != 0;
  *(this + *(v4 - 24) + 72) = (a3 & 4) != 0;
  *(this + *(v4 - 24) + 73) = 0;
  *(this + 17) = 0;
  return this;
}

double ClipperLib::Clipper::Clipper(ClipperLib::Clipper *this, char a2)
{
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *this = &off_1F4769838;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 120) = 0;
  *(this + 184) = 0;
  *(this + 132) = a2 & 1;
  *(this + 134) = (a2 & 2) != 0;
  *(this + 216) = (a2 & 4) != 0;
  *(this + 217) = 0;
  *(this + 17) = 0;
  *(this + 18) = &unk_1F4769880;
  return result;
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, void *a3, int a4, int a5)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  if (*(a1 + *(*a1 - 24) + 73) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Error: PolyTree struct is needed for open path clipping.");
  }

  *(a1 + 120) = 1;
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a3, 0);
  *(a1 + 124) = a5;
  *(a1 + 128) = a4;
  *(a1 + 80) = a2;
  *(a1 + 133) = 0;
  v5 = (**a1)(a1);
  if (v5)
  {
    ClipperLib::Clipper::BuildResult(a1, a3);
  }

  ClipperLib::ClipperBase::DisposeAllOutRecs((a1 + *(*a1 - 24)));
  *(a1 + 120) = 0;
  return v5;
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, ClipperLib::PolyTree *a3, int a4, int a5)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  *(a1 + 120) = 1;
  *(a1 + 124) = a5;
  *(a1 + 128) = a4;
  *(a1 + 80) = a2;
  *(a1 + 133) = 1;
  v5 = (**a1)();
  if (v5)
  {
    ClipperLib::Clipper::BuildResult2(a1, a3);
  }

  ClipperLib::ClipperBase::DisposeAllOutRecs((a1 + *(*a1 - 24)));
  *(a1 + 120) = 0;
  return v5;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<ClipperLib::IntPoint>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void ClipperLib::Clipper::BuildResult(uint64_t *a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, (*(a1 + *(*a1 - 24) + 88) - *(a1 + *(*a1 - 24) + 80)) >> 3);
  v4 = *a1;
  v5 = (*a1 - 24);
  v6 = *(a1 + *v5 + 80);
  if (*(a1 + *v5 + 88) != v6)
  {
    v7 = 0;
    do
    {
      if (*(*(v6 + 8 * v7) + 24))
      {
        __p = 0;
        v15 = 0;
        v16 = 0;
        v8 = *(*(*(a1 + *v5 + 80) + 8 * v7) + 24);
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = 0;
          v11 = 1;
          v12 = *(v8 + 40);
          do
          {
            v13 = v11;
            v12 = *(v12 + 32);
            ++v10;
            ++v11;
          }

          while (v12 != v9);
          if (v10 != 1)
          {
            std::vector<ClipperLib::IntPoint>::reserve(&__p, v10);
            do
            {
              std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (v9 + 8));
              v9 = *(v9 + 40);
              --v13;
            }

            while (v13);
            std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a2, &__p);
            if (__p)
            {
              v15 = __p;
              operator delete(__p);
            }
          }
        }

        v4 = *a1;
      }

      ++v7;
      v5 = (v4 - 24);
      v6 = *(a1 + *(v4 - 24) + 80);
    }

    while (v7 < (*(a1 + *(v4 - 24) + 88) - v6) >> 3);
  }
}

void sub_1C7E64A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ClipperLib::Clipper::BuildResult2(ClipperLib::Clipper *this, ClipperLib::PolyTree *a2)
{
  ClipperLib::PolyTree::Clear(a2);
  v4 = std::vector<ClipperLib::PolyNode *>::reserve(a2 + 10, (*(this + *(*this - 24) + 88) - *(this + *(*this - 24) + 80)) >> 3);
  v5 = *this;
  v6 = *(this + *(*this - 24) + 80);
  v7 = *(this + *(*this - 24) + 88) - v6;
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      v10 = *(v9 + 24);
      if (v10)
      {
        v11 = 0;
        v12 = *(v9 + 24);
        do
        {
          v12 = *(v12 + 32);
          --v11;
        }

        while (v12 != v10);
        v13 = *(v9 + 5) ? 1 : 2;
        if (~v11 >= v13)
        {
          ClipperLib::Clipper::FixHoleLinkage(v4, v9);
          operator new();
        }
      }

      ++v8;
      v6 = *(this + *(v5 - 24) + 80);
      v7 = *(this + *(v5 - 24) + 88) - v6;
    }

    while (v8 < v7 >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::reserve(a2 + 4, v7 >> 3);
  v14 = *this;
  v15 = *(this + *(*this - 24) + 80);
  if (*(this + *(*this - 24) + 88) != v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(v15 + 8 * v16);
      v18 = *(v17 + 16);
      if (v18)
      {
        break;
      }

LABEL_21:
      ++v16;
      v15 = *(this + *(v14 - 24) + 80);
      if (v16 >= (*(this + *(v14 - 24) + 88) - v15) >> 3)
      {
        return;
      }
    }

    if (*(v17 + 5) == 1)
    {
      *(v18 + 68) = 1;
    }

    else
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        v20 = *(v19 + 16);
        if (v20)
        {
          goto LABEL_20;
        }
      }
    }

    v20 = a2;
LABEL_20:
    ClipperLib::PolyNode::AddChild(v20, v18);
    v14 = *this;
    goto LABEL_21;
  }
}

void ClipperLib::Clipper::FixHoleLinkage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 4);
    if (v3 == *(v2 + 4) || !*(v2 + 24))
    {
      do
      {
        if (*(v2 + 4) != v3 && *(v2 + 24))
        {
          break;
        }

        v2 = *(v2 + 8);
      }

      while (v2);
      *(a2 + 8) = v2;
    }
  }
}

uint64_t ClipperLib::Clipper::ExecuteInternal(ClipperLib::Clipper *this)
{
  (*(*(this + *(*this - 24)) + 32))(this + *(*this - 24));
  v27 = &v27;
  v28 = &v27;
  v29 = 0;
  std::__list_imp<long long>::clear(this + 11);
  v2 = v29;
  if (v29)
  {
    v4 = v27;
    v3 = v28;
    v5 = *(v27 + 8);
    v6 = *v28;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = *(this + 11);
    *(v7 + 8) = v3;
    *v3 = v7;
    *(this + 11) = v4;
    *(v4 + 8) = this + 88;
    *(this + 13) += v2;
    v29 = 0;
  }

  std::__list_imp<long long>::clear(&v27);
  *(this + 14) = 0;
  v26 = 0;
  v27 = 0;
  if (!ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), &v27))
  {
    return 0;
  }

  ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v27);
  while (1)
  {
    v8 = ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), &v26);
    if ((v8 & 1) == 0)
    {
      v9 = *this;
      v10 = *this;
      v11 = *(*this - 24);
      v12 = this + v11;
      if (*(this + v11 + 8) == *(this + v11 + 24))
      {
        break;
      }
    }

    ClipperLib::Clipper::ProcessHorizontals(this);
    ClipperLib::Clipper::ClearGhostJoins(this);
    v13 = v26;
    if (!ClipperLib::Clipper::ProcessIntersections(this, v26))
    {
      v14 = 0;
      goto LABEL_32;
    }

    ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(this, v13);
    ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v13);
  }

  v16 = v12 + 80;
  v15 = *(v12 + 10);
  if (*(v16 + 1) != v15)
  {
    v17 = 0;
    do
    {
      v8 = *(v15 + 8 * v17);
      v18 = *(v8 + 24);
      if (v18)
      {
        if ((*(v8 + 5) & 1) == 0)
        {
          v19 = *(this + 132) ^ *(v8 + 4);
          if (v19 == ClipperLib::Area(v8) > 0.0)
          {
            v20 = v18;
            do
            {
              v21 = v20[2];
              v20[2] = vextq_s8(v21, v21, 8uLL);
              v20 = v21.i64[0];
            }

            while (v21.i64[0] != v18);
            v11 = *(v10 - 24);
          }
        }
      }

      ++v17;
      v15 = *(this + v11 + 80);
    }

    while (v17 < (*(this + v11 + 88) - v15) >> 3);
  }

  if (*(this + 1) != *(this + 2))
  {
    v8 = ClipperLib::Clipper::JoinCommonEdges(this);
    v9 = *this;
  }

  v22 = *(this + *(v9 - 24) + 80);
  if (*(this + *(v9 - 24) + 88) != v22)
  {
    v23 = 0;
    do
    {
      v24 = *(v22 + 8 * v23);
      if (*(v24 + 24))
      {
        if (*(v24 + 5) == 1)
        {
          v8 = ClipperLib::Clipper::FixupOutPolyline(v8, v24);
        }

        else
        {
          v8 = ClipperLib::Clipper::FixupOutPolygon(this, v24);
        }
      }

      ++v23;
      v22 = *(this + *(*this - 24) + 80);
    }

    while (v23 < (*(this + *(*this - 24) + 88) - v22) >> 3);
  }

  if (*(this + 134))
  {
    ClipperLib::Clipper::DoSimplePolygons(this);
  }

  v14 = 1;
LABEL_32:
  ClipperLib::Clipper::ClearJoins(this);
  ClipperLib::Clipper::ClearGhostJoins(this);
  return v14;
}

uint64_t ClipperLib::Clipper::InsertLocalMinimaIntoAEL(uint64_t this, uint64_t a2)
{
  v2 = this + 40;
  v3 = this + *(*this - 24);
  v6 = *(v3 + 8);
  v4 = (v3 + 8);
  v5 = v6;
  if (v6 != v4[2])
  {
    v8 = this;
    do
    {
      if (*v5 != a2)
      {
        return this;
      }

      *v4 = v5 + 3;
      v9 = v5[1];
      v10 = v5[2];
      if (v9)
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v5[1], 0);
        if (!v10)
        {
          ClipperLib::Clipper::SetWindingCount(v8, v9);
          if (ClipperLib::Clipper::IsContributing(v8, v9))
          {
            ClipperLib::Clipper::AddOutPt(v8, v9, v9);
          }

          this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v9 + 56));
          goto LABEL_64;
        }

        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v10, v9);
        ClipperLib::Clipper::SetWindingCount(v8, v9);
        *(v10 + 92) = *(v9 + 92);
        if (ClipperLib::Clipper::IsContributing(v8, v9))
        {
          v11 = ClipperLib::Clipper::AddLocalMinPoly(v8, v9, v10, v9);
        }

        else
        {
          v11 = 0;
        }

        this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v9 + 56));
      }

      else
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v5[2], 0);
        ClipperLib::Clipper::SetWindingCount(v8, v10);
        this = ClipperLib::Clipper::IsContributing(v8, v10);
        v11 = 0;
        if (this)
        {
          this = ClipperLib::Clipper::AddOutPt(v8, v10, v10);
          v11 = this;
        }

        if (!v10)
        {
          goto LABEL_64;
        }
      }

      v12 = v10;
      if (*(v10 + 72) != -1.0e40)
      {
        goto LABEL_21;
      }

      v13 = v8[14];
      *(v10 + 152) = 0;
      if (v13)
      {
        *(v13 + 152) = v10;
      }

      v8[14] = v10;
      *(v10 + 144) = v13;
      v12 = *(v10 + 120);
      if (v12)
      {
LABEL_21:
        this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v12 + 56));
      }

      if (v9)
      {
        if (v11)
        {
          if (*(v10 + 72) == -1.0e40)
          {
            v15 = v8[4];
            v14 = v8[5];
            if (v14 != v15)
            {
              if (*(v10 + 88))
              {
                v16 = 0;
                do
                {
                  v17 = *(v15 + 8 * v16);
                  v18 = *(*v17 + 8);
                  v21 = v17[2];
                  v19 = v17 + 2;
                  v20 = v21;
                  v22 = *v10;
                  v23 = *(v10 + 48);
                  v24 = v18 <= v21;
                  if (v18 >= v21)
                  {
                    v25 = v20;
                  }

                  else
                  {
                    v25 = v18;
                  }

                  if (v24)
                  {
                    v18 = v20;
                  }

                  if (v22 >= v23)
                  {
                    v26 = *(v10 + 48);
                  }

                  else
                  {
                    v26 = *v10;
                  }

                  if (v22 <= v23)
                  {
                    v22 = *(v10 + 48);
                  }

                  if (v25 < v22 && v26 < v18)
                  {
                    v39 = *v19;
                    v40 = v19[2];
                    operator new();
                  }

                  ++v16;
                }

                while (v16 < (v14 - v15) >> 3);
              }
            }
          }
        }

        if ((*(v9 + 100) & 0x80000000) == 0)
        {
          v28 = *(v9 + 136);
          if (v28)
          {
            if (*(v28 + 24) == *v9 && (*(v28 + 100) & 0x80000000) == 0)
            {
              v39 = *v28;
              v40 = *(v28 + 16);
              v37 = *(v28 + 48);
              v38 = *(v28 + 64);
              v35 = *(v9 + 24);
              v36 = *(v9 + 40);
              v33 = *(v9 + 48);
              v34 = *(v9 + 64);
              this = ClipperLib::SlopesEqual(&v39, &v37, &v35, &v33, *(v2 + *(*v8 - 24)));
              if (this)
              {
                if (*(v9 + 88) && *(v28 + 88))
                {
                  ClipperLib::Clipper::AddOutPt(v8, v28, v9);
                  v39 = *(v9 + 48);
                  v40 = *(v9 + 64);
                  operator new();
                }
              }
            }
          }
        }

        v29 = *(v9 + 128);
        if (v29 != v10)
        {
          if ((*(v10 + 100) & 0x80000000) == 0)
          {
            v30 = *(v10 + 136);
            if ((*(v30 + 100) & 0x80000000) == 0)
            {
              v39 = *(v30 + 24);
              v40 = *(v30 + 40);
              v37 = *(v30 + 48);
              v38 = *(v30 + 64);
              v35 = *(v10 + 24);
              v36 = *(v10 + 40);
              v33 = *(v10 + 48);
              v34 = *(v10 + 64);
              this = ClipperLib::SlopesEqual(&v39, &v37, &v35, &v33, *(v2 + *(*v8 - 24)));
              if (this)
              {
                if (*(v10 + 88) && *(v30 + 88))
                {
                  ClipperLib::Clipper::AddOutPt(v8, v30, v10);
                  v39 = *(v10 + 48);
                  v40 = *(v10 + 64);
                  operator new();
                }
              }
            }
          }

          if (v29)
          {
            while (v29 != v10)
            {
              this = ClipperLib::Clipper::IntersectEdges(v8, v10, v29, (v9 + 24));
              v29 = *(v29 + 128);
            }
          }
        }
      }

LABEL_64:
      v31 = v8 + *(*v8 - 24);
      v32 = *(v31 + 1);
      v4 = v31 + 8;
      v5 = v32;
    }

    while (v32 != v4[2]);
  }

  return this;
}

uint64_t ClipperLib::Clipper::ProcessHorizontals(uint64_t this)
{
  v2 = (this + 112);
  v1 = *(this + 112);
  if (v1)
  {
    v3 = this;
    do
    {
      v4 = v1[18];
      v5 = v1[19];
      if (*(v1 + 9) == 0)
      {
        *v2 = 0;
      }

      else
      {
        v6 = (v5 + 144);
        if (!v5)
        {
          v6 = v2;
        }

        *v6 = v4;
        if (v4)
        {
          *(v4 + 152) = v5;
        }
      }

      v1[18] = 0;
      v1[19] = 0;
      this = ClipperLib::Clipper::ProcessHorizontal(v3, v1);
      v1 = *(v3 + 112);
    }

    while (v1);
  }

  return this;
}

uint64_t ClipperLib::Clipper::ClearGhostJoins(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x1CCA6ECB0](this, 0x1020C40E349F4B1);
        v2 = *(v1 + 32);
        v3 = *(v1 + 40);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    *(v1 + 40) = v2;
  }

  return this;
}

BOOL ClipperLib::Clipper::ProcessIntersections(ClipperLib::Clipper *this, uint64_t a2)
{
  if (!*(this + *(*this - 24) + 104))
  {
    return 1;
  }

  ClipperLib::Clipper::BuildIntersectList(this, a2);
  v3 = (*(this + 8) - *(this + 7)) >> 3;
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1 || (result = ClipperLib::Clipper::FixupIntersectionOrder(this)))
  {
    ClipperLib::Clipper::ProcessIntersectList(this);
    *(this + 14) = 0;
    return 1;
  }

  return result;
}

void sub_1C7E65724(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 112) = 0;
  ClipperLib::Clipper::DisposeIntersectNodes(v1);
  exception = __cxa_allocate_exception(0x20uLL);
  ClipperLib::clipperException::clipperException(exception, "ProcessIntersections error");
}

uint64_t ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(ClipperLib::Clipper *this, uint64_t a2)
{
  v4 = this + 104;
  v5 = *(this + *(*this - 24) + 104);
  for (i = v5; i; v5 = i)
  {
    if (v5[7] == a2)
    {
      v6 = v5[15];
      if (v6)
      {
        if (*(v6 + 72) == -1.0e40)
        {
          ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &i);
          v5 = i;
          if ((*(i + 25) & 0x80000000) == 0)
          {
            ClipperLib::Clipper::AddOutPt(this, i, i);
          }

          v7 = *(this + 14);
          v5[19] = 0;
          if (v7)
          {
            *(v7 + 152) = v5;
          }

          *(this + 14) = v5;
          v5[18] = v7;
          goto LABEL_22;
        }
      }

      else
      {
        ClipperLib::GetMaximaPairEx(v5);
        if (!v11 || *(v11 + 72) != -1.0e40)
        {
          if (*(this + 134) == 1)
          {
            operator new();
          }

          v12 = v5[17];
          ClipperLib::Clipper::DoMaxima(this, v5);
          if (v12)
          {
            v13 = (v12 + 128);
          }

          else
          {
            v13 = &v4[*(*this - 24)];
          }

          goto LABEL_33;
        }
      }

      v10 = v5[6];
    }

    else
    {
      v8 = *(v5 + 9) * (a2 - v5[1]);
      if (v8 >= 0.0)
      {
        v9 = 0.5;
      }

      else
      {
        v9 = -0.5;
      }

      v10 = *v5 + (v8 + v9);
    }

    v5[3] = v10;
    v5[4] = a2;
LABEL_22:
    if (*(this + 134) == 1 && (*(v5 + 25) & 0x80000000) == 0)
    {
      if (*(v5 + 22))
      {
        v14 = v5[17];
        if (v14)
        {
          if ((*(v14 + 100) & 0x80000000) == 0 && *(v14 + 24) == v5[3] && *(v14 + 88))
          {
            v34 = *(v5 + 3);
            v35 = v5[5];
            v15 = *(this + 17);
            if (v15)
            {
              v15(v14, v14 + 48, v5, v5 + 6, &v34);
            }

            ClipperLib::Clipper::AddOutPt(this, v14, &v34);
            ClipperLib::Clipper::AddOutPt(this, v5, &v34);
            v32 = v34;
            v33 = v35;
            operator new();
          }
        }
      }
    }

    v13 = (v5 + 16);
LABEL_33:
    i = *v13;
  }

  std::list<long long>::__sort<std::__less<void,void>>(*(this + 12), this + 11, *(this + 13));
  ClipperLib::Clipper::ProcessHorizontals(this);
  result = std::__list_imp<long long>::clear(this + 11);
  v17 = *(this + *(*this - 24) + 104);
  i = v17;
  if (v17)
  {
    v18 = this + 40;
    do
    {
      if (v17[7] == a2 && v17[15])
      {
        if ((*(v17 + 25) & 0x80000000) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = ClipperLib::Clipper::AddOutPt(this, v17, v17 + 6);
        }

        result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &i);
        v17 = i;
        v20 = i[16];
        v21 = i[17];
        if (v21 && *(v21 + 24) == *i)
        {
          v22 = *(v21 + 32);
          if (v22 == i[1] && v19 != 0 && (*(v21 + 100) & 0x80000000) == 0 && v22 > *(v21 + 56))
          {
            v34 = *(i + 3);
            v35 = i[5];
            v32 = *(i + 3);
            v33 = i[8];
            v30 = *(v21 + 24);
            v31 = *(v21 + 40);
            v28 = *(v21 + 48);
            v29 = *(v21 + 64);
            result = ClipperLib::SlopesEqual(&v34, &v32, &v30, &v28, v18[*(*this - 24)]);
            if (result)
            {
              if (*(v17 + 22) && *(v21 + 88))
              {
                v24 = this;
                v25 = v21;
                goto LABEL_67;
              }
            }
          }
        }

        if (v20 && *(v20 + 24) == *v17)
        {
          v26 = *(v20 + 32);
          if (v26 == v17[1] && v19 != 0 && (*(v20 + 100) & 0x80000000) == 0 && v26 > *(v20 + 56))
          {
            v34 = *(v17 + 3);
            v35 = v17[5];
            v32 = *(v17 + 3);
            v33 = v17[8];
            v30 = *(v20 + 24);
            v31 = *(v20 + 40);
            v28 = *(v20 + 48);
            v29 = *(v20 + 64);
            result = ClipperLib::SlopesEqual(&v34, &v32, &v30, &v28, v18[*(*this - 24)]);
            if (result)
            {
              if (*(v17 + 22) && *(v20 + 88))
              {
                v24 = this;
                v25 = v20;
LABEL_67:
                ClipperLib::Clipper::AddOutPt(v24, v25, v17);
                v34 = *(v17 + 3);
                v35 = v17[8];
                operator new();
              }
            }
          }
        }
      }

      v17 = v17[16];
      i = v17;
    }

    while (v17);
  }

  return result;
}

uint64_t ClipperLib::Clipper::JoinCommonEdges(uint64_t this)
{
  v1 = *(this + 8);
  if (*(this + 16) != v1)
  {
    v2 = this;
    v3 = 0;
    v4 = this + 80;
    do
    {
      v5 = *(v1 + 8 * v3);
      v6 = *(v4 + *(*v2 - 24));
      v7 = *(v6 + 8 * **v5);
      do
      {
        v8 = v7;
        v7 = *(v6 + 8 * *v7);
      }

      while (v8 != v7);
      v9 = *(v6 + 8 * *v5[1]);
      do
      {
        v10 = v9;
        v9 = *(v6 + 8 * *v9);
      }

      while (v10 != v9);
      if (*(v8 + 24) && *(v10 + 24) && (*(v8 + 5) & 1) == 0 && (*(v10 + 5) & 1) == 0)
      {
        if (v8 == v10)
        {
          this = ClipperLib::Clipper::JoinPoints(v2, v5, v8, v10);
          if (this)
          {
            *(v8 + 24) = *v5;
            *(v8 + 32) = 0;
            ClipperLib::ClipperBase::CreateOutRec((v2 + *(*v2 - 24)));
          }
        }

        else
        {
          v11 = v8;
          do
          {
            v11 = *(v11 + 8);
          }

          while (v11 != v10 && v11 != 0);
          LowermostRec = v10;
          if (v11 != v10)
          {
            v14 = v10;
            do
            {
              v14 = *(v14 + 8);
            }

            while (v14 != v8 && v14 != 0);
            LowermostRec = v8;
            if (v14 != v8)
            {
              LowermostRec = ClipperLib::GetLowermostRec(v8, v10);
            }
          }

          this = ClipperLib::Clipper::JoinPoints(v2, v5, v8, v10);
          if (this)
          {
            *(v10 + 24) = 0;
            *(v10 + 32) = 0;
            *v10 = *v8;
            *(v8 + 4) = *(LowermostRec + 4);
            if (LowermostRec == v10)
            {
              *(v8 + 8) = *(v10 + 8);
            }

            *(v10 + 8) = v8;
            if (*(v2 + 133) == 1)
            {
              this = ClipperLib::Clipper::FixupFirstLefts3(v2, v10, v8);
            }
          }
        }
      }

      ++v3;
      v1 = *(v2 + 8);
    }

    while (v3 < (*(v2 + 16) - v1) >> 3);
  }

  return this;
}

void *ClipperLib::Clipper::FixupOutPolyline(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  v4 = result[5];
  if (result == v4)
  {
    v9 = *(a2 + 24);
LABEL_14:
    result = ClipperLib::DisposeOutPts(&v9);
    *(a2 + 24) = 0;
    return result;
  }

  do
  {
    result = result[4];
    v5 = result[5];
    if (result[1] == v5[1] && result[2] == v5[2])
    {
      v7 = result[4];
      if (result == v4)
      {
        v4 = result[5];
      }

      v5[4] = v7;
      *(v7 + 40) = v5;
      MEMORY[0x1CCA6ECB0]();
      result = v5;
    }
  }

  while (result != v4);
  v8 = result[5];
  v9 = result;
  if (result == v8)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t ClipperLib::Clipper::FixupOutPolygon(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  v3 = *(a2 + 24);
  if (*(a1 + *(*a1 - 24) + 72))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 134);
  }

  v20 = v4;
  v5 = v3 + 5;
  v6 = v3[5];
  if (v6 != v3)
  {
    v7 = 0;
    v21 = a1 + 40;
    while (1)
    {
      v8 = v3[4];
      if (v6 == v8)
      {
        break;
      }

      v9 = v3[1];
      v10 = v3[2];
      v11 = (v3 + 1);
      v12 = (v8 + 1);
      v13 = v9 == v8[1] && v10 == v8[2];
      if (v13 || ((v14 = (v6 + 1), v9 == v6[1]) ? (v15 = v10 == v6[2]) : (v15 = 0), v15 || (v26 = *v14, v27 = v6[3], v16 = *v11, v25 = v3[3], v24 = v16, v22 = *v12, v23 = v8[3], result = ClipperLib::SlopesEqual(&v26, &v24, &v22, *(v21 + *(*a1 - 24))), result) && ((v20 & 1) == 0 || (v26 = *v14, v27 = v6[3], v18 = *v11, v25 = v3[3], v24 = v18, v22 = *v12, v23 = v8[3], result = ClipperLib::Pt2IsBetweenPt1AndPt3(&v26, &v24, &v22), (result & 1) == 0))))
      {
        v6[4] = v8;
        *(v3[4] + 40) = v6;
        v8 = *v5;
        MEMORY[0x1CCA6ECB0](v3, 0x1020C404ACFEA97);
        v7 = 0;
      }

      else
      {
        if (v3 == v7)
        {
          goto LABEL_27;
        }

        if (!v7)
        {
          v7 = v3;
        }
      }

      v5 = v8 + 5;
      v6 = v8[5];
      v3 = v8;
      if (v6 == v8)
      {
        goto LABEL_26;
      }
    }
  }

  v8 = v3;
LABEL_26:
  *&v26 = v8;
  result = ClipperLib::DisposeOutPts(&v26);
  v3 = 0;
LABEL_27:
  *(a2 + 24) = v3;
  return result;
}

uint64_t *ClipperLib::Clipper::DoSimplePolygons(uint64_t *this)
{
  v1 = *this;
  v2 = *(this + *(*this - 24) + 80);
  if (*(this + *(*this - 24) + 88) != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      v5 = *(v4 + 24);
      if (v5 && (*(v4 + 5) & 1) == 0)
      {
        v6 = *(v4 + 24);
        do
        {
          v7 = v6[4];
          if (v7 == v5)
          {
            v6 = v6[4];
            v7 = v5;
          }

          else
          {
            do
            {
              v8 = v6[1] == v7[1] && v6[2] == v7[2];
              if (v8 && v7[4] != v6)
              {
                v9 = v7[5];
                if (v9 != v6)
                {
                  v10 = v6[5];
                  v6[5] = v9;
                  v9[4] = v6;
                  v7[5] = v10;
                  *(v10 + 32) = v7;
                  *(v4 + 24) = v6;
                  ClipperLib::ClipperBase::CreateOutRec((this + *(*this - 24)));
                }
              }

              v7 = v7[4];
            }

            while (v7 != *(v4 + 24));
            v6 = v6[4];
            v5 = v7;
          }
        }

        while (v6 != v7);
        v1 = *this;
      }

      ++v3;
      v2 = *(this + *(v1 - 24) + 80);
    }

    while (v3 < (*(this + *(v1 - 24) + 88) - v2) >> 3);
  }

  return this;
}

uint64_t ClipperLib::Clipper::ClearJoins(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x1CCA6ECB0](this, 0x1020C40E349F4B1);
        v2 = *(v1 + 8);
        v3 = *(v1 + 16);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    *(v1 + 16) = v2;
  }

  return this;
}

uint64_t ClipperLib::Clipper::SetWindingCount(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  v3 = *(a2 + 80);
  if (v2)
  {
    while (1)
    {
      if (*(v2 + 80) == v3)
      {
        v4 = *(v2 + 88);
        if (v4)
        {
          break;
        }
      }

      v2 = *(v2 + 136);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a2 + 88);
    if (v9)
    {
      v10 = 124;
      if (!v3)
      {
        v10 = 128;
      }

      if (!*(result + v10))
      {
        goto LABEL_40;
      }

      v11 = *(v2 + 92);
      if (((v11 * v4) & 0x80000000) == 0)
      {
        if (((v9 * v4) & 0x80000000) == 0)
        {
          v12 = *(a2 + 88);
        }

        else
        {
          v12 = 0;
        }

        v9 = v11 + v12;
        goto LABEL_40;
      }

LABEL_27:
      if (v11 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = -v11;
      }

      if (v9 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(a2 + 88);
      }

      if (((v9 * v4) & 0x80000000) == 0)
      {
        v16 = *(a2 + 88);
      }

      else
      {
        v16 = 0;
      }

      v17 = v11 + v16;
      if (v14 >= 2)
      {
        v9 = v17;
      }

      else
      {
        v9 = v15;
      }

      goto LABEL_40;
    }

    if (*(result + 80) == 1)
    {
      v13 = 124;
      if (!v3)
      {
        v13 = 128;
      }

      if (!*(result + v13))
      {
        v21 = *(v2 + 136);
        if (v21)
        {
          v22 = 1;
          do
          {
            if (*(v21 + 80) == v3)
            {
              v22 ^= *(v21 + 88) != 0;
            }

            v21 = *(v21 + 136);
          }

          while (v21);
          v9 = (v22 & 1) == 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_40;
      }

      v11 = *(v2 + 92);
      if (v11 * v4 < 0)
      {
        goto LABEL_27;
      }

      v9 = ((v11 >> 31) | 1) + v11;
    }

    else
    {
      v9 = 1;
    }

LABEL_40:
    v7 = *(v2 + 96);
    *(a2 + 92) = v9;
    *(a2 + 96) = v7;
    v8 = (v2 + 128);
    goto LABEL_41;
  }

LABEL_5:
  v5 = *(a2 + 88);
  if (!v5)
  {
    v6 = 124;
    if (!v3)
    {
      v6 = 128;
    }

    if (*(result + v6) == 3)
    {
      v5 = -1;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = 0;
  *(a2 + 92) = v5;
  *(a2 + 96) = 0;
  v8 = (result + *(*result - 24) + 104);
LABEL_41:
  v18 = *v8;
  v19 = v3 == 0;
  v20 = 128;
  if (v19)
  {
    v20 = 124;
  }

  if (*(result + v20))
  {
    if (v18 != a2)
    {
      do
      {
        v7 += *(v18 + 88);
        v18 = *(v18 + 128);
      }

      while (v18 != a2);
      *(a2 + 96) = v7;
    }
  }

  else
  {
    while (v18 != a2)
    {
      if (*(v18 + 88))
      {
        v7 = v7 == 0;
        *(a2 + 96) = v7;
      }

      v18 = *(v18 + 128);
    }
  }

  return result;
}

BOOL ClipperLib::Clipper::IsEvenOddFillType(uint64_t a1, uint64_t a2)
{
  v2 = 124;
  if (!*(a2 + 80))
  {
    v2 = 128;
  }

  return *(a1 + v2) == 0;
}

BOOL ClipperLib::Clipper::IsEvenOddAltFillType(uint64_t a1, uint64_t a2)
{
  v2 = 128;
  if (!*(a2 + 80))
  {
    v2 = 124;
  }

  return *(a1 + v2) == 0;
}

uint64_t ClipperLib::Clipper::IsContributing(uint64_t a1, _DWORD *a2)
{
  v2 = a2[20];
  v3 = 124;
  if (v2)
  {
    v4 = 124;
  }

  else
  {
    v4 = 128;
  }

  if (v2)
  {
    v3 = 128;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  switch(v6)
  {
    case 2:
LABEL_10:
      v7 = a2[23];
      goto LABEL_13;
    case 1:
      v7 = a2[23];
      if (v7 < 0)
      {
        v7 = -v7;
      }

LABEL_13:
      if (v7 == 1)
      {
        goto LABEL_14;
      }

      return 0;
    case 0:
      if (a2[22])
      {
        goto LABEL_14;
      }

      goto LABEL_10;
  }

  if (a2[23] != -1)
  {
    return 0;
  }

LABEL_14:
  v8 = *(a1 + 80);
  result = 1;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }

LABEL_24:
      v10 = v5 == 2;
      if (v5 < 2)
      {
        return a2[24] == 0;
      }

      goto LABEL_34;
    }

    v10 = v5 == 2;
    if (v5 < 2)
    {
      return a2[24] != 0;
    }

LABEL_30:
    if (v10)
    {
      return a2[24] > 0;
    }

    v11 = a2[24];
    return v11 >> 31;
  }

  if (v8 == 2)
  {
    v10 = v5 == 2;
    if (!v2)
    {
      if (v5 < 2)
      {
        return a2[24] == 0;
      }

LABEL_34:
      if (v10)
      {
        return a2[24] < 1;
      }

      v11 = ~a2[24];
      return v11 >> 31;
    }

    if (v5 < 2)
    {
      return a2[24] != 0;
    }

    goto LABEL_30;
  }

  if (v8 == 3 && !a2[22])
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t ClipperLib::Clipper::AddLocalMinPoly(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a3 + 72);
  if (v8 != -1.0e40 && *(a2 + 72) <= v8)
  {
    v9 = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
    *(v6 + 100) = *(a3 + 100);
    *(v6 + 84) = 2;
    *(a3 + 84) = 1;
    v10 = *(a3 + 136);
    v11 = v6;
    _ZF = v10 == v6;
    v6 = a3;
    if (!_ZF)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  *(a3 + 100) = *(v6 + 100);
  *(v6 + 84) = 1;
  *(a3 + 84) = 2;
  v10 = *(v6 + 136);
  v11 = a3;
  if (v10 == a3)
  {
LABEL_4:
    v10 = *(v11 + 136);
  }

LABEL_5:
  if (v10 && (*(v10 + 100) & 0x80000000) == 0)
  {
    v12 = a4[1];
    if (*(v10 + 56) == v12)
    {
      v13 = *(v10 + 48);
    }

    else
    {
      v14 = *(v10 + 72) * (v12 - *(v10 + 8));
      v15 = 0.5;
      if (v14 < 0.0)
      {
        v15 = -0.5;
      }

      v13 = *v10 + (v14 + v15);
    }

    if (*(v6 + 56) == v12)
    {
      v16 = *(v6 + 48);
    }

    else
    {
      v17 = *(v6 + 72) * (v12 - *(v6 + 8));
      v18 = 0.5;
      if (v17 < 0.0)
      {
        v18 = -0.5;
      }

      v16 = *v6 + (v17 + v18);
    }

    if (v13 == v16)
    {
      if (*(v6 + 88))
      {
        if (*(v10 + 88))
        {
          *&v30 = v13;
          *(&v30 + 1) = v12;
          __asm { FMOV            V0.2S, #-1.0 }

          v31 = _D0;
          v28 = *(v10 + 48);
          v29 = *(v10 + 64);
          v27[0] = v13;
          v27[1] = v12;
          v27[2] = _D0;
          v25 = *(v6 + 48);
          v26 = *(v6 + 64);
          if (ClipperLib::SlopesEqual(&v30, &v28, v27, &v25, *(a1 + *(*a1 - 24) + 40)))
          {
            ClipperLib::Clipper::AddOutPt(a1, v10, a4);
            v30 = *(v6 + 48);
            v31 = *(v6 + 64);
            operator new();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t ClipperLib::Clipper::AddOutPt(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 100);
  v4 = (a1 + *(*a1 - 24));
  if ((v3 & 0x80000000) != 0)
  {
    ClipperLib::ClipperBase::CreateOutRec(v4);
  }

  v5 = *(*(v4 + 10) + 8 * v3);
  v6 = *(v5 + 24);
  if (*(a2 + 84) == 1)
  {
    if (*a3 != v6[1] || a3[1] != v6[2])
    {
      goto LABEL_14;
    }

    return *(v5 + 24);
  }

  else
  {
    v8 = v6[5];
    if (*a3 != *(v8 + 8) || a3[1] != *(v8 + 16))
    {
LABEL_14:
      operator new();
    }
  }

  return v8;
}

uint64_t ClipperLib::Clipper::AddLocalMaxPoly(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  if (!*(a3 + 88))
  {
    result = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
  }

  v9 = *(a2 + 100);
  v10 = *(a3 + 100);
  if (v9 == v10)
  {
    *(a2 + 100) = -1;
    *(a3 + 100) = -1;
  }

  else
  {
    if (v9 < v10)
    {
      v11 = a2;
      v12 = a3;
    }

    else
    {
      v11 = a3;
      v12 = a2;
    }

    return ClipperLib::Clipper::AppendPolygon(a1, v11, v12);
  }

  return result;
}

uint64_t ClipperLib::Clipper::AppendPolygon(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 80);
  v7 = *(v6 + 8 * *(a2 + 100));
  v8 = *(v6 + 8 * *(a3 + 100));
  v9 = v7;
  do
  {
    v9 = *(v9 + 8);
  }

  while (v9 != v8 && v9 != 0);
  result = v8;
  if (v9 != v8)
  {
    v12 = v8;
    do
    {
      v12 = *(v12 + 8);
    }

    while (v12 != v7 && v12 != 0);
    result = v7;
    if (v12 != v7)
    {
      result = ClipperLib::GetLowermostRec(v7, v8);
    }
  }

  v14 = *(v7 + 24);
  v15 = *(v14 + 40);
  v16 = *(v8 + 24);
  v17 = *(v16 + 40);
  v18 = *(a2 + 84);
  v19 = *(a3 + 84);
  if (v18 == 1)
  {
    if (v19 == 1)
    {
      v20 = *(v8 + 24);
      do
      {
        v21 = v20[2];
        v20[2] = vextq_s8(v21, v21, 8uLL);
        v20 = v21.i64[0];
      }

      while (v21.i64[0] != v16);
      *(v16 + 32) = v14;
      *(v14 + 40) = v16;
      *(v15 + 32) = v17;
      *(v17 + 40) = v15;
      *(v7 + 24) = v17;
    }

    else
    {
      *(v17 + 32) = v14;
      *(v14 + 40) = v17;
      *(v16 + 40) = v15;
      *(v15 + 32) = v16;
      *(v7 + 24) = v16;
    }
  }

  else if (v19 == 2)
  {
    v22 = *(v8 + 24);
    do
    {
      v23 = v22[2];
      v22[2] = vextq_s8(v23, v23, 8uLL);
      v22 = v23.i64[0];
    }

    while (v23.i64[0] != v16);
    *(v15 + 32) = v17;
    *(v17 + 40) = v15;
    *(v16 + 32) = v14;
    *(v14 + 40) = v16;
  }

  else
  {
    *(v15 + 32) = v16;
    *(v16 + 40) = v15;
    *(v14 + 40) = v17;
    *(v17 + 32) = v14;
  }

  *(v7 + 32) = 0;
  if (result == v8)
  {
    v24 = *(v8 + 8);
    if (v24 != v7)
    {
      *(v7 + 8) = v24;
    }

    *(v7 + 4) = *(v8 + 4);
  }

  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 8) = v7;
  v25 = *(a2 + 100);
  v26 = *(a3 + 100);
  *(a2 + 100) = -1;
  *(a3 + 100) = -1;
  v27 = *(a1 + *(*a1 - 24) + 104);
  if (v27)
  {
    while (*(v27 + 100) != v26)
    {
      v27 = *(v27 + 128);
      if (!v27)
      {
        goto LABEL_36;
      }
    }

    *(v27 + 100) = v25;
    *(v27 + 84) = v18;
  }

LABEL_36:
  *v8 = *v7;
  return result;
}

uint64_t ClipperLib::Clipper::AddEdgeToSEL(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112);
  *(a2 + 152) = 0;
  if (v2)
  {
    *(v2 + 152) = a2;
  }

  *(result + 112) = a2;
  *(a2 + 144) = v2;
  return result;
}

BOOL ClipperLib::Clipper::PopEdgeFromSEL(uint64_t a1, void *a2)
{
  v4 = *(a1 + 112);
  v2 = (a1 + 112);
  v3 = v4;
  if (v4)
  {
    *a2 = v3;
    v6 = *(*v2 + 144);
    v7 = *(*v2 + 152);
    v5 = *v2 + 144;
    if (*v5 == 0)
    {
      *v2 = 0;
    }

    else
    {
      v8 = (v7 + 144);
      if (!v7)
      {
        v8 = v2;
      }

      *v8 = v6;
      if (v6)
      {
        *(v6 + 152) = v7;
      }
    }

    *v5 = 0;
    *(v5 + 8) = 0;
  }

  return v3 != 0;
}

uint64_t ClipperLib::Clipper::DeleteFromSEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  v3 = *(a2 + 152);
  if (*(a2 + 144) == 0)
  {
    if (*(result + 112) != a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v4 = (result + 112);
    goto LABEL_6;
  }

  v4 = (v3 + 144);
LABEL_6:
  *v4 = v2;
  if (v2)
  {
    *(v2 + 152) = v3;
  }

  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  return result;
}

__n128 ClipperLib::Clipper::CopyAELToSEL(ClipperLib::Clipper *this)
{
  v1 = *(this + *(*this - 24) + 104);
  *(this + 14) = v1;
  if (v1)
  {
    do
    {
      result = v1[8];
      v1[9] = result;
      v1 = result.n128_u64[0];
    }

    while (result.n128_u64[0]);
  }

  return result;
}

uint64_t *ClipperLib::Clipper::InsertEdgeIntoAEL(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (!*(result + *(*result - 24) + 104))
  {
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
LABEL_43:
    v16 = (result + *(v3 - 24) + 104);
    goto LABEL_44;
  }

  if (!a3)
  {
    a3 = *(result + *(*result - 24) + 104);
    v18 = *(a2 + 24);
    v19 = *(a3 + 24);
    v20 = v18 < v19;
    if (v18 == v19)
    {
      v21 = *(a2 + 56);
      v22 = *(a3 + 56);
      if (v21 <= v22)
      {
        if (v21 == v22)
        {
          v25 = *(a2 + 48);
        }

        else
        {
          v26 = *(a2 + 72) * (v22 - *(a2 + 8));
          v27 = 0.5;
          if (v26 < 0.0)
          {
            v27 = -0.5;
          }

          v25 = *a2 + (v26 + v27);
        }

        if (*(a3 + 48) <= v25)
        {
          goto LABEL_3;
        }

LABEL_42:
        *(a2 + 136) = 0;
        *(a2 + 128) = *(result + *(v3 - 24) + 104);
        *(*(result + *(v3 - 24) + 104) + 136) = a2;
        goto LABEL_43;
      }

      v23 = *(a3 + 72) * (v21 - *(a3 + 8));
      v24 = 0.5;
      if (v23 < 0.0)
      {
        v24 = -0.5;
      }

      v20 = *(a2 + 48) < *a3 + (v23 + v24);
    }

    if (!v20)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

LABEL_3:
  v4 = *(a3 + 128);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = a3;
    while (1)
    {
      a3 = v6;
      v6 = v4;
      v7 = *(v4 + 24);
      v8 = v5 < v7;
      if (v5 == v7)
      {
        v9 = *(a2 + 56);
        v10 = *(v6 + 56);
        if (v9 <= v10)
        {
          if (v9 == v10)
          {
            v13 = *(a2 + 48);
          }

          else
          {
            v14 = *(a2 + 72) * (v10 - *(a2 + 8));
            if (v14 >= 0.0)
            {
              v15 = 0.5;
            }

            else
            {
              v15 = -0.5;
            }

            v13 = *a2 + (v14 + v15);
          }

          if (*(v6 + 48) > v13)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        v11 = *(v6 + 72) * (v9 - *(v6 + 8));
        if (v11 >= 0.0)
        {
          v12 = 0.5;
        }

        else
        {
          v12 = -0.5;
        }

        v8 = *(a2 + 48) < *v6 + (v11 + v12);
      }

      if (v8)
      {
        goto LABEL_24;
      }

LABEL_21:
      v4 = *(v6 + 128);
      if (!v4)
      {
        a3 = v6;
        break;
      }
    }
  }

  v6 = 0;
LABEL_24:
  *(a2 + 128) = v6;
  v16 = (a3 + 128);
  v17 = *(a3 + 128);
  if (v17)
  {
    *(v17 + 136) = a2;
  }

  *(a2 + 136) = a3;
LABEL_44:
  *v16 = a2;
  return result;
}

uint64_t ClipperLib::Clipper::IntersectEdges(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4)
{
  v7 = result;
  v8 = a2[25];
  v9 = a3[25];
  v10 = *(result + 136);
  if (v10)
  {
    result = v10(a2, a2 + 12, a3, a3 + 12, a4);
  }

  v11 = a2[22];
  v12 = a3[22];
  if (!v11)
  {
    if (!v12)
    {
      return result;
    }

    if (a2[20] == a3[20])
    {
      if (*(v7 + 80) != 1 || v9 < 0)
      {
        return result;
      }
    }

    else
    {
      v27 = a3[23];
      if (v27 < 0)
      {
        v27 = -v27;
      }

      if (v27 != 1 || *(v7 + 80) == 1 && a3[24])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a2, a4);
    if ((v8 & 0x80000000) == 0)
    {
      a2[25] = -1;
    }

    return result;
  }

  v13 = a2[20];
  v14 = a3[20];
  if (!v12)
  {
    if (v13 == v14)
    {
      if (*(v7 + 80) != 1 || v8 < 0)
      {
        return result;
      }
    }

    else
    {
      v28 = a2[23];
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (v28 != 1 || *(v7 + 80) == 1 && a2[24])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a3, a4);
    if (v9 < 0)
    {
      return result;
    }

    v29 = -1;
    goto LABEL_95;
  }

  if (v13 == v14)
  {
    v15 = 124;
    if (!v13)
    {
      v15 = 128;
    }

    v16 = *(v7 + v15);
    v17 = a2[23];
    if (v16)
    {
      v18 = v17 + v12;
      if (!v18)
      {
        v18 = -v17;
      }

      a2[23] = v18;
      v19 = a3[23] - v11;
      if (v19)
      {
        a3[23] = v19;
      }

      else
      {
        a3[23] = -v11;
      }
    }

    else
    {
      a2[23] = a3[23];
      a3[23] = v17;
    }
  }

  else
  {
    if (v14)
    {
      v20 = 124;
    }

    else
    {
      v20 = 128;
    }

    v21 = a2[24];
    v22 = v21 + v12;
    if (!*(v7 + v20))
    {
      v22 = v21 == 0;
    }

    a2[24] = v22;
    if (v13)
    {
      v23 = 124;
    }

    else
    {
      v23 = 128;
    }

    v24 = *(v7 + v23);
    v25 = a3[24];
    if (v24)
    {
      v26 = v25 - v11;
    }

    else
    {
      v26 = v25 == 0;
    }

    a3[24] = v26;
  }

  if (v13)
  {
    v30 = 124;
  }

  else
  {
    v30 = 128;
  }

  if (v13)
  {
    v31 = 128;
  }

  else
  {
    v31 = 124;
  }

  v32 = *(v7 + v30);
  if (v14)
  {
    v33 = 124;
  }

  else
  {
    v33 = 128;
  }

  if (v14)
  {
    v34 = 128;
  }

  else
  {
    v34 = 124;
  }

  v35 = *(v7 + v33);
  v36 = a2[23];
  if (v36 >= 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = -v36;
  }

  if (v32 == 2)
  {
    v37 = a2[23];
  }

  if (v32 == 3)
  {
    v38 = -v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = a3[23];
  if (v35 == 3)
  {
    v41 = -v39;
  }

  else
  {
    if (v39 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = -v39;
    }

    if (v35 == 2)
    {
      v41 = a3[23];
    }

    else
    {
      v41 = v40;
    }
  }

  v42 = *(v7 + v31);
  v43 = *(v7 + v34);
  if ((v8 & 0x80000000) == 0 && (v9 & 0x80000000) == 0)
  {
    if (v38 <= 1 && v41 <= 1 && (v13 == v14 || *(v7 + 80) == 3))
    {
      ClipperLib::Clipper::AddOutPt(v7, a2, a4);
LABEL_93:
      v44 = v7;
      v45 = a3;
LABEL_94:
      result = ClipperLib::Clipper::AddOutPt(v44, v45, a4);
      v46 = a2[21];
      a2[21] = a3[21];
      a3[21] = v46;
      v29 = a2[25];
      a2[25] = a3[25];
LABEL_95:
      a3[25] = v29;
      return result;
    }

    return ClipperLib::Clipper::AddLocalMaxPoly(v7, a2, a3, a4);
  }

  if ((v8 & 0x80000000) == 0)
  {
    if (v41 > 1)
    {
      return result;
    }

    v44 = v7;
    v45 = a2;
    goto LABEL_94;
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (v38 > 1)
    {
      return result;
    }

    goto LABEL_93;
  }

  if (v38 <= 1 && v41 <= 1)
  {
    v47 = a2[24];
    if (v47 >= 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = -v47;
    }

    if (v42 == 2)
    {
      v48 = a2[24];
    }

    if (v42 == 3)
    {
      v49 = -v47;
    }

    else
    {
      v49 = v48;
    }

    v50 = a3[24];
    if (v43 == 3)
    {
      v50 = -v50;
    }

    else if (v43 != 2)
    {
      if (v50 >= 0)
      {
        v50 = v50;
      }

      else
      {
        v50 = -v50;
      }
    }

    if (v13 == v14)
    {
      if (v38 != 1 || v41 != 1)
      {
        v52 = a2[21];
        a2[21] = a3[21];
        a3[21] = v52;
        return result;
      }

      v51 = *(v7 + 80);
      if (v51 <= 1)
      {
        if (!v51)
        {
          if (v49 < 1 || v50 < 1)
          {
            return result;
          }

          goto LABEL_133;
        }

        if (v51 != 1)
        {
          return result;
        }

        goto LABEL_131;
      }

      if (v51 == 2)
      {
        if (v13 != 1 || v49 < 1 || v50 <= 0)
        {
          if (v13)
          {
            return result;
          }

LABEL_131:
          if (v49 > 0 || v50 > 0)
          {
            return result;
          }
        }
      }

      else if (v51 != 3)
      {
        return result;
      }
    }

LABEL_133:

    return ClipperLib::Clipper::AddLocalMinPoly(v7, a2, a3, a4);
  }

  return result;
}

uint64_t ClipperLib::Clipper::SetZ(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 136);
  if (v4)
  {
    return v4(a3, a3 + 48, a4, a4 + 48, a2);
  }

  return result;
}

void *ClipperLib::Clipper::SetHoleState(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = *(v3 + 100);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(v3 + 88))
        {
          v4 = v3;
          if (v5)
          {
            if (*(v5 + 100) == v6)
            {
              v4 = 0;
            }

            else
            {
              v4 = v5;
            }
          }
        }
      }

      v3 = *(v3 + 136);
    }

    while (v3);
    if (v4)
    {
      v3 = *(*(result + *(*result - 24) + 80) + 8 * *(v4 + 100));
      LOBYTE(v4) = (*(v3 + 4) & 1) == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(a3 + 8) = v3;
  *(a3 + 4) = v4;
  return result;
}

uint64_t ClipperLib::GetLowermostRec(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  BottomPt = *(a1 + 32);
  if (!BottomPt)
  {
    BottomPt = ClipperLib::GetBottomPt(*(v3 + 24));
    *(v3 + 32) = BottomPt;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    v5 = ClipperLib::GetBottomPt(*(a2 + 24));
    *(a2 + 32) = v5;
    BottomPt = *(v3 + 32);
  }

  v6 = BottomPt[2];
  v7 = v5[2];
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      return a2;
    }

    v8 = BottomPt[1];
    v9 = v5[1];
    if (v8 < v9)
    {
      return v3;
    }

    if (v8 > v9 || BottomPt[4] == BottomPt)
    {
      return a2;
    }

    else if (v5[4] != v5 && !ClipperLib::FirstIsBottomPt(BottomPt, v5))
    {
      return a2;
    }
  }

  return v3;
}

BOOL ClipperLib::OutRec1RightOfOutRec2(uint64_t a1, uint64_t a2)
{
  do
  {
    a1 = *(a1 + 8);
  }

  while (a1 != a2 && a1 != 0);
  return a1 == a2;
}

int *ClipperLib::Clipper::GetOutRec(ClipperLib::Clipper *this, int a2)
{
  v2 = *(this + *(*this - 24) + 80);
  v3 = *(v2 + 8 * a2);
  do
  {
    result = v3;
    v3 = *(v2 + 8 * *v3);
  }

  while (result != v3);
  return result;
}

uint64_t ClipperLib::Clipper::GetLastOutPt(void *a1, uint64_t a2)
{
  v2 = *(*(a1 + *(*a1 - 24) + 80) + 8 * *(a2 + 100)) + 24;
  if (*(a2 + 84) != 1)
  {
    v2 = *v2 + 40;
  }

  return *v2;
}

uint64_t ClipperLib::Clipper::ProcessHorizontal(uint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = result;
  v82 = a2;
  v4 = *(a2 + 22);
  v5 = *a2;
  v6 = a2[6];
  v7 = *a2 < v6;
  if (*a2 >= v6)
  {
    v8 = a2[6];
  }

  else
  {
    v8 = *a2;
  }

  if (*a2 < v6)
  {
    v9 = a2[6];
  }

  else
  {
    v9 = *a2;
  }

  v75 = v9;
  v76 = v8;
  v10 = a2;
  while (1)
  {
    v11 = v10;
    v10 = v10[15];
    if (!v10)
    {
      break;
    }

    if (*(v10 + 9) != -1.0e40)
    {
      v74 = 0;
      goto LABEL_12;
    }
  }

  result = ClipperLib::GetMaximaPair(v11);
  v74 = result;
LABEL_12:
  v79 = v3 + 11;
  if (v3[13])
  {
    v12 = v3[12];
    if (v5 < v6)
    {
      while (1)
      {
        if (v12 == v79)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v13 = v12[2];
        if (v13 > v5)
        {
          break;
        }

        v12 = v12[1];
      }

      v14 = 0;
      if (v13 >= v11[6])
      {
        v12 = v3 + 11;
      }

      goto LABEL_27;
    }

    v15 = v3 + 11;
    while (1)
    {
      v14 = v15;
      if (v15 == v12)
      {
        break;
      }

      v15 = *v15;
      v16 = *(*v14 + 16);
      if (v16 <= v5)
      {
        if (v16 <= v11[6])
        {
          v14 = v3[12];
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v12 = 0;
LABEL_27:
  __asm { FMOV            V9.2S, #-1.0 }

  v77 = v11;
  while (1)
  {
    v22 = 17;
    if (v7)
    {
      v22 = 16;
    }

    v78 = v22 * 8;
    v23 = v2[v22];
    if (v23)
    {
      v24 = v7;
      while (1)
      {
        if (!v3[13])
        {
          goto LABEL_40;
        }

        if (v24)
        {
          break;
        }

        v26 = v3[12];
        if (v14 == v26)
        {
          v11 = v77;
        }

        else
        {
          while (1)
          {
            v27 = v14;
            v14 = *v14;
            if (v14[2] <= *(v23 + 24))
            {
              break;
            }

            if ((*(v2 + 25) & 0x80000000) == 0 && v4)
            {
              v28 = v2[1];
              *&v80 = v14[2];
              *(&v80 + 1) = v28;
              v81 = _D9;
              result = ClipperLib::Clipper::AddOutPt(v3, v2, &v80);
              v14 = *v27;
              v26 = v3[12];
            }

            if (v14 == v26)
            {
              goto LABEL_51;
            }
          }

          v14 = v27;
LABEL_51:
          v11 = v77;
          if (v24)
          {
LABEL_52:
            v29 = *(v23 + 24);
            if (v29 > v75)
            {
              goto LABEL_86;
            }

            goto LABEL_55;
          }
        }

LABEL_54:
        v29 = *(v23 + 24);
        if (v29 < v76)
        {
          goto LABEL_86;
        }

LABEL_55:
        if (v29 == v2[6])
        {
          v30 = v2[15];
          if (v30)
          {
            if (*(v23 + 72) < *(v30 + 72))
            {
              goto LABEL_86;
            }
          }
        }

        if ((*(v2 + 25) & 0x80000000) == 0 && v4)
        {
          ClipperLib::Clipper::AddOutPt(v3, v2, (v23 + 24));
          for (i = v3[14]; i; i = i[18])
          {
            if ((*(i + 25) & 0x80000000) == 0)
            {
              v32 = *v2;
              v33 = v2[6];
              v34 = *i;
              v35 = i[6];
              if (*v2 >= v33)
              {
                v36 = v2[6];
              }

              else
              {
                v36 = *v2;
              }

              if (*v2 <= v33)
              {
                v32 = v2[6];
              }

              if (v34 >= v35)
              {
                v37 = i[6];
              }

              else
              {
                v37 = *i;
              }

              if (v34 <= v35)
              {
                v34 = i[6];
              }

              if (v36 < v34 && v37 < v32)
              {
                v80 = *(i + 3);
                v81 = i[8];
                operator new();
              }
            }
          }

          v80 = *v2;
          v81 = v2[2];
          operator new();
        }

        if (v2 == v11 && v23 == v74)
        {
          if ((*(v2 + 25) & 0x80000000) == 0)
          {
            result = ClipperLib::Clipper::AddLocalMaxPoly(v3, v2, v74, v2 + 6);
          }

          v47 = *v3;
          v48 = v3 + *(*v3 - 24);
          v49 = v2[16];
          v50 = v2[17];
          v51 = v2 + 16;
          if (v50 | v49)
          {
            if (v50)
            {
              v52 = (v50 + 128);
              goto LABEL_103;
            }

LABEL_102:
            v52 = v48 + 104;
LABEL_103:
            *v52 = v49;
            if (v49)
            {
              *(v49 + 136) = v50;
            }

            *v51 = 0;
            v51[1] = 0;
            v47 = *v3;
          }

          else if (*(v48 + 13) == v11)
          {
            goto LABEL_102;
          }

          v53 = v3 + *(v47 - 24);
          v55 = *(v74 + 128);
          v56 = *(v74 + 136);
          v54 = (v74 + 128);
          if (*(v74 + 128) == 0)
          {
            if (*(v53 + 13) == v74)
            {
              goto LABEL_110;
            }
          }

          else
          {
LABEL_107:
            if (v56)
            {
              v57 = (v56 + 128);
              goto LABEL_111;
            }

LABEL_110:
            v57 = v53 + 104;
LABEL_111:
            *v57 = v55;
            if (v55)
            {
              *(v55 + 136) = v56;
            }

            *v54 = 0;
            v54[1] = 0;
          }

          return result;
        }

        v39 = v2[4];
        *&v80 = *(v23 + 24);
        *(&v80 + 1) = v39;
        v81 = _D9;
        if (v24)
        {
          v40 = v2;
          v41 = v23;
        }

        else
        {
          v40 = v23;
          v41 = v2;
        }

        ClipperLib::Clipper::IntersectEdges(v3, v40, v41, &v80);
        v42 = *(v23 + v78);
        result = ClipperLib::ClipperBase::SwapPositionsInAEL(v3 + *(*v3 - 24), v2, v23);
        v23 = v42;
        if (!v42)
        {
          goto LABEL_86;
        }
      }

      if (v12 == v79)
      {
        goto LABEL_52;
      }

      do
      {
        if (v12[2] >= *(v23 + 24))
        {
          break;
        }

        if ((*(v2 + 25) & 0x80000000) == 0 && v4)
        {
          v25 = v2[1];
          *&v80 = v12[2];
          *(&v80 + 1) = v25;
          v81 = _D9;
          result = ClipperLib::Clipper::AddOutPt(v3, v2, &v80);
        }

        v12 = v12[1];
      }

      while (v12 != v79);
LABEL_40:
      if (v24)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    }

LABEL_86:
    v43 = v2[15];
    if (!v43 || *(v43 + 72) != -1.0e40)
    {
      break;
    }

    result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    v2 = v82;
    if ((*(v82 + 25) & 0x80000000) == 0)
    {
      result = ClipperLib::Clipper::AddOutPt(v3, v82, v82);
    }

    v44 = *v2;
    v45 = v2[6];
    v7 = *v2 < v45;
    if (*v2 >= v45)
    {
      v46 = v2[6];
    }

    else
    {
      v46 = *v2;
    }

    if (*v2 < v45)
    {
      v44 = v2[6];
    }

    v75 = v44;
    v76 = v46;
  }

  v58 = *(v2 + 25);
  if ((v58 & 0x80000000) == 0)
  {
    for (j = v3[14]; j; j = j[18])
    {
      if ((*(j + 25) & 0x80000000) == 0)
      {
        v60 = *v2;
        v61 = v2[6];
        v62 = *j;
        v63 = j[6];
        if (*v2 >= v61)
        {
          v64 = v2[6];
        }

        else
        {
          v64 = *v2;
        }

        if (*v2 <= v61)
        {
          v60 = v2[6];
        }

        if (v62 >= v63)
        {
          v65 = j[6];
        }

        else
        {
          v65 = *j;
        }

        if (v62 <= v63)
        {
          v62 = j[6];
        }

        if (v64 < v62 && v65 < v60)
        {
          v80 = *(j + 3);
          v81 = j[8];
          operator new();
        }
      }
    }

    v80 = *(v2 + 3);
    v81 = v2[8];
    operator new();
  }

  if (v43)
  {
    if (v58 < 0)
    {
      return ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    }

    ClipperLib::Clipper::AddOutPt(v3, v2, v2 + 6);
    result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    v67 = v82;
    if (*(v82 + 22))
    {
      v68 = v82[16];
      v69 = v82[17];
      if (v69 && *(v69 + 24) == *v82 && (v70 = *(v69 + 32), v70 == v82[1]) && *(v69 + 88) && (*(v69 + 100) & 0x80000000) == 0 && v70 > *(v69 + 56) && (result = ClipperLib::SlopesEqual(v82, v82[17], *(v3 + *(*v3 - 24) + 40)), result))
      {
        v71 = v3;
        v72 = v69;
      }

      else
      {
        if (!v68)
        {
          return result;
        }

        if (*(v68 + 24) != *v67)
        {
          return result;
        }

        v73 = *(v68 + 32);
        if (v73 != v67[1])
        {
          return result;
        }

        if (!*(v68 + 88))
        {
          return result;
        }

        if ((*(v68 + 100) & 0x80000000) != 0)
        {
          return result;
        }

        if (v73 <= *(v68 + 56))
        {
          return result;
        }

        result = ClipperLib::SlopesEqual(v67, v68, *(v3 + *(*v3 - 24) + 40));
        if (!result)
        {
          return result;
        }

        v71 = v3;
        v72 = v68;
      }

      ClipperLib::Clipper::AddOutPt(v71, v72, v67);
      v80 = *(v67 + 3);
      v81 = v67[8];
      ClipperLib::Clipper::AddJoin();
    }
  }

  else
  {
    if ((v58 & 0x80000000) == 0)
    {
      result = ClipperLib::Clipper::AddOutPt(v3, v2, v2 + 6);
    }

    v53 = v3 + *(*v3 - 24);
    v55 = v2[16];
    v56 = v2[17];
    v54 = v2 + 16;
    if (*(v2 + 8) != 0)
    {
      goto LABEL_107;
    }

    if (*(v53 + 13) == v2)
    {
      goto LABEL_110;
    }
  }

  return result;
}

void *ClipperLib::GetMaximaPair(void *a1)
{
  result = a1[13];
  v3 = a1[6];
  v4 = a1[7];
  v5 = result[6] == v3 && result[7] == v4;
  if (!v5 || result[15])
  {
    result = a1[14];
    v6 = result[6] == v3 && result[7] == v4;
    if (!v6 || result[15])
    {
      return 0;
    }
  }

  return result;
}

double ClipperLib::GetMaximaPairEx(void *a1)
{
  MaximaPair = ClipperLib::GetMaximaPair(a1);
  if (MaximaPair && *(MaximaPair + 25) != -2 && *(MaximaPair + 16) == *(MaximaPair + 17))
  {
    return MaximaPair[9];
  }

  return result;
}

uint64_t ClipperLib::Clipper::SwapPositionsInSEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 144);
  if (!v3 && !*(a2 + 152))
  {
    return result;
  }

  v4 = *(a3 + 144);
  if (!v4)
  {
    v6 = (a3 + 152);
    v7 = *(a3 + 152);
    if (!v7)
    {
      return result;
    }

    if (v3 != a3)
    {
      v5 = *(a2 + 152);
      *(a2 + 144) = 0;
      *(a2 + 152) = v7;
LABEL_11:
      *(v7 + 144) = a2;
      goto LABEL_12;
    }

LABEL_17:
    v8 = *(a2 + 152);
    if (v8)
    {
      *(v8 + 144) = a3;
    }

    *(a3 + 144) = a2;
    *(a3 + 152) = v8;
    *(a2 + 144) = v4;
    *(a2 + 152) = a3;
    goto LABEL_25;
  }

  if (v3 == a3)
  {
    *(v4 + 152) = a2;
    goto LABEL_17;
  }

  if (v4 == a2)
  {
    if (v3)
    {
      *(v3 + 152) = a3;
    }

    v9 = *(a3 + 152);
    if (v9)
    {
      *(v9 + 144) = a2;
    }

    *(a2 + 144) = a3;
    *(a2 + 152) = v9;
    *(a3 + 144) = v3;
    *(a3 + 152) = a2;
    goto LABEL_25;
  }

  v5 = *(a2 + 152);
  *(v4 + 152) = a2;
  v6 = (a3 + 152);
  v7 = *(a3 + 152);
  *(a2 + 144) = v4;
  *(a2 + 152) = v7;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a3 + 144) = v3;
  if (v3)
  {
    *(v3 + 152) = a3;
  }

  *v6 = v5;
  if (v5)
  {
    *(v5 + 144) = a3;
  }

LABEL_25:
  if (!*(a2 + 152) || (a2 = a3, !*(a3 + 152)))
  {
    *(result + 112) = a2;
  }

  return result;
}

uint64_t ClipperLib::GetNextInAEL(uint64_t a1, int a2)
{
  v2 = 136;
  if (a2 == 1)
  {
    v2 = 128;
  }

  return *(a1 + v2);
}

uint64_t *ClipperLib::GetHorzDirection(uint64_t *result, int *a2, void *a3, void *a4)
{
  v4 = *result;
  v5 = result[6];
  v6 = *result < v5;
  if (*result >= v5)
  {
    v4 = result[6];
  }

  *a3 = v4;
  if (v6)
  {
    v7 = result + 6;
  }

  else
  {
    v7 = result;
  }

  v8 = *v7;
  v9 = v6;
  *a4 = v8;
  *a2 = v9;
  return result;
}

void *ClipperLib::Clipper::BuildIntersectList(void *this, uint64_t a2)
{
  v2 = *(this + *(*this - 24) + 104);
  if (v2)
  {
    this[14] = v2;
    do
    {
      v4 = *(v2 + 128);
      *(v2 + 144) = v4;
      if (*(v2 + 56) == a2)
      {
        v5 = *(v2 + 48);
      }

      else
      {
        v6 = *(v2 + 72) * (a2 - *(v2 + 8));
        if (v6 >= 0.0)
        {
          v7 = 0.5;
        }

        else
        {
          v7 = -0.5;
        }

        v5 = *v2 + (v6 + v7);
      }

      *(v2 + 24) = v5;
      v2 = v4;
    }

    while (v4);
    __asm { FMOV            V8.2S, #-1.0 }

    v13 = this[14];
    v14 = *(v13 + 144);
    if (v14)
    {
      do
      {
        v20 = 0uLL;
        v21 = _D8;
        if (*(v13 + 24) > *(v14 + 24))
        {
          ClipperLib::IntersectPoint(v13, v14, &v20);
          if (v20.i64[1] < a2)
          {
            if (*(v13 + 56) == a2)
            {
              v15 = *(v13 + 48);
            }

            else
            {
              v16 = *(v13 + 72) * (a2 - *(v13 + 8));
              if (v16 >= 0.0)
              {
                v17 = 0.5;
              }

              else
              {
                v17 = -0.5;
              }

              v15 = *v13 + (v16 + v17);
            }

            v20.i64[0] = v15;
            v20.i64[1] = a2;
            v21 = _D8;
          }

          operator new();
        }

        v13 = v14;
        v14 = *(v14 + 144);
      }

      while (v14);
      v18 = *(v13 + 152);
      if (v18)
      {
        *(v18 + 144) = 0;
      }
    }

    else
    {
      v19 = *(v13 + 152);
      if (v19)
      {
        *(v19 + 144) = 0;
      }
    }

    this[14] = 0;
  }

  return this;
}

BOOL ClipperLib::Clipper::FixupIntersectionOrder(ClipperLib::Clipper *this)
{
  v2 = *(this + *(*this - 24) + 104);
  *(this + 14) = v2;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 128);
      *(v2 + 144) = v3;
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 7);
  v5 = *(this + 8);
  v6 = 126 - 2 * __clz((v5->i64 - v4) >> 3);
  v26 = ClipperLib::IntersectListSort;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = 1;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(v4, v5, &v26, v7, 1);
  v9 = *(this + 8) - *(this + 7);
  if (v9)
  {
    v8 = 0;
    v10 = 0;
    v11 = v9 >> 3;
    if ((v9 >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 >> 3;
    }

    v13 = 1;
    do
    {
      if (v11 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = *(this + 7);
      v16 = *(v15 + 8 * v10);
      v17 = *v16;
      v18 = v16[1];
      if (*(*v16 + 144) != v18 && *(v17 + 152) != v18)
      {
        v19 = v13;
        v20 = v10;
        while (1)
        {
          if (v19 >= v11)
          {
            v20 = v14;
            goto LABEL_23;
          }

          v21 = *(v15 + 8 * v19);
          v23 = *v21;
          v22 = v21[1];
          if (*(v23 + 144) == v22)
          {
            break;
          }

          ++v19;
          ++v20;
          if (*(v23 + 152) == v22)
          {
            goto LABEL_23;
          }
        }

        v20 = v19;
LABEL_23:
        if (v20 == v11)
        {
          return v8;
        }

        *(v15 + 8 * v10) = *(v15 + 8 * v20);
        *(v15 + 8 * v20) = v16;
        v24 = *(*(this + 7) + 8 * v10);
        v17 = *v24;
        v18 = v24[1];
      }

      ClipperLib::Clipper::SwapPositionsInSEL(this, v17, v18);
      v8 = ++v10 >= v11;
      ++v13;
    }

    while (v10 != v12);
  }

  return v8;
}

void *ClipperLib::Clipper::ProcessIntersectList(void *this)
{
  v1 = this;
  v2 = this[7];
  if (this[8] != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      ClipperLib::Clipper::IntersectEdges(v1, *v4, v4[1], v4 + 2);
      ClipperLib::ClipperBase::SwapPositionsInAEL(v1 + *(*v1 - 24), *v4, v4[1]);
      this = MEMORY[0x1CCA6ECB0](v4, 0x1020C40E349F4B1);
      ++v3;
      v2 = v1[7];
    }

    while (v3 < (v1[8] - v2) >> 3);
  }

  v1[8] = v2;
  return this;
}

uint64_t ClipperLib::Clipper::DisposeIntersectNodes(uint64_t this)
{
  v1 = this;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x1CCA6ECB0](this, 0x1020C40E349F4B1);
        v2 = *(v1 + 56);
        v3 = *(v1 + 64);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(v1 + 64) = v2;
  return this;
}

void ClipperLib::Clipper::DoMaxima(uint64_t *a1, uint64_t a2)
{
  ClipperLib::GetMaximaPairEx(a2);
  if (v4)
  {
    v5 = v4;
    v7 = (a2 + 128);
    for (i = *(a2 + 128); i && i != v5; i = *(a2 + 128))
    {
      ClipperLib::Clipper::IntersectEdges(a1, a2, i, (a2 + 48));
      ClipperLib::ClipperBase::SwapPositionsInAEL(a1 + *(*a1 - 24), a2, i);
    }

    v9 = *(a2 + 100);
    if (v9 != -1)
    {
      if ((v9 & 0x80000000) == 0)
      {
        if ((*(v5 + 100) & 0x80000000) == 0)
        {
          ClipperLib::Clipper::AddLocalMaxPoly(a1, a2, v5, (a2 + 48));
          v10 = *a1;
          v11 = a1 + *(*a1 - 24);
          v13 = *(a2 + 128);
          v12 = *(a2 + 136);
          if (*(a2 + 128) != 0)
          {
            if (v12)
            {
              v14 = (v12 + 128);
              goto LABEL_43;
            }

LABEL_42:
            v14 = v11 + 104;
LABEL_43:
            *v14 = v13;
            if (v13)
            {
              *(v13 + 136) = v12;
            }

LABEL_49:
            *v7 = 0;
            *(a2 + 136) = 0;
            v10 = *a1;
            goto LABEL_50;
          }

          if (*(v11 + 13) == a2)
          {
            goto LABEL_42;
          }

LABEL_50:
          v23 = v10;
          goto LABEL_51;
        }

        if (!*(a2 + 88))
        {
          ClipperLib::Clipper::AddOutPt(a1, a2, (a2 + 48));
          *(a2 + 100) = -1;
LABEL_24:
          v19 = a1 + *(*a1 - 24);
          v21 = *(a2 + 128);
          v20 = *(a2 + 136);
          if (*(a2 + 128) == 0)
          {
            if (*(v19 + 13) != a2)
            {
LABEL_32:
              if ((*(v5 + 100) & 0x80000000) == 0)
              {
                ClipperLib::Clipper::AddOutPt(a1, v5, (a2 + 48));
                *(v5 + 100) = -1;
              }

              v23 = *a1;
LABEL_51:
              v15 = a1 + *(v23 - 24);
              v17 = *(v5 + 128);
              v18 = *(v5 + 136);
              v16 = (v5 + 128);
              if (*(v5 + 128) == 0)
              {
                if (*(v15 + 13) != v5)
                {
                  return;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }
          }

          else if (v20)
          {
            v22 = (v20 + 128);
LABEL_29:
            *v22 = v21;
            if (v21)
            {
              *(v21 + 136) = v20;
            }

            *v7 = 0;
            *(a2 + 136) = 0;
            goto LABEL_32;
          }

          v22 = v19 + 104;
          goto LABEL_29;
        }

LABEL_60:
        exception = __cxa_allocate_exception(0x20uLL);
        ClipperLib::clipperException::clipperException(exception, "DoMaxima error");
      }

LABEL_20:
      if (!*(a2 + 88))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }

    if (*(v5 + 100) != -1)
    {
      goto LABEL_20;
    }

    v10 = *a1;
    v24 = a1 + *(*a1 - 24);
    v25 = *(a2 + 136);
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = i != 0;
    }

    if (v26)
    {
      if (v25)
      {
        v27 = (v25 + 128);
        goto LABEL_47;
      }
    }

    else if (*(v24 + 13) != a2)
    {
      goto LABEL_50;
    }

    v27 = (v24 + 104);
LABEL_47:
    *v27 = i;
    if (i)
    {
      *(i + 136) = v25;
    }

    goto LABEL_49;
  }

  if ((*(a2 + 100) & 0x80000000) == 0)
  {
    ClipperLib::Clipper::AddOutPt(a1, a2, (a2 + 48));
  }

  v15 = a1 + *(*a1 - 24);
  v17 = *(a2 + 128);
  v18 = *(a2 + 136);
  v16 = (a2 + 128);
  if (*(a2 + 128) == 0)
  {
    if (*(v15 + 13) != a2)
    {
      return;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (!v18)
  {
LABEL_55:
    v28 = v15 + 104;
    goto LABEL_56;
  }

  v28 = (v18 + 128);
LABEL_56:
  *v28 = v17;
  if (v17)
  {
    *(v17 + 136) = v18;
  }

  *v16 = 0;
  v16[1] = 0;
}

uint64_t ClipperLib::PointCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      v1 = (v1 + 1);
      v2 = *(v2 + 32);
    }

    while (v2 != a1);
  }

  return v1;
}

void *std::vector<std::vector<ClipperLib::IntPoint>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<ClipperLib::IntPoint>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<ClipperLib::PolyNode *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

__n128 ClipperLib::SwapIntersectNodes(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v4 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  result = a2[1];
  *(a1 + 4) = *(a2 + 4);
  a1[1] = result;
  *a2 = v4;
  a2[1] = v3;
  *(a2 + 4) = v2;
  return result;
}

BOOL ClipperLib::GetOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4, ClipperLib **a5, ClipperLib **a6, uint64_t *a7)
{
  if (this >= a2)
  {
    if (a3 >= a4)
    {
      if (a2 <= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = a2;
      }

      *a5 = v11;
      if (a3 >= this)
      {
        v8 = this;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      if (a2 <= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2;
      }

      *a5 = v9;
      if (a4 >= this)
      {
        v8 = this;
      }

      else
      {
        v8 = a4;
      }
    }
  }

  else if (a3 >= a4)
  {
    if (this <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = this;
    }

    *a5 = v10;
    if (a3 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }
  }

  else
  {
    if (this <= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = this;
    }

    *a5 = v7;
    if (a4 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a4;
    }
  }

  *a6 = v8;
  return *a5 < v8;
}

uint64_t ClipperLib::JoinHorz(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a1[1];
  v6 = *(a2 + 8);
  v7 = v5 <= v6;
  v8 = *(a3 + 8) <= *(a4 + 8);
  if (v7 != v8)
  {
    v9 = *a5;
    if (v5 > v6)
    {
      do
      {
        v12 = a1;
        a1 = a1[4];
        v13 = a1[1];
      }

      while (v13 >= v9 && v13 <= v12[1] && a1[2] == a5[1]);
    }

    else
    {
      do
      {
        v10 = a1;
        a1 = a1[4];
        v11 = a1[1];
      }

      while (v11 <= v9 && v11 >= v10[1] && a1[2] == a5[1]);
    }

    operator new();
  }

  return v7 ^ v8;
}

uint64_t ClipperLib::Clipper::JoinPoints(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = (*a2 + 8);
  v9 = *v10;
  v11 = *(*a2 + 16);
  if (v11 != *(a2 + 24))
  {
    v48 = (v8 + 4);
    do
    {
      v49 = *v48;
      v51 = *(*v48 + 8);
      v50 = *(*v48 + 16);
      v48 = *v48 + 32;
    }

    while (v49 != v8 && v51 == v9 && v50 == v11);
    if (v50 <= v11 && (v88 = *v10, v89 = v10[2], v86 = *(v49 + 1), v87 = v49[3], v84 = *(a2 + 16), v85 = *(a2 + 32), v83 = *a1, ClipperLib::SlopesEqual(&v88, &v86, &v84, *(a1 + *(*a1 - 24) + 40))))
    {
      v81 = a3;
      v82 = a4;
      v80 = 0;
    }

    else
    {
      v49 = v8;
      do
      {
        v49 = v49[5];
        v54 = v49[2];
      }

      while (v49 != v8 && v49[1] == v9 && v54 == v11);
      if (v54 > v11)
      {
        return 0;
      }

      v88 = *v10;
      v89 = v10[2];
      v86 = *(v49 + 1);
      v87 = v49[3];
      v84 = *(a2 + 16);
      v85 = *(a2 + 32);
      v83 = *a1;
      result = ClipperLib::SlopesEqual(&v88, &v86, &v84, *(a1 + *(*a1 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v81 = a3;
      v82 = a4;
      v80 = 1;
    }

    v59 = (v7 + 1);
    v58 = v7[1];
    v60 = (v7 + 4);
    v61 = v7[2];
    do
    {
      v62 = *v60;
      v64 = *(*v60 + 8);
      v63 = *(*v60 + 16);
      v60 = *v60 + 32;
    }

    while (v64 == v58 && v63 == v61 && v62 != v7);
    if (v63 <= v61 && (v88 = *v59, v89 = v7[3], v86 = *(v62 + 1), v87 = v62[3], v84 = *(a2 + 16), v85 = *(a2 + 32), ClipperLib::SlopesEqual(&v88, &v86, &v84, *(a1 + *(v83 - 24) + 40))))
    {
      v67 = 0;
    }

    else
    {
      v62 = v7;
      do
      {
        v62 = v62[5];
        v68 = v62[2];
      }

      while (v62[1] == v58 && v68 == v61 && v62 != v7);
      if (v68 > v61)
      {
        return 0;
      }

      v88 = *v59;
      v89 = v7[3];
      v86 = *(v62 + 1);
      v87 = v62[3];
      v84 = *(a2 + 16);
      v85 = *(a2 + 32);
      result = ClipperLib::SlopesEqual(&v88, &v86, &v84, *(a1 + *(v83 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v67 = 1;
    }

    result = 0;
    if (v49 == v62 || v49 == v8 || v62 == v7)
    {
      return result;
    }

    if (v81 != v82 || v80 != v67)
    {
      operator new();
    }

    return 0;
  }

  v12 = *a2;
  if (*(a2 + 16) != v9 || (v9 == v7[1] ? (v13 = v11 == v7[2]) : (v13 = 0), v12 = *a2, !v13))
  {
    do
    {
      v14 = v12;
      v12 = v12[5];
    }

    while (v12 != v8 && v12[2] == v11 && v12 != v7);
    do
    {
      v17 = v8;
      v8 = v8[4];
    }

    while (v8 != v14 && v8[2] == v11 && v8 != v7);
    if (v8 != v14 && v8 != v7)
    {
      v21 = v14 + 2;
      v22 = v7[2];
      v23 = v7;
      do
      {
        v24 = v23;
        v23 = v23[5];
      }

      while (v23 != v17 && v23[2] == v22 && v23 != v7);
      do
      {
        v27 = v7;
        v7 = v7[4];
      }

      while (v7 != v14 && v7 != v24 && v7[2] == v22);
      if (v7 != v24 && v7 != v14)
      {
        v31 = v14[1];
        v32 = *(v17 + 8);
        v33 = *(v24 + 8);
        v34 = *(v27 + 8);
        v35 = v32 <= v34 ? *(v27 + 8) : *(v17 + 8);
        v36 = v33 >= v31 ? v14[1] : *(v24 + 8);
        v37 = v32 <= v33 ? *(v24 + 8) : *(v17 + 8);
        v38 = v34 >= v31 ? v14[1] : *(v27 + 8);
        if (v33 >= v34)
        {
          v38 = v36;
        }

        else
        {
          v35 = v37;
        }

        v39 = v31 <= v34 ? *(v27 + 8) : v14[1];
        v40 = v33 >= v32 ? *(v17 + 8) : *(v24 + 8);
        v41 = v31 <= v33 ? *(v24 + 8) : v14[1];
        v42 = v34 >= v32 ? *(v17 + 8) : *(v27 + 8);
        if (v33 >= v34)
        {
          v43 = v40;
        }

        else
        {
          v39 = v41;
          v43 = v42;
        }

        if (v31 < v32)
        {
          v44 = v43;
        }

        else
        {
          v39 = v35;
          v44 = v38;
        }

        if (v39 < v44)
        {
          if (v31 < v39 || v31 > v44)
          {
            if (v33 < v39 || v33 > v44)
            {
              if (v32 < v39 || v32 > v44)
              {
                v21 = (v27 + 16);
                v45 = (v27 + 24);
                v46 = (v27 + 28);
              }

              else
              {
                v45 = (v17 + 24);
                v46 = (v17 + 28);
                v21 = (v17 + 16);
                v34 = *(v17 + 8);
              }
            }

            else
            {
              v21 = (v24 + 16);
              v45 = (v24 + 24);
              v46 = (v24 + 28);
              v34 = *(v24 + 8);
            }
          }

          else
          {
            v45 = (v14 + 3);
            v46 = v14 + 7;
            v34 = v14[1];
          }

          v77 = *v21;
          v78 = *v45;
          v79 = *v46;
          *a2 = v14;
          *(a2 + 8) = v24;
          *&v88 = v34;
          *(&v88 + 1) = v77;
          v89 = __PAIR64__(v79, v78);
          return ClipperLib::JoinHorz(v14, v17, v24, v27, &v88);
        }
      }
    }

    return 0;
  }

  if (a3 != a4)
  {
    return 0;
  }

  v71 = *a2;
  while (1)
  {
    v71 = v71[4];
    if (v71 == v8)
    {
      break;
    }

    v72 = v71[2];
    if (v71[1] != v9 || v72 != v11)
    {
      goto LABEL_147;
    }
  }

  v72 = v71[2];
LABEL_147:
  v74 = *(a2 + 8);
  while (1)
  {
    v74 = v74[4];
    if (v74 == v7)
    {
      break;
    }

    v75 = v74[2];
    if (v74[1] != v9 || v75 != v11)
    {
      goto LABEL_155;
    }
  }

  v75 = v74[2];
LABEL_155:
  if (v72 > v11 == v75 <= v11)
  {
    operator new();
  }

  return v72 > v11 == v75 <= v11;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts1(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result - 24);
  v5 = *(result + v4 + 80);
  if (*(result + v4 + 88) != v5)
  {
    v8 = result;
    v9 = 0;
    do
    {
      v10 = *(v5 + 8 * v9);
      for (i = *(v10 + 8); i; i = *(i + 8))
      {
        if (*(i + 24))
        {
          break;
        }
      }

      if (i == a2)
      {
        v12 = *(v10 + 24);
        if (v12)
        {
          v13 = *(a3 + 24);
          v14 = *(v10 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon((v14 + 8), v13);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v14 = *(v14 + 32);
            if (v14 == v12)
            {
              goto LABEL_13;
            }
          }

          if (!result)
          {
            goto LABEL_14;
          }

LABEL_13:
          *(v10 + 8) = a3;
          v4 = *(v3 - 24);
        }
      }

LABEL_14:
      ++v9;
      v5 = *(v8 + v4 + 80);
    }

    while (v9 < (*(v8 + v4 + 88) - v5) >> 3);
  }

  return result;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = *result;
  v21 = *(a3 + 8);
  v3 = *(*result - 24);
  v4 = *(result + v3 + 80);
  if (*(result + v3 + 88) != v4)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(v4 + 8 * v8);
      v10 = *(v9 + 24);
      if (v9 != a2 && v9 != a3 && v10 != 0)
      {
        v13 = *(v9 + 8);
        if (v13)
        {
          v14 = *(v9 + 8);
          do
          {
            if (*(v14 + 24))
            {
              break;
            }

            v14 = *(v14 + 8);
          }

          while (v14);
        }

        else
        {
          v14 = 0;
        }

        if (v14 == a3 || v14 == v21 || v14 == a2)
        {
          v15 = *(a2 + 24);
          v16 = *(v9 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon((v16 + 8), v15);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v16 = *(v16 + 32);
            if (v16 == v10)
            {
              v17 = a2;
LABEL_29:
              *(v9 + 8) = v17;
              v3 = *(v20 - 24);
              goto LABEL_30;
            }
          }

          v17 = a2;
          if (result)
          {
            goto LABEL_29;
          }

          v18 = *(a3 + 24);
          v19 = v10;
          while (1)
          {
            result = ClipperLib::PointInPolygon((v19 + 8), v18);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v19 = *(v19 + 32);
            if (v19 == v10)
            {
              v17 = a3;
              goto LABEL_29;
            }
          }

          v17 = a3;
          if (result)
          {
            goto LABEL_29;
          }

          v17 = v21;
          if (v13 == a2)
          {
            goto LABEL_29;
          }

          v17 = v21;
          if (v13 == a3)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_30:
      ++v8;
      v4 = *(v7 + v3 + 80);
    }

    while (v8 < (*(v7 + v3 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t *ClipperLib::Clipper::FixupFirstLefts3(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result - 24);
  v5 = *(result + v4 + 80);
  if (*(result + v4 + 88) != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (*(v7 + 8) == a2 && *(v7 + 24) != 0)
      {
        *(v7 + 8) = a3;
        v4 = *(v3 - 24);
      }

      ++v6;
      v5 = *(result + v4 + 80);
    }

    while (v6 < (*(result + v4 + 88) - v5) >> 3);
  }

  return result;
}

double ClipperLib::GetUnitNormal(ClipperLib *this, const IntPoint *a2, const IntPoint *a3)
{
  v3 = *(a2 + 1);
  v4 = *(this + 1);
  v5 = *a2 == *this && v3 == v4;
  result = 0.0;
  if (!v5)
  {
    return 1.0 / sqrt((v3 - v4) * (v3 - v4) + (*a2 - *this) * (*a2 - *this)) * (v3 - v4);
  }

  return result;
}

double ClipperLib::ClipperOffset::ClipperOffset(ClipperLib::ClipperOffset *this, double a2, double a3)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  __asm { FMOV            V3.2S, #-1.0 }

  *(this + 22) = _D3;
  *(this + 23) = &unk_1F47697C0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 237) = 0u;
  *this = a2;
  *(this + 1) = a3;
  result = NAN;
  *(this + 10) = xmmword_1C801D670;
  return result;
}

{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  __asm { FMOV            V3.2S, #-1.0 }

  *(this + 22) = _D3;
  *(this + 23) = &unk_1F47697C0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 237) = 0u;
  *this = a2;
  *(this + 1) = a3;
  result = NAN;
  *(this + 10) = xmmword_1C801D670;
  return result;
}

void ClipperLib::ClipperOffset::~ClipperOffset(ClipperLib::ClipperOffset *this)
{
  ClipperLib::ClipperOffset::Clear(this);
  ClipperLib::PolyNode::~PolyNode((this + 184));
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = (this + 16);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void *ClipperLib::ClipperOffset::Clear(void *this)
{
  v1 = this;
  v2 = this[27];
  v3 = this[28];
  if (((v3 - v2) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[27];
        v3 = v1[28];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[28] = v2;
  v1[20] = -1;
  return this;
}

void ClipperLib::ClipperOffset::AddPath(uint64_t a1, void *a2)
{
  if ((-1431655765 * ((a2[1] - *a2) >> 3)) >= 1)
  {
    operator new();
  }
}

void ClipperLib::ClipperOffset::AddPaths(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::ClipperOffset::AddPath(a1, (v2 + v5));
      ++v6;
      v2 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void ClipperLib::ClipperOffset::FixOrientations(ClipperLib::ClipperOffset *this)
{
  v2 = *(this + 20);
  if (v2 < 0)
  {
    v3 = *(this + 27);
  }

  else
  {
    v3 = *(this + 27);
    if (ClipperLib::Area((*(v3 + 8 * v2) + 8)) < 0.0)
    {
      v4 = *(this + 28);
      if (((v4 - v3) >> 3) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = *(v3 + 8 * v5);
          v7 = *(v6 + 76);
          if (!v7 || v7 == 1 && ClipperLib::Area((v6 + 8)) >= 0.0)
          {
            v8 = *(v6 + 8);
            v9 = *(v6 + 16);
            v10 = v9 - 24;
            if (v8 != v9 && v10 > v8)
            {
              v12 = v8 + 24;
              do
              {
                v13 = *(v12 - 8);
                v14 = *(v12 - 24);
                v15 = *(v10 + 16);
                *(v12 - 24) = *v10;
                *(v12 - 8) = v15;
                *v10 = v14;
                *(v10 + 16) = v13;
                v10 -= 24;
                v16 = v12 >= v10;
                v12 += 24;
              }

              while (!v16);
              v3 = *(this + 27);
              v4 = *(this + 28);
            }
          }

          ++v5;
        }

        while (v5 < ((v4 - v3) >> 3));
      }

      return;
    }
  }

  v17 = *(this + 28);
  if (((v17 - v3) >> 3) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(v3 + 8 * v18);
      if (*(v19 + 76) == 1 && ClipperLib::Area((v19 + 8)) < 0.0)
      {
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = v21 - 24;
        if (v20 != v21 && v22 > v20)
        {
          v24 = v20 + 24;
          do
          {
            v25 = *(v24 - 8);
            v26 = *(v24 - 24);
            v27 = *(v22 + 16);
            *(v24 - 24) = *v22;
            *(v24 - 8) = v27;
            *v22 = v26;
            *(v22 + 16) = v25;
            v22 -= 24;
            v16 = v24 >= v22;
            v24 += 24;
          }

          while (!v16);
          v3 = *(this + 27);
          v17 = *(this + 28);
        }
      }

      ++v18;
    }

    while (v18 < ((v17 - v3) >> 3));
  }
}

__n128 ClipperLib::ReversePath(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - 24;
  if (*a1 != v2 && v3 > v1)
  {
    v5 = v1 + 24;
    do
    {
      v6 = *(v5 - 8);
      result = *(v5 - 24);
      v8 = *(v3 + 16);
      *(v5 - 24) = *v3;
      *(v5 - 8) = v8;
      *v3 = result;
      *(v3 + 16) = v6;
      v3 -= 24;
      v9 = v5 >= v3;
      v5 += 24;
    }

    while (!v9);
  }

  return result;
}

void ClipperLib::ClipperOffset::Execute(uint64_t *a1, uint64_t *a2, double a3)
{
  v33 = *MEMORY[0x1E69E9840];
  std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a2);
  ClipperLib::ClipperOffset::FixOrientations(a1);
  ClipperLib::ClipperOffset::DoOffset(a1, a3);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v20 = 0u;
  v21 = 0u;
  v8 = &off_1F4769838;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v12 = 0u;
  v13 = 0;
  v14[0] = v14;
  v14[1] = v14;
  v14[2] = 0;
  v15 = 0;
  v22 = 0;
  v16 = 0;
  v17 = 0;
  v26 = 0;
  v18 = 0;
  v19 = &unk_1F4769880;
  ClipperLib::ClipperBase::AddPaths(&v19, a1 + 2, 0, 1);
  if (a3 <= 0.0)
  {
    memset(v7, 0, sizeof(v7));
    ClipperLib::ClipperBase::GetBounds((&v9[-1] + *(v8 - 3)), v7);
    std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](&__p);
  }

  ClipperLib::Clipper::Execute(&v8, 1, a2, 2, 2);
  v8 = &off_1F4769838;
  v19 = &unk_1F4769880;
  std::__list_imp<long long>::clear(v14);
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v19);
}

uint64_t ClipperLib::ClipperOffset::DoOffset(ClipperLib::ClipperOffset *this, double a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](this + 2);
  *(this + 14) = a2;
  v3 = fabs(a2);
  if (v3 < 1.0e-20)
  {
    result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(this + 2, ((*(this + 28) - *(this + 27)) >> 3));
    v6 = *(this + 27);
    v5 = *(this + 28);
    if (((v5 - v6) >> 3) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + 8 * v7);
        if (!*(v8 + 76))
        {
          result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, (v8 + 8));
          v6 = *(this + 27);
          v5 = *(this + 28);
        }

        ++v7;
      }

      while (v7 < ((v5 - v6) >> 3));
    }

    return result;
  }

  v9 = 0.5;
  if (*this > 2.0)
  {
    v9 = 2.0 / (*this * *this);
  }

  *(this + 18) = v9;
  v10 = *(this + 1);
  v11 = v3 * 0.25;
  if (v10 <= v3 * 0.25)
  {
    v11 = *(this + 1);
  }

  if (v10 <= 0.0)
  {
    v12 = 0.25;
  }

  else
  {
    v12 = v11;
  }

  v13 = 3.14159265 / acos(1.0 - v12 / v3);
  if (v13 <= v3 * 3.14159265)
  {
    v14 = v13;
  }

  else
  {
    v14 = v3 * 3.14159265;
  }

  v15 = __sincos_stret(6.28318531 / v14);
  *(this + 8) = v15;
  *(this + 19) = v14 / 6.28318531;
  if (a2 < 0.0)
  {
    *(this + 16) = -v15.__sinval;
  }

  result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(this + 2, ((*(this + 28) - *(this + 27)) >> 2) & 0xFFFFFFFFFFFFFFFELL);
  v17 = *(this + 27);
  if (((*(this + 28) - v17) >> 3) >= 1)
  {
    v18 = 0;
    v19 = (this + 40);
    __asm
    {
      FMOV            V12.2S, #-1.0
      FMOV            V0.2D, #0.5
    }

    v85 = _Q0;
    v86 = vdupq_lane_s64(*&a2, 0);
    __asm { FMOV            V0.2D, #-0.5 }

    v84 = _Q0;
    while (1)
    {
      v27 = *(v17 + 8 * v18);
      if (v19 != (v27 + 8))
      {
        result = std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 5, *(v27 + 8), *(v27 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v27 + 16) - *(v27 + 8)) >> 3));
      }

      v28 = (*(this + 6) - *(this + 5)) >> 3;
      v29 = 0xAAAAAAAAAAAAAAABLL * v28;
      if (!(-1431655765 * v28))
      {
        goto LABEL_103;
      }

      if (a2 <= 0.0)
      {
        break;
      }

      *(this + 9) = *(this + 8);
      if (v29 != 1)
      {
        goto LABEL_41;
      }

      if (*(v27 + 72) == 1)
      {
        v30 = a2;
        if (v14 >= 1.0)
        {
          v31 = 0.0;
          v32 = 1.0;
          v33 = 2;
          do
          {
            v34 = *(this + 5);
            v35 = v34[1];
            v36 = *v34 + v32 * v30;
            if (v36 >= 0.0)
            {
              v37 = 0.5;
            }

            else
            {
              v37 = -0.5;
            }

            v38 = (v36 + v37);
            v39 = v35 + v31 * v30;
            if (v39 >= 0.0)
            {
              v40 = 0.5;
            }

            else
            {
              v40 = -0.5;
            }

            v89.i64[0] = v38;
            v89.i64[1] = (v39 + v40);
            v90 = _D12;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
            v42 = *(this + 16);
            v41 = *(this + 17);
            v43 = -(v42 * v31);
            v31 = v31 * v41 + v32 * v42;
            v30 = a2;
            v32 = v43 + v32 * v41;
            v44 = v33++;
          }

          while (v14 >= v44);
        }
      }

      else
      {
        v53 = -1.0;
        v54 = 4;
        v55 = -1.0;
        do
        {
          v56 = **v19 + v53 * a2;
          if (v56 >= 0.0)
          {
            v57 = 0.5;
          }

          else
          {
            v57 = -0.5;
          }

          v58 = (v56 + v57);
          v59 = *(*v19 + 1) + v55 * a2;
          if (v59 >= 0.0)
          {
            v60 = 0.5;
          }

          else
          {
            v60 = -0.5;
          }

          v89.i64[0] = v58;
          v89.i64[1] = (v59 + v60);
          v90 = _D12;
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
          if (v55 >= 0.0)
          {
            v61 = v55;
          }

          else
          {
            v61 = 1.0;
          }

          if (v55 >= 0.0)
          {
            v62 = -1.0;
          }

          else
          {
            v62 = v53;
          }

          if (v53 < 0.0)
          {
            v53 = 1.0;
          }

          else
          {
            v55 = v61;
            v53 = v62;
          }

          --v54;
        }

        while (v54);
      }

LABEL_102:
      result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, this + 8);
LABEL_103:
      ++v18;
      v17 = *(this + 27);
      if (v18 >= ((*(this + 28) - v17) >> 3))
      {
        return result;
      }
    }

    if (v29 < 3 || *(v27 + 76))
    {
      goto LABEL_103;
    }

    *(this + 9) = *(this + 8);
LABEL_41:
    v45 = *(this + 11);
    *(this + 12) = v45;
    if (v29 > ((*(this + 13) - v45) >> 4))
    {
      if (!(v29 >> 60))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v29);
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v46 = (v29 - 1);
    if (v29 >= 2)
    {
      v47 = 24;
      v48 = (v29 - 1);
      do
      {
        v89.i64[0] = ClipperLib::GetUnitNormal((*v19 + v47 - 24), (*v19 + v47), v16);
        v89.i64[1] = v49;
        std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](this + 88, &v89);
        v47 += 24;
        --v48;
      }

      while (v48);
    }

    if (*(v27 + 76) >= 2u)
    {
      v89 = *(*(this + 11) + (((v29 << 32) - 0x200000000) >> 28));
    }

    else
    {
      v89.i64[0] = ClipperLib::GetUnitNormal((*v19 + 24 * v46), *v19, v16);
      v89.i64[1] = v50;
    }

    std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](this + 88, &v89);
    v51 = *(v27 + 76);
    if (v51 == 1)
    {
      v89.i32[0] = v29 - 1;
      if (v29 >= 1)
      {
        v63 = 0;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v63++, v89.i32, *(v27 + 72));
        }

        while (v29 != v63);
      }

      std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, this + 8);
      *(this + 9) = *(this + 8);
      v64 = *(this + 11);
      v65 = v64[v46];
      if (v29 > 1)
      {
        v66 = v46 + 1;
        v67 = &v64[v46];
        v68 = v67;
        do
        {
          v69 = v68[-1];
          --v68;
          *v67 = vnegq_f64(v69);
          --v66;
          v67 = v68;
        }

        while (v66 > 1);
      }

      *v64 = vnegq_f64(v65);
      v89.i32[0] = 0;
      if (v29 >= 1)
      {
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v46, v89.i32, *(v27 + 72));
          LODWORD(v46) = v46 - 1;
        }

        while (v46 != -1);
      }
    }

    else if (v51)
    {
      v88 = 0;
      if (v29 >= 3)
      {
        v70 = 1;
        v71 = v29 - 2;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v70++, &v88, *(v27 + 72));
          --v71;
        }

        while (v71);
        v51 = *(v27 + 76);
      }

      v89 = 0uLL;
      LODWORD(v90) = -1082130432;
      if (v51 == 2)
      {
        v72 = vmlaq_f64(vcvtq_f64_s64(*(*v19 + 24 * v46)), v86, *(*(this + 11) + 16 * v46));
        v89 = vcvtq_s64_f64(vaddq_f64(v72, vbslq_s8(vcltzq_f64(v72), v84, v85)));
        HIDWORD(v90) = -1082130432;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
        v73 = vmlsq_f64(vcvtq_f64_s64(*(*v19 + 24 * v46)), v86, *(*(this + 11) + 16 * v46));
        v89 = vcvtq_s64_f64(vaddq_f64(v73, vbslq_s8(vcltzq_f64(v73), v84, v85)));
        v90 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
      }

      else
      {
        v88 = v29 - 2;
        *(this + 15) = 0;
        *(*(this + 11) + 16 * v46) = vnegq_f64(*(*(this + 11) + 16 * v46));
        v74 = v29 - 1;
        v75 = v29 - 2;
        if (v51 == 3)
        {
          ClipperLib::ClipperOffset::DoSquare(this, v74, v75);
        }

        else
        {
          ClipperLib::ClipperOffset::DoRound(this, v74, v75);
        }
      }

      v76 = *(this + 11);
      if (v29 >= 2)
      {
        v77 = v46 + 1;
        v78 = &v76[v46];
        v79 = v78;
        do
        {
          v80 = v79[-1];
          --v79;
          *v78 = vnegq_f64(v80);
          --v77;
          v78 = v79;
        }

        while (v77 > 1);
      }

      *v76 = vnegq_f64(v76[1]);
      v88 = v29 - 1;
      if (v29 > 2)
      {
        do
        {
          LODWORD(v46) = v46 - 1;
          ClipperLib::ClipperOffset::OffsetPoint(this, v46, &v88, *(v27 + 72));
        }

        while (v46 > 1);
      }

      v81 = *(v27 + 76);
      if (v81 == 2)
      {
        v82 = vmlsq_f64(vcvtq_f64_s64(**v19), v86, **(this + 11));
        v89 = vcvtq_s64_f64(vaddq_f64(v82, vbslq_s8(vcltzq_f64(v82), v84, v85)));
        v90 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
        v83 = vmlaq_f64(vcvtq_f64_s64(**v19), v86, **(this + 11));
        v89 = vcvtq_s64_f64(vaddq_f64(v83, vbslq_s8(vcltzq_f64(v83), v84, v85)));
        v90 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v89.i8);
      }

      else
      {
        *(this + 15) = 0;
        if (v81 == 3)
        {
          ClipperLib::ClipperOffset::DoSquare(this, 0, 1);
        }

        else
        {
          ClipperLib::ClipperOffset::DoRound(this, 0, 1);
        }
      }
    }

    else
    {
      v89.i32[0] = v29 - 1;
      if (v29 >= 1)
      {
        v52 = 0;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v52++, v89.i32, *(v27 + 72));
        }

        while (v29 != v52);
      }
    }

    goto LABEL_102;
  }

  return result;
}