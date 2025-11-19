void sub_10032B590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = *(*(a1 + 32) + 16);
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 16, 1);
      }

      v10 = Property;
      v11 = [v10 hashedDescription];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Internal auth failed for %{public}@ with error: %{public}@", &v12, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10032B824(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void *sub_10032B98C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = DiagnosticMessage;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = v3;
  if (v3)
  {
    v3[2] = a2;
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

id *sub_10032BA04(id *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return [result[1] setObject:a2 forKeyedSubscript:a3];
  }

  return result;
}

id *sub_10032BC20(id *a1, void *a2, char a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_49;
  }

  v54.receiver = a1;
  v54.super_class = FamilyInfoLookupResult;
  v6 = objc_msgSendSuper2(&v54, "init");
  a1 = v6;
  if (!v6)
  {
    goto LABEL_49;
  }

  *(v6 + 8) = a3;
  v7 = v5;
  objc_opt_self();
  v8 = +[ACAccountStore ams_sharedAccountStore];
  v9 = [v8 ams_activeiCloudAccount];
  v10 = [v9 ams_DSID];

  v11 = +[ACAccountStore ams_sharedAccountStore];
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v48 = v7;
  v14 = [v7 valueForKeyPath:@"family.members"];
  objc_opt_class();
  v50 = v5;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v49 = a1;

  v53 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
  v52 = v16;
  if (!v17)
  {

    goto LABEL_28;
  }

  v18 = v17;
  v51 = 0;
  v19 = *v60;
  p_vtable = WallClock.vtable;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v60 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v59 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = sub_10026620C(objc_alloc((p_vtable + 27)), v22);
        if (v23)
        {
          [v53 addObject:v23];
          if (v10)
          {
            v24 = v23[3];
            v25 = v10;
            v26 = v24;
            v27 = v25;
            if ([v24 isEqualToNumber:?])
            {
              v28 = v13 == 0;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
LABEL_20:

              v10 = v27;
              v16 = v52;
            }

            else
            {
              v29 = p_vtable;
              v30 = v23[5];
              v31 = [v30 isEqualToNumber:v13];

              if (v31)
              {
                v26 = v51;
                v51 = v23;
                p_vtable = v29;
                goto LABEL_20;
              }

              v10 = v27;
              v16 = v52;
              p_vtable = v29;
            }
          }
        }

        continue;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v18);

  v32 = v51;
  if (v51)
  {
    goto LABEL_43;
  }

LABEL_28:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v33 = v53;
  v34 = [v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = *v56;
    do
    {
      v38 = 0;
      do
      {
        if (*v56 != v37)
        {
          objc_enumerationMutation(v33);
        }

        if (v13)
        {
          v39 = *(*(&v55 + 1) + 8 * v38);
          v40 = v39 ? v39[5] : 0;
          v41 = v40;
          v42 = [v41 isEqualToNumber:v13];

          if (v42)
          {
            v43 = v39;

            v36 = v43;
          }
        }

        v38 = v38 + 1;
      }

      while (v35 != v38);
      v44 = [v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
      v35 = v44;
    }

    while (v44);

    v32 = v36;
    if (v36)
    {
LABEL_43:
      *(v32 + 8) = 1;
    }
  }

  else
  {

    v32 = 0;
  }

  v45 = [v53 sortedArrayUsingComparator:&stru_100523828];

  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = &__NSArray0__struct;
  }

  a1 = v49;
  objc_storeStrong(v49 + 2, v46);

  v5 = v50;
LABEL_49:

  return a1;
}

id *sub_10032C068(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1[2];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = sub_1002665C0(*(*(&v11 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      }

      while (v5);
    }

    v16 = v2;
    v17 = @"family";
    v15 = @"members";
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18 = v9;
    v1 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  return v1;
}

int64_t sub_10032C250(id a1, FamilyMember *a2, FamilyMember *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 && (v6 = v4->_firstName) != 0)
  {
  }

  else
  {
    if (v5)
    {
      firstName = v5->_firstName;
    }

    else
    {
      firstName = 0;
    }

    v8 = firstName;

    if (!v8)
    {
      goto LABEL_24;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (v4->_currentSignedInUser)
  {
LABEL_22:
    v8 = -1;
    goto LABEL_24;
  }

LABEL_9:
  if (v5)
  {
    v9 = v5->_firstName;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    goto LABEL_22;
  }

  if (v5 && v5->_currentSignedInUser || (!v4 ? (v11 = 0) : (v11 = v4->_firstName), v12 = v11, v12, !v12))
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v13 = v4->_firstName;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v5)
    {
      v15 = v5->_firstName;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v8 = [(NSString *)v14 localizedCaseInsensitiveCompare:v16];
  }

LABEL_24:

  return v8;
}

id sub_10032C390()
{
  objc_opt_self();
  if (qword_1005AAC50 != -1)
  {
    dispatch_once(&qword_1005AAC50, &stru_100523848);
  }

  v0 = qword_1005AAC48;

  return v0;
}

void sub_10032C3E8(id a1)
{
  v1 = objc_alloc_init(CellularMonitor);
  v2 = qword_1005AAC48;
  qword_1005AAC48 = v1;
}

void sub_10032C608(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10032C628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = sub_100296A50();
  sub_10032C690(WeakRetained, v1);
}

void sub_10032C690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10032CD54;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void *sub_10032C78C(void *result)
{
  if (result)
  {
    v1 = sub_10032C7CC(result);
    v2 = [v1 isRoaming];

    return v2;
  }

  return result;
}

void *sub_10032C7CC(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10032C928;
    v14 = sub_10032C938;
    v15 = 0;
    v2 = a1[1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10032C940;
    v9[3] = &unk_10051EEF0;
    v9[4] = v1;
    v9[5] = &v10;
    dispatch_sync(v2, v9);
    v3 = v1[5];
    if (v3)
    {
      v4 = *(v3 + 10);
      if ([v11[5] isRoaming] != (v4 & 1))
      {
        v5 = v1[5];
        if (v5)
        {
          LOBYTE(v5) = *(v5 + 10);
        }

        v6 = [v11[5] copyWithRoaming:v5 & 1];
        v7 = v11[5];
        v11[5] = v6;
      }
    }

    v1 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v1;
}

void sub_10032C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10032C928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10032C940(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 activeSubscriptionsDidChange];
    v2 = *(a1 + 32);
  }

  v3 = v2[4];
  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

void sub_10032CD54(uint64_t a1)
{
  if (*(a1 + 32) || *(*(a1 + 40) + 40))
  {
    if (os_variant_has_internal_content())
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 32);
      v4 = *(v2 + 40);
      *(v2 + 40) = v3;
    }

    else
    {
      v5 = *(a1 + 40);
      v4 = *(v5 + 40);
      *(v5 + 40) = 0;
    }

    v6 = *(*(a1 + 40) + 40);
    v7 = ASDLogHandleForCategory();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(*(a1 + 40) + 40);
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = v9;
      v10 = "[Cellular] Applying emulated network configuration: %{public}@";
      v11 = v7;
      v12 = 12;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      LOWORD(v15) = 0;
      v10 = "[Cellular] Clearing emulated network configuration";
      v11 = v7;
      v12 = 2;
    }

    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
LABEL_12:

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = dispatch_get_global_queue(17, 0);
      *&v15 = _NSConcreteStackBlock;
      *(&v15 + 1) = 3221225472;
      v16 = sub_10032CEFC;
      v17 = &unk_10051AF98;
      v18 = v13;
      dispatch_async(v14, &v15);
    }
  }
}

void sub_10032CEFC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CellularStateDidChangeNotification" object:*(a1 + 32)];
}

void sub_10032D98C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_10032D9A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_10032D9BC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_10032D9D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

__CFString *sub_10032E3D8(__CFString *result)
{
  if (result)
  {
    v1 = [(__CFString *)result comparisonType];
    if ((v1 - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_100523898[(v1 - 1)];
    }
  }

  return result;
}

char *sub_10032F8D0(char *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 74), a2);
      v6 = sub_1003D2730(*(a1 + 74));
      v7 = &AMSAccountMediaTypeProduction;
      if (!v6)
      {
        v7 = &AMSAccountMediaTypeAppStoreSandbox;
      }

      objc_storeStrong((a1 + 58), *v7);
    }
  }

  return a1;
}

id sub_10032FD34(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    v105 = 0;
    goto LABEL_130;
  }

  v4 = a2;
  v5 = +[AMSProcessInfo currentProcess];
  v6 = &OBJC_IVAR___FamilyMember__iCloudUsername;
  v7 = *(a1 + 58);
  v8 = sub_1003D0F60(v4);

  v9 = v7;
  v10 = v8;
  if ([v9 isEqualToString:AMSAccountMediaTypeAppStoreSandbox])
  {
    v11 = +[BagService appstoredSandboxService];
  }

  else
  {
    if ([v9 isEqualToString:AMSAccountMediaTypeAppStoreBeta])
    {
      +[BagService appstoredBetaService];
    }

    else
    {
      +[BagService appstoredService];
    }
    v11 = ;
  }

  v12 = v11;
  v13 = [v11 amsBag];

  [v5 setAccountMediaType:*(a1 + 58)];
  v144 = v13;
  v143 = v5;
  if ([*(a1 + 58) isEqualToString:AMSAccountMediaTypeAppStoreSandbox])
  {
    v14 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v145 = [v14 ams_activeiTunesAccount];

LABEL_16:
    v16 = 0;
    v22 = *(a1 + 138) & 0xBLL;
    if (!v145 && !v22)
    {
      v141 = v143;
      v153 = 0;
      v154 = &v153;
      v155 = 0x3032000000;
      v156 = sub_100331584;
      v157 = sub_100331594;
      v158 = 0;
      v147 = 0;
      v148 = &v147;
      v149 = 0x3032000000;
      v150 = sub_100331584;
      v151 = sub_100331594;
      v152 = 0;
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 90);
        v25 = *(a1 + 74);
        v26 = sub_1003D0F60(v25);
        *buf = 138412546;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Sending authentication request for receipt renewal", buf, 0x16u);
      }

      v27 = objc_alloc_init(AMSAuthenticateOptions);
      [v27 setClientInfo:v141];
      [v27 setDebugReason:@"Receipt renewal"];
      v28 = [[AMSAuthenticateRequest alloc] initWithDSID:0 altDSID:0 username:0 options:v27];
      WeakRetained = objc_loadWeakRetained((a1 + 66));
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 90);
          v33 = *(a1 + 74);
          v34 = sub_1003D0F60(v33);
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v34;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Handling authentication request", buf, 0x16u);

          v6 = &OBJC_IVAR___FamilyMember__iCloudUsername;
        }

        v35 = dispatch_semaphore_create(0);
        v36 = objc_loadWeakRetained((a1 + 66));
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10033159C;
        v166 = &unk_1005238D8;
        *&v167[8] = &v147;
        *&v167[16] = &v153;
        v37 = v35;
        *v167 = v37;
        [v36 handleAuthenticateRequest:v28 resultHandler:buf];

        v38 = dispatch_time(0, 300000000000);
        v39 = dispatch_time(0, v38);
        if (dispatch_semaphore_wait(v37, v39))
        {
          v40 = ASDErrorWithDescription();
          v41 = v154[5];
          v154[5] = v40;
        }
      }

      else
      {
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v120 = *(a1 + 90);
          v121 = *(a1 + 74);
          v122 = sub_1003D0F60(v121);
          *buf = 138412546;
          *&buf[4] = v120;
          *&buf[12] = 2114;
          *&buf[14] = v122;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No delegate to handle authentication request", buf, 0x16u);

          v6 = &OBJC_IVAR___FamilyMember__iCloudUsername;
        }

        v43 = ASDErrorWithDescription();
        v37 = v154[5];
        v154[5] = v43;
      }

      v44 = [v148[5] account];

      if (v44)
      {
        v145 = [v148[5] account];
        v45 = 0;
      }

      else
      {
        v46 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v123 = v6;
          v124 = *(a1 + 90);
          v125 = *(a1 + 74);
          v126 = sub_1003D0F60(v125);
          v127 = v154[5];
          *v159 = 138412802;
          v160 = v124;
          v161 = 2114;
          v162 = v126;
          v163 = 2114;
          v164 = v127;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No account for receipt renewal: %{public}@", v159, 0x20u);

          v6 = v123;
        }

        v45 = v154[5];
        v47 = v45;
        v145 = 0;
      }

      _Block_object_dispose(&v147, 8);
      _Block_object_dispose(&v153, 8);

      v16 = v45;
    }

    if (!v145 && !v22)
    {
      v145 = 0;
      v139 = 0;
      v48 = 0;
      goto LABEL_105;
    }

    if (v22)
    {
      goto LABEL_39;
    }

    goto LABEL_12;
  }

  v15 = *(a1 + 50);
  if (!v15)
  {
    v145 = sub_100331288(a1, *(a1 + 58));
    goto LABEL_16;
  }

  v145 = v15;
  v16 = 0;
  if ((*(a1 + 138) & 0xB) != 0)
  {
LABEL_39:
    v49 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 90);
      v51 = *(a1 + 74);
      v52 = v50;
      v53 = sub_1003D0F60(v51);
      *buf = 138412546;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v53;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Fetching vpp app receipt", buf, 0x16u);
    }

    v139 = [v144 URLForKey:@"renew-vpp-receipt"];
    goto LABEL_42;
  }

LABEL_12:
  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 90);
    v19 = *(a1 + 74);
    v20 = v18;
    v21 = sub_1003D0F60(v19);
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Fetching app receipt", buf, 0x16u);
  }

  v139 = [v144 URLForKey:@"app-receipt-create"];
LABEL_42:
  v140 = [[AMSURLRequestEncoder alloc] initWithBag:v144];
  [v140 setAccount:v145];
  [v140 setClientInfo:v143];
  v142 = *(a1 + 74);
  v54 = *(a1 + v6[800]);
  if ([v54 isEqualToString:AMSAccountMediaTypeAppStoreSandbox])
  {
    v55 = 1;
  }

  else
  {
    v55 = [*(a1 + v6[800]) isEqualToString:AMSAccountMediaTypeAppStoreBeta];
  }

  v56 = objc_alloc_init(NSMutableDictionary);
  v57 = *(a1 + 50);
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    v58 = sub_100331288(a1, *(a1 + v6[800]));
  }

  v136 = v58;
  v137 = [v58 ams_DSID];
  v59 = sub_1003D2360(v142);
  v60 = v59;
  if ((v55 & 1) != 0 || !v137 || !v59)
  {
    v64 = v59;
    goto LABEL_66;
  }

  if (([v137 isEqualToNumber:v59] & 1) == 0)
  {
    v61 = sub_100405768();
    v62 = sub_100405CE0(v61, 1);

    if (v62 && [v62 containsObject:v60])
    {
      v135 = sub_1003D2FC0(v142);
      v63 = [v136 ams_storefront];
      v134 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v63 integerValue]);

      if (v135 && v134 && [v134 isEqualToNumber:v135])
      {
        v64 = [v137 copy];

        v65 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 90);
          v67 = *(a1 + 74);
          v132 = v66;
          v68 = sub_1003D0F60(v67);
          *buf = 138413059;
          *&buf[4] = v66;
          *&buf[12] = 2114;
          *&buf[14] = v68;
          *&buf[22] = 2113;
          v166 = v64;
          *v167 = 2114;
          *&v167[2] = v134;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using family primary account: %{private}@ and storeFront: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v65 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v69 = *(a1 + 90);
          v70 = *(a1 + 74);
          v133 = v69;
          v71 = sub_1003D0F60(v70);
          *buf = 138413315;
          *&buf[4] = v69;
          *&buf[12] = 2114;
          *&buf[14] = v71;
          *&buf[22] = 2113;
          v166 = v60;
          *v167 = 2114;
          *&v167[2] = v135;
          *&v167[10] = 2114;
          *&v167[12] = v134;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using app account: %{private}@ due to different item storeFront: %{public}@ primary account storeFront: %{public}@", buf, 0x34u);
        }

        v64 = v60;
      }
    }

    else
    {
      v64 = v60;
    }

