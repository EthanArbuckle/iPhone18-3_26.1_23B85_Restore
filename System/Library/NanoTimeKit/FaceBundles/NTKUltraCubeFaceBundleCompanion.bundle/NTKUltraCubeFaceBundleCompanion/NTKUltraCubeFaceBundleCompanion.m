void sub_30AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_30C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained setInitialPreviewState:3];
    [v8 _setPreview:v5 animated:0];
  }

  else
  {
    [WeakRetained setInitialPreviewState:2];
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_29784(v6, v9);
    }
  }
}

id sub_3F78(uint64_t a1)
{
  v1 = 0.2;
  if (!*(a1 + 48))
  {
    v1 = 0.0;
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4014;
  v3[3] = &unk_48C68;
  v3[4] = *(a1 + 32);
  v3[5] = *(a1 + 40);
  return [UIView animateWithDuration:v3 animations:v1];
}

id sub_4274(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [*(a1 + 32) _setCropValidationState:v2 animated:*(a1 + 40)];
}

void sub_4570(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _ultracubePreviewViewControllerWantsToCancel:*(a1 + 32)];
}

void sub_473C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _ultracubePreviewViewControllerWantsToDelete:*(a1 + 32)];
}

void sub_4994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_49B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    [v6 setUserInteractionEnabled:0];

    v7 = v5[21];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4AAC;
    v8[3] = &unk_48C40;
    objc_copyWeak(&v9, (a1 + 32));
    [v7 ultracube_getOptimizedPreviewWithCompletion:v8];
    objc_destroyWeak(&v9);
  }
}

void sub_4AAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained view];
  [v8 setUserInteractionEnabled:1];

  if (v5)
  {
    [WeakRetained _setPreview:v5 animated:0];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_297FC(v6, v9);
    }
  }
}

void sub_5754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_579C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_57B4(void *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a2;
  v10 = [a5 objectForKeyedSubscript:PHImageErrorKey];
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[5] + 8) + 40))
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1[4] + 16);
      v15 = *(*(a1[5] + 8) + 40);
      v16 = 136315650;
      v17 = "[NTKCompanionUltraCubeImageDataDescriptor _initDataAndOrientationFromAsset]_block_invoke";
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to get image data for asset %@, error %@", &v16, 0x20u);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[7] + 8) + 24) = a4;
  }
}

void sub_6490(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _randomSampleResourceDirectoryPath];
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "New gallery UltraCube face created with directory %@", &v6, 0xCu);
  }

  [v3 setResourceDirectory:v4];
}

BOOL sub_6AB4(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_29874(v3, v4);
  }

  return 1;
}

void sub_7B00(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) collectionView];
  v4 = [v3 indexPathForCell:*(a1 + 40)];
  v5 = [v4 item];
  v6 = *(a1 + 48);

  if (v5 == v6)
  {
    [*(a1 + 40) setPhoto:v9];
    if (v9)
    {
      [v9 size];
      [*(a1 + 40) setCrop:{0.0, 0.0, v7, v8}];
    }
  }
}

void sub_863C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 customUltraCubeControllerDidFinish:v3];
}

void sub_86D4(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained face];
    [v5 setResourceDirectory:v8];

    v6 = v4[1];
    v7 = [v4 navigationItem];
    [v7 setLeftBarButtonItem:v6];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_8948(uint64_t a1)
{
  [*(*(a1 + 32) + 104) addPhotosFromUIImagePicker:?];
  [*(a1 + 32) _updateButtons];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  return 0;
}

id sub_8C5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [NSIndexPath indexPathForItem:a2 inSection:0];
  [v4 addObject:v5];

  v6 = *(*(a1 + 40) + 104);

  return [v6 deletePhotoAtIndex:a2];
}

void sub_92CC(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumerals" fromMachO:&dword_0];
  v2 = qword_58140;
  qword_58140 = v1;

  qword_58148 = [NTKFontLoader fontDescriptorForSectName:@"__NYNumeralsO" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_93B4(id a1)
{
  v1 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumerals" fromMachO:&dword_0];
  v2 = qword_58158;
  qword_58158 = v1;

  qword_58160 = [NTKFontLoader fontDescriptorForSectName:@"__SFNumeralsO" fromMachO:&dword_0];

  _objc_release_x1();
}

void sub_949C(id a1)
{
  v15[0] = UIFontFeatureTypeIdentifierKey;
  v15[1] = UIFontFeatureSelectorIdentifierKey;
  v16[0] = &off_4B6A8;
  v16[1] = &off_4B6C0;
  v1 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = v1;
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v2 = [NSArray arrayWithObjects:&v12 count:1];
  v14 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v4 = [NTKFontLoader fontDescriptorForSectName:@"__Tokyo" fromMachO:&dword_0];
  v5 = qword_58170;
  qword_58170 = v4;

  v6 = [qword_58170 fontDescriptorByAddingAttributes:v3];
  v7 = qword_58170;
  qword_58170 = v6;

  v8 = [NTKFontLoader fontDescriptorForSectName:@"__TokyoO" fromMachO:&dword_0];
  v9 = qword_58178;
  qword_58178 = v8;

  v10 = [qword_58178 fontDescriptorByAddingAttributes:v3];
  v11 = qword_58178;
  qword_58178 = v10;
}

uint64_t sub_D440(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

double sub_F9DC(void *a1)
{
  v1 = [a1 sizeClass] - 3;
  if (v1 > 6)
  {
    return 16.0;
  }

  else
  {
    return dbl_42C90[v1];
  }
}

void sub_109EC(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedIndexPath];

  if (v2)
  {
    if ([*(a1 + 32) layoutDirection])
    {
      v3 = 2;
    }

    else
    {
      v3 = 16;
    }

    v5 = [*(a1 + 32) collectionView];
    v4 = [*(a1 + 32) selectedIndexPath];
    [v5 scrollToItemAtIndexPath:v4 atScrollPosition:v3 animated:0];
  }
}

void sub_11024(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = [v3 infoForItemAtIndexPath:*(a1 + 40)];

    [v4 currentLevel];
    [*(a1 + 48) setValue:?];
    [*(a1 + 48) setIsUserModifying:{objc_msgSend(v4, "enabled")}];
  }
}

void sub_112C4(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:*(a1 + 48) animated:0];
}

void sub_11660(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v3 setFill];
  v5 = [v4 CGContext];

  v6 = a1[5];
  v7 = a1[6];
  v8 = 0;
  v9 = 0;

  CGContextFillEllipseInRect(v5, *&v8);
}

void sub_1401C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t _NTKUltraCubeFiller::_NTKUltraCubeFiller(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 24) = a4 + 22;
  *(a1 + 28) = a5 + 22;
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(&v65, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v6 = std::random_device::operator()(&v65);
  *(a1 + 32) = v6;
  v7 = 1;
  for (i = 9; i != 632; ++i)
  {
    v9 = 1812433253 * (v6 ^ (v6 >> 30));
    v6 = v9 + v7;
    *(a1 + 4 * i) = i + v9 - 8;
    ++v7;
  }

  *(a1 + 2528) = 0;
  std::random_device::~random_device(&v65);
  v10 = 0;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0u;
  __asm { FMOV            V0.2D, #21.0 }

  v64 = _Q0;
  *(a1 + 2728) = 0;
  do
  {
    v16 = (a1 + 2632 + 24 * v10);
    if ((v16[2] - *v16) <= 0x87)
    {
      operator new();
    }

    v17 = 0;
    v61 = v10 + 1;
    v62 = v10;
    v63 = (v10 + 1);
    v18 = v16[1];
    do
    {
      v20 = __sincos_stret(v17 * 6.28318531 / 17.0);
      v19.f64[0] = v20.__cosval;
      v19.f64[1] = v20.__sinval;
      v21 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(vmulq_f64(v19, v64), v63)));
      v22 = v16[2];
      if (v18 < v22)
      {
        *(v18 + 1) = v21.i16[2];
        *v18 = v21.i16[0];
        v18 += 4;
      }

      else
      {
        v23 = *v16;
        v24 = v18 - *v16;
        v25 = v24 >> 2;
        v26 = (v24 >> 2) + 1;
        if (v26 >> 62)
        {
          sub_166A8();
        }

        v27 = v22 - v23;
        if (v27 >> 1 > v26)
        {
          v26 = v27 >> 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v28 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 62))
          {
            operator new();
          }

          sub_165D0();
        }

        v29 = (4 * v25);
        v29[1] = v21.i16[2];
        *v29 = v21.i16[0];
        v18 = (4 * v25 + 4);
        memcpy(0, v23, v24);
        *v16 = 0;
        v16[1] = v18;
        v16[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      v16[1] = v18;
      ++v17;
    }

    while (v17 != 17);
    for (j = 0; j != 17; ++j)
    {
      v32 = __sincos_stret(j * 6.28318531 / 17.0);
      v31.f64[0] = v32.__cosval;
      v31.f64[1] = v32.__sinval;
      v33 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(vmulq_f64(v31, v64), (2 * v62 + 5))));
      v34 = v16[2];
      if (v18 < v34)
      {
        *(v18 + 1) = v33.i16[2];
        *v18 = v33.i16[0];
        v18 += 4;
      }

      else
      {
        v35 = *v16;
        v36 = v18 - *v16;
        v37 = v36 >> 2;
        v38 = (v36 >> 2) + 1;
        if (v38 >> 62)
        {
          sub_166A8();
        }

        v39 = v34 - v35;
        if (v39 >> 1 > v38)
        {
          v38 = v39 >> 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          if (!(v40 >> 62))
          {
            operator new();
          }

          sub_165D0();
        }

        v41 = (4 * v37);
        v41[1] = v33.i16[2];
        *v41 = v33.i16[0];
        v18 = (4 * v37 + 4);
        memcpy(0, v35, v36);
        *v16 = 0;
        v16[1] = v18;
        v16[2] = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      v16[1] = v18;
    }

    v10 = v61;
  }

  while (v61 != 3);
  if (*(a1 + 2720) - *(a1 + 2704) <= 0x1E3uLL)
  {
    operator new();
  }

  v42 = 0;
  v43 = *(a1 + 2712);
  do
  {
    v44 = fabsf((v42 - 5));
    v45 = (v44 * 0.17273) * (v44 * 0.17273);
    for (k = -5; k != 6; ++k)
    {
      v47 = fabsf(k);
      v48 = sqrtf(v45 + ((v47 * 0.17273) * (v47 * 0.17273)));
      if (v48 <= 1.0)
      {
        v49 = 1.0 - v48;
      }

      else
      {
        v49 = 0.0;
      }

      v50 = *(a1 + 2720);
      if (v43 < v50)
      {
        *v43++ = v49;
      }

      else
      {
        v51 = *(a1 + 2704);
        v52 = v43 - v51;
        v53 = (v43 - v51) >> 2;
        v54 = v53 + 1;
        if ((v53 + 1) >> 62)
        {
          sub_166A8();
        }

        v55 = v50 - v51;
        if (v55 >> 1 > v54)
        {
          v54 = v55 >> 1;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v56 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          if (!(v56 >> 62))
          {
            operator new();
          }

          sub_165D0();
        }

        v57 = (v43 - v51) >> 2;
        v58 = (4 * v53);
        v59 = (4 * v53 - 4 * v57);
        *v58 = v49;
        v43 = v58 + 1;
        memcpy(v59, v51, v52);
        *(a1 + 2704) = v59;
        *(a1 + 2712) = v43;
        *(a1 + 2720) = 0;
        if (v51)
        {
          operator delete(v51);
        }
      }

      *(a1 + 2712) = v43;
    }

    ++v42;
  }

  while (v42 != 11);
  return a1;
}

void sub_14640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, std::random_device a21, std::random_device a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v28[338];
  if (v30)
  {
    v28[339] = v30;
    operator delete(v30);
    v31 = v28[335];
    if (!v31)
    {
LABEL_3:
      v32 = v28[332];
      if (!v32)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v31 = v28[335];
    if (!v31)
    {
      goto LABEL_3;
    }
  }

  v28[336] = v31;
  operator delete(v31);
  v32 = v28[332];
  if (!v32)
  {
LABEL_4:
    v33 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v28[333] = v32;
  operator delete(v32);
  v33 = *a10;
  if (!*a10)
  {
LABEL_5:
    v34 = v28[326];
    if (!v34)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v28[330] = v33;
  operator delete(v33);
  v34 = v28[326];
  if (!v34)
  {
LABEL_6:
    v35 = v28[323];
    if (!v35)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v28[327] = v34;
  operator delete(v34);
  v35 = v28[323];
  if (!v35)
  {
LABEL_7:
    v36 = v28[320];
    if (!v36)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v28[324] = v35;
  operator delete(v35);
  v36 = v28[320];
  if (!v36)
  {
LABEL_8:
    v37 = *a9;
    if (!*a9)
    {
LABEL_18:
      _Unwind_Resume(exception_object);
    }

LABEL_17:
    v28[318] = v37;
    operator delete(v37);
    goto LABEL_18;
  }

LABEL_16:
  v28[321] = v36;
  operator delete(v36);
  v37 = *a9;
  if (!*a9)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

BOOL _NTKUltraCubeFiller::isLocationOpen(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = (*(a1 + 2560) + v2 * (a2 >> 16) + a2);
  if (*v3)
  {
    return 0;
  }

  v5 = v3[-v2] == 1;
  if (v3[-v2] == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v3[~v2] == 1)
  {
    v5 = v6;
  }

  if (v3[1 - v2] == 1)
  {
    ++v5;
  }

  v7 = &v3[v2];
  if (*v7 == 1)
  {
    ++v5;
  }

  if (*(v7 - 1) == 1)
  {
    ++v5;
  }

  if (v7[1] == 1)
  {
    v8 = v5 + 1;
  }

  else
  {
    v8 = v5;
  }

  if (*(v3 - 1) == 1)
  {
    ++v8;
  }

  if (v3[1] == 1)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  return v9 > 2;
}

void _NTKUltraCubeFiller::setup(_NTKUltraCubeFiller *this)
{
  v2 = *(this + 4);
  v57 = *(this + 5);
  v3 = *(this + 6);
  v4 = *(this + 7) * v3;
  v5 = *(this + 321);
  v6 = *(this + 320);
  if (v4 <= &v5[-v6])
  {
    if (v4 < &v5[-v6])
    {
      *(this + 321) = v6 + v4;
    }

    v8 = *(this + 323);
    v9 = (*(this + 324) - v8) >> 4;
    _CF = v4 >= v9;
    v11 = v4 - v9;
    if (v4 <= v9)
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_166C0(this + 2584, v11);
    goto LABEL_12;
  }

  v7 = *(this + 322);
  if (v7 - v5 < v4 - &v5[-v6])
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_166A8();
  }

  v12 = v4 + v6;
  bzero(v5, v4 - &v5[-v6]);
  *(this + 321) = v12;
  v8 = *(this + 323);
  v13 = (*(this + 324) - v8) >> 4;
  _CF = v4 >= v13;
  v11 = v4 - v13;
  if (v4 > v13)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!_CF)
  {
    *(this + 324) = v8 + 16 * v4;
  }

LABEL_12:
  v14 = *(this + 326);
  v15 = (*(this + 327) - v14) >> 4;
  if (v4 <= v15)
  {
    if (v4 < v15)
    {
      *(this + 327) = &v14[16 * v4];
    }
  }

  else
  {
    sub_166C0(this + 2608, v4 - v15);
    v14 = *(this + 326);
  }

  v16 = *(this + 323);
  v18 = *this;
  v17 = *(this + 1);
  v19 = *(this + 320);
  bzero(v19, v4);
  bzero(v14, 16 * v4);
  bzero(v16, 16 * v4);
  if (v57 >= 1 && v2 >= 1)
  {
    v20 = 0;
    v21 = 11 * v3 + 11;
    v22 = &v19[v21];
    v23 = 16 * v21;
    v24 = &v16[16 * v21];
    v25 = &v14[v23];
    __asm
    {
      FMOV            V0.4S, #-1.0
      FMOV            V1.4S, #3.0
    }

    v31 = v18;
    do
    {
      v32 = 0;
      v33 = -352;
      do
      {
        if (*(v17 + v32) <= 5u)
        {
          v22[v32] = 1;
          v34 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*(v18 + 8 * v32)), _Q0), _Q1);
          v35 = 16 * v32;
          v34.i32[3] = 1.0;
          *&v24[v35] = v34;
          *&v25[v35] = v34;
        }

        v31 += 8;
        ++v32;
        v33 -= 16;
      }

      while (v2 != v32);
      v17 += v2;
      v22 += v32 + 22;
      v24 -= v33;
      v25 -= v33;
      ++v20;
      v18 = v31;
    }

    while (v20 != v57);
  }

  if (v4 > (*(this + 319) - *(this + 317)) >> 2)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

LABEL_69:
    sub_166A8();
  }

  if (v57 >= 1 && v2 >= 1)
  {
    for (i = 0; i != v57; ++i)
    {
      v37 = 0;
      v38 = i + 11;
      do
      {
        HIWORD(v58) = i + 11;
        LOWORD(v58) = v37 + 11;
        v40 = *(this + 6);
        v41 = (*(this + 320) + v40 * (v58 >> 16) + (v37 + 11));
        if (!*v41)
        {
          v42 = v41[-v40] == 1;
          if (v41[-v40] == 1)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          if (v41[~v40] == 1)
          {
            v42 = v43;
          }

          if (v41[1 - v40] == 1)
          {
            ++v42;
          }

          v44 = &v41[v40];
          if (*v44 == 1)
          {
            ++v42;
          }

          if (*(v44 - 1) == 1)
          {
            ++v42;
          }

          if (v44[1] == 1)
          {
            v45 = v42 + 1;
          }

          else
          {
            v45 = v42;
          }

          if (*(v41 - 1) == 1)
          {
            ++v45;
          }

          v46 = v41[1] == 1 ? v45 + 1 : v45;
          if (v46 >= 3)
          {
            v47 = v37 + 11;
            v48 = *(this + 318);
            v49 = *(this + 319);
            if (v48 < v49)
            {
              *(v48 + 1) = v38;
              *v48 = v47;
              v39 = (v48 + 4);
            }

            else
            {
              v50 = *(this + 317);
              v51 = v48 - v50;
              v52 = (v48 - v50) >> 2;
              v53 = v52 + 1;
              if ((v52 + 1) >> 62)
              {
                goto LABEL_69;
              }

              v54 = v49 - v50;
              if (v54 >> 1 > v53)
              {
                v53 = v54 >> 1;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v55 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v53;
              }

              if (v55)
              {
                if (!(v55 >> 62))
                {
                  operator new();
                }

                sub_165D0();
              }

              v56 = (4 * v52);
              v56[1] = v38;
              *v56 = v47;
              v39 = 4 * v52 + 4;
              memcpy(0, v50, v51);
              *(this + 317) = 0;
              *(this + 318) = v39;
              *(this + 319) = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            *(this + 318) = v39;
          }
        }

        ++v37;
      }

      while (v2 != v37);
    }
  }
}

