id sub_D10(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_CAF8);
  if (qword_CB00)
  {
    v3 = qword_CB00 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_CB08))
  {
    qword_CB00 = v2;
    qword_CB08 = [v2 version];
    v5 = qword_CAF0;
    qword_CAF0 = &off_8A30;
  }

  v6 = qword_CAF0;
  os_unfair_lock_unlock(&unk_CAF8);

  return v6;
}

void sub_F30(id a1)
{
  v3[0] = &off_8818;
  v3[1] = &off_8830;
  v4[0] = @"fire";
  v4[1] = @"water";
  v3[2] = &off_8848;
  v4[2] = @"all";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_CB10;
  qword_CB10 = v1;
}

id sub_1B84()
{
  if (qword_CB28 != -1)
  {
    sub_3074();
  }

  v1 = qword_CB20;

  return v1;
}

id sub_1BC8()
{
  if (qword_CB38 != -1)
  {
    sub_3088();
  }

  v1 = qword_CB30;

  return v1;
}

void sub_29A4(id a1)
{
  qword_CB20 = [UIColor colorWithRed:0.737254902 green:0.419607843 blue:0.22745098 alpha:1.0];

  _objc_release_x1();
}

void sub_2A00(id a1)
{
  qword_CB30 = [UIColor colorWithRed:0.694117647 green:0.690196078 blue:0.717647059 alpha:1.0];

  _objc_release_x1();
}