uint64_t sub_14F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_16B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

BOOL HWDeviceIsiPad()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom] == &dword_0 + 1;

  return v1;
}

BOOL HWDeviceIsLargeiPad()
{
  result = HWDeviceIsiPad();
  if (result)
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;

    if (v3 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    return v6 > 768.0;
  }

  return result;
}

BOOL HWDeviceIsiPhone()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

BOOL HWDeviceSmallScreen()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  return v5 == 320.0;
}

BOOL HWDeviceMediumScreen()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  return v5 == 375.0;
}

BOOL HWDeviceLargeScreen()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  return v5 == 414.0;
}

void sub_3340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_3368(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCurrentHandwritingItem:v3];

  if (HWDeviceIsiPad())
  {
    [WeakRetained _done:0];
  }

  else
  {
    [WeakRetained _resetScrollView:1];
    [WeakRetained _sendTypingIndicator];
  }
}

id sub_459C(uint64_t a1)
{
  [*(*(a1 + 32) + 320) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 328);

  return [v3 setAlpha:v2];
}

id sub_7EBC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_32270;
  v7 = qword_32270;
  if (!qword_32270)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_93B8;
    v3[3] = &unk_28748;
    v3[4] = &v4;
    sub_93B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_7F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_92BC(id a1)
{
  v1 = +[UIDevice currentDevice];
  v2 = [v1 _graphicsQuality];

  v3 = 3902;
  if (v2 == &dword_8 + 2)
  {
    v3 = 2020;
  }

  qword_32258 = v3;
}

void sub_9310(id a1)
{
  if (HWDeviceIsiPad())
  {
    v1 = &unk_244F0;
    if (HWDeviceIsLargeiPad())
    {
      v2 = +[UIScreen mainScreen];
      [v2 bounds];
      v4 = v3;
      v6 = v5;

      if (v4 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (v7 > 834.0)
      {
        v1 = &unk_243D0;
      }
    }
  }

  else if (HWDeviceSmallScreen())
  {
    v1 = &unk_24610;
  }

  else
  {
    v1 = &unk_24730;
  }

  qword_32250 = v1;
}

Class sub_93B8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_32278)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_94FC;
    v4[4] = &unk_28780;
    v4[5] = v4;
    v5 = off_28768;
    v6 = 0;
    qword_32278 = _sl_dlopen();
    v2 = v4[0];
    if (qword_32278)
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
  result = objc_getClass("CKBrowserItemPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_13940();
  }

  qword_32270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_94FC()
{
  result = _sl_dlopen();
  qword_32278 = result;
  return result;
}

id sub_9970(uint64_t a1)
{
  *(*(a1 + 32) + 32) = [*(a1 + 40) userInterfaceStyle];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _setupLayerAndStateControllerWithStateName:v3];
}

void sub_B170(uint64_t a1)
{
  v2 = +[HWRecentsManager sharedManager];
  [v2 deleteItem:*(a1 + 32)];

  v3 = [*(a1 + 40) _indexPathForIndex:*(a1 + 56)];
  v4 = [*(a1 + 48) cellForItemAtIndexPath:v3];
  [v4 setSelected:1];
  v5 = *(a1 + 48);
  v7 = v3;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 deleteItemsAtIndexPaths:v6];
}

void sub_B9C8(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) leftShadow];
  [v4 setAlpha:v3];

  LOBYTE(v5) = *(a1 + 41);
  v6 = v5;
  v7 = [*(a1 + 32) rightShadow];
  [v7 setAlpha:v6];
}

void sub_BC4C(uint64_t a1)
{
  [*(a1 + 32) pickerDidExitEditMode:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 40) collectionView];
  [v6 setContentInset:{v2, v3, v4, v5}];

  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = [*(a1 + 40) collectionView];
  [v9 setContentOffset:{v7, v8}];
}

void sub_C388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20 + 8);
  objc_destroyWeak(v20 + 7);
  objc_destroyWeak(v20 + 6);
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 80));
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

