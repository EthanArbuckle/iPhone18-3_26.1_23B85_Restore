void sub_16C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_16D8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_27820)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_C9FC;
    v4[4] = &unk_20CC0;
    v4[5] = v4;
    v5 = off_20CA8;
    v6 = 0;
    qword_27820 = _sl_dlopen();
    v2 = v4[0];
    if (qword_27820)
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
  result = objc_getClass("NFGFaceGalleryViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_FCF8();
  }

  qword_27818 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__n128 sub_254C@<Q0>(uint64_t a1@<X8>)
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  sub_26B4(v3, v3);

  v4 = unk_27770;
  *(a1 + 96) = xmmword_27760;
  *(a1 + 112) = v4;
  *(a1 + 128) = xmmword_27780;
  v5 = *&qword_27730;
  *(a1 + 32) = xmmword_27720;
  *(a1 + 48) = v5;
  v6 = *&qword_27750;
  *(a1 + 64) = *(&xmmword_27738 + 8);
  *(a1 + 80) = v6;
  result = unk_27710;
  *a1 = xmmword_27700;
  *(a1 + 16) = result;
  return result;
}

void sub_25D4(uint64_t a1@<X8>)
{
  v2 = +[CLKDevice currentDevice];
  sub_275C(v2, a1);
}

uint64_t sub_26B4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_27794);
  if (qword_27798)
  {
    v3 = qword_27798 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_277A0))
  {
    v5 = byte_27790;
  }

  else
  {
    qword_27798 = v2;
    qword_277A0 = [v2 version];
    sub_2848(qword_277A0, v2);
    v5 = 1;
    byte_27790 = 1;
  }

  os_unfair_lock_unlock(&stru_27794);

  return v5;
}

void sub_275C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_27860);
  if (qword_27868)
  {
    v3 = qword_27868 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_27870))
  {
    qword_27868 = v6;
    qword_27870 = [v6 version];
    sub_2F00(v6, v7);
    xmmword_27828 = v7[0];
    unk_27838 = v7[1];
    xmmword_27848 = v7[2];
    qword_27858 = v8;
  }

  v5 = unk_27838;
  *a2 = xmmword_27828;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27848;
  *(a2 + 48) = qword_27858;
  os_unfair_lock_unlock(&unk_27860);
}

double sub_2848(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _os_feature_enabled_impl();
  v4 = 33.0;
  if (v3)
  {
    v4 = 20.0;
  }

  *&xmmword_27700 = v4;
  *(&xmmword_27700 + 8) = xmmword_155B0;
  qword_27718 = 0x4008000000000000;
  v5 = [v2 deviceCategory];

  if (v5 > 3)
  {
    if (v5 == &dword_4 || v5 == (&dword_4 + 1) || v5 == (&dword_4 + 2))
    {
      xmmword_27720 = xmmword_155C0;
      qword_27730 = 0x4061800000000000;
      v6 = xmmword_155D0;
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v5 == (&dword_0 + 1))
  {
    xmmword_27720 = xmmword_15620;
    qword_27730 = 0x4060400000000000;
    v6 = xmmword_15630;
    v7 = 11.0;
    goto LABEL_13;
  }

  if (v5 != (&dword_0 + 2))
  {
    if (v5 == (&dword_0 + 3))
    {
      xmmword_27720 = xmmword_155E0;
      qword_27730 = 0x4061800000000000;
      v6 = xmmword_155F0;
LABEL_12:
      v7 = 6.0;
      goto LABEL_13;
    }

LABEL_19:
    v7 = *&xmmword_27720;
    v6 = *(&xmmword_27720 + 8);
    goto LABEL_13;
  }

  xmmword_27720 = xmmword_15600;
  qword_27730 = 0x4060800000000000;
  v6 = xmmword_15610;
  v7 = 10.0;
LABEL_13:
  xmmword_27738 = vaddq_f64(v6, vdupq_lane_s64(COERCE__INT64(*&qword_27718 + v7 + *&qword_27718 + v7), 0));
  v8 = _os_feature_enabled_impl();
  v9 = 23.0;
  if (v8)
  {
    v9 = 16.0;
  }

  v10 = 9.0;
  if (v8)
  {
    v10 = 0.0;
  }

  qword_27748 = *&v9;
  qword_27758 = *&v10;
  qword_27750 = 0x4035800000000000;
  xmmword_27760 = xmmword_15640;
  unk_27770 = xmmword_15640;
  result = 4.0;
  xmmword_27780 = xmmword_15650;
  return result;
}

void sub_2F00(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 24) = 0x4008000000000000;
  *(a2 + 40) = 0x4008000000000000;
  *(a2 + 48) = 0;
  v9 = v3;
  v4 = [v3 deviceCategory];
  if ((v4 - 3) < 4)
  {
    *a2 = 0x401C000000000000;
    *(a2 + 16) = 0x401C000000000000;
    *(a2 + 32) = 0x4014000000000000;
    v5 = v9;
LABEL_3:
    [v5 screenCornerRadius];
    v7 = v9;
LABEL_4:
    *(a2 + 48) = v6;
    goto LABEL_5;
  }

  if (v4 == &dword_0 + 2)
  {
    *a2 = 0x4026000000000000;
    *(a2 + 16) = 0x4026000000000000;
    *(a2 + 32) = 0x401C000000000000;
    v5 = v9;
    goto LABEL_3;
  }

  v8 = v4 == &dword_0 + 1;
  v7 = v9;
  if (v8)
  {
    *a2 = 0x4026000000000000;
    *(a2 + 16) = 0x4028000000000000;
    *(a2 + 32) = 0x4020000000000000;
    v6 = 12.0;
    goto LABEL_4;
  }

LABEL_5:
}