float _NTKUltraCubeFiller::consider(uint64_t a1, __int32 a2, __int32 a3, uint32x4_t a4, uint16x4_t a5)
{
  *a4.i8 = vdup_n_s32(0xFFFBu);
  a5.i32[0] = a3;
  v5 = vaddw_u16(a4, a5);
  v6 = v5.i16[0];
  result = -1.0;
  if (v5.i16[0] >= 22)
  {
    v8 = v5.i16[2];
    if (v5.i16[2] >= 22)
    {
      v9 = *(a1 + 24);
      v5.i64[0] = 0x600000006;
      v10 = vaddw_u16(v5, a5);
      if (v9 - 22 > v10.i16[0] && *(a1 + 28) - 22 > v10.i16[2])
      {
        v11 = 0;
        v12 = 0;
        v10.i32[0] = a2;
        *v10.i8 = vadd_s32(*&vmovl_u16(*v10.i8), vdup_n_s32(0xFFFBu));
        v13 = *(a1 + 2584);
        v14 = *(a1 + 2560);
        v15 = v9 * v8;
        v16 = v9 * v10.i16[2];
        v17 = 16 * v6 + 16 * v15;
        v18 = v6 + v15;
        v19 = *(a1 + 2704);
        v20 = v9 - 11;
        v21 = (v17 + v13);
        v22 = (((v10.u32[0] << 48) >> 44) + 16 * v16 + v13);
        v23 = v20;
        v24 = v21 + 5;
        v25 = 16 * v20 + 176;
        v26 = (v18 + v14 + 5);
        v27 = v23 + 11;
        v28 = v22 + 5;
        v29 = (v10.i16[0] + v16 + v14 + 5);
        v10.i32[0] = 0;
        do
        {
          v30 = (v19 + v11);
          if (*(v19 + v11) > 0.0)
          {
            if (!*(v26 - 5))
            {
              return result;
            }

            if (*(v29 - 5))
            {
              ++v12;
              v31 = vsubq_f32(v24[-5], v28[-5]);
              v32 = vmulq_f32(v31, v31);
              *v10.i32 = *v10.i32 + (v32.f32[2] + vaddv_f32(*v32.f32));
            }
          }

          if (v30[1] > 0.0)
          {
            if (!*(v26 - 4))
            {
              return result;
            }

            if (*(v29 - 4))
            {
              ++v12;
              v33 = vsubq_f32(v24[-4], v28[-4]);
              v34 = vmulq_f32(v33, v33);
              *v10.i32 = *v10.i32 + (v34.f32[2] + vaddv_f32(*v34.f32));
            }
          }

          if (v30[2] > 0.0)
          {
            if (!*(v26 - 3))
            {
              return result;
            }

            if (*(v29 - 3))
            {
              ++v12;
              v35 = vsubq_f32(v24[-3], v28[-3]);
              v36 = vmulq_f32(v35, v35);
              *v10.i32 = *v10.i32 + (v36.f32[2] + vaddv_f32(*v36.f32));
            }
          }

          if (v30[3] > 0.0)
          {
            if (!*(v26 - 2))
            {
              return result;
            }

            if (*(v29 - 2))
            {
              ++v12;
              v37 = vsubq_f32(v24[-2], v28[-2]);
              v38 = vmulq_f32(v37, v37);
              *v10.i32 = *v10.i32 + (v38.f32[2] + vaddv_f32(*v38.f32));
            }
          }

          if (v30[4] > 0.0)
          {
            if (!*(v26 - 1))
            {
              return result;
            }

            if (*(v29 - 1))
            {
              ++v12;
              v39 = vsubq_f32(v24[-1], v28[-1]);
              v40 = vmulq_f32(v39, v39);
              *v10.i32 = *v10.i32 + (v40.f32[2] + vaddv_f32(*v40.f32));
            }
          }

          if (v30[5] > 0.0)
          {
            if (!*v26)
            {
              return result;
            }

            if (*v29)
            {
              ++v12;
              v41 = vsubq_f32(*v24, *v28);
              v42 = vmulq_f32(v41, v41);
              *v10.i32 = *v10.i32 + (v42.f32[2] + vaddv_f32(*v42.f32));
            }
          }

          if (v30[6] > 0.0)
          {
            if (!v26[1])
            {
              return result;
            }

            if (v29[1])
            {
              ++v12;
              v43 = vsubq_f32(v24[1], v28[1]);
              v44 = vmulq_f32(v43, v43);
              *v10.i32 = *v10.i32 + (v44.f32[2] + vaddv_f32(*v44.f32));
            }
          }

          if (v30[7] > 0.0)
          {
            if (!v26[2])
            {
              return result;
            }

            if (v29[2])
            {
              ++v12;
              v45 = vsubq_f32(v24[2], v28[2]);
              v46 = vmulq_f32(v45, v45);
              *v10.i32 = *v10.i32 + (v46.f32[2] + vaddv_f32(*v46.f32));
            }
          }

          if (v30[8] > 0.0)
          {
            if (!v26[3])
            {
              return result;
            }

            if (v29[3])
            {
              ++v12;
              v47 = vsubq_f32(v24[3], v28[3]);
              v48 = vmulq_f32(v47, v47);
              *v10.i32 = *v10.i32 + (v48.f32[2] + vaddv_f32(*v48.f32));
            }
          }

          if (v30[9] > 0.0)
          {
            if (!v26[4])
            {
              return result;
            }

            if (v29[4])
            {
              ++v12;
              v49 = vsubq_f32(v24[4], v28[4]);
              v50 = vmulq_f32(v49, v49);
              *v10.i32 = *v10.i32 + (v50.f32[2] + vaddv_f32(*v50.f32));
            }
          }

          if (v30[10] > 0.0)
          {
            if (!v26[5])
            {
              return result;
            }

            if (v29[5])
            {
              ++v12;
              v51 = vsubq_f32(v24[5], v28[5]);
              v52 = vmulq_f32(v51, v51);
              *v10.i32 = *v10.i32 + (v52.f32[2] + vaddv_f32(*v52.f32));
            }
          }

          v11 += 44;
          v24 = (v24 + v25);
          v26 += v27;
          v28 = (v28 + v25);
          v29 += v27;
        }

        while (v11 != 484);
        return *v10.i32 / v12;
      }
    }
  }

  return result;
}

BOOL _NTKUltraCubeFiller::considerR1(uint64_t a1, int a2, int a3)
{
  if (a3 < 11)
  {
    return 0;
  }

  result = 0;
  v5 = a3 >> 16;
  if (a3 >> 16 >= 11)
  {
    v6 = *(a1 + 24);
    if (a3 < v6 - 11 && v5 < *(a1 + 28) - 11)
    {
      v8 = *(a1 + 2560);
      if (*(v8 + v6 * v5 + a3))
      {
        return *(v8 + v6 * (a2 >> 16) + a2) == 0;
      }

      return 0;
    }
  }

  return result;
}