LABEL_66:
    v60 = v64;
    if (!v64)
    {
      goto LABEL_68;
    }
  }

  v72 = [v60 stringValue];
  [v56 setObject:v72 forKeyedSubscript:@"dsid"];

LABEL_68:
  v73 = +[ACAccountStore ams_sharedAccountStore];
  v74 = [v73 ams_secureTokenForAccount:v136];

  if (v74)
  {
    [v56 setObject:v74 forKeyedSubscript:@"xToken"];
  }

  v75 = +[AMSDevice deviceGUID];
  [v56 setObject:v75 forKeyedSubscript:@"guid"];

  v76 = +[AMSDevice serialNumber];
  [v56 setObject:v76 forKeyedSubscript:@"serialNumber"];

  v77 = *(a1 + 114);
  if (v77)
  {
    [v56 setObject:v77 forKeyedSubscript:@"vid"];
  }

  else
  {
    v78 = sub_1003D2CD8(v142);
    [v56 setObject:v78 forKeyedSubscript:@"vid"];
  }

  v79 = *(a1 + 138);
  LOBYTE(v80) = v79;
  if (v79)
  {
    [v56 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-expired"];
    v80 = *(a1 + 138);
  }

  if ((v80 & 2) != 0)
  {
    [v56 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-revoked"];
  }

  else if (!(v80 & 8 | v79 & 1))
  {
    v81 = 0;
    goto LABEL_80;
  }

  [v56 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-vpp"];
  v81 = 1;
LABEL_80:
  if (v142 && [v142[15] applicationHasMIDBasedSINF])
  {
    v82 = +[AMSDevice serialNumber];
    [v56 setObject:v82 forKeyedSubscript:@"serialNumber"];
  }

  v83 = sub_1003D248C(*(a1 + 74));
  v84 = [ASFReceipt receiptFromBundleAtPath:v83];

  if ([v84 isVPPLicensed] && objc_msgSend(v84, "isRevoked"))
  {
    [v56 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  if (v55)
  {
    v85 = *(a1 + 98);
    if (v85)
    {
      [v56 setObject:v85 forKeyedSubscript:@"bundle-id"];
    }

    else
    {
      v94 = sub_1003D0F60(v142);
      [v56 setObject:v94 forKeyedSubscript:@"bundle-id"];
    }

    v95 = *(a1 + 106);
    if (v95)
    {
      [v56 setObject:v95 forKeyedSubscript:@"version-id"];
    }

    else
    {
      v96 = sub_1003D251C(v142);
      [v56 setObject:v96 forKeyedSubscript:@"version-id"];
    }
  }

  else
  {
    v86 = @"adam-id";
    if (v81)
    {
      v86 = @"appAdamId";
    }

    v87 = v86;
    v88 = *(a1 + 130);
    if (!v88)
    {
      v88 = sub_1003D0F1C(v142);
    }

    v89 = [NSNumber numberWithUnsignedLongLong:v88];
    [v56 setObject:v89 forKeyedSubscript:v87];

    v90 = @"software-version-external-identifier";
    if (v81)
    {
      v90 = @"appExtVrsId";
    }

    v91 = v90;

    v92 = *(a1 + 122);
    if (!v92)
    {
      v92 = sub_1003D2F7C(v142);
    }

    v93 = [NSNumber numberWithUnsignedLongLong:v92];
    [v56 setObject:v93 forKeyedSubscript:v91];
  }

  v97 = [v140 requestWithMethod:4 bagURL:v139 parameters:v56];

  *buf = v16;
  v48 = [v97 resultWithError:buf];
  v98 = *buf;

  v99 = sub_1003D0F60(*(a1 + 74));
  v100 = [v99 isEqualToString:@"com.apple.news"];

  if (v100)
  {
    [v48 setValue:@"News" forHTTPHeaderField:AMSHTTPHeaderClientApplication];
  }

  v16 = v98;
LABEL_105:
  v101 = v16;

  v102 = v16;
  if (!v102)
  {
    v106 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v107 = [v106 copy];

    [v107 ams_configureWithProcessInfo:v143 bag:v144];
    if ((*(a1 + 42) & 1) != 0 || (*(a1 + 138) & 0xBLL) != 0)
    {
      [v107 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];
    }

    else
    {
      v108 = sub_1003D0F60(*(a1 + 74));
      [v107 set_sourceApplicationBundleIdentifier:v108];
    }

    v109 = [[AMSURLSession alloc] initWithConfiguration:v107];
    [v109 setDelegate:a1];
    v110 = [v109 dataTaskPromiseWithRequest:v48];
    v146 = 0;
    v111 = [v110 resultWithError:&v146];
    v103 = v146;
    v104 = [v111 object];

    v105 = 0;
    if (v103 || !v104)
    {
      goto LABEL_127;
    }

    v112 = [v104 objectForKeyedSubscript:@"status"];
    v113 = v112;
    if (v112 && [v112 integerValue])
    {
      [v113 integerValue];
      v103 = ASDErrorWithTitleAndMessage();
      v105 = 0;
LABEL_126:

      goto LABEL_127;
    }

    v114 = [v104 objectForKeyedSubscript:@"receipt"];
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v115 = [[NSData alloc] initWithBase64EncodedString:v114 options:0];
    }

    else
    {
      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v114)
        {
          v119 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            v128 = *(a1 + 90);
            v129 = *(a1 + 74);
            v130 = v128;
            v131 = sub_1003D0F60(v129);
            *buf = 138412546;
            *&buf[4] = v128;
            *&buf[12] = 2114;
            *&buf[14] = v131;
            _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Receipt format invalid", buf, 0x16u);
          }

          v103 = ASDErrorWithTitleAndMessage();
          v105 = 0;
          goto LABEL_122;
        }

        v105 = 0;
LABEL_121:
        v103 = 0;
LABEL_122:
        v116 = [v104 objectForKeyedSubscript:@"revoked"];

        if (v116 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          *(a1 + 43) = [v116 BOOLValue];
        }

        goto LABEL_126;
      }

      v115 = v114;
    }

    v105 = v115;
    goto LABEL_121;
  }

  v103 = v102;
  v104 = 0;
  v105 = 0;
LABEL_127:
  if (a3)
  {
    v117 = v103;
    *a3 = v103;
  }

LABEL_130:

  return v105;
}

void sub_1003311F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

char *sub_100331250(char *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained((WeakRetained + 66));
    v1 = vars8;
  }

  return WeakRetained;
}

id sub_100331288(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:v3];
  v5 = [v4 ams_activeiTunesAccount];

  if (v5)
  {
    goto LABEL_6;
  }

  if (AMSAccountMediaTypeAppStoreSandbox == v3)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 50);
  }

LABEL_6:

  return v5;
}

void sub_100331330(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 74);
    }

    else
    {
      v8 = 0;
    }

    v12 = 0;
    v9 = v8;
    v6 = sub_10032FD34(v7, v9, &v12);
    v5 = v12;
  }

  v10 = *(a1 + 32);
  v11 = ASDErrorWithSafeUserInfo();
  sub_100331400(v10, v6, v11, *(a1 + 40));
}

void sub_100331400(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (v7)
    {
      v10 = *(a1 + 82);
      if (v10)
      {
        v11 = *(a1 + 90);
        v21 = v8;
        v12 = v11;
        v13 = v10;
        v14 = &v21;
        sub_1003B7328(WriteReceipt, v7, v13, v12, &v21);
      }

      else
      {
        v15 = *(a1 + 74);
        v16 = *(a1 + 90);
        v20 = v8;
        v12 = v16;
        v13 = v15;
        v14 = &v20;
        sub_1003B6F84(WriteReceipt, v7, v13, v12, &v20);
      }

      v17 = *v14;

      v8 = v17;
    }

    if (v8)
    {
      v9[2](v9, v8);
    }

    else
    {
      v18 = [ASFReceipt receiptWithData:v7];
      v19 = *(a1 + 146);
      *(a1 + 146) = v18;

      v9[2](v9, 0);
    }
  }
}

uint64_t sub_100331584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10033159C(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = ASDErrorWithSafeUserInfo();

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

char *sub_100331E78(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = [v4 logKey];
    v8.receiver = a1;
    v8.super_class = PreparePurchaseTask;
    a1 = objc_msgSendSuper2(&v8, "initWithLogKey:", v6);

    if (a1)
    {
      objc_storeStrong((a1 + 42), a2);
    }
  }

  return a1;
}

void sub_100331F10(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 42);
    v4 = a2;
    v7 = [v3 account];
    v5 = [v7 ams_DSID];
    v6 = sub_1003BF384(StoreItemResponse, v4, v5);

    [*(a1 + 42) setItemResponse:v6];
  }
}

void sub_1003337AC(uint64_t a1)
{
  v2 = ASDErrorWithDescription();
  sub_100331F10(*(a1 + 32), v2);
  (*(*(a1 + 40) + 16))();
}

void sub_10033382C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 42);
    v4 = a2;
    v5 = [v3 requestPresenter];
    [_TtC9appstored30MarketplaceKitLocalizedStrings showDialogForAlreadyInstalledApp:v4 presenter:v5];

    v6 = ASDErrorWithDescription();
    sub_100331F10(a1, v6);
  }
}

void sub_1003338E8(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  v3 = sub_1001C09E4(v9);
  v4 = v3;
  if (v3)
  {
    v5 = sub_10023FAC0(v3);
    [*(a1 + 32) addObject:v5];
  }

  if (*(a1 + 40) == 1)
  {
    objc_opt_class();
    v6 = sub_1001C09E4(v9);
    v7 = v6;
    if (v6)
    {
      v8 = sub_1002AFC20(v6);
      [*(a1 + 32) addObject:v8];
    }
  }
}

id *sub_1003339E4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = DemotedApplication;
    a1 = objc_msgSendSuper2(&v11, "init");
    if (a1)
    {
      a1[6] = [v3 applicationDSID];
      v4 = [v3 bundleIdentifier];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
      {
        objc_storeStrong(a1 + 1, v4);
      }

      a1[7] = [v3 applicationDownloaderDSID];
      v5 = [v3 iTunesMetadata];
      a1[2] = [v5 versionIdentifier];

      a1[10] = [v3 placeholderFailureReason];
      a1[8] = [v3 applicationFamilyID];
      v6 = [v3 iTunesMetadata];
      a1[3] = [v6 storeItemIdentifier];

      a1[9] = [v3 applicationDSID];
      v7 = [v3 iTunesMetadata];
      a1[4] = [v7 storeFront];

      v8 = [v3 deviceIdentifierForVendor];
      v9 = [v8 UUIDString];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
      {
        objc_storeStrong(a1 + 5, v9);
      }
    }
  }

  return a1;
}

id *sub_100333B80(uint64_t a1)
{
  if (a1)
  {
    v1 = [[LSApplicationRecord alloc] initWithBundleIdentifier:*(a1 + 8) allowPlaceholder:1 error:0];
    v2 = sub_10040CF04(v1);
    if (v2)
    {
      if ([v1 installType] == 9)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      v4 = sub_1003B6560();
      sub_1003B6764(v4, 4);
      sub_1003B6820(v4, 4);
      sub_1003B66A8(v4, 60);
      v5 = sub_10039826C([RestoreAppInstall alloc], v2, v3, -1, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id *sub_100333DA8(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PromiseObserver;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [v8 copy];
      v13 = a1[2];
      a1[2] = v12;

      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_100333E6C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 24, 1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100333F24;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v4;
    [Property scheduleBlock:v6];
  }
}

uint64_t sub_100333F24(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v3 = Property[2];

  return v3();
}

void sub_100333F74(void *a1)
{
  if (a1)
  {
    v2 = ASDErrorWithSafeUserInfo();
    Property = objc_getProperty(a1, v3, 24, 1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100334038;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v2;
    v5 = v2;
    [Property scheduleBlock:v6];
  }
}

uint64_t sub_100334038(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v3 = Property[2];

  return v3();
}

id sub_1003340D8()
{
  objc_opt_self();
  if (qword_1005AAC58 != -1)
  {
    dispatch_once(&qword_1005AAC58, &stru_100523920);
  }

  v0 = qword_1005AAC60;

  return v0;
}

void sub_100334130(id a1)
{
  v1 = objc_alloc_init(ClipURLSession);
  v2 = qword_1005AAC60;
  qword_1005AAC60 = v1;
}

id *sub_100334254(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = [a2 assetURL];
    v10 = [NSMutableURLRequest requestWithURL:v9];

    [v10 setCachePolicy:1];
    v11 = [AMSUserAgent userAgentForProcessInfo:*(a1 + 8)];
    [v10 setHTTPUserAgent:v11];

    v12 = sub_1001D5DC8(1);
    [v10 setValue:v12 forHTTPHeaderField:@"Apple-Download-Type"];

    v13 = sub_1002DCEF8([ClipURLSessionTask alloc], v10, *(a1 + 24), v7);
    if (v13)
    {
      objc_setProperty_atomic(v13, v14, v8, 48);
    }

    os_unfair_lock_lock_with_options();
    v15 = *(a1 + 32);
    v16 = sub_1002DD0B0(v13);
    [v15 setObject:v13 forKeyedSubscript:v16];

    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1003349AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003349CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003349E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  [v4 writeBytes:a2 length:a4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

id sub_100335C9C(id a1, ASDApplicationMetadata *a2)
{
  v2 = [(ASDApplicationMetadata *)a2 itemID];
  v3 = [v2 stringValue];

  return v3;
}

void sub_100335CEC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [a2 responseDataItems];
    v5 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v28 = v4;
      v7 = @"id";
      v8 = *v35;
      v29 = AMSMediaArtworkFormatPNG;
      v30 = AMSMediaArtworkCropStyleBoundedBox;
      do
      {
        v9 = 0;
        v31 = v6;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          v11 = [v10 objectForKeyedSubscript:v7];
          if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v12 = v8;
            v13 = v7;
            v14 = [AMSMediaArtwork alloc];
            v15 = [v10 objectForKeyedSubscript:@"attributes"];
            v16 = [v15 objectForKeyedSubscript:@"platformAttributes"];
            v17 = [v16 objectForKeyedSubscript:@"ios"];
            v18 = [v17 objectForKeyedSubscript:@"artwork"];
            v19 = [v14 initWithDictionary:v18];

            v20 = [v19 URLWithSize:v30 cropStyle:v29 format:128.0, 128.0];
            v21 = *(a1 + 32);
            v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 longLongValue]);
            [v21 setObject:v20 forKeyedSubscript:v22];

            v23 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 40);
              if (v24)
              {
                v24 = *(v24 + 64);
              }

              *buf = 138412802;
              v39 = v24;
              v40 = 2114;
              v41 = v11;
              v42 = 2114;
              v43 = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Found artwork for itemID: %{public}@ artworkURL: %{public}@", buf, 0x20u);
            }

            v7 = v13;
            v8 = v12;
            v6 = v31;
          }

          else
          {
            v19 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v25 = *(a1 + 40);
              if (v25)
              {
                v25 = *(v25 + 64);
              }

              *buf = 138412546;
              v39 = v25;
              v40 = 2114;
              v41 = v11;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%@] Failed to find artwork for itemID: %{public}@", buf, 0x16u);
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v26 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
        v6 = v26;
      }

      while (v26);
      v4 = v28;
    }
  }

  else
  {
    obj = ASDLogHandleForCategory();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      if (v27)
      {
        v27 = *(v27 + 64);
      }

      *buf = 138412546;
      v39 = v27;
      v40 = 2114;
      v41 = v4;
      _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "[%@] Placeholder artwork will be missing, media task failed: %{public}@", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_100336114()
{
  objc_opt_self();
  v0 = +[NSMutableSet set];
  v1 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = sub_100336278();
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) bundleIdentifier];
        [v0 addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(v1);
  v8 = [v0 allObjects];

  return v8;
}

id sub_100336278()
{
  objc_opt_self();
  v0 = [LSApplicationRecord enumeratorWithOptions:0];
  [v0 setFilter:&stru_1005239D0];

  return v0;
}

