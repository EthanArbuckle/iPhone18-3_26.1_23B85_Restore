id sub_2398(id a1, MailAccount *a2)
{
  v2 = a2;
  v3 = [(MailAccount *)v2 primaryMailboxUid];
  v4 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v3 account:v2];

  return v4;
}

BOOL sub_2424(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_28C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2FB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_308C(void *a1, void *a2)
{
  v4 = [a1 mailbox];
  v5 = [a2 mailbox];
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 | v7)
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7 != 0;
    }
  }

  else
  {
    v9 = [a1 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 displayName];
    }

    v12 = v11;

    v13 = [a2 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 displayName];
    }

    v16 = v15;

    v8 = [v12 localizedCaseInsensitiveCompare:v16];
  }

  return v8;
}

void sub_3724(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_5080(int a1, int a2)
{
  v4 = [NSMutableString stringWithString:@"FOUND_IN_MAILBOX_FORMAT"];
  v5 = v4;
  if (a1)
  {
    [v4 appendString:@"_WITH_ACCOUNT"];
  }

  if (a2)
  {
    [v5 appendString:@"_SHORT"];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_34FF0 table:@"Main"];

  return v7;
}

void *MFImageForAddressLabelTypeCustomBundleAndBackground(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (!v11)
  {
    v14 = +[UIApplication sharedApplication];
    v11 = [v14 preferredContentSizeCategory];
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (!qword_3C1D8)
  {
    qword_3C1D8 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  if (a6 == 0.0)
  {
    key = ((997 * a5) ^ (31 * a1) ^ [v15 hash]);
    v18 = CFDictionaryGetValue(qword_3C1D8, key);
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    key = 0;
  }

  v19 = v15;
  v57 = v16;
  v54 = v19;
  v56 = v17;
  v20 = sub_5A44(v19);
  v60[0] = NSFontAttributeName;
  v60[1] = NSForegroundColorAttributeName;
  v61[0] = v20;
  v61[1] = v56;
  v21 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v59 = 0;
  v22 = sub_5B0C(a1, v21, &v59, v57, a6);
  v58 = v23;
  v24 = v22;
  v25 = v59;
  [v20 pointSize];
  v27 = v26 * 0.17;
  v63.origin.x = sub_5C84(v20);
  x = v63.origin.x;
  y = v63.origin.y;
  height = v63.size.height;
  v32 = fmax(a6, v31);
  v63.size.width = v32;
  CGRectGetWidth(v63);
  UIRoundToViewScale();
  v53 = v33;
  [v20 capHeight];
  v52 = v34;
  [v20 ascender];
  v51 = v35;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v32;
  v64.size.height = height;
  v50 = CGRectGetHeight(v64);
  [v20 capHeight];
  v49 = v36;
  v62.width = v32;
  v62.height = height;
  UIGraphicsBeginImageContextWithOptions(v62, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v56 setStroke];
  v38 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v19];
  v39 = +[UIFontMetrics defaultMetrics];
  [v39 scaledValueForValue:v38 compatibleWithTraitCollection:2.0];
  v41 = v40;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = v32;
  v65.size.height = height;
  v66 = CGRectInset(v65, 1.5, 1.5);
  v42 = [UIBezierPath bezierPathWithRoundedRect:v66.origin.x cornerRadius:v66.origin.y, v66.size.width, v66.size.height, fmax(fmin(v41, 4.0), 2.0)];
  v43 = v42;
  v44 = [v42 CGPath];

  CGContextAddPath(CurrentContext, v44);
  CGContextSetLineWidth(CurrentContext, v27);
  CGContextStrokePath(CurrentContext);
  [v25 drawWithRect:33 options:v21 attributes:0 context:{v53, v52 - v51 + (v50 - v49) * 0.5, v24, v58}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (a6 == 0.0)
  {
    if (v18)
    {
      CFDictionarySetValue(qword_3C1D8, key, v18);
    }

    else
    {
      v18 = 0;
      CFDictionarySetValue(qword_3C1D8, key, +[NSNull null]);
    }
  }

LABEL_13:
  v45 = +[NSNull null];
  if (v45 == v18)
  {
    v46 = 0;
  }

  else
  {
    v46 = v18;
  }

  v47 = v46;

  return v46;
}

double MFDefaultWidthForAddressLabelType(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = +[NSBundle mainBundle];
  v7 = MFDefaultWidthForAddressLabelTypeCustomBundle(a1, v5, v6, a3);

  return v7;
}

double MFDefaultWidthForAddressLabelTypeCustomBundle(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    v9 = +[UIApplication sharedApplication];
    v7 = [v9 preferredContentSizeCategory];
  }

  v10 = sub_5A44(v7);
  v14 = NSFontAttributeName;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  sub_5B0C(a1, v11, 0, v8, a4);

  [v10 pointSize];
  v16.origin.x = sub_5C84(v10);
  Width = CGRectGetWidth(v16);

  return Width;
}

id sub_5A44(uint64_t a1)
{
  v1 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:a1];
  v2 = [UIFont boldSystemFontOfSize:7.5];
  v3 = +[UIFontMetrics defaultMetrics];
  v4 = [v3 scaledFontForFont:v2 compatibleWithTraitCollection:v1];

  return v4;
}

void sub_5AE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_5B0C(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  v11 = 0.0;
  if (a5 > 0.0)
  {
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = 1.0 / (v13 + v13);

    if (v14 + a5 + -6.0 >= 0.0)
    {
      v11 = v14 + a5 + -6.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  v15 = sub_5D58(a1, 0, v10);
  v16 = sub_5E8C(v15, v9, 0.0);
  v17 = v16;
  if (v11 <= 0.0 || v16 <= v11)
  {
    v21 = v15;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    v19 = v21;
    *a3 = v21;
    goto LABEL_12;
  }

  v21 = sub_5D58(a1, 1, v10);

  v17 = sub_5E8C(v21, v9, v11);
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v17;
}

CGFloat sub_5C84(void *a1)
{
  v1 = a1;
  [v1 capHeight];
  [v1 capHeight];
  UIRoundToViewScale();
  UIRoundToViewScale();
  [v1 capHeight];
  UIRoundToViewScale();

  return CGPointZero.x;
}

id sub_5D58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1 == 3 || a1 == 2)
  {
    v6 = MFLookupLocalizedString();
  }

  else
  {
    if (a1 != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = [v4 localizedStringForKey:@"FROM_LABEL" value:&stru_34FF0 table:@"Main"];
  }

  v7 = v6;
LABEL_10:

  return v7;
}

double sub_5E8C(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (a3 <= 0.0)
  {
    [v5 sizeWithAttributes:v6];
    v8 = v9;
  }

  else
  {
    [v5 boundingRectWithSize:33 options:v6 attributes:0 context:{a3, 0.0}];
    v8 = v7;
  }

  return v8;
}

void sub_60E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFNanoAccountsSettingsDataSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_6734(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 standaloneState] == &dword_0 + 2)
  {
    v4 = [*(a1 + 32) isiCloudAccount:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_68E8(uint64_t a1)
{
  [*(a1 + 32) refreshAccounts];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 accountsSettingsDataSourceDidUpdate:*(a1 + 32)];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_6B6C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"MFNanoWatchAuthenticationFailedAccountIdDarwinNotificationUserInfoKey"];
  v3 = [MailAccount accountWithUniqueId:v2];
  v4 = [v3 nano_account];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [*(a1 + 40) observers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 accountsSettingsDataSource:*(a1 + 40) didReceivedAuthenticationFailureForAccount:v4];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_7CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v26 = v23;

  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_7DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];
}

