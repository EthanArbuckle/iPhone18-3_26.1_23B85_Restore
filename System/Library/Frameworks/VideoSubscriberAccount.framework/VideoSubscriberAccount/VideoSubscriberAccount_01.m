void sub_23ABD3FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v30 = 2066391179 * ((((v29 - 144) | 0xF25F93E9) + (~(v29 - 144) | 0xDA06C16)) ^ 0x5D7811F0);
  *(v29 - 136) = v25;
  *(v29 - 128) = v30 + v27 - 1354270432 + ((v26 + 148678473) & 0x372357DE);
  *(v29 - 120) = &a25;
  *(v29 - 140) = v26 - v30 - 210;
  (*(v28 + 8 * (v26 + 465)))(v29 - 144);
  JUMPOUT(0x23ABD4048);
}

uint64_t sub_23ABD44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char *a17, unsigned int a18, unsigned int a19, uint64_t a20, int a21)
{
  v24 = 742307843 * (&a16 ^ 0x1E228D55);
  a17 = &a14;
  a16 = v23 - v24 - 1197043886;
  a18 = v24 - 170931779;
  a19 = 606955757 - v24;
  a20 = a13;
  v25 = (*(v22 + 8 * (v23 + 612)))(&a16);
  return (*(v22 + 8 * (((a21 != v21) * ((v23 ^ 0x1D7) - 999)) ^ v23)))(v25);
}

uint64_t sub_23ABD45A8()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 1);
  return (*(v6 + 8 * ((83 * (v7 == 0)) ^ (v4 - 167))))();
}

uint64_t sub_23ABD48A0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = v3 + (*(*(v11 + 8) + 4 * v5) ^ v7) - (*(*(v10 + 8) + 4 * v5) ^ v7) + a1;
  *(*(a2 + 8) + 4 * v5) = v12 + v7 - ((v9 + 17 * v6 - 595) & (2 * v12));
  return (*(v8 + 8 * (((32 * (v5 + 1 == v2)) | ((v5 + 1 == v2) << 7)) ^ v4)))();
}

uint64_t sub_23ABD490C(uint64_t a1)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(v4 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v1 - 886) ^ v3)) ^ (v1 - 998))))();
}

uint64_t sub_23ABD4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = ((~((v19 - 144) | 0xA0EA921C) + ((v19 - 144) & 0xA0EA921C)) ^ 0xE754F5B) * v17;
  *(v19 - 136) = a15;
  *(v19 - 124) = v15 - v20 - 1602;
  *(v19 - 144) = (1441727781 * (v18 - 4) - 1795818118) ^ v20;
  v21 = (*(v16 + 8 * (v15 + 201)))(v19 - 144);
  return (*(v16 + 8 * ((((v15 + 92) ^ (*(v19 - 128) == -1494163771)) & 1 | (8 * (((v15 + 92) ^ (*(v19 - 128) == -1494163771)) & 1))) ^ v15)))(v21);
}

uint64_t sub_23ABD4B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = *(v11 + 1428);
  if (v14 <= 0x20 && ((1 << v14) & 0x100110000) != 0)
  {
    return (*(v12 + 8 * ((1289 * (*(a2 + 476) == LODWORD(STACK[0x2B4]) - 1309)) ^ (LODWORD(STACK[0x2B4]) - 543))))();
  }

  v16 = (v10 & 0x31E91F5D ^ (v10 ^ 0xCCF7C77) & (v8 ^ 0x9B5D2837) ^ 0x1D2839D2) & 0xA426 ^ 0x410580;
  v17 = (v16 >> 4) & 0xB1426E13 ^ 0xFFFFFDEF ^ ((v16 >> 4) ^ 0x41218) & (v16 ^ 0xB1034F95);
  if (((v17 | (v17 >> 2)) & 3) != 0)
  {
    v18 = a8 + 2;
  }

  else
  {
    v18 = v13;
  }

  if (LODWORD(STACK[0x268]) == a7)
  {
    return (*(v12 + 8 * (((((LODWORD(STACK[0x2B4]) - 528) | 0x40) ^ 0x3E3) * (v18 != v13)) ^ a3)))(69);
  }

  if (LODWORD(STACK[0x268]) != v9)
  {
    JUMPOUT(0x23ABD4AFCLL);
  }

  return sub_23ABCF878(69);
}

uint64_t sub_23ABD4DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 104) = v17 - ((2 * ((v19 - 128) & 0x3791FEF0) - (v19 - 128) + 1215168778) ^ 0xDF63CD19) * v18 - 99;
  *(v19 - 128) = &a15;
  *(v19 - 112) = &a13;
  v20 = (*(v16 + 8 * (v17 + 1208)))(v19 - 128);
  return (*(v16 + 8 * ((1445 * (*(v19 - 120) > (((v17 - 880) | 0x440) ^ v15))) ^ v17)))(v20);
}

uint64_t sub_23ABD4E50(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 4) - 6989 * ((result + 18579 - 2 * (result & 0x4893)) ^ 0x3B76);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x8E;
  v3 = v2 ^ 0x8E;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = 553284793;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xCE53EC0846DB648;
    *(v1 + 80) = 0xF31AC13F7B9249B7;
    *(v1 + 92) = v4;
  }

  *result = 1272614023;
  return result;
}

void sub_23ABD4FD0(uint64_t a1)
{
  v2 = *(*a1 + 4) + 1032196335;
  v3 = *(*(a1 + 16) + 4) + 1032196335;
  v4 = (v2 < 58167514) ^ (v3 < 58167514);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < 58167514;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 24) + 1564307779 * (((a1 | 0x17B83AA) - (a1 & 0x17B83AA)) ^ 0x96764FB9);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23ABD50A4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = v2 + 1465;
  v8 = 71 * ((v2 + 1465) ^ 0x765);
  v9 = *(v5 + a2 * v3 + 36);
  v11 = (v9 + a1) > 0x80000002 || v9 == v6 + v7 - 1425 - 466;
  return (*(v4 + 8 * ((v11 * (v8 ^ 0x1A1)) ^ v7)))();
}

void sub_23ABD5104(_DWORD *a1)
{
  v1 = 1361651671 * (((a1 ^ 0x1DE2F1F5) - 74985842 - 2 * ((a1 ^ 0x1DE2F1F5) & 0xFB87CE8E)) ^ 0x3547CFF7);
  v2 = *a1 - v1;
  v3 = a1[4] - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 301989888;
  __asm { BRAA            X11, X17 }
}

_BYTE *sub_23ABD5230(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

id VSErrorLogObject()
{
  if (VSErrorLogObject___vs_lazy_init_predicate != -1)
  {
    VSErrorLogObject_cold_1();
  }

  v1 = VSErrorLogObject___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSErrorLogObject_block_invoke()
{
  VSErrorLogObject___vs_lazy_init_variable = os_log_create([@"com.apple.VideoSubscriberAccount" UTF8String], objc_msgSend(@"Errors", "UTF8String"));

  return MEMORY[0x2821F96F8]();
}

id VSDefaultLogObject()
{
  if (VSDefaultLogObject___vs_lazy_init_predicate != -1)
  {
    VSDefaultLogObject_cold_1();
  }

  v1 = VSDefaultLogObject___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSDefaultLogObject_block_invoke()
{
  VSDefaultLogObject___vs_lazy_init_variable = os_log_create([@"com.apple.VideoSubscriberAccount" UTF8String], objc_msgSend(@"Default", "UTF8String"));

  return MEMORY[0x2821F96F8]();
}

void sub_23ABD7E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23ABD87FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak(v20 + 8);
  objc_destroyWeak(v20 + 7);
  objc_destroyWeak(v20 + 6);
  objc_destroyWeak(v20 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  objc_destroyWeak((v21 - 80));
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_23ABD9540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_23ABDA8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23ABDAE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VSOpenURL(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The linkURL parameter must not be nil."];
  }

  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v1;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will open URL %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __VSOpenURL_block_invoke;
  aBlock[3] = &unk_278B73380;
  v3 = v1;
  v12 = v3;
  v4 = _Block_copy(aBlock);
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __VSOpenURL_block_invoke_3;
  v8[3] = &unk_278B733A8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [v5 openURL:v7 configuration:0 completionHandler:v8];
}

void __VSOpenURL_block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Did open URL %@", &v5, 0xCu);
    }
  }

  else
  {
    v3 = VSErrorLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __VSOpenURL_block_invoke_cold_1(a1, v3);
    }
  }
}

void __VSOpenURL_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __VSOpenURL_block_invoke_3_cold_1(a1, v4, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23ABDB930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23ABDD578(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23ABDEC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23ABDF04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v28 - 168));
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23ABDFBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23ABE00B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void VSValueTypeInit(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a1 properties];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v10 kind];
        if (v12 == 2)
        {
          v14 = [v10 initialValue];
        }

        else if (v12 == 1)
        {
          v15 = [v10 initialValue];
          if (v15)
          {
            v14 = v15;
          }

          else
          {
            v14 = &unk_284DF32C8;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_17;
          }

          v13 = [v10 initialValue];
          if (v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v8;
          }
        }

        [v3 setValue:v14 forKey:v11];

LABEL_17:
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void VSValueTypeInitWithCoder(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 isSuperclassAlsoValueType])
  {
    v27.receiver = v6;
    v27.super_class = [objc_msgSend(v5 "implementationClass")];
    v8 = objc_msgSendSuper(&v27, sel_initWithCoder_, v7);

    v6 = v8;
  }

  VSRequireKeyedCoder(v7);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = v5;
  v9 = [v5 properties];
  v22 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v22)
  {
    v10 = *v24;
    v11 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v13 name];
        v16 = [v13 kind];
        switch(v16)
        {
          case 2:
            [v13 allowedClasses];
            v20 = v19 = v11;
            v18 = [v7 decodeObjectOfClasses:v20 forKey:v15];

            v11 = v19;
            break;
          case 1:
            v17 = [*(v11 + 2992) numberWithInteger:{objc_msgSend(v7, "decodeIntegerForKey:", v15)}];
            goto LABEL_13;
          case 0:
            v17 = [*(v11 + 2992) numberWithBool:{objc_msgSend(v7, "decodeBoolForKey:", v15)}];
LABEL_13:
            v18 = v17;
            break;
          default:
            v18 = 0;
            break;
        }

        [v6 setValue:v18 forKey:v14];
      }

      v22 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v22);
  }
}

void VSValueTypeEncodeWithCoder(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 isSuperclassAlsoValueType])
  {
    v23.receiver = v6;
    v23.super_class = [objc_msgSend(v5 "implementationClass")];
    objc_msgSendSuper(&v23, sel_encodeWithCoder_, v7);
  }

  VSRequireKeyedCoder(v7);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v5;
  v8 = [v5 properties];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v6 valueForKey:v14];
        v16 = [v13 name];
        v17 = [v13 kind];
        switch(v17)
        {
          case 2:
            [v7 encodeObject:v15 forKey:v16];
            break;
          case 1:
            [v7 encodeInteger:objc_msgSend(v15 forKey:{"integerValue"), v16}];
            break;
          case 0:
            [v7 encodeBool:objc_msgSend(v15 forKey:{"BOOLValue"), v16}];
            break;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }
}

id VSValueTypeCopyWithZone(void *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if ([v5 isSuperclassAlsoValueType])
  {
    v22.receiver = v6;
    v22.super_class = [objc_msgSend(v5 "implementationClass")];
    v7 = objc_msgSendSuper(&v22, sel_copyWithZone_, a3);
  }

  else
  {
    v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  }

  v8 = v7;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v5 properties];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 kind] <= 2)
        {
          v15 = [v14 name];
          v16 = [v6 valueForKey:v15];
          [v8 setValue:v16 forKey:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The copy parameter must not be nil."];
  }

  return v8;
}

uint64_t VSValueTypeHash(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 isSuperclassAlsoValueType])
  {
    v19.receiver = v4;
    v19.super_class = [objc_msgSend(v3 "implementationClass")];
    v5 = objc_msgSendSuper(&v19, sel_hash);
  }

  else
  {
    v5 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 properties];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 kind] <= 2)
        {
          v12 = [v11 name];
          v13 = [v4 valueForKey:v12];
          v5 ^= [v13 hash];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

uint64_t VSValueTypeIsEqual(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7 == v6)
  {
    v9 = 1;
  }

  else if (v7 && ([v5 implementationClass], (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v5 isSuperclassAlsoValueType])
    {
      v34.receiver = v6;
      v34.super_class = [objc_msgSend(v5 "implementationClass")];
      v9 = objc_msgSendSuper(&v34, sel_isEqual_, v8);
    }

    else
    {
      v9 = 1;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v5;
    v10 = [v5 properties];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v28 = v10;
      v29 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          if ([v15 kind] <= 2)
          {
            v16 = [v15 name];
            [v6 valueForKey:v16];
            v18 = v17 = v6;
            v19 = [v8 valueForKey:v16];
            if (v9)
            {
              v20 = v8;
              v21 = v17;
              v22 = v18;
              v23 = v19;
              v24 = v23;
              if (v22 == v23)
              {
                v9 = 1;
              }

              else
              {
                if (v22)
                {
                  v25 = v23 == 0;
                }

                else
                {
                  v25 = 1;
                }

                if (v25)
                {
                  v9 = 0;
                }

                else
                {
                  v9 = [v22 isEqual:v23];
                }
              }

              v17 = v21;
              v8 = v20;
              v10 = v28;
              v13 = v29;
            }

            else
            {
              v9 = 0;
            }

            v6 = v17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    v5 = v27;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id VSValueTypeDescription(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = v3;
  obj = [v3 properties];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v4 valueForKey:v11];
        v13 = [v12 description];
        v14 = [v10 kind];
        if (v14 == 1)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v12, "integerValue")];
        }

        else
        {
          if (v14)
          {
            goto LABEL_11;
          }

          v15 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{objc_msgSend(v12, "BOOLValue")}];
        }

        v16 = v15;

        v13 = v16;
LABEL_11:
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %@", v11, v13];
        [v5 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v25.receiver = v4;
  v25.super_class = [objc_msgSend(v23 "implementationClass")];
  v18 = objc_msgSendSuper(&v25, sel_description);
  v19 = MEMORY[0x277CCACA8];
  v20 = [v5 componentsJoinedByString:{@", "}];
  v21 = [v19 stringWithFormat:@"<%@ %@>", v18, v20];

  return v21;
}