BOOL sub_1003362D0(id a1, LSApplicationRecord *a2)
{
  v2 = a2;
  v3 = [(LSApplicationRecord *)v2 appClipMetadata];

  if (v3)
  {
    v4 = [(LSApplicationRecord *)v2 bundleIdentifier];
    if (v4)
    {
      v5 = [(LSApplicationRecord *)v2 bundleIdentifier];
      v6 = [v5 length] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100336360()
{
  objc_opt_self();
  v0 = [LSApplicationRecord enumeratorWithOptions:0];
  [v0 setFilter:&stru_1005239F0];

  return v0;
}

BOOL sub_1003363B8(id a1, LSApplicationRecord *a2)
{
  v2 = a2;
  if ([(LSApplicationRecord *)v2 isAppStoreVendable])
  {
    v3 = [(LSApplicationRecord *)v2 bundleIdentifier];
    if (v3)
    {
      v4 = [(LSApplicationRecord *)v2 bundleIdentifier];
      v5 = [v4 length] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10033643C()
{
  objc_opt_self();
  v0 = [LSApplicationRecord enumeratorWithOptions:0];
  [v0 setFilter:&stru_100523A10];

  return v0;
}

BOOL sub_100336494(id a1, LSApplicationRecord *a2)
{
  v2 = a2;
  v3 = [(LSApplicationRecord *)v2 iTunesMetadata];
  v4 = [v3 storeItemIdentifier];

  if (v4)
  {
    v5 = [(LSApplicationRecord *)v2 bundleIdentifier];
    if (v5)
    {
      v6 = [(LSApplicationRecord *)v2 bundleIdentifier];
      LOBYTE(v4) = [v6 length] != 0;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

id sub_100336524()
{
  objc_opt_self();
  if (qword_1005AAC70 != -1)
  {
    dispatch_once(&qword_1005AAC70, &stru_100523A30);
  }

  v0 = qword_1005AAC68;

  return v0;
}

void sub_10033657C(id a1)
{
  v1 = objc_alloc_init(PushService);
  v2 = qword_1005AAC68;
  qword_1005AAC68 = v1;
}

id *sub_1003367A0(id *a1)
{
  if (a1)
  {
    a1 = a1[9];
    v1 = vars8;
  }

  return a1;
}

void sub_1003367D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100336880;
    block[3] = &unk_10051F4B0;
    v10 = a3;
    block[4] = a1;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_100336880(void *a1)
{
  v2 = [NSNumber numberWithUnsignedInteger:a1[6]];
  value = 0;
  if (NSMapMember(*(a1[4] + 24), v2, 0, &value))
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v8 = objc_opt_class();
      v9 = a1[6];
      *buf = 138543618;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      v10 = v8;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "A consumer of type: %{public}@ was already registered for action type: %ld", buf, 0x16u);
    }
  }

  [*(a1[4] + 24) setObject:a1[5] forKey:v2];
  if ([*(a1[4] + 48) countForObject:v2])
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v7 = sub_1003369F8(v5, v6, 0);
    [v4 pushService:v5 recoverFromDroppedMessagesOfActionType:v6 completionHandler:v7];
  }
}

void *sub_1003369F8(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100337DAC;
    v5[3] = &unk_100523A80;
    v5[4] = a1;
    v5[5] = a2;
    v6 = a3;
    a1 = objc_retainBlock(v5);
    v3 = vars8;
  }

  return a1;
}

void sub_100336A7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100336B44;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v10 = v6;
    v11 = v5;
    dispatch_async(v8, block);
  }
}

void sub_100336B44(uint64_t a1)
{
  v2 = +[BagService appstoredService];
  v3 = [v2 autoupdatingAMSBag];

  v4 = v3;
  objc_opt_self();
  v5 = objc_alloc_init(AMSPushConfiguration);
  [v5 setEngagementPushTopic:@"com.apple.AppStore"];
  v6 = [NSSet setWithObjects:AMSPushActionTypeGenericNotification, AMSPushActionTypeRichNotification, AMSPushActionTypeBadging, 0];
  [v5 setEnabledActionTypes:v6];

  [v5 setUserNotificationExtensionId:@"asd-notification-default"];
  v7 = [[AMSPushHandler alloc] initWithConfiguration:v5 bag:v4];

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  [*(*(a1 + 32) + 56) setDelegate:?];
  objc_initWeak(&location, *(a1 + 32));
  v10 = +[BagService appstoredService];
  v21 = @"push-notifications/environment";
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100336E88;
  v18[3] = &unk_10051C970;
  objc_copyWeak(&v19, &location);
  v12 = [v10 addChangeObserverLimitedToKeys:v11 observer:v18];
  v13 = *(a1 + 32);
  v14 = *(v13 + 8);
  *(v13 + 8) = v12;

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:*(a1 + 32) selector:"_handleAccountDidChangeNotification:" name:@"AccountStorePrimaryAccountDidChange" object:0];
  [v15 addObserver:*(a1 + 32) selector:"handleSandboxAccountDidChangeNotification:" name:@"AccountStoreSandboxAccountDidChange" object:0];
  sub_100336F8C(*(a1 + 32), *(a1 + 40));
  if (!*(a1 + 48))
  {
    sub_100337028(*(a1 + 32), 0);
    v16 = +[BagService appstoredService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100337244;
    v17[3] = &unk_10051DFC8;
    v17[4] = *(a1 + 32);
    [v16 recentBagNoTimeoutWithCompletionHandler:v17];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_100336E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100336E88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100336EE4(WeakRetained, v3);
}

void sub_100336EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100338224;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100336F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && !*(a1 + 72))
  {
    v7 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [PushServiceTestFlightConsumer alloc];
      if (v4)
      {
        v4 = sub_100340B40(&v4->super.isa, *(a1 + 32), 0);
      }
    }

    v5 = *(a1 + 72);
    *(a1 + 72) = v4;

    v6 = *(a1 + 72);
    v3 = v7;
    if (v6)
    {
      objc_storeWeak((v6 + 64), a1);
      v3 = v7;
    }
  }
}

void sub_100337028(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 stringForKey:@"push-notifications/environment"];
    if (v3)
    {
      v4 = v3;
      if (([APSConnection isValidEnvironment:v3]& 1) == 0)
      {
        v5 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = v4;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Environment (%{public}@) is invalid, assuming production", &v14, 0xCu);
        }

        v6 = APSEnvironmentProduction;
        v4 = v6;
      }
    }

    else
    {
      v4 = APSEnvironmentProduction;
    }

    if (([*(a1 + 40) isEqualToString:v4] & 1) == 0)
    {
      if (*(a1 + 40))
      {
        v7 = [[NSCountedSet alloc] initWithCapacity:2];
        v8 = *(a1 + 48);
        *(a1 + 48) = v7;

        sub_1003D6A74(AppDefaultsManager, 0);
      }

      objc_storeStrong((a1 + 40), v4);
      if (*(a1 + 16))
      {
        v9 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shutting down existing connection before starting up in new environment: %{public}@", &v14, 0xCu);
        }

        v10 = *(a1 + 16);
        if (v10)
        {
          v11 = v10[1];
          if (v11)
          {
            [v11 shutdown];
            v10 = *(a1 + 16);
          }
        }

        *(a1 + 16) = 0;
      }

      v12 = sub_1001D2F90([PushConnection alloc], v4, a1, *(a1 + 32));
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;
    }
  }
}

void sub_10033724C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003372C8;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003372C8(uint64_t a1)
{
  sub_100336F8C(*(a1 + 32), 0);
  v2 = sub_100340CF0(*(*(a1 + 32) + 72));
  sub_1001D33C8(*(*(a1 + 32) + 16), v2);
  v3 = sub_100340CF0(*(*(a1 + 32) + 72));
  v4 = *(*(a1 + 32) + 16);
  if (v3)
  {

    sub_1001D3AAC(v4, 2);
  }

  else
  {

    sub_1001D3CEC(v4, 2);
  }
}

void sub_10033742C(uint64_t a1)
{
  v2 = sub_10020BE10();
  sub_10020C168(v2, *(a1 + 32));
}

void sub_100337854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_1002E9FC4([PushMessage alloc], v5);
    v8 = sub_1002EA090(v7);
    v9 = ASDLogHandleForCategory();
    v10 = v9;
    if (v8 == -1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v30 = 138543362;
        *&v30[4] = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received invalid message: %{public}@", v30, 0xCu);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v30 = 138543618;
      *&v30[4] = v6;
      *&v30[12] = 2114;
      *&v30[14] = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Connection: %{public}@ received incoming message: %{public}@", v30, 0x16u);
    }

    v11 = *(a1 + 56);
    v12 = sub_1002DC370(v7);
    LODWORD(v11) = [v11 shouldHandleNotification:v12];

    if (v11)
    {
      v13 = *(a1 + 56);
      v14 = sub_1002DC370(v7);
      [v13 handleNotification:v14];

      sub_1001D4048(PushConnection, v5, 4);
LABEL_25:

      goto LABEL_26;
    }

    v10 = sub_1002EA054(v7);
    v15 = +[ACAccountStore ams_sharedAccountStore];
    v16 = [v15 ams_activeiTunesAccount];
    v17 = [v16 ams_DSID];

    if (v10)
    {
      if ([v17 isEqualToNumber:v10])
      {
LABEL_15:
        v22 = sub_1002EA090(v7);
        v23 = [NSNumber numberWithUnsignedInteger:v22];
        v24 = [*(a1 + 48) countForObject:v23];
        [*(a1 + 48) addObject:v23];
        if (!v24)
        {
          v25 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *v30 = 134217984;
            *&v30[4] = v22;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Adding pending push action type %ld", v30, 0xCu);
          }

          sub_100337FE4(a1);
        }

        v26 = [*(a1 + 24) objectForKey:{v23, *v30, *&v30[16], v31}];
        if (!v26)
        {
          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *v30 = 134217984;
            *&v30[4] = v22;
            _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Consumer missing for action type %ld", v30, 0xCu);
          }
        }

        v28 = sub_1002EA0AC(v7);
        v29 = sub_1003369F8(a1, v22, v28 != 0);
        [v26 pushService:a1 didReceiveMessage:v7 completionHandler:v29];

LABEL_24:
        goto LABEL_25;
      }

      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 138543875;
        *&v30[4] = v6;
        *&v30[12] = 2113;
        *&v30[14] = v10;
        *&v30[22] = 2113;
        v31 = v17;
        v19 = "Connection: %{public}@ received push for %{private}@ but active is: %{private}@";
        v20 = v18;
        v21 = 32;
LABEL_28:
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v19, v30, v21);
      }
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v30 = 138543619;
        *&v30[4] = v6;
        *&v30[12] = 2113;
        *&v30[14] = v17;
        v19 = "Connection: %{public}@ received push with no DSID, active is: %{private}@";
        v20 = v18;
        v21 = 22;
        goto LABEL_28;
      }
    }

    goto LABEL_15;
  }

LABEL_26:
}

void sub_100337DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100337E58;
  v8[3] = &unk_100523A58;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v8[4] = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_100337E58(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 countForObject:v3];

  if (v4)
  {
    if (*(a1 + 40))
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        v10 = 138543362;
        v11 = v9;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to process push message: %{public}@", &v10, 0xCu);
      }
    }

    else
    {
      sub_1001D44F8(PushConnection, 1, *(a1 + 48), *(a1 + 56), 4);
      v6 = *(*(a1 + 32) + 48);
      v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
      [v6 removeObject:v7];

      if (v4 == 1)
      {
        v8 = *(a1 + 32);

        sub_100337FE4(v8);
      }
    }
  }
}

void sub_100337FE4(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 48) allObjects];
    sub_1003D6A74(AppDefaultsManager, v1);
  }
}

id sub_100338048(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003380FC;
  v8[3] = &unk_100523AA8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 thenWithBlock:v8];

  return v6;
}

id sub_1003380FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeAccountMatchStatus:1];
  v4 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
  v10 = v4;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [v3 generateEventFieldsForKeys:v5];

  v7 = [v6 mutableCopy];
  [v7 setObject:*(a1 + 32) forKeyedSubscript:@"clientId"];
  v8 = [AMSPromise promiseWithResult:v7];

  return v8;
}

void sub_1003382C8(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(_TtC9appstored6LogKey);
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:@"AccountDidChangePreviousActiveDSID"];

    if (v4)
    {
      sub_1001D346C(*(*(a1 + 32) + 16), v4);
    }

    v5 = +[ActiveAccountObserver activeAccount];
    if (v5)
    {
      sub_1001D3448(*(*(a1 + 32) + 16), v2, 0);
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Nothing to register due to no active account", buf, 2u);
      }
    }
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&_mh_execute_header, &v2->super, OS_LOG_TYPE_DEBUG, "PushConnection found to be nil when trying to add/remove push notification types", v7, 2u);
    }
  }
}

void sub_1003384B4(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(_TtC9appstored6LogKey);
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:@"AccountDidChangePreviousActiveDSID"];

    if (v4)
    {
      sub_1001D3A20(*(*(a1 + 32) + 16), v4);
    }

    v5 = +[ActiveAccountObserver activeSandboxAccount];
    if (v5)
    {
      sub_1001D3448(*(*(a1 + 32) + 16), v2, 1);
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Nothing to register due to no active sandbox account", buf, 2u);
      }
    }
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&_mh_execute_header, &v2->super, OS_LOG_TYPE_DEBUG, "PushConnection found to be nil when trying to add/remove push notification types for sandbox account.", v7, 2u);
    }
  }
}

void *sub_100338694(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ODRApplicationImportTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

void sub_1003387A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_100339148;
    v76 = sub_100339158;
    v77 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v2 = sub_100208FBC();
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100339160;
    v59[3] = &unk_100523AF8;
    v59[4] = v1;
    v59[5] = &v60;
    v59[6] = &v72;
    [v2 readUsingSession:v59];

    if (*(v61 + 24) == 1)
    {
      v3 = sub_100253964([ODRApplicationRepairTask alloc], *(v1 + 40));
      v4 = (v73 + 5);
      obj = v73[5];
      v5 = [v1 runSubTask:v3 returningError:&obj];
      objc_storeStrong(v4, obj);
      if ((v5 & 1) == 0)
      {
        v6 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v44 = *(v1 + 40);
          v45 = v73[5];
          *v86 = 138543618;
          *&v86[4] = v44;
          *&v86[12] = 2114;
          *&v86[14] = v45;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to repair application %{public}@ error: %{public}@", v86, 0x16u);
        }

        v7 = v73[5];
        v73[5] = 0;
      }
    }

    v8 = *(v1 + 40);
    v9 = (v73 + 5);
    v57 = v73[5];
    v10 = sub_10039A79C(v8, &v57);
    objc_storeStrong(v9, v57);
    if (!v10)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v40 = *(v1 + 40);
        v41 = v73[5];
        *v86 = 138543618;
        *&v86[4] = v40;
        *&v86[12] = 2114;
        *&v86[14] = v41;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to find tag manifest for %{public}@ error: %{public}@", v86, 0x16u);
      }

      v20 = ASDErrorWithUnderlyingError();
      [v1 completeWithError:v20];

      goto LABEL_41;
    }

    if (*(v1 + 48) || (sub_100208FBC(), v11 = objc_claimAutoreleasedReturnValue(), v56[0] = _NSConcreteStackBlock, v56[1] = 3221225472, v56[2] = sub_1003391DC, v56[3] = &unk_100523AF8, v56[4] = v1, v56[5] = &v64, v56[6] = &v72, [v11 readUsingSession:v56], v11, (v65[3] & 1) != 0))
    {
LABEL_25:
      v24 = sub_100208FBC();
      *v86 = _NSConcreteStackBlock;
      *&v86[8] = 3221225472;
      *&v86[16] = sub_100339258;
      v87 = &unk_100523B20;
      v88 = v1;
      v90 = &v68;
      v89 = v10;
      v91 = &v64;
      v92 = &v72;
      [v24 modifyUsingTransaction:v86];

      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_100339148;
      v53 = sub_100339158;
      v54 = 0;
      v25 = sub_100208FBC();
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1003394C0;
      v48[3] = &unk_10051DC00;
      v48[4] = v1;
      v48[5] = &v49;
      [v25 readUsingSession:v48];

      v26 = sub_1003DC0F4();
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 32);
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = [v29 stringByAppendingPathComponent:v50[5]];

      if (v30 && v50[5])
      {
        v31 = [NSURL fileURLWithPath:v30];
        v32 = [SAPathInfo pathInfoWithURL:v31];

        v33 = +[SAPathManager defaultManager];
        v85 = v32;
        v34 = [NSArray arrayWithObjects:&v85 count:1];
        v35 = sub_10039A6A0(*(v1 + 40));
        *v82 = _NSConcreteStackBlock;
        *&v82[8] = 3221225472;
        *&v82[16] = sub_100339558;
        v83 = &unk_10051B5C0;
        v84 = v1;
        [v33 registerPaths:v34 forBundleID:v35 completionHandler:v82];
      }

      else
      {
        v32 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v38 = *(v1 + 40);
          v39 = v50[5];
          *v82 = 138543874;
          *&v82[4] = v38;
          *&v82[12] = 2114;
          *&v82[14] = v30;
          *&v82[22] = 2114;
          v83 = v39;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error attributing space to application %{public}@: No path available: %{public}@ %{public}@", v82, 0x20u);
        }
      }

      if (v69[3])
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(v1 + 40);
          *buf = 138543362;
          v79 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successfully imported manifest for %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v42 = *(v1 + 40);
          v43 = v73[5];
          *buf = 138543618;
          v79 = v42;
          v80 = 2114;
          v81 = v43;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to import manifests for %{public}@ error: %{public}@", buf, 0x16u);
        }
      }

      if (*(v69 + 24) == 1)
      {
        [v1 completeWithSuccess];
      }

      else
      {
        [v1 completeWithError:v73[5]];
      }

      _Block_object_dispose(&v49, 8);
