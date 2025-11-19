void sub_1CA1E9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPSandboxingURLWrapperClass_softClass;
  v7 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_1E8369C70;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA1E9D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QLTInitLogging()
{
  if (QLTInitLogging_once != -1)
  {
    QLTInitLogging_cold_1();
  }
}

id _log()
{
  v0 = qword_1EDAC3C60;
  if (!qword_1EDAC3C60)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C60;
  }

  return v0;
}

id _log_0()
{
  v0 = qltLogHandles[0];
  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v0 = qltLogHandles[0];
  }

  return v0;
}

id _log_1()
{
  v0 = qword_1EDAC3C58;
  if (!qword_1EDAC3C58)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C58;
  }

  return v0;
}

id _log_2()
{
  v0 = qword_1EDAC3C78;
  if (!qword_1EDAC3C78)
  {
    QLTInitLogging();
    v0 = qword_1EDAC3C78;
  }

  return v0;
}

void __QLTInitLogging_block_invoke()
{
  for (i = 0; i != 23; ++i)
  {
    v1 = os_log_create("com.apple.quicklook", _block_invoke_categories[i]);
    v2 = qltLogHandles[i];
    qltLogHandles[i] = v1;
  }
}

Class __QLTImageClassWithError_block_invoke()
{
  result = NSClassFromString(&cfstr_Uiimage.isa);
  QLTImageClassWithError_ImageClass = result;
  return result;
}

void sub_1CA1EA774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGImageRef QLImageCreateForDefaultThumbnailGenerationFromData(void *a1)
{
  v1 = a1;
  v2 = [v1 format];
  v3 = [v1 data];

  v4 = CGDataProviderCreateWithCFData(v3);
  v5 = [v2 width];
  v6 = [v2 height];
  v7 = [v2 bitsPerComponent];
  v8 = [v2 bitsPerPixel];
  v9 = [v2 bytesPerRow];
  DeviceRGB = [v2 colorSpace];
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = DeviceRGB;
  }

  v12 = CGImageCreate(v5, v6, v7, v8, v9, DeviceRGB, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
  if (!v12)
  {
    v13 = [v2 width];
    v14 = [v2 height];
    v15 = [v2 bitsPerComponent];
    v16 = [v2 bitsPerPixel];
    v17 = [v2 bytesPerRow];
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B0]);
    v19 = v18;
    v12 = CGImageCreate(v13, v14, v15, v16, v17, v18, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
    if (!v12)
    {
      v20 = [v2 width];
      v21 = [v2 height];
      v22 = [v2 bitsPerComponent];
      v23 = [v2 bitsPerPixel];
      v24 = [v2 bytesPerRow];
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v26 = DeviceGray;
      v12 = CGImageCreate(v20, v21, v22, v23, v24, DeviceGray, [v2 bitmapInfo], v4, 0, 1, kCGRenderingIntentDefault);
    }
  }

  v27 = v12;
  if (v4)
  {
    CGDataProviderRelease(v4);
  }

  return v27;
}

__CFString *QLThumbnailRepresentationTypeToString(uint64_t a1)
{
  v1 = @"Icon";
  if (a1 == 1)
  {
    v1 = @"LowQualityThumbnail";
  }

  if (a1 == 2)
  {
    return @"Thumbnail";
  }

  else
  {
    return v1;
  }
}

id QLTImageClassWithError(void *a1)
{
  if (QLTImageClassWithError_once != -1)
  {
    QLTImageClassWithError_cold_1();
  }

  if (!QLTImageClassWithError_ImageClass)
  {
    NSLog(&cfstr_QlErrorYouNeed.isa);
    if (a1)
    {
      *a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:103 userInfo:0];
    }
  }

  v2 = QLTImageClassWithError_ImageClass;

  return v2;
}

