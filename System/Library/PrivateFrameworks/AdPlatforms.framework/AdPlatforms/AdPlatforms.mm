void ADLOG(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  if (ADLOG_onceToken != -1)
  {
    ADLOG_cold_1();
  }

  v12 = _logHandle;
  if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
    v14 = v12;
    *buf = 136315138;
    v17 = [v11 cStringUsingEncoding:4];
    _os_log_impl(&dword_23E745000, v14, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __ADLOG_block_invoke()
{
  _logHandle = os_log_create("com.apple.iad", "StatusConditions");

  return MEMORY[0x2821F96F8]();
}