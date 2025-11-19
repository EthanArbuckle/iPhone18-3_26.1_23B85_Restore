void sub_100634730(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_int64_create(*a1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "state";
  sub_10000F688(&v14, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  v9 = *(a1 + 1);
  v8 = a1 + 2;
  v7 = v9;
  if (*(v8 + 23) >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v12 = xpc_string_create(v10);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "reason";
  sub_10000F688(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void sub_1006348DC(uint64_t a1, void **a2)
{
  sub_10000501C(v15, "");
  LODWORD(__p) = -1;
  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&v13, *v15, *&v15[2]);
    v4 = __p;
  }

  else
  {
    v13 = *v15;
    v14 = v16;
    v4 = -1;
  }

  *a1 = v4;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v13;
  *(a1 + 24) = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(*v15);
  }

  v5 = *a2;
  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v6 = object;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    __p = &object;
    *&v13 = "state";
    sub_100006354(&__p, v15);
    type = xpc_get_type(*v15);
    if (type == &_xpc_type_string)
    {
      LODWORD(v9[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v9, v15, v8);
      *a1 = v9[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v15, 0, v8);
    }

    xpc_release(*v15);
    v9[0] = &object;
    v9[1] = "reason";
    sub_100006354(v9, &v10);
    __p = 0;
    v13 = 0uLL;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v15;
    *(a1 + 24) = v16;
    xpc_release(v10);
  }

  xpc_release(object);
}

void sub_100634AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

BOOL sub_100634B78(int a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    v7 = &__kCFBooleanFalse;
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  v18[0] = @"supportsSGP";
  v18[1] = @"iosVersion";
  v19[0] = v7;
  (*(**a2 + 216))(__p);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithFormat:@"%s", v8];
  v19[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v10 mutableCopy];

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**a2 + 200))(__p);
  v12 = __p[0];
  sub_100005978(__p);
  if ([v12 length])
  {
    [v11 setObject:v12 forKeyedSubscript:@"productType"];
  }

  (*(**a2 + 128))(__p);
  v13 = __p[0];
  sub_100005978(__p);
  if ([v13 length])
  {
    [v11 setObject:v13 forKeyedSubscript:@"regionInfo"];
  }

  v14 = sub_100634E10(v11, a3);

  objc_autoreleasePoolPop(v6);
  return v14;
}

BOOL sub_100634E10(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:a1 options:0 error:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = *sub_1000201E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 description];
      v7 = v6;
      v8 = [v6 UTF8String];
      *buf = 136315138;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Serialization Error: %s", buf, 0xCu);
    }
  }

  else
  {
    v9 = v3;
    v10 = [v3 bytes];
    v11 = *(a2 + 8);
    v12 = [v3 length];
    sub_100553C7C(a2, v11, v10, &v12[v10], v12);
  }

  return v4 == 0;
}

uint64_t sub_100634F98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  context = objc_autoreleasePoolPush();
  v5 = *a1;
  if (*a1)
  {
    v71[0] = 0;
    v50 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:v71];
    v49 = v71[0];
    v6 = v50;
    if (v49)
    {
      v7 = 1;
    }

    else
    {
      v7 = v50 == 0;
    }

    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v36 = sub_1000201E0();
      if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        v37 = 0;
LABEL_80:

        goto LABEL_81;
      }

      sub_101776208();
      v37 = 0;
    }

    else
    {
      v48 = [v50 objectForKey:@"sessionId"];
      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v43 = [v50 objectForKey:@"serviceDiscovery"];
        if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v8 = v48;
          sub_10000501C(&v69, [v48 UTF8String]);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = v69;
          *(a2 + 16) = v70;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v9 = v43;
          v10 = [v9 countByEnumeratingWithState:&v65 objects:v74 count:16];
          if (v10)
          {
            v11 = *v66;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v66 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v65 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v9 objectForKey:v13];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v15 = v14;
                    sub_10000501C(&v69, [v14 UTF8String]);
                    sub_10000501C(v63, "defaultUrls");
                    __p[0] = v63;
                    v16 = sub_1000E2134(a3, v63);
                    v17 = v13;
                    sub_10000501C(__p, [v13 UTF8String]);
                    v71[2] = __p;
                    v18 = sub_1000E9F90(v16 + 56, __p);
                    v19 = v18;
                    if (*(v18 + 79) < 0)
                    {
                      operator delete(*(v18 + 56));
                    }

                    *(v19 + 56) = v69;
                    *(v19 + 72) = v70;
                    HIBYTE(v70) = 0;
                    LOBYTE(v69) = 0;
                    if (v62 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (v64 < 0)
                    {
                      operator delete(v63[0]);
                    }

                    if (SHIBYTE(v70) < 0)
                    {
                      operator delete(v69);
                    }
                  }
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v65 objects:v74 count:16];
            }

            while (v10);
          }

          v42 = [v50 objectForKey:@"regionDiscovery"];
          if (v42)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              obj = v42;
              v47 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
              if (v47)
              {
                v20 = 0;
                v21 = *v58;
                v44 = *v58;
                while (1)
                {
                  if (v21 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v57 + 1) + 8 * v20);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v46 = [obj objectForKey:v22];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      *(&v69 + 1) = 0;
                      v70 = 0;
                      *&v69 = &v69 + 8;
                      v53 = 0u;
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v23 = v46;
                      v24 = [v23 countByEnumeratingWithState:&v53 objects:v72 count:16];
                      if (v24)
                      {
                        v25 = 0;
                        v26 = *v54;
                        for (j = *v54; ; j = *v54)
                        {
                          if (j != v26)
                          {
                            objc_enumerationMutation(v23);
                          }

                          v28 = *(*(&v53 + 1) + 8 * v25);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v29 = [v23 objectForKeyedSubscript:v28];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v30 = v29;
                              v31 = [v29 UTF8String];
                              v32 = v28;
                              sub_10000501C(v63, [v28 UTF8String]);
                              __p[0] = v63;
                              v33 = sub_1000E9F90(&v69, v63);
                              sub_100016890((v33 + 56), v31);
                              if (v64 < 0)
                              {
                                operator delete(v63[0]);
                              }
                            }
                          }

                          if (++v25 >= v24)
                          {
                            v24 = [v23 countByEnumeratingWithState:&v53 objects:v72 count:16];
                            if (!v24)
                            {
                              break;
                            }

                            v25 = 0;
                          }
                        }
                      }

                      if (v70)
                      {
                        v34 = v22;
                        sub_10000501C(v63, [v22 UTF8String]);
                        __p[0] = v63;
                        v35 = (sub_1000E2134(a3, v63) + 56);
                        if (v35 != &v69)
                        {
                          sub_1001732FC(v35, v69, &v69 + 1);
                        }

                        if (v64 < 0)
                        {
                          operator delete(v63[0]);
                        }
                      }

                      sub_1000DD0AC(&v69, *(&v69 + 1));
                    }
                  }

                  if (++v20 >= v47)
                  {
                    v47 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
                    if (!v47)
                    {
                      break;
                    }

                    v20 = 0;
                  }

                  v21 = *v58;
                }
              }
            }
          }

          v37 = 1;
        }

        else
        {
          v40 = sub_1000201E0();
          if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            sub_10177623C();
          }

          v37 = 0;
        }
      }

      else
      {
        v39 = sub_1000201E0();
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          sub_101776270();
        }

        v37 = 0;
      }
    }

    v6 = v50;
    goto LABEL_80;
  }

  v38 = sub_1000201E0();
  if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
  {
    sub_1017762A4();
  }

  v37 = 0;
LABEL_81:
  objc_autoreleasePoolPop(context);
  return v37;
}

BOOL sub_100635854(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (!v8 || *a2 == a2[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v19[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v20[0] = v10;
    v19[1] = @"lpaSignedRequest";
    v11 = __p;
    if (v18 < 0)
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v20[1] = v12;
    v19[2] = @"action";
    v13 = [NSString stringWithFormat:@"%s", encodeProfileAction()];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

void sub_100635A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100635A74(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v91 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v91];
    v9 = v91;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v41 = sub_1000201E0();
      if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v42 = 0;
    }

    else
    {
      v71 = [v8 objectForKey:@"sessionId"];
      if (v71 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v71;
        sub_10000501C(buf, [v71 UTF8String]);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *buf;
        *(a2 + 16) = *&v82[0];
        v12 = [v8 objectForKey:@"profileOptions"];
        v57 = v12;
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            obj = v12;
            v13 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
            if (v13)
            {
              v14 = 0;
              v15 = *v88;
              v72 = *v88;
              while (1)
              {
                if (v15 != v72)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v87 + 1) + 8 * v14);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v16 objectForKey:@"smDpUrl"];
                  if (v17)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = a3[1];
                      if (v18 >= a3[2])
                      {
                        v19 = sub_1005C18A0(a3);
                      }

                      else
                      {
                        *(v18 + 304) = 0;
                        *(v18 + 272) = 0u;
                        *(v18 + 288) = 0u;
                        *(v18 + 240) = 0u;
                        *(v18 + 256) = 0u;
                        *(v18 + 208) = 0u;
                        *(v18 + 224) = 0u;
                        *(v18 + 176) = 0u;
                        *(v18 + 192) = 0u;
                        *(v18 + 144) = 0u;
                        *(v18 + 160) = 0u;
                        *(v18 + 112) = 0u;
                        *(v18 + 128) = 0u;
                        *(v18 + 80) = 0u;
                        *(v18 + 96) = 0u;
                        *(v18 + 48) = 0u;
                        *(v18 + 64) = 0u;
                        *(v18 + 16) = 0u;
                        *(v18 + 32) = 0u;
                        *v18 = 0u;
                        v19 = v18 + 312;
                      }

                      v70 = v19;
                      a3[1] = v19;
                      v68 = [v16 objectForKey:@"eventId"];
                      v22 = v17;
                      sub_100016890((v70 - 312), [v17 UTF8String]);
                      if (v68)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v23 = v68;
                          sub_100016890((v70 - 288), [v68 UTF8String]);
                        }
                      }

                      v67 = [v16 objectForKey:@"carrier"];
                      if (v67)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v24 = v67;
                          sub_100016890((v70 - 264), [v67 UTF8String]);
                        }
                      }

                      v64 = [v16 objectForKey:@"type"];
                      if (v64)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *(v70 - 192) = [v64 isEqualToString:@"provisioning"];
                        }
                      }

                      v66 = [v16 objectForKey:@"iccidHash"];
                      if (v66)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v25 = v66;
                          sub_100016890((v70 - 240), [v66 UTF8String]);
                        }
                      }

                      v65 = [v16 objectForKey:@"eventType"];
                      if (v65)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v26 = v65;
                          sub_100016890((v70 - 216), [v65 UTF8String]);
                        }
                      }

                      v63 = [v16 objectForKey:@"isOda"];
                      if (v63)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *(v70 - 191) = [v63 BOOLValue];
                        }
                      }

                      if (*(v70 - 191) == 1)
                      {
                        v69 = [v16 objectForKey:@"esimInstallDetails"];
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & (v69 != 0)) == 0)
                        {
                          v56 = *sub_1000201E0();
                          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (esimInstallDetailObj element)", buf, 2u);
                          }

                          v42 = 0;
                          goto LABEL_113;
                        }

                        memset(v86, 0, sizeof(v86));
                        memset(v85, 0, sizeof(v85));
                        v83 = 0u;
                        v84 = 0u;
                        memset(v82, 0, sizeof(v82));
                        *buf = 0u;
                        v62 = [v69 objectForKey:@"iccid"];
                        if (v62)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v27 = v62;
                            sub_100016890(buf, [v62 UTF8String]);
                          }
                        }

                        v61 = [v69 objectForKey:@"sourceIccid"];
                        if (v61)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v28 = v61;
                            sub_100016890((v82 + 8), [v61 UTF8String]);
                          }
                        }

                        v60 = [v69 objectForKey:@"phoneNumber"];
                        if (v60)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v29 = v60;
                            sub_100016890(&v83, [v60 UTF8String]);
                          }
                        }

                        v59 = [v69 objectForKey:@"tetherActionType"];
                        if (v59)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            __p[0] = 0;
                            __p[1] = 0;
                            v80 = 0;
                            v30 = v59;
                            sub_10000501C(__p, [v59 UTF8String]);
                            DWORD2(v84) = 0;
                            std::locale::locale(&v78);
                            v31 = sub_1006368F4(__p, "DELAYED", &v78);
                            std::locale::~locale(&v78);
                            if (v31)
                            {
                              v32 = 1;
                              goto LABEL_63;
                            }

                            std::locale::locale(&v78);
                            v33 = sub_1006369E8(__p, "NOW", &v78);
                            std::locale::~locale(&v78);
                            if (v33)
                            {
                              v32 = 2;
LABEL_63:
                              DWORD2(v84) = v32;
                            }

                            if (SHIBYTE(v80) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }
                        }

                        v58 = [v69 objectForKey:@"mcc"];
                        if (v58)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v34 = v58;
                            sub_100016890(v85, [v58 UTF8String]);
                          }
                        }

                        v35 = [v69 objectForKey:@"mnc"];
                        if (v35)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v36 = v35;
                            sub_100016890(&v85[1], [v35 UTF8String]);
                          }
                        }

                        v37 = [v69 objectForKey:@"gid1"];
                        if (v37)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v38 = v37;
                            sub_100016890(v86, [v37 UTF8String]);
                          }
                        }

                        v39 = [v69 objectForKey:@"gid2"];
                        if (v39)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v40 = v39;
                            sub_100016890(&v86[1], [v39 UTF8String]);
                          }
                        }

                        sub_100636ADC(v70 - 184, buf);

                        sub_1013A800C(buf);
                      }

                      goto LABEL_80;
                    }
                  }

                  v21 = *sub_1000201E0();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (smdpUrl)", buf, 2u);
                  }
                }

                else
                {
                  v20 = *sub_1000201E0();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (profileOption element)", buf, 2u);
                  }
                }

LABEL_80:
                if (++v14 >= v13)
                {
                  v13 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
                  if (!v13)
                  {
                    break;
                  }

                  v14 = 0;
                }

                v15 = *v88;
              }
            }
          }
        }

        v45 = [v8 objectForKey:@"defaultSmdpUrls"];
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v17 = v45;
          obj = v45;
          v46 = [v17 countByEnumeratingWithState:&v74 objects:v92 count:16];
          if (v46)
          {
            v47 = 0;
            v48 = *v75;
            for (i = *v75; ; i = *v75)
            {
              if (i != v48)
              {
                objc_enumerationMutation(v17);
              }

              v50 = *(*(&v74 + 1) + 8 * v47);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v51 = a3[1];
                if (v51 >= a3[2])
                {
                  v52 = sub_1005C18A0(a3);
                }

                else
                {
                  *(v51 + 304) = 0;
                  *(v51 + 272) = 0u;
                  *(v51 + 288) = 0u;
                  *(v51 + 240) = 0u;
                  *(v51 + 256) = 0u;
                  *(v51 + 208) = 0u;
                  *(v51 + 224) = 0u;
                  *(v51 + 176) = 0u;
                  *(v51 + 192) = 0u;
                  *(v51 + 144) = 0u;
                  *(v51 + 160) = 0u;
                  *(v51 + 112) = 0u;
                  *(v51 + 128) = 0u;
                  *(v51 + 80) = 0u;
                  *(v51 + 96) = 0u;
                  *(v51 + 48) = 0u;
                  *(v51 + 64) = 0u;
                  *(v51 + 16) = 0u;
                  *(v51 + 32) = 0u;
                  *v51 = 0u;
                  v52 = v51 + 312;
                }

                a3[1] = v52;
                v54 = v50;
                sub_100016890((v52 - 312), [v50 UTF8String]);
              }

              else
              {
                v53 = *sub_1000201E0();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (defaultSmdp element)", buf, 2u);
                }
              }

              if (++v47 >= v46)
              {
                v46 = [v17 countByEnumeratingWithState:&v74 objects:v92 count:16];
                if (!v46)
                {
                  break;
                }

                v47 = 0;
              }
            }
          }

          v42 = 1;
