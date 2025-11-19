void sub_12C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  kdebug_trace();
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_15F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Error saving account: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_19C4(uint64_t a1)
{
  v2 = +[FMDFMIPManager sharedInstance];
  [v2 didReceiveLostModeExitAuthToken:*(a1 + 32)];
}

void sub_1A1C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Error saving account: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}