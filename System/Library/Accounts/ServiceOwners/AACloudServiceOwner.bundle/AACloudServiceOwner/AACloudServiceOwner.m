void sub_1548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1568(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1580(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v7 = a4;

  (*(*(a1 + 32) + 16))();
}

void sub_18B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  v6 = a3;

  (*(*(a1 + 32) + 16))();
}

void sub_1974()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"accountStore" object:? file:? lineNumber:? description:?];
}

void sub_19E8()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"serviceType" object:? file:? lineNumber:? description:?];
}

void sub_1A5C()
{
  sub_1964();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"AACloudServiceOwner.m" lineNumber:44 description:{@"Unexpected service type: %@", v0}];
}

void sub_1AD4()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[account.accountType.identifier isEqualToString:ACAccountTypeIdentifierAppleAccount]" object:? file:? lineNumber:? description:?];
}

void sub_1B48()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[serviceType isEqualToString:[self.class _serviceTypeForPlatform]]" object:? file:? lineNumber:? description:?];
}

void sub_1BBC()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[account.accountType.identifier isEqualToString:ACAccountTypeIdentifierAppleAccount]" object:? file:? lineNumber:? description:?];
}

void sub_1C30()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[serviceType isEqualToString:[self.class _serviceTypeForPlatform]]" object:? file:? lineNumber:? description:?];
}

void sub_1CA4()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[account.accountType.identifier isEqualToString:ACAccountTypeIdentifierAppleAccount]" object:? file:? lineNumber:? description:?];
}

void sub_1D18()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"[serviceType isEqualToString:[self.class _serviceTypeForPlatform]]" object:? file:? lineNumber:? description:?];
}

void sub_1D8C()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

void sub_1E00()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_1E74()
{
  sub_1964();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"AACloudServiceOwner.m" lineNumber:78 description:{@"Unexpected service type: %@", v0}];
}

void sub_1EEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Context does not respond to '_telemetryTimeSeries' selector: %@", &v2, 0xCu);
}

void sub_1F64(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Context responds to '_telemetryTimeSeries' selector: %@", &v2, 0xCu);
}

void sub_1FDC()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

void sub_2050()
{
  sub_1958();
  v1 = +[NSAssertionHandler currentHandler];
  sub_194C();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_20C4()
{
  sub_1964();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"AACloudServiceOwner.m" lineNumber:101 description:{@"Unexpected service type: %@", v0}];
}

onResults:v22 completion:v24];

  _Block_object_dispose(&v27, 8);
}

- (void)signOutService:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1FDC();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  sub_2050();
LABEL_3:
  v12 = [objc_opt_class() _serviceTypeForPlatform];
  v13 = [v8 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    sub_20C4();
  }

  v14 = _AASignOutLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Cloud service owner called to sign out account...", buf, 2u);
  }

  v15 = AIDAServiceTypeCloud;
  v16 = [(AACloudServiceOwner *)self accountForService:AIDAServiceTypeCloud];
  if (v16)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = sub_1568;
    v29 = sub_1578;
    v30 = [[AASignOutFlowController alloc] initWithContext:v9];
    v17 = *(v26 + 5);
    v18 = [v9 signOutContexts];
    v19 = [v18 objectForKeyedSubscript:v15];
    [v17 setDelegate:v19];

    v20 = *(v26 + 5);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_18D0;
    v22[3] = &unk_4180;
    v24 = buf;
    v23 = v11;
    [v20 signOutAppleAccount:v16 completion:v22];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = _AASignOutLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "No active store account, skipping sign out!", buf, 2u);
    }

    v11[2](v11, 1, 0);
  }
}

@end