LABEL_113:

          v45 = obj;
        }

        else
        {
          v42 = 1;
        }
      }

      else
      {
        v44 = sub_1000201E0();
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          sub_10177630C();
        }

        v42 = 0;
      }
    }
  }

  else
  {
    v43 = sub_1000201E0();
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v42 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v42;
}

uint64_t sub_1006368F4(uint64_t *a1, char *a2, std::locale *a3)
{
  std::locale::locale(&v17, a3);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if (v5 < 0)
  {
    a1 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(a2);
  v9 = v7 == 0;
  v10 = v8 == 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_11:
    v12 = v9 & v10;
  }

  else
  {
    v13 = v8 - 1;
    v14 = v7 - 1;
    while (sub_1001DAECC(&v17, a1, a2))
    {
      v9 = v14 == 0;
      v10 = v13 == 0;
      if (v14)
      {
        a1 = (a1 + 1);
        ++a2;
        v15 = v13--;
        --v14;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v12 = 0;
  }

  std::locale::~locale(&v17);
  return v12;
}

uint64_t sub_1006369E8(uint64_t *a1, char *a2, std::locale *a3)
{
  std::locale::locale(&v17, a3);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if (v5 < 0)
  {
    a1 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(a2);
  v9 = v7 == 0;
  v10 = v8 == 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_11:
    v12 = v9 & v10;
  }

  else
  {
    v13 = v8 - 1;
    v14 = v7 - 1;
    while (sub_1001DAECC(&v17, a1, a2))
    {
      v9 = v14 == 0;
      v10 = v13 == 0;
      if (v14)
      {
        a1 = (a1 + 1);
        ++a2;
        v15 = v13--;
        --v14;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v12 = 0;
  }

  std::locale::~locale(&v17);
  return v12;
}

uint64_t sub_100636ADC(uint64_t a1, std::string *__str)
{
  if (*(a1 + 176) == 1)
  {
    std::string::operator=(a1, __str);
    std::string::operator=((a1 + 24), __str + 1);
    std::string::operator=((a1 + 48), __str + 2);
    *(a1 + 72) = __str[3].__r_.__value_.__l.__data_;
    std::string::operator=((a1 + 80), (__str + 80));
    std::string::operator=((a1 + 104), (__str + 104));
    std::string::operator=((a1 + 128), (__str + 128));
    std::string::operator=((a1 + 152), (__str + 152));
  }

  else
  {
    sub_100FB54F8(a1, __str);
    *(a1 + 176) = 1;
  }

  return a1;
}

BOOL sub_100636B7C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  ctu::base64::encode();
  v6 = @"lpaSignedRequest";
  if (a1)
  {
    v6 = @"signedIdMapInfo";
  }

  v14 = v6;
  if (v13 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [NSString stringWithFormat:@"%s", v7];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v10 = sub_100634E10(v9, a3);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

void sub_100636CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100636CE8(uint64_t *a1, CFAbsoluteTime *a2, const void **a3)
{
  context = objc_autoreleasePoolPush();
  v5 = *a1;
  if (!*a1)
  {
    v45 = sub_1000201E0();
    if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v43 = 0;
    goto LABEL_110;
  }

  v89 = 0;
  v73 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v89];
  v69 = v89;
  if (v69)
  {
    v6 = 1;
  }

  else
  {
    v6 = v73 == 0;
  }

  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v44 = sub_1000201E0();
    if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      sub_1017762D8();
    }

    v43 = 0;
    goto LABEL_109;
  }

  v65 = [v73 objectForKey:@"expiryDate"];
  if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v46 = sub_1000201E0();
    if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      sub_1017763A8();
    }

    v43 = 0;
    goto LABEL_108;
  }

  v59 = [v73 objectForKey:@"carrierOptions"];
  if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47 = sub_1000201E0();
    if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      sub_101776374();
    }

    goto LABEL_106;
  }

  if (!sub_100637B38(v65, a2))
  {
    v49 = sub_1000201E0();
    if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      sub_101776340();
    }

LABEL_106:
    v43 = 0;
    goto LABEL_107;
  }

  v50 = objc_alloc_init(NSMutableArray);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v59;
  v63 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (!v63)
  {
    goto LABEL_90;
  }

  v62 = *v86;
  do
  {
    v66 = 0;
    do
    {
      if (*v86 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v85 + 1) + 8 * v66);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = [v7 objectForKey:@"carrierDisplayName"];
        if (!v64 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v12 = *sub_1000201E0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrierDisplayName)", buf, 2u);
          }

          goto LABEL_75;
        }

        v8 = [v7 objectForKey:@"planPurchaseEndpoint"];
        v54 = v8;
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_25;
          }
        }

        v9 = *sub_1000201E0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (plan purchase end point)", buf, 2u);
        }

        if (v8)
        {
LABEL_25:
          v61 = v8;
          v10 = [v7 objectForKey:@"planPurchaseEndpointType"];
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v60 = v10;
          }

          else
          {
            v13 = *sub_1000201E0();
            v60 = @"websheet";
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - Default (planPurchaseEndpointType)", buf, 2u);
              v60 = @"websheet";
            }
          }

          goto LABEL_35;
        }

        v36 = [v7 objectForKey:@"addOnPlanPurchaseEndpoint"];
        if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v37 = *sub_1000201E0();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (addOnPlanPurchaseEndpoint)", buf, 2u);
          }
        }

        v61 = v36;
        v38 = [v7 objectForKey:@"addOnPlanPurchaseEndpointType"];
        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v60 = v38;
        }

        else
        {
          v39 = *sub_1000201E0();
          v60 = @"websheet";
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - Default (addOnPlanPurchaseEndpointType)", buf, 2u);
            v60 = @"websheet";
          }
        }

        if (!v36)
        {
          v61 = 0;
LABEL_74:

LABEL_75:
          goto LABEL_76;
        }

LABEL_35:
        v14 = [v7 objectForKey:@"supportsApplePay"];
        v53 = v14;
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v52 = [v14 BOOLValue];
        }

        else
        {
          v52 = 0;
        }

        v56 = [v7 objectForKey:@"warningText"];
        if (!v56 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v15 = *sub_1000201E0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (warning text)", buf, 2u);
          }
        }

        v57 = [v7 objectForKey:@"planPurchaseOptions"];
        if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v51 = sub_100637BD4(v57);
        }

        else
        {
          v16 = *sub_1000201E0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (planPurchaseOptions)", buf, 2u);
          }

          v51 = 0;
        }

        v76 = objc_opt_new();
        v55 = [v7 objectForKey:@"bundle"];
        if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v67 = v55;
          v71 = [v67 countByEnumeratingWithState:&v81 objects:v92 count:16];
          if (v71)
          {
            v70 = *v82;
            do
            {
              for (i = 0; i != v71; i = i + 1)
              {
                if (*v82 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v74 = [*(*(&v81 + 1) + 8 * i) objectForKey:@"supportedSims"];
                if (v74)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v17 = v74;
                    v18 = [v17 countByEnumeratingWithState:&v77 objects:v91 count:16];
                    if (v18)
                    {
                      v19 = *v78;
                      do
                      {
                        for (j = 0; j != v18; j = j + 1)
                        {
                          if (*v78 != v19)
                          {
                            objc_enumerationMutation(v17);
                          }

                          v21 = *(*(&v77 + 1) + 8 * j);
                          v22 = sub_100637C44(v21, @"mcc");
                          v23 = sub_100637C44(v21, @"mnc");
                          v24 = sub_100637C44(v21, @"gid1");
                          v25 = sub_100637C44(v21, @"gid2");
                          v26 = sub_100637C44(v21, @"iccidPrefix");
                          v27 = [[CTPlanIdentifier alloc] initWithIccid:v26 carrierName:0 phoneNumber:0 countryCode:0 label:0 mcc:v22 mnc:v23 gid1:v24 gid2:v25];
                          [v76 addObject:v27];
                        }

                        v18 = [v17 countByEnumeratingWithState:&v77 objects:v91 count:16];
                      }

                      while (v18);
                    }
                  }
                }
              }

              v71 = [v67 countByEnumeratingWithState:&v81 objects:v92 count:16];
            }

            while (v71);
          }

          v28 = *sub_1000201E0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v76 count];
            *buf = 134217984;
            *&buf[4] = v29;
            v30 = v28;
            v31 = "#I Decoded %lu bundle details";
            v32 = 12;
            goto LABEL_72;
          }
        }

        else
        {
          v33 = *sub_1000201E0();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v30 = v33;
            v31 = "#I Element not found or invalid type - skipping (bundle)";
            v32 = 2;
LABEL_72:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
          }
        }

        v34 = [[CTCarrierSignupPlan alloc] initWithName:v64 url:v61 type:v60 option:v51 identifiers:v76];
        v35 = [[CTCellularPlanCarrierItem alloc] initWithName:v64 plan:v34 url:v61 applePaySupported:v52 responseType:v60 warningText:v56 purchaseOption:v57];
        [v50 addObject:v35];

        goto LABEL_74;
      }

      v11 = *sub_1000201E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrier element)", buf, 2u);
      }

LABEL_76:
      v66 = v66 + 1;
    }

    while (v66 != v63);
    v40 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    v63 = v40;
  }

  while (v40);
LABEL_90:

  if ([v50 count])
  {
    *buf = v50;
    sub_10044A870(a3, buf);
  }

  v41 = *sub_1000201E0();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v50 count];
    *buf = 134217984;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu carrier items", buf, 0xCu);
  }

  v43 = 1;
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
  objc_autoreleasePoolPop(context);
  return v43;
}

BOOL sub_100637B38(void *a1, CFAbsoluteTime *a2)
{
  v3 = a1;
  v4 = qword_101FBA828;
  if (!qword_101FBA828)
  {
    qword_101FBA828 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(qword_101FBA828, @"yyyy-MM-dd'T'HH:mm:ssz");
    v4 = qword_101FBA828;
  }

  v5 = CFDateFormatterGetAbsoluteTimeFromString(v4, v3, 0, a2) != 0;

  return v5;
}

uint64_t sub_100637BD4(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"ALLOW_ON_BOOTSTRAP"])
  {
    v2 = 1;
  }

  else if ([v1 isEqual:@"DISALLOW_ON_BOOTSTRAP"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100637C44(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100637CC8(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4)
{
  context = objc_autoreleasePoolPush();
  if (*a3 == a3[1])
  {
    v26 = *sub_1000201E0();
    v25 = 0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (signedPayload)", buf, 2u);
      v25 = 0;
    }
  }

  else
  {
    v29 = a4;
    v31 = objc_alloc_init(NSMutableArray);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        if (*(v7 + 24) != 1)
        {
          goto LABEL_26;
        }

        v9 = *(v7 + 23);
        if (v9 < 0)
        {
          if (!v7[1])
          {
            goto LABEL_26;
          }
        }

        else if (!*(v7 + 23))
        {
          goto LABEL_26;
        }

        if ((*(v7 + 55) & 0x8000000000000000) != 0)
        {
          if (!v7[5])
          {
            goto LABEL_26;
          }
        }

        else if (!*(v7 + 55))
        {
          goto LABEL_26;
        }

        if ((*(v7 + 79) & 0x8000000000000000) != 0)
        {
          if (v7[8])
          {
LABEL_14:
            v35[0] = @"iccid";
            v10 = v7;
            if ((v9 & 0x80000000) != 0)
            {
              v10 = *v7;
            }

            v11 = [NSString stringWithFormat:@"%s", v10];
            v12 = v7 + 4;
            v36[0] = v11;
            v35[1] = @"mcc";
            if (*(v7 + 55) < 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithFormat:@"%s", v12];
            v14 = v7 + 7;
            v36[1] = v13;
            v35[2] = @"mnc";
            if (*(v7 + 79) < 0)
            {
              v14 = *v14;
            }

            v15 = [NSString stringWithFormat:@"%s", v14];
            v36[2] = v15;
            v35[3] = @"gid1";
            v16 = v7 + 10;
            if (*(v7 + 103) < 0)
            {
              v16 = *v16;
            }

            v17 = [NSString stringWithFormat:@"%s", v16];
            v36[3] = v17;
            v35[4] = @"gid2";
            v18 = v7 + 13;
            if (*(v7 + 127) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithFormat:@"%s", v18];
            v36[4] = v19;
            v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];

            [v31 addObject:v20];
            goto LABEL_28;
          }
        }

        else if (*(v7 + 79))
        {
          goto LABEL_14;
        }

LABEL_26:
        v21 = *sub_1000201E0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing", buf, 2u);
        }

LABEL_28:
        v7 += 16;
      }

      while (v7 != v8);
    }

    if ([v31 count])
    {
      *buf = 0;
      v33 = 0;
      v34 = 0;
      ctu::base64::encode();
      v22 = objc_alloc_init(NSMutableDictionary);
      [v22 setObject:v31 forKeyedSubscript:@"simAddonMetadata"];
      v23 = buf;
      if (v34 < 0)
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithFormat:@"%s", v23];
      [v22 setObject:v24 forKeyedSubscript:@"lpaSignedRequest"];

      v25 = sub_100634E10(v22, v29);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v27 = *sub_1000201E0();
      v25 = 0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (simAddonMetadata)", buf, 2u);
        v25 = 0;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  return v25;
}

