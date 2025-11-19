uint64_t NTKDefaultPaletteColorForDeviceCollection(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues();
  v5 = [v3 collectionType];
  if (v5 == &dword_0 + 3)
  {
    [v3 materialType];
    if (v4)
    {
      v7 = 19;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if ((a2 != 18) | v4 & 1)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == &dword_4 + 2)
    {
      v6 = 9;
    }

    if (v5 == &dword_4 + 1)
    {
      v7 = 7;
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

id NTKPaletteColorsForGreenfieldColorMapping()
{
  if (qword_23340 != -1)
  {
    sub_FC5C();
  }

  v1 = qword_23338;

  return v1;
}

void sub_FD0(id a1)
{
  v3[2] = xmmword_14228;
  v3[3] = unk_14238;
  v3[4] = xmmword_14248;
  v3[0] = xmmword_14208;
  v3[1] = unk_14218;
  v1 = [NSIndexSet indexSetWithIndexes:v3 count:10];
  v2 = qword_23338;
  qword_23338 = v1;
}

id sub_1258(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_23350);
  if (qword_23358)
  {
    v4 = qword_23358 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_23360))
  {
    qword_23358 = v3;
    qword_23360 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_23348;
    qword_23348 = v6;
  }

  v8 = qword_23348;
  os_unfair_lock_unlock(&unk_23350);

  return v8;
}

void sub_15E0(id a1)
{
  v3[0] = &off_1D788;
  v3[1] = &off_1D5F0;
  v4[0] = NTKFaceBundleColorBlackDeprecated;
  v4[1] = NTKFaceBundleColorDarkBlue;
  v3[2] = &off_1D608;
  v3[3] = &off_1D620;
  v4[2] = NTKFaceBundleColorDarkBrown;
  v4[3] = NTKFaceBundleColorDarkGreen;
  v3[4] = &off_1D638;
  v3[5] = &off_1D650;
  v4[4] = NTKFaceBundleColorDarkGray;
  v4[5] = NTKFaceBundleColorLightGray;
  v3[6] = &off_1D668;
  v3[7] = &off_1D5C0;
  v4[6] = NTKFaceBundleColorLightYellow;
  v4[7] = NTKFaceBundleColorZeus;
  v3[8] = &off_1D680;
  v3[9] = &off_1D5D8;
  v4[8] = NTKFaceBundleColorLightBlue;
  v4[9] = NTKFaceBundleColorVictory;
  v3[10] = &off_1D6B0;
  v3[11] = &off_1D6C8;
  v4[10] = NTKFaceBundleColorRed;
  v4[11] = NTKFaceBundleColorPapaya;
  v3[12] = &off_1D6E0;
  v3[13] = &off_1D6F8;
  v4[12] = NTKFaceBundleColorYellow;
  v4[13] = NTKFaceBundleColorFlash;
  v3[14] = &off_1D710;
  v3[15] = &off_1D728;
  v4[14] = NTKFaceBundleColorGreen;
  v4[15] = NTKFaceBundleColorBlue;
  v3[16] = &off_1D740;
  v3[17] = &off_1D758;
  v4[16] = NTKFaceBundleColorPurple;
  v4[17] = NTKFaceBundleColorPink;
  v3[18] = &off_1D698;
  v3[19] = &off_1D770;
  v4[18] = NTKFaceBundleColorBlack;
  v4[19] = NTKFaceBundleColorGoldGeneric1;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:20];
  v2 = qword_23368;
  qword_23368 = v1;
}

id sub_1EE0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_23380);
  if (qword_23388)
  {
    v3 = qword_23388 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_23390))
  {
    qword_23388 = v2;
    qword_23390 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_23378;
    qword_23378 = v5;
  }

  v7 = qword_23378;
  os_unfair_lock_unlock(&unk_23380);

  return v7;
}

void sub_205C(id a1)
{
  v3[0] = &off_1D7A0;
  v3[1] = &off_1D7B8;
  v4[0] = NTKFaceBundleChronoTimeScale60Seconds;
  v4[1] = NTKFaceBundleChronoTimeScale30Seconds;
  v3[2] = &off_1D7D0;
  v3[3] = &off_1D7E8;
  v4[2] = NTKFaceBundleChronoTimeScale6Seconds;
  v4[3] = NTKFaceBundleChronoTimeScale3Seconds;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_23398;
  qword_23398 = v1;
}

void sub_23CC(id a1)
{
  v1 = NTKAllUtilitySmallComplicationTypes();
  v4 = [v1 mutableCopy];

  [v4 removeIndex:4];
  v2 = [[NSIndexSet alloc] initWithIndexSet:v4];
  v3 = qword_233A8;
  qword_233A8 = v2;
}

