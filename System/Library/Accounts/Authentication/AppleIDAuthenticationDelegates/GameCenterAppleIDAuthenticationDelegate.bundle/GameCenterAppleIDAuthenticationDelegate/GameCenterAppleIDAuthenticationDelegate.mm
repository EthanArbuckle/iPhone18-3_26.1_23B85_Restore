void sub_2400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_27A0(a1, v9);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = v7;
      v13 = [v11 shortDebugName];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: Saving the game center account %@ succeeded.", &v14, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_27A0(a1, v8);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      sub_2840(a1, v10);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2644(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_2660(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2680(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "GKAppleIDAuthenticationDelegate Error: %@", &v2, 0xCu);
}

void sub_27A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shortDebugName];
  sub_262C();
  sub_2660(&dword_0, v5, v6, "GKAppleIDAuthenticationDelegate: Saving the game center account %@ failed. Error: %@", v7, v8, v9, v10, v11);
}

void sub_2840(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shortDebugName];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "GKAppleIDAuthenticationDelegate: Saving the game center account %@ succeeded.", &v5, 0xCu);
}