uint64_t sub_100638184(uint64_t *a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *a1;
  if (*a1)
  {
    v59[0] = 0;
    v54 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:v59];
    v52 = v59[0];
    if (v52)
    {
      v5 = 1;
    }

    else
    {
      v5 = v54 == 0;
    }

    if (v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v39 = *sub_1000201E0();
      v40 = 0;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Top level decoding failure", __p, 2u);
        v40 = 0;
      }
    }

    else
    {
      v6 = [v54 objectForKey:@"simAddonMetadataEval"];
      v51 = v6;
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
        if (v8)
        {
          v9 = 0;
          v10 = *v56;
          for (i = *v56; ; i = *v56)
          {
            if (i != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 objectForKey:@"iccid"];
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v14 = v13;
                v15 = [v13 UTF8String];
                sub_10000501C(__p, v15);
                v59[2] = __p;
                v16 = sub_10063D9E4(a2, __p);
                if (v61 < 0)
                {
                  operator delete(*__p);
                }

                sub_100016890((v16 + 56), v15);
                v17 = [v12 objectForKey:@"result"];
                if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v18 = v17;
                  sub_100016890((v16 + 248), [v17 UTF8String]);
                  v50 = [v12 objectForKey:@"gid1"];
                  if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v19 = v50;
                    sub_100016890((v16 + 200), [v50 UTF8String]);
                    v49 = [v12 objectForKey:@"gid2"];
                    if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v20 = v49;
                      sub_100016890((v16 + 224), [v49 UTF8String]);
                      v48 = [v12 objectForKey:@"mcc"];
                      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v21 = v48;
                        sub_100016890((v16 + 152), [v48 UTF8String]);
                        v47 = [v12 objectForKey:@"mnc"];
                        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v22 = v47;
                          sub_100016890((v16 + 176), [v47 UTF8String]);
                          v46 = [v12 objectForKey:@"presentOnDevice"];
                          if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            *(v16 + 272) = [v46 BOOLValue];
                            v23 = [v12 objectForKey:@"addOnPlanEndpoint"];
                            if (v23)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v24 = v23;
                                *__p = [v23 UTF8String];
                                sub_100184AD0(v16 + 280, __p);
                              }
                            }

                            v25 = [v12 objectForKey:{@"addOnPlanEndpointType", v46}];
                            if (v25)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v26 = v25;
                                *__p = [v25 UTF8String];
                                sub_100184AD0(v16 + 312, __p);
                              }
                            }
                          }

                          else
                          {
                            v38 = *sub_1000201E0();
                            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                            {
                              *__p = 136315138;
                              *&__p[4] = v15;
                              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (is Present On Device)", __p, 0xCu);
                            }
                          }

                          v37 = v47;
                        }

                        else
                        {
                          v36 = *sub_1000201E0();
                          v37 = v47;
                          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                          {
                            *__p = 136315138;
                            *&__p[4] = v15;
                            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (mnc)", __p, 0xCu);
                          }
                        }

                        v35 = v48;
                      }

                      else
                      {
                        v34 = *sub_1000201E0();
                        v35 = v48;
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                        {
                          *__p = 136315138;
                          *&__p[4] = v15;
                          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (mcc)", __p, 0xCu);
                        }
                      }

                      v33 = v49;
                    }

                    else
                    {
                      v32 = *sub_1000201E0();
                      v33 = v49;
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        *__p = 136315138;
                        *&__p[4] = v15;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (gid2)", __p, 0xCu);
                      }
                    }

                    v31 = v50;
                  }

                  else
                  {
                    v30 = *sub_1000201E0();
                    v31 = v50;
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      *__p = 136315138;
                      *&__p[4] = v15;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (gid1)", __p, 0xCu);
                    }
                  }
                }

                else
                {
                  v29 = *sub_1000201E0();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 136315138;
                    *&__p[4] = v15;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (result)", __p, 0xCu);
                  }
                }
              }

              else
              {
                v28 = *sub_1000201E0();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (iccid)", __p, 2u);
                }
              }
            }

            else
            {
              v27 = *sub_1000201E0();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrier element)", __p, 2u);
              }
            }

            if (++v9 >= v8)
            {
              v8 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
              if (!v8)
              {
                break;
              }

              v9 = 0;
            }
          }
        }

        v43 = *sub_1000201E0();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a2 + 16);
          *__p = 134217984;
          *&__p[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu add-on options", __p, 0xCu);
        }

        v40 = 1;
      }

      else
      {
        v42 = *sub_1000201E0();
        v40 = 0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (addOnOptions)", __p, 2u);
          v40 = 0;
        }
      }
    }
  }

  else
  {
    v41 = *sub_1000201E0();
    v40 = 0;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I No data", __p, 2u);
      v40 = 0;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v40;
}

BOOL sub_100638BC8(uint64_t *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (*a2 == a2[1] || *a3 == a3[1])
  {
    v20 = 0;
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    ctu::base64::encode();
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    ctu::base64::encode();
    v26[0] = @"smdpUrl";
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v27[0] = v12;
    v26[1] = @"storeMetadata";
    v13 = v24;
    if (v25 < 0)
    {
      v13 = v24[0];
    }

    v14 = [NSString stringWithFormat:@"%s", v13];
    v27[1] = v14;
    v26[2] = @"action";
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = [NSString stringWithFormat:@"%s", v15];
    v27[2] = v16;
    v26[3] = @"lpaSignedRequest";
    v17 = __p;
    if (v23 < 0)
    {
      v17 = __p[0];
    }

    v18 = [NSString stringWithFormat:@"%s", v17];
    v27[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

    v20 = sub_100634E10(v19, a5);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  objc_autoreleasePoolPop(v10);
  return v20;
}

void sub_100638E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100638E78(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v20 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v20];
    v9 = v20;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = sub_1000201E0();
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v12 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"result"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = ![v11 caseInsensitiveCompare:@"Allowed"] || !objc_msgSend(v11, "caseInsensitiveCompare:", @"Warning");
        if (a3)
        {
          if ([v11 caseInsensitiveCompare:@"Unknown"])
          {
            v12 = v12;
          }

          else
          {
            v12 = 1;
          }
        }

        v16 = [v8 objectForKey:@"description"];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_10000501C(__p, [v16 UTF8String]);
            sub_10053EDA4(a2, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      else
      {
        v15 = *sub_1000201E0();
        v12 = 0;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (result)", __p, 2u);
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v14 = sub_1000201E0();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

void sub_1006390D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10063912C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6)
{
  context = objc_autoreleasePoolPush();
  if (*a5 != a5[1])
  {
    v37 = objc_alloc_init(NSMutableArray);
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      do
      {
        v11 = *(v9 + 55);
        if (v11 < 0)
        {
          if (!*(v9 + 40))
          {
            goto LABEL_20;
          }
        }

        else if (!*(v9 + 55))
        {
          goto LABEL_20;
        }

        if ((*(v9 + 79) & 0x8000000000000000) != 0)
        {
          if (*(v9 + 64))
          {
LABEL_11:
            v12 = (v9 + 32);
            v41[0] = @"mcc";
            if ((v11 & 0x80000000) != 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithFormat:@"%s", v12];
            v14 = (v9 + 56);
            v42[0] = v13;
            v41[1] = @"mnc";
            if (*(v9 + 79) < 0)
            {
              v14 = *v14;
            }

            v15 = [NSString stringWithFormat:@"%s", v14];
            v42[1] = v15;
            v41[2] = @"gid1";
            v16 = (v9 + 80);
            if (*(v9 + 103) < 0)
            {
              v16 = *v16;
            }

            v17 = [NSString stringWithFormat:@"%s", v16];
            v42[2] = v17;
            v41[3] = @"gid2";
            v18 = (v9 + 104);
            if (*(v9 + 127) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithFormat:@"%s", v18];
            v42[3] = v19;
            v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];

            [v37 addObject:v20];
          }
        }

        else if (*(v9 + 79))
        {
          goto LABEL_11;
        }

LABEL_20:
        v9 += 128;
      }

      while (v9 != v10);
    }

    if (![v37 count])
    {
      v26 = *sub_1000201E0();
      v25 = 0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (appMetadata)", buf, 2u);
        v25 = 0;
      }

      goto LABEL_42;
    }

    *buf = 0;
    v39 = 0;
    v40 = 0;
    ctu::base64::encode();
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v37 forKeyedSubscript:@"appMetadata"];
    v22 = [NSString stringWithFormat:@"%s", buf];
    [v21 setObject:v22 forKeyedSubscript:@"lpaSignedRequest"];

    v23 = a1;
    if (*(a1 + 23) < 0)
    {
      if (!a1[1])
      {
        goto LABEL_32;
      }

      v23 = *a1;
    }

    else if (!*(a1 + 23))
    {
LABEL_32:
      v28 = a3;
      if (*(a3 + 23) < 0)
      {
        if (!a3[1])
        {
LABEL_38:
          if (*a4)
          {
            v30 = [NSNumber numberWithUnsignedLongLong:?];
            [v21 setObject:v30 forKeyedSubscript:@"adamId"];
          }

          v31 = [NSNumber numberWithBool:1];
          [v21 setObject:v31 forKeyedSubscript:@"verbose"];

          v25 = sub_100634E10(v21, a6);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*buf);
          }

LABEL_42:

          goto LABEL_43;
        }

        v28 = *a3;
      }

      else if (!*(a3 + 23))
      {
        goto LABEL_38;
      }

      v29 = [NSString stringWithFormat:@"%s", v28];
      [v21 setObject:v29 forKeyedSubscript:@"iccidPrefix"];

      goto LABEL_38;
    }

    v27 = [NSString stringWithFormat:@"%s", v23];
    [v21 setObject:v27 forKeyedSubscript:@"smdpUrl"];

    goto LABEL_32;
  }

  v24 = *sub_1000201E0();
  v25 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (signedPayload)", buf, 2u);
    v25 = 0;
  }

LABEL_43:
  objc_autoreleasePoolPop(context);
  return v25;
}

uint64_t sub_100639678(uint64_t *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a1;
  if (*a1)
  {
    v60[0] = 0;
    v44 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:v60];
    v6 = v60[0];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v44 == 0;
    }

    v43 = v6;
    if (!v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v44 objectForKey:@"appMetadataEval"];
        v41 = v8;
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v47 objects:v61 count:16];
            v11 = 1;
            if (!v10)
            {
              goto LABEL_90;
            }

            v2 = 0;
            v12 = *v48;
            for (i = *v48; ; i = *v48)
            {
              if (i != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v47 + 1) + 8 * v2);
              v15 = [v14 objectForKey:@"mcc"];
              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v16 = [v14 objectForKey:@"mnc"];
                if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v17 = [v14 objectForKey:@"gid1"];
                  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v40 = [v14 objectForKey:@"gid2"];
                    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v39 = [v14 objectForKey:@"result"];
                      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v18 = [v14 objectForKey:@"policyType"];
                        memset(&v51, 0, sizeof(v51));
                        v37 = v18;
                        if (v18)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v19 = v37;
                            sub_100016890(&v51, [v37 UTF8String]);
                            v20 = (&v51 + HIBYTE(v51.__r_.__value_.__r.__words[2]));
                            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v21 = &v51;
                            }

                            else
                            {
                              v20 = (v51.__r_.__value_.__r.__words[0] + v51.__r_.__value_.__l.__size_);
                              v21 = v51.__r_.__value_.__r.__words[0];
                            }

                            v38 = v20;
                            while (v21 != v20)
                            {
                              v21->__r_.__value_.__s.__data_[0] = __toupper(v21->__r_.__value_.__s.__data_[0]);
                              v21 = (v21 + 1);
                              v20 = v38;
                            }
                          }
                        }

                        if ([v39 caseInsensitiveCompare:@"Allowed"] && objc_msgSend(v39, "caseInsensitiveCompare:", @"Warning"))
                        {
                          v27 = 0;
                        }

                        else if (sub_100318068(&v51, "FLEX_POLICY"))
                        {
                          v27 = 2;
                        }

                        else
                        {
                          v27 = 1;
                        }

                        v58 = 0u;
                        v59 = 0u;
                        v56 = 0u;
                        v57 = 0u;
                        v54 = 0u;
                        v55 = 0u;
                        v53 = 0u;
                        *buf = 0u;
                        v28 = v15;
                        sub_10000501C(&v54, [v15 UTF8String]);
                        v29 = v16;
                        sub_10000501C(&v55 + 8, [v16 UTF8String]);
                        v30 = v17;
                        sub_10000501C(&v57, [v17 UTF8String]);
                        v31 = v40;
                        sub_10000501C(&v58 + 8, [v40 UTF8String]);
                        sub_100295360(buf, __p);
                        v60[2] = __p;
                        *(sub_10063DB40(a2, __p) + 56) = v27;
                        if (v46 < 0)
                        {
                          operator delete(__p[0]);
                        }

                        sub_10028084C(buf);
                        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v51.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v26 = *sub_1000201E0();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Missing result", buf, 2u);
                        }
                      }
                    }

                    else
                    {
                      v25 = *sub_1000201E0();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Missing gid2", buf, 2u);
                      }
                    }
                  }

                  else
                  {
                    v24 = *sub_1000201E0();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Missing gid1", buf, 2u);
                    }
                  }
                }

                else
                {
                  v23 = *sub_1000201E0();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Missing mnc", buf, 2u);
                  }
                }
              }

              else
              {
                v22 = *sub_1000201E0();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Missing mcc", buf, 2u);
                }
              }

              if (++v2 >= v10)
              {
                v10 = [v9 countByEnumeratingWithState:&v47 objects:v61 count:16];
                if (!v10)
                {
                  v11 = 1;
                  goto LABEL_90;
                }

                v2 = 0;
              }
            }
          }
        }

        v34 = *sub_1000201E0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (appMetadataEval)", buf, 2u);
        }

        v9 = [v44 objectForKey:@"result"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (![v9 caseInsensitiveCompare:@"Allowed"] || !objc_msgSend(v9, "caseInsensitiveCompare:", @"Warning"))
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v53 = 0u;
            *buf = 0u;
            sub_100295360(buf, &v51);
            __p[0] = &v51;
            *(sub_10063DB40(a2, &v51.__r_.__value_.__l.__data_) + 56) = 1;
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v59) < 0)
            {
              operator delete(*(&v58 + 1));
            }

            if (SBYTE7(v58) < 0)
            {
              operator delete(v57);
            }

            if (SHIBYTE(v56) < 0)
            {
              operator delete(*(&v55 + 1));
            }

            if (SBYTE7(v55) < 0)
            {
              operator delete(v54);
            }

            if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
            {
              operator delete(*buf);
            }

            v11 = 0;
            LODWORD(v2) = 1;
LABEL_90:

            goto LABEL_91;
          }
        }

        else
        {
          v35 = *sub_1000201E0();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (result)", buf, 2u);
          }
        }

        v11 = 0;
        LODWORD(v2) = 0;
        goto LABEL_90;
      }
    }

    v32 = sub_1000201E0();
    if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      sub_1017762D8();
    }

    v11 = 0;
    LODWORD(v2) = 0;
LABEL_91:

    goto LABEL_92;
  }

  v33 = sub_1000201E0();
  if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
  {
    sub_1017762A4();
  }

  v11 = 0;
  LODWORD(v2) = 0;
LABEL_92:
  objc_autoreleasePoolPop(v4);
  return (v11 | v2) & 1;
}

void sub_100639ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10028084C(&a39);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10063A08C(int a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*a3 == a3[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v20[0] = @"requestHandOff";
    v19[0] = @"action";
    v19[1] = @"kSessionId";
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v11 = @"lpaSignedRequest";
    v20[1] = v10;
    if (a1)
    {
      v11 = @"signedIdMapInfo";
    }

    v19[2] = v11;
    v12 = __p;
    if (v18 < 0)
    {
      v12 = __p[0];
    }

    v13 = [NSString stringWithFormat:@"%s", v12];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v8);
  return v15;
}

void sub_10063A228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063A270(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v21 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = sub_1000201E0();
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v13 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"handoffToken"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v8 objectForKey:@"podIdentifier"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_10000501C(&v19, [v11 UTF8String]);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = v19;
          *(a2 + 16) = v20;
          sub_10000501C(&v19, [v12 UTF8String]);
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = v19;
          *(a3 + 16) = v20;
          v13 = 1;
        }

        else
        {
          v17 = *sub_1000201E0();
          v13 = 0;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (podIdentifier)", &v19, 2u);
            v13 = 0;
          }
        }
      }

      else
      {
        v16 = *sub_1000201E0();
        v13 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (handoffToken)", &v19, 2u);
          v13 = 0;
        }
      }
    }
  }

  else
  {
    v15 = sub_1000201E0();
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

BOOL sub_10063A550(int a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*a2 == a2[1])
  {
    v19 = sub_1000201E0();
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_101776410();
    }

    goto LABEL_17;
  }

  if (*a3 == a3[1])
  {
    v20 = sub_1000201E0();
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_1017763DC();
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  ctu::base64::encode();
  v9 = objc_alloc_init(NSMutableArray);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = v10;
      if (*(v10 + 23) < 0)
      {
        v12 = *v10;
      }

      v13 = [NSString stringWithFormat:@"%s", v12];
      [v9 addObject:v13];

      v10 += 3;
    }

    while (v10 != v11);
  }

  v14 = @"lpaSignedRequest";
  if (a1)
  {
    v14 = @"signedIdMapInfo";
  }

  v24[0] = v14;
  v15 = __p;
  if (v23 < 0)
  {
    v15 = __p[0];
  }

  v16 = [NSString stringWithFormat:@"%s", v15];
  v24[1] = @"iccids";
  v25[0] = v16;
  v25[1] = v9;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  v18 = sub_100634E10(v17, a4);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  objc_autoreleasePoolPop(v8);
  return v18;
}

