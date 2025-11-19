void sub_1832548E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_183254940(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x183254938);
}

void sub_183255658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183256C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_183257068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1832572C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1832578A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *copyDescriptionApplier(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = _CFAutoreleasePoolPush();
  CFStringAppend(a3, @"\n*********\n");
  v6 = [a2 description];
  if (v6)
  {
    CFStringAppend(a3, v6);
  }

  return _CFAutoreleasePoolPop(v5);
}

uint64_t _CFPrefsWritingToExternalAppCloudPreferencesEnabled()
{
  if (_CFPrefsOverrideEnableWritingToExternalAppCloudPreferences)
  {
    v0 = 1;
  }

  else
  {
    if (_CFPrefsWritingToExternalAppCloudPreferencesEnabled_onceToken != -1)
    {
      _CFPrefsWritingToExternalAppCloudPreferencesEnabled_cold_1();
    }

    v0 = _CFPrefsOverrideEnableWritingToExternalAppCloudPreferences;
  }

  return v0 & 1;
}

void *initLSApplicationProxy()
{
  if (MobileCoreServicesLibrary_frameworkLibrary || (result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2), (MobileCoreServicesLibrary_frameworkLibrary = result) != 0))
  {
    result = objc_getClass("LSApplicationProxy");
    classLSApplicationProxy = result;
    getLSApplicationProxyClass[0] = LSApplicationProxyFunction;
  }

  return result;
}

__CFBundle *__appIsInternal_block_invoke()
{
  v0 = _CFProcessPath();
  if (strncmp(v0, "/private/var/", 0xDuLL))
  {
    result = strncmp(v0, "/var/", 5uLL);
    if (result)
    {
      v2 = 1;
LABEL_7:
      appIsInternal_isInternal = v2;
      return result;
    }
  }

  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetIdentifier(result);
    if (result)
    {
      result = CFStringHasPrefix(result, @"com.apple.");
      v2 = result != 0;
      goto LABEL_7;
    }
  }

  return result;
}

void NSMoribundCache_invalidAccess()
{
  if (NSMoribundCache_invalidAccess_oGuard != -1)
  {
    dispatch_once(&NSMoribundCache_invalidAccess_oGuard, &__block_literal_global_37);
  }
}

void sub_18325902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CFBasicHashGetFlags(uint64_t a1)
{
  v1 = *(a1 + 18);
  if ((v1 & 0x18) != 0)
  {
    return (*(a1 + 32) << 13) & 0x8000 | ((v1 & 3) << 13) | (v1 >> 2) & 1 | 2;
  }

  else
  {
    return (*(a1 + 32) << 13) & 0x8000 | ((v1 & 3) << 13) | (v1 >> 2) & 1;
  }
}

uint64_t CFBasicHashApplyIndexed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
    goto LABEL_8;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = a2;
  v6 = result;
  if (__CFBasicHashTableSizes[*(result + 26)] < a2 + a3)
  {
LABEL_8:
    __break(1u);
  }

  do
  {
    v11 = 0u;
    v12 = 0u;
    result = CFBasicHashGetBucket(v6, v5, &v11);
    if (*(&v12 + 1))
    {
      v8 = *(a4 + 16);
      v10[0] = v11;
      v10[1] = v12;
      result = v8(a4, v10);
      if (!result)
      {
        break;
      }
    }

    ++v5;
    --v4;
  }

  while (v4);
LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CFBasicHashRemoveValueAtIndex(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x40) != 0)
  {
    __break(1u);
  }

  v11 = 0u;
  v12 = 0u;
  CFBasicHashGetBucket(a1, a2, &v11);
  v4 = *(&v12 + 1);
  if (*(&v12 + 1) < 2uLL)
  {
    if (*(&v12 + 1) == 1)
    {
      __CFBasicHashRemoveValue(a1, v11);
    }
  }

  else
  {
    ++*(a1 + 16);
    v5 = *(a1 + 18);
    if (v4 <= 0x7FFFFFFFFFFFFFFELL && (v5 & 0x18) != 0)
    {
      v7 = *(a1 + (v5 & 0x18) + 40);
      v8 = (v5 >> 5) & 3;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          --*(v7 + 4 * v11);
        }

        else
        {
          --*(v7 + 8 * v11);
        }
      }

      else if (v8)
      {
        --*(v7 + 2 * v11);
      }

      else
      {
        --*(v7 + v11);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CFBasicHashAddIntValueAndInc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 8));
  if ((v3 & 0x40) != 0 || a2 == 2780474809 || a2 == 2814029233 || a3 == 2780474809 || a3 == 2814029233)
  {
    goto LABEL_57;
  }

  v19 = 0u;
  v20 = 0u;
  if (*(a1 + 26))
  {
    v7 = *(a1 + 18) & 3;
    if ((*(a1 + 18) & 0x8000) != 0)
    {
      if ((*(a1 + 18) & 3u) <= 1)
      {
        if (v7 != 1)
        {
          goto LABEL_57;
        }

        ___CFBasicHashFindBucket_Linear_Indirect(a1, a2, &v19);
      }

      else if (v7 == 2)
      {
        ___CFBasicHashFindBucket_Double_Indirect(a1, a2, &v19);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential_Indirect(a1, a2, &v19);
      }
    }

    else if ((*(a1 + 18) & 3u) <= 1)
    {
      if (v7 != 1)
      {
        goto LABEL_57;
      }

      ___CFBasicHashFindBucket_Linear(a1, a2, &v19);
    }

    else if (v7 == 2)
    {
      ___CFBasicHashFindBucket_Double(a1, a2, &v19);
    }

    else
    {
      ___CFBasicHashFindBucket_Exponential(a1, a2, &v19);
    }
  }

  else
  {
    v19 = xmmword_183447130;
    v20 = unk_183447140;
  }

  if (!*(&v20 + 1))
  {
    v9 = *(a1 + 26);
    if (__CFBasicHashTableCapacities[v9] >= (*(a1 + 20) + 1))
    {
LABEL_40:
      v12 = __CFBasicHashTableSizes[v9];
      if (v12 < 1)
      {
LABEL_55:
        __CFBasicHashAddValue(a1, v19, a2, a3);
        result = 1;
        goto LABEL_56;
      }

      v13 = 0;
      while (1)
      {
        v14 = *(a1 + 40);
        v15 = *(v14 + 8 * v13);
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if (v15 == 2780474809)
          {
            v15 = -1;
          }

          else
          {
            if (v15 == 2814029233)
            {
              v15 = 0;
            }

            if (v15 < a3)
            {
              goto LABEL_54;
            }
          }

          v16 = __CFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            v17 = 2814029233;
          }

          if (v17 == -1)
          {
            v17 = 2780474809;
          }

          *(v14 + 8 * v13) = v17;
          ++*(a1 + 16);
        }

LABEL_54:
        if (v12 == ++v13)
        {
          goto LABEL_55;
        }
      }
    }

    __CFBasicHashRehash(a1, 1);
    if (!*(a1 + 26))
    {
      Bucket_Double_Indirect_NoCollision = -1;
LABEL_39:
      *&v19 = Bucket_Double_Indirect_NoCollision;
      v9 = *(a1 + 26);
      goto LABEL_40;
    }

    v10 = *(a1 + 18) & 3;
    if ((*(a1 + 18) & 0x8000) != 0)
    {
      if ((*(a1 + 18) & 3u) > 1)
      {
        if (v10 == 2)
        {
          Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_Indirect_NoCollision(a1, a2);
        }

        else
        {
          Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_Indirect_NoCollision(a1, a2);
        }

        goto LABEL_39;
      }

      if (v10 == 1)
      {
        Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_Indirect_NoCollision(a1, a2);
        goto LABEL_39;
      }
    }

    else
    {
      if ((*(a1 + 18) & 3u) > 1)
      {
        if (v10 == 2)
        {
          Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_NoCollision(a1, a2);
        }

        else
        {
          Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_NoCollision(a1, a2);
        }

        goto LABEL_39;
      }

      if (v10 == 1)
      {
        Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_NoCollision(a1, a2);
        goto LABEL_39;
      }
    }

LABEL_57:
    __break(1u);
  }

  result = 0;
  ++*(a1 + 16);
LABEL_56:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void CFBasicHashRemoveIntValueAndDec(uint64_t a1, unint64_t a2)
{
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x40) != 0 || a2 == 2780474809 || a2 == 2814029233)
  {
    __break(1u);
  }

  else
  {
    v3 = __CFBasicHashTableSizes[*(a1 + 26)];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = -1;
      while (1)
      {
        v6 = *(a1 + 40);
        v7 = *(v6 + 8 * v4);
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if (v7 == 2780474809)
          {
            v7 = -1;
LABEL_13:
            if (v7 == a2)
            {
              v5 = v4;
            }

            if (v7 > a2)
            {
              v8 = v7 - 1;
              if (!v8)
              {
                v8 = 2814029233;
              }

              *(v6 + 8 * v4) = v8;
              ++*(a1 + 16);
            }

            goto LABEL_19;
          }

          if (v7 != 2814029233)
          {
            goto LABEL_13;
          }

          if (!a2)
          {
            v5 = v4;
          }
        }

LABEL_19:
        if (v3 == ++v4)
        {
          goto LABEL_22;
        }
      }
    }

    v5 = -1;
LABEL_22:
    __CFBasicHashRemoveValue(a1, v5);
  }
}

uint64_t CFBasicHashGetSize(uint64_t a1, int a2)
{
  v2 = *(a1 + 18);
  v3 = 56;
  if ((v2 & 4) == 0)
  {
    v3 = 48;
  }

  if ((v2 & 0x18) != 0)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = v3;
  }

  if (a2 && __CFBasicHashTableSizes[*(a1 + 26)] >= 1)
  {
    v6 = a1 + 40;
    v4 += malloc_size(*(a1 + 40));
    v7 = *(a1 + 18);
    if ((v7 & 4) != 0)
    {
      v4 += malloc_size(*(a1 + 48));
      v7 = *(a1 + 18);
    }

    if ((v7 & 0x18) != 0)
    {
      v4 += malloc_size(*(v6 + 8 * ((v7 >> 3) & 3)));
    }
  }

  return v4;
}

void CFBasicHashShow(uint64_t a1)
{
  v1 = CFBasicHashCopyDescription(a1, 1, &stru_1EF068AA8, @"\t", 0);
  CFShow(v1);

  CFRelease(v1);
}

unint64_t ___CFBasicHashFindBucket_Linear_Indirect@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __CFBasicHashTableSizes[*(a1 + 26)];
  v6 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  if (v6)
  {
    result = v6(a2);
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  v10 = result % v5;
  if (v5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  v12 = -1;
  while (1)
  {
    v13 = *(v9 + 8 * v10);
    switch(v13)
    {
      case -1:
        if (v12 == -1)
        {
          v12 = v10;
        }

        goto LABEL_24;
      case 0:
        v18 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v12 == -1)
        {
          v19 = v10;
        }

        else
        {
          v19 = v12;
        }

        *a3 = v19;
        goto LABEL_47;
      case 2814029233:
        v13 = 0;
        break;
    }

    if (v13 == 2780474809)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(a1 + 32)) & 0xF8)) + 8 * ((*(a1 + 32) >> 54) & 0x1FLL));
    if (v15)
    {
      result = v15(v14);
      v14 = result;
    }

    if (v14 == a2)
    {
      break;
    }

    v16 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v16)
    {
      result = v16(v14, a2);
      if (result)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    if (v5 <= v10 + 1)
    {
      v17 = v5;
    }

    else
    {
      v17 = 0;
    }

    v10 = v10 + 1 - v17;
    if (!--v11)
    {
      v13 = 0;
      v18 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v12;
      goto LABEL_47;
    }
  }

  v14 = a2;
LABEL_34:
  v18 = a3;
  *a3 = v10;
  v20 = *(*(a1 + 40) + 8 * v10);
  if (v20 == 2814029233)
  {
    v20 = 0;
  }

  else if (v20 == 2780474809)
  {
    v20 = -1;
  }

  a3[1] = v14;
  a3[2] = v20;
  v21 = *(a1 + 18);
  if ((v21 & 0x18) != 0)
  {
    v22 = *(a1 + 40 + (v21 & 0x18));
    v23 = (v21 >> 5) & 3;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v13 = *(v22 + 4 * v10);
      }

      else
      {
        v13 = *(v22 + 8 * v10);
      }
    }

    else if (v23)
    {
      v13 = *(v22 + 2 * v10);
    }

    else
    {
      v13 = *(v22 + v10);
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_47:
  v18[3] = v13;
  return result;
}

unint64_t ___CFBasicHashFindBucket_Double_Indirect@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __CFBasicHashTableSizes[*(a1 + 26)];
  v6 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  if (v6)
  {
    result = v6(a2);
  }

  v8 = result % v5;
  if (v5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  if (result / v5 % v5)
  {
    v10 = result / v5 % v5;
  }

  else
  {
    v10 = v5 - 1;
  }

  v11 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v11 = 40;
  }

  v12 = *(a1 + v11);
  v13 = -1;
  while (1)
  {
    v14 = *(v12 + 8 * v8);
    switch(v14)
    {
      case -1:
        if (v13 == -1)
        {
          v13 = v8;
        }

        goto LABEL_27;
      case 0:
        v19 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v13 == -1)
        {
          v20 = v8;
        }

        else
        {
          v20 = v13;
        }

        *a3 = v20;
        goto LABEL_50;
      case 2814029233:
        v14 = 0;
        break;
    }

    if (v14 == 2780474809)
    {
      v15 = -1;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(a1 + 32)) & 0xF8)) + 8 * ((*(a1 + 32) >> 54) & 0x1FLL));
    if (v16)
    {
      result = v16(v15);
      v15 = result;
    }

    if (v15 == a2)
    {
      break;
    }

    v17 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v17)
    {
      result = v17(v15, a2);
      if (result)
      {
        goto LABEL_37;
      }
    }

LABEL_27:
    if (v5 <= v8 + v10)
    {
      v18 = v5;
    }

    else
    {
      v18 = 0;
    }

    v8 = v8 + v10 - v18;
    if (!--v9)
    {
      v14 = 0;
      v19 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v13;
      goto LABEL_50;
    }
  }

  v15 = a2;
LABEL_37:
  v19 = a3;
  *a3 = v8;
  v21 = *(*(a1 + 40) + 8 * v8);
  if (v21 == 2814029233)
  {
    v21 = 0;
  }

  else if (v21 == 2780474809)
  {
    v21 = -1;
  }

  a3[1] = v15;
  a3[2] = v21;
  v22 = *(a1 + 18);
  if ((v22 & 0x18) != 0)
  {
    v23 = *(a1 + 40 + (v22 & 0x18));
    v24 = (v22 >> 5) & 3;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v14 = *(v23 + 4 * v8);
      }

      else
      {
        v14 = *(v23 + 8 * v8);
      }
    }

    else if (v24)
    {
      v14 = *(v23 + 2 * v8);
    }

    else
    {
      v14 = *(v23 + v8);
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_50:
  v19[3] = v14;
  return result;
}

unint64_t ___CFBasicHashFindBucket_Double@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __CFBasicHashTableSizes[*(a1 + 26)];
  v6 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  if (v6)
  {
    result = v6(a2);
  }

  v8 = result % v5;
  if (v5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  if (result / v5 % v5)
  {
    v10 = result / v5 % v5;
  }

  else
  {
    v10 = v5 - 1;
  }

  v11 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v11 = 40;
  }

  v12 = *(a1 + v11);
  v13 = -1;
  while (1)
  {
    v14 = *(v12 + 8 * v8);
    switch(v14)
    {
      case -1:
        if (v13 == -1)
        {
          v13 = v8;
        }

        goto LABEL_25;
      case 0:
        v18 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v13 == -1)
        {
          v19 = v8;
        }

        else
        {
          v19 = v13;
        }

        *a3 = v19;
        goto LABEL_49;
      case 2814029233:
        v14 = 0;
        break;
    }

    v15 = v14 == 2780474809 ? -1 : v14;
    if (v15 == a2)
    {
      break;
    }

    v16 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v16)
    {
      result = v16(v15, a2);
      if (result)
      {
        goto LABEL_35;
      }
    }

LABEL_25:
    if (v5 <= v8 + v10)
    {
      v17 = v5;
    }

    else
    {
      v17 = 0;
    }

    v8 = v8 + v10 - v17;
    if (!--v9)
    {
      v14 = 0;
      v18 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v13;
      goto LABEL_49;
    }
  }

  v15 = a2;
LABEL_35:
  v20 = *(*(a1 + 40) + 8 * v8);
  v21 = -1;
  if (v20 != 2780474809)
  {
    v21 = *(*(a1 + 40) + 8 * v8);
  }

  if (v20 == 2814029233)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v18 = a3;
  a3[1] = v15;
  a3[2] = v22;
  *a3 = v8;
  v23 = *(a1 + 18);
  if ((v23 & 0x18) != 0)
  {
    v24 = *(a1 + 40 + (v23 & 0x18));
    v25 = (v23 >> 5) & 3;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v14 = *(v24 + 4 * v8);
      }

      else
      {
        v14 = *(v24 + 8 * v8);
      }
    }

    else if (v25)
    {
      v14 = *(v24 + 2 * v8);
    }

    else
    {
      v14 = *(v24 + v8);
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_49:
  v18[3] = v14;
  return result;
}

unint64_t ___CFBasicHashFindBucket_Exponential@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 26);
  v4 = __CFBasicHashTableSizes[v3];
  v5 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  v29 = a2;
  if (v5)
  {
    result = v5(a2);
    a2 = v29;
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (result / v4 % v4)
  {
    v8 = result / v4 % v4;
  }

  else
  {
    v8 = v4 - 1;
  }

  v9 = __CFBasicHashPrimitiveRoots[v3];
  v10 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v10 = 40;
  }

  v11 = *(a1 + v10);
  v12 = result % v4;
  v13 = -1;
  v14 = v9;
  v15 = result % v4;
  while (1)
  {
    v16 = *(v11 + 8 * v15);
    switch(v16)
    {
      case -1:
        if (v13 == -1)
        {
          v13 = v15;
        }

        goto LABEL_25;
      case 0:
        v19 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v13 == -1)
        {
          v20 = v15;
        }

        else
        {
          v20 = v13;
        }

        *a3 = v20;
        goto LABEL_50;
      case 2814029233:
        v16 = 0;
        break;
    }

    v17 = v16 == 2780474809 ? -1 : v16;
    if (v17 == a2)
    {
      break;
    }

    v18 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v18)
    {
      result = v18(v17, v29);
      a2 = v29;
      if (result)
      {
        goto LABEL_36;
      }
    }

LABEL_25:
    v15 = v12 + v14 * v8;
    if (v4 <= v15)
    {
      v15 %= v4;
    }

    v14 *= v9;
    if (v4 <= v14)
    {
      v14 %= v4;
    }

    if (!--v7)
    {
      v16 = 0;
      v19 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v13;
      goto LABEL_50;
    }
  }

  v17 = a2;
LABEL_36:
  v21 = *(*(a1 + 40) + 8 * v15);
  v22 = -1;
  if (v21 != 2780474809)
  {
    v22 = *(*(a1 + 40) + 8 * v15);
  }

  if (v21 == 2814029233)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v19 = a3;
  a3[1] = v17;
  a3[2] = v23;
  *a3 = v15;
  v24 = *(a1 + 18);
  if ((v24 & 0x18) != 0)
  {
    v25 = *(a1 + 40 + (v24 & 0x18));
    v26 = (v24 >> 5) & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v16 = *(v25 + 4 * v15);
      }

      else
      {
        v16 = *(v25 + 8 * v15);
      }
    }

    else if (v26)
    {
      v16 = *(v25 + 2 * v15);
    }

    else
    {
      v16 = *(v25 + v15);
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_50:
  v19[3] = v16;
  return result;
}

uint64_t ___CFBasicHashFindBucket_Double_Indirect_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  v4 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v4)
  {
    a2 = v4(a2);
  }

  result = a2 % v3;
  v6 = a2 / v3 % v3;
  if (v3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  if (!v6)
  {
    v6 = v3 - 1;
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  while (*(v9 + 8 * result))
  {
    if (v3 <= result + v6)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    result = result + v6 - v10;
    if (!--v7)
    {
      return -1;
    }
  }

  return result;
}

uint64_t ___CFBasicHashFindBucket_Double_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  v4 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v4)
  {
    a2 = v4(a2);
  }

  result = a2 % v3;
  v6 = a2 / v3 % v3;
  if (v3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  if (!v6)
  {
    v6 = v3 - 1;
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  while (*(v9 + 8 * result))
  {
    if (v3 <= result + v6)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    result = result + v6 - v10;
    if (!--v7)
    {
      return -1;
    }
  }

  return result;
}

void CFXNotificationRegistrarEnumerate(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  _CFXNotificationRegistrarEnumerateNameTable(a1, &a1[8], 0, a2);
  _CFXNotificationRegistrarEnumerateObjectTable(a1, &a1[12], @"kCFNotificationAnyName", a2);
  _CFXNotificationRegistrarEnumerateNameTable(a1, &a1[16], 1, a2);
  _CFXNotificationRegistrarEnumerateObserverTable(a1, &a1[20]._os_unfair_lock_opaque, @"kCFNotificationAnyName", @"kCFNotificationAnyObject", a2);

  os_unfair_lock_unlock(a1 + 4);
}

void _CFXNotificationRegistrarEnumerateNameTable(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v8 = 0;
    v13 = a2;
    do
    {
      v9 = *(*a2 + 4 * v8);
      if (v9 != -1)
      {
        do
        {
          v10 = *(a1 + 96) + 40 * v9;
          v9 = *(v10 + 4);
          v11 = CFCachedStringCopyString((v10 + 8));
          v12 = (v10 + 24);
          if (a3 == 1)
          {
            _CFXNotificationRegistrarEnumerateObserverTable(a1, v12, v11, @"kCFNotificationAnyObject", a4);
          }

          else
          {
            _CFXNotificationRegistrarEnumerateObjectTable(a1, v12, v11, a4);
          }

          CFRelease(v11);
        }

        while (v9 != 0xFFFFFFFFLL);
        a2 = v13;
        v4 = *(v13 + 8);
      }

      ++v8;
    }

    while (v8 < v4);
  }
}

