uint64_t AAXPCGetNextClientID()
{
  if (AAXPCGetNextClientID_sOnce != -1)
  {
    AAXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&AAXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __AAXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  AAXPCGetNextClientID_sNext = word_280B0FA4A << 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return [v2 _completeRequest:v1 error:a1];
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_0_1(int a1, unsigned int **a2, uint64_t a3, _DWORD *a4)
{
  *a4 = a1 + 310000;
  result = *a2;
  v5 = **a2;
  return result;
}

id BTErrorF()
{
  v0 = NSErrorV();

  return v0;
}

void sub_2414F86E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2414F896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F8C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F8F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F92DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  (*(v8 + 16))(v8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F95B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F9B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414F9E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2414FA110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *ShorthandString(uint64_t a1)
{
  if (!strcmp(a1, "Unknown"))
  {
    return "?";
  }

  if (!strcmp(a1, "Disabled") || !strcmp(a1, "Unsupported") || !strcmp(a1, "Off") || *a1 == 78 && *(a1 + 1) == 111 && !*(a1 + 2))
  {
    return "-";
  }

  if (!strcmp(a1, "TemporarilyDisabled"))
  {
    return "t-";
  }

  if (!strcmp(a1, "Enabled") || !strcmp(a1, "Supported") || !strcmp(a1, "Yes"))
  {
    return "+";
  }

  if (!strcmp(a1, "Version1"))
  {
    return "V1";
  }

  if (!strcmp(a1, "Version2"))
  {
    return "V2";
  }

  if (!strcmp(a1, "Low"))
  {
    return "L";
  }

  if (!strcmp(a1, "Medium"))
  {
    return "M";
  }

  if (!strcmp(a1, "High"))
  {
    return "H";
  }

  if (!strcmp(a1, "Press Once"))
  {
    return "P1x";
  }

  if (!strcmp(a1, "Press Hold"))
  {
    return "PHld";
  }

  if (!strcmp(a1, "Background"))
  {
    return "Bkgd";
  }

  if (!strcmp(a1, "DoubleNod"))
  {
    return "2xNod";
  }

  if (!strcmp(a1, "DoubleShake"))
  {
    return "2xShake";
  }

  if (!strcmp(a1, "TiltRight"))
  {
    return "TR";
  }

  if (!strcmp(a1, "UpAndDown"))
  {
    return "UpDn";
  }

  if (!strcmp(a1, "SideToSide"))
  {
    return "S2S";
  }

  if (!strcmp(a1, "Transparency"))
  {
    return "Trnsp";
  }

  return a1;
}

void sub_24150413C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24150453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_241504C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_sync_exit(v23);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_241504F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(*(*a2 + 8) + 40);
  return result;
}

void sub_241508240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241508694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241508AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241508EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241509264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2415096A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241509AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241509F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150A338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150A6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150AF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150B330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150BC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150C090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150C4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150C99C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24150CD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150D890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24150E2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _btSessionEventHandler(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a4;
  dispatch_assert_queue_V2(*(v9 + 23));
  v10 = **(v9 + 17);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        if (v10 > 60)
        {
          goto LABEL_42;
        }

        if (v10 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_42;
          }

          v13 = *(v9 + 17);
        }

LABEL_14:
        LogPrintF();
        goto LABEL_42;
      }

LABEL_12:
      if (v10 > 40)
      {
        goto LABEL_42;
      }

      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v11 = *(v9 + 17);
      }

      goto LABEL_14;
    }

    if (v10 <= 60)
    {
      if (v10 != -1)
      {
LABEL_20:
        LogPrintF();
        goto LABEL_36;
      }

      if (_LogCategory_Initialize())
      {
        v17 = *(v9 + 17);
        goto LABEL_20;
      }
    }

LABEL_36:
    *(v9 + 10) = 0;
    v9[89] = 0;
    v14 = v9[90];
    [v9 _btEnsureStopped];
    if (v14 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (v10 <= 30)
      {
        if (v10 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_24;
          }

          v15 = *(v9 + 17);
        }

        v19 = (a3 + 310000);
        LogPrintF();
      }

