uint64_t sub_938()
{
  v0 = sub_11B8();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1268();
  }

  return 0;
}

void sub_980()
{
  v0 = sub_11B8();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_129C();
  }
}

uint64_t sub_9C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  v7 = sub_11B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_12D0();
  }

  v8 = objc_autoreleasePoolPush();
  v9 = 2529639161;
  v10 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v11 = sub_11B8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1304(buf, [v10 count], v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 isDefaultRealm])
        {
          v17 = [v16 realm];

          if (v17)
          {
            v18 = sub_11B8();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_134C(v17, v18);
            }

            v19 = v17;
            a4(a1, a3, [v17 UTF8String]);
            v9 = 0;
          }

          goto LABEL_18;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_18:

  v20 = sub_11B8();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_141C();
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

void sub_BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v17 = objc_begin_catch(exception_object);
      v18 = sub_11B8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 description];
        sub_13C4(v19, &buf, v18);
      }

      objc_end_catch();
      JUMPOUT(0xB84);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0xB88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, id))
{
  v5 = sub_11B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1450();
  }

  context = objc_autoreleasePoolPush();
  v30 = -1765328135;
  v6 = [NSString stringWithCString:a2 encoding:4];
  v7 = +[SOKerberosHeimdalPluginSettings retrieveAllCurrentSettings];
  v8 = sub_11B8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1304(buf, [v7 count], v8);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (!v9)
  {

LABEL_37:
    v42 = 0;
    goto LABEL_38;
  }

  v31 = v9;
  v10 = 0;
  v42 = 0;
  v33 = *v52;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v52 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v11 = [*(*(&v51 + 1) + 8 * i) domainRealmMapping];
      v38 = v11;
      if (v11)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v36 = [v11 allKeys];
        v39 = [v36 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v39)
        {
          v37 = *v48;
          do
          {
            for (j = 0; j != v39; j = j + 1)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v47 + 1) + 8 * j);
              v12 = [v38 objectForKeyedSubscript:?];
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v13 = v12;
              v14 = [v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v14)
              {
                v15 = *v44;
                do
                {
                  for (k = 0; k != v14; k = k + 1)
                  {
                    if (*v44 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = *(*(&v43 + 1) + 8 * k);
                    v18 = [v6 lowercaseString];
                    v19 = [v17 lowercaseString];
                    if ([v18 hasSuffix:v19])
                    {
                      v20 = [v17 length] > v10;

                      if (v20)
                      {
                        v21 = v41;

                        v10 = [v17 length];
                        v42 = v21;
                      }
                    }

                    else
                    {
                    }
                  }

                  v14 = [v13 countByEnumeratingWithState:&v43 objects:v55 count:16];
                }

                while (v14);
              }
            }

            v39 = [v36 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v39);
        }
      }
    }

    v31 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  }

  while (v31);

  if (!v42)
  {
    goto LABEL_37;
  }

  v22 = sub_11B8();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1484(v42, v6, v22);
  }

  v23 = v42;
  a5(a1, a4, [v42 UTF8String]);
  v30 = 0;
LABEL_38:

  v24 = sub_11B8();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_1574();
  }

  objc_autoreleasePoolPop(context);
  return v30;
}

id sub_11B8()
{
  if (qword_8098 != -1)
  {
    sub_15A8();
  }

  v1 = qword_80A0;

  return v1;
}

void sub_11FC(id a1)
{
  qword_80A0 = os_log_create("com.apple.AppSSO", "AppSSOConfigPlugin");

  _objc_release_x1();
}

void sub_1240(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1304(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "found %lu profiles", buf, 0xCu);
}

void sub_134C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "returning default realm: %{public}@", &v2, 0xCu);
}

void sub_13C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for defaault realm: %{public}@", buf, 0xCu);
}

void sub_1484(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "returning realm: %{public}@ for host: %{public}@", &v3, 0x16u);
}

void sub_150C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "exception in plugin for host: %{public}s, %{public}@", buf, 0x16u);
}