void sub_10063A774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063A7CC(uint64_t *a1, uint64_t *a2)
{
  context = objc_autoreleasePoolPush();
  v3 = *a1;
  if (*a1)
  {
    v131 = 0;
    v90 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v131];
    v87 = v131;
    if (v87)
    {
      v4 = 1;
    }

    else
    {
      v4 = v90 == 0;
    }

    if (v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v72 = sub_1000201E0();
      if (os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v73 = 0;
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      obj = v90;
      v93 = [obj countByEnumeratingWithState:&v127 objects:v146 count:16];
      if (v93)
      {
        v99 = 0;
        *&v5 = 67109120;
        v78 = v5;
        v91 = *v128;
        for (i = *v128; ; i = *v128)
        {
          if (i != v91)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v127 + 1) + 8 * v99);
          v98 = [v7 objectForKey:{@"responseDetails", v78}];
          if (v98)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = *sub_1000201E0();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                v18 = v98;
                v19 = [v98 UTF8String];
                *buf = 136315138;
                *&buf[4] = v19;
                _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response details: %s", buf, 0xCu);
              }
            }
          }

          v100 = [v7 objectForKey:@"responseCode"];
          v97 = [v7 objectForKey:@"carrier"];
          v96 = [v7 objectForKey:@"ICCID"];
          v95 = [v7 objectForKey:@"planStatus"];
          if (v100 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v9 = [v100 intValue];
            if (v9 != 2500 && v9 != 2404)
            {
              if (v9 != 2000)
              {
                v15 = *sub_1000201E0();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v16 = [v100 intValue];
                  *buf = v78;
                  *&buf[4] = v16;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid response code: %d", buf, 8u);
                }

                goto LABEL_36;
              }

              if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v17 = sub_1000201E0();
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
                {
                  sub_10177654C(&v123, v124);
                }

                goto LABEL_36;
              }
            }

            if (v97)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v96 != 0)) == 1)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v140 = 0;
                  v137 = 2;
                  memset(v136, 0, sizeof(v136));
                  v135 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v139 = 0;
                  v138 = 0uLL;
                  v141 = 0u;
                  v142 = 0u;
                  __src = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v10 = v96;
                  sub_10000501C(v147, [v96 UTF8String]);
                  if (buf[31] < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  *&buf[8] = *v147;
                  *&buf[24] = *&v147[16];
                  v11 = v97;
                  sub_10000501C(v147, [v97 UTF8String]);
                  if (SHIBYTE(v136[3]) < 0)
                  {
                    operator delete(*&v136[1]);
                  }

                  *&v136[1] = *v147;
                  v136[3] = *&v147[16];
                  v86 = [v7 objectForKey:@"planDescription"];
                  if (v86)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v12 = v86;
                      sub_10000501C(v147, [v86 UTF8String]);
                      if (SHIBYTE(v139) < 0)
                      {
                        operator delete(v138);
                      }

                      v138 = *v147;
                      v139 = *&v147[16];
                    }

                    else
                    {
                      v20 = *sub_1000201E0();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        v70 = &buf[8];
                        if ((buf[31] & 0x80u) != 0)
                        {
                          v70 = *&buf[8];
                        }

                        *v147 = 136315138;
                        *&v147[4] = v70;
                        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid object type for plan description: %s", v147, 0xCu);
                      }
                    }
                  }

                  if (v95)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v95 isEqualToString:@"NotSubscribed"])
                      {
                        v21 = 4;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Subscribed"])
                      {
                        v21 = 1;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Depleted"])
                      {
                        v21 = 2;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Throttled"])
                      {
                        v21 = 3;
LABEL_57:
                        LODWORD(v140) = v21;
                      }
                    }
                  }

                  v84 = [v7 objectForKey:@"planType"];
                  if (v84)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v84 isEqualToString:@"PrePaid"])
                      {
                        v22 = 0;
                        goto LABEL_64;
                      }

                      if ([v84 isEqualToString:@"PostPaid"])
                      {
                        v22 = 1;
LABEL_64:
                        LOBYTE(v137) = v22;
                      }
                    }
                  }

                  v85 = [v7 objectForKey:@"accountURL"];
                  if (v85)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v23 = v85;
                      sub_100016890(&v141, [v85 UTF8String]);
                      goto LABEL_68;
                    }

                    v69 = *sub_1000201E0();
                    v68 = v85;
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      v71 = &buf[8];
                      if ((buf[31] & 0x80u) != 0)
                      {
                        v71 = *&buf[8];
                      }

                      *v147 = 136315138;
                      *&v147[4] = v71;
                      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Invalid object type for account URL, skipping for ICCID: %s", v147, 0xCu);
                    }
                  }

                  else
                  {
LABEL_68:
                    v79 = [v7 objectForKey:@"autoRenew"];
                    if (v79)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        LOBYTE(v135) = [v79 intValue] != 0;
                      }
                    }

                    v80 = [v7 objectForKey:@"billingStartDate"];
                    if (v80)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v80, &v135 + 1))
                      {
                        v24 = sub_1000201E0();
                        if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
                        {
                          sub_101776444(&v119, v120);
                        }
                      }
                    }

                    v81 = [v7 objectForKey:@"billingEndDate"];
                    if (v81)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v81, v136))
                      {
                        v25 = sub_1000201E0();
                        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
                        {
                          sub_101776470(&v117, v118);
                        }
                      }
                    }

                    v82 = [v7 objectForKey:@"timestamp"];
                    if (v82)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v82, &v142 + 1))
                      {
                        v26 = sub_1000201E0();
                        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
                        {
                          sub_10177649C(&v115, v116);
                        }
                      }
                    }

                    v83 = [v7 objectForKey:@"dataUsage"];
                    if (v83)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v113 = 0u;
                        v114 = 0u;
                        v112 = 0u;
                        v111 = 0u;
                        v94 = v83;
                        v27 = [v94 countByEnumeratingWithState:&v111 objects:v133 count:16];
                        if (v27)
                        {
                          v28 = *v112;
                          do
                          {
                            v29 = 0;
                            do
                            {
                              if (*v112 != v28)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v30 = *(*(&v111 + 1) + 8 * v29);
                              if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v31 = [v30 objectForKey:@"dataUsed"];
                                v32 = [v30 objectForKey:@"dataCapacity"];
                                v33 = [v30 objectForKey:@"dataCategory"];
                                if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v32 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & (v33 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v34 = v145;
                                  if (v145 >= *(&v145 + 1))
                                  {
                                    v35 = sub_10063D394(&v144 + 1);
                                  }

                                  else
                                  {
                                    *(v145 + 32) = 0;
                                    v35 = v34 + 40;
                                    *v34 = 0u;
                                    v34[1] = 0u;
                                  }

                                  *&v145 = v35;
                                  [v32 doubleValue];
                                  *(v35 - 32) = v38;
                                  [v31 doubleValue];
                                  *(v35 - 40) = v39;
                                  v40 = v33;
                                  sub_10000501C(v147, [v33 UTF8String]);
                                  v41 = (v35 - 24);
                                  if (*(v35 - 1) < 0)
                                  {
                                    operator delete(*v41);
                                  }

                                  v42 = *v147;
                                  *(v35 - 8) = *&v147[16];
                                  *v41 = v42;
                                  v43 = *sub_1000201E0();
                                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                                  {
                                    if (*(v35 - 1) < 0)
                                    {
                                      v41 = *v41;
                                    }

                                    v44 = *(v35 - 40);
                                    v45 = *(v35 - 32);
                                    *v147 = 136315650;
                                    *&v147[4] = v41;
                                    *&v147[12] = 2048;
                                    *&v147[14] = v44;
                                    *&v147[22] = 2048;
                                    v148 = v45;
                                    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Data Usage - %s %f/%f", v147, 0x20u);
                                  }
                                }

                                else
                                {
                                  v37 = sub_1000201E0();
                                  if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_1017764C8(&v107, v108);
                                  }
                                }
                              }

                              else
                              {
                                v36 = sub_1000201E0();
                                if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
                                {
                                  sub_1017764F4(&v109, v110);
                                }
                              }

                              v29 = v29 + 1;
                            }

                            while (v27 != v29);
                            v46 = [v94 countByEnumeratingWithState:&v111 objects:v133 count:16];
                            v27 = v46;
                          }

                          while (v46);
                        }
                      }
                    }

                    v47 = [v7 objectForKey:@"homeCountryIso"];
                    if (v47)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v105 = 0u;
                        v106 = 0u;
                        v103 = 0u;
                        v104 = 0u;
                        v48 = v47;
                        v49 = [v48 countByEnumeratingWithState:&v103 objects:v132 count:16];
                        if (v49)
                        {
                          v50 = *v104;
                          do
                          {
                            for (j = 0; j != v49; j = j + 1)
                            {
                              if (*v104 != v50)
                              {
                                objc_enumerationMutation(v48);
                              }

                              v52 = *(*(&v103 + 1) + 8 * j);
                              if (v52)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v53 = v52;
                                  sub_10000501C(v101, [v52 UTF8String]);
                                  v54 = *(&__src + 1);
                                  if (*(&__src + 1) >= v144)
                                  {
                                    v56 = 0xAAAAAAAAAAAAAAABLL * ((*(&__src + 1) - __src) >> 3);
                                    v57 = v56 + 1;
                                    if (v56 + 1 > 0xAAAAAAAAAAAAAAALL)
                                    {
                                      sub_1000CE3D4();
                                    }

                                    if (0x5555555555555556 * ((v144 - __src) >> 3) > v57)
                                    {
                                      v57 = 0x5555555555555556 * ((v144 - __src) >> 3);
                                    }

                                    if (0xAAAAAAAAAAAAAAABLL * ((v144 - __src) >> 3) >= 0x555555555555555)
                                    {
                                      v58 = 0xAAAAAAAAAAAAAAALL;
                                    }

                                    else
                                    {
                                      v58 = v57;
                                    }

                                    p_src = &__src;
                                    if (v58)
                                    {
                                      sub_100005348(&__src, v58);
                                    }

                                    v59 = 8 * ((*(&__src + 1) - __src) >> 3);
                                    v60 = *v101;
                                    *(v59 + 16) = v102;
                                    *v59 = v60;
                                    v101[1] = 0;
                                    v102 = 0;
                                    v101[0] = 0;
                                    v61 = 24 * v56 + 24;
                                    v62 = 24 * v56 - (*(&__src + 1) - __src);
                                    memcpy((v59 - (*(&__src + 1) - __src)), __src, *(&__src + 1) - __src);
                                    v63 = __src;
                                    v64 = v144;
                                    *&__src = v62;
                                    *(&__src + 1) = v61;
                                    *&v144 = 0;
                                    *&v147[16] = v63;
                                    v148 = v64;
                                    *v147 = v63;
                                    *&v147[8] = v63;
                                    sub_1000054E0(v147);
                                    *(&__src + 1) = v61;
                                    if (SHIBYTE(v102) < 0)
                                    {
                                      operator delete(v101[0]);
                                    }
                                  }

                                  else
                                  {
                                    v55 = *v101;
                                    *(*(&__src + 1) + 16) = v102;
                                    *v54 = v55;
                                    *(&__src + 1) = v54 + 24;
                                  }
                                }
                              }
                            }

                            v49 = [v48 countByEnumeratingWithState:&v103 objects:v132 count:16];
                          }

                          while (v49);
                        }
                      }
                    }

                    v65 = a2[1];
                    if (v65 >= a2[2])
                    {
                      v66 = sub_10063D604(a2, buf);
                      v67 = a2;
                    }

                    else
                    {
                      sub_10016AB7C(a2[1], buf);
                      v66 = v65 + 200;
                      v67 = a2;
                      a2[1] = v65 + 200;
                    }

                    v67[1] = v66;

                    v68 = v85;
                  }

                  *v147 = &v144 + 8;
                  sub_1000E2794(v147);
                  *v147 = &__src;
                  sub_1000087B4(v147);
                  if (SBYTE7(v142) < 0)
                  {
                    operator delete(v141);
                  }

                  if (SHIBYTE(v139) < 0)
                  {
                    operator delete(v138);
                  }

                  if (SHIBYTE(v136[3]) < 0)
                  {
                    operator delete(*&v136[1]);
                  }

                  if (buf[31] < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  goto LABEL_36;
                }
              }
            }

            v14 = sub_1000201E0();
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
            {
              sub_101776520(&v121, v122);
            }
          }

          else
          {
            v13 = sub_1000201E0();
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              sub_101776578(&v125, v126);
            }
          }

LABEL_36:

          if (++v99 >= v93)
          {
            v93 = [obj countByEnumeratingWithState:&v127 objects:v146 count:16];
            if (!v93)
            {
              break;
            }

            v99 = 0;
          }
        }
      }

      v75 = *sub_1000201E0();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = 0x8F5C28F5C28F5C29 * ((a2[1] - *a2) >> 3);
        *buf = 134217984;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu subscription details", buf, 0xCu);
      }

      v73 = 1;
    }
  }

  else
  {
    v74 = sub_1000201E0();
    if (os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v73 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v73;
}

void sub_10063B87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, void *a35, void *a36, void *a37, uint64_t a38, void *a39)
{
  sub_10016AFCC(&STACK[0x360]);

  _Unwind_Resume(a1);
}

BOOL sub_10063BAA4(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*a1 == a1[1])
  {
    v7 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    ctu::base64::encode();
    v11 = @"lpaSignedRequest";
    v5 = [NSString stringWithFormat:@"%s", __p];
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v7 = sub_100634E10(v6, a2);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_10063BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063BC08(uint64_t *a1, std::string *a2, std::string *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v21 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = sub_1000201E0();
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v13 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"sessionId"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v8 objectForKey:@"token"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_100016890(a2, [v11 UTF8String]);
          sub_100016890(a3, [v12 UTF8String]);
          v13 = 1;
        }

        else
        {
          v17 = *sub_1000201E0();
          v13 = 0;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (pushToken)", v19, 2u);
            v13 = 0;
          }
        }
      }

      else
      {
        v16 = *sub_1000201E0();
        v13 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (session)", buf, 2u);
          v13 = 0;
        }
      }
    }
  }

  else
  {
    v15 = sub_1000201E0();
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

void sub_10063BEA0(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  if (a1[1] == *a1)
  {
    *a2 = 0;
  }

  else
  {
    v18 = v4;
    v19 = a2;
    v5 = objc_opt_new();
    v7 = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      do
      {
        if ((v7[15] & 1) == 0)
        {
          if ((*(v7 + 23) & 0x80000000) == 0)
          {
            v8 = v7;
            if (!*(v7 + 23))
            {
              goto LABEL_31;
            }

LABEL_9:
            v9 = [NSString stringWithUTF8String:v8];
            v10 = v7 + 3;
            if (*(v7 + 47) < 0)
            {
              if (!v7[4])
              {
                goto LABEL_15;
              }

              v10 = *v10;
            }

            else if (!*(v7 + 47))
            {
LABEL_15:
              v11 = 0;
LABEL_16:
              v12 = v7 + 9;
              if (*(v7 + 95) < 0)
              {
                if (!v7[10])
                {
                  goto LABEL_22;
                }

                v12 = *v12;
              }

              else if (!*(v7 + 95))
              {
LABEL_22:
                v13 = 0;
LABEL_23:
                v14 = v7 + 6;
                if (*(v7 + 71) < 0)
                {
                  if (!v7[7])
                  {
                    goto LABEL_29;
                  }

                  v14 = *v14;
                }

                else if (!*(v7 + 71))
                {
LABEL_29:
                  v15 = 0;
                  goto LABEL_30;
                }

                v15 = [NSString stringWithUTF8String:v14];
LABEL_30:
                v16 = [[CTPendingPlan alloc] initWithSmdpURL:v9 matchingID:v11 iccidHash:v13];
                v17 = [[CTDisplayPlan alloc] initWithPlan:v16 status:1 attributes:0 isPhysical:0 carrierName:v15 phoneNumber:0 label:0];
                [v5 addObject:v17];

                goto LABEL_31;
              }

              v13 = [NSString stringWithUTF8String:v12];
              goto LABEL_23;
            }

            v11 = [NSString stringWithUTF8String:v10];
            goto LABEL_16;
          }

          if (v7[1])
          {
            v8 = *v7;
            goto LABEL_9;
          }
        }

LABEL_31:
        v7 += 39;
      }

      while (v7 != v6);
    }

    v20 = v5;
    sub_10063C100(v19, &v20);

    v4 = v18;
  }

  objc_autoreleasePoolPop(v4);
}