LABEL_24:
      *(v9 + 10) = 0;
      v9[89] = 0;
      [v9 _btEnsureStopped];
      if (v9[96] != 1 || (v9[91] & 1) != 0)
      {
        goto LABEL_41;
      }

      v12 = **(v9 + 17);
      if (v12 > 30)
      {
        goto LABEL_39;
      }

      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v18 = *(v9 + 17);
      }

      LogPrintF();
LABEL_39:
      v9[96] = 0;
      [v9 _btEnsureStopped];
LABEL_40:
      [v9 _btEnsureStarted];
LABEL_41:
      CFRelease(v9);
      goto LABEL_42;
    }

    goto LABEL_12;
  }

  if (v10 <= 30)
  {
    if (v10 != -1)
    {
LABEL_17:
      LogPrintF();
      goto LABEL_32;
    }

    if (_LogCategory_Initialize())
    {
      v16 = *(v9 + 17);
      goto LABEL_17;
    }
  }

LABEL_32:
  *(v9 + 10) = a1;
  v9[89] = 0;
  if (v9[90] == 1)
  {
    [v9 _btEnsureStarted];
  }

  else
  {
    [v9 _btEnsureStopped];
  }

LABEL_42:

  objc_autoreleasePoolPop(v8);
}

void _btServiceEventHandler(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, int a5, void *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  v13 = a6;
  dispatch_assert_queue_V2(*(v13 + 23));
  if (v13[88] != 1)
  {
    goto LABEL_64;
  }

  v14 = (v13 + 136);
  v15 = **(v13 + 17);
  if (a3 == 2)
  {
    if (v15 > 30)
    {
      goto LABEL_64;
    }

    if (v15 == -1)
    {
      v18 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_64;
      }

      v19 = *v14;
    }

    goto LABEL_16;
  }

  if (a3 == 1)
  {
    if (v15 > 30)
    {
      goto LABEL_64;
    }

    if (v15 == -1)
    {
      v16 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_64;
      }

      v17 = *v14;
    }

LABEL_16:
    BTServiceSpecificEventToString(a4);
    LogPrintF();
    goto LABEL_64;
  }

  if (a3)
  {
    if (v15 > 30)
    {
      goto LABEL_64;
    }

    if (v15 == -1)
    {
      v24 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_64;
      }

      v25 = *v14;
    }

    goto LABEL_16;
  }

  if (v15 > 30)
  {
    goto LABEL_22;
  }

  if (v15 != -1)
  {
    goto LABEL_7;
  }

  v20 = *(v13 + 17);
  if (_LogCategory_Initialize())
  {
    v40 = *v14;
LABEL_7:
    v49 = BTServiceSpecificEventToString(a4);
    v50 = (a5 + 310000);
    v47 = &unk_241535EB0;
    v48 = a4;
    v46 = a2;
    LogPrintF();
  }

LABEL_22:
  if (a4 != 11)
  {
    goto LABEL_64;
  }

  __s1[0] = 0;
  AddressString = softLinkBTDeviceGetAddressString(a1, __s1, 32);
  if (AddressString)
  {
    _btServiceEventHandler_cold_1(AddressString, v13 + 17);
    goto LABEL_64;
  }

  if (strcmp(__s1, v13 + 8))
  {
    _btServiceEventHandler_cold_2(v13 + 17);
    goto LABEL_64;
  }

  if (!a5)
  {
    v55[0] = 0;
    if (!a1)
    {
      goto LABEL_58;
    }

    softLinkBTDeviceGetName(a1, v55, 248);
    if (v55[0])
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v55];
      v27 = *(v13 + 26);
      *(v13 + 26) = v26;
    }

    v54 = 0;
    v53 = 0;
    softLinkBTDeviceGetDeviceId(a1, &v54 + 4, &v54, &v53, (v13 + 160));
    v52 = 0;
    Default = softLinkBTAccessoryManagerGetDefault(*(v13 + 10), &v52);
    if (Default)
    {
      v29 = Default;
      v30 = **v14;
      if (v30 <= 60)
      {
        if (v30 != -1)
        {
LABEL_38:
          v46 = (v29 + 310000);
          LogPrintF();
          goto LABEL_49;
        }

        if (_LogCategory_Initialize())
        {
          v44 = *v14;
          goto LABEL_38;
        }
      }
    }

