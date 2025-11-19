id sub_1BD8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_CB20);
  if (qword_CB28)
  {
    v3 = qword_CB28 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_CB30))
  {
    qword_CB28 = v2;
    qword_CB30 = [v2 version];
    v5 = qword_CB18;
    qword_CB18 = &off_8C48;
  }

  v6 = qword_CB18;
  os_unfair_lock_unlock(&unk_CB20);

  return v6;
}

void sub_1DF8(id a1)
{
  v3[0] = &off_8A18;
  v3[1] = &off_8A48;
  v4[0] = @"blue/green";
  v4[1] = @"pink/orange";
  v3[2] = &off_8A30;
  v3[3] = &off_8A60;
  v4[2] = @"black/white";
  v4[3] = @"all";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_CB38;
  qword_CB38 = v1;
}

id sub_2238()
{
  if (qword_CB60 != -1)
  {
    sub_3228();
  }

  v1 = qword_CB58;

  return v1;
}

id sub_227C()
{
  if (qword_CB70 != -1)
  {
    sub_323C();
  }

  v1 = qword_CB68;

  return v1;
}

id sub_22C0()
{
  if (qword_CB80 != -1)
  {
    sub_3250();
  }

  v1 = qword_CB78;

  return v1;
}

void sub_3084(id a1)
{
  qword_CB48 = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];

  _objc_release_x1();
}

void sub_30D8(id a1)
{
  qword_CB58 = [UIColor colorWithRed:0.325490196 green:0.694117647 blue:0.850980392 alpha:1.0];

  _objc_release_x1();
}

void sub_3134(id a1)
{
  qword_CB68 = [UIColor colorWithRed:0.694117647 green:0.690196078 blue:0.717647059 alpha:1.0];

  _objc_release_x1();
}

void sub_3190(id a1)
{
  qword_CB78 = [UIColor colorWithRed:0.894117647 green:0.37254902 blue:0.305882353 alpha:1.0];

  _objc_release_x1();
}