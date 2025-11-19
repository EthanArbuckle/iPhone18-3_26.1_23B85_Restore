void onKeybagLockStatusChange()
{
  v0 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_INFO, "Keybag lock status changed", v3, 2u);
  }

  v1 = +[AXSSPunctuationManager sharedDatabase];
  [v1 _initializeDatabaseStartup];

  v2 = +[AXSSPunctuationManager sharedDatabase];
  [v2 _updateCloudKitHelpers];
}

uint64_t userAuthDidChange(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 userAuthChanged];
  }

  return result;
}

void sub_1C0E8D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C0E8D254(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C0ECDBB8(&v4);
}

uint64_t sub_1C0E8D28C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0E8D2C4()
{
  v1 = (type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_1C0F4F940();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1C0E8D4DC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C0ECF180(v2);
}

void sub_1C0E8D534(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C0ECF32C(v2);
}

uint64_t sub_1C0E8DA60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C0E8DB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0E8DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F860();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C0F4F830();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0E8DCA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C0F4F860();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C0F4F830();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C0E8DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0E8DE74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C0F4F940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0E8DF34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C0E8DF94(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C0ED042C(v2);
}

uint64_t sub_1C0E8E194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C0ECE3D8(v4);
}

uint64_t sub_1C0E8E1D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0E8E210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0E8E2C4()
{
  v1 = sub_1C0F4F830();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C0E8E410()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport16VOMyLocationInfo33_CBECDD908EB1E0F957F08A3D85914CCDLLVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0E8E47C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0E8E520()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0E8E570@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0E8E5C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C0E8E618()
{
  v1 = *(v0 + 48);

  sub_1C0F08B10(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1C0E8E660()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0E8E6A8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1C0E8E6E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C0E8E71C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C0F50200();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E90F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E916E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E91AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E91F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E933B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E93E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AXSSAccessibilityDescriptionForSymbolName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ([v3 length])
  {
    if ([v3 containsString:@"wifi"] && MGGetBoolAnswer())
    {
      v6 = [v3 stringByReplacingOccurrencesOfString:@"wifi" withString:@"WLAN"];

      v3 = v6;
    }

    v7 = AXNSLocalizedStringForLocale();
    if (![v7 length] || objc_msgSend(v7, "isEqual:", @"__--__"))
    {
      v8 = AXNSLocalizedStringForLocale();

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length] && (objc_msgSend(v7, "isEqual:", @"__--__") & 1) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F405A428;
  }

  return v9;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void AXSSLuminanceForColor(CGColor *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    AXSSColorGetRGBAComponents(a1, v6);
    for (i = 0; i != 4; ++i)
    {
      v2 = *&v6[i];
      if (v2 <= 0.03928)
      {
        v3 = v2 / 12.92;
      }

      else
      {
        v3 = pow((v2 + 0.055) / 1.055, 2.4);
      }

      *&v6[i] = v3;
    }

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }
}

void AXSSColorGetRGBAComponents(CGColor *a1, uint64_t a2)
{
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v5 = CGBitmapContextCreate(data, 1uLL, 1uLL, 8uLL, 4uLL, v4, 5u);
  CGContextSetFillColorWithColor(v5, a1);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1.0;
  v9.size.height = 1.0;
  CGContextFillRect(v5, v9);
  CGContextRelease(v5);
  CGColorSpaceRelease(v4);
  for (i = 0; i != 4; ++i)
  {
    LOBYTE(v6) = data[i];
    v6 = (LODWORD(v6) / 255.0);
    *(a2 + 8 * i) = v6;
  }
}

void AXSSRecommendedColorForColors(CGColor *a1, CGColor *a2, uint64_t a3, CFTypeRef *a4, CFTypeRef *a5, double a6)
{
  v7 = a4;
  v35[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!a3 && a4)
  {
    RecommendedColorIfNeeded = _findRecommendedColorIfNeeded(a1, a2, a6);
    if (RecommendedColorIfNeeded)
    {
      v12 = RecommendedColorIfNeeded;
      AXSSLuminanceForColor(RecommendedColorIfNeeded);
      v14 = v13;
      AXSSLuminanceForColor(a2);
      if (v15 <= v14)
      {
        v16 = (v14 + 0.05) / (v15 + 0.05);
      }

      else
      {
        v16 = 1.0 / ((v14 + 0.05) / (v15 + 0.05));
      }

      if (v16 < a6)
      {
        goto LABEL_46;
      }

      goto LABEL_20;
    }

LABEL_49:
    v34 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a3 != 1 || !a5)
  {
    if (a3 == 2 && a4 && a5)
    {
      v12 = _findRecommendedColorIfNeeded(a1, a2, a6);
      *v7 = CGColorCreateCopy(v12);
      AXSSLuminanceForColor(a2);
      v23 = v22;
      AXSSLuminanceForColor(v12);
      if (v24 <= v23)
      {
        v25 = (v23 + 0.05) / (v24 + 0.05);
      }

      else
      {
        v25 = 1.0 / ((v23 + 0.05) / (v24 + 0.05));
      }

      if (v25 < a6)
      {
        v26 = _findRecommendedColorIfNeeded(a2, v12, a6);
        *a5 = CGColorCreateCopy(v26);
        AXSSLuminanceForColor(v26);
        v28 = v27;
        AXSSLuminanceForColor(v12);
        if (v29 <= v28)
        {
          v30 = (v28 + 0.05) / (v29 + 0.05);
        }

        else
        {
          v30 = 1.0 / ((v28 + 0.05) / (v29 + 0.05));
        }

        if (v30 <= a6)
        {
          if (*v7)
          {
            CFRelease(*v7);
          }

          if (*a5)
          {
            CFRelease(*a5);
          }

          AXSSColorGetRGBAComponents(v26, v35);
          if (v35[0] >= 0.2)
          {
            v31 = 1.0;
          }

          else
          {
            v31 = 0.0;
          }

          if (v35[0] >= 0.2)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = 1.0;
          }

          *a5 = CGColorCreateGenericGray(v31, 1.0);
          *v7 = CGColorCreateGenericGray(v32, 1.0);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }

      if (v12)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_49;
  }

  v17 = _findRecommendedColorIfNeeded(a2, a1, a6);
  if (!v17)
  {
    goto LABEL_49;
  }

  v12 = v17;
  AXSSLuminanceForColor(a1);
  v19 = v18;
  AXSSLuminanceForColor(v12);
  if (v20 <= v19)
  {
    v21 = (v19 + 0.05) / (v20 + 0.05);
  }

  else
  {
    v21 = 1.0 / ((v19 + 0.05) / (v20 + 0.05));
  }

  v7 = a5;
  if (v21 < a6)
  {
    goto LABEL_46;
  }

LABEL_20:
  *v7 = CGColorCreateCopy(v12);
LABEL_46:
  v33 = *MEMORY[0x1E69E9840];

  CFRelease(v12);
}

uint64_t _findRecommendedColorIfNeeded(CGColor *a1, CGColor *a2, double a3)
{
  AXSSLuminanceForColor(a1);
  v7 = v6;
  AXSSLuminanceForColor(a2);
  if (v8 <= v7)
  {
    v9 = (v7 + 0.05) / (v8 + 0.05);
  }

  else
  {
    v9 = 1.0 / ((v7 + 0.05) / (v8 + 0.05));
  }

  if (v9 >= a3)
  {
    return 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___findRecommendedColor_block_invoke;
  aBlock[3] = &unk_1E8134D38;
  aBlock[6] = a1;
  aBlock[7] = a2;
  *&aBlock[8] = a3;
  aBlock[4] = &v17;
  aBlock[5] = &v21;
  v10 = _Block_copy(aBlock);
  v10[2](1.0, 1.0);
  (v10[2])(v10, -1.0, 0.0);
  (v10[2])(v10, -1.0, -1.0);
  (v10[2])(v10, 1.0, 0.0);
  (v10[2])(v10, 0.0, 1.0);
  (v10[2])(v10, 0.0, -1.0);
  v11 = v18;
  if (!v18[3])
  {
    Copy = CGColorCreateCopy(v22[3]);
    v11 = v18;
    v18[3] = Copy;
  }

  v13 = v22[3];
  if (v13)
  {
    CFRelease(v13);
    v11 = v18;
  }

  v14 = v11[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v14;
}

void sub_1C0E99414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

double *AXSSRgb2hsv(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  if (a4 <= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  if (v6 >= a6)
  {
    v6 = a6;
  }

  if (v7 <= a6)
  {
    v7 = a6;
  }

  *a3 = v7;
  v8 = v7 - v6;
  if (v8 >= 0.00001)
  {
    if (v7 <= 0.0)
    {
      *a2 = 0.0;
      v9 = NAN;
    }

    else
    {
      *a2 = v8 / v7;
      if (v7 <= a4)
      {
        v12 = (a5 - a6) / v8;
      }

      else
      {
        v10 = v7 > a5;
        v11 = (a4 - a5) / v8 + 4.0;
        v12 = (a6 - a4) / v8 + 2.0;
        if (v10)
        {
          v12 = v11;
        }
      }

      v9 = v12 * 60.0;
      if (v9 < 0.0)
      {
        v9 = v9 + 360.0;
      }
    }
  }

  else
  {
    *a2 = 0.0;
    v9 = 0.0;
  }

  *result = v9;
  return result;
}

double *AXSSHsv2rgb(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a5 <= 0.0)
  {
    *a3 = a6;
    *a2 = a6;
    *result = a6;
    return result;
  }

  v6 = a4 / 60.0;
  v7 = vcvtmd_s64_f64(v6);
  v8 = v6 - v7;
  v9 = (1.0 - a5) * a6;
  v10 = (1.0 - a5 * v8) * a6;
  v11 = (1.0 - a5 * (1.0 - v8)) * a6;
  if (v7 > 1)
  {
    switch(v7)
    {
      case 2:
        *result = v9;
        *a2 = a6;
        *a3 = v11;
        return result;
      case 3:
        *result = v9;
        *a2 = v10;
        goto LABEL_13;
      case 4:
        *result = v11;
        *a2 = v9;
LABEL_13:
        *a3 = a6;
        return result;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    *result = a6;
    *a2 = v11;
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    *result = v10;
    *a2 = a6;
LABEL_15:
    *a3 = v9;
    return result;
  }

LABEL_16:
  *result = a6;
  *a2 = v9;
  *a3 = v10;
  return result;
}

void ___findRecommendedColor_block_invoke(uint64_t a1, double a2, double a3)
{
  components[4] = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_37;
  }

  v7 = *(a1 + 56);
  v47 = *(a1 + 64);
  AXSSColorGetRGBAComponents(*(a1 + 48), &v60);
  v58 = v61;
  v59 = v60;
  v48 = v63;
  v57 = v62;
  v55 = 0.0;
  v56 = 0.0;
  v54 = 0.0;
  AXSSRgb2hsv(&v56, &v55, &v54, v60, v61, v62);
  v8 = 0;
  v10 = v54;
  v9 = v55;
  v11 = 1.0;
  v12 = 1.0 - v55;
  if (a3 <= 0.0)
  {
    v12 = v55;
  }

  v52 = v12 / 70.0;
  v13 = 1.0 - v54;
  if (a2 <= 0.0)
  {
    v13 = v54;
  }

  v14 = *MEMORY[0x1E695F1C0];
  v15 = 0.0;
  v50 = v13 / 70.0;
  for (i = 69; i; --i)
  {
    v9 = v9 + a3 * v52;
    v10 = v10 + a2 * v50;
    v54 = v10;
    v55 = v9;
    if (v10 < 0.0 || v10 > v11)
    {
      break;
    }

    if (v9 < 0.0 || v9 > v11)
    {
      break;
    }

    if (v8)
    {
      CFRelease(v8);
      v10 = v54;
      v9 = v55;
    }

    AXSSHsv2rgb(&v59, &v58, &v57, v56, v9, v10);
    v20 = v58;
    v19 = v59;
    v21 = v57;
    v22 = CGColorSpaceCreateWithName(v14);
    if (v22)
    {
      v23 = v22;
      components[0] = v19;
      components[1] = v20;
      components[2] = v21;
      components[3] = v48;
      v8 = CGColorCreate(v22, components);
      CFRelease(v23);
      if (v8)
      {
        AXSSLuminanceForColor(v8);
        v25 = v24;
        AXSSLuminanceForColor(v7);
        v11 = 1.0;
        if (v26 <= v25)
        {
          v15 = (v25 + 0.05) / (v26 + 0.05);
        }

        else
        {
          v15 = 1.0 / ((v25 + 0.05) / (v26 + 0.05));
        }

        if (v15 >= v47)
        {
          goto LABEL_30;
        }

        continue;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = 1.0;
  }

  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v15 <= *(a1 + 64) && (v3 = a1 + 40, *(*(*(a1 + 40) + 8) + 24)))
  {
    v27 = *(a1 + 56);
    AXSSLuminanceForColor(v8);
    v51 = v28;
    AXSSLuminanceForColor(v27);
    v53 = v29;
    v30 = *(*(*(a1 + 40) + 8) + 24);
    v31 = *(a1 + 56);
    AXSSLuminanceForColor(v30);
    v49 = v32;
    AXSSLuminanceForColor(v31);
    v33.f64[0] = v51;
    v33.f64[1] = v49;
    v34 = vdupq_n_s64(0x3FA999999999999AuLL);
    v35.f64[0] = v53;
    v35.f64[1] = v36;
    v37 = vdivq_f64(vaddq_f64(v33, v34), vaddq_f64(v35, v34));
    v38 = vcgtq_f64(v35, v33);
    __asm { FMOV            V2.2D, #1.0 }

    v44 = vbslq_s8(v38, vdivq_f64(_Q2, v37), v37);
    if (vmovn_s64(vcgtq_f64(v44, vdupq_laneq_s64(v44, 1))).u8[0])
    {
      v45 = *(*(*v3 + 8) + 24);
      if (v45)
      {
        CFRelease(v45);
      }

      goto LABEL_35;
    }
  }

  else
  {
LABEL_35:
    *(*(*v3 + 8) + 24) = CGColorCreateCopy(v8);
  }

  CFRelease(v8);
LABEL_37:
  v46 = *MEMORY[0x1E69E9840];
}

void sub_1C0E99DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E9A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E9A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0E9ADF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0E9D6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMediaTypeMetadataObject()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVMediaTypeMetadataObjectSymbolLoc_ptr;
  v8 = getAVMediaTypeMetadataObjectSymbolLoc_ptr;
  if (!getAVMediaTypeMetadataObjectSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary();
    v6[3] = dlsym(v1, "AVMediaTypeMetadataObject");
    getAVMediaTypeMetadataObjectSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getAVCaptureDeviceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary();
  result = objc_getClass("AVCaptureDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVCaptureDeviceClass_block_invoke_cold_1();
    return AVFoundationLibrary();
  }

  return result;
}

uint64_t AVFoundationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8134F30;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AVFoundationLibraryCore_frameworkLibrary)
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

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMediaTypeMetadataObjectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMediaTypeMetadataObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeMetadataObjectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C0EA094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

__CFString *AXSSLanguageConvertToCanonicalForm(void *a1)
{
  v1 = AXSSLanguageToLocales_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXSSLanguageConvertToCanonicalForm_cold_1();
  }

  v3 = AXSSLanguageToLocales_LanguageToLangLocale;
  v4 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if ([v4 hasPrefix:@"zh"])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];

    v4 = [v5 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
  }

  if (![v4 length])
  {
    v8 = 0;
    goto LABEL_30;
  }

  v6 = [v4 lowercaseString];
  v7 = [v3 objectForKey:v6];
  if (v7)
  {
    v8 = v7;
LABEL_8:
    if ((![v6 isEqualToString:@"zh"] || (-[__CFString hasPrefix:](v8, "hasPrefix:", @"zh") & 1) == 0) && (!objc_msgSend(v6, "isEqualToString:", @"pt") || (-[__CFString hasPrefix:](v8, "hasPrefix:", @"pt") & 1) == 0) && (!objc_msgSend(v6, "isEqualToString:", @"fr") || !-[__CFString hasPrefix:](v8, "hasPrefix:", @"fr")))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v9 = [v4 rangeOfString:@"-"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v4 substringToIndex:v9];
  v12 = [v4 substringFromIndex:v10 + 1];
  v13 = [v12 uppercaseString];
  v8 = [v11 stringByAppendingFormat:@"-%@", v13];

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_19:
  v14 = [v6 isEqualToString:@"zh"];
  v15 = CFLocaleCopyPreferredLanguages();
  v16 = [(__CFArray *)v15 firstObject];
  if (!v14)
  {

    if (v16)
    {
      v18 = [(__CFString *)v16 lowercaseString];
      v19 = [v3 objectForKeyedSubscript:v18];
      if (!v19)
      {
LABEL_26:

        goto LABEL_28;
      }

      v20 = v19;
      v21 = [(__CFString *)v16 lowercaseString];
      v22 = [v21 hasPrefix:v6];

      if (v22)
      {
        v18 = v8;
        v8 = v16;
        goto LABEL_26;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v17 = [(__CFString *)v16 stringByReplacingOccurrencesOfString:@"-Hans" withString:&stru_1F405A428];

  v16 = [v17 stringByReplacingOccurrencesOfString:@"-Hant" withString:&stru_1F405A428];

  if (([(__CFString *)v16 hasPrefix:@"zh"]& 1) == 0)
  {
    v8 = @"zh-CN";
    goto LABEL_28;
  }

  v8 = v16;
LABEL_29:

LABEL_30:

  return v8;
}

id AXSSLanguageCanonicalFormToGeneralLanguage(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [a1 lowercaseString];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_1F4066618 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1F4066618);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v1 rangeOfString:v6] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = [v1 substringToIndex:{objc_msgSend(v1, "rangeOfString:", v6)}];
          goto LABEL_11;
        }
      }

      v3 = [&unk_1F4066618 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = v1;
LABEL_11:
  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1C0EA3DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXSSLanguageToLocales_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v4 pathForResource:@"AXLanguageToLocale" ofType:@"plist"];
  v2 = [v0 initWithContentsOfFile:v1];
  v3 = AXSSLanguageToLocales_LanguageToLangLocale;
  AXSSLanguageToLocales_LanguageToLangLocale = v2;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1C0EA755C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
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

void sub_1C0EA7BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

void sub_1C0EA8084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C0EA856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1C0EA96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return objc_opt_class();
}

id AXSSHumanReadableDescriptionForMotionTrackingFacialExpression(unint64_t a1)
{
  if (a1 > 9)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135400[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableExplanationForMotionTrackingFacialExpression(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135450[a1 - 1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingFacialExpressionSensitivity(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E8135498[a1 - 1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingMode(unint64_t a1)
{
  if (a1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E81354B0[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableExplanationForMotionTrackingMode(unint64_t a1)
{
  if (a1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E81354D0[a1];
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  }

  return v3;
}

id AXSSHumanReadableDescriptionForMotionTrackingErrorCodeAndTrackingType(uint64_t a1, uint64_t a2)
{
  if (a1 <= 5)
  {
    if (a1 > 3)
    {
      if (a1 != 4)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_TOO_DARK";
        goto LABEL_38;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      if (a2 == 3)
      {
        v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_MOVED_SIGNIFICANTLY";
      }

      else
      {
        v9 = @"AXMT_FAILURE_REASON_FACE_MOVED_SIGNIFICANTLY";
      }

      goto LABEL_37;
    }

    if ((a1 - 2) < 2)
    {
      if (AXSSDeviceGetType() == 3)
      {
        v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
        v4 = [v3 usesMetricSystem];

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        if (v4)
        {
          if (a2 == 3)
          {
            v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC_IPAD";
          }

          else
          {
            v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC_IPAD";
          }
        }

        else if (a2 == 3)
        {
          v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_IPAD";
        }

        else
        {
          v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_IPAD";
        }
      }

      else
      {
        v7 = [MEMORY[0x1E695DF58] currentLocale];
        v8 = [v7 usesMetricSystem];

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        if (v8)
        {
          if (a2 == 3)
          {
            v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC";
          }

          else
          {
            v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA_METRIC";
          }
        }

        else if (a2 == 3)
        {
          v9 = @"AXMT_ON_DEVICE_EYE_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA";
        }

        else
        {
          v9 = @"AXMT_HEAD_TRACKING_FAILURE_REASON_FACE_TOO_FAR_FROM_CAMERA";
        }
      }

LABEL_37:
      v6 = v5;
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      v5 = v6;
      v9 = @"AXMT_FAILURE_REASON_FACE_LOST";
      goto LABEL_38;
    }

LABEL_29:
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_UNDEFINED";
    goto LABEL_38;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_DEVICE_IN_MOTION";
        goto LABEL_38;
      case 11:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_INITIALIZING";
        goto LABEL_38;
      case 14:
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
        v5 = v6;
        v9 = @"AXMT_FAILURE_REASON_HID_DEVICE_CONFIGURING";
        goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (a1 == 6)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_SENSOR_COVERED";
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v5 = v6;
    v9 = @"AXMT_FAILURE_REASON_CAMERA_STOLEN";
  }

LABEL_38:
  v10 = [v6 localizedStringForKey:v9 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

  return v10;
}

void sub_1C0EB00D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C0EB1A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0EB23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EB4500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0EB5518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXSSDeviceGetType()
{
  if (AXSSDeviceGetType__AXSSCurrentDeviceTypeOnceToken != -1)
  {
    AXSSDeviceGetType_cold_1();
  }

  return AXSSDeviceGetType__AXSSDeviceType;
}

uint64_t __AXSSDeviceGetType_block_invoke()
{
  result = MGGetSInt32Answer();
  AXSSDeviceGetType__AXSSDeviceType = result;
  return result;
}

void *__AXSSCastAsClass(NSString *a1, void *a2)
{
  v3 = a2;
  NSClassFromString(a1);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id AXSSVoiceOverAvailableTextualContextIdentifiers()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"AXSSVoiceOverTextualContextWordProcessing";
  v3[1] = @"AXSSVoiceOverTextualContextNarrative";
  v3[2] = @"AXSSVoiceOverTextualContextMessaging";
  v3[3] = @"AXSSVoiceOverTextualContextSocialMedia";
  v3[4] = @"AXSSVoiceOverTextualContextSpreadsheet";
  v3[5] = @"AXSSVoiceOverTextualContextFileSystem";
  v3[6] = @"AXSSVoiceOverTextualContextSourceCode";
  v3[7] = @"AXSSVoiceOverTextualContextConsole";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id AXSSVoiceOverLocalizedNameForTextualContextIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextWordProcessing"])
  {
    v2 = @"punctuation.context.word.processing";
LABEL_17:
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v4 = [v3 localizedStringForKey:v2 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_18;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextNarrative"])
  {
    v2 = @"punctuation.context.reading";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextMessaging"])
  {
    v2 = @"punctuation.context.messaging";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSourceCode"])
  {
    v2 = @"punctuation.context.source.code";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSocialMedia"])
  {
    v2 = @"punctuation.context.social.media";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSpreadsheet"])
  {
    v2 = @"punctuation.context.spreadsheet";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextConsole"])
  {
    v2 = @"punctuation.context.console";
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextFileSystem"])
  {
    v2 = @"punctuation.context.file.system";
    goto LABEL_17;
  }

  v4 = 0;
LABEL_18:

  return v4;
}

__CFString *AXSSVoiceOverSymbolNameForTextualContextIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextWordProcessing"])
  {
    v2 = @"doc.text";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextNarrative"])
  {
    v2 = @"book";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextMessaging"])
  {
    v2 = @"message";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSourceCode"])
  {
    v2 = @"curlybraces";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSocialMedia"])
  {
    v2 = @"person.2";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextSpreadsheet"])
  {
    v2 = @"tablecells";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextConsole"])
  {
    v2 = @"terminal";
  }

  else if ([v1 isEqualToString:@"AXSSVoiceOverTextualContextFileSystem"])
  {
    v2 = @"folder";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id getAVCaptureDeviceWasConnectedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr;
  v8 = getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr;
  if (!getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceWasConnectedNotification");
    getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceWasDisconnectedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr;
  v8 = getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr;
  if (!getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceWasDisconnectedNotification");
    getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVCaptureDeviceClass_softClass_0;
  v7 = getAVCaptureDeviceClass_softClass_0;
  if (!getAVCaptureDeviceClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVCaptureDeviceClass_block_invoke_0;
    v3[3] = &unk_1E8134F10;
    v3[4] = &v4;
    __getAVCaptureDeviceClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C0EB794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVMediaTypeVideo()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVMediaTypeVideoSymbolLoc_ptr_0;
  v8 = getAVMediaTypeVideoSymbolLoc_ptr_0;
  if (!getAVMediaTypeVideoSymbolLoc_ptr_0)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVMediaTypeVideo");
    getAVMediaTypeVideoSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1C0EB8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr;
  v8 = getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera");
    getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceTypeBuiltInWideAngleMetadataCamera()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr;
  v8 = getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera");
    getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAVCaptureDeviceTypeBuiltInWideAngleCamera()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  v8 = getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_0();
    v6[3] = dlsym(v1, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
    getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1C0EB90BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureDeviceWasConnectedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceWasConnectedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceWasConnectedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVFoundationLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8135B78;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!AVFoundationLibraryCore_frameworkLibrary_0)
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

uint64_t __AVFoundationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceWasDisconnectedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceWasDisconnectedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVCaptureDeviceClass_block_invoke_0(uint64_t a1)
{
  AVFoundationLibrary_0();
  result = objc_getClass("AVCaptureDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAVCaptureDeviceClass_block_invoke_cold_1();
    return __getAVMediaTypeVideoSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMediaTypeMetadataObjectSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVMediaTypeMetadataObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeMetadataObjectSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleMetadataCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInDualCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInTelephotoCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_0();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInUltraWideCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceDiscoverySessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceDiscoverySession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceDiscoverySessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAVCaptureDeviceDiscoverySessionClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_7();
  }
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1C0EBEB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x270]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2D0]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x360]);
  objc_destroyWeak(&STACK[0x390]);
  objc_destroyWeak(&STACK[0x3C0]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x420]);
  objc_destroyWeak(&STACK[0x450]);
  objc_destroyWeak(&STACK[0x480]);
  objc_destroyWeak(&STACK[0x4B0]);
  objc_destroyWeak(&STACK[0x4E0]);
  objc_destroyWeak(&STACK[0x510]);
  objc_destroyWeak(&STACK[0x540]);
  objc_destroyWeak(&STACK[0x570]);
  objc_destroyWeak(&STACK[0x5F0]);
  objc_destroyWeak(&STACK[0x620]);
  objc_destroyWeak(&STACK[0x650]);
  objc_destroyWeak(&STACK[0x680]);
  objc_destroyWeak(&STACK[0x6B0]);
  objc_destroyWeak(&STACK[0x6E0]);
  objc_destroyWeak(&STACK[0x710]);
  objc_destroyWeak(&STACK[0x740]);
  objc_destroyWeak(&STACK[0x770]);
  objc_destroyWeak(&STACK[0x7A0]);
  objc_destroyWeak(&STACK[0x7D0]);
  objc_destroyWeak(&STACK[0x800]);
  objc_destroyWeak(&STACK[0x830]);
  objc_destroyWeak(&STACK[0x860]);
  objc_destroyWeak(&STACK[0x890]);
  objc_destroyWeak(&STACK[0x8C0]);
  objc_destroyWeak(&STACK[0x8F0]);
  objc_destroyWeak(&STACK[0x920]);
  objc_destroyWeak(&STACK[0x950]);
  objc_destroyWeak(&STACK[0x980]);
  objc_destroyWeak(&STACK[0x9B0]);
  objc_destroyWeak(&STACK[0x9E0]);
  objc_destroyWeak(&STACK[0xA10]);
  objc_destroyWeak(&STACK[0xB80]);
  objc_destroyWeak(&STACK[0xBB0]);
  objc_destroyWeak(&STACK[0xBE0]);
  objc_destroyWeak(&STACK[0xD00]);
  objc_destroyWeak(&STACK[0xE20]);
  objc_destroyWeak(&STACK[0xE50]);
  objc_destroyWeak(&STACK[0xF70]);
  objc_destroyWeak(&STACK[0xFA0]);
  objc_destroyWeak(&STACK[0xFD0]);
  objc_destroyWeak(&STACK[0x1050]);
  objc_destroyWeak(&STACK[0x1080]);
  objc_destroyWeak(&STACK[0x10B0]);
  objc_destroyWeak(&STACK[0x10E0]);
  objc_destroyWeak(&STACK[0x1110]);
  objc_destroyWeak(&STACK[0x1140]);
  objc_destroyWeak(&STACK[0x1148]);
  _Unwind_Resume(a1);
}

id AXSSLogForCategory(uint64_t a1)
{
  if (a1 < 4)
  {
    if (AXSSLogForCategory_onceToken != -1)
    {
      AXSSLogForCategory_cold_1();
    }

    v1 = AXSSLogForCategory_AllLogObjects[a1];
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  return v1;
}

uint64_t __AXSSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Accessibility", "default");
  v1 = AXSSLogForCategory_AllLogObjects[0];
  AXSSLogForCategory_AllLogObjects[0] = v0;

  v2 = os_log_create("com.apple.Accessibility", "idc");
  v3 = qword_1EBE796B8;
  qword_1EBE796B8 = v2;

  qword_1EBE796C0 = os_log_create("com.apple.Accessibility", "motiontracking");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C0EC2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __GetHiraganaSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[[:Hiragana:][:Katakana_Or_Hiragana:]]"];
  GetHiraganaSet___hiraganaSet = result;
  return result;
}

uint64_t __GetKatakanaSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[[:Katakana:][:Katakana_Or_Hiragana:]]"];
  GetKatakanaSet___katakanaSet = result;
  return result;
}

uint64_t __GetHalfWidthLatinSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[a-zA-Z]"];
  GetHalfWidthLatinSet___halfWidthLatinSet = result;
  return result;
}

uint64_t __GetFullWidthLatinSet_block_invoke()
{
  result = [MEMORY[0x1E696AEC0] _characterSetWithPattern:@"[ａ-ｚＡ-Ｚ]"];
  GetFullWidthLatinSet___fullWidthLatinSet = result;
  return result;
}

Class __getHIDManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!HIDLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __HIDLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8135C50;
    v7 = 0;
    HIDLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HIDLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("HIDManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHIDManagerClass_block_invoke_cold_1();
  }

  getHIDManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __HIDLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HIDLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1C0EC5440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC6284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC6B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0EC7898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCPeerIDClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCPeerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCPeerIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMCPeerIDClass_block_invoke_cold_1();
    return MultipeerConnectivityLibrary();
  }

  return result;
}

uint64_t MultipeerConnectivityLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MultipeerConnectivityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MultipeerConnectivityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8135D50;
    v6 = 0;
    MultipeerConnectivityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MultipeerConnectivityLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!MultipeerConnectivityLibraryCore_frameworkLibrary)
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

uint64_t __MultipeerConnectivityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MultipeerConnectivityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMCSessionClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCSessionClass_block_invoke_cold_1();
    return __getMCNearbyServiceBrowserClass_block_invoke(v3);
  }

  return result;
}

Class __getMCNearbyServiceBrowserClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCNearbyServiceBrowser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCNearbyServiceBrowserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCNearbyServiceBrowserClass_block_invoke_cold_1();
    return __getMCNearbyServiceAdvertiserClass_block_invoke(v3);
  }

  return result;
}

Class __getMCNearbyServiceAdvertiserClass_block_invoke(uint64_t a1)
{
  MultipeerConnectivityLibrary();
  result = objc_getClass("MCNearbyServiceAdvertiser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCNearbyServiceAdvertiserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMCNearbyServiceAdvertiserClass_block_invoke_cold_1();
    return __getMCErrorDomainSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMCErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MultipeerConnectivityLibrary();
  result = dlsym(v2, "MCErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C0ECBFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getkSBSLockStateNotifyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8135E38;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "kSBSLockStateNotifyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBSLockStateNotifyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void type metadata accessor for AXSSRemoteDesktopFeature()
{
  if (!qword_1EBE77298)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBE77298);
    }
  }
}

void *sub_1C0ECD6D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C0ECD6E4(uint64_t a1)
{
  v3 = sub_1C0F4F630();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) = 1;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber) = 0;
  sub_1C0F4F600();
  v10 = *(v4 + 32);
  v10(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript, v7, v3);
  sub_1C0F4F600();
  v10(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, v7, v3);
  v11 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask) = 0;
  v15 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
  v16 = sub_1C0F4F750();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory) = *sub_1C0F4FCD0();

  v17 = sub_1C0F50290();
  *(v17 + 16) = 10;
  *(v17 + 64) = 0;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  v18 = v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  *(v18 + 24) = 0;
  *v18 = v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 32) = 10;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v21 = sub_1C0F4F830();
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking) = 0;
  v22 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine;
  *(v1 + v22) = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  type metadata accessor for AXSpeechTranscriber.AudioBufferConverter();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) = v23;
  v24 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) = v19;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_bufferSize) = 4096;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup) = 0;
  sub_1C0F4F990();
  v26 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_logger;
  v27 = sub_1C0F4FD30();
  (*(*(v27 - 8) + 32))(v1 + v26, a1, v27);
  return v1;
}

uint64_t sub_1C0ECDBB8(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == *a1)
  {
    LOBYTE(v3) = *a1;
    return sub_1C0ECEA80(&v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECDCD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a4;
  v6 = v4;
  v8 = sub_1C0F4F630();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_beginAccess();
  (*(v9 + 16))(v12, v4 + v13, v8);
  sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848]);
  v14 = sub_1C0F50190();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (v14)
  {
    swift_beginAccess();
    (*(v9 + 24))(v6 + v13, a1, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v18[-2] = v6;
    v18[-1] = a1;
    v18[1] = v6;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return (v15)(a1, v8);
}

uint64_t sub_1C0ECDF4C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return result;
}

uint64_t sub_1C0ECE0D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  swift_beginAccess();
  sub_1C0EED570(v1 + v7, v6, &qword_1EBE77370, &qword_1C0F56200);
  v8 = sub_1C0EEBF3C(v6, a1);
  sub_1C0EEFAA8(v6, &qword_1EBE77370, &qword_1C0F56200);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v7, &qword_1EBE77370, &qword_1C0F56200);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77370, &qword_1C0F56200);
}

uint64_t sub_1C0ECE2D4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  return result;
}

uint64_t sub_1C0ECE3D8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECE514(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v7, v6, &qword_1EBE77390, &qword_1C0F56208);
  v8 = sub_1C0EEC25C(v6, a1);
  sub_1C0EEFAA8(v6, &qword_1EBE77390, &qword_1C0F56208);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v7, &qword_1EBE77390, &qword_1C0F56208);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77390, &qword_1C0F56208);
}

uint64_t sub_1C0ECE710(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes;
  if (sub_1C0EF70A0(*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes), a1))
  {
    *(v1 + v3) = a1;

    return sub_1C0EE3084();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }
}