id sub_55C4(id *a1, void *a2)
{
  v3 = a2;
  v4 = NTKCCustomizationLocalizedString();
  v5 = [UIImage systemImageNamed:@"applewatch.watchface"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_5968;
  v26[3] = &unk_207B0;
  v27 = a1[4];
  v28 = a1[5];
  v6 = [UIAction actionWithTitle:v4 image:v5 identifier:0 handler:v26];

  objc_initWeak(&location, a1[6]);
  v7 = NTKClockFaceLocalizedString();
  v8 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_5978;
  v22[3] = &unk_20818;
  objc_copyWeak(&v24, &location);
  v23 = a1[5];
  v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:v22];

  v10 = NTKCCustomizationLocalizedString();
  v11 = [UIImage systemImageNamed:@"trash"];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_59F4;
  v19 = &unk_207B0;
  v20 = a1[4];
  v21 = a1[5];
  v12 = [UIAction actionWithTitle:v10 image:v11 identifier:0 handler:&v16];

  [v12 setAttributes:{2, v16, v17, v18, v19}];
  v29[0] = v6;
  v29[1] = v9;
  v29[2] = v12;
  v13 = [NSArray arrayWithObjects:v29 count:3];
  v14 = [UIMenu menuWithTitle:&stru_21148 children:v13];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v14;
}

void sub_592C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = +[NTKGreenfieldCompanionShareController sharedController];
    [v3 shareWatchFace:*(a1 + 32) fromViewController:v4 completion:&stru_207F0];

    WeakRetained = v4;
  }
}

id sub_5B58(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setPresentedDetailVC:*(a1 + 32)];
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 showViewController:v3 sender:v2];
}

NSString *NTKFaceSnapshotRendererSuccessLogMessage(int a1)
{
  v1 = &stru_21148;
  if (a1)
  {
    v1 = @" hasBlankComplication";
  }

  return [NSString stringWithFormat:@"snapshot succeeded%@", v1];
}

void sub_76AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_76D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) complicationForSlot:a2];
  *(*(*(a1 + 40) + 8) + 24) = [v5 complicationType] == &dword_1C + 3;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

void sub_796C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(1);
  v3 = qword_277C0;
  qword_277C0 = v2;

  v4 = [NSString stringWithFormat:@"com.apple.ntkd.facesnapshotter"];
  v5 = dispatch_queue_create([v4 UTF8String], 0);
  v6 = qword_277C8;
  qword_277C8 = v5;

  v7 = +[NSMutableArray array];
  v8 = qword_277D0;
  qword_277D0 = v7;

  byte_277D8 = 0;
  v9 = +[NSMapTable strongToStrongObjectsMapTable];
  v10 = qword_277A8;
  qword_277A8 = v9;

  byte_277B0 = 0;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Waiting on NTKCompanionAppLibrary (AppConduit) so apps are known before we snapshot", buf, 2u);
  }

  v12 = +[NTKCompanionAppLibrary sharedAppLibrary];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7B10;
  v13[3] = &unk_20890;
  v14 = *(a1 + 32);
  [v12 prewarmCompanionDaemonWithCompletion:v13];
}

