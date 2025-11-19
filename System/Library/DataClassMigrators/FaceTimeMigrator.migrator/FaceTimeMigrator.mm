void sub_23396DBBC()
{
  v0 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23396C000, v0, OS_LOG_TYPE_DEFAULT, "  Delete succeeded", v1, 2u);
  }
}

void sub_23396DC2C()
{
  v0 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23396C000, v0, OS_LOG_TYPE_DEFAULT, "  Delete succeeded", v1, 2u);
  }
}

void sub_23396DC9C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23396C000, v4, OS_LOG_TYPE_DEFAULT, "ProfileID save completed, success %@, account %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}