void sub_2ABC(id a1)
{
  v1 = NTKAllSignatureCornerTypes();
  v4 = [v1 mutableCopy];

  [v4 removeIndex:4];
  v2 = [[NSIndexSet alloc] initWithIndexSet:v4];
  v3 = qword_233B8;
  qword_233B8 = v2;
}

void sub_2E2C(id a1)
{
  qword_233C8 = NTKSnapshotCompatibleMappedImageCacheWithIdentifier();

  _objc_release_x1();
}

void sub_3E44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setForegroundColor:{objc_msgSend(v3, "CGColor")}];
}

void sub_4290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_42AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 12;
  }

  v8 = [NSString localizedStringWithFormat:@"%i", v7];
  if (a3 == 10)
  {
    [v5 setAnchorPoint:{0.4, 0.5}];
  }

  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];
  v9 = *(a1 + 72);

  return v9;
}

void sub_4514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_4530(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = 15 * a3;
  if (a3)
  {
    v7 = v7;
  }

  else
  {
    v7 = 60;
  }

  v8 = [NSString localizedStringWithFormat:@"%2i", v7];
  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];

  v9 = *(a1 + 88);
  return v9;
}

void sub_477C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_4798(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = 5 * a3;
  if (a3)
  {
    v7 = v7;
  }

  else
  {
    v7 = 60;
  }

  v8 = [NSString localizedStringWithFormat:@"%i", v7];
  if (a3 >= 8)
  {
    [v5 setAnchorPoint:{0.4, 0.5}];
  }

  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];
  v9 = *(a1 + 72);

  return v9;
}

void sub_4A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_4A20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = 5 * a3;
  if (a3)
  {
    v7 = v7;
  }

  else
  {
    v7 = 30;
  }

  v8 = [NSString localizedStringWithFormat:@"%02i", v7];
  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];

  v9 = *(a1 + 88);
  return v9;
}

void sub_4C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_4C84(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = 2 * a3;
  if (a3)
  {
    v7 = v7;
  }

  else
  {
    v7 = 30;
  }

  v8 = [NSString localizedStringWithFormat:@"%i", v7];
  if (a3 >= 8)
  {
    [v5 setAnchorPoint:{0.4, 0.5}];
  }

  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];
  v9 = *(a1 + 72);

  return v9;
}

void sub_4EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_4F0C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = 3 * a3;
  if (a3)
  {
    v7 = v7;
  }

  else
  {
    v7 = 15;
  }

  v8 = [NSString localizedStringWithFormat:@"%2i", v7];
  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];

  v9 = *(a1 + 88);
  return v9;
}

void sub_51A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_51BC(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a3 % 5)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v9 = [NSString localizedStringWithFormat:@"%i", 10 * (a3 % 5)];
    LODWORD(v10) = 1050253722;
    [v5 setOpacity:v10];
    v11 = 96;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    if (a3)
    {
      v12 = (a3 / 5);
    }

    else
    {
      v12 = 6;
    }

    v9 = [NSString localizedStringWithFormat:@"%i", v12];
    v11 = 88;
  }

  [v5 setFont:v7];
  [v5 setFontSize:v8];
  [v5 setString:v9];
  [WeakRetained _boundsForText:v9 font:v7];
  [v5 setBounds:?];
  v13 = *(a1 + v11);

  return v13;
}

void sub_5498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_54B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 3;
  }

  v8 = [NSString localizedStringWithFormat:@"%2i", v7];
  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];

  v9 = *(a1 + 88);
  return v9;
}

void sub_5744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_5760(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a3 % 0xA)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v9 = [NSString localizedStringWithFormat:@"%i", 10 * (a3 % 0xA)];
    LODWORD(v10) = 1050253722;
    [v5 setOpacity:v10];
    v11 = 96;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    if (a3)
    {
      v12 = (a3 / 0xA);
    }

    else
    {
      v12 = 3;
    }

    v9 = [NSString localizedStringWithFormat:@"%i", v12];
    v11 = 88;
  }

  [v5 setFont:v7];
  [v5 setFontSize:v8];
  [v5 setString:v9];
  [WeakRetained _boundsForText:v9 font:v7];
  [v5 setBounds:?];
  v13 = *(a1 + v11);

  return v13;
}

void sub_5A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double sub_5A54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [NSString localizedStringWithFormat:@"%2i", v7];
  [v5 setFont:*(a1 + 32)];
  [v5 setFontSize:*(a1 + 48)];
  [v5 setString:v8];
  [WeakRetained _boundsForText:v8 font:*(a1 + 32)];
  [v5 setBounds:?];

  v9 = *(a1 + 88);
  return v9;
}

