uint64_t sub_1002BE584(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      v7 = *(a1 + 8);
      if (!v7 || (v8 = *(v7 + 8), !v8) || (v9 = v8 + (*(a1 + 40) / v8) * v8 - *(a1 + 40), [v5 length] < v9))
      {
        sub_1002BE70C(a1, v6);
LABEL_7:
        LOBYTE(a1) = *(a1 + 32);
        goto LABEL_26;
      }

      v10 = [v6 subdataWithRange:{0, v9}];
      sub_1002BE70C(a1, v10);

      if (sub_1002BE160(a1, a3))
      {
        for (; v9 < [v6 length]; v9 += v15)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v12 = *(v11 + 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = [v6 length];
          if (&v13[-v9] < v12)
          {
            v12 = &v13[-v9];
          }

          v14 = [v6 subdataWithRange:{v9, v12}];
          sub_1002BE70C(a1, v14);

          v15 = *(a1 + 8);
          if (v15)
          {
            v16 = *(v15 + 8);
          }

          else
          {
            v16 = 0;
          }

          if (v12 == v16)
          {
            if (!sub_1002BE160(a1, a3))
            {
              goto LABEL_7;
            }

            v15 = *(a1 + 8);
          }

          if (v15)
          {
            v15 = *(v15 + 8);
          }
        }

        goto LABEL_7;
      }
    }

    LOBYTE(a1) = 0;
  }

LABEL_26:

  return a1 & 1;
}

void sub_1002BE70C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    *(a1 + 40) += [v3 length];
    sub_100382C64(*(a1 + 16), v3);
  }
}

id sub_1002BE7B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 options];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 clientInfo];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 accountMediaType];
      v6 = [v5 isEqualToString:AMSAccountMediaTypeAppStoreSandbox];
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

void sub_1002BE850(void *a1)
{
  if (a1)
  {
    v2 = [a1 options];
    v6 = [v2 copy];

    [v6 setAuthenticationType:1];
    [v6 setAllowServerDialogs:0];
    v3 = [v6 debugReason];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 stringByAppendingFormat:@" %@", @"(forced silent authentication)"];
      [v6 setDebugReason:v5];
    }

    else
    {
      [v6 setDebugReason:@"(forced silent authentication)"];
    }

    [a1 setOptions:v6];
  }
}

void sub_1002BE938(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 options];
    v8 = [v4 copy];

    [v8 setProxyAppBundleID:v3];
    v5 = [v8 debugReason];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 stringByAppendingFormat:@" %@", @"(forced proxied authentication)"];
      [v8 setDebugReason:v7];
    }

    else
    {
      [v8 setDebugReason:@"(forced proxied authentication)"];
    }

    [a1 setOptions:v8];
  }
}

uint64_t sub_1002BEBA4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___TFMemoryUsage__availableBytes;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___TFMemoryUsage__availableBytes;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___TFMemoryUsage__totalBytes;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___TFMemoryUsage__totalBytes;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

char *sub_1002BF180(char *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20 = a7;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = PushTypesTask;
    v17 = objc_msgSendSuper2(&v21, "init");
    a1 = v17;
    if (v17)
    {
      objc_storeStrong((v17 + 74), a3);
      objc_storeStrong((a1 + 50), a4);
      objc_storeStrong((a1 + 82), a5);
      objc_storeStrong((a1 + 98), a6);
      *(a1 + 90) = a2;
      objc_storeStrong((a1 + 42), a7);
    }
  }

  return a1;
}

void sub_1002BF478(uint64_t a1, void *a2)
{
  v21 = a2;
  if (v21)
  {
    objc_storeStrong((*(a1 + 32) + 58), a2);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v5;
    if (v4)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v23 = sub_1002BF7FC;
      v24 = &unk_100521128;
      v25 = v4;
      v26 = v5;
      v7 = v22;
      v8 = objc_alloc_init(AMSURLRequestEncoder);
      v9 = [*(v4 + 58) amsBag];
      [v8 setBag:v9];

      [v8 setAccount:*(v4 + 74)];
      [v8 setRequestEncoding:2];
      v10 = +[NSMutableDictionary dictionary];
      v31 = @"media-kinds";
      v32 = &off_100549428;
      v11 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v10 setObject:v11 forKeyedSubscript:@"parameters"];

      [v10 setObject:@"purchase" forKeyedSubscript:@"notification-type"];
      v12 = +[AMSDevice deviceGUID];
      [v10 setObject:v12 forKeyedSubscript:@"guid"];

      if (*(v4 + 90))
      {
        v13 = off_1005240D8;
      }

      else
      {
        v13 = off_1005240C0;
      }

      v14 = [*(v4 + 58) URLForKey:*v13];
      if (v14)
      {
        v15 = [v8 requestWithMethod:4 URL:v14 parameters:v10];
        [(__CFString *)v15 resultWithCompletion:v7];
      }

      else
      {
        if (*(v4 + 90))
        {
          v16 = @"Remove";
        }

        else
        {
          v16 = @"Add";
        }

        v15 = v16;
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v4 + 42);
          *buf = 138412546;
          v28 = v20;
          v29 = 2112;
          v30 = v15;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Could not find URL to %@ push type", buf, 0x16u);
        }

        v18 = [NSError alloc];
        v19 = [v18 initWithDomain:AMSErrorDomain code:204 userInfo:0];
        (v23)(v7, 0, v19);
      }
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002BF7FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BF8CC;
  block[3] = &unk_10051BB18;
  v8 = v3;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1002BF8CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (v2)
    {
      v4 = v1;
      v5 = sub_10024A6D0();
      v6 = [v5 dataTaskPromiseWithRequest:v4];

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1002BFA30;
      v9[3] = &unk_100521150;
      v9[4] = v2;
      v10 = v3;
      [v6 resultWithCompletion:v9];
    }
  }

  else
  {
    v7 = *(a1 + 48);
    objc_opt_self();
    v8 = ASDErrorWithDescription();
    (*(v7 + 16))(v7, v8);
  }
}

void sub_1002BFA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDErrorWithSafeUserInfo();
LABEL_3:
    v8 = v7;
    goto LABEL_19;
  }

  v9 = [v5 object];

  if (!v9)
  {
    objc_opt_self();
    v7 = ASDErrorWithDescription();
    goto LABEL_3;
  }

  v10 = [v5 object];
  v11 = sub_100237FA0(v10, @"status", 0x7FFFFFFFFFFFFFFFLL);
  if (v11)
  {
    if (v11 == -2)
    {
      v12 = *(a1 + 32);
      if (!v12 || !*(v12 + 90))
      {
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = *(a1 + 32);
          v21 = *(v20 + 42);
          v22 = *(v20 + 98);
          v23 = v19;
          v24 = sub_100229BF8(v22);
          *buf = 138543874;
          v41 = v19;
          v42 = 2112;
          v43 = v21;
          v44 = 2114;
          v45 = v24;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%@] Registering push token: %{public}@", buf, 0x20u);
        }

        v38 = [PushRegisterTask alloc];
        v25 = *(a1 + 32);
        if (v25)
        {
          v26 = *(v25 + 74);
        }

        else
        {
          v26 = 0;
        }

        v27 = *(v25 + 98);
        v28 = *(v25 + 82);
        v29 = *(v25 + 58);
        v30 = *(v25 + 42);
        v31 = v26;
        v32 = sub_1002DB6C4(v38, v31, v27, v28, v29, v30);

        v33 = *(a1 + 32);
        v39 = 0;
        LOBYTE(v28) = [v33 runSubTask:v32 returningError:&v39];
        v15 = v39;
        if (v28)
        {
          v8 = 0;
          *(*(a1 + 32) + 66) = 3;
        }

        else
        {
          v34 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_opt_class();
            v36 = *(*(a1 + 32) + 42);
            *buf = 138543874;
            v41 = v35;
            v42 = 2112;
            v43 = v36;
            v44 = 2114;
            v45 = v15;
            v37 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@][%@] Registration failed with error: %{public}@", buf, 0x20u);
          }

          v8 = ASDErrorWithUnderlyingErrorAndDescription();
        }

        goto LABEL_17;
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (!v13 || !*(v13 + 90))
      {
        v14 = @"add";
        goto LABEL_16;
      }
    }

    v14 = @"remove";
LABEL_16:
    v15 = [NSString stringWithFormat:@"Failed to %@ push types. Server status: %ld", v14, v11];
    v8 = ASDErrorWithDescription();
LABEL_17:

    goto LABEL_18;
  }

  v8 = 0;
LABEL_18:

LABEL_19:
  v16 = *(a1 + 32);
  if (v8)
  {
    v17 = 1;
  }

  else
  {
    if (*(v16 + 66))
    {
      goto LABEL_23;
    }

    v17 = 2;
  }

  *(v16 + 66) = v17;
LABEL_23:
  (*(*(a1 + 40) + 16))();
}

id sub_1002BFFB8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1002BFFF0(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_key");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1002C0028(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"always_preserved");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id sub_1002C0070(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"name");
    v1 = vars8;
  }

  return a1;
}

double sub_1002C00A8(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = sub_10023E0F8(a1, @"preservation_priority");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

void sub_1002C00FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    sub_10023E000(a1, v3, @"always_preserved");
  }
}

void sub_1002C016C(uint64_t a1)
{
  if (a1)
  {
    v2 = [NSNumber numberWithDouble:?];
    sub_10023E000(a1, v2, @"preservation_priority");
  }
}

char *sub_1002C0310(char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PromptForAccountTask;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      v7 = [v5 copy];
      v8 = *(a1 + 42);
      *(a1 + 42) = v7;

      objc_storeStrong((a1 + 66), a3);
      a1[51] = 1;
    }
  }

  return a1;
}

void sub_1002C0738(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = ASDErrorWithSafeUserInfo();
  v7 = *(a1 + 40);
  v8 = v5;
  v16 = v6;
  v9 = v7;
  v10 = v16;
  if (v4)
  {
    if (v8)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        Property = objc_getProperty(v4, v12, 66, 1);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Authenticated successfully", buf, 0xCu);
      }

      objc_storeStrong((v4 + 58), a2);
      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v16;
      if (!v16)
      {
        v10 = ASDErrorWithDescription();
        if (!v10)
        {
LABEL_12:
          v9[2](v9, v10);
          goto LABEL_13;
        }
      }
    }

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_getProperty(v4, v14, 66, 1);
      *buf = 138412546;
      Property = v15;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Error prompting for account: %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void *sub_1002C0A10(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 init];
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_opt_new();
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

id *sub_1002C0A84(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1 init];
    if (a1)
    {
      v4 = [v3 objectForKey:@"attempts"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a1[3] = [v4 integerValue];
      }

      v5 = [v3 objectForKey:@"type"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(a1 + 1, v5);
      }

      v6 = [v3 objectForKey:@"values"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(a1 + 2, v6);
      }
    }
  }

  return a1;
}

void *sub_1002C0B9C(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_new();
    v3 = [NSNumber numberWithUnsignedInteger:v1[3]];
    [v2 setObject:v3 forKey:@"attempts"];

    v4 = v1[1];
    if (v4)
    {
      [v2 setObject:v4 forKey:@"type"];
    }

    v5 = v1[2];
    if (v5)
    {
      [v2 setObject:v5 forKey:@"values"];
    }

    v6 = [v2 copy];

    return v6;
  }

  return result;
}

id sub_1002C0C50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 16) objectForKey:a2];
  v3 = [v2 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return 0;
  }

  return v3;
}

void sub_1002C0CB8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = v7;
    if (!v7)
    {
      v6 = +[NSNull null];
    }

    v7 = v6;
    [*(a1 + 16) setObject:v6 forKey:v5];
  }
}

id sub_1002C0D84()
{
  objc_opt_self();
  if (qword_1005AAB18 != -1)
  {
    dispatch_once(&qword_1005AAB18, &stru_1005211E8);
  }

  v0 = qword_1005AAB10;

  return v0;
}

void sub_1002C0DDC(id a1)
{
  v1 = objc_alloc_init(AppInstallScheduler);
  v2 = qword_1005AAB10;
  qword_1005AAB10 = v1;
}

void sub_1002C1000(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([*(v2 + 72) modifyUsingTransaction:&stru_100521428], (v3 = *(a1 + 32)) != 0))
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = sub_10032C390();
    [v4 addObserver:v3 selector:"_handlePolicyNotificationWithMonitorStateDidChangeNotification:" name:@"CellularStateDidChangeNotification" object:v5];

    v6 = sub_100227468();
    [v4 addObserver:v3 selector:"_handlePolicyNotificationWithMonitorStateDidChangeNotification:" name:@"NetworkStateDidChangeNotification" object:v6];

    v7 = sub_10029387C();
    [v4 addObserver:v3 selector:"_handlePolicyNotificationWithMonitorStateDidChangeNotification:" name:@"PowerStateDidChangeNotification" object:v7];

    v8 = sub_1003E2800();
    [v4 addObserver:v3 selector:"_handlePolicyNotificationWithMonitorStateDidChangeNotification:" name:@"ThermalPressureStateDidChangeNotification" object:v8];

    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  sub_1002C11E0(v9);
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = sub_100006B78();
    [v11 addObserver:v10 selector:"_handleDeviceStateDidChangeNotification:" name:@"DeviceStateDidChangeNotification" object:v12];

    v13 = *(a1 + 32);
  }

  else
  {
    v13 = 0;
  }

  sub_100006990(v13);
}

void sub_1002C11E0(uint64_t a1)
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = sub_1002C1DA0;
    v10 = sub_1002C1DB0;
    v11 = 0;
    v1 = *(a1 + 72);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002C46F8;
    v5[3] = &unk_10051CCC8;
    v5[4] = &v6;
    [v1 readUsingSession:v5];
    if (v7[5])
    {
      v2 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v7[5];
        *buf = 138543362;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling next optimal download for %{public}@", buf, 0xCu);
      }

      v4 = sub_1001DA8BC();
      sub_1001DBB6C(v4, 10, @"OptimalDownloadWindow", v7[5], @"Wait for optimal download window");
    }

    else
    {
      v4 = sub_1001DA8BC();
      sub_1001DC8D4(v4, 10);
    }

    _Block_object_dispose(&v6, 8);
  }
}

void sub_1002C1398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002C13BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = +[BagService appstoredService];
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002C1464;
    v6[3] = &unk_100521210;
    v6[4] = a1;
    v6[5] = a2;
    [v4 bagOnQueue:v5 completionHandler:v6];
  }
}

void sub_1002C1474(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
    v6 = a3;
    dispatch_assert_queue_V2(v5);
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_10038316C(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Polling scheduler: [%{public}@]", &buf, 0xCu);
    }

    memset(v58, 0, sizeof(v58));
    v59 = 0u;
    v60 = 0u;
    v9 = sub_100284CD4(*(a1 + 64));
    v10 = [v9 countByEnumeratingWithState:v58 objects:&buf count:16];
    if (v10)
    {
      v11 = **&v58[16];
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (**&v58[16] != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*&v58[8] + 8 * i);
          objc_opt_class();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 isCancelled] & 1) == 0)
          {
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *v43 = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Skipping system app bootstrap - pending task already exists", v43, 2u);
            }

            goto LABEL_22;
          }
        }

        v10 = [v9 countByEnumeratingWithState:v58 objects:&buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    *v43 = 0;
    v44 = v43;
    v45 = 0x3032000000;
    v46 = sub_1002C1DA0;
    v47 = sub_1002C1DB0;
    v48 = 0;
    v14 = *(a1 + 72);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1002C1DB8;
    v42[3] = &unk_100521260;
    v42[4] = v43;
    sub_1003C3B20(v14, v42);
    v15 = *(v44 + 5);
    if (v15)
    {
      objc_initWeak(&location, v15);
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_1002C1F90;
      v38 = &unk_100521310;
      objc_copyWeak(&v40, &location);
      v39 = a1;
      [*(v44 + 5) setCompletionBlock:&v35];
      v16 = *(a1 + 64);
      if (v16)
      {
        [*(v16 + 8) addOperation:{*(v44 + 5), v35, v36, v37, v38}];
      }

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      sub_1002C2624(a1);
    }

    _Block_object_dispose(v43, 8);

LABEL_22:
    v18 = v6;
    v19 = objc_alloc_init(NSMutableArray);
    v20 = sub_1003E2800();
    v21 = sub_1003E2B88(v20);

    if (v21)
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Limiting maximum active count due to thermal pressure", &buf, 2u);
      }

      v23 = 1;
    }

    else
    {
      v23 = *(a1 + 88);
    }

    v24 = objc_opt_new();
    v25 = *(a1 + 72);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v50 = sub_1002C34EC;
    v51 = &unk_1005213E8;
    v56 = v23;
    v26 = v18;
    v52 = v26;
    v53 = a1;
    v54 = v24;
    v27 = v19;
    v55 = v27;
    v57 = v21;
    v28 = v24;
    sub_1003C3B20(v25, &buf);
    LOBYTE(v24) = [v27 count] == 0;
    v29 = ASDLogHandleForCategory();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v30)
      {
        *v58 = 0;
        v32 = "Polling completed, started 0 installations";
        v33 = v29;
        v34 = 2;
        goto LABEL_32;
      }
    }

    else if (v30)
    {
      v31 = [v27 count];
      *v58 = 134218242;
      *&v58[4] = v31;
      *&v58[12] = 2114;
      *&v58[14] = v27;
      v32 = "Polling completed, started %lu installation(s): %{public}@";
      v33 = v29;
      v34 = 22;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, v58, v34);
    }
  }
}

void sub_1002C19B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1002C19F0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C1A6C;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void *sub_1002C1A74(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = v1[9];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1002C1B88;
    v9 = &unk_10051FC80;
    v10 = v2;
    v4 = v2;
    [v3 readUsingSession:&v6];
    v11 = @"items";
    v12 = v4;
    v1 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1, v6, v7, v8, v9];
  }

  return v1;
}

void sub_1002C1B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1003DAC60();
  v6 = sub_1002D3F5C(AppInstallEntity, v4, v5);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002C1C90;
  v8[3] = &unk_10051CA10;
  v9 = v3;
  v10 = *(a1 + 32);
  v7 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v8];
}

void sub_1002C1C90(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v11 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = *(a1 + 40);
  v7 = sub_10029430C(v11);
  v8 = [(SQLiteEntity *)v11 valueForProperty:@"phase"];
  v9 = [(SQLiteEntity *)v11 valueForProperty:@"coordinator_id"];
  v10 = [NSString stringWithFormat:@"%@ phase: %@ coordinator: %@", v7, v8, v9];
  [v6 addObject:v10];
}

uint64_t sub_1002C1DA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002C1DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002C1F6C;
  v12[3] = &unk_100521238;
  v4 = objc_alloc_init(NSMutableArray);
  v13 = v4;
  sub_1002A3FA0(v3, 1, v12);

  v5 = [v4 count];
  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 count];
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Queuing %lu system app(s) for bootstrap", buf, 0xCu);
    }

    v9 = sub_1001C1850([SystemAppBootstrapTask alloc], v4);
    v10 = *(*(a1 + 32) + 8);
    v7 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping system app bootstrap - no installations pending", buf, 2u);
  }

  return 1;
}

void sub_1002C1F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[BagService appstoredService];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C2058;
  v7[3] = &unk_10051C008;
  v8 = WeakRetained;
  v9 = v4;
  v6 = WeakRetained;
  [v3 bagOnQueue:v5 completionHandler:v7];
}