uint64_t _CFXNotificationRegistrarEnumerateObjectTable(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v8 = result;
    for (i = 0; i < v4; ++i)
    {
      v10 = *(*a2 + 4 * i);
      if (v10 != -1)
      {
        do
        {
          v11 = *(v8 + 120) + 32 * v10;
          v10 = *(v11 + 4);
          result = _CFXNotificationRegistrarEnumerateObserverTable(v8, (v11 + 16), a3, *(v11 + 8), a4);
        }

        while (v10 != -1);
        v4 = *(a2 + 8);
      }
    }
  }

  return result;
}

uint64_t _CFXNotificationRegistrarEnumerateObserverTable(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 != -1)
  {
    v9 = result;
    do
    {
      v10 = *(v9 + 144) + 56 * v5;
      v11 = *(v10 + 4);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *&v16 = *(v10 + 8);
      v17 = *(v10 + 16);
      v13 = *(v10 + 40);
      v12 = *(v10 + 44);
      *&v15 = a3;
      *(&v15 + 1) = a4;
      *(&v16 + 1) = v12;
      *&v18 = v5 | (v13 << 32);
      *(&v18 + 1) = *(v10 + 32);
      result = (*(a5 + 16))(a5, &v15);
      v5 = v11;
    }

    while (v11 != -1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void CFXNotificationRegistrarUpdateDistributedConnections(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __CFXNotificationRegistrarUpdateDistributedConnections_block_invoke;
  v5[3] = &unk_1E6DD1488;
  v5[5] = a1;
  v5[6] = a2;
  v5[4] = a3;
  os_unfair_lock_lock(a1 + 4);
  _CFXNotificationRegistrarEnumerateNameTable(a1, &a1[8], 0, v5);
  _CFXNotificationRegistrarEnumerateObjectTable(a1, &a1[12], @"kCFNotificationAnyName", v5);
  _CFXNotificationRegistrarEnumerateNameTable(a1, &a1[16], 1, v5);
  _CFXNotificationRegistrarEnumerateObserverTable(a1, &a1[20]._os_unfair_lock_opaque, @"kCFNotificationAnyName", @"kCFNotificationAnyObject", v5);
  os_unfair_lock_unlock(a1 + 4);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __CFXNotificationRegistrarUpdateDistributedConnections_block_invoke(uint64_t a1, uint64_t a2)
{
  _CFXNotificationRegisteredObserverSetDistributedConnection(*(a1 + 40), *(a2 + 52), *(a2 + 48), *(a1 + 48));
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

BOOL CFXNotificationRegistrarIsEmpty(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 4);
  v2 = a1[15]._os_unfair_lock_opaque + a1[11]._os_unfair_lock_opaque + a1[19]._os_unfair_lock_opaque + a1[21]._os_unfair_lock_opaque == 0;
  os_unfair_lock_unlock(a1 + 4);
  return v2;
}

uint64_t _CFBundleSearchForLocalizedString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  os_unfair_lock_lock_with_options();
  v8 = *(a1 + 144);
  if (v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___CFBundleSearchForLocalizedString_block_invoke;
    v12[3] = &unk_1E6DD14F8;
    v12[6] = a3;
    v12[7] = a4;
    v12[4] = &v13;
    v12[5] = a2;
    CFDictionaryApply(v8, v12);
  }

  os_unfair_lock_unlock((a1 + 112));
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18325B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CFBundleFlushStringSourceCache(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 168) = 0;
  }

  os_unfair_lock_unlock((a1 + 112));
}

CFMutableDictionaryRef _CFBundleCopyFilteredLocalizedStringsForAllLocalizations(__CFBundle *a1, __CFString *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  CFBundleAllowMixedLocalizations();
  if (!a2 || CFEqual(a2, &stru_1EF068AA8))
  {
    a2 = @"Localizable";
  }

  v6 = CFBundleCopyBundleLocalizations(a1);
  Count = CFArrayGetCount(v6);
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___CFBundleCopyFilteredLocalizedStringsForAllLocalizations_block_invoke;
  v11[3] = &__block_descriptor_64_e13_v24__0r_v8_16l;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = Mutable;
  CFArrayApply(v6, 0, Count, v11);
  CFRelease(v6);
  v9 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFSetRef _CFBundleCopyLocalizationInfoDictionaryKeys()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E6DD1578;
  v2[1] = *off_1E6DD1588;
  result = CFSetCreate(&__kCFAllocatorSystemDefault, v2, 4, &kCFTypeSetCallBacks);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef _CFBundleCopyFilteredLocalizedStringsForAllLocalizationsForURL(const __CFURL *a1, __CFString *a2, uint64_t a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_CFBundleCouldBeBundle(a1))
  {
    v14[0] = xmmword_1E6DD1578;
    v14[1] = *off_1E6DD1588;
    v8 = CFSetCreate(&__kCFAllocatorSystemDefault, v14, 4, &kCFTypeSetCallBacks);
    UniqueWithOptions = _CFBundleCreateUniqueWithOptions(&__kCFAllocatorSystemDefault, a1, v8, a4);
    CFRelease(v8);
    if (UniqueWithOptions)
    {
      v10 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizations(UniqueWithOptions, a2, a3);
      CFRelease(UniqueWithOptions);
    }

    else
    {
      v10 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v13 = *MEMORY[0x1E69E9840];
    return v10;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

uint64_t (**__CFStringEncodingGetCyrillicConverterDefinition(int a1))()
{
  if (a1 > 1050)
  {
    switch(a1)
    {
      case 1051:
        return __CFConverterDOSRussian;
      case 2562:
        return __CFConverterKOI8R;
      case 1282:
        return __CFConverterWinCyrillic;
    }

    return 0;
  }

  result = __CFConverterMacCyrillic;
  if (a1 != 7 && a1 != 152)
  {
    if (a1 == 517)
    {
      return __CFConverterISOCyrillic;
    }

    return 0;
  }

  return result;
}

uint64_t __CFToMacCyrillic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8806 < 0xFFFFDE3A)
  {
    return 0;
  }

  v5 = &maccyrillic_from_uni;
  v6 = &unk_18344756C;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromMacCyrillic(uint64_t a1, __int16 a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = maccyrillic_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToMacCyrillicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFPrecomposeCyrillicCharacter(a2);
  if (v9 > 0x7F)
  {
    if ((v9 - 8806) >= 0xDE3Au)
    {
      v11 = &maccyrillic_from_uni;
      v12 = &unk_18344756C;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

BOOL __CFIsValidCombiningCharacterForCyrillic(int a1)
{
  if ((a1 - 768) > 0xE)
  {
    return a1 == 824;
  }

  v1 = 1;
  if (((1 << ~a1) & 0xCA800000) == 0)
  {
    return a1 == 824;
  }

  return v1;
}

uint64_t __CFPrecomposeCyrillicCharacter(unsigned __int16 *a1)
{
  v1 = a1[1] | (*a1 << 16);
  if (v1 - 82379529 < 0xFB54002F)
  {
    return 65533;
  }

  v2 = &__CFCyrillicPrecompMap;
  v3 = &unk_183447810;
  while (1)
  {
    v4 = &v2[8 * ((v3 - v2) >> 4)];
    if (*v4 <= v1)
    {
      break;
    }

    v3 = v4 - 8;
LABEL_7:
    if (v2 > v3)
    {
      return 65533;
    }
  }

  if (*v4 < v1)
  {
    v2 = v4 + 8;
    goto LABEL_7;
  }

  return *(v4 + 2);
}

uint64_t __CFToWinCyrillic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 < 0x80)
  {
LABEL_4:
    *a3 = a2;
    return 1;
  }

  else
  {
    if ((a2 - 1040) <= 0x3Fu)
    {
      LOBYTE(a2) = a2 - 80;
      goto LABEL_4;
    }

    if ((a2 - 8483) >= 0xDF7Du)
    {
      v4 = &cp1251_from_uni;
      v5 = &unk_183447910;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_4;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }
}

BOOL __CFFromWinCyrillic(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    if (a2 < 0xC0)
    {
      a2 = cp1251_to_uni[a2 & 0x7F];
    }

    else
    {
      a2 += 848;
    }
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWinCyrillicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v9 = __CFPrecomposeCyrillicCharacter(a2);
  v10 = __CFToWinCyrillic(v9, v9, &v13);
  result = 0;
  if (v10 && v13)
  {
    if (a5)
    {
      *a4 = v13;
    }

    *a6 = 1;
    result = 2;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToISOCyrillic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 < 0xA1)
  {
    goto LABEL_2;
  }

  switch(a2)
  {
    case 0xA7u:
      LOBYTE(a2) = -3;
      goto LABEL_2;
    case 0x2116u:
      LOBYTE(a2) = -16;
      goto LABEL_2;
    case 0xADu:
LABEL_2:
      *a3 = a2;
      return 1;
  }

  if (a2 - 1025 > 0x5E)
  {
    return 0;
  }

  result = 0;
  if (a2 != 1037 && a2 != 1104 && a2 != 1117)
  {
    LOBYTE(a2) = a2 - 96;
    goto LABEL_2;
  }

  return result;
}

uint64_t __CFFromISOCyrillic(uint64_t a1, unsigned int a2, __int16 *a3)
{
  v3 = a2 + 864;
  if (a2 == 253)
  {
    v3 = 167;
  }

  if (a2 == 240)
  {
    v4 = 8470;
  }

  else
  {
    v4 = v3;
  }

  if (a2 == 173)
  {
    v4 = 173;
  }

  if (a2 < 0xA1)
  {
    v4 = a2;
  }

  *a3 = v4;
  return 1;
}

uint64_t __CFToISOCyrillicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v9 = __CFPrecomposeCyrillicCharacter(a2);
  v10 = __CFToISOCyrillic(v9, v9, &v13);
  result = 0;
  if (v10 && v13)
  {
    if (a5)
    {
      *a4 = v13;
    }

    *a6 = 1;
    result = 2;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToKOI8R(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &koi8r_from_uni;
  v6 = &unk_183447B90;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromKOI8R(uint64_t a1, __int16 a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = koi8r_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToDOSRussian(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSRussian_from_uni;
  v6 = &unk_183447E90;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSRussian(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSRussian_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSRussianPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFPrecomposeCyrillicCharacter(a2);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSRussian_from_uni;
      v12 = &unk_183447E90;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

void sub_183260FCC(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

objc_class *_CFStringCreateWithWidthContexts(uint64_t a1)
{
  result = __NSVariableWidthStringClass;
  if (__NSVariableWidthStringClass || (result = __CFLookUpClass("__NSVariableWidthString"), (__NSVariableWidthStringClass = result) != 0))
  {
    v3 = [result alloc];

    return [v3 initWithWidthContexts:a1];
  }

  return result;
}

__CFString *_CFStringFindAffixRuleFormat(const void *a1, CFStringRef theString)
{
  v19 = *MEMORY[0x1E69E9840];
  if (CFStringGetLength(theString) < 2)
  {
    goto LABEL_2;
  }

  Length = CFStringGetLength(theString);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, Length - 1);
  if (CFEqual(a1, @"fi"))
  {
    v7 = CFCharacterSetCreateWithCharactersInString(0, @"aeiouyåäö");
    v8 = CFCharacterSetCreateWithCharactersInString(0, @"bcdfghjklmnpqrstvwxzšž");
    if (CFCharacterSetIsCharacterMember(v7, CharacterAtIndex))
    {
      v4 = @"vowel";
LABEL_13:
      CFRelease(v7);
      CFRelease(v8);
      goto LABEL_14;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(v8, CharacterAtIndex);
    v10 = @"consonant";
    v11 = @"other";
    goto LABEL_10;
  }

  if (CFEqual(a1, @"ru"))
  {
    v7 = CFCharacterSetCreateWithCharactersInString(0, @"ое");
    v8 = CFCharacterSetCreateWithCharactersInString(0, @"аяую");
    if (((CharacterAtIndex - 1104) >> 6) < 0x3FFu)
    {
      v4 = @"other";
      goto LABEL_13;
    }

    v4 = @"other";
    if (CharacterAtIndex == 1068 || CharacterAtIndex == 1100)
    {
      goto LABEL_13;
    }

    if (CFCharacterSetIsCharacterMember(v7, CharacterAtIndex))
    {
      v4 = @"neuter";
      goto LABEL_13;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(v8, CharacterAtIndex);
    v10 = @"feminine";
    v11 = @"masculine";
LABEL_10:
    if (IsCharacterMember)
    {
      v4 = v10;
    }

    else
    {
      v4 = v11;
    }

    goto LABEL_13;
  }

  if (!CFEqual(a1, @"ko"))
  {
LABEL_2:
    v4 = 0;
    goto LABEL_14;
  }

  v14 = CFUniCharDecomposeCharacter(CharacterAtIndex, v18, 10);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = LOWORD(v18[v14 - 1]);
    if ((v15 - 4449) >= 0x47)
    {
      v17 = (v15 - 4520) >= 0x58 && (v15 - 4352) >= 0x5F;
      v16 = @"consonant";
      if (v17)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = @"vowel";
    }
  }

  if (v16)
  {
    v4 = v16;
  }

  else
  {
    v4 = @"other";
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _CFStringCreateWithMarkdownAndConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__NSGetCFLocalizedAttributedStringClass_onceToken != -1)
  {
    _CFStringCreateWithMarkdownAndConfiguration_cold_1();
  }

  v8 = __NSCFLocalizedAttributedStringClass;

  return [v8 copyStringWithMarkdown:a1 formatConfiguration:a2 bundle:a3 tableURL:a4];
}

xpc_object_t _CFXPCCreateXPCObjectFromOutOfRangeCFTimeInterval(double a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = xpc_double_create(a1);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  memset(uu, 0, sizeof(uu));
  if (uuid_parse("C119A421-DF31-48EF-843D-21B4030D1621", uu) || (v7 = xpc_uuid_create(uu)) == 0)
  {
    v3 = v2;
LABEL_4:
    xpc_release(v3);
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  keys[0] = "com.apple.CFDate.magic";
  keys[1] = "com.apple.CFDate.ti";
  values[0] = v7;
  values[1] = v2;
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  xpc_release(v2);
  xpc_release(v8);
  if (v4 && xpc_dictionary_get_count(v4) != 2)
  {
    v3 = v4;
    goto LABEL_4;
  }

LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

CFFileSecurityRef CFFileSecurityCreate(CFAllocatorRef allocator)
{
  result = filesec_init();
  if (result)
  {
    v2 = result;
    result = [[NSFileSecurity alloc] initWithFileSec:result];
    if (!result)
    {
      filesec_free(v2);
      return 0;
    }
  }

  return result;
}

Boolean CFFileSecurityCopyOwnerUUID(CFFileSecurityRef fileSec, CFUUIDRef *ownerUUID)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v8.byte0 = 0;
  *&v8.byte8 = 0;
  LODWORD(v4) = [(__CFFileSecurity *)fileSec getOwnerUUID:&v8];
  if (v4)
  {
    v5 = CFGetAllocator(fileSec);
    v4 = CFUUIDCreateFromUUIDBytes(v5, v8);
    if (v4)
    {
      *ownerUUID = v4;
      LOBYTE(v4) = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

Boolean CFFileSecuritySetOwnerUUID(CFFileSecurityRef fileSec, CFUUIDRef ownerUUID)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = CFUUIDGetUUIDBytes(ownerUUID);
  result = [(__CFFileSecurity *)fileSec setOwnerUUID:&v5];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFFileSecurityCopyGroupUUID(CFFileSecurityRef fileSec, CFUUIDRef *groupUUID)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v8.byte0 = 0;
  *&v8.byte8 = 0;
  LODWORD(v4) = [(__CFFileSecurity *)fileSec getGroupUUID:&v8];
  if (v4)
  {
    v5 = CFGetAllocator(fileSec);
    v4 = CFUUIDCreateFromUUIDBytes(v5, v8);
    if (v4)
    {
      *groupUUID = v4;
      LOBYTE(v4) = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

Boolean CFFileSecuritySetGroupUUID(CFFileSecurityRef fileSec, CFUUIDRef groupUUID)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = CFUUIDGetUUIDBytes(groupUUID);
  result = [(__CFFileSecurity *)fileSec setGroupUUID:&v5];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *CFBurstTrieCreateFromMapBytes(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result == 14531089 || v2 == -889275714)
    {
      result = malloc_type_malloc(0x830uLL, 0x1010040873DE71CuLL);
      *(result + 257) = v1;
      result[516] = v1[3];
LABEL_10:
      result[518] = v1[4];
      result[519] = v1[2];
      atomic_store(1u, result + 521);
      *(result + 2088) = 0;
      return result;
    }

    if (v2 == -1161889074)
    {
      result = malloc_type_malloc(0x830uLL, 0x1010040873DE71CuLL);
      *(result + 257) = v1;
      result[516] = v1[3];
      result[517] = v1[1];
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t CFBurstTrieAddWithWeight(unint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, int a5, int a6)
{
  v6 = 0;
  v20 = *MEMORY[0x1E69E9840];
  if (a6 && !*(a1 + 2056) && a4 <= 1023)
  {
    usedBufLen = 0;
    if (a4 < 86)
    {
      v13 = 342;
      v14 = v19;
    }

    else
    {
      v13 = 4 * a4;
      v14 = malloc_type_malloc((4 * a4) | 1, 0x100004077774924uLL);
    }

    v21.location = a3;
    v21.length = a4;
    CFStringGetBytes(a2, v21, 0x8000100u, 0x2Du, 0, v14, v13, &usedBufLen);
    v15 = usedBufLen;
    v14[usedBufLen] = 0;
    v6 = CFBurstTrieAddUTF8StringWithWeight(a1, v14, v15, a5, a6);
    if (v19 != v14)
    {
      free(v14);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CFBurstTrieAddCharactersWithWeight(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v16 = *MEMORY[0x1E69E9840];
  if (a5 && a3 <= 1023 && !*(a1 + 2056))
  {
    v11 = v15;
    if (a3 >= 86)
    {
      v11 = malloc_type_malloc((4 * a3) | 1, 0x100004077774924uLL);
    }

    v12 = burstTrieConvertCharactersToUTF8(a2, a3, v11);
    v11[v12] = 0;
    v5 = CFBurstTrieAddUTF8StringWithWeight(a1, v11, v12, a4, a5);
    if (v15 != v11)
    {
      free(v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CFBurstTrieFind(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, void *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  result = CFBurstTrieContains(a1, a2, a3, a4, &v8);
  if (result)
  {
    if (a5)
    {
      *a5 = v8;
    }

    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFBurstTrieFindCharacters(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  result = CFBurstTrieContainsCharacters(a1, a2, a3, &v7);
  if (result)
  {
    if (a4)
    {
      *a4 = v7;
    }

    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFBurstTrieFindUTF8String(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  result = CFBurstTrieContainsUTF8String(a1, a2, a3, &v7);
  if (result)
  {
    if (a4)
    {
      *a4 = v7;
    }

    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t burstTrieMappedFind(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, char a6)
{
  if (a4)
  {
    v6 = 1 - a4;
    v7 = (a3 + 1);
    while (1)
    {
      v8 = *(a1 + 4 * *(v7 - 1));
      if ((v8 & 3) != 1)
      {
        break;
      }

      a1 = (v8 & 0xFFFFFFFC) + a2;
      ++v6;
      ++v7;
      if (v6 == 1)
      {
        goto LABEL_5;
      }
    }

    if ((v8 & 3) != 0)
    {
      if ((v8 & 3) == 2)
      {
        return burstTrieMappedPageFind(((v8 & 0xFFFFFFFC) + a2), v7, -v6, a5, a6);
      }

      else
      {
        return burstTrieCompactTrieMappedFind(((v8 & 0xFFFFFFFC) + a2), a2, v7, -v6, a5, a6);
      }
    }

    return 0;
  }

LABEL_5:
  if (!*(a1 + 1024))
  {
    return 0;
  }

  if (a5)
  {
    *a5 = *(a1 + 1028);
  }

  return 1;
}

uint64_t CFBurstTrieCursorGetPayload(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 17) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v2;
  }

  return 1;
}

uint64_t CFBurstTrieSerialize(uint64_t a1, CFStringRef theString, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2056) || !CFStringGetCString(theString, buffer, 1024, 0x8000100u) || (v8 = open(buffer, 1538, 384), (v8 & 0x80000000) != 0))
  {
    v3 = 0;
  }

  else
  {
    v9 = v8;
    v3 = CFBurstTrieSerializeWithFileDescriptor(a1, v8, a3);
    close(v9);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CFBurstTrieSerializeWithFileDescriptor(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0 && !*(a1 + 2056))
  {
    v7 = lseek(a2, 0, 2);
    *(a1 + 2072) = a3;
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    __buf = 14531089;
    v13 = *(a1 + 2076);
    v14 = 0;
    v15 = a3;
    v16 = 0;
    lseek(a2, v7, 0);
    write(a2, &__buf, 0x94uLL);
    serializeCFBurstTrieLists(a1, a1, v7, a2);
    v3 = 1;
    v11 = lseek(a2, 0, 1) - v7;
    pwrite(a2, &v11, 4uLL, v7 + 4);
    serializeCFBurstTrieLevels(a1, a1, &v11, v7, 0, 1, a2);
    pwrite(a2, &v11, 4uLL, v7 + 12);
    v8 = lseek(a2, 0, 2);
    *(a1 + 2064) = v8 - v7;
    *(a1 + 2056) = mmap(0, (v8 - v7), 1, 1, a2, v7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

size_t CFBurstTrieTraverse(size_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(result + 2056);
  if (!v1 || ((v2 = *v1, v2 != 14531089) ? (v3 = v2 == -889275714) : (v3 = 1), v3))
  {
    result = traverseCFBurstTrieWithCursor(result, "");
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t foundKey(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v1 = a1[1];
      if (v1)
      {
        v1();
      }
    }
  }

  return 0;
}

char *CFBurstTrieCursorCreateByCopy(char *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(0x21uLL, 1uLL, 0x1020040FF696577uLL);
    v2 = *(v1 + 17);
    if (v2 == 1)
    {
      *result = *v1;
      result[16] = v1[16];
      v3 = *(v1 + 3);
      *(result + 2) = *(v1 + 2);
      *(result + 3) = v3;
    }

    else if (!v2)
    {
      CFBurstTrieCursorCreateByCopy_cold_1();
    }

    *(result + 17) = v2;
    *(result + 25) = *(v1 + 25);
  }

  return result;
}

BOOL CFBurstTrieCursorIsEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25) == *(a2 + 25) && (*(a1 + 17) == 1 ? (v2 = *(a2 + 17) == 1) : (v2 = 0), v2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 16) == *(a2 + 16) && *a1 == *a2))
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

void CFBurstTrieTraverseFromCursor(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = malloc_type_calloc(1uLL, 0x1000uLL, 0x100004077774924uLL);
    v13 = 0;
    if (*(a1 + 17) == 1)
    {
      v9 = *a1;
      v12 = *(a1 + 16);
      v7 = *(a1 + 3);
      v10 = *(a1 + 2);
      v11 = v7;
      traverseFromMapCursor(*(a1 + 25), &v9, v6, 0x1000u, 0, &v13, a2, a3);
    }

    free(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t traverseFromMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v9 = a5;
  v13 = result;
  v14 = *a2;
  v15 = *a2 & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      v23 = (*(result + 2056) + (v14 & 0xFFFFFFFC));
      v24 = v23[4].u32[0];
      if (v24)
      {
        result = a8(a7, a3, a5, v24, a6);
        if (v9 >= a4 || *a6)
        {
          return result;
        }
      }

      else if (a5 >= a4)
      {
        return result;
      }

      v32 = 0;
      v33 = a4 - 1;
      while (1)
      {
        *(a3 + v9) = v32;
        v34 = v23[v32 >> 6];
        if ((*&v34 & (1 << v32)) != 0)
        {
          if (v32 >= 0x40)
          {
            v35 = 0;
            v36 = v32 >> 6;
            v37 = v23;
            do
            {
              v38 = *v37++;
              v39 = vcnt_s8(v38);
              v39.i16[0] = vaddlv_u8(v39);
              v35 += v39.i32[0];
              --v36;
            }

            while (v36);
          }

          else
          {
            v35 = 0;
          }

          v40 = vcnt_s8((*&v34 & ((1 << v32) - 1)));
          v40.i16[0] = vaddlv_u8(v40);
          *a2 = v23[4].i32[v35 + v40.i32[0] + 1];
          *(a2 + 4) = 0;
          *(a2 + 9) = 0;
          result = traverseFromMapCursor(v13, a2, a3, v33, v9 + 1, a6, a7, a8);
          if (*a6 || v32 >= 0xFF)
          {
            return result;
          }
        }

        else if (v32 > 0xFE)
        {
          return result;
        }

        ++v32;
      }
    }

    v16 = (*(result + 2056) + (v14 & 0xFFFFFFFC));
    v17 = *(result + 2072);
    if ((v17 & 8) != 0)
    {
      v25 = *v16;
      v26 = *(a2 + 4);
      if (*(a2 + 16) == 1)
      {
        v27 = v16 + v26 + 4;
        v28 = *(v16 + v26 + 5);
        v29 = *(a2 + 8);
        v30 = (v28 - v29);
        if (v28 - v29 >= 0 && v30 <= a4)
        {
          memcpy((a3 + a5), &v27[v29 + 7], v30);
          result = a8(a7, a3, v30 + v9, *(v16 + v26 + 7), a6);
          if (*a6)
          {
            return result;
          }

          LODWORD(v29) = *(a2 + 8);
          v28 = *(v16 + v26 + 5);
        }

        v31 = v29 + *v27;
        LODWORD(v26) = v26 + v28 + 7;
      }

      else
      {
        v31 = 0;
      }

      v41 = v25 - 4;
      if (v26 < v41)
      {
        v42 = 0;
        do
        {
          v43 = v16 + v26 + 4;
          v44 = *v43;
          if (v31 > v44)
          {
            break;
          }

          v45 = *(v43 + 1);
          if (*(v43 + 3))
          {
            v46 = v45 > a4;
          }

          else
          {
            v46 = 1;
          }

          if (!v46)
          {
            if (v42)
            {
              v47 = *v42 - v44 + *(v42 + 1);
              if (v47 > v9)
              {
                v47 = 0;
              }

              v9 -= v47;
            }

            memcpy((a3 + v9), v43 + 7, v45);
            result = a8(a7, a3, v9 + *(v43 + 1), *(v43 + 3), a6);
            if (*a6)
            {
              return result;
            }

            LODWORD(v45) = *(v43 + 1);
            v9 += v45;
          }

          LODWORD(v26) = v26 + v45 + 7;
          v42 = v43;
        }

        while (v26 < v41);
      }
    }

    else
    {
      if ((v17 & 0x10) == 0)
      {
        return result;
      }

      v18 = *v16;
      v19 = *(a2 + 4);
      if (*(a2 + 16) == 1)
      {
        v21 = (v16 + v19 + 4);
        v20 = *v21;
        __n = *(a2 + 8);
        v22 = (v20 - __n);
        if (v20 - __n >= 0 && v22 <= a4)
        {
          memcpy((a3 + a5), v21 + __n + 6, v22);
          result = a8(a7, a3, v22 + v9, *(v16 + v19 + 6), a6);
          if (*a6)
          {
            return result;
          }

          LODWORD(__n) = *(a2 + 8);
          v20 = *v21;
        }

        __s2 = v16 + v19 + 10;
        LODWORD(v19) = v19 + v20 + 6;
      }

      else
      {
        __s2 = 0;
        LODWORD(__n) = 0;
      }

      v48 = v18 - 4;
      if (v19 < v48)
      {
        v55 = v9 - __n;
        __dst = (a3 + v9);
        do
        {
          v49 = (v16 + v19 + 4);
          v50 = *v49;
          if (v50 < __n)
          {
            break;
          }

          result = memcmp(v49 + 3, __s2, __n);
          if (result > 0)
          {
            break;
          }

          v51 = *(v49 + 1);
          if (v50 <= a4 && v51 != 0)
          {
            if (v50)
            {
              memcpy(__dst, v49 + __n + 6, v50 - __n);
              v53 = *v49;
              v51 = *(v49 + 1);
            }

            else
            {
              v53 = 0;
            }

            result = a8(a7, a3, (v55 + v53), v51, a6);
            if (*a6)
            {
              return result;
            }

            v50 = *v49;
          }

          LODWORD(v19) = v19 + v50 + 6;
        }

        while (v19 < v48);
      }
    }
  }

  else if (v15 || v14 == *(*(result + 2056) + 4))
  {

    return traverseFromMapCursorMappedLevel(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t traverseCFBurstTrieMappedLevel(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = result;
  v11 = 0;
  v12 = a3 + 9;
  v13 = a3[6];
  *(a3 + v13 + 36) = 0;
  v14 = v13 + 1;
  while (1)
  {
    v15 = *(a2 + 4 * v11);
    a3[6] = v14;
    *(v12 + v13) = v11;
    if ((v15 & 3u) > 1)
    {
      break;
    }

    if ((v15 & 3) != 0)
    {
      v16 = *(v10 + 2056) + (v15 & 0xFFFFFFFC);
      v17 = v13 + 1;
      if (*(v16 + 1024))
      {
        v18 = a3[5] == v14;
        result = a6(a5, v12);
        if (result)
        {
          return result;
        }

        v17 = a3[6];
      }

      if (v17 == a3[5] && (a4 & 1) != 0)
      {
        return result;
      }

      result = traverseCFBurstTrieMappedLevel(v10, v16, a3, a4, a5, a6);
    }

LABEL_18:
    if (++v11 == 256)
    {
      return result;
    }
  }

  if ((v15 & 3) == 2)
  {
    a3[4] = v15;
    *(v12 + v14) = 0;
    result = findCFBurstTrieMappedPage(v10, a3, a5, a6);
    goto LABEL_18;
  }

  v19 = *(v10 + 2056) + (v15 & 0xFFFFFFFC);
  v20 = v13 + 1;
  if (*(v19 + 32))
  {
    v21 = a3[5] == v14;
    result = a6(a5, v12);
    if (result)
    {
      return result;
    }

    v20 = a3[6];
  }

  if (v20 != a3[5] || (a4 & 1) == 0)
  {
    result = traverseCFBurstTrieCompactMappedLevel(v10, v19, a3, a4, a5, a6);
    goto LABEL_18;
  }

  return result;
}

uint64_t traverseCFBurstTrieCompactMappedLevel(uint64_t result, int8x8_t *a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = result;
  v10 = 0;
  v11 = a3 + 9;
  v12 = a3[6];
  *(a3 + v12 + 36) = 0;
  v13 = &a2[4] + 4;
  v14 = v12 + 1;
  while (1)
  {
    if (v10 >> 6 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10 >> 6;
    }

    v16 = a2[v10 >> 6];
    a3[6] = v12;
    if ((*&v16 & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    if (v10 >= 0x40)
    {
      v17 = 0;
      v18 = a2;
      do
      {
        v19 = *v18++;
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        v17 += v20.i32[0];
        --v15;
      }

      while (v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = vcnt_s8((*&v16 & ((1 << v10) - 1)));
    v21.i16[0] = vaddlv_u8(v21);
    v22 = *&v13[4 * (v17 + v21.i32[0])];
    a3[6] = v14;
    *(v11 + v12) = v10;
    if ((v22 & 3u) <= 1)
    {
      if ((v22 & 3) != 0)
      {
        result = traverseCFBurstTrieMappedLevel(v9, *(v9 + 2056) + (v22 & 0xFFFFFFFC), a3, a4, a5, a6);
      }

      goto LABEL_21;
    }

    if ((v22 & 3) != 2)
    {
      break;
    }

    a3[4] = v22;
    *(v11 + v14) = 0;
    result = findCFBurstTrieMappedPage(v9, a3, a5, a6);
LABEL_21:
    if (++v10 == 256)
    {
      return result;
    }
  }

  v23 = *(v9 + 2056) + (v22 & 0xFFFFFFFC);
  v24 = v12 + 1;
  if (*(v23 + 32))
  {
    v25 = a3[5] == v14;
    result = a6(a5, v11);
    if (result)
    {
      return result;
    }

    v24 = a3[6];
  }

  if (v24 != a3[5] || (a4 & 1) == 0)
  {
    result = traverseCFBurstTrieCompactMappedLevel(v9, v23, a3, a4, a5, a6);
    goto LABEL_21;
  }

  return result;
}

uint64_t traverseCFBurstTrieLevel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = result;
  v10 = 0;
  v11 = a2 + 40;
  v12 = *(a2 + 24);
  *(a2 + 40 + v12) = 0;
  v13 = v12 + 1;
  while (1)
  {
    v14 = *(v9 + 8 * v10);
    *(a2 + 24) = v13;
    *(v11 + v12) = v10;
    if ((v14 & 3) == 2)
    {
      *(a2 + 16) = v14;
      *(v11 + v13) = 0;
      result = findCFBurstTrieList(a2, a4, a5);
      goto LABEL_11;
    }

    if ((v14 & 3) == 1)
    {
      break;
    }

LABEL_11:
    if (++v10 == 256)
    {
      return result;
    }
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 2052);
  v17 = v12 + 1;
  if (v16)
  {
    v18 = *(a2 + 28) == v13;
    result = a5(a4, v11);
    if (result)
    {
      return result;
    }

    v17 = *(a2 + 24);
  }

  if (v17 != *(a2 + 28) || (a3 & 1) == 0)
  {
    result = traverseCFBurstTrieLevel(v15, a2, a3, a4, a5);
    goto LABEL_11;
  }

  return result;
}

uint64_t traverseFromMapCursorMappedLevel(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v11 = a5;
  v15 = result;
  v16 = (*a2 & 0xFFFFFFFC) + *(result + 2056);
  v17 = *(v16 + 1024);
  if (v17)
  {
    result = a8(a7, a3, a5, v17, a6);
    if (v11 >= a4 || *a6)
    {
      return result;
    }
  }

  else if (a5 >= a4)
  {
    return result;
  }

  v18 = 0;
  do
  {
    *(a3 + v11) = v18;
    *a2 = *(v16 + 4 * v18);
    if (v18)
    {
      v19 = v11 + 1;
    }

    else
    {
      v19 = v11;
    }

    *(a2 + 4) = 0;
    *(a2 + 9) = 0;
    result = traverseFromMapCursor(v15, a2, a3, a4 - (v18 != 0), v19, a6, a7, a8);
    if (*a6)
    {
      break;
    }
  }

  while (v18++ != 255);
  return result;
}

uint64_t burstTrieCompactTrieMappedFind(int8x8_t *a1, uint64_t a2, char *a3, int a4, _DWORD *a5, char a6)
{
  if (a4)
  {
    do
    {
      v6 = *a3;
      v7 = v6 >> 6;
      v8 = a1[v6 >> 6];
      v9 = 1 << v6;
      if (((1 << v6) & *&v8) == 0)
      {
        return 0;
      }

      if (v6 >= 0x40)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          v12 = *v11++;
          v13 = vcnt_s8(v12);
          v13.i16[0] = vaddlv_u8(v13);
          v10 += v13.i32[0];
          --v7;
        }

        while (v7);
      }

      else
      {
        v10 = 0;
      }

      v14 = vcnt_s8(((v9 - 1) & *&v8));
      v14.i16[0] = vaddlv_u8(v14);
      v15 = a1[5].i32[v10 + v14.i32[0]];
      if ((v15 & 3) != 3)
      {
        if ((v15 & 3) == 0)
        {
          return 0;
        }

        if ((v15 & 3) == 1)
        {
          return burstTrieMappedFind((v15 & 0xFFFFFFFC) + a2, a2, a3 + 1, (a4 - 1));
        }

        else
        {
          return burstTrieMappedPageFind(((v15 & 0xFFFFFFFC) + a2), a3 + 1, (a4 - 1), a5, a6);
        }
      }

      a1 = ((v15 & 0xFFFFFFFC) + a2);
      ++a3;
    }

    while (--a4);
  }

  if (!a1[4].i32[0])
  {
    return 0;
  }

  if (a5)
  {
    *a5 = a1[4].i32[1];
  }

  return 1;
}

uint64_t burstTrieMappedPageFind(unsigned int *a1, char *__s2, size_t __n, _DWORD *a4, char a5)
{
  v6 = __n;
  v23 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (a5)
  {
    if (v8)
    {
      v9 = 0;
      v10 = a1 + 1;
      while (1)
      {
        v11 = v10 + v9;
        v12 = *v11;
        v13 = (*(v11 + 1) + v12);
        if (v13 == v6 && !memcmp(v22, __s2, *v11) && !memcmp(v11 + 7, &__s2[v12], v6 - v12))
        {
          break;
        }

        if ((v12 ^ 0xFF) >= v6 - v12)
        {
          v14 = v6 - v12;
        }

        else
        {
          v14 = v12 ^ 0xFF;
        }

        memcpy(&v22[v12], v11 + 7, v14);
        v9 = v9 - v12 + v13 + 7;
        if (v9 >= v8)
        {
          goto LABEL_17;
        }
      }

      if (!a4)
      {
        goto LABEL_24;
      }

      v21 = *(v11 + 3);
LABEL_23:
      *a4 = v21;
LABEL_24:
      result = 1;
      goto LABEL_18;
    }
  }

  else if (v8)
  {
    v15 = 0;
    v16 = a1 + 1;
    while (1)
    {
      v17 = (v16 + v15);
      v18 = *v17;
      if (v18 == v6 && !memcmp(v17 + 3, __s2, v6))
      {
        break;
      }

      v15 += v18 + 6;
      if (v15 >= v8)
      {
        goto LABEL_17;
      }
    }

    if (!a4)
    {
      goto LABEL_24;
    }

    v21 = *(v17 + 1);
    goto LABEL_23;
  }

LABEL_17:
  result = 0;
LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void serializeCFBurstTrieLists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 256; ++i)
  {
    v9 = *(a2 + 8 * i);
    if ((v9 & 3) == 2)
    {
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      v11 = lseek(a4, 0, 1);
      serializeCFBurstTrieList(a1, v10);
      do
      {
        v12 = *v10;
        free(v10);
        v10 = v12;
      }

      while (v12);
      *(a2 + 8 * i) = (v11 - a3) | 2;
    }

    else if ((v9 & 3) == 1)
    {
      serializeCFBurstTrieLists(a1, v9 & 0xFFFFFFFFFFFFFFFCLL, a3, a4);
    }
  }
}

uint64_t serializeCFBurstTrieLevels(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v13 = 0;
  v43 = *MEMORY[0x1E69E9840];
  v14 = 0uLL;
  do
  {
    v14 = vsubq_s32(v14, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a2[v13]), vceqzq_s64(*&a2[v13 + 4]))));
    v13 += 8;
  }

  while (v13 != 512);
  v15 = vaddvq_s32(v14);
  v16 = *a3;
  if ((*(a1 + 2072) & 4) == 0 || v15 > 0xC7)
  {
    a6 = 1;
  }

  v38 = a6;
  v39 = v16;
  if (a6)
  {
    v19 = 0;
    memset(&v42[8], 0, 480);
    *a3 = v16 + 1028;
    memset(v42, 0, 32);
    do
    {
      v20 = *&a2[2 * v19];
      if ((v20 & 3) == 1)
      {
        v21 = *a3;
        if (serializeCFBurstTrieLevels(a1, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, 1, 0, a7))
        {
          v22 = v21 | 1;
        }

        else
        {
          v22 = v21 | 3;
        }

        v42[v19] = v22;
      }

      else
      {
        v42[v19] = v20;
      }

      ++v19;
    }

    while (v19 != 256);
    v42[256] = a2[513];
    pwrite(a7, v42, 0x404uLL, v39 + a4);
    if (a5)
    {
LABEL_19:
      free(a2);
    }
  }

  else
  {
    v40 = a4;
    v41 = a7;
    v36 = a5;
    v37 = v15;
    v25 = 4 * v15 + 36;
    MEMORY[0x1EEE9AC00](a1, a2);
    v27 = (&v35 - v26);
    bzero(&v35 - v26, v25);
    bzero(v27, v25);
    v28 = v16;
    v29 = 0;
    v30 = 0;
    v35 = v25;
    *a3 = v28 + v25;
    v31 = &v27[2].i8[4];
    do
    {
      v32 = *&a2[2 * v29];
      if (v32)
      {
        v27->i64[v29 >> 6] |= 1 << v29;
        if ((v32 & 3) == 1)
        {
          v33 = *a3;
          if (serializeCFBurstTrieLevels(a1, v32 & 0xFFFFFFFFFFFFFFFCLL, a3, v40, 1, 0, v41))
          {
            v34 = v33 | 1;
          }

          else
          {
            v34 = v33 | 3;
          }

          *&v31[4 * v30] = v34;
        }

        else
        {
          *&v31[4 * v30] = v32;
        }

        ++v30;
      }

      ++v29;
    }

    while (v29 != 256);
    v27[2].i32[0] = a2[513];
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v27)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v27[1])))))) != v37)
    {
      serializeCFBurstTrieLevels_cold_1();
    }

    pwrite(v41, v27, v35, v39 + v40);
    if (v36)
    {
      goto LABEL_19;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v38;
}

void serializeCFBurstTrieList(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v28[2048] = *MEMORY[0x1E69E9840];
  v8 = *(v2 + 2080);
  v9 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
  for (i = 0; v6; ++i)
  {
    if (v8 <= i)
    {
      v9 = __CFSafelyReallocateTyped(v9, 16 * v8, 0x2004093837F09, 0);
      v8 *= 2;
    }

    v9[i] = v6;
    v6 = *v6;
  }

  if (v8 >= 0x10)
  {
    v11 = malloc_type_malloc(1031 * v8 + 4, 0x100004077774924uLL);
  }

  else
  {
    v11 = v28;
  }

  v12 = *(v7 + 2072);
  if ((v12 & 8) != 0)
  {
    v20 = i;
    qsort(v9, i, 8uLL, nodeStringCompare);
    if (i)
    {
      v21 = 0;
      v22 = 0;
      v15 = 0;
      v16 = 10;
      do
      {
        v23 = v22;
        v22 = v9[v21];
        v24 = 0;
        if (v23)
        {
          v25 = *(v22 + 16);
          while (v25 > v24 && *(v23 + 16) > v24 && *(v22 + 18 + v24) == *(v23 + 18 + v24))
          {
            if (++v24 == 255)
            {
              v24 = 255;
              break;
            }
          }
        }

        else
        {
          LOWORD(v25) = *(v22 + 16);
        }

        v26 = v11 + v15 + 4;
        *(v26 + 1) = v25 - v24;
        *(v26 + 3) = *(v22 + 12);
        *v26 = v24;
        memcpy((v26 + 7), (v22 + v24 + 18), *(v22 + 16) - v24);
        v15 = v15 - v24 + *(v22 + 16) + 7;
        ++v21;
      }

      while (v21 != v20);
    }

    else
    {
      v15 = 0;
      v16 = 10;
    }
  }

  else
  {
    v13 = i;
    if ((v12 & 0x10) != 0)
    {
      v14 = nodeStringCompare;
    }

    else
    {
      v14 = nodeWeightCompare;
    }

    qsort(v9, i, 8uLL, v14);
    v15 = 0;
    if (i)
    {
      v16 = 7;
      v17 = v9;
      do
      {
        v18 = *v17++;
        v19 = v11 + v15 + 4;
        *v19 = *(v18 + 16);
        *(v19 + 2) = *(v18 + 12);
        memcpy((v19 + 6), (v18 + 18), *(v18 + 16));
        v15 += *(v18 + 16) + 6;
        --v13;
      }

      while (v13);
    }

    else
    {
      v16 = 7;
    }
  }

  *v11 = v15;
  write(v4, v11, (v16 + v15) & 0x1FFFFFFFCLL);
  free(v9);
  if (v11 != v28)
  {
    free(v11);
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t nodeStringCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    v5 = *(*a2 + 16);
  }

  else
  {
    v5 = *(*a1 + 16);
  }

  LODWORD(result) = memcmp((*a1 + 18), (*a2 + 18), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

void _CFFileCoordinateReadingItemAtURL2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v8 = objc_lookUpClass("NSFileCoordinator");
  if (v8)
  {
    v9 = objc_alloc_init(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___CFFileCoordinateReadingItemAtURL2_block_invoke_2;
    v13[3] = &unk_1E6DD1838;
    v13[4] = a4;
    [v9 __coordinateReadingItemAtURL:a1 options:a2 purposeID:a3 byAccessor:v13];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = CFErrorCreate(0, @"NSCocoaErrorDomain", 3328, 0);
    (*(a4 + 16))(a4, 0, v11, &__block_literal_global_43);
    v12 = *MEMORY[0x1E69E9840];

    CFRelease(v11);
  }
}

void _CFFileCoordinateWritingItemAtURL2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v8 = objc_lookUpClass("NSFileCoordinator");
  if (v8)
  {
    v9 = objc_alloc_init(v8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___CFFileCoordinateWritingItemAtURL2_block_invoke_2;
    v13[3] = &unk_1E6DD1838;
    v13[4] = a4;
    [v9 __coordinateWritingItemAtURL:a1 options:a2 purposeID:a3 byAccessor:v13];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = CFErrorCreate(0, @"NSCocoaErrorDomain", 3328, 0);
    (*(a4 + 16))(a4, 0, v11, &__block_literal_global_4);
    v12 = *MEMORY[0x1E69E9840];

    CFRelease(v11);
  }
}

void _CFFileCoordinateReadingWritingItemsAtURLs2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v12 = objc_lookUpClass("NSFileCoordinator");
  if (v12)
  {
    v13 = objc_alloc_init(v12);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___CFFileCoordinateReadingWritingItemsAtURLs2_block_invoke_2;
    v17[3] = &unk_1E6DD1860;
    v17[4] = a6;
    [v13 __coordinateReadingItemAtURL:a1 options:a2 writingItemAtURL:a3 options:a4 purposeID:a5 byAccessor:v17];

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = CFErrorCreate(0, @"NSCocoaErrorDomain", 3328, 0);
    (*(a6 + 16))(a6, 0, 0, v15, &__block_literal_global_6);
    v16 = *MEMORY[0x1E69E9840];

    CFRelease(v15);
  }
}

void _CFFileCoordinateWritingItemsAtURLs2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v12 = objc_lookUpClass("NSFileCoordinator");
  if (v12)
  {
    v13 = objc_alloc_init(v12);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___CFFileCoordinateWritingItemsAtURLs2_block_invoke_2;
    v17[3] = &unk_1E6DD1860;
    v17[4] = a6;
    [v13 __coordinateWritingItemAtURL:a1 options:a2 writingItemAtURL:a3 options:a4 purposeID:a5 byAccessor:v17];

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = CFErrorCreate(0, @"NSCocoaErrorDomain", 3328, 0);
    (*(a6 + 16))(a6, 0, 0, v15, &__block_literal_global_9_0);
    v16 = *MEMORY[0x1E69E9840];

    CFRelease(v15);
  }
}

uint64_t _CFFileDidMove2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v6 __itemAtURL:a1 didMoveToURL:a2 purposeID:a3];
}

uint64_t _CFFileDidDisconnect2(uint64_t a1, uint64_t a2)
{
  v4 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v4 __itemAtURL:a1 didDisconnectWithPurposeID:a2];
}

uint64_t _CFFileDidReconnect2(uint64_t a1, uint64_t a2)
{
  v4 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v4 __itemAtURL:a1 didReconnectWithPurposeID:a2];
}

uint64_t _CFFileDidGainVersion2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v8 __itemAtURL:a1 didGainVersionWithClientID:a2 name:a3 purposeID:a4];
}

uint64_t _CFFileDidLoseVersion2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v8 __itemAtURL:a1 didLoseVersionWithClientID:a2 name:a3 purposeID:a4];
}

uint64_t _CFFileDidResolveConflictVersion2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_lookUpClass("NSFileCoordinator");

  return [(objc_class *)v8 __itemAtURL:a1 didResolveConflictVersionWithClientID:a2 name:a3 purposeID:a4];
}

void _CFHyphenationSetLinguisticDataPath(const void *a1)
{
  CFRetain(a1);
  if (_CFCustomHyphenationLinguisticDataPath)
  {
    CFRelease(_CFCustomHyphenationLinguisticDataPath);
  }

  _CFCustomHyphenationLinguisticDataPath = a1;
}

uint64_t _CFStringHyphenationCompileHyphenatorData(const char *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, "patterns.txt");
  snprintf(v50, 0x400uLL, "%s%c%s", a1, 47, "exceptions.txt");
  snprintf(cStr, 0x400uLL, "%s%c%s", a1, 47, "hyphenation.dat");
  v46 = 0;
  Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  valuePtr = 64;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"ContainerSize", v3);
  v4 = CFBurstTrieCreateWithOptions(Mutable);
  CFRelease(Mutable);
  CFRelease(v3);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
  v6 = __CFHyphenationMapFileContents(__str, &v46);
  if (v46)
  {
    if (v4)
    {
      CFBurstTrieRelease(v4);
    }

    v7 = 1;
    fwrite("error: failed to map patterns file\n", 0x23uLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_55;
  }

  v44 = v6;
  v8 = CFStringCreateWithBytes(0, *v6, *(v6 + 1), 0x8000100u, 1u);
  Length = CFStringGetLength(v8);
  v10 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  v53.location = 0;
  v53.length = Length;
  CFStringGetCharacters(v8, v53, v10);
  cf = v8;
  v11 = CFStringGetLength(v8);
  v42 = v10;
  v7 = 0;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = v10;
    v15 = &v10[v11];
    do
    {
      v16 = *v14;
      IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, *v14);
      if (v16 != 46 && IsCharacterMember == 0)
      {
        if (v16 - 48 > 9)
        {
          v19 = 0x100002400uLL >> v16;
          if (v16 > 0x20)
          {
            LOBYTE(v19) = 0;
          }

          goto LABEL_19;
        }

        v13 |= v16 - 48;
      }

      else
      {
        if (v12 > 7)
        {
          LOBYTE(v19) = 0;
LABEL_19:
          while (v14 < v15)
          {
            v20 = *v14;
            v21 = v20 > 0x20;
            v22 = (1 << v20) & 0x100002400;
            if (!v21 && v22 != 0)
            {
              break;
            }

            ++v14;
          }

          while (v14 < v15)
          {
            v24 = *v14;
            v21 = v24 > 0x20;
            v25 = (1 << v24) & 0x100002400;
            if (v21 || v25 == 0)
            {
              break;
            }

            ++v14;
          }

          if (v19)
          {
            v48[v12] = 0;
            CFBurstTrieAddCharacters(v4, v48, v12, v13);
            v13 = 0;
            v12 = 0;
          }

          else
          {
            v13 = 0;
            v12 = 0;
            v7 = (v7 + 1);
          }

          continue;
        }

        v48[v12++] = v16;
        v13 *= 8;
      }

      ++v14;
    }

    while (v14 < v15);
  }

  __CFHyphenationDestroyMMapType(v44);
  CFRelease(cf);
  free(v42);
  v27 = __CFHyphenationMapFileContents(v50, &v46);
  if (v46)
  {
    fwrite("warning: failed to map exceptions file\n", 0x27uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  else
  {
    v28 = v27;
    v29 = CFStringCreateWithBytes(0, *v27, *(v27 + 1), 0x8000100u, 1u);
    v30 = CFStringGetLength(v29);
    v31 = malloc_type_malloc(2 * v30, 0x1000040BDFB0063uLL);
    v54.location = 0;
    v54.length = v30;
    CFStringGetCharacters(v29, v54, v31);
    v32 = CFStringGetLength(v29);
    if (v32 >= 1)
    {
      v33 = 0;
      v34 = -1;
      v35 = v31;
      v36 = &v31[v32];
      do
      {
        v37 = *v35;
        if (v37 == 10 || v37 == 13)
        {
          v47[v33] = 0;
          CFBurstTrieAddCharacters(v4, v47, v33, v34);
          v33 = 0;
          v34 = -1;
        }

        else if (v37 == 45)
        {
          if (v33)
          {
            v34 &= ~(1 << (v33 - 1));
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          if (v33 > 0x1B)
          {
            break;
          }

          v47[v33++] = v37;
        }

        ++v35;
      }

      while (v35 < v36);
    }

    __CFHyphenationDestroyMMapType(v28);
    CFRelease(v29);
    free(v31);
  }

  fprintf(*MEMORY[0x1E69E9848], "writing trie to %s...\n", cStr);
  v39 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFBurstTrieSerialize(v4, v39, 6);
  CFRelease(v39);
  CFBurstTrieRelease(v4);
LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return v7;
}

_DWORD *__CFHyphenationMapFileContents(const char *a1, int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  v5 = v4;
  if (!v4)
  {
    v8 = 1;
    goto LABEL_11;
  }

  memset(&v11, 0, sizeof(v11));
  v4[4] = -1;
  *v4 = 0;
  *(v4 + 1) = 0;
  if (stat(a1, &v11) == -1)
  {
    v8 = 2;
LABEL_10:
    __CFHyphenationDestroyMMapType(v5);
    v5 = 0;
    goto LABEL_11;
  }

  *(v5 + 1) = v11.st_size;
  v6 = open(a1, 0);
  v5[4] = v6;
  if (v6 < 0)
  {
    v8 = 3;
    goto LABEL_10;
  }

  v7 = mmap(0, *(v5 + 1), 1, 1, v6, 0);
  *v5 = v7;
  if (v7 == -1)
  {
    v8 = 4;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:
  *a2 = v8;
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void __CFHyphenationDestroyMMapType(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      munmap(v2, a1[1]);
      *a1 = 0;
    }

    v3 = *(a1 + 4);
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }

    free(a1);
  }
}

__CFString *parseUnquotedPlistString(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3 >= v2)
  {
LABEL_22:
    Error = __CFPropertyListCreateError(3840, @"Unexpected EOF");
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = v3[v4];
      if ((v5 - 48) >= 0xAu && ((v5 & 0xFFDF) - 65) >= 0x1Au)
      {
        v7 = v3[v4] - 36;
        v8 = v7 > 0x3B;
        v9 = (1 << v7) & 0x800000000400E01;
        if (v8 || v9 == 0)
        {
          break;
        }
      }

      *(a1 + 8) = &v3[++v4];
      v11 = &v3[v4];
      if (&v3[v4] >= v2)
      {
        goto LABEL_13;
      }
    }

    if (!(v4 * 2))
    {
      goto LABEL_22;
    }

    v11 = &v3[v4];
LABEL_13:
    if (*(a1 + 40) != 2)
    {

      return _uniqueStringForCharacters(a1, v3, v11 - v3);
    }

    Mutable = CFStringCreateMutable(*(a1 + 32), 0);
    if (Mutable)
    {
      v13 = Mutable;
      CFStringAppendCharacters(Mutable, v3, (*(a1 + 8) - v3) >> 1);
      return v13;
    }

    Error = __CFPropertyListCreateError(3840, @"Unable to allocate unquoted string while parsing plist");
  }

  v16 = Error;
  v17 = *(a1 + 24);
  if (v17)
  {
    CFRelease(v17);
  }

  v13 = 0;
  *(a1 + 24) = v16;
  return v13;
}

void sub_18326B21C(_Unwind_Exception *a1, int a2)
{
  *(v4 - 224) = v3;
  free(*(v4 - 224));
  if (a2 == 1)
  {
    v7 = objc_begin_catch(a1);

    objc_exception_throw(v7);
  }

  cleanup_sentinel_pair(v4 - 144);
  cleanup_sentinel_pair(v4 - 120);
  _Unwind_Resume(a1);
}

__CFError *__archiveIsCorrupt(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"NSLocalizedDescription";
  v4[0] = a1;
  result = CFErrorCreate(0, @"NSCocoaErrorDomain", 4864, [NSDictionary dictionaryWithObjects:v4 forKeys:&v3 count:1]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void cleanup_sentinel_pair(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 8);
  if (*(a1 + 8))
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    [*a1 replaceObject:v1 withObject:?];
  }

  *v2 = 0;
  v2[1] = 0;
}

void sub_18326C39C(_Unwind_Exception *a1)
{
  free(*(v1 - 384));
  free(*(v1 - 376));
  _Unwind_Resume(a1);
}

void sub_18326CCD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    if (!v2)
    {
      JUMPOUT(0x18326C930);
    }

    JUMPOUT(0x18326C91CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18326CCFC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18326CD08);
}

__CFError *__archiveIsCorrupt_0(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"NSLocalizedDescription";
  v4[0] = a1;
  result = CFErrorCreate(0, @"NSCocoaErrorDomain", 4864, [NSDictionary dictionaryWithObjects:v4 forKeys:&v3 count:1]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPrefsSynchronizeDirtySourceForDaemonTermination(void *a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___CFPrefsSynchronizeDirtySourceForDaemonTermination_block_invoke;
  v3[3] = &unk_1E6D81EC0;
  v3[4] = a1;
  result = [a1 lockedSync:v3];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18326E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_18326E670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

CFTypeRef _CFPrefsDCopyCurrentUserName()
{
  v0 = cfprefsdEuid();

  return _CFPrefsCopyUserNameForUID(v0);
}

void sub_18326FA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __cfprefsdEuid_block_invoke()
{
  if (xpc_user_sessions_enabled())
  {
    result = xpc_user_sessions_get_session_uid();
  }

  else
  {
    result = geteuid();
  }

  cfprefsdEuid_euid = result;
  return result;
}

void sub_1832712D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *copySanitizedDomain(const char *a1)
{
  v2 = strlen(a1);
  v3 = v2;
  if (v2 >= 7 && !strcmp(&a1[(v2 & 0x7FFFFFFF) - 6], ".plist"))
  {
    v4 = (v3 << 32) - 0x600000000;
  }

  else
  {
    v4 = v3 << 32;
  }

  return strndup(a1, v4 >> 32);
}

void sub_18327181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183271C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void DEBUG_READ_EMPTY(void *a1, void *a2, uint64_t a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __DEBUG_READ_EMPTY_block_invoke;
    v8[3] = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v8[4] = a3;
    _extractCFPDBits(a1, 0, a2, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_183273560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_1832738E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1832741A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t ___extractCFPDBits_block_invoke_2(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = v4;
  strncpy((*(a1 + 40) + *(*(*(a1 + 32) + 8) + 24)), __s, v4);
  v6 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v5;
  *(v6 + *(*(*(a1 + 32) + 8) + 24)) = 8236;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  return 1;
}

uint64_t __notifyFunc_block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v6 = v2;
  result = notifyFunc(v1, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *__initializeFSEvents_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 256);
  fsEventStreamCreate = dlsym(v0, "FSEventStreamCreate");
  fsEventStreamInvalidate = dlsym(v0, "FSEventStreamInvalidate");
  fsEventStreamRelease = dlsym(v0, "FSEventStreamRelease");
  fsEventStreamSetDispatchQueue = dlsym(v0, "FSEventStreamSetDispatchQueue");
  fsEventStreamStart = dlsym(v0, "FSEventStreamStart");
  fsEventStreamStop = dlsym(v0, "FSEventStreamStop");
  result = dlsym(v0, "FSEventStreamGetLatestEventId");
  fsEventStreamGetLatestEventId = result;
  return result;
}

uint64_t _onqueue_locked_CFPrefsRecreateFileWatcher()
{
  dispatch_assert_queue_V2(fseventsQueue);
  os_unfair_lock_assert_owner(&dirWatcherLock);
  if (dirWatcher)
  {
    fsEventStreamStop();
    fsEventStreamInvalidate(dirWatcher);
    fsEventStreamRelease(dirWatcher);
    dirWatcher = 0;
  }

  dirWatcher = fsEventStreamCreate(&__kCFAllocatorSystemDefault, deletionStreamCallback, 0, watchedDirs, -1, 25, 0.0);
  fsEventStreamSetDispatchQueue();
  return dirWatcher;
}

uint64_t _CFBigNumInitWithInt8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2 < 0)
  {
    *(result + 20) |= 0xFFu;
    a2 = -a2;
  }

  *result = a2;
  return result;
}

uint64_t _CFBigNumInitWithInt16(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2 < 0)
  {
    *(result + 20) |= 0xFFu;
    a2 = -a2;
  }

  *result = a2;
  return result;
}

void *_CFBigNumInitWithUInt8(void *result, int a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

void *_CFBigNumInitWithUInt16(void *result, int a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

uint64_t _CFBigNumInitWithUInt32(uint64_t result, unsigned int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = a2 % 0x3B9ACA00;
  *(result + 4) = a2 / 0x3B9ACA00;
  return result;
}

uint64_t _CFBigNumInitWithUInt64(uint64_t result, unint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = a2 % 0xDE0B6B3A7640000 % 0x3B9ACA00;
  *(result + 4) = a2 % 0xDE0B6B3A7640000 / 0x3B9ACA00;
  *(result + 8) = a2 / 0xDE0B6B3A7640000;
  return result;
}

uint64_t _CFBigNumInitWithUInt128(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __udivti3();
  v5 = __udivti3();
  v6 = __udivti3();
  result = __udivti3();
  *a1 = 1486618624 * v6 + 402653184 * v5 + a2 - 1000000000 * result;
  *(a1 + 4) = result;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t _CFBigNumGetInt8(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((a1[20] & 0x80) != 0)
  {
    v1 = -v1;
  }

  return v1;
}

uint64_t _CFBigNumGetInt16(unsigned __int16 *a1)
{
  v1 = *a1;
  if ((a1[10] & 0x80) != 0)
  {
    v1 = -v1;
  }

  return v1;
}

uint64_t _CFBigNumGetInt32(uint64_t a1)
{
  v1 = *a1 + 1000000000 * *(a1 + 4);
  if ((*(a1 + 20) & 0x80) != 0)
  {
    return -v1;
  }

  else
  {
    return v1;
  }
}

uint64_t _CFBigNumGetInt64(unsigned int *a1)
{
  if ((a1[5] & 0x80) != 0)
  {
    return -(*a1 + 1000000000 * a1[1] + 1000000000000000000 * a1[2]);
  }

  else
  {
    return *a1 + 1000000000 * a1[1] + 1000000000000000000 * a1[2];
  }
}

uint64_t _CFBigNumGetInt128(unsigned int *a1)
{
  v1 = *a1 + 1000000000 * a1[1];
  v2 = 1000000000000000000 * a1[2];
  v3 = __CFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    v5 = ((a1[2] * 0xDE0B6B3A7640000uLL) >> 64) + 1;
  }

  else
  {
    v5 = (a1[2] * 0xDE0B6B3A7640000uLL) >> 64;
  }

  v6 = v4 - 0x602F7FC318000000 * a1[3] - 0x4CB460F000000000 * a1[4];
  if ((a1[5] & 0x80) != 0)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

uint64_t _CFBigNumGetUInt128(unsigned int *a1)
{
  v1 = *a1 + 1000000000 * a1[1];
  v2 = 1000000000000000000 * a1[2];
  v3 = __CFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    v5 = ((a1[2] * 0xDE0B6B3A7640000uLL) >> 64) + 1;
  }

  else
  {
    v5 = (a1[2] * 0xDE0B6B3A7640000uLL) >> 64;
  }

  return v4 - 0x602F7FC318000000 * a1[3] - 0x4CB460F000000000 * a1[4];
}

uint64_t _CFBigNumInitWithCFNumber(uint64_t a1, unint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  Type2 = _CFNumberGetType2(a2);
  CFNumberGetValue(a2, Type2, v7);
  result = _CFBigNumInitWithBytes(a1, v7, Type2);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFBigNumInitWithBytes(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3 <= 8)
  {
    if (a3 <= 3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          if (a3 != 3)
          {
            return result;
          }

          goto LABEL_25;
        }

        goto LABEL_15;
      }

      goto LABEL_28;
    }

    if (a3 != 4)
    {
      if (a3 != 7)
      {
        if (a3 != 8)
        {
          return result;
        }

LABEL_15:
        v3 = *a2;
        *result = 0;
        *(result + 8) = 0;
        *(result + 16) = 0;
        if (v3 < 0)
        {
          *(result + 20) |= 0xFFu;
          v3 = -v3;
        }

        v3 = v3;
LABEL_31:
        *result = v3;
        return result;
      }

LABEL_28:
      v3 = *a2;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      if (v3 < 0)
      {
        *(result + 20) |= 0xFFu;
        v3 = -v3;
      }

      v3 = v3;
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (a3 <= 13)
  {
    if (a3 == 9)
    {
LABEL_25:
      v7 = *a2;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      if ((v7 & 0x80000000) != 0)
      {
        *(result + 20) |= 0xFFu;
        v7 = -v7;
      }

      *result = v7 % 0x3B9ACA00;
      *(result + 4) = v7 / 0x3B9ACA00;
      return result;
    }

    if (a3 != 10 && a3 != 11)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (a3 == 14 || a3 == 15)
  {
LABEL_22:
    v4 = *a2;
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v4 & 0x8000000000000000) != 0)
    {
      *(result + 20) |= 0xFFu;
      v4 = -v4;
    }

    v5 = v4 / 0xDE0B6B3A7640000;
    v6 = v4 % 0xDE0B6B3A7640000;
    *result = v6 % 0x3B9ACA00;
    *(result + 4) = v6 / 0x3B9ACA00;
    *(result + 8) = v5;
    return result;
  }

  if (a3 == 17)
  {
    return _CFBigNumInitWithInt128(result, a2[1], *a2);
  }

  return result;
}

CFNumberRef _CFNumberCreateWithBigNum(unsigned int *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2)
  {
    if (!a1[3])
    {
      if (!a1[2] && !a1[1])
      {
        v23 = *a1;
        if (*a1 <= 0x7F)
        {
          if ((a1[5] & 0x80) != 0)
          {
            v23 = -v23;
          }

          v26[0] = v23;
          v14 = v26;
          v15 = kCFNumberSInt8Type;
          goto LABEL_15;
        }

        if (!(v23 >> 15))
        {
          if ((a1[5] & 0x80) != 0)
          {
            v23 = -v23;
          }

          *v26 = v23;
          v14 = v26;
          v15 = kCFNumberSInt16Type;
          goto LABEL_15;
        }
      }

      if (!a1[2])
      {
        *&v26[16] = 0;
        *v26 = 0x208CA6BFFuLL;
        *&v25[16] = 0xFF00000000;
        *v25 = 0x208CA6C00uLL;
        v20 = _CFBigNumCompare(a1, v26);
        v21 = _CFBigNumCompare(a1, v25);
        if ((v20 - 1) >= 0xFFFFFFFFFFFFFFFELL && v21 != -1)
        {
          v22 = *a1 + 1000000000 * a1[1];
          if ((a1[5] & 0x80) != 0)
          {
            v22 = -v22;
          }

          LODWORD(v24[0]) = v22;
          v14 = v24;
          v15 = kCFNumberSInt32Type;
LABEL_15:
          result = CFNumberCreate(&__kCFAllocatorSystemDefault, v15, v14);
          goto LABEL_16;
        }
      }
    }

    if (!a1[3])
    {
      *&v26[20] = 0;
      *&v26[12] = 0;
      *v26 = 0xD50630432F2D7FFLL;
      *&v26[8] = 9;
      *&v25[12] = 0;
      *&v25[20] = 255;
      *v25 = 0xD50630432F2D800;
      *&v25[8] = 9;
      v17 = _CFBigNumCompare(a1, v26);
      v18 = _CFBigNumCompare(a1, v25);
      if ((v17 - 1) >= 0xFFFFFFFFFFFFFFFELL && v18 != -1)
      {
        v19 = *a1 + 1000000000 * a1[1] + 1000000000000000000 * a1[2];
        if ((a1[5] & 0x80) != 0)
        {
          v19 = -v19;
        }

        v24[0] = v19;
        v14 = v24;
        v15 = kCFNumberSInt64Type;
        goto LABEL_15;
      }
    }
  }

  *v26 = xmmword_183448490;
  *&v26[16] = 170;
  *v25 = xmmword_1834484A0;
  *&v25[16] = 0xFF000000AALL;
  v3 = _CFBigNumCompare(a1, v26);
  v4 = _CFBigNumCompare(a1, v25);
  result = 0;
  if ((v3 + 1) <= 1 && v4 != -1)
  {
    v6 = *a1 + 1000000000 * a1[1];
    v7 = 1000000000000000000 * a1[2];
    v8 = __CFADD__(v6, v7);
    v9 = v6 + v7;
    if (v8)
    {
      v10 = ((a1[2] * 0xDE0B6B3A7640000uLL) >> 64) + 1;
    }

    else
    {
      v10 = (a1[2] * 0xDE0B6B3A7640000uLL) >> 64;
    }

    v13 = __PAIR128__(v10, v9) + __PAIR128__(((a1[3] * 0x9FD0803CE8000000) >> 64) + 54210108 * a1[3], 0x9FD0803CE8000000 * a1[3]) + __PAIR128__(0xC097CE7BC90715, 0xB34B9F1000000000) * v2;
    v12 = *(&v13 + 1);
    v11 = v13;
    if ((a1[5] & 0x80) != 0)
    {
      v12 = -__PAIR128__((v2 * 0xB34B9F1000000000) >> 64, v13) >> 64;
      v11 = -v13;
    }

    v24[0] = v11;
    v24[1] = v12;
    v14 = v24;
    v15 = kCFNumberMaxType|kCFNumberSInt8Type;
    goto LABEL_15;
  }

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFBigNumCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 == v3)
  {
    v4 = 16;
    while (1)
    {
      if (v4 == -4)
      {
        return 0;
      }

      v5 = *(a1 + v4);
      v6 = *(a2 + v4);
      if (v5 < v6)
      {
        break;
      }

      v4 -= 4;
      if (v5 > v6)
      {
        v7 = v2 < 0;
        v8 = 1;
        goto LABEL_12;
      }
    }

    v7 = v2 < 0;
    v8 = -1;
LABEL_12:
    if (v7)
    {
      return -v8;
    }

    else
    {
      return v8;
    }
  }

  else if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t _CFBigNumNeg(uint64_t result, __int128 *a2)
{
  v2 = 0;
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  while (!*(a2 + v2))
  {
    v2 += 4;
    if (v2 == 20)
    {
      return result;
    }
  }

  v4 = (*(result + 20) * *(result + 20) - 1);
  *(result + 20) = *(result + 20) * *(result + 20) - 1;
  return result;
}

unint64_t _CFBigNumAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v3) = *(a3 + 20) ^ *(a2 + 20);
  if (v3)
  {
    v4 = 16;
    while (1)
    {
      if (v4 == -4)
      {
LABEL_6:
        v7 = a2;
        goto LABEL_13;
      }

      v5 = *(a2 + v4);
      v6 = *(a3 + v4);
      if (v5 < v6)
      {
        break;
      }

      v4 -= 4;
      if (v5 > v6)
      {
        goto LABEL_6;
      }
    }

    v7 = a3;
    a3 = a2;
LABEL_13:
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a3 + v10);
      v13 = v11 + *(v7 + v10);
      v15 = v13 - v12;
      v14 = v13 < v12;
      v16 = v13 - v12 + 1000000000;
      v11 = v15 >> 63;
      if (!v14)
      {
        v16 = v15;
      }

      *(a1 + v10) = v16;
      v10 += 4;
    }

    while (v10 != 20);
    v3 = v15 >> 63;
    v17 = *(a1 + 20);
    if ((*(v7 + 20) & 0x80) != 0)
    {
      v18 = v17 | 0xFF;
    }

    else
    {
      v18 = v17 & 0xFFFFFF00;
    }

    *(a1 + 20) = v18;
  }

  else
  {
    for (i = 0; i != 20; i += 4)
    {
      v9 = *(a2 + i) + v3 + *(a3 + i);
      v3 = v9 > 0x3B9ACA00;
      if (v9 > 0x3B9ACA00)
      {
        v9 -= 1000000000;
      }

      *(a1 + i) = v9;
    }

    *(a1 + 20) = *(a2 + 20);
  }

  return v3;
}

unint64_t _CFBigNumSub(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = 0;
  v8 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 2);
  while (!*(a3 + v3))
  {
    v3 += 4;
    if (v3 == 20)
    {
      goto LABEL_6;
    }
  }

  BYTE4(v7) = BYTE4(v7) * BYTE4(v7) - 1;
LABEL_6:
  result = _CFBigNumAdd(a1, a2, &v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFBigNumFromCString(uint64_t a1, char *__s)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = strlen(__s);
  v5 = malloc_type_calloc(v4 + 1, 1uLL, 0x100004077774924uLL);
  v6 = strlen(__s);
  memcpy(v5, __s, v6 + 1);
  v7 = *v5;
  if (v7 == 43)
  {
    goto LABEL_4;
  }

  v8 = v5;
  if (v7 == 45)
  {
    *(a1 + 20) |= 0xFFu;
LABEL_4:
    v8 = v5 + 1;
  }

  v9 = (v8 - 1);
  do
  {
    v10 = *++v9;
  }

  while (v10 == 48);
  v11 = strlen(v9);
  if (v11)
  {
    if (v11 < 0xA)
    {
      v16 = 0;
    }

    else
    {
      if ((v11 - 10) / 9 >= 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = (v11 - 10) / 9;
      }

      v13 = v12 + 1;
      v14 = &v9[v11 - 9];
      v15 = a1;
      do
      {
        *v15++ = atol(v14);
        *v14 = 0;
        v14 -= 9;
        --v13;
      }

      while (v13);
      v16 = v12 + 1;
    }

    *(a1 + 4 * v16) = atol(v9);
  }

  free(v5);
}

char *_CFBigNumCopyDescription(_DWORD *a1)
{
  v2 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  v3 = v2;
  v4 = "-";
  if ((a1[5] & 0x80) == 0)
  {
    v4 = "+";
  }

  snprintf(v2, 0x400uLL, "sign:%s 1st:%u 2nd:%u 3rd:%u 4th:%u 5th:%u", v4, *a1, a1[1], a1[2], a1[3], a1[4]);
  return v3;
}

uint64_t _CFPrefsPIDForMessage(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  length = 0;
  v8 = 0u;
  v9 = 0u;
  data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
  if (data && length == 32)
  {
    v3 = data[1];
    v8 = *data;
    v9 = v3;
  }

  else
  {
    if (!xpc_dictionary_get_remote_connection(a1))
    {
      value = xpc_dictionary_get_value(a1, "connection");
      if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
      {
        _CFPrefsPIDForMessage_cold_1();
      }
    }

    xpc_connection_get_audit_token();
  }

  result = DWORD1(v9);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18327759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t indexSearchCallback(void *a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a1 shmemIndex];
    if (*a2 == result)
    {
      **(a2 + 8) = a1;
    }
  }

  return result;
}

uint64_t _CFPrefsBooleanEntitlementValueForMessage(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(a1);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a1, "connection");
    remote_connection = value;
    if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
    {
      __assert_rtn("_CFPrefsConnectionForMessage", "CFXPreferences_Internal.h", 393, "conn && xpc_get_type(conn) == XPC_TYPE_CONNECTION");
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CFPrefsBooleanEntitlementValueForMessage_block_invoke;
  v9[3] = &unk_1E6DD21D8;
  v9[4] = a1;
  v9[5] = &v10;
  v9[6] = a2;
  withClientContext(remote_connection, v9);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1832785C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFPrefsCopyEntitlementForMessage(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(a1);
  if (!remote_connection)
  {
    value = xpc_dictionary_get_value(a1, "connection");
    remote_connection = value;
    if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
    {
      __assert_rtn("_CFPrefsConnectionForMessage", "CFXPreferences_Internal.h", 393, "conn && xpc_get_type(conn) == XPC_TYPE_CONNECTION");
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CFPrefsCopyEntitlementForMessage_block_invoke;
  v9[3] = &unk_1E6DD2228;
  v9[4] = a1;
  v9[5] = &v10;
  v9[6] = a2;
  withClientContext(remote_connection, v9);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_18327879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void log_client_activity(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = 0;
    buffer = 0u;
    *pid = 0u;
    data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &v17);
    if (data && v17 == 32)
    {
      v8 = data[1];
      buffer = *data;
      *pid = v8;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(a1))
      {
        value = xpc_dictionary_get_value(a1, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          log_client_activity_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v10 = pid[1];
    v26 = 0u;
    v27 = 0u;
    buffer = 0u;
    *pid = 0u;
    if (v10 != -1 && (proc_name(v10, &buffer, 0x40u) & 0x80000000) == 0)
    {
      v11 = _CFPrefsDaemonLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (a3)
      {
        if (v12)
        {
          LODWORD(v17) = 67240962;
          HIDWORD(v17) = v10;
          v18 = 2082;
          p_buffer = &buffer;
          v20 = 2082;
          v21 = a2;
          v22 = 2082;
          v23 = a3;
          v13 = "Process %{public}d (%{public}s) %{public}s for domain %{public}s";
          v14 = v11;
          v15 = 38;
LABEL_17:
          _os_log_debug_impl(&dword_1830E6000, v14, OS_LOG_TYPE_DEBUG, v13, &v17, v15);
        }
      }

      else if (v12)
      {
        LODWORD(v17) = 67240706;
        HIDWORD(v17) = v10;
        v18 = 2082;
        p_buffer = &buffer;
        v20 = 2082;
        v21 = a2;
        v13 = "Process %{public}d (%{public}s) %{public}s";
        v14 = v11;
        v15 = 28;
        goto LABEL_17;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_183279614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CFXPreferencesDaemon_main(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    isCFPrefsD = 1;
    if (setiopolicy_np(9, 0, 1) < 0)
    {
      v1 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        v2 = *__error();
        v7[0] = 67109120;
        v7[1] = v2;
        _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "An error occurred while setting iopolicy: %{darwin.errno}d", v7, 8u);
      }
    }

    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cfprefsd", v3);
    signal(15, 1);
    signal(30, 1);
    __CFXPreferencesDaemon_main_sigtermHandler = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, v4);
    dispatch_source_set_event_handler(__CFXPreferencesDaemon_main_sigtermHandler, &__block_literal_global_149);
    dispatch_resume(__CFXPreferencesDaemon_main_sigtermHandler);
    v5 = [CFPrefsDaemon alloc];
    if (__CFProcessIsRestricted())
    {
      v6 = 0;
    }

    else
    {
      v6 = getenv("__CFPreferencesTestDaemon") != 0;
    }

    cfprefsd = [(CFPrefsDaemon *)v5 initWithRole:v6 testMode:?];
    [cfprefsd enterSandbox];
    __CFXPreferencesDaemon_main_sigusrHandler = dispatch_source_create(MEMORY[0x1E69E9700], 0x1EuLL, 0, v4);
    dispatch_source_set_event_handler(__CFXPreferencesDaemon_main_sigusrHandler, &__block_literal_global_152);
    dispatch_resume(__CFXPreferencesDaemon_main_sigusrHandler);
    dispatch_main();
  }

  printf("cfprefsd is not intended to be used directly");
  exit(0);
}

passwd *___isRootOrRoleAccountUserName_block_invoke(passwd *result, char *a2)
{
  if (a2)
  {
    v2 = result;
    result = getpwnam(a2);
    if (result)
    {
      v3 = result->pw_uid < 0x1F5;
    }

    else
    {
      v3 = 0;
    }

    *(*(v2->pw_class + 1) + 24) = v3;
  }

  return result;
}

void __dumpDebugInfoCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDump];
  CFStringAppend(*(a1 + 40), v2);
  CFRelease(v2);
  v3 = [*(a1 + 32) copyUncanonicalizedPath];
  if (v3)
  {
    v4 = v3;
    if (CFSetContainsValue(*(a1 + 48), v3))
    {
      CFStringAppendFormat(*(a1 + 40), 0, @"\nPATH COLLISION: %@\n", v4);
    }

    else
    {
      CFSetAddValue(*(a1 + 48), v4);
    }

    CFRelease(v4);
  }
}

void _CFPrefsResetManagedPreferencesStateCache()
{
  os_unfair_lock_lock(&managedPreferencesLock);
  Mutable = locked_getManagedStateCache_knownContainerizedManagedPrefsStates;
  if (!locked_getManagedStateCache_knownContainerizedManagedPrefsStates)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    locked_getManagedStateCache_knownContainerizedManagedPrefsStates = Mutable;
  }

  CFDictionaryRemoveAllValues(Mutable);
  v1 = locked_getManagedStateCache_knownManagedPrefsStates;
  if (!locked_getManagedStateCache_knownManagedPrefsStates)
  {
    v1 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    locked_getManagedStateCache_knownManagedPrefsStates = v1;
  }

  CFDictionaryRemoveAllValues(v1);

  os_unfair_lock_unlock(&managedPreferencesLock);
}

void sub_18327A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327AB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327ACA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327B85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v10)
  {
    objc_end_catch();
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_18327C4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327CA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327CBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327CE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327D350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327E294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_xpc_connection_s *_CFPrefsCopyDirectModeConnection()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsCopyDirectModeConnection_cold_1();
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = [(_CFXPreferences *)v0 _copyDaemonConnectionSettingUpIfNecessaryForRole:0 andUserIdentifier:?];

  return v1;
}

void sub_18327E910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18327EA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_18327EA78(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (!v2)
    {
      JUMPOUT(0x18327EA0CLL);
    }

    JUMPOUT(0x18327EA04);
  }

  JUMPOUT(0x18327EA6CLL);
}

void _CFPrefsResetUserSessionPreferences()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_1830E6000, "Resetting CFPreferences/NSUserDefaults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);
  if (qword_1ED40BE20 != -1)
  {
    _CFPrefsResetUserSessionPreferences_cold_1();
  }

  [qword_1ED40BE18 forEachPrefsPerformBlock:&__block_literal_global_195];

  os_activity_scope_leave(&state);
  v1 = *MEMORY[0x1E69E9840];
}

id _CFPreferencesCopyStandardUserDefaults()
{
  if (_NSUserDefaultsRegisteredAtLeastOnce != 1)
  {
    return 0;
  }

  v1 = objc_opt_class();
  v2 = sel_registerName("_copyStandardUserDefaultsIfPresent");

  return [v1 v2];
}

CFDictionaryRef __CFXPreferencesCopyCurrentApplicationState()
{
  v3 = *MEMORY[0x1E69E9840];
  result = __CFXPreferencesCopyCurrentApplicationStateWithDeadlockAvoidance(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFXPreferencesCopyVolatileSourceNames()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFXPreferencesCopyVolatileSourceNames_cold_1();
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = [(_CFXPreferences *)v0 volatileSourceNames];

  return v1;
}

uint64_t _CFPreferencesHasAppCloudValue(uint64_t a1, __CFString *a2, const __CFString *a3, uint64_t a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesHasAppCloudValue_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 hasCloudValueForKey:a1 appIdentifier:a2 container:a3 configurationURL:a4];

  return v9;
}

uint64_t _CFPreferencesHasAppValue(uint64_t a1, __CFString *a2, const __CFString *a3, uint64_t a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesHasAppValue_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 hasNonRegisteredValueForKey:a1 appIdentifier:a2 container:a3 configurationURL:a4];

  return v9;
}

