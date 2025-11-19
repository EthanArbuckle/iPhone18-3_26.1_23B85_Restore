uint64_t RPLogSetLogLevel(uint64_t result)
{
  if (result <= 3)
  {
    __RPLogLevel = result;
  }

  return result;
}

void sub_D70(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/Frameworks/ReplayKit.framework"];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_C770;
  qword_C770 = v1;
}

void sub_3424(uint64_t a1)
{
  v1 = [*(a1 + 32) table];
  [v1 reloadData];
}

id sub_3728(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 setIsHandlingNotification:0];
}