void sub_1002C2058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && (v4[24] & 1) != 0)
  {
    v5 = *(*(a1 + 40) + 72);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002C2384;
    v24[3] = &unk_1005212E8;
    v6 = &v25;
    v25 = v4;
    sub_1003C3B20(v5, v24);
    sub_1002C2624(*(a1 + 40));
    sub_1002C1474(*(a1 + 40), 4, v3);
  }

  else
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 32, 1);
      }

      v21 = Property;
      LODWORD(handler) = 138543362;
      *(&handler + 4) = v21;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Bootstrapping system applications will be reset after error: %{public}@", &handler, 0xCu);
    }

    v9 = *(*(a1 + 40) + 72);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002C268C;
    v22[3] = &unk_1005212E8;
    v6 = &v23;
    v23 = *(a1 + 32);
    sub_1003C3B20(v9, v22);
    v10 = *(a1 + 40);
    if (v10)
    {
      dispatch_assert_queue_V2(*(v10 + 8));
      if (!*(v10 + 40))
      {
        v11 = *(v10 + 48);
        if (!v11)
        {
          v12 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
          v13 = *(v10 + 48);
          *(v10 + 48) = v12;

          v11 = *(v10 + 48);
        }

        [v11 timeIntervalSinceNow];
        if (v14 > 0.0)
        {
          v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v10 + 8));
          v16 = *(v10 + 40);
          *(v10 + 40) = v15;

          v17 = *(v10 + 40);
          v18 = dispatch_time(0, 300000000000);
          dispatch_source_set_timer(v17, v18, 0x45D964B800uLL, 0xDF8475800uLL);
          objc_initWeak(&location, v10);
          v19 = *(v10 + 40);
          *&handler = _NSConcreteStackBlock;
          *(&handler + 1) = 3221225472;
          v28 = sub_1002C49A4;
          v29 = &unk_100521310;
          objc_copyWeak(v31, &location);
          v30 = v10;
          dispatch_source_set_event_handler(v19, &handler);
          dispatch_resume(*(v10 + 40));
          objc_destroyWeak(v31);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

uint64_t sub_1002C2384(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v6 = Property;
  v7 = sub_10036FF4C(v6, &stru_1005212A0);
  v8 = sub_100208720(v4, v7);

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 48, 1);
  }

  v11 = v10;
  v12 = sub_10036FF4C(v11, &stru_1005212C0);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = sub_10023E0F8(v17, @"failure_error");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:0];
        }

        else
        {
          ASDErrorWithDescription();
        }
        v19 = ;
        sub_1002057B0(v4, [v17 databaseID], v19, 1);
      }

      v14 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  return 1;
}

void sub_1002C2624(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    v3 = *(a1 + 40);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }
}

uint64_t sub_1002C268C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  sub_1002A3CC4(v4, 1, v6);

  return 1;
}

void sub_1002C276C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Device unlock state did change", v3, 2u);
  }

  sub_100006990(*(a1 + 32));
}

void sub_1002C27E4(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 8));
  if (v4)
  {
    v5 = *(a1 + 16);
    if (!v5 || ([v5 timeIntervalSinceDate:v4], v6 >= 0.0))
    {
      objc_storeStrong((a1 + 16), a2);
      v7 = *(a1 + 24);
      if (v7)
      {
        dispatch_source_cancel(v7);
      }

      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Starting flap timer to fire at: %{public}@", buf, 0xCu);
      }

      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 8));
      v10 = *(a1 + 24);
      *(a1 + 24) = v9;

      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      if (v11)
      {
        [v11 timeIntervalSinceNow];
        v14 = dispatch_time(0, 1000000000 * v13);
      }

      else
      {
        v14 = 0;
      }

      dispatch_source_set_timer(v12, v14, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
      v15 = *(a1 + 24);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002C29B0;
      handler[3] = &unk_10051AF98;
      handler[4] = a1;
      dispatch_source_set_event_handler(v15, handler);
      dispatch_resume(*(a1 + 24));
    }
  }
}

void sub_1002C29B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = +[BagService appstoredService];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C2A58;
  v7[3] = &unk_10051BCE0;
  v7[4] = v5;
  [v4 bagOnQueue:v6 completionHandler:v7];
}

void sub_1002C2BD8(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.AppInstallScheduler.monitorStateDidChange"];
  v3 = *(*(a1 + 32) + 32);
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignoring policy state change notifications", &buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = [*(a1 + 40) name];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Monitor state did change: %{public}@", &buf, 0xCu);
    }

    v7 = [*(a1 + 40) name];
    v8 = [v7 isEqualToString:@"ThermalPressureStateDidChangeNotification"];

    if (v8)
    {
      v9 = sub_1003E2800();
      v10 = sub_1003E2B88(v9);

      if (v10)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v34 = 0x3032000000;
        v35 = sub_1002C1DA0;
        v36 = sub_1002C1DB0;
        v37 = 0;
        v11 = *(*(a1 + 32) + 72);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1002C2FE8;
        v28[3] = &unk_100521260;
        v28[4] = &buf;
        sub_1003C3B20(v11, v28);
        if ([*(*(&buf + 1) + 40) count])
        {
          v12 = sub_10036FDEC(*(*(&buf + 1) + 40), &stru_100521350);
          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v23 = [v12 count];
            *v29 = 134218242;
            v30 = v23;
            v31 = 2114;
            v32 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Jettisoned %lu installation(s) due to thermal pressure: %{public}@", v29, 0x16u);
          }
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v14 = [*(a1 + 40) name];
      v15 = [v14 isEqualToString:@"NetworkStateDidChangeNotification"];

      if (v15)
      {
        v16 = sub_100227468();
        v17 = [v16 isConstrained];
        v18 = [v16 isExpensive];
        v19 = *(*(a1 + 32) + 72);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1002C303C;
        v25[3] = &unk_100521398;
        v26 = v18;
        v27 = v17;
        [v19 modifyUsingTransaction:v25];
      }
    }

    v20 = +[BagService appstoredService];
    v21 = *(a1 + 32);
    v22 = *(v21 + 8);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002C34DC;
    v24[3] = &unk_10051BCE0;
    v24[4] = v21;
    [v20 bagOnQueue:v22 completionHandler:v24];
  }
}

uint64_t sub_1002C2FE8(uint64_t a1, void *a2)
{
  v3 = sub_1002A4320(a2, 1uLL, 4uLL);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t sub_1002C303C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100547A40];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppInstallEntity, v5, v4);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002C3150;
  v9[3] = &unk_100521378;
  v10 = v3;
  v11 = *(a1 + 32);
  v7 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v9];

  return 1;
}

void sub_1002C3150(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = sub_100294554(v6);
  v8 = v7;
  if (*(a1 + 40) != 1 || ((v9 = sub_1003B67D4(v7), v9 <= 4) ? (v10 = ((1 << v9) & 0x15) == 0) : (v10 = 1), v10))
  {
    v13 = 1;
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10029430C(v6);
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Installation remaining paused for expensive network", &v26, 0xCu);
    }

    v13 = 0;
  }

  if (*(a1 + 41) == 1)
  {
    v14 = sub_1003B6718(v8);
    if (v14 <= 4 && ((1 << v14) & 0x15) != 0)
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_10029430C(v6);
        v26 = 138412290;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Installation remaining paused for low data network", &v26, 0xCu);
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  if (v13)
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_10029430C(v6);
      v26 = 138412290;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Resuming installation paused for policy", &v26, 0xCu);
    }

    [(SQLiteEntity *)v6 setValue:&off_100547A58 forProperty:@"phase"];
    v16 = sub_1003403A0(v6, @"coordinator_id");
    if (v16)
    {
      v20 = sub_100340328(v6, @"bundle_id");
      v22 = sub_100249094(lib_IXAppInstallCoordinatorTag, v16, v20);
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v21, 24, 1);
      }

      v24 = Property;
      sub_100256A94(v24, v22);

      sub_1002083F0(*(a1 + 32), [(SQLiteEntity *)v6 persistentID]);
    }

    else
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10029430C(v6);
        v26 = 138412290;
        v27 = v25;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%@] Unable to resume coordinator, no identifier was recorded", &v26, 0xCu);
      }
    }

    goto LABEL_27;
  }

LABEL_28:
}

uint64_t sub_1002C34EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1002C3A5C;
  v50[3] = &unk_1005213C0;
  v51 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v52 = v5;
  v53 = v6;
  v54 = v7;
  v37 = v51;
  self = sub_1002A4A40(v51, v4, v50);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v60 count:16];
  v39 = a1;
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        v14 = [*(a1 + 48) objectForKeyedSubscript:{v13, v37}];
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [v14 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v57 = v13;
          v58 = 2114;
          v59 = v16;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[com.apple.appstored.Scheduler] Denied start: %{public}@ - %{public}@ ", buf, 0x16u);

          a1 = v39;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v10);
  }

  v41 = objc_alloc_init(NSMutableOrderedSet);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  Property = self;
  if (self)
  {
    Property = objc_getProperty(self, v17, 16, 1);
  }

  obj = Property;
  v19 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = sub_100408EB0(v23);
        if (v24)
        {
          [*(a1 + 56) addObject:v24];
        }

        v25 = sub_10023E590(v23, @"last_start_date");
        if (!v25)
        {
          v26 = *(*(a1 + 40) + 56);
          v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 databaseID]);
          [v26 setObject:0 forKeyedSubscript:v27];

          a1 = v39;
        }

        v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 databaseID]);
        [v41 addObject:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v20);
  }

  v29 = v37;
  if ([v41 count])
  {
    if (v37)
    {
      WeakRetained = objc_loadWeakRetained(v37 + 2);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained startInstallIDs:v41 transaction:{v37, v37}];
  }

  if (!self || !self[1] || *(*(a1 + 40) + 32) == 1 && *(a1 + 72) == 1)
  {
    v31 = [SQLiteContainsPredicate containsPredicateWithProperty:@"phase" values:&off_100549440, v37];
    v32 = [v29 connection];
    v33 = sub_1002D4220(AppInstallEntity, @"ROWID", v31, v32);

    if (v33 && ![v33 isEqualToNumber:&off_100547A70])
    {
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v57 = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ waiting installation(s), observing monitor state change notifications", buf, 0xCu);
      }

      v35 = 0;
    }

    else
    {
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No waiting installations, ignoring monitor state change notifications", buf, 2u);
      }

      v35 = 1;
    }

    *(*(v39 + 40) + 32) = v35;
  }

  return 1;
}

uint64_t sub_1002C3A5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v59[0] = @"bytes_total";
  v59[1] = @"initial_odr_size";
  v59[2] = @"background_asset_metadata";
  v4 = [NSArray arrayWithObjects:v59 count:3];
  v5 = sub_100408F24(v3);
  v6 = sub_1003B67D4(v5);
  if ((sub_1003B6718(v5) & v6) == 0)
  {
    v7 = [*(a1 + 32) connection];
    v8 = sub_1004093BC(v3, v7, v4);

    v9 = sub_100409474(v3, v8);
    v10 = sub_1003B67D4(v5);
    if (!v10)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v50 = sub_100408EB0(v3);
        *buf = 138412290;
        v61 = v50;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@]: Expensive network not evaluated, repairing...", buf, 0xCu);
      }

      v12 = sub_10032C390();
      v13 = sub_10032C7CC(v12);
      if (!v13)
      {
        v13 = +[ASDCellularIdentity nullIdentity];
      }

      v14 = sub_10020FCA4(ExpensiveNetworkEvaluator, v13);
      v10 = sub_10020FD94(v14, v9, *(a1 + 40));
    }

    v15 = sub_1003B6718(v5);
    if (v15)
    {
      if (v5)
      {
LABEL_10:
        sub_1003B6820(v5, v10);
        sub_1003B6764(v5, v15);
        sub_100408FB4(v3, v5);
        v16 = [AppInstallEntity alloc];
        v17 = [(EvaluatorDownload *)v3 databaseID];
        v18 = [*(a1 + 32) connection];
        v19 = [(SQLiteEntity *)v16 initWithPersistentID:v17 onConnection:v18];

        sub_1002945E4(v19, v5);
        goto LABEL_11;
      }
    }

    else
    {
      v37 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v51 = sub_100408EB0(v3);
        *buf = 138412290;
        v61 = v51;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "[%@]: Low data network not evaluated, repairing...", buf, 0xCu);
      }

      v38 = objc_alloc_init(LowDataNetworkEvaluator);
      v15 = sub_100220028(v38, v9, *(a1 + 40));

      if (v5)
      {
        goto LABEL_10;
      }
    }

    v5 = sub_1003B6560();
    goto LABEL_10;
  }

LABEL_11:
  v20 = *(a1 + 48);
  v21 = v3;
  v22 = v21;
  if (!v20)
  {
    v33 = 1;
    v27 = v21;
    goto LABEL_25;
  }

  v23 = sub_100408EB0(v21);
  v24 = sub_100408F24(v22);
  v25 = v24;
  if (!v24)
  {
    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v23;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@]: Allowing start, no policy set, allowing install to start unconditionally", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_18;
  }

  if ((sub_1003B6BE8(v24) & 1) == 0)
  {
    if (sub_1003B6AE0(v25))
    {
      v26 = sub_100227468();
      if (![v26 isConnected])
      {
        v20 = @"no network available";
        goto LABEL_18;
      }

      v35 = sub_1003B6890(v25);
      if ([v26 isExpensive])
      {
        v36 = sub_1003B67D4(v25);
        if (v36 == 4)
        {
          v20 = @"implicitly denied expensive network by evaluator";
          goto LABEL_18;
        }

        if (v36 == 2)
        {
          v20 = @"explicitly denied expensive network by user";
LABEL_18:

          goto LABEL_19;
        }

        if ((v36 & 0xFFFFFFFFFFFFFFFDLL) == 1 && (sub_1002C4880([v26 interfaceType], v35) & 1) == 0)
        {
          v39 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v23;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[%@]: Expensive network allowed, overriding interface mask", buf, 0xCu);
          }

          v35 = 62;
        }
      }

      if ([v26 isConstrained])
      {
        v40 = sub_1003B6718(v25);
        if (v40 == 4)
        {
          v20 = @"implicitly denied low data by evaluator";
          goto LABEL_18;
        }

        if (v40 == 2)
        {
          v20 = @"explicitly denied low data by user";
          goto LABEL_18;
        }
      }

      if (!v35)
      {
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v61 = v23;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@]: Interface mask unspecified, defaulting to always inexpensive", buf, 0xCu);
        }

        v35 = 60;
      }

      if (!sub_1002C4880([v26 interfaceType], v35))
      {
        v20 = @"no matching network interface";
        goto LABEL_18;
      }
    }

    if (sub_1003B6B2C(v25))
    {
      v26 = sub_10029387C();
      if (!sub_100293E1C(v26))
      {
        v20 = @"no power available";
        goto LABEL_18;
      }

      if (sub_100293D50(v26))
      {
        v20 = @"low power mode enabled";
        goto LABEL_18;
      }
    }

    if (sub_1003B6A94(v25))
    {
      v26 = sub_100006B78();
      if (!sub_10023CFD0(v26))
      {
        v20 = @"pending data migration";
        goto LABEL_18;
      }

      if (!sub_10023D5E0(v26))
      {
        v20 = @"pending setup assistant";
        goto LABEL_18;
      }
    }

    if (sub_10023E604(v22, @"update_type") == 1)
    {
      v42 = sub_1003B68DC(v25);
      v26 = v42;
      if (v42 && !sub_1003BBB20(v42))
      {
        v20 = @"pending optimal download window";
        goto LABEL_18;
      }
    }

    v26 = sub_10023E590(v22, @"last_start_date");
    if (v26)
    {
      v58 = v4;
      length = v20[1].length;
      v44 = [NSNumber numberWithLongLong:[(EvaluatorDownload *)v22 databaseID]];
      v45 = [length objectForKeyedSubscript:v44];

      if (v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = &off_100547A70;
      }

      v47 = v46;
      v48 = [v46 unsignedIntegerValue];
      objc_opt_self();
      if (v48 >= 0x14)
      {
        v49 = 10.0;
        if (v48 >= 0x32)
        {
          if (v48 >= 0x64)
          {
            v49 = dbl_10044BC00[v48 < 0x96];
          }

          else
          {
            v49 = 60.0;
          }
        }

        v52 = [v26 dateByAddingTimeInterval:v49];
        [v52 timeIntervalSinceNow];
        if (v53 > 0.0)
        {
          sub_1002C27E4(v20, v52);
          v20 = [NSString stringWithFormat:@"restarting too fast - delaying %.0fs", *&v49];

          v57 = v47;
          v4 = v58;
LABEL_89:

          goto LABEL_18;
        }
      }

      v54 = [NSNumber numberWithUnsignedInteger:[v47 unsignedIntegerValue]+ 1];
      v55 = v20[1].length;
      v56 = [NSNumber numberWithLongLong:[(EvaluatorDownload *)v22 databaseID]];
      [v55 setObject:v54 forKeyedSubscript:v56];

      v4 = v58;
    }

    v57 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v23;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%@]: Allowing start, all policy conditions were met", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_89;
  }

  v20 = @"pending termination";
LABEL_19:

  if (!v20)
  {
    v33 = 1;
    goto LABEL_27;
  }

  v27 = [*(a1 + 56) objectForKeyedSubscript:v20];
  if (!v27)
  {
    v27 = objc_opt_new();
  }

  v28 = sub_100408EB0(v22);

  if (v28)
  {
    v29 = sub_100408EB0(v22);
    v30 = [v29 description];
    v31 = [v30 componentsSeparatedByString:@"/"];
    v32 = [v31 firstObject];

    [v27 addObject:v32];
  }

  [*(a1 + 56) setObject:v27 forKeyedSubscript:v20];
  v33 = 0;
LABEL_25:

LABEL_27:
  return v33;
}

BOOL sub_1002C43CC(id a1, AppInstallsDatabaseTransaction *a2)
{
  v2 = a2;
  v3 = [(AppInstallsDatabaseSession *)v2 connection];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = sub_1003DBBCC(AppInstallPredicates, 1);
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002C45E0;
  v12[3] = &unk_10051CCA0;
  v6 = v3;
  v13 = v6;
  v14 = &v15;
  [v5 enumeratePersistentIDsUsingBlock:v12];
  if (v16[3])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = v16[3];
      *buf = 134217984;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Requesting scheduler poll for %lu reset installation(s) after daemon start", buf, 0xCu);
    }

    if (v2)
    {
      v9 = objc_getProperty(v2, v8, 24, 1);
      if (v9)
      {
        v9[17] |= 0x8000uLL;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  _Block_object_dispose(&v15, 8);
  return 1;
}

void sub_1002C45B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002C45E0(uint64_t a1, uint64_t a2)
{
  v3 = [(SQLiteEntity *)[AppInstallEntity alloc] initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = sub_10029430C(v3);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Resetting bootstrap phase after daemon restart", &v6, 0xCu);
  }

  [(SQLiteEntity *)v3 setValue:&off_100547A88 forProperty:@"bootstrapped"];
  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_1002C46F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteNullPredicate isNotNullPredicateWithProperty:@"optimal_download_start"];
  v14[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100547A58];
  v14[1] = v5;
  v6 = [NSArray arrayWithObjects:v14 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [v3 connection];

  v9 = sub_1002D453C(AppInstallEntity, @"optimal_download_start", v7, v8);

  if (v9)
  {
    [v9 doubleValue];
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10 + 10.0];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

uint64_t sub_1002C4880(int64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return (a2 >> 3) & 1;
    }

    if (a1 == 1)
    {
      return (a2 >> 4) & 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return (a2 >> 2) & 1;
      case 3:
        return (a2 >> 5) & 1;
      case 2:
        return (a2 >> 1) & 1;
    }
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = sub_1002C4B80(a1);
    v6 = 138543362;
    v7 = v5;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Returning no match, encountered new interface type: %{public}@", &v6, 0xCu);
  }

  return 0;
}

void sub_1002C49A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Poll timer duration exceeded 1 hour - halting timer", buf, 2u);
      }

      dispatch_assert_queue_V2(v3[1]);
      v6 = v3[5];
      if (v6)
      {
        dispatch_source_cancel(v6);
        v7 = v3[5];
        v3[5] = 0;
      }
    }

    v8 = +[BagService appstoredService];
    v9 = *(*(a1 + 32) + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002C4AE4;
    v10[3] = &unk_10051BCE0;
    v11 = v3;
    [v8 bagOnQueue:v9 completionHandler:v10];
  }
}

__CFString *sub_1002C4B80(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [[NSString alloc] initWithFormat:@"unknown (%ld)", a1];
  }

  else
  {
    v1 = off_100521448[a1];
  }

  return v1;
}

