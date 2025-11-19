void sub_E44(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "FAAccountNotificationPlugin: Error from service - %@", &v4, 0xCu);
  }
}

void sub_FC4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = _FAAgeAttestationLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12C0(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "removed proto account restrictions", v6, 2u);
  }
}

void sub_118C(id a1, NSNumber *a2, NSError *a3)
{
  v4 = a3;
  v5 = [(NSNumber *)a2 BOOLValue];
  v6 = _FALogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[FAAccountNotificationPlugin _enableScreentimeForAccount:]_block_invoke";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: screentime all setup", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1338(v4, v7);
  }
}

void sub_12C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "failed to add restrictions on proto account added; error: %@", &v2, 0xCu);
}

void sub_1338(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[FAAccountNotificationPlugin _enableScreentimeForAccount:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s: Error Setting up Screentime: %@", &v2, 0x16u);
}