void sub_7B10(uint64_t a1)
{
  v1 = qword_277C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7BA0;
  block[3] = &unk_20890;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

id sub_7BA0(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary loaded!", v4, 2u);
  }

  byte_277B0 = 1;
  return [*(a1 + 32) _queue_serviceRequestIfIdle];
}

void sub_7CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingID];
  if (v2)
  {
    v3 = [qword_277A8 objectForKey:v2];
    if (!v3)
    {
      v3 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:*(a1 + 32)];
      [qword_277A8 setObject:v3 forKey:v2];
      v4 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Listening for collection load of device uuid %@", &v5, 0xCu);
      }

      if (([v3 hasLoaded] & 1) == 0)
      {
        [v3 addObserver:*(a1 + 40)];
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_7EDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 hasBlankComplications];
  v5 = [v3 snapshot];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_82D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 finishWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_F704();
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_83BC;
  v6[3] = &unk_20890;
  v6[4] = *(a1 + 40);
  dispatch_async(qword_277C8, v6);
}

void sub_83C4(uint64_t a1)
{
  v2 = [NTKFaceSnapshotRequest alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_84E0;
  v11 = &unk_20990;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v5 = [(NTKFaceSnapshotRequest *)v2 initWithFace:v3 options:v4 completion:&v8];
  v6 = qword_277D0;
  v7 = [v6 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count", v8, v9, v10, v11), 1024, &stru_209D0}];
  [qword_277D0 insertObject:v5 atIndex:v7];
  [*(a1 + 56) _queue_serviceRequestIfIdle];
}

void sub_84E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [v10 finishWithError:&v17];
  v12 = v17;
  if ((v11 & 1) == 0)
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_F76C();
    }
  }

  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 prettyDescription];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Snapshot request finished:\n%@\n", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v7, v9);
  }
}

int64_t sub_8664(id a1, NTKFaceSnapshotRequest *a2, NTKFaceSnapshotRequest *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NTKFaceSnapshotRequest *)v4 options];
  v7 = [v6 objectForKey:@"NTKSnapshotPriorityKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NTKFaceSnapshotRequest *)v5 options];
  v10 = [v9 objectForKey:@"NTKSnapshotPriorityKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 unsignedIntegerValue];
  }

  else
  {
    v11 = 0;
  }

  if (v8 == v11)
  {
    v12 = [(NTKFaceSnapshotRequest *)v4 creationDate];
    v13 = [(NTKFaceSnapshotRequest *)v5 creationDate];
    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = v8 < v11;
  }

  return v14;
}

void sub_8998(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) options];
  v4 = [v3 objectForKey:@"NTKSnapshotMetricsKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_F7D4(v2, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
    v6 = v4;
    v4 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v5 = [v4 childTaskNamed:@"ServicingRequest" error:&v17];
  v6 = v17;
  if (!v5)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_F844();
    }

LABEL_8:
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_8B24;
  v16[3] = &unk_20890;
  v16[4] = v14;
  [v14 _mainQueue_serviceRequest:v15 metrics:v5 completion:v16];
}

void sub_8B24(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Signalling waiting queue that main queue is ready", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8BF8;
  block[3] = &unk_20890;
  block[4] = *(a1 + 32);
  dispatch_async(qword_277C8, block);
}