void sub_5D64(void *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1;
  os_unfair_lock_lock(&unk_23490);
  if (qword_23498)
  {
    v3 = qword_23498 == v10;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v10 version], v4 != qword_234A0))
  {
    qword_23498 = v10;
    qword_234A0 = [v10 version];
    sub_5EA0(v10, v11);
    xmmword_23458 = v11[8];
    unk_23468 = v11[9];
    xmmword_23478 = v11[10];
    qword_23488 = v12;
    xmmword_23418 = v11[4];
    unk_23428 = v11[5];
    xmmword_23438 = v11[6];
    unk_23448 = v11[7];
    xmmword_233D8 = v11[0];
    unk_233E8 = v11[1];
    xmmword_233F8 = v11[2];
    unk_23408 = v11[3];
  }

  v5 = unk_23468;
  *(a2 + 128) = xmmword_23458;
  *(a2 + 144) = v5;
  *(a2 + 160) = xmmword_23478;
  *(a2 + 176) = qword_23488;
  v6 = unk_23428;
  *(a2 + 64) = xmmword_23418;
  *(a2 + 80) = v6;
  v7 = unk_23448;
  *(a2 + 96) = xmmword_23438;
  *(a2 + 112) = v7;
  v8 = unk_233E8;
  *a2 = xmmword_233D8;
  *(a2 + 16) = v8;
  v9 = unk_23408;
  *(a2 + 32) = xmmword_233F8;
  *(a2 + 48) = v9;
  os_unfair_lock_unlock(&unk_23490);
}

void sub_5EA0(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v3 deviceCategory];
  [NTKAnalogUtilities dialDiameterForDevice:v3];
  v6 = v5;

  *a2 = v6;
  [v4 scaledValue:14.0];
  [v4 scaledValue:12.0];
  v7 = CLKLocaleCurrentNumberSystem();
  if (v7 == 1)
  {
    [v4 scaledValue:9.5];
    *(a2 + 64) = v13;
    *(a2 + 72) = UIFontWeightRegular;
    v93[0] = &off_1D968;
    v93[1] = &off_1D980;
    v94[0] = &off_1E048;
    v94[1] = &off_1E058;
    v14 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];
    [v4 scaledValue:v14 withOverrides:16.0];
    *(a2 + 40) = v15;

    v91[0] = &off_1D968;
    v91[1] = &off_1D980;
    v92[0] = &off_1E068;
    v92[1] = &off_1E078;
    v11 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];
    v12 = 10.0;
  }

  else
  {
    if (v7 != 2)
    {
      [v4 scaledValue:6.5];
      *(a2 + 64) = v19;
      *(a2 + 72) = UIFontWeightSemibold;
      v97[0] = &off_1D968;
      v97[1] = &off_1D980;
      v98[0] = &off_1E008;
      v98[1] = &off_1E018;
      v20 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
      [v4 scaledValue:v20 withOverrides:13.0];
      *(a2 + 40) = v21;

      v95[0] = &off_1D968;
      v95[1] = &off_1D980;
      v96[0] = &off_1E028;
      v96[1] = &off_1E038;
      v11 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:2];
      [v4 scaledValue:v11 withOverrides:8.0];
      v17 = 12.0;
      v18 = 14.0;
      goto LABEL_7;
    }

    [v4 scaledValue:9.5];
    *(a2 + 64) = v8;
    *(a2 + 72) = UIFontWeightRegular;
    v89[0] = &off_1D968;
    v89[1] = &off_1D980;
    v90[0] = &off_1E088;
    v90[1] = &off_1E098;
    v9 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
    [v4 scaledValue:v9 withOverrides:17.0];
    *(a2 + 40) = v10;

    v87[0] = &off_1D968;
    v87[1] = &off_1D980;
    v88[0] = &off_1E0A8;
    v88[1] = &off_1E0B8;
    v11 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
    v12 = 11.0;
  }

  [v4 scaledValue:v11 withOverrides:v12];
  v17 = 12.5;
  v18 = 15.0;