void _NTKUltraCubeFiller::patch(uint64_t a1, __int32 a2, __int32 a3, double a4, uint16x4_t a5, uint16x4_t a6, uint32x4_t a7)
{
  v8 = 0;
  v9 = 0;
  a5.i32[0] = a2;
  v10 = vmovl_u16(a5).u64[0];
  a6.i32[0] = a3;
  v11 = *(a1 + 28);
  v12 = *(a1 + 24);
  *a7.i8 = vdup_n_s32(0xFFFBu);
  v13 = vaddw_u16(a7, a6).u64[0];
  v14 = vaddw_u16(a7, a5).u64[0];
  v15 = *(a1 + 2584);
  v16 = *(a1 + 2560);
  v17 = v13.i16[0];
  v18 = vmul_s32(vdup_n_s32(v12), vshr_n_s32(vshl_n_s32(vzip2_s32(v13, v14), 0x10uLL), 0x10uLL));
  v19 = *(a1 + 2704);
  v20 = ((v14.u32[0] << 48) >> 44) + 16 * v18.i32[1] + 160;
  v21 = *(a1 + 2608) + v20;
  v22 = v15 + v20;
  v23 = 16 * v17 + 16 * v18.i32[0] + v15 + 80;
  do
  {
    v24 = (v19 + v9);
    v25 = *(v19 + v9);
    if (v25 > 0.0)
    {
      v36 = vmlaq_n_f32(*(v21 + v8 - 160), *(v23 + v8 - 80), v25);
      v37 = vmulq_n_f32(v36, 1.0 / v36.f32[3]);
      v37.i32[3] = 1.0;
      *(v21 + v8 - 160) = v36;
      *(v22 + v8 - 160) = v37;
      v26 = v24[1];
      if (v26 <= 0.0)
      {
LABEL_5:
        v27 = v24[2];
        if (v27 <= 0.0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v26 = v24[1];
      if (v26 <= 0.0)
      {
        goto LABEL_5;
      }
    }

    v38 = vmlaq_n_f32(*(v21 + v8 - 144), *(v23 + v8 - 64), v26);
    v39 = vmulq_n_f32(v38, 1.0 / v38.f32[3]);
    v39.i32[3] = 1.0;
    *(v21 + v8 - 144) = v38;
    *(v22 + v8 - 144) = v39;
    v27 = v24[2];
    if (v27 <= 0.0)
    {
LABEL_6:
      v28 = v24[3];
      if (v28 <= 0.0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    v40 = vmlaq_n_f32(*(v21 + v8 - 128), *(v23 + v8 - 48), v27);
    v41 = vmulq_n_f32(v40, 1.0 / v40.f32[3]);
    v41.i32[3] = 1.0;
    *(v21 + v8 - 128) = v40;
    *(v22 + v8 - 128) = v41;
    v28 = v24[3];
    if (v28 <= 0.0)
    {
LABEL_7:
      v29 = v24[4];
      if (v29 <= 0.0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v42 = vmlaq_n_f32(*(v21 + v8 - 112), *(v23 + v8 - 32), v28);
    v43 = vmulq_n_f32(v42, 1.0 / v42.f32[3]);
    v43.i32[3] = 1.0;
    *(v21 + v8 - 112) = v42;
    *(v22 + v8 - 112) = v43;
    v29 = v24[4];
    if (v29 <= 0.0)
    {
LABEL_8:
      v30 = v24[5];
      if (v30 <= 0.0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v44 = vmlaq_n_f32(*(v21 + v8 - 96), *(v23 + v8 - 16), v29);
    v45 = vmulq_n_f32(v44, 1.0 / v44.f32[3]);
    v45.i32[3] = 1.0;
    *(v21 + v8 - 96) = v44;
    *(v22 + v8 - 96) = v45;
    v30 = v24[5];
    if (v30 <= 0.0)
    {
LABEL_9:
      v31 = v24[6];
      if (v31 <= 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    v46 = vmlaq_n_f32(*(v21 + v8 - 80), *(v23 + v8), v30);
    v47 = vmulq_n_f32(v46, 1.0 / v46.f32[3]);
    v47.i32[3] = 1.0;
    *(v21 + v8 - 80) = v46;
    *(v22 + v8 - 80) = v47;
    v31 = v24[6];
    if (v31 <= 0.0)
    {
LABEL_10:
      v32 = v24[7];
      if (v32 <= 0.0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

LABEL_21:
    v48 = vmlaq_n_f32(*(v21 + v8 - 64), *(v23 + v8 + 16), v31);
    v49 = vmulq_n_f32(v48, 1.0 / v48.f32[3]);
    v49.i32[3] = 1.0;
    *(v21 + v8 - 64) = v48;
    *(v22 + v8 - 64) = v49;
    v32 = v24[7];
    if (v32 <= 0.0)
    {
LABEL_11:
      v33 = v24[8];
      if (v33 <= 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }

LABEL_22:
    v50 = vmlaq_n_f32(*(v21 + v8 - 48), *(v23 + v8 + 32), v32);
    v51 = vmulq_n_f32(v50, 1.0 / v50.f32[3]);
    v51.i32[3] = 1.0;
    *(v21 + v8 - 48) = v50;
    *(v22 + v8 - 48) = v51;
    v33 = v24[8];
    if (v33 <= 0.0)
    {
LABEL_12:
      v34 = v24[9];
      if (v34 > 0.0)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

LABEL_23:
    v52 = vmlaq_n_f32(*(v21 + v8 - 32), *(v23 + v8 + 48), v33);
    v53 = vmulq_n_f32(v52, 1.0 / v52.f32[3]);
    v53.i32[3] = 1.0;
    *(v21 + v8 - 32) = v52;
    *(v22 + v8 - 32) = v53;
    v34 = v24[9];
    if (v34 > 0.0)
    {
LABEL_24:
      v54 = vmlaq_n_f32(*(v21 + v8 - 16), *(v23 + v8 + 64), v34);
      v55 = vmulq_n_f32(v54, 1.0 / v54.f32[3]);
      v55.i32[3] = 1.0;
      *(v21 + v8 - 16) = v54;
      *(v22 + v8 - 16) = v55;
      v35 = v24[10];
      if (v35 <= 0.0)
      {
        goto LABEL_2;
      }

      goto LABEL_25;
    }

LABEL_13:
    v35 = v24[10];
    if (v35 <= 0.0)
    {
      goto LABEL_2;
    }

LABEL_25:
    v56 = vmlaq_n_f32(*(v21 + v8), *(v23 + v8 + 80), v35);
    v57 = vmulq_n_f32(v56, 1.0 / v56.f32[3]);
    v57.i32[3] = 1.0;
    *(v21 + v8) = v56;
    *(v22 + v8) = v57;
LABEL_2:
    v9 += 44;
    v8 += 16 * (v12 - 11) + 176;
  }

  while (v9 != 484);
  v58 = v16 + v12 * (v10.i16[2] - 1) + a2;
  *(v58 + 1) = 1;
  *(v58 - 1) = 257;
  v59 = v58 + v12;
  v60 = v59 + v12;
  *(v59 + 1) = 1;
  *(v59 - 1) = 257;
  *(v60 + 1) = 1;
  *(v60 - 1) = 257;
  v61 = vadd_s32(v10, vdup_n_s32(0xFFFEu));
  v62 = vadd_s32(v10, 0x200000002);
  v63 = vshr_n_s32(vshl_n_s32(0x20000000BLL, 0x10uLL), 0x10uLL);
  v64.i32[1] = v61.i32[1];
  v64.i32[0] = 11;
  v65 = vbsl_s8(vdup_lane_s32(vcgt_s32(v63, vshr_n_s32(vshl_n_s32(v61, 0x10uLL), 0x10uLL)), 0), v64, v61);
  v66 = vdup_lane_s32(vcgt_s32(v63, vshr_n_s32(vshl_n_s32(vdup_lane_s32(v65, 1), 0x10uLL), 0x10uLL)), 0);
  v63.i32[0] = v12 - 11;
  v64.i32[0] = v62.i16[0];
  v67 = vmovl_s16(vcgt_s32(v63, v64)).u64[0];
  v64.i32[1] = v62.i32[1];
  v64.i32[0] = v12 - 12;
  v68 = vbsl_s8(v67, v62, v64);
  v69 = v65.u32[0] | 0xB00000000;
  v70 = vbsl_s8(v66, v69, v65);
  v66.i32[0] = v68.i16[2];
  LODWORD(v69) = v11 - 11;
  v71 = vmovl_s16(vcgt_s32(v69, v66)).u64[0];
  LODWORD(v69) = v68.i32[0];
  HIDWORD(v69) = v11 - 12;
  v72 = vbsl_s8(v71, v68, v69);
  v73 = v70.i16[2];
  v95 = v72.i16[2];
  v96 = v70.i16[0];
  if (v70.i16[2] <= v72.i16[2] && v70.i16[0] <= v72.i16[0])
  {
    v75 = v72.i16[0] + 1;
    do
    {
      v77 = v96;
      do
      {
        HIWORD(v97) = v73;
        LOWORD(v97) = v77;
        v79 = *(a1 + 24);
        v80 = (*(a1 + 2560) + v79 * (v97 >> 16) + v77);
        if (!*v80)
        {
          v81 = v80[-v79] == 1;
          if (v80[-v79] == 1)
          {
            v82 = 2;
          }

          else
          {
            v82 = 1;
          }

          if (v80[~v79] == 1)
          {
            v81 = v82;
          }

          if (v80[1 - v79] == 1)
          {
            ++v81;
          }

          v83 = &v80[v79];
          if (*v83 == 1)
          {
            ++v81;
          }

          if (*(v83 - 1) == 1)
          {
            ++v81;
          }

          if (v83[1] == 1)
          {
            v84 = v81 + 1;
          }

          else
          {
            v84 = v81;
          }

          if (*(v80 - 1) == 1)
          {
            ++v84;
          }

          if (v80[1] == 1)
          {
            v85 = v84 + 1;
          }

          else
          {
            v85 = v84;
          }

          if (v85 >= 3)
          {
            v86 = *(a1 + 2544);
            v87 = *(a1 + 2552);
            if (v86 < v87)
            {
              *(v86 + 1) = v73;
              *v86 = v77;
              v78 = (v86 + 4);
            }

            else
            {
              v88 = *(a1 + 2536);
              v89 = v86 - v88;
              v90 = (v86 - v88) >> 2;
              v91 = v90 + 1;
              if ((v90 + 1) >> 62)
              {
                sub_166A8();
              }

              v92 = v87 - v88;
              if (v92 >> 1 > v91)
              {
                v91 = v92 >> 1;
              }

              if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v93 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v93 = v91;
              }

              if (v93)
              {
                if (!(v93 >> 62))
                {
                  operator new();
                }

                sub_165D0();
              }

              v94 = (4 * v90);
              v94[1] = v73;
              *v94 = v77;
              v78 = 4 * v90 + 4;
              memcpy(0, v88, v89);
              *(a1 + 2536) = 0;
              *(a1 + 2544) = v78;
              *(a1 + 2552) = 0;
              if (v88)
              {
                operator delete(v88);
              }
            }

            *(a1 + 2544) = v78;
          }
        }

        ++v77;
      }

      while (v75 != v77);
    }

    while (v73++ != v95);
  }

  ++*(a1 + 2728);
}

void _NTKUltraCubeFiller::patchR1(uint64_t a1, __int32 a2, int a3, uint16x4_t a4, double a5, double a6, int32x2_t a7)
{
  v8 = 16 * a2;
  a4.i32[0] = a2;
  v10 = *(a1 + 24);
  v9 = *(a1 + 28);
  v11 = *(a1 + 2584);
  v12 = *(a1 + 2608);
  v13 = *(a1 + 2560);
  v14 = v10 * SHIWORD(a2);
  v15 = 16 * v14;
  v16 = v12 + v15;
  v17 = vaddq_f32(*(v11 + 16 * v10 * (a3 >> 16) + 16 * a3), *(v16 + v8));
  v18 = vmulq_n_f32(v17, 1.0 / v17.f32[3]);
  v18.i32[3] = 1.0;
  *(v16 + v8) = v17;
  *(v11 + v15 + v8) = v18;
  *(v13 + v14 + a2) = 1;
  v17.i64[0] = 0xFFFF0000FFFFLL;
  v19 = vaddw_u16(v17, a4);
  a7.i32[0] = 11;
  v20 = vshr_n_s32(vshl_n_s32(a7, 0x10uLL), 0x10uLL);
  v21 = v19;
  v21.i32[0] = 11;
  *v19.i8 = vbsl_s8(vdup_lane_s32(vcgt_s32(v20, vshr_n_s32(vshl_n_s32(*v19.i8, 0x10uLL), 0x10uLL)), 0), *v21.i8, *v19.i8);
  v21.i64[0] = 0x100000001;
  *v18.f32 = vdup_lane_s32(vcgt_s32(v20, vshr_n_s32(vshl_n_s32(vdup_lane_s32(*v19.i8, 1), 0x10uLL), 0x10uLL)), 0);
  v22 = vaddw_u16(v21, a4).u64[0];
  v20.i32[0] = v22.i16[0];
  v21.i32[0] = v10 - 11;
  v23 = vmovl_s16(vcgt_s32(*v21.i8, v20)).u64[0];
  v21.i32[1] = v22.i32[1];
  v21.i32[0] = v10 - 12;
  v24 = vbsl_s8(v23, v22, *v21.i8);
  v25 = v19.u32[0] | 0xB00000000;
  v26 = vbsl_s8(*v18.f32, v25, *v19.i8);
  v18.i32[0] = v24.i16[2];
  LODWORD(v25) = v9 - 11;
  v18.i64[0] = vmovl_s16(vcgt_s32(v25, *v18.f32)).u64[0];
  LODWORD(v25) = v24.i32[0];
  HIDWORD(v25) = v9 - 12;
  v27 = vbsl_s8(*v18.f32, v24, v25);
  v28 = v26.i16[2];
  v50 = v27.i16[2];
  v51 = v26.i16[0];
  if (v26.i16[2] <= v27.i16[2] && v26.i16[0] <= v27.i16[0])
  {
    v30 = v27.i16[0] + 1;
    do
    {
      v32 = v51;
      do
      {
        HIWORD(v52) = v28;
        LOWORD(v52) = v32;
        v34 = *(a1 + 24);
        v35 = (*(a1 + 2560) + v34 * (v52 >> 16) + v32);
        if (!*v35)
        {
          v36 = v35[-v34] == 1;
          if (v35[-v34] == 1)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }

          if (v35[~v34] == 1)
          {
            v36 = v37;
          }

          if (v35[1 - v34] == 1)
          {
            ++v36;
          }

          v38 = &v35[v34];
          if (*v38 == 1)
          {
            ++v36;
          }

          if (*(v38 - 1) == 1)
          {
            ++v36;
          }

          if (v38[1] == 1)
          {
            v39 = v36 + 1;
          }

          else
          {
            v39 = v36;
          }

          if (*(v35 - 1) == 1)
          {
            ++v39;
          }

          if (v35[1] == 1)
          {
            v40 = v39 + 1;
          }

          else
          {
            v40 = v39;
          }

          if (v40 >= 3)
          {
            v41 = *(a1 + 2544);
            v42 = *(a1 + 2552);
            if (v41 < v42)
            {
              *(v41 + 1) = v28;
              *v41 = v32;
              v33 = (v41 + 4);
            }

            else
            {
              v43 = *(a1 + 2536);
              v44 = v41 - v43;
              v45 = (v41 - v43) >> 2;
              v46 = v45 + 1;
              if ((v45 + 1) >> 62)
              {
                sub_166A8();
              }

              v47 = v42 - v43;
              if (v47 >> 1 > v46)
              {
                v46 = v47 >> 1;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v48 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              if (v48)
              {
                if (!(v48 >> 62))
                {
                  operator new();
                }

                sub_165D0();
              }

              v49 = (4 * v45);
              v49[1] = v28;
              *v49 = v32;
              v33 = 4 * v45 + 4;
              memcpy(0, v43, v44);
              *(a1 + 2536) = 0;
              *(a1 + 2544) = v33;
              *(a1 + 2552) = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            *(a1 + 2544) = v33;
          }
        }

        ++v32;
      }

      while (v30 != v32);
    }

    while (v28++ != v50);
  }

  ++*(a1 + 2728);
}

uint64_t _NTKUltraCubeFiller::tryResolve(uint64_t a1, __int32 a2, uint32x4_t a3, double a4, uint16x4_t a5, double a6, __n128 a7)
{
  a3.i32[0] = a2;
  v10 = vmovl_u16(*a3.i8);
  v11 = a1 + 32;
  v12 = *(a1 + 2528);
  v13 = (v12 + 1) % 0x270uLL;
  v14 = *(a1 + 32 + 4 * v13);
  v15 = v14 & 0x7FFFFFFE | *(a1 + 32 + 4 * v12) & 0x80000000;
  if (v14)
  {
    v16 = -1727483681;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 ^ *(a1 + 32 + 4 * ((v12 + 397) % 0x270uLL)) ^ (v15 >> 1);
  v18 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
  v19 = a1 + 24 * (((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) % 3);
  *(v11 + 4 * v12) = v17;
  *(a1 + 2528) = v13;
  v20 = *(v19 + 2632);
  v21 = *(v19 + 2640);
  a7.n128_u64[0] = 0xFFFF0000FFFFLL;
  v7.i32[0] = 1900671690;
  if (v20 != v21)
  {
    v40 = v10;
    do
    {
      a3.i16[0] = *v20;
      a3.i16[2] = v20[1];
      *a3.i8 = vadd_s32(*a3.i8, *v10.i8);
      v41 = *a3.i8;
      v42 = a7;
      HIWORD(v46) = a3.i16[2];
      LOWORD(v46) = a3.i16[0];
      *a3.i32 = _NTKUltraCubeFiller::consider(a1, a2, v46, a3, *&a4);
      a5 = v41;
      a7.n128_u64[1] = v42.n128_u64[1];
      v10 = v40;
      v22 = *a3.i32 >= 0.0;
      v23 = *a3.i32 < v7.f32[0];
      v24 = !v22 || !v23;
      if (v22 && v23)
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      a4 = COERCE_DOUBLE(vdup_n_s32(v25));
      a7.n128_u64[0] = vbsl_s8(*&a4, v41, v42.n128_u64[0]);
      if (!v24)
      {
        v7.f32[0] = *a3.i32;
      }

      v20 += 2;
    }

    while (v20 != v21);
  }

  if ((a7.n128_u16[0] & 0x8000) == 0)
  {
    HIWORD(v45) = a7.n128_u16[2];
    LOWORD(v45) = a7.n128_u16[0];
    _NTKUltraCubeFiller::patch(a1, a2, v45, *a3.i64, *&a4, a5, v10);
    return 1;
  }

  for (i = 0; i != 32; i += 4)
  {
    a3.i16[0] = *(&unk_42D38 + i);
    a3.i16[2] = *(&unk_42D38 + i + 2);
    *a3.i8 = vadd_s32(*a3.i8, *v10.i8);
    HIWORD(v44) = a3.i16[2];
    LOWORD(v44) = a3.i16[0];
    if (a3.i16[0] >= 11)
    {
      v27 = *(a1 + 24);
      v28 = v44 >> 16;
      v29 = v44 >> 16 >= 11 && a3.i16[0] < v27 - 11;
      if (v29 && v28 < *(a1 + 28) - 11)
      {
        v31 = *(a1 + 2560);
        if (*(v31 + v28 * v27 + a3.i16[0]))
        {
          if (!*(v31 + v27 * (a2 >> 16) + a2))
          {
            v32 = (v13 + 1) % 0x270;
            v33 = *(v11 + 4 * v32);
            v34 = v33 & 0x7FFFFFFE | *(v11 + 4 * v13) & 0x80000000;
            if (v33)
            {
              v35 = -1727483681;
            }

            else
            {
              v35 = 0;
            }

            v36 = v35 ^ *(v11 + 4 * ((v13 + 397) % 0x270)) ^ (v34 >> 1);
            *(v11 + 4 * v13) = v36;
            *(a1 + 2528) = v32;
            v37 = ((v36 ^ (v36 >> 11)) << 7) & 0x9D2C5680 ^ v36 ^ (v36 >> 11);
            v38 = ((v37 << 15) & 0xEFC60000 ^ v37 ^ (((v37 << 15) & 0xEFC60000 ^ v37) >> 18)) % 0x3E8;
            *&a4 = v38;
            a5 = vmovl_s16(vcgt_f32(v7, *&a4)).u64[0];
            a7.n128_u64[0] = vbsl_s8(a5, *a3.i8, a7.n128_u64[0]);
            if (v7.f32[0] > v38)
            {
              v7.f32[0] = v38;
            }

            v13 = (v13 + 1) % 0x270;
          }
        }
      }
    }
  }

  if ((a7.n128_u16[0] & 0x8000) == 0)
  {
    HIWORD(v43) = a7.n128_u16[2];
    LOWORD(v43) = a7.n128_u16[0];
    _NTKUltraCubeFiller::patchR1(a1, a2, v43, *a3.i8, a4, *&a5, *v10.i8);
    return 1;
  }

  return 0;
}

uint64_t _NTKUltraCubeFiller::resolve(uint64_t this, uint32x4_t a2, double a3, uint16x4_t a4, double a5, __n128 a6)
{
  v6 = *(this + 2544);
  v7 = *(this + 2536);
  if (v6 != v7)
  {
    v8 = this;
    v9 = *(this + 24);
    v10 = this + 32;
    v11 = *(this + 2560);
    do
    {
      v12 = v8[316];
      v13 = (v12 + 1) % 0x270uLL;
      v14 = *(v10 + 4 * v13);
      v15 = v14 & 0x7FFFFFFE | *(v10 + 4 * v12) & 0x80000000;
      if (v14)
      {
        v16 = -1727483681;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 ^ *(v10 + 4 * ((v12 + 397) % 0x270uLL)) ^ (v15 >> 1);
      *(v10 + 4 * v12) = v17;
      v8[316] = v13;
      v18 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
      v19 = &v7[2 * (((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) % ((v6 - v7) >> 2))];
      a2.i16[0] = *v19;
      a2.i16[2] = v19[1];
      v20 = v6 - (v19 + 2);
      if (v6 != v19 + 2)
      {
        v21 = a2;
        this = memmove(v19, v19 + 2, v6 - (v19 + 2));
        a2 = v21;
      }

      v6 = (v19 + v20);
      v8[318] = v19 + v20;
      if (*(v11 + v9 * a2.i16[2] + a2.i16[0]) != 1)
      {
        HIWORD(v22) = a2.i16[2];
        LOWORD(v22) = a2.i16[0];
        this = _NTKUltraCubeFiller::tryResolve(v8, v22, a2, a3, a4, a5, a6);
        v6 = v8[318];
      }

      v7 = v8[317];
    }

    while (v6 != v7);
  }

  return this;
}

CGImageRef _NTKUltraCubeFiller::result(_NTKUltraCubeFiller *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = *(this + 6);
  v5 = [[NSMutableData alloc] initWithLength:8 * v2 * v3];
  v6 = *(this + 323);
  v7 = [v5 mutableBytes];
  if (v3 >= 1 && v2 >= 1)
  {
    v9 = v7;
    v10 = 0;
    v11 = v6 + 176 * v4 + 176;
    do
    {
      v12 = v2;
      do
      {
        CLKUIConvertToXRSRGBfFromRGBf();
        *v9++ = vcvt_f16_f32(v13);
        v11 += 16;
        --v12;
      }

      while (v12);
      v11 += 352;
      ++v10;
    }

    while (v10 != v3);
  }

  v14 = CGDataProviderCreateWithCFData(v5);
  v15 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v16 = CGImageCreate(v2, v3, 0x10uLL, 0x40uLL, 8 * v2, v15, 0x1101u, v14, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v14);
  CGColorSpaceRelease(v15);

  return v16;
}

CGImageRef NTKUltraCubeCreateContentFillForRGBA16f(uint64_t a1, uint64_t a2, int a3, int a4)
{
  _NTKUltraCubeFiller::_NTKUltraCubeFiller(v11, a1, a2, a3, a4);
  _NTKUltraCubeFiller::setup(v11);
  _NTKUltraCubeFiller::resolve(v11, v4, v5, v6, v7, v8);
  v9 = _NTKUltraCubeFiller::result(v11);
  sub_16604(v11);
  return v9;
}

CGImageRef NTKUltraCubeCreateContentFillForCGImage(CGImageRef image, CGImage *a2)
{
  result = 0;
  if (image)
  {
    if (a2)
    {
      Width = CGImageGetWidth(image);
      Height = CGImageGetHeight(image);
      result = 0;
      if (Width - 8193 >= 0xFFFFE036 && Height - 8193 >= 0xFFFFE036)
      {
        if (Width == CGImageGetWidth(a2) && Height == CGImageGetHeight(a2))
        {
          v7 = malloc_type_malloc(8 * Height * Width, 0x100004000313F17uLL);
          v8 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearSRGB);
          v9 = CGBitmapContextCreate(v7, Width, Height, 0x10uLL, 8 * (Width & 0x1FFFFFFF), v8, 0x1101u);
          CGColorSpaceRelease(v8);
          CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
          v20.origin.x = 0.0;
          v20.origin.y = 0.0;
          v20.size.width = Width;
          v20.size.height = Height;
          CGContextDrawImage(v9, v20, image);
          CGContextRelease(v9);
          v10 = malloc_type_malloc(Height * Width, 0x100004077774924uLL);
          v11 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
          v12 = CGBitmapContextCreate(v10, Width, Height, 8uLL, Width, v11, 0);
          CGColorSpaceRelease(v11);
          CGContextSetInterpolationQuality(v12, kCGInterpolationHigh);
          v21.origin.x = 0.0;
          v21.origin.y = 0.0;
          v21.size.width = Width;
          v21.size.height = Height;
          CGContextDrawImage(v12, v21, a2);
          CGContextRelease(v12);
          _NTKUltraCubeFiller::_NTKUltraCubeFiller(v19, v7, v10, Width, Height);
          _NTKUltraCubeFiller::setup(v19);
          _NTKUltraCubeFiller::resolve(v19, v13, v14, v15, v16, v17);
          v18 = _NTKUltraCubeFiller::result(v19);
          sub_16604(v19);
          free(v7);
          free(v10);
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1652C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_16604(va);
  _Unwind_Resume(a1);
}

void sub_16540(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1659C(exception, a1);
}

std::logic_error *sub_1659C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_165D0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_16604(void *a1)
{
  v2 = a1[338];
  if (v2)
  {
    a1[339] = v2;
    operator delete(v2);
  }

  v3 = a1[335];
  if (v3)
  {
    a1[336] = v3;
    operator delete(v3);
  }

  v4 = a1[332];
  if (v4)
  {
    a1[333] = v4;
    operator delete(v4);
  }

  v5 = a1[329];
  if (v5)
  {
    a1[330] = v5;
    operator delete(v5);
  }

  v6 = a1[326];
  if (v6)
  {
    a1[327] = v6;
    operator delete(v6);
  }

  v7 = a1[323];
  if (v7)
  {
    a1[324] = v7;
    operator delete(v7);
  }

  v8 = a1[320];
  if (v8)
  {
    a1[321] = v8;
    operator delete(v8);
  }

  v9 = a1[317];
  if (v9)
  {
    a1[318] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_166C0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_166A8();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_165D0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

id sub_1769C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_58190);
  if (qword_58198)
  {
    v3 = qword_58198 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_581A0))
  {
    qword_58198 = v2;
    qword_581A0 = [v2 version];
    v5 = qword_58188;
    qword_58188 = &off_4B5B8;
  }

  v6 = qword_58188;
  os_unfair_lock_unlock(&unk_58190);

  return v6;
}

void sub_1786C(id a1)
{
  v3 = &off_4B858;
  v4 = @"custom";
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  v2 = qword_581A8;
  qword_581A8 = v1;
}

uint64_t sub_1939C()
{
  memset(&v2, 0, sizeof(v2));
  NTKImagePresentationTransform();
  CGAffineTransformInvert(&v2, &v1);
  v1 = v2;
  return NTKImagePresentationSize();
}

uint64_t sub_19478()
{
  NTKCGImagePropertyOrientationToUIImageOrientation();

  return sub_1939C();
}

uint64_t sub_194B8()
{
  NTKCGImagePropertyOrientationToUIImageOrientation();
  NTKImagePresentationTransform();
  return NTKImagePresentationSize();
}

void sub_19524(CGImage *a1, uint64_t a2, uint64_t a3, void *a4, int *a5, int *a6, int *a7)
{
  CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  sub_1939C();
  sub_1939C();
  v9 = v8;
  v11 = v10;
  v12 = v8;
  v25 = v8;
  v13 = v10;
  ColorSpace = CGImageGetColorSpace(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  v16 = 8 * NumberOfComponents + 14;
  if ((NumberOfComponents & 0x10000000) == 0)
  {
    v16 = (8 * NumberOfComponents) | 7;
  }

  v35 = 0u;
  v36 = 0u;
  v17 = (v16 >> 3) * v12;
  v34 = 0u;
  NTKImagePresentationTransform();
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  NTKImagePresentationTransform();
  memset(&v30, 0, sizeof(v30));
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformInvert(&t2, &t1);
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformConcat(&v30, &t1, &t2);
  v18 = [NSMutableData dataWithLength:v17 * v13];
  v19 = [v18 mutableBytes];
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  v21 = CGImageGetColorSpace(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v23 = CGBitmapContextCreate(v19, v12, v13, BitsPerComponent, v17, v21, AlphaInfo);
  t1 = v30;
  CGContextSaveGState(v23);
  memset(&t2, 0, sizeof(t2));
  sub_197D4(a1, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  transform = t2;
  CGAffineTransformInvert(&t1, &transform);
  transform = t2;
  CGContextConcatCTM(v23, &transform);
  transform = t1;
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = v9;
  v40.size.height = v11;
  v41 = CGRectApplyAffineTransform(v40, &transform);
  CGContextDrawImage(v23, v41, a1);
  CGContextRestoreGState(v23);
  CGContextRelease(v23);
  v24 = v18;
  *a4 = v18;
  *a5 = v25;
  *a6 = v13;
  *a7 = v17;
}

CGFloat sub_197D4@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = *&CGAffineTransformIdentity.a;
  v7 = *&CGAffineTransformIdentity.c;
  *a3 = *&CGAffineTransformIdentity.a;
  *(a3 + 16) = v7;
  v8 = *&CGAffineTransformIdentity.tx;
  *(a3 + 32) = v8;
  *&t1.a = v6;
  *&t1.c = v7;
  *&t1.tx = v8;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_42BF0;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v9 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v9;
  *&t2.tx = *(a3 + 32);
  v10 = a2[1];
  *&v15.a = *a2;
  *&v15.c = v10;
  *&v15.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v15);
  v11 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v11;
  *(a3 + 32) = *&t1.tx;
  v12 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v12;
  *&t2.tx = *(a3 + 32);
  v15.b = 0.0;
  v15.c = 0.0;
  v15.a = 1.0;
  *&v15.d = xmmword_42BF0;
  v15.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v15);
  v13 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v13;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

CGContextRef sub_198EC(size_t a1, size_t a2, CGColorSpace *a3, uint32_t a4, void *a5)
{
  v9 = a5;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(a3);
  if (a4)
  {
    v11 = (NumberOfComponents & 0x1FFFFFFFFFFFFFFFLL) + 1;
  }

  else
  {
    v11 = NumberOfComponents & 0x1FFFFFFFFFFFFFFFLL;
  }

  v12 = [v9 mutableBytes];

  return CGBitmapContextCreate(v12, a1, a2, 8uLL, v11 * a1, a3, a4);
}

CGImageDestination *sub_1998C(void *a1, double a2)
{
  v3 = a1;
  v4 = +[NSMutableData data];
  v5 = [UTTypeHEIC identifier];
  v6 = CGImageDestinationCreateWithData(v4, v5, 1uLL, 0);

  if (v6)
  {
    [v3 imageOrientation];
    v7 = NTKUIImageOrientationToCGImagePropertyOrientation();
    v14[0] = &__kCFBooleanTrue;
    v13[0] = kCGImageDestinationUseHardwareAcceleration;
    v13[1] = kCGImagePropertyOrientation;
    v8 = [NSNumber numberWithUnsignedInt:v7];
    v14[1] = v8;
    v13[2] = kCGImageDestinationLossyCompressionQuality;
    v9 = [NSNumber numberWithDouble:a2];
    v14[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

    CGImageDestinationAddImage(v6, [v3 CGImage], v10);
    CGImageDestinationFinalize(v6);
    CFRelease(v6);
    if ([(__CFData *)v4 length])
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    v6 = v11;
  }

  return v6;
}

void sub_19B94(id a1)
{
  qword_581B8 = [[NTKUltraCubeUserState alloc] _init];

  _objc_release_x1();
}

id NTKUltraCubeComputeFaceRectsForCGImage(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v6 = [[VNImageRequestHandler alloc] initWithCGImage:a1 orientation:a2 options:&__NSDictionary0__struct];
  v7 = objc_opt_new();
  v32 = v7;
  v8 = [NSArray arrayWithObjects:&v32 count:1];
  v30 = 0;
  v9 = [v6 performRequests:v8 error:&v30];
  v10 = v30;

  if (v9)
  {
    v23 = v7;
    v24 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v7 results];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 boundingBox];
            v25[0] = v19;
            *&v25[1] = 1.0 - (v17 + v18);
            v25[2] = v20;
            *&v25[3] = v18;
            v21 = [NSValue valueWithBytes:v25 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            [v4 addObject:v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v5 = v24;
    v7 = v23;
  }

  objc_autoreleasePoolPop(v5);

  return v4;
}

uint64_t NTKUltraCubeComputeThresholdSegmentation(uint64_t a1, uint64_t a2, void *a3, void *a4, int *a5, int *a6, unsigned int *a7)
{
  v12 = a3;
  v13 = objc_autoreleasePoolPush();
  v14 = objc_autoreleasePoolPush();
  v15 = objc_autoreleasePoolPush();
  v16 = [AVDepthData depthDataFromDictionaryRepresentation:v12 error:0];
  if (!v16)
  {

    objc_autoreleasePoolPop(v15);
    v20 = 0;
    goto LABEL_25;
  }

  v67 = v13;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v17 = [CIImage imageWithCGImage:a1];
  v18 = [CIImage imageWithDepthData:v16];
  v19 = v18;
  v20 = 0;
  v21 = 1;
  if (v17 && v18)
  {
    v65 = v12;
    v22 = [CIFilter filterWithName:@"CIColorControls"];
    [v22 setValue:v17 forKey:kCIInputImageKey];
    [v22 setValue:&off_4B930 forKey:kCIInputBrightnessKey];
    v23 = [CIFilter filterWithName:@"CIPortraitEffectStage"];
    v21 = v23 == 0;
    if (v23)
    {
      v24 = [v22 outputImage];
      [v23 setValue:v24 forKey:kCIInputImageKey];

      [v23 setValue:v19 forKey:@"inputDisparity"];
      [v23 setValue:v17 forKey:@"inputFullSizeImage"];
      v25 = [v23 outputImage];
      v20 = [UIImage imageWithCIImage:v25];
    }

    else
    {
      v20 = 0;
    }

    v12 = v65;
  }

  objc_autoreleasePoolPop(v15);
  if (v21)
  {
    v13 = v67;
    goto LABEL_25;
  }

  v13 = v67;
  if (!v20)
  {
LABEL_25:

    objc_autoreleasePoolPop(v14);
    v34 = 0;
    goto LABEL_26;
  }

  [v20 size];
  v27 = v26;
  v29 = v28;
  v30 = v26;
  v31 = v28;
  [v20 scale];
  v33 = v32;
  v68.width = v27;
  v68.height = v29;
  UIGraphicsBeginImageContextWithOptions(v68, 1, v33);
  [v20 drawInRect:{0.0, 0.0, v30, v31}];
  v34 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  objc_autoreleasePoolPop(v14);
  if (!v34)
  {
LABEL_26:

    objc_autoreleasePoolPop(v13);
    v59 = 0;
    goto LABEL_27;
  }

  v66 = v12;
  v35 = (v30 + 7) & 0xFFFFFFF8;
  v36 = [NSMutableData dataWithLength:(4 * v35 * v31)];
  v37 = [v36 mutableBytes];
  v38 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v39 = CGBitmapContextCreate(v37, v30, v31, 8uLL, (4 * v35), v38, 1u);
  CGColorSpaceRelease(v38);
  CGContextSetInterpolationQuality(v39, kCGInterpolationHigh);
  v40 = [v34 CGImage];
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = v30;
  v69.size.height = v31;
  CGContextDrawImage(v39, v69, v40);
  CGContextRelease(v39);

  objc_autoreleasePoolPop(v67);
  v41 = v35 * v31;
  v42 = [NSMutableData dataWithLength:v41];
  v43 = [v42 mutableBytes];
  if (v41 >= 1)
  {
    v44 = v37 + 2;
    do
    {
      v45 = *(v44 - 2);
      v46 = v45 > 2;
      v47 = (v45 - 2);
      v48 = *(v44 - 1);
      v49 = v47 * 0.00083373;
      if (!v46)
      {
        v49 = 0.0;
      }

      v46 = v48 > 2;
      v50 = (v48 - 2);
      v52 = *v44;
      v44 += 4;
      v51 = v52;
      v53 = v50 * 0.0028047;
      if (!v46)
      {
        v53 = 0.0;
      }

      v54 = v51 >= 2;
      v55 = v51 - 2;
      v56 = v55 * 0.00028314;
      if (v55 == 0 || !v54)
      {
        v56 = 0.0;
      }

      v57 = ((((v49 + v53) + v56) * 3400.0) + 0.5);
      if (v57 >= 255)
      {
        LOBYTE(v57) = -1;
      }

      *v43++ = v57;
      --v41;
    }

    while (v41);
  }

  v58 = v42;
  *v61 = v42;
  *v62 = v30;
  *v63 = v31;
  *v64 = v35;

  v59 = 1;
  v12 = v66;
LABEL_27:

  return v59;
}

const __CFString *NSStringForSegmentationType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_49200[a1 - 1];
  }
}

id NTKUltraCubePixelBufferForObservation(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 confidence];
    v3 = v2;
    v4 = [v1 pixelBuffer];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v1 instanceSegmentationMask];
      [v5 confidence];
      v3 = v6;

      v7 = [v1 instanceSegmentationMask];
      v4 = [v7 pixelBuffer];
    }

    else
    {
      v4 = 0;
      v3 = -1.0;
    }
  }

  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "NTKUltraCubePixelBufferForObservation";
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s: observation with a confidence of (%f)", &v10, 0x16u);
  }

  return v4;
}

id VNRequestForSegmentationType(uint64_t a1, uint64_t a2)
{
  if (a1 == 3 || a1 == 2 || a1 == 1)
  {
    v3 = objc_opt_new();
    v4 = v3;
    if (a2)
    {
      if (a2 != 1)
      {
LABEL_9:
        [v4 setOutputPixelFormat:1278226488];
        goto LABEL_11;
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    [v3 setQualityLevel:v5];
    goto LABEL_9;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

_BYTE *NTKUltraCubeMemCpyAndSubtract(_BYTE *result, char *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = &a2[a3];
    do
    {
      v4 = *a2++;
      *result++ = ~v4;
    }

    while (a2 < v3);
  }

  return result;
}

__CVBuffer *NTKUltraCubeResizePixelBufferIfNeeded(__CVBuffer *a1, void *a2, CGFloat a3, CGFloat a4)
{
  v7 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = _NTKLoggingObjectForDomain();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a3 == Width && a4 == Height)
  {
    if (v11)
    {
      LODWORD(buf.a) = 136315138;
      *(&buf.a + 4) = "NTKUltraCubeResizePixelBufferIfNeeded";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: sizes match; no resize needed", &buf, 0xCu);
    }

    CVPixelBufferRetain(a1);
  }

  else
  {
    if (v11)
    {
      v26.width = Width;
      v26.height = Height;
      v13 = NSStringFromCGSize(v26);
      v27.width = a3;
      v27.height = a4;
      v14 = NSStringFromCGSize(v27);
      LODWORD(buf.a) = 136315650;
      *(&buf.a + 4) = "NTKUltraCubeResizePixelBufferIfNeeded";
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v13;
      HIWORD(buf.c) = 2112;
      *&buf.d = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: size mismatch; scaling pixel buffer from %@ to %@", &buf, 0x20u);
    }

    v15 = [CIImage imageWithCVImageBuffer:a1];
    [v15 extent];
    v16 = a3 / CGRectGetWidth(v28);
    [v15 extent];
    v17 = CGRectGetHeight(v29);
    CGAffineTransformMakeScale(&buf, v16, a4 / v17);
    v18 = [v15 imageByApplyingTransform:&buf];

    pixelBufferOut = 0;
    [v18 extent];
    v19 = CGRectGetWidth(v30);
    [v18 extent];
    v20 = CGRectGetHeight(v31);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    CVPixelBufferCreate(0, v19, v20, PixelFormatType, 0, &pixelBufferOut);
    if (pixelBufferOut)
    {
      [v7 render:v18 toCVPixelBuffer:?];
    }

    else
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.a) = 136315138;
        *(&buf.a + 4) = "NTKUltraCubeResizePixelBufferIfNeeded";
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%s: failed to resize; output resized pixelBuffer was NULL", &buf, 0xCu);
      }
    }

    a1 = pixelBufferOut;
  }

  return a1;
}

id NTKUltraCubeComputeSegmentation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, unsigned __int8 a11)
{
  v15 = a1;
  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 - 1) > 2)
    {
      v17 = @"None";
    }

    else
    {
      v17 = off_49200[a2 - 1];
    }

    *buf = 136315394;
    *&buf[4] = "NTKUltraCubeComputeSegmentation";
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%s: requesting segmentation of type: %@", buf, 0x16u);
  }

  if (!a2)
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NTKUltraCubeComputeSegmentation";
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%s: segmentation type none is not supported", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_25;
  }

  v18 = VNRequestForSegmentationType(a2, a3);
  v19 = v18;
  if (!v18)
  {
    v23 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NTKUltraCubeComputeSegmentation";
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%s: VNRequest is nil.", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_24;
  }

  v60 = a8;
  v20 = a11;
  v70 = v18;
  v21 = [NSArray arrayWithObjects:&v70 count:1];
  v66 = 0;
  v22 = [v15 performRequests:v21 error:&v66];
  v23 = v66;

  if (!v22)
  {
    v24 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v26 = NSStringFromClass(v29);
      *buf = 136315394;
      *&buf[4] = "NTKUltraCubeComputeSegmentation";
      *&buf[12] = 2114;
      *&buf[14] = v26;
      v27 = "%s: Failed to perform %{public}@";
      goto LABEL_20;
    }

LABEL_21:
    v28 = 0;
    goto LABEL_22;
  }

  v24 = _NTKLoggingObjectForDomain();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v26 = [v23 localizedDescription];
      *buf = 136315394;
      *&buf[4] = "NTKUltraCubeComputeSegmentation";
      *&buf[12] = 2112;
      *&buf[14] = v26;
      v27 = "%s: failed request; error — %@";
LABEL_20:
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (v25)
  {
    v32 = [v19 results];
    v33 = [v32 count];
    *buf = 136315394;
    *&buf[4] = "NTKUltraCubeComputeSegmentation";
    *&buf[12] = 2048;
    *&buf[14] = v33;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%s: successful request; returned (%ld) results", buf, 0x16u);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v24 = [v19 results];
  v28 = [v24 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (!v28)
  {
    goto LABEL_22;
  }

  v57 = a7;
  v58 = v15;
  v34 = *v63;
  while (2)
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v63 != v34)
      {
        objc_enumerationMutation(v24);
      }

      v36 = NTKUltraCubePixelBufferForObservation(*(*(&v62 + 1) + 8 * i));
      v37 = _NTKLoggingObjectForDomain();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (!v36)
      {
        if (!v38)
        {
          goto LABEL_42;
        }

        *buf = 136315138;
        *&buf[4] = "NTKUltraCubeComputeSegmentation";
        v39 = v37;
        v40 = "%s: nil pixel buffer in observation";
        goto LABEL_41;
      }

      if (v38)
      {
        *buf = 136315138;
        *&buf[4] = "NTKUltraCubeComputeSegmentation";
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%s: observation contains pixel buffer; resize to output aspect ratio; copy data", buf, 0xCu);
      }

      if (CVPixelBufferGetPixelFormatType(v36) == 1278226488)
      {
        NTKCGImagePropertyOrientationToUIImageOrientation();
        v68 = 0u;
        memset(buf, 0, sizeof(buf));
        NTKImagePresentationTransform();
        NTKImagePresentationSize();
        v42 = v41;
        v44 = v43;
        v45 = +[CIContext context];
        v46 = NTKUltraCubeResizePixelBufferIfNeeded(v36, v45, v42, v44);

        Width = CVPixelBufferGetWidth(v46);
        Height = CVPixelBufferGetHeight(v46);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v46);
        CVPixelBufferLockBaseAddress(v46, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(v46);
        v59 = Height;
        v50 = BytesPerRow * Height;
        v51 = [[NSMutableData alloc] initWithLength:BytesPerRow * Height];
        v52 = [v51 mutableBytes];
        if (a2 == 3)
        {
          v23 = 0;
          v15 = v58;
          v53 = a10;
          if (v50 >= 1)
          {
            v54 = &BaseAddress[v50];
            do
            {
              v55 = *BaseAddress++;
              *v52++ = ~v55;
            }

            while (BaseAddress < v54);
          }
        }

        else
        {
          memcpy(v52, BaseAddress, BytesPerRow * Height);
          v23 = 0;
          v15 = v58;
          v53 = a10;
        }

        v28 = &dword_0 + 1;
        CVPixelBufferUnlockBaseAddress(v46, 1uLL);
        CVPixelBufferRelease(v46);
        v56 = v51;
        *v57 = v51;
        *v60 = Width;
        *a9 = v59;
        *v53 = BytesPerRow;

        goto LABEL_52;
      }

      v37 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "NTKUltraCubeComputeSegmentation";
        v39 = v37;
        v40 = "%s: unexpected pixelFormatType in pixel buffer";
LABEL_41:
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
      }

LABEL_42:
    }

    v28 = [v24 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

  v23 = 0;
  v15 = v58;
LABEL_52:
  v20 = a11;
LABEL_22:

  if (v20)
  {
    v30 = +[VNSession globalSession];
    [v30 releaseCachedResources];
  }

LABEL_24:

LABEL_25:
  return v28;
}

uint64_t sub_1BB28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB40(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 56);
  }

  else
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    if (v4)
    {
      v5 = +[NSFileManager defaultManager];
      [v5 removeItemAtPath:*(*(*(a1 + 48) + 8) + 40) error:0];

      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;

      v4 = 0;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BC58;
  block[3] = &unk_49220;
  v8 = *(a1 + 32);
  v14 = a2;
  block[4] = v8;
  v13 = v4;
  v10 = *(a1 + 40);
  v9 = v10;
  v12 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1BC58(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 64);
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) galleryPreviewResourceDirectory];
  (*(v2 + 16))(v2, v3);
}

void sub_1BCEC(void *a1)
{
  v2 = [*(a1[4] + 16) firstObject];
  if (v2)
  {
    v3 = NTKPhotosCreateResourceDirectory();
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(a1[6] + 8) + 40))
    {
      v6 = [*(a1[4] + 8) objectForKeyedSubscript:v2];
      if ([v6 isInResourceDirectory])
      {
        v7 = [v6 photo];
        v8 = sub_1BED0(v7, *(*(a1[6] + 8) + 40));

        if (v8)
        {
LABEL_5:
          v9 = [v8 encodeAsDictionary];
          v12 = v9;
          v10 = [NSArray arrayWithObjects:&v12 count:1];

          NTKPhotosWriteImageListWithVersion();
          (*(a1[5] + 16))();

LABEL_11:
          goto LABEL_12;
        }
      }

      else
      {
        v8 = sub_1C0D4(v6, *(*(a1[6] + 8) + 40));
        if (v8)
        {
          goto LABEL_5;
        }
      }

      (*(a1[5] + 16))();
      goto LABEL_11;
    }

    v11 = *(a1[5] + 16);
  }

  else
  {
    v11 = *(a1[5] + 16);
  }

  v11();
LABEL_12:
}

id sub_1BED0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 baseImageURL];
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_linkUltraCubePhoto: linking existing photo %@ into the new resource directory %@", &v16, 0x16u);
  }

  v7 = [v3 copy];
  v8 = [v3 baseImageURL];
  v9 = NTKPhotosLinkURL();

  if (v9)
  {
    [v7 setBaseImageURL:v9];
    v10 = [v3 maskImageURL];

    if (v10)
    {
      v11 = [v3 maskImageURL];
      v12 = NTKPhotosLinkURL();

      if (!v12)
      {
        goto LABEL_12;
      }

      [v7 setMaskImageURL:v12];
    }

    v13 = [v3 backgroundImageURL];

    if (v13)
    {
      v14 = [v3 backgroundImageURL];
      v12 = NTKPhotosLinkURL();

      if (!v12)
      {
        goto LABEL_12;
      }

      [v7 setBackgroundImageURL:v12];
    }

    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

id sub_1C0D4(void *a1, void *a2)
{
  v3 = a1;
  v195 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [NTKCompanionUltraCubeImageDataDescriptor alloc];
  v199 = v3;
  v5 = [v3 asset];
  v6 = [(NTKCompanionUltraCubeImageDataDescriptor *)v4 initWithAsset:v5];

  if (![(NTKCompanionUltraCubeImageDataDescriptor *)v6 isValid])
  {
    v14 = 0;
    goto LABEL_119;
  }

  v194 = v6;
  v7 = [v3 layout];
  [v7 crop];
  IsEmpty = CGRectIsEmpty(v207);

  if (IsEmpty)
  {
    v9 = [(NTKCompanionUltraCubeImageDataDescriptor *)v194 segmentation];
    v10 = [v9 hasAuxiliaryDictionary];
    if (v10)
    {
      v11 = [v9 auxiliaryMaskImage];
      v12 = v194;
      v13 = [[NTKUltraCubePreviewCoveragePercentageValidator alloc] initWithMaskImage:v11 orientation:[(NTKCompanionUltraCubeImageDataDescriptor *)v194 orientation]];
      CGImageRelease(v11);
    }

    else
    {
      v13 = 0;
      v12 = v194;
    }

    v15 = [(NTKCompanionUltraCubeImageDataDescriptor *)v12 faceRects];
    [(NTKCompanionUltraCubeImageDataDescriptor *)v194 presentationSize];
    v18 = sub_1F52C(v15, v10, v13, v16, v17);
    [v199 setLayout:v18];
  }

  v19 = v194;
  v183 = v199;
  v184 = v195;
  v182 = v19;
  v191 = [(NTKCompanionUltraCubeImageDataDescriptor *)v19 segmentation];
  if ([v191 hasAuxiliaryDictionary])
  {
    v20 = [v191 auxiliaryDictionaryDescription];
    v21 = [v20 isThresholdMask];

    image = [v191 auxiliaryMaskImage];
    if (!image)
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "_saveEditedPhoto: Cannot create mask image", &buf, 2u);
      }

      v14 = 0;
      goto LABEL_118;
    }
  }

  else
  {
    v21 = 0;
    image = 0;
  }

  v23 = v182;
  v193 = v183;
  v189 = v184;
  CanEncodeHEIC = NTKPhotosCanEncodeHEIC();
  v24 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (image)
    {
      v25 = "masked";
    }

    else
    {
      v25 = "flat";
    }

    v26 = [(NTKCompanionUltraCubeImageDataDescriptor *)v23 asset];
    v27 = [v26 localIdentifier];
    v28 = v27;
    v29 = "jpg";
    LODWORD(buf.a) = 136315906;
    *(&buf.a + 4) = v25;
    WORD2(buf.b) = 2112;
    if (CanEncodeHEIC)
    {
      v29 = "heic";
    }

    *(&buf.b + 6) = v27;
    HIWORD(buf.c) = 2080;
    *&buf.d = v29;
    LOWORD(buf.tx) = 2112;
    *(&buf.tx + 2) = v189;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "_saveEditedPhoto: saving %s portrait for %@ as %s file in %@", &buf, 0x2Au);
  }

  v200 = objc_opt_new();
  v30 = +[NSUUID UUID];
  v185 = [v30 UUIDString];

  v31 = @"jpg";
  if (CanEncodeHEIC)
  {
    v31 = @"heic";
    v32 = &UTTypeHEIC;
  }

  else
  {
    v32 = &UTTypeJPEG;
  }

  v181 = v31;
  v33 = *v32;
  v34 = [(NTKCompanionUltraCubeImageDataDescriptor *)v23 asset];
  v35 = [v34 localIdentifier];
  [v200 setLocalIdentifier:v35];

  v36 = [(NTKCompanionUltraCubeImageDataDescriptor *)v23 asset];
  v37 = [v36 ntk_modificationDate];
  [v200 setModificationDate:v37];

  v38 = [v193 layout];
  [v38 crop];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_21694(v40, v42, v44, v46, 1.075);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [(NTKCompanionUltraCubeImageDataDescriptor *)v23 presentationSize];
  v56 = v55;
  v58 = v57;
  v59 = v52 <= v55;
  v60 = v54;
  v186 = v52;
  if (!v59)
  {
    v61 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", *&v48, *&v50, *&v52, *&v54];
      v63 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", 0, 0, *&v56, *&v58];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v62;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v63;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "ensureRectIsWithinRect: %@ is outside %@", &buf, 0x16u);
    }

    v60 = v54 * (v58 / v54);
    v186 = v56;
  }

  if (v54 <= v58)
  {
    rect = v60;
  }

  else
  {
    v64 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", *&v48, *&v50, *&v52, *&v54];
      v66 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", 0, 0, *&v56, *&v58];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v65;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v66;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "ensureRectIsWithinRect: %@ is outside %@", &buf, 0x16u);
    }

    v186 = v56 / v52 * v186;
    rect = v58;
  }

  if (v48 < 0.0 || (v67 = v48, v48 + v52 > v56))
  {
    v68 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", *&v48, *&v50, *&v52, *&v54];
      v70 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", 0, 0, *&v56, *&v58];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v69;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v70;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "ensureRectIsWithinRect: %@ is outside %@", &buf, 0x16u);
    }

    if (v48 >= 0.0)
    {
      v71 = v48;
    }

    else
    {
      v71 = 0.0;
    }

    if (v71 >= v56 + 0.0 - v52)
    {
      v67 = v56 + 0.0 - v52;
    }

    else
    {
      v67 = v71;
    }
  }

  if (v50 < 0.0 || v50 + v54 > v58)
  {
    v72 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", *&v48, *&v50, *&v52, *&v54];
      v74 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", 0, 0, *&v56, *&v58];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v73;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v74;
      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "ensureRectIsWithinRect: %@ is outside %@", &buf, 0x16u);
    }

    if (v50 >= 0.0)
    {
      v75 = v50;
    }

    else
    {
      v75 = 0.0;
    }

    if (v75 >= v58 + 0.0 - v54)
    {
      v50 = v58 + 0.0 - v54;
    }

    else
    {
      v50 = v75;
    }
  }

  [v200 setParallaxScale:1.075];
  v76 = image != 0;
  v77 = [NSString stringWithFormat:@"base_%@.%@", v185, v181];
  v180 = [v189 stringByAppendingPathComponent:v77];

  v78 = [NSURL fileURLWithPath:v180];
  v79 = v23;
  v188 = v33;
  v190 = v78;
  v197 = v79;
  [(NTKCompanionUltraCubeImageDataDescriptor *)v79 orientation];
  v80 = NTKCGImagePropertyOrientationToUIImageOrientation();
  v81 = [NTKCompanionImageDataScaler alloc];
  [(NTKCompanionUltraCubeImageDataDescriptor *)v197 presentationSize];
  v83 = v82;
  v85 = v84;
  v86 = [(NTKCompanionUltraCubeImageDataDescriptor *)v197 data];
  v87 = (rint(v67) & ~v76);
  v88 = (rint(v50) & ~v76);
  v89 = [v81 initWithSize:v86 crop:v80 data:v188 orientation:v83 type:v85 outputSize:{v87, v88, v186, rect, 480.0}];

  if (v89)
  {
    v205.a = 0.0;
    *&v205.b = &v205;
    *&v205.c = 0x3032000000;
    *&v205.d = sub_1BB28;
    *&v205.tx = sub_1BB38;
    v205.ty = 0.0;
    v90 = dispatch_semaphore_create(0);
    *&buf.a = _NSConcreteStackBlock;
    *&buf.b = 3221225472;
    *&buf.c = sub_21918;
    *&buf.d = &unk_49428;
    *&buf.tx = v190;
    v203 = &v205;
    v91 = v90;
    *&buf.ty = v91;
    [v89 cropAndScaleWithCompletion:&buf];
    dispatch_semaphore_wait(v91, 0xFFFFFFFFFFFFFFFFLL);
    v196 = *(*&v205.b + 40);

    _Block_object_dispose(&v205, 8);
  }

  else
  {
    v196 = 0;
  }

  if (v196)
  {
    v92 = [v193 layout];
    [v92 crop];
    [v200 setOriginalCrop:?];

    [v200 setBaseImageURL:v190];
    [v200 setUserAdjusted:{objc_msgSend(v193, "isUserAdjusted")}];
    [v200 setParallaxFlat:v21];
    [(NTKCompanionUltraCubeImageDataDescriptor *)v197 orientation];
    v93 = NTKCGImagePropertyOrientationToUIImageOrientation();
    v94 = [(NTKCompanionUltraCubeImageDataDescriptor *)v197 orientation];
    v95 = [v196 imageOrientation];
    v96 = image == 0;
    if (v93 == v95)
    {
      v96 = 1;
    }

    if (v96)
    {
      v110 = 0;
    }

    else
    {
      v97 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = [v196 imageOrientation];
        LODWORD(buf.a) = 134218240;
        *(&buf.a + 4) = v93;
        WORD2(buf.b) = 2048;
        *(&buf.b + 6) = v98;
        _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEFAULT, "saved jpeg has changed orientation; adjusting the mask from %ld to %ld", &buf, 0x16u);
      }

      v99 = [v196 imageOrientation];
      LODWORD(v205.a) = 0;
      LODWORD(v204[0]) = 0;
      v201 = 0;
      buf.a = 0.0;
      sub_19524(image, v93, v99, &buf, &v205, v204, &v201);
      v100 = *&buf.a;
      v101 = CGDataProviderCreateWithCFData(v100);
      v176 = SLODWORD(v204[0]);
      a_low = SLODWORD(v205.a);
      BitsPerComponent = CGImageGetBitsPerComponent(image);
      BitsPerPixel = CGImageGetBitsPerPixel(image);
      v104 = v201;
      ColorSpace = CGImageGetColorSpace(image);
      BitmapInfo = CGImageGetBitmapInfo(image);
      decode = CGImageGetDecode(image);
      shouldInterpolate = CGImageGetShouldInterpolate(image);
      RenderingIntent = CGImageGetRenderingIntent(image);

      v110 = CGImageCreate(a_low, v176, BitsPerComponent, BitsPerPixel, v104, ColorSpace, BitmapInfo, v101, decode, shouldInterpolate, RenderingIntent);
      CGDataProviderRelease(v101);
      [v196 imageOrientation];
      v94 = NTKUIImageOrientationToCGImagePropertyOrientation();
    }

    if (v110)
    {
      v111 = v110;
    }

    else
    {
      v111 = image;
    }

    [v200 setMaskImageURL:0];
    if (!v111)
    {
      goto LABEL_98;
    }

    Width = CGImageGetWidth(image);
    [(NTKCompanionUltraCubeImageDataDescriptor *)v197 storedSize];
    CGAffineTransformMakeScale(&buf, Width / v113, Width / v113);
    v208.origin.x = v87;
    v208.origin.y = v88;
    v208.size.width = v186;
    v208.size.height = rect;
    v209 = CGRectApplyAffineTransform(v208, &buf);
    x = v209.origin.x;
    y = v209.origin.y;
    v116 = v209.size.width;
    height = v209.size.height;
    v118 = [NSString stringWithFormat:@"mask_%@.png", v185];
    v119 = [v189 stringByAppendingPathComponent:v118];

    v120 = [NSURL fileURLWithPath:v119];
    if (height * 0.8 >= v116)
    {
      v121 = v116;
    }

    else
    {
      v121 = height * 0.8;
    }

    if (v116 / 0.8 >= height)
    {
      v122 = height;
    }

    else
    {
      v122 = v116 / 0.8;
    }

    if (v121 <= v122)
    {
      v124 = rint(v122);
      v123 = ceil(v124 * 480.0 / 600.0);
    }

    else
    {
      v123 = rint(v121);
      v124 = ceil(v123 * 600.0 / 480.0);
    }

    CGImageGetWidth(v111);
    CGImageGetHeight(v111);
    v187 = NTKCGImagePropertyOrientationToUIImageOrientation();
    memset(&buf, 0, sizeof(buf));
    NTKImagePresentationTransform();
    CGAffineTransformInvert(&buf, &v205);
    v205 = buf;
    v210.origin.x = rint(x + fmax((v116 - v121) * 0.5, 0.0));
    v210.origin.y = rint(y + fmax((height - v122) * 0.5, 0.0));
    v210.size.width = v123;
    v210.size.height = v124;
    v211 = CGRectApplyAffineTransform(v210, &v205);
    v125 = CGImageCreateWithImageInRect(v111, v211);
    if (v125)
    {
      v126 = +[NSMutableData data];
      v127 = [UTTypePNG identifier];
      v128 = CGImageDestinationCreateWithData(v126, v127, 1uLL, 0);

      if (v128)
      {
        Mutable = CGImageMetadataCreateMutable();
        if (Mutable)
        {
          v130 = [NSString stringWithFormat:@"%ld", v94];
          CGImageMetadataSetValueWithPath(Mutable, 0, @"tiff:Orientation", v130);
          v204[0] = kCGImageDestinationImageMaxPixelSize;
          v131 = [NSNumber numberWithDouble:600.0];
          v204[1] = kCGImageDestinationUseHardwareAcceleration;
          *&v205.a = v131;
          *&v205.b = &__kCFBooleanTrue;
          v132 = [NSDictionary dictionaryWithObjects:&v205 forKeys:v204 count:2];

          CGImageDestinationAddImageAndMetadata(v128, v125, Mutable, v132);
          CGImageDestinationFinalize(v128);
          CFRelease(Mutable);
        }

        else
        {

          v130 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v205.a) = 0;
            _os_log_impl(&dword_0, v130, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create metadataRef", &v205, 2u);
          }

          v126 = 0;
        }

        CFRelease(v128);
        CFRelease(v125);
        if (v126)
        {
          v136 = CGDataProviderCreateWithCFData(v126);
          v137 = CGImageCreateWithPNGDataProvider(v136, 0, 0, kCGRenderingIntentDefault);
          v135 = [UIImage imageWithCGImage:v137 scale:v187 orientation:1.0];
          v138 = v135;
          CGDataProviderRelease(v136);
          CGImageRelease(v137);
        }

        else
        {
          v135 = 0;
        }

        goto LABEL_95;
      }

      v134 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v205.a) = 0;
        _os_log_impl(&dword_0, v134, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create imageDestinationRef", &v205, 2u);
      }

      CFRelease(v125);
    }

    else
    {
      v133 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v205.a) = 0;
        _os_log_impl(&dword_0, v133, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create croppedImageRef", &v205, 2u);
      }
    }

    v135 = 0;
    v126 = 0;
