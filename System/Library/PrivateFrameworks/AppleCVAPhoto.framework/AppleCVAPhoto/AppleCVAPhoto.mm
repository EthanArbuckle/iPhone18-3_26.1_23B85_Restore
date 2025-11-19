void sub_1DED243B8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED243E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24408()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24430()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24458()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24480()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED244A8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED244D0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED244F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24520()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24548()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24570()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED24598()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED245C0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED245E8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1DED249AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVADisparityPostprocessingRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED2503C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVAMattingRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED25410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CVAPortraitRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED25670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CVAPortraitRequest_StageLight;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED25B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CVAPortraitGenericRequestCubeImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1DED25D64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v14 = &unk_1F59F9B80;
  v15 = a1 | (a3 << 32);
  v16 = a4;
  v17 = &v14;
  v19 = v18;
  v18[0] = &unk_1F59F9B80;
  v18[1] = v15;
  v7 = v16;
  v18[2] = v7;
  sub_1DED261E8(&v14);
  if (a2 && (a1 & 1) != 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = @"Error Reason";
    v13 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *a2 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:v9];
  }

  if (!v19)
  {
    sub_1DED25F90();
  }

  (*(*v19 + 48))(v19);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DED25F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1DED26028(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DED25FA8(uint64_t a1)
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

uint64_t sub_1DED26028(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v5 = sub_1DED25F90();
    sub_1DED25FA8(a1);
    _Unwind_Resume(v5);
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_1DED260EC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 12);
    v3 = *(a1 + 16);
    v5[0] = 67109378;
    v5[1] = v2;
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "> > > CVAPhoto error = %d, %@", v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DED261AC(id *a1)
{

  operator delete(a1);
}

id sub_1DED261F0(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59F9B80;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

void sub_1DED262A8(uint64_t a1)
{

  JUMPOUT(0x1E12C8F40);
}

void sub_1DED26658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVADisparityPostprocessingResult_Impl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED26838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CVAMattingResult_Impl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED2698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CVAPortraitResult_Impl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double sub_1DED26B30(double *a1)
{
  v1 = *a1;
  v2 = sqrt(a1[1] * a1[1] + v1 * v1 + a1[2] * a1[2] + a1[3] * a1[3]);
  if (v2 < 0.00000011920929)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CVAQuaternion cva::normalized(const CVAQuaternion &)"];
    [v5 handleFailureInFunction:v6 file:@"CVAQuaternion.mm" lineNumber:14 description:@"Unable to normalize quaternion"];

    v1 = *a1;
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *(a1 + 3);
  }

  return v1 / v2;
}

double sub_1DED26C1C(double *a1, double *a2)
{
  v2 = sqrt(a1[1] * a1[1] + *a1 * *a1 + a1[2] * a1[2] + a1[3] * a1[3]);
  if (v2 < 0.999999881 || v2 > 1.00000012)
  {
    v11 = a2;
    v12 = a1;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"double cva::distance(const CVAQuaternion &, const CVAQuaternion &)"}];
    [v13 handleFailureInFunction:v14 file:@"CVAQuaternion.mm" lineNumber:75 description:{@"Quaternion has length %.3e != 1.0", sqrt(v12[1] * v12[1] + *v12 * *v12 + v12[2] * v12[2] + v12[3] * v12[3])}];

    a1 = v12;
    a2 = v11;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sqrt(v5 * v5 + v4 * v4 + v6 * v6 + v7 * v7);
  if (v8 < 0.999999881 || v8 > 1.00000012)
  {
    v15 = a2;
    v16 = a1;
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"double cva::distance(const CVAQuaternion &, const CVAQuaternion &)"}];
    [v17 handleFailureInFunction:v18 file:@"CVAQuaternion.mm" lineNumber:79 description:{@"Quaternion has length %.3e != 1.0", sqrt(v15[1] * v15[1] + *v15 * *v15 + v15[2] * v15[2] + v15[3] * v15[3])}];

    v4 = *v15;
    v5 = v15[1];
    v6 = v15[2];
    v7 = v15[3];
    a1 = v16;
  }

  return 1.0 - (a1[1] * v5 + *a1 * v4 + a1[2] * v6 + a1[3] * v7);
}

void sub_1DED26FBC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1ECDE11B8);

  _Unwind_Resume(a1);
}

void sub_1DED27788(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1ECDE11A8);

  _Unwind_Resume(a1);
}

void sub_1DED29370(_Unwind_Exception *a1)
{
  v6 = v5;

  std::mutex::~mutex(v4);
  if (*(v2 + 56) == 1)
  {
    *(v2 + 56) = 0;
  }

  sub_1DED49544(v3);
  MEMORY[0x1E12C8F40](v2, 0x10A0C4075515932);

  _Unwind_Resume(a1);
}

void sub_1DED2A360(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, CFTypeRef a22, CFTypeRef cf, CFTypeRef a24, CFTypeRef a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a24)
  {
    CFRelease(a24);
  }

  if (a25)
  {
    CFRelease(a25);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  if (a2 == 1)
  {
    v65 = objc_begin_catch(a1);
    v66 = v65;
    if (a21)
    {
      *a21 = [v65 error];
    }

    [v66 log];

    objc_end_catch();
    JUMPOUT(0x1DED2A2A4);
  }

  _Block_object_dispose(&a41, 8);
  sub_1DED2A9B4(&a61);
  JUMPOUT(0x1DED2A624);
}

void sub_1DED2A664(void *a1, CVPixelBufferRef pixelBuffer)
{
  v16[4] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v7 = *MEMORY[0x1E69660D8];
  v16[0] = MEMORY[0x1E695E0F8];
  v8 = *MEMORY[0x1E6966130];
  v15[0] = v7;
  v15[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v16[1] = v9;
  v15[2] = *MEMORY[0x1E6966208];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v16[2] = v10;
  v15[3] = *MEMORY[0x1E69660B8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v14 = 0;
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, v12, &v14);
  *a1 = v14;

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DED2A824(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DED2A850(void *a1)
{
  if (a1[7])
  {
    v2 = [CVAPortraitResult_Impl alloc];
    v3 = [*(*(a1[8] + 8) + 40) mattingResult];
    v4 = a1[9];
    [*(*(a1[8] + 8) + 40) portraitStability];
    v6 = v5;
    [*(*(a1[8] + 8) + 40) relightingStability];
    LODWORD(v8) = v7;
    LODWORD(v9) = v6;
    v14 = [(CVAPortraitResult_Impl *)v2 initWithMattingResult:v3 portraitPixelBuffer:v4 portraitStability:v9 relightingStability:v8];

    v10 = a1[4];
    v11 = a1[5];
    (*(a1[7] + 16))();
    v12 = *(a1[8] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

const void **sub_1DED2A970(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *a1;
  *a1 = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

uint64_t sub_1DED2A9B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v5 = sub_1DED25F90();
    sub_1DED25FA8(a1);
    _Unwind_Resume(v5);
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t sub_1DED2AA90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9BC8;
  a2[1] = v2;
  return result;
}

void sub_1DED2B3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  __cxa_guard_abort(&qword_1ECDE1378);

  _Unwind_Resume(a1);
}

void sub_1DED2C8A0(uint64_t a1, uint64_t a2)
{
  if ((byte_1ECDE1649 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
    {
      sub_1DED2E5B4();
      __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
      __cxa_guard_release(&qword_1ECDE1188);
    }

    v4 = sub_1DED2F29C(a2);
    v5 = v4;
    v7 = v4[6];
    v6 = v4[7];
    if (v7 >= v6)
    {
      v9 = v4[5];
      v10 = v7 - v9;
      v11 = (v7 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        sub_1DED35334();
      }

      v13 = v6 - v9;
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
        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_1DED35334();
      }

      v15 = (v7 - v9) >> 3;
      v16 = (8 * v11);
      v17 = (8 * v11 - 8 * v15);
      *v16 = a1;
      v8 = v16 + 1;
      memcpy(v17, v9, v10);
      v5[5] = v17;
      v5[6] = v8;
      v5[7] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = a1;
      v8 = (v7 + 8);
    }

    v5[6] = v8;
    if (byte_1ECDE1088 == 1)
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      NSLog(&cfstr_FileconfigRegi.isa, v18, a2);
      NSLog(&cfstr_FileconfigSing.isa, &xmmword_1ECDE0FE8);
      v19 = sub_1DED2F29C(a2);
      NSLog(&cfstr_FileconfigSing_0.isa, v19[6] - v19[5], a2);
    }

    v20 = qword_1ECDE1060;
    qword_1ECDE1060 = 0;

    sub_1DED2CAE8();
  }
}

void sub_1DED2CAE8()
{
  v123 = *MEMORY[0x1E69E9840];
  if ((byte_1ECDE1649 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
    {
      sub_1DED2E5B4();
      __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
      __cxa_guard_release(&qword_1ECDE1188);
    }

    if (!qword_1ECDE1060)
    {
      v102 = sub_1DED2EEA4();
      if (byte_1ECDE1088 == 1)
      {
        NSLog(&cfstr_FileconfigChec.isa, &xmmword_1ECDE0FE8, v102);
      }

      if (byte_1ECDE1649 == 1 || (sub_1DED2EEA4(), (v0 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = 0;
      }

      else
      {
        v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0];
        v121 = 0;
        v2 = *MEMORY[0x1E695DA98];
        __dst = 0;
        [v1 getResourceValue:&v121 forKey:v2 error:&__dst];
        v3 = v121;
        v4 = v3;
        if (__dst)
        {
          v5 = 0;
        }

        else
        {
          v5 = v3;
        }

        if (v5)
        {
          v101 = v5;
          if (!qword_1ECDE1060 || ([v5 isEqual:?] & 1) == 0)
          {
            objc_storeStrong(&qword_1ECDE1060, v5);
            if (qword_1ECDE1050)
            {
              v7 = qword_1ECDE1048;
              if (qword_1ECDE1048)
              {
                do
                {
                  v9 = *v7;
                  if (*(v7 + 39) < 0)
                  {
                    v10 = v7;
                    operator delete(v7[2]);
                    v7 = v10;
                  }

                  operator delete(v7);
                  v7 = v9;
                }

                while (v9);
              }

              qword_1ECDE1048 = 0;
              if (*(&xmmword_1ECDE1038 + 1))
              {
                bzero(xmmword_1ECDE1038, 8 * *(&xmmword_1ECDE1038 + 1));
              }

              qword_1ECDE1050 = 0;
            }

            if (byte_1ECDE1088 == 1)
            {
              NSLog(&cfstr_FileconfigRelo.isa, &xmmword_1ECDE0FE8, v102);
            }

            v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v102];
            v120 = 0;
            v98 = v8;
            v100 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v120];
            v99 = v120;
            if (v99)
            {
              if (byte_1ECDE1088 == 1)
              {
                NSLog(&cfstr_FileconfigChec_0.isa, v99);
              }

LABEL_194:

              goto LABEL_11;
            }

            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            obj = v100;
            v104 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
            if (!v104)
            {
              goto LABEL_193;
            }

            v103 = *v117;
            v97 = *MEMORY[0x1E696AA00];
LABEL_32:
            v108 = 0;
LABEL_33:
            if (*v117 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v116 + 1) + 8 * v108);
            if ([v11 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v109 = v11;
            }

            else
            {
              v12 = [v11 componentsSeparatedByString:@"/"];
              v13 = [v12 objectAtIndexedSubscript:0];

              v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v109 = [v13 stringByTrimmingCharactersInSet:v14];
            }

            v15 = [obj objectForKey:v11];
            if ([v11 rangeOfString:@"/ color"] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v110 = v15;
              v16 = [v15 substringWithRange:{1, 2}];
              v17 = [v15 substringWithRange:{3, 2}];
              v18 = [v15 substringWithRange:{5, 2}];
              LODWORD(v121) = 0;
              v19 = [MEMORY[0x1E696AE88] scannerWithString:v16];
              [v19 scanHexInt:&v121];

              LODWORD(__dst) = 0;
              v20 = [MEMORY[0x1E696AE88] scannerWithString:v17];
              [v20 scanHexInt:&__dst];

              v115 = 0;
              v21 = [MEMORY[0x1E696AE88] scannerWithString:v18];
              [v21 scanHexInt:&v115];

              v15 = [MEMORY[0x1E695F610] colorWithRed:(v121 / 255.0) green:(__dst / 255.0) blue:(v115 / 255.0) alpha:1.0];
            }

            v111 = v15;
            if (![v109 length] || objc_msgSend(v109, "characterAtIndex:", 0) != 46)
            {
              v105 = [v109 componentsSeparatedByString:@"."];
              v107 = [v105 objectAtIndexedSubscript:0];
              v27 = [v105 objectAtIndexedSubscript:1];
              v28 = v107;
              v29 = [v107 UTF8String];
              v30 = strlen(v29);
              if (v30 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_195;
              }

              v31 = v30;
              if (v30 >= 0x17)
              {
                operator new();
              }

              v114 = v30;
              if (v30)
              {
                memmove(&__dst, v29, v30);
              }

              *(&__dst + v31) = 0;
              v32 = v114;
              v33 = __dst;
              if ((v114 & 0x80u) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst;
              }

              if ((v114 & 0x80u) == 0)
              {
                v35 = v114;
              }

              else
              {
                v35 = __dst_8;
              }

              v36 = sub_1DED2E7AC(p_dst, v35);
              v37 = v36;
              v38 = *(&xmmword_1ECDE0FE8 + 1);
              if (!*(&xmmword_1ECDE0FE8 + 1))
              {
                goto LABEL_180;
              }

              v39 = vcnt_s8(*(&xmmword_1ECDE0FE8 + 8));
              v39.i16[0] = vaddlv_u8(v39);
              if (v39.u32[0] > 1uLL)
              {
                v40 = v36;
                if (v36 >= *(&xmmword_1ECDE0FE8 + 1))
                {
                  v40 = v36 % *(&xmmword_1ECDE0FE8 + 1);
                }
              }

              else
              {
                v40 = (*(&xmmword_1ECDE0FE8 + 1) - 1) & v36;
              }

              v41 = *(xmmword_1ECDE0FE8 + 8 * v40);
              if (!v41 || (v42 = *v41) == 0)
              {
LABEL_180:
                operator new();
              }

              if (v39.u32[0] < 2uLL)
              {
                while (1)
                {
                  v47 = v42[1];
                  if (v47 == v37)
                  {
                    v48 = *(v42 + 39);
                    v49 = v48;
                    if (v48 < 0)
                    {
                      v48 = v42[3];
                    }

                    if (v48 == v35)
                    {
                      v50 = v49 >= 0 ? (v42 + 2) : v42[2];
                      if (!memcmp(v50, p_dst, v35))
                      {
                        v5 = v101;
                        goto LABEL_91;
                      }
                    }
                  }

                  else if ((v47 & (v38 - 1)) != v40)
                  {
                    goto LABEL_180;
                  }

                  v42 = *v42;
                  if (!v42)
                  {
                    goto LABEL_180;
                  }
                }
              }

              while (1)
              {
                v43 = v42[1];
                if (v43 == v37)
                {
                  v44 = *(v42 + 39);
                  v45 = v44;
                  if (v44 < 0)
                  {
                    v44 = v42[3];
                  }

                  if (v44 == v35)
                  {
                    v46 = v45 >= 0 ? (v42 + 2) : v42[2];
                    if (!memcmp(v46, p_dst, v35))
                    {
LABEL_91:
                      if (v32 < 0)
                      {
                        operator delete(v33);
                      }

                      v89 = v42[5];
                      v88 = v42[6];
                      while (v89 != v88)
                      {
                        WeakRetained = objc_loadWeakRetained(v89);
                        v92 = WeakRetained == 0;

                        if (!v92)
                        {
                          v93 = objc_loadWeakRetained(v89);
                          v94 = [v93 valueForKey:v27];

                          if (v94)
                          {
                            v95 = objc_loadWeakRetained(v89);
                            [v95 setValue:v111 forKey:v27];
                          }

                          else
                          {
                            if (byte_1ECDE1088 == 1)
                            {
                              v96 = objc_loadWeakRetained(v89);
                              NSLog(&cfstr_FileconfigChec_3.isa, v96, v27, v97);
                            }

                            v90 = qword_1ECDE1060;
                            qword_1ECDE1060 = 0;
                          }
                        }

                        ++v89;
                      }

LABEL_191:
                      if (++v108 == v104)
                      {
                        v104 = [obj countByEnumeratingWithState:&v116 objects:v122 count:16];
                        if (!v104)
                        {
LABEL_193:

                          goto LABEL_194;
                        }

                        goto LABEL_32;
                      }

                      goto LABEL_33;
                    }
                  }
                }

                else
                {
                  if (v43 >= v38)
                  {
                    v43 %= v38;
                  }

                  if (v43 != v40)
                  {
                    goto LABEL_180;
                  }
                }

                v42 = *v42;
                if (!v42)
                {
                  goto LABEL_180;
                }
              }
            }

            v22 = [v109 substringFromIndex:1];
            v23 = v22;
            v24 = [v22 UTF8String];
            v25 = strlen(v24);
            if (v25 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_195:
              sub_1DED35334();
            }

            v26 = v25;
            if (v25 >= 0x17)
            {
              operator new();
            }

            v114 = v25;
            if (v25)
            {
              memmove(&__dst, v24, v25);
            }

            *(&__dst + v26) = 0;

            if ((v114 & 0x80u) == 0)
            {
              v51 = &__dst;
            }

            else
            {
              v51 = __dst;
            }

            if ((v114 & 0x80u) == 0)
            {
              v52 = v114;
            }

            else
            {
              v52 = __dst_8;
            }

            v53 = sub_1DED2E7AC(v51, v52);
            v54 = qword_1ECDE1018;
            if (qword_1ECDE1018)
            {
              v55 = v53;
              v56 = vcnt_s8(qword_1ECDE1018);
              v56.i16[0] = vaddlv_u8(v56);
              if (v56.u32[0] > 1uLL)
              {
                v57 = v53;
                if (v53 >= qword_1ECDE1018)
                {
                  v57 = v53 % qword_1ECDE1018;
                }
              }

              else
              {
                v57 = (qword_1ECDE1018 - 1) & v53;
              }

              v58 = *(qword_1ECDE1010 + 8 * v57);
              if (v58)
              {
                v59 = *v58;
                if (*v58)
                {
                  if (v56.u32[0] < 2uLL)
                  {
                    v60 = qword_1ECDE1018 - 1;
                    while (1)
                    {
                      v65 = v59[1];
                      if (v65 == v55)
                      {
                        v66 = *(v59 + 39);
                        v67 = v66;
                        if (v66 < 0)
                        {
                          v66 = v59[3];
                        }

                        if (v66 == v52)
                        {
                          v68 = v67 >= 0 ? (v59 + 2) : v59[2];
                          if (!memcmp(v68, v51, v52))
                          {
                            goto LABEL_133;
                          }
                        }
                      }

                      else if ((v65 & v60) != v57)
                      {
                        goto LABEL_176;
                      }

                      v59 = *v59;
                      if (!v59)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  do
                  {
                    v61 = v59[1];
                    if (v61 == v55)
                    {
                      v62 = *(v59 + 39);
                      v63 = v62;
                      if (v62 < 0)
                      {
                        v62 = v59[3];
                      }

                      if (v62 == v52)
                      {
                        v64 = v63 >= 0 ? (v59 + 2) : v59[2];
                        if (!memcmp(v64, v51, v52))
                        {
LABEL_133:
                          v69 = v59[5];
                          for (i = v59[6]; v69 != i; ++v69)
                          {
                            objc_storeStrong(*v69, v111);
                            if ((v114 & 0x80u) == 0)
                            {
                              v71 = &__dst;
                            }

                            else
                            {
                              v71 = __dst;
                            }

                            if ((v114 & 0x80u) == 0)
                            {
                              v72 = v114;
                            }

                            else
                            {
                              v72 = __dst_8;
                            }

                            v73 = sub_1DED2E7AC(v71, v72);
                            v74 = v73;
                            v75 = *(&xmmword_1ECDE1038 + 1);
                            if (!*(&xmmword_1ECDE1038 + 1))
                            {
                              goto LABEL_173;
                            }

                            v76 = vcnt_s8(*(&xmmword_1ECDE1038 + 8));
                            v76.i16[0] = vaddlv_u8(v76);
                            if (v76.u32[0] > 1uLL)
                            {
                              v77 = v73;
                              if (v73 >= *(&xmmword_1ECDE1038 + 1))
                              {
                                v77 = v73 % *(&xmmword_1ECDE1038 + 1);
                              }
                            }

                            else
                            {
                              v77 = (*(&xmmword_1ECDE1038 + 1) - 1) & v73;
                            }

                            v78 = *(xmmword_1ECDE1038 + 8 * v77);
                            if (!v78 || (v79 = *v78) == 0)
                            {
LABEL_173:
                              operator new();
                            }

                            if (v76.u32[0] < 2uLL)
                            {
                              while (1)
                              {
                                v84 = v79[1];
                                if (v84 == v74)
                                {
                                  v85 = *(v79 + 39);
                                  v86 = v85;
                                  if (v85 < 0)
                                  {
                                    v85 = v79[3];
                                  }

                                  if (v85 == v72)
                                  {
                                    v87 = v86 >= 0 ? (v79 + 2) : v79[2];
                                    if (!memcmp(v87, v71, v72))
                                    {
                                      goto LABEL_174;
                                    }
                                  }
                                }

                                else if ((v84 & (v75 - 1)) != v77)
                                {
                                  goto LABEL_173;
                                }

                                v79 = *v79;
                                if (!v79)
                                {
                                  goto LABEL_173;
                                }
                              }
                            }

                            while (1)
                            {
                              v80 = v79[1];
                              if (v80 == v74)
                              {
                                break;
                              }

                              if (v80 >= v75)
                              {
                                v80 %= v75;
                              }

                              if (v80 != v77)
                              {
                                goto LABEL_173;
                              }

LABEL_150:
                              v79 = *v79;
                              if (!v79)
                              {
                                goto LABEL_173;
                              }
                            }

                            v81 = *(v79 + 39);
                            v82 = v81;
                            if (v81 < 0)
                            {
                              v81 = v79[3];
                            }

                            if (v81 != v72)
                            {
                              goto LABEL_150;
                            }

                            v83 = v82 >= 0 ? (v79 + 2) : v79[2];
                            if (memcmp(v83, v71, v72))
                            {
                              goto LABEL_150;
                            }

LABEL_174:
                            ;
                          }

LABEL_178:
                          if (v114 < 0)
                          {
                            operator delete(__dst);
                          }

                          goto LABEL_191;
                        }
                      }
                    }

                    else
                    {
                      if (v61 >= v54)
                      {
                        v61 %= v54;
                      }

                      if (v61 != v57)
                      {
                        break;
                      }
                    }

                    v59 = *v59;
                  }

                  while (v59);
                }
              }
            }

LABEL_176:
            if (byte_1ECDE1089 == 1)
            {
              NSLog(&cfstr_FileconfigChec_1.isa, v51);
            }

            goto LABEL_178;
          }
        }
      }

LABEL_11:
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1DED2DE24(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1DED2DEAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_1DED2F234(&a41);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DED2E008);
}

uint64_t sub_1DED2E054(char *__s)
{
  if (byte_1ECDE1649)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
  {
    sub_1DED2E5B4();
    __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
    __cxa_guard_release(&qword_1ECDE1188);
  }

  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1DED35334();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v27 = v3;
  if (v3)
  {
    memcpy(__dst, __s, v3);
  }

  *(__dst + v4) = 0;
  v5 = v27;
  v6 = __dst[0];
  if ((v27 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = sub_1DED2E7AC(v7, v8);
  v10 = *(&xmmword_1ECDE1038 + 1);
  if (!*(&xmmword_1ECDE1038 + 1))
  {
    goto LABEL_49;
  }

  v11 = v9;
  v12 = vcnt_s8(*(&xmmword_1ECDE1038 + 8));
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *(&xmmword_1ECDE1038 + 1))
    {
      v13 = v9 % *(&xmmword_1ECDE1038 + 1);
    }
  }

  else
  {
    v13 = (*(&xmmword_1ECDE1038 + 1) - 1) & v9;
  }

  v14 = *(xmmword_1ECDE1038 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_49:
    result = 0;
    goto LABEL_50;
  }

  if (v12.u32[0] < 2uLL)
  {
    v16 = *(&xmmword_1ECDE1038 + 1) - 1;
    while (1)
    {
      v21 = v15[1];
      if (v11 == v21)
      {
        v22 = *(v15 + 39);
        v23 = v22;
        if (v22 < 0)
        {
          v22 = v15[3];
        }

        if (v22 == v8)
        {
          v24 = v23 >= 0 ? (v15 + 2) : v15[2];
          if (!memcmp(v24, v7, v8))
          {
            goto LABEL_48;
          }
        }
      }

      else if ((v21 & v16) != v13)
      {
        goto LABEL_49;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v17 = v15[1];
    if (v11 == v17)
    {
      break;
    }

    if (v17 >= v10)
    {
      v17 %= v10;
    }

    if (v17 != v13)
    {
      goto LABEL_49;
    }

LABEL_26:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  v18 = *(v15 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v15[3];
  }

  if (v18 != v8)
  {
    goto LABEL_26;
  }

  v20 = v19 >= 0 ? (v15 + 2) : v15[2];
  if (memcmp(v20, v7, v8))
  {
    goto LABEL_26;
  }

LABEL_48:
  result = 1;
LABEL_50:
  if (v5 < 0)
  {
    v25 = result;
    operator delete(v6);
    return v25;
  }

  return result;
}

uint64_t sub_1DED2E328(unint64_t a1)
{
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
      v4 = 0;
      v6 = 0;
      v1 = 0;
      v5 = 1;
      return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
    case 2uLL:
      v5 = 0;
      v6 = 0;
      v1 = 0;
      v4 = 0x100000000;
      return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
    case 4uLL:
    case 6uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x12uLL:
      v4 = 0;
      v1 = 0;
      v5 = 1;
      v6 = 1;
      return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
    case 5uLL:
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x13uLL:
    case 0x17uLL:
    case 0x1AuLL:
    case 0x1EuLL:
    case 0x2EuLL:
    case 0x2FuLL:
      v5 = 0;
      v1 = 0;
      v4 = 0x100000000;
      v6 = 1;
      return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
    case 8uLL:
      v4 = 0;
      v1 = 0;
      v6 = 1;
      v5 = 2;
      return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
    case 0x14uLL:
    case 0x32uLL:
      v4 = 0;
      v1 = 0;
      goto LABEL_12;
    case 0x15uLL:
      v1 = 0;
      v4 = 0x100000000;
LABEL_12:
      v6 = 1;
      v5 = 3;
      break;
    case 0x16uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x30uLL:
      v4 = 0;
      v5 = a1 != 44;
      v1 = (a1 < 0x31) & (0x11F8000000000uLL >> a1);
      v6 = 1;
      break;
    case 0x21uLL:
    case 0x25uLL:
    case 0x31uLL:
      v4 = 0;
      v5 = 0;
      v1 = a1 == 49;
      v6 = 1;
      break;
    case 0x33uLL:
      v4 = 0;
      v6 = 1;
      v5 = 4;
      v1 = 1;
      break;
    case 0x34uLL:
      syslog(3, "CVAVideoPipelineDevice_UniqueCount isn't a valid device", v2, v3);
      abort();
    default:
      v4 = 0;
      v5 = 0;
      v6 = 0;
      break;
  }

  return (v6 << 48) | (v1 << 56) | (v6 << 40) | v4 | v5;
}

void sub_1DED2E4D4(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E696AEC0];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v9 = bswap32(PixelFormatType) >> 16;
  v8[1] = BYTE2(PixelFormatType);
  v8[0] = HIBYTE(PixelFormatType);
  v10 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
  Width = CVPixelBufferGetWidth(a2);
  [v4 stringWithFormat:@"%@ (%@) = %zux%zu", v3, v6, Width, CVPixelBufferGetHeight(a2)];
}

void sub_1DED2E5B4()
{
  xmmword_1ECDE0FE8 = 0u;
  *&qword_1ECDE0FF8 = 0u;
  dword_1ECDE1008 = 1065353216;
  *&qword_1ECDE1010 = 0u;
  *&qword_1ECDE1020 = 0u;
  dword_1ECDE1030 = 1065353216;
  xmmword_1ECDE1038 = 0u;
  *&qword_1ECDE1048 = 0u;
  dword_1ECDE1058 = 1065353216;
  *&qword_1ECDE1060 = 0u;
  *&qword_1ECDE1070 = 0u;
  *(&qword_1ECDE1078 + 2) = 0u;
  v0 = +[CVAPreferenceManager defaults];
  v10 = v0;
  if (v0)
  {
    v1 = [v0 BOOLForKey:@"CVAPhotoLogConfig"];
    byte_1ECDE1088 = v1;
    if (v1)
    {
      LOBYTE(v1) = [v10 BOOLForKey:@"CVAPhotoLogConfigStaticVars"];
    }

    byte_1ECDE1089 = v1;
  }

  v2 = qword_1ECDE1078;
  qword_1ECDE1078 = @"/System/Library/PrivateFrameworks/AppleCVAPhoto.framework/Resources/";

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 contentsOfDirectoryAtPath:qword_1ECDE1078 error:0];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH '.persistent.config.txt'"];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v7 = qword_1ECDE1068;
  qword_1ECDE1068 = v6;

  v8 = [qword_1ECDE1068 sortedArrayUsingSelector:sel_compare_];
  v9 = qword_1ECDE1068;
  qword_1ECDE1068 = v8;
}

void sub_1DED2E724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_1DED2ED9C();
  sub_1DED2EE18();
  sub_1DED2ECF0(v10);
  _Unwind_Resume(a1);
}

unint64_t sub_1DED2E7AC(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) ^ ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) >> 47));
  }

  else
  {
    if (a2 > 0x10)
    {
      v26 = a1[1];
      v27 = 0xB492B66FBE98F273 * *a1;
      v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
      v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
      v23 = 0x9DDFEA08EB382D69;
      v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
      v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
      v25 = 0x9DDFEA08EB382D69 * v31;
      return (v25 ^ (v25 >> 47)) * v23;
    }

    if (a2 >= 9)
    {
      v2 = *(a1 + a2 - 8);
      v3 = __ROR8__(v2 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
    }

    if (a2 >= 4)
    {
      v71 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v72 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v71);
      v31 = v71 ^ (v72 >> 47) ^ v72;
      goto LABEL_8;
    }

    if (a2)
    {
      v73 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
      v74 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
      return 0x9AE16A3B2F90404FLL * (v74 ^ v73 ^ ((v74 ^ v73) >> 47));
    }

    else
    {
      return 0x9AE16A3B2F90404FLL;
    }
  }
}

uint64_t sub_1DED2EBF0(uint64_t a1)
{
  byte_1ECDE1649 = 1;

  v2 = *(a1 + 96);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    do
    {
      v8 = *v4;
      v9 = *(v4 + 5);
      if (v9)
      {
        *(v4 + 6) = v9;
        operator delete(v9);
      }

      if (v4[39] < 0)
      {
        operator delete(*(v4 + 2));
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return sub_1DED2ECF0(a1);
}

uint64_t sub_1DED2ECF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        v7 = *(v2 + 6);
        v8 = *(v2 + 5);
        if (v7 != v6)
        {
          do
          {
            objc_destroyWeak(--v7);
          }

          while (v7 != v6);
          v8 = *(v2 + 5);
        }

        *(v2 + 6) = v6;
        operator delete(v8);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1DED2ED9C()
{
  v0 = qword_1ECDE1048;
  if (qword_1ECDE1048)
  {
    do
    {
      v2 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v2;
    }

    while (v2);
  }

  v1 = xmmword_1ECDE1038;
  *&xmmword_1ECDE1038 = 0;
  if (v1)
  {

    operator delete(v1);
  }
}

void sub_1DED2EE18()
{
  v0 = qword_1ECDE1020;
  if (qword_1ECDE1020)
  {
    do
    {
      v2 = *v0;
      v3 = *(v0 + 5);
      if (v3)
      {
        *(v0 + 6) = v3;
        operator delete(v3);
      }

      if (v0[39] < 0)
      {
        operator delete(*(v0 + 2));
      }

      operator delete(v0);
      v0 = v2;
    }

    while (v2);
  }

  v1 = qword_1ECDE1010;
  qword_1ECDE1010 = 0;
  if (v1)
  {

    operator delete(v1);
  }
}

id sub_1DED2EEA4()
{
  if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
  {
    sub_1DED2E5B4();
    __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
    __cxa_guard_release(&qword_1ECDE1188);
  }

  if (qword_1ECDE1070)
  {
    v0 = qword_1ECDE1070;
  }

  else
  {
    v0 = qword_1ECDE1080;
  }

  return v0;
}

void sub_1DED2EF58(unint64_t a1)
{
  if (a1)
  {
    if (!(a1 >> 61))
    {
      operator new();
    }

    sub_1DED35334();
  }

  v1 = xmmword_1ECDE0FE8;
  *&xmmword_1ECDE0FE8 = 0;
  if (v1)
  {
    operator delete(v1);
  }

  *(&xmmword_1ECDE0FE8 + 1) = 0;
}

uint64_t *sub_1DED2F104(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v2 + 48);
        v5 = *(v2 + 40);
        if (v4 != v3)
        {
          do
          {
            objc_destroyWeak(--v4);
          }

          while (v4 != v3);
          v5 = *(v2 + 40);
        }

        *(v2 + 48) = v3;
        operator delete(v5);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1DED2F198(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1DED35334();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void *sub_1DED2F234(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **sub_1DED2F29C(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = sub_1DED2E7AC(v2, v3);
  v5 = v4;
  v6 = qword_1ECDE1018;
  if (!qword_1ECDE1018)
  {
    goto LABEL_41;
  }

  v7 = vcnt_s8(qword_1ECDE1018);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= qword_1ECDE1018)
    {
      v8 = v4 % qword_1ECDE1018;
    }
  }

  else
  {
    v8 = (qword_1ECDE1018 - 1) & v4;
  }

  v9 = *(qword_1ECDE1010 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        v12 = *(v10 + 39);
        v13 = v12;
        if (v12 < 0)
        {
          v12 = v10[3];
        }

        if (v12 == v3)
        {
          v14 = v13 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v14, v2, v3))
          {
            return v10;
          }
        }
      }

      else if ((v11 & (v6 - 1)) != v8)
      {
        goto LABEL_41;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v15 = v10[1];
    if (v15 == v5)
    {
      break;
    }

    if (v15 >= v6)
    {
      v15 %= v6;
    }

    if (v15 != v8)
    {
      goto LABEL_41;
    }

LABEL_29:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_41;
    }
  }

  v16 = *(v10 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v10[3];
  }

  if (v16 != v3)
  {
    goto LABEL_29;
  }

  v18 = v17 >= 0 ? (v10 + 2) : v10[2];
  if (memcmp(v18, v2, v3))
  {
    goto LABEL_29;
  }

  return v10;
}

void sub_1DED2F7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DED2F80C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1DED2F80C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        *(v2 + 48) = v3;
        operator delete(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1DED30320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, uint64_t a33, void *a34, void *a35, uint64_t a36, void *a37)
{
  __cxa_guard_abort(&qword_1ECDE12E0);

  _Unwind_Resume(a1);
}

void sub_1DED30478(uint64_t a1)
{
  sub_1DED499C8(*(*(a1 + 32) + 512));
  [*(a1 + 40) destinationColorPixelBuffer];
  v2 = *(a1 + 80);
  [*(a1 + 48) canonicalDisparityPixelBuffer];
  [*(a1 + 40) mattingRequest];
  [objc_claimAutoreleasedReturnValue() disparityPostprocessingRequest];
  [objc_claimAutoreleasedReturnValue() fixedPointDisparityPixelBuffer];
  [*(*(a1 + 32) + 24) rawShiftInvalidThreshold];
  v3 = *(a1 + 32);
  v4 = **(v3 + 360);
  sub_1DED2E328([*(v3 + 24) videoPipelineDevice]);
  [*(*(a1 + 32) + 384) primaryCaptureRect];
  operator new();
}

void sub_1DED30A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18)
{
  __cxa_guard_abort(&qword_1ECDE12C8);

  _Unwind_Resume(a1);
}