uint64_t sub_1CA1EB06C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA1EB0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA1EB0DC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA1EB114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ThumbnailExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_1CA1EB15C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA1EB1AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA1EB1E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t QLCompareVersion(const __CFString *a1, const __CFString *cf)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = cf == 0;
    v9 = 1;
    goto LABEL_9;
  }

  if (!cf)
  {
LABEL_47:
    result = 1;
    goto LABEL_48;
  }

  v4 = CFGetTypeID(cf);
  v5 = CFGetTypeID(cf);
  TypeID = CFStringGetTypeID();
  if (v4 != TypeID)
  {
    v8 = v5 == TypeID;
    v9 = -1;
LABEL_9:
    if (v8)
    {
      result = v9;
    }

    else
    {
      result = -v9;
    }

    goto LABEL_48;
  }

  if (v5 != v4)
  {
    goto LABEL_47;
  }

  if (CFEqual(a1, cf))
  {
    result = 0;
    goto LABEL_48;
  }

  Length = CFStringGetLength(a1);
  if ((Length - 101) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v11 = 0;
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v12 = Length;
  v13 = v39;
  v41.location = 0;
  v41.length = Length;
  CFStringGetCharacters(a1, v41, v39);
  v11 = 0;
  while (1)
  {
    v14 = *v13;
    if (v14 - 58 < 0xFFFFFFF6)
    {
      break;
    }

    v11 = (v14 & 0xF) + 10 * v11;
    ++v13;
    v15 = v12-- <= 1;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  if (v14 == 46)
  {
    if (v12 < 2)
    {
      goto LABEL_25;
    }

    v16 = 0;
    ++v13;
    while (1)
    {
      v17 = v12 - 1;
      v14 = *v13;
      if (v14 - 58 < 0xFFFFFFF6)
      {
        break;
      }

      v16 = (v14 & 0xF) + 10 * v16;
      ++v13;
      --v12;
      if ((v17 + 1) <= 2)
      {
        goto LABEL_26;
      }
    }

    if (v14 == 46)
    {
      if (v12 < 3)
      {
LABEL_26:
        v18 = 0;
LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }

      v18 = 0;
      v12 -= 2;
      ++v13;
      while (1)
      {
        v14 = *v13;
        if (v14 - 58 < 0xFFFFFFF6)
        {
          break;
        }

        v18 = (v14 & 0xF) + 10 * v18;
        ++v13;
        v15 = v12-- <= 1;
        if (v15)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v18 = 0;
      --v12;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  if (v12 < 2)
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v19 = 0;
  v30 = v13 + 1;
  v31 = v12 + 1;
  do
  {
    v33 = *v30++;
    v32 = v33;
    if ((v33 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v19 = (v32 & 0xF) + 10 * v19;
    --v31;
  }

  while (v31 > 2);
LABEL_29:
  v20 = CFStringGetLength(cf);
  if ((v20 - 101) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v21 = 0;
LABEL_42:
    v25 = 0;
    goto LABEL_43;
  }

  v22 = v20;
  v23 = v39;
  v42.location = 0;
  v42.length = v20;
  CFStringGetCharacters(cf, v42, v39);
  v21 = 0;
  while (1)
  {
    v24 = *v23;
    if (v24 - 58 < 0xFFFFFFF6)
    {
      break;
    }

    v21 = (v24 & 0xF) + 10 * v21;
    ++v23;
    v15 = v22-- <= 1;
    if (v15)
    {
      goto LABEL_42;
    }
  }

  if (v24 == 46)
  {
    if (v22 < 2)
    {
      goto LABEL_42;
    }

    v25 = 0;
    ++v23;
    while (1)
    {
      v26 = v22 - 1;
      v24 = *v23;
      if (v24 - 58 < 0xFFFFFFF6)
      {
        break;
      }

      v25 = (v24 & 0xF) + 10 * v25;
      ++v23;
      --v22;
      if ((v26 + 1) <= 2)
      {
        goto LABEL_43;
      }
    }

    if (v24 == 46)
    {
      if (v22 < 3)
      {
LABEL_43:
        v27 = 0;
LABEL_44:
        v24 = 0;
        goto LABEL_45;
      }

      v27 = 0;
      v22 -= 2;
      ++v23;
      while (1)
      {
        v38 = *v23;
        if ((v38 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v27 = (v38 & 0xF) + 10 * v27;
        ++v23;
        v15 = v22-- <= 1;
        if (v15)
        {
          goto LABEL_44;
        }
      }

      v24 = *v23;
    }

    else
    {
      v27 = 0;
      --v22;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  if (v22 >= 2)
  {
    v28 = 0;
    v34 = v23 + 1;
    v35 = v22 + 1;
    do
    {
      v37 = *v34++;
      v36 = v37;
      if ((v37 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v28 = (v36 & 0xF) + 10 * v28;
      --v35;
    }

    while (v35 > 2);
    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
LABEL_46:
  if (v11 > v21)
  {
    goto LABEL_47;
  }

  if (v11 < v21)
  {
    goto LABEL_50;
  }

  if (v16 > v25)
  {
    goto LABEL_47;
  }

  if (v16 < v25)
  {
    goto LABEL_50;
  }

  if (v18 > v27)
  {
    goto LABEL_47;
  }

  if (v18 < v27)
  {
    goto LABEL_50;
  }

  if (v14 > v24)
  {
    goto LABEL_47;
  }

  if (v14 < v24)
  {
LABEL_50:
    result = -1;
    goto LABEL_48;
  }

  if (v19 > v28)
  {
    goto LABEL_47;
  }

  if (v19 >= v28)
  {
    result = 0;
  }

  else
  {
    result = -1;
  }

LABEL_48:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA1ECD48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1CA1ED9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemIDClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemIDClass_block_invoke_cold_1();
  }

  getFPItemIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1CA1EF360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemClass_block_invoke_cold_1();
  }

  getFPItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1CA1F0B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F3D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA1F4144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t ql_external_thumbnail_cache_create_tables_initial(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:{@"CREATE TABLE thumbnails( fpitemId TEXT NOT NULL, versionId BLOB NOT NULL, last_hit_date INTEGER NOT NULL, size INTEGER NOT NULL, file_extension TEXT NOT NULL, PRIMARY KEY (fpitemId))"}] && objc_msgSend(v3, "execute:", @"CREATE INDEX last_hit_date ON thumbnails (last_hit_date)"))
  {
    v4 = [v3 setUserVersion:1];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_8:

  return v4;
}

void sub_1CA1F6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F6E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F71A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F75DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F79E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1F7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_1_3@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1CA1FACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QLIconAutoDisplayExtension(void *a1)
{
  v1 = QLIconAutoDisplayExtension_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    QLIconAutoDisplayExtension_cold_1();
  }

  v3 = QLSetContainsContentType(QLIconAutoDisplayExtension_autoDisplayExtensionUTIs, v2);

  return v3;
}

void __QLIconAutoDisplayExtension_block_invoke()
{
  v14 = MEMORY[0x1E695DFA8];
  v13 = *MEMORY[0x1E6982F40];
  v12 = *MEMORY[0x1E6982F68];
  v0 = *MEMORY[0x1E6982F90];
  v1 = *MEMORY[0x1E6982F98];
  v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.oasis-open.opendocument.text"];
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.microsoft.word.doc"];
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.openxmlformats.wordprocessingml.document"];
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.microsoft.excel.xls"];
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"org.openxmlformats.spreadsheetml.sheet"];
  v6 = *MEMORY[0x1E6982F10];
  v7 = *MEMORY[0x1E6982E18];
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.xhtml"];
  v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.webarchive"];
  v10 = [v14 setWithObjects:{v13, v12, v0, v1, v15, v2, v3, v4, v5, v6, v7, v8, v9, 0}];
  v11 = QLIconAutoDisplayExtension_autoDisplayExtensionUTIs;
  QLIconAutoDisplayExtension_autoDisplayExtensionUTIs = v10;
}

void setErrorWrappingUnderlyingError(void *a1, void *a2, uint64_t a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (a4)
  {
    v9 = MEMORY[0x1E696ABC0];
    if (v7)
    {
      v12 = *MEMORY[0x1E696AA08];
      v13[0] = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v10 = 0;
    }

    *a4 = [v9 errorWithDomain:v8 code:a3 userInfo:v10];
    if (v7)
    {
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1CA1FCD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1FDCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1FF308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1CA1FFF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CA200284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1CA2004CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA201578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CloudDocsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudDocsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E836A660;
    v6 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudDocsLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1CA202DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA2039BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _QLCopyResourcePropertyForKey(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = _log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = a1;
    _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "Getting NSURL thumbnails property for %@", buf, 0xCu);
  }

  v9 = a2;
  v10 = *MEMORY[0x1E695DC50];
  if (([v9 isEqualToString:*MEMORY[0x1E695DC50]] & 1) == 0)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:@"QLUnsupportedURLKey" reason:@"QuickLook only handles NSURLThumbnailDictionaryKey and userInfo:{on OS X, NSURLThumbnailKey", 0}];
    objc_exception_throw(v22);
  }

  v23 = 0;
  v11 = [QLThumbnailAddition thumbnailsDictionaryForURL:a1 error:&v23];
  v12 = v23;
  if (a3)
  {
    v13 = v11;
    if (([v9 isEqualToString:v10] & 1) == 0)
    {
      v14 = [v13 objectForKey:*MEMORY[0x1E695DA70]];

      v13 = v14;
    }

    *a3 = v13;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    v21 = _log_0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = a1;
      _os_log_impl(&dword_1CA1E7000, v21, OS_LOG_TYPE_INFO, "Returning empty thumbnails dictionary for %@", buf, 0xCu);
    }

LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if ([v12 code] == 2 && (objc_msgSend(v12, "domain"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", *MEMORY[0x1E696A798]), v18, v19))
  {
    v20 = _log_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = a1;
      _os_log_impl(&dword_1CA1E7000, v20, OS_LOG_TYPE_INFO, "Hit error %@ retrieving the thumbnails property for %@. This is expected if this is a logical URL corresponding to a sidefault.", buf, 0x16u);
    }
  }

  else
  {
    v20 = _log_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _QLCopyResourcePropertyForKey_cold_1();
    }
  }

  v15 = 0;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL _QLSetResourcePropertyForKey(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = _log_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = a1;
    _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "Setting NSURL thumbnails property for %@", buf, 0xCu);
  }

  v9 = a2;
  if (![v9 isEqualToString:*MEMORY[0x1E695DC50]])
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = @"QLUnsupportedURLKey";
    v18 = @"QuickLook only handles NSURLThumbnailsKey";
    goto LABEL_12;
  }

  if (a3)
  {
    if (*MEMORY[0x1E695E738] != a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 != CFDictionaryGetTypeID())
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = @"QLThumbnailInvalidFormat";
        v18 = @"The value for the NSURL thumbnails key should be a dictionary where keys are dimensions and values are NSImage / UIImage instances";
LABEL_12:
        v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
        objc_exception_throw(v19);
      }
    }
  }

  v20 = 0;
  v11 = [QLThumbnailAddition setThumbnailsDictionary:a3 forURL:a1 error:&v20];
  v12 = v20;
  v13 = v12;
  if (a4)
  {
    *a4 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void *__getBRStartDownloadForItemsWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRStartDownloadForItemsWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRStartDownloadForItemsWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBRThumbnailChangedAtURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRThumbnailChangedAtURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRThumbnailChangedAtURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudDocsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_1CA205C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id errorWithCodeAndUnderlyingError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a2)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 errorWithDomain:@"QLExternalThumbnailCache" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"QLExternalThumbnailCache" code:a1 userInfo:0];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1CA2084B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVFileTypeAVCISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVFileTypeAVCI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFileTypeAVCISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL QLGetRealPath(const char *a1, _BYTE *a2)
{
  v3 = open(a1, 0x8000, 0);
  if (v3 < 0)
  {
    v6 = _log_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      QLGetRealPath_cold_2();
    }
  }

  else
  {
    v4 = v3;
    if (fcntl(v3, 50, a2) != -1)
    {
      close(v4);
      return *a2 != 0;
    }

    v7 = _log_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      QLGetRealPath_cold_1();
    }

    close(v4);
  }

  return 0;
}

uint64_t QLTPrefersExtendedRange()
{
  if (QLTPrefersExtendedRange_onceToken != -1)
  {
    QLTPrefersExtendedRange_cold_1();
  }

  return QLTPrefersExtendedRange_supportsDeepColor;
}

uint64_t __QLTPrefersExtendedRange_block_invoke()
{
  result = MGGetBoolAnswer();
  QLTPrefersExtendedRange_supportsDeepColor = result;
  return result;
}

uint64_t _QLComputeValuesForCGContextCreationWithSizeAndScale(_DWORD *a1, _DWORD *a2, int *a3, int *a4, int *a5, void *a6, CGColorSpaceRef space, double a8, double a9, double a10)
{
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(space);
  v21 = CGColorSpaceUsesExtendedRange(space);
  v22 = v21;
  v23 = 16;
  if (NumberOfComponents != 1 || !v21)
  {
    if (CGColorSpaceIsWideGamutRGB(space))
    {
      v23 = 16;
    }

    else
    {
      v23 = 8;
    }
  }

  *a1 = vcvtpd_s64_f64(a8 * a10);
  *a2 = vcvtpd_s64_f64(a9 * a10);
  *a3 = v23;
  Type = CGColorSpaceGetType();
  v27 = (Type == 6 || Type == 10) && NumberOfComponents == 4 || NumberOfComponents == 1;
  v28 = !v27;
  if (v27)
  {
    v29 = NumberOfComponents;
  }

  else
  {
    v29 = NumberOfComponents + 1;
  }

  if (Type == 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (Type == 2)
  {
    v31 = NumberOfComponents;
  }

  else
  {
    v31 = v29;
  }

  v32 = *a3 * v31;
  *a4 = v32;
  v33 = *a1 * v32 + 7;
  result = CGBitmapGetAlignedBytesPerRow();
  *a6 = result;
  if (v22)
  {
    v35 = 4352;
  }

  else
  {
    v35 = 0;
  }

  *a5 = v30 | v35;
  return result;
}

CGContext *QLTCreateCGContext(int a1, int a2, int a3, size_t *a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  if (QLTPrefersExtendedRange_onceToken != -1)
  {
    QLTPrefersExtendedRange_cold_1();
  }

  if (QLTPrefersExtendedRange_supportsDeepColor)
  {
LABEL_6:
    if (ExtendedSRGBColorSpace_onceToken != -1)
    {
      QLTCreateCGContext_cold_2();
    }

    v12 = &ExtendedSRGBColorSpace_extendedSRGBColorSpace;
  }

  else
  {
LABEL_9:
    if (StandardSRGBColorSpace_onceToken != -1)
    {
      QLTCreateCGContext_cold_3();
    }

    v12 = &StandardSRGBColorSpace_standardSRGBColorSpace;
  }

  v13 = *v12;

  return QLTCreateCGContextWithSize(v13, a3, a4, a5, a6, a7);
}

CGContext *QLTCreateCGContextWithSize(CGColorSpaceRef a1, int a2, size_t *a3, double a4, double a5, double a6)
{
  v9 = a1;
  if (!a1)
  {
    if (QLTPrefersExtendedRange_onceToken != -1)
    {
      QLTPrefersExtendedRange_cold_1();
    }

    if (QLTPrefersExtendedRange_supportsDeepColor)
    {
      if (ExtendedSRGBColorSpace_onceToken != -1)
      {
        QLTCreateCGContext_cold_2();
      }

      v12 = &ExtendedSRGBColorSpace_extendedSRGBColorSpace;
    }

    else
    {
      if (StandardSRGBColorSpace_onceToken != -1)
      {
        QLTCreateCGContext_cold_3();
      }

      v12 = &StandardSRGBColorSpace_standardSRGBColorSpace;
    }

    v9 = *v12;
  }

  if (CGColorSpaceUsesITUR_2100TF(v9))
  {
    if (DisplayP3_onceToken != -1)
    {
      QLTCreateCGContextWithSize_cold_4();
    }

    v9 = DisplayP3_displayP3ColorSpace;
  }

  bitsPerComponent = 0;
  v26 = 0;
  bitmapInfo = 0;
  v23 = 0;
  _QLComputeValuesForCGContextCreationWithSizeAndScale(&v26 + 1, &v26, &bitsPerComponent + 1, &bitsPerComponent, &bitmapInfo, &v23, v9, a4, a5, a6);
  v14 = v26;
  v13 = HIDWORD(v26);
  if (SHIDWORD(v26) < 1 || v26 <= 0)
  {
    v16 = _log_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      QLTCreateCGContextWithSize_cold_5(v13, v14, v16);
    }

    return 0;
  }

  else
  {
    v18 = v23;
    if (a2)
    {
      v19 = (*MEMORY[0x1E69E9AC8] + v23 * v26 - 1) & -*MEMORY[0x1E69E9AC8];
      *a3 = v19;
      v20 = mmap(0, v19, 3, 4097, 1627389952, 0);
    }

    else
    {
      v20 = 0;
      if (a3)
      {
        *a3 = v23 * v26;
      }
    }

    v21 = CGBitmapContextCreate(v20, v13, v14, SHIDWORD(bitsPerComponent), v18, v9, bitmapInfo);
    v17 = v21;
    if (v21)
    {
      v27.size.width = v13;
      v27.size.height = v14;
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      CGContextClearRect(v21, v27);
    }
  }

  return v17;
}

id QLTGetDefaultCacheLocation()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 objectAtIndexedSubscript:0];

  v2 = [v1 stringByAppendingPathComponent:@"com.apple.QuickLook.thumbnailcache"];

  return v2;
}