uint64_t sub_1C0ECE884(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v6, v5, &qword_1EBE772B0, &qword_1C0F561E0);
  v7 = sub_1C0EEC580(v5, a1);
  sub_1C0EEFAA8(v5, &qword_1EBE772B0, &qword_1C0F561E0);
  if (v7)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v6, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE772B0, &qword_1C0F561E0);
}

uint64_t sub_1C0ECEA80(unsigned __int8 *a1)
{
  v2 = v1;
  v26 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v25 = &v23[-v10];
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v23[-v12];
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v16 = &v23[-v15];
  v24 = *a1;
  swift_getKeyPath();
  v28 = v2;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v17 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  sub_1C0EED570(v2 + v17, v13, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_1C0EEFAA8(v13, &qword_1EBE772B0, &qword_1C0F561E0);
    v18 = 1;
  }

  else
  {
    v19 = v25;
    (*(v8 + 16))(v25, v13, v7);
    sub_1C0EEFAA8(v13, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_getKeyPath();
    v27 = v2;
    sub_1C0F4F960();

    v20 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
    *v6 = v24;
    v6[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v8 + 8))(v19, v7);
    v18 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v21 - 8) + 56))(v16, v18, 1, v21);
  return sub_1C0EEFAA8(v16, &qword_1EBE77618, &qword_1C0F56BC8);
}

uint64_t sub_1C0ECEE50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a1 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  return result;
}

uint64_t sub_1C0ECEF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  return result;
}

uint64_t sub_1C0ECEFD8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + *a2);

  v6 = sub_1C0F503B0();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