void sub_C3CC(uint64_t a1)
{
  v2 = [*(a1 + 32) drawing];
  v7 = vsubq_f64(vextq_s8(_PlatformSpec, _PlatformSpec, 8uLL), vaddq_f64(*&qword_322F0, xmmword_32300));
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:*(a1 + 72)];
  [UITraitCollection setCurrentTraitCollection:v3];

  v4 = +[UIColor inkColor];
  v5 = [DKInkThumbnailRenderer imageForDrawing:v2 fittingInSize:v4 color:0 highFidelity:v7.f64[1]];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C558;
  block[3] = &unk_28898;
  objc_copyWeak(&v11, (a1 + 48));
  objc_copyWeak(&v12, (a1 + 56));
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  objc_copyWeak(&v13, (a1 + 64));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void sub_C558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (v4)
  {
    [WeakRetained setObject:v4 forKey:*(a1 + 40)];
  }

  v5 = [v3 uuidString];
  v6 = [v5 isEqual:*(a1 + 40)];

  if (v6)
  {
    v7 = v3;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained((a1 + 64));
  v7 = [v8 _cellViewForUUID:*(a1 + 40)];

  if (v7)
  {
LABEL_7:
    v9 = [v7 imageView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_C6C4;
    v10[3] = &unk_28870;
    v11 = v7;
    v12 = *(a1 + 32);
    [UIView transitionWithView:v9 duration:5242880 options:v10 animations:0 completion:0.18];
  }

LABEL_8:
}

void sub_C6C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

void sub_DDE4(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) deleteButton];
  [v3 setAlpha:v2];
}

