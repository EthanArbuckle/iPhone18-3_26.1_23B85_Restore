id sub_100001354(void *a1)
{
  v1 = qword_1000085D8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1000018A4();
  }

  v3 = [NSBundle bundleForClass:qword_1000085D0];
  v4 = [v3 localizedStringForKey:v2 value:&stru_100004250 table:@"Localizable"];

  return v4;
}