void sub_1C0ECF180(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE775F0, 0x1E696AE38);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C0ECF32C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE775E8, 0x1E6958418);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1C0ECF53C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1C0F4F630();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_1C0ECF634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1C0F4F630();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_1C0ECF730(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1C0F4F630();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);
  v17 = *a2;
  return sub_1C0ECDCD8(v15, a5, a6, a7);
}

uint64_t sub_1C0ECF81C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1C0F4F630();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1C0ECF8D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C0EED570(a1, &v10[-v6], &qword_1EBE77310, &qword_1C0F561E8);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();

  return sub_1C0EEFAA8(v7, &qword_1EBE77310, &qword_1C0F561E8);
}

uint64_t sub_1C0ECFA28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1C0EEFA0C(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1C0ECFACC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - v13;
  sub_1C0EED570(a1, &v17 - v13, a5, a6);
  v15 = *a2;
  return a7(v14);
}

uint64_t sub_1C0ECFB78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v1 + v7, v6, &qword_1EBE77320, &qword_1C0F561F0);
  v8 = sub_1C0EEC8A4(v6, a1);
  sub_1C0EEFAA8(v6, &qword_1EBE77320, &qword_1C0F561F0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v7, &qword_1EBE77320, &qword_1C0F561F0);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77320, &qword_1C0F561F0);
}

uint64_t sub_1C0ECFD9C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = *(v2 + *a2);
}

uint64_t sub_1C0ECFE40@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C0ECFEF8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + *a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0);
  v6 = sub_1C0F503B0();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1C0ED00B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
  swift_beginAccess();
  sub_1C0EED570(v1 + v7, v6, &qword_1EBE77340, &qword_1C0F561F8);
  v8 = sub_1C0EECBC8(v6, a1);
  sub_1C0EEFAA8(v6, &qword_1EBE77340, &qword_1C0F561F8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  else
  {
    swift_beginAccess();
    sub_1C0EEFA0C(a1, v1 + v7, &qword_1EBE77340, &qword_1C0F561F8);
    swift_endAccess();
  }

  return sub_1C0EEFAA8(a1, &qword_1EBE77340, &qword_1C0F561F8);
}

void *sub_1C0ED02C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1C0ED0368@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1C0ED042C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile;
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C0EED60C(0, &qword_1EBE77638, 0x1E6958408);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C0F504F0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1C0ED05C4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1C0ED0684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C0ED074C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

uint64_t sub_1C0ED0808(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1C0ED0878@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v3 = v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v4 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 24);
  v5 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother);
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_1C0ED0948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v5 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 24);
  v6 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother + 32);
  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother);
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

uint64_t sub_1C0ED0A18(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v2 = *a2;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

uint64_t sub_1C0ED0B08()
{
  v7 = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v6 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v2 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory;
  if (*(*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) + 16))
  {
    __C = 0.0;
    swift_getKeyPath();
    v6 = v0;
    sub_1C0F4F960();

    v3 = *(v0 + v2);
    swift_getKeyPath();
    v6 = v0;

    sub_1C0F4F960();

    vDSP_meamgv((v3 + 32), 1, &__C, *(*(v0 + v2) + 16));
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0ED0CCC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  return *(v2 + *a2);
}

uint64_t sub_1C0ED0D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1C0ED0E20(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v2[33] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v5 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v2[35] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v2[37] = v7;
  v8 = *(v7 - 8);
  v2[38] = v8;
  v9 = *(v8 + 64) + 15;
  v2[39] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v12 = type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
  v2[42] = v12;
  v13 = *(v12 - 8);
  v2[43] = v13;
  v14 = *(v13 + 64) + 15;
  v2[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77640, &qword_1C0F56CE8) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77648, &qword_1C0F56CF0);
  v2[46] = v16;
  v17 = *(v16 - 8);
  v2[47] = v17;
  v18 = *(v17 + 64) + 15;
  v2[48] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77650, &qword_1C0F56CF8);
  v2[49] = v19;
  v20 = *(v19 - 8);
  v2[50] = v20;
  v21 = *(v20 + 64) + 15;
  v2[51] = swift_task_alloc();
  v22 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v2[52] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = sub_1C0F502F0();
  v2[60] = sub_1C0F502E0();
  v24 = sub_1C0F502B0();
  v2[61] = v24;
  v2[62] = v25;
  v26 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0ED11F8, v24, v25);
}

uint64_t sub_1C0ED11F8()
{
  v9 = v0;
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[32];
  v7 = 1;
  sub_1C0ECDBB8(&v7);
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_1C0ED12D0;
  v3 = v0[57];
  v4 = v0[32];
  v5 = *MEMORY[0x1E69E9840];

  return sub_1C0ED4140(v3);
}

uint64_t sub_1C0ED12D0()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1C0ED39D4;
  }

  else
  {
    v7 = sub_1C0ED1438;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED1438()
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = v0[31];
  v1 = v0[32];
  v3 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v0[65] = v3;
  v4 = *(v2 + *(v3 + 28));
  if (v4 == *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing))
  {
    *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) = v4;
  }

  else
  {
    v5 = v0[64];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v0[13] = v1;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F950();
  }

  v7 = *(v0[31] + *(v3 + 44));
  v8 = *MEMORY[0x1E6958060];
  v9 = *MEMORY[0x1E6958150];
  v0[14] = 0;
  v10 = [v7 setCategory:v8 mode:v9 options:0 error:v0 + 14];
  v11 = v0[14];
  if (v10 && (v0[15] = 0, v12 = v11, v13 = [v7 setActive:1 withOptions:1 error:v0 + 15], v11 = v0[15], v13))
  {
    v14 = v11;
    v15 = swift_task_alloc();
    v0[66] = v15;
    *v15 = v0;
    v15[1] = sub_1C0ED1890;
    v16 = v0[55];
    v17 = v0[31];
    v18 = v0[32];
    v19 = *MEMORY[0x1E69E9840];

    return sub_1C0ED4558(v17, v16);
  }

  else
  {
    v21 = v11;
    v22 = sub_1C0F4F6B0();

    swift_willThrow();
    v23 = v0[60];
    v24 = v0[58];
    v25 = v0[56];
    v26 = v0[52];
    *v25 = v22;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();

    sub_1C0EE9E60(v25, v24, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v27 = v0[34];
    v28 = v0[32];
    sub_1C0EE9E60(v0[58], v27, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_storeEnumTagMultiPayload();
    sub_1C0ED696C(v27);
    sub_1C0EE9EC8(v27, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    v30 = v0[57];
    v29 = v0[58];
    v32 = v0[55];
    v31 = v0[56];
    v34 = v0[53];
    v33 = v0[54];
    v35 = v0[51];
    v36 = v0[48];
    v38 = v0[44];
    v37 = v0[45];
    v41 = v0[41];
    v42 = v0[40];
    v43 = v0[39];
    v44 = v0[36];
    v45 = v0[34];

    v39 = v0[1];
    v40 = *MEMORY[0x1E69E9840];

    return v39();
  }
}

uint64_t sub_1C0ED1890()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1C0ED3B9C;
  }

  else
  {
    v7 = sub_1C0ED19F8;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED19F8()
{
  v12 = v0;
  v1 = v0;
  v11 = *MEMORY[0x1E69E9840];
  v2 = v0[32];
  v10 = 2;
  sub_1C0ECDBB8(&v10);
  sub_1C0ED4B7C();
  v3 = swift_task_alloc();
  v1[67] = v3;
  *v3 = v1;
  v3[1] = sub_1C0ED1AE0;
  v4 = v1[54];
  v5 = v1[48];
  v6 = v1[31];
  v7 = v1[32];
  v8 = *MEMORY[0x1E69E9840];

  return sub_1C0ED4E28(v5, v6, v4);
}

uint64_t sub_1C0ED1AE0()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1C0ED3D68;
  }

  else
  {
    v7 = sub_1C0ED1C48;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED1C48()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[51];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[32];
  sub_1C0F50380();
  (*(v3 + 8))(v2, v4);
  v0[68] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[69] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  v0[70] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory;
  v0[71] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking;
  v0[72] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  v6 = v0[59];
  v7 = sub_1C0F502E0();
  v0[73] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[74] = v9;
  *v9 = v0;
  v9[1] = sub_1C0ED1DC0;
  v10 = v0[51];
  v11 = v0[49];
  v12 = v0[45];
  v13 = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v14, v11);
}

uint64_t sub_1C0ED1DC0()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 584);
  v9 = *v0;

  v4 = *(v1 + 496);
  v5 = *(v1 + 488);
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0ED1F30, v5, v4);
}

uint64_t sub_1C0ED1F30()
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = v0[45];
  if ((*(v0[43] + 48))(v1, 1, v0[42]) == 1)
  {
    v2 = v0[60];
    (*(v0[50] + 8))(v0[51], v0[49]);

    v4 = v0[57];
    v3 = v0[58];
    v6 = v0[55];
    v5 = v0[56];
    v8 = v0[53];
    v7 = v0[54];
    v9 = v0[51];
    v10 = v0[48];
    v12 = v0[44];
    v11 = v0[45];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[36];
    v26 = v0[34];

    v13 = v0[1];
    v14 = *MEMORY[0x1E69E9840];

    return v13();
  }

  else
  {
    v16 = v0[44];
    sub_1C0EE9E60(v1, v16, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v17 = *v16;
    v0[75] = v17;
    v18 = swift_task_alloc();
    v0[76] = v18;
    *v18 = v0;
    v18[1] = sub_1C0ED218C;
    v19 = v0[53];
    v20 = v0[32];
    v21 = *MEMORY[0x1E69E9840];

    return sub_1C0ED5CEC(v17, v19);
  }
}

uint64_t sub_1C0ED218C()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_1C0ED3F34;
  }

  else
  {
    v7 = sub_1C0ED22F4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED22F4()
{
  v111 = *MEMORY[0x1E69E9840];
  if (*(*(v0 + 248) + *(*(v0 + 520) + 32)) == 1)
  {
    v5 = [*(v0 + 600) floatChannelData];
    if (v5)
    {
      v6 = *v5;
LABEL_15:
      v28 = [*(v0 + 600) frameLength];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1C0EF72EC(v28, 0);
        memcpy(v30 + 4, v6, 4 * v29);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 624) = v30;
      v31 = swift_task_alloc();
      *(v0 + 632) = v31;
      *v31 = v0;
      v31[1] = sub_1C0ED2E20;
      v32 = *(v0 + 256);
      v33 = *MEMORY[0x1E69E9840];

      return sub_1C0ED6554(v30);
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 128) = v9;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *(v0 + 136) = v9;
  swift_getKeyPath();
  v10 = (v9 + v8);
  sub_1C0F4F980();

  swift_beginAccess();
  v11 = *(*(v9 + v7) + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v106 = *(v0 + 560);
    v107 = *(v0 + 256);
    v10 = sub_1C0F2222C(0, *(v10 + 2) + 1, 1, v10);
    *(v107 + v106) = v10;
    goto LABEL_35;
  }

  v13 = *(v0 + 552);
  v14 = *(v0 + 256);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v14 + v13);
  if (*(v10 + 2) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *(v0 + 552);
    v17 = *(v0 + 256);
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, v12);
    v10 = *(v17 + v16);
  }

  v18 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v19 = *(v18 - 8);
  v21 = *(v10 + 3);
  v20 = *(v10 + 4);
  v26 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v26)
  {
    goto LABEL_62;
  }

  v23 = v18;
  v24 = *(v19 + 80);
  if (v21 < 0)
  {
    if (v22 < 0)
    {
      v35 = *(v10 + 2);
      v26 = __OFADD__(v22, v35);
      v22 += v35;
      if (v26)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v25 = *(v10 + 2);
    v26 = __OFSUB__(v22, v25);
    v27 = v22 - v25;
    if (v27 < 0 == v26)
    {
      v22 = v27;
      if (v26)
      {
        __break(1u);
        goto LABEL_14;
      }
    }
  }

  v12 = *(v0 + 352) + *(*(v0 + 336) + 20);
  v109 = (v24 + 40) & ~v24;
  v36 = *(v19 + 72);
  sub_1C0EE9DA0(v12, &v10[v109 + v36 * v22], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v37 = *(v10 + 3);
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v26)
  {
    goto LABEL_63;
  }

  v108 = v24;
  v110 = v23;
  v39 = *(v0 + 552);
  v40 = *(v0 + 544);
  v41 = *(v0 + 256);
  *(v10 + 3) = v38;
  swift_endAccess();
  *(v0 + 144) = v41;
  swift_getKeyPath();
  sub_1C0F4F970();

  swift_getKeyPath();
  *(v0 + 152) = v41;
  sub_1C0F4F960();

  if (*(*(v41 + v39) + 24) <= 20)
  {
    goto LABEL_33;
  }

  v42 = *(v0 + 552);
  v43 = *(v0 + 544);
  v1 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 224) = v1;
  sub_1C0F4F960();

  *(v0 + 232) = v1;
  swift_getKeyPath();
  v10 = (v1 + v43);
  sub_1C0F4F980();

  swift_beginAccess();
  if (!*(*(v1 + v42) + 24))
  {
    goto LABEL_64;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = *(v0 + 256) + *(v0 + 552);
    sub_1C0EEB504();
  }

  v10 = *(*(v0 + 256) + *(v0 + 552));
  sub_1C0EE9EC8(&v10[v109 + *(v10 + 4) * v36], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v45 = *(v10 + 4);
  v26 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (v26)
  {
    goto LABEL_65;
  }

  v47 = *(v10 + 3);
  if (v46 >= *(v10 + 2))
  {
    v46 = 0;
  }

  *(v10 + 4) = v46;
  if (__OFSUB__(v47, 1))
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v48 = *(v0 + 544);
  v49 = *(v0 + 256);
  *(v10 + 3) = v47 - 1;
  swift_endAccess();
  *(v0 + 240) = v49;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_33:
  v1 = v110;
  v2 = *(v12 + *(v110 + 28));
  v3 = 0.5;
  if (v2 >= 0.5)
  {
    goto LABEL_38;
  }

  v50 = *(v0 + 560);
  v51 = *(v0 + 544);
  v52 = *(v0 + 256);
  v4 = *(v12 + *(v110 + 36));
  swift_getKeyPath();
  *(v0 + 200) = v52;
  sub_1C0F4F960();

  *(v0 + 208) = v52;
  swift_getKeyPath();
  sub_1C0F4F980();

  v10 = *(v52 + v50);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + v50) = v10;
  if ((v53 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_35:
  v55 = *(v10 + 2);
  v54 = *(v10 + 3);
  if (v55 >= v54 >> 1)
  {
    v10 = sub_1C0F2222C((v54 > 1), v55 + 1, 1, v10);
  }

  v56 = *(v0 + 560);
  v57 = *(v0 + 544);
  v58 = *(v0 + 256);
  *(v10 + 2) = v55 + 1;
  *&v10[4 * v55 + 32] = v4;
  *(v58 + v56) = v10;
  *(v0 + 216) = v58;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_38:
  v59 = *(v0 + 568);
  v60 = *(v0 + 256);
  if (v2 <= v3)
  {
    v62 = 0;
    if ((*(v60 + v59) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_42:
    v64 = *(v0 + 616);
    v65 = *(v0 + 544);
    swift_getKeyPath();
    v66 = swift_task_alloc();
    *(v66 + 16) = v60;
    *(v66 + 24) = v62;
    *(v0 + 160) = v60;
    sub_1C0F4F950();

    goto LABEL_44;
  }

  sub_1C0ED0B08();
  v62 = vabds_f32(v61, *(v12 + *(v1 + 40))) <= 5.0;
  v63 = *(v60 + v59) ^ v62;
  v60 = *(v0 + 256);
  if (v63)
  {
    goto LABEL_42;
  }

  v59 = *(v0 + 568);
LABEL_43:
  *(v60 + v59) = v62;
  v64 = *(v0 + 616);
LABEL_44:
  v67 = *(v0 + 568);
  v68 = *(v0 + 544);
  v69 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 168) = v69;
  sub_1C0F4F960();

  if ((*(v69 + v67) & 1) == 0)
  {
    v70 = *(v0 + 256);
    sub_1C0ED4B7C();
  }

  if (*(*(v0 + 248) + *(*(v0 + 520) + 40)) != 1)
  {
    goto LABEL_50;
  }

  v71 = *(v0 + 576);
  v72 = *(v0 + 544);
  v73 = *(v0 + 320);
  v74 = *(v0 + 296);
  v75 = *(v0 + 304);
  v76 = *(v0 + 256);
  swift_getKeyPath();
  *(v0 + 176) = v76;
  sub_1C0F4F960();

  sub_1C0EED570(v76 + v71, v73, &qword_1EBE772B0, &qword_1C0F561E0);
  if (!(*(v75 + 48))(v73, 1, v74))
  {
    v89 = *(v0 + 552);
    v90 = *(v0 + 544);
    v91 = *(v0 + 320);
    v92 = *(v0 + 256);
    (*(*(v0 + 304) + 16))(*(v0 + 312), v91, *(v0 + 296));
    sub_1C0EEFAA8(v91, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_getKeyPath();
    *(v0 + 184) = v92;
    sub_1C0F4F960();

    v93 = *(v92 + v89);
    v94 = *(v93 + 24);
    if ((v94 & 0x8000000000000000) == 0)
    {

      if (v94)
      {
        v95 = sub_1C0F50290();
        *(v95 + 16) = v94;
      }

      else
      {
        v95 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 192) = 0;
      *(v0 + 88) = v95 + ((v108 + 32) & ~v108);
      *(v0 + 96) = v94;
      result = sub_1C0EEBB38((v93 + 16), v93 + v109, (v0 + 88), (v0 + 192));
      if (v64)
      {
        v96 = *MEMORY[0x1E69E9840];
        return result;
      }

      v97 = *(v0 + 192);
      if (v94 >= v97)
      {
        v98 = *(v0 + 328);
        v100 = *(v0 + 304);
        v99 = *(v0 + 312);
        v102 = *(v0 + 288);
        v101 = *(v0 + 296);
        v103 = *(v0 + 280);
        v104 = *(v0 + 256);
        *(v95 + 16) = v97;

        sub_1C0ED0B08();
        *v102 = v95;
        *(v102 + 8) = v105;
        swift_storeEnumTagMultiPayload();
        sub_1C0F50360();
        (*(v100 + 8))(v99, v101);
        v77 = 0;
        goto LABEL_49;
      }

LABEL_70:
      __break(1u);
    }

    goto LABEL_68;
  }

  sub_1C0EEFAA8(*(v0 + 320), &qword_1EBE772B0, &qword_1C0F561E0);
  v77 = 1;
LABEL_49:
  v78 = *(v0 + 328);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v79 - 8) + 56))(v78, v77, 1, v79);
  sub_1C0EEFAA8(v78, &qword_1EBE77618, &qword_1C0F56BC8);
LABEL_50:
  sub_1C0EE9EC8(*(v0 + 352), type metadata accessor for AXSpeechTranscriber.AudioBuffer);
  v80 = *(v0 + 472);
  v81 = sub_1C0F502E0();
  *(v0 + 584) = v81;
  v82 = *(MEMORY[0x1E69E8678] + 4);
  v83 = swift_task_alloc();
  *(v0 + 592) = v83;
  *v83 = v0;
  v83[1] = sub_1C0ED1DC0;
  v84 = *(v0 + 408);
  v85 = *(v0 + 392);
  v86 = *(v0 + 360);
  v87 = *MEMORY[0x1E69E9840];
  v88 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v86, v81, v88, v85);
}

