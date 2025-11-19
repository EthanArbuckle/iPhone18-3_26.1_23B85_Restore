void sub_1000011E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceWasAdded:*(a1 + 32)];
  }
}

void sub_10000139C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 deviceWasRemoved:*(a1 + 32)];
  }
}

void sub_100001A98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hidReportCallback:*(a1 + 32) result:*(a1 + 56) type:*(a1 + 60) reportID:*(a1 + 64) report:*(a1 + 40) reportLength:*(a1 + 48)];
  }
}

void sub_100003960(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005E88(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  sub_10000397C();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Turtle Packet:\n{\n%@\n}", v4, 0xCu);
}