LABEL_41:

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);

      return;
    }

    if (sub_10039B560(*(v1 + 40)))
    {
      v12 = sub_10024D554([ODRManifestRequestTask alloc], *(v1 + 40));
      v13 = (v73 + 5);
      v55 = v73[5];
      v14 = [v1 runSubTask:v12 returningError:&v55];
      objc_storeStrong(v13, v55);
      if (v14)
      {
        if (v12)
        {
          Property = objc_getProperty(v12, v15, 48, 1);
        }

        else
        {
          Property = 0;
        }

        v17 = Property;
        v18 = *(v1 + 48);
        *(v1 + 48) = v17;
LABEL_23:

        goto LABEL_24;
      }

      if (v73[5])
      {
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v46 = *(v1 + 40);
          v47 = v73[5];
          *v86 = 138543618;
          *&v86[4] = v46;
          *&v86[12] = 2114;
          *&v86[14] = v47;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching manifest for %{public}@: %{public}@", v86, 0x16u);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v1 + 40);
      v22 = (v73 + 5);
      v55 = v73[5];
      v23 = sub_10039A4BC(v21, &v55);
      objc_storeStrong(v22, v55);
      v12 = *(v1 + 48);
      *(v1 + 48) = v23;
    }

LABEL_24:

    goto LABEL_25;
  }
}

void sub_1003390C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100339148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100339160(void *a1, void *a2)
{
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_1001C3330(a2, *(a1[4] + 40));
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void sub_1003391DC(void *a1, void *a2)
{
  v4 = *(a1[4] + 40);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_1001C4714(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

uint64_t sub_100339258(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 48))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 40);
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ingesting asset and tag manifest for %{public}@", &v18, 0xCu);
    }

    v6 = sub_10021C310(v3, *(*(a1 + 32) + 48), *(a1 + 40), *(*(a1 + 32) + 40), 1);
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = v6;
    goto LABEL_10;
  }

  v7 = *(*(*(a1 + 56) + 8) + 24);
  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 40);
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating tag manifest for %{public}@", &v18, 0xCu);
    }

    v6 = sub_10021BEFC(v3, *(a1 + 40), *(*(a1 + 32) + 40));
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = *(*(a1 + 32) + 40);
    v17 = *(*(*(a1 + 64) + 8) + 40);
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v17;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find asset manifest for %{public}@ error: %{public}@", &v18, 0x16u);
  }

  v13 = ASDErrorWithUnderlyingError();
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_10:
  v11 = *(*(*(a1 + 48) + 8) + 24);

  return v11;
}

void sub_1003394C0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  v8 = sub_10039A6A0(v3);
  v5 = sub_1001C4A38(v4, v8);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100339558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error attributing space to application %{public}@: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_10033968C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [[NSMutableSet alloc] initWithObjects:{v3, 0}];
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;
    }

    v3 = v7;
  }
}

void sub_100339710(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    v7 = v3;
    if (v4)
    {
      [v4 addObject:v3];
    }

    else
    {
      v5 = [[NSMutableSet alloc] initWithObjects:{v3, 0}];
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;
    }

    v3 = v7;
  }
}

void sub_100339794(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v12 = v3;
    if (v4)
    {
      if (v3)
      {
        v5 = [v3[1] copy];
      }

      else
      {
        v5 = 0;
      }

      [v4 unionSet:v5];
    }

    else
    {
      if (v3)
      {
        v5 = [v3[1] copy];
      }

      else
      {
        v5 = 0;
      }

      v6 = [v5 mutableCopy];
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      if (v12)
      {
        v9 = [v12[2] copy];
      }

      else
      {
        v9 = 0;
      }

      [v8 unionSet:v9];
    }

    else
    {
      if (v12)
      {
        v9 = [v12[2] copy];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 mutableCopy];
      v11 = *(a1 + 16);
      *(a1 + 16) = v10;
    }

    v3 = v12;
  }
}

void *sub_100339970(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = StoreSinf;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

id sub_1003399E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [*(a1 + 8) objectForKey:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v3 = [[NSData alloc] initWithBase64EncodedString:v2 options:1];
    }

    v4 = v3;
LABEL_8:

    goto LABEL_9;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

void *sub_10033A47C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = [v4 protectionSpace];
      objc_opt_self();
      v7 = +[NSMutableString string];
      v8 = [v6 host];
      v9 = [v6 port];
      if (v9 <= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = [NSString stringWithFormat:@"%@:%ld", v8, v9];
      }

      v11 = v10;
      if ([v6 isProxy])
      {
        v12 = ASDLocalizedString();
        v13 = [v6 protocol];
        [v7 appendFormat:v12, v13, v11];
      }

      else
      {
        v12 = ASDLocalizedString();
        [v7 appendFormat:v12, v11];
      }

      [v6 receivesCredentialSecurely];
      v14 = ASDLocalizedString();
      [v7 appendFormat:@" %@", v14];

      v15 = a1[2];
      a1[2] = v7;

      v16 = v6;
      objc_opt_self();
      [v16 isProxy];

      v17 = ASDLocalizedString();
      v18 = a1[3];
      a1[3] = v17;
    }
  }

  return a1;
}

id sub_10033A69C(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 8) proposedCredential];
    v2 = [v1 user];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10033AE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033AE20(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = a1;
  v4 = *(a1 + 32);
  v40 = v3;
  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = sub_10033B70C;
    v87 = sub_10033B71C;
    v88 = objc_opt_new();
    v68 = _NSConcreteStackBlock;
    v69 = 3221225472;
    v70 = sub_10033BB38;
    v71 = &unk_10051D518;
    v72 = buf;
    sub_10022C3C4(v40, @"SELECT ZMANIFEST.Z_PK, ZMANIFEST.ZAPPLICATIONBUNDLEID FROM ZMANIFEST LEFT JOIN ZASSETPACK ON ZASSETPACK.ZMANIFEST = ZMANIFEST.Z_PK WHERE ZASSETPACK.ZLOCALURLSTRING IS NOT NULL", &v68);
    obj = [*(*&buf[8] + 40) copy];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    obj = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v45)
  {
    v44 = *v49;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v48 + 1) + 8 * i);
        v7 = sub_100399B78(ODRApplication, v6);
        v47 = 0;
        v46 = sub_10039A79C(v7, &v47);
        v8 = v47;
        if (v8)
        {
          v9 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v6;
            *&buf[12] = 2114;
            *&buf[14] = v8;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to copy bundle tag manifest for %{public}@, error: %{public}@", buf, 0x16u);
          }

          goto LABEL_26;
        }

        v10 = [obj objectForKeyedSubscript:v6];
        v12 = *(v41 + 32);
        v11 = *(v41 + 40);
        v43 = v10;
        v13 = v6;
        v14 = v40;
        v15 = v11;
        v16 = v15;
        if (!v12)
        {

LABEL_19:
          v38 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Failed to import any asset packs even though some were reported to be local", buf, 2u);
          }

          v9 = v43;
          goto LABEL_26;
        }

        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        v68 = @"ZBUNDLEID";
        v69 = @"ZCHUNKSIZE";
        *buf = @"bundleKey";
        *&buf[8] = @"chunkSize";
        v70 = @"ZDOWNLOADPRIORITY";
        v71 = @"ZDOWNLOADSIZE";
        *&buf[16] = @"downloadPriority";
        v86 = @"fileSize";
        v72 = @"ZEFFECTIVEALWAYSPRESERVE";
        v73 = @"ZEFFECTIVEPRESERVATIONPRIORITY";
        v87 = @"effective_always_preserve";
        v88 = @"effective_preservation_priority";
        v74 = @"ZHASHES";
        v75 = @"ZISSTREAMABLE";
        v89 = @"hashes";
        v90 = @"isStreamable";
        v76 = @"ZLASTUSEDDATE";
        v77 = @"ZLOCALURLSTRING";
        v91 = @"last_used_date";
        v92 = @"local_url";
        v78 = @"ZMD5";
        v79 = @"ZPINCOUNT";
        v93 = @"md5";
        v94 = @"pin_count";
        v80 = @"ZPURGEABLE";
        v81 = @"ZPURGEREASON";
        v95 = @"purgeable";
        v96 = @"purge_reason";
        v82 = @"ZSHA";
        v83 = @"ZSIZE";
        v97 = @"sha";
        v98 = @"uncompressedSize";
        v84 = @"ZSOURCEURLSTRING";
        v99 = @"URL";
        v17 = [NSDictionary dictionaryWithObjects:buf forKeys:&v68 count:17];
        v57 = _NSConcreteStackBlock;
        v58 = 3221225472;
        v59 = sub_10033BC5C;
        v60 = &unk_100523C38;
        v9 = v43;
        v61 = v9;
        v18 = v17;
        v62 = v18;
        v63 = v12;
        v19 = v14;
        v64 = v19;
        v20 = v13;
        v65 = v20;
        v21 = v16;
        v66 = v21;
        v67 = &v52;
        sub_10022C3C4(v19, @"SELECT * FROM ZASSETPACK WHERE ZMANIFEST = ? AND ZLOCALURLSTRING IS NOT NULL", &v57);
        v22 = *(v53 + 24);

        _Block_object_dispose(&v52, 8);
        if ((v22 & 1) == 0)
        {
          goto LABEL_19;
        }

        v24 = *(v41 + 32);
        v23 = *(v41 + 40);
        v25 = v20;
        v26 = v19;
        v27 = v23;
        v28 = v27;
        if (v24)
        {
          v57 = @"ZADAMID";
          v58 = @"ZCACHINGALLOWED";
          v68 = @"itemId";
          v69 = @"local-cache-allowed";
          v59 = @"ZLASTMODIFICATIONDATE";
          v60 = @"ZSTORAGEID";
          v70 = @"last_modification_date";
          v71 = @"storage_id";
          v61 = @"ZTHINNINGVARIANT";
          v72 = @"thinningVariant";
          v29 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v57 count:5];
          v52 = 0;
          v53 = &v52;
          v54 = 0x2020000000;
          v55 = 0;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10033C470;
          v86 = &unk_100523C88;
          v30 = v25;
          v87 = v30;
          v31 = v29;
          v88 = v31;
          v89 = v24;
          v91 = &v52;
          v32 = v28;
          v90 = v32;
          sub_10022C3C4(v26, @"SELECT * FROM ZMANIFEST WHERE ZAPPLICATIONBUNDLEID = ?", buf);
          v33 = *(v53 + 24);

          _Block_object_dispose(&v52, 8);
          if (v33)
          {
            v35 = *(v41 + 32);
            v34 = *(v41 + 40);
            v36 = v46;
            v37 = v7;
            if (v35)
            {
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10033BC4C;
              v86 = &unk_10051F2A8;
              v87 = v36;
              v88 = v37;
              [v34 modifyUsingTransaction:buf];
            }

            goto LABEL_26;
          }
        }

        else
        {
        }

        v39 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "Failed to import manifest", buf, 2u);
        }

LABEL_26:
      }

      v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v45);
  }
}

uint64_t sub_10033B70C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10033B724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C314C(v3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = sub_1001C4A38(v3, v9);
        if (v10)
        {
          [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_10033B860(id a1, NSString *a2, NSString *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1003DC0F4();
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 stringByAppendingPathComponent:v6];

  if (v11)
  {
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [SAPathInfo pathInfoWithURL:v12];

    v14 = +[SAPathManager defaultManager];
    v20 = v13;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10033BA64;
    v16[3] = &unk_10051B5C0;
    v17 = v5;
    [v14 registerPaths:v15 forBundleID:v17 completionHandler:v16];
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error attributing space to application %{public}@, no application base directory", buf, 0xCu);
    }
  }
}

void sub_10033BA64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error attributing space to application %{public}@: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_10033BB38(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10033BBB0;
  v2[3] = &unk_10051D4F0;
  v2[4] = *(a1 + 32);
  sub_100214814(a2, v2);
}

void sub_10033BBB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_1003B7B08(v3, @"ZAPPLICATIONBUNDLEID");
  v4 = sub_1003B7A30(v3, @"Z_PK");

  if (v5 && v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v4 forKeyedSubscript:v5];
  }
}

void sub_10033BC5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindInt:objc_msgSend(v3 atPosition:{"intValue"), 1}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10033BD70;
  v12[3] = &unk_100523C10;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v11 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v15 = v9;
  v16 = v10;
  sub_100214814(v4, v12);
}

void sub_10033BD70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = sub_1003B7B64(v3, v4);
  v6 = [v5 mutableCopy];

  sub_10033C0D4(*(a1 + 40), v6, *(a1 + 32));
  v7 = [v6 objectForKeyedSubscript:@"last_used_date"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v6 setObject:v9 forKeyedSubscript:@"last_used_date"];
  }

  v10 = [v6 objectForKeyedSubscript:@"hashes"];
  if (v10)
  {
    v34 = 0;
    v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v34];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setObject:v11 forKeyedSubscript:@"hashes"];
    }
  }

  v12 = sub_1003B7A30(v3, @"Z_PK");
  v13 = [v12 longLongValue];

  v14 = objc_opt_new();
  v15 = *(a1 + 48);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10033C230;
  v31[3] = &unk_100523BE8;
  v33 = v13;
  v16 = v14;
  v32 = v16;
  sub_10022C3C4(v15, @"SELECT * FROM ZCONTENTHASH WHERE ZASSETPACK = ?", v31);
  [v6 setObject:v16 forKeyedSubscript:@"primaryContentHash"];
  v17 = [v6 objectForKeyedSubscript:@"local_url"];
  if (v17 && ([NSURL URLWithString:v17], v18 = objc_claimAutoreleasedReturnValue(), sub_1002402E4(ODRContentHash, v16), v29 = v6, v19 = a1, v20 = v10, v21 = v8, v22 = objc_claimAutoreleasedReturnValue(), sub_1002403E8(v22), v23 = v17, v24 = v3, v25 = objc_claimAutoreleasedReturnValue(), v26 = sub_1001FE144(ODRAssetPack, v18, v25), v25, v3 = v24, v17 = v23, v22, v8 = v21, v10 = v20, v27 = v19, v6 = v29, v18, v26))
  {
    v28 = sub_100268CD8([ODRAssetPack alloc], v29, *(v27 + 56));
    sub_10033C374(*(v27 + 40), v28, *(v27 + 64));
    *(*(*(v27 + 72) + 8) + 24) = 1;
  }

  else
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "The legacy database told us that an asset pack was on the device but it wasn't, skipping the import for it.", buf, 2u);
    }
  }
}