void sub_8E54(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 setDataMode:3];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUIOnlyKey"];
  [v14 setSupressesNonSnapshotUI:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUseCanonicalContentKey"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  [v14 setShowsCanonicalContent:v6];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotShouldUseSampleComplicationTemplatesKey"];
  [v14 setShouldUseSampleTemplate:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotUnadornedContentKey"];
  [v14 setShowContentForUnadornedSnapshot:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotForcedLockedKey"];
  [v14 setShowsLockedUI:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotIgnoreSnapshotImages"];
  [v14 setIgnoreSnapshotImages:{objc_msgSend(v10, "BOOLValue")}];

  v11 = &dword_0 + 1;
  [v14 setWidgetHostPriorityTransientSnapshot:1];
  v12 = [*(a1 + 32) objectForKeyedSubscript:@"NTKSnapshotWidgetsAsPlaceholdersKey"];
  v13 = v12;
  if (v12)
  {
    v11 = [v12 BOOLValue];
  }

  [v14 setSnapshotWidgetsAsPlaceholders:v11];
}

void sub_9B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  objc_destroyWeak((v51 + 64));
  _Block_object_dispose(&a51, 8);
  objc_destroyWeak(&STACK[0x208]);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  objc_destroyWeak(&STACK[0x280]);
  _Block_object_dispose((v52 - 208), 8);
  _Block_object_dispose((v52 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_9BC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v7 = [a3 complication];
    if ([v7 complicationType] == &dword_1C + 3)
    {
      v8 = [v6 display];
      v9 = [v8 complicationTemplate];

      if (!v9)
      {
        v10 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v7 clientIdentifier];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Missing complication template for %@", &v12, 0xCu);
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }
}

id sub_9D14(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_9D48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  *&v6 = COERCE_DOUBLE(a3);
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (*(a1 + 32))
  {
    NTKSetIdealizedDate();
    CLKSetCompanionDisplayDate();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 136));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setRootViewController:0];
    [v8 _hideSnapshotWindow];
  }

  v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
  if (v5)
  {
    [v5 size];
    NSStringFromCGSize(v107);
    *&v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 112) + 8) + 24))
      {
        v12 = @" hasBlankComplication";
      }

      else
      {
        v12 = &stru_21148;
      }

      v13 = [NSString stringWithFormat:@"snapshot succeeded%@", v12];
      v14 = *(a1 + 40);
      *buf = 134218754;
      v100 = v9;
      v101 = 2112;
      v102 = v13;
      v103 = 2112;
      v104 = v10;
      v105 = 2112;
      v106 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%.2f seconds - %@: %@ %@", buf, 0x2Au);
    }

    v15 = *(a1 + 48);
    v16 = v15;
    v17 = *(a1 + 152);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = *(*(*(a1 + 112) + 8) + 24);
      *buf = 138412546;
      v100 = *&v10;
      v101 = 1024;
      LODWORD(v102) = v18;
      _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, v17, "FaceSnapshot", "size=%@ hasBlankComplication=%d", buf, 0x12u);
    }
  }

  else
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v73 = *(a1 + 40);
      *buf = 134218498;
      v100 = v9;
      v101 = 2112;
      v102 = v73;
      v103 = 2112;
      v104 = v6;
      _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%.2f seconds - snapshot failed: %@, error: %@", buf, 0x20u);
    }

    v20 = *(a1 + 48);
    v10 = v20;
    v21 = *(a1 + 152);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 138412290;
      v100 = *&v6;
      _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, v21, "FaceSnapshot", "snapshot failed: %@", buf, 0xCu);
    }
  }

  v22 = *(*(*(a1 + 120) + 8) + 40);
  v95 = 0;
  v23 = [v22 finishWithError:&v95];
  v24 = v95;
  v25 = *(a1 + 56);
  if (v25 && (v23 & 1) == 0)
  {
    v26 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_FA4C();
    }

    v25 = *(a1 + 56);
  }

  if (v25)
  {
    v94 = 0;
    v27 = [v25 finishWithError:&v94];
    v28 = v94;
    if ((v27 & 1) == 0)
    {
      v29 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_FAB4();
      }
    }
  }

  v81 = a1;
  if ([*(a1 + 64) usesComplications])
  {
    v75 = v24;
    v76 = v8;
    v78 = v5;
    context = objc_autoreleasePoolPush();
    v77 = v6;
    v30 = [v6 userInfo];
    v31 = +[NSMutableSet set];
    v32 = [*(a1 + 64) allVisibleComplicationsForCurrentConfiguration];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v91;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v91 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v90 + 1) + 8 * i);
          v38 = [v30 objectForKey:*&v37];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v79 = [*(v81 + 64) name];
              *buf = 138412802;
              v100 = v37;
              v101 = 2112;
              v102 = v79;
              v103 = 2112;
              v104 = v38;
              _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Slot %@ for %@ had error %@", buf, 0x20u);
            }

            [v31 addObject:*&v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v34);
    }

    v40 = [v31 copy];

    objc_autoreleasePoolPop(context);
    if ([v40 count])
    {
      v41 = v81;
      *(*(*(v81 + 112) + 8) + 24) = 1;
      v42 = +[NSMutableDictionary dictionary];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v80 = v40;
      v43 = v40;
      v44 = [v43 countByEnumeratingWithState:&v86 objects:v97 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v87;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v87 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v86 + 1) + 8 * j);
            v49 = [*(v41 + 64) complicationForSlot:v48];
            if (v49)
            {
              [v42 setObject:v49 forKey:v48];
            }

            v50 = *(v81 + 64);
            v51 = +[NTKComplication nullComplication];
            v52 = v50;
            v41 = v81;
            [v52 setComplication:v51 forSlot:v48];
          }

          v45 = [v43 countByEnumeratingWithState:&v86 objects:v97 count:16];
        }

        while (v45);
      }

      v53 = [*(v41 + 64) dailySnapshotKey];
      v54 = v41;
      v55 = v53;
      v56 = [*(v54 + 64) unsafeDailySnapshotKey];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v57 = v43;
      v58 = [v57 countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v83;
        do
        {
          for (k = 0; k != v59; k = k + 1)
          {
            if (*v83 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v82 + 1) + 8 * k);
            v63 = [v42 objectForKey:v62];
            if (v63)
            {
              [*(v81 + 64) setComplication:v63 forSlot:v62];
            }
          }

          v59 = [v57 countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v59);
      }

      v40 = v80;
    }

    else
    {
      v56 = 0;
      v55 = 0;
    }

    v6 = v77;
    v5 = v78;
    v24 = v75;
    v8 = v76;
    if (v78)
    {
      v64 = [NTKFaceSnapshotResult alloc];
      v65 = v55;
      if (v55)
      {
LABEL_69:
        v66 = v56;
        if (!v56)
        {
          v66 = *(v81 + 80);
        }

        v67 = [v64 initWithCachedFile:0 snapshotKey:v65 rawSnapshotKey:v66 context:*(v81 + 88) blankComplications:*(*(*(v81 + 112) + 8) + 24) snapshot:v5];
        v68 = [*(v81 + 96) completion];

        if (v68)
        {
          v69 = [*(v81 + 96) completion];
          (v69)[2](v69, v67, *(v81 + 56), 0);
        }

        goto LABEL_76;
      }

LABEL_68:
      v55 = 0;
      v65 = *(v81 + 72);
      goto LABEL_69;
    }
  }

  else
  {
    if (v5)
    {
      v64 = [NTKFaceSnapshotResult alloc];
      v56 = 0;
      goto LABEL_68;
    }

    v55 = 0;
    v56 = 0;
  }

  v70 = [*(v81 + 96) completion];

  if (v70)
  {
    v67 = [*(v81 + 96) completion];
    (*(v67 + 2))(v67, 0, *(v81 + 56), v6);
LABEL_76:
  }

  v71 = *(*(v81 + 128) + 8);
  v72 = *(v71 + 40);
  *(v71 + 40) = 0;

  (*(*(v81 + 104) + 16))();
}

