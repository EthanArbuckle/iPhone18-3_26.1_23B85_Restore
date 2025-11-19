id GSSDefaultLog()
{
  if (GSSDefaultLog_onceToken != -1)
  {
    GSSDefaultLog_cold_1();
  }

  v1 = GSSDefaultLog_sLog;

  return v1;
}

id _setUpTemporaryDirectory()
{
  bzero(v4, 0x400uLL);
  [@"com.apple.SharePlay.GroupSessionService" UTF8String];
  if (!_set_user_dir_suffix() || !confstr(65537, v4, 0x400uLL) || mkdir(v4, 0x1C0u) && *__error() != 17)
  {
    v2 = GSSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _setUpTemporaryDirectory_cold_2();
    }

LABEL_13:

    exit(1);
  }

  bzero(v3, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v3))
  {
    v2 = GSSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _setUpTemporaryDirectory_cold_1();
    }

    goto LABEL_13;
  }

  v0 = [NSString stringWithUTF8String:v3];

  return v0;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void _setUpTemporaryDirectory_cold_1()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v2, v3, "failed to resolve temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void _setUpTemporaryDirectory_cold_2()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v2, v3, "failed to initialize temporary directory (%d): %s", v4, v5, v6, v7, v8);
}