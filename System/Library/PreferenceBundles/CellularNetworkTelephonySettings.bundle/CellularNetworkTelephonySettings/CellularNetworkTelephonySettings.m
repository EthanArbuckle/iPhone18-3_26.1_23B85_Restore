uint64_t TPSCellularNetworkLog()
{
  if (qword_CF40 != -1)
  {
    sub_3028();
  }

  return qword_CF38;
}

void sub_2FB0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not find network item at index %ld", &v2, 0xCu);
}