uint64_t sub_1C0ED2E20(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 624);
  v10 = *v1;
  *(*v1 + 640) = a1;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0ED2F98, v6, v5);
}

uint64_t sub_1C0ED2F98()
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = v0[32];
  sub_1C0ECE710(v0[80]);
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[32];
  swift_getKeyPath();
  v0[16] = v7;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v0[17] = v7;
  swift_getKeyPath();
  v8 = (v7 + v6);
  sub_1C0F4F980();

  swift_beginAccess();
  v9 = *(*(v7 + v5) + 24);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v11 = v0[69];
  v12 = v0[32];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v12 + v11);
  if (*(v8 + 2) < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = v0[69];
    v15 = v0[32];
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, v10);
    v8 = *(v15 + v14);
  }

  v16 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v17 = *(v16 - 8);
  v19 = *(v8 + 3);
  v18 = *(v8 + 4);
  v23 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v23)
  {
    goto LABEL_52;
  }

  v21 = *(v17 + 80);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = *(v8 + 2);
    v23 = __OFSUB__(v20, v22);
    v24 = v20 - v22;
    if (v24 < 0 != v23)
    {
      goto LABEL_13;
    }

    v20 = v24;
    if (!v23)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v20 < 0)
  {
    v25 = *(v8 + 2);
    v23 = __OFADD__(v20, v25);
    v20 += v25;
    if (v23)
    {
      goto LABEL_59;
    }
  }

LABEL_13:
  v26 = v0[44] + *(v0[42] + 20);
  v104 = (v21 + 40) & ~v21;
  v105 = v16;
  v6 = *(v17 + 72);
  sub_1C0EE9DA0(v26, &v8[v104 + v6 * v20], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v27 = *(v8 + 3);
  v23 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v23)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v99 = v0[70];
    v100 = v0[32];
    v8 = sub_1C0F2222C(0, *(v8 + 2) + 1, 1, v8);
    *(v100 + v99) = v8;
    goto LABEL_25;
  }

  v106 = v26;
  v103 = v21;
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[32];
  *(v8 + 3) = v28;
  swift_endAccess();
  v0[18] = v31;
  swift_getKeyPath();
  sub_1C0F4F970();

  swift_getKeyPath();
  v0[19] = v31;
  sub_1C0F4F960();

  if (*(*(v31 + v29) + 24) <= 20)
  {
    goto LABEL_23;
  }

  v102 = v6;
  v6 = (v0 + 8);
  v32 = v0[69];
  v33 = v0[68];
  v34 = v0[32];
  swift_getKeyPath();
  v0[28] = v34;
  sub_1C0F4F960();

  v0[29] = v34;
  swift_getKeyPath();
  v8 = (v34 + v33);
  sub_1C0F4F980();

  swift_beginAccess();
  if (!*(*(v34 + v32) + 24))
  {
    goto LABEL_54;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = v0[32] + v0[69];
    sub_1C0EEB504();
  }

  v8 = *(v0[32] + v0[69]);
  sub_1C0EE9EC8(&v8[v104 + *(v8 + 4) * v102], type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata);
  v36 = *(v8 + 4);
  v23 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v23)
  {
    goto LABEL_55;
  }

  v38 = *(v8 + 3);
  if (v37 >= *(v8 + 2))
  {
    v37 = 0;
  }

  *(v8 + 4) = v37;
  if (__OFSUB__(v38, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v39 = v0[68];
  v40 = v0[32];
  *(v8 + 3) = v38 - 1;
  swift_endAccess();
  v0[30] = v40;
  swift_getKeyPath();
  sub_1C0F4F970();

LABEL_23:
  v6 = v105;
  v41 = v106;
  v1 = *(v106 + *(v105 + 28));
  v2 = 0.5;
  if (v1 >= 0.5)
  {
    goto LABEL_28;
  }

  v42 = v0[70];
  v43 = v0[68];
  v44 = v0[32];
  v3 = *(v106 + *(v105 + 36));
  swift_getKeyPath();
  v0[25] = v44;
  sub_1C0F4F960();

  v0[26] = v44;
  swift_getKeyPath();
  sub_1C0F4F980();

  v8 = *(v44 + v42);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + v42) = v8;
  if ((v45 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_25:
  v47 = *(v8 + 2);
  v46 = *(v8 + 3);
  if (v47 >= v46 >> 1)
  {
    v8 = sub_1C0F2222C((v46 > 1), v47 + 1, 1, v8);
  }

  v48 = v0[70];
  v49 = v0[68];
  v50 = v0[32];
  *(v8 + 2) = v47 + 1;
  *&v8[4 * v47 + 32] = v3;
  *(v50 + v48) = v8;
  v0[27] = v50;
  swift_getKeyPath();
  sub_1C0F4F970();

  v41 = v106;
LABEL_28:
  v51 = v0[71];
  v52 = v0[32];
  if (v1 <= v2)
  {
    v54 = 0;
    if ((*(v52 + v51) & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v56 = v0[77];
    v57 = v0[68];
    swift_getKeyPath();
    v58 = swift_task_alloc();
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    v0[20] = v52;
    sub_1C0F4F950();

    goto LABEL_34;
  }

  sub_1C0ED0B08();
  v54 = vabds_f32(v53, *(v41 + *(v6 + 40))) <= 5.0;
  v55 = *(v52 + v51) ^ v54;
  v52 = v0[32];
  if (v55)
  {
    goto LABEL_32;
  }

  v51 = v0[71];
LABEL_33:
  *(v52 + v51) = v54;
  v56 = v0[77];
LABEL_34:
  v59 = v0[71];
  v60 = v0[68];
  v61 = v0[32];
  swift_getKeyPath();
  v0[21] = v61;
  sub_1C0F4F960();

  if ((*(v61 + v59) & 1) == 0)
  {
    v62 = v0[32];
    sub_1C0ED4B7C();
  }

  if (*(v0[31] + *(v0[65] + 40)) != 1)
  {
    goto LABEL_40;
  }

  v63 = v0[72];
  v64 = v0[68];
  v65 = v0[40];
  v66 = v0[37];
  v67 = v0[38];
  v68 = v0[32];
  swift_getKeyPath();
  v0[22] = v68;
  sub_1C0F4F960();

  sub_1C0EED570(v68 + v63, v65, &qword_1EBE772B0, &qword_1C0F561E0);
  if (!(*(v67 + 48))(v65, 1, v66))
  {
    v81 = v0[69];
    v82 = v0[68];
    v83 = v0[40];
    v84 = v0[32];
    (*(v0[38] + 16))(v0[39], v83, v0[37]);
    sub_1C0EEFAA8(v83, &qword_1EBE772B0, &qword_1C0F561E0);
    swift_getKeyPath();
    v0[23] = v84;
    sub_1C0F4F960();

    v85 = *(v84 + v81);
    v86 = *(v85 + 24);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = *(v84 + v81);

      if (v86)
      {
        v88 = sub_1C0F50290();
        *(v88 + 16) = v86;
      }

      else
      {
        v88 = MEMORY[0x1E69E7CC0];
      }

      v0[24] = 0;
      v0[11] = v88 + ((v103 + 32) & ~v103);
      v0[12] = v86;
      result = sub_1C0EEBB38((v85 + 16), v85 + v104, v0 + 11, v0 + 24);
      if (v56)
      {
        v89 = *MEMORY[0x1E69E9840];
        return result;
      }

      v90 = v0[24];
      if (v86 >= v90)
      {
        v91 = v0[41];
        v93 = v0[38];
        v92 = v0[39];
        v95 = v0[36];
        v94 = v0[37];
        v96 = v0[35];
        v97 = v0[32];
        *(v88 + 16) = v90;

        sub_1C0ED0B08();
        *v95 = v88;
        *(v95 + 8) = v98;
        swift_storeEnumTagMultiPayload();
        sub_1C0F50360();
        (*(v93 + 8))(v92, v94);
        v69 = 0;
        goto LABEL_39;
      }

LABEL_60:
      __break(1u);
    }

    goto LABEL_58;
  }

  sub_1C0EEFAA8(v0[40], &qword_1EBE772B0, &qword_1C0F561E0);
  v69 = 1;
LABEL_39:
  v70 = v0[41];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v71 - 8) + 56))(v70, v69, 1, v71);
  sub_1C0EEFAA8(v70, &qword_1EBE77618, &qword_1C0F56BC8);
LABEL_40:
  sub_1C0EE9EC8(v0[44], type metadata accessor for AXSpeechTranscriber.AudioBuffer);
  v72 = v0[59];
  v73 = sub_1C0F502E0();
  v0[73] = v73;
  v74 = *(MEMORY[0x1E69E8678] + 4);
  v75 = swift_task_alloc();
  v0[74] = v75;
  *v75 = v0;
  v75[1] = sub_1C0ED1DC0;
  v76 = v0[51];
  v77 = v0[49];
  v78 = v0[45];
  v79 = *MEMORY[0x1E69E9840];
  v80 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v78, v73, v80, v77);
}

uint64_t sub_1C0ED39D4()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[58];

  sub_1C0EE9E60(v2, v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v4 = v0[34];
  v5 = v0[32];
  sub_1C0EE9E60(v0[58], v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v4);
  sub_1C0EE9EC8(v4, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v11 = v0[53];
  v10 = v0[54];
  v12 = v0[51];
  v13 = v0[48];
  v15 = v0[44];
  v14 = v0[45];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[36];
  v23 = v0[34];

  v16 = v0[1];
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t sub_1C0ED3B9C()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[55];

  sub_1C0EE9E60(v3, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v4 = v0[34];
  v5 = v0[32];
  sub_1C0EE9E60(v0[58], v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v4);
  sub_1C0EE9EC8(v4, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v11 = v0[53];
  v10 = v0[54];
  v12 = v0[51];
  v13 = v0[48];
  v15 = v0[44];
  v14 = v0[45];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[36];
  v23 = v0[34];

  v16 = v0[1];
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t sub_1C0ED3D68()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[54];

  sub_1C0EE9E60(v3, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v4 = v0[34];
  v5 = v0[32];
  sub_1C0EE9E60(v0[58], v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v4);
  sub_1C0EE9EC8(v4, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v11 = v0[53];
  v10 = v0[54];
  v12 = v0[51];
  v13 = v0[48];
  v15 = v0[44];
  v14 = v0[45];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[36];
  v23 = v0[34];

  v16 = v0[1];
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t sub_1C0ED3F34()
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v7 = v0[44];

  (*(v5 + 8))(v4, v6);
  sub_1C0EE9E60(v3, v2, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  sub_1C0EE9EC8(v7, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
  v8 = v0[34];
  v9 = v0[32];
  sub_1C0EE9E60(v0[58], v8, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v8);
  sub_1C0EE9EC8(v8, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  v11 = v0[57];
  v10 = v0[58];
  v13 = v0[55];
  v12 = v0[56];
  v15 = v0[53];
  v14 = v0[54];
  v16 = v0[51];
  v17 = v0[48];
  v19 = v0[44];
  v18 = v0[45];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[36];
  v27 = v0[34];

  v20 = v0[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

uint64_t sub_1C0ED4140(uint64_t a1)
{
  v1[18] = a1;
  sub_1C0F502F0();
  v1[19] = sub_1C0F502E0();
  v3 = sub_1C0F502B0();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED41D8, v3, v2);
}

uint64_t sub_1C0ED41D8()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69875A0];
  if ([v1 authorizationStatusForMediaType_] == 3)
  {
    v3 = v0[19];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_1C0ED4370;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777E0, &qword_1C0F56F50);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C0EE36A4;
    v0[13] = &block_descriptor_352;
    v0[14] = v6;
    [v1 requestAccessForMediaType:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C0ED4370()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED4478, v2, v1);
}

uint64_t sub_1C0ED4478()
{
  v1 = *(v0 + 152);

  if ((*(v0 + 176) & 1) == 0)
  {
    v3 = *(v0 + 144);
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0ED4558(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  sub_1C0F502F0();
  v3[7] = sub_1C0F502E0();
  v6 = sub_1C0F502B0();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED462C, v6, v5);
}

uint64_t sub_1C0ED462C()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 20)))
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1C0ED4900;
    v3 = v0[5];
    v4 = v0[2];
    v5 = v0[3];

    return sub_1C0EDB6E0(v4, v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1C0ED474C;
    v8 = v0[6];
    v9 = v0[2];
    v10 = v0[3];

    return sub_1C0ED9C14(v9, v8);
  }
}

uint64_t sub_1C0ED474C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1C0ED4A3C;
  }

  else
  {
    v7 = sub_1C0ED4888;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED4888()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED4900()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1C0ED4ADC;
  }

  else
  {
    v7 = sub_1C0EEFCEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0ED4A3C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  sub_1C0EE9E60(v2, v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C0ED4ADC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  sub_1C0EE9E60(v3, v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C0ED4B7C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  swift_getKeyPath();
  v15 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask);

    sub_1C0F503C0();
  }

  swift_getKeyPath();
  v15 = v0;
  sub_1C0F4F960();

  if (*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing) == 1)
  {
    v8 = sub_1C0F50320();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    sub_1C0F502F0();

    v10 = sub_1C0F502E0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v1;

    v13 = sub_1C0ED943C(0, 0, v5, &unk_1C0F56E20, v11);
    return sub_1C0ECEFD8(v13, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask);
  }

  return result;
}

uint64_t sub_1C0ED4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4[27] = v3;
  v4[28] = a3;
  v4[25] = a1;
  v4[26] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77668, &qword_1C0F56D88);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v10 = sub_1C0F4F6C0();
  v4[34] = v10;
  v11 = *(v10 - 8);
  v4[35] = v11;
  v12 = *(v11 + 64) + 15;
  v4[36] = swift_task_alloc();
  v13 = sub_1C0F4F830();
  v4[37] = v13;
  v14 = *(v13 - 8);
  v4[38] = v14;
  v15 = *(v14 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v16 = sub_1C0F4F750();
  v4[41] = v16;
  v17 = *(v16 - 8);
  v4[42] = v17;
  v18 = *(v17 + 64) + 15;
  v4[43] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  sub_1C0F502F0();
  v4[47] = sub_1C0F502E0();
  v20 = sub_1C0F502B0();
  v22 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0ED5100, v20, v21);
}

uint64_t sub_1C0ED5100()
{
  v98 = *MEMORY[0x1E69E9840];
  v1 = v0[26];
  v2 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v3 = v2;
  v4 = &kCaptureDeviceSuspendedKVOContext;
  if (*(v1 + *(v2 + 36)) == 1)
  {
    v85 = v2;
    v91 = v0[46];
    v93 = v0[45];
    v5 = v0[42];
    v6 = v0[43];
    v7 = v0[40];
    v95 = v0[41];
    v8 = v0[37];
    v9 = v0[38];
    v10 = v0[35];
    v11 = v0[36];
    v87 = v8;
    v89 = v0[34];
    v12 = v0[27];
    v13 = [*(v12 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) inputNode];
    v14 = [v13 inputFormatForBus_];

    v15 = [v14 settings];
    sub_1C0F50160();

    sub_1C0F4F6F0();
    sub_1C0F505A0();
    v0[14] = 0;
    v0[15] = 0xE000000000000000;
    MEMORY[0x1C68E9A50](0xD000000000000012, 0x80000001C0F66590);
    sub_1C0F4F820();
    sub_1C0F4F7D0();
    (*(v9 + 8))(v7, v87);
    sub_1C0F50400();
    MEMORY[0x1C68E9A50](1986098990, 0xE400000000000000);
    v16 = v0[15];
    v0[16] = v0[14];
    v0[17] = v16;
    (*(v10 + 104))(v11, *MEMORY[0x1E6968F70], v89);
    sub_1C0EED51C();
    sub_1C0F4F740();
    (*(v10 + 8))(v11, v89);

    (*(v5 + 8))(v6, v95);
    (*(v5 + 56))(v91, 0, 1, v95);
    sub_1C0ED00B0(v91);
    swift_getKeyPath();
    v0[23] = v12;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v17 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(v12 + v17, v93, &qword_1EBE77340, &qword_1C0F561F8);
    result = (*(v5 + 48))(v93, 1, v95);
    if (result == 1)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v19 = v0[45];
    v20 = objc_allocWithZone(MEMORY[0x1E6958408]);

    v21 = sub_1C0EE9114(v19);
    v23 = v0[47];
    v24 = v0[27];
    v25 = v21;

    sub_1C0ED042C(v25);
    v4 = &kCaptureDeviceSuspendedKVOContext;
    v3 = v85;
  }

  else
  {
    v22 = v0[47];
  }

  v26 = v0[26];
  v96 = *(v0[27] + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine);
  v27 = [v96 inputNode];
  [v27 removeTapOnBus_];

  if (*(v26 + *(v3 + 32)) == 1)
  {
    v28 = v0[27];
    Setup = vDSP_DFT_zop_CreateSetup(0, 0x1000uLL, vDSP_DFT_FORWARD);
    sub_1C0ED9AF8(Setup);
  }

  v30 = v0[27];
  v31 = *sub_1C0F4FCD0();
  swift_getKeyPath();
  v32 = swift_task_alloc();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = v4[116];
  v0[18] = v30;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);

  sub_1C0F4F950();

  swift_getKeyPath();
  v0[19] = v30;
  sub_1C0F4F960();

  v0[20] = v30;
  swift_getKeyPath();
  sub_1C0F4F980();

  v34 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory;
  swift_beginAccess();
  v35 = *(v30 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(*(v30 + v34) + 16) < 20 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C0EEB294(isUniquelyReferenced_nonNull_native, 20);
  }

  v38 = v0[38];
  v37 = v0[39];
  v39 = v0[37];
  v40 = v0[27];
  swift_endAccess();
  v0[21] = v40;
  swift_getKeyPath();
  sub_1C0F4F970();

  v41 = mach_absolute_time();
  sub_1C0F4F820();
  [objc_opt_self() secondsForHostTime_];
  v43 = v42;
  sub_1C0F4F810();
  v45 = v44 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v46 = swift_allocBox();
  (*(v38 + 56))(v47, 1, 1, v39);
  v48 = [v96 inputNode];
  v49 = [v96 inputNode];
  v50 = [v49 outputFormatForBus_];

  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v45;
  *(v52 + 24) = v51;
  *(v52 + 32) = v46;
  v0[6] = sub_1C0EED508;
  v0[7] = v52;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C0EE4C80;
  v0[5] = &block_descriptor_256;
  v53 = _Block_copy(v0 + 2);
  v54 = v0[7];

  [v48 installTapOnBus:0 bufferSize:4096 format:v50 block:v53];
  _Block_release(v53);

  [v96 prepare];
  v0[22] = 0;
  v55 = [v96 startAndReturnError_];
  v56 = v0[22];
  if (v55)
  {
    v84 = v0[46];
    v86 = v0[45];
    v88 = v0[44];
    v90 = v0[43];
    v57 = v0[39];
    v58 = v0[38];
    v83 = v0[37];
    v92 = v0[40];
    v94 = v0[36];
    v97 = v0[33];
    v60 = v0[30];
    v59 = v0[31];
    v61 = v0[29];
    v62 = v0[27];
    v63 = v0[25];
    type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
    (*(v60 + 104))(v59, *MEMORY[0x1E69E8650], v61);
    v64 = v56;
    sub_1C0F503A0();
    (*(v58 + 8))(v57, v83);
  }

  else
  {
    v68 = v0[38];
    v67 = v0[39];
    v69 = v0[37];
    v70 = v0[32];
    v71 = v0[28];
    v72 = v56;
    v73 = sub_1C0F4F6B0();

    swift_willThrow();
    *v71 = v73;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    (*(v68 + 8))(v67, v69);

    v75 = v0[45];
    v74 = v0[46];
    v77 = v0[43];
    v76 = v0[44];
    v79 = v0[39];
    v78 = v0[40];
    v80 = v0[36];
    v81 = v0[33];
    v82 = v0[31];
  }

  v65 = v0[1];
  v66 = *MEMORY[0x1E69E9840];

  return v65();
}