void sub_23ABE89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23ABE8C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VSAccountApplicationProviderValueType()
{
  if (VSAccountApplicationProviderValueType___vs_lazy_init_predicate != -1)
  {
    VSAccountApplicationProviderValueType_cold_1();
  }

  v1 = VSAccountApplicationProviderValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAccountApplicationProviderValueType_block_invoke()
{
  VSAccountApplicationProviderValueType___vs_lazy_init_variable = __VSAccountApplicationProviderValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSAccountApplicationProviderValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"localizedDisplayName" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"identifier" kind:2 allowedClasses:v4 initialValue:0];
  [v1 addObject:v5];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

void sub_23ABEC59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23ABEC82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VSTrieWalkNodes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objects];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [node objects] parameter must not be nil."];
  }

  v6 = [v3 objects];
  [v4 addObjectsFromArray:v6];

  v7 = [v3 next];

  if (v7)
  {
    v8 = [v3 next];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __VSTrieWalkNodes_block_invoke;
    v9[3] = &unk_278B73C48;
    v10 = v4;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

id VSAMSRequestValueType()
{
  if (VSAMSRequestValueType___vs_lazy_init_predicate != -1)
  {
    VSAMSRequestValueType_cold_1();
  }

  v1 = VSAMSRequestValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAMSRequestValueType_block_invoke()
{
  VSAMSRequestValueType___vs_lazy_init_variable = __VSAMSRequestValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSAMSRequestValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"methodName" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  v4 = [VSValueTypeProperty valueTypePropertyWithName:@"requestType" kind:1 allowedClasses:0 initialValue:0];
  [v1 addObject:v4];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v6 = [VSValueTypeProperty valueTypePropertyWithName:@"providerIdentifier" kind:2 allowedClasses:v5 initialValue:0];
  [v1 addObject:v6];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v8 = [VSValueTypeProperty valueTypePropertyWithName:@"parameters" kind:2 allowedClasses:v7 initialValue:0];
  [v1 addObject:v8];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = [VSValueTypeProperty valueTypePropertyWithName:@"auditToken" kind:2 allowedClasses:v9 initialValue:0];
  [v1 addObject:v10];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

uint64_t VSCheckEntitlementForTask(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = @"com.apple.developer.video-subscriber-single-sign-on";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will check task %@ for %@ entitlement.", buf, 0x16u);
  }

  v15 = 0;
  v16 = 0;
  v5 = [v3 getValue:&v16 forEntitlement:@"com.apple.developer.video-subscriber-single-sign-on" error:&v15];
  v6 = v16;
  v7 = v15;
  if (!v5)
  {
    v11 = VSErrorLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = v3;
      v19 = 2112;
      v20 = @"com.apple.developer.video-subscriber-single-sign-on";
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_ERROR, "Unable to check value of task %@ for the %@ entitlement: %@.", buf, 0x20u);
    }

    v12 = v7;
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v6))
      {
        v9 = VSDefaultLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v3;
          v19 = 2112;
          v20 = @"com.apple.developer.video-subscriber-single-sign-on";
          _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "The task %@ has the %@ entitlement.", buf, 0x16u);
        }

        v10 = 1;
        goto LABEL_26;
      }

      v13 = VSErrorLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        VSCheckEntitlementForTask_cold_2();
      }
    }

    else
    {
      v13 = VSErrorLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        VSCheckEntitlementForTask_cold_1();
      }
    }
  }

  else
  {
    v13 = VSErrorLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      VSCheckEntitlementForTask_cold_3();
    }
  }

  if (a2)
  {
    v12 = 0;
LABEL_22:
    *a2 = VSPrivateError(-5, v12);
  }

LABEL_23:
  v9 = VSErrorLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    VSCheckEntitlementForTask_cold_4();
  }

  v10 = 0;
LABEL_26:

  return v10;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_23ABEFAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23ABEFE04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id VSViewServiceRequestValueType()
{
  if (VSViewServiceRequestValueType___vs_lazy_init_predicate != -1)
  {
    VSViewServiceRequestValueType_cold_1();
  }

  v1 = VSViewServiceRequestValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSViewServiceRequestValueType_block_invoke()
{
  VSViewServiceRequestValueType___vs_lazy_init_variable = __VSViewServiceRequestValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSViewServiceRequestValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [VSValueTypeProperty valueTypePropertyWithName:@"allowsPrivacyUI" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v2];

  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"requiresPrivacyUI" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v3];

  v4 = [VSValueTypeProperty valueTypePropertyWithName:@"shouldInferFeaturedProviders" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v4];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v6 = [VSValueTypeProperty valueTypePropertyWithName:@"accountMetadataRequest" kind:2 allowedClasses:v5 initialValue:0];
  [v1 addObject:v6];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v8 = objc_alloc_init(VSOptional);
  v9 = [VSValueTypeProperty valueTypePropertyWithName:@"requestingAppDisplayName" kind:2 allowedClasses:v7 initialValue:v8];
  [v1 addObject:v9];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v11 = [VSValueTypeProperty valueTypePropertyWithName:@"requestingAppAdamID" kind:2 allowedClasses:v10 initialValue:0];
  [v1 addObject:v11];

  v12 = [VSValueTypeProperty valueTypePropertyWithName:@"canVetoAuthentication" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v12];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id VSSubscriptionValueType()
{
  if (VSSubscriptionValueType___vs_lazy_init_predicate != -1)
  {
    VSSubscriptionValueType_cold_1();
  }

  v1 = VSSubscriptionValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSSubscriptionValueType_block_invoke()
{
  VSSubscriptionValueType___vs_lazy_init_variable = __VSSubscriptionValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSSubscriptionValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"subscriberIdentifierHash" kind:2 allowedClasses:v2 initialValue:&stru_284DD5B48];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"billingIdentifier" kind:2 allowedClasses:v4 initialValue:&stru_284DD5B48];
  [v1 addObject:v5];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v7 = [VSValueTypeProperty valueTypePropertyWithName:@"expirationDate" kind:2 allowedClasses:v6 initialValue:0];
  [v1 addObject:v7];

  v8 = [VSValueTypeProperty valueTypePropertyWithName:@"accessLevel" kind:1 allowedClasses:0 initialValue:0];
  [v1 addObject:v8];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [VSValueTypeProperty valueTypePropertyWithName:@"tierIdentifiers" kind:2 allowedClasses:v11 initialValue:MEMORY[0x277CBEBF8]];
  [v1 addObject:v12];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v14 = [VSValueTypeProperty valueTypePropertyWithName:@"creationDate" kind:2 allowedClasses:v13 initialValue:0];
  [v1 addObject:v14];

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v16 = [VSValueTypeProperty valueTypePropertyWithName:@"modificationDate" kind:2 allowedClasses:v15 initialValue:0];
  [v1 addObject:v16];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v18 = [VSValueTypeProperty valueTypePropertyWithName:@"derivedSubscriptionInfo" kind:2 allowedClasses:v17 initialValue:0];
  [v1 addObject:v18];

  v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v20 = [VSValueTypeProperty valueTypePropertyWithName:@"providedSubscriptionInfo" kind:2 allowedClasses:v19 initialValue:0];
  [v1 addObject:v20];

  v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v22 = [VSValueTypeProperty valueTypePropertyWithName:@"source" kind:2 allowedClasses:v21 initialValue:0];
  [v1 addObject:v22];

  v23 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v24 = [VSValueTypeProperty valueTypePropertyWithName:@"modifierIdentifier" kind:2 allowedClasses:v23 initialValue:&stru_284DD5B48];
  [v1 addObject:v24];

  v25 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v26 = [VSValueTypeProperty valueTypePropertyWithName:@"modifierType" kind:2 allowedClasses:v25 initialValue:&stru_284DD5B48];
  [v1 addObject:v26];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id VSIdentityProviderValueType()
{
  if (VSIdentityProviderValueType___vs_lazy_init_predicate != -1)
  {
    VSIdentityProviderValueType_cold_1();
  }

  v1 = VSIdentityProviderValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSIdentityProviderValueType_block_invoke()
{
  VSIdentityProviderValueType___vs_lazy_init_variable = __VSIdentityProviderValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSIdentityProviderValueType_block_invoke_2()
{
  v62 = objc_alloc_init(VSValueType);
  [(VSValueType *)v62 setImplementationClass:objc_opt_class()];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v2 = objc_alloc_init(VSOptional);
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"uniqueID" kind:2 allowedClasses:v1 initialValue:v2];
  [v0 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = objc_alloc_init(VSOptional);
  v6 = [VSValueTypeProperty valueTypePropertyWithName:@"providerID" kind:2 allowedClasses:v4 initialValue:v5];
  [v0 addObject:v6];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v8 = [VSValueTypeProperty valueTypePropertyWithName:@"nameForSorting" kind:2 allowedClasses:v7 initialValue:0];
  [v0 addObject:v8];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = [VSValueTypeProperty valueTypePropertyWithName:@"rankForSorting" kind:2 allowedClasses:v9 initialValue:0];
  [v0 addObject:v10];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [VSValueTypeProperty valueTypePropertyWithName:@"supportedTemplates" kind:2 allowedClasses:v13 initialValue:0];
  [v0 addObject:v14];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [VSValueTypeProperty valueTypePropertyWithName:@"supportedAuthenticationSchemes" kind:2 allowedClasses:v17 initialValue:0];
  [v0 addObject:v18];

  v19 = [VSValueTypeProperty valueTypePropertyWithName:@"requireAuthenticationURLSystemTrust" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v19];

  v20 = [VSValueTypeProperty valueTypePropertyWithName:@"requireXHRRequestSystemTrust" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v20];

  v21 = [VSValueTypeProperty valueTypePropertyWithName:@"prohibitedByStore" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v21];

  v22 = [VSValueTypeProperty valueTypePropertyWithName:@"developer" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v22];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v24 = [VSValueTypeProperty valueTypePropertyWithName:@"authenticationURL" kind:2 allowedClasses:v23 initialValue:0];
  [v0 addObject:v24];

  v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v26 = [VSValueTypeProperty valueTypePropertyWithName:@"appStoreRoomURL" kind:2 allowedClasses:v25 initialValue:0];
  [v0 addObject:v26];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v30 = MEMORY[0x277CBEBF8];
  v31 = [VSValueTypeProperty valueTypePropertyWithName:@"appAdamIDs" kind:2 allowedClasses:v29 initialValue:MEMORY[0x277CBEBF8]];
  [v0 addObject:v31];

  v32 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v33 = [VSValueTypeProperty valueTypePropertyWithName:@"defaultAppId" kind:2 allowedClasses:v32 initialValue:&stru_284DD5B48];
  [v0 addObject:v33];

  v34 = [VSValueTypeProperty valueTypePropertyWithName:@"isSetTopBoxSupported" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v34];

  v35 = [VSValueTypeProperty valueTypePropertyWithName:@"shouldShowChannelApps" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v35];

  v36 = [VSValueTypeProperty valueTypePropertyWithName:@"shouldShowSubscriptionApps" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v36];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  v40 = [VSValueTypeProperty valueTypePropertyWithName:@"allPersonalizedAppDescriptions" kind:2 allowedClasses:v39 initialValue:v30];
  [v0 addObject:v40];

  v41 = [VSValueTypeProperty valueTypePropertyWithName:@"isSTBOptOutAllowed" kind:0 allowedClasses:0 initialValue:0];
  [v0 addObject:v41];

  v42 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v43 = [VSValueTypeProperty valueTypePropertyWithName:@"userToken" kind:2 allowedClasses:v42 initialValue:&stru_284DD5B48];
  [v0 addObject:v43];

  v44 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v45 = [VSValueTypeProperty valueTypePropertyWithName:@"appPlacementPosition" kind:2 allowedClasses:v44 initialValue:0];
  [v0 addObject:v45];

  v46 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v47 = [VSValueTypeProperty valueTypePropertyWithName:@"providerAppArtworkTemplateURL" kind:2 allowedClasses:v46 initialValue:0];
  [v0 addObject:v47];

  v48 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v49 = [VSValueTypeProperty valueTypePropertyWithName:@"providerArtworkTemplateURL" kind:2 allowedClasses:v48 initialValue:0];
  [v0 addObject:v49];

  v50 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v51 = objc_alloc_init(VSOptional);
  v52 = [VSValueTypeProperty valueTypePropertyWithName:@"providerInfo" kind:2 allowedClasses:v50 initialValue:v51];
  [v0 addObject:v52];

  v53 = MEMORY[0x277CBEB98];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  v56 = [VSValueTypeProperty valueTypePropertyWithName:@"nonChannelAppDescriptions" kind:2 allowedClasses:v55 initialValue:v30];
  [v0 addObject:v56];

  v57 = MEMORY[0x277CBEB98];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  v60 = [VSValueTypeProperty valueTypePropertyWithName:@"storefronts" kind:2 allowedClasses:v59 initialValue:v30];
  [v0 addObject:v60];

  [(VSValueType *)v62 setProperties:v0];

  return v62;
}

id VSSubscriptionServiceInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DFF5B8];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v1 setWithObjects:{v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_fetchActiveSubscriptionsWithOptions_completionHandler_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_fetchActiveSubscriptionsWithOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_removeSubscriptions_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

VSValueType *VSDeveloperSettingsValueType()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [VSValueTypeProperty valueTypePropertyWithName:@"isInSetTopBoxMode" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v2];

  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"cacheBusterEnabled" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v3];

  v4 = [VSValueTypeProperty valueTypePropertyWithName:@"requestTimeoutsDisabled" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v4];

  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"simulateExpiredToken" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v5];

  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v7 = [VSValueTypeProperty valueTypePropertyWithName:@"setTopBoxBundleIdentifier" kind:2 allowedClasses:v6 initialValue:&stru_284DD5B48];
  [v1 addObject:v7];

  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v9 = [VSValueTypeProperty valueTypePropertyWithName:@"setTopBoxUserToken" kind:2 allowedClasses:v8 initialValue:&stru_284DD5B48];
  [v1 addObject:v9];

  v10 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v11 = [VSValueTypeProperty valueTypePropertyWithName:@"setTopBoxIdentityProviderID" kind:2 allowedClasses:v10 initialValue:&stru_284DD5B48];
  [v1 addObject:v11];

  v12 = [VSValueTypeProperty valueTypePropertyWithName:@"setTopBoxUseDeviceProfile" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v12];

  v13 = [VSValueTypeProperty valueTypePropertyWithName:@"setTopBoxSupportsOptOut" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v13];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id VSKeychainItemKindGenericPassword()
{
  if (VSKeychainItemKindGenericPassword___vs_lazy_init_predicate != -1)
  {
    VSKeychainItemKindGenericPassword_cold_1();
  }

  v1 = VSKeychainItemKindGenericPassword___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSKeychainItemKindGenericPassword_block_invoke()
{
  VSKeychainItemKindGenericPassword___vs_lazy_init_variable = __VSKeychainItemKindGenericPassword_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSKeychainItemKind *__VSKeychainItemKindGenericPassword_block_invoke_2()
{
  v59 = objc_alloc_init(VSKeychainItemKind);
  [(VSKeychainItemKind *)v59 setSecItemClass:*MEMORY[0x277CDC238]];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  [(VSKeychainItemKind *)v59 setItemClassName:v1];

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v3 setName:@"accessGroup"];
  v60 = v3;
  [(VSKeychainItemAttribute *)v3 setAttributeType:3];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(VSKeychainItemAttribute *)v3 setAttributeValueClassName:v5];

  [(VSKeychainItemAttribute *)v3 setSecItemAttributeKey:*MEMORY[0x277CDBEC8]];
  [v2 addObject:v3];
  v6 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v6 setName:@"creationDate"];
  v58 = v6;
  [(VSKeychainItemAttribute *)v6 setAttributeType:3];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(VSKeychainItemAttribute *)v6 setAttributeValueClassName:v8];

  [(VSKeychainItemAttribute *)v6 setSecItemAttributeKey:*MEMORY[0x277CDBF90]];
  [v2 addObject:v6];
  v9 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v9 setName:@"modificationDate"];
  v57 = v9;
  [(VSKeychainItemAttribute *)v9 setAttributeType:3];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [(VSKeychainItemAttribute *)v9 setAttributeValueClassName:v11];

  [(VSKeychainItemAttribute *)v9 setSecItemAttributeKey:*MEMORY[0x277CDC088]];
  [v2 addObject:v9];
  v12 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v12 setName:@"itemDescription"];
  v56 = v12;
  [(VSKeychainItemAttribute *)v12 setAttributeType:1];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [(VSKeychainItemAttribute *)v12 setAttributeValueClassName:v14];

  [(VSKeychainItemAttribute *)v12 setSecItemAttributeKey:*MEMORY[0x277CDBFA0]];
  [v2 addObject:v12];
  v15 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v15 setName:@"comment"];
  v55 = v15;
  [(VSKeychainItemAttribute *)v15 setAttributeType:1];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [(VSKeychainItemAttribute *)v15 setAttributeValueClassName:v17];

  [(VSKeychainItemAttribute *)v15 setSecItemAttributeKey:*MEMORY[0x277CDBF88]];
  [v2 addObject:v15];
  v18 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v18 setName:@"creatorCode"];
  v54 = v18;
  [(VSKeychainItemAttribute *)v18 setAttributeType:0];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [(VSKeychainItemAttribute *)v18 setAttributeValueClassName:v20];

  [(VSKeychainItemAttribute *)v18 setSecItemAttributeKey:*MEMORY[0x277CDBF98]];
  [v2 addObject:v18];
  v21 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v21 setName:@"typeCode"];
  v53 = v21;
  [(VSKeychainItemAttribute *)v21 setAttributeType:0];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [(VSKeychainItemAttribute *)v21 setAttributeValueClassName:v23];

  [(VSKeychainItemAttribute *)v21 setSecItemAttributeKey:*MEMORY[0x277CDC188]];
  [v2 addObject:v21];
  v24 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v24 setName:@"label"];
  v52 = v24;
  [(VSKeychainItemAttribute *)v24 setAttributeType:1];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [(VSKeychainItemAttribute *)v24 setAttributeValueClassName:v26];

  [(VSKeychainItemAttribute *)v24 setSecItemAttributeKey:*MEMORY[0x277CDC080]];
  [v2 addObject:v24];
  v27 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v27 setName:@"invisible"];
  [(VSKeychainItemAttribute *)v27 setAttributeType:2];
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  [(VSKeychainItemAttribute *)v27 setAttributeValueClassName:v29];

  [(VSKeychainItemAttribute *)v27 setSecItemAttributeKey:*MEMORY[0x277CDBFC0]];
  [v2 addObject:v27];
  v30 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v30 setName:@"negative"];
  [(VSKeychainItemAttribute *)v30 setAttributeType:2];
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  [(VSKeychainItemAttribute *)v30 setAttributeValueClassName:v32];

  [(VSKeychainItemAttribute *)v30 setSecItemAttributeKey:*MEMORY[0x277CDBFC8]];
  [v2 addObject:v30];
  v33 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v33 setName:@"account"];
  [(VSKeychainItemAttribute *)v33 setAttributeType:1];
  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  [(VSKeychainItemAttribute *)v33 setAttributeValueClassName:v35];

  [(VSKeychainItemAttribute *)v33 setSecItemAttributeKey:*MEMORY[0x277CDBF20]];
  [(VSKeychainItemAttribute *)v33 setDefaultValue:&stru_284DD5B48];
  [v2 addObject:v33];
  v36 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v36 setName:@"service"];
  [(VSKeychainItemAttribute *)v36 setAttributeType:1];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  [(VSKeychainItemAttribute *)v36 setAttributeValueClassName:v38];

  [(VSKeychainItemAttribute *)v36 setSecItemAttributeKey:*MEMORY[0x277CDC120]];
  [v2 addObject:v36];
  v39 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v39 setName:@"generic"];
  [(VSKeychainItemAttribute *)v39 setAttributeType:1];
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  [(VSKeychainItemAttribute *)v39 setAttributeValueClassName:v41];

  [(VSKeychainItemAttribute *)v39 setSecItemAttributeKey:*MEMORY[0x277CDBFB8]];
  [v2 addObject:v39];
  v42 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v42 setName:@"synchronizable"];
  [(VSKeychainItemAttribute *)v42 setAttributeType:2];
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  [(VSKeychainItemAttribute *)v42 setAttributeValueClassName:v44];

  [(VSKeychainItemAttribute *)v42 setSecItemAttributeKey:*MEMORY[0x277CDC140]];
  [v2 addObject:v42];
  v45 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v45 setName:@"viewHint"];
  [(VSKeychainItemAttribute *)v45 setAttributeType:1];
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  [(VSKeychainItemAttribute *)v45 setAttributeValueClassName:v47];

  [(VSKeychainItemAttribute *)v45 setSecItemAttributeKey:*MEMORY[0x277CDC138]];
  [v2 addObject:v45];
  v48 = objc_alloc_init(VSKeychainItemAttribute);
  [(VSKeychainItemAttribute *)v48 setName:@"data"];
  [(VSKeychainItemAttribute *)v48 setAttributeType:4];
  v49 = objc_opt_class();
  v50 = NSStringFromClass(v49);
  [(VSKeychainItemAttribute *)v48 setAttributeValueClassName:v50];

  [(VSKeychainItemAttribute *)v48 setSecItemAttributeKey:*MEMORY[0x277CDC5E8]];
  [v2 addObject:v48];
  [(VSKeychainItemKind *)v59 setProperties:v2];

  return v59;
}

