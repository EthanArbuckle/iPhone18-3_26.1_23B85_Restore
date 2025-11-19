id sub_12C8(uint64_t a1, void *a2)
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
    qword_CAF0 = &off_8B20;
  }

  v6 = qword_CAF0;
  os_unfair_lock_unlock(&unk_CAF8);

  return v6;
}

void sub_14E8(id a1)
{
  v3[0] = &off_8920;
  v3[1] = &off_8950;
  v4[0] = @"silver";
  v4[1] = @"black";
  v3[2] = &off_8938;
  v3[3] = &off_8968;
  v4[2] = @"gold";
  v4[3] = @"all";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_CB10;
  qword_CB10 = v1;
}

id sub_2184()
{
  if (qword_CB28 != -1)
  {
    sub_3058();
  }

  v1 = qword_CB20;

  return v1;
}

id sub_21C8()
{
  if (qword_CB38 != -1)
  {
    sub_306C();
  }

  v1 = qword_CB30;

  return v1;
}

void sub_2F8C(id a1)
{
  qword_CB20 = [UIColor colorWithRed:0.705882353 green:0.517647059 blue:0.407843137 alpha:1.0];

  _objc_release_x1();
}

void sub_2FE8(id a1)
{
  qword_CB30 = [UIColor colorWithRed:0.694117647 green:0.690196078 blue:0.717647059 alpha:1.0];

  _objc_release_x1();
}