id sub_1002C4C3C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  objc_opt_self();
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 assetType];
  v7 = [v6 isEqualToString:@"delta-package"];

  if (v7)
  {
    v8 = &off_100547AA0;
  }

  else
  {
    v9 = [v4 assetType];
    v10 = [v9 isEqualToString:@"media"];

    if (!v10)
    {
      v13 = 0;
      goto LABEL_35;
    }

    v8 = &off_100547AB8;
  }

  [v5 setObject:v8 forKeyedSubscript:@"package_type"];
  v11 = [v4 assetURL];
  v12 = sub_10026699C(v11);
  [v5 setObject:v12 forKeyedSubscript:@"package_url"];

  v13 = [v5 objectForKeyedSubscript:@"package_url"];

  if (!v13)
  {
    goto LABEL_35;
  }

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLocallyCacheable]);
  [v5 setObject:v14 forKeyedSubscript:@"locate_asset_cache"];

  v15 = [v4 variantID];
  [v5 setObject:v15 forKeyedSubscript:@"variant_id"];

  v16 = [v4 bytesTotal];
  [v5 setObject:v16 forKeyedSubscript:@"bytes_total"];

  v17 = [v4 initialODRSize];
  [v5 setObject:v17 forKeyedSubscript:@"initial_odr_size"];

  v18 = [v4 sinfs];

  if (v18)
  {
    v19 = [v4 sinfs];
    v20 = [NSPropertyListSerialization propertyListWithData:v19 options:0 format:0 error:0];

    if ([v20 count])
    {
      v21 = sub_1001C5944([StoreDRM alloc], v20);
      v22 = v21;
      if (v21)
      {
        v23 = sub_1001C5A34(v21, @"sinf");
        [v5 setObject:v23 forKeyedSubscript:@"sinf"];

        v24 = sub_1001C5A34(v22, @"dpInfo");
        [v5 setObject:v24 forKeyedSubscript:@"dp_info"];
      }
    }
  }

  v25 = [v4 dPInfo];

  if (v25)
  {
    v26 = [v4 dPInfo];
    [v5 setObject:v26 forKeyedSubscript:@"dp_info"];
  }

  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isZipStreamable]);
  [v5 setObject:v27 forKeyedSubscript:@"streaming_zip"];

  v28 = [v4 numberOfBytesToHash];
  [v5 setObject:v28 forKeyedSubscript:@"hash_size"];

  v29 = [v4 numberOfBytesToHash];
  v30 = [v29 unsignedLongLongValue];

  if (v30)
  {
    v31 = [v4 hashArrayData];

    if (v31)
    {
      v32 = [v4 hashArrayData];
      v31 = [NSPropertyListSerialization propertyListWithData:v32 options:0 format:0 error:0];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v31 count])
    {
      v40 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "We did not receive any hash data, skipping hash verification", v44, 2u);
      }

      [v5 setObject:&off_100547AD0 forKeyedSubscript:@"hash_size"];
      goto LABEL_33;
    }

    [v5 setObject:v31 forKeyedSubscript:@"hash_array"];
    v33 = [v4 hashType];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 integerValue];
      if (v35 == 1)
      {
        v41 = &off_100547AE8;
        goto LABEL_32;
      }

      if (!v35)
      {
LABEL_30:
        v41 = &off_100547AA0;
LABEL_32:
        [v5 setObject:v41 forKeyedSubscript:{@"hash_type", *v44}];

LABEL_33:
        goto LABEL_34;
      }

      v36 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v44 = 138543362;
        *&v44[4] = v34;
        v37 = "Guessing MD5 hashing type - but we received an unknown value (%{public}@)";
        v38 = v36;
        v39 = 12;
LABEL_42:
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v37, v44, v39);
      }
    }

    else
    {
      v36 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        v37 = "Guessing MD5 hashing type - but we received no value";
        v38 = v36;
        v39 = 2;
        goto LABEL_42;
      }
    }

    goto LABEL_30;
  }

LABEL_34:
  v13 = v5;
LABEL_35:

  if (v13)
  {
    v42 = [[v3 alloc] initWithPropertyValues:v13];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

id sub_1002C5248(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSNumberFormatter);
    [v2 setNumberStyle:1];
    v1 = [v2 numberFromString:v1];
  }

  return v1;
}

id sub_1002C52B0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NSString stringWithFormat:@"http://%@", a1];
    v3 = sub_1002C5338(v2);
    v4 = v3;
    if (v3)
    {
      v1 = [v3 isEqualToString:v1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id sub_1002C5338(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSURL URLWithString:a1];
    v2 = v1;
    if (!v1)
    {
      v3 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[SKAdNetwork: Not a valid URL.", buf, 2u);
      }

      v9 = 0;
      goto LABEL_36;
    }

    v3 = [v1 host];
    v4 = [v3 componentsSeparatedByString:@"."];
    v5 = [NSMutableArray arrayWithArray:v4];

    v6 = [v5 firstObject];
    v7 = [v6 isEqualToString:@"www"];

    if (v7)
    {
      [v5 removeObjectAtIndex:0];
    }

    v8 = [v5 count];
    if (v3 && v8)
    {
      if ([v5 count] == 1)
      {
        v9 = 0;
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v27 + 1) + 8 * i) isEqualToString:&stru_100529300])
            {
              v9 = 0;
              v10 = v11;
              goto LABEL_34;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = objc_alloc_init(NSMutableString);
      v16 = [v11 count];
      v17 = 0;
      v18 = 1;
      do
      {
        if (!v18)
        {
          break;
        }

        v19 = [v11 objectAtIndex:v16 - 1];
        [v10 insertString:v19 atIndex:0];

        [v10 insertString:@"." atIndex:0];
        IsDomainTopLevel = _CFHostIsDomainTopLevel();
        v18 = IsDomainTopLevel != 0;
        v17 |= IsDomainTopLevel != 0;
        if (IsDomainTopLevel)
        {
          --v16;
        }
      }

      while (v16);
      if (v17)
      {
        v21 = [v11 count];
        v22 = v21 - v16;
        v23 = [v11 subarrayWithRange:v16, v21 - v16];
        v24 = [v23 componentsJoinedByString:@"."];

        [v11 removeObjectsInRange:v16, v22];
        v25 = [v11 lastObject];
        if (v25)
        {
          v9 = [NSString stringWithFormat:@"%@.%@", v25, v24, v27];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[SKAdNetwork: URL does not have a valid host.", buf, 2u);
      }
    }

    v9 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v9 = 0;
LABEL_37:

  return v9;
}

id sub_1002C56F4(void *a1)
{
  if (a1)
  {
    v1 = [a1 dataUsingEncoding:4];
    v2 = sub_100229BF8(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1002C5750(id a1, unint64_t a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    if ([a1 length] <= a2)
    {
      v7 = v3;
    }

    else
    {
      if (a3)
      {
        v6 = [v3 substringToIndex:a2];
        v3 = [NSString stringWithFormat:@"%@...", v6];

        goto LABEL_8;
      }

      v7 = [v3 substringToIndex:a2];
    }

    v3 = v7;
  }

LABEL_8:

  return v3;
}

id sub_1002C5810(void *a1, unint64_t a2)
{
  if (a1)
  {
    v4 = +[NSMutableCharacterSet alphanumericCharacterSet];
    v5 = [NSCharacterSet characterSetWithCharactersInString:@".()-"];
    [v4 formUnionWithCharacterSet:v5];

    v6 = [v4 invertedSet];
    v7 = [a1 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 componentsJoinedByString:&stru_100529300];

    v9 = sub_1002C5750(v8, a2, 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1002C5904(void *a1)
{
  if (a1)
  {
    v1 = [a1 componentsSeparatedByString:@"-"];
    v17 = objc_opt_new();
    v16 = objc_opt_new();
    v2 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@":", v16}];
          if ([v8 count] == 2)
          {
            v9 = [v8 objectAtIndexedSubscript:0];
            v10 = [v2 numberFromString:v9];

            v11 = [v8 objectAtIndexedSubscript:1];
            v12 = [v2 numberFromString:v11];

            if (v10)
            {
              v13 = v12 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              [v17 addObject:v10];
              [v16 addObject:v12];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v22[0] = v17;
    v22[1] = v16;
    v14 = [NSArray arrayWithObjects:v22 count:2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

XPCNotificationSource *sub_1002C5C5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  objc_opt_self();
  v10 = [XPCNotificationSource alloc];
  v11 = a3;
  v12 = a4;
  if (v10)
  {
    v13 = v8;
    v14 = v9;
    v21.receiver = v10;
    v21.super_class = XPCNotificationSource;
    v15 = objc_msgSendSuper2(&v21, "init");
    v10 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_applicableEntitlement.name, a3);
      objc_storeStrong(&v10->_applicableEntitlement.legacyName, a4);
      v16 = [v13 copy];
      name = v10->_name;
      v10->_name = v16;

      v18 = [v14 copy];
      mergeHandler = v10->_mergeHandler;
      v10->_mergeHandler = v18;
    }
  }

  else
  {
  }

  return v10;
}

void sub_1002C5E18(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[AMSKeybag sharedInstance];
  v7 = 0;
  v4 = [v3 importKeybagWithData:v2 error:&v7];

  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to import keybag data for account error: %{public}@", buf, 0xCu);
    }
  }
}

id sub_1002C5F20(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[AMSKeybag sharedInstance];
  v6 = [v4 ams_DSID];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_100547B00;
  }

  v12 = 0;
  v8 = [v5 keybagSyncDataWithAccountID:v7 transactionType:a3 error:&v12];
  v9 = v12;

  if (!v8)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to obtain keybay data for account error: %{public}@", buf, 0xCu);
    }
  }

  return v8;
}

id sub_1002C6074(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  objc_opt_self();
  v7 = +[AMSKeybag sharedInstance];
  v8 = [v6 ams_DSID];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &off_100547B00;
  }

  v16 = 0;
  v10 = [v7 keybagSyncDataWithAccountID:v9 transactionType:a3 error:&v16];
  v11 = v16;

  if (!v10)
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to obtain keybag data for account error: %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      v13 = v11;
      *a4 = v11;
    }
  }

  v14 = [v10 base64EncodedStringWithOptions:0];

  return v14;
}

id sub_1002C61F4(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [v7 host];

  v9 = [v8 _lp_userVisibleHost];
  v10 = sub_1002C5810(v9, 0x20uLL);

  if (a4 < 2)
  {
    if (a4 != 1)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v11 = sub_1002C5750(v6, 0x1F4uLL, 1);
    if ([v11 length])
    {
      v13 = ASDLocalizedString();
      [NSString localizedStringWithFormat:v13, v10, v11];
    }

    else
    {
      v13 = ASDLocalizedString();
      [NSString localizedStringWithFormat:v13, 1, v10];
    }
    v12 = ;
  }

  else
  {
    v11 = ASDLocalizedString();
    v12 = [NSString localizedStringWithFormat:v11, a4, v10];
  }

LABEL_10:
  v14 = [AMSDialogRequest requestWithTitle:v12 message:0];
  v15 = ASDLocalizedString();
  v16 = [AMSDialogAction actionWithTitle:v15 identifier:@"UPPManifestDialogActionCancel"];

  [v14 setDefaultAction:v16];
  v17 = ASDLocalizedString();
  v18 = [AMSDialogAction actionWithTitle:v17 identifier:@"UPPManifestDialogActionInstall"];

  v21[0] = v16;
  v21[1] = v18;
  v19 = [NSArray arrayWithObjects:v21 count:2];
  [v14 setButtonActions:v19];

  return v14;
}

id sub_1002C647C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v37 = v8;
    v38 = 2114;
    v39 = v6;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Could not load download manifest with underlying error: %{public}@", buf, 0x16u);
  }

  if (ASDErrorIsEqual())
  {
    v33 = v7;
    v10 = [v6 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"UPPManifestErrorUserInfoKeyExistingName"];
    objc_opt_class();
    v12 = sub_1001C09E4(v11);
    v13 = sub_1002C5750(v12, 0x20uLL, 1);

    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"UPPManifestErrorUserInfoKeyManifestName"];
    objc_opt_class();
    v16 = sub_1001C09E4(v15);
    v17 = sub_1002C5750(v16, 0x20uLL, 1);

    v18 = ASDLocalizedString();
    v19 = [NSString stringWithFormat:v18, v13];

    v20 = v8;
    if ([v17 isEqualToString:v13])
    {
      v21 = ASDLocalizedString();
      [NSString stringWithFormat:v21, v13, v31, v32];
    }

    else
    {
      v21 = ASDLocalizedString();
      [NSString stringWithFormat:v21, v17, v13, v13];
    }
    v26 = ;

    v25 = [AMSDialogRequest requestWithTitle:v19 message:v26];
    v27 = ASDLocalizedString();
    v28 = [AMSDialogAction actionWithTitle:v27];
    v35 = v28;
    v29 = [NSArray arrayWithObjects:&v35 count:1];
    [v25 setButtonActions:v29];

    v8 = v20;
    v7 = v33;
    goto LABEL_10;
  }

  if (v7)
  {
    v22 = [v7 host];
    v23 = [v22 _lp_userVisibleHost];
    v13 = sub_1002C5810(v23, 0x20uLL);

    ASDErrorIsEqual();
    v24 = ASDLocalizedString();
    v17 = [NSString stringWithFormat:v24, v13];

    v25 = [AMSDialogRequest requestWithTitle:v17 message:0];
    v19 = ASDLocalizedString();
    v26 = [AMSDialogAction actionWithTitle:v19];
    v34 = v26;
    v27 = [NSArray arrayWithObjects:&v34 count:1];
    [v25 setButtonActions:v27];
LABEL_10:

    goto LABEL_11;
  }

  v25 = 0;
LABEL_11:

  return v25;
}

void *sub_1002C68D0(void *result)
{
  if (result)
  {
    return ([result isEqualToNumber:&off_100547B18] ^ 1);
  }

  return result;
}

unint64_t sub_1002C68FC(unint64_t result)
{
  if (result)
  {
    v1 = [result objCType];
    return (*v1 | 2) != 0x66 || v1[1] != 0;
  }

  return result;
}

__CFString *sub_1002C6944(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"Unknown Class: %ld", a1];
  }

  else
  {
    v2 = off_100521510[a1];
  }

  return v2;
}

__CFString *sub_1002C69B4(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"Unknown Class: %ld", a1];
  }

  else
  {
    v2 = off_100521530[a1];
  }

  return v2;
}

void sub_1002C6C0C(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLForKey:@"disable-vpp-interactive-authentication" defaultValue:0];
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) logUUID];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Interactive authentication requested but has been disabled in the bag", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    v8 = ASDErrorWithUserInfoAndFormat();
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    if (v5)
    {
      v9 = [*(a1 + 32) logUUID];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Attempting interactive authentication for volume purchase", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002C6DFC;
    v11[3] = &unk_10051E040;
    v10 = *(a1 + 40);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    sub_100312610(InteractiveRequestPresenter, v10, v11);

    v8 = v12;
  }
}

void sub_1002C6DFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (!v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logUUID];
    v10 = 138412546;
    v11 = v9;
    v12 = 2114;
    v13 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Interactive authentication for volume purchase completed with error: %{public}@", &v10, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) logUUID];
    v10 = 138412546;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Interactive authentication for volume purchase completed with result: %{public}@", &v10, 0x16u);
LABEL_4:
  }

LABEL_6:

  (*(*(a1 + 40) + 16))();
}

void sub_1002C6F70(id a1)
{
  v1 = [AMSPurchaseQueueConfiguration alloc];
  v2 = +[BagService appstoredService];
  v3 = [v2 autoupdatingAMSBag];
  v8 = [v1 initWithBag:v3];

  v4 = objc_alloc_init(ManagedPurchaseQueueDelegate);
  v5 = qword_1005AAB30;
  qword_1005AAB30 = v4;

  [v8 setDelegate:qword_1005AAB30];
  v6 = [[AMSPurchaseQueue alloc] initWithConfiguration:v8];
  v7 = qword_1005AAB28;
  qword_1005AAB28 = v6;
}

uint64_t sub_1002C7044(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_36;
  }

  v69.receiver = a1;
  v69.super_class = ManagedApplicationTask;
  v8 = objc_msgSendSuper2(&v69, "init");
  a1 = v8;
  if (!v8)
  {
    goto LABEL_36;
  }

  objc_storeStrong((v8 + 138), a2);
  v9 = [*(a1 + 138) bundleIdentifier];
  v10 = *(a1 + 74);
  *(a1 + 74) = v9;

  v11 = [*(a1 + 138) bundleVersion];
  v12 = *(a1 + 82);
  *(a1 + 82) = v11;

  v13 = [*(a1 + 138) itemIdentifier];
  v14 = *(a1 + 114);
  *(a1 + 114) = v13;

  v15 = +[NSUUID UUID];
  v16 = *(a1 + 130);
  *(a1 + 130) = v15;

  if ([(__CFString *)v7 isEqualToString:@"com.apple.asclient"])
  {
    v17 = @"com.apple.dmd";
  }

  else
  {
    v17 = v7;
  }

  objc_storeStrong((a1 + 90), v17);
  *(a1 + 146) = [*(a1 + 138) skipDownloads];
  if (*(a1 + 74))
  {
    v18 = [ApplicationProxy proxyForBundleID:?];
    v19 = *(a1 + 58);
    *(a1 + 58) = v18;

    v20 = *(a1 + 58);
    if (v20)
    {
      v21 = [*(v20 + 120) iTunesMetadata];
      v22 = [v21 storeItemIdentifier];

      if (v22)
      {
        v23 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(*(a1 + 58))];
        v24 = *(a1 + 114);
        *(a1 + 114) = v23;

        v25 = sub_1003D30CC(*(a1 + 58));
        v26 = *(a1 + 50);
        *(a1 + 50) = v25;

        v27 = [NSNumber numberWithLongLong:sub_1003D2F7C(*(a1 + 58))];
        v28 = *(a1 + 98);
        *(a1 + 98) = v27;
      }

      v29 = *(a1 + 58);
      if (v29)
      {
        LOBYTE(v29) = [*(v29 + 120) isPlaceholder] ^ 1;
      }

      *(a1 + 106) = v29;
    }

    goto LABEL_21;
  }

  v30 = [*(a1 + 138) externalVersionIdentifier];
  v31 = *(a1 + 98);
  *(a1 + 98) = v30;

  v32 = [ApplicationProxy proxyForItemID:*(a1 + 114)];
  v33 = *(a1 + 58);
  *(a1 + 58) = v32;

  v34 = *(a1 + 58);
  if (!v34)
  {
LABEL_21:
    sub_1002C7738(a1);
    goto LABEL_22;
  }

  v35 = sub_1003D30CC(v34);
  v36 = *(a1 + 50);
  *(a1 + 50) = v35;

  v37 = sub_1003D0F60(*(a1 + 58));
  v38 = *(a1 + 74);
  *(a1 + 74) = v37;

  v39 = sub_1003D251C(*(a1 + 58));
  v40 = *(a1 + 82);
  *(a1 + 82) = v39;

  v41 = *(a1 + 58);
  if (v41)
  {
    LOBYTE(v41) = [*(v41 + 120) isPlaceholder] ^ 1;
  }

  *(a1 + 106) = v41;
  sub_1002C7738(a1);
  if (!*(a1 + 98) && sub_1003D3168(*(a1 + 58), v42))
  {
    v43 = [NSNumber numberWithLongLong:sub_1003D2F7C(*(a1 + 58))];
    v44 = *(a1 + 98);
    *(a1 + 98) = v43;

    v45 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 122);
      v47 = *(a1 + 98);
      *buf = 138412546;
      v71 = v46;
      v72 = 2114;
      v73 = v47;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%@] Factory VPP claim using evid: %{public}@", buf, 0x16u);
    }
  }

LABEL_22:
  v48 = [*(a1 + 138) accountIdentifier];

  if (!v48)
  {
    goto LABEL_29;
  }

  v49 = +[ACAccountStore ams_sharedAccountStore];
  v50 = [*(a1 + 138) accountIdentifier];
  v51 = [v49 ams_iTunesAccountWithDSID:v50];
  v52 = *(a1 + 42);
  *(a1 + 42) = v51;

  v53 = *(a1 + 42);
  v54 = ASDLogHandleForCategory();
  v55 = v54;
  if (!v53)
  {
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v68 = *(a1 + 122);
    v57 = [*(a1 + 138) accountIdentifier];
    *buf = 138412546;
    v71 = v68;
    v72 = 2114;
    v73 = v57;
    _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%@] Unable to find specified account using accountID: %{public}@", buf, 0x16u);
    goto LABEL_26;
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(a1 + 122);
    v57 = [*(a1 + 42) ams_DSID];
    *buf = 138412546;
    v71 = v56;
    v72 = 2114;
    v73 = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Using account specified in request: %{public}@", buf, 0x16u);
LABEL_26:
  }

LABEL_28:

