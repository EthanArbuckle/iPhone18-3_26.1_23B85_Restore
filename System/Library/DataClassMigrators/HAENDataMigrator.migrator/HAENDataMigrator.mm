id HAENDMLog()
{
  if (qword_80F0 != -1)
  {
    sub_E74();
  }

  v1 = qword_80F8;

  return v1;
}

void sub_B74(id a1)
{
  qword_80F8 = os_log_create("HAENDataMigrator", "ADAM");

  _objc_release_x1();
}

 CFPreferencesAppSynchronize(ADAFDeviceSpecificPreferenceDomain);
    v3 = CFPreferencesCopyAppValue(@"HAENDataMigratorSuccess", v2);
    if (([v3 BOOLValue]& 1) != 0)
    {
      v4 = HAENDMLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator skipped", &v12, 2u);
      }
    }

    else
    {
      v5 = ADAFPreferenceDomain;
      CFPreferencesSetAppValue(@"HAENMigrationAlertSurfaced", 0, ADAFPreferenceDomain);
      CFPreferencesSetAppValue(@"HAENSampleTransient", 0, v5);
      CFPreferencesAppSynchronize(v5);
      CFPreferencesSetAppValue(@"HAENFeatureMandatory", 0, v2);
      CFPreferencesSetAppValue(@"HAENGeoLocationSource", 0, v2);
      v6 = DMGetUserDataDisposition();
      v7 = HAENDMLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        LODWORD(v13) = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Data Migrator Disposition Flag: %u", &v12, 8u);
      }

      v8 = &ADAFDeviceDispositionKeyUpdate;
      if ((v6 & 2) == 0)
      {
        v8 = &ADAFDeviceDispositionKeyErase;
      }

      v4 = *v8;
      CFPreferencesSetAppValue(ADAFPreferenceKeyHAENDeviceDisposition, v4, v2);
      CFPreferencesSetAppValue(@"HAENDataMigratorSuccess", &off_41F8, v2);
      CFPreferencesAppSynchronize(v2);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, ADAFDarwinNotificationKeyDeviceDataDispositionDidChange, 0, 0, 1u);
      v10 = HAENDMLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator device install flag: %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    v3 = HAENDMLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HAEN Data Migrator did not run since feature flag is disabled", &v12, 2u);
    }
  }

  return 1;
}

@end