void sub_23990AA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, void *a21)
{
  if (v22)
  {
    operator delete(v22);
    if (!v21)
    {
LABEL_3:
      v25 = a21;
      if (!a21)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  v25 = a21;
  if (!a21)
  {
LABEL_4:
    v26 = *(v23 - 104);
    if (!v26)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v25);
  v26 = *(v23 - 104);
  if (!v26)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v26);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23990B1F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return objc_msgSend_userCompletedHandlerWithCommandBuffer_(v7, v4, v8, v5, v6);
  }

  return result;
}

uint64_t sub_23990B248(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_error(a2, a2, a3, a4, a5);
  if (objc_msgSend_code(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_error(a2, v12, v13, v14, v15);
    v21 = objc_msgSend_code(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_error(a2, v22, v23, v24, v25);
    v31 = objc_msgSend_domain(v26, v27, v28, v29, v30);
    NSLog(&cfstr_CommandbufferF.isa, v21, v31);
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 40);

  return objc_msgSend_aggregatePerfSamplesForCommandBuffer_firstCommandBuffer_(v32, v12, a2, v33, v15);
}

void sub_23990B468(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23990B4C4(exception, a1);
  __cxa_throw(exception, &unk_284C650F8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_23990B4C4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_23990B4F8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_284C650E0, MEMORY[0x277D82620]);
}

void sub_23990B52C(uint64_t a1, char *__dst, _BYTE *__src, unint64_t a4, uint64_t a5)
{
  v5 = a5 - 1;
  if (a5 < 1)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_23990B450();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_23990B4F8();
    }

    v47 = (__dst - v11);
    v48 = 4 * ((__dst - v11) >> 2);
    v49 = (v48 + 4 * a5);
    v50 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v5 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x7FFFFFFFFFFFFFF8;
      v51 = (v48 + 4 * v60);
      v52 = &__src[4 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 8;
      }

      while (v63);
      if (v59 == v60)
      {
LABEL_42:
        v54 = *(a1 + 8) - __dst;
        memcpy((v48 + 4 * a5), __dst, v54);
        v55 = v49 + v54;
        *(a1 + 8) = __dst;
        v56 = *a1;
        v57 = &__dst[-*a1];
        v58 = v48 - v57;
        memcpy((v48 - v57), *a1, v57);
        *a1 = v58;
        *(a1 + 8) = v55;
        *(a1 + 16) = 0;
        if (v56)
        {

          operator delete(v56);
        }

        return;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 4;
      *v51++ = v53;
    }

    while (v51 != v49);
    goto LABEL_42;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v15 = 4 * a5;
    v34 = &__dst[4 * a5];
    v35 = (v10 - 4 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_65;
      }

      v40 = (v37 >> 2) + 1;
      v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 8;
      }

      while (v44);
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_65:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v34);
    }

    goto LABEL_57;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 4 * a5;
    v22 = &__dst[4 * a5];
    v23 = &v20[-4 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &__dst[a4] - &__src[v21] + 4;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - __dst;
      v26 = (v10 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_66;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_66;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&__dst[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_66:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v22);
    }

    if (v10 != __dst)
    {
LABEL_57:

      memmove(__dst, __src, v15);
    }
  }
}

uint64_t sub_23990D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v15 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x3FFFuLL, v9, &a9);
  if (qword_27DF851D0 == -1)
  {
    v10 = qword_27DF851C8;
    if (!qword_27DF851C8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_27DF851D0, &unk_284C65078);
  v10 = qword_27DF851C8;
  if (qword_27DF851C8)
  {
LABEL_3:
    v10 = dlsym(v10, "ATFLogInfo");
  }

LABEL_4:
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_23990D52C;
  }

  off_2814650E0 = v11;
  result = (v11)("%s", __str);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23990D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v15 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x3FFFuLL, v9, &a9);
  if (qword_27DF851D0 == -1)
  {
    v10 = qword_27DF851C8;
    if (!qword_27DF851C8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_27DF851D0, &unk_284C65078);
  v10 = qword_27DF851C8;
  if (qword_27DF851C8)
  {
LABEL_3:
    v10 = dlsym(v10, "ATFLogError");
  }

LABEL_4:
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = sub_23990D5C8;
  }

  off_2814650E8 = v11;
  result = (v11)("%s", __str);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23990D314()
{
  if (qword_27DF851D0 == -1)
  {
    v0 = qword_27DF851C8;
    if (!qword_27DF851C8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_27DF851D0, &unk_284C65078);
  v0 = qword_27DF851C8;
  if (qword_27DF851C8)
  {
LABEL_3:
    v0 = dlsym(v0, "ATFStartCaptureScope");
  }

LABEL_4:
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = sub_23990D664;
  }

  off_2814650D8 = v1;

  return v1();
}