LABEL_29:
  if (!*(a1 + 42))
  {
    v58 = +[ACAccountStore ams_sharedAccountStore];
    v59 = [v58 ams_activeiTunesAccount];
    v60 = *(a1 + 42);
    *(a1 + 42) = v59;

    v61 = *(a1 + 42);
    v62 = ASDLogHandleForCategory();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
    if (v61)
    {
      if (v63)
      {
        v64 = *(a1 + 122);
        v65 = [*(a1 + 42) ams_DSID];
        *buf = 138412546;
        v71 = v64;
        v72 = 2114;
        v73 = v65;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%@] Using active account: %{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      v66 = *(a1 + 122);
      *buf = 138412290;
      v71 = v66;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%@] Not using an account", buf, 0xCu);
    }
  }

LABEL_36:

  return a1;
}

void sub_1002C7738(uint64_t a1)
{
  v2 = [_TtC9appstored6LogKey alloc];
  v5 = sub_1002C7A10(a1);
  v3 = [(LogKey *)v2 initWithBatchLogKey:0 logCode:v5 externalID:*(a1 + 130) bundleID:*(a1 + 74) itemID:*(a1 + 114)];
  v4 = *(a1 + 122);
  *(a1 + 122) = v3;
}

PurchaseInfo *sub_1002C77D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PurchaseInfo alloc] initWithBag:*(a1 + 66)];
  [(PurchaseInfo *)v4 setBundleID:*(a1 + 74)];
  v5 = [*(a1 + 138) accountIdentifier];
  if (v5)
  {
    v6 = *(a1 + 42);

    if (v6)
    {
      [(PurchaseInfo *)v4 setAccount:*(a1 + 42)];
    }
  }

  [(PurchaseInfo *)v4 setClientType:1];
  [(PurchaseInfo *)v4 setExternalID:*(a1 + 130)];
  v7 = sub_1002C7A10(a1);
  [(PurchaseInfo *)v4 setLogCode:v7];

  [(PurchaseInfo *)v4 setItemID:*(a1 + 114)];
  v8 = sub_1002380D8(v3, ASDManagedLookupBundleDisplayName);
  [(PurchaseInfo *)v4 setItemName:v8];

  v9 = sub_1002380D8(v3, ASDManagedLookupVendorName);
  [(PurchaseInfo *)v4 setVendorName:v9];

  [(PurchaseInfo *)v4 setRequireUniversal:_os_feature_enabled_impl() ^ 1];
  [(PurchaseInfo *)v4 setMetricsType:&off_100547B30];
  [(PurchaseInfo *)v4 setPurchaseType:0];
  if (*(a1 + 106))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [(PurchaseInfo *)v4 setCoordinatorIntent:v10];
  [(PurchaseInfo *)v4 setCoordinatorImportance:3];
  v11 = sub_1002380D8(v3, ASDManagedLookupFreeBuyParams);
  if (v11)
  {
    v12 = [AMSBuyParams buyParamsWithString:v11];
    [(PurchaseInfo *)v4 setBuyParams:v12];
  }

  v13 = sub_1002C7A70(a1);
  [(PurchaseInfo *)v4 setClientInfo:v13];

  [(PurchaseInfo *)v4 updateGeneratedProperties];

  return v4;
}

id sub_1002C7A10(uint64_t a1)
{
  v1 = [*(a1 + 138) requestType];
  v2 = &off_10051D210;
  v3 = &off_10051D228;
  if (v1 != 3)
  {
    v3 = &off_10051D220;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = *v2;

  return v4;
}

id sub_1002C7A70(uint64_t a1)
{
  v2 = sub_100265D74(AMSProcessInfo, *(a1 + 90));
  v3 = v2;
  if (*(a1 + 90))
  {
    [v2 setBundleIdentifier:?];
    [v3 setClientVersion:@"1.0"];
  }

  return v3;
}

void sub_1002C7BA8(uint64_t a1, void *a2)
{
  v140 = a2;
  if (!v140)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_137;
  }

  objc_storeStrong((*(a1 + 32) + 66), a2);
  v5 = *(a1 + 32);
  v139 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_136;
  }

  v142 = 0;
  if ([objc_getProperty(v5 v6] != 3 && objc_msgSend(objc_getProperty(v5, v7, 138, 1), "requestType") != 1)
  {
    if (*(v5 + 114))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_118;
    }

    if (!*(v5 + 74))
    {
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 1;
      goto LABEL_121;
    }
  }

  if (!*(v5 + 114) && !*(v5 + 74))
  {
    v20 = ASDErrorWithTitleAndMessage();
    v21 = v20;
    v12 = 0;
    LOBYTE(v22) = 0;
    LODWORD(v10) = 0;
    v163[0] = 0;
    goto LABEL_95;
  }

  v141 = objc_opt_new();
  v8 = [*(v5 + 42) ams_DSID];
  if (!v8 || (v9 = [*(v5 + 138) requestType], v8, v9 == 2))
  {
    v10 = 0;
    goto LABEL_50;
  }

  v135 = sub_10021CA38();
  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(v5 + 122);
    *buf = 138412290;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%@] Checking purchase history for items", buf, 0xCu);
  }

  v137 = objc_alloc_init(ASDPurchaseHistoryQuery);
  v18 = [*(v5 + 42) ams_DSID];
  [v137 setAccountID:{objc_msgSend(v18, "longLongValue")}];

  if (*(v5 + 114))
  {
    v167 = *(v5 + 114);
    v19 = [NSArray arrayWithObjects:&v167 count:1];
    [v137 setStoreIDs:v19];
LABEL_23:

    goto LABEL_24;
  }

  if ([*(v5 + 74) length])
  {
    v167 = *(v5 + 74);
    v19 = [NSArray arrayWithObjects:&v167 count:1];
    [v137 setBundleIDs:v19];
    goto LABEL_23;
  }

LABEL_24:
  *v163 = 0;
  *&v163[8] = v163;
  *&v163[16] = 0x3032000000;
  v164 = sub_1002CBA70;
  v165 = sub_1002CBA80;
  v166 = 0;
  v149[0] = _NSConcreteStackBlock;
  v149[1] = 3221225472;
  v149[2] = sub_1002CBA88;
  v149[3] = &unk_1005214C8;
  v151 = v163;
  v23 = dispatch_semaphore_create(0);
  v150 = v23;
  sub_10021D168(v135, v137, v149);
  v24 = dispatch_time(0, 120000000000);
  v132 = v23;
  if (dispatch_semaphore_wait(v23, v24))
  {
    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v129 = *(v5 + 122);
      *buf = 138412290;
      *&buf[4] = v129;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Timed out looking though purchase history", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_49;
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v25 = *(*&v163[8] + 40);
  v10 = [v25 countByEnumeratingWithState:&v145 objects:buf count:16, v23];
  if (!v10)
  {
    goto LABEL_49;
  }

  v26 = *v146;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v146 != v26)
      {
        objc_enumerationMutation(v25);
      }

      v28 = *(*(&v145 + 1) + 8 * i);
      v29 = *(v5 + 74);
      if (v29)
      {
        v2 = [*(*(&v145 + 1) + 8 * i) bundleID];
        if ([v2 isEqualToString:*(v5 + 74)])
        {

LABEL_46:
          v32 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(v5 + 122);
            v34 = [*(v5 + 42) ams_DSID];
            *v153 = 138412546;
            *&v153[4] = v33;
            v154 = 2114;
            v155 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] App owned by accountID: %{public}@", v153, 0x16u);
          }

          v10 = 1;
          goto LABEL_49;
        }

        if (!*(v5 + 114))
        {

          continue;
        }
      }

      else if (!*(v5 + 114))
      {
        continue;
      }

      v30 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v28 storeItemID]);
      v31 = [v30 isEqualToNumber:*(v5 + 114)];

      if (v29)
      {

        if (v31)
        {
          goto LABEL_46;
        }
      }

      else if (v31)
      {
        goto LABEL_46;
      }
    }

    v10 = [v25 countByEnumeratingWithState:&v145 objects:buf count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_49:

  _Block_object_dispose(v163, 8);
LABEL_50:
  v138 = *(v5 + 74);
  v35 = [AMSMediaTask alloc];
  v36 = *(v5 + 90);
  v37 = v36;
  if (!v36 || ![(__CFString *)v36 length])
  {

    v37 = @"appstore";
  }

  v38 = [*(v5 + 66) amsBag];
  v39 = [v35 initWithType:0 clientIdentifier:v37 clientVersion:@"1" bag:v38];

  v40 = sub_1002C7A70(v5);
  [v39 setClientInfo:v40];

  v41 = [*(v5 + 122) description];
  [v39 setLogKey:v41];

  v42 = *(v5 + 114);
  if (v42)
  {
    v43 = [v42 stringValue];
    *v153 = v43;
    v44 = [NSArray arrayWithObjects:v153 count:1];
    [v39 setItemIdentifiers:v44];

    goto LABEL_57;
  }

  if ([*(v5 + 74) length])
  {
    *v153 = *(v5 + 74);
    v43 = [NSArray arrayWithObjects:v153 count:1];
    [v39 setBundleIdentifiers:v43];
LABEL_57:
  }

  [v39 setAdditionalQueryParams:&off_100549818];
  v136 = [v39 perform];
  v144 = 0;
  v133 = [v136 resultWithError:&v144];
  v20 = v144;
  if (v20)
  {
    v45 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v127 = *(v5 + 122);
      *v163 = 138412546;
      *&v163[4] = v127;
      *&v163[12] = 2114;
      *&v163[14] = v20;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[%@] Lookup resulted in error: %{public}@", v163, 0x16u);
    }

    v22 = 0;
  }

  else
  {
    v46 = [MediaApp alloc];
    v47 = [v133 responseDataItems];
    v48 = [v47 firstObject];
    v45 = sub_1002CC8A4(v46, v48);

    v49 = sub_1002CC9D0(&v45->isa);
    v50 = sub_10037DEF4(v49);

    if (v50)
    {
      v51 = [NSNumber numberWithLongLong:*(v50 + 24)];
      [v141 setObject:v51 forKey:ASDManagedLookupExternalVersionID];

      v52 = [NSNumber numberWithBool:sub_1001FEBC4(v50)];
      [v141 setObject:v52 forKey:ASDManagedLookupIs32BitOnly];

      v53 = *(v50 + 32);
      [v141 setObject:v53 forKey:ASDManagedLookupBundleID];

      if (!v138)
      {
        v138 = *(v50 + 32);
      }
    }

    v54 = sub_1001FEE4C(v50);
    if (v54 || (sub_1001FED4C(v50), v55 = objc_claimAutoreleasedReturnValue(), [v55 firstObject], v54 = objc_claimAutoreleasedReturnValue(), v55, v54))
    {
      v22 = *(v54 + 16) == 0.0;
      v56 = [NSNumber numberWithLongLong:*(v54 + 24)];
      [v141 setObject:v56 forKey:ASDManagedLookupUncompressedSize];

      v57 = *(v54 + 8);
      [v141 setObject:v57 forKey:ASDManagedLookupFreeBuyParams];
    }

    else
    {
      v22 = 0;
    }

    if (v45)
    {
      isa = v45[3].isa;
    }

    else
    {
      isa = 0;
    }

    v59 = [NSNumber numberWithLongLong:isa, v133];
    [v141 setObject:v59 forKey:ASDManagedLookupItemID];

    v60 = sub_1002CC9D0(&v45->isa);
    v61 = v60;
    if (v60)
    {
      v62 = *(v60 + 32);
      [v141 setObject:v62 forKey:ASDManagedLookupVendorName];

      v63 = v61[3];
      [v141 setObject:v63 forKey:ASDManagedLookupBundleDisplayName];
    }
  }

  if (v138)
  {
    v64 = v10;
  }

  else
  {
    v64 = 1;
  }

  if ((v64 & 1) == 0)
  {
    if (*(v5 + 42))
    {
      v152 = v138;
      v65 = [NSArray arrayWithObjects:&v152 count:1];
      v66 = *(v5 + 42);
      v67 = *(v5 + 66);
      v143 = 0;
      v68 = v67;
      v69 = v66;
      v70 = v65;
      v71 = [[_TtC9appstored13OwnsCheckTask alloc] initWithAccount:v69 bundleIDs:v70 bag:v68];

      [v5 runSubTask:v71 returningError:&v143];
      v72 = [(OwnsCheckTask *)v71 output];
      v73 = v72;
      v74 = &__NSDictionary0__struct;
      if (v72)
      {
        v74 = v72;
      }

      v75 = v74;

      v76 = v143;
      if (v76)
      {
        v77 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v130 = *(v5 + 122);
          *v163 = 138412546;
          *&v163[4] = v130;
          *&v163[12] = 2114;
          *&v163[14] = v76;
          _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "[%@] Owns check resulted in error: %{public}@", v163, 0x16u);
        }

        v10 = 0;
      }

      else
      {
        v77 = [v75 valueForKey:v138];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v77 BOOLValue];
        }

        else
        {
          v10 = 0;
        }

        v78 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = *(v5 + 122);
          v80 = [v77 BOOLValue];
          *v163 = 138412546;
          *&v163[4] = v79;
          *&v163[12] = 1024;
          *&v163[14] = v80;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%@] Performed owns check with owns: %{BOOL}d", v163, 0x12u);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v81 = [NSNumber numberWithBool:v10, v133];
  [v141 setObject:v81 forKey:ASDManagedLookupIsActiveAccountAppOwner];

  v82 = [NSNumber numberWithBool:v22];
  [v141 setObject:v82 forKey:ASDManagedLookupIsAppFree];

  if (!(v10 | v22 | [objc_getProperty(v5 v83]))
  {
    v84 = ASDErrorWithTitleAndMessage();

    v20 = v84;
  }

  v85 = v20;
  v12 = [v141 copy];
  v163[0] = (v10 | v22) & 1;

LABEL_95:
  v15 = v163[0];
  v14 = v20;
  v86 = [v12 valueForKey:ASDManagedLookupItemID];
  if (!*(v5 + 114) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v87 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v86 longLongValue]);
    v88 = *(v5 + 114);
    *(v5 + 114) = v87;
  }

  v89 = [v12 valueForKey:ASDManagedLookupBundleID];

  if (!*(v5 + 74))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v90 = [v89 copy];
      v91 = *(v5 + 74);
      *(v5 + 74) = v90;
    }
  }

  sub_1002C7738(v5);
  v92 = ASDLogHandleForCategory();
  v93 = v92;
  if (v14)
  {
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v94 = *(v5 + 122);
      *buf = 138412546;
      *&buf[4] = v94;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "[%@] Preflight error: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    v95 = *(v5 + 122);
    *buf = 138412802;
    *&buf[4] = v95;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%@] Preflight complete free: %{BOOL}d owned: %{BOOL}d", buf, 0x18u);
  }

  if (v15)
  {
    if (([objc_getProperty(v5 v96] & 1) == 0 && (v10 & 1) != 0 || objc_msgSend(objc_getProperty(v5, v97, 138, 1), "requestType") == 1)
    {
      v99 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = *(v5 + 122);
        *buf = 138412290;
        *&buf[4] = v100;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%@] Using VPP endpoint for request", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_116;
    }

    v13 = 1;
    if (([objc_getProperty(v5 v98] & 1) == 0 && v22)
    {
      v112 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        v113 = *(v5 + 122);
        *buf = 138412290;
        *&buf[4] = v113;
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "[%@] Purchasing free app", buf, 0xCu);
      }

      v114 = sub_1002C77D4(v5, v12);
      [v114 setUseLocalAuthAndSystemDialogs:1];
      v115 = v114;
      *&v145 = 0;
      *(&v145 + 1) = &v145;
      *&v146 = 0x3032000000;
      *(&v146 + 1) = sub_1002CBA70;
      *&v147 = sub_1002CBA80;
      *(&v147 + 1) = 0;
      v116 = dispatch_semaphore_create(0);
      v117 = sub_1001DFF60();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1002CBAE8;
      v157 = &unk_1005214F0;
      v99 = v115;
      v158 = v99;
      v159 = 0;
      v160 = v5;
      v162 = &v145;
      v118 = v116;
      v161 = v118;
      sub_1001E065C(v117, v99, buf);

      dispatch_semaphore_wait(v118, 0xFFFFFFFFFFFFFFFFLL);
      v119 = *(*(&v145 + 1) + 40);
      v120 = v119;
      v121 = [0 copy];

      _Block_object_dispose(&v145, 8);
      v122 = v119;

      v123 = ASDLogHandleForCategory();
      v124 = v123;
      if (v122)
      {
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          v131 = *(v5 + 122);
          *buf = 138412546;
          *&buf[4] = v131;
          *&buf[12] = 2114;
          *&buf[14] = v122;
          _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "[%@] Free purchase failed with error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          v125 = *(v5 + 122);
          v126 = [v121 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          *&buf[4] = v125;
          *&buf[12] = 2114;
          *&buf[14] = v126;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "[%@] Free purchase succeeded with jobResults %{public}@", buf, 0x16u);
        }

        v142 = 5;
      }

      v13 = 1;
      v14 = v122;
      goto LABEL_116;
    }
  }

  else
  {
    v99 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v128 = *(v5 + 122);
      *buf = 138412290;
      *&buf[4] = v128;
      _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%@] App is not eligible for free VPP", buf, 0xCu);
    }

    v13 = 1;
LABEL_116:
  }

  v11 = *(v5 + 114) == 0;
  if (*(v5 + 114))
  {
LABEL_118:
    if ((v13 & 1) == 0)
    {
      *&v145 = 0;
      *v163 = v14;
      v15 = sub_1002C929C(v5, &v145, v12, &v142, v163);
      v101 = v145;
      v102 = *v163;

      if (v101)
      {
        v103 = v101;

        v12 = v103;
      }

      else
      {
        v103 = 0;
      }

      goto LABEL_127;
    }
  }

LABEL_121:
  if ((v13 & 1) != 0 || !v11)
  {
    v102 = v14;
  }

  else
  {
    v102 = ASDErrorWithTitleAndMessage();

    v103 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = *(v5 + 122);
      *buf = 138412290;
      *&buf[4] = v104;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[%@] An itemID is needed for per device calls could not be discovered", buf, 0xCu);
    }

LABEL_127:
  }

  v105 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v106 = *(v5 + 122);
    v107 = *(v5 + 98);
    v108 = sub_1002C69B4(v142);
    *buf = 138413058;
    *&buf[4] = v106;
    *&buf[12] = 2114;
    *&buf[14] = v107;
    *&buf[22] = 2114;
    v157 = v108;
    LOWORD(v158) = 1024;
    *(&v158 + 2) = v15;
    _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%@] Complete for evid: %{public}@ changeType: %{public}@ success: %{BOOL}d", buf, 0x26u);
  }

  Property = objc_getProperty(v5, v109, 154, 1);
  if (Property)
  {
    Property[2](Property, v15, v12, v142, v102);
  }

  *(v5 + 170) = v142;
  if (v15)
  {
    v111 = 0;
  }

  else
  {
    v111 = v102;
  }

  (v139)[2](v139, v111);

LABEL_136:
LABEL_137:
}