void sub_10033C0D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = [v5 objectForKeyedSubscript:v12];
          [v5 setObject:v14 forKeyedSubscript:v13];

          [v5 removeObjectForKey:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

void sub_10033C230(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10033C2E0;
  v5[3] = &unk_100523BC0;
  v6 = *(a1 + 32);
  sub_100214814(v4, v5);
}

void sub_10033C2E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = sub_1003B7B08(v6, @"ZSTRATEGY");
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"label"];

  v8 = sub_1003B7B08(v6, @"ZHASHVALUE");
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"hash"];

  *a4 = 1;
}

uint64_t sub_10033C374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10033C6B4;
    v8[3] = &unk_10051DA60;
    v9 = v5;
    v10 = &v11;
    [v6 modifyUsingTransaction:v8];
    LOBYTE(a1) = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return a1 & 1;
}

void sub_10033C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033C470(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10033C558;
  v9[3] = &unk_100523C60;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = v8;
  v13 = v8;
  sub_100214814(v4, v9);
}

void sub_10033C558(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = sub_1003B7A30(v6, @"ZISSTOREBASED");
  v8 = [v7 BOOLValue];

  v9 = [*(a1 + 32) allKeys];
  v10 = sub_1003B7B64(v6, v9);

  v15 = [v10 mutableCopy];
  sub_10033C0D4(*(a1 + 40), v15, *(a1 + 32));
  v11 = [v15 objectForKeyedSubscript:@"last_modification_date"];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v15 setObject:v13 forKeyedSubscript:@"last_modification_date"];
  }

  v14 = sub_1002806CC([ODRManifest alloc], v15, *(a1 + 48), v8);
  *(*(*(a1 + 64) + 8) + 24) = sub_10033C374(*(a1 + 40), v14, *(a1 + 56));
  *a4 = 1;
}

uint64_t sub_10033C6B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() databaseEntityClass];
  v5 = [v4 alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[2];
  }

  v7 = v6;
  v8 = [v3 connection];

  v9 = [v5 initWithPropertyValues:v7 onConnection:v8];
  if (!v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[2];
      }

      v14 = v13;
      v15 = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create a %{public}@ entity with values: %{public}@ ", &v15, 0x16u);
    }
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);

  return v11;
}