CGImage *QLCGImageRefPNGRepresentation(CGImage *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF88] data];
    v3 = [*MEMORY[0x1E6982F28] identifier];
    v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

    if (v4)
    {
      CGImageDestinationAddImage(v4, v1, 0);
      v5 = CGImageDestinationFinalize(v4);
      CFRelease(v4);
      if (v5)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = v6;
  }

  return v1;
}

void QLTRunInMainThreadAsync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLTRunInMainThreadAsync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void QLTRunInMainThreadSync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLTRunInMainThreadSync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t QLSetContainsContentType(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    pthread_mutex_lock(&QLSetContainsContentType_lock);
    if ([v3 containsObject:v5])
    {
      v6 = 1;
    }

    else
    {
      [v3 allObjects];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v15 = 0u;
      v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v7);
            }

            if ([v5 conformsToType:{*(*(&v12 + 1) + 8 * i), v12}])
            {
              if (([v5 isDynamic] & 1) == 0)
              {
                [v3 addObject:v5];
              }

              v6 = 1;
              goto LABEL_17;
            }
          }

          v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    pthread_mutex_unlock(&QLSetContainsContentType_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

CGColorSpaceRef __ExtendedSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  ExtendedSRGBColorSpace_extendedSRGBColorSpace = result;
  return result;
}

CGColorSpaceRef __StandardSRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  StandardSRGBColorSpace_standardSRGBColorSpace = result;
  return result;
}