void _CFPreferencesRemoveSuitePreferencesFromAppWithContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v6 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesRemoveSuitePreferencesFromAppWithContainer_cold_1();
    }

    v6 = [qword_1ED40BE18 copyPrefs];
  }

  v7 = v6;
  [(_CFXPreferences *)v6 removeSuite:a2 fromApp:a1 withContainer:a3];
}

void _CFPreferencesSetAccessRestricted(const void *a1, int a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetAccessRestricted_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = v4;
  [(_CFXPreferences *)v4 setAccessRestricted:a1 forAppIdentifier:?];
}

void _CFPreferencesNotifyOfImpendingUserDeletion()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesNotifyOfImpendingUserDeletion_cold_1();
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }
}

void _CFPreferencesSetFileProtectionClass(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4, int a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetFileProtectionClass_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = v10;
  [(_CFXPreferences *)v10 setFileProtectionClass:a5 identifier:a1 user:a2 host:a3 container:a4];
}

uint64_t _CFPreferencesGetFileProtectionClass(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesGetFileProtectionClass_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 fileProtectionClassForIdentifier:a1 user:a2 host:a3 container:a4];

  return v9;
}

void _CFPreferencesSetDaemonCacheEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesSetDaemonCacheEnabled_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = v10;
  [v10 setDaemonCacheEnabled:a5 != 0 identifier:a1 user:a2 host:a3 container:a4];
}