LABEL_7:
  *(a2 + 48) = v16;

  [v4 scaledValue:v18];
  *(a2 + 16) = v22;
  [v4 scaledValue:v17];
  *(a2 + 24) = v23;
  v85[0] = &off_1D968;
  v85[1] = &off_1D980;
  v86[0] = &off_1E0C8;
  v86[1] = &off_1E0D8;
  v24 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
  [v4 scaledValue:v24 withOverrides:50.0];
  *(a2 + 80) = v25;

  v83[0] = &off_1D968;
  v83[1] = &off_1D980;
  v84[0] = &off_1E0E8;
  v84[1] = &off_1E028;
  v26 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
  [v4 scaledValue:v26 withOverrides:7.0];
  *(a2 + 56) = v27;

  [v4 scaledValue:10.0];
  *(a2 + 32) = v28;
  v81[0] = &off_1D968;
  v68 = xmmword_14270;
  v29 = [NSValue valueWithBytes:&v68 objCType:"{CGSize=dd}"];
  v81[1] = &off_1D980;
  v82[0] = v29;
  v67 = xmmword_14280;
  v30 = [NSValue valueWithBytes:&v67 objCType:"{CGSize=dd}"];
  v82[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
  [v4 scaledSize:v31 withOverrides:{1.0, 6.5}];
  *(a2 + 88) = v32;
  *(a2 + 96) = v33;

  v79[0] = &off_1D968;
  v66 = xmmword_14290;
  v34 = [NSValue valueWithBytes:&v66 objCType:"{CGSize=dd}"];
  v79[1] = &off_1D980;
  v80[0] = v34;
  v65 = xmmword_142A0;
  v35 = [NSValue valueWithBytes:&v65 objCType:"{CGSize=dd}"];
  v80[1] = v35;
  v36 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:2];
  [v4 scaledSize:v36 withOverrides:{0.5, 6.5}];
  *(a2 + 104) = v37;
  *(a2 + 112) = v38;

  v77[0] = &off_1D968;
  v64 = xmmword_142B0;
  v39 = [NSValue valueWithBytes:&v64 objCType:"{CGSize=dd}"];
  v77[1] = &off_1D980;
  v78[0] = v39;
  v63 = xmmword_142C0;
  v40 = [NSValue valueWithBytes:&v63 objCType:"{CGSize=dd}"];
  v78[1] = v40;
  v41 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v4 scaledSize:v41 withOverrides:{0.5, 3.5}];
  *(a2 + 120) = v42;
  *(a2 + 128) = v43;

  v75 = &off_1D980;
  v62 = xmmword_142D0;
  v44 = [NSValue valueWithBytes:&v62 objCType:"{CGSize=dd}"];
  v76 = v44;
  v45 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  [v4 scaledSize:v45 withOverrides:{1.0, 4.0}];
  *(a2 + 136) = v46;
  *(a2 + 144) = v47;

  v73 = &off_1D980;
  v61 = xmmword_142C0;
  v48 = [NSValue valueWithBytes:&v61 objCType:"{CGSize=dd}"];
  v74 = v48;
  v49 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  [v4 scaledSize:v49 withOverrides:{0.5, 3.5}];
  *(a2 + 152) = v50;
  *(a2 + 160) = v51;

  v71[0] = &off_1D968;
  v60 = xmmword_142E0;
  v52 = [NSValue valueWithBytes:&v60 objCType:"{CGSize=dd}"];
  v71[1] = &off_1D980;
  v72[0] = v52;
  v59 = xmmword_142F0;
  v53 = [NSValue valueWithBytes:&v59 objCType:"{CGSize=dd}"];
  v72[1] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
  [v4 scaledSize:v54 withOverrides:{0.5, 2.5}];
  *(a2 + 168) = v55;
  *(a2 + 176) = v56;

  [v4 setRoundingBehavior:2];
  v69[0] = &off_1D968;
  v69[1] = &off_1D980;
  v70[0] = &off_1E0F8;
  v70[1] = &off_1E108;
  v57 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  [v4 scaledValue:v57 withOverrides:44.0];
  *(a2 + 8) = v58;
}

