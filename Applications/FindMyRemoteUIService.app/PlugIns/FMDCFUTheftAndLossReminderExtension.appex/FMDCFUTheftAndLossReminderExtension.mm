id sub_100000D84(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000013A4();
    }
  }

  else if (a2 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cancelling CFU reminder", v5, 2u);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000013E8();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Enabled Find My, clearing pending CFU", buf, 2u);
    }

    v3 = +[FMDSharedConfiguration sharedInstance];
    [v3 clearTheftAndLossCFUWithReply:&stru_100004108];
  }

  return [*(a1 + 32) finishProcessing];
}

void sub_100000EA4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001460();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cleared pending CFU", v3, 2u);
  }
}

void sub_100000F38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000014D8();
    }
  }

  else
  {
    if (v5)
    {
      v8 = [v5 view];
      [v8 setAutoresizingMask:18];

      v9 = [*(a1 + 32) view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v5 view];
      [v18 setFrame:{v11, v13, v15, v17}];

      v19 = [*(a1 + 32) view];
      v20 = [v5 view];
      [v19 addSubview:v20];

      [*(a1 + 32) addChildViewController:v5];
      [v5 didMoveToParentViewController:*(a1 + 32)];
      v7 = *(*(a1 + 40) + 16);
      goto LABEL_7;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001550();
    }
  }

  v7 = *(*(a1 + 40) + 16);
LABEL_7:
  v7();
}

void sub_100001310(int *a1)
{
  v6 = *a1;
  sub_1000012F8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000013E8()
{
  sub_100001304();
  sub_1000012F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001460()
{
  sub_100001304();
  sub_1000012F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000014D8()
{
  sub_100001304();
  sub_1000012F8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001594(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  sub_100001304();
  sub_1000012F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}