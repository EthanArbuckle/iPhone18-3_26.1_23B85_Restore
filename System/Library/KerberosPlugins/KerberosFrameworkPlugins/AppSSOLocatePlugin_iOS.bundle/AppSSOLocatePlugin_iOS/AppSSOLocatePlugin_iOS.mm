uint64_t sub_988(uint64_t a1, void *a2)
{
  v4 = sub_F58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_FF8();
  }

  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  result = 0;
  v6[1] = a1;
  *a2 = v6;
  return result;
}

void sub_A14(void *a1)
{
  v2 = sub_F58();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1034();
  }

  free(a1);
}

uint64_t sub_A64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, id), uint64_t a8)
{
  v10 = sub_F58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1070();
  }

  context = objc_autoreleasePoolPush();
  v11 = sub_F58();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10AC(a1);
  }

  v42 = -1765328135;
  v12 = [NSString stringWithCString:a4 encoding:4];
  v43 = [v12 uppercaseString];

  v51 = 0;
  v13 = [SOKerberosHeimdalPluginSettings retrieveCurrentSettingsForRealm:v43 error:&v51];
  v14 = v51;
  v44 = v14;
  v45 = v13;
  if (!v13)
  {
    if (v14)
    {
      v33 = v14;
      v34 = sub_F58();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_11A8(v33, v34);
      }
    }

    v20 = sub_F58();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1220();
    }

    goto LABEL_29;
  }

  v15 = [v13 siteCode];
  v16 = *a1;
  *a1 = v15;

  v17 = sub_F58();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1130(a1);
  }

  v18 = [v45 kdcs];
  v19 = [v18 count] == 0;

  if (!v19)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = [v45 kdcs];
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v21)
    {
      v22 = *v48;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v47 + 1) + 8 * i);
          v25 = sub_F58();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v53 = v24;
            _os_log_debug_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "adding kerberos kdc: %@", buf, 0xCu);
          }

          v26 = [SOKerberosServer serverWithString:v24];
          v27 = v26;
          if (v26 && ([v26 protocol], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == 0, v28, v29))
          {
            v31 = [@"tcp/" stringByAppendingString:v24];
            v32 = v31;
            a7(a8, [v31 UTF8String]);
          }

          else
          {
            v30 = v24;
            a7(a8, [v24 UTF8String]);
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v21);
    }

LABEL_29:
  }

  v35 = v45;
  if (*a1 && ([*a1 isEqualToString:kSOKerberosAttributeValueNoSiteCode] & 1) == 0)
  {
    v36 = sub_F58();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_1294(a1);
    }

    v37 = a1[1];
    [*a1 UTF8String];
    v35 = v45;
    krb5_krbhst_set_sitename();
    v42 = 0;
  }

  v38 = sub_F58();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_1374();
  }

  objc_autoreleasePoolPop(context);
  return v42;
}

void sub_E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint8_t buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v29 = objc_begin_catch(exception_object);
      v30 = sub_F58();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [v29 description];
        sub_130C(a11, v31, &buf, v30);
      }

      objc_end_catch();
      JUMPOUT(0xE1CLL);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0xE20);
  }

  _Unwind_Resume(exception_object);
}

id sub_F58()
{
  if (qword_8098 != -1)
  {
    sub_13B0();
  }

  v1 = qword_80A0;

  return v1;
}

void sub_F9C(id a1)
{
  qword_80A0 = os_log_create("com.apple.AppSSO", "AppSSOLocatePlugin");

  _objc_release_x1();
}

void sub_FF8()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1034()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1070()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10AC(uint64_t *a1)
{
  v6 = a1[1];
  v7 = *a1;
  sub_FE0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1130(uint64_t *a1)
{
  v6 = *a1;
  sub_FE0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_11A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "error when retrieving plugin settings: %@", &v2, 0xCu);
}

void sub_1294(uint64_t *a1)
{
  v6 = *a1;
  sub_FE0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_130C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for realm: %{public}s, %{public}@", buf, 0x16u);
}

void sub_1374()
{
  sub_FEC();
  sub_FE0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}