void sub_1DED30AEC(uint64_t a1)
{
  sub_1DED499C8(*(*(a1 + 32) + 512));
  [*(a1 + 40) destinationColorPixelBuffer];
  v2 = *(a1 + 72);
  [*(a1 + 48) canonicalDisparityPixelBuffer];
  [*(a1 + 40) mattingRequest];
  [objc_claimAutoreleasedReturnValue() disparityPostprocessingRequest];
  [objc_claimAutoreleasedReturnValue() fixedPointDisparityPixelBuffer];
  [*(*(a1 + 32) + 24) rawShiftInvalidThreshold];
  v3 = *(a1 + 32);
  v4 = **(v3 + 360);
  sub_1DED2E328([*(v3 + 24) videoPipelineDevice]);
  [*(*(a1 + 32) + 384) primaryCaptureRect];
  operator new();
}

void sub_1DED31418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, uint64_t a27, void *a28, void *a29)
{
  __cxa_guard_abort(&qword_1ECDE12B0);

  _Unwind_Resume(a1);
}

void sub_1DED31560(uint64_t a1)
{
  sub_1DED499C8(*(*(a1 + 32) + 512));
  [*(a1 + 40) destinationColorPixelBuffer];
  v2 = *(a1 + 80);
  [*(a1 + 48) canonicalDisparityPixelBuffer];
  [*(a1 + 40) mattingRequest];
  [objc_claimAutoreleasedReturnValue() disparityPostprocessingRequest];
  [objc_claimAutoreleasedReturnValue() fixedPointDisparityPixelBuffer];
  [*(*(a1 + 32) + 24) rawShiftInvalidThreshold];
  v3 = *(a1 + 32);
  v4 = **(v3 + 360);
  sub_1DED2E328([*(v3 + 24) videoPipelineDevice]);
  [*(*(a1 + 32) + 384) primaryCaptureRect];
  operator new();
}

uint64_t sub_1DED31798()
{
  if ((atomic_load_explicit(&qword_1ECDE1180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1180))
  {
    v1 = +[CVAPreferenceManager defaults];
    v2 = [v1 BOOLForKey:@"CVAPhotoLogTransitionData"];

    byte_1ECDE1380 = v2;
    __cxa_guard_release(&qword_1ECDE1180);
  }

  return byte_1ECDE1380;
}

void sub_1DED3222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  __cxa_guard_abort(&qword_1ECDE1280);

  _Unwind_Resume(a1);
}

uint64_t sub_1DED323C0(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t sub_1DED323E0(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_1DED32AB4(float *a1, float *a2, float *a3, float *a4, void *a5)
{
  v9 = [a5 objectForKeyedSubscript:@"FinalCropRectFromSource"];
  if (v9)
  {
    v29 = v9;
    v10 = [v9 objectForKeyedSubscript:@"X"];
    [v10 floatValue];
    v12 = v11;
    v13 = [v29 objectForKeyedSubscript:@"Y"];
    [v13 floatValue];
    v15 = v14;
    v16 = [v29 objectForKeyedSubscript:@"Width"];
    [v16 floatValue];
    v18 = v17;
    v19 = [v29 objectForKeyedSubscript:@"Height"];
    [v19 floatValue];
    v20 = v12;
    v21 = v15;
    v22 = v18;
    v24 = v23;

    v9 = v29;
  }

  else
  {
    v22 = 1.0;
    v20 = 0.0;
    v21 = 0.0;
    v24 = 1.0;
  }

  v25 = (*a1 - v20) / v22;
  *a1 = v25;
  v26 = (*a2 - v21) / v24;
  *a2 = v26;
  v27 = *a3 / v22;
  *a3 = v27;
  v28 = *a4 / v24;
  *a4 = v28;
}

void sub_1DED34EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37)
{
  __cxa_guard_abort(&qword_1ECDE11E8);
  sub_1DED352F0(&STACK[0x2C0]);
  v39 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

char *sub_1DED35168(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1DED35334();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t sub_1DED352B0(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t sub_1DED352D0(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void *sub_1DED352F0(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

BOOL sub_1DED35C5C(void *a1)
{
  v1 = a1;
  if (([v1 length] & 0xF) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 length] & 0xF;
    v4 = cbrt(v3);
    v2 = v4 * v4 * v4 == v3;
  }

  return v2;
}

void sub_1DED3786C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVAPortraitVideoPipeline_Impl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED40888(_Unwind_Exception *a1)
{
  sub_1DED41278(STACK[0x278]);

  _Unwind_Resume(a1);
}

void sub_1DED41278(void *a1)
{
  if (a1)
  {
    sub_1DED41278(*a1);
    sub_1DED41278(a1[1]);

    operator delete(a1);
  }
}

id sub_1DED412C8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [**a1 objectForKey:v3];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      goto LABEL_21;
    }
  }

  v6 = [**(a1 + 8) objectForKeyedSubscript:v3];
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v5 = 0;
      goto LABEL_20;
    }

    v16 = 138412290;
    v17 = v3;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "No parameterDefaultValues for parameter %@";
    v13 = 12;
LABEL_25:
    _os_log_error_impl(&dword_1DED23000, v11, OS_LOG_TYPE_ERROR, v12, &v16, v13);
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 objectForKeyedSubscript:&unk_1F5A08D40];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:**(a1 + 16)];
    v10 = [v7 objectForKeyedSubscript:v9];

    if (v10)
    {
      v5 = v10;
    }

    else if (v8)
    {
      v5 = v8;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v3;
        _os_log_error_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No value for parameter %@", &v16, 0xCu);
      }

      v5 = 0;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v16) = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Unknown parameter type";
    v13 = 2;
    goto LABEL_25;
  }

  v5 = v6;
LABEL_20:

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1DED41568(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

double sub_1DED415CC(double *a1)
{
  v1 = *a1;
  v2 = sqrt(a1[1] * a1[1] + v1 * v1 + a1[2] * a1[2]);
  if (v2 < 0.00000011920929)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CVAVector cva::normalized(const CVAVector &)"];
    [v5 handleFailureInFunction:v6 file:@"CVAVector.mm" lineNumber:15 description:{@"Unable to normalize vector (%.3e %.3e %.3e)", *a1, *(a1 + 1), *(a1 + 2)}];

    v1 = *a1;
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
  }

  return v1 / v2;
}

void sub_1DED42268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_1DED42348(&a9);

  _Unwind_Resume(a1);
}

void sub_1DED422A0(void **a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v11 computePipelineStateFor:v7 constants:v8];
  v10 = *a1;
  *a1 = v9;
}

void sub_1DED423EC(void *a1, void *a2)
{
  v16 = a1;
  v3 = [v16 count];
  v4 = [v16 objectAtIndexedSubscript:0];
  v5 = [v4 count];
  if (v3 < 1)
  {
    v10 = v4;
  }

  else
  {
    v6 = v3 & 0x7FFFFFFF;
    if (v5 <= 0)
    {
      v15 = 0;
      do
      {
        v10 = [v16 objectAtIndexedSubscript:v15];

        ++v15;
        v4 = v10;
      }

      while (v6 != v15);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = v5 & 0x7FFFFFFF;
      do
      {
        v10 = [v16 objectAtIndexedSubscript:v8];

        v11 = 0;
        v12 = v7;
        do
        {
          v13 = [v10 objectAtIndexedSubscript:v11];
          [v13 floatValue];
          *(*a2 + v12) = v14;

          ++v11;
          v12 += 4 * v6;
        }

        while (v9 != v11);
        ++v8;
        v7 += 4;
        v4 = v10;
      }

      while (v8 != v6);
    }
  }
}

