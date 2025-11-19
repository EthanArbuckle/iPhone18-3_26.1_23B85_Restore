id sub_100001DCC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) isEqualToString:@"ExtensionAlertKeyCompletionActionInstall"])
  {
    v2 = SUSUILogExtension();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 96);
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Installing from countdown with install options %@", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    v6 = *(v4 + 96);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001F80;
    v9[3] = &unk_100008198;
    v9[4] = v4;
    return [v5 installUpdateWithInstallOptions:v6 withResult:v9];
  }

  else
  {
    result = [*(*(a1 + 32) + 40) isEqualToString:@"ExtensionAlertKeyCompletionActionReboot"];
    if (result)
    {
      v8 = SUSUILogExtension();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Rebooting from countdown", buf, 2u);
      }

      [*(a1 + 32) reboot];
      return [*(a1 + 32) invalidate];
    }
  }

  return result;
}

id sub_100001F80(uint64_t a1, int a2)
{
  v4 = SUSUILogExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failed";
    if (a2)
    {
      v5 = @"Success";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUSUIInstallAlertExtensionViewController] Installation result = %@", &v7, 0xCu);
  }

  return [*(a1 + 32) invalidate];
}

void sub_1000024E8(id a1)
{
  qword_10000C9D8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServicesUI.framework/Plugins/SoftwareUpdateServicesUIPlugin.servicebundle"];

  _objc_release_x1();
}