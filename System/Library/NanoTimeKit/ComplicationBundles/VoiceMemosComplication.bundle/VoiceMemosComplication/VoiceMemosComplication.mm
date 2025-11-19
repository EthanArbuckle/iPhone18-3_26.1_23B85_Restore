id sub_B80(void *a1)
{
  v1 = qword_82C0;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1590();
  }

  v3 = [UIImage imageNamed:v2 inBundle:qword_82B8 compatibleWithTraitCollection:0];

  return v3;
}

void sub_BF8(id a1)
{
  qword_82B8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_C54()
{
  if (qword_82D0 != -1)
  {
    sub_15A4();
  }

  v1 = qword_82C8;

  return v1;
}

void sub_C98(id a1)
{
  qword_82C8 = [UIColor colorWithWhite:1.0 alpha:0.1];

  _objc_release_x1();
}

void sub_130C(id a1)
{
  qword_82D8 = objc_opt_new();

  _objc_release_x1();
}