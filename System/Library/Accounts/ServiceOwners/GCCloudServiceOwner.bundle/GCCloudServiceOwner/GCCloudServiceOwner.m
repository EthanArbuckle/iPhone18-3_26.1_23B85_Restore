id sub_1014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_15C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1674;
  v8[3] = &unk_4200;
  v9 = v3;
  v7 = v3;
  [v4 signOutService:v5 withContext:v6 completion:v8];
}

void sub_1824(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = AIDAServiceTypeGameCenter;
  v5 = a2;
  v6 = [v3 accountForService:v4];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1E28(v6);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1DA8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "View controller for presentation %@", &v1, 0xCu);
}

void sub_1E28(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "Fetched new account %@ for GameCenter.", &v1, 0xCu);
}