void sub_7574(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0x4010000000000000;
  v2 = [UIColor colorWithRed:0.658823529 green:0.580392157 blue:0.364705882 alpha:1.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v5 = [UIColor colorWithRed:0.160784314 green:0.137254902 blue:0.0784313725 alpha:1.0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = [UIColor colorWithRed:0.898039216 green:0.796078431 blue:0.482352941 alpha:1.0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [UIColor colorWithRed:0.360784314 green:0.317647059 blue:0.192156863 alpha:1.0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = +[UIColor whiteColor];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = v14;

  objc_storeStrong((*(a1 + 32) + 80), *(*(a1 + 32) + 40));
  v17 = +[UIColor whiteColor];
  v18 = *(a1 + 32);
  v19 = *(v18 + 64);
  *(v18 + 64) = v17;

  *(*(a1 + 32) + 16) = 1;
}

void sub_76DC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0x4010000000000000;
  v2 = [UIColor colorWithRed:0.658823529 green:0.474509804 blue:0.329411765 alpha:1.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v5 = [UIColor colorWithRed:0.180392157 green:0.137254902 blue:0.109803922 alpha:1.0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = [UIColor colorWithRed:0.91372549 green:0.705882353 blue:0.549019608 alpha:1.0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [UIColor colorWithRed:0.364705882 green:0.282352941 blue:0.219607843 alpha:1.0];
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  v14 = +[UIColor whiteColor];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = v14;

  objc_storeStrong((*(a1 + 32) + 80), *(*(a1 + 32) + 40));
  v17 = +[UIColor whiteColor];
  v18 = *(a1 + 32);
  v19 = *(v18 + 64);
  *(v18 + 64) = v17;

  *(*(a1 + 32) + 16) = 1;
}

void sub_7844(uint64_t a1)
{
  v2 = +[UIColor whiteColor];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong((*(a1 + 32) + 48), *(*(a1 + 32) + 40));
  v5 = +[UIColor whiteColor];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  *(*(a1 + 32) + 16) = 1;
}

void sub_7F70(id a1, NTKHandView *a2)
{
  v2 = a2;
  [(NTKHandView *)v2 zRotation];
  v4 = v3 / -6.28318531;
  if (v4 > 0.5)
  {
    v4 = 1.0 - v4;
  }

  if (v4 <= 0.25)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8048;
  v7[3] = &unk_1C7A0;
  v8 = v2;
  v6 = v2;
  [UIView animateWithDuration:v7 animations:v5];
}

id sub_812C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  v4 = *(a1 + 48);
  *&v4 = v4;
  [v2 zRotationForTime:*(a1 + 40) withDuration:v4];
  [v3 setZRotation:v5];
  v6 = *(a1 + 32);
  v7 = v6[6];
  v8 = *(a1 + 56);
  *&v8 = v8;
  [v6 zRotationForTime:*(a1 + 40) withDuration:v8];
  [v7 setZRotation:v9];
  v10 = *(a1 + 32);
  v11 = v10[5];
  v12 = *(a1 + 48);
  *&v12 = v12;
  [v10 zRotationForTime:*(a1 + 64) withDuration:v12];
  [v11 setZRotation:v13];
  v14 = *(a1 + 32);
  v15 = v14[7];
  v16 = *(a1 + 56);
  *&v16 = v16;
  [v14 zRotationForTime:*(a1 + 64) withDuration:v16];
  v18 = v17;

  return [v15 setZRotation:v18];
}

void sub_84A4(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = a3;
  if (a3 < 0.0)
  {
    v7 = *(a1 + 40) + a3;
  }

  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [NSNumber numberWithDouble:v7];
  [v9 setFromValue:v11];

  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithDouble:v7 + *(a1 + 40)];
  [v12 setToValue:v13];

  [*(a1 + 32) setDuration:a4];
  [*(a1 + 32) setFrameInterval:1.0 / a5];
  v14 = [v10 layer];

  [v14 addAnimation:*(a1 + 32) forKey:@"chrono"];
}

void sub_85FC(id a1, NTKHandView *a2)
{
  v5 = [(NTKHandView *)a2 layer];
  v2 = [v5 animationForKey:@"chrono"];

  if (v2)
  {
    v3 = [v5 presentationLayer];
    v4 = [v3 valueForKeyPath:@"transform.rotation"];
    [v5 setValue:v4 forKeyPath:@"transform.rotation"];

    [v5 removeAnimationForKey:@"chrono"];
  }
}

id sub_8E04(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  return [v1 setTransform:&v3];
}

id sub_8E58(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_8EE8;
  v2[3] = &unk_1C7A0;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:0x20000 delay:v2 options:0 animations:0.2 completion:0.0];
}

id sub_8EE8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

id sub_9708(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_234B0);
  if (qword_234B8)
  {
    v3 = qword_234B8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_234C0))
  {
    qword_234B8 = v2;
    qword_234C0 = [v2 version];
    v5 = sub_97C8(qword_234C0, v2);
    v6 = qword_234A8;
    qword_234A8 = v5;
  }

  v7 = qword_234A8;
  os_unfair_lock_unlock(&unk_234B0);

  return v7;
}

id sub_97C8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSMutableArray arrayWithObjects:&off_1D9B0, &off_1D9C8, &off_1D9E0, &off_1D9F8, &off_1DA10, &off_1DA28, &off_1DA40, 0];
  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues())
  {
    if ([v2 materialType] - 5 >= &dword_0 + 2)
    {
      v4 = &off_1DA70;
    }

    else
    {
      v4 = &off_1DA58;
    }
  }

  else
  {
    v4 = &off_1DA88;
  }

  [v3 addObject:v4];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() optionWithPaletteColor:objc_msgSend(*(*(&v13 + 1) + 8 * i) forDevice:{"unsignedIntegerValue"), v2}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