CFArrayRef CFPreferencesCopyApplicationList(CFStringRef userName, CFStringRef hostName)
{
  v3 = CFEqual(hostName, @"kCFPreferencesCurrentHost") != 0;

  return _CFPreferencesCopyApplicationList(userName, v3);
}

CFMutableDictionaryRef _CFPreferencesCopyMultipleManaged(uint64_t a1, __CFString *a2, int a3)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v6 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesCopyMultipleManaged_cold_1();
    }

    v6 = [qword_1ED40BE18 copyPrefs];
  }

  v7 = [(_CFXPreferences *)v6 copyManagedValuesForKeys:a1 identifier:a2 useSystemContainer:a3 != 0];

  return v7;
}

BOOL _CFPreferencesIsManaged()
{
  v0 = CFCopyUserName();
  if (_CFGetEUID())
  {
    v1 = v0;
  }

  else
  {
    v1 = @"kCFPreferencesAnyUser";
  }

  IsManaged = CFPreferencesIsManaged(v1, 0);
  CFRelease(v0);
  return IsManaged;
}

unint64_t _CFPreferencesWriteDomainDictionaryToPath(unint64_t a1, CFStringRef theString, void *a3)
{
  v3 = a1;
  v24 = *MEMORY[0x1E69E9840];
  values = a3;
  if (a1)
  {
    v5 = theString;
    errorCode = 0;
    if (CFStringHasPrefix(theString, @"/Library/Managed Preferences/"))
    {
      Length = CFStringGetLength(@"/Library/Managed Preferences/");
      v25.length = CFStringGetLength(v5) - Length;
      v25.location = Length;
      v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v5, v25);
      v8 = CFStringCreateWithFormat(0, 0, @"/private/var/Managed Preferences/%@", v7);
      CFRelease(v7);
      v5 = CFAutorelease(v8);
    }

    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@/%@%@", v5, a3, @".plist");
    if (!v9)
    {
      v3 = 0;
LABEL_20:
      v18 = CFArrayCreate(&__kCFAllocatorSystemDefault, &values, 1, &kCFTypeArrayCallBacks);
      _CFPreferencesManagementStatusChangedForDomains();
      CFRelease(v18);
      goto LABEL_21;
    }

    v10 = v9;
    v11 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v9, kCFURLPOSIXPathStyle, 0);
    v12 = [(__CFURL *)v11 _URLByInsertingResolveFlags:1];
    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      if (CFDictionaryGetCount(v3))
      {
        v13 = CFWriteStreamCreateWithAllocatedBuffers(&__kCFAllocatorSystemDefault, &__kCFAllocatorSystemDefault);
        CFWriteStreamOpen(v13);
        CFPropertyListWrite(v3, v13, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        CFWriteStreamClose(v13);
        v14 = CFWriteStreamCopyProperty(v13, @"kCFStreamPropertyDataWritten");
        CFRelease(v13);
        if (v14)
        {
          v3 = CFURLWriteDataAndPropertiesToResource(v12, v14, 0, &errorCode);
          v15 = v14;
          goto LABEL_17;
        }
      }

      else
      {
        bzero(buffer, 0x402uLL);
        if (CFURLGetFileSystemRepresentation(v12, 1u, buffer, 1024))
        {
          v3 = unlink(buffer) == 0;
          PathComponent = CFURLCreateCopyDeletingLastPathComponent(&__kCFAllocatorSystemDefault, v12);
          if (!PathComponent)
          {
LABEL_19:
            CFRelease(v10);
            goto LABEL_20;
          }

          v17 = PathComponent;
          bzero(buffer, 0x402uLL);
          if (CFURLGetFileSystemRepresentation(v17, 1u, buffer, 1024))
          {
            rmdir(buffer);
          }

          v15 = v17;
LABEL_17:
          CFRelease(v15);
          goto LABEL_19;
        }
      }
    }

    v3 = 0;
    goto LABEL_19;
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t _CFPreferencesManagementStatusChangedForDomains()
{
  _handleExternalNotification(@"com.apple.MCX._managementStatusChangedForDomains");
  notify_post("com.apple.MCX._managementStatusChangedForDomains");
  _handleExternalNotification(&stru_1EF068AA8);

  return notify_post("com.apple.CFPreferences._domainsChangedExternally");
}