const void **sub_10063C100(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

BOOL sub_10063C138(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (!v8 || *a2 == a2[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v19[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v20[0] = v10;
    v19[1] = @"lpaSignedRequest";
    v11 = __p;
    if (v18 < 0)
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v20[1] = v12;
    v19[2] = @"action";
    v13 = [NSString stringWithFormat:@"%s", encodeCarrierSetupAction()];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

void sub_10063C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063C358(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v55 = a3;
    v60 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v60];
    v9 = v60;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v38 = sub_1000201E0();
      if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v39 = 0;
    }

    else
    {
      v52 = [v8 objectForKey:@"sessionId"];
      if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v52;
        sub_10000501C(buf, [v52 UTF8String]);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *buf;
        *(a2 + 16) = *&buf[16];
        v12 = *sub_1000201E0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I sessionId [%s]", buf, 0xCu);
        }

        v46 = [v8 objectForKey:@"setupOptions"];
        if (v46)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            obj = v46;
            v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v14)
            {
              v16 = 0;
              *&v15 = 136315906;
              v43 = v15;
              v53 = *v57;
              for (i = *v57; ; i = *v57)
              {
                if (i != v53)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v56 + 1) + 8 * v16);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = [v18 objectForKey:@"setupUrl"];
                  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v20 = v55[1];
                    if (v20 >= v55[2])
                    {
                      v21 = sub_10063D74C(v55);
                    }

                    else
                    {
                      v20[10] = 0u;
                      v20[11] = 0u;
                      v20[8] = 0u;
                      v20[9] = 0u;
                      v20[6] = 0u;
                      v20[7] = 0u;
                      v20[4] = 0u;
                      v20[5] = 0u;
                      v20[2] = 0u;
                      v20[3] = 0u;
                      v21 = (v20 + 12);
                      *v20 = 0u;
                      v20[1] = 0u;
                    }

                    v55[1] = v21;
                    v24 = v19;
                    sub_100016890((v21 - 72), [v19 UTF8String]);
                    [v18 objectForKey:@"carrier"];
                    v51 = v47 = (v21 - 192);
                    if (v51)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v25 = v51;
                        sub_100016890(v47, [v51 UTF8String]);
                      }
                    }

                    v50 = [v18 objectForKey:{@"imsiPrefix", v43}];
                    if (v50)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v26 = v50;
                        sub_100016890((v21 - 168), [v50 UTF8String]);
                      }
                    }

                    v49 = [v18 objectForKey:@"gid1"];
                    if (v49)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v27 = v49;
                        sub_100016890((v21 - 144), [v49 UTF8String]);
                      }
                    }

                    v48 = [v18 objectForKey:@"gid2"];
                    if (v48)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v28 = v48;
                        sub_100016890((v21 - 120), [v48 UTF8String]);
                      }
                    }

                    v29 = [v18 objectForKey:@"setupType"];
                    if (v29)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v30 = v29;
                        sub_100016890((v21 - 96), [v29 UTF8String]);
                      }
                    }

                    v31 = [v18 objectForKey:@"handoffToken"];
                    if (v31)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = v31;
                        sub_100016890((v21 - 48), [v31 UTF8String]);
                      }
                    }

                    v33 = [v18 objectForKey:@"esimInstallDetails"];
                    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v45 = [v33 objectForKey:@"phoneNumber"];
                      if (v45)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          sub_100016890((v21 - 24), [v45 UTF8String]);
                        }
                      }

                      log = *sub_1000201E0();
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        if (*(v21 - 169) < 0)
                        {
                          v47 = v47->__r_.__value_.__r.__words[0];
                        }

                        v34 = v21 - 72;
                        v35 = (v21 - 96);
                        if (*(v21 - 73) < 0)
                        {
                          v35 = *v35;
                        }

                        if (*(v21 - 49) < 0)
                        {
                          v34 = *(v21 - 72);
                        }

                        v36 = (v21 - 24);
                        if (*(v21 - 1) < 0)
                        {
                          v36 = *v36;
                        }

                        *buf = v43;
                        *&buf[4] = v47;
                        *&buf[12] = 2080;
                        *&buf[14] = v35;
                        *&buf[22] = 2080;
                        v62 = v34;
                        v63 = 2080;
                        v64 = v36;
                        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I fCarrierName [%s] fSetupType [%s] fSetupURL [%s] fPhoneNumber [%s]", buf, 0x2Au);
                      }
                    }

                    else
                    {
                      v37 = *sub_1000201E0();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (esimInstallDetailObj element)", buf, 2u);
                      }
                    }
                  }

                  else
                  {
                    v23 = *sub_1000201E0();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (setupUrl)", buf, 2u);
                    }
                  }
                }

                else
                {
                  v22 = *sub_1000201E0();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (setupOption element)", buf, 2u);
                  }
                }

                if (++v16 >= v14)
                {
                  v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
                  if (!v14)
                  {
                    break;
                  }

                  v16 = 0;
                }
              }
            }
          }
        }

        v39 = 1;
      }

      else
      {
        v41 = sub_1000201E0();
        if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          sub_10177630C();
        }

        v39 = 0;
      }
    }
  }

  else
  {
    v40 = sub_1000201E0();
    if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v39 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v39;
}

void sub_10063CCA0(const std::string **a1@<X0>, char a2@<W1>, const void **a3@<X8>)
{
  context = objc_autoreleasePoolPush();
  if (a1[1] == *a1)
  {
    *a3 = 0;
  }

  else
  {
    v29 = a3;
    v5 = objc_opt_new();
    v6 = *a1;
    v32 = v5;
    v33 = a1[1];
    if (*a1 != v33)
    {
      do
      {
        v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
        size = v7;
        if (SHIBYTE(v6[1].__r_.__value_.__r.__words[2]) < 0)
        {
          size = v6[1].__r_.__value_.__l.__size_;
        }

        v9 = &v6[1];
        if (size <= 3)
        {
          v10 = *sub_1000201E0();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            if (SHIBYTE(v6[1].__r_.__value_.__r.__words[2]) < 0)
            {
              v9 = v9->__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid imsiPrefix [%s]", &buf, 0xCu);
          }

          goto LABEL_71;
        }

        if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6->__r_.__value_.__l.__size_)
          {
            v11 = v6->__r_.__value_.__r.__words[0];
LABEL_15:
            v34 = [NSString stringWithUTF8String:v11];
            v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
            goto LABEL_17;
          }
        }

        else
        {
          v11 = v6;
          if (*(&v6->__r_.__value_.__s + 23))
          {
            goto LABEL_15;
          }
        }

        v34 = 0;
LABEL_17:
        if ((v7 & 0x80) != 0)
        {
          if (!v6[1].__r_.__value_.__l.__size_)
          {
LABEL_32:
            v13 = 0;
            if ((v7 & 0x80) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          }
        }

        else if (!v7)
        {
          goto LABEL_32;
        }

        std::string::basic_string(&buf, v6 + 1, 0, 3uLL, &v35);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v13 = [NSString stringWithUTF8String:p_buf];
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
        if ((v7 & 0x80) == 0)
        {
LABEL_25:
          if (!v7)
          {
            goto LABEL_34;
          }

          goto LABEL_26;
        }

LABEL_33:
        if (!v6[1].__r_.__value_.__l.__size_)
        {
LABEL_34:
          v15 = 0;
          goto LABEL_35;
        }

LABEL_26:
        std::string::basic_string(&buf, v6 + 1, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v35);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &buf;
        }

        else
        {
          v14 = buf.__r_.__value_.__r.__words[0];
        }

        v15 = [NSString stringWithUTF8String:v14];
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

LABEL_35:
        v16 = &v6[2];
        if (SHIBYTE(v6[2].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[2].__r_.__value_.__l.__size_)
          {
            v16 = v16->__words[0];
LABEL_40:
            v17 = [NSString stringWithUTF8String:v16];
            goto LABEL_42;
          }
        }

        else if (*(&v6[2].__r_.__value_.__s + 23))
        {
          goto LABEL_40;
        }

        v17 = 0;
LABEL_42:
        v18 = &v6[3];
        if (SHIBYTE(v6[3].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[3].__r_.__value_.__l.__size_)
          {
            v18 = v18->__words[0];
LABEL_47:
            v19 = [NSString stringWithUTF8String:v18];
            goto LABEL_49;
          }
        }

        else if (*(&v6[3].__r_.__value_.__s + 23))
        {
          goto LABEL_47;
        }

        v19 = 0;
LABEL_49:
        v20 = &v6[5];
        if (SHIBYTE(v6[5].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[5].__r_.__value_.__l.__size_)
          {
            v20 = v20->__words[0];
LABEL_54:
            v21 = [NSString stringWithUTF8String:v20];
            goto LABEL_56;
          }
        }

        else if (*(&v6[5].__r_.__value_.__s + 23))
        {
          goto LABEL_54;
        }

        v21 = 0;
LABEL_56:
        v22 = &v6[6];
        if (SHIBYTE(v6[6].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[6].__r_.__value_.__l.__size_)
          {
            v22 = v22->__words[0];
LABEL_61:
            v23 = [NSString stringWithUTF8String:v22];
            goto LABEL_63;
          }
        }

        else if (*(&v6[6].__r_.__value_.__s + 23))
        {
          goto LABEL_61;
        }

        v23 = 0;
LABEL_63:
        v24 = &v6[7];
        if (SHIBYTE(v6[7].__r_.__value_.__r.__words[2]) < 0)
        {
          if (!v6[7].__r_.__value_.__l.__size_)
          {
LABEL_69:
            v25 = 0;
            goto LABEL_70;
          }

          v24 = v24->__words[0];
        }

        else if (!*(&v6[7].__r_.__value_.__s + 23))
        {
          goto LABEL_69;
        }

        v25 = [NSString stringWithUTF8String:v24];
LABEL_70:
        LOBYTE(v28) = a2;
        v26 = [[CTODAPlan alloc] initWithSetupUrl:v21 mcc:v13 mnc:v15 gid1:v17 gid2:v19 handoffToken:v23 inBuddy:v28];
        v27 = [[CTDisplayPlan alloc] initWithPlan:v26 status:1 attributes:16 isPhysical:0 carrierName:v34 phoneNumber:v25 label:0];
        [v32 addObject:v27];

LABEL_71:
        v6 += 8;
      }

      while (v6 != v33);
    }

    buf.__r_.__value_.__r.__words[0] = v32;
    sub_10063C100(v29, &buf.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(context);
}

BOOL sub_10063D1C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[1];
  }

  if (!v7 || *a2 == a2[1])
  {
    v13 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    ctu::base64::encode();
    v17[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = [NSString stringWithFormat:@"%s", v8];
    v17[1] = @"lpaSignedRequest";
    v18[0] = v9;
    v10 = __p;
    if (v16 < 0)
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithFormat:@"%s", v10];
    v18[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v13 = sub_100634E10(v12, a3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

void sub_10063D354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063D394(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_10016AE28(a1, v4);
  }

  v5 = 40 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *&v14 = 40 * v1 + 40;
  v6 = a1[1];
  v7 = 40 * v1 + *a1 - v6;
  sub_10063D4B4(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10063D570(&v12);
  return v11;
}

void sub_10063D4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10063D570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 40;
    }
  }

  return sub_10016AF4C(v9);
}

uint64_t sub_10063D570(uint64_t a1)
{
  sub_10063D5A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063D5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10063D604(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1000CE3D4();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10016B594(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  sub_10016AB7C(200 * v2, a2);
  v15 = 200 * v2 + 200;
  v7 = a1[1];
  v8 = 200 * v2 + *a1 - v7;
  sub_10016B5F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10016B888(&v13);
  return v12;
}

void sub_10063D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016B888(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D74C(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v2 = v1 + 1;
  if (v1 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v4 = 0x155555555555555;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_1000EEBF0(a1, v4);
  }

  v5 = 192 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *&v14 = 192 * v1 + 192;
  v6 = a1[1];
  v7 = 192 * v1 + *a1 - v6;
  sub_10063D87C(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10063D994(&v12);
  return v11;
}

void sub_10063D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10063D994(va);
  _Unwind_Resume(a1);
}

void sub_10063D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v10;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_1000DEE0C(v5) + 192;
    }
  }
}

uint64_t sub_10063D994(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_1000DEE0C(i - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10063D9E4(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10063DAF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000E3A84(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10063DB40(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10063DBF0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_10063DC18(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v13[0] = @"requestID";
    v13[1] = @"request";
    v14[0] = v3;
    v14[1] = v4;
    v6 = v13;
    v7 = v14;
    v8 = 2;
  }

  else
  {
    v11 = @"requestID";
    v12 = v3;
    v6 = &v11;
    v7 = &v12;
    v8 = 1;
  }

  v9 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:v8];

  return v9;
}

void sub_10063DD0C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  v3 = [v5 objectForKeyedSubscript:@"requestID"];
  v4 = [v5 objectForKeyedSubscript:@"request"];
  *a2 = v3;
  a2[1] = v4;
}

id sub_10063DD9C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [v1 error];

  if (v3)
  {
    v4 = [v1 error];
    [v2 setObject:v4 forKeyedSubscript:@"error"];
  }

  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 eventType]);
  [v2 setObject:v5 forKeyedSubscript:@"eventType"];

  off_101FB33A0();
  if (objc_opt_isKindOfClass())
  {
    v6 = v1;
    v7 = [v6 password];

    if (v7)
    {
      v8 = [v6 password];
      [v2 setObject:v8 forKeyedSubscript:@"password"];
    }

    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 passwordType]);
    [v2 setObject:v9 forKeyedSubscript:@"passwordType"];
    goto LABEL_12;
  }

  off_101FB33A8();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 pairingFlags]);
    [v2 setObject:v11 forKeyedSubscript:@"pairingFlags"];

    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 passwordType]);
    [v2 setObject:v12 forKeyedSubscript:@"passwordType"];

    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 throttleSeconds]);
    [v2 setObject:v9 forKeyedSubscript:@"throttleSeconds"];
LABEL_12:

    goto LABEL_13;
  }

  off_101FB33B0();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = v1;
  v14 = [v13 password];

  if (v14)
  {
    v9 = [v13 password];
    [v2 setObject:v9 forKeyedSubscript:@"password"];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:

  return v2;
}

