id CKBSFrameworkBundle()
{
  if (qword_8548 != -1)
  {
    sub_24C8();
  }

  v1 = qword_8540;

  return v1;
}

void sub_1108(id a1)
{
  qword_8540 = [NSBundle bundleWithIdentifier:@"com.apple.MessagesBridgeSettings"];

  _objc_release_x1();
}

BOOL sub_170C(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"PLAY_ALERT_TONE"];

  return v5;
}