void sub_A680(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v9, v5);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_A718(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = [NSError errorWithDomain:kNTKFaceSnapshotRendererErrorDomain code:2 userInfo:0];
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }
}

void sub_A7C8(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A8A4;
  v4[3] = &unk_20B78;
  v4[4] = *(a1 + 48);
  objc_copyWeak(&v5, (a1 + 64));
  v4[5] = *(a1 + 56);
  [v2 finalizeForSnapshottingWithMetrics:v3 completion:v4];
  objc_destroyWeak(&v5);
}

void sub_A8A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_A964;
  v6[3] = &unk_20B50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(&v10);
}

void sub_A964(uint64_t a1)
{
  +[CATransaction flush];
  +[CATransaction synchronize];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [objc_opt_class() renderSnapshotFromWindow:WeakRetained[1]];
      objc_autoreleasePoolPop(v2);
      if (!v3)
      {
        v15 = [NSError errorWithDomain:kNTKFaceSnapshotRendererErrorDomain code:4 userInfo:0];
        (*(*(*(*(a1 + 48) + 8) + 40) + 16))();

        goto LABEL_11;
      }

      v4 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    }

    else
    {
      v3 = [NSError errorWithDomain:kNTKFaceSnapshotRendererErrorDomain code:3 userInfo:0];
      v4 = *(*(*(*(a1 + 48) + 8) + 40) + 16);
    }

    v4();
LABEL_11:

    return;
  }

  v6 = *(a1 + 32);
  v5 = a1 + 32;
  v7 = _NTKLoggingObjectForDomain();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_FB1C(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "finalizeForSnapshotting completed after timeout", buf, 2u);
  }
}

void sub_AB50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 finishWithError:&v10];
  v4 = v10;
  if (*(a1 + 40) && (v3 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_FB8C();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AC5C;
  block[3] = &unk_20BC8;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_AC5C(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "preform prewarm routine finished after timeout", v5, 2u);
    }
  }
}

