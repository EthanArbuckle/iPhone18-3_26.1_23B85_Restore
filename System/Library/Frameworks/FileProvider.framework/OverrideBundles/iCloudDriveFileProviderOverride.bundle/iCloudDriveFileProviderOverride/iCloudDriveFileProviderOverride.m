void sub_238353748(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [*(a1 + 32) bookmarkPrefix];
    v12 = [v10 stringByAppendingString:v7];
  }

  else
  {
    v12 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v12, v9);
  }
}

void sub_238353954(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_238352000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] [%@] not our domain%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}