LABEL_95:
    v111 = v135;
    CGImageRelease(v110);
    v139 = sub_21790(v126, v120);
    if (v139)
    {

LABEL_113:
      v14 = 0;
LABEL_116:

      goto LABEL_117;
    }

    [v200 setMaskImageURL:v120];

LABEL_98:
    [v200 setBaseImageZorder:0.0];
    v140 = [v193 layout];
    [v140 timeElementZorder];
    [v200 setTimeElementZorder:?];

    v141 = [v193 layout];
    [v141 maskedImageZorder];
    [v200 setMaskedImageZorder:?];

    if (v111)
    {
      v142 = v196;
      v143 = [v196 CGImage];
      v144 = v111;
      ContentFillForCGImage = NTKUltraCubeCreateContentFillForCGImage(v143, [(CGImage *)v111 CGImage]);
      v119 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", ContentFillForCGImage, [v196 imageOrientation], 1.0);
      CGImageRelease(ContentFillForCGImage);
      v146 = v196;
      v147 = [v196 CGImage];
      v148 = v111;
      v149 = sub_213BC(v147, [(CGImage *)v111 CGImage]);
      v120 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", v149, [v196 imageOrientation], 1.0);
      CGImageRelease(v149);
      if (!ContentFillForCGImage || !v149)
      {
        v150 = v196;

        [v200 setTimeElementZorder:2.0];
        [v200 setMaskedImageZorder:1.0];
        v151 = [v200 maskImageURL];
        v152 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.a) = 138412290;
          *(&buf.a + 4) = v151;
          _os_log_impl(&dword_0, v152, OS_LOG_TYPE_DEFAULT, "Creating content fill failed; removing %@", &buf, 0xCu);
        }

        v153 = +[NSFileManager defaultManager];
        [v153 removeItemAtURL:v151 error:0];

        [v200 setMaskImageURL:0];
        v120 = 0;
        v119 = v150;
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    [v200 setBackgroundImageURL:0];
    if (v119 && v120)
    {
      v154 = [NSString stringWithFormat:@"back_%@.%@", v185, v181];
      v155 = [v189 stringByAppendingPathComponent:v154];

      v156 = [NSURL fileURLWithPath:v155];
      if (CanEncodeHEIC)
      {
        sub_1998C(v119, 0.9);
      }

      else
      {
        UIImageJPEGRepresentation(v119, 0.85);
      }
      v159 = ;
      v160 = sub_21790(v159, v156);
      if (v160)
      {

        goto LABEL_113;
      }

      [v200 setBackgroundImageURL:v156];

      v157 = objc_autoreleasePoolPush();
      v161 = v120;
      v162 = v196;
      v163 = [v120 CGImage];
      v164 = v119;
      v165 = [(UIImage *)v119 CGImage];

      v166 = CGImageGetColorSpace(v163);
      v167 = CGImageGetWidth(v163);
      v168 = CGImageGetHeight(v163);
      v169 = CGBitmapContextCreate(0, v167, v168, 8uLL, 4 * v167, v166, 1u);
      v170 = [UIColor colorWithWhite:0.5 alpha:1.0];
      v171 = v170;
      CGContextSetFillColorWithColor(v169, [v170 CGColor]);

      v212.origin.x = 0.0;
      v212.origin.y = 0.0;
      v212.size.width = v167;
      v212.size.height = v168;
      CGContextFillRect(v169, v212);
      CGContextSetInterpolationQuality(v169, kCGInterpolationHigh);
      CGContextSetBlendMode(v169, kCGBlendModeMultiply);
      v213.origin.x = 0.0;
      v213.origin.y = 0.0;
      v213.size.width = v167;
      v213.size.height = v168;
      CGContextDrawImage(v169, v213, v165);
      CGContextSetBlendMode(v169, kCGBlendModeNormal);
      v214.origin.x = 0.0;
      v214.origin.y = 0.0;
      v214.size.width = v167;
      v214.size.height = v168;
      CGContextDrawImage(v169, v214, v163);
      v172 = CGBitmapContextCreateImage(v169);
      CGContextRelease(v169);
      v158 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", v172, [v120 imageOrientation], 1.0);
      CGImageRelease(v172);
    }

    else
    {
      v157 = objc_autoreleasePoolPush();
      v158 = v196;
    }

    CLKUIComputeDimmingRequiredToObtainImageAPL();
    [v200 setImageAOTBrightness:v173];

    objc_autoreleasePoolPop(v157);
    v174 = [v193 layout];
    [v174 baseline];
    [v200 setTimeElementUnitBaseline:?];

    [v200 setTimeElementUnitHeight:0.241116751];
    v14 = v200;
    goto LABEL_116;
  }

  v14 = 0;