unint64_t _CFPreferencesWriteManagedDomain(unint64_t a1, __CFString *a2, int a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3 != 0;
  bzero(__s, 0x400uLL);
  if (!_CFPrefsGetPathForManagedBundleID(0, a2, v7, __s))
  {
    goto LABEL_7;
  }

  v8 = strlen(__s);
  v9 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, __s, v8, 1u);
  v10 = [(__CFURL *)v9 _URLByInsertingResolveFlags:1];
  if (v10)
  {
    v11 = CFURLCopyFileSystemPath(v10, kCFURLPOSIXPathStyle);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = 0;
  if (v9)
  {
LABEL_4:
    CFRelease(v9);
  }

LABEL_5:
  if (!v11)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = _CFPreferencesWriteDomainDictionaryToPath(a1, v11, a4);
  CFRelease(v11);
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _CFPrefsDirectModeEnabledForDomain(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsDirectModeEnabledForDomain_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = CFEqual(a3, @"kCFPreferencesCurrentHost") != 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___CFPrefsDirectModeEnabledForDomain_block_invoke;
  v13[3] = &unk_1E6DD2310;
  v13[4] = &v14;
  [(_CFXPreferences *)v8 withSourceForIdentifier:a1 user:a2 byHost:v9 container:a4 cloud:0 perform:v13];

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void _handleExternalNotification(const __CFString *a1)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    if (_CFPrefsCurrentProcessIsCFPrefsD())
    {
      v2 = 0;
    }

    else
    {
      if (qword_1ED40BE20 != -1)
      {
        _handleExternalNotification_cold_1();
      }

      v2 = [qword_1ED40BE18 copyPrefs];
    }

    [(_CFXPreferences *)v2 flushManagedSources];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, a1, 0, 0, 0);
  }
}