void sub_1DED42580(void *a1, void *a2, _OWORD **a3)
{
  a1;
  v5 = a2;
  v6 = *(MEMORY[0x1E69E9B18] + 16);
  v7 = *(MEMORY[0x1E69E9B18] + 32);
  v8 = *(MEMORY[0x1E69E9B18] + 48);
  v9 = *a3;
  *v9 = *MEMORY[0x1E69E9B18];
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  operator new();
}

void sub_1DED427BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  operator delete(v9);

  _Unwind_Resume(a1);
}

uint64_t sub_1DED42810(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 200));
  *(a1 + 200) = 0;
  CVPixelBufferRelease(*(a1 + 192));
  *(a1 + 192) = 0;
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1DED4288C(uint64_t a1, CVPixelBufferRef pixelBuffer, int *a3, float a4, float a5, float a6)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v16 = (a1 + 304);
  bzero((a1 + 304), 0x400uLL);
  v17 = 0.0;
  v18 = 0;
  if (Height && Width)
  {
    v19 = 0;
    for (i = 0; i != Height; ++i)
    {
      v21 = BaseAddress;
      v22 = Width;
      do
      {
        v23 = *v21;
        if (*v21 >= 2048.0)
        {
          ++v18;
        }

        else
        {
          v24 = *(a1 + 112);
          v25 = *(a1 + 116);
          if (v23 >= v24 && v23 < v25)
          {
            v27 = (((v23 - v24) * 256.0) / (v25 - v24));
            v16[v27] = v16[v27] + 1.0;
            v23 = *v21;
          }

          if (v23 < a4)
          {
            ++v19;
          }
        }

        ++v21;
        --v22;
      }

      while (v22);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    v17 = v19;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  *(a1 + 1328) = 872415232;
  v28 = 0.00000011921;
  for (j = 304; j != 1328; j += 4)
  {
    v28 = v28 + *(a1 + j);
    *(a1 + 1328) = v28;
  }

  v30 = *v16 / v28;
  *v16 = v30;
  for (k = 308; k != 1328; k += 4)
  {
    v30 = v30 + (*(a1 + k) / *(a1 + 1328));
    *(a1 + k) = v30;
  }

  if (*(a1 + 1328) <= 0.00000011921)
  {
    bzero((a1 + 304), 0x400uLL);
  }

  v32 = 0;
  v33 = (Height * Width);
  v34 = v18 / v33;
  v35 = *(a1 + 112);
  v36 = *(a1 + 116);
  v37 = v17 / v33;
  do
  {
    if (*(a1 + 4 * v32 + 304) > *(a1 + 180))
    {
      break;
    }

    ++v32;
  }

  while (v32 != 256);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  v38 = CVPixelBufferGetBaseAddress(pixelBuffer);
  v39 = CVPixelBufferGetHeight(pixelBuffer);
  v40 = CVPixelBufferGetWidth(pixelBuffer);
  v41 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v39 && v40)
  {
    v42 = 0;
    v43 = 0;
    v44 = v35 + (vcvts_n_f32_u64(v32, 8uLL) * (v36 - v35));
    v45 = 0.0;
    do
    {
      v46 = v38;
      v47 = v40;
      do
      {
        v48 = *v46++;
        v49 = v45 + v48;
        v43 += v48 < 2048.0 && v48 >= v44;
        if (v48 < 2048.0 && v48 >= v44)
        {
          v45 = v49;
        }

        --v47;
      }

      while (v47);
      ++v42;
      v38 = (v38 + v41);
    }

    while (v42 != v39);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    if (v43)
    {
      v50 = v45 / v43;
      goto LABEL_40;
    }
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  v50 = 2048.0;
LABEL_40:
  sub_1DED434FC(a1, a1 + 304, a6, *(a1 + 112), *(a1 + 116), a4, a5, *(a1 + 176));
  v52 = v51;
  v53 = 0.0;
  v54 = 0.0;
  if (*(a1 + 188) != 1)
  {
    goto LABEL_109;
  }

  v194 = a3;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(*(a1 + 192), 0);
  CVPixelBufferLockBaseAddress(*(a1 + 200), 0);
  v55 = CVPixelBufferGetBaseAddress(pixelBuffer);
  v56 = CVPixelBufferGetHeight(pixelBuffer);
  v57 = CVPixelBufferGetWidth(pixelBuffer);
  v58 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v59 = CVPixelBufferGetBaseAddress(*(a1 + 192));
  src.data = v59;
  src.height = CVPixelBufferGetHeight(*(a1 + 192));
  src.width = CVPixelBufferGetWidth(*(a1 + 192));
  v60 = CVPixelBufferGetBytesPerRow(*(a1 + 192));
  src.rowBytes = v60;
  dest.data = CVPixelBufferGetBaseAddress(*(a1 + 200));
  dest.height = CVPixelBufferGetHeight(*(a1 + 200));
  dest.width = CVPixelBufferGetWidth(*(a1 + 200));
  dest.rowBytes = CVPixelBufferGetBytesPerRow(*(a1 + 200));
  v62 = v56;
  if (v56 && v57)
  {
    *v61.i32 = a4 + -0.6;
    v63 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    if (v57 <= 3)
    {
      v64 = 0;
      v65 = &v59->i8[2];
      v66 = &v55->f32[2];
      v67 = v62;
      do
      {
        v68 = *(v66 - 2);
        v69 = v68 >= *v61.i32 && v68 < 2048.0;
        *(v65 - 2) = v69;
        v64 += v69;
        if (v57 != 1)
        {
          v70 = *(v66 - 1);
          v71 = v70 >= *v61.i32 && (v70 < 2048.0);
          *(v65 - 1) = v71;
          v64 += v71;
          if (v57 != 2)
          {
            v72 = *v66 >= *v61.i32 && *v66 < 2048.0;
            *v65 = v72;
            v64 += v72;
          }
        }

        v65 += v60;
        v66 = (v66 + v58);
        --v67;
      }

      while (v67);
      goto LABEL_88;
    }

    v76 = v55 >= &v59->i8[v57 + v60 * (v56 - 1)] || v59 >= (&v55->f32[v57] + v58 * (v56 - 1));
    if (!v76 || ((v60 | v58) & 0x8000000000000000) != 0)
    {
      v64 = 0;
      v130 = 0;
      do
      {
        v131 = v55;
        v132 = v59;
        v133 = v57;
        do
        {
          v134 = *v131++;
          LODWORD(v135) = v134 < 2048.0;
          if (v134 >= *v61.i32)
          {
            v135 = v135;
          }

          else
          {
            v135 = 0;
          }

          v132->i8[0] = v135;
          v132 = (v132 + 1);
          v64 += v135;
          --v133;
        }

        while (v133);
        ++v130;
        v59 = (v59 + v60);
        v55 = (v55 + v58);
      }

      while (v130 != v62);
LABEL_88:
      v136 = v62;
      vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
      data = dest.data;
      if (v57 < 4)
      {
        v139 = 0;
        v140 = dest.data + 2;
        v73 = v136;
        v141 = v136;
        a3 = v194;
        do
        {
          v139 += *(v140 - 2);
          if (v57 != 1)
          {
            v139 += *(v140 - 1);
            if (v57 != 2)
            {
              v139 += *v140;
            }
          }

          v140 += dest.rowBytes;
          --v141;
        }

        while (v141);
LABEL_107:
        v74 = v64;
        v75 = v139;
        goto LABEL_108;
      }

      v142 = 0;
      v139 = 0;
      v143.i64[0] = 255;
      v143.i64[1] = 255;
      a3 = v194;
      v73 = v136;
      while (v57 >= 0x10)
      {
        v145 = 0uLL;
        v146 = v139;
        v147 = data;
        v148 = v57 & 0xFFFFFFFFFFFFFFF0;
        v149 = 0uLL;
        v150 = 0uLL;
        v151 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v154 = 0uLL;
        do
        {
          v155 = *v147++;
          v156 = vqtbl1q_s8(v155, xmmword_1DED74020);
          v157 = vqtbl1q_s8(v155, xmmword_1DED74030);
          v158 = vqtbl1q_s8(v155, xmmword_1DED74040);
          v159 = vqtbl1q_s8(v155, xmmword_1DED74050);
          v145 = vaddw_high_u32(v145, v157);
          v150 = vaddw_high_u32(v150, v156);
          v149 = vaddw_u32(v149, *v156.i8);
          v146 = vaddw_u32(v146, *v157.i8);
          v151 = vaddw_u32(v151, *v158.i8);
          v152 = vaddw_high_u32(v152, v158);
          v153 = vaddw_u32(v153, *v159.i8);
          v154 = vaddw_high_u32(v154, v159);
          v148 -= 16;
        }

        while (v148);
        v137 = vaddq_s64(v150, v154);
        v139 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v146, v151), vaddq_s64(v149, v153)), vaddq_s64(vaddq_s64(v145, v152), v137)));
        if (v57 == (v57 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_95;
        }

        v144 = v57 & 0xFFFFFFFFFFFFFFF0;
        v160 = v57 & 0xFFFFFFFFFFFFFFF0;
        if ((v57 & 0xC) != 0)
        {
          goto LABEL_102;
        }

        do
        {
LABEL_105:
          v139 += data->u8[v160++];
        }

        while (v57 != v160);
LABEL_95:
        ++v142;
        data = (data + dest.rowBytes);
        if (v142 == v136)
        {
          goto LABEL_107;
        }
      }

      v144 = 0;
LABEL_102:
      v161 = 0uLL;
      v162 = v139;
      do
      {
        v137.i32[0] = *(data->i32 + v144);
        v163 = vmovl_u16(*&vmovl_u8(*v137.i8));
        v164.i64[0] = v163.u32[0];
        v164.i64[1] = v163.u32[1];
        v165 = vandq_s8(v164, v143);
        v164.i64[0] = v163.u32[2];
        v164.i64[1] = v163.u32[3];
        v137 = vandq_s8(v164, v143);
        v161 = vaddq_s64(v161, v137);
        v162 = vaddq_s64(v162, v165);
        v144 += 4;
      }

      while (v63 != v144);
      v139 = vaddvq_s64(vaddq_s64(v162, v161));
      v160 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      if (v57 == v63)
      {
        goto LABEL_95;
      }

      goto LABEL_105;
    }

    v64 = 0;
    v77 = 0;
    v78 = vdupq_lane_s32(v61, 0);
    v79.i64[0] = 0x4500000045000000;
    v79.i64[1] = 0x4500000045000000;
    v80 = vdupq_n_s64(1uLL);
    v81.i64[0] = 0x101010101010101;
    v81.i64[1] = 0x101010101010101;
    while (1)
    {
      if (v57 >= 0x10)
      {
        v83 = 0uLL;
        v84 = v64;
        v85 = v55;
        v86 = v59;
        v87 = v57 & 0xFFFFFFFFFFFFFFF0;
        v88 = 0uLL;
        v89 = 0uLL;
        v90 = 0uLL;
        v91 = 0uLL;
        v92 = 0uLL;
        v93 = 0uLL;
        do
        {
          v94 = vbicq_s8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(*v85, v79), vcgeq_f32(v85[1], v79)), vuzp1q_s16(vcgeq_f32(v85[2], v79), vcgeq_f32(v85[3], v79)))), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v78, *v85), vcgtq_f32(v78, v85[1])), vuzp1q_s16(vcgtq_f32(v78, v85[2]), vcgtq_f32(v78, v85[3]))));
          v95 = v94.u8[0];
          v96 = v94.u8[1];
          v97 = v94.u8[2];
          v98 = v94.u8[3];
          v99 = v94.u8[4];
          v100 = v94.u8[5];
          v101 = v94.u8[6];
          v102 = v94.u8[7];
          v103 = v94.u8[8];
          v104 = v94.u8[9];
          v105 = v94.u8[10];
          v106 = v94.u8[11];
          v107 = v94.u8[12];
          v108 = v94.u8[13];
          v109 = vandq_s8(v94, v81);
          v110 = v94.u8[14];
          v111 = v94.u8[15];
          v112 = vdupq_n_s64(1uLL);
          v113.i64[0] = v95;
          v113.i64[1] = v96;
          v114 = vandq_s8(v113, v112);
          v113.i64[0] = v97;
          v113.i64[1] = v98;
          v115 = vandq_s8(v113, v112);
          v113.i64[0] = v99;
          v113.i64[1] = v100;
          v116 = vandq_s8(v113, v112);
          v113.i64[0] = v101;
          v113.i64[1] = v102;
          v117 = vandq_s8(v113, v112);
          v113.i64[0] = v103;
          v113.i64[1] = v104;
          v118 = vandq_s8(v113, v112);
          v113.i64[0] = v105;
          v113.i64[1] = v106;
          v119 = vandq_s8(v113, v112);
          v113.i64[0] = v107;
          v113.i64[1] = v108;
          v120 = vandq_s8(v113, v112);
          v113.i64[0] = v110;
          v113.i64[1] = v111;
          v93 = vaddq_s64(v93, vandq_s8(v113, v112));
          v92 = vaddq_s64(v92, v120);
          *v86++ = v109;
          v91 = vaddq_s64(v91, v119);
          v90 = vaddq_s64(v90, v118);
          v89 = vaddq_s64(v89, v117);
          v88 = vaddq_s64(v88, v116);
          v83 = vaddq_s64(v83, v115);
          v84 = vaddq_s64(v84, v114);
          v85 += 4;
          v87 -= 16;
        }

        while (v87);
        v64 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v84, v90), vaddq_s64(v88, v92)), vaddq_s64(vaddq_s64(v83, v91), vaddq_s64(v89, v93))));
        if (v57 == (v57 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_66;
        }

        v82 = v57 & 0xFFFFFFFFFFFFFFF0;
        v121 = v57 & 0xFFFFFFFFFFFFFFF0;
        if ((v57 & 0xC) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v82 = 0;
      }

      v122 = 0uLL;
      v123 = v64;
      v124 = 4 * v82;
      do
      {
        v125 = vbicq_s8(vmvnq_s8(vcgeq_f32(*(v55 + v124), v79)), vcgtq_f32(v78, *(v55 + v124)));
        *(v59->i32 + v82) = vuzp1_s8(vand_s8(vmovn_s32(v125), 0x1000100010001), v61).u32[0];
        v126.i64[0] = v125.u32[0];
        v126.i64[1] = v125.u32[1];
        v127 = vandq_s8(v126, v80);
        v126.i64[0] = v125.u32[2];
        v126.i64[1] = v125.u32[3];
        v122 = vaddq_s64(v122, vandq_s8(v126, v80));
        v123 = vaddq_s64(v123, v127);
        v82 += 4;
        v124 += 16;
      }

      while (v63 != v82);
      v64 = vaddvq_s64(vaddq_s64(v123, v122));
      v121 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      if (v57 != v63)
      {
        do
        {
LABEL_76:
          v128 = v55->f32[v121];
          v129 = v128 >= *v61.i32 && v128 < 2048.0;
          v59->i8[v121] = v129;
          v64 += v129;
          ++v121;
        }

        while (v57 != v121);
      }

LABEL_66:
      ++v77;
      v59 = (v59 + v60);
      v55 = (v55 + v58);
      if (v77 == v62)
      {
        goto LABEL_88;
      }
    }
  }

  vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
  v73 = v56;
  v74 = 0.0;
  v75 = 0.0;
  a3 = v194;
LABEL_108:
  v166 = v73 * v57;
  CVPixelBufferUnlockBaseAddress(*(a1 + 200), 0);
  CVPixelBufferUnlockBaseAddress(*(a1 + 192), 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v54 = v75 / v166;
  v53 = v74 / v166;
LABEL_109:
  if (*(a1 + 184) <= 0)
  {
    *(a1 + 8) = v37;
    *(a1 + 16) = v34;
  }

  else
  {
    *(a1 + 8) = (v37 * *(a1 + 120)) + ((1.0 - *(a1 + 120)) * *(a1 + 8));
    *(a1 + 16) = *(a1 + 16) + (*(a1 + 1352) * (v34 - *(a1 + 16)));
  }

  v167 = *(a1 + 208);
  v168 = *(a1 + 216);
  v169 = *(a1 + 232);
  v170 = *(a1 + 236);
  *(v167 + 4 * v170) = *a3;
  v171 = (v168 - v167) >> 2;
  v172 = (v170 + 1) % v171;
  *(a1 + 236) = v172;
  if (v169 == v172)
  {
    v169 = (v172 + 1) % v171;
  }

  *(a1 + 232) = v169;
  if (v169 == v172)
  {
    *(a1 + 240) = 0;
  }

  else
  {
    v173 = 0.0;
    v174 = -1;
    v175 = 0.0;
    do
    {
      v176 = v174 + 2;
      v177 = *(v167 + 4 * v169);
      v178 = v177 - v175;
      v175 = v175 + ((v177 - v175) / (v174 + 2));
      v173 = v173 + (v178 * (v177 - v175));
      v169 = (v169 + 1) % v171;
      ++v174;
    }

    while (v169 != v172);
    *(a1 + 240) = v176;
    *(a1 + 244) = v175;
    if (v174)
    {
      *(a1 + 248) = v173 / v174;
    }
  }

  *(a1 + 4) = *(a1 + 248);
  v179 = *(a1 + 284);
  v180 = *(a1 + 256);
  v181 = *(a1 + 264);
  *(v180 + 4 * v179) = *(a1 + 16);
  v182 = v179 + 1;
  v183 = (v181 - v180) >> 2;
  v184 = v182 % v183;
  *(a1 + 284) = v182 % v183;
  v185 = *(a1 + 280);
  if (v185 == v184)
  {
    v185 = (v184 + 1) % v183;
  }

  *(a1 + 280) = v185;
  if (v185 == v184)
  {
    *(a1 + 288) = 0;
  }

  else
  {
    v186 = 0.0;
    v187 = -1;
    v188 = 0.0;
    do
    {
      v189 = v187 + 2;
      v190 = *(v180 + 4 * v185);
      v191 = v190 - v188;
      v188 = v188 + ((v190 - v188) / (v187 + 2));
      v186 = v186 + (v191 * (v190 - v188));
      v185 = (v185 + 1) % v183;
      ++v187;
    }

    while (v185 != v184);
    *(a1 + 288) = v189;
    *(a1 + 292) = v188;
    if (v187)
    {
      *(a1 + 296) = v186 / v187;
    }
  }

  *(a1 + 20) = *(a1 + 296);
  *(a1 + 24) = v54;
  *(a1 + 28) = v53;
  *(a1 + 32) = v52;
  *(a1 + 12) = v18;
  v192 = *a3;
  *(a1 + 36) = v50;
  *(a1 + 40) = v192;
  if ((a1 + 48) != a3 + 2)
  {
    sub_1DED35168((a1 + 48), *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 2);
  }

  if ((a1 + 72) != a3 + 8)
  {
    sub_1DED35168((a1 + 72), *(a3 + 4), *(a3 + 5), (*(a3 + 5) - *(a3 + 4)) >> 2);
  }

  ++*(a1 + 184);
  return a1;
}

void sub_1DED434FC(float *a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = a5 - a4;
  if ((((a6 - a4) * 256.0) / v8) <= 0xFF)
  {
    LODWORD(v9) = (((fminf(a7, 0.25) - a4) * 256.0) / v8);
    if (v9 <= 0xFF)
    {
      if (a6 > -0.00000011921 && a6 < 0.0)
      {
        v11 = -0.00000011921;
      }

      else
      {
        v11 = a6;
      }

      if (a6 >= 0.00000011921 || a6 < 0.0)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0.00000011921;
      }

      v14 = (1.0 / v13) + a8;
      v15 = v14 > -0.00000011921 && v14 < 0.0;
      v16 = 1.0 / v14;
      if (v15)
      {
        v16 = -8388600.0;
      }

      if (v14 < 0.00000011921 && v14 >= 0.0)
      {
        v16 = 8388600.0;
      }

      v18 = ((v13 - a4) * 256.0) / v8;
      v19 = v18;
      v20 = (((v16 - a4) * 256.0) / v8);
      v9 = v9 <= v20 ? v20 : v9;
      if ((v19 & 0x80000000) == 0 && v19 <= 0xFF && v9 <= 0xFF && v9 < v19)
      {
        v23 = v19 + 1;
        v24 = v19 - ((a3 * 256.0) / v8);
        v25 = 4 * v18;
        v26 = 1.0;
        do
        {
          if (v24 < 0)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = *(a2 + 4 * v24);
          }

          v26 = fminf(fminf(fmaxf(*(a2 + v25) - v27, 0.00000011921), 1.0), v26);
          --v23;
          --v24;
          v25 -= 4;
        }

        while (v23 > v9);
        v28 = powf(1.0 - v26, 30.0);
        v29 = a1[336];
        if (v29 >= 0.0)
        {
          v30 = (v28 * a1[334]) + ((1.0 - a1[334]) * v29);
          a1[336] = v30;
          v31 = a1[337];
          if (vabds_f32(v31, v30) <= a1[335])
          {
            return;
          }

          v28 = (v30 * a1[333]) + ((1.0 - a1[333]) * v31);
        }

        else
        {
          a1[336] = v28;
        }

        a1[337] = v28;
      }
    }
  }
}

