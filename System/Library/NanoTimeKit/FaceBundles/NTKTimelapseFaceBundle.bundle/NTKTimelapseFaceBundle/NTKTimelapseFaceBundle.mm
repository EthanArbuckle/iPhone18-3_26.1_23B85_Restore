id sub_E60(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15310);
  if (qword_15318)
  {
    v3 = qword_15318 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_15320))
  {
    qword_15318 = v2;
    qword_15320 = [v2 version];
    v5 = sub_F20(qword_15320, v2);
    v6 = qword_15308;
    qword_15308 = v5;
  }

  v7 = qword_15308;
  os_unfair_lock_unlock(&unk_15310);

  return v7;
}

id sub_F20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NTKTimelapseListingFactory alloc] _initLibraryForDevice:v2];

  return v3;
}

uint64_t NTKVideoIndexForTimelapseTheme(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = [[GEOHorizontalCelestialBodyData alloc] initWithLocation:v7 date:0 body:{a3, a4}];
  [v8 altitude];
  v10 = v9;
  v11 = [v7 dateByAddingTimeInterval:-900.0];
  v12 = [v7 dateByAddingTimeInterval:900.0];
  v13 = [[GEOHorizontalCelestialBodyData alloc] initWithLocation:v11 date:0 body:{a3, a4}];
  v14 = [[GEOHorizontalCelestialBodyData alloc] initWithLocation:v12 date:0 body:{a3, a4}];
  [v13 altitude];
  v16 = v15;
  [v14 altitude];
  v18 = v16 >= v10;
  if (v17 < v10)
  {
    v18 = 0;
  }

  if (v16 < v10)
  {
    v18 = 1;
  }

  v20 = (v16 > v10 || v17 > v10) && v18;

  v21 = v8;
  [v21 altitude];
  if (v20)
  {
    v23 = 18;
  }

  else
  {
    v23 = 36;
  }

  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 18;
  }

  v25 = a1 - 1;
  if ((a1 - 1) > 4)
  {
    v26 = &unk_ABB8;
  }

  else
  {
    v26 = *(&off_10290 + v25);
  }

  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = INFINITY;
  do
  {
    v29 = qword_AA98[v24] - v22;
    if (v29 < 0.0)
    {
      v29 = -v29;
    }

    if (v29 < v28 && v26[v24] != -1)
    {
      v28 = v29;
      v27 = v24;
    }

    ++v24;
  }

  while (v24 < v23);
  if (v25 > 4)
  {
    v30 = &unk_ABB8;
  }

  else
  {
    v30 = *(&off_10290 + v25);
  }

  v31 = v30[v27];

  return v31;
}

id NTKPhotoAnalysisForTimelapseVideo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 2) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_B278[a3 - 2];
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = &unk_7B40 + 640 * v4;
      v6 = 16;
      goto LABEL_18;
    }

    if (a1 == 4)
    {
      v5 = &unk_A2A0 + 680 * v4;
      v6 = 17;
      goto LABEL_18;
    }

    if (a1 != 5)
    {
      goto LABEL_21;
    }

    v7 = &unk_8EF0;
    goto LABEL_14;
  }

  switch(a1)
  {
    case 0:
      v7 = &unk_70F0;
LABEL_14:
      v5 = &v7[880 * v4];
      v6 = 22;
      break;
    case 1:
      v5 = &unk_9940 + 800 * v4;
      v6 = 20;
      break;
    case 2:
      v5 = &unk_82C0 + 1040 * v4;
      v6 = 26;
      break;
    default:
      goto LABEL_21;
  }

LABEL_18:
  if (a2 >= 1 && v6 >= a2)
  {
    v8 = [NTKPhotoAnalysis alloc];
    v9 = &v5[40 * a2];
    v10 = *(v9 - 24);
    v13[0] = *(v9 - 40);
    v13[1] = v10;
    v14 = *(v9 - 1);
    v11 = [v8 initWithStructure:v13];
    goto LABEL_22;
  }

LABEL_21:
  v11 = +[NTKPhotoAnalysis defaultAnalysis];
LABEL_22:

  return v11;
}

id sub_1D4C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_15330);
  if (qword_15338)
  {
    v3 = qword_15338 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_15340))
  {
    qword_15338 = v2;
    qword_15340 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_15328;
    qword_15328 = v5;
  }

  v7 = qword_15328;
  os_unfair_lock_unlock(&unk_15330);

  return v7;
}

void sub_1FF8(id a1)
{
  v3[0] = &off_10A30;
  v3[1] = &off_10A48;
  v4[0] = @"Mack Lake";
  v4[1] = @"New York";
  v3[2] = &off_10A60;
  v3[3] = &off_10A78;
  v4[2] = @"Hong Kong";
  v4[3] = @"London";
  v3[4] = &off_10A90;
  v3[5] = &off_10AA8;
  v4[4] = @"Paris";
  v4[5] = @"Shanghai";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_15348;
  qword_15348 = v1;
}

id sub_2B3C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

id sub_2B80(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

void sub_3360(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 display];
  v7 = v6;
  if (*(a1 + 40) == 1)
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_34B4;
    v15 = &unk_10390;
    v8 = v6;
    v9 = *(a1 + 32);
    v16 = v8;
    v17 = v9;
    [UIView transitionWithView:v8 duration:5242880 options:&v12 animations:0 completion:0.8];
  }

  else
  {
    [v6 setForegroundColor:*(*(a1 + 32) + 48)];
  }

  [v7 setShadowColor:{*(*(a1 + 32) + 56), v12, v13, v14, v15}];
  v10 = [v5 isEqualToString:NTKComplicationSlotBottom];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(*(a1 + 32) + 80) & 1;
  }

  [v7 setUsesLegibility:v11];
}

id sub_3B94(uint64_t a1)
{
  v2 = [*(a1 + 32) videoPlayerView];
  [v2 setAlpha:1.0];

  [*(*(a1 + 32) + 64) setAlpha:1.0];
  v3 = *(*(a1 + 32) + 72);

  return [v3 setAlpha:1.0];
}

id sub_3C0C(uint64_t a1)
{
  v2 = [*(a1 + 32) videoPlayerView];
  v8 = *&CGAffineTransformIdentity.c;
  v10 = *&CGAffineTransformIdentity.a;
  v9 = v10;
  v11 = v8;
  v12 = *&CGAffineTransformIdentity.tx;
  v7 = v12;
  [v2 setTransform:&v10];

  v3 = *(*(a1 + 32) + 64);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v3 setTransform:&v10];
  v4 = *(*(a1 + 32) + 72);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v4 setTransform:&v10];
  v5 = *(*(a1 + 32) + 16);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  return [v5 setTransform:&v10];
}

void sub_3DE4(uint64_t a1)
{
  v2 = [*(a1 + 32) videoPlayerView];
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v2 seekToTime:&v5];

  if (([*(a1 + 32) paused] & 1) == 0)
  {
    v3 = [*(a1 + 32) videoPlayerView];
    [v3 play];
  }

  v4 = [*(a1 + 32) posterImageView];
  [v4 setHidden:1];
}

id sub_4504(uint64_t a1)
{
  [*(a1 + 32) setColor:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setShadowColor:v3];
}

void sub_4CBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setForegroundColor:*(a1 + 32)];
  [v4 setShadowColor:*(a1 + 40)];
}