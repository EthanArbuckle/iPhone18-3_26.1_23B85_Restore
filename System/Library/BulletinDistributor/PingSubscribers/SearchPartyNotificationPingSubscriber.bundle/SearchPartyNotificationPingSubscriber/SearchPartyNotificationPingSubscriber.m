void sub_B80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 request];
    v10 = [v9 identifier];
    v34 = 138412290;
    v35 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Handling notification with identifier: %@", &v34, 0xCu);
  }

  v11 = [v5 request];
  v12 = [v11 content];
  v13 = [v12 userInfo];
  v14 = [v13 objectForKeyedSubscript:off_8128];

  if (v14)
  {
    v15 = *(a1 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v5 request];
      v18 = [v17 content];
      v19 = [v18 userInfo];
      v34 = 138412290;
      v35 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "ShouldForwardToCompanionUserInfoKey key present: %@", &v34, 0xCu);
    }

    v20 = [v5 request];
    v21 = [v20 content];
    v22 = [v21 userInfo];
    v23 = [v22 objectForKeyedSubscript:off_8128];
    v24 = [v23 BOOLValue];

    if (v6)
    {
      if (v24)
      {
        v25 = *(a1 + 32);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v5 request];
          v28 = [v27 identifier];
          v34 = 138412290;
          v35 = v28;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Forwarding notification with identifier: %@", &v34, 0xCu);
        }

        v29 = 1;
LABEL_15:
        v6[2](v6, v29);
        goto LABEL_16;
      }

LABEL_12:
      v30 = *(a1 + 32);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = [v5 request];
        v33 = [v32 identifier];
        v34 = 138412290;
        v35 = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "**NOT** forwarding notification with identifier: %@", &v34, 0xCu);
      }

      v29 = 0;
      goto LABEL_15;
    }
  }

  else if (v6)
  {
    goto LABEL_12;
  }

LABEL_16:
}