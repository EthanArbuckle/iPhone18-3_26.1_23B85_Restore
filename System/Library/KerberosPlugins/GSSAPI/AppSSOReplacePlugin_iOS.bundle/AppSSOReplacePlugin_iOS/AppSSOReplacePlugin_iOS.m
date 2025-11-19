gss_cred_id_t sub_9E4(gss_name_t_desc_struct *a1, const gss_OID_desc *a2, uint64_t a3)
{
  v5 = sub_1170();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1210();
  }

  if (!gss_oid_equal(a2, &__gss_krb5_mechanism_oid_desc))
  {
    return 0;
  }

  v6 = sub_1170();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1250();
  }

  context = objc_autoreleasePoolPush();
  DisplayString = GSSNameCreateDisplayString(a1);
  v8 = sub_1170();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_12C0();
  }

  v50 = DisplayString;
  v9 = [(__CFString *)v50 componentsSeparatedByString:@"@"];
  v10 = [v9 count];
  if (v10 != &dword_0 + 3)
  {
    if (v10 == &dword_0 + 2)
    {
      v13 = [v9 objectAtIndexedSubscript:0];
      v11 = [v13 componentsSeparatedByString:@"/"];

      v14 = [v11 count];
      v15 = v11;
      if (v14 == &dword_0 + 2 || (v16 = [v9 count], v15 = v9, v16 == &dword_0 + 2))
      {
        v57 = [v15 objectAtIndexedSubscript:1];
        goto LABEL_21;
      }

LABEL_20:
      v57 = 0;
      goto LABEL_21;
    }

    if (v10 == &dword_0 + 1)
    {
      v11 = [(__CFString *)v50 componentsSeparatedByString:@"/"];
      if ([v11 count] == &dword_0 + 2)
      {
        v57 = [v11 objectAtIndexedSubscript:1];
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ([v9 count] != &dword_0 + 2)
  {
LABEL_19:
    v57 = 0;
    goto LABEL_22;
  }

  v57 = [v9 objectAtIndexedSubscript:1];
LABEL_22:

  if (!v57)
  {
    v12 = 0;
    goto LABEL_74;
  }

  v17 = sub_1170();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1330();
  }

  v18 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v19 = sub_1170();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_13A0(buf, [v18 count], v19);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (!v20)
  {

    goto LABEL_69;
  }

  v21 = 0;
  v22 = 0;
  v53 = *v63;
  v54 = v20;
  do
  {
    for (i = 0; i != v54; i = v26 + 1)
    {
      if (*v63 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v55 = i;
      v56 = *(*(&v62 + 1) + 8 * i);
      v24 = sub_1170();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = +[SOKerberosHeimdalPluginSettings stringWithCredentialUseMode:](SOKerberosHeimdalPluginSettings, "stringWithCredentialUseMode:", [v56 credentialUseMode]);
        sub_13E8(v25, v67, &v68, v24);
      }

      v26 = v55;
      if ([v56 credentialUseMode] - 1 > &dword_0 + 1)
      {
        continue;
      }

      v27 = [v56 credentialUseMode];
      if (a3 && v27 == &dword_0 + 1)
      {
        v28 = 0;
        goto LABEL_56;
      }

      v29 = [v56 hosts];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (!v31)
      {
        v28 = v22;
        goto LABEL_55;
      }

      v32 = *v59;
      v28 = v22;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v59 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v58 + 1) + 8 * j);
          if (![v34 hasPrefix:@"."])
          {
            v39 = [v57 lowercaseString];
            v40 = [v34 lowercaseString];
            v41 = [v39 isEqualToString:v40];

            if (!v41)
            {
              continue;
            }

            [v56 currentCredential];
            v28 = v35 = v28;
            goto LABEL_50;
          }

          v35 = [v57 lowercaseString];
          v36 = [v34 lowercaseString];
          if (![v35 hasSuffix:v36])
          {

LABEL_50:
            continue;
          }

          v37 = [v34 length] > v21;

          if (v37)
          {
            v38 = [v56 currentCredential];

            v21 = [v34 length];
            v28 = v38;
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v31);
LABEL_55:

      v22 = v30;
LABEL_56:

      v22 = v28;
      v26 = v55;
    }

    v54 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  }

  while (v54);

  if (!v22)
  {
LABEL_69:
    v43 = sub_1170();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_157C();
    }

    v22 = 0;
    goto LABEL_72;
  }

  v42 = sub_1170();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_1444();
  }

  v43 = [v22 UUIDString];
  if (([v43 isEqualToString:&stru_4190]& 1) != 0 || (v44 = CFUUIDCreateFromString(0, v43), (v45 = v44) == 0))
  {
LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

  v12 = GSSCreateCredentialFromUUID(v44);
  CFRelease(v45);
  v46 = sub_1170();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    sub_150C();
  }

LABEL_73:
LABEL_74:

  v47 = sub_1170();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_15BC();
  }

  objc_autoreleasePoolPop(context);
  return v12;
}

void sub_1090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint8_t buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v35 = objc_begin_catch(exception_object);
      v36 = sub_1170();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v35 description];
        sub_14B4(v37, &buf, v36);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1018);
  }

  _Unwind_Resume(exception_object);
}

id sub_1170()
{
  if (qword_80B0 != -1)
  {
    sub_15FC();
  }

  v1 = qword_80B8;

  return v1;
}

void sub_11B4(id a1)
{
  qword_80B8 = os_log_create("com.apple.AppSSO", "AppSSOReplacePlugin");

  _objc_release_x1();
}

void sub_1250()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12C0()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1330()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_13A0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "found %lu profiles", buf, 0xCu);
}

void sub_13E8(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "credentialUseMode: %@", buf, 0xCu);
}

void sub_1444()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_14B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin %{public}@", buf, 0xCu);
}

void sub_150C()
{
  sub_1204();
  sub_11F8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}