LABEL_117:

  CGImageRelease(image);
LABEL_118:

  v6 = v194;
LABEL_119:

  objc_autoreleasePoolPop(context);

  return v14;
}

void sub_1DA80(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) resourceDirectory];
  (*(v1 + 16))(v1, v2);
}

void sub_1DADC(uint64_t a1)
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1DC1C;
  v9 = &unk_49310;
  v2 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v2;
  v3 = objc_retainBlock(&v6);
  v4 = NTKPhotosCreateResourceDirectory();
  if (v4)
  {
    v5 = [*(a1 + 32) _copyOrTranscodePhotosTo:{v4, v6, v7, v8, v9, v10}];
    if (v5 && (NTKPhotosWriteImageListWithVersion() & 1) != 0)
    {
      [*(a1 + 32) _reinitializeWithImageList:v5 andResourceDirectory:v4];
      (v3[2])(v3, 1, v4);
    }

    else
    {
      (v3[2])(v3, 0, 0);
    }
  }

  else
  {
    (v3[2])(v3, 0, 0);
  }
}

void sub_1DC1C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    if (v5)
    {
      v8 = +[NSFileManager defaultManager];
      [v8 removeItemAtPath:v6 error:0];

      v6 = 0;
    }

    v7 = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1DD1C;
  v11[3] = &unk_492E8;
  v14 = v7;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v9;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t sub_1DD1C(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_1E2B4(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v2 = [v1 pixelWidth];
  v3 = [v1 pixelHeight];

  if (v3 * v2 <= 0xE4E1C0uLL)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1EB58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v5 = [*(a1 + 40) asset];
    v6 = [v5 localIdentifier];
    [v4 setObject:v3 forKey:v6];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1EC58;
  v9[3] = &unk_492C0;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_1EDCC(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "previewOfLibraryPhotoAtIndex:%ld", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  if ((v4 & 0x8000000000000000) != 0 || v4 >= [*(*(a1 + 32) + 16) count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F090;
    block[3] = &unk_49298;
    v19 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
    v5 = v19;
  }

  else if ([*(a1 + 32) _ensurePreviewEditSessionIsLoadedForPhotoAtIndex:*(a1 + 48) computeCrop:1])
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7 = v6[4];
    v8 = [v6 device];
    v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];
    v10 = [v7 ultracubeCropPreviewForDevice:v8 subsampleFactor:{objc_msgSend(v9, "subsampleFactor")}];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1F0C0;
    v13[3] = &unk_492C0;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v12 = v10;
    dispatch_async(&_dispatch_main_q, v13);
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1F0A8;
    v16[3] = &unk_49298;
    v17 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v16);
    v5 = v17;
  }
}

