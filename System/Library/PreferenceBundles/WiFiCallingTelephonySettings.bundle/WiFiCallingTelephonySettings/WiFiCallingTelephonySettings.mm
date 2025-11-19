uint64_t TPSWiFiCallingLog()
{
  if (qword_D178 != -1)
  {
    sub_3F5C();
  }

  return qword_D170;
}

void sub_393C(uint64_t a1)
{
  v2 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Not consenting to location/privacy alert.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 mainSwitchSpecifier];
  [v3 reloadSpecifier:v4 animated:1];
}

void sub_39D0(uint64_t a1)
{
  v2 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Consenting to location/privacy alert.", buf, 2u);
  }

  v3 = [*(a1 + 32) emergencyAddressURLController];
  v4 = [v3 shouldEnableCapability];

  v5 = TPSWiFiCallingLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "WiFi Calling service is provisioned; enabling Wi-Fi Calling.", v13, 2u);
    }

    v7 = [*(a1 + 32) emergencyAddressURLController];
    [v7 enableCapability];
  }

  else
  {
    if (v6)
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "WiFi Calling service is not provisioned; presenting provisioning.", v12, 2u);
    }

    v8 = [*(a1 + 32) callingController];
    v9 = [v8 subscriptionCapabilities];
    [v9 invalidateAndRefreshWiFiCallingProvisioningURL];

    v10 = *(a1 + 32);
    v7 = [v10 emergencyAddressURLController];
    v11 = [v7 provisionCapabilityController];
    [v10 presentOrUpdateViewController:v11];
  }
}