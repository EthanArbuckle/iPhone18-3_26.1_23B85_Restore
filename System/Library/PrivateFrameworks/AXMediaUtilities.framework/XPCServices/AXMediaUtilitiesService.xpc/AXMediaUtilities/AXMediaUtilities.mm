void sub_1000022DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _AXMProcessRequestMobileUserPrivileges()
{
  result = getpwnam("mobile");
  if (result)
  {
    v1 = result;
    if (getuid() == *(result + 16))
    {
      return 1;
    }

    else
    {
      return !setgid(*(v1 + 20)) && setuid(*(v1 + 16)) == 0;
    }
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = AXMediaLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "*** AXMediaUtilitiesService is starting ***", v7, 2u);
  }

  if (_AXMProcessRequestMobileUserPrivileges())
  {
    v4 = objc_alloc_init(AXMServiceInstance);
    [(AXMServiceInstance *)v4 run];
    v5 = 0;
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      main_cold_1(&v4->super);
    }

    v5 = -1;
  }

  return v5;
}