void sub_1F198(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v29 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "resetCropOfPhotoAtIndex:%ld", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  if ((v4 & 0x8000000000000000) != 0 || v4 >= [*(*(a1 + 32) + 16) count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1F4FC;
    block[3] = &unk_49298;
    v27 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
    v5 = v27;
  }

  else if ([*(a1 + 32) _ensurePreviewEditSessionIsLoadedForPhotoAtIndex:*(a1 + 48) computeCrop:0])
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:*(a1 + 48)];
    v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];
    v7 = *(*(a1 + 32) + 32);
    v8 = [v7 photoImageMasked];
    v9 = v8 != 0;

    v10 = [v7 faceRects];
    v11 = [v7 previewValidator];
    [v7 presentationSize];
    v14 = sub_1F52C(v10, v9, v11, v12, v13);

    [*(*(a1 + 32) + 32) setLayout:v14];
    [*(*(a1 + 32) + 32) setUserAdjusted:0];
    v15 = *(a1 + 32);
    v16 = v15[4];
    v17 = [v15 device];
    v18 = [v16 ultracubeCropPreviewForDevice:v17 subsampleFactor:{objc_msgSend(v6, "subsampleFactor")}];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1FD18;
    v21[3] = &unk_492C0;
    v19 = *(a1 + 40);
    v22 = v18;
    v23 = v19;
    v20 = v18;
    dispatch_async(&_dispatch_main_q, v21);
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1F514;
    v24[3] = &unk_49298;
    v25 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v24);
    v5 = v25;
  }
}

