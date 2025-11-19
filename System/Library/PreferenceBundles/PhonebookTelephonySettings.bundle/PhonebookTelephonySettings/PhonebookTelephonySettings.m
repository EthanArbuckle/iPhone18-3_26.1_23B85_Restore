void sub_11D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1284;
  v6[3] = &unk_81D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t TPSPhonebookLog()
{
  if (qword_D6D8 != -1)
  {
    sub_2674();
  }

  return qword_D6D0;
}

void sub_1BB8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v12 = [v5 domain];

    if (v12)
    {
      v14 = TPSPhonebookLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Failed to update subscription telephone number to %@ due to error %@.", buf, 0x16u);
      }

      if (CPIsInternalDevice())
      {
        v12 = [NSString stringWithFormat:@"Apple Internal Error: %@", v6];
      }

      else
      {
        v12 = 0;
      }
    }

    v16 = [*(a1 + 40) errorAlertControllerWithMessage:v12];
    [*(a1 + 40) presentViewController:v16 animated:1 completion:0];

    goto LABEL_13;
  }

  v7 = TPSPhonebookLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Successfully updated subscription telephone number to %@.", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  v10 = [v9 navigationController];
  v11 = [v10 topViewController];

  if (v9 == v11)
  {
    v12 = [*(a1 + 40) navigationController];
    v13 = [v12 popViewControllerAnimated:1];
LABEL_13:
  }
}