uint64_t sub_1002C929C(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v7 = a3;
  v182 = *(a1 + 146);
  v8 = objc_opt_new();
  v9 = v8;
  v10 = *(a1 + 114);
  if (v10)
  {
    [v8 setParameter:v10 forKey:AMSBuyParamPropertyItemId];
  }

  v11 = *(a1 + 98);
  if (v11)
  {
    v12 = [NSNumber numberWithInt:0xFFFFFFFFLL];
    v13 = [v11 isEqualToNumber:v12];

    if ((v13 & 1) == 0)
    {
      [v9 setParameter:*(a1 + 98) forKey:AMSBuyParamPropertyExternalVersionId];
    }
  }

  if (*(a1 + 74))
  {
    v14 = *(a1 + 58);
    if (v14)
    {
      v15 = [*(v14 + 120) iTunesMetadata];
      v16 = [v15 versionIdentifier];

      if (v16 >= 1)
      {
        v17 = [NSNumber numberWithLongLong:sub_1003D2F7C(*(a1 + 58))];
        [v9 setParameter:v17 forKey:AMSBuyParamPropertyExistingExternalVersionId];

        v18 = sub_1003D2CD8(*(a1 + 58));
        if (v18)
        {
          [v9 setParameter:v18 forKey:AMSBuyParamPropertyVendorID];
        }
      }
    }

    [v9 setParameter:*(a1 + 74) forKey:AMSBuyParamPropertyBundleId];
    v19 = sub_1003D2934(*(a1 + 58));
    if (v19)
    {
      [v9 setParameter:v19 forKey:AMSBuyParamPropertySinfData];
    }
  }

  v20 = *(a1 + 82);
  if (v20)
  {
    [v9 setParameter:v20 forKey:AMSBuyParamPropertyBundleVersion];
  }

  v21 = +[AMSDevice serialNumber];
  [v9 setParameter:v21 forKey:AMSBuyParamPropertySerialNumber];

  v22 = [*(a1 + 42) ams_DSID];
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 stringValue];
      [v9 setParameter:v23 forKey:AMSBuyParamPropertyDsid];
    }
  }

  if ([*(a1 + 138) requestType])
  {
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 138) requestType]);
    [v9 setParameter:v24 forKey:AMSBuyParamPropertyRequestType];
  }

  v25 = [[AMSPurchase alloc] initWithPurchaseType:5 buyParams:v9];
  [v25 setIgnoreRequirePasswordRestriction:1];
  v26 = [*(a1 + 122) description];
  [v25 setLogUUID:v26];

  v27 = sub_1002C7A70(a1);
  [v25 setClientInfo:v27];

  v28 = [*(a1 + 138) accountIdentifier];
  if (v28 && (v29 = *(a1 + 42), v28, v29))
  {
    [v25 setAccount:*(a1 + 42)];
  }

  else
  {
    v30 = +[ACAccountStore ams_sharedAccountStore];
    v31 = [v30 ams_activeiTunesAccount];
    [v25 setAccount:v31];
  }

  v190 = +[NSMutableDictionary dictionary];
  if (_os_feature_enabled_impl())
  {
    v32 = sub_1003BBF50();
    v33 = [v32 copyThinningHeadersForPlatform:1];
    [v190 addEntriesFromDictionary:v33];
  }

  v34 = sub_10037F164();
  v35 = sub_10037F344(v34);

  if (v35)
  {
    [v190 setObject:@"true" forKeyedSubscript:@"X-MMe-Multi-User"];
  }

  if ([v190 count])
  {
    [v25 setAdditionalHeaders:v190];
  }

  objc_opt_self();
  if (qword_1005AAB20 != -1)
  {
    dispatch_once(&qword_1005AAB20, &stru_1005214A0);
  }

  v36 = qword_1005AAB28;
  v187 = v25;
  v201 = v25;
  v37 = [NSArray arrayWithObjects:&v201 count:1];
  v38 = [v36 enquePurchases:v37];

  v195 = 0;
  v186 = v38;
  v39 = [v38 resultWithError:&v195];
  v40 = v195;
  v191 = a1;
  if (v40 && ASDErrorIsEqual())
  {
    v41 = [v40 userInfo];
    [v41 objectForKeyedSubscript:AMSErrorUserInfoKeyServerErrorCode];
    v43 = v42 = v39;
    [v43 integerValue];

    [v40 localizedFailureReason];
    v44 = a5;
    v46 = v45 = v9;
    v47 = ASDErrorWithTitleAndMessage();

    v9 = v45;
    a5 = v44;

    v40 = v47;
    v39 = v42;
  }

  v48 = v190;
  v49 = [v39 firstObject];
  v189 = v49;
  if (v49)
  {
    v50 = v49;
    v185 = [v49 correlationID];
    v51 = [v50 responseDictionary];
    v183 = v39;
    v184 = a5;
    if (v40)
    {
      v52 = v51;
      v53 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(a1 + 122);
        *buf = 138412802;
        v209 = v54;
        v210 = 2114;
        *v211 = v40;
        *&v211[8] = 2114;
        v212 = v185;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%@] Request resulted in error: %{public}@ storeCorrelationID: %{public}@", buf, 0x20u);
      }

      v51 = v52;
      goto LABEL_42;
    }

    if (!v51)
    {
LABEL_42:

      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 1;
      v60 = a4;
      goto LABEL_43;
    }

    v178 = v51;
    v175 = v9;
    v176 = v7;
    if (!_os_feature_enabled_impl())
    {
      v83 = [v189 URLResponse];
      objc_opt_class();
      v84 = sub_1001C09E4(v83);
      v85 = sub_1003BE8FC(StoreItemResponse, v178, v84, 1, *(a1 + 66));

      if (v85)
      {
        Property = objc_getProperty(v85, v86, 64, 1);
      }

      else
      {
        Property = 0;
      }

      v88 = Property;
      if ([*(a1 + 50) length])
      {
        v77 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v147 = *(a1 + 122);
          v148 = *(a1 + 50);
          *buf = 138412546;
          v209 = v147;
          v210 = 2114;
          *v211 = v148;
          _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "[%@]: Will not attempt sinf update for app due to variantID: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (*(a1 + 106) == 1)
        {
          v77 = [v178 objectForKey:@"replacementSinf"];
          if (v77)
          {
            objc_opt_class();
            HIDWORD(v177) = objc_opt_isKindOfClass();
          }

          else
          {
            HIDWORD(v177) = 0;
          }

          LODWORD(v177) = sub_1002CAE8C(a1, v88, v77);
          v145 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
          {
            v146 = *(a1 + 122);
            *buf = 138412802;
            v209 = v146;
            v210 = 1024;
            *v211 = v177;
            *&v211[4] = 1024;
            *&v211[6] = BYTE4(v177) & 1;
            _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "[%@] Inline sinf update complete with result: %{BOOL}d used replacementSinf: %{BOOL}d", buf, 0x18u);
          }

LABEL_86:
          v97 = v88;
          v179 = objc_opt_new();
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v200 = 0u;
          v98 = v97;
          v99 = [v98 countByEnumeratingWithState:&v197 objects:buf count:16];
          if (v99)
          {
            v101 = v99;
            v102 = *v198;
            while (2)
            {
              v103 = v98;
              v104 = 0;
              do
              {
                if (*v198 != v102)
                {
                  objc_enumerationMutation(v103);
                }

                v105 = *(*(&v197 + 1) + 8 * v104);
                if (v105)
                {
                  v106 = objc_getProperty(*(*(&v197 + 1) + 8 * v104), v100, 96, 1);
                  v108 = objc_getProperty(v105, v107, 216, 1);
                }

                else
                {
                  v106 = 0;
                  v108 = 0;
                }

                v109 = v108;
                v110 = [v109 stringValue];
                if ([v106 length])
                {
                  if ([v110 length])
                  {
                    v111 = [*(a1 + 114) stringValue];
                    v112 = [v110 isEqualToString:v111];

                    a1 = v191;
                    if (v112)
                    {
                      v114 = [v106 copy];
                      [v179 setObject:v114 forKey:ASDManagedLookupBundleID];

                      if (v105)
                      {
                        v115 = [NSNumber numberWithBool:v105[20] & 1];
                        [v179 setObject:v115 forKey:ASDManagedLookupIs32BitOnly];

                        v117 = objc_getProperty(v105, v116, 224, 1);
                        v98 = v103;
                        v119 = v117;
                        if (v117 && [v117 length])
                        {
                          v120 = [v119 copy];
                          [v179 setObject:v120 forKey:ASDManagedLookupBundleDisplayName];
                        }

                        v121 = objc_getProperty(v105, v118, 144, 1);
                        v123 = v121;
                        if (v121)
                        {
                          v124 = [v121 copy];
                          [v179 setObject:v124 forKey:@"softwareVersionExternalIdentifier"];
                        }

                        v125 = objc_getProperty(v105, v122, 72, 1);
                        v127 = v125;
                        if (v125)
                        {
                          v125 = objc_getProperty(v125, v126, 72, 1);
                        }
                      }

                      else
                      {
                        v174 = [NSNumber numberWithBool:0];
                        [v179 setObject:v174 forKey:ASDManagedLookupIs32BitOnly];

                        v127 = 0;
                        v123 = 0;
                        v125 = 0;
                        v98 = v103;
                        v119 = 0;
                      }

                      v128 = v125;

                      if (v128)
                      {
                        v129 = [v128 copy];
                        [v179 setObject:v129 forKey:ASDManagedLookupUncompressedSize];
                      }

                      a1 = v191;
                      goto LABEL_112;
                    }
                  }
                }

                v104 = v104 + 1;
              }

              while (v101 != v104);
              v98 = v103;
              v113 = [v103 countByEnumeratingWithState:&v197 objects:buf count:16];
              v101 = v113;
              if (v113)
              {
                continue;
              }

              break;
            }
          }

LABEL_112:

          v130 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            v131 = *(a1 + 122);
            v132 = [v179 objectForKey:@"bundleDisplayName"];
            *v202 = 138412802;
            v203 = v131;
            v204 = 2114;
            v205 = v132;
            v206 = 2114;
            v207 = v179;
            _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%@] bundleDisplayName: %{public}@ metatdata: %{public}@", v202, 0x20u);
          }

          v9 = v175;
          v7 = v176;
          if ([v179 count])
          {
            v133 = [[NSMutableDictionary alloc] initWithDictionary:v179];
            if ([v176 count])
            {
              [v133 addEntriesFromDictionary:v176];
            }

            if (a2)
            {
              *a2 = [v133 copy];
            }
          }

          if ((v177 | v182))
          {
            v40 = 0;
            v56 = 0;
            v59 = v177 ^ 1;
            v134 = v98;
            if ((v177 ^ 1) & v182)
            {
              v58 = 4;
            }

            else
            {
              v58 = 0;
            }

            v55 = 1;
          }

          else
          {
            v135 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              v136 = *(v191 + 122);
              v137 = *(v191 + 98);
              *buf = 138412546;
              v209 = v136;
              v210 = 2114;
              *v211 = v137;
              _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[%@] Installing vpp application with evid: %{public}@", buf, 0x16u);
            }

            v138 = sub_1002C77D4(v191, v176);
            [v138 setAccount:*(v191 + 42)];
            v59 = 1;
            [v138 setSuppressEvaluatorDialogs:1];
            v139 = sub_100223AA0([PurchaseImportTask alloc], v98, v138, 0);
            v192 = 0;
            v56 = [v191 runSubTask:v139 returningError:&v192];
            v40 = v192;

            v134 = v98;
            v58 = 0;
            v55 = v56;
            v9 = v175;
          }

          if (v59)
          {
            v60 = a4;
            v57 = BYTE4(v177);
          }

          else
          {
            v57 = BYTE4(v177);
            v60 = a4;
            if (((HIDWORD(v177) ^ 1) & 1) == 0)
            {
              v64 = 1;
              goto LABEL_47;
            }
          }

LABEL_43:
          v61 = v57 | v59;
          v62 = v56 | ~(v57 | v59);
          v63 = (v61 & 1) == 0;
          v64 = 2;
          if (!v63)
          {
            v64 = 3;
          }

          if ((v62 & 1) == 0)
          {
            v64 = v58;
          }

LABEL_47:
          v39 = v183;
          a5 = v184;
          v48 = v190;
          if (!v60)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        v77 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v91 = *(a1 + 122);
          *buf = 138412290;
          v209 = v91;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%@] No app to attempt an inline update", buf, 0xCu);
        }
      }

      v177 = 0;
      goto LABEL_86;
    }

    if (*(a1 + 106) == 1)
    {
      v68 = sub_1003D30CC(*(a1 + 58));
      v69 = v68 == 0;

      v70 = [v189 URLResponse];
      objc_opt_class();
      v71 = sub_1001C09E4(v70);
      v72 = a1;
      v73 = v71;
      v74 = sub_1003BE8FC(StoreItemResponse, v178, v71, v69, *(v72 + 66));

      if (v74)
      {
        v76 = objc_getProperty(v74, v75, 64, 1);
      }

      else
      {
        v76 = 0;
      }

      v77 = v76;
      a1 = v191;
      if ([v77 count]== 1)
      {
        v78 = [v77 objectAtIndexedSubscript:0];
        if (sub_1002CA9F4(v191, v78))
        {
          v79 = sub_100237B38(v178, @"replacementSinf");
          HIDWORD(v177) = v79 != 0;
          if (v79)
          {
            v80 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = *(v191 + 122);
              *buf = 138412290;
              v209 = v81;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%@] Commerce response contained replacement key, attempting to update sinf", buf, 0xCu);
            }

            if (sub_1002CAB08(v191, v79))
            {

LABEL_133:
              v142 = v77;
              if (sub_1003D3168(*(a1 + 58), v82))
              {
                if ([*(a1 + 138) requestType] == 1 || objc_msgSend(*(a1 + 138), "requestType") == 3)
                {
                  v143 = +[ACAccountStore ams_sharedAccountStore];
                  v144 = [v143 ams_activeiTunesAccount];
                }

                else
                {
                  v144 = 0;
                }

                v149 = [v77 objectAtIndexedSubscript:0];
                v150 = sub_100385EB4(v149, v144, 0);

                if (v150)
                {
                  v151 = *(a1 + 74);
                  v194 = 0;
                  v152 = sub_1003E3BE4(v150, v151, 0, &v194);
                  v153 = v194;
                  v154 = ASDLogHandleForCategory();
                  v155 = v154;
                  if (v152)
                  {
                    a1 = v191;
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                    {
                      v156 = *(v191 + 122);
                      *buf = 138412290;
                      v209 = v156;
                      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "[%@] Updated iTunesMetadata.plist", buf, 0xCu);
                    }
                  }

                  else
                  {
                    a1 = v191;
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                    {
                      v173 = *(v191 + 122);
                      *buf = 138412546;
                      v209 = v173;
                      v210 = 2114;
                      *v211 = v153;
                      _os_log_error_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "[%@] iTunesMetadata.plist update failed with error: %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v157 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v158 = *(a1 + 122);
                *buf = 138412290;
                v209 = v158;
                _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "[%@] Fetching receipt after sinf update", buf, 0xCu);
              }

              v159 = sub_1001F1F30([AppReceiptTask alloc], *(a1 + 58));
              v85 = v159;
              if (v159)
              {
                objc_setProperty_nonatomic_copy(v159, v160, *(a1 + 42), 58);
                *(v85 + 74) = 8;
                objc_setProperty_nonatomic_copy(v85, v161, *(a1 + 122), 66);
                *(v85 + 50) = 1;
              }

              v193 = 0;
              [a1 runSubTask:v85 returningError:&v193];
              v77 = v193;
              v88 = v142;
              if (v77)
              {
                v162 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                {
                  v172 = *(a1 + 122);
                  *buf = 138412546;
                  v209 = v172;
                  v210 = 2114;
                  *v211 = v77;
                  _os_log_error_impl(&_mh_execute_header, v162, OS_LOG_TYPE_ERROR, "[%@] Receipt refresh failed with error: %{public}@", buf, 0x16u);
                }
              }

              LODWORD(v177) = 1;
              goto LABEL_86;
            }
          }

          v140 = [v77 objectAtIndexedSubscript:0];
          v141 = sub_1002CAC9C(v191, v140);

          a1 = v191;
          if (v141)
          {
            goto LABEL_133;
          }

LABEL_83:
          v93 = [v189 URLResponse];
          objc_opt_class();
          v94 = sub_1001C09E4(v93);
          v85 = sub_1003BE8FC(StoreItemResponse, v178, v94, 0, *(a1 + 66));

          if (v85)
          {
            v96 = objc_getProperty(v85, v95, 64, 1);
          }

          else
          {
            v96 = 0;
          }

          LODWORD(v177) = 0;
          v88 = v96;
          goto LABEL_86;
        }

        v92 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v180 = v77;
          v163 = *(v191 + 122);
          v164 = sub_1003D0F60(*(v191 + 58));
          v166 = sub_1003D0F1C(*(v191 + 58));
          if (v78)
          {
            v167 = objc_getProperty(v78, v165, 96, 1);
            v169 = objc_getProperty(v78, v168, 216, 1);
            v170 = v167;
          }

          else
          {
            v167 = 0;
            v170 = 0;
            v169 = 0;
          }

          v171 = v169;
          *buf = 138413314;
          v209 = v163;
          v210 = 2114;
          *v211 = v164;
          *&v211[8] = 2048;
          v212 = v166;
          v213 = 2114;
          v214 = v167;
          v215 = 2114;
          v216 = v171;
          _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "[%@]: Will not attempt sinf update for app because the existing app does not match the purchase response: %{public}@/%lld@ vs %{public}@/%{public}@", buf, 0x34u);

          a1 = v191;
          v77 = v180;
        }
      }

      else
      {
        v78 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v89 = *(v191 + 122);
          v90 = [v77 count];
          *buf = 138412546;
          v209 = v89;
          v210 = 2048;
          *v211 = v90;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "[%@]: Will not attempt sinf update for app because we did not receive the expected number of purchases in response: %lu@", buf, 0x16u);
        }
      }

      HIDWORD(v177) = 0;
      goto LABEL_83;
    }

    HIDWORD(v177) = 0;
    v77 = 0;
    goto LABEL_83;
  }

  v55 = 0;
  v64 = 0;
  v60 = a4;
  if (a4)
  {
LABEL_48:
    *v60 = v64;
  }

LABEL_49:
  if (a5)
  {
    v65 = v40;
    *a5 = v40;
  }

  v196 = v55;

  v66 = v196;
  return v66;
}

id *sub_1002CA9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_1003D0F60(*(a1 + 58));
  if (v5 && (!v3 ? (v6 = 0) : (v6 = objc_getProperty(v3, v4, 96, 1)), v7 = v6, v7, v7))
  {
    if (v3)
    {
      Property = objc_getProperty(v3, v8, 96, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    v11 = [v5 isEqualToString:v10];
  }

  else
  {
    v11 = sub_1003D0F1C(*(a1 + 58));
    if (v11)
    {
      if (v3)
      {
        v13 = objc_getProperty(v3, v12, 216, 1);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = [v14 unsignedLongLongValue];

      v11 = (v11 == v15);
    }
  }

  return v11;
}

id sub_1002CAB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:*(a1 + 74)];
  v12 = 0;
  v5 = sub_100249490(IXAppInstallCoordinator, v4, 0, v3, &v12);

  v6 = v12;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 122);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Successfully replaced SINF for existing app", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 122);
    *buf = 138412546;
    v14 = v11;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Attempt to replace SINF resulted in error: %{public}@", buf, 0x16u);
  }

  return v5;
}

id sub_1002CAC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3 || (v6 = objc_getProperty(v3, v4, 72, 1)) == 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = v6;
  v9 = objc_getProperty(v6, v7, 144, 1);
  if (!v9)
  {
LABEL_10:
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 122);
      v22 = 138412290;
      v23 = v21;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%@]: Will not attempt sinf update for app because the purchase response did not provide sinf data", &v22, 0xCu);
    }

    v10 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1003D2F7C(*(a1 + 58));
  if (!v11 || (v13 = v11, v14 = objc_getProperty(v5, v12, 144, 1), v15 = [v14 unsignedLongLongValue], v14, v13 != v15))
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 122);
    v22 = 138412290;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Existing app has matching evid, attempting to update sinf", &v22, 0xCu);
  }

  v18 = sub_1002CAB08(a1, v10);
LABEL_14:

  return v18;
}