void sub_23ABFC67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23ABFCC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VSSubscriptionFetchOptionsForAppWithBundleIdentifier(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  [v3 setObject:v4 forKey:@"VSSubscriptionFetchOptionEarliestExpirationDate"];

  [v3 setObject:MEMORY[0x277CBEC28] forKey:@"VSSubscriptionFetchOptionExcludeUninstalledApps"];
  v5 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:v2];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setObject:v6 forKey:@"VSSubscriptionFetchOptionSources"];

  return v3;
}

id VSSubscriptionFetchOptionsForInfoFromAppWithBundleIdentifier(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  [v6 setObject:v7 forKey:@"VSSubscriptionFetchOptionEarliestExpirationDate"];

  [v6 setObject:MEMORY[0x277CBEC28] forKey:@"VSSubscriptionFetchOptionExcludeUninstalledApps"];
  v8 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:v4];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 setObject:v9 forKey:@"VSSubscriptionFetchOptionSources"];

  [v6 setObject:v5 forKey:@"VSSubscriptionFetchOptionSubscriptionInfo"];

  return v6;
}

id VSSubscriptionFetchOptionsForBundleIdentifiersAndDomainNames(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:MEMORY[0x277CBEC28] forKey:@"VSSubscriptionFetchOptionExcludeUninstalledApps"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 setObject:v6 forKey:@"VSSubscriptionFetchOptionSources"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [VSSubscriptionSource subscriptionSourceForAppWithBundleID:v12];
        [v6 addObject:v14];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        v22 = [VSSubscriptionSource subscriptionSourceForWebsiteWithDomainName:v20, v24];
        [v6 addObject:v22];

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  return v5;
}

id VSSubscriptionFetchOptionsForWebSubscriptionsCreatedAfterDate(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  [v3 setObject:v4 forKey:@"VSSubscriptionFetchOptionEarliestExpirationDate"];

  [v3 setObject:&unk_284DF3328 forKey:@"VSSubscriptionFetchOptionSourceKind"];
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 initWithStartDate:v2 endDate:v6];

  [v3 setObject:v7 forKey:@"VSSubscriptionFetchOptionCreationDateInterval"];

  return v3;
}

void __VSAllSubscriptionFetchOptions_block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __VSAllSubscriptionFetchOptions_block_invoke_2;
  v8[3] = &unk_278B741C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = _Block_copy(v8);
  v6 = v2[2](v2, v3, v4, v5);
  v7 = VSAllSubscriptionFetchOptions___vs_lazy_init_variable;
  VSAllSubscriptionFetchOptions___vs_lazy_init_variable = v6;
}

id __VSAllSubscriptionFetchOptions_block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v3 setKey:@"VSSubscriptionFetchOptionExcludeUninstalledApps"];
  [(VSSubscriptionFetchOptionDescription *)v3 setAllowedClass:objc_opt_class()];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", *(a1 + 32)];
  [(VSSubscriptionFetchOptionDescription *)v3 setAllowedValuePredicate:v4];

  [(VSSubscriptionFetchOptionDescription *)v3 setDefaultValue:*(a1 + 40)];
  v26 = v3;
  [v2 addObject:v3];
  v5 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v5 setKey:@"VSSubscriptionFetchOptionEarliestExpirationDate"];
  [(VSSubscriptionFetchOptionDescription *)v5 setAllowedClass:objc_opt_class()];
  v25 = v5;
  [v2 addObject:v5];
  v6 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v6 setKey:@"VSSubscriptionFetchOptionCreationDateInterval"];
  [(VSSubscriptionFetchOptionDescription *)v6 setAllowedClass:objc_opt_class()];
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  v8 = [MEMORY[0x277CBEAA8] distantPast];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v7 initWithStartDate:v8 endDate:v9];
  [(VSSubscriptionFetchOptionDescription *)v6 setDefaultValue:v10];

  v24 = v6;
  [v2 addObject:v6];
  v11 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v11 setKey:@"VSSubscriptionFetchOptionSources"];
  [(VSSubscriptionFetchOptionDescription *)v11 setContainer:1];
  [(VSSubscriptionFetchOptionDescription *)v11 setAllowedClass:objc_opt_class()];
  [v2 addObject:v11];
  v12 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v12 setKey:@"VSSubscriptionFetchOptionSourceKind"];
  [(VSSubscriptionFetchOptionDescription *)v12 setAllowedClass:objc_opt_class()];
  [v2 addObject:v12];
  v13 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v13 setKey:@"VSSubscriptionFetchOptionSubscriptionInfo"];
  [(VSSubscriptionFetchOptionDescription *)v13 setAllowedClass:objc_opt_class()];
  [v2 addObject:v13];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 key];
        [v14 setObject:v20 forKey:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];

  return v22;
}

id VSAppChannelsMappingValueType()
{
  if (VSAppChannelsMappingValueType___vs_lazy_init_predicate != -1)
  {
    VSAppChannelsMappingValueType_cold_1();
  }

  v1 = VSAppChannelsMappingValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAppChannelsMappingValueType_block_invoke()
{
  VSAppChannelsMappingValueType___vs_lazy_init_variable = __VSAppChannelsMappingValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSAppChannelsMappingValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"appAdamID" kind:2 allowedClasses:v2 initialValue:&stru_284DD5B48];
  [v1 addObject:v3];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [VSValueTypeProperty valueTypePropertyWithName:@"channelIDs" kind:2 allowedClasses:v6 initialValue:MEMORY[0x277CBEBF8]];
  [v1 addObject:v7];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

void sub_23AC002C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VSAllKnownTemplateElements()
{
  if (VSAllKnownTemplateElements___vs_lazy_init_predicate != -1)
  {
    VSAllKnownTemplateElements_cold_1();
  }

  v1 = VSAllKnownTemplateElements___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAllKnownTemplateElements_block_invoke()
{
  VSAllKnownTemplateElements___vs_lazy_init_variable = __VSAllKnownTemplateElements_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __VSAllKnownTemplateElements_block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"authenticationTemplate"];
  [v0 addObject:@"autoAuthenticationTemplate"];
  [v0 addObject:@"webAuthenticationTemplate"];
  [v0 addObject:@"onscreenCodeAuthenticationTemplate"];
  [v0 addObject:@"twoFactorVerificationTemplate"];
  v1 = [v0 copy];

  return v1;
}

id VSPlatformTemplateElements()
{
  if (VSPlatformTemplateElements___vs_lazy_init_predicate != -1)
  {
    VSPlatformTemplateElements_cold_1();
  }

  v1 = VSPlatformTemplateElements___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSPlatformTemplateElements_block_invoke()
{
  VSPlatformTemplateElements___vs_lazy_init_variable = __VSPlatformTemplateElements_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __VSPlatformTemplateElements_block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"authenticationTemplate"];
  [v0 addObject:@"autoAuthenticationTemplate"];
  [v0 addObject:@"webAuthenticationTemplate"];
  v1 = [v0 copy];

  return v1;
}

void runLoopSourceScheduleCallback(void *a1)
{
  v1 = a1;
  CFRunLoopSourceSignal([v1 runLoopSource]);
  v2 = [v1 underlyingRunLoop];

  CFRunLoopWakeUp(v2);
}

void runLoopSourceCancellCallback(void *a1)
{
  if (!a1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The ptr parameter must not be nil."];
  }

  v2 = a1;
  v3 = [v2 underlyingRunLoop];
  v4 = [v2 runLoopSource];
  CFRunLoopRemoveSource(v3, v4, *MEMORY[0x277CBF058]);
  v5 = [v2 underlyingRunLoop];

  CFRunLoopStop(v5);
}

void runLoopSourcePerformCallback(void *a1)
{
  if (!a1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The ptr parameter must not be nil."];
  }

  v2 = a1;
  v3 = objc_autoreleasePoolPush();
  obj = v2;
  objc_sync_enter(obj);
  while (1)
  {
    v4 = [obj blocks];
    v5 = [v4 firstObject];

    if (!v5)
    {
      break;
    }

    v6 = [obj blocks];
    [v6 removeObjectAtIndex:0];

    v5[2](v5);
  }

  objc_sync_exit(obj);

  objc_autoreleasePoolPop(v3);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VSSharedSAMLParserController()
{
  if (VSSharedSAMLParserController___vs_lazy_init_predicate != -1)
  {
    VSSharedSAMLParserController_cold_1();
  }

  v1 = VSSharedSAMLParserController___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSSharedSAMLParserController_block_invoke()
{
  VSSharedSAMLParserController___vs_lazy_init_variable = __VSSharedSAMLParserController_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __VSSharedSAMLParserController_block_invoke_2()
{
  v0 = VSLoadBundleAtPath(@"System/Library/PrivateFrameworks/SAML.framework");
  v6 = 0;
  v1 = [v0 loadAndReturnError:&v6];
  v2 = v6;
  if ((v1 & 1) == 0)
  {
    v3 = VSErrorLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __VSSharedSAMLParserController_block_invoke_2_cold_1(v2, v3);
    }
  }

  v4 = [NSClassFromString(@"SAMLParserController") sharedInstance];

  return v4;
}

id VSAccountProviderResponseValueType()
{
  if (VSAccountProviderResponseValueType___vs_lazy_init_predicate != -1)
  {
    VSAccountProviderResponseValueType_cold_1();
  }

  v1 = VSAccountProviderResponseValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAccountProviderResponseValueType_block_invoke()
{
  VSAccountProviderResponseValueType___vs_lazy_init_variable = __VSAccountProviderResponseValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSAccountProviderResponseValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"authenticationScheme" kind:2 allowedClasses:v2 initialValue:@"SAML"];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"status" kind:2 allowedClasses:v4 initialValue:0];
  [v1 addObject:v5];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v7 = [VSValueTypeProperty valueTypePropertyWithName:@"body" kind:2 allowedClasses:v6 initialValue:0];
  [v1 addObject:v7];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

void sub_23AC072C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

id VSSubscriptionSourceValueType()
{
  if (VSSubscriptionSourceValueType___vs_lazy_init_predicate != -1)
  {
    VSSubscriptionSourceValueType_cold_1();
  }

  v1 = VSSubscriptionSourceValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSSubscriptionSourceValueType_block_invoke()
{
  VSSubscriptionSourceValueType___vs_lazy_init_variable = __VSSubscriptionSourceValueType_block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

VSValueType *__VSSubscriptionSourceValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [VSValueTypeProperty valueTypePropertyWithName:@"kind" kind:1 allowedClasses:0 initialValue:0];
  [v1 addObject:v2];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v4 = [VSValueTypeProperty valueTypePropertyWithName:@"identifier" kind:2 allowedClasses:v3 initialValue:&stru_284DD5B48];
  [v1 addObject:v4];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id intermediaryKeyPathsForKeyPath(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [v1 componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  if ([v4 count] >= 2)
  {
    do
    {
      [v4 removeLastObject];
      v5 = [v4 componentsJoinedByString:@"."];
      [v2 addObject:v5];
    }

    while ([v4 count] > 1);
  }

  return v2;
}

void sub_23AC08674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AC0AEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23AC0D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void VSWebServerConnectionInvalidated(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated.", &v3, 0xCu);
  }
}

void VSWebServerConnectionDidReceiveError(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    VSWebServerConnectionDidReceiveError_cold_1(v3, a2, v4);
  }

  v5 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 webServerConnection:v3 didReceiveError:a2];
  }
}

void VSWebServerConnectionDidReceiveRequest(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [[VSWebServerRequest alloc] initWithRequest:a2];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Connection %@ did receive request %@.", &v7, 0x16u);
  }

  v6 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 webServerConnection:v3 didReceiveRequest:v4];
  }
}