uint64_t sub_1DED436E8(uint64_t a1, CVPixelBufferRef pixelBuffer, int *a3, float a4, float a5, float a6)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v16 = (a1 + 304);
  bzero((a1 + 304), 0x400uLL);
  v17 = 0.0;
  v18 = 0;
  if (Height && Width)
  {
    v19 = 0;
    for (i = 0; i != Height; ++i)
    {
      v21 = BaseAddress;
      v22 = Width;
      do
      {
        _H5 = *v21;
        if (*v21 >= COERCE_SHORT_FLOAT(26624))
        {
          ++v18;
        }

        else
        {
          __asm { FCVT            S2, H5 }

          v28 = *(a1 + 112);
          v29 = *(a1 + 116);
          if (v28 <= _S2 && v29 > _S2)
          {
            v31 = (((_S2 - v28) * 256.0) / (v29 - v28));
            v16[v31] = v16[v31] + 1.0;
          }

          if (_S2 < a4)
          {
            ++v19;
          }
        }

        ++v21;
        --v22;
      }

      while (v22);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    v17 = v19;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  *(a1 + 1328) = 872415232;
  v32 = 0.00000011921;
  for (j = 304; j != 1328; j += 4)
  {
    v32 = v32 + *(a1 + j);
    *(a1 + 1328) = v32;
  }

  v34 = *v16 / v32;
  *v16 = v34;
  for (k = 308; k != 1328; k += 4)
  {
    v34 = v34 + (*(a1 + k) / *(a1 + 1328));
    *(a1 + k) = v34;
  }

  if (*(a1 + 1328) <= 0.00000011921)
  {
    bzero((a1 + 304), 0x400uLL);
  }

  v36 = 0;
  v37 = (Height * Width);
  v38 = v18 / v37;
  v39 = *(a1 + 112);
  v40 = *(a1 + 116);
  v41 = v17 / v37;
  do
  {
    if (*(a1 + 4 * v36 + 304) > *(a1 + 180))
    {
      break;
    }

    ++v36;
  }

  while (v36 != 256);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  v42 = CVPixelBufferGetBaseAddress(pixelBuffer);
  v43 = CVPixelBufferGetHeight(pixelBuffer);
  v44 = CVPixelBufferGetWidth(pixelBuffer);
  v45 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v43 && v44)
  {
    v46 = 0;
    v47 = 0;
    v48 = v39 + (vcvts_n_f32_u64(v36, 8uLL) * (v40 - v39));
    v49 = 0.0;
    do
    {
      v50 = v42;
      v51 = v44;
      do
      {
        v52 = *v50++;
        _H2 = v52;
        __asm { FCVT            S3, H2 }

        v47 += v52 < COERCE_SHORT_FLOAT(26624) && v48 <= _S3;
        if (v52 < COERCE_SHORT_FLOAT(26624) && v48 <= _S3)
        {
          v49 = v49 + _S3;
        }

        --v51;
      }

      while (v51);
      ++v46;
      v42 = (v42 + v45);
    }

    while (v46 != v43);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    if (v47)
    {
      v55 = v49 / v47;
      goto LABEL_39;
    }
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  v55 = 2048.0;
LABEL_39:
  sub_1DED434FC(a1, a1 + 304, a6, *(a1 + 112), *(a1 + 116), a4, a5, *(a1 + 176));
  v57 = v56;
  v58 = 0.0;
  v59 = 0.0;
  if (*(a1 + 188) != 1)
  {
    goto LABEL_108;
  }

  v207 = a3;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(*(a1 + 192), 0);
  CVPixelBufferLockBaseAddress(*(a1 + 200), 0);
  v60 = CVPixelBufferGetBaseAddress(pixelBuffer);
  v61 = CVPixelBufferGetHeight(pixelBuffer);
  v62 = CVPixelBufferGetWidth(pixelBuffer);
  v63 = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v64 = CVPixelBufferGetBaseAddress(*(a1 + 192));
  src.data = v64;
  src.height = CVPixelBufferGetHeight(*(a1 + 192));
  src.width = CVPixelBufferGetWidth(*(a1 + 192));
  v65 = CVPixelBufferGetBytesPerRow(*(a1 + 192));
  src.rowBytes = v65;
  dest.data = CVPixelBufferGetBaseAddress(*(a1 + 200));
  dest.height = CVPixelBufferGetHeight(*(a1 + 200));
  dest.width = CVPixelBufferGetWidth(*(a1 + 200));
  dest.rowBytes = CVPixelBufferGetBytesPerRow(*(a1 + 200));
  v67 = v61;
  if (v61 && v62)
  {
    *v66.i32 = a4 + -0.6;
    v68 = v62 & 0xFFFFFFFFFFFFFFFCLL;
    if (v62 <= 3)
    {
      v69 = 0;
      v70 = &v64->i8[2];
      v71 = v60 + 2;
      v72 = v67;
      do
      {
        _H2 = *(v71 - 2);
        __asm { FCVT            S3, H2 }

        v75 = *v66.i32 <= _S3 && _H2 < COERCE_SHORT_FLOAT(26624);
        *(v70 - 2) = v75;
        v69 += v75;
        if (v62 != 1)
        {
          _H2 = *(v71 - 1);
          __asm { FCVT            S3, H2 }

          v78 = *v66.i32 <= _S3 && (_H2 < COERCE_SHORT_FLOAT(26624));
          *(v70 - 1) = v78;
          v69 += v78;
          if (v62 != 2)
          {
            _H2 = *v71;
            __asm { FCVT            S3, H2 }

            v81 = *v66.i32 <= _S3 && *v71 < COERCE_SHORT_FLOAT(26624);
            *v70 = v81;
            v69 += v81;
          }
        }

        v70 += v65;
        v71 = (v71 + v63);
        --v72;
      }

      while (v72);
      goto LABEL_87;
    }

    _CF = v60 >= (v64->i16 + v62 + v65 * (v61 - 1)) || v64 >= (&v60[v62] + v63 * (v61 - 1));
    if (!_CF || ((v65 | v63) & 0x8000000000000000) != 0)
    {
      v69 = 0;
      v141 = 0;
      do
      {
        v142 = v60;
        v143 = v64;
        v144 = v62;
        do
        {
          v145 = *v142++;
          _H2 = v145;
          __asm { FCVT            S3, H2 }

          LODWORD(v148) = v145 < COERCE_SHORT_FLOAT(26624);
          if (*v66.i32 <= _S3)
          {
            v148 = v148;
          }

          else
          {
            v148 = 0;
          }

          v143->i8[0] = v148;
          v143 = (v143 + 1);
          v69 += v148;
          --v144;
        }

        while (v144);
        ++v141;
        v64 = (v64 + v65);
        v60 = (v60 + v63);
      }

      while (v141 != v67);
LABEL_87:
      v149 = v67;
      vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
      data = dest.data;
      if (v62 < 4)
      {
        v152 = 0;
        v153 = dest.data + 2;
        v82 = v149;
        v154 = v149;
        a3 = v207;
        do
        {
          v152 += *(v153 - 2);
          if (v62 != 1)
          {
            v152 += *(v153 - 1);
            if (v62 != 2)
            {
              v152 += *v153;
            }
          }

          v153 += dest.rowBytes;
          --v154;
        }

        while (v154);
LABEL_106:
        v83 = v69;
        v84 = v152;
        goto LABEL_107;
      }

      v155 = 0;
      v152 = 0;
      v156.i64[0] = 255;
      v156.i64[1] = 255;
      a3 = v207;
      v82 = v149;
      while (v62 >= 0x10)
      {
        v158 = 0uLL;
        v159 = v152;
        v160 = data;
        v161 = v62 & 0xFFFFFFFFFFFFFFF0;
        v162 = 0uLL;
        v163 = 0uLL;
        v164 = 0uLL;
        v165 = 0uLL;
        v166 = 0uLL;
        v167 = 0uLL;
        do
        {
          v168 = *v160++;
          v169 = vqtbl1q_s8(v168, xmmword_1DED74020);
          v170 = vqtbl1q_s8(v168, xmmword_1DED74030);
          v171 = vqtbl1q_s8(v168, xmmword_1DED74040);
          v172 = vqtbl1q_s8(v168, xmmword_1DED74050);
          v158 = vaddw_high_u32(v158, v170);
          v163 = vaddw_high_u32(v163, v169);
          v162 = vaddw_u32(v162, *v169.i8);
          v159 = vaddw_u32(v159, *v170.i8);
          v164 = vaddw_u32(v164, *v171.i8);
          v165 = vaddw_high_u32(v165, v171);
          v166 = vaddw_u32(v166, *v172.i8);
          v167 = vaddw_high_u32(v167, v172);
          v161 -= 16;
        }

        while (v161);
        v150 = vaddq_s64(v163, v167);
        v152 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v159, v164), vaddq_s64(v162, v166)), vaddq_s64(vaddq_s64(v158, v165), v150)));
        if (v62 == (v62 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_94;
        }

        v157 = v62 & 0xFFFFFFFFFFFFFFF0;
        v173 = v62 & 0xFFFFFFFFFFFFFFF0;
        if ((v62 & 0xC) != 0)
        {
          goto LABEL_101;
        }

        do
        {
LABEL_104:
          v152 += data->u8[v173++];
        }

        while (v62 != v173);
LABEL_94:
        ++v155;
        data = (data + dest.rowBytes);
        if (v155 == v149)
        {
          goto LABEL_106;
        }
      }

      v157 = 0;
LABEL_101:
      v174 = 0uLL;
      v175 = v152;
      do
      {
        v150.i32[0] = *(data->i32 + v157);
        v176 = vmovl_u16(*&vmovl_u8(*v150.i8));
        v177.i64[0] = v176.u32[0];
        v177.i64[1] = v176.u32[1];
        v178 = vandq_s8(v177, v156);
        v177.i64[0] = v176.u32[2];
        v177.i64[1] = v176.u32[3];
        v150 = vandq_s8(v177, v156);
        v174 = vaddq_s64(v174, v150);
        v175 = vaddq_s64(v175, v178);
        v157 += 4;
      }

      while (v68 != v157);
      v152 = vaddvq_s64(vaddq_s64(v175, v174));
      v173 = v62 & 0xFFFFFFFFFFFFFFFCLL;
      if (v62 == v68)
      {
        goto LABEL_94;
      }

      goto LABEL_104;
    }

    v69 = 0;
    v86 = 0;
    v87 = vdupq_lane_s32(v66, 0);
    v88 = vdupq_n_s64(1uLL);
    v89.i64[0] = 0x6800680068006800;
    v89.i64[1] = 0x6800680068006800;
    v90.i64[0] = 0x101010101010101;
    v90.i64[1] = 0x101010101010101;
    while (1)
    {
      if (v62 >= 0x10)
      {
        v92 = 0uLL;
        v93 = v69;
        v94 = v60;
        v95 = v64;
        v96 = v62 & 0xFFFFFFFFFFFFFFF0;
        v97 = 0uLL;
        v98 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        do
        {
          v104 = *v94;
          v103 = v94[1];
          v94 += 2;
          v105 = vbicq_s8(vmvnq_s8(vuzp1q_s8(vcgeq_f16(v104, v89), vcgeq_f16(v103, v89))), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v87, vcvtq_f32_f16(*v104.i8)), vcgtq_f32(v87, vcvt_hight_f32_f16(v104))), vuzp1q_s16(vcgtq_f32(v87, vcvtq_f32_f16(*v103.i8)), vcgtq_f32(v87, vcvt_hight_f32_f16(v103)))));
          v106 = v105.u8[0];
          v104.i32[0] = v105.u8[2];
          v107 = v105.u8[4];
          v108 = v105.u8[1];
          v109 = v105.u8[6];
          v110 = v105.u8[8];
          v104.i32[1] = v105.u8[3];
          v111 = v105.u8[5];
          v112 = v105.u8[7];
          v113 = v105.u8[10];
          v114 = v105.u8[12];
          v115 = v105.u8[9];
          v116 = vandq_s8(v105, v90);
          v117 = v105.u8[14];
          v118 = v105.u8[13];
          v119 = v105.u8[11];
          v120 = v105.u8[15];
          v121 = vdupq_n_s64(1uLL);
          v122.i64[0] = v106;
          v122.i64[1] = v108;
          v123 = vandq_s8(v122, v121);
          v122.i64[0] = v104.u32[0];
          v122.i64[1] = v104.u32[1];
          v124 = vandq_s8(v122, v121);
          v122.i64[0] = v107;
          v122.i64[1] = v111;
          v125 = vandq_s8(v122, v121);
          v122.i64[0] = v109;
          v122.i64[1] = v112;
          v126 = vandq_s8(v122, v121);
          v122.i64[0] = v110;
          v122.i64[1] = v115;
          v127 = vandq_s8(v122, v121);
          v122.i64[0] = v113;
          v122.i64[1] = v119;
          v128 = vandq_s8(v122, v121);
          v122.i64[0] = v114;
          v122.i64[1] = v118;
          v129 = vandq_s8(v122, v121);
          v122.i64[0] = v117;
          v122.i64[1] = v120;
          v102 = vaddq_s64(v102, vandq_s8(v122, v121));
          v101 = vaddq_s64(v101, v129);
          *v95++ = v116;
          v100 = vaddq_s64(v100, v128);
          v99 = vaddq_s64(v99, v127);
          v98 = vaddq_s64(v98, v126);
          v97 = vaddq_s64(v97, v125);
          v92 = vaddq_s64(v92, v124);
          v93 = vaddq_s64(v93, v123);
          v96 -= 16;
        }

        while (v96);
        v69 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v93, v99), vaddq_s64(v97, v101)), vaddq_s64(vaddq_s64(v92, v100), vaddq_s64(v98, v102))));
        if (v62 == (v62 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_65;
        }

        v91 = v62 & 0xFFFFFFFFFFFFFFF0;
        v130 = v62 & 0xFFFFFFFFFFFFFFF0;
        if ((v62 & 0xC) == 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v91 = 0;
      }

      v131 = 0uLL;
      v132 = v69;
      v133 = v91;
      do
      {
        v134 = vbic_s8(vmovn_s32(vmvnq_s8(vcgtq_f32(v87, vcvtq_f32_f16(*&v60[v133])))), vcge_f16(*&v60[v133], 0x6800680068006800));
        *(v64->i32 + v91) = vuzp1_s8(vand_s8(v134, 0x1000100010001), v66).u32[0];
        v135 = vmovl_u16(v134);
        v136.i64[0] = v135.u32[0];
        v136.i64[1] = v135.u32[1];
        v137 = vandq_s8(v136, v88);
        v136.i64[0] = v135.u32[2];
        v136.i64[1] = v135.u32[3];
        v131 = vaddq_s64(v131, vandq_s8(v136, v88));
        v132 = vaddq_s64(v132, v137);
        v91 += 4;
        v133 += 4;
      }

      while (v68 != v91);
      v69 = vaddvq_s64(vaddq_s64(v132, v131));
      v130 = v62 & 0xFFFFFFFFFFFFFFFCLL;
      if (v62 != v68)
      {
        do
        {
LABEL_75:
          _H16 = v60[v130];
          __asm { FCVT            S17, H16 }

          v140 = *v66.i32 <= _S17 && _H16 < COERCE_SHORT_FLOAT(26624);
          v64->i8[v130] = v140;
          v69 += v140;
          ++v130;
        }

        while (v62 != v130);
      }

LABEL_65:
      ++v86;
      v64 = (v64 + v65);
      v60 = (v60 + v63);
      if (v86 == v67)
      {
        goto LABEL_87;
      }
    }
  }

  vImageMin_Planar8(&src, &dest, 0, 0, 0, 3uLL, 3uLL, 0);
  v82 = v61;
  v83 = 0.0;
  v84 = 0.0;
  a3 = v207;
LABEL_107:
  v179 = v82 * v62;
  CVPixelBufferUnlockBaseAddress(*(a1 + 200), 0);
  CVPixelBufferUnlockBaseAddress(*(a1 + 192), 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  v59 = v84 / v179;
  v58 = v83 / v179;
LABEL_108:
  if (*(a1 + 184) <= 0)
  {
    *(a1 + 8) = v41;
    *(a1 + 16) = v38;
  }

  else
  {
    *(a1 + 8) = (v41 * *(a1 + 120)) + ((1.0 - *(a1 + 120)) * *(a1 + 8));
    *(a1 + 16) = *(a1 + 16) + (*(a1 + 1352) * (v38 - *(a1 + 16)));
  }

  v180 = *(a1 + 208);
  v181 = *(a1 + 216);
  v182 = *(a1 + 232);
  v183 = *(a1 + 236);
  *(v180 + 4 * v183) = *a3;
  v184 = (v181 - v180) >> 2;
  v185 = (v183 + 1) % v184;
  *(a1 + 236) = v185;
  if (v182 == v185)
  {
    v182 = (v185 + 1) % v184;
  }

  *(a1 + 232) = v182;
  if (v182 == v185)
  {
    *(a1 + 240) = 0;
  }

  else
  {
    v186 = 0.0;
    v187 = -1;
    v188 = 0.0;
    do
    {
      v189 = v187 + 2;
      v190 = *(v180 + 4 * v182);
      v191 = v190 - v188;
      v188 = v188 + ((v190 - v188) / (v187 + 2));
      v186 = v186 + (v191 * (v190 - v188));
      v182 = (v182 + 1) % v184;
      ++v187;
    }

    while (v182 != v185);
    *(a1 + 240) = v189;
    *(a1 + 244) = v188;
    if (v187)
    {
      *(a1 + 248) = v186 / v187;
    }
  }

  *(a1 + 4) = *(a1 + 248);
  v192 = *(a1 + 284);
  v193 = *(a1 + 256);
  v194 = *(a1 + 264);
  *(v193 + 4 * v192) = *(a1 + 16);
  v195 = v192 + 1;
  v196 = (v194 - v193) >> 2;
  v197 = v195 % v196;
  *(a1 + 284) = v195 % v196;
  v198 = *(a1 + 280);
  if (v198 == v197)
  {
    v198 = (v197 + 1) % v196;
  }

  *(a1 + 280) = v198;
  if (v198 == v197)
  {
    *(a1 + 288) = 0;
  }

  else
  {
    v199 = 0.0;
    v200 = -1;
    v201 = 0.0;
    do
    {
      v202 = v200 + 2;
      v203 = *(v193 + 4 * v198);
      v204 = v203 - v201;
      v201 = v201 + ((v203 - v201) / (v200 + 2));
      v199 = v199 + (v204 * (v203 - v201));
      v198 = (v198 + 1) % v196;
      ++v200;
    }

    while (v198 != v197);
    *(a1 + 288) = v202;
    *(a1 + 292) = v201;
    if (v200)
    {
      *(a1 + 296) = v199 / v200;
    }
  }

  *(a1 + 20) = *(a1 + 296);
  *(a1 + 24) = v59;
  *(a1 + 28) = v58;
  *(a1 + 32) = v57;
  *(a1 + 12) = v18;
  v205 = *a3;
  *(a1 + 36) = v55;
  *(a1 + 40) = v205;
  if ((a1 + 48) != a3 + 2)
  {
    sub_1DED35168((a1 + 48), *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 2);
  }

  if ((a1 + 72) != a3 + 8)
  {
    sub_1DED35168((a1 + 72), *(a3 + 4), *(a3 + 5), (*(a3 + 5) - *(a3 + 4)) >> 2);
  }

  ++*(a1 + 184);
  return a1;
}

void sub_1DED45320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CFTypeRef a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, CFTypeRef cf)
{
  _Block_object_dispose(&a30, 8);
  v43 = cf;
  cf = 0;
  if (v43)
  {
    CFRelease(v43);
  }

  _Block_object_dispose((v41 - 160), 8);
  v44 = *(v41 - 112);
  *(v41 - 112) = 0;
  if (v44)
  {
    CFRelease(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1DED45410(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void sub_1DED45420(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1DED45438(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(*(a1 + 40) + 48);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DED4552C;
  block[3] = &unk_1E869ABD0;
  v9 = *(a1 + 48);
  v10 = *(a1 + 72);
  v12 = v9;
  v13 = v10;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);
}

intptr_t sub_1DED4552C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1[4] + 56);

  return dispatch_semaphore_signal(v5);
}

void sub_1DED4642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_1DED4646C(&a9);

  _Unwind_Resume(a1);
}

void sub_1DED47618(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1DED47644(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(**a1 + 16);
  v9 = sub_1DED6F8DC(a2, a3, a4);
  v10 = [v8 newTextureWithDescriptor:v9];

  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*a1[1] object:**a1 file:@"CVAFilterGuided.mm" lineNumber:600 description:{@"[_Nonnull id<MTLDeviceSPI newTextureWithDescriptor:textureDescriptor(%lu, %lu, %lu)] is nil", a2, a3, a4}];
  }

  return v10;
}

void sub_1DED47BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_guard_abort(&qword_1ECDE13A8);

  _Unwind_Resume(a1);
}

void sub_1DED494C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  sub_1DED42348(&a32);

  operator delete(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_1DED49544(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_1DED49608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*a1 & 1) != 0 || (*(a1 + 1))
  {
    if (!*(a1 + 144))
    {
      v7 = sub_1DED497EC(v5);
      v8 = *(a1 + 144);
      *(a1 + 144) = v7;

      v9 = sub_1DED497EC(v5);
      v10 = *(a1 + 152);
      *(a1 + 152) = v9;
    }

    v11 = [v6 commandBuffer];
    [v11 setLabel:@"perf profiler"];
    v12 = [v11 blitCommandEncoder];
    v13 = *(a1 + 144);
    memset(v20, 0, sizeof(v20));
    v14 = [v13 width];
    v15 = [*(a1 + 144) height];
    v19[0] = v14;
    v19[1] = v15;
    v19[2] = 1;
    v16 = *(a1 + 152);
    memset(v18, 0, sizeof(v18));
    [v12 copyFromTexture:v13 sourceSlice:0 sourceLevel:0 sourceOrigin:v20 sourceSize:v19 toTexture:v16 destinationSlice:0 destinationLevel:0 destinationOrigin:v18];
    [v12 endEncoding];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1DED49928;
    v17[3] = &unk_1E869AC18;
    v17[4] = a1;
    [v11 addCompletedHandler:v17];
    [v11 commit];
    ++*(a1 + 8);
  }
}

