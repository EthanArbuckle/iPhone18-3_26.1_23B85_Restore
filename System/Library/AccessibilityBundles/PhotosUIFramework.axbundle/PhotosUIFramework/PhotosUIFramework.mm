double AXScaledSliderValues(double a1, double a2, double a3, double a4)
{
  v4 = a4 == a2 || a4 == a3;
  if (v4 || ((v5 = vabdd_f64(a4, a2), v6 = vabdd_f64(a3, a4), a4 + a4 == a3) ? (v7 = v5 == v6) : (v7 = 0), v7))
  {
    if (a3 > a2)
    {
      return (a1 - a2) / (a3 - a2) + 0.0;
    }

    return 2.22507386e-308;
  }

  v8 = 0.0;
  if (a4 <= a2)
  {
    return v8;
  }

  if (a3 <= a2)
  {
    return 2.22507386e-308;
  }

  if (a1 >= a4)
  {
    if (a3 > a4)
    {
      v9 = (a1 - a4) / (a3 - a4);
      v10 = 0.0;
      goto LABEL_20;
    }
  }

  else if (a4 > a2)
  {
    v9 = (a1 - a2) / (a4 - a2);
    v10 = -1.0;
LABEL_20:
    v12 = v9 + v10;
    goto LABEL_22;
  }

  v12 = 2.22507386e-308;
LABEL_22:
  if (round(v12 * 100.0) / 100.0 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return v12;
  }
}

double AXScaleSymmetricSliderValuesBetween(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 <= a2)
  {
    return 2.22507386e-308;
  }

  else
  {
    return (a1 - a2) * (a5 - a4) / (a3 - a2) + a4;
  }
}

double AXScaleAsymmetricSliderValuesBetween(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a4 <= a2)
  {
    return 2.22507386e-308;
  }

  if (a1 >= a3)
  {
    if (a4 > a3)
    {
      result = (a1 - a3) * (a7 - a6) / (a4 - a3) + a6;
      goto LABEL_9;
    }
  }

  else if (a3 > a2)
  {
    result = (a1 - a2) * (a6 - a5) / (a3 - a2) + a5;
    goto LABEL_9;
  }

  result = 2.22507386e-308;
LABEL_9:
  if (round(result * 100.0) / 100.0 == 0.0)
  {
    return 0.0;
  }

  return result;
}

id accessibilityPULocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPULocalizedString_axBundle;
  if (accessibilityPULocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityPULocalizedString_axBundle, accessibilityPULocalizedString_axBundle = v3, v4, (v2 = accessibilityPULocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A228A390 table:@"PhotosUIAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityPhotosFrameworkLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPhotosFrameworkLocalizedString_axBundle;
  if (accessibilityPhotosFrameworkLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PhotosFramework.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityPhotosFrameworkLocalizedString_axBundle;
  accessibilityPhotosFrameworkLocalizedString_axBundle = v6;

  v2 = accessibilityPhotosFrameworkLocalizedString_axBundle;
  if (accessibilityPhotosFrameworkLocalizedString_axBundle)
  {
LABEL_3:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A228A390 table:@"PhotosFrameworkStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id AXScrollStatusForBrowsingSession(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v20 = v3;
  v5 = [v3 safeValueForKey:@"viewModel"];
  v6 = [v5 safeValueForKey:@"assetsDataSource"];
  v7 = [v5 safeValueForKey:@"currentAssetReference"];
  LOBYTE(v33) = 0;
  objc_opt_class();
  v8 = [v7 safeValueForKey:@"indexPath"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 indexAtPosition:{objc_msgSend(v9, "length") - 1}];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 3221225472;
  v28 = __AXScrollStatusForBrowsingSession_block_invoke;
  v29 = &unk_29F2E80C8;
  v30 = v6;
  v11 = v9;
  v31 = v11;
  v32 = &v33;
  AXPerformSafeBlock();
  v12 = v34[3];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21 = v30;
  AXPerformSafeBlock();
  v13 = v23[3];

  _Block_object_dispose(&v22, 8);
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityPULocalizedString(@"photo.scrubber.value.format");
  v16 = MEMORY[0x29C2E7040](v10 + v12 + 1);
  v17 = MEMORY[0x29C2E7040](v13);
  v18 = [v14 stringWithFormat:v15, v4, v16, v17];

  _Block_object_dispose(&v33, 8);

  return v18;
}

void sub_29C14356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 136), 8);
  _Unwind_Resume(a1);
}

void __AXScrollStatusForBrowsingSession_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDB9FE0] indexPathForItem:0 inSection:0];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __AXScrollStatusForBrowsingSession_block_invoke_2;
  v6[3] = &unk_29F2E80A0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v3 enumerateIndexPathsStartingAtIndexPath:v2 reverseDirection:0 usingBlock:v6];
}

uint64_t __AXScrollStatusForBrowsingSession_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 section];
  result = [*(a1 + 32) section];
  if (v5 == result)
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t __AXScrollStatusForBrowsingSession_block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) numberOfAssetsWithMaximum:0x7FFFFFFFFFFFFFFFLL];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_29C143AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C143D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C143F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C144750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C144924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C1461A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C1467E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29C1469C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C149150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

void sub_29C14BA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C14BC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C14E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v41 - 224));
  objc_destroyWeak((v41 - 184));
  objc_destroyWeak((v41 - 136));
  objc_destroyWeak((v41 - 128));
  _Unwind_Resume(a1);
}

void sub_29C14E958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_29C14EFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C150924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C1524A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C152760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C1529B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C1539D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C153D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C15633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}