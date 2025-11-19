int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(CRLAppRemovalServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id CRLAppBundleIdentifier()
{
  if (CRLAppBundleIdentifier_onceToken != -1)
  {
    CRLAppBundleIdentifier_cold_1();
  }

  v1 = CRLAppBundleIdentifier_identifier;

  return v1;
}

void __CRLAppBundleIdentifier_block_invoke_cold_1()
{
  v0 = 138412290;
  v1 = CRLAppBundleIdentifier_identifier;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "App bundle identifier (%@) has unexpected prefix.", &v0, 0xCu);
}