void sub_10063E038(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

Class sub_10063E094()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationPresentEvent");
  qword_101FBA830 = result;
  off_101FB33A0 = sub_10063E0E8;
  return result;
}

Class sub_10063E120()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationRequestEvent");
  qword_101FBA848 = result;
  off_101FB33A8 = sub_10063E174;
  return result;
}

Class sub_10063E180()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationResponseEvent");
  qword_101FBA850 = result;
  off_101FB33B0 = sub_10063E1D4;
  return result;
}

uint64_t sub_10063E2F0(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  *a1 = off_101E6C6D8;
  sub_10063E520((a1 + 8), a3, &kCtLoggingSystemName, &off_101E6C320);
  *a1 = off_101E6C338;
  (***a2)(&v15);
  *(a1 + 48) = v15;
  v8 = *(a2 + 8);
  *(a1 + 64) = *a2;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanMultiplePlanInstallScheduler");
  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v9 = *(a1 + 32);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  return a1;
}

void sub_10063E4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v20 = v17[9];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  CellularPlanMultiplePlanInstallSchedulerInterface::~CellularPlanMultiplePlanInstallSchedulerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_10063E520(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

void sub_10063E590(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1006425A8();
}

void sub_10063E60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063E624(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 192);
    v3 = *(a1 + 200);
    v75[0] = ",";
    v75[1] = 1;
    memset(&v74, 0, sizeof(v74));
    if (v4 == v3)
    {
      v28 = &v74;
    }

    else
    {
      if (*(v4 + 71) >= 0)
      {
        v5 = *(v4 + 71);
      }

      else
      {
        v5 = *(v4 + 56);
      }

      memset(&__dst, 0, sizeof(__dst));
      p_dst = &__dst;
      sub_1000677C4(&__dst, v5 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if (*(v4 + 71) >= 0)
        {
          v7 = (v4 + 48);
        }

        else
        {
          v7 = *(v4 + 48);
        }

        memmove(p_dst, v7, v5);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v5) = 58;
      v8 = *(v4 + 95);
      if (v8 >= 0)
      {
        v9 = (v4 + 72);
      }

      else
      {
        v9 = *(v4 + 72);
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 95);
      }

      else
      {
        v10 = *(v4 + 80);
      }

      v11 = std::string::append(&__dst, v9, v10);
      v12 = v11->__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = v11->__r_.__value_.__l.__size_;
      *(__p.__r_.__value_.__r.__words + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v74.__r_.__value_.__r.__words[0] = v12;
      v74.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      *(&v74.__r_.__value_.__r.__words[1] + 7) = *(__p.__r_.__value_.__r.__words + 7);
      *(&v74.__r_.__value_.__s + 23) = v13;
      if ((v4 + 312) != v3)
      {
        v14 = (v4 + 407);
        do
        {
          sub_100074CFC(v75, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &__dst;
          }

          else
          {
            v15 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&v74, v15, size);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((*(v14 - 24) & 0x80u) == 0)
          {
            v17 = *(v14 - 24);
          }

          else
          {
            v17 = *(v14 - 39);
          }

          memset(&__dst, 0, sizeof(__dst));
          sub_1000677C4(&__dst, v17 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &__dst;
          }

          else
          {
            v18 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v17)
          {
            if ((*(v14 - 24) & 0x80u) == 0)
            {
              v19 = (v14 - 47);
            }

            else
            {
              v19 = *(v14 - 47);
            }

            memmove(v18, v19, v17);
          }

          *(&v18->__r_.__value_.__l.__data_ + v17) = 58;
          v20 = *v14;
          if (v20 >= 0)
          {
            v21 = (v14 - 23);
          }

          else
          {
            v21 = *(v14 - 23);
          }

          if (v20 >= 0)
          {
            v22 = *v14;
          }

          else
          {
            v22 = *(v14 - 15);
          }

          v23 = std::string::append(&__dst, v21, v22);
          v24 = *&v23->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v74, p_p, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v27 = (v14 + 217);
          v14 += 312;
        }

        while (v27 != v3);
        v13 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
        v12 = v74.__r_.__value_.__r.__words[0];
      }

      v28 = &v74;
      if (v13 < 0)
      {
        v28 = v12;
      }
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v28;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ALS plans : [%s]", &__dst, 0xCu);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 160);
    v29 = *(a1 + 168);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v30 != v29)
    {
      if (*(v30 + 63) < 0)
      {
        sub_100005F2C(&__dst, *(v30 + 40), *(v30 + 48));
      }

      else
      {
        __dst = *(v30 + 40);
      }

      __p = __dst;
      for (i = v30 + 160; i != v29; i += 160)
      {
        sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &__dst;
        }

        else
        {
          v32 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v32, v33);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*(i + 63) < 0)
        {
          sub_100005F2C(&__dst, *(i + 40), *(i + 48));
        }

        else
        {
          v34 = *(i + 40);
          __dst.__r_.__value_.__r.__words[2] = *(i + 56);
          *&__dst.__r_.__value_.__l.__data_ = v34;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__dst;
        }

        else
        {
          v35 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v35, v36);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    v37 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v37;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transfer plans : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v38 = (a1 + 224);
    if (*(a1 + 247) < 0)
    {
      v38 = *v38;
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SODA plan : %s", &__dst, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(a1 + 320), (a1 + 328), ",", 1, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Enabled plans: [%s]", &__p, 0xCu);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 272);
    v41 = (a1 + 280);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v40 != (a1 + 280))
    {
      sub_100643B7C((v40 + 4), &__dst);
      v42 = v40[1];
      __p = __dst;
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v40[2];
          v44 = *v43 == v40;
          v40 = v43;
        }

        while (!v44);
      }

      if (v43 != v41)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &__dst;
          }

          else
          {
            v45 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v45, v46);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643B7C((v43 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__dst;
          }

          else
          {
            v47 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v47, v48);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v49 = v43[1];
          if (v49)
          {
            do
            {
              v50 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v50 = v43[2];
              v44 = *v50 == v43;
              v43 = v50;
            }

            while (!v44);
          }

          v43 = v50;
        }

        while (v50 != v41);
      }
    }

    v51 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v51;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Install status : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(a1 + 248);
    v53 = (a1 + 256);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v52 != (a1 + 256))
    {
      sub_100643CC8((v52 + 4), &__dst);
      v54 = v52[1];
      __p = __dst;
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v52[2];
          v44 = *v55 == v52;
          v52 = v55;
        }

        while (!v44);
      }

      if (v55 != v53)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &__dst;
          }

          else
          {
            v56 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v56, v57);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643CC8((v55 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &__dst;
          }

          else
          {
            v58 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v59 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v58, v59);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v60 = v55[1];
          if (v60)
          {
            do
            {
              v61 = v60;
              v60 = *v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v61 = v55[2];
              v44 = *v61 == v55;
              v55 = v61;
            }

            while (!v44);
          }

          v55 = v61;
        }

        while (v61 != v53);
      }
    }

    v62 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v62;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Plan Id to targer iccid map : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v63 = *(a1 + 296);
    v64 = (a1 + 304);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v63 != v64)
    {
      sub_100643E18((v63 + 4), &__dst);
      v65 = v63[1];
      __p = __dst;
      if (v65)
      {
        do
        {
          v66 = v65;
          v65 = *v65;
        }

        while (v65);
      }

      else
      {
        do
        {
          v66 = v63[2];
          v44 = *v66 == v63;
          v63 = v66;
        }

        while (!v44);
      }

      if (v66 != v64)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &__dst;
          }

          else
          {
            v67 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v68 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v67, v68);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643E18((v66 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = &__dst;
          }

          else
          {
            v69 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v70 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v69, v70);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v71 = v66[1];
          if (v71)
          {
            do
            {
              v72 = v71;
              v71 = *v71;
            }

            while (v71);
          }

          else
          {
            do
            {
              v72 = v66[2];
              v44 = *v72 == v66;
              v66 = v72;
            }

            while (!v44);
          }

          v66 = v72;
        }

        while (v72 != v64);
      }
    }

    v73 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v73 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v73;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Support simultaneous sim transfer map : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10063F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063F14C(uint64_t a1)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  if (v2 != v3)
  {
    v4 = v2 + 136;
    do
    {
      v5 = (v4 - 96);
      *buf = v4 - 96;
      *(sub_100642800(a1 + 272, (v4 - 96)) + 56) = 0;
      v6 = (*(**(a1 + 64) + 1080))();
      *buf = v4 - 96;
      *(sub_100170224(a1 + 296, (v4 - 96)) + 56) = v6;
      if ((v6 & 1) == 0)
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v4 - 73) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315138;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Simultaneous transfer not supported by iccid %s", buf, 0xCu);
        }
      }

      v8 = v4 + 24;
      v4 += 160;
    }

    while (v8 != v3);
  }

  v9 = *(a1 + 192);
  for (i = *(a1 + 200); v9 != i; v9 += 312)
  {
    *buf = v9 + 72;
    *(sub_100642800(a1 + 272, (v9 + 72)) + 56) = 9;
  }

  v11 = *(a1 + 247);
  if (v11 < 0)
  {
    v11 = *(a1 + 232);
  }

  if (v11)
  {
    *buf = a1 + 224;
    *(sub_100642800(a1 + 272, (a1 + 224)) + 56) = 0;
  }
}

uint64_t sub_10063F358(uint64_t a1)
{
  v1 = *(a1 + 184);
  v2 = *(a1 + 168);
  if (v2 == v1)
  {
    return 1;
  }

  if (v2 == v1 + 160)
  {
    goto LABEL_29;
  }

  v4 = *(v1 + 87);
  if (v4 >= 0)
  {
    v5 = *(v1 + 87);
  }

  else
  {
    v5 = *(v1 + 72);
  }

  v6 = *(v1 + 247);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v1 + 232);
  }

  if (v5 != v6)
  {
    goto LABEL_29;
  }

  v8 = v4 >= 0 ? (v1 + 64) : *(v1 + 64);
  v9 = v7 >= 0 ? (v1 + 224) : *(v1 + 224);
  if (memcmp(v8, v9, v5))
  {
    goto LABEL_29;
  }

  v10 = *(v1 + 111);
  if (v10 >= 0)
  {
    v11 = *(v1 + 111);
  }

  else
  {
    v11 = *(v1 + 96);
  }

  v12 = *(v1 + 271);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v1 + 256);
  }

  if (v11 == v12 && (v10 >= 0 ? (v14 = (v1 + 88)) : (v14 = *(v1 + 88)), v13 >= 0 ? (v15 = (v1 + 248)) : (v15 = *(v1 + 248)), !memcmp(v14, v15, v11) && (v24 = sub_100007A6C(a1 + 296, (v1 + 40)), a1 + 304 != v24)))
  {
    v16 = *(v24 + 56);
  }

  else
  {
LABEL_29:
    v16 = 1;
  }

  if (a1 + 280 == sub_100007A6C(a1 + 272, (v1 + 40)))
  {
    v17 = 0;
  }

  else
  {
    v17 = *sub_1000E20F0(a1 + 272, (v1 + 40));
  }

  v19 = (v17 - 7);
  v20 = v17 - 11;
  v22 = (v20 & 0xFA) == 0 || v19 < 4;
  v23 = (v20 & 0xFA) == 0;
  if (v16)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

void sub_10063F4D4(uint64_t a1)
{
  if (*(a1 + 216) != *(a1 + 200))
  {
    sub_10063F604(a1);
    *(a1 + 216) += 312;
    return;
  }

  v2 = *(a1 + 184);
  if (v2 == *(a1 + 168))
  {
    if ((*(a1 + 247) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 232))
      {
        goto LABEL_10;
      }
    }

    else if (*(a1 + 247))
    {
LABEL_10:

      sub_10063FE4C(a1);
      return;
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No more plans to schedule for installation", v4, 2u);
    }

    sub_10063FEF0(a1);
    sub_10063E624(a1);
    return;
  }

  v5 = v2 + 40;
  if (*(sub_100642800(a1 + 272, (v2 + 40)) + 56))
  {
    if (!sub_10063F358(a1))
    {
      return;
    }

    *(a1 + 184) += 160;
  }

  sub_10063F98C(a1);
}

void sub_10063F604(uint64_t a1)
{
  if (*(a1 + 216) == *(a1 + 200))
  {

    sub_10063F4D4();
  }

  else
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3 && *(a1 + 120))
      {
        v30 = 0;
        *v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        *v27 = 0u;
        *v24 = 0u;
        *v25 = 0u;
        *v22 = 0u;
        v23 = 0u;
        *v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        *v19 = 0u;
        v16 = 0u;
        *v17 = 0u;
        *v14 = 0u;
        *v15 = 0u;
        *v12 = 0u;
        v13 = 0u;
        *__dst = 0u;
        sub_100FB5378(__dst, *(a1 + 216));
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 216);
          v6 = (v5 + 72);
          if (*(v5 + 95) < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v33 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Scheduling the pending install plan iccidHash (%s)", buf, 0xCu);
        }

        v7 = *(a1 + 216);
        if (*(v7 + 95) < 0)
        {
          sub_100005F2C(__p, *(v7 + 72), *(v7 + 80));
        }

        else
        {
          *__p = *(v7 + 72);
          v9 = *(v7 + 88);
        }

        v10 = a1;
        v31 = 0;
        operator new();
      }
    }

    else
    {
      v3 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017765B8();
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }
}

void sub_10063F938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_100641F30(&a16);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_10063F98C(uint64_t a1)
{
  if (*(a1 + 184) == *(a1 + 168))
  {
    sub_100640988(a1);

    sub_10063F4D4(a1);
  }

  else
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3 && *(a1 + 120))
      {
        *v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        *v36 = 0u;
        *v33 = 0u;
        *v34 = 0u;
        *__dst = 0u;
        memset(v32, 0, sizeof(v32));
        v4 = *(a1 + 184);
        if (*(v4 + 23) < 0)
        {
          sub_100005F2C(__dst, *v4, *(v4 + 1));
          v4 = *(a1 + 184);
        }

        else
        {
          v5 = *v4;
          *&v32[0] = *(v4 + 2);
          *__dst = v5;
        }

        *(v32 + 8) = *(v4 + 24);
        if (*(v4 + 63) < 0)
        {
          sub_100005F2C(&v32[1] + 8, *(v4 + 5), *(v4 + 6));
          v4 = *(a1 + 184);
        }

        else
        {
          v6 = *(v4 + 40);
          *(&v32[2] + 1) = *(v4 + 7);
          *(&v32[1] + 8) = v6;
        }

        *v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        *v36 = 0u;
        *v33 = 0u;
        *v34 = 0u;
        v7 = *(a1 + 168);
        v8 = *(v7 - 97);
        if (v8 >= 0)
        {
          v9 = *(v7 - 97);
        }

        else
        {
          v9 = *(v7 - 112);
        }

        v10 = *(v4 + 63);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v4 + 6);
        }

        if (v9 == v10)
        {
          v14 = *(v7 - 120);
          v12 = (v7 - 120);
          v13 = v14;
          if (v8 >= 0)
          {
            v15 = v12;
          }

          else
          {
            v15 = v13;
          }

          if (v11 >= 0)
          {
            v16 = v4 + 40;
          }

          else
          {
            v16 = *(v4 + 5);
          }

          v17 = memcmp(v15, v16, v9) == 0;
        }

        else
        {
          v17 = 0;
        }

        memset(v29, 0, 24);
        sub_100640DAC(a1, v4, v29);
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 184);
          v20 = (v19 + 40);
          if (*(v19 + 63) < 0)
          {
            v20 = *v20;
          }

          v21 = asString(v17);
          *buf = 136315394;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Scheduling the transfer plan %s, is lastTransferPlan %s", buf, 0x16u);
        }

        v22 = *(a1 + 184);
        if (*(v22 + 63) < 0)
        {
          sub_100005F2C(__p, *(v22 + 40), *(v22 + 48));
        }

        else
        {
          *__p = *(v22 + 40);
          v25 = *(v22 + 56);
        }

        v26 = a1;
        sub_100004AA0(buf, (a1 + 8));
        v23 = *&buf[8];
        v27 = *buf;
        v28 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
        }

        v29[7] = 0;
        operator new();
      }
    }

    else
    {
      v3 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017765B8();
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }
}