uint64_t sub_23990D3C4()
{
  if (qword_27DF851D0 == -1)
  {
    v0 = qword_27DF851C8;
    if (!qword_27DF851C8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_27DF851D0, &unk_284C65078);
  v0 = qword_27DF851C8;
  if (qword_27DF851C8)
  {
LABEL_3:
    v0 = dlsym(v0, "ATFEndCaptureScope");
  }

LABEL_4:
  if (!v0)
  {
    v0 = sub_23990D66C;
  }

  off_2814650F8 = v0;

  return (v0)();
}

uint64_t sub_23990D450()
{
  if (qword_27DF851D0 == -1)
  {
    v0 = qword_27DF851C8;
    if (!qword_27DF851C8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_27DF851D0, &unk_284C65078);
  v0 = qword_27DF851C8;
  if (qword_27DF851C8)
  {
LABEL_3:
    v0 = dlsym(v0, "ATFGetEnvironmentVariable");
  }

LABEL_4:
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = j__getenv;
  }

  off_2814650F0 = v1;

  return v1();
}

void *sub_23990D500()
{
  result = dlopen("/System/Library/Frameworks/ATF.framework/ATF", 5);
  qword_27DF851C8 = result;
  return result;
}

uint64_t sub_23990D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v13 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x3FFFuLL, v9, &a9);
  result = printf("%s", __str);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23990D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v13 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x3FFFuLL, v9, &a9);
  result = printf("%s", __str);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23990E3B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return objc_msgSend_userCompletedHandlerWithCommandBuffer_(v7, v4, v8, v5, v6);
  }

  return result;
}

void sub_23990E40C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_error(*(a1 + 32), a2, a3, a4, a5);
  if (objc_msgSend_code(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_error(*(a1 + 32), v11, v12, v13, v14);
    v20 = objc_msgSend_code(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_error(*(a1 + 32), v21, v22, v23, v24);
    v30 = objc_msgSend_domain(v25, v26, v27, v28, v29);
    NSLog(&cfstr_CommandbufferF.isa, v20, v30);
  }
}

void sub_23990F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23990F3E4(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(result + 32);
  if (*(v9 + 59) == 1)
  {
    v34 = v8;
    v35 = v7;
    v36 = v5;
    v37 = v6;
    v10 = result;
    v11 = objc_msgSend_currentAllocatedSize(*(v9 + 8), a2, a3, a4, a5);
    v16 = objc_msgSend_GPUMemory(*(*(*(v10 + 40) + 8) + 40), v12, v13, v14, v15);
    objc_msgSend_addValue_(v16, v17, v18, v19, v20, v11);
    task_info_outCnt = 40;
    task_info(*MEMORY[0x277D85F48], 0x12u, task_info_out, &task_info_outCnt);
    v21 = v33;
    v26 = objc_msgSend_SystemResidentMemory(*(*(*(v10 + 40) + 8) + 40), v22, v23, v24, v25);
    return objc_msgSend_addValue_(v26, v27, v28, v29, v30, v21);
  }

  return result;
}

void sub_23990F490(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1[6] + 8) + 40) = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], a2, a3, a4, a5);
  v10 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v6, v7, v8, v9);
  *(*(a1[7] + 8) + 24) = objc_msgSend_getCFRunLoop(v10, v11, v12, v13, v14);
  objc_msgSend_addTimer_forMode_(*(*(a1[6] + 8) + 40), v15, a1[4], *MEMORY[0x277CBE640], v16);
  dispatch_semaphore_signal(*(a1[5] + 48));

  CFRunLoopRun();
}