LABEL_49:
    if (!v52)
    {
      goto LABEL_58;
    }

    v51 = 0;
    FeatureCapability = softLinkBTAccessoryManagerGetFeatureCapability(v52, a1, 26, &v51);
    if (!FeatureCapability)
    {
      v37 = v51 != 0;
LABEL_57:
      v13[157] = v37;
LABEL_58:
      v38 = **v14;
      if (v38 <= 30)
      {
        if (v38 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_62;
          }

          v41 = *v14;
        }

        v46 = v55;
        v47 = *(v13 + 40);
        LogPrintF();
      }

LABEL_62:
      v13[41] = 0;
      v32 = v13;
      v33 = 0;
      goto LABEL_63;
    }

    v35 = FeatureCapability;
    v36 = **v14;
    if (v36 <= 60)
    {
      if (v36 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_56;
        }

        v45 = *v14;
      }

      v46 = (v35 + 310000);
      LogPrintF();
    }

LABEL_56:
    v37 = 0;
    goto LABEL_57;
  }

  if (v13[153] == 1)
  {
    v22 = (a5 + 310000);
    v23 = **v14;
    if (v23 <= 60)
    {
      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v42 = *v14;
      }

      v46 = v22;
      LogPrintF();
    }

LABEL_43:
    v13[41] = 0;
    v32 = v13;
    v33 = v22;
LABEL_63:
    [v32 _completed:{v33, v46, v47, v48, v49, v50}];
    goto LABEL_64;
  }

  v31 = **v14;
  if (v31 > 60)
  {
    goto LABEL_45;
  }

  if (v31 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_45;
    }

    v43 = *v14;
  }

  LogPrintF();
LABEL_45:
  if ((a5 - 151) <= 0xF && ((1 << (a5 + 105)) & 0x8081) != 0)
  {
    [v13 _btDeletePairingAndRetry];
  }

LABEL_64:

  objc_autoreleasePoolPop(v12);
  v39 = *MEMORY[0x277D85DE8];
}

void _btPairingAgentStatusHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a5;
  dispatch_assert_queue_V2(*(v8 + 23));
  v9 = **(v8 + 17);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v9 > 30)
      {
        goto LABEL_31;
      }

      if (v9 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v14 = *(v8 + 17);
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    if (a2 == 3)
    {
      if (v9 > 30)
      {
        goto LABEL_31;
      }

      if (v9 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v12 = *(v8 + 17);
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    if (v9 > 30)
    {
      goto LABEL_28;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_28:
        if (*(v8 + 90) == 1)
        {
          *(v8 + 72) = 1;
          [v8 _btEnsureStarted];
        }

        goto LABEL_31;
      }

      v13 = *(v8 + 17);
    }

    LogPrintF();
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    if (v9 > 30)
    {
      goto LABEL_31;
    }

    if (v9 != -1)
    {
      goto LABEL_20;
    }

    if (_LogCategory_Initialize())
    {
      v11 = *(v8 + 17);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_12:
  if (v9 > 30)
  {
    goto LABEL_31;
  }

  if (v9 != -1)
  {
    goto LABEL_20;
  }

  if (_LogCategory_Initialize())
  {
    v10 = *(v8 + 17);
LABEL_20:
    LogPrintF();
  }

LABEL_31:

  objc_autoreleasePoolPop(v7);
}

void _btPairingAgentUserConfirmationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = a5;
  dispatch_assert_queue_V2(*(v9 + 23));
  __s1[0] = 0;
  AddressString = softLinkBTDeviceGetAddressString(a2, __s1, 32);
  if (AddressString)
  {
    _btPairingAgentUserConfirmationHandler_cold_1(AddressString, v9);
    goto LABEL_8;
  }

  v11 = strcmp(__s1, v9 + 8);
  v12 = **(v9 + 17);
  if (!v11)
  {
    if (v12 <= 30)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        v15 = *(v9 + 17);
      }

      LogPrintF();
    }

LABEL_7:
    softLinkBTPairingAgentAcceptSSP(a1, a2, 0);
    goto LABEL_8;
  }

  if (v12 <= 30)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v14 = *(v9 + 17);
    }

    LogPrintF();
  }

LABEL_8:

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