CGColorSpaceRef __DisplayP3_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  DisplayP3_displayP3ColorSpace = result;
  return result;
}

uint64_t AVFoundationLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = AVFoundationLibraryCore_frameworkLibrary;
  v6 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A760;
    v8 = *off_1E836A770;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AVFoundationLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1CA20A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AVFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVFoundationLibrary()
{
  v0 = AVFoundationLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t UIKitLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A788;
    v8 = *off_1E836A798;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1CA20A70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UIKitLibrary()
{
  v0 = UIKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_1E8369C70;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA20A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIImageClass_block_invoke_cold_1();
    return getUIGraphicsBeginImageContextWithOptionsSymbolLoc(v3);
  }

  return result;
}

uint64_t getUIGraphicsBeginImageContextWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  v6 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  if (!getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsBeginImageContextWithOptions");
    getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptionsSymbolLoc = getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  if (UIGraphicsBeginImageContextWithOptionsSymbolLoc)
  {
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    return UIGraphicsBeginImageContextWithOptionsSymbolLoc(a1, v9, v10, v11);
  }

  else
  {
    v13 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsGetCurrentContextSymbolLoc(v13);
  }
}

uint64_t getUIGraphicsGetCurrentContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v6 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20ABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsGetCurrentContext()
{
  CurrentContextSymbolLoc = getUIGraphicsGetCurrentContextSymbolLoc();
  if (CurrentContextSymbolLoc)
  {

    return CurrentContextSymbolLoc();
  }

  else
  {
    v2 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsEndImageContextSymbolLoc(v2);
  }
}

uint64_t getUIGraphicsEndImageContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  v6 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsEndImageContext");
    getUIGraphicsEndImageContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsEndImageContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsEndImageContext()
{
  UIGraphicsEndImageContextSymbolLoc = getUIGraphicsEndImageContextSymbolLoc();
  if (UIGraphicsEndImageContextSymbolLoc)
  {

    return UIGraphicsEndImageContextSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsPushContextSymbolLoc();
  }
}

