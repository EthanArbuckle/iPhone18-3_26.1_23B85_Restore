int main(int argc, const char **argv, const char **envp)
{
  getpid();
  if (!sandbox_container_path_for_pid())
  {
    setenv("HOME", __value, 1);
    setenv("CFFIXED_USER_HOME", __value, 1);
    if (__strlcat_chk() >= 0x400)
    {
      exit(1);
    }

    setenv("TMPDIR", __value, 1);
  }

  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001158(uint64_t a1)
{
  v1 = 138412546;
  v2 = a1;
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "iBooksAppRemoval: Error encountered removing %@. Bailing. Error: %@", &v1, 0x16u);
}