Class initWPClient()
{
  if (WirelessProximityLibrary_sOnce != -1)
  {
    initWPClient_cold_1();
  }

  result = objc_getClass("WPClient");
  classWPClient = result;
  getWPClientClass = WPClientFunction;
  return result;
}

void *__WirelessProximityLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  WirelessProximityLibrary_sLib = result;
  return result;
}

uint64_t initBTSessionAttachWithQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MobileBluetoothLibrary_sOnce;
  v8 = a4;
  if (v7 != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  softLinkBTSessionAttachWithQueue = dlsym(MobileBluetoothLibrary_sLib, "BTSessionAttachWithQueue");
  v9 = (softLinkBTSessionAttachWithQueue)(a1, a2, a3, v8);

  return v9;
}

uint64_t initBTServiceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTServiceAddCallbacks");
  softLinkBTServiceAddCallbacks = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceAddressFromString(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceAddressFromString");
  softLinkBTDeviceAddressFromString = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceFromAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceFromAddress");
  softLinkBTDeviceFromAddress = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetAddressString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetAddressString");
  softLinkBTDeviceGetAddressString = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetPairingStatus(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetPairingStatus");
  softLinkBTDeviceGetPairingStatus = v4;

  return (v4)(a1, a2);
}

uint64_t initBTPairingAgentCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentCreate");
  softLinkBTPairingAgentCreate = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTPairingAgentStart(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentStart");
  softLinkBTPairingAgentStart = v2;

  return (v2)(a1);
}

void *__MobileBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileBluetooth.framework/MobileBluetooth", 2);
  MobileBluetoothLibrary_sLib = result;
  return result;
}

uint64_t initBTDeviceConfigureLinkKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConfigureLinkKey");
  softLinkBTDeviceConfigureLinkKey = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceConnectServicesWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters");
  softLinkBTDeviceConnectServicesWithParameters = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceConnectServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServices");
  softLinkBTDeviceConnectServices = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceDisconnect(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceDisconnect");
  softLinkBTDeviceDisconnect = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentCancelPairing(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentCancelPairing");
  softLinkBTPairingAgentCancelPairing = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentStop(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentStop");
  softLinkBTPairingAgentStop = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentDestroy(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentDestroy");
  softLinkBTPairingAgentDestroy = v2;

  return (v2)(a1);
}

uint64_t initBTServiceRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTServiceRemoveCallbacks");
  softLinkBTServiceRemoveCallbacks = v4;

  return (v4)(a1, a2);
}

uint64_t initBTSessionDetachWithQueue(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTSessionDetachWithQueue");
  softLinkBTSessionDetachWithQueue = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentDeletePairedDevice(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentDeletePairedDevice");
  softLinkBTPairingAgentDeletePairedDevice = v4;

  return (v4)(a1, a2);
}

uint64_t initBTPairingAgentAcceptSSP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTPairingAgentAcceptSSP");
  softLinkBTPairingAgentAcceptSSP = v6;

  return (v6)(a1, a2, a3);
}

const char *BTServiceSpecificEventToString(int a1)
{
  if (a1 > 500)
  {
    if (a1 > 507)
    {
      if (a1 > 510)
      {
        if (a1 > 600)
        {
          if (a1 == 601)
          {
            return "BT_SERVICE_SENSOR_RSSI";
          }

          if (a1 == 701)
          {
            return "BT_SERVICE_LMP_NAME_CHANGED";
          }
        }

        else
        {
          if (a1 == 511)
          {
            return "BT_SERVICE_REMOTE_REWIND_START";
          }

          if (a1 == 512)
          {
            return "BT_SERVICE_REMOTE_REWIND_STOP";
          }
        }

        return "?";
      }

      if (a1 == 508)
      {
        return "BT_SERVICE_REMOTE_MUTE";
      }

      else if (a1 == 509)
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_START";
      }

      else
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_STOP";
      }
    }

    else if (a1 <= 503)
    {
      if (a1 == 501)
      {
        return "BT_SERVICE_REMOTE_PLAY";
      }

      else if (a1 == 502)
      {
        return "BT_SERVICE_REMOTE_PAUSE";
      }

      else
      {
        return "BT_SERVICE_REMOTE_STOP";
      }
    }

    else if (a1 > 505)
    {
      if (a1 == 506)
      {
        return "BT_SERVICE_REMOTE_VOL_UP";
      }

      else
      {
        return "BT_SERVICE_REMOTE_VOL_DOWN";
      }
    }

    else if (a1 == 504)
    {
      return "BT_SERVICE_REMOTE_PREVIOUS";
    }

    else
    {
      return "BT_SERVICE_REMOTE_NEXT";
    }
  }

  else
  {
    if (a1 > 102)
    {
      if (a1 <= 201)
      {
        switch(a1)
        {
          case 103:
            return "BT_SERVICE_HANDSFREE_START_VOICE_COMMAND";
          case 104:
            return "BT_SERVICE_HANDSFREE_END_VOICE_COMMAND";
          case 201:
            return "BT_SERVICE_A2DP_AUDIO_CONNECTED";
        }
      }

      else if (a1 > 301)
      {
        if (a1 == 302)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_COMPLETE";
        }

        if (a1 == 303)
        {
          return "BT_SERVICE_PHONE_BOOK_SYNC_SUPPORTED";
        }
      }

      else
      {
        if (a1 == 202)
        {
          return "BT_SERVICE_A2DP_AUDIO_DISCONNECTED";
        }

        if (a1 == 301)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_INITIATED";
        }
      }

      return "?";
    }

    if (a1 <= 10)
    {
      switch(a1)
      {
        case 0:
          return "BT_SERVICE_SDP";
        case 1:
          return "BT_SERVICE_CONNECTION_ATTEMPT";
        case 2:
          return "BT_SERVICE_DISCONNECTION_ATTEMPT";
      }

      return "?";
    }

    if (a1 <= 100)
    {
      if (a1 == 11)
      {
        return "BT_SERVICE_CONNECTION_RESULT";
      }

      if (a1 == 12)
      {
        return "BT_SERVICE_DISCONNECTION_RESULT";
      }

      return "?";
    }

    if (a1 == 101)
    {
      return "BT_SERVICE_HANDSFREE_AUDIO_CONNECTED";
    }

    else
    {
      return "BT_SERVICE_HANDSFREE_AUDIO_DISCONNECTED";
    }
  }
}

