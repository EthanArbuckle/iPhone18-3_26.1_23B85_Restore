void sub_1330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1368(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKRichComplicationDialView alloc] initWithTickCount:*(*(a1 + 32) + 88) tickSize:*(*(a1 + 32) + 96) dialRange:*(*(a1 + 32) + 104) startAngle:{6.28318531, 0.0}];
  v5 = [v3 CGColor];

  v6 = [v4 largeTickLayer];
  [v6 setBackgroundColor:v5];

  [v4 setHidden:1];
  v7 = [*(a1 + 32) contentView];
  [v7 addSubview:v4];

  return v4;
}

id sub_1440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = CLKDate;
  }

  v3 = [WeakRetained complicationDate];

  return v3;
}

void sub_14A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

void sub_1C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDialProgress];
}

void sub_2118(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&unk_112E8);
  if (qword_112F0)
  {
    v3 = qword_112F0 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != qword_112F8))
  {
    qword_112F0 = v9;
    qword_112F8 = [v9 version];
    sub_2210(v9, v10);
    xmmword_112A8 = v10[4];
    unk_112B8 = v10[5];
    xmmword_112C8 = v10[6];
    unk_112D8 = v10[7];
    xmmword_11268 = v10[0];
    unk_11278 = v10[1];
    xmmword_11288 = v10[2];
    unk_11298 = v10[3];
  }

  v5 = unk_112B8;
  a2[4] = xmmword_112A8;
  a2[5] = v5;
  v6 = unk_112D8;
  a2[6] = xmmword_112C8;
  a2[7] = v6;
  v7 = unk_11278;
  *a2 = xmmword_11268;
  a2[1] = v7;
  v8 = unk_11298;
  a2[2] = xmmword_11288;
  a2[3] = v8;
  os_unfair_lock_unlock(&unk_112E8);
}

void sub_2210(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v21 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v21 scaledValue:4.0];
  v5 = v4;
  [v21 scaledValue:40.0];
  v7 = v6;
  [v21 scaledValue:11.0];
  v9 = v8;
  [v21 scaledValue:30.0];
  v20 = v10;
  [v21 scaledValue:24.5];
  v12 = v11;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v19 = v13;

  *a2 = 60;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v12;
  *(a2 + 40) = v9;
  *(a2 + 48) = v20;
  *(a2 + 56) = 0x4038000000000000;
  *(a2 + 64) = 60;
  *(a2 + 72) = v19;
  *(a2 + 80) = v5 * v19;
  *(a2 + 88) = v7 * v19;
  *(a2 + 96) = v12 * v19;
  *(a2 + 104) = v9 * v19;
  __asm { FMOV            V0.2D, #24.0 }

  _Q0.f64[0] = v20;
  *(a2 + 112) = vmulq_n_f64(_Q0, v19);
}

void sub_3214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3230(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3340;
  block[3] = &unk_C510;
  objc_copyWeak(v16, (a1 + 48));
  v12 = *(a1 + 32);
  v16[1] = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v14 = v5;
  v15 = v7;
  v16[2] = v8;
  v13 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v16);
}

