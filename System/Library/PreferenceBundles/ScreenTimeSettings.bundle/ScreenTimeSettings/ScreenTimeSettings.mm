void sub_DA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[STLog userNotifications];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_156C(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Successfully loaded custom notification settings", v5, 2u);
  }
}

void sub_F0C(void *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [STCoreUser fetchLocalUserInContext:v2 error:&v10];
  v4 = v10;
  if (!v3)
  {
    v7 = *(a1[6] + 16);
LABEL_6:
    v7();
    goto LABEL_7;
  }

  if (![v3 isParent])
  {
    v7 = *(a1[6] + 16);
    goto LABEL_6;
  }

  v5 = +[NSOperationQueue mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_102C;
  v8[3] = &unk_41E8;
  v6 = a1[6];
  v8[4] = a1[5];
  v9 = v6;
  [v5 addOperationWithBlock:v8];

LABEL_7:
}

uint64_t sub_102C(uint64_t a1)
{
  [*(a1 + 32) setIsParent:1];
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_156C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to load custom notification settings: %{public}@", &v2, 0xCu);
}