_NTKLayoutDescriptor *sub_1F52C(void *a1, int a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a3;
  if (![v9 count])
  {
    goto LABEL_33;
  }

  v12 = 0.241116751 * 0.9 * 0.71;
  v13 = 0.328125 - v12;
  v14 = (1.075 + -1.0) * 0.5;
  v111 = a4;
  v112 = a5;
  if (!a2)
  {
    goto LABEL_57;
  }

  v109 = 0.328125 - v12;
  v15 = NTKUltraCubeComputeIdealCoverageUnitCropUpOrientation(v9, v10, a4, a5, 0.12345, v13, 0.7531, v12, v14, v11, 480.0, 600.0);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_21694(v15, v16, v18, v20, 1.075);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v108 = v28;
  v115.origin.x = v15;
  v115.origin.y = v17;
  v115.size.width = v19;
  v115.size.height = v21;
  if (CGRectIsEmpty(v115) || (v23 >= -0.00000011920929 ? (v29 = v25 < -0.00000011920929) : (v29 = 1), v29 || v23 + v27 + -0.00000011920929 > 1.0))
  {
    v30 = 0;
  }

  else if (v25 + v108 + -0.00000011920929 > 1.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = objc_alloc_init(_NTKLayoutDescriptor);
    [(_NTKLayoutDescriptor *)v30 setCrop:v15, v17, v19, v21];
    [(_NTKLayoutDescriptor *)v30 setBaseline:0.328125];
    [(_NTKLayoutDescriptor *)v30 setTimeElementZorder:1.0];
    [(_NTKLayoutDescriptor *)v30 setMaskedImageZorder:2.0];
  }

  v31 = _NTKLoggingObjectForDomain();
  a4 = v111;
  a5 = v112;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    [(_NTKLayoutDescriptor *)v30 crop];
    v36 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", v32, v33, v34, v35];
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v36;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "portraitLayoutDynamic: ideal rect == %@", &buf, 0xCu);
  }

  v14 = (1.075 + -1.0) * 0.5;
  v12 = 0.241116751 * 0.9 * 0.71;
  v13 = v109;
  if (!v30)
  {
LABEL_57:
    NTKUltraCubeComputeTimeAboveUnitCropUpOrientation(v9, a4, a5, 0.12345, v13, 0.7531, v12, v14, v11, 480.0, 600.0);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_21694(v37, v39, v41, v43, 1.075);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v116.origin.x = v38;
    v116.origin.y = v40;
    v116.size.width = v42;
    v116.size.height = v44;
    if (CGRectIsEmpty(v116) || (v46 >= -0.00000011920929 ? (v53 = v48 < -0.00000011920929) : (v53 = 1), v53 || v46 + v50 + -0.00000011920929 > 1.0))
    {
      v30 = 0;
    }

    else if (v48 + v52 + -0.00000011920929 > 1.0)
    {
      v30 = 0;
    }

    else
    {
      v30 = objc_alloc_init(_NTKLayoutDescriptor);
      [(_NTKLayoutDescriptor *)v30 setCrop:v38, v40, v42, v44];
      [(_NTKLayoutDescriptor *)v30 setBaseline:0.328125];
      [(_NTKLayoutDescriptor *)v30 setTimeElementZorder:2.0];
      [(_NTKLayoutDescriptor *)v30 setMaskedImageZorder:1.0];
    }

    v54 = _NTKLoggingObjectForDomain();
    a4 = v111;
    a5 = v112;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      [(_NTKLayoutDescriptor *)v30 crop];
      v59 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", v55, v56, v57, v58];
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = v59;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "portraitLayoutDynamic: top rect == %@", &buf, 0xCu);
    }

    if (!v30)
    {
      v61 = NTKUltraCubeComputeTimeBelowUnitCropUpOrientation(v9, v111, v112, 0.12345, 0.803571429 - 0.241116751 * 0.9 * 0.71, 0.7531, 0.241116751 * 0.9 * 0.71, (1.075 + -1.0) * 0.5, v60, 480.0, 600.0);
      v63 = v62;
      v65 = v64;
      v67 = v66;
      sub_21694(v61, v62, v64, v66, 1.075);
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v110 = v74;
      v117.origin.x = v61;
      v117.origin.y = v63;
      v117.size.width = v65;
      v117.size.height = v67;
      if (CGRectIsEmpty(v117) || (v69 >= -0.00000011920929 ? (v75 = v71 < -0.00000011920929) : (v75 = 1), v75 || v69 + v73 + -0.00000011920929 > 1.0))
      {
        v30 = 0;
        a4 = v111;
      }

      else
      {
        if (v71 + v110 + -0.00000011920929 > 1.0)
        {
          v30 = 0;
        }

        else
        {
          v30 = objc_alloc_init(_NTKLayoutDescriptor);
          [(_NTKLayoutDescriptor *)v30 setCrop:v61, v63, v65, v67];
          [(_NTKLayoutDescriptor *)v30 setBaseline:0.803571429];
          [(_NTKLayoutDescriptor *)v30 setTimeElementZorder:2.0];
          [(_NTKLayoutDescriptor *)v30 setMaskedImageZorder:1.0];
        }

        a4 = v111;
      }

      v76 = _NTKLoggingObjectForDomain();
      a5 = v112;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        [(_NTKLayoutDescriptor *)v30 crop];
        v81 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", v77, v78, v79, v80];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v81;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "portraitLayoutDynamic: bottom rect == %@", &buf, 0xCu);
      }

      if (!v30)
      {
LABEL_33:
        if (a5 * 0.8 >= a4)
        {
          v82 = a4;
        }

        else
        {
          v82 = a5 * 0.8;
        }

        v83 = fmax((a4 - v82) * 0.5, 0.0);
        if (a4 / 0.8 >= a5)
        {
          v84 = a5;
        }

        else
        {
          v84 = a4 / 0.8;
        }

        sub_21694(v83, fmax((a5 - v84) * 0.5, 0.0), v82, v84, 1.0 / 1.075);
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v30 = objc_alloc_init(_NTKLayoutDescriptor);
        CGAffineTransformMakeScale(&buf, 1.0 / a4, 1.0 / a5);
        v118.origin.x = v86;
        v118.origin.y = v88;
        v118.size.width = v90;
        v118.size.height = v92;
        v119 = CGRectApplyAffineTransform(v118, &buf);
        [(_NTKLayoutDescriptor *)v30 setCrop:v119.origin.x, v119.origin.y, v119.size.width, v119.size.height];
        [(_NTKLayoutDescriptor *)v30 setBaseline:0.803571429];
        [(_NTKLayoutDescriptor *)v30 setTimeElementZorder:2.0];
        [(_NTKLayoutDescriptor *)v30 setMaskedImageZorder:1.0];
        v93 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          [(_NTKLayoutDescriptor *)v30 crop];
          v98 = [NSString stringWithFormat:@"{ %.2f, %.2f, %.2f, %.2f }", v94, v95, v96, v97];
          LODWORD(buf.a) = 138412290;
          *(&buf.a + 4) = v98;
          _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEFAULT, "portraitLayoutDynamic: fallback rect == %@", &buf, 0xCu);
        }
      }
    }
  }

  [(_NTKLayoutDescriptor *)v30 crop];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  CGAffineTransformMakeScale(&buf, a4, a5);
  v120.origin.x = v100;
  v120.origin.y = v102;
  v120.size.width = v104;
  v120.size.height = v106;
  v121 = CGRectApplyAffineTransform(v120, &buf);
  [(_NTKLayoutDescriptor *)v30 setCrop:v121.origin.x, v121.origin.y, v121.size.width, v121.size.height];

  return v30;
}

void sub_20B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20B28(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  if ([v6 isInResourceDirectory])
  {
    v7 = [v6 photo];
    v12 = sub_1BED0(v7, *(a1 + 40));

    v8 = v12;
  }

  else
  {
    v8 = sub_1C0D4(v6, *(a1 + 40));
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  v13 = v8;
  if (v8)
  {
    v11 = [v8 encodeAsDictionary];
    [v10 addObject:v11];
  }

  else
  {
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

CGImageRef sub_213BC(CGImage *a1, CGImage *a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v7 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, ColorSpace, 1u);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = Width;
  v10.size.height = Height;
  CGContextClipToMask(v7, v10, a2);
  CGContextSetInterpolationQuality(v7, kCGInterpolationHigh);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = Width;
  v11.size.height = Height;
  CGContextDrawImage(v7, v11, a1);
  Image = CGBitmapContextCreateImage(v7);
  CGContextRelease(v7);
  return Image;
}

void sub_2151C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [[NTKCompanionImageDataScaler alloc] initWithSize:v6 crop:a3 data:objc_msgSend(v5 orientation:"pixelWidth") outputSize:{objc_msgSend(*(a1 + 32), "pixelHeight"), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), 480.0, 600.0}];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_21624;
  v8[3] = &unk_493D8;
  v9 = *(a1 + 40);
  [v7 cropAndScaleWithCompletion:v8];
}

void sub_21624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a2 = [UIImage imageWithData:a2 scale:1.0];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_21694(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = a1 + a3 * 0.5;
  v11 = a2 + a4 * 0.5;
  CGAffineTransformMakeTranslation(&v20, -v10, -v11);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v22 = CGRectApplyAffineTransform(v21, &v20);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  CGAffineTransformMakeScale(&v20, a5, a5);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectApplyAffineTransform(v23, &v20);
  v16 = v24.origin.x;
  v17 = v24.origin.y;
  v18 = v24.size.width;
  v19 = v24.size.height;
  CGAffineTransformMakeTranslation(&v20, v10, v11);
  v25.origin.x = v16;
  v25.origin.y = v17;
  v25.size.width = v18;
  v25.size.height = v19;
  CGRectApplyAffineTransform(v25, &v20);
}

id sub_21790(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = [v3 length];
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Saving %ld bytes to %@", buf, 0x16u);
  }

  v9 = 0;
  [v3 writeToURL:v4 options:0 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "saveImageToFile: cannot save data to %@, error = %@", buf, 0x16u);
    }
  }

  return v6;
}

