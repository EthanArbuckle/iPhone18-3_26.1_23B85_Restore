id stringOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void sub_10000181C(void *a1, NSObject *a2)
{
  v3 = [a1 inputs];
  v4 = [v3 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Test %@ is not found.", &v5, 0xCu);
}

void sub_1000018CC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 portType];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Audio Out: %@", a1, 0xCu);
}