uint64_t sub_1002CAE8C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v97 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 122);
    *buf = 138412290;
    v110 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to update sinf", buf, 0xCu);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v104 objects:v113 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_111;
  }

  v9 = v7;
  v10 = 0;
  v100 = *v105;
  *&v8 = 138412546;
  v92 = v8;
  v11 = a1;
  do
  {
    v12 = 0;
    v98 = v9;
    do
    {
      if (*v105 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v104 + 1) + 8 * v12);
      v15 = objc_autoreleasePoolPush();
      if (v13)
      {
        v16 = objc_getProperty(v13, v14, 96, 1);
        Property = objc_getProperty(v13, v17, 216, 1);
      }

      else
      {
        v16 = 0;
        Property = 0;
      }

      v19 = Property;
      v20 = [v19 stringValue];
      if (![v16 length] || !objc_msgSend(v20, "length"))
      {
        v38 = 1;
        goto LABEL_74;
      }

      v21 = [*(v11 + 114) stringValue];
      v22 = [v20 isEqualToString:v21];

      if (v22)
      {
        v24 = *(v11 + 58);
        if (v24)
        {
          v26 = sub_1003D2830(v24, v23);
          if (v13)
          {
            v27 = objc_getProperty(v13, v25, 72, 1);
            v29 = v27;
            if (v27)
            {
              v27 = objc_getProperty(v27, v28, 104, 1);
            }
          }

          else
          {
            v29 = 0;
            v27 = 0;
          }

          v30 = v27;

          if (v26 && [v30 length])
          {
            v32 = [v30 isEqualToString:v26];
            log = ASDLogHandleForCategory();
            v33 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              v94 = v30;
              if (v33)
              {
                v34 = *(v11 + 122);
                *buf = 138412290;
                v110 = v34;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Updated sinf with MD5 match", buf, 0xCu);
              }

              v35 = 0;
              v36 = 0;
              v37 = 1;
              goto LABEL_44;
            }

            if (v33)
            {
              v70 = *(v11 + 122);
              *buf = 138412290;
              v110 = v70;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] sinf update failed due to MD5 miss-match", buf, 0xCu);
            }

LABEL_71:
            v10 = 0;
LABEL_72:

            v38 = 0;
            goto LABEL_73;
          }

          v94 = v30;
          if (v13)
          {
            v39 = objc_getProperty(v13, v31, 144, 1);
          }

          else
          {
            v39 = 0;
          }

          v93 = v26;
          log = v39;
          v40 = [NSNumber numberWithLongLong:sub_1003D2F7C(*(v11 + 58))];
          v41 = *(v11 + 58);
          if (v41 && ([*(v41 + 120) isPlaceholder] & 1) == 0 && ((v47 = *(v11 + 58)) == 0 || (objc_msgSend(*(v47 + 120), "isPlaceholder") & 1) != 0 || (objc_msgSend(v40, "isEqualToNumber:", log) & 1) != 0))
          {
            v42 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(a1 + 122);
              v49 = *(a1 + 58);
              if (v49)
              {
                v50 = [*(v49 + 120) isPlaceholder] ^ 1;
              }

              else
              {
                v50 = 0;
              }

              v51 = [v40 isEqualToNumber:{log, v92}];
              *buf = 138412802;
              v110 = v48;
              v111 = 1024;
              LODWORD(v112[0]) = v50;
              WORD2(v112[0]) = 1024;
              *(v112 + 6) = v51;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Attempting sinf swap for matching. Installed: %{BOOL}d evid matches: %{BOOL}d", buf, 0x18u);
            }

            v35 = 0;
            v36 = 1;
          }

          else
          {
            v42 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = *(a1 + 122);
              v44 = *(a1 + 58);
              if (v44)
              {
                v45 = [*(v44 + 120) isPlaceholder] ^ 1;
              }

              else
              {
                v45 = 0;
              }

              v46 = [v40 isEqualToNumber:{log, v92}];
              *buf = 138412802;
              v110 = v43;
              v111 = 1024;
              LODWORD(v112[0]) = v45;
              WORD2(v112[0]) = 1024;
              *(v112 + 6) = v46;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Skipping sinf swap. Installed: %{BOOL}d evid matches: %{BOOL}d", buf, 0x18u);
            }

            v36 = 0;
            v35 = 1;
          }

          v37 = 0;
          v26 = v93;
LABEL_44:
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
        }

        v52 = v97;
        if (v97)
        {
LABEL_53:
          if (v52)
          {
            v60 = v35;
          }

          else
          {
            v60 = 1;
          }

          v97 = v52;
          if ((v60 & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v16];
              v103 = 0;
              v62 = sub_100249490(IXAppInstallCoordinator, v61, 0, v52, &v103);
              v26 = v103;
              v63 = ASDLogHandleForCategory();
              v64 = v63;
              if (v62)
              {
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  v65 = *(a1 + 122);
                  *buf = 138412290;
                  v110 = v65;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%@] Successfully updated sinf", buf, 0xCu);
                }

                v11 = a1;
                if (sub_1003D3168(*(a1 + 58), v66))
                {
                  if ([*(a1 + 138) requestType] == 1 || objc_msgSend(*(a1 + 138), "requestType") == 3)
                  {
                    v67 = +[ACAccountStore ams_sharedAccountStore];
                    v68 = [v67 ams_activeiTunesAccount];
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v71 = sub_100385EB4(v13, v68, 0);
                  v72 = v71;
                  if (v71)
                  {
                    v102 = 0;
                    v73 = sub_1003E3BE4(v71, v16, 0, &v102);
                    v74 = v102;
                    v75 = ASDLogHandleForCategory();
                    v76 = v75;
                    if (v73)
                    {
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        v77 = *(a1 + 122);
                        *buf = 138412290;
                        v110 = v77;
                        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%@] Updated iTunesMetadata.plist", buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      v89 = *(a1 + 122);
                      *buf = v92;
                      v110 = v89;
                      v111 = 2114;
                      v112[0] = v74;
                      _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "[%@] iTunesMetadata.plist update failed with error: %{public}@", buf, 0x16u);
                    }

                    v11 = a1;
                  }
                }

                v78 = *(v11 + 58);
                v79 = ASDLogHandleForCategory();
                v26 = v79;
                if (v78)
                {
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    v80 = *(v11 + 122);
                    *buf = 138412290;
                    v110 = v80;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Fetching receipt", buf, 0xCu);
                  }

                  v81 = sub_1001F1F30([AppReceiptTask alloc], *(v11 + 58));
                  v26 = v81;
                  if (v81)
                  {
                    objc_setProperty_nonatomic_copy(v81, v82, *(v11 + 42), 58);
                    *(v26 + 74) = 8;
                    objc_setProperty_nonatomic_copy(v26, v83, *(v11 + 122), 66);
                    v26[50] = 1;
                  }

                  v101 = 0;
                  [v11 runSubTask:v26 returningError:{&v101, v92}];
                  v84 = v101;
                  if (v84)
                  {
                    v85 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                    {
                      v87 = *(v11 + 122);
                      *buf = v92;
                      v110 = v87;
                      v111 = 2114;
                      v112[0] = v84;
                      _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "[%@] Receipt refresh failed with error: %{public}@", buf, 0x16u);
                    }
                  }
                }

                else if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v88 = *(v11 + 122);
                  *buf = 138412290;
                  v110 = v88;
                  _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@] Receipt refresh failed - application not found", buf, 0xCu);
                }

                v10 = 1;
              }

              else
              {
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  v86 = *(a1 + 122);
                  *buf = v92;
                  v110 = v86;
                  v111 = 2114;
                  v112[0] = v26;
                  _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%@] Sinf update resulted in error: %{public}@", buf, 0x16u);
                }

                v10 = 0;
                v11 = a1;
              }

              goto LABEL_72;
            }
          }
        }

        else
        {
          if ((v36 | v37) == 1)
          {
            if (v13)
            {
              v53 = objc_getProperty(v13, v23, 72, 1);
              v55 = v53;
              v56 = a1;
              if (v53)
              {
                v53 = objc_getProperty(v53, v54, 144, 1);
              }
            }

            else
            {
              v55 = 0;
              v53 = 0;
              v56 = a1;
            }

            v57 = v53;

            v58 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *(v56 + 122);
              *buf = 138412290;
              v110 = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%@] Using sinf data for from download", buf, 0xCu);
            }

            v52 = v57;
            goto LABEL_53;
          }

          v97 = 0;
        }

        v11 = a1;
        v26 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v69 = *(a1 + 122);
          *buf = 138412290;
          v110 = v69;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Did not perform an inline update of the sinf", buf, 0xCu);
        }

        goto LABEL_71;
      }

      v38 = 1;
LABEL_73:
      v9 = v98;
LABEL_74:

      objc_autoreleasePoolPop(v15);
      if (!v38)
      {
        goto LABEL_111;
      }

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v90 = [obj countByEnumeratingWithState:&v104 objects:v113 count:16];
    v9 = v90;
  }

  while (v90);
LABEL_111:

  v108 = v10 & 1;
  return v108;
}

uint64_t sub_1002CBA70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002CBA88(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002CBAE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v37 = a3;
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v35 = a3;
    v36 = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v5 items];
    v40 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v40)
    {
      goto LABEL_37;
    }

    v39 = *v49;
    v43 = a1;
    while (1)
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v10 = [v9 results];
        if ([v10 count])
        {
          v41 = v10;
          v42 = i;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v45;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v45 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v44 + 1) + 8 * j);
                v17 = [*(a1 + 32) logKey];
                v18 = v16;
                v19 = @"VPP Free Purchase";
                objc_opt_self();
                v20 = [v18 status];
                if (v20)
                {
                  if (v20 == 1)
                  {
                    v21 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      v22 = [v18 bundleID];
                      v23 = [v18 error];
                      *buf = 138543874;
                      v55 = v22;
                      v56 = 2114;
                      v57 = v23;
                      v58 = 2114;
                      v59 = @"VPP Free Purchase";
                      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Import failed for bundleID: %{public}@ error: %{public}@ reason: %{public}@", buf, 0x20u);
                      goto LABEL_23;
                    }
                  }

                  else
                  {
                    if (v20 != 2)
                    {
                      goto LABEL_25;
                    }

                    v21 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = [v18 persistentID];
                      v23 = [v18 bundleID];
                      *buf = 138543874;
                      v55 = v22;
                      v56 = 2114;
                      v57 = v23;
                      v58 = 2114;
                      v59 = @"VPP Free Purchase";
                      v24 = v21;
                      v25 = "Import success for job: %{public}@ / %{public}@ reason: %{public}@";
                      goto LABEL_22;
                    }
                  }
                }

                else
                {
                  v21 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = [v18 persistentID];
                    v23 = [v18 bundleID];
                    *buf = 138543874;
                    v55 = v22;
                    v56 = 2114;
                    v57 = v23;
                    v58 = 2114;
                    v59 = @"VPP Free Purchase";
                    v24 = v21;
                    v25 = "Skipped duplicate job: %{public}@ / %{public}@ reason: %{public}@";
LABEL_22:
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x20u);
LABEL_23:

                    a1 = v43;
                  }
                }

LABEL_25:
              }

              v13 = [v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v13);
          }

          v26 = *(a1 + 40);
          v10 = v41;
          i = v42;
          if (v26)
          {
            [v26 addObjectsFromArray:v11];
          }
        }

        else
        {
          v27 = [v9 purchase];
          v28 = [v27 bundleID];

          v29 = ASDLogHandleForCategory();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
          if (v28)
          {
            if (v30)
            {
              v31 = *(*(a1 + 48) + 122);
              *buf = 138412802;
              v55 = v31;
              v56 = 2114;
              v57 = v28;
              v58 = 2114;
              v59 = v37;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@] Free purchase failed for bundleID: %{public}@ error: %{public}@", buf, 0x20u);
            }
          }

          else if (v30)
          {
            v32 = *(*(a1 + 48) + 122);
            v33 = [v9 purchase];
            v34 = [v33 buyParameters];
            *buf = 138412802;
            v55 = v32;
            v56 = 2114;
            v57 = v34;
            v58 = 2114;
            v59 = v37;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@] Free purchase failed with buyParams: %{public}@ error: %{public}@", buf, 0x20u);
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v40)
      {
LABEL_37:

        a3 = v35;
        v5 = v36;
        break;
      }
    }
  }

  if (v37)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

id *sub_1002CC188(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if (os_variant_has_internal_content())
    {
      v10.receiver = a1;
      v10.super_class = PresentTapToRadarRequestFlow;
      v8 = objc_msgSendSuper2(&v10, "init");
      a1 = v8;
      if (v8)
      {
        objc_storeStrong(v8 + 2, a2);
        objc_storeStrong(a1 + 1, a3);
      }
    }

    else
    {

      a1 = 0;
    }
  }

  return a1;
}

void sub_1002CC240(uint64_t a1)
{
  if (a1)
  {
    v2 = [NSString stringWithFormat:@"INTERNAL ONLY\n%@", *(a1 + 16)];
    v3 = [NSString stringWithFormat:@"%@\n\nPlease file a radar! It's quick and easy.", *(a1 + 8)];
    v4 = v2;
    objc_opt_self();
    v5 = [AMSDialogRequest requestWithTitle:v4 message:v3];

    v6 = [AMSDialogAction actionWithTitle:@"File A Radar" style:0];
    [v6 setIdentifier:@"FILE_RADAR_IDENTIFIER"];
    [v5 addButtonAction:v6];
    v7 = [AMSDialogAction actionWithTitle:@"No Thanks" style:2];
    [v5 addButtonAction:v7];
    [v5 setDefaultAction:v6];

    v8 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v5];
    v9 = [v8 present];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002CC400;
    v10[3] = &unk_10051D790;
    v10[4] = a1;
    [v9 addFinishBlock:v10];
  }
}

void sub_1002CC400(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v2)
  {
    v5 = [v3 selectedActionIdentifier];
    v6 = [v5 isEqual:@"FILE_RADAR_IDENTIFIER"];

    if (v6)
    {
      if (objc_getProperty(v2, v7, 24, 1))
      {
        Property = objc_getProperty(v2, v8, 24, 1);
        v10 = Property[2]();
      }

      else
      {
        v10 = 0;
      }

      v11 = v2[2];
      v12 = v10;
      objc_opt_self();
      v13 = objc_alloc_init(NSURLComponents);
      [v13 setScheme:@"tap-to-radar"];
      [v13 setHost:@"new"];
      v14 = objc_alloc_init(NSMutableArray);
      v15 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"App Store"];
      [v14 addObject:v15];

      v16 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"New Bugs"];
      [v14 addObject:v16];

      v17 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"685220"];
      [v14 addObject:v17];

      v18 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Serious Bug"];
      [v14 addObject:v18];

      v19 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"I Didn't Try"];
      [v14 addObject:v19];

      v20 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:@"phone"];
      [v14 addObject:v20];

      if (v11 && [v11 length])
      {
        v21 = [[NSURLQueryItem alloc] initWithName:@"Title" value:v11];
        [v14 addObject:v21];
      }

      if (v12 && [v12 length])
      {
        v22 = [[NSURLQueryItem alloc] initWithName:@"Description" value:v12];
        [v14 addObject:v22];
      }

      [v13 setQueryItems:v14];
      v23 = [v13 URL];

      v24 = +[LSApplicationWorkspace defaultWorkspace];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002CC76C;
      v26[3] = &unk_100521568;
      v27 = v23;
      v25 = v23;
      [v24 openURL:v25 configuration:0 completionHandler:v26];
    }
  }
}

void sub_1002CC76C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Tap-to-radar failed: %{public}@ error: %{public}@", &v7, 0x16u);
    }
  }
}

void sub_1002CC840(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 24);
  }
}

void *sub_1002CC8A4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = MediaApp;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v4 = [v3 objectForKeyedSubscript:@"id"];
      v5 = [v4 copy];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (a1[3] = [v5 longLongValue], objc_msgSend(v3, "objectForKeyedSubscript:", @"href"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "copy"), v8 = a1[4], a1[4] = v7, v8, v6, objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v9 = [v3 copy];
        v10 = a1[1];
        a1[1] = v9;
      }

      else
      {
        v10 = v5;
        v5 = a1;
        a1 = 0;
      }
    }
  }

  return a1;
}

id *sub_1002CC9D0(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1[1] objectForKeyedSubscript:@"attributes"];
      if (v4)
      {
        v5 = sub_10037DD34([MediaAppAttributes alloc], v4);
        v6 = v2[2];
        v2[2] = v5;
      }

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1002CCA54(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_1002CD234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location, id a41)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a41);
  _Unwind_Resume(a1);
}

void sub_1002CD298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v3;
    v5 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Client was disconnected: %{public}@", &v6, 0x16u);
  }

  sub_1002CD394(WeakRetained, v3);
}

void sub_1002CD394(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    sub_1003ED52C(v3);
    v4 = a1;
    objc_sync_enter(v4);
    [v4[1] removeObject:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

void sub_1002CD418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v3;
    v5 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Client lost connection: %{public}@", &v6, 0x16u);
  }

  sub_1002CD394(WeakRetained, v3);
}

void sub_1002CDC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CDC80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002CDC98(void *a1, void *a2)
{
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = sub_10031A62C(a2, *(a1[4] + 88));
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  return *(*(a1[5] + 8) + 24);
}

void sub_1002CDE64(uint64_t a1)
{
  if (a1)
  {
    v2 = +[BagService appstoredService];
    v3 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002CDF00;
    v4[3] = &unk_10051BCE0;
    v4[4] = a1;
    [v2 bagOnQueue:v3 completionHandler:v4];
  }
}

void sub_1002CDF00(uint64_t a1, void *a2)
{
  v38 = a2;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing cleanup on startup", buf, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = objc_opt_new();
    v4 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_100549488];
    *&v56 = _NSConcreteStackBlock;
    *(&v56 + 1) = 3221225472;
    v57 = sub_1002CF874;
    v58 = &unk_100521660;
    v5 = v3;
    v59 = v5;
    sub_1002CF88C(v4, &v56);

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      LODWORD(v56) = 134217984;
      *(&v56 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "╒ Cleaning up stale coordinators. %lu active coordinator IDs:", &v56, 0xCu);
    }

    if ([v5 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v41 objects:buf count:16];
      if (v9)
      {
        v10 = *v42;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v42 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v41 + 1) + 8 * i);
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v56) = 138543362;
              *(&v56 + 4) = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "┊   %{public}@", &v56, 0xCu);
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v41 objects:buf count:16];
        }

        while (v9);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "┊   <none>", &v56, 2u);
      }
    }

    *&v56 = 0;
    *(&v56 + 1) = &v56;
    v57 = 0x2020000000;
    v58 = 0;
    v40 = 0;
    *v47 = _NSConcreteStackBlock;
    *&v47[8] = 3221225472;
    *&v47[16] = sub_1002D02A0;
    v48 = &unk_10051E678;
    v14 = v5;
    v49 = v14;
    v50 = &v56;
    v15 = [IXAppInstallCoordinator enumerateCoordinatorsWithError:&v40 usingBlock:v47];
    v16 = v40;
    if (v15)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(&v56 + 1) + 24);
        *v45 = 67109376;
        LODWORD(v46[0]) = 1;
        WORD2(v46[0]) = 2048;
        *(v46 + 6) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "╘ Coordinator cleanup complete with result: %d cancel count: %ld", v45, 0x12u);
      }
    }

    else
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v45 = 138543362;
        v46[0] = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "╘ Coordinator cleanup complete with error: %{public}@", v45, 0xCu);
      }
    }

    _Block_object_dispose(&v56, 8);
    v19 = *(a1 + 32);
    v20 = v38;
    if (v19)
    {
      v21 = v20;
      v22 = objc_alloc_init(NSMutableDictionary);
      *buf = _NSConcreteStackBlock;
      v52 = 3221225472;
      v53 = sub_1002D0678;
      v54 = &unk_100521660;
      v23 = v22;
      v55 = v23;
      sub_1002CF88C(0, buf);
      if ([v23 count] && (*&v56 = 0, *&v41 = _NSConcreteStackBlock, *(&v41 + 1) = 3221225472, *&v42 = sub_1002D07EC, *(&v42 + 1) = &unk_10051E6A0, *&v43 = v23, +[IXAppInstallCoordinator enumerateCoordinatorsWithError:usingBlock:](IXAppInstallCoordinator, "enumerateCoordinatorsWithError:usingBlock:", &v56, &v41), v24 = v56, v43, v24))
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v47 = 138543362;
          *&v47[4] = v24;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@", v47, 0xCu);
        }
      }

      else if ([v23 count])
      {
        v24 = [v23 allValues];
        v26 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v23 count];
          v28 = [v24 componentsJoinedByString:@", "];
          *v47 = 134218242;
          *&v47[4] = v27;
          *&v47[12] = 2114;
          *&v47[14] = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cleaning up %lu stale install(s): %{public}@", v47, 0x16u);
        }

        sub_1002D00AC(v24, v21);
      }

      else
      {
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No stale installs", v47, 2u);
        }
      }
    }
  }

  else
  {
    v37 = v38;
  }

  if (!*(a1 + 32))
  {
    v33 = 0;
LABEL_41:
    *buf = 0;
    *&v41 = 0;
    sub_1002CEA0C(v33, 1, &__NSArray0__struct, buf, &v41);
    if ((v41 + *buf) >= 1)
    {
      v34 = +[UpdatesManager sharedManager];
      [v34 noteUpdatesStateChanged:@"Post Cleanup" logKey:0];
    }

    goto LABEL_45;
  }

  v29 = sub_1003D603C();
  v30 = v29;
  if (v29)
  {
    [v29 timeIntervalSinceNow];
    v32 = v31 < -86400.0;

    if (!v32)
    {
      v33 = *(a1 + 32);
      goto LABEL_41;
    }
  }

  if (sub_1002CE75C(*(a1 + 32), 1, 0, v38) >= 1)
  {
    v35 = +[UpdatesManager sharedManager];
    [v35 noteUpdatesStateChanged:@"Post Stale Cleanup" logKey:0];
  }

