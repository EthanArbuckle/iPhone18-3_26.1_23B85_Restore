void sub_B94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Handling notification: %@", &v14, 0xCu);
  }

  if (v6)
  {
    v8 = [v5 request];
    v9 = [v8 content];
    v10 = [v9 categoryIdentifier];
    v11 = [v10 isEqualToString:WFDialogNotificationCategoryIdentifier];

    if (v11)
    {
      v12 = *(a1 + 32);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Suppressed dialog notification from forwarding to watch: %@", &v14, 0xCu);
      }

      v6[2](v6, 0);
    }

    else
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "ack handler is nil, returning", &v14, 2u);
    }
  }
}