void sub_7E1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7F68;
  v10[3] = &unk_34AA8;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  v13 = *(a1 + 32);
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:v10];

  objc_destroyWeak(&v14);
}

void sub_7F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  v19 = v17;

  objc_destroyWeak((v18 + 56));
  _Unwind_Resume(a1);
}

void sub_7F68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  if (v3 && !*(a1 + 40))
  {
    v6 = [v3 username];
    v7 = [*(a1 + 48) username];
    v8 = [v6 compare:v7 options:1];

    if (v8)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "#Nano Authenticated on wrong account. Ignoring it.", &buf, 2u);
      }

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"AUTHENTICATION_FAILURE_ALERT_TITLE" value:&stru_34FF0 table:@"Main"];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"AUTHENTICATION_FAILURE_INCORRECT_ACCOUNT_ALERT_DETAILS_FORMAT %@" value:&stru_34FF0 table:@"Main"];
      v14 = [*(a1 + 48) username];
      v15 = [NSString stringWithFormat:v13, v14];
      v4 = [UIAlertController alertControllerWithTitle:v11 message:v15 preferredStyle:1];

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"CANCEL_ALERT_BUTTON" value:&stru_34FF0 table:@"Main"];
      v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:0];

      [v4 addAction:v18];
      [WeakRetained presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "#Nano Google authentication succeeded.", &buf, 2u);
      }

      v36 = 0;
      v37 = &v36;
      v38 = 0x2050000000;
      v20 = qword_3C1E0;
      v39 = qword_3C1E0;
      if (!qword_3C1E0)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v41 = sub_8974;
        v42 = &unk_34AF8;
        v43 = &v36;
        sub_8974(&buf);
        v20 = v37[3];
      }

      v21 = v20;
      _Block_object_dispose(&v36, 8);
      v4 = objc_alloc_init(v20);
      v22 = [*(a1 + 32) username];
      [v4 setUsername:v22];

      v23 = [*(a1 + 32) displayName];
      [v4 setDisplayName:v23];

      v24 = [*(a1 + 32) token];
      [v4 setToken:v24];

      v25 = [*(a1 + 32) refreshToken];
      [v4 setRefreshToken:v25];

      [v4 setIdentityType:1];
      v26 = [*(a1 + 48) localId];
      [v4 setAccountId:v26];

      v27 = [WeakRetained datasource];
      [v27 syncStandaloneAccountIdentity:v4];

      v28 = [*(a1 + 48) nmcuiAccount];
      v29 = [WeakRetained cloudNotificationDatasource];
      v30 = [v29 shouldPromptToEnableNotifications:v28];

      if (v30)
      {
        v31 = [NMCUICloudNotificationOnboardingViewController alloc];
        v32 = [WeakRetained cloudNotificationDatasource];
        v33 = [v31 initWithAccount:v28 dataSource:v32 completion:0];

        [WeakRetained presentViewController:v33 animated:1 completion:0];
      }
    }
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "#Nano Google authentication failed. %{public}@", &buf, 0xCu);
    }
  }

  v34 = [WeakRetained datasource];
  [v34 refreshAccounts];

  v35 = [WeakRetained tableView];
  [v35 reloadData];
}