id sub_1DED497EC(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:2 height:2 mipmapped:0];
  [v2 setUsage:3];
  v3 = [v1 newTextureWithDescriptor:v2];

  v9 = xmmword_1DED74100;
  memset(v6, 0, sizeof(v6));
  v7 = vdupq_n_s64(2uLL);
  v8 = 1;
  [v3 replaceRegion:v6 mipmapLevel:0 slice:0 withBytes:&v9 bytesPerRow:8 bytesPerImage:16];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1DED49928(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  std::mutex::lock((v3 + 80));
  [v5 GPUEndTime];
  if ((*(v3 + 56) & 1) == 0)
  {
    *(v3 + 56) = 1;
  }

  *(v3 + 64) = v4;
  *(v3 + 72) = 0;
  std::mutex::unlock((v3 + 80));
}

void sub_1DED499A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  std::mutex::unlock((v11 + 80));

  _Unwind_Resume(a1);
}

void sub_1DED499C8(uint64_t a1)
{
  if ((*a1 & 1) == 0 && *(a1 + 1) != 1)
  {
    return;
  }

  std::mutex::lock((a1 + 80));
  v45 = 9;
  strcpy(&v44, "Total GPU");
  v2 = sub_1DED2E7AC(&v44, 9uLL);
  v3 = *(a1 + 24);
  if (!*&v3)
  {
    goto LABEL_46;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*(a1 + 16) + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_46:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v7[1];
      if (v15 == v2)
      {
        v16 = *(v7 + 39);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v7[3];
        }

        if (v16 == 9)
        {
          v18 = v17 >= 0 ? (v7 + 2) : v7[2];
          v19 = *v18;
          v20 = *(v18 + 8);
          if (v19 == v44 && v20 == BYTE8(v44))
          {
            goto LABEL_47;
          }
        }
      }

      else if ((v15 & (*&v3 - 1)) != v5)
      {
        goto LABEL_46;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_46;
    }

LABEL_15:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  v9 = *(v7 + 39);
  v10 = v9;
  if (v9 < 0)
  {
    v9 = v7[3];
  }

  if (v9 != 9)
  {
    goto LABEL_15;
  }

  v11 = v10 >= 0 ? (v7 + 2) : v7[2];
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v12 != v44 || v13 != BYTE8(v44))
  {
    goto LABEL_15;
  }

LABEL_47:
  v22 = v7[5];
  if (!v22)
  {
    operator new();
  }

  v24 = *v22;
  v23 = *(v22 + 1);
  v25 = (v23 - *v22) >> 3;
  v26 = *(v22 + 4);
  if (v25 != v26)
  {
    v32 = *(v22 + 3);
    *v32 = *(a1 + 72);
    v33 = (v32 + 1);
    if (v33 == v23)
    {
      v34 = v24;
    }

    else
    {
      v34 = v33;
    }

    v35 = v26 + 1;
    *(v22 + 3) = v34;
    *(v22 + 4) = v35;
    v31 = v22 + 6;
    v27 = *(a1 + 72);
    if (v25 == v35)
    {
      goto LABEL_60;
    }

    v38 = *v31;
    if (*v31 <= v27)
    {
      if (*v31 >= v27)
      {
        goto LABEL_78;
      }

      v41 = &v24[v35];
      if (!v35 || (v42 = v24, v24 = v41, !*(v22 + 2)))
      {
        v42 = v41;
        v41 = v24;
      }

      v39 = (v27 - v38) / (v41 - v42);
LABEL_73:
      v37 = v38 + v39;
      goto LABEL_77;
    }

    if (v35)
    {
      v40 = &v24[v35];
      if (*(v22 + 2))
      {
LABEL_76:
        v37 = v38 - (v38 - v27) / (v40 - v24);
LABEL_77:
        *v31 = v37;
        v27 = *(a1 + 72);
        goto LABEL_78;
      }
    }

    else
    {
      v40 = v24;
    }

    v24 += v35;
    goto LABEL_76;
  }

  v27 = *(a1 + 72);
  if (v23 != v24)
  {
    v28 = *(v22 + 3);
    *v28 = v27;
    v29 = v28 + 1;
    if (v29 == v23)
    {
      v30 = v24;
    }

    else
    {
      v30 = v29;
    }

    *(v22 + 2) = v30;
    *(v22 + 3) = v30;
    v27 = *(a1 + 72);
  }

  v31 = v22 + 6;
LABEL_60:
  v36 = **(v22 + 2);
  if (v36 > v27)
  {
    v37 = *v31 - (v36 - v27) / (v25 - 1);
    goto LABEL_77;
  }

  if (v36 < v27)
  {
    v38 = (v27 - v36) / (v25 - 1);
    v39 = *v31;
    goto LABEL_73;
  }

LABEL_78:
  ++*(v22 + 7);
  v22[8] = v27 + v22[8];
  v43 = v7[5];
  if (*a1 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s = %.1lf ms%s", "Total GPU", *(v43 + 6) * 1000.0, ""];
  }

  if (*(a1 + 1) == 1)
  {
    NSLog(&cfstr_CvaphotoProfil.isa, *(a1 + 8), "Total GPU", v27 * 1000.0, "");
    NSLog(&cfstr_CvaphotoProfil_0.isa, *(a1 + 8), "Total GPU", *(v43 + 8) / v43[7] * 1000.0, "");
  }

  std::mutex::unlock((a1 + 80));
}

void sub_1DED4A098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  std::mutex::unlock((v16 + 80));
  _Unwind_Resume(a1);
}

void sub_1DED4A0D8(void *a1, int a2)
{
  if (a2 <= -2)
  {
    sub_1DED4A1E8(&v2, "circular_buffer");
    abort();
  }

  if (a2 != -1)
  {
    operator new();
  }

  a1[4] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
}

void sub_1DED4A1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DED4A21C(va);
  _Unwind_Resume(a1);
}

std::logic_error *sub_1DED4A1E8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t sub_1DED4A21C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *(result + 32);
  v4 = *result;
  v5 = v2 - v1;
  v6 = (v2 - *result) >> 3;
  if (v3 < v5 >> 3)
  {
    v6 = 0;
  }

  *(result + 16) = v1 + 8 * (v3 - v6);
  if (v4)
  {
    v7 = result;
    operator delete(v4);
    return v7;
  }

  return result;
}

void sub_1DED4A280(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[7];
  v5 = a1[3];
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 3;
  if (v4 < v6 >> 3)
  {
    v7 = 0;
  }

  a1[5] = v2 + 8 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1DED4A2BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59F9C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C8F40);
}

void sub_1DED4A330(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1DED35334();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_1DED4A4BC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_1DED4A57C(uint64_t a1, uint64_t a2, double a3)
{
  if ((*a1 & 1) == 0 && *(a1 + 1) != 1)
  {
    return;
  }

  std::mutex::lock((a1 + 80));
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = sub_1DED2E7AC(v7, v8);
  v10 = v9;
  v11 = *(a1 + 24);
  if (!*&v11)
  {
    goto LABEL_44;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v11)
    {
      v13 = v9 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v9;
  }

  v14 = *(*(a1 + 16) + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_44:
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v15[1];
      if (v20 == v10)
      {
        v21 = *(v15 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v15[3];
        }

        if (v21 == v8)
        {
          v23 = v22 >= 0 ? (v15 + 2) : v15[2];
          if (!memcmp(v23, v7, v8))
          {
            goto LABEL_45;
          }
        }
      }

      else if ((v20 & (*&v11 - 1)) != v13)
      {
        goto LABEL_44;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v16 >= *&v11)
    {
      v16 %= *&v11;
    }

    if (v16 != v13)
    {
      goto LABEL_44;
    }

LABEL_21:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  v17 = *(v15 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v15[3];
  }

  if (v17 != v8)
  {
    goto LABEL_21;
  }

  v19 = v18 >= 0 ? (v15 + 2) : v15[2];
  if (memcmp(v19, v7, v8))
  {
    goto LABEL_21;
  }

LABEL_45:
  if (!v15[5])
  {
    operator new();
  }

  if (*(a1 + 56) != 1)
  {
    NSLog(&cfstr_CvaphotoBeginp.isa);
    abort();
  }

  v24 = *(a1 + 64);
  if (v24 <= a3)
  {
    v34 = a3 - v24;
    v35 = v15[5];
    v37 = *v35;
    v36 = v35[1];
    v38 = v36 - *v35;
    v39 = v35[4];
    if (v38 == v39)
    {
      if (v36 != v37)
      {
        v40 = v35[3];
        *v40 = v34;
        v41 = v40 + 1;
        if (v41 == v36)
        {
          v42 = v37;
        }

        else
        {
          v42 = v41;
        }

        v35[2] = v42;
        v35[3] = v42;
      }

      v43 = (v35 + 6);
LABEL_73:
      v54 = *v35[2];
      if (v54 > v34)
      {
        v55 = *v43 - (v54 - v34) / (v38 - 1);
LABEL_107:
        *v43 = v55;
        goto LABEL_108;
      }

      if (v54 < v34)
      {
        v58 = (v34 - v54) / (v38 - 1);
        v59 = *v43;
LABEL_98:
        v55 = v58 + v59;
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    v50 = v35[3];
    *v50 = v34;
    v51 = v50 + 1;
    if (v51 == v36)
    {
      v52 = v37;
    }

    else
    {
      v52 = v51;
    }

    v53 = (v39 + 1);
    v35[3] = v52;
    v35[4] = v53;
    v43 = (v35 + 6);
    if (v38 == v53)
    {
      goto LABEL_73;
    }

    v58 = *v43;
    if (*v43 <= v34)
    {
      if (*v43 < v34)
      {
        v64 = &v37[v53];
        if (!v53 || (v65 = v37, v37 = v64, !v35[2]))
        {
          v65 = v64;
          v64 = v37;
        }

        v59 = (v34 - v58) / (v64 - v65);
        goto LABEL_98;
      }

LABEL_108:
      v35[7] = (v35[7] + 1);
      *(v35 + 8) = v34 + *(v35 + 8);
      *(a1 + 72) = v34 + *(a1 + 72);
      if ((*(a1 + 56) & 1) == 0)
      {
        *(a1 + 56) = 1;
      }

      *(a1 + 64) = a3;
      v66 = v34 * 1000.0;
      v67 = "";
      goto LABEL_111;
    }

    if (v53)
    {
      v61 = &v37[v53];
      if (v35[2])
      {
LABEL_106:
        v55 = v58 - (v58 - v34) / (v61 - v37);
        goto LABEL_107;
      }
    }

    else
    {
      v61 = v37;
    }

    v37 += v53;
    goto LABEL_106;
  }

  v25 = v15[5];
  v27 = *v25;
  v26 = *(v25 + 1);
  v28 = (v26 - *v25) >> 3;
  v29 = *(v25 + 4);
  if (v28 != v29)
  {
    v44 = *(v25 + 3);
    *v44 = 0;
    v45 = v44 + 1;
    if (v45 == v26)
    {
      v46 = v27;
    }

    else
    {
      v46 = v45;
    }

    v47 = v29 + 1;
    *(v25 + 3) = v46;
    *(v25 + 4) = v47;
    v33 = v25 + 6;
    if (v28 == v47)
    {
      goto LABEL_67;
    }

    v56 = *v33;
    if (*v33 <= 0.0)
    {
      if (*v33 >= 0.0)
      {
        goto LABEL_103;
      }

      v62 = &v27[v47];
      if (!v47 || (v63 = v27, v27 = v62, !*(v25 + 2)))
      {
        v63 = v62;
        v62 = v27;
      }

      v57 = (0.0 - v56) / (v62 - v63);
LABEL_92:
      v49 = v56 + v57;
      goto LABEL_102;
    }

    if (v47)
    {
      v60 = &v27[v47];
      if (*(v25 + 2))
      {
LABEL_101:
        v49 = v56 - v56 / (v60 - v27);
LABEL_102:
        *v33 = v49;
        goto LABEL_103;
      }
    }

    else
    {
      v60 = v27;
    }

    v27 += v47;
    goto LABEL_101;
  }

  if (v26 != v27)
  {
    v30 = *(v25 + 3);
    *v30 = 0;
    v31 = v30 + 1;
    if (v31 == v26)
    {
      v32 = v27;
    }

    else
    {
      v32 = v31;
    }

    *(v25 + 2) = v32;
    *(v25 + 3) = v32;
  }

  v33 = v25 + 6;
LABEL_67:
  v48 = **(v25 + 2);
  if (v48 > 0.0)
  {
    v49 = *v33 - v48 / (v28 - 1);
    goto LABEL_102;
  }

  if (v48 < 0.0)
  {
    v56 = (0.0 - v48) / (v28 - 1);
    v57 = *v33;
    goto LABEL_92;
  }

LABEL_103:
  ++*(v25 + 7);
  v66 = 0.0;
  v25[8] = v25[8] + 0.0;
  v67 = ", overlapped";
LABEL_111:
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v68 = v15[5];
  if (*a1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s = %.1lf ms%s", a2, *(v68 + 6) * 1000.0, v67];
  }

  if (*(a1 + 1) == 1)
  {
    NSLog(&cfstr_CvaphotoProfil.isa, *(a1 + 8), a2, *&v66, v67);
    NSLog(&cfstr_CvaphotoProfil_0.isa, *(a1 + 8), a2, *(v68 + 8) / v68[7] * 1000.0, v67);
  }

  std::mutex::unlock((a1 + 80));
}

void sub_1DED4ADF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1DED4A4BC(va);
  std::mutex::unlock((v6 + 80));
  _Unwind_Resume(a1);
}

void sub_1DED4BA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  __cxa_guard_abort(&qword_1ECDE13B8);

  _Unwind_Resume(a1);
}

void sub_1DED4DAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  __cxa_guard_abort(&qword_1ECDE15A8);

  _Unwind_Resume(a1);
}

uint64_t sub_1DED4DE08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DED4DE20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([qword_1ECDE1560 BOOLValue])
  {
    v4 = **(a1 + 64);
    if (*(v4 + 1032) == 1)
    {
      if ((byte_1ECDE15B0 & 1) == 0)
      {
        v5 = [MEMORY[0x1E696AC08] defaultManager];
        [v5 createDirectoryAtPath:@"/tmp/_relit_model" withIntermediateDirectories:1 attributes:0 error:0];

        byte_1ECDE15B0 = 1;
        v4 = **(a1 + 64);
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/_relit_model/tc_dot_%04d.png", *(v4 + 376)];
      NSLog(&stru_1F59FDD50.isa, v6);
      [**(a1 + 64) saveTexture:*(**(a1 + 64) + 80) toImage:v6];
    }
  }

  CVPixelBufferRelease(*(a1 + 72));
  CVPixelBufferRelease(*(a1 + 80));
  CVPixelBufferRelease(*(a1 + 88));
  v7 = *(*(*(a1 + 32) + 40) + 48);
  [v3 GPUEndTime];
  v18 = 11;
  strcpy(__p, "Relight GPU");
  sub_1DED4A57C(v7, __p, v8);
  if (v18 < 0)
  {
    operator delete(__p[0]);
    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = *(*(a1 + 32) + 880);
    goto LABEL_8;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_8:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DED4E07C;
  block[3] = &unk_1E869AC78;
  v10 = *(a1 + 48);
  v11 = *(a1 + 96);
  v12 = *(a1 + 56);
  v14 = v10;
  v15 = v12;
  v16 = v11;
  dispatch_async(v9, block);
}

intptr_t sub_1DED4E07C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  CVPixelBufferRelease(*(a1 + 48));
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_1DED4E7C8(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1DED26028(va);
  _Unwind_Resume(a1);
}

void sub_1DED4E8A0()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/AppleCVA.framework/AppleCVA", 4);
  if (!v0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlopen /System/Library/PrivateFrameworks/AppleCVA.framework/AppleCVA";
    goto LABEL_127;
  }

  v1 = v0;
  v2 = dlsym(v0, "CVAFaceTrackingGetAPIVersion");
  off_1ECDE1108 = v2;
  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym func for CVAFaceTrackingGetAPIVersion";
    goto LABEL_127;
  }

  if (v2() <= 14)
  {
    v3 = off_1ECDE1108();
    NSLog(&cfstr_Cvafacetrackin_0.isa, 15, v3);
    goto LABEL_128;
  }

  v6 = dlsym(v1, "kCVAFaceTracking_HoleFilledMesh");
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_HoleFilledMesh";
    goto LABEL_127;
  }

  qword_1ECDE10E0 = *v6;
  if (!qword_1ECDE10E0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_HoleFilledMesh";
    goto LABEL_127;
  }

  v7 = dlsym(v1, "kCVAFaceTracking_TriangulatedMesh");
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_TriangulatedMesh";
    goto LABEL_127;
  }

  qword_1ECDE10C0 = *v7;
  if (!qword_1ECDE10C0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_TriangulatedMesh";
    goto LABEL_127;
  }

  off_1ECDE1110 = dlsym(v1, "CVAFaceTrackingCopySemantics");
  if (!off_1ECDE1110)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym func for CVAFaceTrackingCopySemantics";
    goto LABEL_127;
  }

  v8 = dlsym(v1, "kCVAFaceTracking_Mesh");
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Mesh";
    goto LABEL_127;
  }

  qword_1ECDE1150 = *v8;
  if (!qword_1ECDE1150)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Mesh";
    goto LABEL_127;
  }

  v9 = dlsym(v1, "kCVAFaceTracking_MeshTriIndices");
  if (!v9)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_MeshTriIndices";
    goto LABEL_127;
  }

  qword_1ECDE10D8 = *v9;
  if (!qword_1ECDE10D8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_MeshTriIndices";
    goto LABEL_127;
  }

  v10 = dlsym(v1, "kCVAFaceTracking_MeshQuadIndices");
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_MeshQuadIndices";
    goto LABEL_127;
  }

  qword_1ECDE10D0 = *v10;
  if (!qword_1ECDE10D0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_MeshQuadIndices";
    goto LABEL_127;
  }

  v11 = dlsym(v1, "kCVAFaceTracking_MeshTexcoords");
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_MeshTexcoords";
    goto LABEL_127;
  }

  qword_1ECDE10E8 = *v11;
  if (!qword_1ECDE10E8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_MeshTexcoords";
    goto LABEL_127;
  }

  v12 = dlsym(v1, "kCVAFaceTracking_LandmarkNames");
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_LandmarkNames";
    goto LABEL_127;
  }

  qword_1ECDE10F0 = *v12;
  if (!qword_1ECDE10F0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_LandmarkNames";
    goto LABEL_127;
  }

  v13 = dlsym(v1, "kCVAFaceTracking_TrackedFacesArray");
  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_TrackedFacesArray";
    goto LABEL_127;
  }

  qword_1ECDE10B0 = *v13;
  if (!qword_1ECDE10B0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_TrackedFacesArray";
    goto LABEL_127;
  }

  v14 = dlsym(v1, "kCVAFaceTracking_Confidence");
  if (!v14)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Confidence";
    goto LABEL_127;
  }

  qword_1ECDE1130 = *v14;
  if (!qword_1ECDE1130)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Confidence";
    goto LABEL_127;
  }

  v15 = dlsym(v1, "kCVAFaceTracking_CameraColor");
  if (!v15)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_CameraColor";
    goto LABEL_127;
  }

  qword_1ECDE1100 = *v15;
  if (!qword_1ECDE1100)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_CameraColor";
    goto LABEL_127;
  }

  v16 = dlsym(v1, "kCVAFaceTracking_Intrinsics");
  if (!v16)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Intrinsics";
    goto LABEL_127;
  }

  qword_1ECDE1120 = *v16;
  if (!qword_1ECDE1120)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Intrinsics";
    goto LABEL_127;
  }

  v17 = dlsym(v1, "kCVAFaceTracking_Extrinsics");
  if (!v17)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Extrinsics";
    goto LABEL_127;
  }

  qword_1ECDE1128 = *v17;
  if (!qword_1ECDE1128)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Extrinsics";
    goto LABEL_127;
  }

  v18 = dlsym(v1, "kCVAFaceTracking_Rotation");
  if (!v18)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Rotation";
    goto LABEL_127;
  }

  qword_1ECDE1138 = *v18;
  if (!qword_1ECDE1138)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Rotation";
    goto LABEL_127;
  }

  v19 = dlsym(v1, "kCVAFaceTracking_Translation");
  if (!v19)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Translation";
    goto LABEL_127;
  }

  qword_1ECDE10F8 = *v19;
  if (!qword_1ECDE10F8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Translation";
    goto LABEL_127;
  }

  v20 = dlsym(v1, "kCVAFaceTracking_SmoothData");
  if (!v20)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_SmoothData";
    goto LABEL_127;
  }

  qword_1ECDE1118 = *v20;
  if (!qword_1ECDE1118)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_SmoothData";
    goto LABEL_127;
  }

  v21 = dlsym(v1, "kCVAFaceTracking_Pose");
  if (!v21)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Pose";
    goto LABEL_127;
  }

  qword_1ECDE1148 = *v21;
  if (!qword_1ECDE1148)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Pose";
    goto LABEL_127;
  }

  v22 = dlsym(v1, "kCVAFaceTracking_Geometry");
  if (!v22)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_Geometry";
    goto LABEL_127;
  }

  qword_1ECDE1140 = *v22;
  if (!qword_1ECDE1140)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_Geometry";
    goto LABEL_127;
  }

  v23 = dlsym(v1, "kCVAFaceTracking_GeometryVertices");
  if (!v23)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_GeometryVertices";
    goto LABEL_127;
  }

  qword_1ECDE10C8 = *v23;
  if (!qword_1ECDE10C8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_GeometryVertices";
    goto LABEL_127;
  }

  v24 = dlsym(v1, "kCVAFaceTracking_GeometryLandmarks");
  if (!v24)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_128;
    }

    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dlsym ptr for kCVAFaceTracking_GeometryLandmarks";
    goto LABEL_127;
  }

  qword_1ECDE10B8 = *v24;
  if (qword_1ECDE10B8)
  {
    byte_1ECDE1098 = 1;
    return;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "> > > CVAPhoto failed to dereference dlsym ptr for kCVAFaceTracking_GeometryLandmarks";
LABEL_127:
    _os_log_impl(&dword_1DED23000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
  }

LABEL_128:
  if ((byte_1ECDE1098 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "> > > CVAPhoto has detected incompatible CVAFaceTracking's API. Face effects are disabled.", buf, 2u);
  }
}