uint64_t sub_1C0ED5CEC(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v3[12] = a2;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77660, &qword_1C0F56D58);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_1C0F4FF20();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();
  sub_1C0F502F0();
  v3[26] = sub_1C0F502E0();
  v16 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0ED5F30, v16, v15);
}

uint64_t sub_1C0ED5F30()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[11];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v5 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v4 + v5, v3, &qword_1EBE77320, &qword_1C0F561F0);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v40 = v6;
    sub_1C0EEFAA8(v0[22], &qword_1EBE77320, &qword_1C0F561F0);
LABEL_6:
    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[11];
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0xD000000000000029, 0x80000001C0F664A0);
    swift_getKeyPath();
    v0[6] = v23;
    sub_1C0F4F960();

    sub_1C0EED570(v4 + v5, v22, &qword_1EBE77320, &qword_1C0F561F0);
    v24 = v40(v22, 1, v21);
    sub_1C0EEFAA8(v22, &qword_1EBE77320, &qword_1C0F561F0);
    if (v24 == 1)
    {
      v25 = 7104878;
    }

    else
    {
      v25 = 0x6C696E2D6E6F6ELL;
    }

    if (v24 == 1)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    MEMORY[0x1C68E9A50](v25, v26);

    MEMORY[0x1C68E9A50](0xD000000000000010, 0x80000001C0F664D0);
    swift_getKeyPath();
    v0[7] = v23;
    sub_1C0F4F960();

    if (*(v23 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
    {
      v27 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v27 = 7104878;
    }

    if (*(v23 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    MEMORY[0x1C68E9A50](v27, v28);

    return sub_1C0F50620();
  }

  v7 = v0[11];
  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  swift_getKeyPath();
  v0[8] = v7;
  sub_1C0F4F960();

  v8 = *(v7 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  if (!v8)
  {
    v40 = v6;
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_6;
  }

  v9 = v0[26];
  v10 = v0[20];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v8;

  swift_getKeyPath();
  v0[9] = v11;
  sub_1C0F4F960();

  v14 = *(v11 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);

  v15 = sub_1C0EE16C0(v12, v13, v10);
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  v41 = v0[21];
  v42 = v0[20];
  v20 = v0[19];
  v30 = v15;
  v37 = v13;
  v32 = v0[16];
  v31 = v0[17];
  v36 = v0[15];
  v39 = v0[18];
  v33 = v0[14];
  v38 = v0[13];

  v34 = v30;
  sub_1C0F4FF10();
  (*(v31 + 16))(v39, v20, v32);
  sub_1C0F50360();

  (*(v33 + 8))(v36, v38);
  (*(v31 + 8))(v20, v32);
  (*(v16 + 8))(v17, v19);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1C0ED6554(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2[4] = a1;
  v2[5] = v1;
  sub_1C0F502F0();
  v2[6] = sub_1C0F502E0();
  v3 = sub_1C0F502B0();
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0ED6620, v3, v4);
}

uint64_t sub_1C0ED6620()
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v3 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v3)
  {
    v4 = *(v0 + 32);

    v5 = sub_1C0F50290();
    *(v5 + 16) = 4096;
    bzero((v5 + 32), 0x4000uLL);
    v6 = sub_1C0F50290();
    *(v6 + 16) = 4096;
    v7 = (v6 + 32);
    bzero((v6 + 32), 0x4000uLL);
    v8 = sub_1C0F50290();
    *(v8 + 16) = 4096;
    v9 = (v8 + 32);
    bzero((v8 + 32), 0x4000uLL);
    v10 = sub_1C0F50290();
    *(v10 + 16) = 200;
    bzero((v10 + 32), 0x320uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 32);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1C0EF9584(*(v0 + 32));
    }

    vDSP_DFT_Execute(v3, v12 + 8, (v5 + 32), v7, v9);
    *(v0 + 16) = v7;
    *(v0 + 24) = v9;
    vDSP_zvabs((v0 + 16), 1, (v10 + 32), 1, 0xC8uLL);

    v13 = *(v10 + 16);
    if (v13)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1C0EF8E8C(0, v13, 0);
      v14 = v22;
      v15 = *(v22 + 16);
      v16 = 32;
      do
      {
        if (*(v10 + v16) <= 100.0)
        {
          v17 = *(v10 + v16);
        }

        else
        {
          v17 = 100.0;
        }

        v18 = *(v22 + 24);
        if (v15 >= v18 >> 1)
        {
          sub_1C0EF8E8C((v18 > 1), v15 + 1, 1);
        }

        *(v22 + 16) = v15 + 1;
        *(v22 + 4 * v15 + 32) = v17;
        v16 += 4;
        ++v15;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v14 = sub_1C0F50290();
    *(v14 + 16) = 200;
    bzero((v14 + 32), 0x320uLL);
  }

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19(v14);
}

uint64_t sub_1C0ED696C(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v74 - v14;
  v15 = sub_1C0F4F630();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  v77 = *(v79 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v74 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v27 = *(v83 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v74 - v29;
  [*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) stop];
  swift_getKeyPath();
  v91[0] = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v30 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile;
  [*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) close];
  if (*(v2 + v30))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v91[0] = v2;
    sub_1C0F4F950();
  }

  sub_1C0ECE710(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v91[0] = v2;
  sub_1C0F4F960();

  v32 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup;
  v33 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v33)
  {
    vDSP_DFT_DestroySetup(v33);
    if (*(v2 + v32))
    {
      v34 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v34);
      *(&v74 - 2) = v2;
      *(&v74 - 1) = 0;
      v91[0] = v2;
      sub_1C0F4F950();
    }
  }

  v35 = *sub_1C0F4FCD0();
  v36 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v36);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = v35;
  v91[0] = v2;

  sub_1C0F4F950();

  LOBYTE(v91[0]) = 0;
  sub_1C0ECDBB8(v91);
  swift_getKeyPath();
  v91[0] = v2;
  sub_1C0F4F960();

  v37 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  v38 = v2 + v37;
  v39 = v82;
  sub_1C0EED570(v38, v82, &qword_1EBE772B0, &qword_1C0F561E0);
  v40 = v83;
  if ((*(v27 + 48))(v39, 1, v83) == 1)
  {
    sub_1C0EEFAA8(v39, &qword_1EBE772B0, &qword_1C0F561E0);
  }

  else
  {
    v41 = v75;
    (*(v27 + 32))(v75, v39, v40);
    sub_1C0EE9DA0(v81, v78, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    swift_storeEnumTagMultiPayload();
    v42 = v76;
    sub_1C0F50360();
    sub_1C0F50370();
    (*(v77 + 8))(v42, v79);
    (*(v27 + 8))(v41, v40);
  }

  v43 = v84;
  (*(v27 + 56))(v84, 1, 1, v40);
  sub_1C0ECE884(v43);
  swift_getKeyPath();
  v90 = v2;
  sub_1C0F4F960();

  v44 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask) && (v45 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask), , sub_1C0F503C0(), , *(v2 + v44)))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v44) = 0;
  }

  swift_getKeyPath();
  v90 = v2;
  sub_1C0F4F960();

  v47 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask) && (v48 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask), , sub_1C0F503C0(), , *(v2 + v47)))
  {
    v49 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v49);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v47) = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress))
  {
    v50 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v50);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat))
  {
    v51 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v51);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  v52 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v52);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = 0;
  v90 = v2;
  sub_1C0F4F950();

  v53 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v53);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = 0;
  v90 = v2;
  sub_1C0F4F950();

  v54 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v54);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = 0;
  v90 = v2;
  sub_1C0F4F950();

  v55 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v55);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = 0;
  v90 = v2;
  sub_1C0F4F950();

  v56 = v85;
  sub_1C0F4F600();
  sub_1C0ECDCD8(v56, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript, &unk_1C0F563F0, sub_1C0EED020);
  sub_1C0F4F600();
  sub_1C0ECDCD8(v56, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, &unk_1C0F56418, sub_1C0EECFFC);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v58 = v86;
  (*(*(v57 - 8) + 56))(v86, 1, 1, v57);
  v59 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v59);
  *(&v74 - 2) = v2;
  *(&v74 - 1) = v58;
  v90 = v2;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v58, &qword_1EBE77310, &qword_1C0F561E8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v61 = v87;
  (*(*(v60 - 8) + 56))(v87, 1, 1, v60);
  sub_1C0ECFB78(v61);
  swift_getKeyPath();
  v90 = v2;
  sub_1C0F4F960();

  v62 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask) && (v63 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0), sub_1C0F503C0(), , *(v2 + v62)))
  {
    v64 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v64);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v62) = 0;
  }

  swift_getKeyPath();
  v90 = v2;
  sub_1C0F4F960();

  v65 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask;
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask) && (v66 = *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0), sub_1C0F503C0(), , *(v2 + v65)))
  {
    v67 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v67);
    *(&v74 - 2) = v2;
    *(&v74 - 1) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + v65) = 0;
  }

  v68 = sub_1C0F4F750();
  v69 = v88;
  (*(*(v68 - 8) + 56))(v88, 1, 1, v68);
  sub_1C0ED00B0(v69);
  if (*(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking))
  {
    v70 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v70);
    *(&v74 - 2) = v2;
    *(&v74 - 8) = 0;
    v90 = v2;
    sub_1C0F4F950();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking) = 0;
  }

  v71 = sub_1C0F4F830();
  v72 = v89;
  (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
  return sub_1C0ECE0D8(v72);
}

uint64_t sub_1C0ED7AE0(_BYTE *a1)
{
  *(v2 + 128) = v1;
  v4 = sub_1C0F4F620();
  *(v2 + 136) = v4;
  v5 = *(v4 - 8);
  *(v2 + 144) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v7 = sub_1C0F4F5F0();
  *(v2 + 168) = v7;
  v8 = *(v7 - 8);
  *(v2 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v10 = sub_1C0F4F630();
  *(v2 + 192) = v10;
  v11 = *(v10 - 8);
  *(v2 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v13 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  *(v2 + 216) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  *(v2 + 240) = v15;
  v16 = *(v15 - 8);
  *(v2 + 248) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0) - 8) + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v19 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  *(v2 + 272) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 352) = *a1;
  sub_1C0F502F0();
  *(v2 + 288) = sub_1C0F502E0();
  v22 = sub_1C0F502B0();
  *(v2 + 296) = v22;
  *(v2 + 304) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED7DB0, v22, v21);
}

uint64_t sub_1C0ED7DB0()
{
  v60 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v56 = *(v0 + 240);
  v3 = *(v0 + 128);
  v59 = 3;
  sub_1C0ECDBB8(&v59);
  [*(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_audioEngine) stop];
  swift_getKeyPath();
  *(v0 + 88) = v3;
  *(v0 + 312) = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  *(v0 + 320) = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
  swift_beginAccess();
  sub_1C0EED570(v3 + v4, v1, &qword_1EBE77320, &qword_1C0F561F0);
  v5 = (*(v2 + 48))(v1, 1, v56);
  v6 = *(v0 + 264);
  if (v5)
  {
    sub_1C0EEFAA8(*(v0 + 264), &qword_1EBE77320, &qword_1C0F561F0);
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    (*(v8 + 16))(v7, *(v0 + 264), v9);
    sub_1C0EEFAA8(v6, &qword_1EBE77320, &qword_1C0F561F0);
    sub_1C0F50370();
    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 128);
  swift_getKeyPath();
  *(v0 + 96) = v10;
  sub_1C0F4F960();

  v11 = *(v10 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
  *(v0 + 328) = v11;
  if (v11)
  {
    v12 = *(MEMORY[0x1E697B8F0] + 4);

    v13 = swift_task_alloc();
    *(v0 + 336) = v13;
    *v13 = v0;
    v13[1] = sub_1C0ED841C;

    return MEMORY[0x1EEDD8E38]();
  }

  else
  {
    v14 = *(v0 + 288);

    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);
    v49 = *(v0 + 184);
    v50 = *(v0 + 160);
    v51 = *(v0 + 168);
    v53 = *(v0 + 152);
    v55 = *(v0 + 144);
    v57 = *(v0 + 176);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    swift_getKeyPath();
    *(v0 + 104) = v21;
    sub_1C0F4F960();

    v22 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
    swift_beginAccess();
    v48 = v21;
    v46 = v22;
    v47 = *(v18 + 16);
    v47(v17, v21 + v22, v19);
    sub_1C0F4F5E0();
    (*(v18 + 8))(v17, v19);
    sub_1C0EE9CFC(&qword_1EBE77608, MEMORY[0x1E6968678]);
    sub_1C0F50420();
    sub_1C0F50430();
    sub_1C0EE9CFC(&qword_1EBE77610, MEMORY[0x1E69687E8]);
    LOBYTE(v22) = sub_1C0F50190();
    v23 = *(v55 + 8);
    v23(v53, v20);
    v23(v50, v20);
    (*(v57 + 8))(v49, v51);
    if (v22)
    {
      v24 = *(v0 + 216);
      **(v0 + 232) = *(v0 + 352);
    }

    else
    {
      v26 = *(v0 + 312);
      v25 = *(v0 + 320);
      v27 = *(v0 + 352);
      v28 = *(v0 + 232);
      v58 = *(v0 + 216);
      v52 = *(v0 + 192);
      v29 = *(v0 + 128);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
      v31 = *(v30 + 48);
      v54 = *(v30 + 64);
      swift_getKeyPath();
      *(v0 + 112) = v29;
      sub_1C0F4F960();

      v47(v28, v48 + v46, v52);
      *(v28 + v31) = v27;
      swift_getKeyPath();
      *(v0 + 120) = v29;
      sub_1C0F4F960();

      v32 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
      swift_beginAccess();
      sub_1C0EED570(v29 + v32, v28 + v54, &qword_1EBE77340, &qword_1C0F561F8);
    }

    swift_storeEnumTagMultiPayload();
    v33 = *(v0 + 232);
    v34 = *(v0 + 128);
    sub_1C0ED696C(v33);
    sub_1C0EE9EC8(v33, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    v35 = *(v0 + 280);
    v36 = *(v0 + 256);
    v37 = *(v0 + 264);
    v39 = *(v0 + 224);
    v38 = *(v0 + 232);
    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_1C0ED841C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_1C0ED8940;
  }

  else
  {
    v7 = v2[41];

    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_1C0ED8538;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C0ED8538()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v35 = *(v0 + 184);
  v36 = *(v0 + 160);
  v37 = *(v0 + 168);
  v38 = *(v0 + 152);
  v40 = *(v0 + 144);
  v42 = *(v0 + 176);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  swift_getKeyPath();
  *(v0 + 104) = v8;
  sub_1C0F4F960();

  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  swift_beginAccess();
  v34 = v9;
  v33 = *(v4 + 16);
  v33(v5, v8 + v9, v6);
  sub_1C0F4F5E0();
  (*(v4 + 8))(v5, v6);
  sub_1C0EE9CFC(&qword_1EBE77608, MEMORY[0x1E6968678]);
  sub_1C0F50420();
  sub_1C0F50430();
  sub_1C0EE9CFC(&qword_1EBE77610, MEMORY[0x1E69687E8]);
  LOBYTE(v9) = sub_1C0F50190();
  v10 = *(v40 + 8);
  v10(v38, v7);
  v10(v36, v7);
  (*(v42 + 8))(v35, v37);
  if (v9)
  {
    v11 = *(v0 + 216);
    **(v0 + 232) = *(v0 + 352);
  }

  else
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);
    v39 = *(v0 + 352);
    v14 = *(v0 + 232);
    v43 = *(v0 + 216);
    v15 = *(v0 + 192);
    v16 = *(v0 + 128);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
    v18 = *(v17 + 48);
    v41 = *(v17 + 64);
    swift_getKeyPath();
    *(v0 + 112) = v16;
    sub_1C0F4F960();

    v33(v14, v8 + v34, v15);
    *(v14 + v18) = v39;
    swift_getKeyPath();
    *(v0 + 120) = v16;
    sub_1C0F4F960();

    v19 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(v16 + v19, v14 + v41, &qword_1EBE77340, &qword_1C0F561F8);
  }

  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 232);
  v21 = *(v0 + 128);
  sub_1C0ED696C(v20);
  sub_1C0EE9EC8(v20, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  v22 = *(v0 + 280);
  v23 = *(v0 + 256);
  v24 = *(v0 + 264);
  v26 = *(v0 + 224);
  v25 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 184);
  v30 = *(v0 + 152);
  v29 = *(v0 + 160);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1C0ED8940()
{
  v1 = v0[43];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[16];

  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  sub_1C0EE9DA0(v4, v6, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_storeEnumTagMultiPayload();
  sub_1C0ED696C(v6);
  sub_1C0EE9EC8(v6, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  sub_1C0EE9EC8(v4, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v9 = v0[35];
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[26];
  v15 = v0[23];
  v17 = v0[19];
  v16 = v0[20];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1C0ED8AF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C0F4F830();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  swift_getKeyPath();
  v20 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v14 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  swift_beginAccess();
  sub_1C0EED570(v1 + v14, v5, &qword_1EBE77370, &qword_1C0F56200);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C0EEFAA8(v5, &qword_1EBE77370, &qword_1C0F56200);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_1C0F4F820();
    sub_1C0F4F7E0();
    v16 = v15;
    v17 = *(v7 + 8);
    v17(v11, v6);
    v17(v13, v6);
    if (v16 < 0.5)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  v19 = v1;
  sub_1C0F4F960();

  return *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__isProbablyFinishedSpeaking);
}

uint64_t sub_1C0ED8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1C0F505F0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1C0F502F0();
  v4[9] = sub_1C0F502E0();
  v9 = sub_1C0F502B0();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED8EC0, v9, v8);
}

