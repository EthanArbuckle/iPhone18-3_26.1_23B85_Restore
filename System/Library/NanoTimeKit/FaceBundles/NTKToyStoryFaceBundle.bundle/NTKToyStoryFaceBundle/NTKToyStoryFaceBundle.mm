void sub_D84(id a1)
{
  qword_116D8 = [UIColor colorWithRed:0.6118 green:0.4078 blue:0.7412 alpha:1.0];

  _objc_release_x1();
}

void sub_E24(id a1)
{
  qword_116E8 = [UIColor colorWithRed:1.0 green:0.7725 blue:0.3765 alpha:1.0];

  _objc_release_x1();
}

void sub_EC0(id a1)
{
  qword_116F8 = [UIColor colorWithRed:0.9922 green:0.2941 blue:0.2549 alpha:1.0];

  _objc_release_x1();
}

void sub_F60(id a1)
{
  qword_11708 = [UIColor colorWithRed:0.9647 green:0.9216 blue:0.3137 alpha:1.0];

  _objc_release_x1();
}

void sub_1000(id a1)
{
  qword_11718 = [UIColor colorWithRed:0.8627 green:0.9765 blue:0.2706 alpha:1.0];

  _objc_release_x1();
}

void sub_10A0(id a1)
{
  qword_11728 = [UIColor colorWithRed:0.8118 green:0.5137 blue:0.3216 alpha:1.0];

  _objc_release_x1();
}

void sub_1140(id a1)
{
  qword_11738 = +[UIColor lightGrayColor];

  _objc_release_x1();
}

void sub_11C4(id a1)
{
  qword_11748 = [UIColor colorWithRed:0.4471 green:0.5765 blue:0.3451 alpha:1.0];

  _objc_release_x1();
}

void sub_1264(id a1)
{
  qword_11758 = [UIColor colorWithRed:0.8902 green:0.5608 blue:0.5137 alpha:1.0];

  _objc_release_x1();
}

void sub_1304(id a1)
{
  qword_11768 = [UIColor colorWithRed:0.6392 green:0.7882 blue:0.2275 alpha:1.0];

  _objc_release_x1();
}

void sub_13A4(id a1)
{
  qword_11778 = [UIColor colorWithRed:0.4431 green:0.5569 blue:0.851 alpha:1.0];

  _objc_release_x1();
}

const __CFString *NSStringFromNTKInfinityCharacterType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Buzz";
  }

  else
  {
    return off_C490[a1 - 1];
  }
}

id _makeInfinityListingWithPlayback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if ((a1 - 1) > 2)
  {
    v15 = @"Buzz";
  }

  else
  {
    v15 = off_C490[a1 - 1];
  }

  v16 = a8;
  v17 = a4;
  v18 = [NSString stringWithFormat:@"%@_%@_%@", @"Infinity", v15, a2];
  v19 = [NTKInfinityListing listingForDevice:v16 withFilename:v18];

  [v19 setType:a3];
  [v19 setPlayback:a7];
  v20 = +[NSMutableDictionary dictionary];
  v21 = [NSNumber numberWithUnsignedInteger:a1];
  [v20 setObject:v21 forKey:@"character"];

  [v20 setObject:v17 forKey:@"color"];
  if (a5)
  {
    v22 = [NSNumber numberWithUnsignedInteger:a5];
    [v20 setObject:v22 forKey:@"crop"];
  }

  if (a6)
  {
    v23 = [NSNumber numberWithUnsignedInteger:a6];
    [v20 setObject:v23 forKey:@"setting"];
  }

  v24 = [NTKInfinityListingAttributes attributesWithDictionary:v20];
  [v19 setAttributes:v24];

  return v19;
}

id _makeInfinityListing(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a3 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_7CE8[a3];
  }

  return _makeInfinityListingWithPlayback(a1, a2, a3, a4, a5, a6, v8, a7);
}

id sub_1834(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 containsAttributes:*(a1 + 32) ignoreKeys:&__NSArray0__struct];

  return v4;
}