LABEL_45:
  v36 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Cleanup on startup complete", buf, 2u);
  }
}

uint64_t sub_1002CE75C(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cleaning up updates", buf, 2u);
    }

    if (a2)
    {
      sub_1003D6180();
    }

    v25 = 0;
    v26 = 0;
    sub_1002CEA0C(a1, a2, v7, &v26, &v25);
    if ([v7 count])
    {
      v10 = objc_opt_new();
      v11 = sub_1003C27BC();
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1002D084C;
      v22 = &unk_10051FD88;
      v23 = v7;
      v12 = v10;
      v24 = v12;
      [v11 readUsingSession:&v19];

      if ([v12 count])
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 array];
          v15 = [v14 componentsJoinedByString:{@", "}];
          *buf = 138543362;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Canceling jobs for deletedApps: [%{public}@]", buf, 0xCu);
        }

        sub_1002D00AC(v12, v8);
      }
    }

    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = (v25 + v26);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update clean up complete with %ld changes", buf, 0xCu);
    }

    v17 = v25 + v26;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1002CEA0C(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  if (a1)
  {
    v10 = objc_opt_new();
    v11 = +[LSDatabaseContext sharedDatabaseContext];
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_1002CFBBC;
    v43 = &unk_1005216F0;
    v44 = a1;
    v45 = v10;
    v12 = v10;
    [v11 accessUsingBlock:&v40];

    v13 = [v12 copy];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v14 = objc_opt_new();
    v15 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_100549470];
    v16 = sub_1003C27BC();
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_1002CF6CC;
    v43 = &unk_10051FD88;
    v44 = v15;
    v17 = v14;
    v45 = v17;
    v18 = v15;
    [v16 readUsingSession:&v40];

    v19 = v45;
    v20 = v17;

    LOBYTE(v18) = +[UpdatesManager shouldUseModernUpdates];
    v21 = sub_1002BB3F0();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1002D0B34;
    v24[3] = &unk_100521768;
    v30 = v18;
    v25 = v9;
    v28 = &v32;
    v31 = a2;
    v29 = &v36;
    v22 = v20;
    v26 = v22;
    v23 = v13;
    v27 = v23;
    [v21 modifyUsingTransaction:v24];

    if (a5)
    {
      *a5 = v33[3];
    }

    if (a4)
    {
      *a4 = v37[3];
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }
}

void sub_1002CED08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1002CED30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002CEE1C;
    v11[3] = &unk_10051C7A8;
    v12 = v7;
    v13 = a1;
    v14 = v8;
    v15 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_1002CEE1C(uint64_t a1)
{
  [_TtC9appstored38PreinstalledAppUpdateAuthorizationTask cleanupAfterUninstalledAppsWithBundleIDs:*(a1 + 32)];
  v2 = sub_1002CE75C(*(a1 + 40), 0, *(a1 + 32), *(a1 + 48));
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = v2;
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002CEEF0;
    v6[3] = &unk_1005215C0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void sub_1002CEF04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cleaning up updates following app being registered", buf, 2u);
    }

    v8 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002CF010;
    v9[3] = &unk_10051B2D0;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, v9);
  }
}

void sub_1002CF010(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v2 = sub_1002BB3F0();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002CF17C;
  v8[3] = &unk_100521610;
  v9 = *(a1 + 32);
  v10 = v11;
  [v2 modifyUsingTransaction:v8];

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002CF6B0;
    v5[3] = &unk_10051E4B0;
    v6 = v3;
    v7 = v11;
    dispatch_async(v4, v5);
  }

  _Block_object_dispose(v11, 8);
}

BOOL sub_1002CF17C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"update_state" equalToLongLong:0];
  v5 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:*(a1 + 32)];
  v19[0] = v5;
  v19[1] = v4;
  v6 = [NSArray arrayWithObjects:v19 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [v3 connection];
  v9 = sub_1002D4C68(AppUpdateMemoryEntity, v8, v7);

  v18[0] = @"bundle_id";
  v18[1] = @"store_software_version_id";
  v10 = [NSArray arrayWithObjects:v18 count:2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002CF370;
  v15[3] = &unk_1005215E8;
  v11 = *(a1 + 40);
  v16 = v3;
  v17 = v11;
  v12 = v3;
  [v9 enumerateMemoryEntitiesWithProperties:v10 usingBlock:v15];
  v13 = *(*(*(a1 + 40) + 8) + 24) > 0;

  return v13;
}

void sub_1002CF370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = [v5 bundleID];
  v7 = [v5 evid];
  v8 = [v7 unsignedLongLongValue];

  if (v8)
  {
    v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 iTunesMetadata];
      v12 = [v11 versionIdentifier];

      if (v12 <= v8)
      {
        if (v12 != v8)
        {
          v16 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 138543874;
            v25 = v6;
            v26 = 2048;
            v27 = v12;
            v28 = 2048;
            v29 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping changing update state of bundleID: %{public}@ to installed app evid: %llu with update evid: %llu", &v24, 0x20u);
          }

          goto LABEL_13;
        }

        v18 = [AppUpdateEntity alloc];
        v19 = [v5 databaseID];
        v20 = [*(a1 + 32) connection];
        v16 = [(SQLiteEntity *)v18 initWithPersistentID:v19 onConnection:v20];

        v21 = +[NSDate date];
        [v16 setValue:v21 forProperty:@"install_date"];

        [v16 setValue:&off_100547B48 forProperty:@"update_state"];
        v22 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138543874;
          v25 = v6;
          v26 = 2048;
          v27 = v8;
          v28 = 2048;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updated update state of bundleID: %{public}@ to installed app evid: %llu equals update evid: %llu", &v24, 0x20u);
        }
      }

      else
      {
        v13 = [AppUpdateEntity alloc];
        v14 = [v5 databaseID];
        v15 = [*(a1 + 32) connection];
        v16 = [(SQLiteEntity *)v13 initWithPersistentID:v14 onConnection:v15];

        [v16 deleteFromDatabase];
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138543874;
          v25 = v6;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed update with bundleID: %{public}@ due to newly installed app evid: %llu being greater than update evid: %llu", &v24, 0x20u);
        }
      }

      ++*(*(*(a1 + 40) + 8) + 24);
LABEL_13:
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1002CF6CC(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(AppInstallEntity, v3, *(a1 + 32));

  v8 = @"bundle_id";
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002CF7F4;
  v6[3] = &unk_100521638;
  v7 = *(a1 + 40);
  [v4 enumeratePersistentIDsAndProperties:v5 usingBlock:v6];
}

void sub_1002CF7F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"bundle_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }
}

id *sub_1002CF874(id *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a5 != 50)
    {
      return [result[4] addObject:?];
    }
  }

  return result;
}

void sub_1002CF88C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_1003C27BC();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002CF964;
  v8[3] = &unk_100521688;
  v6 = v3;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [v5 readUsingSession:v8];
}

void sub_1002CF964(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(AppInstallEntity, v3, *(a1 + 32));

  v8[0] = @"coordinator_id";
  v8[1] = @"phase";
  v8[2] = @"bundle_id";
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002CFAA0;
  v6[3] = &unk_100521790;
  v7 = *(a1 + 40);
  [v4 enumeratePersistentIDsAndProperties:v5 usingBlock:v6];
}

void sub_1002CFAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"coordinator_id"];
  objc_opt_class();
  v9 = sub_1001C09E4(v5);

  v6 = [v4 objectForKeyedSubscript:@"phase"];
  [v6 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"bundle_id"];

  objc_opt_class();
  v8 = sub_1001C09E4(v7);

  (*(*(a1 + 32) + 16))();
}

void sub_1002CFBBC(uint64_t a1)
{
  v2 = [LSApplicationRecord enumeratorWithOptions:0];
  [v2 setFilter:&stru_1005216C8];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          *buf = 138412546;
          v46 = v9;
          v47 = 2112;
          v48 = v7;
          v10 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%@]: Including application: %@", buf, 0x16u);
        }

        v11 = *(a1 + 40);
        v12 = [v7 iTunesMetadata];
        v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 storeItemIdentifier]);
        [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v4);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = [LSApplicationRecord enumeratorWithOptions:64];
  v14 = [v35 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v38;
    *&v15 = 138412546;
    v34 = v15;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v35);
        }

        v19 = *(*(&v37 + 1) + 8 * j);
        v20 = [v19 placeholderFailureReason];
        v21 = ASDLogHandleForCategory();
        v22 = v21;
        if (v20 == 4)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            v24 = v23;
            v25 = [v19 bundleIdentifier];
            *buf = 138412802;
            v46 = v23;
            v47 = 2114;
            v48 = v25;
            v49 = 2048;
            v50 = 4;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@]: Application is not installed: %{public}@ and is 32-bit: %ld", buf, 0x20u);
          }

          v26 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            *buf = v34;
            v46 = v27;
            v47 = 2112;
            v48 = v19;
            v28 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%@]: Including application: %@", buf, 0x16u);
          }

          v22 = [NSNumber numberWithBool:1];
          v29 = *(a1 + 40);
          v30 = [v19 iTunesMetadata];
          v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 storeItemIdentifier]);
          [v29 setObject:v22 forKeyedSubscript:v31];
        }

        else
        {
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            goto LABEL_24;
          }

          v32 = objc_opt_class();
          v30 = v32;
          v33 = [v19 bundleIdentifier];
          *buf = 138412802;
          v46 = v32;
          v47 = 2114;
          v48 = v33;
          v49 = 2048;
          v50 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%@]: Application is not installed: %{public}@ and not 32-bit: %ld", buf, 0x20u);
        }

LABEL_24:
      }

      v16 = [v35 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v16);
  }
}

BOOL sub_1002D006C(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 iTunesMetadata];
  v3 = [v2 storeItemIdentifier] != 0;

  return v3;
}

void sub_1002D00AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_1003C27BC();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D0184;
  v8[3] = &unk_10051CA38;
  v6 = v3;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  [v5 modifyUsingTransaction:v8];
}

uint64_t sub_1002D0184(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sub_1002067C8(v3, [*(*(&v10 + 1) + 8 * v8) longLongValue], -30, *(a1 + 40));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

uint64_t sub_1002D02A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 creatorIdentifier] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v3 uniqueIdentifier];
    LOBYTE(v4) = [v4 containsObject:v5];

    if (v4)
    {
      if ([v3 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithDeviceSecurityPromise])
      {
        v20 = 0;
        v19 = 0;
        v6 = [v3 getHasDeviceSecurityPromise:&v20 error:&v19];
        v7 = v19;
        if ((v6 & 1) == 0)
        {
          v8 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v22 = v3;
            v23 = 2114;
            v24 = v7;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to determine if promise set for: %{public}@ error: %{public}@", buf, 0x16u);
          }
        }

        if (v20 == 1)
        {
          v9 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"device-security" client:1 diskSpaceNeeded:0];
          [v9 setPercentComplete:1.0];
          [v9 setComplete:1];
          v18 = v7;
          v10 = [v3 setDeviceSecurityPromise:v9 error:&v18];
          v11 = v18;

          if ((v10 & 1) == 0)
          {
            v12 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v22 = v3;
              v23 = 2114;
              v24 = v11;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to set promise for: %{public}@ error: %{public}@", buf, 0x16u);
            }
          }

          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v22 = v3;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "├ Active(S): %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v9 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v22 = v3;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "├ Active(U): %{public}@", buf, 0xCu);
          }

          v11 = v7;
        }
      }

      else
      {
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v22 = v3;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "├ Active:    %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "├ Untracked: %{public}@", buf, 0xCu);
      }

      v15 = ASDErrorWithTitleAndMessage();
      [v3 cancelForReason:v15 client:1 error:0];

      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return 1;
}

void sub_1002D0678(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = ASDLogHandleForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a5 == 50)
  {
    if (v12)
    {
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping active install in postamble", &v14, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      v13 = sub_100382EEC(a5);
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found active install in phase: %{public}@ coordinatorID: %{public}@", &v14, 0x20u);
    }

    v11 = [NSNumber numberWithLongLong:a2];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
  }
}

BOOL sub_1002D07EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 uniqueIdentifier];
  [v3 setObject:0 forKeyedSubscript:v4];

  return [*(a1 + 32) count] != 0;
}

void sub_1002D084C(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];
        v10 = [v3 connection];
        v11 = sub_1002D3DF0(AppInstallEntity, v10, v9);

        if ([v11 existsInDatabase])
        {
          v12 = [[LSApplicationRecord alloc] initForInstallMachineryWithBundleIdentifier:v8 placeholder:1 error:0];
          v13 = [v12 installType];
          v14 = sub_1003402E8(v11, @"IFNULL(app_install.phase, 10)");
          if ((v13 - 7) <= 2)
          {
            v15 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v11];
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v15;
              v17 = v16;
              v18 = "[%@] Skipping cancellation, this looks like a promotion failure";
              goto LABEL_13;
            }

            goto LABEL_14;
          }

          if (v14 >= -19)
          {
            v19 = *(v21 + 40);
            v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 persistentID]);
            [v19 addObject:v20];

            v15 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v11];
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v15;
              v17 = v16;
              v18 = "[%@] Scheduling install cancellation following app deletion";
LABEL_13:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
            }

LABEL_14:
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }
}

BOOL sub_1002D0B34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 72) == 1)
  {
    v5 = [v3 connection];
    v6 = [SQLiteQueryDescriptor alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = sub_1002D3838(v6, v7, v8);
    v11 = v9;
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v10, &off_1005494A0, 40);
    }

    v12 = +[_TtC9appstored20MediaAPIUpdateEntity installDatePropertyKey];
    v48 = v12;
    v14 = [NSArray arrayWithObjects:&v48 count:1];
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v13, v14, 40);
    }

    v15 = [[SQLiteQuery alloc] initOnConnection:v5 descriptor:v11];
    v16 = +[_TtC9appstored20MediaAPIUpdateEntity BOOLeanPropertyMaskKey];
    v47[0] = v16;
    v17 = +[_TtC9appstored20MediaAPIUpdateEntity bundleIDPropertyKey];
    v47[1] = v17;
    v18 = +[_TtC9appstored20MediaAPIUpdateEntity updateStatePropertyKey];
    v47[2] = v18;
    v19 = [NSArray arrayWithObjects:v47 count:3];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1002D0F98;
    v39[3] = &unk_100521718;
    v40 = *(a1 + 32);
    v41 = v5;
    v44 = *(a1 + 73);
    v43 = *(a1 + 56);
    v42 = *(a1 + 40);
    v20 = v5;
    [v15 enumerateMemoryEntitiesWithProperties:v19 usingBlock:v39];
    v21 = *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v22 = [SQLiteQueryDescriptor alloc];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = sub_1002D3838(v22, v23, v24);
    v11 = v25;
    if (v25)
    {
      objc_setProperty_nonatomic_copy(v25, v26, &off_1005494B8, 40);
    }

    v46 = @"install_date";
    v28 = [NSArray arrayWithObjects:&v46 count:1];
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v27, v28, 48);
    }

    v29 = [SQLiteQuery alloc];
    v30 = [v4 connection];
    v15 = [(SQLiteQuery *)v29 initOnConnection:v30 descriptor:v11];

    v45[0] = @"bundle_id";
    v45[1] = @"update_state";
    v45[2] = @"store_item_id";
    v45[3] = @"is_offloaded";
    v19 = [NSArray arrayWithObjects:v45 count:4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1002D1230;
    v32[3] = &unk_100521740;
    v33 = *(a1 + 48);
    v34 = *(a1 + 32);
    v35 = v4;
    v38 = *(a1 + 73);
    v37 = *(a1 + 56);
    v36 = *(a1 + 40);
    [v15 enumerateMemoryEntitiesWithProperties:v19 usingBlock:v32];
    v21 = *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24);

    v20 = v33;
  }

  return v21 > 0;
}

void sub_1002D0F98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databaseID];
  v5 = [v3 bundleID];
  if (([v3 isOffloaded] & 1) == 0 && objc_msgSend(*(a1 + 32), "containsObject:", v5))
  {
    v6 = [[_TtC9appstored20MediaAPIUpdateEntity alloc] initWithPersistentID:v4 onConnection:*(a1 + 40)];
    [(SQLiteEntity *)v6 deleteFromDatabase];
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removed modern update with bundle identifier “%{public}@” because the associated app was uninstalled.", &v13, 0xCu);
    }

    v8 = 56;
    goto LABEL_16;
  }

  if (*(a1 + 72) == 1)
  {
    v9 = [v3 updateState];
    if (v9 == 4)
    {
      if (([*(a1 + 48) containsObject:v5] & 1) == 0)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543874;
          v14 = v5;
          v15 = 2048;
          v16 = 4;
          v17 = 2048;
          v18 = 0;
          v11 = "Updating purchased state for modern update with bundle identifier “%{public}@” from %ld to %ld…";
          goto LABEL_14;
        }

LABEL_15:

        v6 = [[_TtC9appstored20MediaAPIUpdateEntity alloc] initWithPersistentID:v4 onConnection:*(a1 + 40)];
        v7 = [NSNumber numberWithInteger:0];
        v12 = +[_TtC9appstored20MediaAPIUpdateEntity updateStatePropertyKey];
        [(SQLiteEntity *)v6 setValue:v7 forProperty:v12];

        v8 = 64;
LABEL_16:

        ++*(*(*(a1 + v8) + 8) + 24);
      }
    }

    else if (v9 == 3)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543874;
        v14 = v5;
        v15 = 2048;
        v16 = 3;
        v17 = 2048;
        v18 = 0;
        v11 = "Updating purchasing state for modern update with bundle identifier “%{public}@” from %ld to %ld…";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x20u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }
}

void sub_1002D1230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 itemID];
  v5 = [v3 bundleID];
  v6 = sub_10023E0F8(v3, @"update_state");
  v7 = [v6 integerValue];

  v8 = sub_10023E0F8(v3, @"is_offloaded");
  v9 = [*(a1 + 32) objectForKey:v4];
  v10 = v9;
  if (!v9 || ([v9 isEqualToNumber:v8] & 1) == 0)
  {
    if ([*(a1 + 40) count] && v5 && objc_msgSend(*(a1 + 40), "containsObject:", v5))
    {
      v11 = [AppUpdateEntity alloc];
      v12 = [v3 databaseID];
      v13 = [*(a1 + 48) connection];
      v14 = [(SQLiteEntity *)v11 initWithPersistentID:v12 onConnection:v13];

      [(SQLiteEntity *)v14 deleteFromDatabase];
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = v5;
        v16 = "Removed uninstalled update with bundleID: %{public}@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v26, 0xCu);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (!v10)
    {
      v19 = [AppUpdateEntity alloc];
      v20 = [v3 databaseID];
      v21 = [*(a1 + 48) connection];
      v14 = [(SQLiteEntity *)v19 initWithPersistentID:v20 onConnection:v21];

      [(SQLiteEntity *)v14 deleteFromDatabase];
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = v5;
        v16 = "Removed update with bundleID: %{public}@ due to no matching app";
        goto LABEL_16;
      }

LABEL_17:

      v22 = 64;
LABEL_23:
      ++*(*(*(a1 + v22) + 8) + 24);

      goto LABEL_24;
    }
  }

  if (*(a1 + 80) == 1)
  {
    if (v7 == 4)
    {
      if (([*(a1 + 56) containsObject:v5] & 1) == 0)
      {
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543618;
          v27 = v5;
          v28 = 2048;
          v29 = 4;
          v18 = "Updating purchased state for update with bundleID: %{public}@ currentState: %ld";
          goto LABEL_21;
        }

LABEL_22:

        v23 = [AppUpdateEntity alloc];
        v24 = [v3 databaseID];
        v25 = [*(a1 + 48) connection];
        v14 = [(SQLiteEntity *)v23 initWithPersistentID:v24 onConnection:v25];

        [(SQLiteEntity *)v14 setValue:&off_100547BA8 forProperty:@"update_state"];
        v22 = 72;
        goto LABEL_23;
      }
    }

    else if (v7 == 3)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = v5;
        v28 = 2048;
        v29 = 3;
        v18 = "Updating purchasing state for update with bundleID: %{public}@ currentState: %ld";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v26, 0x16u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