uint64_t sub_1C0ED8EC0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v4 = sub_1C0F508C0();
    v6 = v5;
    sub_1C0F507F0();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1C0ED9008;
    v8 = v0[8];

    return sub_1C0EE929C(v4, v6, 0, 0, 1);
  }

  else
  {
    v10 = v0[9];

    v11 = v0[8];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1C0ED9008()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_1C0EEFCE4;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[10];
    v10 = v3[11];
    v11 = sub_1C0ED919C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C0ED919C()
{
  v1 = sub_1C0F503D0();
  v2 = *(v0 + 96);
  if (v1)
  {
    v3 = *(v0 + 72);

LABEL_8:

    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }

  if ((sub_1C0ED8AF8() & 1) == 0)
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);

    sub_1C0ED4B7C();
    goto LABEL_8;
  }

  *(v0 + 120) = 0;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1C0ED92A8;
  v5 = *(v0 + 96);

  return sub_1C0ED7AE0((v0 + 120));
}

uint64_t sub_1C0ED92A8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1C0ED93C8, v4, v3);
}

uint64_t sub_1C0ED93C8()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C0ED943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C0EED570(a3, v27 - v11, &qword_1EBE773B0, &qword_1C0F57F40);
  v13 = sub_1C0F50320();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C0EEFAA8(v12, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C0F502B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C0F501E0() + 32;
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

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

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

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
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

uint64_t sub_1C0ED973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C0EED570(a3, v27 - v11, &qword_1EBE773B0, &qword_1C0F57F40);
  v13 = sub_1C0F50320();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C0EEFAA8(v12, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C0F502B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C0F501E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B8, &qword_1C0F56B98);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

      return v24;
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

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B8, &qword_1C0F56B98);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C0ED9A50()
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  return *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
}

uint64_t sub_1C0ED9AF8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  if (v2)
  {
    if (v2 == result)
    {
LABEL_3:
      *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup) = result;
      return result;
    }
  }

  else if (!result)
  {
    goto LABEL_3;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();
}

uint64_t sub_1C0ED9C14(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776E8, &qword_1C0F56E40);
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v16 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[35] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F0, &qword_1C0F56E48) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v19 = sub_1C0F4FEC0();
  v3[38] = v19;
  v20 = *(v19 - 8);
  v3[39] = v20;
  v21 = *(v20 + 64) + 15;
  v3[40] = swift_task_alloc();
  v22 = *(*(sub_1C0F4FEB0() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v23 = sub_1C0F4F940();
  v3[42] = v23;
  v24 = *(v23 - 8);
  v3[43] = v24;
  v25 = *(v24 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = sub_1C0F502F0();
  v3[46] = sub_1C0F502E0();
  v27 = sub_1C0F502B0();
  v3[47] = v27;
  v3[48] = v26;

  return MEMORY[0x1EEE6DFA0](sub_1C0ED9FF8, v27, v26);
}

uint64_t sub_1C0ED9FF8()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v41 = v0[40];
  v42 = v0[38];
  v44 = v0[41];
  v6 = v0[18];
  v5 = v0[19];
  sub_1C0F4FE10();
  (*(v2 + 16))(v1, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F8, &qword_1C0F56E50);
  v7 = sub_1C0F4FDC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0F561C0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E697B898], v7);
  v13(v12 + v9, *MEMORY[0x1E697B890], v7);
  sub_1C0EED764(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = sub_1C0F4FE00();
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v5;
  *(v15 + 24) = v14;
  v0[49] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[5] = v5;
  v40 = v5;
  v0[50] = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();

  (*(v4 + 104))(v41, *MEMORY[0x1E697B900], v42);
  sub_1C0F4FEA0();
  v16 = sub_1C0F4FF00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C0F4FED0();
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v5;
  *(v20 + 24) = v19;
  v0[6] = v5;
  sub_1C0F4F950();

  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[7] = v5;
  sub_1C0F4F960();

  v23 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber;
  v0[52] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber;
  v24 = *(v5 + v23);
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v43 = v23;
  v25 = v0[19];
  v26 = sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0]);
  v0[53] = v26;
  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  swift_getKeyPath();
  v0[8] = v25;

  sub_1C0F4F960();

  v27 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v0[54] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v28 = *(v25 + v27);
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v0[37];
  v30 = v0[19];
  v0[55] = sub_1C0F4FE90();
  v31 = sub_1C0EE9CFC(&qword_1EBE77710, MEMORY[0x1E697B918]);
  v0[56] = v31;
  *(v21 + 48) = v28;
  *(v21 + 56) = v31;
  v32 = sub_1C0F4FE70();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);

  v33 = sub_1C0F4FE80();
  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v30;
  *(v34 + 24) = v33;
  v0[9] = v30;
  sub_1C0F4F950();

  swift_getKeyPath();
  v0[10] = v30;
  sub_1C0F4F960();

  v35 = *(v40 + v43);
  v0[57] = v35;
  if (!v35)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = swift_task_alloc();
  v0[58] = v36;
  *v36 = v0;
  v36[1] = sub_1C0EDA670;
  v37 = v0[36];
  v38 = v0[18];
  v39 = v0[19];

  return sub_1C0EDCE6C(v35, v38, v37);
}

uint64_t sub_1C0EDA670()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = v2[57];

  v6 = v2[48];
  v7 = v2[47];
  if (v0)
  {
    v8 = sub_1C0EDB408;
  }

  else
  {
    v8 = sub_1C0EDA7C4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C0EDA7C4()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[19];
  v6 = swift_allocObject();
  v0[60] = v6;
  *(v6 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[11] = v5;
  sub_1C0F4F960();

  v8 = *(v5 + v2);
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v0[53];
  v10 = v0[54];
  v12 = v0[49];
  v11 = v0[50];
  v13 = v0[19];
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  swift_getKeyPath();
  v0[12] = v13;

  sub_1C0F4F960();

  v7 = *(v13 + v10);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEDD8E30](v7);
  }

  v14 = v0[56];
  *(v6 + 48) = v7;
  *(v6 + 56) = v14;
  v15 = *(MEMORY[0x1E697B8E8] + 4);

  v16 = swift_task_alloc();
  v0[61] = v16;
  *v16 = v0;
  v16[1] = sub_1C0EDA944;
  v17 = v0[55];
  v7 = v6;

  return MEMORY[0x1EEDD8E30](v7);
}

uint64_t sub_1C0EDA944(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v8 = *v1;
  *(*v1 + 496) = a1;

  v5 = *(v2 + 384);
  v6 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDAA90, v6, v5);
}

uint64_t sub_1C0EDAA90()
{
  v59 = *(v0 + 400);
  v60 = *(v0 + 472);
  v1 = *(v0 + 272);
  v63 = *(v0 + 248);
  v66 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v57 = *(v0 + 224);
  v58 = *(v0 + 392);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v61 = *(v0 + 184);
  v56 = *(v0 + 176);
  v8 = *(v0 + 152);
  sub_1C0ECF32C(*(v0 + 496));
  sub_1C0F4FF20();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1C0F50330();
  (*(v6 + 8))(v4, v5);
  v55 = *(v66 + 32);
  v55(v7, v1, v63);
  (*(v66 + 56))(v7, 0, 1, v63);
  (*(v3 + 32))(v56, v2, v57);
  (*(v3 + 56))(v56, 0, 1, v57);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v0 + 104) = v8;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v7, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0ECFB78(v56);
  swift_getKeyPath();
  *(v0 + 112) = v8;
  sub_1C0F4F960();

  v10 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  swift_beginAccess();
  sub_1C0EED570(v8 + v10, v61, &qword_1EBE77310, &qword_1C0F561E8);
  if ((*(v66 + 48))(v61, 1, v63) != 1)
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 392);
    v15 = *(v0 + 400);
    v16 = *(v0 + 152);
    v55(*(v0 + 264), *(v0 + 184), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 120) = v16;
    sub_1C0F4F960();

    v20 = *(v16 + v13);
    if (v20)
    {
      v21 = *(v0 + 392);
      v64 = *(v0 + 400);
      v67 = *(v0 + 432);
      v22 = *(v0 + 360);
      v23 = *(v0 + 168);
      v24 = *(v0 + 152);
      v25 = sub_1C0F50320();
      v26 = *(*(v25 - 8) + 56);
      v26(v23, 1, 1, v25);
      swift_retain_n();

      v27 = sub_1C0F502E0();
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E85E0];
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = v20;
      v28[5] = v24;
      v30 = sub_1C0F053C4(0, 0, v23, &unk_1C0F56E70, v28);

      sub_1C0ECFEF8(v30, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask);
      swift_getKeyPath();
      *(v0 + 128) = v24;
      sub_1C0F4F960();

      v31 = *(v24 + v67);
      if (v31)
      {
        v32 = *(v0 + 392);
        v68 = *(v0 + 400);
        v33 = *(v0 + 360);
        v34 = *(v0 + 168);
        v35 = *(v0 + 152);
        v26(v34, 1, 1, v25);
        swift_retain_n();
        v36 = sub_1C0F502E0();
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = MEMORY[0x1E69E85E0];
        v37[4] = v31;
        v38 = sub_1C0F053C4(0, 0, v34, &unk_1C0F56E80, v37);

        sub_1C0ECFEF8(v38, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask);
        swift_getKeyPath();
        *(v0 + 136) = v35;
        sub_1C0F4F960();

        v39 = *(v35 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
        *(v0 + 504) = v39;
        if (!v39)
        {
          v42 = *(v0 + 368);

          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
          goto LABEL_10;
        }

        v40 = *(MEMORY[0x1E697B8F8] + 4);

        v41 = swift_task_alloc();
        *(v0 + 512) = v41;
        v19 = sub_1C0EEFB08(&qword_1EBE77718, &qword_1EBE774A0, &qword_1C0F56970);
        *v41 = v0;
        v41[1] = sub_1C0EDB1C4;
        v17 = *(v0 + 264);
        v18 = *(v0 + 248);

        return MEMORY[0x1EEDD8E40](v17, v18, v19);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDD8E40](v17, v18, v19);
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 184);

  sub_1C0EEFAA8(v12, &qword_1EBE77310, &qword_1C0F561E8);
LABEL_10:
  v43 = *(v0 + 352);
  v44 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 288);
  v46 = *(v0 + 296);
  v49 = *(v0 + 264);
  v48 = *(v0 + 272);
  v50 = *(v0 + 240);
  v51 = *(v0 + 216);
  v52 = *(v0 + 192);
  v62 = *(v0 + 184);
  v65 = *(v0 + 176);
  v69 = *(v0 + 168);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1C0EDB1C4()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[47];
    v5 = v2[48];
    v6 = sub_1C0EDB540;
  }

  else
  {
    v7 = v2[63];

    v4 = v2[47];
    v5 = v2[48];
    v6 = sub_1C0EDB2E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C0EDB2E0()
{
  v1 = v0[46];

  (*(v0[32] + 8))(v0[33], v0[31]);
  v2 = v0[44];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C0EDB408()
{
  v1 = v0[46];
  v2 = v0[36];
  v3 = v0[20];

  sub_1C0EE9E60(v2, v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v4 = v0[44];
  v5 = v0[40];
  v6 = v0[41];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[21];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C0EDB540()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[46];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[20];

  *v8 = v1;
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  (*(v6 + 8))(v5, v7);
  v9 = v0[44];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[21];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1C0EDB6E0(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776E8, &qword_1C0F56E40);
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774A0, &qword_1C0F56970);
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v16 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v3[35] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776F0, &qword_1C0F56E48) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v19 = sub_1C0F4FEC0();
  v3[38] = v19;
  v20 = *(v19 - 8);
  v3[39] = v20;
  v21 = *(v20 + 64) + 15;
  v3[40] = swift_task_alloc();
  v22 = *(*(sub_1C0F4FEB0() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v23 = sub_1C0F4F940();
  v3[42] = v23;
  v24 = *(v23 - 8);
  v3[43] = v24;
  v25 = *(v24 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = sub_1C0F502F0();
  v3[46] = sub_1C0F502E0();
  v27 = sub_1C0F502B0();
  v3[47] = v27;
  v3[48] = v26;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDBAC4, v27, v26);
}

uint64_t sub_1C0EDBAC4()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v44 = v0[40];
  v46 = v0[38];
  v47 = v0[41];
  v6 = v0[18];
  v5 = v0[19];
  sub_1C0F4FFC0();
  (*(v2 + 16))(v1, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77778, &qword_1C0F56EE0);
  v7 = sub_1C0F4FF60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0F561D0;
  sub_1C0F4FF50();
  sub_1C0EEE428(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77780, &qword_1C0F56EE8);
  v12 = sub_1C0F4FF70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C0F561D0;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x1E697B960], v12);
  sub_1C0EEE748(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  v17 = sub_1C0F4FFB0();
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v5;
  *(v18 + 24) = v17;
  v0[49] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[5] = v5;
  v43 = v5;
  v0[50] = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();

  (*(v4 + 104))(v44, *MEMORY[0x1E697B900], v46);
  sub_1C0F4FEA0();
  v19 = sub_1C0F4FF00();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C0F4FED0();
  swift_getKeyPath();
  v23 = swift_task_alloc();
  *(v23 + 16) = v5;
  *(v23 + 24) = v22;
  v0[6] = v5;
  sub_1C0F4F950();

  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[7] = v5;
  sub_1C0F4F960();

  v26 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber;
  v0[52] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber;
  v27 = *(v5 + v26);
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  v45 = v26;
  v28 = v0[19];
  v29 = sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8]);
  v0[53] = v29;
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  swift_getKeyPath();
  v0[8] = v28;

  sub_1C0F4F960();

  v30 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v0[54] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector;
  v31 = *(v28 + v30);
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = v0[37];
  v33 = v0[19];
  v0[55] = sub_1C0F4FE90();
  v34 = sub_1C0EE9CFC(&qword_1EBE77710, MEMORY[0x1E697B918]);
  v0[56] = v34;
  *(v24 + 48) = v31;
  *(v24 + 56) = v34;
  v35 = sub_1C0F4FE70();
  (*(*(v35 - 8) + 56))(v32, 1, 1, v35);

  v36 = sub_1C0F4FE80();
  swift_getKeyPath();
  v37 = swift_task_alloc();
  *(v37 + 16) = v33;
  *(v37 + 24) = v36;
  v0[9] = v33;
  sub_1C0F4F950();

  swift_getKeyPath();
  v0[10] = v33;
  sub_1C0F4F960();

  v38 = *(v43 + v45);
  v0[57] = v38;
  if (!v38)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v39 = swift_task_alloc();
  v0[58] = v39;
  *v39 = v0;
  v39[1] = sub_1C0EDC1FC;
  v40 = v0[36];
  v41 = v0[18];
  v42 = v0[19];

  return sub_1C0EDD760(v38, v41, v40);
}

uint64_t sub_1C0EDC1FC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = v2[57];

  v6 = v2[48];
  v7 = v2[47];
  if (v0)
  {
    v8 = sub_1C0EEFE38;
  }

  else
  {
    v8 = sub_1C0EDC350;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C0EDC350()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[19];
  v6 = swift_allocObject();
  v0[60] = v6;
  *(v6 + 16) = xmmword_1C0F561C0;
  swift_getKeyPath();
  v0[11] = v5;
  sub_1C0F4F960();

  v8 = *(v5 + v2);
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v0[53];
  v10 = v0[54];
  v12 = v0[49];
  v11 = v0[50];
  v13 = v0[19];
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  swift_getKeyPath();
  v0[12] = v13;

  sub_1C0F4F960();

  v7 = *(v13 + v10);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEDD8E30](v7);
  }

  v14 = v0[56];
  *(v6 + 48) = v7;
  *(v6 + 56) = v14;
  v15 = *(MEMORY[0x1E697B8E8] + 4);

  v16 = swift_task_alloc();
  v0[61] = v16;
  *v16 = v0;
  v16[1] = sub_1C0EDC4D0;
  v17 = v0[55];
  v7 = v6;

  return MEMORY[0x1EEDD8E30](v7);
}

uint64_t sub_1C0EDC4D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v8 = *v1;
  *(*v1 + 496) = a1;

  v5 = *(v2 + 384);
  v6 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDC61C, v6, v5);
}

