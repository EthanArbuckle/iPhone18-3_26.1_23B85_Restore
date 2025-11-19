void sub_10B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Remove success %@ error %@", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_17D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 type] == &dword_0 + 3)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (!v12)
    {
      goto LABEL_12;
    }

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v5];
  }

  else
  {
LABEL_9:

LABEL_12:
    v12 = _ACLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E5C(v5, a1, v12);
    }
  }
}

void sub_1944(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [NSNumber numberWithBool:a2];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Did remove obsolete account %@ with success %@ error %@", &v9, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1CC8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ran account migration plugins, success: %@ error: %@", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1DC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DE4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1DC4(&dword_0, a2, a3, "Couldn't remove file at %@: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1E5C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 40);
  sub_1DC4(&dword_0, a2, a3, "Could not find acceptable action for dataclass %@ for removal of account %@. Probably orphaning data.", *v3, *&v3[8], *&v3[16]);
}