void VSWebServerConnectionDidSendResponse(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _CFHTTPServerRequestGetClient();
  v3 = _CFHTTPServerResponseGetClient();
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = v1;
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Connection %@ did send response %@ to request %@.", &v6, 0x20u);
  }

  v5 = [v1 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 webServerConnection:v1 didSendResponse:v3 toRequest:v2];
  }
}

void VSWebServerConnectionDidFailToSendResponse(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _CFHTTPServerRequestGetClient();
  v3 = _CFHTTPServerResponseGetClient();
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = v1;
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Connection %@ did fail to send response %@ to request %@.", &v6, 0x20u);
  }

  v5 = [v1 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 webServerConnection:v1 failedToSendResponse:v3 toRequest:v2];
  }
}

void sub_23AC115AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AC14670(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23AC14B38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23AC1551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AC15BC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23AC167B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23AC16B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKAccountClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278B74B50;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (StoreKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SKAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKAccountClass_block_invoke_cold_1();
  }

  getSKAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AC1B198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_23AC1DC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void VSRequireMainThread()
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v0 = MEMORY[0x277CBEAD8];
    v1 = *MEMORY[0x277CBE658];
    v2 = [MEMORY[0x277CCACC8] currentThread];
    [v0 raise:v1 format:{@"Running on %@ instead of main thread.", v2}];
  }
}

uint64_t VSAssertNotMainThread()
{
  result = [MEMORY[0x277CCACC8] isMainThread];
  if (result)
  {
    v1 = MEMORY[0x277CBEAD8];
    v2 = *MEMORY[0x277CBE658];

    return [v1 raise:v2 format:@"Must not run on main thread."];
  }

  return result;
}

void VSRequireKeyedCoder(void *a1)
{
  v1 = a1;
  if (([v1 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"The coder %@ does not allow keyed coding.", v1}];
  }
}

void VSRequireUsageInfoPlistKey()
{
  if (VSRequireUsageInfoPlistKey_onceToken != -1)
  {
    VSRequireUsageInfoPlistKey_cold_1();
  }

  if (!VSRequireUsageInfoPlistKey_usageValueOrNil)
  {
    v3 = VSPrivateAccessUsageDescriptionMissing();
    v0 = MEMORY[0x277CBEAD8];
    v1 = *MEMORY[0x277CBE658];
    v2 = [v3 localizedDescription];
    [v0 raise:v1 format:{@"%@", v2}];
  }
}

void __VSRequireUsageInfoPlistKey_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 objectForInfoDictionaryKey:@"NSVideoSubscriberAccountUsageDescription"];
  v1 = VSRequireUsageInfoPlistKey_usageValueOrNil;
  VSRequireUsageInfoPlistKey_usageValueOrNil = v0;
}

uint64_t VSAssertWithMessage(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    return [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@", a2}];
  }

  return result;
}

id VSAccountMetadataRequestValueType()
{
  if (VSAccountMetadataRequestValueType___vs_lazy_init_predicate != -1)
  {
    VSAccountMetadataRequestValueType_cold_1();
  }

  v1 = VSAccountMetadataRequestValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAccountMetadataRequestValueType_block_invoke()
{
  v0 = __VSAccountMetadataRequestValueType_block_invoke_2();
  v1 = VSAccountMetadataRequestValueType___vs_lazy_init_variable;
  VSAccountMetadataRequestValueType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSValueType *__VSAccountMetadataRequestValueType_block_invoke_2()
{
  v37[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"channelIdentifier" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"verificationToken" kind:2 allowedClasses:v4 initialValue:0];
  [v1 addObject:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = MEMORY[0x277CBEBF8];
  v10 = [VSValueTypeProperty valueTypePropertyWithName:@"supportedAccountProviderIdentifiers" kind:2 allowedClasses:v8 initialValue:MEMORY[0x277CBEBF8]];
  [v1 addObject:v10];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [VSValueTypeProperty valueTypePropertyWithName:@"featuredAccountProviderIdentifiers" kind:2 allowedClasses:v13 initialValue:v9];
  [v1 addObject:v14];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [VSValueTypeProperty valueTypePropertyWithName:@"applicationAccountProviders" kind:2 allowedClasses:v17 initialValue:v9];
  [v1 addObject:v18];

  v19 = [VSValueTypeProperty valueTypePropertyWithName:@"forceAuthentication" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v19];

  v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v21 = [VSValueTypeProperty valueTypePropertyWithName:@"localizedVideoTitle" kind:2 allowedClasses:v20 initialValue:0];
  [v1 addObject:v21];

  v22 = [VSValueTypeProperty valueTypePropertyWithName:@"includeAccountProviderIdentifier" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v22];

  v23 = [VSValueTypeProperty valueTypePropertyWithName:@"includeAuthenticationExpirationDate" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v23];

  v24 = [VSValueTypeProperty valueTypePropertyWithName:@"interruptionAllowed" kind:0 allowedClasses:0 initialValue:0];
  [v1 addObject:v24];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [VSValueTypeProperty valueTypePropertyWithName:@"attributeNames" kind:2 allowedClasses:v27 initialValue:v9];
  [v1 addObject:v28];

  v29 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v37[0] = @"SAML";
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v33 = [VSValueTypeProperty valueTypePropertyWithName:@"supportedAuthenticationSchemes" kind:2 allowedClasses:v31 initialValue:v32];
  [v1 addObject:v33];

  v34 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v35 = [VSValueTypeProperty valueTypePropertyWithName:@"accountProviderAuthenticationToken" kind:2 allowedClasses:v34 initialValue:0];
  [v1 addObject:v35];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id VSViewServiceResponseValueType()
{
  if (VSViewServiceResponseValueType___vs_lazy_init_predicate != -1)
  {
    VSViewServiceResponseValueType_cold_1();
  }

  v1 = VSViewServiceResponseValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSViewServiceResponseValueType_block_invoke()
{
  v0 = __VSViewServiceResponseValueType_block_invoke_2();
  v1 = VSViewServiceResponseValueType___vs_lazy_init_variable;
  VSViewServiceResponseValueType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSValueType *__VSViewServiceResponseValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"accountMetadata" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

id VSUserInfoForErrorRecoveryOptions(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = objc_alloc_init(VSErrorRecoveryAttempter);
  [(VSErrorRecoveryAttempter *)v4 setOptions:v2];
  [v3 setObject:v4 forKey:*MEMORY[0x277CCA658]];
  v5 = [v2 valueForKey:@"localizedAlertButtonTitle"];
  [v3 setObject:v5 forKey:*MEMORY[0x277CCA480]];
  v6 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_64];

  [v3 setObject:v6 forKey:@"VSErrorDestructiveRecoveryOptionIndexSet"];

  return v3;
}

void VSWaitForDebugger()
{
  v0 = [MEMORY[0x277CBEAA8] distantFuture];
}

void VSPerformBlockOnMainThread(void *a1)
{
  v2 = a1;
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The block parameter must not be nil."];
  }

  v1 = [MEMORY[0x277CCABD8] mainQueue];
  [v1 addOperationWithBlock:v2];
}

void VSPerformCompletionHandler(void *a1)
{
  v2 = a1;
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The block parameter must not be nil."];
  }

  v1 = VSCompletionQueue();
  [v1 addOperationWithBlock:v2];
}

id VSCompletionQueue()
{
  if (VSCompletionQueue___vs_lazy_init_predicate != -1)
  {
    VSCompletionQueue_cold_1();
  }

  v1 = VSCompletionQueue___vs_lazy_init_variable;

  return v1;
}

id VSMainThreadOperationWithBlock(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The block parameter must not be nil."];
  }

  v2 = MEMORY[0x277CCA8C8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __VSMainThreadOperationWithBlock_block_invoke;
  v6[3] = &unk_278B73938;
  v7 = v1;
  v3 = v1;
  v4 = [v2 blockOperationWithBlock:v6];

  return v4;
}

void VSEnqueueCompletionOperation(void *a1)
{
  v2 = a1;
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionOperation parameter must not be nil."];
  }

  v1 = VSCompletionQueue();
  [v1 addOperation:v2];
}

id VSOnceAndOnlyOnceBlock(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(VSOnceAndOnlyOnceHandler);
  [(VSOnceAndOnlyOnceHandler *)v2 setBlock:v1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __VSOnceAndOnlyOnceBlock_block_invoke;
  v6[3] = &unk_278B733D8;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

void __VSCompletionQueue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v0 setName:@"VSCompletionQueue"];
  v1 = VSCompletionQueue___vs_lazy_init_variable;
  VSCompletionQueue___vs_lazy_init_variable = v0;
}

void sub_23AC26714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VSAuditTokenValueType()
{
  if (VSAuditTokenValueType___vs_lazy_init_predicate != -1)
  {
    VSAuditTokenValueType_cold_1();
  }

  v1 = VSAuditTokenValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAuditTokenValueType_block_invoke()
{
  v0 = __VSAuditTokenValueType_block_invoke_2();
  v1 = VSAuditTokenValueType___vs_lazy_init_variable;
  VSAuditTokenValueType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSValueType *__VSAuditTokenValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"bundleIdentifier" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"tokenBytes" kind:2 allowedClasses:v4 initialValue:0];
  [v1 addObject:v5];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

void commonInit(void *a1)
{
  v1 = MEMORY[0x277CCAD38];
  v2 = a1;
  v4 = [v1 defaultSessionConfiguration];
  v3 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];
  [v2 setSession:v3];
}

void sub_23AC27C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC283F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC28628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VSDisplayNameForBundleWithIdentifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundleID parameter must not be nil."];
  }

  v7 = 0;
  v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      VSDisplayNameForBundleWithIdentifier_cold_1(v1, v3, v4);
    }
  }

  v5 = [v2 localizedName];

  return v5;
}

id VSBundleURLForProcessIdentifier(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  if (proc_pidpath(a1, buffer, 0x400u) < 1)
  {
    v4 = 0;
  }

  else
  {
    buffer[1023] = 0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
      if (v3)
      {
        v4 = _CFBundleCopyBundleURLForExecutableURL();
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id VSLoadBundleAtPath(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = getenv("SIMULATOR_ROOT");
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "/";
    }

    v5 = [v2 stringWithUTF8String:v4];
    v6 = [v5 stringByAppendingPathComponent:v1];
    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
    if (!v7)
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        VSLoadBundleAtPath_cold_1(v1, v8);
      }
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t VSLoadInterfaceFramework(uint64_t a1)
{
  v2 = VSLoadBundleAtPath(@"System/Library/PrivateFrameworks/VideoSubscriberAccountUI.framework");
  v3 = [v2 loadAndReturnError:a1];

  return v3;
}

void VSWebServerInvalidated(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Server %@ invalidated.", &v3, 0xCu);
  }
}

void VSWebServerDidReceiveError(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Server %@ did receive error: %@", &v6, 0x16u);
  }

  v5 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 webServer:v3 didReceiveError:a2];
  }
}

void VSWebServerDidOpenConnection(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [[VSWebServerConnection alloc] initWithConnection:a2];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Server %@ did open connection %@.", &v7, 0x16u);
  }

  v6 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 webServer:v3 didOpenConnection:v4];
  }
}

void VSWebServerDidCloseConnection(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [[VSWebServerConnection alloc] initWithConnection:a2];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Server %@ did close connection %@.", &v7, 0x16u);
  }

  v6 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 webServer:v3 didCloseConnection:v4];
  }
}

void sub_23AC2BAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC2C4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VSIdentityProviderAppsResponseValueType()
{
  if (VSIdentityProviderAppsResponseValueType___vs_lazy_init_predicate != -1)
  {
    VSIdentityProviderAppsResponseValueType_cold_1();
  }

  v1 = VSIdentityProviderAppsResponseValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSIdentityProviderAppsResponseValueType_block_invoke()
{
  v0 = __VSIdentityProviderAppsResponseValueType_block_invoke_2();
  v1 = VSIdentityProviderAppsResponseValueType___vs_lazy_init_variable;
  VSIdentityProviderAppsResponseValueType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSValueType *__VSIdentityProviderAppsResponseValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = MEMORY[0x277CBEBF8];
  v6 = [VSValueTypeProperty valueTypePropertyWithName:@"providerAppAdamIDs" kind:2 allowedClasses:v4 initialValue:MEMORY[0x277CBEBF8]];
  [v1 addObject:v6];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [VSValueTypeProperty valueTypePropertyWithName:@"channelMappings" kind:2 allowedClasses:v9 initialValue:v5];
  [v1 addObject:v10];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

void sub_23AC2D8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VSUserAccountServiceInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E0E5B0];
  v1 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_updateUserAccount_completion_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v2 forSelector:sel_updateUserAccount_completion_ argumentIndex:0 ofReply:1];

  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_queryUserAccountsWithOptions_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_queryUserAccountsWithOptions_completion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_queryUserAccountsWithOptions_sourceIdentifier_sourceType_deviceIdentifier_completion_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  [v0 setClasses:v14 forSelector:sel_queryUserAccountsWithOptions_sourceIdentifier_sourceType_deviceIdentifier_completion_ argumentIndex:0 ofReply:1];

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_deleteUserAccount_completion_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v16 forSelector:sel_deleteUserAccount_completion_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [v17 setWithObjects:{v18, v19, v20, v21, v22, v23, v24, objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_fetchActiveSubscriptionsWithOptions_completionHandler_ argumentIndex:0 ofReply:0];

  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v0 setClasses:v28 forSelector:sel_fetchActiveSubscriptionsWithOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v29 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  [v0 setClasses:v31 forSelector:sel_removeSubscriptions_ argumentIndex:0 ofReply:0];

  v32 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v32 forSelector:sel_queryAutoSignInTokenWithClientAccountType_completion_ argumentIndex:0 ofReply:1];

  v33 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v33 forSelector:sel_queryAutoSignInTokenWithClientAccountType_completion_ argumentIndex:1 ofReply:1];

  v34 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v34 forSelector:sel_deleteAutoSignInTokenWithClientAccountType_completion_ argumentIndex:0 ofReply:1];

  v35 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v35 forSelector:sel_requestAutoSignInAuthorizationWithClientAccountType_completion_ argumentIndex:1 ofReply:1];

  v36 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v36 forSelector:sel_updateAutoSignInToken_clientAccountType_completion_ argumentIndex:0 ofReply:0];

  v37 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v37 forSelector:sel_updateAutoSignInToken_clientAccountType_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id VSSubscriptionPropertyListStoreType()
{
  if (VSSubscriptionPropertyListStoreType___vs_lazy_init_predicate != -1)
  {
    VSSubscriptionPropertyListStoreType_cold_1();
  }

  v1 = VSSubscriptionPropertyListStoreType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSSubscriptionPropertyListStoreType_block_invoke()
{
  v0 = __VSSubscriptionPropertyListStoreType_block_invoke_2();
  v1 = VSSubscriptionPropertyListStoreType___vs_lazy_init_variable;
  VSSubscriptionPropertyListStoreType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id __VSSubscriptionPropertyListStoreType_block_invoke_2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  [MEMORY[0x277CBE4D8] registerStoreClass:v0 forStoreType:v1];

  return v1;
}

BOOL VSErrorIsPublicError(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 domain];
  if ([v4 isEqual:@"VSErrorDomain"])
  {
    v5 = [v3 code] == a2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL VSErrorIsPrivateError(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 domain];
  if ([v4 isEqual:@"VSPrivateErrorDomain"])
  {
    v5 = [v3 code] == a2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id VSPublicError(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = VSLocalizedDescriptionForPublicErrorCode(a2, a1);
  v7 = VSLocalizedRecoverySuggestionForPublicErrorCode(a2);
  v8 = VSErrorInfoWithDetailedErrors(v6, v7, v5, 0);

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:a2 userInfo:v8];

  return v9;
}

__CFString *VSLocalizedDescriptionForPublicErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = VSGetErrorStringsForType(a2);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = VSGetErrorStringsForType(a2);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v9 = [v7 objectForKey:v8];

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [VSGetErrorStringsForType(errorType) objectForKey:@(errorCode)] parameter must not be nil."];
    }

    v10 = VSGetErrorStringsForType(a2);
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v12 = [v10 objectForKey:v11];
  }

  else
  {
    v13 = VSErrorLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      VSLocalizedDescriptionForPublicErrorCode_cold_1(a2, a1, v13);
    }

    v12 = &stru_284DD5B48;
  }

  return v12;
}