void sub_1DED4F4A4(uint64_t a1, float a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(*v3 + 376);
  if (!v5)
  {
    LOBYTE(a2) = *(v4 + 1033);
    *(v4 + 864) = LODWORD(a2);
    v4 = *v3;
    v5 = *(*v3 + 376);
  }

  if (v5 > 2)
  {
    v6 = (v4 + 1040);
    v7 = *(v4 + 1040);
    v8 = *(v4 + 1048);
    v9 = *(v4 + 1072);
    if (&v8[-v7] == v9)
    {
      if (v8 != v7)
      {
        v10 = *(v4 + 1064);
        *v10 = *(v4 + 1033);
        v11 = v10 + 1;
        if (v11 == v8)
        {
          v12 = v7;
        }

        else
        {
          v12 = v11;
        }

        v6[2] = v12;
        v6[3] = v12;
      }
    }

    else
    {
      v13 = *(v4 + 1064);
      *v13 = *(v4 + 1033);
      v14 = v13 + 1;
      if (v14 == v8)
      {
        v15 = v7;
      }

      else
      {
        v15 = v14;
      }

      v6[3] = v15;
      v6[4] = v9 + 1;
    }
  }

  v16 = *(a1 + 8);
  v17 = *v16;
  if (*(*v16 + 1033) == 1)
  {
    v18 = v17 + 1080;
    v19 = v17 + 968;
    v21 = *(v18 + 8);
    v20 = *(v18 + 16);
    v22 = v20 - v21;
    v23 = *(v18 + 40);
    if (v22 == v23)
    {
      if (v20 != v21)
      {
        v24 = *(v18 + 32);
        *v24 = *(v19 + 56);
        v25 = v24 + 1;
        if (v25 == v20)
        {
          v26 = v21;
        }

        else
        {
          v26 = v25;
        }

        *(v18 + 24) = v26;
        *(v18 + 32) = v26;
      }

      v27 = (v18 + 52);
      v28 = 1;
LABEL_29:
      v36 = **(v18 + 24);
      v37 = *(v19 + 56);
      if (v36 <= v37)
      {
        if (v36 >= v37)
        {
          v38 = *v27;
          goto LABEL_87;
        }

        v38 = *v27 + ((v37 - v36) / (v22 - 1));
      }

      else
      {
        v38 = *v27 - ((v36 - v37) / (v22 - 1));
      }

      goto LABEL_86;
    }

    v32 = *(v18 + 32);
    *v32 = *(v19 + 56);
    v33 = v32 + 1;
    if (v33 == v20)
    {
      v34 = v21;
    }

    else
    {
      v34 = v33;
    }

    v35 = v23 + 1;
    *(v18 + 32) = v34;
    *(v18 + 40) = v23 + 1;
    v27 = (v18 + 52);
    v28 = v22 == v35;
    if (v22 == v35)
    {
      goto LABEL_29;
    }

    v38 = *v27;
    v37 = *(v19 + 56);
    if (*v27 <= v37)
    {
      if (*v27 >= v37)
      {
        goto LABEL_87;
      }

      v58 = v37 - v38;
      v59 = &v21[v35];
      if (!v35 || (v60 = v21, v21 = v59, !*(v18 + 24)))
      {
        v60 = v59;
        v59 = v21;
      }

      v38 = v38 + (v58 / (v59 - v60));
LABEL_86:
      *v27 = v38;
      v37 = *(v19 + 56);
LABEL_87:
      v61 = *(v18 + 56);
      v62 = *(v18 + 60) + ((v37 - v38) * (v37 - v61));
      *(v18 + 60) = v62;
      if (v28)
      {
        v63 = v62 - ((**(v18 + 24) - v38) * (**(v18 + 24) - v61));
        *(v18 + 60) = v63;
        if (v63 < 0.0)
        {
          *(v18 + 60) = 0;
        }
      }

      *(v18 + 56) = v38;
      goto LABEL_91;
    }

    v47 = v38 - v37;
    if (v35)
    {
      v48 = &v21[v35];
      if (*(v18 + 24))
      {
LABEL_85:
        v38 = v38 - (v47 / (v48 - v21));
        goto LABEL_86;
      }
    }

    else
    {
      v48 = v21;
    }

    v21 += v35;
    goto LABEL_85;
  }

  sub_1DED4FB48(&v86, 5);
  v94 = 0;
  v99 = v90;
  v29 = v86;
  v30 = v87;
  v31 = v87 - v86;
  if (v31 >> 62)
  {
    sub_1DED4A1E8(&v93, "circular_buffer");
    abort();
  }

  if (v87 != v86)
  {
    operator new();
  }

  __p = 0;
  v96 = 4 * v31;
  v97 = 0;
  v39 = 0;
  if (v90)
  {
    v40 = v88;
    v39 = 0;
    if (v88)
    {
      v41 = v89;
      v39 = 0;
      do
      {
        v42 = *v40++;
        *v39++ = v42;
        if (v40 == v30)
        {
          v40 = v29;
        }
      }

      while (v40 != v41 && v40 != 0);
    }
  }

  if (v39 == (4 * v31))
  {
    v44 = 0;
  }

  else
  {
    v44 = v39;
  }

  v98 = v44;
  v100 = v91;
  v101 = v92;
  v94 = 1;
  v45 = **(a1 + 8) + 1080;
  if (*v45 == 1)
  {
    sub_1DED4FC58((**(a1 + 8) + 1088), &__p);
    *(v45 + 52) = v100;
    *(v45 + 56) = v101;
  }

  else
  {
    v46 = v99;
    *(**(a1 + 8) + 1120) = v99;
    if (v30 != v29)
    {
      operator new();
    }

    *(v45 + 8) = 0;
    *(v45 + 16) = 4 * v31;
    *(v45 + 24) = 0;
    v49 = 0;
    if (v46)
    {
      v50 = v97;
      v49 = 0;
      if (v97)
      {
        v51 = v98;
        v49 = 0;
        v53 = __p;
        v52 = v96;
        do
        {
          v54 = *v50++;
          *v49++ = v54;
          if (v50 == v52)
          {
            v50 = v53;
          }
        }

        while (v50 != v51 && v50 != 0);
      }
    }

    if (v49 == (4 * v31))
    {
      v56 = 0;
    }

    else
    {
      v56 = v49;
    }

    *(v45 + 32) = v56;
    *(v45 + 52) = v100;
    *(v45 + 56) = v101;
    *v45 = 1;
  }

  if (v94 == 1)
  {
    v57 = (v96 - __p) >> 2;
    if (v99 < (v96 - v97) >> 2)
    {
      v57 = 0;
    }

    v97 += v99 - v57;
    if (__p)
    {
      operator delete(__p);
    }

    v94 = 0;
  }

  if (v29)
  {
    operator delete(v29);
  }

LABEL_91:
  v64 = **(a1 + 8);
  v65 = *(v64 + 1048);
  v66 = *(v64 + 1072);
  if (&v65[-*(v64 + 1040)] == v66)
  {
    v67 = *(v64 + 1120);
    if (v67)
    {
      v68 = *(v64 + 1088);
      v69 = v68 + 4 * v67;
      v70 = v68;
      if (*(v64 + 1104))
      {
LABEL_97:
        v71 = ((v69 - v70) >> 2) - (v67 == (*(v64 + 1096) - v68) >> 2);
        if (v71 >= 2 && (*(v64 + 1140) / (v71 - 1)) > 0.0049)
        {
          goto LABEL_99;
        }

        goto LABEL_100;
      }
    }

    else
    {
      v68 = *(v64 + 1088);
      v69 = v68;
    }

    v70 = v68 + 4 * v67;
    goto LABEL_97;
  }

LABEL_100:
  if (!v66)
  {
    goto LABEL_111;
  }

  v75 = *(v64 + 1056);
  if (!v75)
  {
    goto LABEL_111;
  }

  while (*v75 == 1)
  {
    if (v75 + 1 == v65)
    {
      v75 = *(v64 + 1040);
    }

    else
    {
      ++v75;
    }

    if (v75)
    {
      v76 = v75 == *(v64 + 1064);
    }

    else
    {
      v76 = 1;
    }

    if (v76)
    {
      goto LABEL_111;
    }
  }

LABEL_99:
  v72 = *(v64 + 376);
  v73 = [*(v64 + 48) proxyToFaceEffectLerpNumFrames];
  v74 = *(a1 + 8);
  *(*v74 + 384) = v73 + v72;
  v64 = *v74;
LABEL_111:
  if (*(v64 + 376) >= *(v64 + 384))
  {
    *(v64 + 384) = 0;
  }

  else
  {
    v77 = v64 + 968;
    v78 = *(v64 + 968);
    *(v64 + 968) = 0;

    v79 = *(v77 + 8);
    *(v77 + 8) = 0;

    v80 = *(v77 + 16);
    *(v77 + 16) = 0;

    v81 = *(v77 + 24);
    *(v77 + 24) = 0;

    v82 = *(v77 + 32);
    *(v77 + 32) = 0;

    v83 = *(v77 + 40);
    *(v77 + 40) = 0;

    v84 = *(v77 + 48);
    *(v77 + 48) = 0;

    *(v77 + 56) = 0;
    *(**(a1 + 8) + 1032) = 0;
  }

  v85 = *MEMORY[0x1E69E9840];
}

void sub_1DED4FB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1DED4FD84(&a19);
  sub_1DED4FDF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1DED4FB48(uint64_t a1, int a2)
{
  if (a2 <= -2)
  {
    sub_1DED4A1E8(&v2, "circular_buffer");
    abort();
  }

  if (a2 != -1)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
}

void sub_1DED4FC44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DED4FDF4(va);
  _Unwind_Resume(a1);
}