id sub_10033C8AC(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10033C9A8;
    v9 = sub_10033C9B8;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033C9C0;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10033C9A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10033C9D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10033CA7C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

id sub_10033CA88(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10033C9A8;
    v9 = sub_10033C9B8;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033CB84;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10033CB98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10033CC40;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

uint64_t sub_10033CC4C(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033CD04;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10033CD18(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033CDD0;
  v4[3] = &unk_10051B638;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id sub_10033CDE4(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10033C9A8;
    v9 = sub_10033C9B8;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033CEE0;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10033CEF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10033CF9C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

uint64_t sub_10033CFA8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033D060;
  v4[3] = &unk_10051B638;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10033D074(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10033D0F0;
    v3[3] = &unk_10051B830;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

id sub_10033D0FC(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10033C9A8;
    v9 = sub_10033C9B8;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033D1F8;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10033D1F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10033D244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10033D2EC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

void sub_10033D2EC(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_10033D330(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 2;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10033D3EC;
  v4[3] = &unk_10051B638;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10033D400(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10033D47C;
    v3[3] = &unk_10051B830;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

uint64_t sub_10033D488(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033D540;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_10033D554(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_10033C9A8;
    v9 = sub_10033C9B8;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033D650;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10033D650(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10033D69C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10033D744;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

void sub_10033D744(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

uint64_t sub_10033D788(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10033D840;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_10033D854(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10033D8D4;
    v3[3] = &unk_10051C8F8;
    v3[4] = a1;
    v4 = a2;
    dispatch_sync(v2, v3);
  }
}

void sub_10033D8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033D9AC;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_10033D9AC(void *a1)
{
  v2 = [*(a1[4] + 96) mutableCopy];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v3 = a1[5];
  v4 = a1[6];
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
    [v2 removeObjectForKey:v4];
  }

  v5 = [v8 copy];
  v6 = a1[4];
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;
}

void sub_10033DA38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033DB00;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_10033DB00(void *a1)
{
  v2 = [*(a1[4] + 104) mutableCopy];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v3 = a1[5];
  v4 = a1[6];
  v8 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
    [v2 removeObjectForKey:v4];
  }

  v5 = [v8 copy];
  v6 = a1[4];
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;
}

void sub_10033DC90(void *a1)
{
  objc_storeStrong((*(*(a1[5] + 8) + 40) + 24), *(a1[4] + 24));
  objc_storeStrong((*(*(a1[5] + 8) + 40) + 32), *(a1[4] + 32));
  *(*(*(a1[5] + 8) + 40) + 16) = *(a1[4] + 16);
  *(*(*(a1[5] + 8) + 40) + 88) = *(a1[4] + 88);
  *(*(*(a1[5] + 8) + 40) + 40) = *(a1[4] + 40);
  objc_storeStrong((*(*(a1[5] + 8) + 40) + 48), *(a1[4] + 48));
  v2 = [*(a1[4] + 64) copyWithZone:a1[6]];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = [*(a1[4] + 96) copyWithZone:a1[6]];
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  *(*(*(a1[5] + 8) + 40) + 72) = *(a1[4] + 72);
  v8 = [*(a1[4] + 104) copyWithZone:a1[6]];
  v9 = *(*(a1[5] + 8) + 40);
  v10 = *(v9 + 104);
  *(v9 + 104) = v8;

  *(*(*(a1[5] + 8) + 40) + 17) = *(a1[4] + 17);
  v11 = [*(a1[4] + 80) copyWithZone:a1[6]];
  v12 = *(*(a1[5] + 8) + 40);
  v13 = *(v12 + 80);
  *(v12 + 80) = v11;

  *(*(*(a1[5] + 8) + 40) + 18) = *(a1[4] + 18);
}

id sub_10033DE9C(void *a1)
{
  if (a1)
  {
    v2 = [a1 responseStartDate];
    v3 = [a1 responseEndDate];
    v4 = v2;
    v5 = v3;
    objc_opt_self();
    v6 = 0;
    if (v4 && v5)
    {
      [v5 timeIntervalSinceDate:v4];
      if (v7 >= 2.22044605e-16)
      {
        v6 = [[NSDateInterval alloc] initWithStartDate:v4 duration:v7];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10033E184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10033E19C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_opt_class();
  [v4 databaseTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10033FFD0;
  v10[3] = &unk_100523E30;
  v11 = v13 = v4;
  v5 = v3;
  v12 = v5;
  v6 = v11;
  [v2 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v8;
}

uint64_t sub_10033E2A0(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033E348;
  v7[3] = &unk_100523CC8;
  v10 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

uint64_t sub_10033E348(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = sub_10033E3A4(SQLiteEntity, a3, a2, *(a1 + 48), *(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10033E3A4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v11 appendString:v8];
  objc_msgSend(v11, "appendString:", @" (");
  v12 = [v10 foreignKeyColumnForTable:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"ROWID";
  }

  [v11 appendString:v14];
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v17);
  }

  [v11 appendString:@") VALUES (?"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    while (1)
    {
      if (*v38 != v24)
      {
        objc_enumerationMutation(v21);
      }

      [v11 appendString:{@", ?"}];
      if (!--v23)
      {
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  [v11 appendString:@";"]);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10033FE88;
  v33[3] = &unk_10051EB68;
  v35 = a4;
  v36 = 0;
  v25 = v21;
  v34 = v25;
  v26 = sub_10022C810(v9, v11, &v36, v33);
  v27 = v36;
  if (v27)
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v27;
      v31 = v30;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %@", buf, 0x16u);
    }
  }

  return v26;
}

uint64_t sub_10033E9A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = sub_10033EB70(v2, v3, @"ROWID");

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [objc_opt_class() foreignKeyColumnForTable:{v9, v15}];
        if (v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = sub_10033EB70(*(a1 + 32), v9, v10);
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    *(v11 + 8) = 0;

    v13 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10033EB70(uint64_t a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v6, v5];

    v8 = *(v3 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003400E4;
    v10[3] = &unk_10051B0F0;
    v10[4] = v3;
    v3 = sub_10022C810(v8, v7, 0, v10);
  }

  return v3;
}

void sub_10033EC4C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5 = @"SQLiteUserInfoKeyPersistentID";
  v3 = [NSNumber numberWithLongLong:*(a1 + 32)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"SQLiteDidDeleteEntityNotification" object:0 userInfo:v4];
}

void sub_10033EE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033EE48(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = sub_100214AEC(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_10033F224(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void sub_10033F2D8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10033F3A0;
  v5[3] = &unk_100523D68;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_100214814(v4, v5);
}

void sub_10033F3A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10033F47C;
    v9[3] = &unk_1005218B8;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10033F47C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_1003B7CF4(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_10033F6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10033F6F8(uint64_t a1)
{
  v2 = sub_10033E19C(*(a1 + 32), *(a1 + 40));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033F7BC;
  v7[3] = &unk_100523DE0;
  v11 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 56) + 8) + 24);

  return v5;
}

void sub_10033F7BC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10033FB68;
    v30[3] = &unk_10051DEB8;
    v30[4] = v12;
    v30[5] = &v31;
    sub_10022C3C4(v13, v11, v30);
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10033FBC8;
    v24[3] = &unk_100523DB8;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10033FC78;
    v21[3] = &unk_10051B0C8;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = sub_10022C810(v18, v16, 0, v21);

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = sub_10033E3A4(SQLiteEntity, v8, v7, *(*(a1 + 40) + 16), *(*(a1 + 40) + 8));
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void sub_10033FB68(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = sub_100214AEC(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_10033FBC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void sub_10033FC78(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        sub_100402CF4(v3, v10, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

void sub_10033FE88(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        sub_100402CF4(v3, v10, v11);

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_10033FFD0(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

id sub_100340114(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_100340154(result, a2);
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

id sub_100340154(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1003401CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100340244(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1003402E8(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_100340154(result, a2);
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

id sub_100340328(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1003403A0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100340418(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1003404F4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
    }
  }

  return a1;
}

uint64_t sub_10034063C(uint64_t a1, void *a2, NSObject **a3)
{
  v5 = a2;
  if (a1)
  {
    v17 = [*(a1 + 8) length];
    v6 = [v5 length];
    if ((2 * v6) <= 0x400)
    {
      v7 = 1024;
    }

    else
    {
      v7 = 2 * v6;
    }

    if ([*(a1 + 8) length] < v7)
    {
      [*(a1 + 8) setLength:v7];
      v17 = v7;
    }

    if (!v5)
    {
      v17 = 0;
      goto LABEL_11;
    }

    if (sub_10020984C(*(a1 + 16), [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(*(a1 + 8), "mutableBytes"), &v17, a3))
    {
      while (1)
      {
LABEL_11:
        v9 = *(a1 + 16);
        if (v9 && ![*(v9 + 8) length])
        {
          v8 = 1;
          goto LABEL_20;
        }

        v10 = [*(a1 + 8) length];
        v16 = (v10 - v17);
        v11 = *(a1 + 16);
        v12 = [*(a1 + 8) mutableBytes];
        v13 = sub_10020984C(v11, 0, 0, &v17[v12], &v16, a3);
        if (!v13 || v16 == 0)
        {
          break;
        }

        v17 = &v16[v17];
        [*(a1 + 8) setLength:{objc_msgSend(*(a1 + 8), "length") + 1024}];
      }

      v8 = v13;
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    [*(a1 + 8) setLength:v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1003408FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(*(a1 + 32) + 40) finishWithCompletionHandler:*(a1 + 40)];
  }
}

void **sub_100340B40(void **a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = PushServiceTestFlightConsumer;
    v8 = objc_msgSendSuper2(&v20, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      v9 = sub_1002ACDA4("com.apple.appstored.PushServiceTestFlightConsumer", QOS_CLASS_UTILITY);
      v10 = a1[2];
      a1[2] = v9;

      v11 = [NSMutableArray arrayWithCapacity:11];
      v12 = a1[4];
      a1[4] = v11;

      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = sub_1003E4DB4([TestFlightServiceHost alloc], a1[2]);
      }

      v14 = a1[1];
      a1[1] = v13;

      v15 = a1[1];
      if (v15)
      {
        objc_storeWeak(v15 + 6, a1);
      }

      v16 = a1[2];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100340CB4;
      block[3] = &unk_10051AF98;
      a1 = a1;
      v19 = a1;
      dispatch_async(v16, block);
    }
  }

  return a1;
}

uint64_t sub_100340CB4(uint64_t a1)
{
  result = sub_1003E541C(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 56) = result == 1;
  return result;
}

uint64_t sub_100340CF0(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 16);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100340DA8;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100340DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100340E64;
    v6[3] = &unk_10051B2D0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100340E64(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) length])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 8);
    v5 = *(v3 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100340F88;
    v11[3] = &unk_10051F9C8;
    v11[4] = v3;
    v12 = v2;
    sub_1003E5510(v4, v5, v11);
    v6 = v12;
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      return;
    }

    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100341078;
    block[3] = &unk_10051BD28;
    v10 = v7;
    dispatch_async(v8, block);
    v6 = v10;
  }
}

void sub_100340F88(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100341060;
    block[3] = &unk_100523EA0;
    v12 = v8;
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

void sub_100341128(uint64_t a1)
{
  [*(*(a1 + 32) + 32) insertObject:*(a1 + 40) atIndex:0];
  if ([*(*(a1 + 32) + 32) count] >= 0xB)
  {
    [*(*(a1 + 32) + 32) removeLastObject];
  }

  v2 = *(a1 + 32);

  sub_10034118C(v2);
}

void sub_10034118C(uint64_t a1)
{
  if (a1 && [*(a1 + 32) count] && (*(a1 + 40) & 1) == 0 && sub_1003E541C(*(a1 + 8)))
  {
    *(a1 + 40) = 1;
    objc_initWeak(&location, a1);
    v15 = [*(a1 + 32) copy];
    v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [*(a1 + 32) objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = *v20;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v19 + 1) + 8 * v6);
          v8 = [ASDTestFlightServiceExtensionPushMessage alloc];
          v9 = sub_10034250C(v7);
          v10 = sub_1003424DC(v7);
          v11 = [v8 initWithTimestamp:v9 userInfo:v10];
          [v2 addObject:v11];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) removeAllObjects];
    v12 = *(a1 + 8);
    v13 = [NSArray arrayWithArray:v2];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100341640;
    v16[3] = &unk_100523E78;
    v14 = v15;
    v17 = v14;
    objc_copyWeak(&v18, &location);
    sub_1003E5AC4(v12, v13, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_100341408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003414DC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2 || ([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = *(a1 + 32);

    sub_100340DBC(v6, &stru_100523E50);
  }
}

void sub_100341640(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        sub_1001D4048(PushConnection, *(*(&v11 + 1) + 8 * v6), 4);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003417AC;
    block[3] = &unk_10051AF98;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

void sub_1003417BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 64));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = WeakRetained;
  [WeakRetained testFlightConsumer:v4 didChangeStatus:*(a1 + 40)];
}

id *sub_100341894(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = LibraryQueryPlanner;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_10034190C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(a1 + 16);
    *(a1 + 16) = v5;

    [v3 acceptVisitor:a1 flags:0];
    v7 = sub_100279D90(*(a1 + 16));
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 addObject:*(*(&v14 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100341D18(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"resultComplexity" ascending:1];
  v17 = v3;
  v4 = [NSArray arrayWithObjects:&v17 count:1];

  v5 = [*(a1 + 32) sortedArrayUsingDescriptors:v4];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v2 addObject:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  if (*(a1 + 48) >= 2uLL)
  {
    [v2 filterUsingPredicate:*(a1 + 40)];
  }

  return v2;
}

id sub_100341EC8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v2 addObject:*(*(&v15 + 1) + 8 * j)];
            }

            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1003420C0(id a1, void *a2, __int16 a3)
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = XDCMessage;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v6 = [v5 data];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      *(a1 + 5) = a3;
    }
  }

  return a1;
}

id *sub_100342148(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = XDCMessage;
    a1 = objc_msgSendSuper2(&v13, "init");
    if (a1)
    {
      v10 = [v7 data];
      v11 = a1[2];
      a1[2] = v10;

      *(a1 + 5) = [v7 type];
      objc_storeStrong(a1 + 4, a4);
      objc_storeStrong(a1 + 3, a3);
    }
  }

  return a1;
}

void *sub_100342214(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [IDSProtobuf alloc];
    v3 = v1[2];
    v4 = *(v1 + 5);
    v5 = *(v1 + 8);

    return [v2 initWithProtobufData:v3 type:v4 isResponse:v5];
  }

  return result;
}

_BYTE *sub_100342264(uint64_t a1, void *a2, __int16 a3)
{
  if (a1)
  {
    v5 = a2;
    v6 = sub_1003420C0([XDCMessage alloc], v5, a3);

    if (v6)
    {
      objc_setProperty_atomic(v6, v7, *(a1 + 24), 24);
      objc_setProperty_atomic(v6, v8, *(a1 + 32), 32);
      v6[8] = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *sub_100342358(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PushRawMessage;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v4 = [v3 userInfo];
      v5 = [v4 copy];
      v6 = a1[2];
      a1[2] = v5;

      v7 = [v3 timestamp];
      v8 = [v7 copy];
      v9 = a1[3];
      a1[3] = v8;

      v10 = [v3 topic];
      a1[1] = sub_100342434(PushRawMessage, v10);
    }
  }

  return a1;
}

uint64_t sub_100342434(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  if ([v2 isEqualToString:@"com.apple.appstored"])
  {
    v3 = 1;
  }

  else
  {
    objc_opt_self();
    if ([v2 isEqualToString:@"com.apple.appstored-testflight"])
    {
      v3 = 2;
    }

    else
    {
      objc_opt_self();
      if ([v2 isEqualToString:@"com.apple.storekit"])
      {
        v3 = 3;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

id *sub_1003424DC(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

id *sub_10034250C(id *a1)
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

__CFString *sub_10034253C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) < 3)
  {
    return off_100524290[a2 - 1];
  }

  [NSException raise:NSInvalidArgumentException format:@"No string representation for topic: %ld", a2];
  return 0;
}

id sub_1003427D8(void *a1)
{
  if (!a1 || [a1 expressionType])
  {
    goto LABEL_3;
  }

  v3 = [a1 constantValue];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___NSFastEnumeration])
  {
    v4 = +[NSMutableArray array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    v2 = [v4 copy];
  }

  else
  {
    if (!v3)
    {
LABEL_3:
      v2 = 0;
      goto LABEL_16;
    }

    v15 = v3;
    v2 = [NSArray arrayWithObjects:&v15 count:1];
  }

LABEL_16:

  return v2;
}

id sub_100342968(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if ([a1 expressionType] == 3)
    {
      a1 = [v2 keyPath];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

id sub_1003429BC(id a1)
{
  v1 = a1;
  if (a1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100342A88;
    v4[3] = &unk_1005242D0;
    v5 = objc_opt_new();
    v2 = v5;
    sub_100342BCC(v1, v4);
    v1 = [v2 componentsJoinedByString:@":"];
  }

  return v1;
}

uint64_t sub_100342A88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 domain];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld", v5, [v3 code]);
  [v4 addObject:v6];

  v7 = [v3 domain];
  if (![v7 isEqualToString:AMSErrorDomain])
  {
LABEL_5:

    goto LABEL_6;
  }

  v8 = [v3 code];

  if (v8 == 305)
  {
    v9 = [v3 userInfo];
    v7 = sub_100237E9C(v9, AMSErrorUserInfoKeyServerErrorCode);

    if (v7)
    {
      v10 = *(a1 + 32);
      v11 = [NSString stringWithFormat:@"%@/%@", AMSServerErrorDomain, v7];
      [v10 addObject:v11];
    }

    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

void sub_100342BCC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v7 = v3;
      if (!(*(a2 + 16))(a2))
      {
        break;
      }

      v4 = [v7 userInfo];
      v5 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v3 = v5;
      if (!v5)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }

    v6 = v7;
LABEL_7:
  }
}

id sub_100342C9C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 domain];
    v1 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld", v2, [v1 code]);
  }

  return v1;
}

id sub_100342D24(void *a1)
{
  if (a1)
  {
    v2 = [a1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"dialogID"];

    if (!v3)
    {
      v4 = [a1 userInfo];
      v3 = sub_10023814C(v4, @"AMSServerPayload.metrics.dialogId");
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_100342DBC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = IAPInfoDAAPResponseDecoder;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v4 = objc_opt_new();
      v5 = a1[8];
      a1[8] = v4;

      v6 = objc_opt_new();
      v7 = a1[9];
      a1[9] = v6;

      v8 = a1[7];
      a1[7] = &off_100548088;

      v9 = v3;
      if ([v9 length])
      {
        v10 = [[DKDAAPParser alloc] initWithData:v9];
        [v10 setDelegate:a1];
        [v10 parse];
      }

      else
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_opt_class();
          *buf = 138412290;
          v16 = v12;
          v13 = v12;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Response data 0 length", buf, 0xCu);
        }
      }
    }
  }

  return a1;
}

uint64_t sub_1003439A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003439BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Cannot refresh purchase history, lookup may fail: %{public}@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100343A98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] != 1)
  {
    v10 = [v5 count];
    v11 = ASDLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10 < 2)
    {
      if (v12)
      {
        v15 = *(a1 + 32);
        v16 = 138412546;
        v17 = v15;
        v18 = 2114;
        v19 = v6;
        v14 = "[%@] Lookup failed: %{public}@";
        goto LABEL_10;
      }
    }

    else if (v12)
    {
      v13 = *(a1 + 32);
      v16 = 138412546;
      v17 = v13;
      v18 = 2048;
      v19 = [v5 count];
      v14 = "[%@] Found %lu results, but only one was expected";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, &v16, 0x16u);
    }

    goto LABEL_8;
  }

  v7 = [v5 firstObject];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 40));
}

char *sub_100343C10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v86 = a3;
  v77 = a4;
  v83 = a5;
  v85 = objc_opt_self();
  v78 = +[NSMutableArray array];
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] taskWithXDCAppMetadata with %ld app(s)", buf, 0x16u);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v8;
  v84 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (v84)
  {
    v82 = *v90;
    v79 = AMSBuyParamPropertyPricingParameters;
    v80 = AMSBuyParamPropertyAppExtVrsId;
    do
    {
      v12 = 0;
      do
      {
        if (*v90 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v89 + 1) + 8 * v12);
        v87 = [[_TtC9appstored6LogKey alloc] initWithAppMetadata:v13];
        v14 = [[PurchaseInfo alloc] initWithBag:v83];
        [(PurchaseInfo *)v14 setSuppressDialogs:1];
        [(PurchaseInfo *)v14 setPriority:-1];
        [(PurchaseInfo *)v14 setLogCode:@"WRD"];
        v15 = sub_100283920(v13);
        [(PurchaseInfo *)v14 setExternalID:v15];

        v16 = [v86 processInfo];
        [(PurchaseInfo *)v14 setClientInfo:v16];

        [(PurchaseInfo *)v14 setRequestToken:v86];
        if (v13)
        {
          if (*(v13 + 204))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          [(PurchaseInfo *)v14 setCoordinatorImportance:v17];
          [(PurchaseInfo *)v14 setCoordinatorIntent:1];
          if ((*(v13 + 208) & 1) != 0 && *(v13 + 8))
          {
            v18 = [NSNumber numberWithUnsignedLongLong:*(v13 + 32)];
            [(PurchaseInfo *)v14 setOriginalPurchaserDSID:v18];

            v88 = [NSNumber numberWithUnsignedLongLong:*(v13 + 8)];
            goto LABEL_17;
          }

          v19 = *(v13 + 32);
        }

        else
        {
          [(PurchaseInfo *)v14 setCoordinatorImportance:2];
          [(PurchaseInfo *)v14 setCoordinatorIntent:1];
          v19 = 0;
        }

        v88 = [NSNumber numberWithUnsignedLongLong:v19];
LABEL_17:
        v20 = sub_100305A04();
        v21 = v20;
        if (v88)
        {
          [v20 ams_setDSID:v88];
        }

        if (v13)
        {
          v22 = *(v13 + 48);
          if (v22)
          {
            v23 = v22;
            [v21 setUsername:v23];
          }

          v24 = *(v13 + 40);
          if (v24)
          {
            v25 = v24;
            [v21 ams_setAltDSID:v25];
          }
        }

        v26 = sub_1002DC3AC(ACAccountStore, v21);

        v27 = v26;
        objc_opt_self();
        [(PurchaseInfo *)v14 setAccount:v27];

        [(PurchaseInfo *)v14 setAccount:v27];
        [(PurchaseInfo *)v14 setIgnoreRequirePasswordRestriction:1];
        [(PurchaseInfo *)v14 setAutoInstallOverride:1];
        if (v13)
        {
          v28 = *(v13 + 72);
          if (v28)
          {
            v29 = v28;
            [(PurchaseInfo *)v14 setBundleID:v29];
          }

          if ((*(v13 + 208) & 4) != 0)
          {
            v30 = [NSNumber numberWithUnsignedLongLong:*(v13 + 24)];
            [(PurchaseInfo *)v14 setItemID:v30];
          }

          [(PurchaseInfo *)v14 setPurchaseType:0];
          if ((*(v13 + 208) & 8) != 0)
          {
            if (*(v13 + 32))
            {
              v31 = [(PurchaseInfo *)v14 itemID];
              v32 = v31 == 0;

              if (!v32)
              {
                v33 = *(v13 + 32);
                v34 = [(PurchaseInfo *)v14 itemID];
                v35 = v87;
                objc_opt_self();
                v96 = 0;
                v97 = &v96;
                v98 = 0x3032000000;
                v99 = sub_1003439A4;
                v100 = sub_1003439B4;
                v101 = 0;
                v36 = dispatch_semaphore_create(0);
                v37 = sub_10021CA38();
                v38 = [NSNumber numberWithUnsignedLongLong:v33];
                v93[0] = _NSConcreteStackBlock;
                v93[1] = 3221225472;
                v93[2] = sub_1003439BC;
                v93[3] = &unk_10051B230;
                v39 = v35;
                v94 = v39;
                v40 = v36;
                v95 = v40;
                sub_10021E12C(v37, v38, v34, 7, v93);

                dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
                v41 = objc_alloc_init(ASDPurchaseHistoryQuery);
                [v41 setAccountID:v33];
                v108 = v34;
                v42 = [NSArray arrayWithObjects:&v108 count:1];
                [v41 setStoreIDs:v42];

                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100343A98;
                v104 = &unk_1005242F8;
                v107 = &v96;
                v43 = v39;
                v105 = v43;
                v44 = v40;
                v106 = v44;
                sub_10021D168(v37, v41, buf);
                dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
                v45 = v97[5];

                _Block_object_dispose(&v96, 8);
                if (v45)
                {
                  v46 = [v45 bundleID];
                  [(PurchaseInfo *)v14 setBundleID:v46];

                  v47 = [v45 redownloadParams];
                  v48 = [AMSBuyParams buyParamsWithString:v47];
                  [(PurchaseInfo *)v14 setBuyParams:v48];

                  v49 = [v45 developerName];
                  [(PurchaseInfo *)v14 setVendorName:v49];
                }

                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          [(PurchaseInfo *)v14 setPurchaseType:0];
        }

        v45 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          if (v13)
          {
            v72 = (*(v13 + 208) >> 3) & 1;
          }

          else
          {
            v72 = 0;
          }

          v73 = [(PurchaseInfo *)v14 itemID];
          *buf = 138412802;
          *&buf[4] = v87;
          *&buf[12] = 1024;
          *&buf[14] = v72;
          *&buf[18] = 1024;
          *&buf[20] = v73 != 0;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[%@] History lookup failed - required information missing (purchaser = %{BOOL}d, item = %{BOOL}d)", buf, 0x18u);
        }

LABEL_37:

        v50 = [(PurchaseInfo *)v14 buyParams];
        v51 = v50 == 0;

        if (v51)
        {
          if (v13)
          {
            v52 = *(v13 + 152);
          }

          else
          {
            v52 = 0;
          }

          v53 = v52;
          v54 = v53 == 0;

          v55 = ASDLogHandleForCategory();
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
          if (v54)
          {
            if (v56)
            {
              *buf = 138412290;
              *&buf[4] = v87;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%@] Using workaround for missing buy parameters", buf, 0xCu);
            }

            v63 = objc_alloc_init(AMSBuyParams);
            [v63 setParameter:@"C" forKey:@"productType"];
            [v63 setParameter:@"0" forKey:@"price"];
            [v63 setParameter:@"STDRDL" forKey:v79];
            if (v13)
            {
              v64 = *(v13 + 24);
            }

            else
            {
              v64 = 0;
            }

            v65 = [NSNumber numberWithUnsignedLongLong:v64];
            v66 = [v65 stringValue];
            [v63 setParameter:v66 forKey:@"salableAdamId"];

            [(PurchaseInfo *)v14 setBuyParams:v63];
            goto LABEL_54;
          }

          if (v56)
          {
            *buf = 138412290;
            *&buf[4] = v87;
            _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%@] Using workaround for missing purchase history", buf, 0xCu);
          }

          if (v13)
          {
            v57 = *(v13 + 152);
          }

          else
          {
            v57 = 0;
          }

          v58 = v57;
          v59 = [AMSBuyParams buyParamsWithString:v58];
          [(PurchaseInfo *)v14 setBuyParams:v59];

          v60 = [(PurchaseInfo *)v14 buyParams];
          v61 = [v60 parameterForKey:v79];
          LODWORD(v59) = [v61 isEqualToString:@"SWUPD"];

          if (v59)
          {
            v62 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v87;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%@] Using workaround for incorrect pricing parameters", buf, 0xCu);
            }

            v63 = [(PurchaseInfo *)v14 buyParams];
            [v63 setParameter:@"STDRDL" forKey:v79];
LABEL_54:
          }
        }

        if (v13 && (*(v13 + 208) & 2) != 0)
        {
          v67 = [NSString stringWithFormat:@"%llu", *(v13 + 16), v77];
          v68 = [(PurchaseInfo *)v14 buyParams];
          v69 = v68;
          if (v68)
          {
            [v68 setParameter:v67 forKey:v80];
          }
        }

        [(PurchaseInfo *)v14 updateGeneratedProperties];
        LOBYTE(v96) = 0;
        LOBYTE(v93[0]) = 0;
        v70 = sub_10034498C(v85, v14, &v96, v93);
        if (LOBYTE(v93[0]) == 1)
        {
          v71 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v87;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to install as installed companion app is not eligible to have a Watch app", buf, 0xCu);
          }
        }

        else if (!v13 || (*(v13 + 208) & 0x800) == 0 || (*(v13 + 206) & v70 & 1) == 0)
        {
          [v78 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v84 != v12);
      v74 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
      v84 = v74;
    }

    while (v74);
  }

  v75 = sub_100344D18([v85 alloc], v78, v77);

  return v75;
}

