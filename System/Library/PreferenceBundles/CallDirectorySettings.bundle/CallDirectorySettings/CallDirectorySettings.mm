uint64_t CallDirectoryLog()
{
  if (qword_8720 != -1)
  {
    sub_19BC();
  }

  return qword_8718;
}

void sub_12EC(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13B4;
  block[3] = &unk_41D8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_13B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CallDirectoryLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received call directory extensions %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_19D0(a1, v4);
  }

  v6 = *(a1 + 32);
  if (!v6 || ([*(a1 + 48) extensions], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, (v8 & 1) == 0))
  {
    v9 = +[NSMutableArray array];
    [*(a1 + 48) setExtensions:v9];

    v10 = +[NSMutableArray array];
    [*(a1 + 48) setLlextensions:v10];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 state] - 1 <= &dword_0 + 3)
          {
            v17 = [*(a1 + 48) extensions];
            [v17 addObject:v16];

            v18 = [*(a1 + 48) llextensions];
            [v18 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return [*(a1 + 48) updateParentListController];
}

void sub_19D0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error retrieving extensions: %@", &v3, 0xCu);
}