id VSLocalizedRecoverySuggestionForPublicErrorCode(uint64_t a1)
{
  if (a1 == 3)
  {
    v1 = @"ERROR_RECOVERY_SUGGESTION_SERVICE_TEMPORARILY_UNAVAILABLE";
    goto LABEL_5;
  }

  if (a1 == 4)
  {
    v1 = @"ERROR_RECOVERY_SUGGESTION_AUTHORIZATION_DENIED";
LABEL_5:
    v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v3 = [v2 localizedStringForKey:v1 value:0 table:0];

    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id VSPublicErrorWithDetailedErrors(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = VSLocalizedDescriptionForPublicErrorCode(a2, a1);
  v7 = VSLocalizedRecoverySuggestionForPublicErrorCode(a2);
  v8 = VSErrorInfoWithDetailedErrors(v6, v7, 0, v5);

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:a2 userInfo:v8];

  return v9;
}

id VSErrorInfoWithDetailedErrors(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v7)
  {
    v12 = [v7 copy];
    [v11 setObject:v12 forKey:*MEMORY[0x277CCA450]];
  }

  if (v8)
  {
    v13 = [v8 copy];
    [v11 setObject:v13 forKey:*MEMORY[0x277CCA498]];
  }

  if (v9)
  {
    v14 = [v9 copy];
    [v11 setObject:v14 forKey:*MEMORY[0x277CCA7E8]];
  }

  if (v10)
  {
    v15 = [v10 copy];
    [v11 setObject:v15 forKey:@"VSDetailedErrors"];
  }

  return v11;
}

id VSPrivateError(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSLocalizedDescriptionForPrivateErrorCode(a1);
  v5 = VSErrorInfoWithDetailedErrors(v4, 0, v3, 0);

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSPrivateErrorDomain" code:a1 userInfo:v5];

  return v6;
}

__CFString *VSLocalizedDescriptionForPrivateErrorCode(uint64_t a1)
{
  v1 = @"The TV provider did not include any text fields in the credential entry document.";
  switch(a1)
  {
    case -26:
      v1 = @"The expiration date provided was invalid.";
      goto LABEL_30;
    case -25:
    case -18:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"ACCOUNT_LOADING_ERROR_MESSAGE";
      goto LABEL_28;
    case -24:
      v1 = @"Encountered unexpected data.";
      goto LABEL_30;
    case -23:
      v1 = @"The account access has been restricted.";
      goto LABEL_30;
    case -22:
      v1 = @"The attempt to deserialize an object has failed.";
      goto LABEL_30;
    case -21:
      v1 = @"The attempt to serialize an object has failed.";
      goto LABEL_30;
    case -20:
      v1 = @"This app does not support the authentication scheme used by this TV Provider.";
      goto LABEL_30;
    case -19:
      v1 = @"The TV provider did not include a source URL in the web authentication document.";
      goto LABEL_30;
    case -17:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"CREDENTIAL_ENTRY_ERROR_TITLE";
      goto LABEL_28;
    case -16:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"DELETE_ACCOUNT_ERROR_MESSAGE";
      goto LABEL_28;
    case -15:
      v1 = @"The attempt to reset the Apple verification state failed.";
      goto LABEL_30;
    case -14:
      v1 = @"A URL is missing from the bag.";
      goto LABEL_30;
    case -13:
      [MEMORY[0x277CCACA8] stringWithFormat:@"This app has crashed because it attempted to access privacy-sensitive data without a usage description.  The app's Info.plist must contain an %@ key with a string value explaining to the user how the app uses this data.", @"NSVideoSubscriberAccountUsageDescription"];
      goto LABEL_24;
    case -12:
      v1 = @"The account access has not yet been determined.";
      goto LABEL_30;
    case -11:
      v1 = @"The account access has been denied.";
      goto LABEL_30;
    case -10:
      v1 = @"The Apple verification token needs to be regenerated";
      goto LABEL_30;
    case -9:
      v1 = @"The operation took too long to finish.";
      goto LABEL_30;
    case -8:
      v1 = @"The TV provider didn’t define the App.onRequest() function.";
      goto LABEL_30;
    case -7:
      v1 = @"The TV provider took too long to respond.";
      goto LABEL_30;
    case -6:
      v1 = @"This TV Provider is no longer available.";
      goto LABEL_30;
    case -5:
      [MEMORY[0x277CCACA8] stringWithFormat:@"The %@ entitlement is missing.", @"com.apple.developer.video-subscriber-single-sign-on"];
      v1 = LABEL_24:;
      if (!v1)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    case -4:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"CREDENTIAL_ENTRY_ERROR_MESSAGE_GENERIC";
      goto LABEL_28;
    case -3:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"ERROR_DESCRIPTION_UNSUPPORTED_AUTHENTICATION_MECHANISM";
      goto LABEL_28;
    case -2:
      goto LABEL_30;
    case -1:
      v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v3 = v2;
      v4 = @"ERROR_DESCRIPTION_VIEW_SERVICE_CRASHED";
LABEL_28:
      v1 = [v2 localizedStringForKey:v4 value:0 table:0];

      if (!v1)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    default:
LABEL_29:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The localizedDescription parameter must not be nil."];
      v1 = 0;
LABEL_30:

      return v1;
  }
}

id VSPrivateErrorWithRecoverySuggestion(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = VSLocalizedDescriptionForPrivateErrorCode(a1);
  v8 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v9 = [v8 localizedStringForKey:@"ERROR_RECOVERY_SUGGESTION_SERVICE_TEMPORARILY_UNAVAILABLE" value:0 table:0];

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = VSErrorInfoWithDetailedErrors(v7, v10, v5, 0);

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSPrivateErrorDomain" code:a1 userInfo:v11];

  return v12;
}

id VSPublicUnsupportedProviderError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = VSLocalizedDescriptionForPublicErrorCode(1, 0);
  v6 = VSErrorInfoWithDetailedErrors(v5, 0, 0, 0);
  if (v3)
  {
    v7 = [v3 copy];
    [v6 setObject:v7 forKey:@"VSErrorInfoKeyUnsupportedProviderIdentifier"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:*MEMORY[0x277CCA7E8]];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:1 userInfo:v6];

  return v8;
}

id VSPublicProviderRejectedError(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = VSLocalizedDescriptionForPublicErrorCode(4, 0);
  v9 = VSLocalizedRecoverySuggestionForPublicErrorCode(4);
  v10 = VSErrorInfoWithDetailedErrors(v8, v9, 0, 0);
  v11 = objc_alloc_init(VSAccountProviderResponse);
  [(VSAccountProviderResponse *)v11 setAuthenticationScheme:v7];
  [(VSAccountProviderResponse *)v11 setStatus:v6];
  [(VSAccountProviderResponse *)v11 setBody:v6];
  [v10 setObject:v11 forKey:@"VSErrorInfoKeyAccountProviderResponse"];
  v12 = [v7 isEqual:@"SAML"];

  if (v12)
  {
    if (v5)
    {
      v13 = [v5 copy];
      [v10 setObject:v13 forKey:@"VSErrorInfoKeySAMLResponse"];
    }

    if (v6)
    {
      v14 = [v6 copy];
      [v10 setObject:v14 forKey:@"VSErrorInfoKeySAMLResponseStatus"];
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:4 userInfo:v10];

  return v15;
}

id VSPublicServiceTemporarilyUnavailableError(void *a1)
{
  v1 = a1;
  v2 = VSLocalizedDescriptionForPublicErrorCode(3, 0);
  v3 = VSLocalizedRecoverySuggestionForPublicErrorCode(3);
  v4 = VSErrorInfoWithDetailedErrors(v2, v3, v1, 0);

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSErrorDomain" code:3 userInfo:v4];

  return v5;
}

id VSPrivateAccessUsageDescriptionMissing()
{
  v0 = VSLocalizedDescriptionForPrivateErrorCode(-13);
  v1 = VSErrorInfoWithDetailedErrors(v0, 0, 0, 0);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSPrivateErrorDomain" code:-13 userInfo:v1];

  return v2;
}

id VSPrivateViewServiceCrashedErrorWithRecoveryHandler(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v20 = VSLocalizedDescriptionForPrivateErrorCode(-1);
  v5 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v6 = [v5 localizedStringForKey:@"ERROR_RECOVERY_SUGGESTION_VIEW_SERVICE_CRASHED" value:0 table:0];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:v20 forKey:*MEMORY[0x277CCA450]];
  [v7 setObject:v6 forKey:*MEMORY[0x277CCA498]];
  [v7 setObject:v4 forKey:*MEMORY[0x277CCA7E8]];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(VSErrorRecoveryOption);
  v10 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v11 = [v10 localizedStringForKey:@"ERROR_ACTION_RETRY_TITLE" value:0 table:0];
  [(VSErrorRecoveryOption *)v9 setLocalizedAlertButtonTitle:v11];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __VSPrivateViewServiceCrashedErrorWithRecoveryHandler_block_invoke;
  v23[3] = &unk_278B752B8;
  v12 = v3;
  v24 = v12;
  [(VSErrorRecoveryOption *)v9 setAttemptHandler:v23];
  [v8 addObject:v9];
  v13 = objc_alloc_init(VSErrorRecoveryOption);
  v14 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v15 = [v14 localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];
  [(VSErrorRecoveryOption *)v13 setLocalizedAlertButtonTitle:v15];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __VSPrivateViewServiceCrashedErrorWithRecoveryHandler_block_invoke_2;
  v21[3] = &unk_278B752B8;
  v22 = v12;
  v16 = v12;
  [(VSErrorRecoveryOption *)v13 setAttemptHandler:v21];
  [v8 addObject:v13];
  v17 = VSUserInfoForErrorRecoveryOptions(v8);
  [v7 addEntriesFromDictionary:v17];

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSPrivateErrorDomain" code:-1 userInfo:v7];

  return v18;
}

id VSPrivateErrorWithRecoveryHandler(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VSLocalizedDescriptionForPrivateErrorCode(a1);
  v8 = MEMORY[0x277CCA450];
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFFEELL)
  {
    v9 = v5;
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CCA7E8];
      while (1)
      {
        v12 = [v10 domain];
        if ([v12 isEqualToString:@"VSJSErrorDomain"])
        {
          break;
        }

        IsPrivateError = VSErrorIsPrivateError(v10, -6);

        if (IsPrivateError)
        {
          goto LABEL_10;
        }

        v14 = [v10 userInfo];
        v15 = [v14 objectForKey:v11];

        v10 = v15;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

LABEL_10:
      v16 = v10;
    }

    else
    {
LABEL_7:
      v16 = 0;
    }

    v18 = [v16 localizedDescription];
    if ([v18 length] && (objc_msgSend(v16, "userInfo"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", *v8), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
    {
      if (!v18)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The message parameter must not be nil."];
      }

      v17 = v18;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setObject:v7 forKey:*v8];
  if (v17)
  {
    [v21 setObject:v17 forKey:*MEMORY[0x277CCA498]];
  }

  v32 = v7;
  if (v5)
  {
    [v21 setObject:v5 forKey:{*MEMORY[0x277CCA7E8], v7}];
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc_init(VSErrorRecoveryOption);
  v24 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v25 = v24;
  if (a1 == -18)
  {
    v26 = [v24 localizedStringForKey:@"ERROR_ACTION_RETRY_TITLE" value:0 table:0];

    if (!VSErrorIsPrivateError(v5, -6))
    {
      goto LABEL_27;
    }

    v25 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v27 = [v25 localizedStringForKey:@"SIGN_OUT_BUTTON_TITLE" value:0 table:0];

    v26 = v27;
  }

  else
  {
    v26 = [v24 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];
  }

LABEL_27:
  [(VSErrorRecoveryOption *)v23 setLocalizedAlertButtonTitle:v26, v32];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __VSPrivateErrorWithRecoveryHandler_block_invoke;
  v34[3] = &unk_278B752B8;
  v35 = v6;
  v28 = v6;
  [(VSErrorRecoveryOption *)v23 setAttemptHandler:v34];
  [v22 addObject:v23];
  v29 = VSUserInfoForErrorRecoveryOptions(v22);
  [v21 addEntriesFromDictionary:v29];

  v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSPrivateErrorDomain" code:a1 userInfo:v21];

  return v30;
}

id VSGetErrorStringsForType(uint64_t a1)
{
  if (VSGetErrorStringsForType_onceToken != -1)
  {
    VSGetErrorStringsForType_cold_1();
  }

  v2 = VSGetErrorStringsForType_errorStringMaps;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

void __VSGetErrorStringsForType_block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_284DF3340;
  if (VSSubscriptionErrorStrings_onceToken != -1)
  {
    __VSGetErrorStringsForType_block_invoke_cold_1();
  }

  v0 = VSSubscriptionErrorStrings_errorStrings;
  v8[0] = v0;
  v7[1] = &unk_284DF3358;
  if (VSUserAccountErrorStrings_onceToken != -1)
  {
    __VSGetErrorStringsForType_block_invoke_cold_2();
  }

  v8[1] = VSUserAccountErrorStrings_errorStrings;
  v7[2] = &unk_284DF3370;
  v1 = VSAutoSignInErrorStrings_onceToken;
  v2 = VSUserAccountErrorStrings_errorStrings;
  if (v1 != -1)
  {
    __VSGetErrorStringsForType_block_invoke_cold_3();
  }

  v8[2] = VSAutoSignInErrorStrings_errorStrings;
  v3 = MEMORY[0x277CBEAC0];
  v4 = VSAutoSignInErrorStrings_errorStrings;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:v7 count:3];
  v6 = VSGetErrorStringsForType_errorStringMaps;
  VSGetErrorStringsForType_errorStringMaps = v5;
}

void __VSSubscriptionErrorStrings_block_invoke()
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = &unk_284DF3340;
  v17 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v16 = [v17 localizedStringForKey:@"ERROR_DESCRIPTION_ACCESS_NOT_GRANTED" value:0 table:0];
  v19[0] = v16;
  v18[1] = &unk_284DF3358;
  v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v14 = [v15 localizedStringForKey:@"ERROR_DESCRIPTION_UNSUPPORTED_PROVIDER" value:0 table:0];
  v19[1] = v14;
  v18[2] = &unk_284DF3370;
  v13 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v12 = [v13 localizedStringForKey:@"ERROR_DESCRIPTION_USER_CANCELLED" value:0 table:0];
  v19[2] = v12;
  v18[3] = &unk_284DF3388;
  v0 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v1 = [v0 localizedStringForKey:@"ERROR_DESCRIPTION_SERVICE_TEMPORARILY_UNAVAILABLE" value:0 table:0];
  v19[3] = v1;
  v18[4] = &unk_284DF33A0;
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"ERROR_DESCRIPTION_PROVIDER_REJECTED" value:0 table:0];
  v19[4] = v3;
  v18[5] = &unk_284DF33B8;
  v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"ERROR_DESCRIPTION_INVALID_VERIFICATION_TOKEN" value:0 table:0];
  v19[5] = v5;
  v18[6] = &unk_284DF33D0;
  v6 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v7 = [v6 localizedStringForKey:@"ERROR_DESCRIPTION_REJECTED" value:0 table:0];
  v19[6] = v7;
  v18[7] = &unk_284DF33E8;
  v8 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v9 = [v8 localizedStringForKey:@"ERROR_DESCRIPTION_UNSUPPORTED" value:0 table:0];
  v19[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];
  v11 = VSSubscriptionErrorStrings_errorStrings;
  VSSubscriptionErrorStrings_errorStrings = v10;
}