uint64_t sub_10034498C(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_self();
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v7 = [v6 itemID];
  v8 = v7 == 0;

  if (v8)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No way to check for an existing app, continuing", buf, 2u);
    }
  }

  else
  {
    v9 = [v6 itemID];
    v10 = [NSPredicate predicateWithFormat:@"storeItemID == %@", v9];

    v11 = dispatch_semaphore_create(0);
    v12 = sub_1002F09C8();
    v13 = +[NSSet set];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100346800;
    v22[3] = &unk_100524348;
    v14 = v6;
    v23 = v14;
    v25 = &v32;
    v26 = &v28;
    v27 = &v36;
    v15 = v11;
    v24 = v15;
    [v12 executeQuery:v10 excludingBundleIDs:v13 completionHandler:v22];

    v16 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v15, v16))
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = [v14 itemID];
        v21 = [v14 bundleID];
        *buf = 138543618;
        v41 = v20;
        v42 = 2114;
        v43 = v21;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Timed out checking for %{public}@ %{public}@ on an internal install", buf, 0x16u);
      }
    }
  }

  if (a3)
  {
    *a3 = *(v33 + 24);
  }

  if (a4)
  {
    *a4 = *(v29 + 24);
  }

  v18 = *(v37 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v18 & 1;
}

void sub_100344CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

char *sub_100344D18(char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = InstallWatchAppsTask;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      v7 = [v5 copy];
      v8 = *(a1 + 42);
      *(a1 + 42) = v7;

      objc_storeStrong((a1 + 50), a3);
    }
  }

  return a1;
}

char *sub_100344DC8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v88 = a3;
  v85 = a4;
  v78 = a5;
  v84 = a6;
  v91 = objc_opt_self();
  v80 = +[NSMutableArray array];
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    *buf = 138543618;
    v99 = v12;
    v100 = 2048;
    v101 = [v10 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] taskWithXPCAppMetadata with %ld app(s)", buf, 0x16u);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v10;
  v86 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
  if (v86)
  {
    v83 = *v93;
    v14 = AMSBuyParamPropertyPricingParameters;
    v79 = AMSBuyParamPropertyItemId;
    v82 = AMSBuyParamPropertyAppExtVrsId;
    v87 = AMSBuyParamPropertyPricingParameters;
    do
    {
      v15 = 0;
      do
      {
        if (*v93 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v92 + 1) + 8 * v15);
        v17 = [[PurchaseInfo alloc] initWithBag:v84];
        -[PurchaseInfo setSuppressDialogs:](v17, "setSuppressDialogs:", [v84 BOOLForKey:@"watchSuppressDialogs" defaultValue:1]);
        [(PurchaseInfo *)v17 setPriority:-1];
        v18 = [v16 downloaderID];
        if (v18 && (v19 = v18, [v16 downloaderID], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToNumber:", &off_1005480A0), v20, v19, (v21 & 1) == 0))
        {
          v23 = [v16 purchaserID];
          [(PurchaseInfo *)v17 setOriginalPurchaserDSID:v23];

          v22 = [v16 downloaderID];
        }

        else
        {
          v22 = [v16 purchaserID];
        }

        v24 = v22;
        v25 = sub_100305A04();
        v26 = v25;
        if (v24)
        {
          [v25 ams_setDSID:v24];
        }

        v90 = v24;
        v27 = [v16 appleID];
        [v26 setUsername:v27];

        v28 = [v16 altDSID];
        [v26 ams_setAltDSID:v28];

        v29 = sub_1002DC3AC(ACAccountStore, v26);

        [(PurchaseInfo *)v17 setIgnoreRequirePasswordRestriction:1];
        [(PurchaseInfo *)v17 setLogCode:@"WRD"];
        v30 = +[NSUUID UUID];
        [(PurchaseInfo *)v17 setExternalID:v30];

        v31 = [v85 processInfo];
        [(PurchaseInfo *)v17 setClientInfo:v31];

        [(PurchaseInfo *)v17 setRequestToken:v85];
        if ([v16 isUserInitiated])
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        [(PurchaseInfo *)v17 setCoordinatorImportance:v32];
        [(PurchaseInfo *)v17 setCoordinatorIntent:6];
        v33 = [v16 bundleID];
        [(PurchaseInfo *)v17 setBundleID:v33];

        v34 = [v16 itemID];
        v35 = v85;
        objc_opt_self();
        if (v34)
        {
          v96 = 0;
          v36 = [[LSApplicationRecord alloc] initWithStoreItemIdentifier:objc_msgSend(v34 error:{"unsignedLongLongValue"), &v96}];
          v37 = [v36 bundleIdentifier];

          if (v37)
          {
            v38 = [v36 bundleIdentifier];

            goto LABEL_24;
          }

          v39 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v99 = v85;
            v100 = 2114;
            v101 = v34;
            v102 = 2114;
            v103 = v96;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[%{public}@] Received request to install %{public}@ remotely but we don't have a companion bundle ID for it. Error: %{public}@", buf, 0x20u);
          }
        }

        v38 = 0;
LABEL_24:

        [(PurchaseInfo *)v17 setCompanionBundleID:v38];
        v40 = [ProgressInfo alloc];
        v41 = [v16 bundleID];
        v42 = [(PurchaseInfo *)v17 logKey];
        v43 = sub_100403C3C(&v40->super.isa, v41, 0, v42);

        v44 = [v16 itemID];
        v46 = v44;
        if (v43)
        {
          objc_setProperty_atomic(v43, v45, v44, 152);

          *(v43 + 64) = 1;
        }

        else
        {
        }

        v47 = sub_1003649C8();
        sub_100364E78(v47, v43, @"Watch");

        v48 = [v16 itemID];
        [(PurchaseInfo *)v17 setItemID:v48];

        [(PurchaseInfo *)v17 updateLogKey];
        v89 = [(PurchaseInfo *)v17 logKey];
        v49 = v29;
        objc_opt_self();
        [(PurchaseInfo *)v17 setAccount:v49];

        if (v88)
        {
          [(PurchaseInfo *)v17 setRemoteInstall:1];
          [(PurchaseInfo *)v17 setDevice:v88];
          v50 = [v16 previousExternalVersionID];
          if (v50)
          {
            [(PurchaseInfo *)v17 setInstalledExternalVersionID:v50];
            v51 = [v16 previousVariantID];
            [(PurchaseInfo *)v17 setInstalledVariantID:v51];
          }
        }

        [(PurchaseInfo *)v17 setPurchaseType:0];
        v52 = [v16 redownloadParams];
        if (v52)
        {
          v53 = [AMSBuyParams buyParamsWithString:v52];
        }

        else
        {
          v54 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v73 = [(PurchaseInfo *)v17 logKey];
            *buf = 138412290;
            v99 = v73;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "[%@] Using workaround for missing buy parameters", buf, 0xCu);
          }

          v53 = objc_alloc_init(AMSBuyParams);
          [v53 setParameter:@"C" forKey:@"productType"];
          [v53 setParameter:@"0" forKey:@"price"];
          [v53 setParameter:@"STDRDL" forKey:v14];
          v55 = [v16 itemID];
          v56 = [v55 stringValue];
          [v53 setParameter:v56 forKey:v79];

          v14 = v87;
        }

        [(PurchaseInfo *)v17 setBuyParams:v53];

        v57 = [(PurchaseInfo *)v17 buyParams];
        [v57 parameterForKey:v14];
        v59 = v58 = v14;
        v60 = [v59 isEqualToString:@"SWUPD"];

        if (v60)
        {
          v61 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v72 = [(PurchaseInfo *)v17 logKey];
            *buf = 138412290;
            v99 = v72;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Using workaround for incorrect pricing parameters", buf, 0xCu);
          }

          v14 = v87;
        }

        else
        {
          v62 = [(PurchaseInfo *)v17 buyParams];
          v63 = [v62 parameterForKey:v58];
          v64 = [v63 isEqualToString:@"STDOTA"];

          v14 = v58;
          if (!v64)
          {
            goto LABEL_43;
          }

          v61 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v74 = [(PurchaseInfo *)v17 logKey];
            *buf = 138412290;
            v99 = v74;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Using workaround for incorrect content restore pricing parameters", buf, 0xCu);
          }
        }

        v65 = [(PurchaseInfo *)v17 buyParams];
        [v65 setParameter:@"STDRDL" forKey:v14];

LABEL_43:
        v66 = [v16 externalVersionID];

        if (v66)
        {
          v67 = [v16 externalVersionID];
          v68 = [v67 stringValue];
          v69 = [(PurchaseInfo *)v17 buyParams];
          v70 = v69;
          if (v69)
          {
            [v69 setParameter:v68 forKey:v82];
          }

          v14 = v87;
        }

        [(PurchaseInfo *)v17 updateGeneratedProperties];
        buf[0] = 0;
        v71 = sub_10034498C(v91, v17, buf, 0);
        if (![v16 skipIfInstalled] || (v71 & 1) == 0)
        {
          [v80 addObject:v17];
        }

        v15 = v15 + 1;
      }

      while (v86 != v15);
      v75 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
      v86 = v75;
    }

    while (v75);
  }

  v76 = sub_100344D18([v91 alloc], v80, v78);

  return v76;
}

id sub_1003458A0(uint64_t a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = [*(a1 + 58) copy];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100346144(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1003439A4;
  v16 = sub_1003439B4;
  v17 = 0;
  v3 = [v2 bundleID];
  v4 = [v2 itemID];
  v5 = sub_1003DBCD4(AppInstallPredicates, 0, v3, v4, 0);

  if (v5)
  {
    v6 = sub_1003C27BC();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100346ACC;
    v9[3] = &unk_100521DC8;
    v10 = v5;
    v11 = &v12;
    [v6 readUsingSession:v9];
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_1003462D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003462E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 items];
  v7 = [v6 firstObject];

  if (!v5)
  {
    v12 = [v7 error];
    if (v12)
    {
    }

    else if ([v7 success])
    {
      v13 = [*(a1 + 32) externalID];
      if (v13)
      {
        [*(a1 + 56) addObject:v13];
      }

      v14 = *(*(a1 + 40) + 50);
      v15 = [*(a1 + 32) itemID];
      v16 = [v15 stringValue];
      sub_1003A4A48(v14, v16);
      goto LABEL_16;
    }

    v17 = [v7 error];
    v13 = ASDErrorWithSafeUserInfo();

    if (!v13)
    {
      v13 = [NSError errorWithDomain:ASDErrorDomain code:924 userInfo:0];
    }

    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 32) logKey];
      v22 = [v7 error];
      v23 = 138412546;
      v24 = v21;
      v25 = 2114;
      v26 = v22;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Redownload purchase failed with error: %{public}@", &v23, 0x16u);
    }

    v19 = *(*(a1 + 40) + 50);
    v15 = [*(a1 + 32) itemID];
    v16 = [v15 stringValue];
    sub_1003A47E0(v19, v13, v16, *(a1 + 48));
LABEL_16:

    goto LABEL_17;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v20 = [*(a1 + 32) logKey];
    v23 = 138412546;
    v24 = v20;
    v25 = 2114;
    v26 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Redownload request failed with error: %{public}@", &v23, 0x16u);
  }

  v9 = *(*(a1 + 40) + 50);
  v10 = [*(a1 + 32) itemID];
  v11 = [v10 stringValue];
  sub_1003A47E0(v9, v5, v11, *(a1 + 48));

LABEL_17:
  dispatch_group_leave(*(a1 + 64));
}

void sub_1003465F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) logKey];
      v14 = 138412546;
      v15 = v13;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Redownload purchase failed with error: %{public}@", &v14, 0x16u);
    }

    v8 = *(*(a1 + 40) + 50);
    v9 = [*(a1 + 32) itemID];
    v10 = [v9 stringValue];
    sub_1003A47E0(v8, v6, v10, *(a1 + 48));
  }

  else
  {
    v11 = *(*(a1 + 40) + 50);
    v9 = [*(a1 + 32) itemID];
    v10 = [v9 stringValue];
    sub_1003A4A48(v11, v10);
  }

  v12 = [*(a1 + 32) externalID];
  if (v12)
  {
    [*(a1 + 56) addObject:v12];
  }

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_100346794(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 58);
  *(v3 + 58) = v2;

  [*(a1 + 32) unlock];
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

void sub_100346800(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) itemID];
      v8 = [*(a1 + 32) bundleID];
      v17 = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error checking for previously installed app for internal install %{public}@ %{public}@: %{public}@", &v17, 0x20u);
    }

    goto LABEL_17;
  }

  v6 = [a2 firstObject];
  if (![v6 isInstalled])
  {
    goto LABEL_17;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *(*(*(a1 + 56) + 8) + 24) = [v6 hasUnknownDistributor];
  v9 = [*(a1 + 32) buyParams];
  v10 = [v9 parameterForKey:AMSBuyParamPropertyAppExtVrsId];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue]);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_11:
      v12 = 0;
      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_12;
    }

    v11 = v10;
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = [v6 storeExternalVersionID];
  *(*(*(a1 + 64) + 8) + 24) = v13 == [v12 unsignedLongLongValue];
LABEL_12:
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) itemID];
      v16 = [*(a1 + 32) bundleID];
      v17 = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Internal install requested for %{public}@ %{public}@ but it is already installed.", &v17, 0x16u);
    }
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100346ACC(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v7 = sub_1002D3DF0(AppInstallEntity, v3, *(a1 + 32));

  v4 = sub_1003403A0(v7, @"external_id");
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_100346BD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = [v6 ams_DSID];

  v9 = sub_100346C5C(v7, [v8 unsignedLongLongValue], a3, a4);
  return v9;
}

id sub_100346C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100346DB0;
  v24 = sub_100346DC0;
  v25 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_100346DC8;
  v14 = &unk_100524370;
  v17 = a4;
  v18 = a2;
  v15 = &v20;
  v16 = objc_opt_self();
  v19 = a3;
  v6 = v12;
  v7 = +[AMSKeybag sharedInstance];
  v8 = [v7 fairplayContextWithError:a4];

  sub_10006E778();
  if (!v9)
  {
    v13(v6, v8);
  }

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v10;
}

void sub_100346D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100346DB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100346DC8(void *a1, uint64_t a2)
{
  v17 = 0uLL;
  v18 = 0;
  v4 = a1[6];
  objc_opt_self();
  v19 = 0uLL;
  v20 = 0;
  sub_10003C1F4(0, 0, &v19);
  if ((v19 - 1) >= 0x14)
  {
    if (v4)
    {
      *v4 = [NSError errorWithDomain:@"FairPlayErrorDomain" code:v5 userInfo:0];
    }

    goto LABEL_12;
  }

  v17 = v19;
  v18 = v20;
  *&v19 = 0;
  v16 = 0;
  sub_10008128C(a2, a1[7], &v17, 52428801, 0, &v19, &v16);
  v7 = v6;
  if (v6 == -42052)
  {
    if (v16)
    {
      v11 = [[NSData alloc] initWithBytesNoCopy:v19 length:v16 deallocator:&stru_100524390];
      v12 = *(a1[4] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = a1[8];
    if (v14)
    {
      *v14 = 1;
    }
  }

  else if (!v6)
  {
    v8 = [[NSData alloc] initWithBytesNoCopy:v19 length:v16 deallocator:&stru_100524390];
    v9 = *(a1[4] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    goto LABEL_12;
  }

  if (!*(*(a1[4] + 8) + 40))
  {
    v15 = [NSError errorWithDomain:@"FairPlayErrorDomain" code:v7 userInfo:0];
    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:
  if (!*(*(a1[4] + 8) + 40) && a1[6])
  {
    v15 = v15;
    *a1[6] = v15;
  }
}

uint64_t sub_100346FD8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2 && [v2 length])
  {
    v3 = v2;
    objc_opt_self();
    [v3 fileSystemRepresentation];

    sub_100032D64();
    v5 = v4;
    objc_opt_self();
    v6 = 2 * ((v5 + 42595) < 0xFFFFFFFE);
    if ((v5 + 42587) > 3 || v5 == -42586)
    {
      v6 = v6 | 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_1003470A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100347200;
  v9[3] = &unk_1005243B8;
  v11 = v4;
  v10 = v12 = v3;
  v5 = v4;
  v6 = v10;
  [v2 enumerateObjectsUsingBlock:v9];

  v7 = sub_100347560([InstallSystemAppsTask alloc], v5, v6);
  *(v7 + 40) = 1;
  *(v7 + 64) = 1;

  return v7;
}

void sub_100347200(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100283920(v3);
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  if (v3)
  {
    v5 = v3[9];
    if (v5)
    {
      v6 = v5;
      v7 = v3[9];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [ApplicationProxy alloc];
        v10 = v3[9];
        v11 = [(ApplicationProxy *)v9 initWithBundleID:v10];

        if (v11 && ([(objc_class *)v11[15].isa isPlaceholder]& 1) == 0)
        {
          v14 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
LABEL_22:

            goto LABEL_25;
          }

          v19 = objc_opt_class();
          v16 = v19;
          v20 = v3[9];
          v23 = 138543618;
          v24 = v19;
          v25 = 2114;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Skipping remote installation request for app that is already installed", &v23, 0x16u);
        }

        else
        {
          v12 = [ASDSystemAppMetadata alloc];
          v13 = v3[9];
          v14 = [v12 initWithBundleID:v13];

          v15 = sub_100408B8C([AppInstall alloc], v14);
          v16 = v15;
          if (v15)
          {
            if ((sub_100408E18(v15) & 1) != 0 || sub_10030B58C())
            {
              if (v4)
              {
                sub_10023E000(v16, v4, @"external_id");
              }

              v17 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = sub_100408EB0(v16);
                v23 = 138412290;
                v24 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Received remote installation request", &v23, 0xCu);
              }

              [*(a1 + 40) addObject:v16];
            }

            else
            {
              v21 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = sub_10040908C(v16);
                v23 = 138543362;
                v24 = v22;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "System app installation not permitted - Device restrictions prohibit SAD app installation for bundleID: [%{public}@]", &v23, 0xCu);
              }
            }
          }
        }

        goto LABEL_22;
      }
    }
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v23) = 0;
    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Dropping request for system app with no bundleID", &v23, 2u);
  }