void sub_3340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v7 = [NTKTimerBundleComplicationDataSource _unknownEntryForDevice:*(a1 + 32) complicationDuration:*(a1 + 72)];
    v8 = *(a1 + 56);
    v9 = [v7 entryForComplicationFamily:*(a1 + 80)];
    (*(v8 + 16))(v8, v9);

    goto LABEL_26;
  }

  v3 = [[NTKTimerBundleTimelineEntry alloc] initWithDevice:*(a1 + 32)];
  [WeakRetained complicationDuration];
  [(NTKTimerBundleTimelineEntry *)v3 setIsDefaultComplication:v4 == 0.0];
  if (!*(a1 + 40))
  {
    v36 = v3;
    v10 = [*(a1 + 48) sortedArrayUsingComparator:&stru_C4E8];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(NSMutableArray);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = WeakRetained[3];
          if (v19 != 0.0)
          {
            [*(*(&v37 + 1) + 8 * i) duration];
            if (v19 != v20)
            {
              continue;
            }
          }

          v21 = [v18 state];
          v22 = v11;
          if (v21 != &dword_0 + 3)
          {
            v23 = [v18 state];
            v22 = v12;
            if (v23 != &dword_0 + 2)
            {
              continue;
            }
          }

          [v22 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);
    }

    v24 = +[NTKDate unmodifiedDate];
    v6 = v36;
    [(NTKTimerBundleTimelineEntry *)v36 setEntryDate:v24];

    -[NTKTimerBundleTimelineEntry setNumPausedTimers:](v36, "setNumPausedTimers:", [v12 count]);
    -[NTKTimerBundleTimelineEntry setNumRunningTimers:](v36, "setNumRunningTimers:", [v11 count]);
    if ([v11 count])
    {
      v25 = [v11 objectAtIndexedSubscript:0];
      [v25 remainingTime];
      [(NTKTimerBundleTimelineEntry *)v36 setRemainingTime:?];
      [v25 duration];
      [(NTKTimerBundleTimelineEntry *)v36 setCountdownDuration:?];
      v26 = [v25 title];
      [(NTKTimerBundleTimelineEntry *)v36 setTitle:v26];

      v27 = v36;
      v28 = 3;
    }

    else
    {
      if (![v12 count])
      {
        [NTKTimerBundleComplicationDataSource _fallbackDurationWithComplicationDuration:WeakRetained[3]];
        [(NTKTimerBundleTimelineEntry *)v36 setCountdownDuration:?];
        [(NTKTimerBundleTimelineEntry *)v36 countdownDuration];
        [(NTKTimerBundleTimelineEntry *)v36 setRemainingTime:?];
        [(NTKTimerBundleTimelineEntry *)v36 setTitle:0];
        [(NTKTimerBundleTimelineEntry *)v36 setState:1];
        goto LABEL_22;
      }

      v25 = [v12 objectAtIndexedSubscript:0];
      [v25 remainingTime];
      [(NTKTimerBundleTimelineEntry *)v36 setRemainingTime:?];
      [v25 duration];
      [(NTKTimerBundleTimelineEntry *)v36 setCountdownDuration:?];
      v29 = [v25 title];
      [(NTKTimerBundleTimelineEntry *)v36 setTitle:v29];

      v27 = v36;
      v28 = 2;
    }

    [(NTKTimerBundleTimelineEntry *)v27 setState:v28];

LABEL_22:
    goto LABEL_23;
  }

  v5 = [NTKTimerBundleComplicationDataSource _unknownEntryForDevice:*(a1 + 32) complicationDuration:WeakRetained[3]];

  v6 = v5;
LABEL_23:
  v30 = kMTCurrentTimerTitle;
  v31 = [v6 title];
  LODWORD(v30) = [v30 isEqualToString:v31];

  if (v30)
  {
    [v6 setTitle:0];
  }

  v32 = *(WeakRetained + 1);
  *(WeakRetained + 1) = v6;
  v33 = v6;

  v34 = *(a1 + 56);
  v35 = [v33 entryForComplicationFamily:*(a1 + 80)];
  (*(v34 + 16))(v34, v35);

LABEL_26:
}

int64_t sub_37AC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 remainingTime];
  v9 = v8;
  [v7 remainingTime];
  if (v9 >= v10)
  {
    [v6 remainingTime];
    v13 = v12;
    [v7 remainingTime];
    if (v13 > v14)
    {
      v11 = 1;
      goto LABEL_7;
    }

    [v6 duration];
    v16 = v15;
    [v7 duration];
    if (v16 >= v17)
    {
      [v6 duration];
      v19 = v18;
      [v7 duration];
      v11 = v19 > v20;
      goto LABEL_7;
    }
  }

  v11 = -1;
LABEL_7:

  return v11;
}

id sub_3F8C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11308);
  if (qword_11310)
  {
    v3 = qword_11310 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11318))
  {
    qword_11310 = v2;
    qword_11318 = [v2 version];
    v5 = sub_4048();
    v6 = qword_11300;
    qword_11300 = v5;
  }

  v7 = qword_11300;
  os_unfair_lock_unlock(&unk_11308);

  return v7;
}

