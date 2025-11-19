int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100000CEC(uint64_t a1)
{
  v2 = objc_alloc_init(off_1000090C8());
  [*(a1 + 32) setHomeManager:v2];

  v3 = *(a1 + 32);
  v4 = [v3 homeManager];
  [v4 setDelegate:v3];

  v5 = *(a1 + 32);
  v6 = [v5 homeManager];
  v7 = [v6 currentHome];
  [v7 setDelegate:v5];

  v8 = *(a1 + 32);
  v9 = [v8 currentHome];
  [v9 setDelegate:v8];
}

id sub_100001300(uint64_t a1)
{
  do
  {
    result = [*(a1 + 32) accessoryReprovisionState];
  }

  while (result);
  return result;
}

Class sub_1000015A8()
{
  if (qword_100009268 != -1)
  {
    sub_100001644();
  }

  result = objc_getClass("HMHomeManager");
  qword_100009258 = result;
  off_1000090C8 = sub_100001638;
  return result;
}

void sub_1000015FC(id a1)
{
  qword_100009260 = dlopen("/System/Library/Framework/HomeKit.framework/HomeKit", 2);
  if (!qword_100009260)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Framework/HomeKit.framework/HomeKit");
  }
}