uint64_t _CFPreferencesPostValuesChangedInDomains()
{
  _handleExternalNotification(&stru_1EF068AA8);

  return notify_post("com.apple.CFPreferences._domainsChangedExternally");
}

uint64_t (**__CFStringEncodingGetLatin2ConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_7)
  {
    __CFStringEncodingPrecomposeLatinCharacter_7 = a2(4);
  }

  if (a1 > 513)
  {
    if (a1 == 514)
    {
      return __CFConverterISOLatin2;
    }

    if (a1 != 1042)
    {
      if (a1 == 1281)
      {
        return __CFConverterWinLatin2;
      }

      return 0;
    }

    return __CFConverterDOSLatin2;
  }

  else
  {
    if (a1 == 29)
    {
      return __CFConverterMacCentEuro;
    }

    if (a1 != 36)
    {
      if (a1 == 38)
      {
        return __CFConverterMacRomanian;
      }

      return 0;
    }

    return __CFConverterMacCroatian;
  }
}

uint64_t __CFToMacCentEuro(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9675 < 0xFFFFDAD5)
  {
    return 0;
  }

  v5 = &maccenteuro_from_uni;
  v6 = &unk_1834486CC;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromMacCentEuro(uint64_t a1, __int16 a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = maccenteuro_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToMacCentEuroPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9675) >= 0xDAD5u)
    {
      v11 = &maccenteuro_from_uni;
      v12 = &unk_1834486CC;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFIsValidCombiningCharacterForLatin2(int a1)
{
  if ((a1 - 768) > 0x5F)
  {
    return 0;
  }

  else
  {
    return (__CFLatin2CombiningCharBitmap[(a1 - 768) >> 5] >> ~a1) & 1;
  }
}

uint64_t __CFToMacCroatian(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1792) >= 0x7A0u)
    {
      v4 = &maccroatian_from_uni;
      v5 = &unk_1834489D8;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

uint64_t __CFFromMacCroatian(uint64_t a1, __int16 a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = maccroatian_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToMacCroatianPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if ((v9 + 1792) < 0x7A0u)
  {
    return 0;
  }

  v12 = &maccroatian_from_uni;
  v13 = &unk_1834489D8;
  while (1)
  {
    v14 = &v12[2 * ((v13 - v12) >> 3)];
    v15 = *v14;
    if (v15 <= v9)
    {
      break;
    }

    v13 = v14 - 2;
LABEL_12:
    if (v12 > v13)
    {
      return 0;
    }
  }

  if (v15 < v9)
  {
    v12 = v14 + 2;
    goto LABEL_12;
  }

  v10 = *(v14 + 2);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToMacRomanian(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *a2;
  if (v4 > 0x7F)
  {
    if ((v4 + 1792) >= 0x7A0u)
    {
      v6 = &macromanian_from_uni;
      v7 = &unk_183448CD8;
      do
      {
        v8 = &v6[2 * ((v7 - v6) >> 3)];
        v9 = *v8;
        if (v9 <= v4)
        {
          if (v9 >= v4)
          {
            LOBYTE(v4) = *(v8 + 2);
            goto LABEL_2;
          }

          v6 = v8 + 2;
        }

        else
        {
          v7 = v8 - 2;
        }
      }

      while (v6 <= v7);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a4 = v4;
    return 1;
  }
}

BOOL __CFFromMacRomanian(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = macromanian_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacRomanianLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if (v4 != 806)
    {
      ++result;
    }
  }

  return result;
}

uint64_t __CFFromMacRomanianLen(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    v5 = (1 << (v4 + 81)) & 0x1800000010001;
    if ((v4 - 175) > 0x30 || v5 == 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    result += v7;
  }

  return result;
}

uint64_t __CFToMacRomanianPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < 2 || a2[1] != 806)
  {
    v12 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
    if (v12 <= 0x7F)
    {
      v11 = v12;
      if (!v12)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if ((v12 + 1792) < 0x7A0u)
    {
      return 0;
    }

    v13 = &macromanian_from_uni;
    v14 = &unk_183448CD8;
    while (1)
    {
      v15 = &v13[2 * ((v14 - v13) >> 3)];
      v16 = *v15;
      if (v16 <= v12)
      {
        if (v16 >= v12)
        {
          v11 = *(v15 + 2);
          if (!v11)
          {
            return 0;
          }

LABEL_10:
          if (a5)
          {
LABEL_11:
            *a4 = v11;
          }

LABEL_12:
          *a6 = 1;
          return 2;
        }

        v13 = v15 + 2;
      }

      else
      {
        v14 = v15 - 2;
      }

      if (v13 > v14)
      {
        return 0;
      }
    }
  }

  result = 0;
  v10 = *a2;
  if (v10 <= 0x72)
  {
    if (v10 == 83)
    {
      if (a5)
      {
        v11 = -81;
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 84)
      {
        return result;
      }

      if (a5)
      {
        v11 = -34;
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (v10 == 115)
  {
    if (a5)
    {
      v11 = -65;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v10 == 116)
  {
    if (a5)
    {
      v11 = -33;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t __CFToDOSLatin2(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if (a2 - 9633 >= 0xFFFFDAFF)
    {
      v5 = &cp852_from_uni;
      v6 = &unk_183448FD8;
      do
      {
        v7 = &v5[2 * ((v6 - v5) >> 3)];
        v8 = *v7;
        if (v8 <= a2)
        {
          if (v8 >= a2)
          {
LABEL_19:
            v3 = *(v7 + 2);
            goto LABEL_3;
          }

          v5 = v7 + 2;
        }

        else
        {
          v6 = v7 - 2;
        }
      }

      while (v5 <= v6);
      if (a2 - 734 >= 0xFFFFFDC2)
      {
        v9 = &latin2_from_uni;
        v10 = &unk_183449158;
        do
        {
          v7 = &v9[2 * ((v10 - v9) >> 3)];
          v11 = *v7;
          if (v11 <= a2)
          {
            if (v11 >= a2)
            {
              goto LABEL_19;
            }

            v9 = v7 + 2;
          }

          else
          {
            v10 = v7 - 2;
          }
        }

        while (v9 <= v10);
      }
    }

    return 0;
  }

  else
  {
    v3 = a2;
LABEL_3:
    *a3 = v3;
    return 1;
  }
}

BOOL __CFFromDOSLatin2(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = cp852_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSLatin2Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v9 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
  v10 = __CFToDOSLatin2(v9, v9, &v14);
  result = 0;
  if (v10)
  {
    v12 = v14 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5)
    {
      *a4 = v14;
    }

    *a6 = 1;
    result = 2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToWinLatin2(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_19;
  }

  if (a2 - 8483 < 0xFFFFDF83)
  {
LABEL_10:
    if (a2 - 734 >= 0xFFFFFDC2)
    {
      v8 = &latin2_from_uni;
      v9 = &unk_183449158;
      do
      {
        v6 = &v8[2 * ((v9 - v8) >> 3)];
        v10 = *v6;
        if (v10 <= a2)
        {
          if (v10 >= a2)
          {
            goto LABEL_18;
          }

          v8 = v6 + 2;
        }

        else
        {
          v9 = v6 - 2;
        }
      }

      while (v8 <= v9);
    }

    return 0;
  }

  v4 = &cp1250_from_uni;
  v5 = &unk_183449300;
  while (1)
  {
    v6 = &v4[2 * ((v5 - v4) >> 3)];
    v7 = *v6;
    if (v7 <= a2)
    {
      break;
    }

    v5 = v6 - 2;
LABEL_9:
    if (v4 > v5)
    {
      goto LABEL_10;
    }
  }

  if (v7 < a2)
  {
    v4 = v6 + 2;
    goto LABEL_9;
  }

LABEL_18:
  v3 = *(v6 + 2);
LABEL_19:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWinLatin2(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = cp1250_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWinLatin2Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v9 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
  v10 = __CFToWinLatin2(v9, v9, &v14);
  result = 0;
  if (v10)
  {
    v12 = v14 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5)
    {
      *a4 = v14;
    }

    *a6 = 1;
    result = 2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToISOLatin2(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 734 < 0xFFFFFDC2)
  {
    return 0;
  }

  v5 = &latin2_from_uni;
  v6 = &unk_183449158;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromISOLatin2(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0x9F)
  {
    LOWORD(a2) = latin2_to_uni[a2 - 160];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin2Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_7(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 734) >= 0xFDC2u)
    {
      v11 = &latin2_from_uni;
      v12 = &unk_183449158;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t (**__CFStringEncodingGetThaiConverterDefinition(int a1))()
{
  v1 = __CFConverterDOSThai;
  v2 = __CFConverterISOLatinThai;
  if (a1 != 523)
  {
    v2 = 0;
  }

  if (a1 != 1053)
  {
    v1 = v2;
  }

  if (a1 == 21)
  {
    return __CFConverterMacThai;
  }

  else
  {
    return v1;
  }
}

uint64_t __CFToDOSThai(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8365 < 0xFFFFDFF3)
  {
    return 0;
  }

  v5 = &DOSThai_from_uni;
  v6 = &unk_183449648;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSThai(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSThai_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToThaiPrecompose(uint64_t a1, _WORD *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  if (*a2 != 3661 || a2[1] != 3634)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = -45;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToISOLatinThai(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 3676 < 0xFFFFFFA5)
  {
    return 0;
  }

  v5 = &ISOLatinThai_from_uni;
  v6 = &unk_1834498A4;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromISOLatinThai(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    a2 = ISOLatinThai_to_uni[a2 - 161];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacThai(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *a2;
  if (v4 <= 0x7F)
  {
    goto LABEL_2;
  }

  if (a3 < 2 || (a2[1] + 1933) > 2u)
  {
    if (v4 - 8483 >= 0xFFFFDF7D)
    {
      v13 = &MacThai_from_uni;
      v14 = &unk_183449B4A;
      do
      {
        v15 = &v13[2 * ((v14 - v13) >> 3)];
        v16 = *v15;
        if (v16 <= v4)
        {
          if (v16 >= v4)
          {
            LOBYTE(v4) = *(v15 + 2);
LABEL_2:
            *a4 = v4;
            return 1;
          }

          v13 = v15 + 2;
        }

        else
        {
          v14 = v15 - 2;
        }
      }

      while (v13 <= v14);
    }

    return 0;
  }

  v6 = *(&off_1E6DD2938 + (a2[1] + 1933));
  if (*v6 > v4)
  {
    return 0;
  }

  v7 = &v6[2 * qword_183449C50[(a2[1] + 1933)]];
  v9 = *(v7 - 2);
  v8 = v7 - 2;
  if (v9 < v4 || v6 > v8)
  {
    return 0;
  }

  while (1)
  {
    v11 = &v6[2 * ((v8 - v6) >> 3)];
    v12 = *v11;
    if (v12 <= v4)
    {
      break;
    }

    v8 = v11 - 2;
LABEL_14:
    result = 0;
    if (v6 > v8)
    {
      return result;
    }
  }

  if (v12 < v4)
  {
    v6 = v11 + 2;
    goto LABEL_14;
  }

  *a4 = *(v11 + 2);
  return 2;
}

BOOL __CFFromMacThai(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = MacThai_to_uni[a2 & 0x7F];
    result = a2 != 65533;
  }

  else
  {
    result = 1;
  }

  *a3 = a2;
  return result;
}

uint64_t __CFToMacThaiLen(uint64_t a1, __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if ((v4 + 1930) < 0xFFFDu)
    {
      ++result;
    }
  }

  return result;
}

void *__mdict_keysOfEntriesWithOptionsPassingTest_block_invoke(void *result, uint64_t a2)
{
  v2 = *(result[6] + 8 * a2);
  if (v2)
  {
    v3 = v2 == &___NSDictionaryM_DeletedMarker;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = *(result[7] + 8 * a2);
    v6 = _CFAutoreleasePoolPush();
    if ((*(v4[5] + 16))())
    {
      os_unfair_lock_lock(v4[8]);
      [v4[4] addObject:v2];
      os_unfair_lock_unlock(v4[8]);
    }

    return _CFAutoreleasePoolPop(v6);
  }

  return result;
}

void sub_183283D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183284FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__mdict_enumerateKeysAndObjectsWithOptionsUsingBlock_block_invoke(void *result, uint64_t a2)
{
  v2 = *(result[5] + 8 * a2);
  if (v2)
  {
    v3 = v2 == &___NSDictionaryM_DeletedMarker;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = result;
    v6 = _CFAutoreleasePoolPush();
    v7 = *(v5[6] + 8 * a2);
    __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(v5[4]);

    return _CFAutoreleasePoolPop(v6);
  }

  return result;
}

void *__mdict_keyOfEntryWithOptionsPassingTest_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[6] + 8 * a2);
  if (v3)
  {
    v4 = v3 == &___NSDictionaryM_DeletedMarker;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = result;
    v7 = *(result[7] + 8 * a2);
    v8 = _CFAutoreleasePoolPush();
    if ((*(v6[4] + 16))())
    {
      atomic_store(v3, (*(v6[5] + 8) + 24));
      *a3 = 1;
    }

    return _CFAutoreleasePoolPop(v8);
  }

  return result;
}

uint64_t _compare_clumpiness_2(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void *__CFGenerateReport()
{
  v68 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = ____CFGenerateReport_block_invoke;
  v25 = &unk_1E6DD29D0;
  v26 = &v32;
  v27 = &v28;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *v36 = 0u;
  v37 = 0u;
  v0 = backtrace(v36, 128);
  v1 = backtrace_symbols(v36, v0);
  v2 = 0;
  if (v0 > 0xFFFFFFFA)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v3 = v0 + 5;
  v4 = 0;
  if (v3 >> 61)
  {
    goto LABEL_14;
  }

  v5 = malloc_type_malloc(8 * v3, 0x10040436913F5uLL);
  v2 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v33[3] = v5;
  v22 = time(0);
  if (v22 == -1)
  {
    goto LABEL_12;
  }

  v6 = asprintf(v33[3], "%s%25s", "Date/Time:     ", "");
  if (v24(v23, v6))
  {
    goto LABEL_12;
  }

  ctime_r(&v22, (*(v33[3] - 8) + 15));
  v21 = 0;
  if (sysctlbyname("kern.osversion", 0, &v21, 0, 0) || (v7 = asprintf(v33[3], "%s%*s", "OS Version:    ", v21, ""), v24(v23, v7)) || sysctlbyname("kern.osversion", (*(v33[3] - 8) + 15), &v21, 0, 0) || (*(*(v33[3] - 8) + v21 + 14) = 10, v8 = v33[3], v9 = getprogname(), v10 = asprintf(v8, "%s%s\n", "Application:   ", v9), v24(v23, v10)) || (v11 = asprintf(v33[3], "\n"), v24(v23, v11)) || (v12 = asprintf(v33[3], "Backtrace:\n"), v24(v23, v12)))
  {
LABEL_12:
    v4 = 0;
    goto LABEL_14;
  }

  if (v0 < 1)
  {
LABEL_26:
    v4 = malloc_type_malloc(v29[3], 0xD79353B1uLL);
    if (v4 && v2 < v33[3])
    {
      v19 = v2;
      do
      {
        v20 = *v19++;
        __stpcpy_chk();
      }

      while (v19 < v33[3]);
    }

LABEL_14:
    if (!v1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = v0;
  v17 = v1;
  while (1)
  {
    v18 = asprintf(v33[3], "%s\n", *v17);
    if (v24(v23, v18))
    {
      break;
    }

    ++v17;
    if (!--v16)
    {
      goto LABEL_26;
    }
  }

  v4 = 0;
LABEL_15:
  free(v1);
LABEL_16:
  if (v2)
  {
    while (1)
    {
      v13 = v33[3];
      if (v2 >= v13)
      {
        break;
      }

      v33[3] = v13 - 8;
      free(*(v13 - 8));
    }

    free(v2);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18328589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const __CFSet *_CFBundleLoadLimitedInfoDictionary(uint64_t a1, const __CFSet *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    _CFBundleLoadLimitedInfoDictionary_cold_1();
  }

  v5[0] = 0;
  result = _CFBundleCopyInfoDictionaryInDirectoryWithVersion(&__kCFAllocatorSystemDefault, *(a1 + 16), v5, a2, *(a1 + 55), *(a1 + 53));
  *(a1 + 24) = result;
  if (*(a1 + 216))
  {
    _CFBundleLoadLimitedInfoDictionary_cold_2();
  }

  *(a1 + 216) = v5[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef _CFBundleCreateFilteredLocalizedInfoPlist(uint64_t a1, void *a2, void *a3, char a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = a3;
  if (a1)
  {
    if (a3)
    {
      v7 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
    }

    else
    {
      v7 = 0;
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    _CFBundleGetStringsSources(a1, a4 & 1, @"InfoPlist", v7, &v20);
    if (v7)
    {
      CFRelease(v7);
    }

    v10 = v21;
    if (v21)
    {
      v11 = *(a1 + 55);
      v12 = v20;
      v13 = a2;
      v14 = 0;
    }

    else
    {
      v10 = *(&v23 + 1);
      v11 = *(a1 + 55);
      v14 = values[0];
      v13 = a2;
      v12 = 0;
    }

    FilteredInfoPlistWithData = _CFBundleCreateFilteredInfoPlistWithData(v10, v13, v11, v14, v12);
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[0] = v20;
    v18[1] = v21;
    _CFBundleReleaseStringsSources_0(v18);
    if (FilteredInfoPlistWithData)
    {
      v16 = _parseBundleStrings(a1, FilteredInfoPlistWithData);
      CFRelease(FilteredInfoPlistWithData);
    }

    else
    {
      v16 = 0;
    }

    v17 = *MEMORY[0x1E69E9840];
    return v16;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

void _CFBundleLogLoadingInfoPlistError(uint64_t a1, CFErrorRef err)
{
  v14 = *MEMORY[0x1E69E9840];
  Domain = CFErrorGetDomain(err);
  Code = CFErrorGetCode(err);
  v6 = _CFBundleResourceLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 134349570;
    v9 = a1;
    v10 = 2114;
    v11 = Domain;
    v12 = 2050;
    v13 = Code;
    _os_log_error_impl(&dword_1830E6000, v6, OS_LOG_TYPE_ERROR, "There was an error parsing the Info.plist for the bundle at URL <%{public}p>: %{public}@ - %{public}ld", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void _CFPrefsImpersonateApplicationWithIdentifierAndPID()
{
  v0 = _CFOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    _CFPrefsImpersonateApplicationWithIdentifierAndPID_cold_1();
  }
}

uint64_t _CFPrefsImpersonateApplicationWithIdentifierAndAuditToken(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  _CFPrefsAuditTokenToImpersonate = *a2;
  *&qword_1EA84A4D4 = v2;
  return _CFPrefsImpersonateApplicationWithIdentifierAndContainerDataPath(a1, 0);
}

void locallySetValueOverlayMergeFunc(void *key, __CFString *value, CFMutableDictionaryRef theDict)
{
  if (value == @"MagicRemovedValue")
  {
    CFDictionaryRemoveValue(theDict, key);
  }

  else
  {
    CFDictionarySetValue(theDict, key, value);
  }
}

void sub_183286ED0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x183286CF8);
  }

  _Unwind_Resume(v10);
}

void sub_183286F28(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_1832872CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *exc_buf)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x18328728CLL);
  }

  _Unwind_Resume(v10);
}

void sub_18328731C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x183287324);
  }

  objc_terminate();
}

void sub_183287D68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x183287CE0);
  }

  _Unwind_Resume(a1);
}

void sub_183288674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18328983C(_Unwind_Exception *a1)
{
  *v1 = a1;
  objc_end_catch();
  _Unwind_Resume(*v1);
}

void sub_18328A57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18328A5C8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18328A5C0);
}

uint64_t _approximateSizeOfPlistValue(__CFString *cf, void *a2, CFIndex *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    _approximateSizeOfPlistValue_cold_1();
  }

  if (!cf)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v6 = CFGetTypeID(cf);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (v6 <= 19)
  {
    if (v6 > 17)
    {
      if (v6 == 18)
      {
        usedBufLen = 0;
        p_usedBufLen = &usedBufLen;
        if (a3)
        {
          p_usedBufLen = a3;
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = ___approximateSizeOfPlistValue_block_invoke;
        v24[3] = &unk_1E6DD2D38;
        v24[4] = &v26;
        v24[5] = p_usedBufLen;
        CFDictionaryApply(cf, v24);
        if (!a2)
        {
          goto LABEL_42;
        }

        Count = CFDictionaryGetCount(cf);
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"dictionary value, count: %ld, total nested objects: %ld, approximate encoded size: %ld", Count, usedBufLen, v27[3]);
      }

      else
      {
        usedBufLen = 0;
        v9 = CFArrayGetCount(cf);
        v10 = &usedBufLen;
        if (a3)
        {
          v10 = a3;
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = ___approximateSizeOfPlistValue_block_invoke_2;
        v23[3] = &unk_1E6DD1658;
        v23[4] = &v26;
        v23[5] = v10;
        CFArrayApply(cf, 0, v9, v23);
        if (!a2)
        {
          goto LABEL_42;
        }

        v11 = CFArrayGetCount(cf);
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"array value, count: %ld, tested nested objects: %ld, approximate encoded size: %ld", v11, usedBufLen, v27[3]);
      }

      goto LABEL_38;
    }

    if (v6 != 7)
    {
      if (v6 != 16 || !a2)
      {
        goto LABEL_42;
      }

      v7 = @"deleted value";
      goto LABEL_41;
    }

    Length = CFStringGetLength(cf);
    usedBufLen = 0;
    v31.location = 0;
    v31.length = Length;
    if (CFStringGetBytes(cf, v31, 0x600u, 0, 0, 0, 0, &usedBufLen))
    {
      v14 = usedBufLen == Length;
    }

    else
    {
      v14 = 0;
    }

    v15 = !v14;
    v16 = Length << v15;
    v27[3] = v16;
    if (a2)
    {
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"string value, approximate encoded size: %ld", v16);
LABEL_38:
      *a2 = v12;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (v6 > 21)
  {
    if (v6 == 22)
    {
      ByteSize = CFNumberGetByteSize(cf);
      v27[3] = ByteSize;
      if (!a2)
      {
        goto LABEL_42;
      }

      v7 = @"number value";
    }

    else
    {
      if (v6 != 42)
      {
        goto LABEL_42;
      }

      v29 = 8;
      if (!a2)
      {
        goto LABEL_42;
      }

      v7 = @"date value";
    }

    goto LABEL_41;
  }

  if (v6 != 20)
  {
    v29 = 1;
    if (!a2)
    {
      goto LABEL_42;
    }

    v7 = @"BOOLean value";
LABEL_41:
    *a2 = v7;
    goto LABEL_42;
  }

  v17 = CFDataGetLength(cf);
  v27[3] = v17;
  if (a2)
  {
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"data value, size: %ld", v17);
    goto LABEL_38;
  }

LABEL_42:
  if (a3)
  {
    ++*a3;
  }

  v8 = v27[3];
  _Block_object_dispose(&v26, 8);
LABEL_45:
  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _compareSizes(unint64_t a1, unint64_t a2)
{
  v2 = 1;
  if (a1 >= a2)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t ___approximateSizeOfPlistValue_block_invoke(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v5 = *(a1 + 40);
  v6 = _approximateSizeOfPlistValue(cf);
  v7 = *(a1 + 40);
  result = _approximateSizeOfPlistValue(a3);
  *(*(*(a1 + 32) + 8) + 24) += result + v6;
  return result;
}

uint64_t ___approximateSizeOfPlistValue_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 40);
  result = _approximateSizeOfPlistValue(cf);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t (**__CFStringEncodingGetGreekConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_8)
  {
    __CFStringEncodingPrecomposeLatinCharacter_8 = a2(4);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_5 = a2(3);
  }

  if (a1 > 1028)
  {
    if (a1 != 1029)
    {
      if (a1 == 1283)
      {
        return __CFConverterWindowsGreek;
      }

      return 0;
    }

    return __CFConverterDOSGreek;
  }

  else
  {
    if (a1 != 6)
    {
      if (a1 == 519)
      {
        return __CFConverterISOLatinGreek;
      }

      return 0;
    }

    return __CFConverterMacGreek;
  }
}

uint64_t __CFToISOLatinGreek(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8218 < 0xFFFFE089)
  {
    return 0;
  }

  v5 = &ISOLatinGreek_from_uni;
  v6 = &unk_18344A0C0;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromISOLatinGreek(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    a2 = ISOLatinGreek_to_uni[a2 - 161];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToISOLatinGreekPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v9 = __CFPrecomposeGreekCharacter(a2, a3, v16);
  if (v9 > 0xA0)
  {
    if ((v9 - 8218) >= 0xE089u)
    {
      v11 = &ISOLatinGreek_from_uni;
      v12 = &unk_18344A0C0;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  if (!v9)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  result = v16[0];
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFPrecomposeGreekCharacter(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  *a3 = 2;
  v3 = *a1;
  if (v3 <= 0x7F)
  {
    return __CFStringEncodingPrecomposeLatinCharacter_8();
  }

  v5 = a1[1] | (v3 << 16);
  if (v5 > 0x3D20308)
  {
    return 65533;
  }

  v6 = &__CFGreekPrecompMap;
  v7 = &unk_18344A244;
  while (1)
  {
    v8 = &v6[8 * ((v7 - v6) >> 4)];
    if (*v8 <= v5)
    {
      break;
    }

    v7 = v8 - 8;
LABEL_9:
    if (v6 > v7)
    {
      return 65533;
    }
  }

  if (*v8 < v5)
  {
    v6 = v8 + 8;
    goto LABEL_9;
  }

  v9 = *(v8 + 2);
  if (a2 >= 3 && a1[2] == 769)
  {
    if (v9 == 971)
    {
      *a3 = 3;
      return 944;
    }

    else if (v9 == 970)
    {
      *a3 = 3;
      return 912;
    }
  }

  return v9;
}

uint64_t __CFToMacGreek(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8806 < 0xFFFFDE3A)
  {
    return 0;
  }

  v5 = &MacGreek_from_uni;
  v6 = &unk_18344A448;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromMacGreek(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = MacGreek_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacGreekPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v9 = __CFPrecomposeGreekCharacter(a2, a3, v16);
  if (v9 > 0x7F)
  {
    if ((v9 - 8806) >= 0xDE3Au)
    {
      v11 = &MacGreek_from_uni;
      v12 = &unk_18344A448;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  if (!v9)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  result = v16[0];
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToDOSGreek(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSGreek_from_uni;
  v6 = &unk_18344A748;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSGreek(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSGreek_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSGreekPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v9 = __CFPrecomposeGreekCharacter(a2, a3, v16);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSGreek_from_uni;
      v12 = &unk_18344A748;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  if (!v9)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  result = v16[0];
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToWindowsGreek(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8483 < 0xFFFFDF7D)
  {
    return 0;
  }

  v5 = &WindowsGreek_from_uni;
  v6 = &unk_18344AA04;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWindowsGreek(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = WindowsGreek_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWindowsGreekPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v9 = __CFPrecomposeGreekCharacter(a2, a3, v16);
  if (v9 > 0x7F)
  {
    if ((v9 - 8483) >= 0xDF7Du)
    {
      v11 = &WindowsGreek_from_uni;
      v12 = &unk_18344AA04;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_2:
  if (!v9)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  result = v16[0];
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFReallocationFailed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (!a3 || (result = (*(a3 + 16))(a3, a1, &v8), (v8 & 1) == 0))
  {
    bzero(__str, 0x100uLL);
    v6 = snprintf(__str, 0x100uLL, "Failed to grow buffer to %ld", a2);
    v7 = CFStringCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, __str, v6, 0x600u, 0, 0);
    if (!v7)
    {
      _CFRaiseMemoryException(@"Failed to grow buffer - malloc failure");
    }

    _CFRaiseMemoryException(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFBinaryPlistCreateObjectFiltered_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_fault_impl(&dword_1830E6000, log, OS_LOG_TYPE_FAULT, "Too many nested arrays or dictionaries", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void CFBundleGetMainBundle_cold_1(uint64_t a1, NSObject *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v6 = 138543618;
  v7 = a1;
  v8 = 2048;
  v9 = v4;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "main bundle %{public}@ getting handle %p", &v6, 0x16u);
  *a3 = _mainBundle;
  v5 = *MEMORY[0x1E69E9840];
}

void _CFURLCreateResolvedDirectoryWithString_cold_2(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1830E6000, a1, OS_LOG_TYPE_ERROR, "Unable to resolve directory (%d)", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFBundleCreate_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "Unable to create bundle at URL (%@): unable to create file system representation of URL (%d)", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFBundleCreate_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1830E6000, v0, v1, "Unable to create bundle at URL (%@): malloc failure", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleCreate_cold_8(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_1830E6000, v4, OS_LOG_TYPE_DEBUG, "Unable to create bundle at URL (%@): does not exist or not a directory (%d)", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleCreate_cold_10()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1830E6000, v0, v1, "Unable to create bundle at URL (%@): normalized URL null", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleLoadExecutableAndReturnError_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1830E6000, v0, v1, "Cannot find executable for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleLoadExecutableAndReturnError_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1830E6000, v0, v1, "Attempt to load executable of a type that cannot be dynamically loaded for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleLoadExecutableAndReturnError_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1830E6000, v0, v1, "Cannot recognize type of executable for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleEnsureBundleExistsForImagePath_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1830E6000, v0, v1, "Ensure bundle %{private}@ set loaded fallback", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleEnsureBundleExistsForImagePath_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1830E6000, v0, v1, "Ensure bundle exists failed for path %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleAddToTablesLocked_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1830E6000, v0, v1, "More than one bundle with the same identifier has been added: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleGetBundleVersionForURL_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1830E6000, v0, v1, "Extensions of wrapped bundles did not match (one missing) at %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleGetBundleVersionForURL_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1830E6000, v0, v1, "Extensions of wrapped bundles did not match at %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleGetBundleVersionForURL_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleGetBundleVersionForURL_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v6 = *MEMORY[0x1E69E9840];
}

void CFCharacterSetGetPredefined_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFLog(3, @"%s: Unknown builtin type %ld", a3, a4, a5, a6, a7, a8, "CFCharacterSetRef CFCharacterSetGetPredefined(CFCharacterSetPredefinedSet)");
  qword_1EA849A30 = "Unknown builtin CFCharacterSet type";
  __break(1u);
}

void __CFDataHandleOutOfMemory(uint64_t a1)
{
  if ((a1 - 1) > 0x3FFFFFFFFFELL)
  {
    v1 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"Attempt to allocate %ld bytes for NS/CFData failed. Maximum size: %lld", a1, 0x3FFFFFFFFFFLL);
  }

  else
  {
    v1 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"Attempt to allocate %ld bytes for NS/CFData failed", a1);
  }

  _CFRaiseMemoryException(v1);
}

void CFDataGetBytes_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (<0)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataGetBytes_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "length cannot be less than zero", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataGetBytes_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "ending index out of bounds", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataGetBytes_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (>len)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataReplaceBytes_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (<0)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataReplaceBytes_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "length cannot be less than zero", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataReplaceBytes_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "ending index out of bounds", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataReplaceBytes_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (>len)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataFind_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (<0)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataFind_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "length cannot be less than zero", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataFind_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "ending index out of bounds", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFDataFind_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = _CFOSLog();
  if (OUTLINED_FUNCTION_1_3(v0))
  {
    OUTLINED_FUNCTION_0_3(&dword_1830E6000, v1, v2, "range.location out of range (>len)", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void CFGregorianDateIsValid_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Month %d is out of bounds", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __ResetUDateFormat_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "Error: CFDateFormatter time zone has an empty name: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFErrorSetCallStackReturnAddresses_cold_1(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_setAssociatedObject(a1, "CFErrorCallStacks", [MEMORY[0x1E696AF00] callStackReturnAddresses], 0x301);

  objc_autoreleasePoolPop(v2);
}

void deallocatePurgeable_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67240192;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "couldn't deallocate purgable buffer. Leaking it to avoid crashing. Error was %{public}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void _cfmp_log_failure_cold_1(uint64_t a1, unsigned __int8 a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136446722;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  v8 = 1024;
  v9 = a3;
  _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** %{public}s, break on '_CFMachPortDeallocationFailure' to debug: {null - ic:%d,ip:%d}", &v4, 0x18u);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnCheckLoaded_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadBundle_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadBundle_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v7 = *MEMORY[0x1E69E9840];
  strlen(v0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadBundle_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_1830E6000, v0, OS_LOG_TYPE_ERROR, "Cannot find executable for bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadFramework_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadFramework_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v7 = *MEMORY[0x1E69E9840];
  strlen(v0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnLoadFramework_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_1830E6000, v0, OS_LOG_TYPE_ERROR, "Cannot find executable for bundle %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnUnload_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnUnload_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleDlfcnGetSymbolByNameWithSearch_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v6 = *MEMORY[0x1E69E9840];
  dlerror();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFBundleCopyLoadedImagePathForPointer_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreateWithPort4_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreateWithPort4_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "*** CFMachPortCreateWithPort(): allocation failure", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreateWithPort4_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreateReply_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "*** _CFMachPortCreateReply failed. mach_port_construct() returned %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreate4_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFMachPortCreate4_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "*** CFMachPortCreate failed. mach_port_allocate() returned %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __CFMessagePortCreateLocal_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1830E6000, a1, a3, "*** CFMessagePortCreateLocal(): existing port invalid", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __CFMessagePortCreateLocal_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1830E6000, a1, a3, "*** CFMessagePortCreateLocal(): CFMachPortCreate() failed", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void __CFMessagePortCreateLocal_cold_3(int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5[0] = 67240448;
  v5[1] = a2;
  v6 = 1026;
  v7 = v3;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "*** CFMessagePortCreateLocal(): mach_port_insert_right(MACH_MSG_TYPE_MAKE_SEND) returned %{public}d, port = %{public}d", v5, 0xEu);
  v4 = *MEMORY[0x1E69E9840];
}

void __CFMessagePortCreateLocal_cold_4(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67240192;
  v4[1] = v2;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "*** CFMessagePortCreateLocal(): CFMachPortCreateWithPort() failed, port = %{public}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __CFMessagePortCreateLocal_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6(&dword_1830E6000, a1, a3, "*** CFMessagePortCreateLocal(): memory allocation failed", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void _CFXNotificationPost_cold_1(double a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Detected potentially harmful notification post rate of %g notifications per second", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFThrowFormattedException(uint64_t a1, CFStringRef format, ...)
{
  va_start(va, format);
  v6 = *MEMORY[0x1E69E9840];
  v4 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
  CFAutorelease(v4);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = format;
  }

  objc_exception_throw([NSException exceptionWithName:a1 reason:v5 userInfo:0, va, v6]);
}

void __remoteStoreChanged_block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 domain];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "cloud preferences changed for %{public}@", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void _NSArrayRaiseBoundException(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = _os_log_pack_size();
  v9 = v18 - ((MEMORY[0x1EEE9AC00](v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _os_log_pack_fill();
  v11 = PROEM_CLS();
  v12 = PROEM_SEL(a2);
  if (a3 >> 62)
  {
    v13 = " (or possibly larger)";
  }

  else
  {
    v13 = "";
  }

  __os_log_helper_1_2_5_8_32_8_32_8_0_8_32_8_0(v10, v11, v12, a3, v13, a4);
  v14 = PROEM_CLS();
  v15 = PROEM_SEL(a2);
  v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"[%s %s]: index (%ld%s) beyond bounds (%ld)", v14, v15, a3, v13, a4);
  v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v9, v7];
  objc_exception_throw(v17);
}

void _NSArrayRaiseInsertNilException(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = _os_log_pack_size();
  v5 = v13 - ((MEMORY[0x1EEE9AC00](v3, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _os_log_pack_fill();
  v7 = PROEM_CLS();
  v8 = PROEM_SEL(a2);
  *v6 = 136315394;
  *(v6 + 4) = v7;
  *(v6 + 12) = 2080;
  *(v6 + 14) = v8;
  v9 = PROEM_CLS();
  v10 = PROEM_SEL(a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"[%s %s]: attempt to insert nil", v9, v10);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v5, v3];
  objc_exception_throw(v12);
}

void _CFCopyHomeDirURLForUser_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "_CFCopyHomeDirURLForUser failed to create a proper home directory. Falling back to /var/empty. Error(s):\n%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void CFPlugInInstanceCreate_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_6_0(&dword_1830E6000, v0, v1, "Factory %{public}@ does not support type %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInInstanceCreate_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "Created instance of plugin for factory %{public}@ type %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInInstanceCreate_cold_7(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 16));
  OUTLINED_FUNCTION_3_1(&dword_1830E6000, a2, a3, "Attempted to create instance, but factory %{public}@ is disabled", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFPlugInInstanceCreate_cold_9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_1(&dword_1830E6000, v0, v1, "Cannot find factory %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPFactoryCommonCreateLocked_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "Registered factory %{public}@ (%{public}@)");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInUnregisterFactory_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_1(&dword_1830E6000, v0, v1, "UnregisterFactory: No factory registered for id %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPFactoryDisableLocked_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 16));
  OUTLINED_FUNCTION_3_1(&dword_1830E6000, a2, a3, "Factory %{public}@ has been disabled", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _CFPlugInRegisterPlugInTypeLocked_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v3, v4, "Type %{public}@ added to factory %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

void _CFPlugInRegisterPlugInTypeLocked_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_1(&dword_1830E6000, v0, v1, "RegisterPlugInType: No factory registered for id %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void CFPlugInUnregisterPlugInType_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_6_0(&dword_1830E6000, v0, v1, "UnregisterPlugInType: No factory registered for id %{public}@ type %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPFactoryRemoveTypeLocked_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v3, v4, "Type %{public}@ removed from factory %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

void CFPlugInAddInstanceForFactory_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "AddInstanceForFactory: Added instance on %p for %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInAddInstanceForFactory_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_1(&dword_1830E6000, v0, v1, "AddInstanceForFactory: No factory registered for id %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void CFPlugInRemoveInstanceForFactory_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "RemoveInstanceForFactory: Removed instance on %p for %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInRemoveInstanceForFactory_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_1(&dword_1830E6000, v0, v1, "RemoveInstanceForFactory: No factory registered for id %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPFactoryRemoveInstanceLocked_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(&dword_1830E6000, v0, v1, "PlugIn %{public}@ is now scheduled for unloading", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFBundleInitPlugIn_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(&dword_1830E6000, v0, v1, "Bundle %{public}@ contains a factory UUID of 00000000-0000-0000-0000-000000000000 with function 'MyFactoryFunction'. This bundle is not a valid plugin.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _CFBundleInitPlugIn_cold_3(void *a1, const CFArrayCallBacks *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  *__CFBundleGetPlugInData(a1) = 1;
  *(__CFBundleGetPlugInData(a1) + 1) = 1;
  *(__CFBundleGetPlugInData(a1) + 2) = 0;
  *(__CFBundleGetPlugInData(a1) + 3) = 0;
  *(__CFBundleGetPlugInData(a1) + 8) = 0;
  *(__CFBundleGetPlugInData(a1) + 12) = 0;
  *(__CFBundleGetPlugInData(a1) + 4) = 1;
  v8 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v8, 0, a2);
  *(__CFBundleGetPlugInData(a1) + 16) = Mutable;
  CFDictionaryApplyFunction(a3, _registerFactoryLocked, a1);
  Value = CFDictionaryGetValue(a4, @"CFPlugInTypes");
  if (Value)
  {
    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 == CFDictionaryGetTypeID())
    {
      CFDictionaryApplyFunction(v11, _registerTypeLocked, a1);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

void _registerTypeLocked_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "Registering factory %{public}@ type %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void _CFBundleDeallocatePlugIn_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(*(__CFBundleGetPlugInData(a1) + 16));
  OUTLINED_FUNCTION_5_1(&dword_1830E6000, v1, v2, "Disabling factories in array %{public}p for bundle %{public}p", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x1E69E9840];
}

void _CFPFactoryDeallocate_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1830E6000, v0, v1, "Unregistered factory %{public}@ (%{public}@)");
  v2 = *MEMORY[0x1E69E9840];
}

void CFPlugInFindFactoriesForPlugInType_cold_2(const __CFArray *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CFArrayGetCount(a1);
  }

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_1(&dword_1830E6000, v1, v2, "%{public}ld factories found for requested plugin type %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CFRunLoopAddCommonMode_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopGetNextTimerFireDate_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopIsWaiting_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopStop_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopContainsObserver_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopAddObserver_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopRemoveObserver_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopContainsTimer_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopAddTimer_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopRemoveTimer_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void __CFRunLoopServiceMachPort_cold_1(char *a1)
{
  if ((~a1 & 0x1000400B) != 0 && (a1 & 0x1000400C) != 0x1000400C)
  {
    a1 = mach_error_string(a1);
LABEL_4:
    qword_1EA849A30 = a1;
LABEL_5:
    __break(1u);
  }

  HIDWORD(v1) = (a1 & 0x3E00) - 1024;
  LODWORD(v1) = HIDWORD(v1);
  a1 = "Out of IPC space";
  switch((v1 >> 10))
  {
    case 0u:
      a1 = "Kernel resource shortage handling out-of-line memory";
      goto LABEL_4;
    case 1u:
      a1 = "Kernel resource shortage handling IPC";
      goto LABEL_4;
    case 3u:
      a1 = "Out of VM address space";
      goto LABEL_4;
    case 7u:
      goto LABEL_4;
    default:
      goto LABEL_5;
  }
}

CFIndex _CFRetain_cold_3(const void *a1, void *a2)
{
  result = CFGetRetainCount(a1);
  if (__CFOASafe == 1 && __CFObjectAllocRecordAllocationFunction != 0)
  {
    result = __CFObjectAllocRecordAllocationFunction(28, a1, 0, result, 0);
  }

  *a2 = a1;
  return result;
}

void _CFRelease_cold_1(char *__str, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    snprintf(__str, 0x100uLL, "Detected over-release of a CFTypeRef %p (%lu / %s)");
  }

  else
  {
    snprintf(__str, 0x100uLL, "Detected over-release of a CFTypeRef %p (unknown type)");
  }

  qword_1EA849A30 = __str;
  __break(1u);
}

uint64_t _CFRelease_cold_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__CFObjectAllocRecordAllocationFunction)
  {
    return OUTLINED_FUNCTION_0_8(29, result, 0, a2, a5, __CFObjectAllocRecordAllocationFunction);
  }

  return result;
}

void CFQSortArray_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFLog(3, @"unable to qsort array - malloc failed", a3, a4, a5, a6, a7, a8, vars0);
  qword_1EA849A30 = "qsort - malloc failed";
  __break(1u);
}

void CFMergeSortArray_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFLog(3, @"unable to mergesort array - malloc failed", a3, a4, a5, a6, a7, a8, vars0);
  qword_1EA849A30 = "merge sort - malloc failure";
  __break(1u);
}

void __CFStringAppendFormatCore_cold_1(unint64_t *a1, const char **a2)
{
  v3 = a1;
  v7 = *MEMORY[0x1E69E9840];
  CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
  memset(&v6, 0, sizeof(v6));
  if (CStringPtrInternal && dladdr(CStringPtrInternal, &v6))
  {
    if (__CFStringAppendFormatCore_warnOnce != -1)
    {
      dispatch_once(&__CFStringAppendFormatCore_warnOnce, &__block_literal_global_162);
    }

    v3 = "";
  }

  *a2 = v3;
  v5 = *MEMORY[0x1E69E9840];
}

void CFStringAppendFormat_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringSetExternalCharactersNoCopy_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringInsert_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringDelete_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringReplace_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringReplaceAll_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringAppend_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringAppendCharacters_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringAppendPascalString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringAppendCString_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringAppendFormatAndArguments_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringFindAndReplace_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringPad_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringTrim_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringTrimWhitespace_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringLowercase_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringUppercase_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringCapitalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringNormalize_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void CFStringFold_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_1830E6000, a1, a3, "CFString: %s(): Expect mutable string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136315394;
  v5 = a1;
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "Error getting app group containers for %s: %s", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFPrefsValidateValueForKey_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_fault_impl(&dword_1830E6000, v0, OS_LOG_TYPE_FAULT, "Attempt to set a non-property-list object %{public}@ as an NSUserDefaults/CFPreferences value for key %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __CFURLCopyParameterString_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138477827;
  v5 = v2;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "CFURLCopyParameterString is deprecated and now always returns NULL. The path component now includes the part of the URL string which CFURLCopyParameterString used to return.\nURL = %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __CFURLCopyParameterString_block_invoke_35_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138477827;
  v5 = v2;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "CFURLCopyParameterString is deprecated and now always returns NULL. The path component now includes the part of the URL string which CFURLCopyParameterString used to return.\nURL = %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void *_CFVolumeObserverCreate(__objc2_class **a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_47;
  }

  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00403EDB4BFFuLL);
  if (!v8)
  {
    goto LABEL_47;
  }

  v13 = v8;
  if (qword_1EA84A278 != -1)
  {
    dispatch_once(&qword_1EA84A278, &__block_literal_global_17_0);
  }

  if (!_MergedGlobals_58)
  {
    goto LABEL_46;
  }

  if (qword_1EA84A270 != -1)
  {
    dispatch_once(&qword_1EA84A270, &__block_literal_global_27);
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x41uLL, 8, 0, v9, v10, v11, v12);
  if (!Instance)
  {
LABEL_46:
    free(v13);
LABEL_47:
    v15 = 0;
    goto LABEL_48;
  }

  v15 = Instance;
  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (snprintf(__str, 0x400uLL, "com.apple.CFVolumeObserver.%p", v15) >= 0x400)
  {
    v17 = *(v13 + 1);
  }

  else
  {
    v17 = dispatch_queue_create(__str, v16);
    *(v13 + 1) = v17;
  }

  if (!v17)
  {
LABEL_45:
    CFRelease(v15);
    goto LABEL_46;
  }

  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = _Block_copy(a4);
  if (qword_1EA84A280 != -1)
  {
    dispatch_once(&qword_1EA84A280, &__block_literal_global_23);
  }

  if (!_MergedGlobals)
  {
    *(v13 + 6) = 0;
    goto LABEL_44;
  }

  v18 = _MergedGlobals(a1);
  *(v13 + 6) = v18;
  if (!v18)
  {
LABEL_44:
    _Block_release(*(v13 + 5));
    dispatch_release(*(v13 + 1));
    goto LABEL_45;
  }

  v19 = OUTLINED_FUNCTION_1_7();
  Mutable = CFDictionaryCreateMutable(v19, v20, v21, v22);
  *(v13 + 7) = Mutable;
  if (!Mutable)
  {
LABEL_51:
    CFRelease(*(v13 + 6));
    goto LABEL_44;
  }

  v24 = OUTLINED_FUNCTION_1_7();
  v27 = CFArrayCreateMutable(v24, v25, v26);
  *(v13 + 8) = v27;
  if (!v27)
  {
LABEL_50:
    CFRelease(*(v13 + 7));
    goto LABEL_51;
  }

  v28 = OUTLINED_FUNCTION_1_7();
  v31 = CFSetCreateMutable(v28, v29, v30);
  *(v13 + 9) = v31;
  if (!v31)
  {
    CFRelease(*(v13 + 8));
    goto LABEL_50;
  }

  v32 = *(v13 + 6);
  if (qword_1EA84A288 != -1)
  {
    dispatch_once(&qword_1EA84A288, &__block_literal_global_30);
  }

  if (qword_1ED40B0F0)
  {
    v33 = OUTLINED_FUNCTION_0_11();
    v34(v33);
  }

  v35 = *(v13 + 6);
  if (qword_1EA84A290 != -1)
  {
    dispatch_once(&qword_1EA84A290, &__block_literal_global_38_0);
  }

  if (qword_1ED40B0F8)
  {
    v36 = OUTLINED_FUNCTION_1_7();
    v37(v36);
  }

  v38 = *(v13 + 6);
  if (qword_1EA84A298 != -1)
  {
    dispatch_once(&qword_1EA84A298, &__block_literal_global_42);
  }

  if (qword_1ED40B100)
  {
    v39 = OUTLINED_FUNCTION_0_11();
    v40(v39);
  }

  v41 = *(v13 + 6);
  if (qword_1EA84A2A0 != -1)
  {
    dispatch_once(&qword_1EA84A2A0, &__block_literal_global_46);
  }

  if (qword_1ED40B108)
  {
    v42 = OUTLINED_FUNCTION_0_11();
    v43(v42);
  }

  v44 = *(v13 + 6);
  if (qword_1EA84A2A8 != -1)
  {
    dispatch_once(&qword_1EA84A2A8, &__block_literal_global_50);
  }

  if (off_1ED40B110)
  {
    off_1ED40B110(v44, _VolumeObserverIdleCallback, v13);
  }

  v13[80] = a3 & 1;
  *v13 = 1;
  v15[2] = v13;
  __CFDiskArbitration_DASessionSetDispatchQueue(*(v13 + 6), *(v13 + 1));
  if ((a2 & 0x20) != 0)
  {
    v45 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 1));
    *(v13 + 2) = v45;
    if (v45)
    {
      v46 = v45;
      v47 = dispatch_time(0, 100000000);
      dispatch_source_set_timer(v46, v47, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      v48 = *(v13 + 2);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = ___VolumeObserverInstallIdleTimer_block_invoke;
      handler[3] = &__block_descriptor_tmp_56;
      handler[4] = v13;
      dispatch_source_set_event_handler(v48, handler);
      dispatch_resume(*(v13 + 2));
    }
  }

LABEL_48:
  v49 = *MEMORY[0x1E69E9840];
  return v15;
}

void __cficu_ucal_getNow_cold_2(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "ucal_getNow(); // %f", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t ___forwarding____cold_1(uint64_t a1, __n128 *a2, __n128 **a3)
{
  AtomTarget = getAtomTarget(a1);
  a2->n128_u64[0] = AtomTarget;
  result = __invoking___(MEMORY[0x1E69E5918], a2, a2, 1024);
  if (a2->n128_u64[0] == AtomTarget)
  {
    a2->n128_u64[0] = a1;
  }

  *a3 = a2;
  return result;
}

void ___forwarding____cold_2(char *a1, id a2)
{
  ClassName = object_getClassName(a2);
  snprintf(a1, 0x100uLL, "*** NSForwarding: object %p of class '%s' does not implement forwardInvocation:", a2, ClassName);
  qword_1EA849A30 = a1;
  __break(1u);
}

void ___forwarding____cold_5(void *a1)
{
  object_getClassName(a1);
  CFLog(4, @"*** NSForwarding: warning: object %p of class '%s' does not implement doesNotRecognizeSelector: -- abort", v2, v3, v4, v5, v6, v7, a1);
  __break(1u);
}

void ___forwarding____cold_6(int a1, uint64_t a2, SEL sel)
{
  if (__CFOASafe == 1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  sel_getName(sel);
  CFLog(3, @"*** [%s %s]: message sent to deallocated instance %p", v5, v6, v7, v8, v9, v10, a2 + 10);
  __break(1u);
}

void __block_forwarding____cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__CFOASafe == 1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  CFLog(3, @"*** NSBlockInvocation: invocation of deallocated Block instance %p", a3, a4, a5, a6, a7, a8, a1);
  __break(1u);
}

void _CFPreferencesCopyManagedPreferencesContainerURL_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPreferencesCopyManagedPreferencesContainerURL_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPreferencesGetUserIdentifierForUID_cold_1(int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1830E6000, log, OS_LOG_TYPE_ERROR, "_CFPreferencesGetUserIdentifierForUID(): Could not resolve user with UID %i: %{darwin.errno}d", v5, 0xEu);
  v4 = *MEMORY[0x1E69E9840];
}

void _CFPrefsTemporaryFDToWriteTo_cold_1(int a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  strerror(a1);
  OUTLINED_FUNCTION_2_4();
  v7 = 2081;
  v8 = a2;
  _os_log_fault_impl(&dword_1830E6000, a3, OS_LOG_TYPE_FAULT, "error %{public}s creating file %{private}s", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFPrefsTemporaryFDToWriteTo_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "failed to get file system representation for temporary file path appropriate", v3, 2u);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsTemporaryFDToWriteTo_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  _os_log_error_impl(&dword_1830E6000, v0, OS_LOG_TYPE_ERROR, "failed to get file system representation for url: %{private}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFPrefsTemporaryFDToWriteTo_cold_4()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(&dword_1830E6000, v1, OS_LOG_TYPE_ERROR, "Simulating out of disk space on creation", v3, 2u);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_14(&dword_1830E6000, v0, v1, "CFPreferences: error writing file %s: %{darwin.errno}d\n");
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_14(&dword_1830E6000, v0, v1, "CFPreferences: error fsyncing file %s: %{darwin.errno}d\n");
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  LOWORD(v4) = 2080;
  *(&v4 + 2) = a1;
  OUTLINED_FUNCTION_0_14(&dword_1830E6000, a2, a3, "error %d setting do-not-back-up attribute on file %s", 67109378, v4);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_4();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "wrote file %{public}s", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_6()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFPrefsWritePlistToFDThenClose_cold_8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_9();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __CFRequireConcreteImplementation(objc_class *a1, objc_class *a2, const char *a3)
{
  v6 = objc_opt_class();
  v7 = v6;
  if (v6 == a1)
  {
    v8 = __CFFullMethodName(v6, a2, a3);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an instance (%p) of an abstract class.  Create a concrete instance!", v8, a2);
  }

  else
  {
    v10 = __CFFullMethodName(a1, a2, a3);
    v11 = __CFFullMethodName(v7, a2, a3);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method only defined for abstract class.  Define %@!", v10, v11);
  }

  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(v9 userInfo:v9), 0];
  objc_exception_throw(v12);
}

unint64_t makeAtom_cold_1(unint64_t result, unint64_t *a2)
{
  if (!*MEMORY[0x1E69E5908])
  {
    v3 = 0;
LABEL_19:
    *a2 = v3;
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    result = _objc_getTaggedPointerTag_2(result);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  v4 = 0;
  while (2)
  {
    v5 = __atom_buckets[v4];
    if (v5)
    {
      v6 = (16 << v4);
      v7 = v6 - 16;
      do
      {
        if (*v5 == v3)
        {
          v3 = (v7 << 7) | 0x8000000000000000;
          v16 = *MEMORY[0x1E69E5910] ^ v3;
          if ((~v16 & 0xC000000000000007) != 0)
          {
            v3 = v16 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (*MEMORY[0x1E69E5910] & 7));
          }

          goto LABEL_19;
        }

        ++v7;
        ++v5;
        --v6;
      }

      while (v6);
      if (++v4 != 24)
      {
        continue;
      }
    }

    break;
  }

  add_explicit = atomic_fetch_add_explicit(&__natoms, 1u, memory_order_relaxed);
  v9 = add_explicit + 1;
  v10 = v3;
  result = flsl(((add_explicit + 1) >> 4) + 1);
  if (result < 25)
  {
    v11 = 1 << (result + 3);
    v12 = add_explicit - v11 + 17;
    v13 = result - 1;
    result = __atom_buckets[v13];
    if (!result)
    {
      result = malloc_type_calloc(8uLL, v11, 0x80040B8603338uLL);
      v14 = 0;
      atomic_compare_exchange_strong(&__atom_buckets[v13], &v14, result);
      if (v14)
      {
        free(result);
        result = __atom_buckets[v13];
      }
    }

    *(result + 8 * v12) = v3;
    __dmb(0xBu);
    v3 = ((((16 * v9) >> 4) & 0xFFFFFFF) << 7) | 0x8000000000000000;
    v15 = *MEMORY[0x1E69E5910] ^ v3;
    if ((~v15 & 0xC000000000000007) != 0)
    {
      v3 = v15 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (*MEMORY[0x1E69E5910] & 7));
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t getAtomTarget_cold_1(uint64_t result, void *a2)
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~result & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ result;
  v4 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v3 & 7) == 0)
  {
    v4 = 0xFFFFFFFFFFFFFLL;
  }

  v5 = v4 & (v3 >> 3);
  if (__natoms < v5 >> 4)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 >> 4;
    result = flsl((v5 >> 8) + 1);
    *a2 = *(*(&__atom_buckets + result - 1) + v7 + (-1 << (result + 3)) + 16);
  }

  return result;
}

uint64_t __CFAllocateObject_cold_1(void *a1)
{
  object_getClassName(a1);

  return __CFSetLastAllocationEventName();
}

void __boundsFail(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = a2;
    v3 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v3, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "__boundsFail", a1, --v10);
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v14, "__boundsFail", a1, v10);
    v8 = _CFAutoreleasePoolAddObject(0, v15);
    v9 = v12;
  }

  else
  {
    v3 = _os_log_pack_size();
    v5 = v16 - ((MEMORY[0x1EEE9AC00](v3, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = _os_log_pack_fill();
    *v6 = 136315394;
    *(v6 + 4) = "__boundsFail";
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "__boundsFail", a1);
    v8 = _CFAutoreleasePoolAddObject(0, v7);
    v9 = v5;
  }

  objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v8 userInfo:0 osLogPack:v9 size:v3]);
}

void _CFBundleGetStringsSources_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_22();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "loctable overridden by installed files. Bundle: %@, table: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __CFBundleCreateStringsFromPlistData_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_22();
  _os_log_error_impl(&dword_1830E6000, v0, OS_LOG_TYPE_ERROR, "Unable to load .strings file: %@ / %@: Top-level object was not a dictionary", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFPrefsSynchronizeForDaemonTermination()
{
  v0 = +[_CFPrefsSynchronizer sharedInstance];

  [(_CFPrefsSynchronizer *)v0 synchronizeForDaemonTermination];
}

void _CFPrefsApplyChangesQueueToDictionary_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(&dword_1830E6000, v0, OS_LOG_TYPE_FAULT, "Couldn't apply changes: %{private}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _calculateUserNameForUID_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67240192;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "Could not look up the username for %{public}d after three tries", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsGetFixedUpDomainForMessage_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "invalid argument (path instead of domain/application identifier) %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsCopyFixedUpContainerForMessage_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_error_impl(&dword_1830E6000, a2, OS_LOG_TYPE_ERROR, "attempt to write to a container %{public}s that does not yet exist. Using client-provided container path without resolving symlinks.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsSetDirectModeConnection(void *a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = v2;
  [(_CFXPreferences *)v2 _replaceDirectConnection:a1];
}

void _CFXPreferencesRemoveNamedVolatileSource(__CFString *a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = v2;
  [(_CFXPreferences *)v2 removeVolatileSourceForName:a1];
}

void _CFPreferencesSetAppCloudSyncEnabled()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v6 = v0;
  OUTLINED_FUNCTION_7_2();
  [(_CFXPreferences *)v1 setCloudSyncEnabled:v2 forKey:v3 appIdentifier:v4 container:v5];
}

void _CFPreferencesAppFullCloudSynchronizeWithConfiguration()
{
  OUTLINED_FUNCTION_4_5();
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v2 = v0;
  OUTLINED_FUNCTION_7_2();
  [_CFXPreferences fullCloudSynchronizeForAppIdentifier:v1 container:? configurationURL:? completionHandler:?];
}

void _CFPreferencesAppPreload()
{
  OUTLINED_FUNCTION_4_5();
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v0 = [qword_1ED40BE18 copyPrefs];
    if (v0)
    {
      OUTLINED_FUNCTION_7_2();
      v7 = v1;
      [(CFPrefsSearchListSource *)v2 preloadDomainsForIdentifiers:v3 containers:v4 cloudConfigurationURLs:v5 count:v6 containingPreferences:v1];
      v0 = v7;
    }
  }
}

void CFPreferencesSetMultiple(CFDictionaryRef keysToSet, CFArrayRef keysToRemove, CFStringRef applicationID, CFStringRef userName, CFStringRef hostName)
{
  if ((_CFPrefsCurrentProcessIsCFPrefsD() & 1) == 0)
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    [qword_1ED40BE18 copyPrefs];
  }

  OUTLINED_FUNCTION_10_1();
  [_CFXPreferences setValuesForKeys:v5 removingValuesForKeys:? identifier:? user:? host:? container:?];
}

void _CFPreferencesFlushCachesForIdentifier(__CFString *a1, const void *a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = v4;
  [(_CFXPreferences *)v4 flushCachesForAppIdentifier:a1 user:a2];
}

void _CFPrefsIsUserManaged_cold_1(int a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = "enabled";
  if (a1 != 1)
  {
    v3 = "disabled";
  }

  v5 = 136446467;
  v6 = v3;
  v7 = 2113;
  v8 = a2;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Managed preferences are %{public}s for %{private}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void _CFBundleCreateFilteredInfoPlistWithData_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138478083;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_28(&dword_1830E6000, a2, a3, "A filtered Info.plist result was not a dictionary at URL %{private}@ (for key paths %{public}@)", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void ___parseBundleStrings_block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_0_28(&dword_1830E6000, a2, a3, "Could not parse markdown while retrieving localized string for key %{public}@ in bundle %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __CFPREFERENCES_HAS_DETECTED_THIS_APP_TRYING_TO_STORE_TOO_MUCH_DATA__(void *a1, const void **a2, const void **a3, CFIndex a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = _CFPrefsClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [a1 copyOSLogDescription];
    v12 = [a1 alreadylocked_copyDictionary];
    v13 = [[_CFPrefsOversizedPlistDescription alloc] initWithDict:v12 setKeys:a2 andValues:a3 count:a4];
    v14 = _CFPrefsClientLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      _CFProcessNameString();
      v16 = 138544130;
      v17 = v11;
      OUTLINED_FUNCTION_8_3();
      v18 = 0x400000;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v13;
      _os_log_fault_impl(&dword_1830E6000, v14, OS_LOG_TYPE_FAULT, "%{public}@: Attempting to store >= %d bytes of data in CFPreferences/NSUserDefaults on this platform is invalid. This is a bug in %{public}@ or a library it uses.\n%@", &v16, 0x26u);
    }

    CFRelease(v11);
    if (v12)
    {
      CFRelease(v12);
    }

    objc_autoreleasePoolPop(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *_CFPrefsTestOversizeWarning()
{
  v0 = OUTLINED_FUNCTION_11_1([_CFPrefsOversizedPlistDescription alloc]);

  return v0;
}

void _CFPrefsImpersonateApplicationWithIdentifierAndPID_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_7_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _copyValueForKey_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_10_2(&dword_1830E6000, v0, v1, "found no value for key %{public}@ in %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void _plistSizeIsAppropriateToRead_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "plist is too large to deserialize in this process: %zu.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _plistSizeIsAppropriateToRead_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_21(&dword_1830E6000, v0, v1, "plist had invalid size: %zu.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}