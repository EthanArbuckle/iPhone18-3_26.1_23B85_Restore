void sub_DD4(id a1)
{
  qword_8458 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_E18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 aa_altDSID];
  [v4 accountChanged:v5 to:*(a1 + 40)];
}

void sub_E8C(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_8450 != -1)
  {
    sub_FA4();
  }

  v3 = qword_8458;
  if (os_log_type_enabled(qword_8458, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "account changed failed: %@", &v4, 0xCu);
  }
}

void sub_F4C(id a1)
{
  qword_8458 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

untIsPrimary:v17];
  if (qword_8450 != -1)
  {
    sub_F90();
  }

  v19 = qword_8458;
  if (os_log_type_enabled(qword_8458, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v17 identifier];
    *buf = 138412802;
    v26 = v21;
    v27 = 2112;
    v28 = v15;
    v29 = 1024;
    v30 = v18;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "account %@ changed to %@ primary: %d", buf, 0x1Cu);
  }

  if ((v16 & v18 & (v17 != 0)) == 1)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_E18;
    v22[3] = &unk_4120;
    v23 = v17;
    v24 = v15;
    [TransparencyXPCConnection invokeAccountsSupportWithBlock:v22 errorHandler:&stru_4160];
  }
}

@end