void **sub_1DED4FC58(void **a1, void **a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2[1];
  if (v3 - *a2 < 0)
  {
    sub_1DED4A1E8(&v20, "circular_buffer");
    abort();
  }

  if (v3 != *a2)
  {
    operator new();
  }

  if (a2[4])
  {
    v4 = a2[1];
    v5 = a2[2];
    v6 = *a2;
    if (v5)
    {
      v7 = a2[3];
      v8 = 0;
      do
      {
        v9 = *v5++;
        *v8 = v9;
        v8 += 4;
        if (v5 == v4)
        {
          v5 = v6;
        }
      }

      while (v5 != v7 && v5 != 0);
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *a2;
    v4 = a2[1];
  }

  v8 = 0;
LABEL_18:
  v11 = v4 - v6;
  v13 = a1[1];
  v12 = a1[2];
  v14 = a1[4];
  v15 = *a1;
  v16 = v13 - v12;
  v17 = (v13 - *a1) >> 2;
  if (v14 < v16 >> 2)
  {
    v17 = 0;
  }

  a1[2] = &v12[4 * (v14 - v17)];
  if (v15)
  {
    operator delete(v15);
  }

  *a1 = 0;
  a1[1] = (4 * v11);
  if (4 * v11 == v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = v8;
  }

  a1[2] = 0;
  a1[3] = v18;
  a1[4] = (v8 >> 2);
  return a1;
}

uint64_t sub_1DED4FD84(uint64_t result)
{
  if (*result == 1)
  {
    v2 = *(result + 16);
    v1 = *(result + 24);
    v3 = *(result + 40);
    v4 = *(result + 8);
    v5 = v2 - v1;
    v6 = (v2 - v4) >> 2;
    if (v3 < v5 >> 2)
    {
      v6 = 0;
    }

    *(result + 24) = v1 + 4 * (v3 - v6);
    if (v4)
    {
      v7 = result;
      operator delete(v4);
      result = v7;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_1DED4FDF4(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *(result + 32);
  v4 = *result;
  v5 = v2 - v1;
  v6 = (v2 - *result) >> 2;
  if (v3 < v5 >> 2)
  {
    v6 = 0;
  }

  *(result + 16) = v1 + 4 * (v3 - v6);
  if (v4)
  {
    v7 = result;
    operator delete(v4);
    return v7;
  }

  return result;
}

uint64_t sub_1DED4FE5C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59F9C68;
  a2[1] = v2;
  return result;
}

void sub_1DED50750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_guard_abort(&qword_1ECDE14E8);

  _Unwind_Resume(a1);
}

void sub_1DED50F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (a17 < 0)
    {
LABEL_5:
      operator delete(a12);
      if ((a29 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a24);
      _Unwind_Resume(a1);
    }
  }

  else if (a17 < 0)
  {
    goto LABEL_5;
  }

  if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_1DED52E38(_Unwind_Exception *exception_object)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED54C68(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_1DED35334();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1DED35334();
    }

    *(2 * v8) = *a2;
    v5 = 2 * v8 + 2;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void **sub_1DED54D64(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1DED54FC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DED55BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, id *__p, uint64_t a20, char a21)
{
  if (__p)
  {
    for (; v21 != __p; v21 -= 3)
    {
    }

    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DED5642C(uint64_t a1@<X0>, __CVBuffer *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = *MEMORY[0x1E69E9840];
  if (sub_1DED573AC())
  {
    if (*(a1 + 80))
    {
      v10 = @"FOCUSMODE_REGION, ";
    }

    else
    {
      v10 = @"FOCUSMODE_GLOBAL_DISPARITY_HISTOGRAM, ";
    }

    v11 = v10;
    v12 = [(__CFString *)v11 stringByAppendingString:*(&off_1E869ACF8 + *(a1 + 104))];

    v13 = (a4[1] - *a4) >> 4;
    v14 = @"no";
    if (a3)
    {
      v14 = @"yes";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"facesArray.len=%ld, useFaceAsFocus=%@", (a4[1] - *a4) >> 4, v14];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"focusUpdateRate: %.3f", *(a1 + 108)];
  }

  if (!*(a1 + 80))
  {
    for (i = 0; i != 256; ++i)
    {
      if (*(a1 + 4 * i + 116) > 0.85)
      {
        break;
      }
    }

    v27 = *(a1 + 1152) + (vcvts_n_f32_u64(i, 8uLL) * (*(a1 + 1156) - *(a1 + 1152)));
    if (*a1 < 2048.0)
    {
      v27 = *a1 + ((v27 - *a1) * 0.2);
    }

    *a1 = v27;
    goto LABEL_97;
  }

  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"input._foregroundPercentile = %d%%", (*(a1 + 1148) * 100.0)];
  }

  v15 = *(a1 + 1148);
  v16 = *(a1 + 1152);
  v17 = *(a1 + 1156);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v20 = *(a1 + 84);
  v21 = *(a1 + 92);
  v22 = vcvt_f32_s32(__PAIR64__(Height, Width));
  v23 = vcvt_s32_f32(vmul_f32(v20, v22));
  if (v21.f32[0] <= 0.0 || v21.f32[1] <= 0.0)
  {
    v28 = vdup_n_s32((((Height + Width) / 2) * 0.1));
    v24 = vmax_s32(vsub_s32(v23, v28), 0);
    v25 = vmin_s32(vadd_s32(v28, v23), __PAIR64__(Height, Width));
    v29 = vcvt_f32_u32(v24);
    v20 = vdiv_f32(v29, v22);
    v21 = vdiv_f32(vadd_f32(v29, vcvt_f32_s32(v25)), v22);
  }

  else
  {
    v24 = vmax_s32(v23, 0);
    v25 = vmin_s32(vcvt_s32_f32(vmul_f32(vadd_f32(v20, v21), v22)), __PAIR64__(Height, Width));
  }

  v30 = v21.f32[1];
  v31 = v21.f32[0];
  v32 = v20.f32[1];
  v33 = v20.f32[0];
  v34 = *(a1 + 104);
  v35 = *(a1 + 1216);
  if (v34 != 2)
  {
    if (!*(a1 + 1216))
    {
      v97 = v24;
      v99 = v25;
      sub_1DED573AC();
      CVPixelBufferLockBaseAddress(a2, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      CVPixelBufferGetHeight(a2);
      CVPixelBufferGetWidth(a2);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
      v62 = vcgt_s32(v99, v97);
      v39 = 0;
      if (v62.i32[1] & v62.i32[0])
      {
        v63 = v97.u32[1];
        v64 = &BaseAddress[4 * v97.u32[0] + BytesPerRow * v97.u32[1]];
        v38 = 0.0;
        do
        {
          v65 = v64;
          v66 = v99.u32[0] - v97.u32[0];
          do
          {
            v67 = *v65++;
            v68 = v38 + v67;
            if (v67 < 2048.0)
            {
              ++v39;
              v38 = v68;
            }

            --v66;
          }

          while (v66);
          ++v63;
          v64 = (v64 + BytesPerRow);
        }

        while (v63 != v99.u32[1]);
      }

      else
      {
        v38 = 0.0;
      }

      CVPixelBufferUnlockBaseAddress(a2, 1uLL);
      if ((*(a1 + 1216) & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (v34 == 1)
    {
      sub_1DED5BA44(a2, v33, v32, v31, v30);
      v38 = v40;
      if (!sub_1DED573AC())
      {
        goto LABEL_66;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Portrait.framework focus dist, gray rect: %f (N/A)", v38];
    }

    else
    {
      sub_1DED5BC38(a2, a1 + 1220, v33, v32, v31, v30);
      v38 = v69;
      if (!sub_1DED573AC())
      {
        goto LABEL_66;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Portrait.framework focus dist, gray rect: %f (%f)", v38, *(a1 + 1220)];
    }

LABEL_66:
    v39 = 0;
    *(a1 + 1220) = v38;
    if (*(a1 + 1216))
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  if (*(a1 + 1216))
  {
    v36 = (a1 + 1220);
    sub_1DED5BC38(a2, a1 + 1220, v33, v32, v31, v30);
    v38 = v37;
    if (sub_1DED573AC())
    {
      objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Portrait.framework focus dist (gray rect: %f (%f)"), v38, *v36;
    }

    v39 = 0;
    *v36 = v38;
    if (*(a1 + 1216))
    {
      goto LABEL_73;
    }

LABEL_70:
    if (v39)
    {
      v38 = v38 / v39;
    }

    else
    {
      v38 = *a1;
    }

    goto LABEL_73;
  }

  v96 = v24;
  v98 = v25;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"p%d%% of white region", (v15 * 100.0)];
  }

  bzero(&v100, 0x400uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  v42 = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  v43 = CVPixelBufferGetBytesPerRow(a2);
  v44 = v96.u32[1];
  v45 = v17 - v16;
  if (v96.i32[1] < v98.i32[1] && v96.i32[0] < v98.i32[0])
  {
    v87 = &v42[4 * v96.u32[0] + v43 * v96.u32[1]];
    v88 = v96.u32[1];
    do
    {
      v89 = v87;
      v90 = v98.u32[0] - v96.u32[0];
      do
      {
        v91 = *v89;
        if (*v89 < 2048.0 && v91 >= v16 && v91 < v17)
        {
          *(&v100 + (((v91 - v16) * 256.0) / v45)) = *(&v100 + (((v91 - v16) * 256.0) / v45)) + 1.0;
        }

        ++v89;
        --v90;
      }

      while (v90);
      ++v88;
      v87 = (v87 + v43);
    }

    while (v88 != v98.u32[1]);
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  v47 = 0;
  v101 = 0.00000011921;
  v48 = 3.18618444e-58;
  do
  {
    *&v48 = *&v48 + *(&v100 + v47);
    v101 = *&v48;
    v47 += 4;
  }

  while (v47 != 1024);
  v49 = *&v100 / *&v48;
  *&v100 = v49;
  for (j = 4; j != 1024; j += 4)
  {
    v49 = v49 + (*(&v100 + j) / v101);
    *(&v100 + j) = v49;
  }

  *&v48 = v101;
  if (v101 <= 0.00000011921)
  {
    syslog(7, "Face percentile failed: bad data?", v48);
    v72 = *(a1 + 24);
    v71 = *(a1 + 32);
    if (v71 == v72)
    {
      v95 = *(a1 + 48);
      v94 = *(a1 + 56);
      if (v94 == v95)
      {
        goto LABEL_97;
      }

      if (((v94 - v95) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v71 - v72) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_120:
    sub_1DED35334();
  }

  for (k = 0; k != 256; ++k)
  {
    if (*(&v100 + k) > v15)
    {
      break;
    }
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  v52 = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  v53 = CVPixelBufferGetBytesPerRow(a2);
  v39 = 0;
  v38 = 0.0;
  if (v96.i32[1] < v98.i32[1] && v96.i32[0] < v98.i32[0])
  {
    v39 = 0;
    v54 = v16 + (vcvts_n_f32_u64(k, 8uLL) * v45);
    v55 = &v52[4 * v96.u32[0] + v53 * v96.u32[1]];
    do
    {
      v56 = v55;
      v57 = v98.u32[0] - v96.u32[0];
      do
      {
        v58 = *v56++;
        v59 = v38 + v58;
        v39 += v58 < 2048.0 && v58 >= v54;
        if (v58 < 2048.0 && v58 >= v54)
        {
          v38 = v59;
        }

        --v57;
      }

      while (v57);
      ++v44;
      v55 = (v55 + v53);
    }

    while (v44 != v98.u32[1]);
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if ((*(a1 + 1216) & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_73:
  v70 = *(a1 + 24);
  *(a1 + 1144) = 1157627904;
  *(a1 + 32) = v70;
  *(a1 + 56) = *(a1 + 48);
  if (a4[1] != *a4)
  {
    operator new();
  }

  v73 = *(a1 + 72);
  if (*(a1 + 112) >= v73 + 1)
  {
    v74 = v73 + 1;
  }

  else
  {
    v74 = *(a1 + 112);
  }

  *(a1 + 72) = v74;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"maxFramesWithoutFace = %d", *(a1 + 112)];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"framesWithoutFace = %d", *(a1 + 72)];
  }

  v75 = *a1;
  if (*a1 >= 2048.0)
  {
    goto LABEL_90;
  }

  v76 = *(a1 + 72);
  if (v76 < 1 || v76 >= *(a1 + 112))
  {
    v77 = *(a1 + 108);
    if (*(a1 + 1216) == 1 && v38 < v75)
    {
      v77 = v77 * 0.1;
      *(a1 + 108) = v77;
    }

    v38 = v75 + ((v38 - v75) * v77);
LABEL_90:
    *a1 = v38;
  }

  *(a1 + 84) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  v79 = *(a1 + 24);
  v78 = *(a1 + 32);
  if (v78 != v79)
  {
    if (((v78 - v79) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  v81 = *(a1 + 48);
  v80 = *(a1 + 56);
  if (v80 != v81)
  {
    if (((v80 - v81) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

LABEL_97:
  *a5 = *a1;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  v83 = *(a1 + 24);
  v82 = *(a1 + 32);
  if (v82 != v83)
  {
    if (((v82 - v83) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  v85 = *(a1 + 48);
  v84 = *(a1 + 56);
  if (v84 != v85)
  {
    if (((v84 - v85) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  *(a5 + 72) = *(a1 + 72);
  v86 = *MEMORY[0x1E69E9840];
}

void sub_1DED57320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    operator delete(v26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DED573AC()
{
  if ((atomic_load_explicit(&qword_1ECDE1178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1178))
  {
    v1 = +[CVAPreferenceManager defaults];
    v2 = [v1 BOOLForKey:@"CVAPhotoDebugDrawAutofocus"];

    byte_1ECDE0F80 = v2;
    __cxa_guard_release(&qword_1ECDE1178);
  }

  return byte_1ECDE0F80;
}

void sub_1DED57454(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1DED35334();
    }

    v10 = v3 - v6;
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

      sub_1DED35334();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_1DED57558(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v8[0] + 24))(v8, v5);
        result = (*(v8[0] + 32))(v8);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        goto LABEL_11;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DED57798(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_1DED35334();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1DED35334();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = 12 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
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
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1DED578D0(uint64_t a1)
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

void sub_1DED57950(uint64_t a1, float *a2)
{
  v2 = *(a1 + 16);
  sub_1DED5BC38(**(a1 + 8), v2 + 1220, *a2, a2[1], a2[2], a2[3]);
  *(v2 + 1220) = v3;
}

__n128 sub_1DED579B0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59F9CF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1DED57A4C(uint64_t a1, int32x2_t *a2)
{
  v3 = *a2;
  v45 = a2[1].i32[0];
  v44 = a2[1].i32[1];
  Width = CVPixelBufferGetWidth(**(a1 + 8));
  Height = CVPixelBufferGetHeight(**(a1 + 8));
  v6 = vcvt_f32_s32(__PAIR64__(Width, Height));
  v7 = vrev64_s32(v3);
  v47 = vmax_s32(vcvt_s32_f32(vmul_f32(v7, v6)), 0);
  v46 = vmin_s32(vcvt_s32_f32(vmul_f32(vadd_f32(v7, __PAIR64__(v45, v44)), v6)), __PAIR64__(Width, Height));
  bzero(v48, 0x400uLL);
  CVPixelBufferLockBaseAddress(**(a1 + 8), 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(**(a1 + 8));
  CVPixelBufferGetHeight(**(a1 + 8));
  CVPixelBufferGetWidth(**(a1 + 8));
  BytesPerRow = CVPixelBufferGetBytesPerRow(**(a1 + 8));
  v10 = v47.u32[0];
  if (v47.i32[0] < v46.i32[0] && v47.i32[1] < v46.i32[1])
  {
    v34 = &BaseAddress[4 * v47.u32[1] + BytesPerRow * v47.u32[0]];
    v35 = v47.u32[0];
    do
    {
      v36 = v34;
      v37 = v46.u32[1] - v47.u32[1];
      do
      {
        v38 = *v36;
        if (*v36 < 2048.0)
        {
          v39 = **(a1 + 16);
          v40 = **(a1 + 24);
          if (v38 >= v39 && v38 < v40)
          {
            v42 = (((v38 - v39) * 256.0) / (v40 - v39));
            v48[v42] = v48[v42] + 1.0;
          }
        }

        ++v36;
        --v37;
      }

      while (v37);
      ++v35;
      v34 = (v34 + BytesPerRow);
    }

    while (v35 != v46.u32[0]);
  }

  CVPixelBufferUnlockBaseAddress(**(a1 + 8), 1uLL);
  v12 = 0;
  v49 = 0.00000011921;
  v13 = 0.00000011921;
  do
  {
    v13 = v13 + v48[v12];
    v49 = v13;
    ++v12;
  }

  while (v12 != 256);
  v14 = v48[0] / v13;
  v48[0] = v14;
  for (i = 1; i != 256; ++i)
  {
    v14 = v14 + (v48[i] / v49);
    v48[i] = v14;
  }

  v16 = 0;
  v17 = **(a1 + 16);
  v18 = **(a1 + 24);
  do
  {
    if (v48[v16] > **(a1 + 32))
    {
      break;
    }

    ++v16;
  }

  while (v16 != 256);
  CVPixelBufferLockBaseAddress(**(a1 + 8), 1uLL);
  v19 = CVPixelBufferGetBaseAddress(**(a1 + 8));
  CVPixelBufferGetHeight(**(a1 + 8));
  CVPixelBufferGetWidth(**(a1 + 8));
  v20 = CVPixelBufferGetBytesPerRow(**(a1 + 8));
  if (v47.i32[0] < v46.i32[0])
  {
    v21 = 0.0;
    if (v47.i32[1] < v46.i32[1])
    {
      v22 = 0;
      v23 = 0;
      v24 = v17 + (vcvts_n_f32_u64(v16, 8uLL) * (v18 - v17));
      v25 = &v19[4 * v47.u32[1] + v20 * v47.u32[0]];
      do
      {
        v26 = v25;
        v27 = v46.u32[1] - v47.u32[1];
        do
        {
          v28 = *v26++;
          v29 = v28;
          v30 = v21 + v28;
          v31 = v28 < 2048.0;
          if (v28 < 2048.0)
          {
            v32 = v23;
          }

          else
          {
            v32 = v23 + 1;
          }

          v33 = !v31 || v29 <= v24;
          if (v33)
          {
            v23 = v32;
          }

          if (!v33)
          {
            v21 = v30;
            ++v22;
          }

          --v27;
        }

        while (v27);
        ++v10;
        v25 = (v25 + v20);
      }

      while (v10 != v46.u32[0]);
    }
  }

  return CVPixelBufferUnlockBaseAddress(**(a1 + 8), 1uLL);
}

__n128 sub_1DED57E0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59F9CB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1DED57EB8(uint64_t a1@<X0>, __CVBuffer *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v110 = *MEMORY[0x1E69E9840];
  if (sub_1DED573AC())
  {
    if (*(a1 + 80))
    {
      v10 = @"FOCUSMODE_REGION, ";
    }

    else
    {
      v10 = @"FOCUSMODE_GLOBAL_DISPARITY_HISTOGRAM, ";
    }

    v11 = v10;
    v12 = [(__CFString *)v11 stringByAppendingString:*(&off_1E869ACF8 + *(a1 + 104))];

    v13 = (a4[1] - *a4) >> 4;
    v14 = @"no";
    if (a3)
    {
      v14 = @"yes";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"facesArray.len=%ld, useFaceAsFocus=%@", (a4[1] - *a4) >> 4, v14];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"focusUpdateRate: %.3f", *(a1 + 108)];
  }

  if (!*(a1 + 80))
  {
    for (i = 0; i != 256; ++i)
    {
      if (*(a1 + 4 * i + 116) > 0.85)
      {
        break;
      }
    }

    v27 = *(a1 + 1152) + (vcvts_n_f32_u64(i, 8uLL) * (*(a1 + 1156) - *(a1 + 1152)));
    if (*a1 < 2048.0)
    {
      v27 = *a1 + ((v27 - *a1) * 0.2);
    }

    *a1 = v27;
    goto LABEL_97;
  }

  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"input._foregroundPercentile = %d%%", (*(a1 + 1148) * 100.0)];
  }

  v15 = *(a1 + 1148);
  v16 = *(a1 + 1152);
  v17 = *(a1 + 1156);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v20 = *(a1 + 84);
  v21 = *(a1 + 92);
  v22 = vcvt_f32_s32(__PAIR64__(Height, Width));
  v23 = vcvt_s32_f32(vmul_f32(v20, v22));
  if (v21.f32[0] <= 0.0 || v21.f32[1] <= 0.0)
  {
    v28 = vdup_n_s32((((Height + Width) / 2) * 0.1));
    v24 = vmax_s32(vsub_s32(v23, v28), 0);
    v25 = vmin_s32(vadd_s32(v28, v23), __PAIR64__(Height, Width));
    v29 = vcvt_f32_u32(v24);
    v20 = vdiv_f32(v29, v22);
    v21 = vdiv_f32(vadd_f32(v29, vcvt_f32_s32(v25)), v22);
  }

  else
  {
    v24 = vmax_s32(v23, 0);
    v25 = vmin_s32(vcvt_s32_f32(vmul_f32(vadd_f32(v20, v21), v22)), __PAIR64__(Height, Width));
  }

  v30 = v21.f32[1];
  v31 = v21.f32[0];
  v32 = v20.f32[1];
  v33 = v20.f32[0];
  v34 = *(a1 + 104);
  v35 = *(a1 + 1216);
  if (v34 != 2)
  {
    if (!*(a1 + 1216))
    {
      v105 = v24;
      v107 = v25;
      sub_1DED573AC();
      CVPixelBufferLockBaseAddress(a2, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      CVPixelBufferGetHeight(a2);
      CVPixelBufferGetWidth(a2);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
      v67 = vcgt_s32(v107, v105);
      v39 = 0;
      if (v67.i32[1] & v67.i32[0])
      {
        v68 = v105.u32[1];
        v69 = &BaseAddress[2 * v105.u32[0] + BytesPerRow * v105.u32[1]];
        v38 = 0.0;
        do
        {
          v70 = v69;
          v71 = v107.u32[0] - v105.u32[0];
          do
          {
            v72 = *v70++;
            _H1 = v72;
            __asm { FCVT            S2, H1 }

            v75 = v38 + _S2;
            if (v72 < COERCE_SHORT_FLOAT(26624))
            {
              ++v39;
              v38 = v75;
            }

            --v71;
          }

          while (v71);
          ++v68;
          v69 = (v69 + BytesPerRow);
        }

        while (v68 != v107.u32[1]);
      }

      else
      {
        v38 = 0.0;
      }

      CVPixelBufferUnlockBaseAddress(a2, 1uLL);
      if ((*(a1 + 1216) & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (v34 == 1)
    {
      sub_1DED5BA44(a2, v33, v32, v31, v30);
      v38 = v40;
      if (!sub_1DED573AC())
      {
        goto LABEL_66;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Portrait.framework focus dist, gray rect: %f (N/A)", v38];
    }

    else
    {
      sub_1DED5BC38(a2, a1 + 1220, v33, v32, v31, v30);
      v38 = v76;
      if (!sub_1DED573AC())
      {
        goto LABEL_66;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Portrait.framework focus dist, gray rect: %f (%f)", v38, *(a1 + 1220)];
    }

LABEL_66:
    v39 = 0;
    *(a1 + 1220) = v38;
    if (*(a1 + 1216))
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  if (*(a1 + 1216))
  {
    v36 = (a1 + 1220);
    sub_1DED5BC38(a2, a1 + 1220, v33, v32, v31, v30);
    v38 = v37;
    if (sub_1DED573AC())
    {
      objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Portrait.framework focus dist (gray rect: %f (%f)"), v38, *v36;
    }

    v39 = 0;
    *v36 = v38;
    if (*(a1 + 1216))
    {
      goto LABEL_73;
    }

LABEL_70:
    if (v39)
    {
      v38 = v38 / v39;
    }

    else
    {
      v38 = *a1;
    }

    goto LABEL_73;
  }

  v104 = v24;
  v106 = v25;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"p%d%% of white region", (v15 * 100.0)];
  }

  bzero(&v108, 0x400uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  v42 = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  v43 = CVPixelBufferGetBytesPerRow(a2);
  v44 = v104.u32[1];
  v45 = v17 - v16;
  if (v104.i32[1] < v106.i32[1] && v104.i32[0] < v106.i32[0])
  {
    v94 = &v42[2 * v104.u32[0] + v43 * v104.u32[1]];
    v95 = v104.u32[1];
    do
    {
      v96 = v94;
      v97 = v106.u32[0] - v104.u32[0];
      do
      {
        _H3 = *v96;
        __asm { FCVT            S2, H3 }

        if (*v96 < COERCE_SHORT_FLOAT(26624) && v16 <= _S2 && v17 > _S2)
        {
          *(&v108 + (((_S2 - v16) * 256.0) / v45)) = *(&v108 + (((_S2 - v16) * 256.0) / v45)) + 1.0;
        }

        ++v96;
        --v97;
      }

      while (v97);
      ++v95;
      v94 = (v94 + v43);
    }

    while (v95 != v106.u32[1]);
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  v47 = 0;
  v109 = 0.00000011921;
  v48 = 3.18618444e-58;
  do
  {
    *&v48 = *&v48 + *(&v108 + v47);
    v109 = *&v48;
    v47 += 4;
  }

  while (v47 != 1024);
  v49 = *&v108 / *&v48;
  *&v108 = v49;
  for (j = 4; j != 1024; j += 4)
  {
    v49 = v49 + (*(&v108 + j) / v109);
    *(&v108 + j) = v49;
  }

  *&v48 = v109;
  if (v109 <= 0.00000011921)
  {
    syslog(7, "Face percentile failed: bad data?", v48);
    v79 = *(a1 + 24);
    v78 = *(a1 + 32);
    if (v78 == v79)
    {
      v103 = *(a1 + 48);
      v102 = *(a1 + 56);
      if (v102 == v103)
      {
        goto LABEL_97;
      }

      if (((v102 - v103) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v78 - v79) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_120:
    sub_1DED35334();
  }

  for (k = 0; k != 256; ++k)
  {
    if (*(&v108 + k) > v15)
    {
      break;
    }
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  v52 = CVPixelBufferGetBaseAddress(a2);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  v53 = CVPixelBufferGetBytesPerRow(a2);
  v39 = 0;
  v38 = 0.0;
  if (v104.i32[1] < v106.i32[1] && v104.i32[0] < v106.i32[0])
  {
    v39 = 0;
    v54 = v16 + (vcvts_n_f32_u64(k, 8uLL) * v45);
    v55 = &v52[2 * v104.u32[0] + v53 * v104.u32[1]];
    do
    {
      v56 = v55;
      v57 = v106.u32[0] - v104.u32[0];
      do
      {
        v58 = *v56++;
        _H2 = v58;
        __asm { FCVT            S3, H2 }

        v39 += v58 < COERCE_SHORT_FLOAT(26624) && v54 <= _S3;
        if (v58 < COERCE_SHORT_FLOAT(26624) && v54 <= _S3)
        {
          v38 = v38 + _S3;
        }

        --v57;
      }

      while (v57);
      ++v44;
      v55 = (v55 + v53);
    }

    while (v44 != v106.u32[1]);
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if ((*(a1 + 1216) & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_73:
  v77 = *(a1 + 24);
  *(a1 + 1144) = 1157627904;
  *(a1 + 32) = v77;
  *(a1 + 56) = *(a1 + 48);
  if (a4[1] != *a4)
  {
    operator new();
  }

  v80 = *(a1 + 72);
  if (*(a1 + 112) >= v80 + 1)
  {
    v81 = v80 + 1;
  }

  else
  {
    v81 = *(a1 + 112);
  }

  *(a1 + 72) = v81;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"maxFramesWithoutFace = %d", *(a1 + 112)];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"framesWithoutFace = %d", *(a1 + 72)];
  }

  v82 = *a1;
  if (*a1 >= 2048.0)
  {
    goto LABEL_90;
  }

  v83 = *(a1 + 72);
  if (v83 < 1 || v83 >= *(a1 + 112))
  {
    v84 = *(a1 + 108);
    if (*(a1 + 1216) == 1 && v38 < v82)
    {
      v84 = v84 * 0.1;
      *(a1 + 108) = v84;
    }

    v38 = v82 + ((v38 - v82) * v84);
LABEL_90:
    *a1 = v38;
  }

  *(a1 + 84) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  v86 = *(a1 + 24);
  v85 = *(a1 + 32);
  if (v85 != v86)
  {
    if (((v85 - v86) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  v88 = *(a1 + 48);
  v87 = *(a1 + 56);
  if (v87 != v88)
  {
    if (((v87 - v88) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

LABEL_97:
  *a5 = *a1;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  v90 = *(a1 + 24);
  v89 = *(a1 + 32);
  if (v89 != v90)
  {
    if (((v89 - v90) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  v92 = *(a1 + 48);
  v91 = *(a1 + 56);
  if (v91 != v92)
  {
    if (((v91 - v92) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_120;
  }

  *(a5 + 72) = *(a1 + 72);
  v93 = *MEMORY[0x1E69E9840];
}

void sub_1DED58DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    operator delete(v26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED58E50(uint64_t a1, float *a2)
{
  v2 = *(a1 + 16);
  sub_1DED5BC38(**(a1 + 8), v2 + 1220, *a2, a2[1], a2[2], a2[3]);
  *(v2 + 1220) = v3;
}

__n128 sub_1DED58EB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59F9D88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1DED58F4C(uint64_t a1, int32x2_t *a2)
{
  v3 = *a2;
  v47 = a2[1].i32[0];
  v46 = a2[1].i32[1];
  Width = CVPixelBufferGetWidth(**(a1 + 8));
  Height = CVPixelBufferGetHeight(**(a1 + 8));
  v6 = vcvt_f32_s32(__PAIR64__(Width, Height));
  v7 = vrev64_s32(v3);
  v49 = vmax_s32(vcvt_s32_f32(vmul_f32(v7, v6)), 0);
  v48 = vmin_s32(vcvt_s32_f32(vmul_f32(vadd_f32(v7, __PAIR64__(v47, v46)), v6)), __PAIR64__(Width, Height));
  bzero(v50, 0x400uLL);
  CVPixelBufferLockBaseAddress(**(a1 + 8), 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(**(a1 + 8));
  CVPixelBufferGetHeight(**(a1 + 8));
  CVPixelBufferGetWidth(**(a1 + 8));
  BytesPerRow = CVPixelBufferGetBytesPerRow(**(a1 + 8));
  v10 = v49.u32[0];
  if (v49.i32[0] < v48.i32[0] && v49.i32[1] < v48.i32[1])
  {
    v35 = &BaseAddress[2 * v49.u32[1] + BytesPerRow * v49.u32[0]];
    v36 = v49.u32[0];
    do
    {
      v37 = v35;
      v38 = v48.u32[1] - v49.u32[1];
      do
      {
        _H3 = *v37;
        if (*v37 < COERCE_SHORT_FLOAT(26624))
        {
          __asm { FCVT            S2, H3 }

          v41 = **(a1 + 16);
          v42 = **(a1 + 24);
          if (v41 <= _S2 && v42 > _S2)
          {
            v44 = (((_S2 - v41) * 256.0) / (v42 - v41));
            v50[v44] = v50[v44] + 1.0;
          }
        }

        ++v37;
        --v38;
      }

      while (v38);
      ++v36;
      v35 = (v35 + BytesPerRow);
    }

    while (v36 != v48.u32[0]);
  }

  CVPixelBufferUnlockBaseAddress(**(a1 + 8), 1uLL);
  v12 = 0;
  v51 = 0.00000011921;
  v13 = 0.00000011921;
  do
  {
    v13 = v13 + v50[v12];
    v51 = v13;
    ++v12;
  }

  while (v12 != 256);
  v14 = v50[0] / v13;
  v50[0] = v14;
  for (i = 1; i != 256; ++i)
  {
    v14 = v14 + (v50[i] / v51);
    v50[i] = v14;
  }

  v16 = 0;
  v17 = **(a1 + 16);
  v18 = **(a1 + 24);
  do
  {
    if (v50[v16] > **(a1 + 32))
    {
      break;
    }

    ++v16;
  }

  while (v16 != 256);
  CVPixelBufferLockBaseAddress(**(a1 + 8), 1uLL);
  v19 = CVPixelBufferGetBaseAddress(**(a1 + 8));
  CVPixelBufferGetHeight(**(a1 + 8));
  CVPixelBufferGetWidth(**(a1 + 8));
  v20 = CVPixelBufferGetBytesPerRow(**(a1 + 8));
  if (v49.i32[0] < v48.i32[0])
  {
    v21 = 0.0;
    if (v49.i32[1] < v48.i32[1])
    {
      v22 = 0;
      v23 = 0;
      v24 = v17 + (vcvts_n_f32_u64(v16, 8uLL) * (v18 - v17));
      v25 = &v19[2 * v49.u32[1] + v20 * v49.u32[0]];
      do
      {
        v26 = v25;
        v27 = v48.u32[1] - v49.u32[1];
        do
        {
          _H2 = *v26;
          __asm { FCVT            S3, H2 }

          if (*v26 < COERCE_SHORT_FLOAT(26624))
          {
            v33 = v23;
          }

          else
          {
            v33 = v23 + 1;
          }

          if (*v26 < COERCE_SHORT_FLOAT(26624) && v24 < _S3)
          {
            v21 = v21 + _S3;
            ++v22;
          }

          else
          {
            v23 = v33;
          }

          ++v26;
          --v27;
        }

        while (v27);
        ++v10;
        v25 = (v25 + v20);
      }

      while (v10 != v48.u32[0]);
    }
  }

  return CVPixelBufferUnlockBaseAddress(**(a1 + 8), 1uLL);
}

__n128 sub_1DED59320(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59F9D40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1DED593CC(CVPixelBufferRef pixelBuffer@<X1>, float *a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a2[288];
  v9 = a2[289];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v14 = a2 + 29;
  bzero(a2 + 29, 0x400uLL);
  v15 = 0.0;
  if (Height && Width)
  {
    for (i = 0; i != Height; ++i)
    {
      v17 = BaseAddress;
      v18 = Width;
      do
      {
        v19 = *v17;
        if (*v17 < 2048.0)
        {
          if (v19 >= v8 && v19 < v9)
          {
            v14[(((v19 - v8) * 256.0) / (v9 - v8))] = v14[(((v19 - v8) * 256.0) / (v9 - v8))] + 1.0;
            v19 = *v17;
          }

          v15 = v15 + fmaxf(*a2 - v19, 0.0);
        }

        ++v17;
        --v18;
      }

      while (v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  a2[285] = 0.00000011921;
  v21 = 0.00000011921;
  for (j = 29; j != 285; ++j)
  {
    v21 = v21 + a2[j];
    a2[285] = v21;
  }

  v23 = *v14 / v21;
  *v14 = v23;
  for (k = 30; k != 285; ++k)
  {
    v23 = v23 + (a2[k] / a2[285]);
    a2[k] = v23;
  }

  if (a2[285] <= 0.00000011921)
  {
    bzero(a2 + 29, 0x400uLL);
  }

  for (m = 0; m != 256; ++m)
  {
    if (a2[m + 29] > 0.1)
    {
      break;
    }
  }

  v26 = v8 + (vcvts_n_f32_u64(m, 8uLL) * (v9 - v8));
  v27 = a2[2];
  if (v27 < 2048.0)
  {
    v26 = v27 + ((v26 - v27) * 0.2);
  }

  a2[2] = v26;
  v28 = v15 / (Height * Width);
  v29 = a2[4];
  if (v29 >= 0.0)
  {
    v28 = (v28 * a2[290]) + ((1.0 - a2[290]) * v29);
  }

  a2[4] = v28;
  if (a3 == 1)
  {
    v31 = 1.0 / *a2;
    v32 = a2[299] + a2[298] * v31;
    v33 = v31 + v32;
    v30 = *a2 + (-1.0 / v33);
  }

  else
  {
    v30 = 0.0;
    if (!a3)
    {
      v30 = fmaxf(a2[293], fminf(a2[292], (v28 - a2[295]) * a2[296])) + fmaxf(fminf(a2[294] - a2[292], (v28 - a2[297]) * a2[300]), 0.0);
    }
  }

  v34 = *a2;
  v35 = 0.0;
  v36 = fminf(fminf(v26, fmaxf(*a2 + (v30 * -2.0), 0.0)), 0.25);
  a2[1] = v30;
  a2[2] = v36;
  if (v34 < 2048.0 && v34 > 0.0)
  {
    if ((atomic_load_explicit(&qword_1ECDE1158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1158))
    {
      LODWORD(v51) = 1053609165;
      qword_1ECDE0FC8 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
      __cxa_guard_release(&qword_1ECDE1158);
    }

    if ((byte_1ECDE0FD0 & 1) == 0)
    {
      operator new();
    }

    v37 = 1.0 / *a2;
    [qword_1ECDE0FC8 floatValue];
    v35 = vabds_f32(1.0 / (v37 + v38), 1.0 / v37);
  }

  a2[3] = v35;
  if ((atomic_load_explicit(&qword_1ECDE1160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1160))
  {
    v49 = +[CVAPreferenceManager defaults];
    v50 = [v49 BOOLForKey:@"CVAPhotoDebugDrawAutofocusDisparityCells"];

    byte_1ECDE0F71 = v50;
    __cxa_guard_release(&qword_1ECDE1160);
  }

  if (byte_1ECDE0F71 == 1)
  {
    v39 = *a2;
    if (*a2 < 2048.0 || ((v40 = v39 - a2[1], v41 = v39 - a2[3], v40 >= 2048.0) ? (v42 = v41 < 2048.0) : (v42 = 1), v42))
    {
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferGetBaseAddress(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  if (sub_1DED573AC())
  {
    v43 = *a2 - a2[1];
    v44 = *a2 - a2[3];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"canonicalBgDisp = %5.3f", a2[2]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"canonicalFgDisp = %5.3f", *a2];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"nonlinearCanonicalFgDispMargin = %5.3f", a2[1]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"nonlinearCutoffDisp = %5.3f", v43];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"linearZCanonicalFgDispMargin = %5.3f", a2[3]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"linearZCutoffDisp = %5.3f", v44];
  }

  *a4 = *a2;
  *(a4 + 16) = a2[4];
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  v46 = *(a2 + 3);
  v45 = *(a2 + 4);
  if (v45 != v46)
  {
    if (((v45 - v46) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_56;
  }

  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  v48 = *(a2 + 6);
  v47 = *(a2 + 7);
  if (v47 != v48)
  {
    if (((v47 - v48) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_56:
    sub_1DED35334();
  }

  *(a4 + 72) = a2[18];
}

void sub_1DED59AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED59B00(CVPixelBufferRef pixelBuffer@<X1>, float *a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a2[288];
  v9 = a2[289];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v14 = a2 + 29;
  bzero(a2 + 29, 0x400uLL);
  v15 = 0.0;
  if (Height && Width)
  {
    for (i = 0; i != Height; ++i)
    {
      v17 = BaseAddress;
      v18 = Width;
      do
      {
        _H5 = *v17;
        if (*v17 < COERCE_SHORT_FLOAT(26624))
        {
          __asm { FCVT            S4, H5 }

          if (v8 <= _S4 && v9 > _S4)
          {
            v14[(((_S4 - v8) * 256.0) / (v9 - v8))] = v14[(((_S4 - v8) * 256.0) / (v9 - v8))] + 1.0;
          }

          v15 = v15 + fmaxf(*a2 - _S4, 0.0);
        }

        ++v17;
        --v18;
      }

      while (v18);
      BaseAddress = (BaseAddress + BytesPerRow);
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  a2[285] = 0.00000011921;
  v26 = 0.00000011921;
  for (j = 29; j != 285; ++j)
  {
    v26 = v26 + a2[j];
    a2[285] = v26;
  }

  v28 = *v14 / v26;
  *v14 = v28;
  for (k = 30; k != 285; ++k)
  {
    v28 = v28 + (a2[k] / a2[285]);
    a2[k] = v28;
  }

  if (a2[285] <= 0.00000011921)
  {
    bzero(a2 + 29, 0x400uLL);
  }

  for (m = 0; m != 256; ++m)
  {
    if (a2[m + 29] > 0.1)
    {
      break;
    }
  }

  v31 = v8 + (vcvts_n_f32_u64(m, 8uLL) * (v9 - v8));
  v32 = a2[2];
  if (v32 < 2048.0)
  {
    v31 = v32 + ((v31 - v32) * 0.2);
  }

  a2[2] = v31;
  v33 = v15 / (Height * Width);
  v34 = a2[4];
  if (v34 >= 0.0)
  {
    v33 = (v33 * a2[290]) + ((1.0 - a2[290]) * v34);
  }

  a2[4] = v33;
  if (a3 == 1)
  {
    v36 = 1.0 / *a2;
    v37 = a2[299] + a2[298] * v36;
    v38 = v36 + v37;
    v35 = *a2 + (-1.0 / v38);
  }

  else
  {
    v35 = 0.0;
    if (!a3)
    {
      v35 = fmaxf(a2[293], fminf(a2[292], (v33 - a2[295]) * a2[296])) + fmaxf(fminf(a2[294] - a2[292], (v33 - a2[297]) * a2[300]), 0.0);
    }
  }

  v39 = *a2;
  v40 = 0.0;
  v41 = fminf(fminf(v31, fmaxf(*a2 + (v35 * -2.0), 0.0)), 0.25);
  a2[1] = v35;
  a2[2] = v41;
  if (v39 < 2048.0 && v39 > 0.0)
  {
    if ((atomic_load_explicit(&qword_1ECDE1168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1168))
    {
      LODWORD(v56) = 1053609165;
      qword_1ECDE0FD8 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
      __cxa_guard_release(&qword_1ECDE1168);
    }

    if ((byte_1ECDE0FE0 & 1) == 0)
    {
      operator new();
    }

    v42 = 1.0 / *a2;
    [qword_1ECDE0FD8 floatValue];
    v40 = vabds_f32(1.0 / (v42 + v43), 1.0 / v42);
  }

  a2[3] = v40;
  if ((atomic_load_explicit(&qword_1ECDE1170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1170))
  {
    v54 = +[CVAPreferenceManager defaults];
    v55 = [v54 BOOLForKey:@"CVAPhotoDebugDrawAutofocusDisparityCells"];

    byte_1ECDE0F79 = v55;
    __cxa_guard_release(&qword_1ECDE1170);
  }

  if (byte_1ECDE0F79 == 1)
  {
    v44 = *a2;
    if (*a2 < 2048.0 || ((v45 = v44 - a2[1], v46 = v44 - a2[3], v45 >= 2048.0) ? (v47 = v46 < 2048.0) : (v47 = 1), v47))
    {
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferGetBaseAddress(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  if (sub_1DED573AC())
  {
    v48 = *a2 - a2[1];
    v49 = *a2 - a2[3];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"canonicalBgDisp = %5.3f", a2[2]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"canonicalFgDisp = %5.3f", *a2];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"nonlinearCanonicalFgDispMargin = %5.3f", a2[1]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"nonlinearCutoffDisp = %5.3f", v48];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"linearZCanonicalFgDispMargin = %5.3f", a2[3]];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"linearZCutoffDisp = %5.3f", v49];
  }

  *a4 = *a2;
  *(a4 + 16) = a2[4];
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  v51 = *(a2 + 3);
  v50 = *(a2 + 4);
  if (v50 != v51)
  {
    if (((v50 - v51) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_56;
  }

  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  v53 = *(a2 + 6);
  v52 = *(a2 + 7);
  if (v52 != v53)
  {
    if (((v52 - v53) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_56:
    sub_1DED35334();
  }

  *(a4 + 72) = a2[18];
}

void sub_1DED5A208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED5A294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ImageSaverRegistrator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED5A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FileConfigRegistrator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DED5A3B4(void *a1)
{
  v40 = a1;
  if (!v40 || (byte_1ECDE1649 & 1) != 0)
  {
    goto LABEL_60;
  }

  if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
  {
    sub_1DED2E5B4();
    __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
    __cxa_guard_release(&qword_1ECDE1188);
  }

  if (byte_1ECDE1088 == 1)
  {
    NSLog(&cfstr_FileconfigUnre.isa, v40);
  }

  v1 = [v40 UTF8String];
  v2 = strlen(v1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1DED35334();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v42 = v2;
  if (v2)
  {
    memmove(__dst, v1, v2);
  }

  *(__dst + v3) = 0;
  v4 = v42;
  v5 = __dst[0];
  if ((v42 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v7 = v42;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = sub_1DED2E7AC(v6, v7);
  v9 = *(&xmmword_1ECDE0FE8 + 1);
  if (!*(&xmmword_1ECDE0FE8 + 1))
  {
    goto LABEL_56;
  }

  v10 = v8;
  v11 = vcnt_s8(*(&xmmword_1ECDE0FE8 + 8));
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *(&xmmword_1ECDE0FE8 + 1))
    {
      v12 = v8 % *(&xmmword_1ECDE0FE8 + 1);
    }
  }

  else
  {
    v12 = (*(&xmmword_1ECDE0FE8 + 1) - 1) & v8;
  }

  v13 = *(xmmword_1ECDE0FE8 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_56:
    if (byte_1ECDE1088 == 1)
    {
      NSLog(&cfstr_FileconfigUnre_0.isa, v40);
    }

    goto LABEL_58;
  }

  if (v11.u32[0] < 2uLL)
  {
    v15 = *(&xmmword_1ECDE0FE8 + 1) - 1;
    while (1)
    {
      v20 = v14[1];
      if (v20 == v10)
      {
        v21 = *(v14 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v14[3];
        }

        if (v21 == v7)
        {
          v23 = v22 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v23, v6, v7))
          {
            goto LABEL_50;
          }
        }
      }

      else if ((v20 & v15) != v12)
      {
        goto LABEL_56;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_56;
      }
    }
  }

  while (1)
  {
    v16 = v14[1];
    if (v16 == v10)
    {
      break;
    }

    if (v16 >= v9)
    {
      v16 %= v9;
    }

    if (v16 != v12)
    {
      goto LABEL_56;
    }

LABEL_28:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_56;
    }
  }

  v17 = *(v14 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v14[3];
  }

  if (v17 != v7)
  {
    goto LABEL_28;
  }

  v19 = v18 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v19, v6, v7))
  {
    goto LABEL_28;
  }

LABEL_50:
  if (byte_1ECDE1088 == 1)
  {
    NSLog(&cfstr_FileconfigUnre_1.isa, v40, v14[6] - v14[5]);
  }

  v24 = v14[5];
  v25 = v14[6];
  if (v24 != v25)
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(v24);

      if (!WeakRetained)
      {
        break;
      }

      if (++v24 == v25)
      {
        v24 = v25;
        goto LABEL_69;
      }
    }

    if (v24 != v25)
    {
      for (i = v24 + 1; i != v25; ++i)
      {
        v28 = objc_loadWeakRetained(i);

        if (v28)
        {
          v29 = objc_loadWeakRetained(i);
          objc_storeWeak(v24, v29);

          ++v24;
        }
      }
    }
  }

LABEL_69:
  v30 = v14[5];
  v31 = v14[6];
  v32 = (v24 - v30) >> 3;
  v33 = (v31 - v30) >> 3;
  v34 = v32 - v33;
  if (v32 <= v33)
  {
    if (v32 < v33)
    {
      while (v31 != v24)
      {
        objc_destroyWeak(--v31);
      }

      v14[6] = v24;
    }
  }

  else
  {
    v35 = v14[7];
    if (v34 > (v35 - v31) >> 3)
    {
      if (!(v32 >> 61))
      {
        v36 = v35 - v30;
        if (v36 >> 2 > v32)
        {
          v32 = v36 >> 2;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v32;
        }

        if (!(v37 >> 61))
        {
          operator new();
        }

        sub_1DED35334();
      }

      sub_1DED35334();
    }

    v38 = &v31[v34];
    v39 = 8 * v32 - 8 * v33;
    do
    {
      *v31++ = 0;
      v39 -= 8;
    }

    while (v39);
    v14[6] = v38;
  }

  if (byte_1ECDE1088 == 1)
  {
    NSLog(&cfstr_FileconfigUnre_2.isa, v40, v14[6] - v14[5]);
  }

LABEL_58:
  if (v4 < 0)
  {
    operator delete(v5);
  }

LABEL_60:
}

void sub_1DED5A8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{
  __cxa_guard_abort(&qword_1ECDE1188);

  _Unwind_Resume(a1);
}

void sub_1DED5A9B4(id val)
{
  v2 = objc_initWeak(&location, val);

  if ((byte_1ECDE1649 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
    {
      sub_1DED2E5B4();
      __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
      __cxa_guard_release(&qword_1ECDE1188);
    }

    v3 = objc_loadWeakRetained(&location);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);

    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1DED35334();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v33 = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    p_dst = &__dst;
    v9 = sub_1DED5ADD0(&__dst);
    v10 = v9;
    v12 = v9[6];
    v11 = v9[7];
    if (v12 >= v11)
    {
      v14 = v9[5];
      v15 = v12 - v14;
      if ((v15 + 1) >> 61)
      {
        sub_1DED35334();
      }

      v16 = v11 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        sub_1DED35334();
      }

      v19 = 8 * v15;
      objc_copyWeak((8 * v15), &location);
      v13 = 8 * v15 + 8;
      v20 = v10[5];
      v21 = v10[6];
      v22 = (v19 + v20 - v21);
      if (v21 != v20)
      {
        v23 = v10[5];
        v24 = v22;
        do
        {
          objc_moveWeak(v24++, v23++);
        }

        while (v23 != v21);
        do
        {
          objc_destroyWeak(v20++);
        }

        while (v20 != v21);
        v20 = v10[5];
      }

      v10[5] = v22;
      v10[6] = v13;
      v10[7] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      objc_copyWeak(v9[6], &location);
      v13 = (v12 + 1);
    }

    v10[6] = v13;
    if (byte_1ECDE1088 == 1)
    {
      v25 = objc_loadWeakRetained(&location);
      NSLog(&cfstr_FileconfigRegi_0.isa, v25);

      NSLog(&cfstr_FileconfigSing.isa, &xmmword_1ECDE0FE8);
      NSLog(&cfstr_FileconfigSing_1.isa, qword_1ECDE1000);
      NSLog(&cfstr_FileconfigClas.isa, v5);
      p_dst = &__dst;
      v26 = sub_1DED5ADD0(&__dst);
      NSLog(&cfstr_FileconfigSing_2.isa, v26[6] - v26[5]);
      p_dst = &__dst;
      v27 = sub_1DED5ADD0(&__dst);
      v28 = v27[5];
      for (i = v27[6]; v28 != i; ++v28)
      {
        WeakRetained = objc_loadWeakRetained(v28);
        NSLog(&cfstr_FileconfigCont.isa, WeakRetained);
      }
    }

    v31 = qword_1ECDE1060;
    qword_1ECDE1060 = 0;

    if (v33 < 0)
    {
      operator delete(__dst);
    }
  }

  objc_destroyWeak(&location);
}

void sub_1DED5AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, id location)
{
  __cxa_guard_abort(&qword_1ECDE1188);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t **sub_1DED5ADD0(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = sub_1DED2E7AC(v2, v3);
  v5 = v4;
  v6 = *(&xmmword_1ECDE0FE8 + 1);
  if (!*(&xmmword_1ECDE0FE8 + 1))
  {
    goto LABEL_41;
  }

  v7 = vcnt_s8(*(&xmmword_1ECDE0FE8 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *(&xmmword_1ECDE0FE8 + 1))
    {
      v8 = v4 % *(&xmmword_1ECDE0FE8 + 1);
    }
  }

  else
  {
    v8 = (*(&xmmword_1ECDE0FE8 + 1) - 1) & v4;
  }

  v9 = *(xmmword_1ECDE0FE8 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        v12 = *(v10 + 39);
        v13 = v12;
        if (v12 < 0)
        {
          v12 = v10[3];
        }

        if (v12 == v3)
        {
          v14 = v13 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v14, v2, v3))
          {
            return v10;
          }
        }
      }

      else if ((v11 & (v6 - 1)) != v8)
      {
        goto LABEL_41;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v15 = v10[1];
    if (v15 == v5)
    {
      break;
    }

    if (v15 >= v6)
    {
      v15 %= v6;
    }

    if (v15 != v8)
    {
      goto LABEL_41;
    }

LABEL_29:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_41;
    }
  }

  v16 = *(v10 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v10[3];
  }

  if (v16 != v3)
  {
    goto LABEL_29;
  }

  v18 = v17 >= 0 ? (v10 + 2) : v10[2];
  if (memcmp(v18, v2, v3))
  {
    goto LABEL_29;
  }

  return v10;
}

void sub_1DED5B1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DED2F104(va);
  _Unwind_Resume(a1);
}

void sub_1DED5B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = ImageSaverAndFileConfigRegistrator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1DED5B2D4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECDE1198 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DED5B36C()
{
  v20 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v0 = qword_1ECDE1198;
  v16 = qword_1ECDE1198;
  if (!qword_1ECDE1198)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = sub_1DED5B2D4;
    v10[4] = &unk_1E869AD48;
    v11 = &v13;
    v12 = v10;
    v17 = xmmword_1E869AD18;
    v18 = *off_1E869AD28;
    v19 = 0;
    v14[3] = _sl_dlopen();
    qword_1ECDE1198 = *(v11[1] + 24);
    v0 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PortraitLibrary(void)"];
    v6 = v4;
    v7 = v4;
    v8 = v5;
    [v6 handleFailureInFunction:v5 file:@"PortraitSoftLinking.m" lineNumber:11 description:{@"%s", v10[0]}];
    v9 = v8;
    v0 = v7;

    __break(1u);
    goto LABEL_7;
  }

  v1 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1DED5B510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DED5B52C(uint64_t a1)
{
  sub_1DED5B36C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PTTexture");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ECDE0F90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPTTextureClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PortraitSoftLinking.m" lineNumber:15 description:{@"Unable to find class %s", "PTTexture"}];

    __break(1u);
  }
}

id sub_1DED5B5F4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ECDE0FA8;
  v7 = qword_1ECDE0FA8;
  if (!qword_1ECDE0FA8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1DED5B6D4;
    v3[3] = &unk_1E869AD70;
    v3[4] = &v4;
    sub_1DED5B6D4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DED5B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DED5B6D4(uint64_t a1)
{
  sub_1DED5B36C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PTRenderPipeline");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ECDE0FA8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPTRenderPipelineClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PortraitSoftLinking.m" lineNumber:16 description:{@"Unable to find class %s", "PTRenderPipeline"}];

    __break(1u);
  }
}

void sub_1DED5B79C(uint64_t a1)
{
  sub_1DED5B36C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PTRenderRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ECDE0F98 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPTRenderRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PortraitSoftLinking.m" lineNumber:17 description:{@"Unable to find class %s", "PTRenderRequest"}];

    __break(1u);
  }
}

void sub_1DED5B864(uint64_t a1)
{
  sub_1DED5B36C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PTRenderPipelineDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ECDE0FA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPTRenderPipelineDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PortraitSoftLinking.m" lineNumber:18 description:{@"Unable to find class %s", "PTRenderPipelineDescriptor"}];

    __break(1u);
  }
}