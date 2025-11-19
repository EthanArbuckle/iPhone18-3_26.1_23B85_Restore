void sub_10D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[ACNotificationsFormatProvider stringForExpression:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%s %{public}@ Didn't match expression %{public}@", &v3, 0x20u);
}