void sub_21918(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = sub_21790(v3, *(a1 + 32));
    if (!v4)
    {
      v5 = [UIImage imageWithData:v8 scale:1.0];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

char *createCumulativeData(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2 + 1;
  v7 = malloc_type_malloc(4 * (a2 + 1) * (a3 + 1), 0x100004052888210uLL);
  v8 = [v5 bytes];
  v9 = a2;
  if (a2 != -1)
  {
    bzero(v7, v9 * 4 + 4);
  }

  if (a3 != -1)
  {
    v10 = vdupq_n_s64(a3);
    v11 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v12 = xmmword_42E50;
    v13 = xmmword_42E60;
    v14 = vdupq_n_s64(4uLL);
    v15 = v7;
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v10, v13));
      if (vuzp1_s16(v16, *v10.i8).u8[0])
      {
        *v15 = 0;
      }

      if (vuzp1_s16(v16, *&v10).i8[2])
      {
        v15[v9 + 1] = 0;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v12))).i32[1])
      {
        v15[2 * a2 + 2] = 0;
        v15[3 * a2 + 3] = 0;
      }

      v12 = vaddq_s64(v12, v14);
      v13 = vaddq_s64(v13, v14);
      v15 += 4 * a2 + 4;
      v11 -= 4;
    }

    while (v11);
    if (a3)
    {
      v17 = &v7[4 * v6];
      v18 = &v8[a2 + 2];
      v19 = 1;
      v20 = v7;
      v21 = v7;
      v22 = &v7[4 * a2 + 8];
      do
      {
        v21 += 4;
        if (v6 >= 2)
        {
          v23 = 0;
          v24 = a2;
          do
          {
            v25 = *v18++;
            *&v22[v23] = *&v17[v23] + v25 + *&v21[v23] - *&v20[v23];
            v23 += 4;
            --v24;
          }

          while (v24);
          v21 += v23;
          v20 += v23;
          v17 += v23;
          v22 += v23;
        }

        ++v18;
        v22 += 4;
        v17 += 4;
        v20 += 4;
      }

      while (v19++ != a3);
    }
  }

  return v7;
}

void sub_24558(void *a1)
{
  v9 = a1;
  [v9 bounds];
  v2 = v1 * 0.5;
  v3 = [v9 contentView];
  v4 = [v3 layer];
  [v4 setCornerRadius:v2];

  v5 = [v9 contentView];
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  v7 = [UIColor colorWithWhite:0.0 alpha:0.5];
  v8 = [v9 contentView];
  [v8 setBackgroundColor:v7];

  [v9 _setupContainerButton];
}

uint64_t NTK_PUHapticsAllowed()
{
  if (qword_581D0 != -1)
  {
    sub_29DA4();
  }

  return byte_581C8;
}

void NTKUltraCubeComputeTimeAboveUnitCropUpOrientation(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v24 = sub_25DAC(a1, 0.2, 0.05);
  v25 = v24 - v22 * a8;
  if (v25 >= 0.0)
  {
    v26 = v21;
    v27 = a8 + a8 + 1.0;
    v28 = v26 - v23 * a8;
    v29 = v25 + v27 * v22;
    if (v28 >= 0.0 && v29 <= 1.0 && v28 + v27 * v23 <= 1.0)
    {
      sub_25F1C(a2, a3, a10 / a11, a8, 0.5, a5 + a7, v24 + v22 * 0.5, v26);
    }
  }
}

double sub_25DAC(void *a1, double a2, double a3)
{
  v5 = a1;
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 rectValue];
    x = v7 + v8 * -0.15;
    width = v8 * 1.3;
    y = v11 - v12 * a2;
    v14 = a2 + a3 + 1.0;
    height = v14 * v12;

    if ([v5 count] >= 2)
    {
      v16 = 1;
      v26 = v14;
      v27 = a2;
      do
      {
        v17 = [v5 objectAtIndexedSubscript:{v16, *&v26}];
        [v17 rectValue];
        v20 = v18 + v19 * -0.15;
        r2 = v19 * 1.3;
        v23 = v21 - v22 * a2;
        v24 = v26 * v22;

        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v31.origin.x = v20;
        v31.origin.y = v23;
        v31.size.width = r2;
        v31.size.height = v24;
        a2 = v27;
        v30 = CGRectUnion(v29, v31);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v16;
      }

      while ([v5 count] > v16);
    }
  }

  else
  {
    x = CGRectNull.origin.x;
  }

  return x;
}

double sub_25F1C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = a7 / (a5 + a4);
  if (v9 >= (1.0 - a7) / (1.0 - a5 + a4))
  {
    v9 = (1.0 - a7) / (1.0 - a5 + a4);
  }

  v10 = a1 / a2 * (v9 / a3);
  v11 = a8 / (a6 + a4);
  v12 = (1.0 - a8) / (1.0 - a6 + a4);
  if (v11 < v12)
  {
    v12 = v11;
  }

  if (v12 < v10)
  {
    v9 = v9 * (v12 / v10);
  }

  return a7 - a5 * v9;
}

double NTKUltraCubeComputeTimeBelowUnitCropUpOrientation(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = a1;
  v25 = sub_25DAC(v21, 0.05, 0.05);
  v26 = v25 - v23 * a8;
  if (v26 < 0.0)
  {
    goto LABEL_31;
  }

  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = a8 + a8 + 1.0;
  v31 = v27 - v24 * a8;
  v32 = v26 + v30 * v23;
  v33 = v31 < 0.0 || v32 > 1.0;
  if (v33 || v31 + v30 * v24 > 1.0)
  {
    goto LABEL_31;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = a5 * 0.3;
  v35 = v21;
  v36 = [v35 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v53;
    v39 = 1.0;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [*(*(&v52 + 1) + 8 * i) rectValue];
        if (v41 + v42 * 0.3 < v39)
        {
          v39 = v41 + v42 * 0.3;
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v37);
  }

  else
  {
    v39 = 1.0;
  }

  x = sub_25F1C(a2, a3, a10 / a11, a8, 0.5, v51, v25 + v28 * 0.5, v39);
  v47 = x > v25 || v43 > v27;
  v48 = v47 || x + v44 < v25 + v28;
  if (v48 || v43 + v45 < v27 + v29)
  {
LABEL_31:
    x = CGRectNull.origin.x;
  }

  return x;
}

double NTKUltraCubeComputeIdealCoverageUnitCropUpOrientation(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v24 = a2;
  v28 = sub_25DAC(a1, 0.0, 0.2);
  v29 = v28 - v26 * a9;
  if (v29 < 0.0 || ((v30 = v25, v31 = a9 + a9 + 1.0, v32 = v25 - v27 * a9, v33 = v29 + v31 * v26, v32 >= 0.0) ? (v34 = v33 > 1.0) : (v34 = 1), !v34 ? (v35 = v32 + v31 * v27 > 1.0) : (v35 = 1), v35))
  {
    x = CGRectNull.origin.x;
  }

  else
  {
    v102 = a9 + a9 + 1.0;
    v94 = a5;
    v95 = a7;
    v37 = a6 + a8;
    v38 = v28 + v26 * 0.5;
    v39 = (v38 + 0.0) / (a9 + 0.5);
    v40 = (1.0 - v38) / (a9 + 0.5);
    if (v39 >= v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = v39;
    }

    v42 = a3 / a4 * (v41 / (a11 / a12));
    v105 = a6 + a8;
    if (1.0 / (a9 * 2.0 + 1.0) >= v25 / (v37 + a9))
    {
      v43 = v25 / (v37 + a9);
    }

    else
    {
      v43 = 1.0 / (a9 * 2.0 + 1.0);
    }

    if (v42 <= v43)
    {
      v43 = a3 / a4 * (v41 / (a11 / a12));
    }

    else
    {
      v41 = v41 * (v43 / v42);
    }

    v44 = v28 + (v26 - v41) * 0.5;
    v45 = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    if (v44 > v28 || ((v47 = v25 - v43 * v105, v113 = v28 + v26, v47 <= v25) ? (v48 = v44 + v41 < v28 + v26) : (v48 = 1), v48))
    {
      v85 = CGRectNull.origin.x;
      v86 = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      v87 = width;
      height = CGRectNull.size.height;
      v50 = height;
      v92 = CGRectNull.origin.x;
    }

    else
    {
      v93 = a8;
      v106 = 8.0 / a4;
      v101 = 1.0 - 8.0 / a3;
      v112 = v25 + v27;
      v49 = 1.0;
      v103 = a9 + 1.0;
      v50 = CGRectNull.size.height;
      v89 = v50;
      v90 = CGRectNull.size.width;
      width = v90;
      v91 = CGRectNull.origin.y;
      v92 = CGRectNull.origin.x;
      v87 = v90;
      height = v50;
      v85 = CGRectNull.origin.x;
      v86 = v91;
      v110 = v25;
      v111 = v28;
      v108 = a9;
      v104 = v26;
      do
      {
        if (v47 + v43 < v112)
        {
          break;
        }

        v52 = v41;
        v53 = v47 <= v49 - v43 * v103 ? v47 : v49 - v43 * v103;
        v54 = v44 - v52 * a9;
        if (v54 < 0.0 || ((v55 = v54 + v102 * v52, v56 = v53 - v43 * a9, v56 >= 0.0) ? (v57 = v55 > v49) : (v57 = 1), v57))
        {
          v67 = v43;
          v69 = v52;
        }

        else
        {
          v97 = v50;
          v98 = width;
          v99 = y;
          v100 = v45;
          v107 = -v43;
          v58 = v102 * v43;
          v59 = v44 + v52;
          v60 = v44 + v94 * v52;
          v96 = v52;
          v61 = v95 * v52;
          v62 = v93 * v43;
          while (1)
          {
            if (v58 + v56 > v49 || v44 > v28 || v53 > v30 || v59 < v113 || v43 + v53 < v112)
            {
              v67 = v43;
LABEL_54:
              a9 = v108;
              y = v99;
              v45 = v100;
              v50 = v97;
              width = v98;
              v69 = v96;
              goto LABEL_81;
            }

            v67 = v43;
            [v24 coverageOfTimeLabel:{v60, v53 + a6 * v43, v61, v62}];
            if (v68 < 0.185)
            {
              break;
            }

            v53 = v53 - v106;
            v56 = v53 + v107 * v108;
            v30 = v110;
            v28 = v111;
            v49 = 1.0;
            v43 = v67;
            if (v56 < 0.0)
            {
              goto LABEL_54;
            }
          }

          y = v99;
          v45 = v100;
          v50 = v97;
          width = v98;
          if (v68 >= 0.0925)
          {
            v45 = v44;
            y = v53;
            v69 = v96;
            width = v96;
            v50 = v67;
          }

          else
          {
            v70 = v68 <= 0.0;
            if (v68 <= 0.0)
            {
              v71 = v85;
            }

            else
            {
              v71 = v44;
            }

            v72 = v86;
            if (!v70)
            {
              v72 = v53;
            }

            v85 = v71;
            v86 = v72;
            if (v70)
            {
              v73 = v87;
            }

            else
            {
              v73 = v96;
            }

            v74 = height;
            if (!v70)
            {
              v74 = v67;
            }

            v87 = v73;
            height = v74;
            if (v70)
            {
              v75 = v44;
            }

            else
            {
              v75 = v92;
            }

            v76 = v91;
            if (v70)
            {
              v76 = v53;
            }

            v69 = v96;
            v91 = v76;
            v92 = v75;
            if (v70)
            {
              v77 = v96;
            }

            else
            {
              v77 = v90;
            }

            v78 = v89;
            if (v70)
            {
              v78 = v67;
            }

            v89 = v78;
            v90 = v77;
          }

          a9 = v108;
        }

LABEL_81:
        v114.origin.x = v45;
        v114.origin.y = y;
        v114.size.width = width;
        v114.size.height = v50;
        if (!CGRectIsEmpty(v114))
        {
          break;
        }

        v41 = v101 * v69;
        v43 = v101 * v67;
        v30 = v110;
        v28 = v111;
        v47 = v110 - v101 * v67 * v105;
        v44 = v111 + (v104 - v41) * 0.5;
        v79 = v44 > v111 || v47 > v110;
        v80 = v79 || v44 + v41 < v113;
        v49 = 1.0;
      }

      while (!v80);
    }

    v115.origin.x = v45;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = v50;
    IsEmpty = CGRectIsEmpty(v115);
    if (IsEmpty)
    {
      x = v85;
    }

    else
    {
      x = v45;
    }

    if (IsEmpty)
    {
      y = v86;
      v82 = v87;
    }

    else
    {
      v82 = width;
    }

    if (IsEmpty)
    {
      v83 = height;
    }

    else
    {
      v83 = v50;
    }

    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = v82;
    v116.size.height = v83;
    if (CGRectIsEmpty(v116))
    {
      x = v92;
    }
  }

  return x;
}

void sub_26ED4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 face];
  [v4 setResourceDirectory:v3];
}

void sub_26F34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) photosCount];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v7 = v5[2];
    v6 = v3;
    if (v7)
    {
      v6 = v7;

      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "setSelectedOptions: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v10, 0xCu);
      }

      v5 = *(a1 + 32);
    }
  }

  v9 = [v5 face];
  [v9 setResourceDirectory:v6];
}

void sub_2753C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) photosCount];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v7 = v5[2];
    v6 = v3;
    if (v7)
    {
      v6 = v7;

      v8 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_setPhotos: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v13, 0xCu);
      }

      v5 = *(a1 + 32);
    }
  }

  v9 = [v5 face];
  [v9 setResourceDirectory:v6];

  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) face];
    v12 = [v11 resourceDirectory];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "updated preview directory for custom face to %@", &v13, 0xCu);
  }
}

void sub_278A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateUltraCubeSection];
    v4 = [*(a1 + 32) face];
    [v4 setResourceDirectory:v3];

    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) face];
      v7 = [v6 resourceDirectory];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "finalizeWithCompletion: new face resource directory is %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

id sub_27EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  if ((v4 - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = objc_opt_new();
    v7 = [v3 stringValue];
    [v6 setIdentifier:v7];

    v8 = [NTKCompanionUltraCubeTimePlacementDataSource _labelTextForOption:v5 disambiguateLayers:*(a1 + 32)];
    [v6 setLocalizedName:v8];

    v9 = [NTKCompanionUltraCubeTimePlacementDataSource _imageForOption:v5];
    [v6 setNtk_icon:v9];

    [v6 setNtk_option:v5];
    [v6 setEnabled:1];
  }

  return v6;
}

void sub_28CC8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) defaultLayoutRuleForState:a2];
  [v4 setVerticalLayout:3];
  [v4 setHorizontalLayout:1];
  [*(a1 + 32) setDefaultLayoutRule:v4 forState:a2];
  [v4 referenceFrame];
  CLKRectCenteredXInRectForDevice();
  [v4 setReferenceFrame:?];
}

void sub_29784(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultracube couldn't get preview %@", &v2, 0xCu);
}

void sub_297FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultracube couldn't get reset preview %@", &v2, 0xCu);
}

void sub_29874(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "error enumerating UltraCube bundle resource directories: %@", &v2, 0xCu);
}

void sub_298EC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Couldn't save preview at index %lu", &v2, 0xCu);
}

void sub_29964(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 resourceDirectoryURL];
  v6 = [v5 lastPathComponent];
  v7 = [a2 objectForKeyedSubscript:@"localIdentifier"];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid image list item: %@", &v8, 0x16u);
}

void sub_29BF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "NTKUltraCubePhoto decodeFromDictionary: bad dictionary: %@", &v2, 0xCu);
}

void sub_29C68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Image List Item validation failed: %@", &v2, 0xCu);
}

void sub_29CF4(void *a1, void *a2, NSObject *a3)
{
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "_fetchAssetsForNewPhotos: could only retrieve %ld assets for %ld local identifiers", &v5, 0x16u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}