void sub_ADF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_AE20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 12)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

id sub_AE90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 12)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

void sub_C12C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = [a3 display];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v6 = v5;
    [v6 setForegroundAlpha:*(a1 + 40)];
    [v6 setForegroundImageAlpha:*(a1 + 48)];
    if ([v13 isEqualToString:NTKComplicationSlotDate])
    {
      v7 = [*(a1 + 32) _dateForegroundColorForEditMode:*(a1 + 56)];
      v8 = [*(a1 + 32) _dateForegroundColorForEditMode:*(a1 + 64)];
      v9 = NTKInterpolateBetweenColors();
      [v6 setForegroundColor:v9];

      v10 = [*(a1 + 32) _dateAccentColorForEditMode:*(a1 + 56)];
      v11 = [*(a1 + 32) _dateAccentColorForEditMode:*(a1 + 64)];
      v12 = NTKInterpolateBetweenColors();
      [v6 setAccentColor:v12];
    }
  }
}

void sub_CE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_CE44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] setAlpha:*(a1 + 40)];
    WeakRetained = v3;
  }
}

id sub_D494(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*(a1 + 32) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 40) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 48) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 56) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 64) drawInRect:{v5, v7, v9, v11}];
  v12 = *(a1 + 72);

  return [v12 drawInRect:{v5, v7, v9, v11}];
}

void sub_D76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v6 = *&CGAffineTransformIdentity.c;
    v8 = *&CGAffineTransformIdentity.a;
    v7 = v8;
    v9 = v6;
    v10 = *&CGAffineTransformIdentity.tx;
    v5 = v10;
    [v3 setTransform:&v8];
    v4 = v2[3];
    v8 = v7;
    v9 = v6;
    v10 = v5;
    [v4 setTransform:&v8];
  }
}

void sub_DE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_DE44(id a1, UIView *a2)
{
  v2 = a2;
  [(UIView *)v2 setHidden:0];
  [(UIView *)v2 setAlpha:0.0];
}

void sub_DE90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[19] setAlpha:1.0];
  [WeakRetained _enumerateTimeModeViewsWithBlock:&stru_1C9E8];
  [WeakRetained _enumerateChronoModeViewsWithBlock:&stru_1CA08];
}

uint64_t sub_DF18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(WeakRetained + 13) == 1)
    {
      v4 = WeakRetained;
      if (([*(a1 + 32) editing] & 1) == 0)
      {
        [v4 _enumerateChronoModeViewsWithBlock:&stru_1CA28];
      }
    }
  }

  return _objc_release_x1();
}

void sub_E210(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_E238(id a1, UIView *a2)
{
  v2 = a2;
  [(UIView *)v2 setHidden:0];
  [(UIView *)v2 setAlpha:0.0];
}

void sub_E284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enumerateChronoModeViewsWithBlock:&stru_1CA90];
  [WeakRetained _enumerateTimeModeViewsWithBlock:&stru_1CAB0];
}

uint64_t sub_E2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(WeakRetained + 13) == 2)
    {
      v4 = WeakRetained;
      if (([*(a1 + 32) editing] & 1) == 0)
      {
        [v4 _enumerateTimeModeViewsWithBlock:&stru_1CAD0];
      }
    }
  }

  return _objc_release_x1();
}

void sub_E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v3 = [v2 display];
  [v3 setAlpha:*(a1 + 40)];
}

void sub_EF68(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_23500);
  if (qword_23508)
  {
    v3 = qword_23508 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_23510))
  {
    qword_23508 = v6;
    qword_23510 = [v6 version];
    sub_F040(v6, v7);
    xmmword_234D0 = v7[0];
    unk_234E0 = v7[1];
    xmmword_234F0 = v7[2];
  }

  v5 = unk_234E0;
  *a2 = xmmword_234D0;
  a2[1] = v5;
  a2[2] = xmmword_234F0;
  os_unfair_lock_unlock(&unk_23500);
}

