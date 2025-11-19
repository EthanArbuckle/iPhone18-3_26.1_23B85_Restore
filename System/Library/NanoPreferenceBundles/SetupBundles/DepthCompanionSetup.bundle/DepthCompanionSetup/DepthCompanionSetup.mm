id sub_1478()
{
  if (qword_CBB8 != -1)
  {
    sub_24CC();
  }

  v1 = qword_CBB0;

  return v1;
}

void sub_1924(id a1, CSLPRFMutableDepthAutoLaunchSettings *a2)
{
  v2 = a2;
  [(CSLPRFMutableDepthAutoLaunchSettings *)v2 setChangeSource:0];
  [(CSLPRFMutableDepthAutoLaunchSettings *)v2 setBundleID:@"com.apple.Depth"];
  [(CSLPRFMutableDepthAutoLaunchSettings *)v2 setAutoLaunchBehavior:1];
}

void sub_1A04(id a1, CSLPRFMutableDepthAutoLaunchSettings *a2)
{
  v2 = a2;
  [(CSLPRFMutableDepthAutoLaunchSettings *)v2 setChangeSource:0];
  [(CSLPRFMutableDepthAutoLaunchSettings *)v2 setAutoLaunchBehavior:0];
}

void sub_1BF0(id a1)
{
  qword_CBB0 = os_log_create("com.apple.Depth", "setup");

  _objc_release_x1();
}