uint64_t TPSSIMApplicationsLog()
{
  if (qword_86D8 != -1)
  {
    sub_1BAC();
  }

  return qword_86D0;
}

void sub_1B24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Retrieving SIM applications for subscription context %@ failed with error %@", &v3, 0x16u);
}