void sub_F040(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v23[0] = &off_1DB18;
  v23[1] = &off_1DB30;
  v24[0] = &off_1E118;
  v24[1] = &off_1E128;
  v23[2] = &off_1DB48;
  v24[2] = &off_1E138;
  v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
  [v3 scaledValue:v4 withOverrides:10.5];
  *a2 = v5;

  v21[0] = &off_1DB18;
  v21[1] = &off_1DB30;
  v22[0] = &off_1E118;
  v22[1] = &off_1E128;
  v21[2] = &off_1DB48;
  v22[2] = &off_1E148;
  v6 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v3 scaledValue:v6 withOverrides:11.5];
  a2[1] = v7;

  [v3 scaledValue:3 withOverride:31.0 forSizeClass:31.0];
  a2[2] = v8;
  v19[0] = &off_1DB18;
  v19[1] = &off_1DB48;
  v20[0] = &off_1E158;
  v20[1] = &off_1E168;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v3 scaledValue:v9 withOverrides:52.5];
  a2[3] = v10;

  v17[0] = &off_1DB18;
  v17[1] = &off_1DB48;
  v18[0] = &off_1E178;
  v18[1] = &off_1E188;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v3 scaledValue:v11 withOverrides:34.0];
  a2[4] = v12;

  v15[0] = &off_1DB18;
  v15[1] = &off_1DB48;
  v16[0] = &off_1E198;
  v16[1] = &off_1E1A8;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v3 scaledValue:v13 withOverrides:27.5];
  a2[5] = v14;
}

void sub_F2A0(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_23588);
  if (qword_23590)
  {
    v3 = qword_23590 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != qword_23598))
  {
    qword_23590 = v8;
    qword_23598 = [v8 version];
    sub_F398(v8, v9);
    xmmword_23558 = v9[4];
    unk_23568 = v9[5];
    xmmword_23578 = v9[6];
    xmmword_23518 = v9[0];
    unk_23528 = v9[1];
    xmmword_23538 = v9[2];
    unk_23548 = v9[3];
  }

  v5 = unk_23568;
  a2[4] = xmmword_23558;
  a2[5] = v5;
  a2[6] = xmmword_23578;
  v6 = unk_23528;
  *a2 = xmmword_23518;
  a2[1] = v6;
  v7 = unk_23548;
  a2[2] = xmmword_23538;
  a2[3] = v7;
  os_unfair_lock_unlock(&unk_23588);
}

void sub_F398(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 104) = 0;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v23 = a1;
  v3 = [CLKDeviceMetrics metricsWithDevice:v23 identitySizeClass:2];
  v36[0] = &off_1DB18;
  v36[1] = &off_1DB30;
  v37[0] = &off_1E1B8;
  v37[1] = &off_1E1C8;
  v36[2] = &off_1DB60;
  v36[3] = &off_1DB90;
  v37[2] = &off_1DB78;
  v37[3] = &off_1E118;
  v36[4] = &off_1DBA8;
  v36[5] = &off_1DBC0;
  v37[4] = &off_1E1D8;
  v37[5] = &off_1E1E8;
  v36[6] = &off_1DBD8;
  v37[6] = &off_1E1F8;
  v4 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:7];
  [v3 scaledValue:v4 withOverrides:2.0];
  *a2 = v5;

  v34[0] = &off_1DB18;
  v34[1] = &off_1DB30;
  v35[0] = &off_1E208;
  v35[1] = &off_1E208;
  v34[2] = &off_1DB48;
  v34[3] = &off_1DBA8;
  v35[2] = &off_1E218;
  v35[3] = &off_1E198;
  v34[4] = &off_1DBC0;
  v34[5] = &off_1DBD8;
  v35[4] = &off_1E228;
  v35[5] = &off_1E238;
  v6 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];
  [v3 scaledValue:v6 withOverrides:16.0];
  v8 = v7;
  *(a2 + 8) = v7;

  v32[0] = &off_1DB18;
  v32[1] = &off_1DB30;
  v33[0] = &off_1E248;
  v33[1] = &off_1E1C8;
  v32[2] = &off_1DB60;
  v32[3] = &off_1DB90;
  v33[2] = &off_1DB78;
  v33[3] = &off_1E118;
  v32[4] = &off_1DBA8;
  v32[5] = &off_1DBC0;
  v33[4] = &off_1E258;
  v33[5] = &off_1E118;
  v32[6] = &off_1DBD8;
  v33[6] = &off_1E268;
  v9 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:7];
  [v3 scaledValue:v9 withOverrides:2.0];
  *(a2 + 16) = v10;

  *(a2 + 24) = v8;
  v30[0] = &off_1DB18;
  v30[1] = &off_1DB30;
  v31[0] = &off_1E1C8;
  v31[1] = &off_1E248;
  v30[2] = &off_1DB48;
  v30[3] = &off_1DB60;
  v31[2] = &off_1E208;
  v31[3] = &off_1DBF0;
  v30[4] = &off_1DB90;
  v30[5] = &off_1DBA8;
  v31[4] = &off_1E278;
  v31[5] = &off_1E258;
  v30[6] = &off_1DBC0;
  v30[7] = &off_1DBD8;
  v31[6] = &off_1E278;
  v31[7] = &off_1E268;
  v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:8];
  [v3 scaledValue:v11 withOverrides:2.0];
  *(a2 + 32) = v12;

  v28[0] = &off_1DB18;
  v28[1] = &off_1DB30;
  v29[0] = &off_1E1C8;
  v29[1] = &off_1E248;
  v28[2] = &off_1DB48;
  v28[3] = &off_1DB60;
  v28[4] = &off_1DB90;
  v29[2] = &off_1E208;
  v29[3] = &off_1DBF0;
  v28[5] = &off_1DBA8;
  v28[6] = &off_1DBC0;
  v29[4] = &off_1E278;
  v29[5] = &off_1E258;
  v28[7] = &off_1DBD8;
  v29[6] = &off_1E278;
  v29[7] = &off_1E268;
  v13 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:8];
  [v3 scaledValue:v13 withOverrides:2.0];
  *(a2 + 40) = v14;

  *(a2 + 48) = 0x4018000000000000;
  v26[0] = &off_1DB18;
  v26[1] = &off_1DB30;
  v27[0] = &off_1E248;
  v27[1] = &off_1E248;
  v26[2] = &off_1DB48;
  v26[3] = &off_1DB60;
  v27[2] = &off_1E268;
  v27[3] = &off_1DC08;
  v26[4] = &off_1DB90;
  v26[5] = &off_1DBA8;
  v27[4] = &off_1DC08;
  v27[5] = &off_1DC20;
  v26[6] = &off_1DBC0;
  v26[7] = &off_1DBD8;
  v27[6] = &off_1E1D8;
  v27[7] = &off_1E288;
  v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];
  [v3 scaledValue:v15 withOverrides:5.0];
  *(a2 + 56) = v16;

  *(a2 + 64) = 0xC02C000000000000;
  [v3 scaledValue:28.5];
  *(a2 + 88) = v17;
  [v3 scaledValue:3 withOverride:13.5 forSizeClass:13.5];
  *(a2 + 80) = v18;
  [NTKAnalogUtilities dialDiameterForDevice:v23];
  v20 = v19;

  *(a2 + 96) = v20;
  *(a2 + 72) = v20;
  [v3 setRoundingBehavior:2];
  v24[0] = &off_1DB18;
  v24[1] = &off_1DB48;
  v25[0] = &off_1E298;
  v25[1] = &off_1E2A8;
  v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 scaledValue:v21 withOverrides:30.0];
  *(a2 + 104) = v22;
}