LABEL_25:
}

id *sub_100347560(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = InstallSystemAppsTask;
    a1 = objc_msgSendSuper2(&v13, "init");
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[6];
      a1[6] = v7;

      v9 = [v6 copy];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &__NSArray0__struct;
      }

      objc_storeStrong(a1 + 9, v11);
    }
  }

  return a1;
}

id *sub_100347624(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100347718;
  v10[3] = &unk_1005243E0;
  v11 = v4;
  v6 = v4;
  v7 = sub_10036FDEC(v5, v10);

  v8 = sub_100347560([InstallSystemAppsTask alloc], v7, 0);

  return v8;
}

id *sub_100347718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100408B8C([AppInstall alloc], v3);

  if (!v4)
  {
LABEL_9:
    v12 = v4;
    goto LABEL_10;
  }

  if ((sub_100408E18(v4) & 1) != 0 || sub_10030B58C())
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 32, 1);
      }

      v8 = Property;
      v9 = sub_100408EB0(v4);
      v10 = [*(a1 + 32) processInfo];
      v11 = [v10 bundleIdentifier];
      v19 = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@][%@] Received local installation request for clientID: %{public}@", &v19, 0x20u);
    }

    goto LABEL_9;
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = objc_getProperty(v16, v15, 32, 1);
    }

    v17 = v16;
    v18 = sub_10040908C(v4);
    v19 = 138412546;
    v20 = v17;
    v21 = 2114;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] System app installation not permitted - Device restrictions prohibit SAD app installation for bundleID: [%{public}@]", &v19, 0x16u);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

id sub_100347944(id *a1)
{
  if (a1)
  {
    [a1 lock];
    v2 = [a1[9] copy];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100347E54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v25[1] = 0;
  v6 = sub_1003A07F4(v5);
  v7 = 0;
  v25[0] = v7;
  v8 = sub_1003A040C(v6, v25);
  v9 = v25[0];

  if (v8)
  {
    v10 = [v8 uniqueIdentifier];
    sub_10023E000(v5, v10, @"coordinator_id");

    v24 = v9;
    v11 = sub_1002FFD28(v5, 0, &v24);
    v12 = v24;

    v23 = v12;
    v13 = sub_1002FE824(v11, &v23);
    v9 = v23;

    if (v13)
    {
      v22 = v9;
      v14 = sub_10024A138(v8, v13, &v22);
      v15 = v22;

      if (v14)
      {
        if (*(*(a1 + 40) + 40) == 1)
        {
          sub_10023E000(v5, &off_1005480B8, @"auto_install_override");
        }
      }

      else
      {
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = sub_100408EB0(v5);
          *buf = 138412546;
          v27 = v21;
          v28 = 2114;
          v29 = v15;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Failed to set placeholder error: %{public}@", buf, 0x16u);
        }

        [v8 cancelForReason:v15 client:1 error:0];
        [*(a1 + 32) addIndex:a3];
      }

      v9 = v15;
    }

    else
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_100408EB0(v5);
        *buf = 138412546;
        v27 = v20;
        v28 = 2114;
        v29 = v9;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Failed to create placeholder error: %{public}@", buf, 0x16u);
      }

      [v8 cancelForReason:v9 client:1 error:0];
      [*(a1 + 32) addIndex:a3];
    }
  }

  else
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_100408EB0(v5);
      *buf = 138412546;
      v27 = v19;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Failed to create coordinator error: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) addIndex:a3];
  }
}

uint64_t sub_1003481D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [NSOrderedSet orderedSetWithArray:v2];
  v5 = sub_100207ABC(v3, v4);
  if (v3)
  {
    Property = objc_getProperty(v3, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;

  if (v8)
  {
    v8[17] |= 0x40uLL;
  }

  return 1;
}

id sub_100348280(id a1, AppInstall *a2)
{
  v2 = sub_10023E0F8(a2, @"external_id");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[NSUUID alloc] initWithUUIDString:v2];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void sub_100348308(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToLongLong:1];
  v14[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_1005480D0, 6];
  v14[1] = v5;
  v6 = [NSArray arrayWithObjects:v14 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [v3 connection];

  v9 = sub_1002D3F5C(AppInstallEntity, v8, v7);

  v13 = @"bundle_id";
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003484E4;
  v11[3] = &unk_100521638;
  v12 = *(a1 + 32);
  [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v11];
}

void sub_1003484E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"bundle_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }
}

void *sub_100348564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10023E644(v3, @"bundle_id");
  if (!v4)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_100408EB0(v3);
      v10 = 138412290;
      v11 = v6;
      v7 = "[%@] Unable to install system app with missing identifier";
      goto LABEL_12;
    }

LABEL_6:

    v8 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_100408EB0(v3);
      v10 = 138412290;
      v11 = v6;
      v7 = "[%@] Active installation already in progress";
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);

      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v8 = v3;
LABEL_8:

  return v8;
}

id *sub_100348D00(id *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [NSURL fileURLWithPath:a2];
    v4 = v3;
    v35.receiver = v2;
    v35.super_class = RequestThrottlePersistence;
    v5 = objc_msgSendSuper2(&v35, "init");
    v2 = v5;
    if (v5)
    {
      *(v5 + 2) = 0;
      objc_storeStrong(v5 + 2, v3);
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = v2[3];
      v2[3] = v6;

      v8 = v2[2];
      v40 = 0;
      v9 = v8;
      objc_opt_self();
      v10 = [NSData dataWithContentsOfURL:v9 options:0 error:&v40];

      if (v10)
      {
        v11 = objc_opt_class();
        v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
        v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v10 error:&v40];
      }

      else
      {
        v13 = 0;
      }

      v14 = v40;
      v15 = v14;
      if (v13)
      {
        v34 = v14;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v17)
        {
          v19 = v17;
          v20 = *v37;
          do
          {
            v21 = 0;
            do
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v36 + 1) + 8 * v21);
              if (v22)
              {
                Property = objc_getProperty(*(*(&v36 + 1) + 8 * v21), v18, 24, 1);
              }

              else
              {
                Property = 0;
              }

              v24 = Property;

              if (v24)
              {
                v25 = v2[3];
                if (v22)
                {
                  v26 = objc_getProperty(v22, v18, 24, 1);
                }

                else
                {
                  v26 = 0;
                }

                v27 = v26;
                [v25 setObject:v22 forKeyedSubscript:v27];
              }

              v21 = v21 + 1;
            }

            while (v19 != v21);
            v28 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
            v19 = v28;
          }

          while (v28);
        }

        v29 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v2[3] count];
          v31 = v2[2];
          *buf = 134218242;
          v42 = v30;
          v43 = 2114;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Throttle: Read %lu records from: %{public}@", buf, 0x16u);
        }

        v15 = v34;
      }

      else
      {
        v29 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v33 = v2[2];
          *v45 = 138543618;
          v46 = v33;
          v47 = 2114;
          v48 = v15;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Throttle: Reading from: %{public}@ failed: %{public}@", v45, 0x16u);
        }
      }
    }
  }

  return v2;
}

void sub_10034908C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    self = v3;
    os_unfair_lock_lock((a1 + 8));
    Property = self;
    if (self)
    {
      Property = objc_getProperty(self, v4, 24, 1);
    }

    v6 = Property;

    if (v6)
    {
      v8 = *(a1 + 24);
      v9 = self;
      if (self)
      {
        v9 = objc_getProperty(self, v7, 24, 1);
      }

      v10 = v9;
      [v8 setObject:self forKeyedSubscript:v10];

      sub_10034914C(a1);
    }

    os_unfair_lock_unlock((a1 + 8));
    v3 = self;
  }
}

void sub_10034914C(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if (!*(a1 + 32))
    {
      v2 = dispatch_get_global_queue(21, 0);
      v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);
      v4 = *(a1 + 32);
      *(a1 + 32) = v3;

      v5 = *(a1 + 32);
      v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 120000000000);
      dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
      objc_initWeak(&location, a1);
      v7 = *(a1 + 32);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100349730;
      v8[3] = &unk_10051F888;
      objc_copyWeak(&v9, &location);
      dispatch_source_set_event_handler(v7, v8);
      dispatch_resume(*(a1 + 32));
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t sub_100349288(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    if (v3)
    {
      v4 = [*(a1 + 24) objectForKeyedSubscript:v3];

      if (v4)
      {
        [*(a1 + 24) setObject:0 forKeyedSubscript:v3];
        sub_10034914C(a1);
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100349320(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    [*(a1 + 24) removeAllObjects];
    sub_100349374(a1);

    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_100349374(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v2 = *(a1 + 16);
    v11 = 0;
    v3 = v2;
    objc_opt_self();
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 removeItemAtURL:v3 error:&v11];

    v6 = v11;
    v7 = ASDLogHandleForCategory();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 16);
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Throttle: Deleted all records at: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 16);
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Throtle: Deleting records at: %{public}@ failed: %{public}@", buf, 0x16u);
    }
  }
}

id sub_1003494EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    if (v3)
    {
      v4 = [*(a1 + 24) objectForKeyedSubscript:v3];
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100349574(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = [*(a1 + 24) allValues];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003496A8;
    v7[3] = &unk_100524478;
    v8 = v3;
    v5 = [v4 indexesOfObjectsPassingTest:v7];
    [*(a1 + 24) removeAllObjects];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003496B8;
    v6[3] = &unk_1005244A0;
    v6[4] = a1;
    [v4 enumerateObjectsAtIndexes:v5 options:0 usingBlock:v6];
    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_1003496B8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  Property = a2;
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 24, 1);
  }

  v6 = Property;
  [v2 setObject:v5 forKeyedSubscript:v6];
}

void sub_100349730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    os_unfair_lock_assert_owner(v16 + 2);
    v2 = [*&v16[6]._os_unfair_lock_opaque allValues];
    v3 = *&v16[4]._os_unfair_lock_opaque;
    v17 = 0;
    v4 = v3;
    v5 = v2;
    objc_opt_self();
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v17];

    if (v6)
    {
      v7 = [v6 writeToURL:v4 options:1 error:&v17];
    }

    else
    {
      v7 = 0;
    }

    v8 = v17;
    v9 = ASDLogHandleForCategory();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*&v16[6]._os_unfair_lock_opaque count];
        v12 = *&v16[4]._os_unfair_lock_opaque;
        *buf = 134218242;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Throttle: Wrote %lu records to: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = [*&v16[6]._os_unfair_lock_opaque count];
      v15 = *&v16[4]._os_unfair_lock_opaque;
      *buf = 134218498;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Throttle: Writing %lu records to: %{public}@ failed: %{public}@", buf, 0x20u);
    }

    v13 = *&v16[8]._os_unfair_lock_opaque;
    *&v16[8]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v16 + 2);
    WeakRetained = v16;
  }
}

void sub_100349A98(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAC78;
  qword_1005AAC78 = v1;
}

uint64_t sub_100349D24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100349D3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100349E2C;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v8;
    v13 = v7;
    v14 = v9;
    sub_100005D90(v10, v11);
  }
}

void sub_100349E2C(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100349D24;
  v41 = sub_100349D34;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100349D24;
  v35 = sub_100349D34;
  v36 = 0;
  v2 = +[ActiveAccountObserver activeAccount];
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      v7 = [v2 hashedDescription];
      *buf = 138413058;
      v44 = v4;
      v45 = 2114;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      v49 = 2114;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Get IAPs: %@ for account: %{public}@", buf, 0x2Au);
    }

    v8 = *(*(a1 + 32) + 8);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10034A330;
    v26 = &unk_1005244F0;
    v29 = &v31;
    v27 = *(a1 + 48);
    v9 = v2;
    v28 = v9;
    v30 = &v37;
    [v8 readUsingSession:&v23];
    if (v32[5])
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = *(a1 + 40);
        v13 = [v32[5] count];
        v14 = [v9 hashedDescription];
        *buf = 138413058;
        v44 = v11;
        v45 = 2114;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Got %li IAPs for account: %@", buf, 0x2Au);
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = *(a1 + 40);
        v21 = v38[5];
        *buf = 138412802;
        v44 = v19;
        v45 = 2114;
        v46 = v20;
        v47 = 2114;
        v48 = v21;
        v22 = v19;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs with error: %{public}@", buf, 0x20u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v44 = v16;
      v45 = 2114;
      v46 = v17;
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs: %{public}@ with no active account DSID error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

void sub_10034A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10034A330(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 ams_DSID];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = sub_100301618(v5, v3, v6);

  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_10034A3D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10034A4C8;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v8;
    v13 = v7;
    v14 = v9;
    sub_100005D90(v10, v11);
  }
}

void sub_10034A4C8(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100349D24;
  v41 = sub_100349D34;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100349D24;
  v35 = sub_100349D34;
  v36 = 0;
  v2 = +[ActiveAccountObserver activeAccount];
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      v7 = [v2 hashedDescription];
      *buf = 138413058;
      v44 = v4;
      v45 = 2114;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      v49 = 2114;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Get IAPs for app adam IDs: %@ for account: %{public}@", buf, 0x2Au);
    }

    v8 = *(*(a1 + 32) + 8);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10034A9CC;
    v26 = &unk_1005244F0;
    v29 = &v31;
    v27 = *(a1 + 48);
    v9 = v2;
    v28 = v9;
    v30 = &v37;
    [v8 readUsingSession:&v23];
    if (v32[5])
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = *(a1 + 40);
        v13 = [v32[5] count];
        v14 = [v9 hashedDescription];
        *buf = 138413058;
        v44 = v11;
        v45 = 2114;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Got %li IAPs for account: %@", buf, 0x2Au);
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = *(a1 + 40);
        v21 = v38[5];
        *buf = 138412802;
        v44 = v19;
        v45 = 2114;
        v46 = v20;
        v47 = 2114;
        v48 = v21;
        v22 = v19;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs with error: %{public}@", buf, 0x20u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v44 = v16;
      v45 = 2114;
      v46 = v17;
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Failed to get IAPs for app adam IDs: %{public}@ with no active account DSID error: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

void sub_10034A980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10034A9CC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 ams_DSID];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = sub_100301808(v5, v3, v6);

  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}