uint64_t sub_23990F51C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_aggregatePerfSamplesForCommandBuffer_firstCommandBuffer_(*(*(a1 + 32) + 40), a2, a2, *(a1 + 40), a5);
  dispatch_semaphore_signal(*(a1 + 48));
  Current = CFAbsoluteTimeGetCurrent();
  v7 = Current - *(*(*(a1 + 88) + 8) + 24);
  v12 = objc_msgSend_WallClockTime(*(a1 + 56), v8, v9, v10, v11);
  objc_msgSend_addSumOfNValues_n_(v12, v13, *(a1 + 96), v14, v15, v7);
  *(*(*(a1 + 88) + 8) + 24) = Current;
  v20 = objc_msgSend_error(*(a1 + 64), v16, v17, v18, v19);
  if (objc_msgSend_code(v20, v21, v22, v23, v24))
  {
    v29 = objc_msgSend_error(*(a1 + 64), v25, v26, v27, v28);
    v34 = objc_msgSend_code(v29, v30, v31, v32, v33);
    v39 = objc_msgSend_error(*(a1 + 64), v35, v36, v37, v38);
    v44 = objc_msgSend_domain(v39, v40, v41, v42, v43);
    NSLog(&cfstr_CommandbufferF.isa, v34, v44);
  }

  v45 = *(a1 + 72);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_userCompletedHandlerWithCommandBuffer_(*(a1 + 72), v46, *(a1 + 64), v48, v49);
  }

  v54 = objc_msgSend_profilingResults(*(a1 + 64), v46, v47, v48, v49);
  v55 = *(a1 + 80);
  if (v55)
  {
    v56 = objc_msgSend_profilingResults(v55, v50, v51, v52, v53);
  }

  else
  {
    v56 = 0;
  }

  v57 = objc_msgSend_valueForKey_(v54, v50, *MEMORY[0x277CD6930], v52, v53);
  v65 = objc_msgSend_unsignedLongLongValue(v57, v58, v59, v60, v61);
  if (*(a1 + 80))
  {
    v66 = objc_msgSend_valueForKey_(v56, v62, *MEMORY[0x277CD6948], v63, v64);
    v71 = objc_msgSend_unsignedLongLongValue(v66, v67, v68, v69, v70);
  }

  else
  {
    v71 = 0;
  }

  v72 = objc_msgSend_valueForKey_(v54, v62, *MEMORY[0x277CD6950], v63, v64);
  v81 = objc_msgSend_unsignedLongLongValue(v72, v73, v74, v75, v76) - v65;
  v82 = *&qword_27DF851B8;
  if (*&qword_27DF851B8 == 0.0)
  {
    if (!mach_timebase_info(&info))
    {
      LODWORD(v83) = info.numer;
      LODWORD(v84) = info.denom;
      v82 = v83 * 0.000000001 / v84;
      qword_27DF851B8 = *&v82;
      v85 = v82 * v81;
      if (*(a1 + 80))
      {
        goto LABEL_15;
      }

LABEL_20:
      v89 = 0.0;
      v90 = v85;
      goto LABEL_25;
    }

    v82 = *&qword_27DF851B8;
  }

  v85 = v82 * v81;
  if (!*(a1 + 80))
  {
    goto LABEL_20;
  }

LABEL_15:
  v86 = v71 - v65;
  if (v86 < 1)
  {
    v89 = 0.0;
  }

  else
  {
    if (v82 == 0.0)
    {
      if (mach_timebase_info(&info))
      {
        v82 = *&qword_27DF851B8;
      }

      else
      {
        LODWORD(v87) = info.numer;
        LODWORD(v88) = info.denom;
        v82 = v87 * 0.000000001 / v88;
        qword_27DF851B8 = *&v82;
      }
    }

    v89 = v82 * v86;
  }

  objc_msgSend_GPUStartTime(*(a1 + 64), v77, v78, v79, v80);
  v92 = v91;
  objc_msgSend_GPUEndTime(*(a1 + 80), v93, v94, v95, v96);
  v90 = v92 - v97;
LABEL_25:
  v98 = objc_msgSend_QueueTime(*(a1 + 56), v77, v78, v79, v80);
  objc_msgSend_addSumOfNValues_n_(v98, v99, *(a1 + 96), v100, v101, v85);
  v106 = objc_msgSend_GPUTime(*(a1 + 56), v102, v103, v104, v105);
  objc_msgSend_GPUEndTime(*(a1 + 64), v107, v108, v109, v110);
  v112 = v111;
  objc_msgSend_GPUStartTime(*(a1 + 40), v113, v114, v115, v116);
  objc_msgSend_addSumOfNValues_n_(v106, v118, *(a1 + 96), v119, v120, v112 - v117);
  v125 = objc_msgSend_GPUWaitTime(*(a1 + 56), v121, v122, v123, v124);
  objc_msgSend_addSumOfNValues_n_(v125, v126, *(a1 + 96), v127, v128, v90);
  CommandBufferWaitTime = objc_msgSend_PrevCommandBufferWaitTime(*(a1 + 56), v129, v130, v131, v132);
  v137 = *(a1 + 96);

  return objc_msgSend_addSumOfNValues_n_(CommandBufferWaitTime, v134, v137, v135, v136, v89);
}