void sub_10063FDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a21 = &a18;
  sub_1000087B4(&a21);
  sub_10025C450(&__p);
  sub_100004A34(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_10063FE4C(uint64_t a1)
{
  if ((*(a1 + 247) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 232))
    {
LABEL_3:
      v4 = a1 + 224;
      result = sub_100642800(a1 + 272, (a1 + 224));
      if (!*(result + 56))
      {
        v3 = 14;
        sub_100640EB4(a1, a1 + 224, &v3);
      }

      return result;
    }
  }

  else if (*(a1 + 247))
  {
    goto LABEL_3;
  }

  return sub_10063F4D4(a1);
}

void sub_10063FEF0(uint64_t a1)
{
  if ((sub_100640C40(a1) & 1) == 0)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(a1 + 120);
        if (v4)
        {
          if (*(a1 + 336))
          {
            v5 = *(a1 + 40);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              sub_100074B94(*(a1 + 320), (a1 + 328), ",", 1, &v56.__r_.__value_.__r.__words[1]);
              if ((SBYTE7(v57) & 0x80u) == 0)
              {
                p_size = &v56.__r_.__value_.__l.__size_;
              }

              else
              {
                p_size = v56.__r_.__value_.__l.__size_;
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = p_size;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Enabling iccids (%s) already set", &buf, 0xCu);
              if (SBYTE7(v57) < 0)
              {
                operator delete(v56.__r_.__value_.__l.__size_);
              }
            }

            goto LABEL_16;
          }

          *(&buf + 1) = 0;
          v61 = 0;
          *&buf = &buf + 8;
          v7 = *(a1 + 160);
          v8 = *(a1 + 168);
          while (v7 != v8)
          {
            sub_100005BA0(&buf, (v7 + 40));
            v7 += 160;
          }

          v51 = 0;
          v52 = 0;
          v53 = 0;
          (*(*v4 + 32))(&v51, v4, 0);
          if (((*(**(a1 + 64) + 32))(*(a1 + 64)) & 1) == 0)
          {
            v9 = v51;
            if (v51 != &v52)
            {
              while (1)
              {
                sGetProfileDetails();
                if (v59 == 1)
                {
                  break;
                }

                v10 = *(v9 + 1);
                if (v10)
                {
                  do
                  {
                    v11 = v10;
                    v10 = *v10;
                  }

                  while (v10);
                }

                else
                {
                  do
                  {
                    v11 = *(v9 + 2);
                    v25 = *v11 == v9;
                    v9 = v11;
                  }

                  while (!v25);
                }

                v9 = v11;
                if (v11 == &v52)
                {
                  goto LABEL_30;
                }
              }

              sub_100E3A5D4(&v56.__r_.__value_.__l.__size_);
              v45 = *(a1 + 40);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v56.__r_.__value_.__r.__words[1]) = 0;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I there is already an enabled eSIM. nothing can be enabled.", &v56.__r_.__value_.__s.__data_[8], 2u);
              }

              goto LABEL_138;
            }
          }

LABEL_30:
          v49 = 0;
          v50 = 0;
          v48 = &v49;
          v57 = 0u;
          v58 = 0u;
          *&v56.__r_.__value_.__r.__words[1] = 0u;
          v12 = *(a1 + 248);
          if (v12 != (a1 + 256))
          {
            while (1)
            {
              v13 = *(v12 + 55);
              v14 = v13 < 0 ? v12[5] : *(v12 + 55);
              v15 = v12 + 4;
              v16 = v12 + 7;
              if (!v14)
              {
                break;
              }

              if ((*(v12 + 79) & 0x8000000000000000) != 0)
              {
                if (!v12[8])
                {
                  break;
                }
              }

              else if (!*(v12 + 79))
              {
                break;
              }

              v17 = sub_100007A6C(a1 + 272, v12 + 4);
              if (a1 + 280 == v17 || (v18 = *(v17 + 56), v18 <= 0x10) && ((1 << v18) & 0x19000) != 0)
              {
                if ((*(*v4 + 48))(v4, v12 + 7))
                {
                  v19 = *(a1 + 40);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(v12 + 79) < 0)
                    {
                      v16 = *v16;
                    }

                    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                    *(__dst.__r_.__value_.__r.__words + 4) = v16;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I SIM %s enablement skipped", &__dst, 0xCu);
                  }
                }

                else if ((&buf + 8) == sub_100007A6C(&buf, v12 + 4))
                {
                  sub_10064295C(&v56.__r_.__value_.__l.__size_, (v12 + 7));
                }

                else if ((*(**(a1 + 64) + 32))(*(a1 + 64)))
                {
                  sub_100005BA0(&v48, v12 + 7);
                }

                else
                {
                  if (*(v12 + 79) < 0)
                  {
                    sub_100005F2C(&__dst, v12[7], v12[8]);
                  }

                  else
                  {
                    *&__dst.__r_.__value_.__l.__data_ = *v16;
                    __dst.__r_.__value_.__r.__words[2] = v12[9];
                  }

                  sub_100176728(&v48, &__dst, &v56);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }
                }
              }

LABEL_47:
              v21 = v12[1];
              if (v21)
              {
                do
                {
                  v22 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v22 = v12[2];
                  v25 = *v22 == v12;
                  v12 = v22;
                }

                while (!v25);
              }

              v12 = v22;
              if (v22 == (a1 + 256))
              {
                goto LABEL_68;
              }
            }

            v20 = *(a1 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              if ((v13 & 0x80000000) != 0)
              {
                v15 = *v15;
              }

              if (*(v12 + 79) < 0)
              {
                v16 = *v16;
              }

              LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
              *(__dst.__r_.__value_.__r.__words + 4) = v15;
              WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
              *(&__dst.__r_.__value_.__r.__words[1] + 6) = v16;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid planId %s or target iccid %s", &__dst, 0x16u);
            }

            goto LABEL_47;
          }

LABEL_68:
          if ((*(**(a1 + 64) + 32))(*(a1 + 64)))
          {
            (***(a1 + 64))(v54);
            *&__dst.__r_.__value_.__l.__data_ = *v54;
            memset(v54, 0, sizeof(v54));
            v23 = subscriber::expectedSimCount();
            if (__dst.__r_.__value_.__l.__size_)
            {
              sub_100004A34(__dst.__r_.__value_.__l.__size_);
            }

            if (*&v54[8])
            {
              sub_100004A34(*&v54[8]);
            }

            v24 = v23;
          }

          else
          {
            v24 = 1;
          }

          while (1)
          {
            v25 = v50 >= v24 || *(&v58 + 1) == 0;
            if (v25)
            {
              break;
            }

            sub_100073EE8(&v48, (*(v56.__r_.__value_.__r.__words[2] + 8 * (v58 / 0xAA)) + 24 * (v58 % 0xAA)));
            sub_100642BFC(&v56.__r_.__value_.__l.__size_);
          }

          if (!v50)
          {
            v32 = *(a1 + 40);
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_137;
            }

            LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
            v33 = "#I No new sims to enable - skip";
            goto LABEL_117;
          }

          if (v50 == v53)
          {
            v26 = v48;
            if (v48 == &v49)
            {
LABEL_96:
              v32 = *(a1 + 40);
              if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_137;
              }

              LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
              v33 = "#I Installed profiles are already active - skip";
              goto LABEL_117;
            }

            v27 = v51;
            while (sub_100022D3C(&__dst, v26 + 4, &v27[1].__words[1]))
            {
              v28 = v26[1];
              v29 = v26;
              if (v28)
              {
                do
                {
                  v26 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v26 = v29[2];
                  v25 = *v26 == v29;
                  v29 = v26;
                }

                while (!v25);
              }

              v30 = v27->__words[1];
              if (v30)
              {
                do
                {
                  v31 = v30;
                  v30 = v30->__words[0];
                }

                while (v30);
              }

              else
              {
                do
                {
                  v31 = v27->__words[2];
                  v25 = *v31 == v27;
                  v27 = v31;
                }

                while (!v25);
              }

              v27 = v31;
              if (v26 == &v49)
              {
                goto LABEL_96;
              }
            }
          }

          sub_100074978(&v51, v48, &v49);
          if (*(a1 + 336) != v53)
          {
            goto LABEL_119;
          }

          v34 = *(a1 + 320);
          if (v34 != (a1 + 328))
          {
            v35 = v51;
            while (sub_100022D3C(&__dst, v34 + 4, &v35[1].__words[1]))
            {
              v36 = v34[1];
              v37 = v34;
              if (v36)
              {
                do
                {
                  v34 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v34 = v37[2];
                  v25 = *v34 == v37;
                  v37 = v34;
                }

                while (!v25);
              }

              v38 = v35->__words[1];
              if (v38)
              {
                do
                {
                  v39 = v38;
                  v38 = v38->__words[0];
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v35->__words[2];
                  v25 = *v39 == v35;
                  v35 = v39;
                }

                while (!v25);
              }

              v35 = v39;
              if (v34 == (a1 + 328))
              {
                goto LABEL_113;
              }
            }

LABEL_119:
            if ((a1 + 320) != &v51)
            {
              sub_1001730B8((a1 + 320), v51, &v52);
            }

            v41 = v53;
            (***(a1 + 64))(v54);
            *&__dst.__r_.__value_.__l.__data_ = *v54;
            memset(v54, 0, sizeof(v54));
            v42 = subscriber::expectedSimCount();
            if (__dst.__r_.__value_.__l.__size_)
            {
              sub_100004A34(__dst.__r_.__value_.__l.__size_);
            }

            if (*&v54[8])
            {
              sub_100004A34(*&v54[8]);
            }

            v43 = *(a1 + 40);
            v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
            if (v41 <= v42)
            {
              if (v44)
              {
                sub_100074B94(v51, &v52, ",", 1, &__dst);
                v46 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                *v54 = 136315138;
                *&v54[4] = v46;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Enabling iccids %s", v54, 0xCu);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }

              sub_100074920(v47, &v51);
              (*(*v4 + 40))(v4, v47);
              sub_100009970(v47, v47[1]);
              goto LABEL_137;
            }

            if (v44)
            {
              LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
              v33 = "#I Too many iccids to enable - skip";
              v40 = v43;
              goto LABEL_118;
            }

LABEL_137:
            sub_100641DD4(&v56.__r_.__value_.__l.__size_);
            sub_100009970(&v48, v49);
LABEL_138:
            sub_100009970(&v51, v52);
            sub_100009970(&buf, *(&buf + 1));
LABEL_16:
            sub_100004A34(v3);
            return;
          }

LABEL_113:
          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_137;
          }

          LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
          v33 = "#I No change in enable profiles or notify user plan selection - skip";
LABEL_117:
          v40 = v32;
LABEL_118:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v33, &__dst, 2u);
          goto LABEL_137;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017765B8();
    }

    if (v3)
    {
      goto LABEL_16;
    }
  }
}

void sub_1006408B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, char *a20, uint64_t a21, char a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  sub_100641DD4(&a34);
  sub_100009970(&a19, a20);
  sub_100009970(&a22, a23);
  sub_100009970(v35 - 128, *(v35 - 120));
  sub_100004A34(v34);
  _Unwind_Resume(a1);
}

void sub_100640988(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_23;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 120)) == 0)
  {
LABEL_23:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017765B8();
    }

    goto LABEL_25;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5 = *(a1 + 160);
  v6 = *(a1 + 168);
  if (v5 == v6)
  {
    goto LABEL_21;
  }

  v7 = (v5 + 40);
  while (1)
  {
    if (a1 + 280 != sub_100007A6C(a1 + 272, v7))
    {
      v8 = *sub_1000E20F0(a1 + 272, v7);
      if ((v8 - 7) < 4u || (v8 - 15) < 2)
      {
        goto LABEL_11;
      }

      if (v8 != 11)
      {
        break;
      }
    }

LABEL_12:
    v9 = (v7 + 15);
    v7 += 20;
    if (v9 == v6)
    {
      v11 = v16;
      v10 = v17;
      if (v17 != v16)
      {
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D1184(v11, v10, ",", 1uLL, &__p);
          v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315138;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Send transfer confirmation for plans %s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        (*(*v4 + 64))(v4, &v16);
      }

      goto LABEL_21;
    }
  }

  if (v8 == 12)
  {
LABEL_11:
    sub_100005308(&v16, v7);
    goto LABEL_12;
  }

  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v7 + 23) < 0)
    {
      v7 = *v7;
    }

    v15 = sub_10064A0D0(v8);
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v7;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I delay sending transfer confirmation due to iccid %s status %s", &__p, 0x16u);
  }

LABEL_21:
  __p.__r_.__value_.__r.__words[0] = &v16;
  sub_1000087B4(&__p);
LABEL_25:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_100640C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_100640C40(uint64_t a1)
{
  if (*(a1 + 192) == *(a1 + 200) && *(a1 + 160) == *(a1 + 168))
  {
    if ((*(a1 + 247) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 232))
      {
        return 0;
      }
    }

    else if (!*(a1 + 247))
    {
      return 0;
    }
  }

  v1 = *(a1 + 272);
  if (v1 == (a1 + 280))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 56);
    v3 = v2 > 0x10 || ((1 << v2) & 0x19800) == 0;
    if (v3)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v3 = *v5 == v1;
        v1 = v5;
      }

      while (!v3);
    }

    v1 = v5;
    if (v5 == (a1 + 280))
    {
      return 0;
    }
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v1 + 4;
    if (*(v1 + 55) < 0)
    {
      v8 = *v8;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 2080;
    v12 = sub_10064A0D0(v2);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer plan %s install status %s", &v9, 0x16u);
  }

  return 1;
}

uint64_t sub_100640DAC@<X0>(uint64_t result@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(result + 160);
  for (i = *(result + 168); v3 != i; v3 += 20)
  {
    v7 = *(v3 + 23);
    if (v7 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = v3[1];
    }

    v9 = *(a2 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = a2[1];
    }

    if (v8 == v9)
    {
      if (v7 >= 0)
      {
        v11 = v3;
      }

      else
      {
        v11 = *v3;
      }

      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      result = memcmp(v11, v12, v8);
      if (!result)
      {
        result = sub_100005308(a3, (v3 + 5));
      }
    }
  }

  return result;
}