void __VSUserAccountErrorStrings_block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_284DF33D0;
  v0 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v1 = [v0 localizedStringForKey:@"ERROR_DESCRIPTION_PROVIDER_MISMATCH" value:0 table:0];
  v6[1] = &unk_284DF3388;
  v7[0] = v1;
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"ERROR_DESCRIPTION_SERVICE_UNAVAILABLE" value:0 table:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = VSUserAccountErrorStrings_errorStrings;
  VSUserAccountErrorStrings_errorStrings = v4;
}

void __VSAutoSignInErrorStrings_block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_284DF33D0;
  v0 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v1 = [v0 localizedStringForKey:@"ERROR_DESCRIPTION_REJECTED" value:0 table:0];
  v6[1] = &unk_284DF3388;
  v7[0] = v1;
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"ERROR_DESCRIPTION_SERVICE_UNAVAILABLE" value:0 table:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = VSAutoSignInErrorStrings_errorStrings;
  VSAutoSignInErrorStrings_errorStrings = v4;
}

void sub_23AC319CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id secureCodingSafeObject(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (([v1 conformsToProtocol:&unk_284DF64B8] & 1) == 0)
  {
    v8 = objc_alloc_init(VSOptional);
LABEL_7:
    v7 = v8;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = MEMORY[0x277CBEAD8];
      v3 = *MEMORY[0x277CBE660];
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      [v2 raise:v3 format:{@"Unexpectedly, object was %@, instead of NSError.", v5}];
    }

    v6 = [v1 vs_secureCodingSafeError];
    v7 = [VSOptional optionalWithObject:v6];
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v9 raise:v10 format:{@"Unexpectedly, object was %@, instead of NSArray.", v12}];
    }

    v13 = v1;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v6 = v13;
    v15 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v50;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v6);
          }

          v19 = secureCodingSafeObject(*(*(&v49 + 1) + 8 * i));
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __secureCodingSafeObject_block_invoke;
          v47[3] = &unk_278B75308;
          v48 = v14;
          [v19 conditionallyUnwrapObject:v47];
        }

        v16 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v16);
    }

LABEL_29:

    v7 = [VSOptional optionalWithObject:v14];

LABEL_30:
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE660];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v20 raise:v21 format:{@"Unexpectedly, object was %@, instead of NSSet.", v23}];
    }

    v24 = v1;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = v24;
    v25 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v6);
          }

          v29 = secureCodingSafeObject(*(*(&v43 + 1) + 8 * j));
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __secureCodingSafeObject_block_invoke_2;
          v41[3] = &unk_278B75308;
          v42 = v14;
          [v29 conditionallyUnwrapObject:v41];
        }

        v26 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v26);
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [VSOptional optionalWithObject:v1];
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x277CBEAD8];
    v32 = *MEMORY[0x277CBE660];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v31 raise:v32 format:{@"Unexpectedly, object was %@, instead of NSDictionary.", v34}];
  }

  v35 = MEMORY[0x277CBEB38];
  v36 = v1;
  v37 = objc_alloc_init(v35);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __secureCodingSafeObject_block_invoke_3;
  v39[3] = &unk_278B738C0;
  v40 = v37;
  v38 = v37;
  [v36 enumerateKeysAndObjectsUsingBlock:v39];

  v7 = [VSOptional optionalWithObject:v38];

LABEL_31:

  return v7;
}

void __secureCodingSafeObject_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = secureCodingSafeObject(a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __secureCodingSafeObject_block_invoke_4;
  v8[3] = &unk_278B75330;
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [v6 conditionallyUnwrapObject:v8];
}

void sub_23AC354CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_23AC358D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC362B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit_0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  a1[5] = a2;
  v8 = a5;
  v9 = a1;
  v10 = [a3 copy];
  v11 = v9[2];
  v9[2] = v10;

  v9[14] = a4;
  v12 = [v8 copy];

  v13 = v9[15];
  v9[15] = v12;

  v14 = +[VSDevice currentDevice];
  v9[10] = +[VSUserAccount deviceCategoryFromDeviceType:](VSUserAccount, "deviceCategoryFromDeviceType:", [v14 deviceType]);

  v15 = [MEMORY[0x277CBEAA8] now];
  objc_storeStrong(v9 + 12, v15);
  v16 = v9[13];
  v9[13] = v15;
  v17 = v15;

  objc_storeStrong(v9 + 21, @"userAccount");
}