uint64_t sub_19C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
  if ([v4 containsObject:v5])
  {
    v6 = [v3 attributes];
    if ([v6 containsAttributes:*(a1 + 40) ignoreKeys:&__NSArray0__struct])
    {
      v7 = [*(a1 + 48) containsObject:v3] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
  if ([v4 containsObject:v5])
  {
    v6 = [v3 attributes];
    v7 = *(a1 + 40);
    v11 = @"character";
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    if ([v6 containsAttributes:v7 ignoreKeys:v8])
    {
      v9 = [*(a1 + 48) containsObject:v3] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_2D20(uint64_t a1, uint64_t a2, void *a3)
{
  if (NTKComplicationSlotTopRight == a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = [a3 display];
    v7 = v6;
    if (*(a1 + 40) == 1)
    {
      v8 = [v6 foregroundColor];
      v9 = *(a1 + 32);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_2E48;
      v12[3] = &unk_C4B0;
      v13 = v7;
      v14 = v8;
      v15 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 _complicationFlickerWorkgroundAnimationWithDuration:v12 applier:0.1];
    }

    else
    {
      [v6 setForegroundColor:*(*(a1 + 32) + 56)];
    }
  }
}

void sub_2E48(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 56);
  v4 = NTKInterpolateBetweenColors();
  [v2 setForegroundColor:v4];
}

void sub_3408(uint64_t a1, uint64_t a2, void *a3)
{
  if (NTKComplicationSlotTopRight == a2)
  {
    v9 = [a3 display];
    v5 = [*(*(a1 + 32) + 40) complicationColorForStyle:{objc_msgSend(*(a1 + 40), "style")}];
    v6 = [*(*(a1 + 32) + 40) complicationColorForStyle:{objc_msgSend(*(a1 + 48), "style")}];
    v7 = *(a1 + 56);
    v8 = NTKInterpolateBetweenColors();
    [v9 setForegroundColor:v8];
  }
}

void sub_376C(uint64_t a1)
{
  v2 = [*(a1 + 32) videoPlayerView];
  v3 = [*(a1 + 32) currentListing];
  v4 = [v3 video];
  [v2 loadVideo:v4];

  if (([*(a1 + 32) paused] & 1) == 0)
  {
    v5 = [*(a1 + 32) videoPlayerView];
    [v5 play];
  }

  v6 = [*(a1 + 32) posterImageView];
  [v6 setHidden:1];
}

id _toyboxComplicationColor()
{
  if (qword_11790 != -1)
  {
    sub_5B3C();
  }

  v1 = qword_11788;

  return v1;
}

void sub_44EC(id a1)
{
  v1 = [UIColor colorWithWhite:0.898039216 alpha:1.0];
  v2 = qword_11788;
  qword_11788 = v1;

  _objc_release_x1(v1, v2);
}

id sub_53DC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_117A0);
  if (qword_117A8)
  {
    v3 = qword_117A8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_117B0))
  {
    qword_117A8 = v2;
    qword_117B0 = [v2 version];
    v5 = [NSMutableArray arrayWithArray:&off_CF88];
    v6 = qword_11798;
    qword_11798 = v5;
  }

  v7 = qword_11798;
  os_unfair_lock_unlock(&unk_117A0);

  return v7;
}

void sub_557C(id a1)
{
  v3[0] = &off_CDF0;
  v3[1] = &off_CE08;
  v4[0] = @"toybox";
  v4[1] = @"buzz";
  v3[2] = &off_CE20;
  v3[3] = &off_CE38;
  v4[2] = @"jessie";
  v4[3] = @"woody";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_117B8;
  qword_117B8 = v1;
}

void sub_5924()
{
  sub_45E8();
  sub_45F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_59B0()
{
  sub_45E8();
  sub_45F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_5A3C()
{
  sub_45E8();
  sub_45F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_5ABC()
{
  sub_45E8();
  sub_45F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}