void sub_2399101B0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_239910260(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(result + 32);
  if (*(v9 + 59) == 1)
  {
    v34 = v8;
    v35 = v7;
    v36 = v5;
    v37 = v6;
    v10 = result;
    v11 = objc_msgSend_currentAllocatedSize(*(v9 + 8), a2, a3, a4, a5);
    v16 = objc_msgSend_GPUMemory(*(*(*(v10 + 40) + 8) + 40), v12, v13, v14, v15);
    objc_msgSend_addValue_(v16, v17, v18, v19, v20, v11);
    task_info_outCnt = 40;
    task_info(*MEMORY[0x277D85F48], 0x12u, task_info_out, &task_info_outCnt);
    v21 = v33;
    v26 = objc_msgSend_SystemResidentMemory(*(*(*(v10 + 40) + 8) + 40), v22, v23, v24, v25);
    return objc_msgSend_addValue_(v26, v27, v28, v29, v30, v21);
  }

  return result;
}

void sub_23991030C(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1[6] + 8) + 40) = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], a2, a3, a4, a5);
  v10 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v6, v7, v8, v9);
  *(*(a1[7] + 8) + 24) = objc_msgSend_getCFRunLoop(v10, v11, v12, v13, v14);
  objc_msgSend_addTimer_forMode_(*(*(a1[6] + 8) + 40), v15, a1[4], *MEMORY[0x277CBE640], v16);
  dispatch_semaphore_signal(*(a1[5] + 48));

  CFRunLoopRun();
}

uint64_t sub_239910398(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_GPUStartTime(*(a1 + 32), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = v7;
  return result;
}

void sub_2399103CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  if (!(v4 % *(*(a1 + 32) + 64)) || v4 >= *(a1 + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *(*(a1 + 32) + 64);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = v10;
    if (v12 <= v11 && v12 != v10)
    {
      v14 = v12 - v11 / v10 * v10;
      if (v10 >= v14)
      {
        v13 = v14;
      }

      else
      {
        v13 = *(*(a1 + 32) + 64);
      }
    }

    v15 = (v10 + 4) / v10 * v10;
    if (*(a1 + 88))
    {
      v15 = 0;
    }

    if (v11 > v15)
    {
      v16 = Current - *(*(*(a1 + 56) + 8) + 24);
      v17 = objc_msgSend_WallClockTime(*(a1 + 40), v5, v6, v7, v8);
      objc_msgSend_addSumOfNValues_n_(v17, v18, *(a1 + 80) * v13, v19, v20, v16);
    }

    *(*(*(a1 + 56) + 8) + 24) = Current;
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v25 = objc_msgSend_error(a2, v21, v22, v23, v24);
  if (objc_msgSend_code(v25, v26, v27, v28, v29))
  {
    v34 = objc_msgSend_error(a2, v30, v31, v32, v33);
    v39 = objc_msgSend_code(v34, v35, v36, v37, v38);
    v44 = objc_msgSend_error(a2, v40, v41, v42, v43);
    v49 = objc_msgSend_domain(v44, v45, v46, v47, v48);
    NSLog(&cfstr_CommandbufferF.isa, v39, v49);
  }
}

uint64_t sub_2399104FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_GPUEndTime(*(a1 + 32), a2, a3, a4, a5);
  *(*(*(a1 + 56) + 8) + 24) = v7;
  v8 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_userCompletedHandlerWithCommandBuffer_(*(a1 + 40), v9, a2, v11, v12);
  }

  v13 = objc_msgSend_GPUTime(*(a1 + 48), v9, v10, v11, v12);
  v17 = *(*(*(a1 + 56) + 8) + 24) - *(*(*(a1 + 64) + 8) + 24);
  v18 = *(a1 + 72);

  return objc_msgSend_addSumOfNValues_n_(v13, v14, v18, v15, v16, v17);
}