void sub_E564(id a1)
{
  if (HWDeviceIsiPad())
  {
    if (HWDeviceIsLargeiPad())
    {
      _PlatformSpec = xmmword_24A20;
      *&qword_322F0 = xmmword_24A30;
      xmmword_32300 = xmmword_24A30;
      *&qword_32310 = xmmword_24A40;
      xmmword_32320 = xmmword_24A50;
      *&qword_32330 = xmmword_24A60;
      xmmword_32340 = xmmword_24A70;
      *&qword_32350 = xmmword_24A80;
      __asm { FMOV            V0.2D, #20.0 }

      xmmword_32360 = _Q0;
      qword_32370 = *&UIFontWeightRegular;
      *&qword_32378 = xmmword_24A90;
      v6 = xmmword_24930;
      *algn_32388 = xmmword_24930;
      v7 = xmmword_24AA0;
    }

    else
    {
      _PlatformSpec = xmmword_24980;
      *&qword_322F0 = xmmword_24990;
      xmmword_32300 = xmmword_24990;
      *&qword_32310 = xmmword_249A0;
      xmmword_32320 = xmmword_249B0;
      *&qword_32330 = xmmword_249C0;
      xmmword_32340 = xmmword_249D0;
      *&qword_32350 = xmmword_249E0;
      xmmword_32360 = xmmword_249F0;
      qword_32370 = *&UIFontWeightRegular;
      *&qword_32378 = xmmword_24A00;
      v6 = xmmword_24930;
      *algn_32388 = xmmword_24930;
      v7 = xmmword_24A10;
    }

    *&qword_32398 = v7;
    *&qword_323A8 = v6;
  }

  else
  {
    v8 = HWDeviceSmallScreen();
    _PlatformSpec = xmmword_248E0;
    *&qword_322F0 = xmmword_248F0;
    xmmword_32300 = xmmword_248F0;
    *&qword_32310 = xmmword_24900;
    if (v8)
    {
      xmmword_32320 = xmmword_24950;
      *&qword_32330 = 0u;
      __asm { FMOV            V0.2D, #18.0 }

      xmmword_32340 = 0u;
      *&qword_32350 = _Q0;
      *(&xmmword_32360 + 1) = 0x402C000000000000;
      qword_32370 = *&UIFontWeightLight;
      *&qword_32378 = xmmword_24960;
      v10 = xmmword_24970;
    }

    else
    {
      xmmword_32320 = xmmword_24910;
      *&qword_32330 = 0u;
      __asm { FMOV            V0.2D, #22.0 }

      xmmword_32340 = 0u;
      *&qword_32350 = _Q0;
      *(&xmmword_32360 + 1) = 0x402C000000000000;
      qword_32370 = *&UIFontWeightLight;
      *&qword_32378 = xmmword_24920;
      v10 = xmmword_24930;
    }

    *algn_32388 = v10;
    *&qword_32398 = xmmword_24940;
    qword_323A8 = 0;
    qword_323B0 = 0;
  }
}

id sub_EB58()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_32290;
  v7 = qword_32290;
  if (!qword_32290)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_F63C;
    v3[3] = &unk_28748;
    v3[4] = &v4;
    sub_F63C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_EC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_EC38()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_322A0;
  v7 = qword_322A0;
  if (!qword_322A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_F808;
    v3[3] = &unk_28748;
    v3[4] = &v4;
    sub_F808(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_F63C(uint64_t a1)
{
  sub_F694();
  result = objc_getClass("CKUIBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_32290 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_139A0();
    return sub_F694();
  }

  return result;
}

uint64_t sub_F694()
{
  v3[0] = 0;
  if (!qword_32298)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_F794;
    v3[4] = &unk_28780;
    v3[5] = v3;
    v4 = off_28950;
    v5 = 0;
    qword_32298 = _sl_dlopen();
  }

  v0 = qword_32298;
  v1 = v3[0];
  if (!qword_32298)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_F794()
{
  result = _sl_dlopen();
  qword_32298 = result;
  return result;
}

Class sub_F808(uint64_t a1)
{
  sub_F694();
  result = objc_getClass("CKBrowserDragManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_322A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_139C8();
    return sub_F860(v3);
  }

  return result;
}

void *sub_F860(uint64_t a1)
{
  v2 = sub_F694();
  result = dlsym(v2, "CKSetHandwritingShouldBeAutoDisplayed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_322A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_101F8()
{
  qword_322B0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

int64_t sub_10614(id a1, HWHandwritingItem *a2, HWHandwritingItem *a3)
{
  v4 = a3;
  v5 = [(HWHandwritingItem *)a2 creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [(HWHandwritingItem *)v4 creationDate];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v7 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v7 < v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

void sub_10A34(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) payloadData];
        if (v8)
        {
          v9 = [HWEncoding decodeHandwritingFromData:v8];
          [*(a1 + 32) _addItem:v9 dataRepresentation:v8 persist:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

int64_t sub_11344(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = [(NSURL *)a2 lastPathComponent];
  v6 = [(NSURL *)v4 lastPathComponent];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

void sub_11A30(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_322C0;
  qword_322C0 = v1;

  [qword_322C0 setQualityOfService:25];
  [qword_322C0 setMaxConcurrentOperationCount:-1];
  [qword_322C0 setName:@"Handwriting_Renderer_Queue"];
  v3 = objc_alloc_init(HWSharedRenderQueueApplicationObserver);
  v4 = qword_322C8;
  qword_322C8 = v3;

  v5 = qword_322C0;
  v6 = qword_322C8;

  [v6 setOperationQueue:v5];
}

void sub_11F20(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_11F64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_11F98(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 UUIDString];
  NSLog(@"Creating %@ file at path at path %@", v3, *(a1 + 40));

  v4 = +[UITraitCollection currentTraitCollection];
  if (*(a1 + 96))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v5];
  [UITraitCollection setCurrentTraitCollection:v6];

  v7 = [*(a1 + 32) drawing];
  v8 = [DKInkThumbnailRenderer imageForDrawing:v7 fittingInSize:*(a1 + 48) color:*(a1 + 97) highFidelity:*(a1 + 80), *(a1 + 88)];

  [UITraitCollection setCurrentTraitCollection:v4];
  v9 = UIImagePNGRepresentation(v8);
  if ([v9 writeToURL:*(*(*(a1 + 64) + 8) + 40) atomically:1])
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12150;
  block[3] = &unk_28A38;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v13 = v10;
  v14 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_12150(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_12178(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_12BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_12BE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cleanupAfterAnimation];
}

void sub_12D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_12D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _teardownInkView];
  [WeakRetained setNeedsLayout];
}

void sub_12FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_12FE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[UITraitCollection currentTraitCollection];
    v4 = [UITraitCollection traitCollectionWithUserInterfaceStyle:*(a1 + 56)];
    [UITraitCollection setCurrentTraitCollection:v4];

    v5 = [WeakRetained handwriting];
    v6 = [v5 drawing];
    v7 = [DKInkThumbnailRenderer imageForDrawing:v6 fittingInSize:*(a1 + 32) color:1 highFidelity:*(a1 + 80), *(a1 + 88)];

    [UITraitCollection setCurrentTraitCollection:v3];
    if (v7)
    {
      [WeakRetained setCachedImage:v7];
    }

    else
    {
      [WeakRetained setCachedSize:{*(a1 + 96), *(a1 + 104)}];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_13180;
    block[3] = &unk_28AE8;
    v11 = WeakRetained;
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_13180(uint64_t a1)
{
  [*(a1 + 32) setNeedsDisplay];
  v2 = [*(a1 + 32) cachedImage];
  v3 = [*(a1 + 32) imageView];
  [v3 setImage:v2];

  v4 = [*(a1 + 32) imageView];
  [v4 setContentMode:4];

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v9 = @"CKTranscriptPluginViewSnapshotUserInfoKey";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"CKTranscriptPluginViewReadyForSnapshotNotification" object:*(a1 + 32) userInfo:v7];
}

uint64_t sub_1385C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1397C()
{
  dlerror();
  abort_report_np();
  return sub_139A0();
}