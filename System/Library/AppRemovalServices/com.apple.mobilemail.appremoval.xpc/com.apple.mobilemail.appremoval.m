int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001378(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = [v5 ef_publicDescription];
    sub_100001D48(a2, v6, v8);
  }

  v7 = *(a1 + 32);
  if (a2)
  {
    [v7 finishWithResult:*(a1 + 40)];
  }

  else
  {
    [v7 finishWithError:v5];
  }
}

void sub_100001D48(char a1, void *a2, uint8_t *buf)
{
  *buf = 67109378;
  *(buf + 1) = a1 & 1;
  *(buf + 4) = 2114;
  *(buf + 10) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Save account completed: %d %{public}@", buf, 0x12u);
}

void sub_100001DB4(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error getting contents of container directory: %{public}@", buf, 0xCu);
}

void sub_100001E10(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error deleting NanoMail %{public}@", buf, 0xCu);
}

void sub_100001E6C(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to terminate maild: %d", v1, 8u);
}

void sub_100001EEC(void *a1, uint64_t a2, uint8_t *buf)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Joined future error: %{public}@, result: %@", buf, 0x16u);
}