uint64_t sub_1C0EDC61C()
{
  v59 = *(v0 + 400);
  v60 = *(v0 + 472);
  v1 = *(v0 + 272);
  v63 = *(v0 + 248);
  v66 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v57 = *(v0 + 224);
  v58 = *(v0 + 392);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v61 = *(v0 + 184);
  v56 = *(v0 + 176);
  v8 = *(v0 + 152);
  sub_1C0ECF32C(*(v0 + 496));
  sub_1C0F4FF20();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1C0F50330();
  (*(v6 + 8))(v4, v5);
  v55 = *(v66 + 32);
  v55(v7, v1, v63);
  (*(v66 + 56))(v7, 0, 1, v63);
  (*(v3 + 32))(v56, v2, v57);
  (*(v3 + 56))(v56, 0, 1, v57);
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v0 + 104) = v8;
  sub_1C0F4F950();

  sub_1C0EEFAA8(v7, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0ECFB78(v56);
  swift_getKeyPath();
  *(v0 + 112) = v8;
  sub_1C0F4F960();

  v10 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
  swift_beginAccess();
  sub_1C0EED570(v8 + v10, v61, &qword_1EBE77310, &qword_1C0F561E8);
  if ((*(v66 + 48))(v61, 1, v63) != 1)
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 392);
    v15 = *(v0 + 400);
    v16 = *(v0 + 152);
    v55(*(v0 + 264), *(v0 + 184), *(v0 + 248));
    swift_getKeyPath();
    *(v0 + 120) = v16;
    sub_1C0F4F960();

    v20 = *(v16 + v13);
    if (v20)
    {
      v21 = *(v0 + 392);
      v64 = *(v0 + 400);
      v67 = *(v0 + 432);
      v22 = *(v0 + 360);
      v23 = *(v0 + 168);
      v24 = *(v0 + 152);
      v25 = sub_1C0F50320();
      v26 = *(*(v25 - 8) + 56);
      v26(v23, 1, 1, v25);
      swift_retain_n();

      v27 = sub_1C0F502E0();
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E85E0];
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = v20;
      v28[5] = v24;
      v30 = sub_1C0F053C4(0, 0, v23, &unk_1C0F56F00, v28);

      sub_1C0ECFEF8(v30, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask);
      swift_getKeyPath();
      *(v0 + 128) = v24;
      sub_1C0F4F960();

      v31 = *(v24 + v67);
      if (v31)
      {
        v32 = *(v0 + 392);
        v68 = *(v0 + 400);
        v33 = *(v0 + 360);
        v34 = *(v0 + 168);
        v35 = *(v0 + 152);
        v26(v34, 1, 1, v25);
        swift_retain_n();
        v36 = sub_1C0F502E0();
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = MEMORY[0x1E69E85E0];
        v37[4] = v31;
        v38 = sub_1C0F053C4(0, 0, v34, &unk_1C0F56F08, v37);

        sub_1C0ECFEF8(v38, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask);
        swift_getKeyPath();
        *(v0 + 136) = v35;
        sub_1C0F4F960();

        v39 = *(v35 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);
        *(v0 + 504) = v39;
        if (!v39)
        {
          v42 = *(v0 + 368);

          (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
          goto LABEL_10;
        }

        v40 = *(MEMORY[0x1E697B8F8] + 4);

        v41 = swift_task_alloc();
        *(v0 + 512) = v41;
        v19 = sub_1C0EEFB08(&qword_1EBE77718, &qword_1EBE774A0, &qword_1C0F56970);
        *v41 = v0;
        v41[1] = sub_1C0EDCD50;
        v17 = *(v0 + 264);
        v18 = *(v0 + 248);

        return MEMORY[0x1EEDD8E40](v17, v18, v19);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDD8E40](v17, v18, v19);
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 184);

  sub_1C0EEFAA8(v12, &qword_1EBE77310, &qword_1C0F561E8);
LABEL_10:
  v43 = *(v0 + 352);
  v44 = *(v0 + 320);
  v45 = *(v0 + 328);
  v47 = *(v0 + 288);
  v46 = *(v0 + 296);
  v49 = *(v0 + 264);
  v48 = *(v0 + 272);
  v50 = *(v0 + 240);
  v51 = *(v0 + 216);
  v52 = *(v0 + 192);
  v62 = *(v0 + 184);
  v65 = *(v0 + 176);
  v69 = *(v0 + 168);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1C0EDCD50()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[47];
    v5 = v2[48];
    v6 = sub_1C0EEFC70;
  }

  else
  {
    v7 = v2[63];

    v4 = v2[47];
    v5 = v2[48];
    v6 = sub_1C0EEFCE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C0EDCE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_1C0F502F0();
  v4[8] = sub_1C0F502E0();
  v8 = sub_1C0F502B0();
  v4[9] = v8;
  v4[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDCF38, v8, v7);
}

uint64_t sub_1C0EDCF38()
{
  v1 = **(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C0EDCFF4;
  v3 = *(v0 + 24);

  return sub_1C0EEDA84(v1, v3);
}

uint64_t sub_1C0EDCFF4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 112) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD11C, v5, v4);
}

uint64_t sub_1C0EDD11C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1C0EDD2A4;
    v2 = *(v0 + 24);

    return sub_1C0EEE06C(v2);
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    v8 = sub_1C0F4F940();
    (*(*(v8 - 8) + 16))(v5, v7, v8);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1C0EDD2A4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 113) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD3CC, v5, v4);
}

uint64_t sub_1C0EDD3CC()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 64);

    v2 = *(v0 + 56);

    v3 = *(v0 + 8);
LABEL_8:

    return v3();
  }

  v4 = *(v0 + 24);
  if (*(v4 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 24)) != 1)
  {
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77750, &qword_1C0F56EC8);
    v13 = sub_1C0F4F940();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C0F561D0;
    (*(v14 + 16))(v17 + v16, v4, v13);
    *v11 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    v18 = *(v0 + 56);

    v3 = *(v0 + 8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1C0EDD624;
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return sub_1C0EE1BB0(v8, v6);
}

uint64_t sub_1C0EDD624()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1C0EEFCD4;
  }

  else
  {
    v7 = sub_1C0EEFCF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EDD760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_1C0F502F0();
  v4[8] = sub_1C0F502E0();
  v8 = sub_1C0F502B0();
  v4[9] = v8;
  v4[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDD82C, v8, v7);
}

uint64_t sub_1C0EDD82C()
{
  v1 = **(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C0EDD8E8;
  v3 = *(v0 + 24);

  return sub_1C0EEEA68(v1, v3);
}

uint64_t sub_1C0EDD8E8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 112) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDDA10, v5, v4);
}

uint64_t sub_1C0EDDA10()
{
  if (*(v0 + 112) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1C0EDDB98;
    v2 = *(v0 + 24);

    return sub_1C0EEEC28(v2);
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    v8 = sub_1C0F4F940();
    (*(*(v8 - 8) + 16))(v5, v7, v8);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1C0EDDB98(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 113) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C0EDDCC0, v5, v4);
}

uint64_t sub_1C0EDDCC0()
{
  if (*(v0 + 113) == 1)
  {
    v1 = *(v0 + 64);

    v2 = *(v0 + 56);

    v3 = *(v0 + 8);
LABEL_8:

    return v3();
  }

  v4 = *(v0 + 24);
  if (*(v4 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 24)) != 1)
  {
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77750, &qword_1C0F56EC8);
    v13 = sub_1C0F4F940();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C0F561D0;
    (*(v14 + 16))(v17 + v16, v4, v13);
    *v11 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
    v18 = *(v0 + 56);

    v3 = *(v0 + 8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1C0EDDF18;
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return sub_1C0EE21CC(v8, v6);
}

uint64_t sub_1C0EDDF18()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1C0EDE0C0;
  }

  else
  {
    v7 = sub_1C0EDE054;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EDE054()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0EDE0C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];

  sub_1C0EE9E60(v2, v3, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C0EDE150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77720, &qword_1C0F56E88) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77728, &qword_1C0F56E90);
  v4[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77730, &qword_1C0F56E98);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = sub_1C0F502F0();
  v4[11] = sub_1C0F502E0();
  v12 = sub_1C0F502B0();
  v4[12] = v12;
  v4[13] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDE2C8, v12, v11);
}

uint64_t sub_1C0EDE2C8()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  sub_1C0F4FEF0();
  v0[14] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];
  v9 = sub_1C0F502E0();
  v0[15] = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(MEMORY[0x1E69E85B0] + 4);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1C0EDE414;
  v13 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v15, v9, v16, v0 + 2, v14, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDE414()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;

  v4 = v2[15];

  v5 = v2[12];
  v6 = v2[13];
  if (v0)
  {
    v7 = sub_1C0EDE718;
  }

  else
  {
    v7 = sub_1C0EDE534;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C0EDE534()
{
  v1 = v0[4];
  v2 = sub_1C0F4FEE0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[4];

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_1C0EEFAA8(v1, &qword_1EBE77720, &qword_1C0F56E88);
    v9 = v0[14];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[5];
    v13 = sub_1C0F502E0();
    v0[15] = v13;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = *(MEMORY[0x1E69E85B0] + 4);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_1C0EDE414;
    v17 = v0[9];
    v18 = v0[7];
    v19 = v0[4];
    v20 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v19, v13, v20, v0 + 2, v18, AssociatedConformanceWitness);
  }
}

uint64_t sub_1C0EDE718()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C0EDE7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v6 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v5[38] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5[40] = v8;
  v9 = *(v8 - 8);
  v5[41] = v9;
  v10 = *(v9 + 64) + 15;
  v5[42] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v13 = sub_1C0F4F830();
  v5[45] = v13;
  v14 = *(v13 - 8);
  v5[46] = v14;
  v15 = *(v14 + 64) + 15;
  v5[47] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v5[48] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v19 = sub_1C0F4FDF0();
  v5[53] = v19;
  v20 = *(v19 - 8);
  v5[54] = v20;
  v21 = *(v20 + 64) + 15;
  v5[55] = swift_task_alloc();
  v22 = sub_1C0F4F630();
  v5[56] = v22;
  v23 = *(v22 - 8);
  v5[57] = v23;
  v24 = *(v23 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77738, &qword_1C0F56EA0) - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77740, &qword_1C0F56EA8);
  v5[63] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77748, &qword_1C0F56EB0);
  v5[65] = v28;
  v29 = *(v28 - 8);
  v5[66] = v29;
  v30 = *(v29 + 64) + 15;
  v5[67] = swift_task_alloc();
  v5[68] = sub_1C0F502F0();
  v5[69] = sub_1C0F502E0();
  v32 = sub_1C0F502B0();
  v5[70] = v32;
  v5[71] = v31;

  return MEMORY[0x1EEE6DFA0](sub_1C0EDEC14, v32, v31);
}

uint64_t sub_1C0EDEC14()
{
  v1 = v0[67];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[36];
  v5 = v0[37];
  sub_1C0F4FE10();
  sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0]);
  sub_1C0F4FE30();
  v0[72] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v0[73] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v0[74] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[75] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  v0[76] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v0[77] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = v0[72];
  v7 = v0[68];
  v8 = v0[65];
  v9 = v0[63];
  v10 = sub_1C0F502E0();
  v0[78] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v0[79] = v13;
  *v13 = v0;
  v13[1] = sub_1C0EDEE34;
  v14 = v0[67];
  v15 = v0[65];
  v16 = v0[62];
  v17 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v16, v10, v17, v0 + 26, v15, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDEE34()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v9 = *v1;
  *(*v1 + 640) = v0;

  v4 = v2[78];

  v5 = v2[71];
  v6 = v2[70];
  if (v0)
  {
    v7 = sub_1C0EDFD98;
  }

  else
  {
    v7 = sub_1C0EDEF60;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EDEF60()
{
  v1 = v0[62];
  v2 = v0[53];
  v3 = v0[54];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[69];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v5 = v0[67];
    v6 = v0[64];
    v8 = v0[61];
    v7 = v0[62];
    v10 = v0[59];
    v9 = v0[60];
    v11 = v0[58];
    v12 = v0[55];
    v14 = v0[51];
    v13 = v0[52];
    v116 = v0[50];
    v118 = v0[49];
    v120 = v0[47];
    v122 = v0[44];
    v125 = v0[43];
    v130 = v0[42];
    v136 = v0[39];

    v15 = v0[1];

    return v15();
  }

  v17 = v0[61];
  (*(v3 + 32))(v0[55], v1, v2);
  sub_1C0F4FDE0();
  if (sub_1C0F4FE20())
  {
    v18 = v0[75];
    v19 = v0[74];
    v131 = v0[60];
    v137 = v0[73];
    v20 = v0[59];
    v21 = v0[56];
    v123 = v0[61];
    v126 = v0[57];
    v22 = v0[37];
    swift_getKeyPath();
    v0[32] = v22;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v0[33] = v22;
    swift_getKeyPath();
    sub_1C0F4F980();

    swift_beginAccess();
    sub_1C0F4F610();
    swift_endAccess();
    v0[34] = v22;
    swift_getKeyPath();
    sub_1C0F4F970();

    sub_1C0F4F600();
    v124 = *(v126 + 16);
    v124(v20, v22 + v137, v21);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848]);
    v23 = sub_1C0F50190();
    v138 = *(v126 + 8);
    v138(v20, v21);
    v24 = v0[54];
    v25 = v0[53];
    v26 = v0[37];
    if (v23)
    {
      v27 = v0[73];
      v28 = v0[60];
      v29 = v0[56];
      v30 = v0[57];
      (*(v24 + 8))(v0[55], v0[53]);
      swift_beginAccess();
      (*(v30 + 24))(v26 + v27, v28, v29);
      swift_endAccess();
      v127 = v0[80];
    }

    else
    {
      v129 = v0[80];
      v132 = v0[55];
      v43 = v0[74];
      v44 = v0[60];
      swift_getKeyPath();
      v45 = swift_task_alloc();
      *(v45 + 16) = v26;
      *(v45 + 24) = v44;
      v0[35] = v26;
      sub_1C0F4F950();

      (*(v24 + 8))(v132, v25);
    }

    v138(v0[60], v0[56]);
  }

  else
  {
    v31 = v0[73];
    v32 = v0[59];
    v33 = v0[56];
    v34 = v0[57];
    v35 = v0[37];
    v36 = *(v34 + 16);
    v36(v0[58], v0[61], v33);
    v124 = v36;
    v36(v32, v35 + v31, v33);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848]);
    v37 = sub_1C0F50190();
    v138 = *(v34 + 8);
    v138(v32, v33);
    if (v37)
    {
      v38 = v0[73];
      v40 = v0[57];
      v39 = v0[58];
      v41 = v0[56];
      v42 = v0[37];
      (*(v0[54] + 8))(v0[55], v0[53]);
      swift_beginAccess();
      (*(v40 + 24))(v42 + v38, v39, v41);
      swift_endAccess();
      v128 = v0[80];
    }

    else
    {
      v46 = v0[80];
      v47 = v0[74];
      v48 = v0[58];
      v49 = v0[54];
      v133 = v0[55];
      v50 = v0[53];
      v51 = v0[37];
      swift_getKeyPath();
      v52 = swift_task_alloc();
      *(v52 + 16) = v51;
      *(v52 + 24) = v48;
      v0[27] = v51;
      sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
      sub_1C0F4F950();

      (*(v49 + 8))(v133, v50);
    }

    v138(v0[58], v0[56]);
  }

  v53 = v0[76];
  v55 = v0[51];
  v54 = v0[52];
  v56 = v0[49];
  v134 = v0[48];
  v57 = v0[45];
  v58 = v0[46];
  v59 = v0[37];
  sub_1C0F4F820();
  (*(v58 + 56))(v54, 0, 1, v57);
  sub_1C0EED570(v59 + v53, v55, &qword_1EBE77370, &qword_1C0F56200);
  v60 = *(v134 + 48);
  sub_1C0EED570(v55, v56, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(v54, v56 + v60, &qword_1EBE77370, &qword_1C0F56200);
  v61 = *(v58 + 48);
  if (v61(v56, 1, v57) == 1)
  {
    v62 = v0[45];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    if (v61(v56 + v60, 1, v62) == 1)
    {
      sub_1C0EEFAA8(v0[49], &qword_1EBE77370, &qword_1C0F56200);
LABEL_22:
      v79 = v0[76];
      v80 = v0[52];
      v81 = v0[37];
      swift_beginAccess();
      sub_1C0EEFA0C(v80, v81 + v79, &qword_1EBE77370, &qword_1C0F56200);
      swift_endAccess();
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v63 = v0[45];
  sub_1C0EED570(v0[49], v0[50], &qword_1EBE77370, &qword_1C0F56200);
  v64 = v61(v56 + v60, 1, v63);
  v65 = v0[50];
  v66 = v0[51];
  if (v64 == 1)
  {
    v67 = v0[45];
    v68 = v0[46];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    (*(v68 + 8))(v65, v67);
LABEL_19:
    sub_1C0EEFAA8(v0[49], &qword_1EBE77628, &qword_1C0F56CA0);
    goto LABEL_20;
  }

  v73 = v0[49];
  v74 = v0[46];
  v75 = v0[47];
  v76 = v0[45];
  (*(v74 + 32))(v75, v56 + v60, v76);
  sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530]);
  v77 = sub_1C0F50190();
  v78 = *(v74 + 8);
  v78(v75, v76);
  sub_1C0EEFAA8(v66, &qword_1EBE77370, &qword_1C0F56200);
  v78(v65, v76);
  sub_1C0EEFAA8(v73, &qword_1EBE77370, &qword_1C0F56200);
  if (v77)
  {
    goto LABEL_22;
  }

LABEL_20:
  v69 = v0[74];
  v70 = v0[52];
  v71 = v0[37];
  swift_getKeyPath();
  v72 = swift_task_alloc();
  *(v72 + 16) = v71;
  *(v72 + 24) = v70;
  v0[28] = v71;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();

LABEL_23:
  v82 = v0[77];
  v83 = v0[74];
  v84 = v0[43];
  v85 = v0[40];
  v86 = v0[41];
  v87 = v0[37];
  sub_1C0EEFAA8(v0[52], &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0ED4B7C();
  swift_getKeyPath();
  v0[29] = v87;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  sub_1C0EED570(v87 + v82, v84, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v86 + 48))(v84, 1, v85))
  {
    v88 = v0[43];
    v89 = v0[57] + 8;
    v138(v0[61], v0[56]);
    sub_1C0EEFAA8(v88, &qword_1EBE772B0, &qword_1C0F561E0);
    v90 = 1;
  }

  else
  {
    v91 = v0[74];
    v135 = v0[61];
    v93 = v0[56];
    v92 = v0[57];
    v94 = v0[43];
    v119 = v0[75];
    v121 = v0[44];
    v112 = v0[73];
    v113 = v0[41];
    v95 = v0[39];
    v114 = v0[40];
    v96 = v0[37];
    v115 = v0[38];
    v117 = v0[42];
    (*(v113 + 16))();
    sub_1C0EEFAA8(v94, &qword_1EBE772B0, &qword_1C0F561E0);
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
    swift_getKeyPath();
    v0[30] = v96;
    sub_1C0F4F960();

    v124(v95, v96 + v112, v93);
    swift_getKeyPath();
    v0[31] = v96;
    sub_1C0F4F960();

    v124(v95 + v111, v96 + v119, v93);
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v113 + 8))(v117, v114);
    v138(v135, v93);
    v90 = 0;
  }

  v97 = v0[44];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v98 - 8) + 56))(v97, v90, 1, v98);
  sub_1C0EEFAA8(v97, &qword_1EBE77618, &qword_1C0F56BC8);
  v99 = v0[72];
  v100 = v0[68];
  v101 = v0[65];
  v102 = v0[63];
  v103 = sub_1C0F502E0();
  v0[78] = v103;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v105 = *(MEMORY[0x1E69E85B0] + 4);
  v106 = swift_task_alloc();
  v0[79] = v106;
  *v106 = v0;
  v106[1] = sub_1C0EDEE34;
  v107 = v0[67];
  v108 = v0[65];
  v109 = v0[62];
  v110 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v109, v103, v110, v0 + 26, v108, AssociatedConformanceWitness);
}