void sub_23AC3C740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23AC3CB90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23AC3D0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC3D4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC3D97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23AC3DDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC3E0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23AC3E7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VSMainConcurrencyBindingOptions()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"VSRequiredThreadBindingOption";
  v0 = [MEMORY[0x277CCACC8] mainThread];
  v5[0] = v0;
  v4[1] = @"VSRequiredOperationQueueBindingOption";
  v1 = [MEMORY[0x277CCABD8] mainQueue];
  v4[2] = @"VSRequiredDispatchQueueBindingOption";
  v5[1] = v1;
  v5[2] = MEMORY[0x277D85CD0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

id VSAccountMetadataValueType()
{
  if (VSAccountMetadataValueType___vs_lazy_init_predicate[0] != -1)
  {
    VSAccountMetadataValueType_cold_1();
  }

  v1 = VSAccountMetadataValueType___vs_lazy_init_variable;

  return v1;
}

uint64_t __VSAccountMetadataValueType_block_invoke()
{
  v0 = __VSAccountMetadataValueType_block_invoke_2();
  v1 = VSAccountMetadataValueType___vs_lazy_init_variable;
  VSAccountMetadataValueType___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSValueType *__VSAccountMetadataValueType_block_invoke_2()
{
  v0 = objc_alloc_init(VSValueType);
  [(VSValueType *)v0 setImplementationClass:objc_opt_class()];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v3 = [VSValueTypeProperty valueTypePropertyWithName:@"accountProviderIdentifier" kind:2 allowedClasses:v2 initialValue:0];
  [v1 addObject:v3];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [VSValueTypeProperty valueTypePropertyWithName:@"authenticationExpirationDate" kind:2 allowedClasses:v4 initialValue:0];
  [v1 addObject:v5];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v7 = [VSValueTypeProperty valueTypePropertyWithName:@"verificationData" kind:2 allowedClasses:v6 initialValue:0];
  [v1 addObject:v7];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v9 = [VSValueTypeProperty valueTypePropertyWithName:@"accountProviderResponse" kind:2 allowedClasses:v8 initialValue:0];
  [v1 addObject:v9];

  [(VSValueType *)v0 setProperties:v1];

  return v0;
}

VideoSubscriberAccount::VSTVProviderKeys_optional __swiftcall VSTVProviderKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VSTVProviderKeys.rawValue.getter()
{
  v1 = 0x6F74736575716572;
  v2 = 0x5F6E695F6E676973;
  if (*v0 != 2)
  {
    v2 = 0x765F656C646E7562;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23AC4165C()
{
  result = qword_27DFC8608;
  if (!qword_27DFC8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8608);
  }

  return result;
}

uint64_t sub_23AC416B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEC00000065707974;
  v4 = 0x765F656C646E7562;
  if (a1 == 2)
  {
    v4 = 0x5F6E695F6E676973;
  }

  else
  {
    v3 = 0xEE006E6F69737265;
  }

  v5 = 0xD000000000000012;
  v6 = 0x800000023AC8A5F0;
  if (a1)
  {
    v5 = 0x6F74736575716572;
    v6 = 0xE900000000000072;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x5F6E695F6E676973;
    }

    else
    {
      v11 = 0x765F656C646E7562;
    }

    if (a2 == 2)
    {
      v10 = 0xEC00000065707974;
    }

    else
    {
      v10 = 0xEE006E6F69737265;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6F74736575716572;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a2)
    {
      v10 = 0xE900000000000072;
    }

    else
    {
      v10 = 0x800000023AC8A5F0;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_23AC665E4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_23AC41820()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC41900()
{
  sub_23AC66384();
}

uint64_t sub_23AC419CC()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

void sub_23AC41AB4(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F74736575716572;
  v4 = 0xEC00000065707974;
  v5 = 0x5F6E695F6E676973;
  if (*v1 != 2)
  {
    v5 = 0x765F656C646E7562;
    v4 = 0xEE006E6F69737265;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000023AC8A5F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_23AC41B54()
{
  result = qword_27DFC8610;
  if (!qword_27DFC8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFC8618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8610);
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

uint64_t getEnumTagSinglePayload for VSTVProviderKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSTVProviderKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VSUserAccountManager.AutoSignInTokenUpdateContext.authorization.getter@<X0>(char *a1@<X8>)
{
  v3 = [*v1 authorization];

  return sub_23AC56A98(v3, a1);
}

uint64_t sub_23AC41DE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23AC41E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

VideoSubscriberAccount::VSFederatedPlaybackKeys_optional __swiftcall VSFederatedPlaybackKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VSFederatedPlaybackKeys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 0x6C616E7265747865;
  if (v1 != 6)
  {
    v3 = 7107700;
  }

  v4 = 0x496C656E6E616863;
  if (v1 != 4)
  {
    v4 = 0x65746E65736E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x765F656C646E7562;
  if (v1 != 2)
  {
    v5 = 0x6163696E6F6E6163;
  }

  if (*v0)
  {
    v2 = 0x695F656C646E7562;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23AC42004()
{
  result = qword_27DFC8620;
  if (!qword_27DFC8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8620);
  }

  return result;
}

uint64_t sub_23AC42058(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C616E7265747865;
  v5 = 0xEA00000000004449;
  if (a1 != 6)
  {
    v4 = 7107700;
    v5 = 0xE300000000000000;
  }

  v6 = 0x496C656E6E616863;
  v7 = 0xE900000000000044;
  if (a1 != 4)
  {
    v6 = 0x65746E65736E6F63;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x765F656C646E7562;
  v9 = 0xEE006E6F69737265;
  if (a1 != 2)
  {
    v8 = 0x6163696E6F6E6163;
    v9 = 0xEB0000000044496CLL;
  }

  v10 = 0x695F656C646E7562;
  if (a1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v10 = 0x44496D616461;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEE006E6F69737265;
        if (v11 != 0x765F656C646E7562)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEB0000000044496CLL;
        if (v11 != 0x6163696E6F6E6163)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x44496D616461)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x695F656C646E7562;
LABEL_38:
    v13 = 0xE900000000000064;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE900000000000044;
      if (v11 != 0x496C656E6E616863)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x65746E65736E6F63;
    goto LABEL_38;
  }

  if (a2 == 6)
  {
    v13 = 0xEA00000000004449;
    if (v11 != 0x6C616E7265747865)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7107700)
    {
LABEL_45:
      v15 = sub_23AC665E4();
      goto LABEL_46;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_23AC42310()
{
  sub_23AC66384();
}

uint64_t sub_23AC42464()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

void sub_23AC425D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x44496D616461;
  v5 = 0xEA00000000004449;
  v6 = 0x6C616E7265747865;
  if (v2 != 6)
  {
    v6 = 7107700;
    v5 = 0xE300000000000000;
  }

  v7 = 0xE900000000000044;
  v8 = 0x496C656E6E616863;
  if (v2 != 4)
  {
    v8 = 0x65746E65736E6F63;
    v7 = 0xE900000000000064;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE006E6F69737265;
  v10 = 0x765F656C646E7562;
  if (v2 != 2)
  {
    v10 = 0x6163696E6F6E6163;
    v9 = 0xEB0000000044496CLL;
  }

  if (*v1)
  {
    v4 = 0x695F656C646E7562;
    v3 = 0xE900000000000064;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_23AC426F0()
{
  result = qword_27DFC8628;
  if (!qword_27DFC8628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFC8630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSFederatedPlaybackKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSFederatedPlaybackKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VSFederatedPunchoutEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSFederatedPunchoutEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_23AC42954()
{
  v0 = *sub_23AC5B228();

  return v0;
}

uint64_t VSFederatedPunchoutEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSFederatedPunchoutEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSFederatedPunchoutEvent.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[94] = a2;
  v2[93] = a1;
  v3 = sub_23AC662E4();
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AC42AF8, 0, 0);
}

uint64_t sub_23AC42AF8()
{
  v1 = v0[100];
  v2 = v0[96];
  v3 = v0[95];
  v4 = sub_23AC5B228();
  v0[101] = *v4;
  v0[102] = v4[1];

  v5 = sub_23AC5E9D0();
  v0[103] = v5;
  v6 = *(v2 + 16);
  v0[104] = v6;
  v0[105] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23AC662C4();
  v8 = sub_23AC66454();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v7, v8, "VSFederatedPunchoutEvent", v9, 2u);
    MEMORY[0x23EE97EA0](v9, -1, -1);
  }

  v10 = v0[100];
  v11 = v0[96];
  v12 = v0[95];

  v13 = *(v11 + 8);
  v0[106] = v13;
  v13(v10, v12);
  v14 = swift_task_alloc();
  v0[107] = v14;
  *v14 = v0;
  v14[1] = sub_23AC42C90;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC42C90(uint64_t a1)
{
  *(*v1 + 864) = a1;

  return MEMORY[0x2822009F8](sub_23AC42D90, 0, 0);
}

unint64_t sub_23AC42D90()
{
  v105 = v0;
  v102 = (v0 + 280);
  v1 = *(v0 + 752);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = *(v0 + 864);

  v8 = 0;
  v9 = &type metadata for VSAnalyticsCommonKeys;
  v98 = v1;
  if (!v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v8;
LABEL_16:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = v15 | (v12 << 6);
    sub_23AC444F8(*(v1 + 48) + 40 * v16, v102);
    sub_23AC44554(*(v1 + 56) + 32 * v16, v0 + 440);
    v17 = *(v0 + 296);
    *(v0 + 88) = *v102;
    *(v0 + 104) = v17;
    *(v0 + 120) = *(v0 + 312);
    sub_23AC445B0((v0 + 440), (v0 + 128));
    v14 = v12;
    v9 = &type metadata for VSAnalyticsCommonKeys;
LABEL_17:
    *(v0 + 80) = *(v0 + 152);
    v18 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v18;
    v19 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v19;
    if (!*(v0 + 40))
    {
      break;
    }

    v103 = v14;
    v20 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v20;
    *(v0 + 192) = *(v0 + 48);
    sub_23AC445B0((v0 + 56), (v0 + 568));
    sub_23AC664F4();
    if (swift_dynamicCast())
    {
      *(v0 + 877) = *(v0 + 874);
      sub_23AC4499C();
      sub_23AC66504();
      sub_23AC44554(v0 + 568, v0 + 696);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v7;
      result = sub_23AC440B0(v0 + 400);
      v24 = v7[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v7[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = result;
          sub_23AC447F8();
          result = v52;
          v9 = &type metadata for VSAnalyticsCommonKeys;
          v7 = v104;
          if ((v28 & 1) == 0)
          {
LABEL_32:
            v7[(result >> 6) + 8] |= 1 << result;
            v48 = result;
            sub_23AC444F8(v0 + 400, v7[6] + 40 * result);
            sub_23AC445B0((v0 + 696), (v7[7] + 32 * v48));
            sub_23AC44614(v0 + 400);
            __swift_destroy_boxed_opaque_existential_0(v0 + 568);
            result = sub_23AC44614(v0 + 160);
            v49 = v7[2];
            v26 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v26)
            {
              goto LABEL_71;
            }

LABEL_46:
            v7[2] = v50;
            goto LABEL_7;
          }

          goto LABEL_5;
        }
      }

      else
      {
        sub_23AC440F4(v27, isUniquelyReferenced_nonNull_native);
        v7 = v104;
        result = sub_23AC440B0(v0 + 400);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_60;
        }
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_5:
      v10 = (v7[7] + 32 * result);
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_23AC445B0((v0 + 696), v10);
      v11 = v0 + 400;
LABEL_6:
      sub_23AC44614(v11);
      __swift_destroy_boxed_opaque_existential_0(v0 + 568);
      sub_23AC44614(v0 + 160);
LABEL_7:
      v8 = v103;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_23AC664F4();
      if (swift_dynamicCast())
      {
        *(v0 + 876) = *(v0 + 875);
        sub_23AC445C0();
        sub_23AC66504();
        sub_23AC44554(v0 + 568, v0 + 664);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v7;
        result = sub_23AC440B0(v0 + 360);
        v32 = v7[2];
        v33 = (v31 & 1) == 0;
        v26 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v26)
        {
          goto LABEL_70;
        }

        v35 = v31;
        if (v7[3] < v34)
        {
          sub_23AC440F4(v34, v30);
          v7 = v104;
          result = sub_23AC440B0(v0 + 360);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_60:

            return sub_23AC66604();
          }

          goto LABEL_40;
        }

        if (v30)
        {
LABEL_40:
          if ((v35 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v53 = result;
          sub_23AC447F8();
          result = v53;
          v9 = &type metadata for VSAnalyticsCommonKeys;
          v7 = v104;
          if ((v35 & 1) == 0)
          {
LABEL_45:
            v7[(result >> 6) + 8] |= 1 << result;
            v54 = result;
            sub_23AC444F8(v0 + 360, v7[6] + 40 * result);
            sub_23AC445B0((v0 + 664), (v7[7] + 32 * v54));
            sub_23AC44614(v0 + 360);
            __swift_destroy_boxed_opaque_existential_0(v0 + 568);
            result = sub_23AC44614(v0 + 160);
            v55 = v7[2];
            v26 = __OFADD__(v55, 1);
            v50 = v55 + 1;
            if (v26)
            {
              goto LABEL_72;
            }

            goto LABEL_46;
          }
        }

        v51 = (v7[7] + 32 * result);
        __swift_destroy_boxed_opaque_existential_0(v51);
        sub_23AC445B0((v0 + 664), v51);
        v11 = v0 + 360;
        goto LABEL_6;
      }

      (*(v0 + 832))(*(v0 + 792), *(v0 + 824), *(v0 + 760));
      sub_23AC444F8(v0 + 160, v0 + 320);
      v37 = sub_23AC662C4();
      v38 = sub_23AC66464();
      v39 = os_log_type_enabled(v37, v38);
      v100 = *(v0 + 792);
      v101 = *(v0 + 848);
      v99 = *(v0 + 760);
      if (v39)
      {
        v97 = v7;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v104 = v41;
        *v40 = 136315138;
        v42 = sub_23AC664C4();
        v44 = v43;
        sub_23AC44614(v0 + 320);
        v45 = sub_23AC43B08(v42, v44, &v104);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_23AB8E000, v37, v38, "VSFederatedPunchoutEvent received invalid metadata key: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        v46 = v41;
        v9 = &type metadata for VSAnalyticsCommonKeys;
        MEMORY[0x23EE97EA0](v46, -1, -1);
        v47 = v40;
        v7 = v97;
        MEMORY[0x23EE97EA0](v47, -1, -1);
      }

      else
      {

        sub_23AC44614(v0 + 320);
      }

      v101(v100, v99);
      __swift_destroy_boxed_opaque_existential_0(v0 + 568);
      sub_23AC44614(v0 + 160);
      v8 = v103;
      v1 = v98;
      if (!v5)
      {
LABEL_9:
        if (v6 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = v6;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v12 >= v6)
          {
            v5 = 0;
            *(v0 + 152) = 0;
            *(v0 + 136) = 0u;
            *(v0 + 120) = 0u;
            *(v0 + 104) = 0u;
            *(v0 + 88) = 0u;
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v12);
          ++v8;
          if (v5)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_65:
        v84 = *(v0 + 832);
        v85 = *(v0 + 776);
        v86 = *(v0 + 760);
        v87 = sub_23AC5EAE8();
        v84(v85, v87, v86);

        v88 = sub_23AC662C4();
        v89 = sub_23AC66474();

        v90 = os_log_type_enabled(v88, v89);
        v91 = *(v0 + 848);
        v92 = *(v0 + 776);
        v93 = *(v0 + 760);
        if (v90)
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v104 = v95;
          *v94 = 136315138;
          v96 = sub_23AC43B08(v7, v9, &v104);

          *(v94 + 4) = v96;
          _os_log_impl(&dword_23AB8E000, v88, v89, "Federated punchout event for bundle %s with no version.", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x23EE97EA0](v95, -1, -1);
          MEMORY[0x23EE97EA0](v94, -1, -1);
        }

        else
        {
        }

        v91(v92, v93);
        v68 = v97;
        goto LABEL_57;
      }
    }
  }

  v56 = *(v0 + 752);

  *(v0 + 872) = 1;
  sub_23AC445C0();
  sub_23AC66504();
  if (*(v56 + 16) && (v57 = sub_23AC440B0(v0 + 200), (v58 & 1) != 0))
  {
    sub_23AC44554(*(v1 + 56) + 32 * v57, v0 + 472);
    sub_23AC44614(v0 + 200);

    v59 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v97 = v7;
      v7 = *(v0 + 728);
      v9 = *(v0 + 736);
      v60 = objc_allocWithZone(VSBundleRecord);
      v61 = sub_23AC66334();
      v62 = [v60 initWithBundleID_];

      v63 = [v62 bundleVersion];
      if (v63)
      {

        v64 = sub_23AC66364();
        v66 = v65;

        *(v0 + 873) = 2;
        sub_23AC66504();
        *(v0 + 528) = v59;
        *(v0 + 504) = v64;
        *(v0 + 512) = v66;
        sub_23AC445B0((v0 + 504), (v0 + 536));
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v97;
        sub_23AC443AC((v0 + 536), v0 + 240, v67);
        sub_23AC44614(v0 + 240);
        v68 = v104;
        goto LABEL_57;
      }

      goto LABEL_65;
    }

    v68 = v7;
  }

  else
  {
    v68 = v7;

    sub_23AC44614(v0 + 200);
  }

  v69 = *(v0 + 832);
  v70 = *(v0 + 784);
  v71 = *(v0 + 760);
  v72 = sub_23AC5EAE8();
  v69(v70, v72, v71);
  v73 = sub_23AC662C4();
  v74 = sub_23AC66474();
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v0 + 848);
  v77 = *(v0 + 784);
  v78 = *(v0 + 760);
  if (v75)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_23AB8E000, v73, v74, "Federated punchout event with no bundle ID.", v79, 2u);
    MEMORY[0x23EE97EA0](v79, -1, -1);
  }

  v76(v77, v78);
LABEL_57:
  v80 = *(v0 + 816);
  v81 = *(v0 + 808);
  v82 = *(v0 + 744);
  *v82 = 0xD000000000000012;
  v82[1] = 0x800000023AC8A650;
  v82[2] = v68;
  v82[3] = v81;
  v82[4] = v80;

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_23AC438AC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23AC438E4(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_23AC43930()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_23AC43964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23AC43A0C;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC43A0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_23AC43B08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23AC43BD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23AC44554(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23AC43BD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23AC43CE0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23AC66554();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23AC43CE0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23AC43D2C(a1, a2);
  sub_23AC43E5C(&unk_284DCDDF0);
  return v3;
}

uint64_t sub_23AC43D2C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23AC43F48(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23AC66554();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23AC663B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23AC43F48(v10, 0);
        result = sub_23AC66524();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23AC43E5C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23AC43FBC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23AC43F48(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8650);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23AC43FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23AC440B0(uint64_t a1)
{
  v2 = sub_23AC664D4();

  return sub_23AC44730(a1, v2);
}

uint64_t sub_23AC440F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8648);
  result = sub_23AC66594();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_23AC445B0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_23AC444F8(v23, &v36);
        sub_23AC44554(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_23AC664D4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_23AC445B0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_23AC443AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23AC440B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23AC447F8();
      goto LABEL_7;
    }

    sub_23AC440F4(v13, a3 & 1);
    v19 = sub_23AC440B0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23AC444F8(a2, v21);
      return sub_23AC446B4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_23AC66604();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_23AC445B0(a1, v17);
}

uint64_t sub_23AC44554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_23AC445B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23AC445C0()
{
  result = qword_27DFC8638;
  if (!qword_27DFC8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8638);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

_OWORD *sub_23AC446B4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23AC445B0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_23AC44730(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23AC444F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EE96DD0](v9, a1);
      sub_23AC44614(v9);
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

void *sub_23AC447F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8648);
  v2 = *v0;
  v3 = sub_23AC66584();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_23AC444F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23AC44554(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23AC445B0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_23AC4499C()
{
  result = qword_27DFC8640;
  if (!qword_27DFC8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8640);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23AC44A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23AC44A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t VSClickEvent.eventType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VSClickEvent.eventData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VSClickEvent.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VSClickEvent.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VSClickEvent.init(with:page:type:)(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  *(v4 + 328) = a1;
  v8 = sub_23AC662E4();
  *(v4 + 336) = v8;
  *(v4 + 344) = *(v8 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 411) = *a2;
  *(v4 + 412) = *a3;
  *(v4 + 413) = *a4;

  return MEMORY[0x2822009F8](sub_23AC44CFC, 0, 0);
}

uint64_t sub_23AC44CFC()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = sub_23AC66364();
  v6 = v5;
  v7 = sub_23AC5B228();
  v0[45] = *v7;
  v0[46] = v7[1];

  v8 = sub_23AC5E9D0();
  (*(v2 + 16))(v1, v8, v3);
  v9 = sub_23AC662C4();
  v10 = sub_23AC66454();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23AB8E000, v9, v10, "VSClickEvent", v11, 2u);
    MEMORY[0x23EE97EA0](v11, -1, -1);
  }

  v13 = v0[43];
  v12 = v0[44];
  v14 = v0[42];

  (*(v13 + 8))(v12, v14);
  v0[47] = v6;
  v0[48] = v4;
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_23AC44E98;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC44E98(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return MEMORY[0x2822009F8](sub_23AC44F98, 0, 0);
}

uint64_t sub_23AC44F98()
{
  v1 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 384);
  v2 = *(v0 + 360);
  v18 = *(v0 + 368);
  v3 = *(v0 + 328);
  *(v0 + 408) = 0;
  sub_23AC451B4();
  sub_23AC66504();
  v4 = VSClickTarget.rawValue.getter();
  v5 = MEMORY[0x277D837D0];
  *(v0 + 160) = MEMORY[0x277D837D0];
  *(v0 + 136) = v4;
  *(v0 + 144) = v6;
  sub_23AC445B0((v0 + 136), (v0 + 168));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 168), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_23AC44614(v0 + 16);
  *(v0 + 409) = 1;
  sub_23AC66504();
  v8 = VSPage.rawValue.getter();
  *(v0 + 224) = v5;
  *(v0 + 200) = v8;
  *(v0 + 208) = v9;
  sub_23AC445B0((v0 + 200), (v0 + 232));
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 232), v0 + 56, v10);
  sub_23AC44614(v0 + 56);
  *(v0 + 410) = 2;
  sub_23AC66504();
  v11 = VSPageType.rawValue.getter();
  *(v0 + 288) = v5;
  *(v0 + 264) = v11;
  *(v0 + 272) = v12;
  sub_23AC445B0((v0 + 264), (v0 + 296));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 296), v0 + 96, v13);
  sub_23AC44614(v0 + 96);
  *v3 = v17;
  v3[1] = v16;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v18;

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_23AC451B4()
{
  result = qword_27DFC8658;
  if (!qword_27DFC8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8658);
  }

  return result;
}

uint64_t VSPageEnterEvent.init(with:and:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *(v3 + 224) = a1;
  v6 = sub_23AC662E4();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 306) = *a2;
  *(v3 + 307) = *a3;

  return MEMORY[0x2822009F8](sub_23AC45330, 0, 0);
}

uint64_t sub_23AC45330()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = sub_23AC66364();
  v6 = v5;
  v7 = sub_23AC5B228();
  v0[32] = *v7;
  v0[33] = v7[1];

  v8 = sub_23AC5E9D0();
  (*(v2 + 16))(v1, v8, v3);
  v9 = sub_23AC662C4();
  v10 = sub_23AC66454();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23AB8E000, v9, v10, "VSPageEnterEvent", v11, 2u);
    MEMORY[0x23EE97EA0](v11, -1, -1);
  }

  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];

  (*(v13 + 8))(v12, v14);
  v0[34] = v6;
  v0[35] = v4;
  v15 = swift_task_alloc();
  v0[36] = v15;
  *v15 = v0;
  v15[1] = sub_23AC454CC;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC454CC(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_23AC45C3C, 0, 0);
}

uint64_t sub_23AC455CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23AC45C58;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t VSPageExitEvent.init(with:and:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *(v3 + 224) = a1;
  v6 = sub_23AC662E4();
  *(v3 + 232) = v6;
  *(v3 + 240) = *(v6 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 306) = *a2;
  *(v3 + 307) = *a3;

  return MEMORY[0x2822009F8](sub_23AC4579C, 0, 0);
}

uint64_t sub_23AC4579C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = sub_23AC66364();
  v6 = v5;
  v7 = sub_23AC5B228();
  v0[32] = *v7;
  v0[33] = v7[1];

  v8 = sub_23AC5E9D0();
  (*(v2 + 16))(v1, v8, v3);
  v9 = sub_23AC662C4();
  v10 = sub_23AC66454();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23AB8E000, v9, v10, "VSPageExitEvent", v11, 2u);
    MEMORY[0x23EE97EA0](v11, -1, -1);
  }

  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];

  (*(v13 + 8))(v12, v14);
  v0[34] = v6;
  v0[35] = v4;
  v15 = swift_task_alloc();
  v0[36] = v15;
  *v15 = v0;
  v15[1] = sub_23AC45938;

  return static VSMetricsEventProtocol.generateBaseFields()();
}

uint64_t sub_23AC45938(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_23AC45A38, 0, 0);
}

uint64_t sub_23AC45A38()
{
  v1 = *(v0 + 296);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  v2 = *(v0 + 256);
  v15 = *(v0 + 264);
  v3 = *(v0 + 224);
  *(v0 + 304) = 1;
  sub_23AC451B4();
  sub_23AC66504();
  v4 = VSPage.rawValue.getter();
  v5 = MEMORY[0x277D837D0];
  *(v0 + 120) = MEMORY[0x277D837D0];
  *(v0 + 96) = v4;
  *(v0 + 104) = v6;
  sub_23AC445B0((v0 + 96), (v0 + 128));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 128), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_23AC44614(v0 + 16);
  *(v0 + 305) = 2;
  sub_23AC66504();
  v8 = VSPageType.rawValue.getter();
  *(v0 + 184) = v5;
  *(v0 + 160) = v8;
  *(v0 + 168) = v9;
  sub_23AC445B0((v0 + 160), (v0 + 192));
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_23AC443AC((v0 + 192), v0 + 56, v10);
  sub_23AC44614(v0 + 56);
  *v3 = v14;
  v3[1] = v13;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v15;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t VSUserAccountManager.AutoSignInToken.authorization.getter@<X0>(char *a1@<X8>)
{
  v3 = [*v1 authorization];

  return sub_23AC56A98(v3, a1);
}