uint64_t getUIGraphicsPushContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPushContextSymbolLoc_ptr;
  v6 = getUIGraphicsPushContextSymbolLoc_ptr;
  if (!getUIGraphicsPushContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPushContext");
    getUIGraphicsPushContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPushContext(uint64_t a1)
{
  UIGraphicsPushContextSymbolLoc = getUIGraphicsPushContextSymbolLoc();
  if (UIGraphicsPushContextSymbolLoc)
  {

    return UIGraphicsPushContextSymbolLoc(a1);
  }

  else
  {
    v4 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getUIGraphicsPopContextSymbolLoc(v4);
  }
}

uint64_t getUIGraphicsPopContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPopContextSymbolLoc_ptr;
  v6 = getUIGraphicsPopContextSymbolLoc_ptr;
  if (!getUIGraphicsPopContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPopContext");
    getUIGraphicsPopContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPopContext()
{
  UIGraphicsPopContextSymbolLoc = getUIGraphicsPopContextSymbolLoc();
  if (UIGraphicsPopContextSymbolLoc)
  {

    return UIGraphicsPopContextSymbolLoc();
  }

  else
  {
    +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return FileProviderLibraryCore();
  }
}

uint64_t FileProviderLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = FileProviderLibraryCore_frameworkLibrary;
  v6 = FileProviderLibraryCore_frameworkLibrary;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E836A7B0;
    v8 = *off_1E836A7C0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    FileProviderLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1CA20B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FileProviderLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FileProviderLibrary()
{
  v0 = FileProviderLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getFPIsCloudDocsWithFPFSEnabledSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr;
  v6 = getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr;
  if (!getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr)
  {
    v1 = FileProviderLibrary();
    v4[3] = dlsym(v1, "FPIsCloudDocsWithFPFSEnabled");
    getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFPIsCloudDocsWithFPFSEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPIsCloudDocsWithFPFSEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPIsCloudDocsWithFPFSEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _FPIsCloudDocsWithFPFSEnabled()
{
  FPIsCloudDocsWithFPFSEnabledSymbolLoc = getFPIsCloudDocsWithFPFSEnabledSymbolLoc();
  if (FPIsCloudDocsWithFPFSEnabledSymbolLoc)
  {

    return FPIsCloudDocsWithFPFSEnabledSymbolLoc();
  }

  else
  {
    v2 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return getFPURLMightBeInFileProviderSymbolLoc(v2);
  }
}

uint64_t getFPURLMightBeInFileProviderSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  v6 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  if (!getFPURLMightBeInFileProviderSymbolLoc_ptr)
  {
    v1 = FileProviderLibrary();
    v4[3] = dlsym(v1, "FPURLMightBeInFileProvider");
    getFPURLMightBeInFileProviderSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1CA20B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFPURLMightBeInFileProviderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPURLMightBeInFileProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPURLMightBeInFileProviderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

QLFileThumbnailRequest *_FPURLMightBeInFileProvider(uint64_t a1)
{
  FPURLMightBeInFileProviderSymbolLoc = getFPURLMightBeInFileProviderSymbolLoc();
  if (FPURLMightBeInFileProviderSymbolLoc)
  {

    return FPURLMightBeInFileProviderSymbolLoc(a1);
  }

  else
  {
    v4 = +[QLThumbnailAddition preFPFSDownloadThumbnailAtTaggedURL:completionHandler:];
    return __getFPSandboxingURLWrapperClass_block_invoke(v4);
  }
}

QLFileThumbnailRequest *__getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFPSandboxingURLWrapperClass_block_invoke_cold_1();
    return [(QLFileThumbnailRequest *)v3 initWithItem:v4 maximumSize:v5 minimumSize:v10 scale:v8 options:v9 generationData:v6, v7];
  }

  return result;
}

void sub_1CA20C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

CGImageRef QLCreateCGImageWithData(const __CFData *a1, CGColorSpaceRef space, double a3, double a4, double a5)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  bytesPerRow = 0;
  _QLComputeValuesForCGContextCreationWithSizeAndScale(&v16, &v15, &v14 + 1, &v14, &v13, &bytesPerRow, space, a3, a4, a5);
  if (v16 < 1 || v15 <= 0)
  {
    v8 = qword_1EDAC3C78;
    if (!qword_1EDAC3C78)
    {
      QLTInitLogging();
      v8 = qword_1EDAC3C78;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      QLCreateCGImageWithData_cold_1(&v16, &v15, v8);
    }

    return 0;
  }

  else
  {
    v9 = CGDataProviderCreateWithCFData(a1);
    v10 = CGImageCreate(v16, v15, SHIDWORD(v14), v14, bytesPerRow, space, v13, v9, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v9);
    CGColorSpaceRelease(space);
  }

  return v10;
}

CGImageRef QLCreateCGImageWithDataAndFormat(const __CFData *a1, void *a2)
{
  v3 = a2;
  v4 = CGDataProviderCreateWithCFData(a1);
  v5 = [v3 width];
  v6 = [v3 height];
  v7 = [v3 bitsPerComponent];
  v8 = [v3 bitsPerPixel];
  v9 = [v3 bytesPerRow];
  v10 = [v3 colorSpace];
  v11 = [v3 bitmapInfo];

  v12 = CGImageCreate(v5, v6, v7, v8, v9, v10, v11, v4, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v4);
  return v12;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1CA20EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA20EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemClass_block_invoke_0(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemClass_block_invoke_cold_1();
  }

  getFPItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ThumbnailExtension.configuration.getter(void *a1@<X8>)
{
  v3 = type metadata accessor for ThumbnailExtensionConfiguration();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = objc_allocWithZone(type metadata accessor for ThumbnailExtensionConfiguration());
  v7 = MEMORY[0x1E69E7D40];
  v8 = *v6;
  v9 = *MEMORY[0x1E69E7D40];
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x60)] = 0;
  (*(*(*((v9 & v8) + 0x50) - 8) + 16))(&v6[*((*v7 & *v6) + 0x68)], v1, *((v9 & v8) + 0x50));
  v10 = *((v9 & v8) + 0x58);
  v17.receiver = v6;
  v17.super_class = type metadata accessor for ThumbnailExtensionConfiguration();
  v16 = objc_msgSendSuper2(&v17, sel_init);
  v11 = objc_allocWithZone(QLThumbnailConnectionHandler);
  v12 = v16;
  v13 = [v11 initWithPrincipalObject_];

  swift_unknownObjectRelease();
  v14 = *((*v7 & *v12) + 0x60);
  v15 = *(v12 + v14);
  *(v12 + v14) = v13;

  *a1 = v12;
}

uint64_t static ThumbnailProviderBuilder.buildBlock(_:)@<X0>(uint64_t *a1@<X8>)
{

  return sub_1CA20F628(v2, a1);
}

uint64_t sub_1CA20F628@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (result + 32);
    while (v6 < *(v2 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 3;

      result = sub_1CA214520(v9);
      if (v5 == v6)
      {
        v4 = v11;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = sub_1CA2160AC(v4);

    result = swift_allocObject();
    *(result + 16) = v2;
    *a2 = v10;
    a2[1] = &unk_1CA2202B8;
    a2[2] = result;
  }

  return result;
}

double ThumbnailRequest.Options.maximumSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double ThumbnailRequest.Options.minimumSize.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_1CA20F734(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = [a1 item];
  [a1 maximumSize];
  v5 = v4;
  v7 = v6;
  [a1 minimumSize];
  v9 = v8;
  v11 = v10;
  [a1 scale];
  v13 = v12;
  v14 = [a1 options];
  type metadata accessor for QLFileThumbnailRequestOptions(0);
  sub_1CA217018(&qword_1EC43DEA8, type metadata accessor for QLFileThumbnailRequestOptions);
  v15 = sub_1CA21BB6C();

  if (*(v15 + 16) && (v16 = sub_1CA215A74(@"WantsLowQuality"), (v17 & 1) != 0) && (sub_1CA217060(*(v15 + 56) + 32 * v16, v29), swift_dynamicCast()))
  {
    v18 = v28;
    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  v19 = sub_1CA215A74(@"ThirdPartyVideoDecodersAllowed");
  if (v20)
  {
    sub_1CA217060(*(v15 + 56) + 32 * v19, v29);
    if (swift_dynamicCast())
    {
      v21 = v28;
      if (!*(v15 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v21 = 0;
  if (!*(v15 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v22 = sub_1CA215A74(@"InterpolationQuality");
  if (v23)
  {
    sub_1CA217060(*(v15 + 56) + 32 * v22, v29);
    if (swift_dynamicCast())
    {
      v24 = v28;
      if (!*(v15 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v24 = 0;
  if (!*(v15 + 16))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_17:
  v25 = sub_1CA215A74(@"IconFlavor");
  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1CA217060(*(v15 + 56) + 32 * v25, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  v27 = v28;
LABEL_22:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v18;
  *(a2 + 44) = v24;
  *(a2 + 48) = v27;
  *(a2 + 52) = (v27 >> 8) & 7;
  *(a2 + 56) = v21;
}

__n128 ThumbnailRequest.options.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

uint64_t ThumbnailRequest.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA21BB1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = [*(v1 + 64) contentType];
  if (v12)
  {
    v13 = v12;
    sub_1CA21BAEC();

    v14 = *(v4 + 32);
    v14(v11, v7, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    return (v14)(a1, v11, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    sub_1CA21BAFC();
    result = (*(v4 + 48))(v11, 1, v3);
    if (result != 1)
    {
      return sub_1CA216E20(v11, &qword_1EC43E3B8, &qword_1CA21FF10);
    }
  }

  return result;
}

uint64_t ThumbnailRequest.fileURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(sub_1CA21B9DC() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = sub_1CA21B9EC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *(v1 + 64);
  v2[6] = v7;
  v2[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA20FD1C, 0, 0);
}

uint64_t sub_1CA20FD1C()
{
  v1 = [*(v0 + 56) fileURL];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = v1;
    sub_1CA21BA8C();
  }

  else
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t ThumbnailRequest.data.getter()
{
  v2 = *(*(sub_1CA21B9DC() - 8) + 64) + 15;
  v1[2] = swift_task_alloc();
  v3 = sub_1CA21B9EC();
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(v0 + 64);
  v1[5] = v6;
  v1[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CA20FF6C, 0, 0);
}

uint64_t sub_1CA20FF6C()
{
  v1 = [*(v0 + 48) fileData];
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 16);
    v4 = v1;
    v5 = sub_1CA21BAAC();
    v7 = v6;

    v8 = *(v0 + 8);

    return v8(v5, v7);
  }

  else
  {
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v11 + 8))(v2, v10);
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

BOOL ThumbnailRequest.isFileBacked.getter()
{
  v1 = [*(v0 + 64) data];
  if (v1)
  {
    v2 = sub_1CA21BAAC();
    v4 = v3;

    sub_1CA21638C(v2, v4);
  }

  return v1 == 0;
}

uint64_t ThumbnailReply.extensionBadge.getter()
{
  v1 = [*v0 extensionBadge];
  v2 = sub_1CA21BBDC();

  return v2;
}

void sub_1CA2101D8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 extensionBadge];
  v4 = sub_1CA21BBDC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1CA210230(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
  }

  v4 = sub_1CA21BBAC();

  [v2 setExtensionBadge_];
}

void ThumbnailReply.extensionBadge.setter()
{
  v1 = *v0;
  v2 = sub_1CA21BBAC();

  [v1 setExtensionBadge_];
}

void (*ThumbnailReply.extensionBadge.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [v3 extensionBadge];
  v5 = sub_1CA21BBDC();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_1CA2103B0;
}

void sub_1CA2103B0(uint64_t *a1, char a2)
{
  if (a1[1])
  {
    v2 = *a1;
    v3 = a1[1];
  }

  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v6 = sub_1CA21BBAC();

    [v4 setExtensionBadge_];
  }

  else
  {
    v6 = sub_1CA21BBAC();

    [v4 setExtensionBadge_];
  }
}

id ThumbnailReply.metadata.getter()
{
  v1 = [*v0 metadata];

  return v1;
}

unint64_t static ThumbnailReply.fileURL(_:contentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1CA217154(a1, &v14 - v6, &qword_1EC43E3B8, &qword_1CA21FF10);
  v8 = sub_1CA21BA7C();
  v9 = sub_1CA21BB1C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1CA21BADC();
    (*(v10 + 8))(v7, v9);
  }

  v12 = [objc_opt_self() replyWithFileURL:v8 contentType:v11];

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0x7FFFFFFFLL;
  *(a2 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a2 + 32) = result;
  *a2 = v12;
  return result;
}

unint64_t static ThumbnailReply.cgRenderer(size:renderer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v15[4] = sub_1CA2163E0;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CA2107A0;
  v15[3] = &block_descriptor;
  v11 = _Block_copy(v15);
  v12 = objc_opt_self();

  v13 = [v12 replyWithContextSize:v11 drawingBlock:{a4, a5}];
  _Block_release(v11);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v13;
  return result;
}

uint64_t sub_1CA2107A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

unint64_t static ThumbnailReply.currentContextRenderer(size:renderer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v15[4] = sub_1CA216448;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CA210948;
  v15[3] = &block_descriptor_8;
  v11 = _Block_copy(v15);
  v12 = objc_opt_self();

  v13 = [v12 replyWithContextSize:v11 currentContextDrawingBlock:{a4, a5}];
  _Block_release(v11);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v13;
  return result;
}

uint64_t sub_1CA210948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

unint64_t static ThumbnailReply.data(_:contentType:attachments:)@<X0>(void *a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_1CA21BA9C();
  v5 = sub_1CA21BADC();
  v6 = [objc_opt_self() replyWithData:v4 contentType:v5];

  v7 = [v6 item];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      sub_1CA216498();
      a1 = sub_1CA21BB5C();
    }

    [v8 setAttachments_];
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0x7FFFFFFFLL;
  *(a2 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a2 + 32) = result;
  *a2 = v6;
  return result;
}

void static ThumbnailReply.cgImage(_:scale:isLowQuality:)(CGImage *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = CGImageGetWidth(a1) / a4;
  v9 = CGImageGetHeight(a1) / a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a1;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v11 = a1;
  static ThumbnailReply.cgRenderer(size:renderer:)(sub_1CA2164E4, v10, a3, v8, v9);

  v12 = CGImageGetColorSpace(v11);

  *(a3 + 8) = v12;
  *(a3 + 16) = a2;
}

uint64_t static ThumbnailReply.images(_:properties:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CA210C3C(a1);
  v5 = sub_1CA21BC1C();

  v6 = [objc_opt_self() replyWithImages_];

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *a3 = v6;

  *(a3 + 32) = a2;
  return result;
}

char *sub_1CA210C3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CA21BCEC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1CA215C90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1CCA9BDE0](i, a1);
        type metadata accessor for CGImage(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1CA215C90((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1CA217140(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGImage(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1CA215C90((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1CA217140(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t static ThumbnailReply.imageRenderer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[4] = sub_1CA216550;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CA210F34;
  v11[3] = &block_descriptor_17;
  v7 = _Block_copy(v11);
  v8 = objc_opt_self();

  v9 = [v8 replyWithImageRenderer_];
  _Block_release(v7);

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0x7FFFFFFFLL;
  *(a3 + 28) = 1;
  result = sub_1CA216248(MEMORY[0x1E69E7CC0]);
  *(a3 + 32) = result;
  *a3 = v9;
  return result;
}

uint64_t sub_1CA210F34(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1CA2170F4, v5);
}

void *ThumbnailReply.colorSpace.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ThumbnailReply.additionalProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1CA211154()
{
  v0 = sub_1CA21BB4C();
  __swift_allocate_value_buffer(v0, qword_1EC43EC78);
  __swift_project_value_buffer(v0, qword_1EC43EC78);
  return sub_1CA21BB3C();
}

void *ThumbnailProvider.init<A>(for:generator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_1CA21BABC();
  v11 = sub_1CA2160AC(v10);

  *a5 = v11;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  a5[1] = &unk_1CA21FF30;
  a5[2] = result;
  return result;
}

uint64_t sub_1CA211270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 144) = a1;
  v9 = *(*(sub_1CA21B9DC() - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_1CA21B9EC();
  *(v6 + 192) = v10;
  v11 = *(v10 - 8);
  *(v6 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10) - 8) + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v14 = sub_1CA21BB1C();
  *(v6 + 224) = v14;
  v15 = *(v14 - 8);
  *(v6 + 232) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  v17 = *(a5 - 8);
  *(v6 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v20 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v20;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 57) = *(a2 + 41);
  v21 = *(a2 + 64);
  *(v6 + 264) = v19;
  *(v6 + 272) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1CA211480, 0, 0);
}

uint64_t sub_1CA211480()
{
  v1 = [*(v0 + 272) fileData];
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = v1;
    v4 = sub_1CA21BAAC();
    v6 = v5;

    v7 = [v2 contentType];
    v8 = *(v0 + 248);
    if (v7)
    {
      v10 = *(v0 + 232);
      v9 = *(v0 + 240);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = v7;
      sub_1CA21BAEC();

      v14 = *(v10 + 32);
      v14(v12, v9, v11);
      (*(v10 + 56))(v12, 0, 1, v11);
      v14(v8, v12, v11);
    }

    else
    {
      v27 = *(v0 + 224);
      v28 = *(v0 + 232);
      v29 = *(v0 + 216);
      (*(v28 + 56))(v29, 1, 1, v27);
      sub_1CA21BAFC();
      if ((*(v28 + 48))(v29, 1, v27) != 1)
      {
        sub_1CA216E20(*(v0 + 216), &qword_1EC43E3B8, &qword_1CA21FF10);
      }
    }

    v30 = *(MEMORY[0x1E6965B98] + 4);
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_1CA21179C;
    v32 = *(v0 + 264);
    v33 = *(v0 + 248);
    v34 = *(v0 + 168);
    v35 = *(v0 + 176);

    return MEMORY[0x1EEDBF580](v32, v4, v6, v33);
  }

  else
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    sub_1CA21B9CC();
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E3C0, MEMORY[0x1E6967E98]);
    sub_1CA21BA5C();
    sub_1CA21B9BC();
    (*(v16 + 8))(v15, v18);
    swift_willThrow();
    v19 = *(v0 + 264);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v24 = *(v0 + 184);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1CA21179C()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA211B6C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 32);
    *(v3 + 80) = *(v3 + 16);
    *(v3 + 96) = v5;
    *(v3 + 112) = *(v3 + 48);
    *(v3 + 121) = *(v3 + 57);
    v12 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v3 + 296) = v7;
    *v7 = v3;
    v7[1] = sub_1CA211994;
    v8 = *(v3 + 264);
    v9 = *(v3 + 160);
    v10 = *(v3 + 144);

    return v12(v10, v8, v3 + 80);
  }
}

uint64_t sub_1CA211994()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1CA211C14;
  }

  else
  {
    v3 = sub_1CA211AA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA211AA8()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];
  (*(v0[32] + 8))(v0[33], v0[21]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CA211B6C()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CA211C14()
{
  (*(v0[32] + 8))(v0[33], v0[21]);
  v1 = v0[38];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t ThumbnailProvider.init(contentType:generator:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3D0, &qword_1CA21FF38);
  v8 = sub_1CA21BB1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA21FF00;
  (*(v9 + 16))(v12 + v11, a1, v8);
  v13 = sub_1CA2160AC(v12);
  swift_setDeallocating();
  v14 = *(v9 + 8);
  v14(v12 + v11, v8);
  swift_deallocClassInstance();
  v14(a1, v8);
  *a4 = v13;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[1] = &unk_1CA21FF48;
  a4[2] = result;
  return result;
}

uint64_t sub_1CA211E54(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v5;
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 88) = v8;
  *v8 = v3;
  v8[1] = sub_1CA211F68;

  return v10(a1, v3 + 16);
}

uint64_t sub_1CA211F68()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA21209C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1CA2120B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_1CA21BB1C();
  *(v3 + 192) = v6;
  v7 = *(v6 - 8);
  *(v3 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 104) = v10;
  v11 = *(a2 + 48);
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 136) = v11;
  v12 = *(a2 + 64);
  *(v3 + 224) = v9;
  *(v3 + 232) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1CA2121E4, 0, 0);
}

uint64_t sub_1CA2121E4()
{
  v1 = v0[22];
  v42 = *(v1 + 16);
  if (v42)
  {
    v2 = 0;
    v3 = v1 + 32;
    v4 = v0[25];
    v50 = v4;
    v46 = (v4 + 32);
    v49 = (v4 + 56);
    v43 = v3;
    v44 = (v4 + 48);
    v48 = (v4 + 8);
LABEL_4:
    v5 = (v43 + 24 * v2);
    v6 = *v5;
    v0[30] = *v5;
    v41 = v5[1];
    v0[31] = v5[2];
    v45 = v2 + 1;
    v47 = v6 + 56;
    v7 = -1 << *(v6 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v6 + 56);
    v10 = (63 - v7) >> 6;
    v52 = v6;
    swift_bridgeObjectRetain_n();

    v12 = 0;
    do
    {
      if (!v9)
      {
        v0 = v51;
        while (1)
        {
          v23 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            return result;
          }

          if (v23 >= v10)
          {
            break;
          }

          v9 = *(v47 + 8 * v23);
          ++v12;
          if (v9)
          {
            v12 = v23;
            goto LABEL_17;
          }
        }

        swift_bridgeObjectRelease_n();

        v2 = v45;
        if (v45 == v42)
        {
          goto LABEL_20;
        }

        goto LABEL_4;
      }

      v0 = v51;
LABEL_17:
      v24 = v0[29];
      (*(v50 + 16))(v0[28], *(v52 + 48) + *(v50 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v0[24]);
      v25 = [v24 contentType];
      v26 = v0[27];
      if (v25)
      {
        v13 = v0[26];
        v15 = v0[23];
        v14 = v0[24];
        v16 = v25;
        sub_1CA21BAEC();

        v17 = *v46;
        (*v46)(v15, v13, v14);
        (*v49)(v15, 0, 1, v14);
        v17(v26, v15, v14);
      }

      else
      {
        v28 = v0[23];
        v27 = v0[24];
        (*v49)(v28, 1, 1, v27);
        sub_1CA21BAFC();
        if ((*v44)(v28, 1, v27) != 1)
        {
          sub_1CA216E20(v0[23], &qword_1EC43E3B8, &qword_1CA21FF10);
        }
      }

      v9 &= v9 - 1;
      v18 = v0[27];
      v19 = v0[28];
      v20 = v0[24];
      v21 = sub_1CA21BB0C();
      v22 = *v48;
      (*v48)(v18, v20);
      result = v22(v19, v20);
    }

    while ((v21 & 1) == 0);
    v35 = *(v51 + 232);

    v36 = *(v51 + 136);
    *(v51 + 48) = *(v51 + 120);
    *(v51 + 64) = v36;
    v37 = *(v51 + 104);
    *(v51 + 16) = *(v51 + 88);
    *(v51 + 32) = v37;
    *(v51 + 80) = v35;
    v53 = (v41 + *v41);
    v38 = v41[1];
    v39 = swift_task_alloc();
    *(v51 + 256) = v39;
    *v39 = v51;
    v39[1] = sub_1CA2126E0;
    v40 = *(v51 + 168);

    return v53(v40, v51 + 16);
  }

  else
  {
LABEL_20:
    type metadata accessor for QLThumbnailError(0);
    v0[20] = 0;
    sub_1CA216248(MEMORY[0x1E69E7CC0]);
    sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);
    sub_1CA21BA5C();
    v29 = v0[19];
    swift_willThrow();
    v31 = v0[27];
    v30 = v0[28];
    v32 = v0[26];
    v33 = v0[23];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1CA2126E0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1CA21289C;
  }

  else
  {
    v3 = sub_1CA2127F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA2127F4()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1CA21289C()
{
  v1 = v0[30];
  v2 = v0[31];

  v3 = v0[33];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

id sub_1CA212938(uint64_t a1)
{
  result = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  if (result)
  {
    return [result shouldAcceptXPCConnection_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA21298C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E408, &qword_1CA220258);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_1CA21BC6C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1CA21BC4C();
  v12 = a1;
  v13 = v3;

  v14 = sub_1CA21BC3C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = a2;
  v15[7] = a3;
  sub_1CA2132B8(0, 0, v10, &unk_1CA220268, v15);
}

uint64_t sub_1CA212AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v7[32] = *MEMORY[0x1E69E7D40] & *a5;
  sub_1CA21BC4C();
  v7[33] = sub_1CA21BC3C();
  v9 = sub_1CA21BC2C();
  v7[34] = v9;
  v7[35] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CA212BB4, v9, v8);
}

uint64_t sub_1CA212BB4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  sub_1CA20F734(*(v0 + 224), v0 + 16);
  v3 = *(v1 + 80);
  v4 = *(*(v1 + 88) + 16);
  v5 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v4(v3);
  v6 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v7 = *(v0 + 48);
  *(v0 + 136) = *(v0 + 64);
  *(v0 + 120) = v7;
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  *(v0 + 288) = *(v0 + 200);
  *(v0 + 296) = v9;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 104) = v6;
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_1CA212D2C;

  return v13(v0 + 160, v0 + 88);
}

uint64_t sub_1CA212D2C()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1CA21304C;
  }

  else
  {
    v3 = sub_1CA212E40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA212E40()
{
  v1 = v0[36];
  v2 = v0[37];

  v3 = v0[34];
  v4 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1CA212EAC, v3, v4);
}

