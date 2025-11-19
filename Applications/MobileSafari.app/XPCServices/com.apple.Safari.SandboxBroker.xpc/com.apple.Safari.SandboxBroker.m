int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(SafariSandboxBrokerServiceDelegate);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  objc_autoreleasePoolPop(v3);
  [v5 resume];
  exit(1);
}