void sub_239910A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_239910AE8(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(result + 32);
  if (*(v9 + 59) == 1)
  {
    v33 = v8;
    v34 = v7;
    v35 = v5;
    v36 = v6;
    v10 = result;
    v11 = objc_msgSend_currentAllocatedSize(*(v9 + 8), a2, a3, a4, a5);
    v16 = objc_msgSend_GPUMemory(*(*(*(v10 + 40) + 8) + 40), v12, v13, v14, v15);
    objc_msgSend_addValue_(v16, v17, v18, v19, v20, v11);
    task_info_outCnt = 40;
    task_info(*MEMORY[0x277D85F48], 0x12u, task_info_out, &task_info_outCnt);
    v25 = objc_msgSend_SystemResidentMemory(*(*(*(v10 + 40) + 8) + 40), v21, v22, v23, v24);
    return objc_msgSend_addValue_(v25, v26, v27, v28, v29, v32);
  }

  return result;
}

__n128 sub_239910B90(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_239910BA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_error(a2, a2, a3, a4, a5);
  if (objc_msgSend_code(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_error(a2, v12, v13, v14, v15);
    v21 = objc_msgSend_code(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_error(a2, v22, v23, v24, v25);
    v31 = objc_msgSend_domain(v26, v27, v28, v29, v30);
    NSLog(&cfstr_CommandbufferF.isa, v21, v31);
  }

  v32 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_userCompletedHandlerWithCommandBuffer_(*(a1 + 32), v33, a2, v35, v36);
  }

  v37 = objc_msgSend_profilingResults(a2, v33, v34, v35, v36);
  v41 = objc_msgSend_valueForKey_(v37, v38, *MEMORY[0x277CD6930], v39, v40);
  v46 = objc_msgSend_unsignedLongLongValue(v41, v42, v43, v44, v45);
  v50 = objc_msgSend_valueForKey_(v37, v47, *MEMORY[0x277CD6950], v48, v49);
  v59 = objc_msgSend_unsignedLongLongValue(v50, v51, v52, v53, v54);
  v60 = *&qword_27DF851B8;
  if (*&qword_27DF851B8 == 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v60 = *&qword_27DF851B8;
    }

    else
    {
      LODWORD(v61) = info.numer;
      LODWORD(v62) = info.denom;
      v60 = v61 * 0.000000001 / v62;
      qword_27DF851B8 = *&v60;
    }
  }

  v63 = v60 * (v59 - v46);
  v64 = objc_msgSend_WallClockTime(*(a1 + 40), v55, v56, v57, v58);
  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_addValue_(v64, v66, v67, v68, v69, Current - *(*(*(a1 + 48) + 8) + 24));
  v74 = objc_msgSend_QueueTime(*(a1 + 40), v70, v71, v72, v73);
  objc_msgSend_addValue_(v74, v75, v76, v77, v78, v63);
  v83 = objc_msgSend_GPUWaitTime(*(a1 + 40), v79, v80, v81, v82);
  objc_msgSend_addValue_(v83, v84, v85, v86, v87, v63);
  CommandBufferWaitTime = objc_msgSend_PrevCommandBufferWaitTime(*(a1 + 40), v88, v89, v90, v91);

  return objc_msgSend_addValue_(CommandBufferWaitTime, v93, v94, v95, v96, 0.0);
}

uint64_t sub_239910D2C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1[5] + 8) + 24) = CFAbsoluteTimeGetCurrent();
  v2 = *(a1[6] + 8);
  if (dword_27DF851C0)
  {
    kpc_get_thread_counters();
    tv_sec = v7.tv_sec;
  }

  else
  {
    tv_sec = 0;
  }

  *(v2 + 48) = tv_sec;
  gettimeofday(&v7, 0);
  *(v2 + 56) = v7.tv_sec + v7.tv_usec * 0.000001;
  v4 = *(a1[4] + 16);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

void sub_2399111F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_239911228(uint64_t result)
{
  if (*(*(result + 32) + 59) == 1)
  {
    v19 = v4;
    v20 = v3;
    v21 = v1;
    v22 = v2;
    v5 = result;
    task_info_outCnt = 40;
    task_info(*MEMORY[0x277D85F48], 0x12u, task_info_out, &task_info_outCnt);
    v6 = v18;
    v11 = objc_msgSend_SystemResidentMemory(*(*(*(v5 + 40) + 8) + 40), v7, v8, v9, v10);
    return objc_msgSend_addValue_(v11, v12, v13, v14, v15, v6);
  }

  return result;
}