uint64_t VSUserAccountManager.AutoSignInToken.value.getter()
{
  v1 = [*v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23AC66364();

  return v3;
}

id sub_23AC45D2C()
{
  [*v0 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC8660);
  swift_dynamicCast();
  objc_storeStrong(v0, obj);
  return obj;
}

VideoSubscriberAccount::VSAppleSubscription __swiftcall VSAppleSubscription.init(customerID:productCodes:)(Swift::String customerID, Swift::OpaquePointer productCodes)
{
  v3 = v2;
  v4 = objc_allocWithZone(VSAppleSubscription);
  v5 = sub_23AC66334();

  v6 = sub_23AC663E4();

  v7 = [v4 initWithCustomerID:v5 productCodes:v6];

  *v3 = v7;
  result._subscription._productCodes = v10;
  result._subscription._customerID = v9;
  result._subscription.super.isa = v8;
  return result;
}

uint64_t VSAppleSubscription.customerID.getter()
{
  v1 = [*v0 customerID];
  v2 = sub_23AC66364();

  return v2;
}

void sub_23AC45EC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 customerID];
  v4 = sub_23AC66364();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void VSAppleSubscription.customerID.setter()
{
  [*v0 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC8660);
  swift_dynamicCast();
  objc_storeStrong(v0, obj);
  v1 = sub_23AC66334();

  [obj setCustomerID_];
}

void (*VSAppleSubscription.customerID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v4[8] = *v1;
  v6 = [v5 customerID];
  v7 = sub_23AC66364();
  v9 = v8;

  v4[4] = v7;
  v4[5] = v9;
  return sub_23AC460E0;
}

void sub_23AC460E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {

    [v4 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC8660);
    swift_dynamicCast();
    v5 = v2[6];
    objc_storeStrong(v3, v5);
    v6 = sub_23AC66334();

    [v5 setCustomerID_];
  }

  else
  {
    [*(*a1 + 64) copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC8660);
    swift_dynamicCast();
    v7 = v2[6];
    objc_storeStrong(v3, v7);
    v8 = sub_23AC66334();

    [v7 setCustomerID_];
  }

  free(v2);
}

uint64_t VSAppleSubscription.productCodes.getter()
{
  v1 = [*v0 productCodes];
  v2 = sub_23AC663F4();

  return v2;
}

void sub_23AC462DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 productCodes];
  v4 = sub_23AC663F4();

  *a2 = v4;
}

void VSAppleSubscription.productCodes.setter()
{
  [*v0 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC8660);
  swift_dynamicCast();
  objc_storeStrong(v0, obj);
  v1 = sub_23AC663E4();

  [obj setProductCodes_];
}

void (*VSAppleSubscription.productCodes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  *(v4 + 56) = *v1;
  v6 = [v5 productCodes];
  v7 = sub_23AC663F4();

  *(v4 + 32) = v7;
  return sub_23AC464E0;
}

void sub_23AC464E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    [v4 copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC8660);
    swift_dynamicCast();
    v5 = v2[5];
    objc_storeStrong(v3, v5);
    v6 = sub_23AC663E4();

    [v5 setProductCodes_];
  }

  else
  {
    [*(*a1 + 56) copy];
    sub_23AC664A4();
    swift_unknownObjectRelease();
    sub_23AC466DC(0, &qword_27DFC8660);
    swift_dynamicCast();
    v7 = v2[5];
    objc_storeStrong(v3, v7);
    v8 = sub_23AC663E4();

    [v7 setProductCodes_];
  }

  free(v2);
}

uint64_t sub_23AC466DC(uint64_t a1, unint64_t *a2)
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

uint64_t VSAppleSubscription.hashValue.getter()
{
  sub_23AC66614();
  sub_23AC66494();
  return sub_23AC66634();
}

uint64_t sub_23AC4678C()
{
  sub_23AC66614();
  sub_23AC66494();
  return sub_23AC66634();
}

uint64_t sub_23AC467F4()
{
  sub_23AC66614();
  sub_23AC66494();
  return sub_23AC66634();
}

unint64_t sub_23AC46838()
{
  result = qword_27DFC8670;
  if (!qword_27DFC8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8670);
  }

  return result;
}

VideoSubscriberAccount::VSClickstreamKeys_optional __swiftcall VSClickstreamKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VSClickstreamKeys.rawValue.getter()
{
  v1 = 0x644965676170;
  if (*v0 != 1)
  {
    v1 = 0x6570795465676170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449746567726174;
  }
}

uint64_t sub_23AC469B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x644965676170;
  if (v2 != 1)
  {
    v4 = 0x6570795465676170;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6449746567726174;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x644965676170;
  if (*a2 != 1)
  {
    v8 = 0x6570795465676170;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6449746567726174;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AC665E4();
  }

  return v11 & 1;
}

uint64_t sub_23AC46AAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E69616D5F7964;
  v3 = a1;
  v4 = 0x800000023AC8A7D0;
  if (a1 == 5)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (a1 != 5)
  {
    v4 = 0x800000023AC8A7F0;
  }

  v6 = 0xEE006F737A5F7964;
  if (a1 == 3)
  {
    v6 = 0xEF6E69616D5F7964;
  }

  if (a1 <= 4u)
  {
    v7 = 0x6475625F65676170;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0x800000023AC8A770;
  v10 = 0x800000023AC8A790;
  if (v3 == 1)
  {
    v11 = 0xD000000000000012;
  }

  else
  {
    v11 = 0xD00000000000001ALL;
  }

  if (v3 != 1)
  {
    v10 = 0x800000023AC8A7B0;
  }

  if (v3)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0xD000000000000014;
  }

  if (v3)
  {
    v9 = v10;
  }

  if (v3 > 2)
  {
    v13 = v8;
  }

  else
  {
    v7 = v12;
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000023AC8A790;
        if (v7 != 0xD000000000000012)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x800000023AC8A7B0;
        if (v7 != 0xD00000000000001ALL)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v2 = 0x800000023AC8A770;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x800000023AC8A7D0;
      if (v7 != 0xD00000000000001ALL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x800000023AC8A7F0;
      if (v7 != 0xD000000000000016)
      {
LABEL_47:
        v14 = sub_23AC665E4();
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 0xEE006F737A5F7964;
    }

    if (v7 != 0x6475625F65676170)
    {
      goto LABEL_47;
    }
  }

  if (v13 != v2)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_23AC46C8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E695F6E67;
  v3 = 0x69735F6B63696C63;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x706F5F6B63696C63;
    v14 = 0xEE007070615F6E65;
    v15 = 0xD000000000000011;
    v16 = 0x800000023AC8A730;
    if (a1 != 8)
    {
      v15 = 0xD000000000000010;
      v16 = 0x800000023AC8A750;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v14 = v16;
    }

    v17 = 0x6F6E5F6B63696C63;
    v18 = 0xED0000776F6E5F74;
    if (a1 != 5)
    {
      v17 = 0x6F635F6B63696C63;
      v18 = 0xEE0065756E69746ELL;
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v18;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xEE0074756F5F6E67;
    v6 = 0x800000023AC8A6D0;
    v7 = 0xD000000000000014;
    if (a1 == 3)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x800000023AC8A6F0;
    }

    if (a1 == 2)
    {
      v8 = 0x69735F6B63696C63;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v9 = 0x800000023AC8A690;
    v10 = 0xD000000000000017;
    if (a1)
    {
      v10 = 0x69735F6B63696C63;
      v9 = 0xED00006E695F6E67;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000776F6E5F74;
        if (v11 != 0x6F6E5F6B63696C63)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v3 = 0x6F635F6B63696C63;
      v20 = 0x65756E69746ELL;
      goto LABEL_55;
    }

    if (a2 == 7)
    {
      v3 = 0x706F5F6B63696C63;
      v20 = 0x7070615F6E65;
      goto LABEL_55;
    }

    if (a2 == 8)
    {
      v19 = "click_install_app";
LABEL_39:
      v2 = (v19 - 32) | 0x8000000000000000;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v2 = 0x800000023AC8A750;
    v3 = 0xD000000000000010;
LABEL_52:
    if (v11 != v3)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0x800000023AC8A690;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      v2 = 0x800000023AC8A6F0;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v19 = "click_stb_opt_out";
    goto LABEL_39;
  }

  v20 = 0x74756F5F6E67;
LABEL_55:
  v2 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  if (v11 != v3)
  {
LABEL_58:
    v21 = sub_23AC665E4();
    goto LABEL_59;
  }

LABEL_56:
  if (v12 != v2)
  {
    goto LABEL_58;
  }

  v21 = 1;
LABEL_59:

  return v21 & 1;
}

uint64_t sub_23AC46FD0()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC47070()
{
  sub_23AC66384();
}

uint64_t sub_23AC470FC()
{
  sub_23AC66384();
}

uint64_t sub_23AC472A0()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC4733C()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

void sub_23AC47478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x644965676170;
  if (v2 != 1)
  {
    v5 = 0x6570795465676170;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6449746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

VideoSubscriberAccount::VSClickTarget_optional __swiftcall VSClickTarget.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VSClickTarget.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x706F5F6B63696C63;
    v7 = 0xD000000000000011;
    if (v1 != 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6F6E5F6B63696C63;
    if (v1 != 5)
    {
      v8 = 0x6F635F6B63696C63;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x69735F6B63696C63;
    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 == 2)
    {
      v4 = 0x69735F6B63696C63;
    }

    else
    {
      v4 = v3;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000017;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_23AC476C8()
{
  sub_23AC66614();
  sub_23AC470FC();
  return sub_23AC66634();
}

uint64_t sub_23AC47718()
{
  sub_23AC66614();
  sub_23AC470FC();
  return sub_23AC66634();
}

unint64_t sub_23AC47768@<X0>(unint64_t *a1@<X8>)
{
  result = VSClickTarget.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

VideoSubscriberAccount::VSPage_optional __swiftcall VSPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VSPage.rawValue.getter()
{
  v1 = 0x6475625F65676170;
  v2 = *v0;
  v3 = 0xD000000000000016;
  if (v2 == 5)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0 > 4u)
  {
    v1 = v3;
  }

  v4 = 0xD000000000000012;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23AC47908()
{
  sub_23AC66384();
}

void sub_23AC47A38(uint64_t *a1@<X8>)
{
  v2 = 0x6475625F65676170;
  v3 = *v1;
  v4 = 0xEF6E69616D5F7964;
  v5 = 0x800000023AC8A7D0;
  v6 = 0xD000000000000016;
  if (v3 == 5)
  {
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0x800000023AC8A7F0;
  }

  if (v3 != 3)
  {
    v4 = 0xEE006F737A5F7964;
  }

  if (*v1 > 4u)
  {
    v2 = v6;
    v4 = v5;
  }

  v7 = 0x800000023AC8A770;
  v8 = 0x800000023AC8A790;
  v9 = 0xD000000000000012;
  if (v3 != 1)
  {
    v9 = 0xD00000000000001ALL;
    v8 = 0x800000023AC8A7B0;
  }

  if (*v1)
  {
    v7 = v8;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*v1 > 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v9;
    v10 = v7;
  }

  *a1 = v2;
  a1[1] = v10;
}

VideoSubscriberAccount::VSPageType_optional __swiftcall VSPageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AC665C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VSPageType.rawValue.getter()
{
  v1 = 0x7079745F65676170;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_23AC47C0C()
{
  result = qword_27DFC8678;
  if (!qword_27DFC8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8678);
  }

  return result;
}

unint64_t sub_23AC47C94()
{
  result = qword_27DFC8690;
  if (!qword_27DFC8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC8690);
  }

  return result;
}

unint64_t sub_23AC47D1C()
{
  result = qword_27DFC86A8;
  if (!qword_27DFC86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC86A8);
  }

  return result;
}

uint64_t sub_23AC47DA0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF79646475625F65;
  v3 = 0x7079745F65676170;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x7079745F65676170;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4 == 1)
  {
    v6 = 0xEF79646475625F65;
  }

  else
  {
    v6 = 0x800000023AC8A830;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000023AC8A810;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x800000023AC8A830;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000023AC8A810;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AC665E4();
  }

  return v11 & 1;
}

unint64_t sub_23AC47E8C()
{
  result = qword_27DFC86C0;
  if (!qword_27DFC86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC86C0);
  }

  return result;
}

uint64_t sub_23AC47EE0()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

uint64_t sub_23AC47F94()
{
  sub_23AC66384();
}

uint64_t sub_23AC48034()
{
  sub_23AC66614();
  sub_23AC66384();

  return sub_23AC66634();
}

void sub_23AC480F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF79646475625F65;
  v4 = 0x7079745F65676170;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000023AC8A830;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x800000023AC8A810;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_23AC48190(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSClickTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSClickTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VSUserAccount.SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VSUserAccount.SourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t VSUserAccount.updateURL.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  [*v2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v6 = v12;
  objc_storeStrong(v2, v12);
  sub_23AC4CC08(a1, v5, &qword_27DFC86D8);
  v7 = sub_23AC66214();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_23AC661F4();
    (*(v8 + 8))(v5, v7);
  }

  [v6 setUpdateURL_];

  return sub_23AC4CC70(a1, &qword_27DFC86D8);
}

void (*VSUserAccount.updateURL.modify(id **a1))(void *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC86D8) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
    a1[2] = v4;
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
    a1[2] = v4;
    v5 = malloc(v3);
  }

  v6 = v5;
  a1[3] = v5;
  v7 = [*v1 updateURL];
  if (v7)
  {
    v8 = v7;
    sub_23AC66204();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_23AC66214();
  (*(*(v10 - 8) + 56))(v4, v9, 1, v10);
  sub_23AC4CCD0(v4, v6, &qword_27DFC86D8);
  return sub_23AC489CC;
}

id sub_23AC48A18@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 requiresSystemTrust];
  *a2 = result;
  return result;
}

void (*VSUserAccount.requiresSystemTrust.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 56) = [v5 requiresSystemTrust];
  return sub_23AC48AEC;
}

uint64_t (*VSUserAccount.accountProviderIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 accountProviderIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC48BBC;
}

void sub_23AC48C10(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  [*v5 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(v5, obj);
  if (a2)
  {
    v7 = sub_23AC66334();
  }

  else
  {
    v7 = 0;
  }

  [obj *a3];
}

uint64_t (*VSUserAccount.identifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23AC66364();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23AC48D84;
}

id VSUserAccount.accountType.getter@<X0>(char *a1@<X8>)
{
  result = [*v1 accountType];
  if (result == 1)
  {
    v4 = 1;
LABEL_5:
    *a1 = v4;
    return result;
  }

  if (!result)
  {
    v4 = 0;
    goto LABEL_5;
  }

  sub_23AC66534();

  v5 = sub_23AC665D4();
  MEMORY[0x23EE96C90](v5);

  result = sub_23AC66564();
  __break(1u);
  return result;
}

uint64_t static VSUserAccount.AccountType.fromObjcType(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
    }

    else
    {
      sub_23AC66534();

      v2 = sub_23AC665D4();
      MEMORY[0x23EE96C90](v2);

      result = sub_23AC66564();
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void (*VSUserAccount.accountType.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = *v1;
  VSUserAccount.accountType.getter((v3 + 56));
  return sub_23AC49034;
}

void sub_23AC49034(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 40);
  [*(*a1 + 48) copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  v4 = v1[4];
  objc_storeStrong(v3, v4);
  [v4 setAccountType_];

  free(v1);
}

id sub_23AC4911C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSignedOut];
  *a2 = result;
  return result;
}

void sub_23AC4915C(unsigned __int8 *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  [*a2 copy];
  sub_23AC664A4();
  swift_unknownObjectRelease();
  sub_23AC466DC(0, &qword_27DFC86E0);
  swift_dynamicCast();
  objc_storeStrong(a2, obj);
  [obj *a5];
}