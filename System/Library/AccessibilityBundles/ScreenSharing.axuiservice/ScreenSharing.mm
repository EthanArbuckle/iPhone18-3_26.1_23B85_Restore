id sub_1714(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 animateAlphaToValue:v4];
  }

  return result;
}

void sub_1860(id a1)
{
  qword_169F8 = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/ScreenSharing.axuiservice"];

  _objc_release_x1();
}

id sub_3050(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  if (*(a1 + 40))
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *(a1 + 41);
  v5 = *(a1 + 32);
  if (!v5[2] && (v4 & 1) == 0)
  {
    v6 = [*(a1 + 32) cursorView];
    [v6 frame];
    v8 = v7 - v2;
    v9 = [*(a1 + 32) cursorView];
    [v9 frame];
    [v5 setFrameOriginWithPoint:{v8, v3 + v10}];

    v5 = *(a1 + 32);
  }

  v11 = [v5 cursorView];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v16 = *(a1 + 40);
  v17 = v15 + -20.0;
  v18 = v13 + 20.0;
  if (v16)
  {
    v18 = v13;
  }

  else
  {
    v17 = v15;
  }

  v19 = -v2;
  if (!v4)
  {
    v19 = v2;
  }

  v20 = -v3;
  if (!v4)
  {
    v20 = v3;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_3240;
  v25[3] = &unk_104B8;
  v26 = *(a1 + 32);
  v27 = v18;
  v28 = v17;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_3250;
  v22[3] = &unk_10508;
  v22[4] = v26;
  *&v22[5] = v13;
  *&v22[6] = v15;
  v23 = *(a1 + 41);
  v24 = v16;
  *&v22[7] = v19;
  *&v22[8] = v20;
  return [UIView animateWithDuration:131074 delay:v25 usingSpringWithDamping:v22 initialSpringVelocity:0.12 options:0.0 animations:0.1 completion:0.0];
}

id sub_3250(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3348;
  v7[3] = &unk_104B8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3358;
  v3[3] = &unk_10508;
  v3[4] = v8;
  v6 = *(a1 + 72);
  v1 = *(a1 + 56);
  v4 = v9;
  v5 = v1;
  return [UIView animateWithDuration:196610 delay:v7 usingSpringWithDamping:v3 initialSpringVelocity:0.12 options:0.0 animations:0.85 completion:0.12];
}

id sub_3358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = v3 + 1;
  if (v3 > 1)
  {
    if (*(a1 + 72) == 1)
    {
      result = dispatch_semaphore_signal(*(*(a1 + 32) + 16));
      *(*(a1 + 32) + 8) = 0;
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_34C0;
      v10[3] = &unk_104E0;
      v11 = *(a1 + 32);
      v7 = *(a1 + 56);
      v12 = *(a1 + 40);
      v13 = v7;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_34DC;
      v9[3] = &unk_10400;
      v9[4] = v11;
      return [UIView animateWithDuration:65538 delay:v10 usingSpringWithDamping:v9 initialSpringVelocity:0.12 options:0.0 animations:1.0 completion:0.0];
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v6 = *(a1 + 73);

    return [v4 strokeCore:v5 rotate:v6];
  }

  return result;
}

intptr_t sub_34DC(uint64_t a1)
{
  result = dispatch_semaphore_signal(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 8) = 0;
  return result;
}

id sub_35F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 flipped];
  v4 = [*(a1 + 32) rotated];

  return [v2 strokeCore:v3 rotate:v4];
}

id sub_62A8(uint64_t a1)
{
  if (CGSizeZero.width == *(a1 + 56) && CGSizeZero.height == *(a1 + 64))
  {
    v6 = *(a1 + 32);

    return [v6 setSize:?];
  }

  else
  {
    [*(a1 + 32) setSize:?];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 setOrigin:{v4, v5}];
  }
}

void sub_6720(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  v10 = *(*(a1 + 32) + 48);
  v16 = v9;
  if (v10)
  {
    [v10 set];
    [v16 fill];
    v9 = v16;
  }

  v11 = 0.0;
  if (*(a1 + 56))
  {
    v11 = 2.0;
  }

  [v9 setLineWidth:*(a1 + 48) + v11];
  [v16 setLineCapStyle:1];
  [v16 setLineJoinStyle:1];
  v12 = +[UIColor whiteColor];
  [v12 set];

  [v16 stroke];
  objc_autoreleasePoolPop(v8);
  v13 = objc_autoreleasePoolPush();
  v14 = v16;
  if ((*(a1 + 56) & 1) == 0)
  {
    v14 = [*(a1 + 40) objectAtIndex:a3 + 1];
  }

  [v14 setLineWidth:*(a1 + 48)];
  [v14 setLineCapStyle:1];
  [v14 setLineJoinStyle:1];
  v15 = +[UIColor redColor];
  [v15 set];

  [v14 stroke];
  if ((*(a1 + 56) & 1) == 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v13);
}

void sub_7450()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "##unknown message type", v0, 2u);
  }

  abort();
}