void sub_2399112B0(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1[6] + 8) + 40) = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], a2, a3, a4, a5);
  v10 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v6, v7, v8, v9);
  *(*(a1[7] + 8) + 24) = objc_msgSend_getCFRunLoop(v10, v11, v12, v13, v14);
  objc_msgSend_addTimer_forMode_(*(*(a1[6] + 8) + 40), v15, a1[4], *MEMORY[0x277CBE640], v16);
  dispatch_semaphore_signal(*(a1[5] + 48));

  CFRunLoopRun();
}

void sub_239911620(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23990B450();
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

    sub_23990B4F8();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

double initCounterStats(counterStats_t *a1)
{
  result = 0.0;
  *&a1->var6 = 0u;
  *&a1->var8 = 0u;
  a1->var10 = 0.0;
  *&a1->var2 = 0u;
  *&a1->var4 = 0u;
  *&a1->var0 = 0u;
  a1->var5 = INFINITY;
  a1->var2 = -1;
  a1->var8 = -1;
  return result;
}

uint64_t kpc_cycles_init(void)
{
  v1 = 1;
  if (sysctlbyname("kpc.disable_whitelist", 0, 0, &v1, 4uLL))
  {
    perror("sysctl kpc.disable_whitelist");
    return 0xFFFFFFFFLL;
  }

  else if (kpc_force_all_ctrs_set())
  {
    puts("kpc_force_all_ctrs_set failed");
    return 0xFFFFFFFFLL;
  }

  else
  {
    kpc_get_counter_count();
    kpc_get_counter_count();
    if (kpc_set_counting())
    {
      perror("kpc_set_counting");
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = kpc_set_thread_counting();
      if (result)
      {
        perror("kpc_set_thread_counting");
        return 0xFFFFFFFFLL;
      }

      else
      {
        dword_27DF851C0 = 1;
      }
    }
  }

  return result;
}

uint64_t kpc_get_cycles(void)
{
  v3 = *MEMORY[0x277D85DE8];
  if (dword_27DF851C0)
  {
    kpc_get_thread_counters();
    result = v2;
  }

  else
  {
    result = 0;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

double kpc_now(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (dword_27DF851C0)
  {
    kpc_get_thread_counters();
    tv_sec = v5.tv_sec;
  }

  else
  {
    tv_sec = 0;
  }

  *a1 = tv_sec;
  gettimeofday(&v5, 0);
  result = v5.tv_sec + v5.tv_usec * 0.000001;
  *(a1 + 8) = result;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double kpc_estimate_freq(void)
{
  v9 = *MEMORY[0x277D85DE8];
  if (dword_27DF851C0)
  {
    kpc_get_thread_counters();
    tv_sec = v8.tv_sec;
  }

  else
  {
    tv_sec = 0;
  }

  gettimeofday(&v8, 0);
  v1 = v8.tv_sec;
  tv_usec = v8.tv_usec;
  v3 = tv_sec * 0.0001;
  v4 = 1000;
  do
  {
    v3 = v3 * (1.0 - v3);
    --v4;
  }

  while (v4);
  if (dword_27DF851C0)
  {
    kpc_get_thread_counters();
    v5 = v8.tv_sec;
  }

  else
  {
    v5 = 0;
  }

  gettimeofday(&v8, 0);
  v6 = *MEMORY[0x277D85DE8];
  return (v5 - tv_sec) / (v8.tv_sec + v8.tv_usec * 0.000001 - (v1 + tv_usec * 0.000001)) + v3 * 0.000001;
}

unint64_t kpc_cycle_diff(uint64_t a1, uint64_t a2)
{
  if (dword_27DF851C0)
  {
    return *a2 - *a1;
  }

  v11[1] = v5;
  v11[2] = v4;
  v11[3] = v2;
  v11[4] = v3;
  v7 = *(a2 + 8) - *(a1 + 8);
  v10 = 8;
  v11[0] = 0;
  if (sysctlbyname("hw.cpufrequency", v11, &v10, 0, 0))
  {
    perror("hw.cpufrequency");
  }

  result = (v7 * v11[0]);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239913A34;
  block[3] = &unk_278AA8CF0;
  block[4] = v11[0];
  if (qword_27DF851D8 != -1)
  {
    v8 = (v7 * v11[0]);
    dispatch_once(&qword_27DF851D8, block);
    return v8;
  }

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