id sub_4048()
{
  v0 = NTKImageNamed();
  v1 = NTKImageNamed();
  v2 = NTKImageNamed();
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];

  return v3;
}

id sub_4158(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11328);
  if (qword_11330)
  {
    v3 = qword_11330 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11338))
  {
    qword_11330 = v2;
    qword_11338 = [v2 version];
    v5 = sub_4214();
    v6 = qword_11320;
    qword_11320 = v5;
  }

  v7 = qword_11320;
  os_unfair_lock_unlock(&unk_11328);

  return v7;
}

id sub_4214()
{
  v0 = NTKImageNamed();
  v1 = NTKImageNamed();
  v2 = NTKImageNamed();
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];

  return v3;
}

id sub_4324(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11348);
  if (qword_11350)
  {
    v3 = qword_11350 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11358))
  {
    qword_11350 = v2;
    qword_11358 = [v2 version];
    v5 = sub_43E0();
    v6 = qword_11340;
    qword_11340 = v5;
  }

  v7 = qword_11340;
  os_unfair_lock_unlock(&unk_11348);

  return v7;
}

id sub_43E0()
{
  v0 = NTKImageNamed();
  v1 = NTKImageNamed();
  v2 = NTKImageNamed();
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];

  return v3;
}

id sub_44F0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11368);
  if (qword_11370)
  {
    v3 = qword_11370 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11378))
  {
    qword_11370 = v2;
    qword_11378 = [v2 version];
    v5 = sub_45AC();
    v6 = qword_11360;
    qword_11360 = v5;
  }

  v7 = qword_11360;
  os_unfair_lock_unlock(&unk_11368);

  return v7;
}

id sub_45AC()
{
  v0 = NTKImageNamed();
  v1 = NTKImageNamed();
  v2 = NTKImageNamed();
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];

  return v3;
}

id sub_46BC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_11388);
  if (qword_11390)
  {
    v3 = qword_11390 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_11398))
  {
    qword_11390 = v2;
    qword_11398 = [v2 version];
    v5 = sub_4778();
    v6 = qword_11380;
    qword_11380 = v5;
  }

  v7 = qword_11380;
  os_unfair_lock_unlock(&unk_11388);

  return v7;
}

id sub_4778()
{
  v0 = NTKImageNamed();
  v1 = NTKImageNamed();
  v2 = NTKImageNamed();
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];

  return v3;
}

uint64_t sub_65E8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_113AC);
  if (qword_113B0)
  {
    v3 = qword_113B0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_113B8))
  {
    v5 = byte_113A8;
  }

  else
  {
    qword_113B0 = v2;
    qword_113B8 = [v2 version];
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = qword_113A0;
    qword_113A0 = v6;

    v5 = 1;
    byte_113A8 = 1;
  }

  os_unfair_lock_unlock(&stru_113AC);

  return v5;
}

id sub_66AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_113C8);
  if (qword_113D0)
  {
    v3 = qword_113D0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_113D8))
  {
    qword_113D0 = v2;
    qword_113D8 = [v2 version];
    v5 = sub_6768();
    v6 = qword_113C0;
    qword_113C0 = v5;
  }

  v7 = qword_113C0;
  os_unfair_lock_unlock(&unk_113C8);

  return v7;
}

id sub_6768()
{
  v0 = [CLKFullColorSymbolImageProvider symbolImageProviderWithSystemName:@"timer"];
  v1 = +[UIColor systemOrangeColor];
  [v0 setTintColor:v1];

  return v0;
}

id sub_67E0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_113E8);
  if (qword_113F0)
  {
    v3 = qword_113F0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_113F8))
  {
    qword_113F0 = v2;
    qword_113F8 = [v2 version];
    v5 = sub_689C();
    v6 = qword_113E0;
    qword_113E0 = v5;
  }

  v7 = qword_113E0;
  os_unfair_lock_unlock(&unk_113E8);

  return v7;
}

id sub_689C()
{
  v0 = [CLKSymbolImageProvider symbolImageProviderWithSystemName:@"timer"];
  v1 = +[UIColor systemOrangeColor];
  [v0 setTintColor:v1];

  return v0;
}

void sub_69D4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}

void sub_6AA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "missing bundle at %@", &v2, 0xCu);
}