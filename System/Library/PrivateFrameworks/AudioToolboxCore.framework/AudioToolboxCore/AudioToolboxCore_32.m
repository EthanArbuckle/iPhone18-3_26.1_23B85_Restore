void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_6,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_6>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic sum box. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1493, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic sum box. must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1491, &v4, &v3);
}

void sub_18F8124F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticSumBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        operator new();
                      }

                      operator new();
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v53, "in");
                  v29 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v29 = *v29;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, v29, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "in");
                v27 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v27 = *v27;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, v27, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
              v37 = *(a1 + 64);
              if (*(a1 + 72) != v37)
              {
                v38 = (*(*v37 + 40))(v37);
                v39 = *(a1 + 88);
                if (*(a1 + 96) != v39)
                {
                  v40 = *(*(v38 + 120) + 28);
                  v41 = (*(*v39 + 40))(v39);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v42, v40, *(*(v41 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "out");
                v50 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v50 = *v50;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, v50, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v53, "in");
              v48 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v48 = *v48;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v53, "out");
            v25 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v25 = *v25;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v23 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v23 = *v23;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
        v31 = *(a1 + 64);
        if (*(a1 + 72) != v31)
        {
          v32 = (*(*v31 + 40))(v31);
          v33 = *(a1 + 64);
          if ((*(a1 + 72) - v33) > 0x20)
          {
            v34 = *(*(v32 + 120) + 28);
            v35 = (*(*(v33 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v36, v34, *(*(v35 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v46 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v46 = *v46;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v53, "in");
        v44 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v44 = *v44;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v53, "in");
      v21 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v21 = *v21;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v20, v21, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v53, "in");
    v19 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, v19, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v53, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v30, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F812EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticSumBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvadd(&__A, 1, &__B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticSumBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::real_type>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, __B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticSumBox,DSPGraph::arithmetic_boxes::real_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvadd(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticSumBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v55 = *(a1 + 64);
    if (*(a1 + 72) != v55)
    {
      v56 = (*(*v55 + 40))(v55);
      v57 = *(a1 + 64);
      if ((*(a1 + 72) - v57) > 0x20)
      {
        v58 = *(*(v56 + 120) + 28);
        v59 = (*(*(v57 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v60, v58, *(*(v59 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "in");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v75, v76, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v61 = *(a1 + 64);
    if (*(a1 + 72) != v61)
    {
      v62 = (*(*v61 + 40))(v61);
      v63 = *(a1 + 88);
      if (*(a1 + 96) != v63)
      {
        v64 = *(*(v62 + 120) + 28);
        v65 = (*(*v63 + 40))(v63);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v66, v64, *(*(v65 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "out");
      v78 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v78 = *v78;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v74 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v67 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v68, (v67 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v69 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v70, (v69 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v47, v48, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  v35 = (*(*(v33 + 32) + 40))();
  v36 = *(a1 + 88);
  if (*(a1 + 96) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v54 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v53, v54, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v37 = (*(*(v35 + 56) + 72) | 0xFFFFFFEF) & v34;
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  return result;
}

void sub_18F813D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticSumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.73571922e161;
  *a1 = xmmword_18F901A30;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticSumBox::~ArithmeticSumBox(DSPGraph::ArithmeticSumBox *this)
{
  *this = &unk_1F03338D8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03338D8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_5,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_5>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic difference box. Must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1484, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic difference box. Must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1482, &v4, &v3);
}

void sub_18F81418C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticDiffBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        operator new();
                      }

                      operator new();
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v53, "in");
                  v29 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v29 = *v29;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, v29, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "in");
                v27 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v27 = *v27;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, v27, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
              v37 = *(a1 + 64);
              if (*(a1 + 72) != v37)
              {
                v38 = (*(*v37 + 40))(v37);
                v39 = *(a1 + 88);
                if (*(a1 + 96) != v39)
                {
                  v40 = *(*(v38 + 120) + 28);
                  v41 = (*(*v39 + 40))(v39);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v42, v40, *(*(v41 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "out");
                v50 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v50 = *v50;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, v50, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v53, "in");
              v48 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v48 = *v48;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v53, "out");
            v25 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v25 = *v25;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v23 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v23 = *v23;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
        v31 = *(a1 + 64);
        if (*(a1 + 72) != v31)
        {
          v32 = (*(*v31 + 40))(v31);
          v33 = *(a1 + 64);
          if ((*(a1 + 72) - v33) > 0x20)
          {
            v34 = *(*(v32 + 120) + 28);
            v35 = (*(*(v33 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v36, v34, *(*(v35 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v46 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v46 = *v46;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v53, "in");
        v44 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v44 = *v44;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v53, "in");
      v21 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v21 = *v21;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v20, v21, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v53, "in");
    v19 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, v19, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v53, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v30, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F814B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDiffBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvsub(&__A, 1, &__B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDiffBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::real_type>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, __B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDiffBox,DSPGraph::arithmetic_boxes::real_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  v5 = __N;
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v6.realp = a5;
  v6.imagp = &a5[__N];
  vDSP_zrvsub(&__A, 1, a3, 1, &v6, 1, __N);
  vDSP_zvneg(&v6, 1, &v6, 1, v5);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticDiffBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v55 = *(a1 + 64);
    if (*(a1 + 72) != v55)
    {
      v56 = (*(*v55 + 40))(v55);
      v57 = *(a1 + 64);
      if ((*(a1 + 72) - v57) > 0x20)
      {
        v58 = *(*(v56 + 120) + 28);
        v59 = (*(*(v57 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v60, v58, *(*(v59 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "in");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v75, v76, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v61 = *(a1 + 64);
    if (*(a1 + 72) != v61)
    {
      v62 = (*(*v61 + 40))(v61);
      v63 = *(a1 + 88);
      if (*(a1 + 96) != v63)
      {
        v64 = *(*(v62 + 120) + 28);
        v65 = (*(*v63 + 40))(v63);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v66, v64, *(*(v65 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "out");
      v78 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v78 = *v78;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v74 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v67 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v68, (v67 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v69 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v70, (v69 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v47, v48, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  v35 = (*(*(v33 + 32) + 40))();
  v36 = *(a1 + 88);
  if (*(a1 + 96) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v54 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v53, v54, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v37 = (*(*(v35 + 56) + 72) | 0xFFFFFFEF) & v34;
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  return result;
}

void sub_18F815A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticDiffBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43485253e161;
  *a1 = xmmword_18F901A20;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticDiffBox::~ArithmeticDiffBox(DSPGraph::ArithmeticDiffBox *this)
{
  *this = &unk_1F0333270;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0333270;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_4,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_4>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic max box. Must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1474, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic max box. Must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1472, &v4, &v3);
}

void sub_18F815E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMaxBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                        std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                        v46 = (*(*a1 + 16))(a1);
                        DSPGraph::strprintf("Can't use real input for one bus and complex input for another with '%s' box", v47, v46);
                      }

                      if (v14 == 1819304813 || v15 != 1819304813)
                      {
                        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                        std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                        v44 = (*(*a1 + 16))(a1);
                        DSPGraph::strprintf("Can't use complex inputs with '%s' box", v45, v44);
                      }

                      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                      std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                      v48 = (*(*a1 + 16))(a1);
                      DSPGraph::strprintf("Can't use complex input for one bus and real input for another with '%s' box", v49, v48);
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v60, "in");
                  v28 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v28 = *v28;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v60, "in");
                v26 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v26 = *v26;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, v26, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
              v36 = *(a1 + 64);
              if (*(a1 + 72) != v36)
              {
                v37 = (*(*v36 + 40))(v36);
                v38 = *(a1 + 88);
                if (*(a1 + 96) != v38)
                {
                  v39 = *(*(v37 + 120) + 28);
                  v40 = (*(*v38 + 40))(v38);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v41, v39, *(*(v40 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v60, "out");
                v57 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v57 = *v57;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v60, "in");
              v55 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v55 = *v55;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v60, "out");
            v24 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v24 = *v24;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, v24, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v60, "in");
          v22 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v22 = *v22;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v21, v22, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
        v30 = *(a1 + 64);
        if (*(a1 + 72) != v30)
        {
          v31 = (*(*v30 + 40))(v30);
          v32 = *(a1 + 64);
          if ((*(a1 + 72) - v32) > 0x20)
          {
            v33 = *(*(v31 + 120) + 28);
            v34 = (*(*(v32 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v35, v33, *(*(v34 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v60, "in");
          v53 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v53 = *v53;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v52, v53, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v60, "in");
        v51 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v51 = *v51;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v50, v51, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "in");
      v20 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v60, "in");
    v18 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v18 = *v18;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v17, v18, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v29, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F81692C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMaxBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v55 = *(a1 + 64);
    if (*(a1 + 72) != v55)
    {
      v56 = (*(*v55 + 40))(v55);
      v57 = *(a1 + 64);
      if ((*(a1 + 72) - v57) > 0x20)
      {
        v58 = *(*(v56 + 120) + 28);
        v59 = (*(*(v57 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v60, v58, *(*(v59 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "in");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v75, v76, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v61 = *(a1 + 64);
    if (*(a1 + 72) != v61)
    {
      v62 = (*(*v61 + 40))(v61);
      v63 = *(a1 + 88);
      if (*(a1 + 96) != v63)
      {
        v64 = *(*(v62 + 120) + 28);
        v65 = (*(*v63 + 40))(v63);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v66, v64, *(*(v65 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "out");
      v78 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v78 = *v78;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v74 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v67 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v68, (v67 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v69 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v70, (v69 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v47, v48, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  v35 = (*(*(v33 + 32) + 40))();
  v36 = *(a1 + 88);
  if (*(a1 + 96) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v54 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v53, v54, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v37 = (*(*(v35 + 56) + 72) | 0xFFFFFFEF) & v34;
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  return result;
}

void sub_18F81763C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticMaxBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06533485e161;
  *a1 = xmmword_18F901A10;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticMaxBox::~ArithmeticMaxBox(DSPGraph::ArithmeticMaxBox *this)
{
  *this = &unk_1F0332CC8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0332CC8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_3,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_3>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic min box. Must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1465, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic min box. Must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1463, &v4, &v3);
}

void sub_18F817A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMinBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                        std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                        v46 = (*(*a1 + 16))(a1);
                        DSPGraph::strprintf("Can't use real input for one bus and complex input for another with '%s' box", v47, v46);
                      }

                      if (v14 == 1819304813 || v15 != 1819304813)
                      {
                        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                        std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                        v44 = (*(*a1 + 16))(a1);
                        DSPGraph::strprintf("Can't use complex inputs with '%s' box", v45, v44);
                      }

                      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                      std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
                      v48 = (*(*a1 + 16))(a1);
                      DSPGraph::strprintf("Can't use complex input for one bus and real input for another with '%s' box", v49, v48);
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v60, "in");
                  v28 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v28 = *v28;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v60, "in");
                v26 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v26 = *v26;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, v26, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
              v36 = *(a1 + 64);
              if (*(a1 + 72) != v36)
              {
                v37 = (*(*v36 + 40))(v36);
                v38 = *(a1 + 88);
                if (*(a1 + 96) != v38)
                {
                  v39 = *(*(v37 + 120) + 28);
                  v40 = (*(*v38 + 40))(v38);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v41, v39, *(*(v40 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v60, "out");
                v57 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v57 = *v57;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v60, "in");
              v55 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v55 = *v55;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v60, "out");
            v24 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v24 = *v24;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, v24, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v60, "in");
          v22 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v22 = *v22;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v21, v22, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
        v30 = *(a1 + 64);
        if (*(a1 + 72) != v30)
        {
          v31 = (*(*v30 + 40))(v30);
          v32 = *(a1 + 64);
          if ((*(a1 + 72) - v32) > 0x20)
          {
            v33 = *(*(v31 + 120) + 28);
            v34 = (*(*(v32 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v35, v33, *(*(v34 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v60, "in");
          v53 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v53 = *v53;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v52, v53, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v60, "in");
        v51 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v51 = *v51;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v50, v51, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "in");
      v20 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v60, "in");
    v18 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v18 = *v18;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v17, v18, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v60, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v29, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F81855C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMinBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v55 = *(a1 + 64);
    if (*(a1 + 72) != v55)
    {
      v56 = (*(*v55 + 40))(v55);
      v57 = *(a1 + 64);
      if ((*(a1 + 72) - v57) > 0x20)
      {
        v58 = *(*(v56 + 120) + 28);
        v59 = (*(*(v57 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v60, v58, *(*(v59 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "in");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v75, v76, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v61 = *(a1 + 64);
    if (*(a1 + 72) != v61)
    {
      v62 = (*(*v61 + 40))(v61);
      v63 = *(a1 + 88);
      if (*(a1 + 96) != v63)
      {
        v64 = *(*(v62 + 120) + 28);
        v65 = (*(*v63 + 40))(v63);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v66, v64, *(*(v65 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "out");
      v78 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v78 = *v78;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v74 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v67 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v68, (v67 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v69 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v70, (v69 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v47, v48, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  v35 = (*(*(v33 + 32) + 40))();
  v36 = *(a1 + 88);
  if (*(a1 + 96) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v54 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v53, v54, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v37 = (*(*(v35 + 56) + 72) | 0xFFFFFFEF) & v34;
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  return result;
}

void sub_18F81926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticMinBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06752086e161;
  *a1 = xmmword_18F901A00;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticMinBox::~ArithmeticMinBox(DSPGraph::ArithmeticMinBox *this)
{
  *this = &unk_1F0332720;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0332720;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_2,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_2>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic divide box. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1456, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic divide box. must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1454, &v4, &v3);
}

void sub_18F8196A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticDivBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        operator new();
                      }

                      operator new();
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v53, "in");
                  v29 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v29 = *v29;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, v29, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "in");
                v27 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v27 = *v27;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, v27, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
              v37 = *(a1 + 64);
              if (*(a1 + 72) != v37)
              {
                v38 = (*(*v37 + 40))(v37);
                v39 = *(a1 + 88);
                if (*(a1 + 96) != v39)
                {
                  v40 = *(*(v38 + 120) + 28);
                  v41 = (*(*v39 + 40))(v39);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v42, v40, *(*(v41 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "out");
                v50 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v50 = *v50;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, v50, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v53, "in");
              v48 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v48 = *v48;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v53, "out");
            v25 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v25 = *v25;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v23 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v23 = *v23;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
        v31 = *(a1 + 64);
        if (*(a1 + 72) != v31)
        {
          v32 = (*(*v31 + 40))(v31);
          v33 = *(a1 + 64);
          if ((*(a1 + 72) - v33) > 0x20)
          {
            v34 = *(*(v32 + 120) + 28);
            v35 = (*(*(v33 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v36, v34, *(*(v35 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v46 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v46 = *v46;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v53, "in");
        v44 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v44 = *v44;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v53, "in");
      v21 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v21 = *v21;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v20, v21, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v53, "in");
    v19 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, v19, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v53, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v30, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F81A0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDivBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvdiv(&__B, 1, &__A, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDivBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::real_type>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvdiv(&__A, 1, __B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticDivBox,DSPGraph::arithmetic_boxes::real_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  v6.realp = a4;
  v6.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  DSPGraph::ArithmeticDivBox::f(a3, &v6, &v5, __N);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticDivBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v38 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v38 = *v38;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v37, v38, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "out");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v41, v42, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v78, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v77, "process");
    v53 = *(a1 + 64);
    if (*(a1 + 72) != v53)
    {
      v54 = (*(*v53 + 40))(v53);
      v55 = *(a1 + 64);
      if ((*(a1 + 72) - v55) > 0x20)
      {
        v56 = *(*(v54 + 120) + 28);
        v57 = (*(*(v55 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v58, v56, *(*(v57 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v79, "in");
      v74 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v74 = *v74;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v70 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v70 = *v70;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v69, v70, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v78, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v77, "process");
    v59 = *(a1 + 64);
    if (*(a1 + 72) != v59)
    {
      v60 = (*(*v59 + 40))(v59);
      v61 = *(a1 + 88);
      if (*(a1 + 96) != v61)
      {
        v62 = *(*(v60 + 120) + 28);
        v63 = (*(*v61 + 40))(v61);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v64, v62, *(*(v63 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v79, "out");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v75, v76, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v65 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v66, (v65 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v67 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v68, (v67 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "out");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v45, v46, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  (*(*(v33 + 32) + 40))();
  v35 = *(a1 + 88);
  if (*(a1 + 96) == v35)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "out");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v51, v52, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  result = (*(*v35 + 40))(v35);
  *(*(result + 56) + 72) = v34;
  return result;
}

void sub_18F81AEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticDivBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43486969e161;
  *a1 = xmmword_18F9019F0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticDivBox::~ArithmeticDivBox(DSPGraph::ArithmeticDivBox *this)
{
  *this = &unk_1F03320B8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03320B8;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_1,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_1>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for arithmetic multiply box. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1447, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for arithmetic multiply box. must be 2.");
  DSPGraph::ThrowException(1701602593, &v5, 1445, &v4, &v3);
}

void sub_18F81B320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMultBox>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x40 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 != v2)
    {
      v4 = (*(*v2 + 40))(v2);
      v5 = *(a1 + 64);
      if ((*(a1 + 72) - v5) > 0x20)
      {
        v6 = *(*(v4 + 120) + 28);
        if (v6 == *(*((*(*(v5 + 32) + 40))() + 120) + 28))
        {
          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = (*(*v7 + 40))(v7);
            v9 = *(a1 + 88);
            if (*(a1 + 96) != v9)
            {
              v10 = *(*(v8 + 120) + 28);
              if (v10 == *(*((*(*v9 + 40))(v9) + 120) + 28))
              {
                v11 = *(a1 + 64);
                if (*(a1 + 72) != v11)
                {
                  v12 = (*(*v11 + 40))(v11);
                  v13 = *(a1 + 64);
                  if ((*(a1 + 72) - v13) > 0x20)
                  {
                    v14 = *(*(v12 + 120) + 8);
                    v15 = *(*((*(*(v13 + 32) + 40))() + 120) + 8);
                    if (v14 != 1819304813 || v15 != 1819304813)
                    {
                      if (v14 == 1819304813 && v15 != 1819304813)
                      {
                        operator new();
                      }

                      operator new();
                    }

                    operator new();
                  }

                  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                  std::string::basic_string[abi:ne200100]<0>(v53, "in");
                  v29 = (a1 + 32);
                  if (*(a1 + 55) < 0)
                  {
                    v29 = *v29;
                  }

                  DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, v29, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "in");
                v27 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v27 = *v27;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, v27, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
              v37 = *(a1 + 64);
              if (*(a1 + 72) != v37)
              {
                v38 = (*(*v37 + 40))(v37);
                v39 = *(a1 + 88);
                if (*(a1 + 96) != v39)
                {
                  v40 = *(*(v38 + 120) + 28);
                  v41 = (*(*v39 + 40))(v39);
                  DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v42, v40, *(*(v41 + 120) + 28));
                }

                std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v53, "out");
                v50 = (a1 + 32);
                if (*(a1 + 55) < 0)
                {
                  v50 = *v50;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v49, v50, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
              }

              std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v53, "in");
              v48 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v48 = *v48;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v47, v48, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
            }

            std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v53, "out");
            v25 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v25 = *v25;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v23 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v23 = *v23;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(v52, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v51, "initialize");
        v31 = *(a1 + 64);
        if (*(a1 + 72) != v31)
        {
          v32 = (*(*v31 + 40))(v31);
          v33 = *(a1 + 64);
          if ((*(a1 + 72) - v33) > 0x20)
          {
            v34 = *(*(v32 + 120) + 28);
            v35 = (*(*(v33 + 32) + 40))();
            DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v36, v34, *(*(v35 + 120) + 28));
          }

          std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(v53, "in");
          v46 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v46 = *v46;
          }

          DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
        }

        std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v53, "in");
        v44 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v44 = *v44;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      }

      std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v53, "in");
      v21 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v21 = *v21;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v20, v21, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v53, "in");
    v19 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, v19, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(v54, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(v53, "initialize");
  DSPGraph::strprintf("There must be two inputs and one output, instead of %u and %u.", v30, (*(a1 + 72) - *(a1 + 64)) >> 5, (*(a1 + 96) - *(a1 + 88)) >> 5);
}

void sub_18F81BD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticMultBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvmul(&__A, 1, &__B, 1, &v5, 1, __N, 1);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticMultBox,DSPGraph::arithmetic_boxes::cplx_type,DSPGraph::arithmetic_boxes::real_type>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, __B, 1, &v5, 1, __N);
}

void DSPGraph::arithmetic_boxes::ArithmeticCore<DSPGraph::ArithmeticMultBox,DSPGraph::arithmetic_boxes::real_type,DSPGraph::arithmetic_boxes::cplx_type>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t DSPGraph::arithmetic_boxes::ArithmeticBox<DSPGraph::ArithmeticMultBox>::process(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v40 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if ((*(a1 + 72) - v7) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*(v7 + 32) + 40))();
  v10 = *(a1 + 88);
  if (*(a1 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(v10);
  if (*v8 != *v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v55 = *(a1 + 64);
    if (*(a1 + 72) != v55)
    {
      v56 = (*(*v55 + 40))(v55);
      v57 = *(a1 + 64);
      if ((*(a1 + 72) - v57) > 0x20)
      {
        v58 = *(*(v56 + 120) + 28);
        v59 = (*(*(v57 + 32) + 40))();
        DSPGraph::strprintf("The inputs must have the same channel count, but have %u and %u.", v60, v58, *(*(v59 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "in");
      v76 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v76 = *v76;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v75, v76, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v72 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v72 = *v72;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v71, v72, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v13 = *(*(v12 + 56) + 80);
  if (*v8 != *v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v80, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v79, "process");
    v61 = *(a1 + 64);
    if (*(a1 + 72) != v61)
    {
      v62 = (*(*v61 + 40))(v61);
      v63 = *(a1 + 88);
      if (*(a1 + 96) != v63)
      {
        v64 = *(*(v62 + 120) + 28);
        v65 = (*(*v63 + 40))(v63);
        DSPGraph::strprintf("The inputs and output must have the same channel count, but have %u and %u.", v66, v64, *(*(v65 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v81, "out");
      v78 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v78 = *v78;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v77, v78, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v74 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v74 = *v74;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v73, v74, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v14 = v8[3];
  if (v14 < (*(**(a1 + 776) + 24))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v67 = (*(**(a1 + 776) + 24))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v68, (v67 * a2), v8[3]);
  }

  v15 = v11[3];
  if (v15 < (*(**(a1 + 776) + 32))(*(a1 + 776)) * a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "process");
    v69 = (*(**(a1 + 776) + 32))(*(a1 + 776));
    DSPGraph::strprintf("The buffer passed for input 1 should be at least %u bytes, but is %u.", v70, (v69 * a2), v11[3]);
  }

  v16 = *v8;
  if (v16)
  {
    v17 = v13 + 4;
    v18 = (v11 + 4);
    v19 = (v8 + 4);
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      v22 = *v18;
      v18 += 2;
      (*(**(a1 + 776) + 16))(*(a1 + 776), a2, v20, v22, *v17);
      *(v17 - 1) = (*(**(a1 + 776) + 40))(*(a1 + 776)) * a2;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

  v23 = *(a1 + 64);
  if (*(a1 + 72) == v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v46 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v46 = *v46;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v45, v46, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v24 = (*(*v23 + 40))(v23);
  v25 = *(a1 + 88);
  if (*(a1 + 96) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v48 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v48 = *v48;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v47, v48, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v26 = *(v24 + 56);
  v27 = *((*(*v25 + 40))(v25) + 56);
  v28 = *(v26 + 8);
  v29 = *(v26 + 24);
  v30 = *(v26 + 40);
  *(v27 + 56) = *(v26 + 56);
  *(v27 + 40) = v30;
  *(v27 + 24) = v29;
  *(v27 + 8) = v28;
  v31 = *(a1 + 64);
  if (*(a1 + 72) == v31)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v50 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v50 = *v50;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v49, v50, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v32 = (*(*v31 + 40))(v31);
  v33 = *(a1 + 64);
  if ((*(a1 + 72) - v33) <= 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "in");
    v52 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v52 = *v52;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v51, v52, (*(a1 + 72) - *(a1 + 64)) >> 5, 1);
  }

  v34 = *(*(v32 + 56) + 72);
  v35 = (*(*(v33 + 32) + 40))();
  v36 = *(a1 + 88);
  if (*(a1 + 96) == v36)
  {
    std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v81, "out");
    v54 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v54 = *v54;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v53, v54, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v37 = *(*(v35 + 56) + 72) & 0x10 | v34;
  result = (*(*v36 + 40))(v36);
  *(*(result + 56) + 72) = v37;
  return result;
}

void sub_18F81CB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticMultBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.07081382e161;
  *a1 = xmmword_18F9019E0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticMultBox::~ArithmeticMultBox(DSPGraph::ArithmeticMultBox *this)
{
  *this = &unk_1F0331A50;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0331A50;
  v2 = *(this + 97);
  *(this + 97) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DSPGraph::Box::~Box(this);
}

void std::__function::__func<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_0,std::allocator<DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_0>,DSPGraph::Box * ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
    std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of outputs for GainBox. must be 1.");
    DSPGraph::ThrowException(1701602593, &v5, 1438, &v4, &v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v4, "operator()");
  std::string::basic_string[abi:ne200100]<0>(&v3, "wrong number of inputs for GainBox. must be 1.");
  DSPGraph::ThrowException(1701602593, &v5, 1436, &v4, &v3);
}

void sub_18F81CFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUProcessingBlock_DSPGraph::AUSetParameter(AUProcessingBlock_DSPGraph *this, OpaqueRemoteAudioUnit *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = 1633906209;
  v7 = *(this + 6);
  if (v7)
  {
    if (v7[96] == a2)
    {
      (*(*v7 + 5))(*(this + 6), a3, a6);
      return 0;
    }

    v13 = DSPGraph::Graph::box(*(this + 6), a2);
    if (v13)
    {
      (*(*v13 + 80))(v13, a3, a4, a5, 0, a6);
      return 0;
    }

    v14 = DSPGraph::Graph::analyzer(v7, a2);
    if (v14)
    {
      (*(*v14 + 88))(v14, a3, a4, a5, 0, a6);
      return 0;
    }
  }

  return v6;
}

void sub_18F81D1E4(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(__cxa_begin_catch(a1) + 2);
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = *v4;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18F81D1C8);
}

uint64_t AUProcessingBlock_DSPGraph::AUGetParameter(AUProcessingBlock_DSPGraph *this, OpaqueRemoteAudioUnit *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v6 = 1633906209;
  v7 = *(this + 6);
  if (v7)
  {
    if (v7[96] == a2)
    {
      (*(*v7 + 6))(*(this + 6), a3);
LABEL_8:
      v6 = 0;
      *a6 = v11;
      return v6;
    }

    v14 = DSPGraph::Graph::box(*(this + 6), a2);
    if (v14)
    {
      (*(*v14 + 88))(v14, a3, a4, a5);
      goto LABEL_8;
    }

    v15 = DSPGraph::Graph::analyzer(v7, a2);
    if (v15)
    {
      v11 = (*(*v15 + 72))(v15, a3, a4, a5);
      goto LABEL_8;
    }
  }

  return v6;
}

void sub_18F81D34C(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(__cxa_begin_catch(a1) + 2);
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = *v4;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18F81D330);
}

uint64_t AUProcessingBlock_DSPGraph::AUSetProperty(AUProcessingBlock_DSPGraph *this, OpaqueRemoteAudioUnit *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v7 = 1633906209;
  v8 = *(this + 6);
  if (v8)
  {
    if (v8[96] == a2)
    {
      (*(*v8 + 7))(*(this + 6), a3, a7, a6);
      return 0;
    }

    v15 = DSPGraph::Graph::box(*(this + 6), a2);
    if (v15)
    {
      (*(*v15 + 312))(v15, a3, a4, a5, a7, a6);
      return 0;
    }

    v17 = DSPGraph::Graph::analyzer(v8, a2);
    if (v17)
    {
      return (*(*v17 + 112))(v17, a3, a4, a5, a7, a6);
    }
  }

  return v7;
}

void sub_18F81D4D8(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(__cxa_begin_catch(a1) + 2);
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = *v4;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18F81D46CLL);
}

uint64_t AUProcessingBlock_DSPGraph::AUGetProperty(AUProcessingBlock_DSPGraph *this, OpaqueRemoteAudioUnit *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int *a7)
{
  v7 = 4294967246;
  if (a6)
  {
    if (a7)
    {
      v7 = 1633906209;
      v9 = *(this + 6);
      if (v9)
      {
        v18 = *a7;
        if (v9[96] == a2)
        {
          (*(*v9 + 9))(v9, a3, &v18, a6);
LABEL_8:
          v7 = 0;
          *a7 = v18;
          return v7;
        }

        v15 = DSPGraph::Graph::box(v9, a2);
        if (v15)
        {
          (*(*v15 + 304))(v15, a3, a4, a5, &v18, a6);
          goto LABEL_8;
        }

        v17 = DSPGraph::Graph::analyzer(v9, a2);
        if (v17)
        {
          v7 = (*(*v17 + 96))(v17, a3, a4, a5, &v18, a6);
          if (!v7)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  return v7;
}

void sub_18F81D68C(void *a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(__cxa_begin_catch(a1) + 2);
  }

  else
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = *v4;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18F81D618);
}

uint64_t AUProcessingBlock_DSPGraph::AUGetPropertyInfo(AUProcessingBlock_DSPGraph *this, OpaqueRemoteAudioUnit *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned __int8 *a7)
{
  v7 = 4294967246;
  if (a6)
  {
    if (a7)
    {
      v7 = 1633906209;
      v9 = *(this + 6);
      if (v9)
      {
        v13 = *a6;
        v14 = *a7 != 0;
        if (*(v9 + 768) == a2)
        {
          v15 = (*(*v9 + 64))(*(this + 6), a3);
        }

        else
        {
          v19 = DSPGraph::Graph::box(*(this + 6), a2);
          if (v19)
          {
            v15 = (*(*v19 + 296))(v19, a3, a4, a5);
          }

          else
          {
            v20 = DSPGraph::Graph::analyzer(v9, a2);
            if (!v20)
            {
LABEL_13:
              *a6 = v13;
              *a7 = v14;
              return v7;
            }

            v15 = (*(*v20 + 104))(v20, a3, a4, a5);
          }
        }

        if (v16)
        {
          v14 = BYTE4(v15) & 1;
          v13 = v15;
          v7 = 0;
        }

        else
        {
          v7 = v15;
        }

        goto LABEL_13;
      }
    }
  }

  return v7;
}

OpaqueAudioComponent *AUProcessingBlock_DSPGraph::GetAvailableAUs(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  inDesc.componentFlagsMask = 0;
  *&inDesc.componentType = *"xfua";
  while (1)
  {
    result = AudioComponentFindNext(v3, &inDesc);
    if (!result)
    {
      break;
    }

    v3 = result;
    Impl_AudioGetComponentInfo(result, &v18, 0);
    componentSubType = v18.componentSubType;
    componentManufacturer = v18.componentManufacturer;
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2) + 1;
      if (v12 > 0x1555555555555555)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 2);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0x1555555555555555;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<AudioClassDescription>::allocate_at_least[abi:ne200100](v14);
      }

      v15 = (4 * (v11 >> 2));
      *v15 = v18.componentType;
      v15[1] = componentSubType;
      v15[2] = componentManufacturer;
      v9 = v15 + 3;
      v16 = v15 - v11;
      memcpy(v15 - v11, v10, v11);
      v17 = *a2;
      *a2 = v16;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v18.componentType;
      v8[1] = componentSubType;
      v9 = v8 + 3;
      v8[2] = componentManufacturer;
    }

    *(a2 + 8) = v9;
  }

  return result;
}

uint64_t AUProcessingBlock_DSPGraph::SetProperty(AUProcessingBlock_DSPGraph *this, int a2, CFTypeRef cf)
{
  cfa[3] = *MEMORY[0x1E69E9840];
  v3 = 1886806380;
  if (a2 == 1635087726)
  {
LABEL_26:
    v17 = *MEMORY[0x1E69E9840];
    return v3;
  }

  if (a2 == 1886545456)
  {
    std::mutex::lock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFDictionaryGetTypeID())
      {
        CFRetain(cf);
        v20 = cf;
        v7 = CFGetTypeID(cf);
        if (v7 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v8 = CFStringCreateWithBytes(0, "ProfilerEnabledKey", 18, 0x8000100u, 0);
        cfa[0] = v8;
        if (!v8)
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v19, "Could not construct");
        }

        Value = CFDictionaryGetValue(v20, v8);
        CFRelease(cfa[0]);
        if (Value)
        {
          v10 = applesauce::CF::convert_as<BOOL,0>(Value);
          if (v10 >= 0x100u)
          {
            v11 = *(this + 8);
            if (!v11 || (v10 & 1) != 0)
            {
              v3 = 0;
              if (!v11 && (v10 & 1) != 0)
              {
                applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(cfa, &v20);
                applesauce::CF::details::find_at_key_or_optional<double,char const(&)[28]>(*cfa[0]);
                std::make_unique[abi:ne200100]<DSPGraph::Profiler,std::shared_ptr<DSPGraph::Graph> &,double const&,0>();
              }
            }

            else
            {
              std::unique_ptr<DSPGraph::Profiler>::reset[abi:ne200100](this + 8, 0);
              if (DSPGraph::getLog(void)::onceToken != -1)
              {
                dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_9205);
              }

              v12 = DSPGraph::getLog(void)::gLog;
              if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
              {
                v13 = *(this + 6);
                v14 = (v13 + 408);
                if (*(v13 + 431) < 0)
                {
                  v14 = *v14;
                }

                LODWORD(cfa[0]) = 136315138;
                *(cfa + 4) = v14;
                _os_log_debug_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "destroyed Profiler for %s", cfa, 0xCu);
              }

              v3 = 0;
            }
          }
        }

        CFRelease(v20);
      }
    }

    std::mutex::unlock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
    goto LABEL_26;
  }

  v15 = *MEMORY[0x1E69E9840];

  return AUProcessingBlockBase::SetProperty(this, a2, cf);
}

void sub_18F81DDCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::mutex::unlock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(void *this, const applesauce::CF::DictionaryRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

unint64_t applesauce::CF::details::find_at_key_or_optional<double,char const(&)[28]>(const __CFDictionary *a1)
{
  v3 = CFStringCreateWithBytes(0, "ProfilerSecondsPerWindowKey", 27, 0x8000100u, 0);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if ((a1 && (Value = CFDictionaryGetValue(a1, v3), (v3 = v6) == 0) || (CFRelease(v3), a1)) && Value)
  {
    return applesauce::CF::convert_as<double,0>(Value);
  }

  else
  {
    return 0;
  }
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v7 = Value == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v7 = v11 == 0;
          v12 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = v10 == 0;
          v12 = valuePtr;
LABEL_30:
          v8 = v12;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = v5 == 0;
          v8 = valuePtr;
LABEL_31:
          v13 = v8;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v13 = *&valuePtr;
LABEL_32:
          if (v7)
          {
            v13 = 0.0;
          }

          v14 = *&v13 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v14 = 0;
          LOBYTE(v13) = 0;
          break;
      }

      return LOBYTE(v13) | v14;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_9213()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t AUProcessingBlock_DSPGraph::CopyProperty(DSPGraph::Graph **this, int a2, CFDataRef *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 <= 1819569762)
  {
    if (a2 != 1734570101)
    {
      if (a2 == 1735554168)
      {
        DSPGraph::Graph::decompile(this[6]);
      }

      goto LABEL_14;
    }

    std::mutex::lock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
    v9 = this[8];
    if (v9)
    {
      DSPGraph::Profiler::copyStatistics(v9, &__p);
      if (__p)
      {
        v10 = 0;
        *a3 = __p;
      }

      else
      {
        v10 = 1886806380;
      }
    }

    else
    {
      v10 = 561145191;
    }

    std::mutex::unlock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
LABEL_34:
    v19 = *MEMORY[0x1E69E9840];
    return v10;
  }

  if (a2 == 1819569763)
  {
    __p = 0;
    i = 0;
    v23 = 0;
    v11 = this[6];
    v12 = v11 + 408;
    if (v11[431] < 0)
    {
      v12 = *v12;
    }

    p_p = v12;
    LatencyInSeconds = DSPGraph::Graph::getLatencyInSeconds(v11);
    v13 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,double>(&__p, &p_p, &LatencyInSeconds);
    v14 = *(this[6] + 3);
    for (i = v13; v14; v14 = *v14)
    {
      v15 = v14[2];
      v16 = (v15 + 32);
      if (*(v15 + 55) < 0)
      {
        v16 = *v16;
      }

      p_p = v16;
      LatencyInSeconds = (*(*v15 + 72))(v15) / *(*(v15 + 8) + 696);
      v17 = i;
      if (i >= v23)
      {
        v18 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,double>(&__p, &p_p, &LatencyInSeconds);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<char const*,double>(i, v16, &LatencyInSeconds);
        v18 = (v17 + 16);
      }

      i = v18;
    }

    *a3 = applesauce::CF::details::make_CFDictionaryRef(&__p);
    p_p = &__p;
    std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&p_p);
    goto LABEL_30;
  }

  if (a2 == 1886545456)
  {
    std::mutex::lock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
    v5 = this[8];
    applesauce::CF::TypeRef::TypeRef(&p_p, "ProfilerEnabledKey");
    v6 = MEMORY[0x1E695E4D0];
    if (!v5)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    cf = *v6;
    __p = &p_p;
    i = 1;
    *a3 = applesauce::CF::details::make_CFDictionaryRef(&__p);
    if (cf)
    {
      CFRelease(cf);
    }

    if (p_p)
    {
      CFRelease(p_p);
    }

    std::mutex::unlock(&getAUPBDSPGProfilerMutex(void)::gAUPBDSPGProfilerMutex);
LABEL_30:
    v10 = 0;
    goto LABEL_34;
  }

LABEL_14:
  v7 = *MEMORY[0x1E69E9840];

  return AUProcessingBlockBase::CopyProperty(this, a2, a3);
}

void sub_18F81E734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<char const*,double>(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v7);
  }

  v14 = 0;
  v15 = 16 * v3;
  v16 = (16 * v3);
  applesauce::CF::TypeRefPair::TypeRefPair<char const*,double>((16 * v3), *a2, a3);
  *&v16 = 16 * v3 + 16;
  v8 = *(a1 + 8);
  v9 = (16 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v14);
  return v13;
}

void sub_18F81E8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const*,double>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F81E994(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverter::PostBuild(acv2::CodecConverter *this)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  v2 = *(this + 90);
  if (v2)
  {
    v3 = *(this + 92);
    v4 = *(this + 94);
    v5 = *(v2 + 72);
    *(v2 + 56) = v3;
    v6 = (v3 + 4095) / v3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = v6 * v3;
    v8 = 2 * v6;
    *(v2 + 96) = v7;
    *(v2 + 100) = v8;
    v9 = (v8 * v4);
    v10 = *(v2 + 80) - v5;
    if (v9 <= v10)
    {
      if (v9 < v10)
      {
        *(v2 + 80) = v5 + v9;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((v2 + 72), v9 - v10);
      v7 = *(v2 + 96);
    }

    v11 = *(v2 + 32);
    v14 = *(v2 + 16);
    v15 = v11;
    v16 = *(v2 + 48);
    DWORD2(v14) = 1885564203;
    v12 = (*(v2 + 40) * v7);
    operator new();
  }

  return 0;
}

void sub_18F81EAEC(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F81EABCLL);
}

uint64_t acv2::CodecConverter::GetInstrumentationData(AudioCodec *this)
{
  v2 = 0;
  ioPropertyDataSize = 8;
  AudioCodecGetProperty(this[21], 0x24696E64u, &ioPropertyDataSize, &v2);
  return v2;
}

uint64_t acv2::CodecConverter::EnableInstrumentation(acv2::CodecConverter *this, int a2)
{
  inPropertyData = a2;
  *(this + 176) = 0;
  return AudioCodecSetProperty(*(this + 21), 0x24696E73u, 4u, &inPropertyData);
}

uint64_t acv2::CodecConverter::SetPropertySettings(acv2::CodecConverter **this, const __CFDictionary *a2)
{
  inPropertyData = a2;
  acv2::CodecConverter::CheckUninitialize(this);
  *(this + 176) = 0;
  return AudioCodecSetProperty(this[21], 0x61637320u, 8u, &inPropertyData);
}

uint64_t acv2::CodecConverter::GetPropertySettings@<X0>(AudioCodec *this@<X0>, CFTypeRef *a2@<X8>)
{
  acv2::CodecConverter::CheckInitialize(this, 0, 0);
  cf = 0;
  ioPropertyDataSize = 8;
  result = AudioCodecGetProperty(this[21], 0x61637320u, &ioPropertyDataSize, &cf);
  if (result)
  {
    *a2 = 0;
  }

  else
  {
    v5 = cf;
    v6 = (*(*this + 7))(this);
    CFDictionaryAddValue(v5, @"converter", v6);
    result = cf;
    *a2 = cf;
    if (result)
    {
      v7 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v7 != result)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }
  }

  return result;
}

void sub_18F81ECF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL acv2::CodecConverter::HasPropertySettings(AudioCodec *this)
{
  outSize = 0;
  outWritable = 0;
  if (AudioCodecGetPropertyInfo(this[21], 0x61637320u, &outSize, &outWritable))
  {
    v1 = 1;
  }

  else
  {
    v1 = outSize == 0;
  }

  return !v1;
}

uint64_t acv2::CodecConverter::CalcPrimeInfo(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return ConverterContext::withoutRealtimeSafety(a3, "CodecConverter::CalcPrimeInfo", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::CalcPrimeInfo(AudioConverterPrimeInfo &,ConverterContext)::$_0>, v4);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::CalcPrimeInfo(AudioConverterPrimeInfo &,ConverterContext)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v7 = 0;
  if (*(v2 + 205) == 1 && *(v2 + 388) == 1)
  {
    v3 = *(v2 + 380);
  }

  else if (acv2::CodecConverter::CodecSupportsProperty(*(v2 + 168), 0x7072696Du))
  {
    acv2::CodecConverter::CheckInitialize(v2, 0, 0);
    ioPropertyDataSize = 8;
    AudioCodecGetProperty(*(v2 + 168), 0x7072696Du, &ioPropertyDataSize, &v7);
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = v4[1] + HIDWORD(v3);
  *v4 += v3;
  v4[1] = v5;
  return 0;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#2}>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  outSize = 0;
  outWritable = 0;
  PropertyInfo = AudioCodecGetPropertyInfo(*(v2 + 168), 0x706B7469u, &outSize, &outWritable);
  if (PropertyInfo)
  {
    Property = PropertyInfo;
    v5 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + 88, 16);
    if (message)
    {
      v7 = message;
      v8 = _os_log_pack_fill();
LABEL_13:
      *v8 = 67109120;
      v8[1] = Property;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  else
  {
    v9 = outSize;
    v10 = outSize >> 4;
    if (v10 != *(v1 + 2))
    {
      v16 = _os_log_pack_size();
      v17 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
      if (!v17)
      {
        return 0;
      }

      v7 = v17;
      v8 = _os_log_pack_fill();
      Property = 0;
      goto LABEL_13;
    }

    v11 = v1[2];
    Property = AudioCodecGetProperty(*(v2 + 168), 0x706B7469u, &outSize, v11);
    if (Property)
    {
      v12 = _os_log_pack_size();
      v13 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v12 + 88, 16);
      if (v13)
      {
        v14 = v13;
        v15 = _os_log_pack_fill();
        *v15 = 67109120;
        v15[1] = Property;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v14);
      }
    }

    if (v9 >= 0x10)
    {
      do
      {
        *v11 = *v11 == 0;
        v11 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return Property;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 364);
  v3 = *(v1 + 784);
  v4 = *(v1 + 792) - v3;
  if (v2 <= v4)
  {
    if (v2 < v4)
    {
      *(v1 + 792) = v3 + v2;
    }
  }

  else
  {
    std::vector<unsigned char>::__append((v1 + 784), v2 - v4);
  }

  return 0;
}

uint64_t acv2::CodecConverter::StoreMagicCookie(acv2::CodecConverter *this, const void *a2, UInt32 a3)
{
  if (!a2 && a3)
  {
    return 4294967246;
  }

  acv2::CodecConverter::CheckInitialize(this, a2, a3);
  result = *(this + 106);
  if (result)
  {
    AudioConverterCapturer::setDecompressionCookie(result, a2, a3);
    return 0;
  }

  return result;
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_18F81F1A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void acv2::CodecConverter::GetCodecCookie(acv2::CodecConverter *this, uint64_t a2)
{
  memset(&outPropertyData, 0, sizeof(outPropertyData));
  outSize = 0;
  outWritable = 0;
  PropertyInfo = AudioCodecGetPropertyInfo(*(a2 + 168), 0x6B756B69u, &outSize, &outWritable);
  if (PropertyInfo)
  {
    begin = 0;
  }

  else
  {
    if (outSize)
    {
      std::vector<unsigned char>::__append(&outPropertyData, outSize);
      begin = outPropertyData.__begin_;
    }

    else
    {
      begin = 0;
    }

    PropertyInfo = AudioCodecGetProperty(*(a2 + 168), 0x6B756B69u, &outSize, begin);
    if (!PropertyInfo)
    {
      if (outSize <= &outPropertyData.__end_[-begin])
      {
        PropertyInfo = 0;
        if (outSize < &outPropertyData.__end_[-begin])
        {
          outPropertyData.__end_ = (begin + outSize);
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&outPropertyData, outSize - &outPropertyData.__end_[-begin]);
        PropertyInfo = 0;
        begin = outPropertyData.__begin_;
      }
    }
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(this, begin, outPropertyData.__end_, &outPropertyData.__end_[-begin]);
  *(this + 6) = PropertyInfo;
  if (outPropertyData.__begin_)
  {
    operator delete(outPropertyData.__begin_);
  }
}

void sub_18F81F2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t gsl::narrow<unsigned int,unsigned long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F033FDD0;
  }

  return result;
}

uint64_t acv2::CodecConverter::GetPropertyInfo(AudioCodec *this, signed int inPropertyID, UInt32 *outSize, unsigned __int8 *a4)
{
  outSizea = 0;
  outWritable = 0;
  if (HIBYTE(inPropertyID) == 94)
  {
    PropertyInfo = AudioCodecGetPropertyInfo(this[21], inPropertyID, &outSizea, &outWritable);
    if (PropertyInfo)
    {
      return PropertyInfo;
    }

    if (a4)
    {
      *a4 = outWritable;
    }

    if (outSize)
    {
      v9 = 0;
      *outSize = outSizea;
      return v9;
    }

    return 0;
  }

  if (inPropertyID > 1668114274)
  {
    if (inPropertyID > 1986355825)
    {
      if (inPropertyID > 2020172402)
      {
        if (inPropertyID != 2020172403 && inPropertyID != 2020175987 && inPropertyID != 2020569203)
        {
          goto LABEL_79;
        }

        goto LABEL_41;
      }

      if (inPropertyID != 1986355826)
      {
        if (inPropertyID != 1986360178)
        {
          goto LABEL_79;
        }

        if (*(this + 204) == 1)
        {
          v14 = this[21];
          v15 = 29554;
          goto LABEL_58;
        }

        return 1886547824;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      v17 = this[21];
      v19 = 1633841780;
      goto LABEL_73;
    }

    if (inPropertyID > 1835623026)
    {
      if (inPropertyID == 1835623027)
      {
LABEL_41:
        if (outSize)
        {
          *outSize = 4;
        }

        outWritable = 0;
        goto LABEL_44;
      }

      if (inPropertyID != 1886353266)
      {
        goto LABEL_79;
      }

      if (!AudioCodecGetPropertyInfo(this[21], 0x706F7772u, outSize, &outWritable))
      {
        goto LABEL_44;
      }

      return 1886547824;
    }

    if (inPropertyID != 1668114275)
    {
      if (inPropertyID != 1718383476)
      {
        goto LABEL_79;
      }

      if (*(this + 204) == 1)
      {
        acv2::CodecConverter::GetCodecCookie(v22, this);
        v10 = v22[0];
        gsl::narrow<unsigned int,unsigned long>(v22[1] - v22[0]);
        v11 = this[21];
        v25 = 0;
        if (AudioCodecGetPropertyInfo(v11, 0x6163666Cu, &v25, 0))
        {
          v12 = 48;
        }

        else
        {
          v12 = v25;
        }

        outSizea = v12;
        if (outSize)
        {
          *outSize = v12;
        }

        if (v10)
        {
          operator delete(v10);
        }

LABEL_44:
        if (a4)
        {
          v9 = 0;
          *a4 = outWritable;
          return v9;
        }

        return 0;
      }

      return 1886547824;
    }

    if (*(this + 204) != 1)
    {
      return 1886547824;
    }

    LODWORD(v22[0]) = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(this[21], 0x6B756B69u, v22, &outWritable);
    if (PropertyInfo)
    {
      return PropertyInfo;
    }

    if (!outSize)
    {
      goto LABEL_44;
    }

    v13 = v22[0];
LABEL_76:
    *outSize = v13;
    goto LABEL_44;
  }

  if (inPropertyID > 1634038641)
  {
    if (inPropertyID > 1651663219)
    {
      if (inPropertyID == 1651663220)
      {
        v17 = this[21];
        v18 = 24948;
LABEL_70:
        v19 = v18 | 0x62720000;
LABEL_73:
        PropertyInfo = AudioCodecGetPropertyInfo(v17, v19, &outSizea, &outWritable);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (!outSize)
        {
          goto LABEL_44;
        }

        v13 = outSizea;
        goto LABEL_76;
      }

      if (inPropertyID != 1667527029)
      {
        goto LABEL_79;
      }

      v14 = this[21];
      v16 = 1936876401;
    }

    else
    {
      if (inPropertyID != 1634038642)
      {
        if (inPropertyID != 1634366322)
        {
          goto LABEL_79;
        }

        v9 = 1886547824;
        if (*(this + 204) != 1 || *(this + 208) != 1)
        {
          return v9;
        }

        LODWORD(v22[0]) = 0;
        PropertyInfo = AudioCodecGetPropertyInfo(this[21], 0x636F7372u, v22, &outWritable);
        if (PropertyInfo)
        {
          return PropertyInfo;
        }

        if (!outSize)
        {
          goto LABEL_44;
        }

        v13 = 8;
        goto LABEL_76;
      }

      if (*(this + 204) != 1)
      {
        return 1886547824;
      }

      v14 = this[21];
      v16 = 1869836897;
    }

LABEL_65:
    PropertyInfo = AudioCodecGetPropertyInfo(v14, v16, outSize, &outWritable);
    if (PropertyInfo)
    {
      return PropertyInfo;
    }

    goto LABEL_44;
  }

  if (inPropertyID > 1634034289)
  {
    if (inPropertyID != 1634034290)
    {
      if (inPropertyID != 1634034540)
      {
        goto LABEL_79;
      }

      if (*(this + 204) == 1)
      {
        v14 = this[21];
        v15 = 25452;
LABEL_58:
        v16 = v15 | 0x616F0000;
        goto LABEL_65;
      }

      return 1886547824;
    }

    if (*(this + 204) != 1)
    {
      return 1886547824;
    }

    v17 = this[21];
    v18 = 29793;
    goto LABEL_70;
  }

  if (inPropertyID == 1633904996 || inPropertyID == 1633906532)
  {
    if (outSize)
    {
      *outSize = 40;
    }

    if (a4)
    {
      v9 = 0;
      *a4 = 0;
      return v9;
    }

    return 0;
  }

LABEL_79:
  if (!AudioCodecGetPropertyInfo(this[21], inPropertyID, outSize, &outWritable))
  {
    goto LABEL_44;
  }

  v9 = 1886547824;
  v21 = this[90];
  if (v21)
  {
    if (!AudioUnitGetPropertyInfo(*(v21 + 1), inPropertyID, 0, 0, outSize, &outWritable))
    {
      goto LABEL_44;
    }
  }

  return v9;
}

void sub_18F81F7FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::CodecConverter::description@<X0>(acv2::CodecConverter *this@<X0>, _BYTE *a2@<X8>)
{
  v58[19] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
  acv2::AudioConverterBase::description(this, &__p);
  if (SHIBYTE(v52[0].__locale_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(v52[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v52[0].__locale_);
  }

  else
  {
    locale_high = v51;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, p_p, locale_high);
  if (SHIBYTE(v52[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "    codec: ", 11);
  CAX4CCString::CAX4CCString(&__p, *(this + 46));
  v6 = strlen(&__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, &__p, v6);
  LOBYTE(__s[0]) = 47;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, __s, 1);
  CAX4CCString::CAX4CCString(__s, *(this + 47));
  v7 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, __s, v7);
  LOBYTE(v48[0]) = 47;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v48, 1);
  CAX4CCString::CAX4CCString(v48, *(this + 48));
  v8 = strlen(v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v48, v8);
  LOBYTE(__dst[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, __dst, 1);
  v33 = a2;
  v9 = *(this + 90);
  v10 = MEMORY[0x1E69E54E8];
  if (!v9)
  {
    goto LABEL_38;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "      spatially rendered from:  ", 32);
  v11 = *(v9 + 32);
  __s[0] = *(v9 + 16);
  __s[1] = v11;
  v47 = *(v9 + 48);
  CA::StreamDescription::AsString(v48, __s, *__s, *&v11);
  if (v49 >= 0)
  {
    v12 = v48;
  }

  else
  {
    v12 = v48[0];
  }

  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v12, v13);
  v45 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, &v45, 1);
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if ((v57 & 0x10) != 0)
  {
    v15 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v15 = v53;
    }

    locale = v52[4].__locale_;
    goto LABEL_22;
  }

  if ((v57 & 8) != 0)
  {
    locale = v52[1].__locale_;
    v15 = v52[3].__locale_;
LABEL_22:
    v14 = v15 - locale;
    if ((v15 - locale) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v35 = v15 - locale;
    if (v14)
    {
      memmove(__dst, locale, v14);
    }

    goto LABEL_28;
  }

  v14 = 0;
  v35 = 0;
LABEL_28:
  *(__dst + v14) = 0;
  __p = *v10;
  *(&__p + *(__p - 3)) = *(v10 + 24);
  v51 = MEMORY[0x1E69E5548] + 16;
  if (v55 < 0)
  {
    operator delete(v54);
  }

  v51 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v52);
  std::ostream::~ostream();
  MEMORY[0x193ADF120](v58);
  if ((v35 & 0x80u) == 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v18 = v35;
  }

  else
  {
    v18 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v17, v18);
  if (v35 < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_38:
  v19 = 1;
  do
  {
    v20 = v19;
    if (v19)
    {
      v21 = 1768123424;
    }

    else
    {
      v21 = 1868786720;
    }

    LODWORD(__s[0]) = 0;
    LOBYTE(__dst[0]) = 0;
    if ((*(*this + 80))(this, v21, __s, __dst))
    {
      v22 = 1;
    }

    else
    {
      v22 = LODWORD(__s[0]) == 0;
    }

    if (!v22)
    {
      __p = 0;
      CADeprecated::CAAutoFree<AudioChannelLayout>::alloc(&__p, LODWORD(__s[0]));
      v23 = __p;
      if (!(*(*this + 88))(this, v21, __s, __p))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "    ", 4);
        if (v20)
        {
          v24 = "Input ";
        }

        else
        {
          v24 = "Output";
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v24, 6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, " layout tag: 0x", 15);
        *(&v38[-1].__locale_ + *(v36 - 24)) = *(&v38[-1].__locale_ + *(v36 - 24)) & 0xFFFFFFB5 | 8;
        v25 = MEMORY[0x193ADEE60](&v36, *v23);
        *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 2;
        LOBYTE(v48[0]) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v48, 1);
LABEL_53:
        free(v23);
        goto LABEL_54;
      }

      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_54:
    v19 = 0;
  }

  while ((v20 & 1) != 0);
  if ((v43 & 0x10) != 0)
  {
    v29 = v42;
    v26 = v33;
    if (v42 < v39)
    {
      v42 = v39;
      v29 = v39;
    }

    v30 = v38[4].__locale_;
  }

  else
  {
    v26 = v33;
    if ((v43 & 8) == 0)
    {
      v27 = 0;
      v33[23] = 0;
      v28 = MEMORY[0x1E69E54E8];
      goto LABEL_68;
    }

    v30 = v38[1].__locale_;
    v29 = v38[3].__locale_;
  }

  v28 = MEMORY[0x1E69E54E8];
  v27 = v29 - v30;
  if ((v29 - v30) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v26[23] = v27;
  if (v27)
  {
    memmove(v26, v30, v27);
  }

LABEL_68:
  v26[v27] = 0;
  v36 = *v28;
  *(&v36 + *(v36 - 24)) = v28[3];
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v41 < 0)
  {
    operator delete(v40);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  result = MEMORY[0x193ADF120](&v44);
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F81FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  MEMORY[0x193ADF120](&a30);
  _Unwind_Resume(a1);
}

void *CADeprecated::CAAutoFree<AudioChannelLayout>::alloc(void **a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    goto LABEL_7;
  }

  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(32 * a2, 0x1000040E0EAB150uLL);
  if (a2)
  {
    if (!result)
    {
LABEL_7:
      exception = __cxa_allocate_exception(8uLL);
      v7 = std::bad_alloc::bad_alloc(exception);
    }
  }

  *a1 = result;
  return result;
}

uint64_t std::optional<ACCodecOutputBuffer>::~optional(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      *(a1 + 128) = v3;
      operator delete(v3);
    }

    ExtendedAudioBufferList_Destroy(*(a1 + 112));
    ACAudioSpan::~ACAudioSpan((a1 + 8));
  }

  return a1;
}

void acv2::CodecConverter::CodecConverter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = a6[3];
  v10 = a6[4];
  v12 = a6[1];
  v13 = *a6;
  *(a1 + 48) = a6[2];
  *(a1 + 64) = v11;
  *(a1 + 80) = v10;
  *(a1 + 16) = v13;
  *(a1 + 32) = v12;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *a1 = &unk_1F0334648;
  *(a1 + 8) = 0;
  *(a1 + 168) = a4;
  *(a1 + 160) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v14 = *(a6 + 2);
  v16 = v14 == 1819304813 || v14 == 1885564203;
  *(a1 + 204) = v16;
  v17 = *(a6 + 12);
  v19 = v17 == 1819304813 || v17 == 1885564203;
  *(a1 + 205) = v19;
  *(a1 + 206) = a10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 328) = 0;
  *(a1 + 211) = 0;
  *(a1 + 207) = 0;
  std::vector<char>::vector[abi:ne200100]((a1 + 336), 8);
}

void sub_18F820820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ACAudioSpan *a10, void **a11, const void **a12, OpaqueAudioComponentInstance **a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_guard_abort(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm31EEEtlA31_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc68ELc101ELc99ELc111ELc100ELc101ELc114ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100]((v39 + 856));
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100]((v39 + 848));
  v42 = *(v39 + 784);
  if (v42)
  {
    *(v39 + 792) = v42;
    operator delete(v42);
  }

  v43 = *v40;
  if (*v40)
  {
    *(v39 + 768) = v43;
    operator delete(v43);
  }

  v44 = *a11;
  if (*a11)
  {
    *(v39 + 744) = v44;
    operator delete(v44);
  }

  v45 = *(v39 + 720);
  *(v39 + 720) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  std::optional<ACCodecOutputBuffer>::~optional(v39 + 400);
  v46 = *(v39 + 336);
  if (v46)
  {
    *(v39 + 344) = v46;
    operator delete(v46);
  }

  if (*(v39 + 328) == 1)
  {
    ACAudioSpan::~ACAudioSpan(a10);
  }

  applesauce::CF::StringRef::~StringRef(a12);
  acv2::CodecWrapper::~CodecWrapper(a13);
  acv2::AudioConverterBase::~AudioConverterBase(v39);
  _Unwind_Resume(a1);
}

caulk::concurrent::message *acv2::CodecConverter::SetInputChannelLayout(acv2::CodecConverter *this, const AudioChannelLayout *a2, int a3)
{
  if (*(this + 11) == a3)
  {
    mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
    if (mNumberChannelDescriptions <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2->mNumberChannelDescriptions;
    }

    v7 = 20 * v6 + 12;
    begin = *(this + 92);
    v9 = *(this + 93) - begin;
    if (v7 <= v9)
    {
      if (v7 < v9)
      {
        *(this + 93) = &begin[v7];
      }
    }

    else
    {
      v10 = (this + 736);
      std::vector<unsigned char>::__append(v10, v7 - v9);
      begin = v10->__begin_;
      mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
    }

    return memcpy(begin, a2, 20 * mNumberChannelDescriptions + 12);
  }

  else
  {
    v12 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v12 + 88, 16);
    if (result)
    {
      v14 = result;
      v15 = _os_log_pack_fill();
      v16 = *(this + 11);
      *v15 = 67109376;
      *(v15 + 4) = a3;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v16;
      v17 = *(gAudioConverterDeferredLog + 16);

      return caulk::concurrent::messenger::enqueue(v17, v14);
    }
  }

  return result;
}

uint64_t acv2::CodecConverter::SetOutputChannelLayout(acv2::CodecConverter *this, const AudioChannelLayout *inData, UInt32 inDataSize, int a4)
{
  outWritable = 0;
  if (*(this + 21) != a4)
  {
    v16 = _os_log_pack_size();
    result = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v16 + 88, 16);
    if (!result)
    {
      return result;
    }

    v17 = result;
    v18 = _os_log_pack_fill();
    v19 = *(this + 21);
    *v18 = 67109376;
    *(v18 + 4) = a4;
    *(v18 + 8) = 1024;
    *(v18 + 10) = v19;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v17);
    return 0;
  }

  v7 = *(this + 90);
  if (v7)
  {
    result = AudioUnitSetProperty(*(v7 + 8), 0x13u, 2u, 0, inData, inDataSize);
    if (result)
    {
      return result;
    }

    mNumberChannelDescriptions = inData->mNumberChannelDescriptions;
    if (mNumberChannelDescriptions <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = inData->mNumberChannelDescriptions;
    }

    v11 = 20 * v10 + 12;
    begin = *(this + 95);
    v13 = *(this + 96) - begin;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        *(this + 96) = &begin[v11];
      }
    }

    else
    {
      v14 = (this + 760);
      std::vector<unsigned char>::__append(v14, v11 - v13);
      begin = v14->__begin_;
      mNumberChannelDescriptions = inData->mNumberChannelDescriptions;
    }

    memcpy(begin, inData, 20 * mNumberChannelDescriptions + 12);
    return 0;
  }

  if (*(this + 204) != 1 || AudioCodecGetPropertyInfo(*(this + 21), 0x69636C20u, 0, &outWritable) || !outWritable || (acv2::CodecConverter::CheckUninitialize(this), *(this + 176) = 0, result = AudioCodecSetProperty(*(this + 21), 0x69636C20u, inDataSize, inData), !result))
  {
    PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x6F636C20u, 0, &outWritable);
    if (PropertyInfo || !outWritable)
    {
      v21 = inData->mNumberChannelDescriptions;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = inData->mNumberChannelDescriptions;
      }

      v23 = 20 * v22 + 12;
      v24 = *(this + 95);
      v25 = *(this + 96) - v24;
      if (v23 <= v25)
      {
        if (v23 < v25)
        {
          *(this + 96) = &v24[v23];
        }
      }

      else
      {
        v26 = (this + 760);
        std::vector<unsigned char>::__append(v26, v23 - v25);
        v24 = v26->__begin_;
        v21 = inData->mNumberChannelDescriptions;
      }

      memcpy(v24, inData, 20 * v21 + 12);
      if (PropertyInfo | outWritable)
      {
        return PropertyInfo;
      }

      else
      {
        return 561476212;
      }
    }

    else
    {
      acv2::CodecConverter::CheckUninitialize(this);
      *(this + 176) = 0;
      return AudioCodecSetProperty(*(this + 21), 0x6F636C20u, inDataSize, inData);
    }
  }

  return result;
}

BOOL acv2::CodecConverter::PrimeInfoIsWritable(acv2::CodecConverter *this)
{
  if (*(this + 205))
  {
    return 1;
  }

  v8 = v1;
  v9 = v2;
  v7 = 0;
  outSize = 0;
  PropertyInfo = AudioCodecGetPropertyInfo(*(this + 21), 0x7072696Du, &outSize, &v7);
  return v7 && PropertyInfo == 0;
}

void sub_18F821770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(a1);
}

void sub_18F8218E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL21getAVAudioFormatClassv_block_invoke_9360(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_9367(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9373(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioChannelLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

    __break(1u);
  }
}

uint64_t *std::unique_ptr<AUAudioUnitV2Bridge_Renderer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void setStateAndNotify(const __CFDictionary *a1, AUAudioUnitV2Bridge *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  atomic_store(1u, a2 + 601);
  operator new();
}

void sub_18F8223A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t setPresentPresetAndNotify(AUAudioUnitV2Bridge *a1, AUAudioUnitPreset *a2)
{
  v3 = a1;
  v4 = a2;
  audioUnit = v3->_audioUnit;
  LODWORD(v8) = [(AUAudioUnitPreset *)v4 number];
  v9 = [(AUAudioUnitPreset *)v4 name];

  v6 = AudioUnitSetProperty(audioUnit, 0x24u, 0, 0, &v8, 0x10u);
  if (!v6)
  {
    notifyParametersChanged(v3);
  }

  return v6;
}

const void *AUAudioUnitProperties::infoForKey(AUAudioUnitProperties *this, NSString *a2)
{
  v2 = this;
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 24), v2);

  return Value;
}

void notifyParametersChanged(AUAudioUnitV2Bridge *a1)
{
  v1 = a1;
  inParameter.mAudioUnit = v1->_audioUnit;
  inParameter.mParameterID = -1;
  AUParameterListenerNotify(0, 0, &inParameter);
  parameterListener = v1->_parameterListener;
  if (parameterListener)
  {
    AUEventListenerFlush(parameterListener);
  }

  eventListener = v1->_eventListener;
  if (eventListener)
  {
    AUEventListenerFlush(eventListener);
  }
}

uint64_t dispatch_to_main_queue_with_timeout(uint64_t a1)
{
  if (!pthread_main_np())
  {
    operator new();
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  return 1;
}

uint64_t setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0,std::default_delete<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x193ADF220](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0>(NSObject  {objcproto17OS_dispatch_queue}*,dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0 &&)::{lambda(void *)#1}::__invoke(caulk::semaphore **a1)
{
  v1 = 0;
  v7 = a1;
  atomic_compare_exchange_strong(*a1 + 129, &v1, 1u);
  if (!v1)
  {
    caulk::semaphore::signal(*a1);
    v3 = *a1;
    std::mutex::lock(*a1 + 1);
    v4 = *(*a1 + 20);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v4 + 48))(v4);
    v5 = *a1;
    *(v5 + 128) = 1;
    std::condition_variable::notify_one((v5 + 16));
    std::mutex::unlock(v3 + 1);
  }

  return std::unique_ptr<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0,std::default_delete<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_18F82297C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0,std::default_delete<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::State,std::allocator<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::State>>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 160);
  std::mutex::~mutex((a1 + 88));
  std::condition_variable::~condition_variable((a1 + 40));

  JUMPOUT(0x193ADE990);
}

void std::__shared_ptr_emplace<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::State,std::allocator<dispatch_to_main_queue_with_timeout(std::function<void ()(void)>)::State>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0334880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__function::__func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = AudioUnitSetProperty(*(*(a1 + 24) + 616), *(a1 + 32), 0, 0, (a1 + 40), 8u);
  **(a1 + 8) = result;
  return result;
}

void std::__function::__func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

__n128 std::__function::__func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::__clone(uint64_t a1, __n128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->n128_u64[0] = &unk_1F03347A8;
  a2->n128_u64[1] = v5;
  a2[1].n128_u64[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a2[1].n128_u64[1] = *(a1 + 24);
  result = *(a1 + 32);
  a2[2] = result;
  return result;
}

void std::__function::__func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F03347A8;

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x193ADF220);
}

uint64_t std::__function::__func<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0,std::allocator<setStateAndNotify(__CFDictionary const*,AUAudioUnitV2Bridge *,unsigned int)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F03347A8;

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<int>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0334770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F823054(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

id std::function<objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = (*(*a1 + 48))(a1, &v6, &v5);

  return v3;
}

void V2BridgePropertyListener(void *a1, OpaqueAudioComponentInstance *a2, unsigned int a3, int a4, unsigned int a5)
{
  v13 = a1;
  v8 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v8 + 8), a3);
  if (Value)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v10 = &OBJC_IVAR___AUAudioUnitV2Bridge__inputBusses;
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_10;
        }

        v10 = &OBJC_IVAR___AUAudioUnitV2Bridge__outputBusses;
      }

      v11 = [*&v13[*v10] objectAtIndexedSubscript:a5];
    }

    else
    {
      v11 = v13;
    }

    v12 = v11;
    [v11 willChangeValueForKey:Value[1]];
    [v12 didChangeValueForKey:Value[1]];
  }

LABEL_10:
}

void sub_18F8239F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9486(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18F823BF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10applesauce8dispatch2v19sync_implIZ36__AUAudioUnitV2Bridge_parameterTree_E3__7EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **v1;
  if (!v2[81])
  {
    if (([v2 renderResourcesAllocated] & 1) != 0 || (objc_msgSend(*v1[1], "allParameters"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4))
    {
      objc_storeStrong(**v1 + 81, *v1[1]);
      v5 = **v1;
      v6 = *(v5 + 77);
      v7 = *(v5 + 74);
      v8 = *v1[1];

      addOrRemoveParameterListeners(v6, v7, v8, 1);
    }
  }
}

void addOrRemoveParameterListeners(OpaqueAudioComponentInstance *a1, AUListenerBase *a2, AUParameterTree *a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v7;
    v8 = [(AUParameterGroup *)v7 allParameters];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          inParameter.mAudioUnit = a1;
          v13 = [v12 address];
          inParameter.mScope = v13 >> 61;
          inParameter.mElement = HIDWORD(v13) & 0x1FFFFFFF;
          inParameter.mParameterID = v13;
          inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
          inEvent.mArgument.mParameter = inParameter;
          if (a4)
          {
            AUListenerAddParameter(a2, v12, &inParameter);
            AUEventListenerAddEventType(a2, v12, &inEvent);
            inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
            AUEventListenerAddEventType(a2, v12, &inEvent);
          }

          else
          {
            AUListenerRemoveParameter(a2, v12, &inParameter);
            AUEventListenerRemoveEventType(a2, v12, &inEvent);
            inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
            AUEventListenerRemoveEventType(a2, v12, &inEvent);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v7 = v15;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v184 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a1;
  v8 = a1 + 24;
  while (1)
  {
    v9 = a2 - v7;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3:
        v62 = *MEMORY[0x1E69E9840];

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v7, v8, a2 - 24);
        return;
      case 4:
        v57 = *MEMORY[0x1E69E9840];

        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v7, v8, v7 + 48, a2 - 24);
        return;
      case 5:
        v58 = *MEMORY[0x1E69E9840];

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v7, v8, v7 + 48, v7 + 72, a2 - 24);
        return;
    }

LABEL_10:
    v166 = a2;
    if (v9 <= 575)
    {
      v64 = v7 == a2 || v8 == a2;
      if (a4)
      {
        if (v64)
        {
          goto LABEL_351;
        }

        v65 = 0;
        v66 = v7;
        while (1)
        {
          v67 = v66;
          v66 = v8;
          v68 = *(v67 + 28);
          v69 = *(v67 + 4);
          if (v68 == 1 && (*(v67 + 4) & 1) != 0)
          {
            if (*v66 >= *v67)
            {
              if (*v66 != *v67)
              {
                goto LABEL_209;
              }

LABEL_187:
              if (*(v67 + 32) >= *(v67 + 8))
              {
                goto LABEL_209;
              }
            }
          }

          else
          {
            if ((v68 & 1) == 0 && (*(v67 + 4) & 1) == 0)
            {
              goto LABEL_187;
            }

            if (*(v67 + 28) || (*(v67 + 4) & 1) == 0)
            {
              goto LABEL_209;
            }
          }

          v70 = *v66;
          v173 = *(v67 + 29);
          v179 = *(v67 + 31);
          v71 = *(v67 + 32);
          v72 = *(v67 + 40);
          *(v67 + 40) = 0;
          *(v66 + 8) = *(v67 + 8);
          *v66 = *v67;
          v73 = *(v67 + 16);
          *(v67 + 16) = 0;
          v74 = *(v66 + 16);
          *(v66 + 16) = v73;

          v75 = v7;
          if (v67 == v7)
          {
            goto LABEL_208;
          }

          v76 = v65;
          while (1)
          {
            v77 = v7 + v76;
            v78 = (v7 + v76 - 24);
            v79 = *(v7 + v76 - 20);
            if (!v68 || (v79 & 1) == 0)
            {
              break;
            }

            if (v70 < *v78)
            {
              goto LABEL_203;
            }

            if (v70 != *v78)
            {
              goto LABEL_205;
            }

LABEL_200:
            if (v71 >= *(v7 + v76 - 16))
            {
LABEL_205:
              v75 = v67;
              goto LABEL_207;
            }

LABEL_203:
            v67 -= 24;
            *v77 = *v78;
            *(v77 + 8) = *(v7 + v76 - 16);
            v80 = v7 + v76;
            v81 = *(v7 + v76 - 8);
            *(v80 - 8) = 0;
            v82 = *(v7 + v76 + 16);
            *(v80 + 16) = v81;

            v76 -= 24;
            if (!v76)
            {
              v75 = v7;
              goto LABEL_207;
            }
          }

          if ((v68 & 1) == 0 && (v79 & 1) == 0)
          {
            goto LABEL_200;
          }

          if (((v68 ^ 1) & v79) == 1)
          {
            goto LABEL_203;
          }

          v75 = v7 + v76;
LABEL_207:
          a2 = v166;
LABEL_208:
          *v75 = v70;
          *(v75 + 4) = v68;
          *(v75 + 5) = v173;
          *(v75 + 7) = v179;
          *(v75 + 8) = v71;
          v83 = *(v75 + 16);
          *(v75 + 16) = v72;

LABEL_209:
          v8 = v66 + 24;
          v65 += 24;
          if (v66 + 24 == a2)
          {
            goto LABEL_351;
          }
        }
      }

      if (v64)
      {
        goto LABEL_351;
      }

LABEL_321:
      v147 = v7;
      v7 = v8;
      v148 = *(v147 + 28);
      v149 = *(v147 + 4);
      if (v148 == 1 && (*(v147 + 4) & 1) != 0)
      {
        if (*v8 >= *v147)
        {
          if (*v8 != *v147)
          {
            goto LABEL_344;
          }

          goto LABEL_328;
        }
      }

      else
      {
        if ((v148 & 1) == 0 && (*(v147 + 4) & 1) == 0)
        {
LABEL_328:
          if (*(v147 + 32) >= *(v147 + 8))
          {
            goto LABEL_344;
          }

          goto LABEL_332;
        }

        if (*(v147 + 28) || (*(v147 + 4) & 1) == 0)
        {
          goto LABEL_344;
        }
      }

LABEL_332:
      v150 = *v8;
      v176 = *(v147 + 29);
      v181 = *(v147 + 31);
      v151 = *(v147 + 32);
      v152 = *(v147 + 40);
      *(v147 + 40) = 0;
      while (1)
      {
        while (1)
        {
          v153 = v147;
          v154 = *v147;
          *(v153 + 32) = *(v153 + 8);
          v155 = *(v153 + 16);
          *(v153 + 16) = 0;
          *(v153 + 24) = v154;
          v156 = *(v153 + 40);
          *(v153 + 40) = v155;

          v147 = v153 - 24;
          v157 = *(v153 - 20);
          if (v148)
          {
            if (v157)
            {
              break;
            }
          }

          if (v148 & 1) != 0 || (v157)
          {
            if (((v148 ^ 1) & v157 & 1) == 0)
            {
LABEL_343:
              *v153 = v150;
              *(v153 + 4) = v148;
              *(v153 + 5) = v176;
              *(v153 + 7) = v181;
              *(v153 + 8) = v151;
              v158 = *(v153 + 16);
              *(v153 + 16) = v152;

LABEL_344:
              v8 = v7 + 24;
              if (v7 + 24 == a2)
              {
                goto LABEL_351;
              }

              goto LABEL_321;
            }
          }

          else
          {
LABEL_340:
            if (v151 >= *(v153 - 16))
            {
              goto LABEL_343;
            }
          }
        }

        if (v150 >= *v147)
        {
          if (v150 != *v147)
          {
            goto LABEL_343;
          }

          goto LABEL_340;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        goto LABEL_351;
      }

      v84 = v11 >> 1;
      v85 = v11 >> 1;
      while (1)
      {
        v86 = v85;
        if (v84 < v85)
        {
          goto LABEL_266;
        }

        v87 = (2 * v85) | 1;
        v88 = v7 + 24 * v87;
        if (2 * v85 + 2 < v10)
        {
          v89 = *(v88 + 4);
          v90 = *(v88 + 28);
          if (v89 == 1 && (*(v88 + 28) & 1) != 0)
          {
            v91 = *(v88 + 24);
            if (*v88 >= v91)
            {
              if (*v88 != v91)
              {
                goto LABEL_227;
              }

LABEL_222:
              if (*(v88 + 8) >= *(v88 + 32))
              {
                goto LABEL_227;
              }
            }

LABEL_226:
            v88 += 24;
            v87 = 2 * v85 + 2;
            goto LABEL_227;
          }

          if ((v89 & 1) == 0 && (*(v88 + 28) & 1) == 0)
          {
            goto LABEL_222;
          }

          if (!*(v88 + 4) && (*(v88 + 28) & 1) != 0)
          {
            goto LABEL_226;
          }
        }

LABEL_227:
        v92 = v7 + 24 * v85;
        v93 = *(v88 + 4);
        v94 = *(v92 + 4);
        if (v93 != 1 || (*(v92 + 4) & 1) == 0)
        {
          if (v93 & 1) != 0 || (*(v92 + 4))
          {
            if (!*(v88 + 4) && (*(v92 + 4) & 1) != 0)
            {
              goto LABEL_266;
            }

            goto LABEL_238;
          }

LABEL_234:
          if (*(v88 + 8) < *(v92 + 8))
          {
            goto LABEL_266;
          }

          goto LABEL_238;
        }

        if (*v88 < *v92)
        {
          goto LABEL_266;
        }

        if (*v88 == *v92)
        {
          goto LABEL_234;
        }

LABEL_238:
        v95 = *v92;
        v180 = *(v92 + 7);
        v174 = *(v92 + 5);
        v96 = *(v92 + 8);
        v164 = *(v92 + 16);
        *(v92 + 16) = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              v97 = *v88;
              *(v92 + 8) = *(v88 + 8);
              *v92 = v97;
              v98 = *(v88 + 16);
              *(v88 + 16) = 0;
              v99 = *(v92 + 16);
              *(v92 + 16) = v98;

              if (v84 < v87)
              {
                goto LABEL_265;
              }

              v92 = v88;
              v100 = 2 * v87;
              v87 = (2 * v87) | 1;
              v88 = v7 + 24 * v87;
              v101 = v100 + 2;
              if (v101 < v10)
              {
                v102 = *(v88 + 4);
                v103 = *(v88 + 28);
                if (v102 == 1 && (*(v88 + 28) & 1) != 0)
                {
                  v104 = *(v88 + 24);
                  if (*v88 >= v104)
                  {
                    if (*v88 != v104)
                    {
                      goto LABEL_253;
                    }

LABEL_248:
                    if (*(v88 + 8) >= *(v88 + 32))
                    {
                      goto LABEL_253;
                    }
                  }

LABEL_252:
                  v88 += 24;
                  v87 = v101;
                  goto LABEL_253;
                }

                if ((v102 & 1) == 0 && (*(v88 + 28) & 1) == 0)
                {
                  goto LABEL_248;
                }

                if (!*(v88 + 4) && (*(v88 + 28) & 1) != 0)
                {
                  goto LABEL_252;
                }
              }

LABEL_253:
              v105 = *(v88 + 4);
              if (v105 != 1 || (v94 & 1) == 0)
              {
                break;
              }

              if (*v88 < v95)
              {
                goto LABEL_264;
              }

              if (*v88 == v95)
              {
                goto LABEL_260;
              }
            }

            if (v105 & 1) != 0 || (v94)
            {
              break;
            }

LABEL_260:
            if (*(v88 + 8) < v96)
            {
              goto LABEL_264;
            }
          }
        }

        while (*(v88 + 4) || (v94 & 1) == 0);
LABEL_264:
        v88 = v92;
LABEL_265:
        *v88 = v95;
        *(v88 + 4) = v94;
        *(v88 + 5) = v174;
        *(v88 + 7) = v180;
        *(v88 + 8) = v96;
        v106 = *(v88 + 16);
        *(v88 + 16) = v164;

        a2 = v166;
LABEL_266:
        v85 = v86 - 1;
        if (!v86)
        {
          v107 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
          while (1)
          {
            if (v107 < 2)
            {
              goto LABEL_314;
            }

            v108 = 0;
            v183 = *(v7 + 8);
            v175 = *v7;
            v109 = *(v7 + 16);
            *(v7 + 16) = 0;
            v110 = v7;
            do
            {
              v111 = v110;
              v112 = v110 + 24 * v108;
              v110 = v112 + 24;
              v113 = 2 * v108;
              v108 = (2 * v108) | 1;
              v114 = v113 + 2;
              if (v114 >= v107)
              {
                goto LABEL_283;
              }

              v115 = *(v112 + 28);
              v116 = *(v112 + 52);
              if (v115 == 1 && (*(v112 + 52) & 1) != 0)
              {
                v117 = *(v112 + 24);
                v118 = *(v112 + 48);
                if (v117 < v118)
                {
                  goto LABEL_282;
                }

                if (v117 != v118)
                {
                  goto LABEL_283;
                }

LABEL_278:
                if (*(v112 + 32) < *(v112 + 56))
                {
                  goto LABEL_282;
                }

                goto LABEL_283;
              }

              if ((v115 & 1) == 0 && (*(v112 + 52) & 1) == 0)
              {
                goto LABEL_278;
              }

              if (!*(v112 + 28) && (*(v112 + 52) & 1) != 0)
              {
LABEL_282:
                v110 = v112 + 48;
                v108 = v114;
              }

LABEL_283:
              v119 = *v110;
              *(v111 + 8) = *(v110 + 8);
              *v111 = v119;
              v120 = *(v110 + 16);
              *(v110 + 16) = 0;
              v121 = *(v111 + 16);
              *(v111 + 16) = v120;
            }

            while (v108 <= ((v107 - 2) >> 1));
            v122 = (a2 - 24);
            if (v110 == a2 - 24)
            {
              *(v110 + 8) = v183;
              *v110 = v175;
              v133 = *(v110 + 16);
              *(v110 + 16) = v109;

              goto LABEL_314;
            }

            v123 = *v122;
            *(v110 + 8) = *(a2 - 16);
            *v110 = v123;
            v124 = *(a2 - 8);
            *(a2 - 8) = 0;
            v125 = *(v110 + 16);
            *(v110 + 16) = v124;

            *(a2 - 16) = v183;
            *v122 = v175;
            v126 = *(a2 - 8);
            *(a2 - 8) = v109;

            v127 = v110 - v7 + 24;
            if (v127 < 25)
            {
              goto LABEL_314;
            }

            v128 = -2 - 0x5555555555555555 * (v127 >> 3);
            v129 = v128 >> 1;
            v130 = v7 + 24 * (v128 >> 1);
            v131 = *(v130 + 4);
            v132 = *(v110 + 4);
            if (v131 == 1 && (*(v110 + 4) & 1) != 0)
            {
              if (*v130 >= *v110)
              {
                if (*v130 != *v110)
                {
                  goto LABEL_314;
                }

                goto LABEL_294;
              }
            }

            else if (v131 & 1) != 0 || (*(v110 + 4))
            {
              if (*(v130 + 4) || (*(v110 + 4) & 1) == 0)
              {
                goto LABEL_314;
              }
            }

            else
            {
LABEL_294:
              if (*(v130 + 8) >= *(v110 + 8))
              {
                goto LABEL_314;
              }
            }

            v167 = a2;
            v134 = *v110;
            v168 = *(v110 + 5);
            v169 = *(v110 + 7);
            v135 = *(v110 + 8);
            v165 = *(v110 + 16);
            *(v110 + 16) = 0;
            v136 = *v130;
            *(v110 + 8) = *(v130 + 8);
            *v110 = v136;
            v137 = *(v130 + 16);
            *(v130 + 16) = 0;
            v138 = *(v110 + 16);
            *(v110 + 16) = v137;

            if (v128 < 2)
            {
              goto LABEL_313;
            }

            while (2)
            {
              v139 = v130;
              v140 = v129 - 1;
              v129 = (v129 - 1) >> 1;
              v130 = v7 + 24 * v129;
              v141 = *(v130 + 4);
              if (v141 == 1 && (v132 & 1) != 0)
              {
                if (*v130 >= v134)
                {
                  if (*v130 != v134)
                  {
                    break;
                  }

                  goto LABEL_306;
                }

                goto LABEL_310;
              }

              if ((v141 & 1) == 0 && (v132 & 1) == 0)
              {
LABEL_306:
                if (*(v130 + 8) >= v135)
                {
                  break;
                }

                goto LABEL_310;
              }

              if (!*(v130 + 4) && (v132 & 1) != 0)
              {
LABEL_310:
                v142 = *v130;
                *(v139 + 8) = *(v130 + 8);
                *v139 = v142;
                v143 = *(v130 + 16);
                *(v130 + 16) = 0;
                v144 = *(v139 + 16);
                *(v139 + 16) = v143;

                if (v140 <= 1)
                {
                  goto LABEL_313;
                }

                continue;
              }

              break;
            }

            v130 = v139;
LABEL_313:
            *v130 = v134;
            *(v130 + 4) = v132;
            *(v130 + 5) = v168;
            *(v130 + 7) = v169;
            *(v130 + 8) = v135;
            v145 = *(v130 + 16);
            *(v130 + 16) = v165;

            a2 = v167;
LABEL_314:
            a2 -= 24;
            if (v107-- <= 2)
            {
LABEL_351:
              v160 = *MEMORY[0x1E69E9840];
              return;
            }
          }
        }
      }
    }

    v12 = v10 >> 1;
    v13 = v7 + 24 * (v10 >> 1);
    v14 = (a2 - 24);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v13, v7, a2 - 24);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v7, v13, a2 - 24);
      v15 = v7 + 24 * v12;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v8, v15 - 24, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v7 + 48, v15 + 24, a2 - 72);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(v15 - 24, v13, v15 + 24);
      v182 = *(v7 + 8);
      v170 = *v7;
      v16 = *(v7 + 16);
      *(v7 + 16) = 0;
      v17 = *(v13 + 8);
      *v7 = *v13;
      *(v7 + 8) = v17;
      v18 = *(v13 + 16);
      *(v13 + 16) = 0;
      v19 = *(v7 + 16);
      *(v7 + 16) = v18;

      *(v13 + 8) = v182;
      *v13 = v170;
      v20 = *(v13 + 16);
      *(v13 + 16) = v16;
    }

    v163 = a3 - 1;
    v21 = *(v7 + 4);
    if (a4)
    {
      v22 = *(v7 + 4);
      goto LABEL_28;
    }

    v23 = *(v7 - 20);
    if (v23 == 1 && (v21 & 1) != 0)
    {
      v24 = *(v7 - 24);
      if (v24 < *v7)
      {
        v22 = 1;
        goto LABEL_28;
      }

      if (v24 != *v7)
      {
        goto LABEL_92;
      }

      goto LABEL_27;
    }

    if (v23 & 1) != 0 || (v21)
    {
      if (!*(v7 - 20))
      {
        v22 = *(v7 + 4);
        if (v21)
        {
          goto LABEL_28;
        }
      }

LABEL_92:
      v41 = *v7;
      v178 = *(v7 + 7);
      v172 = *(v7 + 5);
      v42 = *(v7 + 8);
      v43 = *(v7 + 16);
      *(v7 + 16) = 0;
      v44 = *(a2 - 20);
      if (v21 & 1) != 0 && (v44)
      {
        if (v41 < *v14)
        {
          goto LABEL_100;
        }

        if (v41 != *v14)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      if ((v21 | v44))
      {
        if ((v21 & 1) != 0 || (v44 & 1) == 0)
        {
          goto LABEL_110;
        }

LABEL_100:
        while (2)
        {
          if (v21 & *(v8 + 4))
          {
            if (v41 < *v8)
            {
              goto LABEL_120;
            }

            if (v41 != *v8)
            {
LABEL_108:
              v8 += 24;
              continue;
            }
          }

          else
          {
            v45 = *(v8 + 4);
            if ((v21 | v45))
            {
              if ((v21 ^ 1) & v45)
              {
                goto LABEL_120;
              }

              goto LABEL_108;
            }
          }

          break;
        }

        if (v42 < *(v8 + 8))
        {
          goto LABEL_120;
        }

        goto LABEL_108;
      }

LABEL_109:
      if (v42 < *(a2 - 16))
      {
        goto LABEL_100;
      }

LABEL_110:
      if (v8 < a2)
      {
        while (2)
        {
          if (v21 & *(v8 + 4))
          {
            if (v41 < *v8)
            {
              break;
            }

            if (v41 != *v8)
            {
              goto LABEL_119;
            }

LABEL_118:
            if (v42 < *(v8 + 8))
            {
              break;
            }
          }

          else
          {
            v46 = *(v8 + 4);
            if (((v21 | v46) & 1) == 0)
            {
              goto LABEL_118;
            }

            if ((v21 ^ 1) & v46)
            {
              break;
            }
          }

LABEL_119:
          v8 += 24;
          if (v8 >= a2)
          {
            break;
          }

          continue;
        }
      }

LABEL_120:
      v47 = a2;
      if (v8 >= a2)
      {
        goto LABEL_132;
      }

      v48 = (a2 - 16);
      while (2)
      {
        if ((v21 & v44 & 1) == 0)
        {
          if (((v21 | v44) & 1) == 0)
          {
            goto LABEL_129;
          }

          if (((v21 ^ 1) & v44 & 1) == 0)
          {
            goto LABEL_131;
          }

LABEL_130:
          v44 = *(v48 - 28);
          v48 -= 6;
          continue;
        }

        break;
      }

      v49 = *(v48 - 2);
      if (v41 < v49)
      {
        goto LABEL_130;
      }

      if (v41 != v49)
      {
        goto LABEL_131;
      }

LABEL_129:
      if (v42 < *v48)
      {
        goto LABEL_130;
      }

LABEL_131:
      v47 = (v48 - 2);
LABEL_132:
      if (v8 >= v47)
      {
        a1 = v8;
        goto LABEL_154;
      }

      v50 = v21 ^ 1;
      a1 = v8;
      while (2)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, v47);
        while (2)
        {
          while (2)
          {
            while (2)
            {
              a1 += 24;
              if (v21 & *(a1 + 4))
              {
                if (v41 < *a1)
                {
                  goto LABEL_143;
                }

                if (v41 != *a1)
                {
                  continue;
                }

                goto LABEL_142;
              }

              break;
            }

            v51 = *(a1 + 4);
            if (((v21 | v51) & 1) == 0)
            {
LABEL_142:
              if (v42 < *(a1 + 8))
              {
                goto LABEL_143;
              }

              continue;
            }

            break;
          }

          if ((v50 & v51 & 1) == 0)
          {
            continue;
          }

          break;
        }

LABEL_143:
        while (2)
        {
          while (2)
          {
            while (1)
            {
              v47 -= 3;
              if (v21 & *(v47 + 4))
              {
                break;
              }

              v52 = *(v47 + 4);
              if (((v21 | v52) & 1) == 0)
              {
                goto LABEL_150;
              }

              if ((v50 & v52 & 1) == 0)
              {
                goto LABEL_151;
              }
            }

            if (v41 < *v47)
            {
              continue;
            }

            break;
          }

          if (v41 != *v47)
          {
            break;
          }

LABEL_150:
          if (v42 < *(v47 + 2))
          {
            continue;
          }

          break;
        }

LABEL_151:
        if (a1 < v47)
        {
          continue;
        }

        break;
      }

LABEL_154:
      if (a1 - 24 != v7)
      {
        v53 = *(a1 - 24);
        *(v7 + 8) = *(a1 - 16);
        *v7 = v53;
        v54 = *(a1 - 8);
        *(a1 - 8) = 0;
        v55 = *(v7 + 16);
        *(v7 + 16) = v54;
      }

      *(a1 - 24) = v41;
      *(a1 - 20) = v21;
      *(a1 - 19) = v172;
      *(a1 - 17) = v178;
      *(a1 - 16) = v42;
      v56 = *(a1 - 8);
      *(a1 - 8) = v43;

      a4 = 0;
      a3 = v163;
      goto LABEL_2;
    }

LABEL_27:
    v22 = *(v7 + 4);
    if (*(v7 - 16) >= *(v7 + 8))
    {
      goto LABEL_92;
    }

LABEL_28:
    v25 = *v7;
    v171 = *(v7 + 5);
    v177 = *(v7 + 7);
    v26 = *(v7 + 8);
    v162 = *(v7 + 16);
    *(v7 + 16) = 0;
    for (i = v8; ; i += 24)
    {
      v28 = *(i + 4);
      if ((v28 & v22) == 1)
      {
        break;
      }

      if (((v28 | v22) & 1) == 0)
      {
        goto LABEL_36;
      }

      if (((v28 ^ 1) & v22) != 1)
      {
        goto LABEL_38;
      }

LABEL_37:
      ;
    }

    if (*i < v25)
    {
      goto LABEL_37;
    }

    if (*i != v25)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (*(i + 8) < v26)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (i - 24 != v7)
    {
      for (j = v14; ; j -= 6)
      {
        v30 = *(j + 4);
        if ((v30 & v22) == 1)
        {
          if (*j < v25)
          {
            goto LABEL_64;
          }

          if (*j != v25)
          {
            continue;
          }
        }

        else if ((v30 | v22))
        {
          if ((v30 ^ 1) & v22)
          {
            goto LABEL_64;
          }

          continue;
        }

        if (j[2] < v26)
        {
          goto LABEL_64;
        }
      }
    }

    j = v166;
    if (i < v166)
    {
      for (j = v14; ; j -= 6)
      {
        v31 = *(j + 4);
        if ((v31 & v22) == 1)
        {
          if (*j < v25)
          {
            break;
          }

          if (*j != v25)
          {
            goto LABEL_57;
          }
        }

        else if ((v31 | v22))
        {
          if (((v31 | v22 ^ 1) & 1) == 0)
          {
            break;
          }

LABEL_57:
          if (i >= j)
          {
            break;
          }

          continue;
        }

        if (j[2] < v26 || i >= j)
        {
          break;
        }
      }
    }

LABEL_64:
    a1 = i;
    if (i >= j)
    {
      goto LABEL_84;
    }

    v33 = j;
    a1 = i;
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, v33);
      do
      {
        while (1)
        {
          a1 += 24;
          v34 = *(a1 + 4);
          if ((v34 & v22) != 1)
          {
            break;
          }

          if (*a1 >= v25)
          {
            if (*a1 != v25)
            {
              goto LABEL_75;
            }

LABEL_74:
            if (*(a1 + 8) >= v26)
            {
              goto LABEL_75;
            }
          }
        }

        if (((v34 | v22) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      while (((v34 ^ 1) & v22) == 1);
      do
      {
        do
        {
LABEL_75:
          while (1)
          {
            v33 -= 24;
            v35 = *(v33 + 4);
            if ((v35 & v22) == 1)
            {
              break;
            }

            if (((v35 | v22) & 1) == 0)
            {
              goto LABEL_82;
            }

            if ((v35 ^ 1) & v22)
            {
              goto LABEL_83;
            }
          }

          if (*v33 < v25)
          {
            goto LABEL_83;
          }
        }

        while (*v33 != v25);
LABEL_82:
        ;
      }

      while (*(v33 + 8) >= v26);
LABEL_83:
      ;
    }

    while (a1 < v33);
LABEL_84:
    if (a1 - 24 != v7)
    {
      v36 = *(a1 - 24);
      *(v7 + 8) = *(a1 - 16);
      *v7 = v36;
      v37 = *(a1 - 8);
      *(a1 - 8) = 0;
      v38 = *(v7 + 16);
      *(v7 + 16) = v37;
    }

    *(a1 - 24) = v25;
    *(a1 - 20) = v21;
    *(a1 - 19) = v171;
    *(a1 - 17) = v177;
    *(a1 - 16) = v26;
    v39 = *(a1 - 8);
    *(a1 - 8) = v162;

    a3 = v163;
    a2 = v166;
    if (i < j)
    {
      goto LABEL_91;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *>(v7, a1 - 24);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *>(a1, v166))
    {
      if (v40)
      {
        goto LABEL_2;
      }

LABEL_91:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,false>(v7, a1 - 24, v163, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = a1 - 24;
    if (v40)
    {
      goto LABEL_351;
    }
  }

  if (v10 < 2)
  {
    goto LABEL_351;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  v59 = (a2 - 24);
  v60 = *(a2 - 20);
  v61 = *(v7 + 4);
  if (v60 == 1 && (*(v7 + 4) & 1) != 0)
  {
    if (*v59 >= *v7)
    {
      if (*v59 != *v7)
      {
        goto LABEL_351;
      }

      goto LABEL_318;
    }
  }

  else if (v60 & 1) != 0 || (*(v7 + 4))
  {
    if (*(a2 - 20) || (*(v7 + 4) & 1) == 0)
    {
      goto LABEL_351;
    }
  }

  else
  {
LABEL_318:
    if (*(a2 - 16) >= *(v7 + 8))
    {
      goto LABEL_351;
    }
  }

  v159 = *MEMORY[0x1E69E9840];

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(v7, v59);
}

void std::vector<ParameterTreeBuilder::ClumpableParam>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ParameterTreeBuilder::buildClumpedElementNodes(unsigned int,std::vector<ParameterTreeBuilder::ClumpableParam> const&)::{lambda(void)#1}::operator()(unsigned int **a1)
{
  v2 = a1[1];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clump_%d", **a1];
  outData[0] = **a1;
  outData[1] = -1;
  v14 = 0;
  ioDataSize = 16;
  Property = AudioUnitGetProperty(*(v2 + 1), 0x23u, *a1[2], 0, outData, &ioDataSize);
  v5 = v14;
  if (Property)
  {
    v6 = 1;
  }

  else
  {
    v6 = v14 == 0;
  }

  v7 = v3;
  if (!v6)
  {

    v7 = v5;
  }

  v8 = [AUParameterTree createGroupWithIdentifier:v3 name:v7 children:*a1[3]];
  [*a1[4] addObject:v8];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*a1[5]];
  v10 = a1[3];
  v11 = *v10;
  *v10 = v9;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 2);
  v3 = a1[2];
  a1[2] = 0;
  v4 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v4;
  v5 = a2[2];
  a2[2] = 0;
  v6 = a1[2];
  a1[2] = v5;

  *a2 = v9;
  *(a2 + 2) = v10;
  v7 = a2[2];
  a2[2] = v3;
  v8 = *MEMORY[0x1E69E9840];
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 4);
  v7 = *(a1 + 4);
  if (v6 == 1 && (*(a1 + 4) & 1) != 0)
  {
    if (*a2 < *a1)
    {
      goto LABEL_12;
    }

    if (*a2 != *a1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if ((v6 & 1) == 0 && (*(a1 + 4) & 1) == 0)
  {
LABEL_8:
    if (*(a2 + 8) >= *(a1 + 8))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (*(a2 + 4) || (*(a1 + 4) & 1) == 0)
  {
LABEL_17:
    if (*(a2 + 4) && *(a3 + 4))
    {
      if (*a3 < *a2)
      {
        goto LABEL_44;
      }

      if (*a3 != *a2)
      {
        return;
      }
    }

    else if (v6 & 1) != 0 || (*(a3 + 4))
    {
      if (!*(a2 + 4) || *(a3 + 4))
      {
        return;
      }

LABEL_44:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a2, a3);
      v10 = *(a2 + 4);
      v11 = *(v5 + 4);
      if (v10 == 1 && (*(v5 + 4) & 1) != 0)
      {
        if (*a2 < *v5)
        {
LABEL_59:
          a1 = v5;
          v12 = a2;
          goto LABEL_60;
        }

        if (*a2 != *v5)
        {
          return;
        }
      }

      else if (v10 & 1) != 0 || (*(v5 + 4))
      {
        if (*(a2 + 4) || (*(v5 + 4) & 1) == 0)
        {
          return;
        }

        goto LABEL_59;
      }

      if (*(a2 + 8) >= *(v5 + 8))
      {
        return;
      }

      goto LABEL_59;
    }

    if (*(a3 + 8) >= *(a2 + 8))
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_12:
  if (!*(a2 + 4) || !*(a3 + 4))
  {
    if (v6 & 1) != 0 || (*(a3 + 4))
    {
      if (*(a2 + 4) && !*(a3 + 4))
      {
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (*a3 < *a2)
  {
    goto LABEL_56;
  }

  if (*a3 == *a2)
  {
LABEL_24:
    if (*(a3 + 8) < *(a2 + 8))
    {
      goto LABEL_56;
    }
  }

LABEL_33:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, a2);
  v8 = *(a3 + 4);
  v9 = *(a2 + 4);
  if (v8 != 1 || (*(a2 + 4) & 1) == 0)
  {
    if (v8 & 1) != 0 || (*(a2 + 4))
    {
      if (*(a3 + 4) || (*(a2 + 4) & 1) == 0)
      {
        return;
      }

      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (*a3 >= *a2)
  {
    if (*a3 != *a2)
    {
      return;
    }

LABEL_40:
    if (*(a3 + 8) >= *(a2 + 8))
    {
      return;
    }
  }

LABEL_55:
  a1 = a2;
LABEL_56:
  v12 = a3;
LABEL_60:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, v12);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a2, a3);
  v8 = *(a4 + 4);
  v9 = *(a3 + 4);
  if (v8 == 1 && (*(a3 + 4) & 1) != 0)
  {
    if (*a4 < *a3)
    {
      goto LABEL_12;
    }

    if (*a4 != *a3)
    {
      return;
    }

    goto LABEL_8;
  }

  if ((v8 & 1) == 0 && (*(a3 + 4) & 1) == 0)
  {
LABEL_8:
    if (*(a4 + 8) >= *(a3 + 8))
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(a4 + 4) || (*(a3 + 4) & 1) == 0)
  {
    return;
  }

LABEL_12:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a3, a4);
  v10 = *(a3 + 4);
  v11 = *(a2 + 4);
  if (v10 == 1 && (*(a2 + 4) & 1) != 0)
  {
    if (*a3 < *a2)
    {
      goto LABEL_23;
    }

    if (*a3 != *a2)
    {
      return;
    }

    goto LABEL_19;
  }

  if ((v10 & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
LABEL_19:
    if (*(a3 + 8) >= *(a2 + 8))
    {
      return;
    }

    goto LABEL_23;
  }

  if (*(a3 + 4) || (*(a2 + 4) & 1) == 0)
  {
    return;
  }

LABEL_23:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a2, a3);
  v12 = *(a2 + 4);
  v13 = *(a1 + 4);
  if (v12 != 1 || (*(a1 + 4) & 1) == 0)
  {
    if (v12 & 1) != 0 || (*(a1 + 4))
    {
      if (*(a2 + 4) || (*(a1 + 4) & 1) == 0)
      {
        return;
      }

      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (*a2 >= *a1)
  {
    if (*a2 != *a1)
    {
      return;
    }

LABEL_30:
    if (*(a2 + 8) >= *(a1 + 8))
    {
      return;
    }
  }

LABEL_34:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, a2);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a2, a3, a4);
  v10 = *(a5 + 4);
  v11 = *(a4 + 4);
  if (v10 == 1 && (*(a4 + 4) & 1) != 0)
  {
    if (*a5 < *a4)
    {
      goto LABEL_12;
    }

    if (*a5 != *a4)
    {
      return;
    }

    goto LABEL_8;
  }

  if ((v10 & 1) == 0 && (*(a4 + 4) & 1) == 0)
  {
LABEL_8:
    if (*(a5 + 8) >= *(a4 + 8))
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(a5 + 4) || (*(a4 + 4) & 1) == 0)
  {
    return;
  }

LABEL_12:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a4, a5);
  v12 = *(a4 + 4);
  v13 = *(a3 + 4);
  if (v12 == 1 && (*(a3 + 4) & 1) != 0)
  {
    if (*a4 < *a3)
    {
      goto LABEL_23;
    }

    if (*a4 != *a3)
    {
      return;
    }

    goto LABEL_19;
  }

  if ((v12 & 1) == 0 && (*(a3 + 4) & 1) == 0)
  {
LABEL_19:
    if (*(a4 + 8) >= *(a3 + 8))
    {
      return;
    }

    goto LABEL_23;
  }

  if (*(a4 + 4) || (*(a3 + 4) & 1) == 0)
  {
    return;
  }

LABEL_23:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a3, a4);
  v14 = *(a3 + 4);
  v15 = *(a2 + 4);
  if (v14 == 1 && (*(a2 + 4) & 1) != 0)
  {
    if (*a3 < *a2)
    {
      goto LABEL_34;
    }

    if (*a3 != *a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if ((v14 & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
LABEL_30:
    if (*(a3 + 8) >= *(a2 + 8))
    {
      return;
    }

    goto LABEL_34;
  }

  if (*(a3 + 4) || (*(a2 + 4) & 1) == 0)
  {
    return;
  }

LABEL_34:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a2, a3);
  v16 = *(a2 + 4);
  v17 = *(a1 + 4);
  if (v16 != 1 || (*(a1 + 4) & 1) == 0)
  {
    if (v16 & 1) != 0 || (*(a1 + 4))
    {
      if (*(a2 + 4) || (*(a1 + 4) & 1) == 0)
      {
        return;
      }

      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (*a2 >= *a1)
  {
    if (*a2 != *a1)
    {
      return;
    }

LABEL_41:
    if (*(a2 + 8) >= *(a1 + 8))
    {
      return;
    }
  }

LABEL_45:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 24);
        v6 = *(v2 - 20);
        v7 = *(a1 + 4);
        if (v6 == 1 && (*(a1 + 4) & 1) != 0)
        {
          if (*v5 >= *a1)
          {
            if (*v5 != *a1)
            {
              return 1;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if ((v6 & 1) == 0 && (*(a1 + 4) & 1) == 0)
          {
LABEL_48:
            if (*(v2 - 16) >= *(a1 + 8))
            {
              return 1;
            }

            goto LABEL_52;
          }

          result = 1;
          if (*(v2 - 20) || (v7 & 1) == 0)
          {
            return result;
          }
        }

LABEL_52:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ParameterTreeBuilder::ClumpableParam *&,ParameterTreeBuilder::ClumpableParam *&>(a1, v5);
        return 1;
      }

      goto LABEL_14;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a1 + 24, a2 - 24);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a1 + 24, a1 + 48, a2 - 24);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
      return 1;
  }

LABEL_14:
  v8 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,ParameterTreeBuilder::ClumpableParam *,0>(a1, a1 + 24, a1 + 48);
  v9 = a1 + 72;
  if (a1 + 72 == v2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v26 = v2;
  while (1)
  {
    v12 = *(v9 + 4);
    v13 = *(v8 + 4);
    if (v12 == 1 && (*(v8 + 4) & 1) != 0)
    {
      if (*v9 < *v8)
      {
        break;
      }

      if (*v9 == *v8)
      {
LABEL_23:
        if (*(v9 + 8) < *(v8 + 8))
        {
          break;
        }

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if ((v12 & 1) == 0 && (*(v8 + 4) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (!*(v9 + 4) && (*(v8 + 4) & 1) != 0)
    {
      break;
    }

LABEL_43:
    v8 = v9;
    v10 += 24;
    v9 += 24;
    if (v9 == v2)
    {
      return 1;
    }
  }

  v14 = *v9;
  v28 = *(v9 + 5);
  v29 = *(v9 + 7);
  v15 = *(v9 + 8);
  v27 = *(v9 + 16);
  *(v9 + 16) = 0;
  *(v9 + 8) = *(v8 + 8);
  *v9 = *v8;
  v16 = *(v8 + 16);
  *(v8 + 16) = 0;
  *(v9 + 16) = v16;
  v17 = v10;
  while (1)
  {
    v18 = a1 + v17;
    v19 = *(a1 + v17 + 28);
    if (!v12 || (v19 & 1) == 0)
    {
      break;
    }

    v20 = *(v18 + 24);
    if (v14 >= v20)
    {
      if (v14 != v20)
      {
        goto LABEL_41;
      }

LABEL_35:
      if (v15 >= *(a1 + v17 + 32))
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    v8 -= 24;
    *(v18 + 48) = *(v18 + 24);
    *(v18 + 56) = *(v18 + 32);
    v21 = a1 + v17;
    v22 = *(a1 + v17 + 40);
    *(v21 + 40) = 0;
    v23 = *(a1 + v17 + 64);
    *(v21 + 64) = v22;

    v17 -= 24;
    if (v17 == -48)
    {
      v8 = a1;
      goto LABEL_41;
    }
  }

  if ((v12 & 1) == 0 && (v19 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (((v12 ^ 1) & v19) == 1)
  {
    goto LABEL_38;
  }

  v8 = a1 + v17 + 48;
LABEL_41:
  *v8 = v14;
  *(v8 + 4) = v12;
  *(v8 + 5) = v28;
  *(v8 + 7) = v29;
  *(v8 + 8) = v15;
  v24 = *(v8 + 16);
  *(v8 + 16) = v27;

  if (++v11 != 8)
  {
    v2 = v26;
    goto LABEL_43;
  }

  return v9 + 24 == v26;
}

void std::vector<AUDependentParameter>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t *std::vector<ParameterTreeBuilder::ClumpableParam>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v15[4] = v2;
    if (v11)
    {
      std::allocator<ParameterTreeBuilder::ClumpableParam>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = 24 * v8;
    v15[0] = 0;
    v15[1] = v12;
    v15[3] = 0;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v14 = a2[2];
    a2[2] = 0;
    *(v12 + 16) = v14;
    v15[2] = 24 * v8 + 24;
    std::vector<ParameterTreeBuilder::ClumpableParam>::__swap_out_circular_buffer(v2, v15);
    v7 = v2[1];
    result = std::__split_buffer<ParameterTreeBuilder::ClumpableParam>::~__split_buffer(v15);
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = a2[2];
    a2[2] = 0;
    *(v3 + 16) = v6;
    v7 = v3 + 24;
  }

  v2[1] = v7;
  return result;
}

void std::allocator<ParameterTreeBuilder::ClumpableParam>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ParameterTreeBuilder::ClumpableParam>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 8) = *(v7 + 2);
      *v8 = v9;
      v10 = v7[2];
      v7[2] = 0;
      *(v8 + 16) = v10;
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {

      v4 += 3;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<ParameterTreeBuilder::ClumpableParam>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_18F8275D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUAudioUnitV2Bridge_Renderer::prepareHostCallbacks(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _Block_copy(a2);
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;

  v8 = _Block_copy(v5);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  if (a2 | v5)
  {
    *&v11 = a1;
    *(&v11 + 1) = AUAudioUnitV2Bridge_Renderer::beatAndTempoProc;
    *&v12 = AUAudioUnitV2Bridge_Renderer::musicalTimeLocationProc;
    *(&v12 + 1) = AUAudioUnitV2Bridge_Renderer::transportStateProc;
    v13 = AUAudioUnitV2Bridge_Renderer::transportStateProc2;
  }

  return AudioUnitSetProperty(*a1, 0x1Bu, 0, 0, &v11, 0x28u);
}

uint64_t AUAudioUnitV2Bridge_Renderer::transportStateProc2(AUAudioUnitV2Bridge_Renderer *this, BOOL *a2, BOOL *a3, unsigned __int8 *a4, unsigned __int8 *a5, double *a6, unsigned __int8 *a7, double *a8, double *a9)
{
  v15 = 0;
  v9 = *(this + 3);
  if (!v9 || !(*(v9 + 16))(v9, &v15, a5, a7, a8))
  {
    return 4294956433;
  }

  if (a2)
  {
    *a2 = (v15 & 2) != 0;
  }

  if (a3)
  {
    *a3 = (v15 & 4) != 0;
  }

  if (a4)
  {
    *a4 = v15 & 1;
  }

  result = 0;
  if (a6)
  {
    *a6 = (v15 & 8) != 0;
  }

  return result;
}

uint64_t AUAudioUnitV2Bridge_Renderer::musicalTimeLocationProc(AUAudioUnitV2Bridge_Renderer *this, _DWORD *a2, float *a3, float *a4, unsigned int *a5, double *a6)
{
  v13 = 4;
  v14 = 4.0;
  v12 = 0;
  v6 = *(this + 2);
  if (!v6 || !(*(v6 + 16))(v6, 0, &v14, &v13, 0, &v12, a5))
  {
    return 4294956433;
  }

  if (a3)
  {
    v10 = v14;
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v13;
  }

  result = 0;
  if (a2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t AUAudioUnitV2Bridge_Renderer::beatAndTempoProc(AUAudioUnitV2Bridge_Renderer *this, void *a2, double *a3, double *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 4294956433;
  }

  if ((*(v4 + 16))(v4, a3, 0, 0, a2, 0, 0))
  {
    return 0;
  }

  return 4294956433;
}

void sub_18F827AE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18F827BAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _auV2midiOutCallback(void *a1, const AudioTimeStamp *a2, unsigned __int8 a3, const MIDIPacketList *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = _Block_copy(a1);
  numPackets = a4->numPackets;
  if (a4->numPackets)
  {
    packet = a4->packet;
    while (1)
    {
      v10 = (*(v7 + 2))(v7, (a2->mSampleTime + *packet), a3, *(packet + 8), packet + 10);
      if (v10)
      {
        break;
      }

      packet = (packet + 10 + *(packet + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if (!--numPackets)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

uint64_t ___ZN28AUAudioUnitV2Bridge_Renderer11renderBlockEv_block_invoke(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, uint64_t inOutputBusNumber, AudioBufferList *a6, uint64_t *a7, uint64_t a8)
{
  v9 = inOutputBusNumber;
  v31 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 32);
  if (inOutputBusNumber)
  {
    goto LABEL_27;
  }

  v14 = a7;
  ioData = a6;
  if (!a7)
  {
    goto LABEL_26;
  }

  v15 = 0;
  mSampleTime = inTimeStamp->mSampleTime;
  do
  {
    while (1)
    {
      v17 = *(v14 + 16);
      if (v17 > 8)
      {
        break;
      }

      if (v17 - 1 >= 2)
      {
        if (v17 == 8)
        {
          MusicDeviceMIDIEvent(*v13, *(v14 + 21), *(v14 + 22), *(v14 + 23), *(v14 + 2) - mSampleTime);
        }

        goto LABEL_20;
      }

      v18 = &inParameterEvent[v15];
      v19 = v14[3];
      v20 = v19 >> 61;
      v21 = HIDWORD(v19) & 0x1FFFFFFF;
      v18->scope = v19 >> 61;
      v18->element = v21;
      v18->parameter = v19;
      v22 = *(v14 + 16);
      if (v22 == 2)
      {
        v18->eventType = kParameterEvent_Ramped;
        v18->eventValues.ramp.startBufferOffset = *(v14 + 2) - mSampleTime;
        v18->eventValues.ramp.durationInFrames = *(v14 + 5);
        v24 = *(v14 + 8);
        v18->eventValues.ramp.startValue = v24;
        v18->eventValues.ramp.endValue = v24;
        AudioUnitGetParameter(*v13, v19, v20, v21, &v18->eventValues.ramp.startValue);
      }

      else if (v22 == 1)
      {
        if (*(v14 + 9))
        {
          v23 = v14[1];
          if (v23 >> 28 != 0xFFFFFFFE0)
          {
            std::terminate();
          }

          AudioUnitSetParameter(*v13, v19, v20, v21, *(v14 + 8), v23);
          goto LABEL_20;
        }

        v18->eventType = kParameterEvent_Immediate;
        v18->eventValues.ramp.startBufferOffset = *(v14 + 2) - mSampleTime;
        v18->eventValues.ramp.durationInFrames = *(v14 + 8);
      }

      if (++v15 != 16)
      {
        goto LABEL_20;
      }

      AudioUnitScheduleParameters(*v13, inParameterEvent, 0x10u);
      v15 = 0;
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    if (v17 == 9)
    {
      MusicDeviceSysEx(*v13, v14 + 21, *(v14 + 9));
    }

    else if (v17 == 10)
    {
      MusicDeviceMIDIEventList(*v13, *(v14 + 2) - mSampleTime, (v14 + 20));
    }

LABEL_20:
    v14 = *v14;
  }

  while (v14);
  if (v15 > 0)
  {
    AudioUnitScheduleParameters(*v13, inParameterEvent, v15);
  }

LABEL_26:
  a6 = ioData;
LABEL_27:
  if ((*(ioActionFlags + 1) & 0x80) != 0)
  {
    v28 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    *(v13 + 8) = a8;
    v25 = *v13;
    v26 = *MEMORY[0x1E69E9840];

    return AudioUnitRender(v25, ioActionFlags, inTimeStamp, v9, inNumberFrames, a6);
  }
}

void sub_18F828280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AUAudioUnitV2Bridge;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18F828528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZ42__AUAudioUnitV2Bridge_invalidateAudioUnit_E3__6EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = AUListenerDispose(*(**v1 + 592));
  *(**v1 + 592) = 0;
  return result;
}

void ParameterListPropertyListener(void *a1, OpaqueAudioComponentInstance *a2, int a3)
{
  v4 = a1;
  objc_initWeak(&location, v4);
  v5 = [v4 scheduledParameterRefresher];
  objc_copyWeak(&to, &location);
  v8 = a3;
  if (*MEMORY[0x1E69E3C08])
  {
    v6 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v6 + 16) = 0;
    *v6 = &unk_1F0334748;
    *(v6 + 8) = 0;
    objc_moveWeak((v6 + 24), &to);
    *(v6 + 32) = v8;
    *v6 = &unk_1F0334720;
    caulk::concurrent::messenger::enqueue((v5 + 128), v6);
    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }

  else
  {
    __break(1u);
  }
}

void sub_18F82871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  caulk::concurrent::details::message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::perform(a1);
  return caulk::concurrent::details::rt_message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void sub_18F828768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  caulk::concurrent::details::rt_message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::perform(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (WeakRetained)
  {
    [WeakRetained _invalidateParameterTree:*(a1 + 32)];
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  objc_destroyWeak(*a1 + 3);
  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::~rt_message_call(id *a1)
{
  objc_destroyWeak(a1 + 3);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x193ADF220);
}

{
  objc_destroyWeak(a1 + 3);

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::message_call<ParameterListPropertyListener(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int)::$_0>::~message_call(id *a1)
{
  objc_destroyWeak(a1 + 3);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x193ADF220);
}

{
  objc_destroyWeak(a1 + 3);

  caulk::concurrent::message::~message(a1);
}

void ElementCountPropertyListener(void *a1, OpaqueAudioComponentInstance *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 - 1) <= 1)
  {
    [v6 _rebuildBusses:a4];
    [v6 _invalidateParameterTree:a3];
  }
}

void sub_18F828D28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIZ48__AUAudioUnitV2Bridge__invalidateParameterTree__E3__5EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  addOrRemoveParameterListeners(*(**v1 + 77), *(**v1 + 74), *(**v1 + 81), 0);
  objc_storeStrong(**v1 + 81, *v1[1]);
  v2 = **v1;
  v3 = *(v2 + 77);
  v4 = *(v2 + 74);
  v5 = *v1[1];

  addOrRemoveParameterListeners(v3, v4, v5, 1);
}

void sub_18F8292B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN10applesauce8dispatch2v19sync_implIZ45__AUAudioUnitV2Bridge__buildNewParameterTree_E3__3EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*v1[1] _createParameterTree];
  v3 = **v1;
  **v1 = v2;

  v4 = *(*v1[1] + 81);
  if (v4 && parameterNodesEqual(**v1, v4, v1[2]))
  {
    v5 = **v1;
    **v1 = 0;
  }
}

uint64_t parameterNodesEqual(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 identifier];
  v8 = [v6 identifier];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v9 isEqualToString:v10];
  }

  else
  {
    v12 = v9 == v10;
  }

  if (v12)
  {
    v13 = [v5 displayName];
    v14 = [v6 displayName];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (v15 && v16)
    {
      v18 = [v15 isEqualToString:v16];
    }

    else
    {
      v18 = v15 == v16;
    }

    if (v18)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      if (((isKindOfClass ^ objc_opt_isKindOfClass()) & 1) == 0)
      {
        if (isKindOfClass)
        {
          v22 = [v5 children];
          v23 = [v6 children];
          v24 = [v22 count];
          if (v24 == [v23 count])
          {
            v25 = [v23 count];
            if (v25)
            {
              v26 = 0;
              do
              {
                v27 = [v22 objectAtIndexedSubscript:v26];
                v28 = [v23 objectAtIndexedSubscript:v26];
                v29 = parameterNodesEqual(v27, v28, a3);

                if ((v29 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              while (v25 != ++v26);
            }

LABEL_20:
            v20 = 1;
LABEL_30:

            goto LABEL_13;
          }
        }

        else
        {
          v22 = v5;
          v23 = v6;
          [v22 minValue];
          v31 = v30;
          [v23 minValue];
          if (v31 == v32)
          {
            [v22 maxValue];
            v34 = v33;
            [v23 maxValue];
            if (v34 == v35)
            {
              v36 = [v22 unit];
              if (v36 == [v23 unit])
              {
                v37 = [v22 flags];
                if (v37 == [v23 flags])
                {
                  v38 = [v22 address];
                  if (v38 == [v23 address])
                  {
                    v39 = [v22 unitName];
                    v40 = [v23 unitName];
                    v41 = equalStrings(v39, v40);

                    if (v41)
                    {
                      [v22 value];
                      v43 = v42;
                      [v23 value];
                      if (v43 != v44)
                      {
                        v45 = [v22 address];
                        std::vector<unsigned long long>::emplace_back<unsigned long long>(a3, &v45);
                      }

                      goto LABEL_20;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_29:
        v20 = 0;
        goto LABEL_30;
      }
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

uint64_t equalStrings(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [(NSString *)v3 isEqualToString:v4];
  }

  else
  {
    v6 = v3 == v4;
  }

  return v6;
}

void std::vector<unsigned long long>::emplace_back<unsigned long long>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (8 * (v8 >> 3));
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

uint64_t AUAudioUnitV2Bridge_Renderer::renderInputProc(AUAudioUnitV2Bridge_Renderer *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, uint64_t a6, AudioBufferList *a7)
{
  v7 = *(this + 1);
  if (v7)
  {
    return (*(v7 + 16))(v7, a2, a3, a5, a4, a6, a7);
  }

  else
  {
    return 4294956420;
  }
}

void sub_18F829DF4(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::__unordered_map_hasher<long,std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>>>::__deallocate_node(id *a1)
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

uint64_t AUHALOutputUnit_InputAvailableCallback(void (**a1)(void, void, void, void, void, void), unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  if (a1)
  {
    (a1)[2](a1, a2, a3, a5, a4, a6);
  }

  return 0;
}

uint64_t AUHALOutputUnit_ProvideOutputCallback(uint64_t (**a1)(void, void, void, void, void, void), unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  if (a1)
  {
    return (a1)[2](a1, a2, a3, a5, 0, a6);
  }

  else
  {
    return 4294956420;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

uint64_t AUHALOutputUnit_RenderNotifyCallback(void *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  v10 = _Block_copy(a1);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, *a2, a3, a5, a4);
  }

  return 0;
}

void sub_18F82ACD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,void({block_pointer} {__strong})(unsigned int,AudioTimeStamp const*,unsigned int,long)>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t MP4GASpecificConfig::Serialize(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 20), 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 21), 1u);
  if (*(a1 + 21) == 1)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 24), 0xEu);
  }

  v4 = *(a1 + 28);
  if (*(a1 + 8) != 23)
  {
    goto LABEL_6;
  }

  if (*(a1 + 28))
  {
    v4 = 1;
LABEL_6:
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v4, 1u);
    if (!*(a1 + 16))
    {
      MP4AudioProgramConfig::Serialize(a1 + 32, a2);
    }

    if (*(a1 + 28) == 1)
    {
      v5 = *(a1 + 8);
      if (v5 == 22)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 1136), 5u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 1140), 0xBu);
        v5 = *(a1 + 8);
      }

      if (v5 == 23 || v5 == 17)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 1144) >> 1, 3u);
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 1144) & 1, 1u);
    }

    result = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "MP4GASpecificConfig.cpp";
    v10 = 1024;
    v11 = 128;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4GASpecificConfig::Serialize: extension flag must be set", &v8, 0x12u);
  }

  result = 4294967090;
LABEL_16:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4GASpecificConfig::SerializeCount(MP4GASpecificConfig *this, char a2)
{
  if (*(this + 21))
  {
    v3 = 17;
  }

  else
  {
    v3 = 3;
  }

  if (!*(this + 4))
  {
    v3 += MP4AudioProgramConfig::SerializeCount((this + 32), v3 + a2);
  }

  v4 = *(this + 2);
  if (v4 == 20 || v4 == 6)
  {
    result = v3 + 3;
  }

  else
  {
    result = v3;
  }

  if (*(this + 28) == 1)
  {
    v7 = result + 16;
    if (v4 != 22)
    {
      v7 = result;
    }

    if (v4 == 23 || v4 == 17)
    {
      v7 = result + 3;
    }

    return (v7 + 1);
  }

  return result;
}

uint64_t MP4GASpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  *(a1 + 20) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 21) = Bit != 0;
  if (Bit)
  {
    v5 = *(a2 + 16);
    v6 = v5 >> 18;
    v7 = *(a2 + 20) - 14;
    *(a2 + 20) = v7;
    if (v7 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v10 = *(a2 + 16);
      v9 = *(a2 + 20);
      v6 |= v10 >> v9;
      *(a2 + 20) = v9 + 32;
      if (v9 == -32)
      {
        v8 = 0;
      }

      else
      {
        v8 = v10 << -v9;
      }
    }

    else
    {
      v8 = v5 << 14;
    }

    *(a2 + 16) = v8;
    *(a1 + 24) = v6;
  }

  *(a1 + 28) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
  if (*(a1 + 16))
  {
    bzero((a1 + 32), 0x44CuLL);
    v11 = *(a1 + 12);
    *(a1 + 36) = 1;
    *(a1 + 40) = v11;
LABEL_11:
    v12 = *(a1 + 8);
    if (v12 == 20 || v12 == 6)
    {
      v13 = *(a2 + 16);
      v14 = v13 >> 29;
      v15 = *(a2 + 20) - 3;
      *(a2 + 20) = v15;
      if (v15 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v18 = *(a2 + 16);
        v17 = *(a2 + 20);
        v14 |= v18 >> v17;
        *(a2 + 20) = v17 + 32;
        if (v17 == -32)
        {
          v16 = 0;
        }

        else
        {
          v16 = v18 << -v17;
        }
      }

      else
      {
        v16 = 8 * v13;
      }

      *(a2 + 16) = v16;
      *(a1 + 1132) = v14;
    }

    if (*(a1 + 28) != 1)
    {
      result = 0;
      goto LABEL_46;
    }

    v20 = *(a1 + 8);
    if (v20 != 22)
    {
      goto LABEL_37;
    }

    v21 = *(a2 + 16);
    v22 = v21 >> 27;
    v23 = *(a2 + 20) - 5;
    *(a2 + 20) = v23;
    if (v23 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v25 = (*a2 + 4);
      *a2 = v25;
      v27 = *(a2 + 16);
      v26 = *(a2 + 20);
      v22 |= v27 >> v26;
      v23 = v26 + 32;
      if (v26 == -32)
      {
        v28 = 0;
        *(a1 + 1136) = v22;
        *(a2 + 16) = 0xFFFFFFF500000000;
        goto LABEL_33;
      }

      v24 = v27 << -v26;
    }

    else
    {
      v24 = 32 * v21;
    }

    *(a1 + 1136) = v22;
    v28 = v24 >> 21;
    v29 = v23 - 11;
    *(a2 + 16) = v24;
    *(a2 + 20) = v29;
    if (v29 >= 0)
    {
      v30 = v24 << 11;
LABEL_36:
      *(a2 + 16) = v30;
      *(a1 + 1140) = v28;
      v20 = *(a1 + 8);
LABEL_37:
      if (v20 == 23 || v20 == 17)
      {
        v33 = *(a2 + 16);
        v34 = v33 >> 29;
        v35 = *(a2 + 20) - 3;
        *(a2 + 20) = v35;
        if (v35 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v38 = *(a2 + 16);
          v37 = *(a2 + 20);
          v34 |= v38 >> v37;
          *(a2 + 20) = v37 + 32;
          if (v37 == -32)
          {
            v36 = 0;
          }

          else
          {
            v36 = v38 << -v37;
          }
        }

        else
        {
          v36 = 8 * v33;
        }

        *(a2 + 16) = v36;
        *(a1 + 1144) = 2 * v34;
      }

      v39 = TBitstreamReader<unsigned int>::GetBit(a2);
      result = 0;
      *(a1 + 1144) |= v39;
      goto LABEL_46;
    }

    v25 = *a2;
LABEL_33:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v25);
    *a2 += 4;
    v32 = *(a2 + 16);
    v31 = *(a2 + 20);
    v28 |= v32 >> v31;
    *(a2 + 20) = v31 + 32;
    if (v31 == -32)
    {
      v30 = 0;
    }

    else
    {
      v30 = v32 << -v31;
    }

    goto LABEL_36;
  }

  MP4AudioProgramConfig::Deserialize((a1 + 32), a2);
  if (*(a1 + 40) == *(a1 + 12))
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = 136315394;
    v42 = "MP4GASpecificConfig.cpp";
    v43 = 1024;
    v44 = 35;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4GASpecificConfig::Deserialize: the Program sampleRate is incorrect", &v41, 0x12u);
  }

  result = 4294967090;
LABEL_46:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}