void sub_84C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class sub_8974(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_3C1E8)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_8B9C;
    v7[4] = &unk_34B18;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    qword_3C1E8 = _sl_dlopen();
  }

  if (!qword_3C1E8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFNanoMailSoftLinking.h" lineNumber:13 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NNMKAccountIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getNNMKAccountIdentityClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFNanoMailSoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "NNMKAccountIdentity"}];

LABEL_10:
    __break(1u);
  }

  qword_3C1E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_8B9C()
{
  result = _sl_dlopen();
  qword_3C1E8 = result;
  return result;
}

void sub_9260(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_9440(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_9570(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_A3C0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_CAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

void sub_CCF8(void *a1)
{
  if (--*(*(a1[6] + 8) + 24) >= 1)
  {
    *(*(a1[7] + 8) + 24) = 0;
    v1 = a1[4];
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v3 localizedStringForKey:@"ALERTS_LAST_SEPARATOR" value:&stru_34FF0 table:@"Main"];
    [v1 appendString:v2];
  }
}

void sub_E254(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_E574(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_E978(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_FCF8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_FF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10F74(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_12218(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_12890(id a1)
{
  v1 = objc_alloc_init(MFNanoBridgeSettingsManager);
  v2 = qword_3C1F8;
  qword_3C1F8 = v1;
}

void sub_12A50(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_1347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_145B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_145F8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C228;
  v9 = qword_3C228;
  if (!qword_3C228)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailLinesOfPreviewKey");
    qword_3C228 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLinesOfPreviewKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_14968()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C238;
  v9 = qword_3C238;
  if (!qword_3C238)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailAskBeforeDeletingKey");
    qword_3C238 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAskBeforeDeletingKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_14ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_14CD8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C248;
  v9 = qword_3C248;
  if (!qword_3C248)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailLoadRemoteImagesKey");
    qword_3C248 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLoadRemoteImagesKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_14E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_15048()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C258;
  v9 = qword_3C258;
  if (!qword_3C258)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailOrganizeByThreadKey");
    qword_3C258 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailOrganizeByThreadKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1519C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_153A4()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C268;
  v9 = qword_3C268;
  if (!qword_3C268)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailSwipeRightActionKey");
    qword_3C268 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSwipeRightActionKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_154F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_157B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_15820()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C278;
  v9 = qword_3C278;
  if (!qword_3C278)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailSignatureKey");
    qword_3C278 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSignatureKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_15974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_15B90()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C290;
  v9 = qword_3C290;
  if (!qword_3C290)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailAlwaysLoadContentDirectlyKey");
    qword_3C290 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAlwaysLoadContentDirectlyKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_15CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_15F04()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_3C2A0;
  v9 = qword_3C2A0;
  if (!qword_3C2A0)
  {
    v1 = sub_17C2C();
    v7[3] = dlsym(v1, "NanoMailCloudNotificationsEnabledKey");
    qword_3C2A0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailCloudNotificationsEnabledKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_16058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_165E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_169C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_176A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17884(uint64_t a1)
{
  sub_17968();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_3C208 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:60 description:{@"Unable to find class %s", "NPSManager"}];

    __break(1u);
  }
}

void sub_17968()
{
  v3[0] = 0;
  if (!qword_3C210)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_17ADC;
    v3[4] = &unk_34B18;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/NanoPreferencesSync.framework/NanoPreferencesSync";
    qword_3C210 = _sl_dlopen();
  }

  if (!qword_3C210)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFNanoBridgeSettingsManager.m" lineNumber:55 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_17ADC()
{
  result = _sl_dlopen();
  qword_3C210 = result;
  return result;
}

void sub_17B48(uint64_t a1)
{
  sub_17C2C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKAccountIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_3C218 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKAccountIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "NNMKAccountIdentity"}];

    __break(1u);
  }
}

void *sub_17C2C()
{
  v4[0] = 0;
  if (!qword_3C220)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_17DA4;
    v4[4] = &unk_34B18;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    qword_3C220 = _sl_dlopen();
  }

  v0 = qword_3C220;
  if (!qword_3C220)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:13 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_17DA4()
{
  result = _sl_dlopen();
  qword_3C220 = result;
  return result;
}

void *sub_17E10(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailLinesOfPreviewKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C228 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17E60(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultLinesOfPreview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17EB0(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailAskBeforeDeletingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C238 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17F00(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultAskBeforeDeleting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17F50(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailLoadRemoteImagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C248 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17FA0(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultLoadRemoteImages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_17FF0(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailOrganizeByThreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C258 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18040(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultOrganizeByThread");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C260 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18090(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailSwipeRightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C268 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_180E0(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultSwipeRightAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18130(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailSignatureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18180(uint64_t a1)
{
  sub_17C2C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKSyncProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_3C280 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKSyncProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:27 description:{@"Unable to find class %s", "NNMKSyncProvider"}];

    __break(1u);
  }
}

void *sub_18264(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultSignatureLocalizationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_182B4(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailAlwaysLoadContentDirectlyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18304(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultAlwaysLoadContentDirectly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18354(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailCloudNotificationsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C2A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_183A4(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultCloudNotificationsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C2A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_183F4(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailPrivacyProtectionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C2B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18444(uint64_t a1)
{
  v2 = sub_17C2C();
  result = dlsym(v2, "NanoMailDefaultAccountUidKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3C2B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18494(uint64_t a1)
{
  sub_17968();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_3C2C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSDomainAccessorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:57 description:{@"Unable to find class %s", "NPSDomainAccessor"}];

    __break(1u);
  }
}

void sub_18830(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_18AB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

NMCUIAccount *__cdecl sub_18B4C(id a1, NNMKAccount *a2)
{
  v2 = [(NNMKAccount *)a2 nmcuiAccount];

  return v2;
}

id _ConfigurePSSpecifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  v28 = a1;
  v27 = a11;
  v26 = a12;
  v25 = a13;
  v18 = [PSSpecifier preferenceSpecifierNamed:a2 target:a3 set:a4 get:a5 detail:a8 cell:a9 edit:a10];
  [v18 setKeyboardType:a6 autoCaps:a7 autoCorrection:0];
  v19 = [v27 objectForKey:@"titles"];
  v20 = v19;
  if (v19 && (v21 = [v19 count], v21 == objc_msgSend(v25, "count")))
  {
    [v18 setValues:v25 titles:v20];
    [v27 removeObjectForKey:@"titles"];
  }

  else
  {
    [v18 setValues:v25];
  }

  if (v26)
  {
    [v18 setProperty:v26 forKey:PSKeyNameKey];
  }

  [v18 setUserInfo:v27];
  if (v28)
  {
    [v28 addObject:v18];
  }

  [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v18;
}

id _ConfigureBooleanPSSpecifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v23 = a1;
  v18 = a11;
  v19 = a12;
  v20 = [PSSpecifier preferenceSpecifierNamed:a2 target:a3 set:a4 get:a5 detail:a8 cell:a9 edit:a10];
  [v20 setKeyboardType:a6 autoCaps:a7 autoCorrection:0];
  if (v19)
  {
    [v20 setProperty:v19 forKey:PSKeyNameKey];
  }

  [v20 setUserInfo:v18];
  if (v23)
  {
    [v23 addObject:v20];
  }

  return v20;
}

id getMailPreferenceValueWithDefault(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 valueForKey:v3];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

id getEmailPreferenceValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 valueForKey:v1];

  return v3;
}

id getEmailPreferenceBoolValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 BOOLForKey:v1];

  return v3;
}

void setEmailPreferenceValue(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  v4 = +[NSUserDefaults em_userDefaults];
  [v4 setObject:v3 forKey:v5];
  if (([v4 synchronize] & 1) == 0)
  {
    NSLog(@"Failed to synchronize");
  }

  CFPreferencesAppSynchronize(EMUserDefaultsMailAppGroup);
}

void setEmailPreferenceBoolValue(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = [NSNumber numberWithBool:a2];
  setEmailPreferenceValue(v4, v3);
}

id getMailPreferenceValue(void *a1)
{
  v1 = getMailPreferenceValueWithDefault(a1, 0);

  return v1;
}

id getMailBoolPreferenceValueWithDefault(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithBool:a2];
  v5 = getMailPreferenceValueWithDefault(v3, v4);

  v6 = [v5 BOOLValue];
  return v6;
}

id getMailBoolPreferenceValue(void *a1)
{
  v1 = getMailPreferenceValueWithDefault(a1, 0);
  v2 = [v1 BOOLValue];

  return v2;
}

BOOL showToCCIndicators(int a1)
{
  MailBoolPreferenceValue = dword_3C120;
  if (dword_3C120 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ShowToCCIndicators");
    dword_3C120 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewShowsNewestAtTop(int a1)
{
  MailBoolPreferenceValue = dword_3C124;
  if (dword_3C124 < 0 || a1)
  {
    MailBoolPreferenceValue = getMailBoolPreferenceValue(@"ConversationViewShowsNewestAtTop");
    dword_3C124 = MailBoolPreferenceValue;
  }

  return MailBoolPreferenceValue != 0;
}

BOOL conversationViewIncludesRelatedMessages(int a1)
{
  v1 = dword_3C128;
  if (dword_3C128 < 0 || a1)
  {
    v1 = getMailBoolPreferenceValue(@"ConversationViewExcludesRelatedMessages") ^ 1;
    dword_3C128 = v1;
  }

  return v1 != 0;
}

BOOL collapseReadConversationMessages(int a1)
{
  MailBoolPreferenceValueWithDefault = dword_3C12C;
  if (dword_3C12C < 0 || a1)
  {
    MailBoolPreferenceValueWithDefault = getMailBoolPreferenceValueWithDefault(@"CollapseReadConversationMessages", 1);
    dword_3C12C = MailBoolPreferenceValueWithDefault;
  }

  return MailBoolPreferenceValueWithDefault != 0;
}

id includeAttachmentsWithReplies(int a1)
{
  v2 = qword_3C2C8;
  if (qword_3C2C8)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = getMailPreferenceValueWithDefault(@"IncludeAttachmentReplies", @"IncludeAttachmentRepliesWhenAdding");
    v5 = [v4 copy];
    v6 = qword_3C2C8;
    qword_3C2C8 = v5;

    v2 = qword_3C2C8;
  }

  return v2;
}

BOOL mutedThreadsMoveToArchive(int a1)
{
  v1 = dword_3C130;
  if (dword_3C130 < 0 || a1)
  {
    v2 = getMailPreferenceValueWithDefault(EMUserDefaultMutedThreadActionKey, EMUserDefaultMutedThreadActionMarkAsRead);
    dword_3C130 = [EMUserDefaultMutedThreadActionMoveToArchiveOrDelete isEqual:v2];

    v1 = dword_3C130;
  }

  return v1 != 0;
}

id rightSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_3C2D8);
  v2 = qword_3C2D0;
  v3 = v2;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = getMailPreferenceValueWithDefault(@"LeftEdgeSwipeAction", @"SwipeActionRead");

    if (qword_3C2D0 != v5)
    {
      objc_storeStrong(&qword_3C2D0, v5);
    }
  }

  os_unfair_lock_unlock(&unk_3C2D8);

  return v5;
}

id leftSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_3C2E8);
  v2 = qword_3C2E0;
  v3 = v2;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = getMailPreferenceValueWithDefault(@"RightEdgeSwipeAction", @"SwipeActionFlag");

    if (qword_3C2E0 != v5)
    {
      objc_storeStrong(&qword_3C2E0, v5);
    }
  }

  os_unfair_lock_unlock(&unk_3C2E8);

  return v5;
}

id preferencesBundle()
{
  v0 = qword_3C2F0;
  if (!qword_3C2F0)
  {
    v1 = UISystemRootDirectory();
    v2 = [v1 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/MobileMailSettings"];
    v3 = [v2 stringByAppendingPathExtension:@"bundle"];
    v4 = [NSBundle bundleWithPath:v3];
    v5 = qword_3C2F0;
    qword_3C2F0 = v4;

    v0 = qword_3C2F0;
  }

  return v0;
}

double MailTableCellTextLeftForLevel(uint64_t a1)
{
  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  result = 55.0;
  if (IsAccessibilityCategory)
  {
    result = 16.0;
  }

  if (a1 >= 1)
  {
    result = result + 31.0;
    if (a1 != 1)
    {
      return result + ((a1 - 1) * 30.0);
    }
  }

  return result;
}

double MailTableCellImageCenterForLevel(uint64_t a1)
{
  v2 = MailTableCellTextLeftForLevel(a1) + -9.5;
  v3 = -32.0;
  if (a1)
  {
    v3 = -23.0;
  }

  return v2 + v3 * 0.5;
}

uint64_t sub_19C00(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  _objc_retain(v1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NanoBridgeMessagePreviewController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  _objc_release(v4);
  type metadata accessor for NanoMailBridgeSettingsNavigationDonation();
  return sub_1A1F4();
}

id sub_19D90(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_1FEA4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for NanoBridgeMessagePreviewController();
  v4 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);
  _objc_release(v6);
  _objc_retain(v4);
  v13 = v4;
  _objc_release(a3);

  _objc_release(v13);
  return v4;
}

id sub_1A010(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for NanoBridgeMessagePreviewController();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id sub_1A1A8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NanoBridgeMessagePreviewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1A1F4()
{
  v14 = 0;
  v13 = sub_1FDC4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v6 - v6;
  v14 = v0;
  sub_1C594(&v6 - v6);
  v7 = sub_20054();
  sub_1B4B0(v1);
  v2 = v7;
  sub_1BD18();
  v9 = v2;
  v3 = sub_1C7A0();
  v8 = v4;
  sub_1A320(v12, v9, v3, v4);

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a1;
  v105 = a2;
  v103 = a3;
  v104 = a4;
  v84 = sub_1CA90;
  v85 = sub_1F71C;
  v86 = sub_1CA90;
  v87 = sub_1F71C;
  v88 = sub_1F6A8;
  v89 = sub_1F6A8;
  v90 = sub_1F768;
  v91 = sub_1F6A8;
  v92 = sub_1F6A8;
  v93 = sub_1F768;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v123 = 0;
  v124 = 0;
  v94 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v100 = 0;
  v95 = sub_1FE64();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v99 = v40 - v98;
  v101 = (*(*(sub_1C9E4(&qword_3C168) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v102 = v40 - v101;
  v107 = sub_1FDF4();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v106);
  v111 = v40 - v110;
  v130 = v40 - v110;
  v129 = v5;
  v128 = v6;
  v126 = v7;
  v127 = v8;
  v125 = v4;
  v112 = sub_1B1F0();
  v113 = [v112 bundleIdentifier];
  if (v113)
  {
    v83 = v113;
    v78 = v113;
    v79 = sub_1FEB4();
    v80 = v9;
    _objc_release(v78);
    v81 = v79;
    v82 = v80;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v77 = v82;
  v76 = v81;
  v123 = v81;
  v124 = v82;
  _objc_release(v112);

  if (v77)
  {
    v74 = v76;
    v75 = v77;
    v72 = v77;
    v73 = v76;
    v116 = v76;
    v117 = v77;

    if (v104)
    {
      v70 = v103;
      v71 = v104;
      v69 = v104;
      v114 = v103;
      v115 = v104;
      sub_1FDE4();
      v10 = (*(v108 + 48))(v102, 1, v107);
      if (v10 != 1)
      {
        (*(v108 + 32))(v111, v102, v107);
        sub_1FE44();
        sub_1FE34();
        (*(v108 + 8))(v111, v107);
      }

      sub_1F84C(v102);
    }

    else
    {
    }
  }

  v12 = v99;
  v13 = Logger.nano.unsafeMutableAddressor();
  (*(v96 + 16))(v12, v13, v95);

  v54 = 32;
  v55 = 7;
  v14 = swift_allocObject();
  v15 = v104;
  v49 = v14;
  *(v14 + 16) = v103;
  *(v14 + 24) = v15;

  v16 = swift_allocObject();
  v17 = v77;
  v56 = v16;
  *(v16 + 16) = v76;
  *(v16 + 24) = v17;
  v67 = sub_1FE54();
  v68 = sub_1FF74();
  v52 = 17;
  v58 = swift_allocObject();
  v51 = 32;
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  v53 = 8;
  *(v59 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v49;
  v50 = v18;
  *(v18 + 16) = v84;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v50;
  v60 = v20;
  *(v20 + 16) = v85;
  *(v20 + 24) = v21;
  v61 = swift_allocObject();
  *(v61 + 16) = v51;
  v62 = swift_allocObject();
  *(v62 + 16) = v53;
  v22 = swift_allocObject();
  v23 = v56;
  v57 = v22;
  *(v22 + 16) = v86;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v57;
  v64 = v24;
  *(v24 + 16) = v87;
  *(v24 + 24) = v25;
  v66 = sub_1C9E4(&qword_3C170);
  v63 = sub_20054();
  v65 = v26;

  v27 = v58;
  v28 = v65;
  *v65 = v88;
  v28[1] = v27;

  v29 = v59;
  v30 = v65;
  v65[2] = v89;
  v30[3] = v29;

  v31 = v60;
  v32 = v65;
  v65[4] = v90;
  v32[5] = v31;

  v33 = v61;
  v34 = v65;
  v65[6] = v91;
  v34[7] = v33;

  v35 = v62;
  v36 = v65;
  v65[8] = v92;
  v36[9] = v35;

  v37 = v64;
  v38 = v65;
  v65[10] = v93;
  v38[11] = v37;
  sub_1BD18();

  if (os_log_type_enabled(v67, v68))
  {
    v39 = v94;
    v41 = sub_1FFA4();
    v40[5] = sub_1C9E4(&qword_3C178);
    v42 = sub_1D8C4(0);
    v43 = sub_1D8C4(2);
    v45 = &v122;
    v122 = v41;
    v46 = &v121;
    v121 = v42;
    v47 = &v120;
    v120 = v43;
    v44 = 2;
    sub_1D918(2, &v122);
    sub_1D918(v44, v45);
    v118 = v88;
    v119 = v58;
    sub_1D92C(&v118, v45, v46, v47);
    v48 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v118 = v89;
      v119 = v59;
      sub_1D92C(&v118, &v122, &v121, &v120);
      v40[3] = 0;
      v118 = v90;
      v119 = v60;
      sub_1D92C(&v118, &v122, &v121, &v120);
      v40[2] = 0;
      v118 = v91;
      v119 = v61;
      sub_1D92C(&v118, &v122, &v121, &v120);
      v40[1] = 0;
      v118 = v92;
      v119 = v62;
      sub_1D92C(&v118, &v122, &v121, &v120);
      v40[0] = 0;
      v118 = v93;
      v119 = v64;
      sub_1D92C(&v118, &v122, &v121, &v120);
      _os_log_impl(&dword_0, v67, v68, "Failed to create donation. urlString: %s bundleIdentifier: %s", v41, 0x16u);
      sub_1D978(v42);
      sub_1D978(v43);
      sub_1FF84();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v96 + 8))(v99, v95);
}

id sub_1B1F0()
{
  sub_1F8F4();
  type metadata accessor for NanoMailBridgeSettingsNavigationDonation();
  return sub_1B348();
}

uint64_t Logger.nano.unsafeMutableAddressor()
{
  if (qword_3C138 != -1)
  {
    swift_once();
  }

  v0 = sub_1FE64();
  return sub_1F980(v0, static Logger.nano);
}

uint64_t sub_1B2A4(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1FED4("nil", 3uLL, 1);
  }
}

id sub_1B348()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t sub_1B3A0()
{
  v10 = 0;
  v4[1] = 0;
  v9 = sub_1FDC4();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = v4 - v4[0];
  v10 = v0;
  sub_1B4B0(v4 - v4[0]);
  v5 = sub_20054();
  v1 = sub_1B6BC();
  v4[3] = v2;
  sub_1A320(v8, v5, v1, v2);

  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_1B4B0@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v13 = "APP_NAME";
  v23 = 0;
  v7 = 0;
  v6 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v5 - v6;
  v8 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v18 = (&v5 - v8);
  v2 = sub_1FE94();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v9;
  v23 = v1;
  v10 = 4;
  v11 = 1;
  sub_1FED4("Mail", 4uLL, 1);
  sub_1FE84();
  v15 = sub_1FED4("Main", v10, v11 & 1);
  v16 = v3;
  sub_1B93C(v18);
  sub_1B9C8();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v11 & 1;
  return sub_1FDD4();
}

uint64_t sub_1B6BC()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("", 0, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

uint64_t sub_1B93C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = type metadata accessor for NanoMailBridgeSettingsNavigationDonation();
  v3 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v1 = sub_1FDB4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B9E0()
{
  v14 = 0;
  v13 = sub_1FDC4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v6 - v6;
  v14 = v0;
  sub_1BB0C(&v6 - v6);
  v7 = sub_20054();
  sub_1B4B0(v1);
  v2 = v7;
  sub_1BD18();
  v9 = v2;
  v3 = sub_1BD5C();
  v8 = v4;
  sub_1A320(v12, v9, v3, v4);

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1BB0C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = "ACCOUNTS_SCREEN_TITLE";
  v21 = 0;
  v6 = 0;
  v5 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v5 - v5;
  v7 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v16 = (&v5 - v7);
  v2 = sub_1FE94();
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v12 = &v5 - v8;
  v21 = v1;
  v9 = 1;
  sub_1FED4("Accounts", 8uLL, 1);
  sub_1FE84();
  v13 = sub_1FED4("Main", 4uLL, v9 & 1);
  v14 = v3;
  sub_1B93C(v16);
  sub_1B9C8();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = v9 & 1;
  return sub_1FDD4();
}

uint64_t sub_1BD5C()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("&path=ACCOUNTS_ID", 0x11uLL, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

uint64_t sub_1BFDC()
{
  v14 = 0;
  v13 = sub_1FDC4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v6 - v6;
  v14 = v0;
  sub_1C108(&v6 - v6);
  v7 = sub_20054();
  sub_1B4B0(v1);
  v2 = v7;
  sub_1BD18();
  v9 = v2;
  v3 = sub_1C314();
  v8 = v4;
  sub_1A320(v12, v9, v3, v4);

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C108@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = "INCLUDE_MAIL";
  v23 = 0;
  v7 = 0;
  v6 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v5 - v6;
  v8 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v18 = (&v5 - v8);
  v2 = sub_1FE94();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v9;
  v23 = v1;
  v13 = 12;
  v10 = 1;
  sub_1FED4("Include Mail", 0xCuLL, 1);
  sub_1FE84();
  v15 = sub_1FED4("Main", 4uLL, v10 & 1);
  v16 = v3;
  sub_1B93C(v18);
  sub_1B9C8();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v10 & 1;
  return sub_1FDD4();
}

uint64_t sub_1C314()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("&path=INCLUDE_MAIL_ID", 0x15uLL, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

uint64_t sub_1C594@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = "MESSAGE_PREVIEW";
  v23 = 0;
  v7 = 0;
  v6 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v5 - v6;
  v8 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v18 = (&v5 - v8);
  v2 = sub_1FE94();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v9;
  v23 = v1;
  v13 = 15;
  v10 = 1;
  sub_1FED4("Message Preview", 0xFuLL, 1);
  sub_1FE84();
  v15 = sub_1FED4("Main", 4uLL, v10 & 1);
  v16 = v3;
  sub_1B93C(v18);
  sub_1B9C8();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v10 & 1;
  return sub_1FDD4();
}

uint64_t sub_1C7A0()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("&path=MESSAGE_PREVIEW_ID", 0x18uLL, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

uint64_t sub_1C9E4(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_1CB18()
{
  v14 = 0;
  v13 = sub_1FDC4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v6 - v6;
  v14 = v0;
  sub_1CC44(&v6 - v6);
  v7 = sub_20054();
  sub_1B4B0(v1);
  v2 = v7;
  sub_1BD18();
  v9 = v2;
  v3 = sub_1CE50();
  v8 = v4;
  sub_1A320(v12, v9, v3, v4);

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1CC44@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = "DEFAULT_REPLIES";
  v23 = 0;
  v7 = 0;
  v6 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v5 - v6;
  v8 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v18 = (&v5 - v8);
  v2 = sub_1FE94();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v9;
  v23 = v1;
  v13 = 15;
  v10 = 1;
  sub_1FED4("Default Replies", 0xFuLL, 1);
  sub_1FE84();
  v15 = sub_1FED4("Main", 4uLL, v10 & 1);
  v16 = v3;
  sub_1B93C(v18);
  sub_1B9C8();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v10 & 1;
  return sub_1FDD4();
}

uint64_t sub_1CE50()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("&path=DEFAULT_REPLIES_ID", 0x18uLL, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

uint64_t sub_1D0D0()
{
  v14 = 0;
  v13 = sub_1FDC4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v6 - v6;
  v14 = v0;
  sub_1D1FC(&v6 - v6);
  v7 = sub_20054();
  sub_1B4B0(v1);
  v2 = v7;
  sub_1BD18();
  v9 = v2;
  v3 = sub_1D408();
  v8 = v4;
  sub_1A320(v12, v9, v3, v4);

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D1FC@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = "SIGNATURE";
  v23 = 0;
  v7 = 0;
  v6 = (*(*(sub_1FE14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = &v5 - v6;
  v8 = (*(*(sub_1FDB4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v18 = (&v5 - v8);
  v2 = sub_1FE94();
  v9 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v9;
  v23 = v1;
  v13 = 9;
  v10 = 1;
  sub_1FED4("Signature", 9uLL, 1);
  sub_1FE84();
  v15 = sub_1FED4("Main", 4uLL, v10 & 1);
  v16 = v3;
  sub_1B93C(v18);
  sub_1B9C8();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v10 & 1;
  return sub_1FDD4();
}

uint64_t sub_1D408()
{
  v6 = sub_1B1F0();
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    sub_1FEB4();
    v4 = v0;
    _objc_release(v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_release(v6);
  if (!v5)
  {
    return 0;
  }

  sub_20044();
  v8._countAndFlagsBits = sub_1FED4("bridge:root=", 0xCuLL, 1);
  sub_20034(v8);

  sub_20024();
  v9._countAndFlagsBits = sub_1FED4("&path=SIGNATURE_ID", 0x12uLL, 1);
  sub_20034(v9);

  sub_1F9D8();
  v2 = sub_1FEC4();

  return v2;
}

id sub_1D688()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for NanoMailBridgeSettingsNavigationDonation();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_1D72C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NanoMailBridgeSettingsNavigationDonation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1D778()
{
  v1 = sub_1FE64();
  sub_1FA04(v1, static Logger.nano);
  sub_1F980(v1, static Logger.nano);
  if (!MFLogGeneral())
  {
    sub_1FFF4();
    __break(1u);
  }

  return sub_1FE74();
}

uint64_t static Logger.nano.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.nano.unsafeMutableAddressor();
  v1 = sub_1FE64();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D8C4(uint64_t a1)
{
  if (a1)
  {
    return sub_1FFA4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D918(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1D978(uint64_t a1)
{
  if (a1)
  {
    sub_1FF94();
    sub_1FF84();
  }
}

void *sub_1DA14(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1DAB0(v4, v5, a3);
  v8 = *a1;

  sub_1FFB4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1DAB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1DC54(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1FB40(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1FAA0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1FB40(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1FAA0(v13);
  }

  return v11;
}

uint64_t sub_1DC54(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1FFF4();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1E00C(v22, v17, v16);
        sub_1FFC4();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1E188(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1FFE4();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1FFF4();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1E00C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_20004();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_20004();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1E188(uint64_t a1, uint64_t a2)
{
  v7 = sub_1E244(a1, a2);
  sub_1C9E4(&qword_3C1B0);
  inited = swift_initStackObject();
  v3 = sub_1EA54(inited, 1);
  *v4 = 0;
  sub_1EAA0();
  sub_1EAD4(v3);

  v8 = sub_1EE7C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1E244(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1FEE4();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1F39C();
  }

  v10 = sub_1EE94(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_20004();
    __break(1u);
    return sub_1F39C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1EFD8(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1FFE4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1EFD8(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1FFD4();
  if (v2)
  {
LABEL_29:
    sub_1FFF4();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1FFF4();
    __break(1u);
  }

  sub_1F9D8();
  return v10;
}

uint64_t sub_1EA54(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1EAD4(uint64_t a1)
{
  v18 = sub_1EE7C(a1);
  v2 = sub_1EE7C(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_1F3CC(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_20004();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1F538(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1FFF4();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1FFF4();
    __break(1u);
    goto LABEL_21;
  }

  sub_1EFD8((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1D9E0();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1EE94(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1C9E4(&qword_3C1B0);
    v5 = swift_allocObject();

    if (sub_1FBA4())
    {
      v3 = sub_1FBB0(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_1EFD8(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_20004();
    __break(1u);
  }

  result = sub_20004();
  __break(1u);
  return result;
}

uint64_t sub_1F128(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_1FF04();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1FFF4();
    __break(1u);
  }

  v5 = sub_1FF24();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_1F3CC(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1EE94(v4, v6);
  if (v7)
  {
    sub_1F540((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1EFD8((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1F540(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_20004();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1F668(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1F84C(uint64_t a1)
{
  v3 = sub_1FDF4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1F8F4()
{
  v2 = qword_3C180;
  if (!qword_3C180)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_3C180);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1F980(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1FA04(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1FAA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1FB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void sub_1FBD8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. Account did not return valid mailboxUid for mailboxURL: %@", &v3, 0xCu);
}

void sub_1FC54(uint64_t a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. (Id: %{public}@, Active: %lu)", buf, 0x16u);
}

void sub_1FCC4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "#Nano Unable to decode signature: %{public}@", &v2, 0xCu);
}

void sub_1FD3C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "#Nano Posting NotificationCenter Notification Bridge Setting has Changed for key: %@", &v2, 0xCu);
}