uint64_t sub_1C0EDFD98()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 536);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 464);
  v12 = *(v0 + 440);
  v14 = *(v0 + 408);
  v13 = *(v0 + 416);
  v17 = *(v0 + 400);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 352);
  v21 = *(v0 + 344);
  v22 = *(v0 + 336);
  v23 = *(v0 + 312);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C0EDFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v6 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v5[38] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5[40] = v8;
  v9 = *(v8 - 8);
  v5[41] = v9;
  v10 = *(v9 + 64) + 15;
  v5[42] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v13 = sub_1C0F4F830();
  v5[45] = v13;
  v14 = *(v13 - 8);
  v5[46] = v14;
  v15 = *(v14 + 64) + 15;
  v5[47] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v5[48] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v19 = sub_1C0F4F630();
  v5[53] = v19;
  v20 = *(v19 - 8);
  v5[54] = v20;
  v21 = *(v20 + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v22 = sub_1C0F4FFA0();
  v5[59] = v22;
  v23 = *(v22 - 8);
  v5[60] = v23;
  v24 = *(v23 + 64) + 15;
  v5[61] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77790, &qword_1C0F56F10) - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77798, &qword_1C0F56F18);
  v5[63] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v5[64] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777A0, &qword_1C0F56F20);
  v5[65] = v28;
  v29 = *(v28 - 8);
  v5[66] = v29;
  v30 = *(v29 + 64) + 15;
  v5[67] = swift_task_alloc();
  v5[68] = sub_1C0F502F0();
  v5[69] = sub_1C0F502E0();
  v32 = sub_1C0F502B0();
  v5[70] = v32;
  v5[71] = v31;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE0354, v32, v31);
}

uint64_t sub_1C0EE0354()
{
  v1 = v0[67];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[36];
  v5 = v0[37];
  sub_1C0F4FFC0();
  sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8]);
  sub_1C0F4FE30();
  v0[72] = swift_getOpaqueTypeConformance2();
  sub_1C0F503F0();
  v0[73] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v0[74] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v0[75] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
  v0[76] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime;
  v0[77] = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = v0[72];
  v7 = v0[68];
  v8 = v0[65];
  v9 = v0[63];
  v10 = sub_1C0F502E0();
  v0[78] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x1E69E85B0] + 4);
  v13 = swift_task_alloc();
  v0[79] = v13;
  *v13 = v0;
  v13[1] = sub_1C0EE0574;
  v14 = v0[67];
  v15 = v0[65];
  v16 = v0[62];
  v17 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v16, v10, v17, v0 + 26, v15, AssociatedConformanceWitness);
}

uint64_t sub_1C0EE0574()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v9 = *v1;
  *(*v1 + 640) = v0;

  v4 = v2[78];

  v5 = v2[71];
  v6 = v2[70];
  if (v0)
  {
    v7 = sub_1C0EE14A4;
  }

  else
  {
    v7 = sub_1C0EE06A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EE06A0()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[69];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v5 = v0[67];
    v6 = v0[64];
    v8 = v0[61];
    v7 = v0[62];
    v10 = v0[57];
    v9 = v0[58];
    v11 = v0[55];
    v12 = v0[56];
    v14 = v0[51];
    v13 = v0[52];
    v121 = v0[50];
    v122 = v0[49];
    v124 = v0[47];
    v126 = v0[44];
    v129 = v0[43];
    v134 = v0[42];
    v138 = v0[39];

    v15 = v0[1];

    return v15();
  }

  v17 = v0[58];
  (*(v3 + 32))(v0[61], v1, v2);
  sub_1C0F4FF90();
  if (sub_1C0F4FE20())
  {
    v18 = v0[75];
    v19 = v0[74];
    v139 = v0[73];
    v127 = v0[58];
    v135 = v0[57];
    v20 = v0[56];
    v21 = v0[53];
    v130 = v0[54];
    v22 = v0[37];
    swift_getKeyPath();
    v0[32] = v22;
    sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    sub_1C0F4F960();

    v0[33] = v22;
    swift_getKeyPath();
    sub_1C0F4F980();

    swift_beginAccess();
    sub_1C0F4F610();
    swift_endAccess();
    v0[34] = v22;
    swift_getKeyPath();
    sub_1C0F4F970();

    sub_1C0F4F600();
    v128 = *(v130 + 16);
    v128(v20, v22 + v139, v21);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848]);
    v23 = sub_1C0F50190();
    v24 = *(v130 + 8);
    v24(v20, v21);
    v25 = v0[37];
    if (v23)
    {
      v26 = v0[73];
      v27 = v0[57];
      v28 = v0[53];
      v29 = v0[54];
      swift_beginAccess();
      (*(v29 + 24))(v25 + v26, v27, v28);
      swift_endAccess();
      v131 = v0[80];
    }

    else
    {
      v43 = v0[80];
      v44 = v0[74];
      v45 = v0[57];
      swift_getKeyPath();
      v46 = swift_task_alloc();
      *(v46 + 16) = v25;
      *(v46 + 24) = v45;
      v0[35] = v25;
      sub_1C0F4F950();
    }

    v140 = v24;
    v24(v0[57], v0[53]);
  }

  else
  {
    v30 = v0[73];
    v31 = v0[56];
    v32 = v0[53];
    v33 = v0[54];
    v34 = v0[37];
    v35 = *(v33 + 16);
    v35(v0[55], v0[58], v32);
    v128 = v35;
    v35(v31, v34 + v30, v32);
    sub_1C0EE9CFC(&qword_1EBE775E0, MEMORY[0x1E6968848]);
    v36 = sub_1C0F50190();
    v37 = *(v33 + 8);
    v37(v31, v32);
    if (v36)
    {
      v38 = v0[73];
      v40 = v0[54];
      v39 = v0[55];
      v41 = v0[53];
      v42 = v0[37];
      swift_beginAccess();
      (*(v40 + 24))(v42 + v38, v39, v41);
      swift_endAccess();
      v132 = v0[80];
    }

    else
    {
      v47 = v0[80];
      v48 = v0[74];
      v49 = v0[55];
      v50 = v0[37];
      swift_getKeyPath();
      v51 = swift_task_alloc();
      *(v51 + 16) = v50;
      *(v51 + 24) = v49;
      v0[27] = v50;
      sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
      sub_1C0F4F950();
    }

    v140 = v37;
    v37(v0[55], v0[53]);
  }

  v52 = v0[76];
  v54 = v0[51];
  v53 = v0[52];
  v55 = v0[49];
  v136 = v0[48];
  v56 = v0[45];
  v57 = v0[46];
  v58 = v0[37];
  sub_1C0F4F820();
  (*(v57 + 56))(v53, 0, 1, v56);
  sub_1C0EED570(v58 + v52, v54, &qword_1EBE77370, &qword_1C0F56200);
  v59 = *(v136 + 48);
  sub_1C0EED570(v54, v55, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(v53, v55 + v59, &qword_1EBE77370, &qword_1C0F56200);
  v60 = *(v57 + 48);
  if (v60(v55, 1, v56) == 1)
  {
    v61 = v0[45];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    if (v60(v55 + v59, 1, v61) == 1)
    {
      sub_1C0EEFAA8(v0[49], &qword_1EBE77370, &qword_1C0F56200);
LABEL_22:
      v78 = v0[76];
      v79 = v0[52];
      v80 = v0[37];
      swift_beginAccess();
      sub_1C0EEFA0C(v79, v80 + v78, &qword_1EBE77370, &qword_1C0F56200);
      swift_endAccess();
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v62 = v0[45];
  sub_1C0EED570(v0[49], v0[50], &qword_1EBE77370, &qword_1C0F56200);
  v63 = v60(v55 + v59, 1, v62);
  v64 = v0[50];
  v65 = v0[51];
  if (v63 == 1)
  {
    v66 = v0[45];
    v67 = v0[46];
    sub_1C0EEFAA8(v0[51], &qword_1EBE77370, &qword_1C0F56200);
    (*(v67 + 8))(v64, v66);
LABEL_19:
    sub_1C0EEFAA8(v0[49], &qword_1EBE77628, &qword_1C0F56CA0);
    goto LABEL_20;
  }

  v72 = v0[49];
  v73 = v0[46];
  v74 = v0[47];
  v75 = v0[45];
  (*(v73 + 32))(v74, v55 + v59, v75);
  sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530]);
  v76 = sub_1C0F50190();
  v77 = *(v73 + 8);
  v77(v74, v75);
  sub_1C0EEFAA8(v65, &qword_1EBE77370, &qword_1C0F56200);
  v77(v64, v75);
  sub_1C0EEFAA8(v72, &qword_1EBE77370, &qword_1C0F56200);
  if (v76)
  {
    goto LABEL_22;
  }

LABEL_20:
  v68 = v0[74];
  v69 = v0[52];
  v70 = v0[37];
  swift_getKeyPath();
  v71 = swift_task_alloc();
  *(v71 + 16) = v70;
  *(v71 + 24) = v69;
  v0[28] = v70;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F950();

LABEL_23:
  v81 = v0[77];
  v82 = v0[74];
  v83 = v0[43];
  v84 = v0[40];
  v85 = v0[41];
  v86 = v0[37];
  sub_1C0EEFAA8(v0[52], &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0ED4B7C();
  swift_getKeyPath();
  v0[29] = v86;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  sub_1C0EED570(v86 + v81, v83, &qword_1EBE772B0, &qword_1C0F561E0);
  if ((*(v85 + 48))(v83, 1, v84))
  {
    v88 = v0[60];
    v87 = v0[61];
    v89 = v0[59];
    v90 = v0[43];
    v91 = v0[54] + 8;
    v140(v0[58], v0[53]);
    (*(v88 + 8))(v87, v89);
    sub_1C0EEFAA8(v90, &qword_1EBE772B0, &qword_1C0F561E0);
    v92 = 1;
  }

  else
  {
    v119 = v0[75];
    v93 = v0[74];
    v114 = v0[73];
    v137 = v0[61];
    v133 = v0[59];
    v123 = v0[58];
    v125 = v0[60];
    v95 = v0[53];
    v94 = v0[54];
    v96 = v0[43];
    v97 = v0[39];
    v115 = v0[41];
    v116 = v0[40];
    v120 = v0[44];
    v98 = v0[37];
    v117 = v0[38];
    v118 = v0[42];
    (*(v115 + 16))();
    sub_1C0EEFAA8(v96, &qword_1EBE772B0, &qword_1C0F561E0);
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
    swift_getKeyPath();
    v0[30] = v98;
    sub_1C0F4F960();

    v128(v97, v98 + v114, v95);
    swift_getKeyPath();
    v0[31] = v98;
    sub_1C0F4F960();

    v128(v97 + v113, v98 + v119, v95);
    swift_storeEnumTagMultiPayload();
    sub_1C0F50360();
    (*(v115 + 8))(v118, v116);
    v140(v123, v95);
    (*(v125 + 8))(v137, v133);
    v92 = 0;
  }

  v99 = v0[44];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
  (*(*(v100 - 8) + 56))(v99, v92, 1, v100);
  sub_1C0EEFAA8(v99, &qword_1EBE77618, &qword_1C0F56BC8);
  v101 = v0[72];
  v102 = v0[68];
  v103 = v0[65];
  v104 = v0[63];
  v105 = sub_1C0F502E0();
  v0[78] = v105;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = *(MEMORY[0x1E69E85B0] + 4);
  v108 = swift_task_alloc();
  v0[79] = v108;
  *v108 = v0;
  v108[1] = sub_1C0EE0574;
  v109 = v0[67];
  v110 = v0[65];
  v111 = v0[62];
  v112 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v111, v105, v112, v0 + 26, v110, AssociatedConformanceWitness);
}

uint64_t sub_1C0EE14A4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 536);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v10 = *(v0 + 456);
  v9 = *(v0 + 464);
  v11 = *(v0 + 440);
  v12 = *(v0 + 448);
  v14 = *(v0 + 408);
  v13 = *(v0 + 416);
  v17 = *(v0 + 400);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 352);
  v21 = *(v0 + 344);
  v22 = *(v0 + 336);
  v23 = *(v0 + 312);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C0EE1614()
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v1 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);
}

void *sub_1C0EE16C0(void *a1, void *a2, void *a3)
{
  v5 = v3;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = [a1 format];
  sub_1C0EED60C(0, &qword_1EBE775E8, 0x1E6958418);
  if (sub_1C0F504F0())
  {
    v9 = a1;

    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v12 = v3[2];
  if (!v12 || (v13 = [v12 outputFormat]) == 0 || (v14 = v13, v15 = a2, v16 = sub_1C0F504F0(), v14, v15, (v16 & 1) == 0))
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v8 toFormat:a2];
    v18 = v5[2];
    v5[2] = v17;

    v19 = v5[2];
    if (!v19)
    {
LABEL_15:
      type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
      swift_storeEnumTagMultiPayload();
      sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      swift_willThrowTypedImpl();
      goto LABEL_18;
    }

    [v19 setPrimeMethod_];
  }

  v20 = v5[2];
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v21 outputFormat];
  [v22 sampleRate];
  v24 = v23;

  v25 = [v21 inputFormat];
  [v25 sampleRate];
  v27 = v26;

  v28 = ceil(v24 / v27 * [a1 frameLength]);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v28 <= -1.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v28 >= 4294967300.0)
  {
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v21 outputFormat];
  v5 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v30 frameCapacity:v29];

  if (v5)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1;
    aBlock[4] = sub_1C0EED4A4;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0EE51E8;
    aBlock[3] = &block_descriptor;
    v33 = _Block_copy(aBlock);

    v34 = a1;

    aBlock[0] = 0;
    v35 = [v21 convertToBuffer:v5 error:aBlock withInputFromBlock:v33];
    _Block_release(v33);
    if (v35 != 3)
    {

      goto LABEL_19;
    }

    v36 = aBlock[0];
    *a3 = aBlock[0];
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v37 = v36;
    swift_willThrowTypedImpl();
  }

  else
  {
    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    swift_storeEnumTagMultiPayload();
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    swift_willThrowTypedImpl();
  }

LABEL_18:
LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1C0EE1BB0(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  sub_1C0F502F0();
  v3[5] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE1C4C, v5, v4);
}

uint64_t sub_1C0EE1C4C()
{
  v1 = v0[2];
  sub_1C0F4FF40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_1C0F561D0;
  v3 = sub_1C0EE9CFC(&qword_1EBE77708, MEMORY[0x1E697B8E0]);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x1E697B920] + 4);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1C0EE1D70;

  return MEMORY[0x1EEDD8EA8](v2);
}

uint64_t sub_1C0EE1D70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v10 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = v3[7];
    v7 = sub_1C0EEFE40;
  }

  else
  {
    v8 = v3[8];

    v5 = v3[6];
    v6 = v3[7];
    v7 = sub_1C0EE1E8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C0EE1E8C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 80);
    v3 = sub_1C0F4FFE0();
    sub_1C0ECF180(v3);
    v4 = *(MEMORY[0x1E697B9B0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_1C0EE2090;

    return MEMORY[0x1EEDD8F38]();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);

    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v8 = swift_allocError();
    v10 = v9;
    sub_1C0F4FE10();
    sub_1C0EE9CFC(&qword_1EBE77758, MEMORY[0x1E697B8E0]);
    *v10 = sub_1C0F4FDA0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    **(v0 + 32) = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1C0EE2090()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1C0EEFD30;
  }

  else
  {
    v7 = sub_1C0EEFD38;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EE21CC(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  sub_1C0F502F0();
  v3[5] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE2268, v5, v4);
}

uint64_t sub_1C0EE2268()
{
  v1 = v0[2];
  sub_1C0F4FF40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77700, &qword_1C0F56E58);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_1C0F561D0;
  v3 = sub_1C0EE9CFC(&qword_1EBE77788, MEMORY[0x1E697B9A8]);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x1E697B920] + 4);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1C0EE238C;

  return MEMORY[0x1EEDD8EA8](v2);
}

uint64_t sub_1C0EE238C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v10 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = v3[7];
    v7 = sub_1C0EE27E8;
  }

  else
  {
    v8 = v3[8];

    v5 = v3[6];
    v6 = v3[7];
    v7 = sub_1C0EE24A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C0EE24A8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 80);
    v3 = sub_1C0F4FFE0();
    sub_1C0ECF180(v3);
    v4 = *(MEMORY[0x1E697B9B0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_1C0EE26AC;

    return MEMORY[0x1EEDD8F38]();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);

    type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
    sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    v8 = swift_allocError();
    v10 = v9;
    sub_1C0F4FFC0();
    sub_1C0EE9CFC(&qword_1EBE777A8, MEMORY[0x1E697B9A8]);
    *v10 = sub_1C0F4FDA0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    **(v0 + 32) = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);

    return v11();
  }
}