double sub_F908(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_235C0);
  if (qword_235C8)
  {
    v3 = qword_235C8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_235D0))
  {
    v5 = qword_235A0;
  }

  else
  {
    qword_235C8 = v2;
    qword_235D0 = [v2 version];
    v5 = sub_FA08(qword_235D0, v2);
    qword_235A0 = v5;
    qword_235A8 = v6;
    qword_235B0 = v7;
    qword_235B8 = v8;
  }

  os_unfair_lock_unlock(&unk_235C0);

  return *&v5;
}

double sub_FA08(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v13[0] = &off_1DB48;
  v13[1] = &off_1DB60;
  v14[0] = &off_1E2B8;
  v14[1] = &off_1E2C8;
  v13[2] = &off_1DB90;
  v13[3] = &off_1DBA8;
  v14[2] = &off_1E2D8;
  v14[3] = &off_1E2D8;
  v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v2 scaledValue:v3 withOverrides:32.0];

  v11[0] = &off_1DB48;
  v11[1] = &off_1DB60;
  v12[0] = &off_1E1E8;
  v12[1] = &off_1E1F8;
  v11[2] = &off_1DB90;
  v11[3] = &off_1DBA8;
  v12[2] = &off_1E258;
  v12[3] = &off_1E2E8;
  v11[4] = &off_1DBC0;
  v11[5] = &off_1DBD8;
  v12[4] = &off_1E1D8;
  v12[5] = &off_1E288;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  [v2 scaledValue:v4 withOverrides:4.0];

  [v2 scaledValue:3 withOverride:24.0 forSizeClass:26.0];
  v6 = v5;
  v9[0] = &off_1DB18;
  v9[1] = &off_1DB30;
  v10[0] = &off_1E2F8;
  v10[1] = &off_1E308;
  v9[2] = &off_1DB48;
  v9[3] = &off_1DB60;
  v10[2] = &off_1E318;
  v10[3] = &off_1DC38;
  v9[4] = &off_1DB90;
  v10[4] = &off_1DC50;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  [v2 scaledValue:v7 withOverrides:10.5];

  return v6;
}