void sub_1002D1FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) bundleID];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed legacy request from: %{public}@ for system application: %{public}@ (%{public}@)", &v10, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void *sub_1002D20B0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SQLitePreparedStatement;
    v6 = objc_msgSendSuper2(&v10, "init");
    a1 = v6;
    if (v6)
    {
      v6[1] = a2;
      v7 = [v5 copy];
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

void sub_1002D24CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_1002D2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002D29E0(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  return [v3 applyBinding:a2 atIndex:&v5];
}

void sub_1002D2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D2AEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v3 = *(v3 + 8);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002D2B88;
  v6[3] = &unk_100521818;
  v6[6] = v3;
  v4 = *(a1 + 40);
  v6[4] = v2;
  v6[5] = v4;
  [v2 enumeratePersistentIDsUsingBlock:v6];
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1002D2B88(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_1002D2DDC(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_1002D2E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  if (v7)
  {
    [v7[2] addEntriesFromDictionary:v6];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1002D30A4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002D31C8;
  v8[3] = &unk_1005218E0;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  sub_100214814(v5, v8);

  _Block_object_dispose(v13, 8);
}

void sub_1002D31B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D31C8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[NSMutableDictionary alloc] initWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002D331C;
    v15[3] = &unk_1005218B8;
    v11 = v8;
    v16 = v11;
    v12 = v5;
    v17 = v12;
    [v10 enumerateObjectsUsingBlock:v15];
    v13 = a1[5];
    v14 = sqlite3_column_int64(v12[6], 0);
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1002D331C(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sub_1003B7CF4(v5, a3 + 1);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_1002D3498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D34B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1002D3838(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = SQLiteQueryDescriptor;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      result[1] = a2;
      result[3] = a3;
    }
  }

  return result;
}

id sub_1002D3DF0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1002D34B0;
  v19 = sub_1002D34C0;
  v20 = 0;
  v7 = sub_1002D3F5C(v6, v4, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002D3FD4;
  v11[3] = &unk_100521930;
  v13 = &v15;
  v14 = v6;
  v8 = v4;
  v12 = v8;
  [v7 enumeratePersistentIDsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_1002D3F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002D3F5C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = sub_1002D4680(v6, v5, v4, 0);

  return v7;
}

void sub_1002D3FD4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

id sub_1002D4034(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1002D34B0;
  v19 = sub_1002D34C0;
  v20 = objc_opt_new();
  v7 = sub_1002D3F5C(v6, v4, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002D41B4;
  v11[3] = &unk_100521958;
  v14 = v6;
  v8 = v4;
  v12 = v8;
  v13 = &v15;
  [v7 enumeratePersistentIDsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_1002D419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D41B4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

id sub_1002D4220(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1002D42B0(v9, v8, @"COUNT", v7, v6);

  return v10;
}

id sub_1002D42B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1002D34B0;
  v32 = sub_1002D34C0;
  v33 = 0;
  v13 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:v12];
  v15 = v13;
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v14, v10, 56);
  }

  v16 = [NSString alloc];
  v17 = [v12 disambiguatedSQLForProperty:v8];
  v18 = [v16 initWithFormat:@"%@(%@)", v9, v17];

  v34 = v8;
  v19 = [NSArray arrayWithObjects:&v34 count:1];
  v20 = [NSArray arrayWithObject:v18];
  v21 = [(SQLiteQueryDescriptor *)v15 _newSelectSQLWithProperties:v19 columns:v20];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002D4A10;
  v25[3] = &unk_10051DEB8;
  v22 = v15;
  v26 = v22;
  v27 = &v28;
  sub_10022C3C4(v11, v21, v25);
  v23 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v23;
}

void sub_1002D4514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002D453C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1002D42B0(v9, v8, @"MIN", v7, v6);

  return v10;
}

_UNKNOWN **sub_1002D45CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1002D42B0(v9, v8, @"SUM", v7, v6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = &off_100547BC0;
  }

  v12 = v11;

  return v11;
}

id sub_1002D4680(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1002D470C(v9, v8, v7, v6, 0);

  return v10;
}

id sub_1002D470C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = sub_1002D47B4(v12, v11, v10, v9, v8, v12);

  return v13;
}

id sub_1002D47B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a2;
  objc_opt_self();
  v14 = [SQLiteQueryDescriptor alloc];
  v15 = [a6 memoryEntityClass];
  if (v14 && (v16 = v15, v24.receiver = v14, v24.super_class = SQLiteQueryDescriptor, (v17 = objc_msgSendSuper2(&v24, "init")) != 0))
  {
    v19 = v17;
    v17[1] = a6;
    v17[3] = v16;
    objc_setProperty_nonatomic_copy(v17, v18, v11, 48);
    objc_setProperty_nonatomic_copy(v19, v20, v12, 40);
    objc_setProperty_nonatomic_copy(v19, v21, v10, 56);
  }

  else
  {
    v19 = 0;
  }

  v22 = [[SQLiteQuery alloc] initOnConnection:v13 descriptor:v19];

  return v22;
}

id sub_1002D48F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = sub_1002D47B4(v8, v7, v6, 0, 0, a4);

  return v9;
}

id sub_1002D4974(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = sub_1002D47B4(v11, v10, v9, v8, 0, a5);

  return v12;
}

void sub_1002D4A10(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v4 applyBinding:v5 atIndex:&v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002D4AD0;
  v6[3] = &unk_10051D4F0;
  v6[4] = *(a1 + 40);
  sub_100214814(v5, v6);
}

void sub_1002D4AD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_1003B7CF4(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

id sub_1002D4B20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1002D34B0;
  v15 = sub_1002D34C0;
  v16 = 0;
  v7 = sub_1002D4C68(v6, v4, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D4CE0;
  v10[3] = &unk_10051B010;
  v10[4] = &v11;
  [v7 enumerateMemoryEntitiesUsingBlock:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_1002D4C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002D4C68(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = sub_1002D4D18(v6, v5, v4, 0);

  return v7;
}

id sub_1002D4D18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [SQLiteQueryDescriptor alloc];
  v11 = [v9 databaseEntityClass];
  if (v10 && (v12 = v11, v19.receiver = v10, v19.super_class = SQLiteQueryDescriptor, (v13 = objc_msgSendSuper2(&v19, "init")) != 0))
  {
    v15 = v13;
    v13[1] = v12;
    v13[3] = v9;
    objc_setProperty_nonatomic_copy(v13, v14, v7, 48);
    objc_setProperty_nonatomic_copy(v15, v16, v6, 56);
  }

  else
  {
    v15 = 0;
  }

  v17 = [[SQLiteQuery alloc] initOnConnection:v8 descriptor:v15];

  return v17;
}

void sub_1002D5080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002D50A0(uint64_t a1)
{
  result = [*(a1 + 32) _calculatePurgeableSpace];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1002D51BC(uint64_t a1)
{
  result = [*(a1 + 32) _purgeForDesiredSpace:{objc_msgSend(*(a1 + 40), "longLongValue")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_1002D52B4(uint64_t a1)
{
  result = [*(a1 + 32) _calculatePurgeableSpace];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002D5390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D53A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100547C50];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppInstallEntity, v5, v4);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D54B4;
  v9[3] = &unk_10051CCA0;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v9];
}

void sub_1002D54B4(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [(SQLiteEntity *)v6 valueForProperty:@"download_path"];
  memset(&v12, 0, sizeof(v12));
  v8 = stat([v7 fileSystemRepresentation], &v12);
  st_blocks = v12.st_blocks;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v12.st_blocks < 1;
  }

  if (!v10)
  {
    *(*(*(a1 + 40) + 8) + 24) += v12.st_blocks << 9;
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = v7;
      v15 = 2048;
      v16 = st_blocks << 9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Purgable asset: %{public}@ size: %{bytes}ld", buf, 0x16u);
    }
  }
}

uint64_t sub_1002D58B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002D58CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100547C50];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppInstallEntity, v5, v4);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002D59D8;
  v9[3] = &unk_10051CCA0;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 enumeratePersistentIDsUsingBlock:v9];
}

void sub_1002D59D8(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [(SQLiteEntity *)v6 valueForProperty:@"download_path"];
  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v9 = [v8 attributesOfItemAtPath:v7 error:0];
    v10 = [v9 objectForKey:NSFileSize];
    if ([v10 unsignedLongLongValue])
    {
      v15 = [v9 fileModificationDate];
      v11 = [NSNumber numberWithLongLong:a2];
      v12 = sub_1002943F0(v6);
      v13 = sub_10029430C(v6);
      v16[0] = @"date";
      v16[1] = @"installID";
      v17[0] = v15;
      v17[1] = v11;
      v16[2] = @"size";
      v16[3] = @"bundleID";
      v17[2] = v10;
      v17[3] = v12;
      v16[4] = @"logKey";
      v17[4] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];
      [*(*(*(a1 + 40) + 8) + 40) addObject:v14];
    }
  }
}

uint64_t sub_1002D5BE4(uint64_t a1, void *a2)
{
  v20 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 138412290;
    v18 = v4;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v22 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v21 + 1) + 8 * v7);
      v9 = [v8 objectForKeyedSubscript:{@"installID", v18}];
      v10 = [v8 objectForKeyedSubscript:@"size"];
      v11 = [v8 objectForKeyedSubscript:@"bundleID"];
      v12 = [v8 objectForKeyedSubscript:@"logKey"];
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v18;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Canceling download due to CacheDelete policy", buf, 0xCu);
      }

      sub_1002067C8(v20, [v9 longLongValue], -30, *(a1 + 32));
      v14 = sub_1003649C8();
      sub_100365318(v14, v11);

      *(*(*(a1 + 48) + 8) + 24) += [v10 unsignedLongLongValue];
      v15 = *(a1 + 56);
      v16 = *(*(*(a1 + 48) + 8) + 24);

      if (v16 > v15)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

SystemAppLookupTask *sub_1002D5E7C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [SystemAppLookupTask alloc];
  v4 = v2;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = SystemAppLookupTask;
    v3 = objc_msgSendSuper2(&v8, "init");
    if (v3)
    {
      v5 = [[NSArray alloc] initWithArray:v4 copyItems:1];
      bundleIDs = v3->_bundleIDs;
      v3->_bundleIDs = v5;
    }
  }

  return v3;
}

uint64_t sub_1002D5F44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002D5F5C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(MADownloadOptions);
  [v3 setAllowsCellularAccess:1];
  [v3 setAllowsExpensiveAccess:1];
  [v3 setCanUseLocalCacheServer:1];
  [v3 setDiscretionary:0];
  [v3 setRequiresPowerPluggedIn:0];
  [v3 setTimeoutIntervalForResource:60];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002D607C;
  v6[3] = &unk_1005219A8;
  v4 = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.SystemApp" options:v3 completionWithError:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1002D607C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (a2)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218242;
      v9 = a2;
      v10 = 2114;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update MobileAsset catalog with result %ld: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1002D6884(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 setDoNotBlockOnNetworkStatus:1];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 addKeyValuePair:@"AppBundleID" with:v5];

  [v6 addKeyValuePair:@"BuildID" with:*(a1 + 32)];
  [v6 addKeyValuePair:@"SystemImageID" with:*(a1 + 40)];
  [v6 returnTypes:5];
  v7 = [v6 queryMetaDataSync];

  return v7;
}

id sub_1002D6988()
{
  objc_opt_self();
  v0 = +[AMSProcessInfo currentProcess];
  v1 = [AMSUserAgent userAgentForProcessInfo:v0];

  return v1;
}

void sub_1002D7394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1002D73D0(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    goto LABEL_13;
  }

  if (([v3[15] applicationHasMIDBasedSINF] & 1) != 0 || !objc_msgSend(v3[15], "applicationMissingRequiredSINF") || !sub_1003D3128(v3, v5))
  {
    if (([v3[15] isPlaceholder] & 1) == 0 && sub_1003D3068(v3) && (sub_1003D2404(v3) & 1) == 0)
    {
      v37 = sub_1003D248C(v3);
      v11 = [ASFReceipt receiptFromBundleAtPath:v37];

      if (v11 && ([v11 isVPPLicensed] & 1) != 0)
      {
        v13 = a1[4];
        v38 = v3;
        v11 = v11;
        if (!v13)
        {
          goto LABEL_92;
        }

LABEL_18:
        v15 = sub_1001F1F30([AppReceiptTask alloc], v3);
        v17 = v15;
        if (v15)
        {
          objc_setProperty_nonatomic_copy(v15, v16, *(v13 + 144), 66);
        }

        if (v11)
        {
          v18 = [v11 isVPPLicensed];
          if (v17)
          {
            if (v18)
            {
              *(v17 + 74) = 8;
            }
          }
        }

        Property = sub_1003D23D0(v3);
        v21 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v20, 16, 1);
        }

        v22 = Property;

        if (v22)
        {
          if (v21)
          {
            v24 = objc_getProperty(v21, v23, 16, 1);
            if (v24)
            {
              v25 = v24;
              v26 = +[ACAccountStore ams_sharedAccountStore];
              v27 = [v26 ams_iTunesAccountWithDSID:v25];

              if (v17)
              {
                objc_setProperty_nonatomic_copy(v17, v28, v27, 58);
              }
            }
          }
        }

        v106 = 0;
        v29 = [v13 runSubTask:v17 returningError:&v106];
        v30 = v106;
        if (v17)
        {
          v31 = *(v17 + 82);
          v32 = v31;
          if (v29)
          {
            if (v31 && (([v31 isRevoked] & 1) != 0 || v17[51] == 1) && objc_msgSend(v32, "isVPPLicensed") && (!v3 || (objc_msgSend(v3[15], "applicationHasMIDBasedSINF") & 1) == 0) && (sub_10025CEA4(v13, v3) & 1) == 0)
            {
              v33 = *(v13 + 112);
              sub_1003D0F60(v3);
              v34 = v94 = v32;
              [v33 setObject:v3 forKeyedSubscript:v34];

              v32 = v94;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v32 = 0;
          if (v29)
          {
LABEL_42:
            if (!os_variant_has_internal_content())
            {
              goto LABEL_91;
            }

            v101 = v30;
            v35 = *(v13 + 112);
            v105 = sub_1003D0F60(v3);
            v36 = [v35 objectForKeyedSubscript:?];
            if (!v36)
            {
              v39 = *(v13 + 128);
              if (v39)
              {
                v95 = v32;
                v40 = sub_1003D0F60(v3);
                v41 = [v39 containsObject:v40];

                if (v41)
                {
                  v98 = v21;
                  v42 = *(v13 + 112);
                  v43 = sub_1003D0F60(v3);
                  [v42 setObject:v3 forKeyedSubscript:v43];

                  v44 = ASDLogHandleForCategory();
                  v105 = v44;
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    v45 = *(v13 + 144);
                    v46 = v45;
                    v47 = sub_1003D0F60(v3);
                    *buf = 138412546;
                    v108 = v45;
                    v109 = 2114;
                    v110 = v47;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Marking as QA revoked", buf, 0x16u);
                  }

                  v21 = v98;
                  v30 = v101;
                  v32 = v95;
                  goto LABEL_90;
                }

                v32 = v95;
LABEL_91:

LABEL_92:
                ++*(*(a1[6] + 8) + 24);
LABEL_93:

                goto LABEL_94;
              }
            }

LABEL_90:
            goto LABEL_91;
          }
        }

        v99 = v21;
        v48 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v104 = v30;
          v79 = *(v13 + 144);
          v80 = v79;
          sub_1003D0F60(v3);
          v81 = v97 = v32;
          *buf = 138412802;
          v108 = v79;
          v30 = v104;
          v109 = 2114;
          v110 = v81;
          v111 = 2114;
          v112 = v104;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Failed to get receipt with error: %{public}@", buf, 0x20u);

          v32 = v97;
        }

        if (!v11)
        {
          v21 = v99;
          goto LABEL_91;
        }

        v96 = v32;
        v49 = v3;
        v50 = [v11 expirationDate];
        v105 = v49;
        if (os_variant_has_internal_content())
        {
          v102 = v30;
          v51 = *(v13 + 120);
          v52 = sub_1003D0F60(v49);
          v53 = [v51 objectForKeyedSubscript:v52];

          if (v53)
          {
            v54 = *(v13 + 120);
            v55 = sub_1003D0F60(v49);
            v56 = [v54 objectForKeyedSubscript:v55];

            v57 = ASDLogHandleForCategory();
            v21 = v99;
            v30 = v102;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v85 = *(v13 + 144);
              log = v85;
              v87 = sub_1003D0F60(v105);
              if (v56)
              {
                [v56 timeIntervalSince1970];
                v59 = v58;
              }

              else
              {
                v59 = 0;
              }

              *buf = 138412802;
              v108 = v85;
              v109 = 2114;
              v110 = v87;
              v111 = 2048;
              v112 = v59;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using QA receipt expiration date: %{time_t}ld ", buf, 0x20u);
            }
          }

          else
          {
            v56 = v50;
            v21 = v99;
            v30 = v102;
          }
        }

        else
        {
          v56 = v50;
          v21 = v99;
        }

        v32 = v96;
        if (!v56)
        {
LABEL_89:

          goto LABEL_90;
        }

        v100 = +[NSDate date];
        [v56 timeIntervalSinceDate:?];
        if (v60 >= 1)
        {
          v93 = v56;
          v103 = v30;
          v61 = v60;
          v62 = +[BagService appstoredService];
          v63 = [v62 lastBag];
          v64 = [v63 integerForKey:@"receipt-expiration-warning-threshold" defaultValue:604800];

          v65 = v64;
          v66 = ASDLogHandleForCategory();
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
          if (v65 < v61)
          {
            if (v67)
            {
              loga = v66;
              v68 = *(v13 + 144);
              v88 = v68;
              v69 = sub_1003D0F60(v105);
              if (v100)
              {
                [v100 timeIntervalSince1970];
                v71 = v70;
              }

              else
              {
                v71 = 0;
              }

              [v93 timeIntervalSince1970];
              *buf = 138413314;
              v108 = v68;
              v109 = 2114;
              v110 = v69;
              v111 = 2048;
              v112 = (v61 / 86400.0);
              v113 = 2048;
              v114 = v71;
              v115 = 2048;
              v116 = v72;
              v66 = loga;
              _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [Silent] Receipt expiration in %ld days today: %{time_t}ld expiration: %{time_t}ld", buf, 0x34u);
            }

            v30 = v103;
            v32 = v96;
            goto LABEL_87;
          }

          if (v67)
          {
            logb = v66;
            v73 = *(v13 + 144);
            v89 = v73;
            v86 = sub_1003D0F60(v105);
            if (v100)
            {
              [v100 timeIntervalSince1970];
              [v93 timeIntervalSince1970];
            }

            else
            {
              [v93 timeIntervalSince1970];
            }

            *buf = 138413314;
            v108 = v73;
            v109 = 2114;
            v110 = v86;
            v111 = 2048;
            v112 = (v61 / 86400.0);
            v113 = 2048;
            v114 = v84;
            v115 = 2048;
            v116 = v75;
            v66 = logb;
            _os_log_impl(&_mh_execute_header, logb, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Receipt expiration in %ld days today: %{time_t}ld expiration: %{time_t}ld", buf, 0x34u);
          }

          v76 = *(v13 + 88);
          v77 = sub_1003D0F60(v105);
          v78 = v76;
          v56 = v93;
          [v78 setObject:v93 forKeyedSubscript:v77];

          if (!*(v13 + 104))
          {
            v30 = v103;
            v32 = v96;
LABEL_86:
            objc_storeStrong((v13 + 104), v93);
            v82 = v105;
            v83 = *(v13 + 96);
            *(v13 + 96) = v82;
            v66 = v83;
LABEL_87:

            v56 = v93;
            goto LABEL_88;
          }

          v30 = v103;
          v32 = v96;
          if ([v93 compare:?] != 1)
          {
            goto LABEL_86;
          }
        }

LABEL_88:

        goto LABEL_89;
      }

      v12 = 1;
LABEL_14:
      if (!os_variant_has_internal_content())
      {
        goto LABEL_93;
      }

      v13 = a1[4];
      if (!v13 || (v12 & *(v13 + 136)) != 1)
      {
        goto LABEL_93;
      }

      v14 = v3;
      v11 = v11;
      goto LABEL_18;
    }

LABEL_13:
    v11 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    if (v7)
    {
      v8 = *(v7 + 144);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = sub_1003D0F60(v3);
    *buf = 138412546;
    v108 = v8;
    v109 = 2114;
    v110 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Receipt refresh migrating VPP app", buf, 0x16u);
  }

  sub_10025CEA4(a1[4], v3);
  ++*(*(a1[5] + 8) + 24);
LABEL_94:
  objc_autoreleasePoolPop(v4);
}