uint64_t initBTDeviceGetName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetName");
  softLinkBTDeviceGetName = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetDeviceId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v10 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetDeviceId");
  softLinkBTDeviceGetDeviceId = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initBTAccessoryManagerGetDefault(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTAccessoryManagerGetDefault");
  softLinkBTAccessoryManagerGetDefault = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerGetFeatureCapability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib, "BTAccessoryManagerGetFeatureCapability");
  softLinkBTAccessoryManagerGetFeatureCapability = v8;

  return (v8)(a1, a2, a3, a4);
}

unsigned int *OUTLINED_FUNCTION_1_2(unsigned int **a1)
{
  result = *a1;
  v2 = *result;
  return result;
}

id BTNestedErrorF()
{
  v0 = NSErrorNestedV();

  return v0;
}

uint64_t BTXPCGetNextClientID()
{
  if (BTXPCGetNextClientID_sOnce != -1)
  {
    BTXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&BTXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __BTXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  BTXPCGetNextClientID_sNext = word_280B0FA3A << 16;
  return result;
}

const char *AABatteryTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_278CDE050[a1];
  }
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return LogPrintF();
}

void sub_241522850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return [v1 _reportError:a1];
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return [v2 _completeRequest:v1 error:a1];
}

void sub_241524D8C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2415257C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241525BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241526028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241526458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24152688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241526CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int *_btServiceEventHandler_cold_1(uint64_t a1, int **a2)
{
  result = *a2;
  v3 = **a2;
  if (v3 <= 90)
  {
    if (v3 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_2();
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v5 = *a2;
      goto LABEL_3;
    }
  }

  return result;
}

int *_btServiceEventHandler_cold_2(int **a1)
{
  result = *a1;
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a1;
      return LogPrintF();
    }
  }

  return result;
}

int *_btPairingAgentUserConfirmationHandler_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 136);
  if (*result <= 90)
  {
    if (*result != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_2();
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v4 = *(a2 + 136);
      goto LABEL_3;
    }
  }

  return result;
}