void sub_100640E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100640E74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100640EB4(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v6 = *a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_100641010(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  (***(a1 + 64))(&v11);
  Registry::getNotificationSenderFactory(&v13, v11);
  v2 = v13;
  (***(a1 + 64))(&v7);
  Registry::getTimerService(&v9, v7);
  (*(*v2 + 168))(&v15, v2, &v9, a1 + 24);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  v3 = v15;
  if (v15)
  {
    sub_100643728(v5, a1 + 272);
    sub_1000E0918(v4, a1 + 248);
    sub_10092FC58(v5, v4, &v6);
    (*(*v3 + 40))(v3, &v6);
    sub_10001021C(&v6);
    sub_1000DD0AC(v4, v4[1]);
    sub_100009970(v5, v5[1]);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017765EC();
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1006411C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, char *);
  v12 = va_arg(va2, void);
  sub_10001021C(va2);
  sub_1000DD0AC(va, v7);
  sub_100009970(va1, v11);
  v4 = *(v2 - 24);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10064125C(uint64_t a1)
{
  v1 = 0x6F96F96F96F96F97 * ((*(a1 + 200) - *(a1 + 192)) >> 3) - 0x3333333333333333 * ((*(a1 + 168) - *(a1 + 160)) >> 5);
  v2 = *(a1 + 247);
  if (v2 < 0)
  {
    v2 = *(a1 + 232);
  }

  if (v2)
  {
    ++v1;
  }

  if (v1 < 2)
  {
    return 0;
  }

  else
  {
    return sub_100640C40(a1);
  }
}

uint64_t **sub_1006412BC(uint64_t a1, uint64_t **a2)
{
  result = (a1 + 320);
  if (result != a2)
  {
    return sub_1001730B8(result, *a2, a2 + 1);
  }

  return result;
}

uint64_t sub_1006412D8(uint64_t a1)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 168) - *(a1 + 160)) >> 5) + 0x6F96F96F96F96F97 * ((*(a1 + 200) - *(a1 + 192)) >> 3);
  v3 = *(a1 + 247);
  if (v3 < 0)
  {
    v3 = *(a1 + 232);
  }

  if (v3)
  {
    ++v2;
  }

  if (v2 < 2)
  {
    return 0;
  }

  result = sub_100640C40(a1);
  if (result)
  {
    return *(a1 + 336) == 0;
  }

  return result;
}

void sub_10064136C(uint64_t a1, std::string **a2, std::string **a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5);
    v12 = 0x6F96F96F96F96F97 * ((a3[1] - *a3) >> 3);
    v13 = *(a4 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a4 + 8);
    }

    *v16 = 134218496;
    *&v16[4] = v11;
    *&v16[12] = 2048;
    *&v16[14] = v12;
    *&v16[22] = 1024;
    v17 = v13 != 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Install transfer plans %zu and pending plans %zu and oda plans: %{BOOL}d", v16, 0x1Cu);
  }

  if (a2[1] != *a2 || a3[1] != *a3)
  {
    goto LABEL_10;
  }

  v14 = *(a4 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (!v14)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101776620();
    }

    sub_100186828(a5, 6);
  }

  else
  {
LABEL_10:
    sub_100186828(a5, 0);
    v15 = (a1 + 160);
    if ((a1 + 160) != a2)
    {
      sub_100641FB8(v15, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5));
    }

    if (a2[1] != *a2)
    {
      CodingUtility::generateUUID(v16, v15);
      if (*(a1 + 159) < 0)
      {
        operator delete(*(a1 + 136));
      }

      *(a1 + 136) = *v16;
      *(a1 + 152) = *&v16[16];
    }

    if ((a1 + 192) != a3)
    {
      sub_1000DDD9C(a1 + 192, *a3, a3[1], 0x6F96F96F96F96F97 * ((a3[1] - *a3) >> 3));
    }

    std::string::operator=((a1 + 224), a4);
    sub_10063F14C(a1);
    *(a1 + 216) = *(a1 + 192);
    *(a1 + 184) = *(a1 + 160);
    sub_10063F4D4(a1);
  }
}

void sub_1006415B0(uint64_t a1, std::string::size_type a2, uint64_t a3, char *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    v11 = sub_10064A0D0(*a4);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Plan install status for sourceIccid (%s), targetIccidOrHash (%s), state (%s)", &buf, 0x20u);
  }

  memset(&buf, 0, sizeof(buf));
  v12 = *(a2 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12 && a1 + 280 != sub_100007A6C(a1 + 272, a2))
  {
    std::string::operator=(&buf, a2);
  }

  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13 && a1 + 280 != sub_100007A6C(a1 + 272, a3))
  {
    p_buf = &buf;
    goto LABEL_19;
  }

  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v16 = *(a3 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a3 + 8);
    }

    if (v16)
    {
      v28.__r_.__value_.__r.__words[0] = a1 + 224;
      v17 = sub_100173F08(a1 + 248, (a1 + 224));
      v18 = *(v17 + 79);
      if (v18 >= 0)
      {
        v19 = *(v17 + 79);
      }

      else
      {
        v19 = *(v17 + 64);
      }

      v20 = *(a3 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a3 + 8);
      }

      if (v19 != v20)
      {
        goto LABEL_38;
      }

      v24 = *(v17 + 56);
      v22 = (v17 + 56);
      v23 = v24;
      if (v18 < 0)
      {
        v22 = v23;
      }

      v25 = v21 >= 0 ? a3 : *a3;
      if (!memcmp(v22, v25, v19))
      {
        std::string::operator=(&buf, (a1 + 224));
      }

      else
      {
LABEL_38:
        sub_10092CDF4(a3, &v28);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        buf = v28;
      }
    }
  }

  if (a1 + 280 != sub_100007A6C(a1 + 272, &buf.__r_.__value_.__l.__data_))
  {
    v26 = *(a3 + 23);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a3 + 8);
    }

    if (!v26 || a1 + 256 != sub_100007A6C(a1 + 248, &buf.__r_.__value_.__l.__data_))
    {
LABEL_46:
      sub_100640EB4(a1, &buf, a4);
    }

    v28.__r_.__value_.__r.__words[0] = &buf;
    p_buf = (sub_100173F08(a1 + 248, &buf.__r_.__value_.__l.__data_) + 56);
LABEL_19:
    std::string::operator=(p_buf, a3);
    goto LABEL_46;
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_101776654(&buf.__r_.__value_.__r.__words[2] + 7, &buf, v27);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_1006418F8(uint64_t result, uint64_t a2, const std::string *a3, char *a4)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(result + 247);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(result + 232);
  }

  if (v6 == v7)
  {
    v10 = result;
    v11 = (result + 224);
    v12 = v5 >= 0 ? a2 : *a2;
    v13 = v8 >= 0 ? v11 : *v11;
    result = memcmp(v12, v13, v6);
    if (!result)
    {
      v14 = *(v10 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = a3->__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Update target iccid (%s) for SODA plan", buf, 0xCu);
      }

      *buf = v11;
      v16 = sub_100173F08(v10 + 248, v11);
      std::string::operator=((v16 + 56), a3);
      sub_100640EB4(v10, v11, a4);
    }
  }

  return result;
}

uint64_t sub_100641A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 247);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 232);
  }

  if (v5 == v6)
  {
    v9 = (a1 + 224);
    v10 = v4 >= 0 ? a2 : *a2;
    v11 = v7 >= 0 ? v9 : *v9;
    if (!memcmp(v10, v11, v5))
    {
      v13 = 11;
      sub_100640EB4(a1, v9, &v13);
    }
  }

  return sub_100186828(a3, 0);
}

void sub_100641B24(void *a1, uint64_t a2, int a3)
{
  v6 = a1[31];
  v7 = a1 + 32;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  v8 = HIBYTE(v28);
  if (v6 != v7)
  {
    if (v28 >= 0)
    {
      v9 = HIBYTE(v28);
    }

    else
    {
      v9 = __p[1];
    }

    if (v28 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    while (1)
    {
      v11 = *(v6 + 79);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v6[8];
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v6 + 7 : v6[7];
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v6[2];
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
      if (v15 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 == v7)
  {
    return;
  }

  if (a3 > 3)
  {
    if ((a3 - 4) >= 2)
    {
LABEL_42:
      v22 = a1[5];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1017766E0(a3, v22);
      }

      return;
    }

LABEL_34:
    v17 = 16;
LABEL_35:
    v24 = v17;
    sub_100640EB4(a1, (v6 + 4), &v24);
  }

  if (a3 == 1)
  {
    goto LABEL_34;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v17 = 15;
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  v18 = a1[16];
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    if (v19)
    {
      v20 = v19;
      v21 = a1[15];
      if (v21)
      {
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v26 = *(a2 + 16);
        }

        v23 = (*(*v21 + 56))(v21, __dst);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v23)
        {
          v24 = 15;
          sub_100640EB4(a1, (v6 + 4), &v24);
        }
      }

      sub_100004A34(v20);
    }
  }
}

void sub_100641D9C(uint64_t a1)
{
  sub_1006421EC(a1);

  operator delete();
}

uint64_t sub_100641DD4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10001BD44(a1);
}

uint64_t sub_100641F30(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    sub_1013A800C(a1 + 128);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100641FB8(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_100642104(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      sub_10027EBE0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    sub_100642144(&v14, __str, a3, v8);
    sub_10027EE9C(a1, v12);
  }

  else
  {
    sub_100642144(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_10027EC84(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_100642104(uint64_t *a1)
{
  if (*a1)
  {
    sub_10027EE9C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_100642144(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    *&this[1].__r_.__value_.__l.__data_ = *&v5[1].__r_.__value_.__l.__data_;
    std::string::operator=((this + 40), (v5 + 40));
    std::string::operator=((this + 64), (v5 + 64));
    std::string::operator=((this + 88), (v5 + 88));
    std::string::operator=((this + 112), (v5 + 112));
    std::string::operator=((this + 136), (v5 + 136));
    this = (this + 160);
    v5 = (v5 + 160);
  }

  while (v5 != v6);
  return v6;
}

void sub_1006421EC(uint64_t a1)
{
  *a1 = off_101E6C338;
  sub_100009970(a1 + 320, *(a1 + 328));
  sub_100009970(a1 + 296, *(a1 + 304));
  sub_100009970(a1 + 272, *(a1 + 280));
  sub_1000DD0AC(a1 + 248, *(a1 + 256));
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v6 = (a1 + 192);
  sub_1000DC8D4(&v6);
  v6 = (a1 + 160);
  sub_10027EE48(&v6);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v6 = (a1 + 96);
  sub_100112048(&v6);
  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CellularPlanMultiplePlanInstallSchedulerInterface::~CellularPlanMultiplePlanInstallSchedulerInterface(a1);
}

void *sub_100642394(void *a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E6C468;
  sub_10064248C(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_100642410(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6C468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10064248C(void *a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  *v6 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_10063E2F0(a1, a2, a3, v6);
  if (v6[1])
  {
    std::__shared_weak_count::__release_weak(v6[1]);
  }

  *a1 = off_101E6C4B8;
  return a1;
}

void sub_1006424F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100642510(uint64_t a1)
{
  sub_1006421EC(a1);

  operator delete();
}

void sub_100642548(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_10063E590(*v1);
}

void sub_10064258C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100642684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100642734(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6C538;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10064276C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1006427B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100642800(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1006428A4();
  }

  return result;
}

void sub_100642940(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10064295C(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_100642A28(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    result = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    result = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    result[2] = *(a2 + 2);
    *result = v9;
  }

  ++a1[5];
  return result;
}

void *sub_100642A28(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1000FB8B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100129284(a1, &v10);
}

void sub_100642BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100642BFC(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_100642C84(a1, 1);
}

uint64_t sub_100642C84(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

uint64_t sub_100642CE4(uint64_t a1)
{
  *a1 = off_101E6C5B8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100642D40(uint64_t a1)
{
  *a1 = off_101E6C5B8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

_BYTE *sub_100642E70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6C5B8;
  result = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *result = v5;
  }

  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100642F00(void *a1)
{
  sub_100643130(a1 + 8);

  operator delete(a1);
}

const void **sub_100642F3C(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v5 = *a3;
  *a3 = 0;
  v16 = *a4;
  v17 = v5;
  *a4 = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && *(a1 + 40))
    {
      v9 = *(v7 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 31);
        v11 = *(a1 + 8);
        v12 = asString();
        v13 = a1 + 8;
        if (v10 < 0)
        {
          v13 = v11;
        }

        *buf = 136315394;
        *v19 = v13;
        *&v19[8] = 2080;
        *&v19[10] = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I transfer plan %s scheduled status %s", buf, 0x16u);
      }

LABEL_12:
      sub_100004A34(v8);
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.multi.sch");
  v14 = *&v19[4];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_101776774();
  }

  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_10001021C(&v16);
  return sub_100005978(&v17);
}

void sub_1006430AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100004A34(v10);
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1006430E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100643130(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_100643184(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100643204(uint64_t a1)
{
  *a1 = off_101E6C648;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100643254(uint64_t a1)
{
  *a1 = off_101E6C648;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

_BYTE *sub_100643360(uint64_t a1, void *a2)
{
  *a2 = off_101E6C648;
  result = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *result = v5;
  }

  a2[4] = *(a1 + 32);
  return result;
}

void sub_1006433D0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1006433E4(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void sub_100643428(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a1 + 8;
  v4 = *a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 31) >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I pending install plan iccidHash (%s) status (%s)", buf, 0x16u);
  }

  if (v4)
  {
    memset(buf, 0, sizeof(buf));
    LOBYTE(v15) = 11;
    sub_1006415B0(v5, buf, v3, &v15);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    *buf = 0;
    *&buf[8] = 0;
    (***(v5 + 64))(&v13);
    Registry::getNotificationSenderFactory(&v15, v13);
    v8 = v15;
    (***(v5 + 64))(&v9);
    Registry::getTimerService(&v11, v9);
    (*(*v8 + 168))(buf, v8, &v11, v5 + 24);
    if (v12)
    {
      sub_100004A34(v12);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }

    if (*buf)
    {
      (*(**buf + 72))(*buf, v3, v4);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }
}

void sub_100643658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006436DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100643728(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100643780(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100643780(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100643808(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100643808(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100643898();
  }

  return result;
}

void sub_100643934(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100643950(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  if ((*(v1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_17;
    }
  }

  else if (!*(v1 + 31))
  {
    goto LABEL_17;
  }

  v2 = *v1;
  *buf = v1 + 8;
  v3 = *(sub_100642800(v2 + 272, (v1 + 8)) + 56);
  *buf = v1 + 8;
  v4 = sub_100642800(v2 + 272, (v1 + 8));
  v5 = *(v1 + 32);
  if (*(v4 + 56) != v5)
  {
    v6 = *(v2 + 40);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if ((v3 - 17) >= 0xFEu && (v5 - 15) >= 2u)
    {
      if (v7)
      {
        v11 = sub_10064A0D0(v3);
        v12 = sub_10064A0D0(*(v1 + 32));
        *buf = 136315394;
        *&buf[4] = v11;
        v17 = 2080;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cannot go back from postInstall state (%s) to Installing state (%s).", buf, 0x16u);
      }
    }

    else
    {
      if (v7)
      {
        v9 = sub_10064A0D0(v5);
        v10 = v1 + 8;
        if (*(v1 + 31) < 0)
        {
          v10 = *(v1 + 8);
        }

        *buf = 136315394;
        *&buf[4] = v9;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I update state (%s) for plan (%s)", buf, 0x16u);
        LOBYTE(v5) = *(v1 + 32);
      }

      *buf = v1 + 8;
      *(sub_100642800(v2 + 272, (v1 + 8)) + 56) = v5;
      sub_100641010(v2);
      sub_10063F4D4(v2);
    }
  }

LABEL_17:
  sub_1003023A8(&v15);
  return sub_1000049E0(&v14);
}

void sub_100643B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1003023A8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_100643B7C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ":", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = sub_10064A0D0(*(a1 + 24));
  v7 = strlen(v6);
  v8 = std::string::append(&v12, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v13, "}", 1uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_100643C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100643CC8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v15, ":", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 24);
  v7 = a1 + 24;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v17, "}", 1uLL);
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_100643DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100643E18(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v11, ":", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = asString(*(a1 + 24));
  v7 = strlen(v6);
  v8 = std::string::append(&v12, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v13, "}", 1uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}