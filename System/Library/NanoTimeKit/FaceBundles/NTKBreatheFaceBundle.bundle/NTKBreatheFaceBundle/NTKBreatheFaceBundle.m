id sub_CC0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_CB50);
  if (qword_CB58)
  {
    v3 = qword_CB58 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_CB60))
  {
    qword_CB58 = v2;
    qword_CB60 = [v2 version];
    if ([v2 supportsPDRCapability:4094027452])
    {
      v5 = &off_8BA8;
    }

    else
    {
      v5 = &off_8BC0;
    }

    objc_storeStrong(&qword_CB48, v5);
  }

  v6 = qword_CB48;
  os_unfair_lock_unlock(&unk_CB50);

  return v6;
}

void sub_F44(uint64_t a1)
{
  v1 = [*(a1 + 32) device];
  v2 = [v1 supportsPDRCapability:4094027452];

  if (v2)
  {
    v10[0] = &off_8950;
    v10[1] = &off_8968;
    v11[0] = NTKFaceBundleBreatheVideoStyleOrbs;
    v11[1] = NTKFaceBundleBreatheVideoStyleClassic;
    v10[2] = &off_8980;
    v10[3] = &off_8998;
    v11[2] = NTKFaceBundleBreatheVideoStyleCalm;
    v11[3] = NTKFaceBundleBreatheVideoStyleFocus;
    v3 = v11;
    v4 = v10;
    v5 = 4;
  }

  else
  {
    v8[0] = &off_8968;
    v8[1] = &off_8980;
    v9[0] = NTKFaceBundleBreatheVideoStyleClassic;
    v9[1] = NTKFaceBundleBreatheVideoStyleCalm;
    v8[2] = &off_8998;
    v9[2] = NTKFaceBundleBreatheVideoStyleFocus;
    v3 = v9;
    v4 = v8;
    v5 = 3;
  }

  v6 = [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:v5];
  v7 = qword_CB68;
  qword_CB68 = v6;
}

id sub_1170()
{
  if (qword_CB80 != -1)
  {
    sub_2D0C();
  }

  v1 = qword_CB78;

  return v1;
}

id sub_151C()
{
  if (qword_CBC0 != -1)
  {
    sub_2D34();
  }

  v1 = qword_CBB8;

  return v1;
}

void sub_1A40(id a1)
{
  qword_CB78 = [UIColor colorWithRed:0.0 green:0.462222222 blue:0.368627451 alpha:1.0];

  _objc_release_x1();
}

uint64_t sub_1A98(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_CB94);
  if (qword_CB98)
  {
    v3 = qword_CB98 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_CBA0))
  {
    v5 = byte_CB90;
  }

  else
  {
    qword_CB98 = v2;
    qword_CBA0 = [v2 version];
    sub_1B40(qword_CBA0, v2);
    v5 = 1;
    byte_CB90 = 1;
  }

  os_unfair_lock_unlock(&stru_CB94);

  return v5;
}

void sub_1B40(uint64_t a1, void *a2)
{
  v2 = a2;
  [NTKAnalogUtilities dialSizeForDevice:v2];
  v4 = v3;
  v10 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v2 screenScale];
  v6 = v5;

  [v10 setScale:v6];
  [v10 setPreferredRange:2];
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:{v4, v4}];
  v8 = [v7 imageWithActions:&stru_8358];
  v9 = qword_CB88;
  qword_CB88 = v8;
}

void sub_1C1C(id a1, UIGraphicsImageRendererContext *a2)
{
  v2 = a2;
  v3 = sub_151C();
  v4 = [v3 colorWithAlphaComponent:0.235294118];
  [v4 setFill];

  v6 = [(UIGraphicsImageRendererContext *)v2 format];

  [v6 bounds];
  v5 = [UIBezierPath bezierPathWithOvalInRect:?];
  [v5 fill];
}

void sub_1CCC(id a1)
{
  v5 = +[NSNotificationCenter defaultCenter];
  v1 = CLKClearCacheRequestNotification;
  v2 = +[NSOperationQueue mainQueue];
  v3 = [v5 addObserverForName:v1 object:0 queue:v2 usingBlock:&stru_83B8];
  v4 = qword_CBA8;
  qword_CBA8 = v3;
}

void sub_1D6C(id a1, NSNotification *a2)
{
  v2 = qword_CB88;
  qword_CB88 = 0;
}

void sub_1D7C(id a1)
{
  qword_CBB8 = [UIColor colorWithRed:0.650980392 green:1.13333333 blue:0.97254902 alpha:1.0];

  _objc_release_x1();
}