void sub_AEB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_BE64(id a1)
{
  qword_277E8 = os_log_create("com.apple.nanotimekit.facesupport.notifications", "FaceSupport");

  _objc_release_x1();
}

uint64_t sub_C070(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_27804);
  if (qword_27808)
  {
    v4 = qword_27808 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_27810))
  {
    qword_27808 = v3;
    qword_27810 = [v3 version];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_C180;
    v8[3] = &unk_20C60;
    v9 = *(a1 + 32);
    byte_27800 = sub_C180(v8, v3);
  }

  v6 = byte_27800;
  os_unfair_lock_unlock(&stru_27804);

  return v6;
}

uint64_t sub_C180(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C214;
  v4[3] = &unk_20C38;
  v5 = *(a1 + 32);
  sub_C214(v4, a2);

  return 1;
}

void sub_C214(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[NTKCompanionFaceCollectionsManager sharedInstance];
  v4 = [v6 sharedFaceCollectionForDevice:v3 forCollectionIdentifier:*(a1 + 32)];

  v5 = qword_277F8;
  qword_277F8 = v4;
}

void sub_C604(uint64_t a1)
{
  v1 = [*(a1 + 32) superGalleryViewController];
  [v1 loadViewIfNeeded];
}

uint64_t sub_C9FC()
{
  result = _sl_dlopen();
  qword_27820 = result;
  return result;
}

void sub_CEF4(uint64_t a1)
{
  v2 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:0];
  [*(*(a1 + 32) + 32) scrollToRowAtIndexPath:v2 atScrollPosition:2 animated:0];
}

void sub_D858(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Library List: user deleting face at indexPath %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 40) suspendUpdatesFromDaemon];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DA04;
  v11[3] = &unk_20D10;
  v12 = v4;
  v13 = v7;
  v14 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DCB0;
  v10[3] = &unk_20D38;
  v10[4] = *(a1 + 32);
  v9 = v4;
  [v8 performBatchUpdates:v11 completion:v10];
}

void sub_DA04(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Library List: starting batch updates", &v17, 2u);
  }

  v3 = *(a1 + 32);
  if (v3 && (v4 = [v3 row], v4 < objc_msgSend(*(*(a1 + 40) + 40), "numberOfFaces")))
  {
    v5 = [*(a1 + 32) row];
    v6 = [*(*(a1 + 40) + 40) faceAtIndex:v5];
    v7 = [*(*(a1 + 40) + 40) selectedFaceIndex];
    [*(*(a1 + 40) + 40) removeFace:v6 suppressingCallbackToObserver:?];
    [*(a1 + 40) _removeViewControllerForFace:v6];
    v8 = *(*(a1 + 40) + 32);
    v19 = *(a1 + 32);
    v9 = [NSArray arrayWithObjects:&v19 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:100];

    if (v7 == v5)
    {
      v10 = [*(*(a1 + 40) + 40) selectedFaceIndex];
      v11 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Library List: marking %ld as selected row", &v17, 0xCu);
      }

      if (v10 == v5)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v10;
      }

      v13 = *(a1 + 48);
      v14 = [NSIndexPath indexPathForRow:v12 inSection:0];
      v15 = [v13 cellForRowAtIndexPath:v14];

      [v15 setCurrentFace:1];
    }

    [*(a1 + 40) _updateTitle];
    NTKCCAnalyticsIncrement();
  }

  else
  {
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_FDA8((a1 + 32), v16);
    }

    [*(*(a1 + 40) + 32) reloadData];
  }
}

id sub_DCB0(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Library List: ending batch updates", v7, 2u);
  }

  if ([*(*(a1 + 32) + 40) numberOfFaces] == &dword_0 + 1)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    [v3 reloadRowsAtIndexPaths:v5 withRowAnimation:5];
  }

  return [*(*(a1 + 32) + 40) resumeUpdatesFromDaemon];
}

id sub_EDBC(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 56) setAlpha:v1];
}

void sub_F59C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Face upgrade failed: manager = %@, error = %@", &v3, 0x16u);
}

void sub_F624(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Face upgrade failed but no error given: %@", &v2, 0xCu);
}

void sub_FC08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Bundle Identifier %@ is invalid", &v2, 0xCu);
}

void sub_FC80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "UserInfo is missing for notification response %@", &v2, 0xCu);
}

void sub_FD20(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Attempted to scroll to face at index %lu, but there are only %lu faces", &v3, 0x16u);
}

void sub_FDA8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Library List: indexPath %@ not valid", &v3, 0xCu);
}