uint64_t sub_1CA212EAC()
{
  v1 = *(v0 + 264);

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 180);
  v6 = *(v0 + 188);
  v7 = *(v0 + 192);
  if (v5 != 0x7FFFFFFF)
  {
    [v3 setIconFlavor_];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = v3;
  if (v2)
  {
LABEL_5:
    [v3 setColorSpace_];
  }

LABEL_6:
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  [v3 setIsLowQuality_];
  [v3 setInlinePreviewMode_];
  v11 = [v3 metadata];
  v12 = sub_1CA21BB5C();
  [v11 setAdditionalProperties_];

  v13 = v3;
  v10(v3, 0);

  sub_1CA216F38(v0 + 16);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1CA21304C()
{
  v1 = v0[36];
  v2 = v0[37];

  v3 = v0[34];
  v4 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1CA2130B8, v3, v4);
}

uint64_t sub_1CA2130B8()
{
  v1 = v0[33];

  sub_1CA216F38((v0 + 2));
  if (qword_1EC43E660 != -1)
  {
    swift_once();
  }

  v2 = v0[39];
  v3 = v0[28];
  v4 = sub_1CA21BB4C();
  __swift_project_value_buffer(v4, qword_1EC43EC78);
  v5 = v3;
  v6 = v2;
  v7 = sub_1CA21BB2C();
  v8 = sub_1CA21BC9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[39];
    v10 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_1CA1E7000, v7, v8, "Generation error for request %@ : %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E410, &qword_1CA220288);
    swift_arrayDestroy();
    MEMORY[0x1CCA9CD40](v12, -1, -1);
    MEMORY[0x1CCA9CD40](v11, -1, -1);
  }

  v16 = v0[39];
  v18 = v0[30];
  v17 = v0[31];

  v19 = v16;
  v18(0, v16);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1CA2132B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E408, &qword_1CA220258);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CA217154(a3, v27 - v11, &qword_1EC43E408, &qword_1CA220258);
  v13 = sub_1CA21BC6C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CA216E20(v12, &qword_1EC43E408, &qword_1CA220258);
  }

  else
  {
    sub_1CA21BC5C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CA21BC2C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CA21BBEC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1CA216E20(a3, &qword_1EC43E408, &qword_1CA220258);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA216E20(a3, &qword_1EC43E408, &qword_1CA220258);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1CA2135B8(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1CA21298C(v8, sub_1CA2170EC, v7);
}

void sub_1CA213658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CA21BA6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1CA2136D8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ThumbnailExtensionConfiguration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CA213748(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v6 = a1 + *((*v2 & *a1) + 0x68);

  return v5(v6);
}

uint64_t sub_1CA21382C(uint64_t a1, id *a2)
{
  result = sub_1CA21BBBC();
  *a2 = 0;
  return result;
}

uint64_t sub_1CA2138A4(uint64_t a1, id *a2)
{
  v3 = sub_1CA21BBCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CA213924@<X0>(uint64_t *a1@<X8>)
{
  sub_1CA21BBDC();
  v2 = sub_1CA21BBAC();

  *a1 = v2;
  return result;
}

uint64_t sub_1CA213968()
{
  v1 = *v0;
  v2 = sub_1CA21BBDC();
  v3 = MEMORY[0x1CCA9BD10](v2);

  return v3;
}

uint64_t sub_1CA2139A4()
{
  v1 = *v0;
  sub_1CA21BBDC();
  sub_1CA21BBFC();
}

uint64_t sub_1CA2139F8()
{
  v1 = *v0;
  sub_1CA21BBDC();
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v2 = sub_1CA21BD8C();

  return v2;
}

uint64_t sub_1CA213A6C(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E468, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CA213AD8(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E468, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CA213B48(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CA213BBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CA21BBDC();
  v6 = v5;
  if (v4 == sub_1CA21BBDC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CA21BD2C();
  }

  return v9 & 1;
}

uint64_t sub_1CA213C54(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1CA213CC0(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CA213D2C(void *a1, uint64_t a2)
{
  v4 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CA213DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CA213E5C()
{
  v2 = *v0;
  sub_1CA21BD7C();
  sub_1CA21BB8C();
  return sub_1CA21BD8C();
}

void *sub_1CA213EBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA213ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CA21BBAC();

  *a2 = v5;
  return result;
}

uint64_t sub_1CA213F20@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CA21BBDC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CA213F4C(uint64_t a1)
{
  v2 = sub_1CA217018(&qword_1EC43DEA8, type metadata accessor for QLFileThumbnailRequestOptions);
  v3 = sub_1CA217018(&qword_1EC43E4A0, type metadata accessor for QLFileThumbnailRequestOptions);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CA214008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA217018(&qword_1EC43E438, type metadata accessor for QLThumbnailError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1CA2140A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CA21BD2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CA214158(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA214250;

  return v7(a1);
}

uint64_t sub_1CA214250()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_1CA214348(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3D0, &qword_1CA21FF38);
  v10 = *(sub_1CA21BB1C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1CA21BB1C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1CA214520(uint64_t a1)
{
  v79 = sub_1CA21BB1C();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E3B8, &qword_1CA21FF10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_1CA214348(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_1CA215DC0(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_1CA217280();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_1CA217154(v16, v77, &qword_1EC43E3B8, &qword_1CA21FF10);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_1CA216E20(v39, &qword_1EC43E3B8, &qword_1CA21FF10);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_1CA214348(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_1CA217154(v16, v78, &qword_1EC43E3B8, &qword_1CA21FF10);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_1CA216E20(v45, &qword_1EC43E3B8, &qword_1CA21FF10);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_1CA217154(v16, v77, &qword_1EC43E3B8, &qword_1CA21FF10);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_1CA216E20(v16, &qword_1EC43E3B8, &qword_1CA21FF10);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_1CA217154(v16, v78, &qword_1EC43E3B8, &qword_1CA21FF10);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_1CA216E20(v16, &qword_1EC43E3B8, &qword_1CA21FF10);
    sub_1CA217280();
    result = sub_1CA216E20(v39, &qword_1EC43E3B8, &qword_1CA21FF10);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA214C40(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1CA21BB1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450]);
  v36 = a2;
  v13 = sub_1CA21BB7C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1CA217018(&qword_1EC43DEB0, MEMORY[0x1E69E8450]);
      v23 = sub_1CA21BB9C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1CA21527C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1CA214F20(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1CA21BB1C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  result = sub_1CA21BCCC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450]);
      result = sub_1CA21BB7C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1CA21527C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1CA21BB1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CA214F20(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1CA215520();
      goto LABEL_12;
    }

    sub_1CA215758(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450]);
  v15 = sub_1CA21BB7C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1CA217018(&qword_1EC43DEB0, MEMORY[0x1E69E8450]);
      v23 = sub_1CA21BB9C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CA21BD3C();
  __break(1u);
  return result;
}

void *sub_1CA215520()
{
  v1 = v0;
  v2 = sub_1CA21BB1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  v7 = *v0;
  v8 = sub_1CA21BCBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1CA215758(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1CA21BB1C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E418, &qword_1CA220290);
  v10 = sub_1CA21BCCC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450]);
      result = sub_1CA21BB7C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1CA215A74(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CA21BBDC();
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v4 = sub_1CA21BD8C();

  return sub_1CA215B8C(a1, v4);
}

uint64_t sub_1CA215B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1CA21BD7C();
  sub_1CA21BBFC();
  v7 = sub_1CA21BD8C();

  return a3(a1, a2, v7);
}

unint64_t sub_1CA215B8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1CA21BBDC();
      v9 = v8;
      if (v7 == sub_1CA21BBDC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1CA21BD2C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1CA215C90(char *a1, int64_t a2, char a3)
{
  result = sub_1CA215CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CA215CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E420, &qword_1CA220298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CA215DC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1CA21BB1C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = (MEMORY[0x1EEE9AC00])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CA2160AC(uint64_t a1)
{
  v2 = sub_1CA21BB1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1CA217018(&qword_1EC43DEB8, MEMORY[0x1E69E8450]);
  result = MEMORY[0x1CCA9BD80](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1CA214C40(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_1CA216248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC43E428, &qword_1CA2202A0);
    v3 = sub_1CA21BCFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CA217154(v4, &v13, &qword_1EC43E430, &qword_1CA2202A8);
      v5 = v13;
      v6 = v14;
      result = sub_1CA215B08(v13, v14, sub_1CA2140A0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CA217140(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CA21638C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CA2163E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA216448()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return 1;
}

unint64_t sub_1CA216498()
{
  result = qword_1EC43E3C8;
  if (!qword_1EC43E3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC43E3C8);
  }

  return result;
}

uint64_t sub_1CA2164E4(CGContext *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  CGContextScaleCTM(a1, *(v1 + 16), *(v1 + 16));
  return sub_1CA21BC8C();
}

uint64_t sub_1CA216550(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[2] = a1;
  v6[3] = a2;
  return v3(sub_1CA217104, v6);
}

uint64_t sub_1CA21659C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1CA2176DC;

  return sub_1CA211270(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1CA216664(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CA216718;

  return sub_1CA211E54(a1, a2, v7);
}

uint64_t sub_1CA216718()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for ThumbnailProviderBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ThumbnailProviderBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CA216928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA216970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA2169EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CA216A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
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

uint64_t sub_1CA216AB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA216B00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CA216B6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CA216BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA216C08(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CA216CF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA216D10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1CA216D74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA216718;

  return sub_1CA212AE0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1CA216E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CA216E80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CA2176DC;

  return sub_1CA214158(a1, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1CA217018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA217060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1CA217104()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return v3;
}

_OWORD *sub_1CA217140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CA217154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CA2171BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA2176DC;

  return sub_1CA2120B4(a1, a2, v6);
}

void sub_1CA21750C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1CA2175A4()
{
  result = qword_1EC43E490;
  if (!qword_1EC43E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43E490);
  }

  return result;
}

void _QLCopyResourcePropertyForKey_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Hit error %@ retrieving the thumbnails property for %@");
  v2 = *MEMORY[0x1E69E9840];
}

void QLGetRealPath_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v1, v2, "failed to get real path for %s: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void QLGetRealPath_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_1CA1E7000, v1, v2, "failed to open path %s: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void QLTCreateCGContextWithSize_cold_5(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Did not create CGContext because of incorrect image size in pixels (width: %d, height: %d)", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

void QLCreateCGImageWithData_cold_1(int *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Did not create CGContext for thumbail extension because of incorrect image size in pixels (width: %d, height: %d)", v6, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}