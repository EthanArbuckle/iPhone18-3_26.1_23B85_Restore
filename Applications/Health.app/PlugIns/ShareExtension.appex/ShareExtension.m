void sub_100001188(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [*(a1 + 32) _extractZipContent:v6];
  }

  else
  {
    [*(a1 + 32) _logError:v5 message:@"Failed to deliver zip contents to share extension"];
  }

  [*(a1 + 32) _shareProviderFinished];
}

void sub_10000122C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [*(a1 + 32) _prepareXMLData:v6];
  }

  else
  {
    [*(a1 + 32) _logError:v5 message:@"Failed to deliver XML content to share extension"];
  }

  [*(a1 + 32) _shareProviderFinished];
}

void sub_1000013D0(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 pathname];
  v4 = [v3 lowercaseString];
  v5 = [v4 hasSuffix:@".xml"];

  v6 = v10;
  if (v5)
  {
    v7 = [v10 dataWithMaxSizeBytes:4999999 error:0];
    v8 = [*(a1 + 32) _containsPasswordProtectedData:v7];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _passwordProtectedZip];
    }

    else
    {
      [v9 _prepareXMLData:v7];
    }

    v6 = v10;
  }
}

void sub_100001EC8(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  v2 = *&CGAffineTransformIdentity.c;
  v3[0] = *&CGAffineTransformIdentity.a;
  v3[1] = v2;
  v3[2] = *&CGAffineTransformIdentity.tx;
  [v1 setTransform:v3];
}

void sub_100001FFC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020A0;
  block[3] = &unk_1000082A0;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000020A0(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v3)
    {
      [v2 _logError:v3 message:@"Failed to save documents in health kit"];
      v4 = *(a1 + 32);
      v5 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = [v5 localizedStringForKey:@"CDA_SHARE_ALERT_TITLE" value:&stru_100008520 table:@"HealthUI-Localizable"];
      v7 = [*(a1 + 40) localizedDescription];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000021F0;
      v9[3] = &unk_100008278;
      v9[4] = *(a1 + 32);
      [v4 _importAlertWithTitle:v6 message:v7 doneHandler:v9];

      return;
    }

    [v2 _logError:0 message:@"Failed to save documents in health kit -- no error provided"];
  }

  v8 = *(a1 + 32);

  [v8 _dismissShareExtension];
}

void sub_1000022BC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 frame];
  CGAffineTransformMakeTranslation(&v6, 0.0, v3);
  v4 = [*(a1 + 32) view];
  v5 = v6;
  [v4 setTransform:&v5];
}

void sub_100002338(uint64_t a1)
{
  v1 = [*(a1 + 32) extensionContext];
  [v1 completeRequestReturningItems:0 completionHandler:0];
}

uint64_t sub_1000024DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t *sub_1000026A0(uint64_t a1)
{
  --*(*(a1 + 32) + 24);
  result = *(a1 + 32);
  if (result[3] <= 0)
  {
    return [result _allShareProvidersFinished];
  }

  return result;
}

void sub_100002B18(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error enumerating contents of %@: %@", &v3, 0x16u);
}

void sub_100002BA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Share extension problem: %@", &v2, 0xCu);
}

void sub_100002C18(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Share extension problem: %@", &v4, 0xCu);
}

void sub_100002CB0(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Share extension problem: %@: %@", &v6, 0x16u);
}