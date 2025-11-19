id sub_19B4()
{
  if (qword_10DB8 != -1)
  {
    sub_6B9C();
  }

  v1 = qword_10DB0;

  return v1;
}

id sub_1BEC()
{
  if (qword_10DC8 != -1)
  {
    sub_6C18();
  }

  v1 = qword_10DC0;

  return v1;
}

id sub_1C30()
{
  if (!HTDeveloperSettingsIsInternalBuild())
  {
    return 0;
  }

  v0 = sub_5878();
  v1 = [v0 objectForKey:@"MonitorAnyApp"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = sub_58BC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1 BOOLValue];
      v4 = @"disabled";
      if (v3)
      {
        v4 = @"enabled";
      }

      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "MonitorAnyApp is %{public}@", &v8, 0xCu);
    }

    v5 = [v1 BOOLValue];
  }

  else
  {
    v6 = sub_58BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MonitorAnyApp is disabled (default value)", &v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

id sub_1DA4(uint64_t a1)
{
  v2 = sub_19B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Forcing specifier reload due to global state update", v4, 2u);
  }

  return [*(a1 + 32) forceReloadSpecifiers];
}

void sub_21B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v3 = [[FBSShutdownOptions alloc] initWithReason:@"com.apple.performance.trace.enablement"];
  [v3 setRebootType:1];
  [v3 setSource:1];
  v2 = +[FBSSystemService sharedService];
  [v2 shutdownWithOptions:v3];
}

uint64_t sub_224C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

int64_t sub_2DC0(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[NSFileManager defaultManager];
  v7 = [(NSURL *)v5 path];

  v8 = [v6 attributesOfItemAtPath:v7 error:0];
  v9 = [v8 fileCreationDate];

  v10 = +[NSFileManager defaultManager];
  v11 = [(NSURL *)v4 path];

  v12 = [v10 attributesOfItemAtPath:v11 error:0];
  v13 = [v12 fileCreationDate];

  v14 = [v13 compare:v9];
  return v14;
}

id sub_47D4()
{
  if (qword_10DF8 != -1)
  {
    sub_7034();
  }

  v1 = qword_10DF0;

  return v1;
}

void sub_4A5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4A80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = sub_47D4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_70B0();
    }
  }

  else
  {
    v66 = a1;
    v9 = [*(a1 + 32) passiveTraceConfig];
    v86 = 0;
    v10 = [v9 fetchPerfPowerMetricMonitoredProcesses:&v86];
    v11 = v86;

    v62 = v11;
    v63 = WeakRetained;
    if (v11)
    {
      v12 = sub_47D4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_6F64();
      }

      v61 = &__NSArray0__struct;
      v13 = @"Unable to lookup apps";
    }

    else
    {
      v61 = v10;
      v13 = @"No available apps";
    }

    v60 = v13;
    v71 = objc_alloc_init(NSMutableArray);
    v72 = objc_alloc_init(NSMutableSet);
    v73 = objc_alloc_init(NSMutableDictionary);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v64 = v5;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v83;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v83 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v82 + 1) + 8 * i) name];
          if (v19)
          {
            v20 = [v73 objectForKeyedSubscript:v19];
            v21 = v20;
            if (!v20)
            {
              v20 = &off_CFE8;
            }

            v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v20 unsignedIntValue] + 1);
            [v73 setObject:v22 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v16);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v14;
    v23 = [obj countByEnumeratingWithState:&v78 objects:v98 count:16];
    v24 = v66;
    if (v23)
    {
      v25 = v23;
      v70 = *v79;
      v69 = PSLazyIconAppID;
      v68 = PSLazyIconLoading;
      do
      {
        v26 = 0;
        v65 = v25;
        do
        {
          if (*v79 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v78 + 1) + 8 * v26);
          v28 = [v27 name];
          v29 = [v73 objectForKeyedSubscript:v28];
          v30 = v29;
          v31 = &off_CFE8;
          if (v29)
          {
            v31 = v29;
          }

          v32 = v31;

          v33 = sub_47D4();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v43 = [v27 name];
            v44 = [v27 bundleID];
            v45 = [v27 bundleExecutable];
            v46 = [v27 bundleDisplayName];
            v47 = [v32 unsignedIntValue];
            *buf = 138544386;
            v89 = v43;
            v90 = 2114;
            v91 = v44;
            v92 = 2114;
            v93 = v45;
            v94 = 2114;
            v95 = v46;
            v96 = 1024;
            v97 = v47;
            _os_log_debug_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "Found application: %{public}@ (%{public}@, %{public}@, %{public}@, colliding name count: %u)", buf, 0x30u);

            v25 = v65;
          }

          v34 = [v27 name];
          if ([v32 unsignedIntValue] >= 2)
          {
            v35 = [v27 name];
            v36 = [v27 bundleExecutable];
            v37 = [NSString stringWithFormat:@"%@ (%@)", v35, v36];

            v24 = v66;
            v34 = v37;
          }

          v38 = [PSSpecifier preferenceSpecifierNamed:v34 target:*(v24 + 32) set:"_appIsMonitoredSetter:specifier:" get:"_appIsMonitoredGetter:" detail:0 cell:6 edit:0];
          v39 = [v27 bundleID];
          [v38 setIdentifier:v39];

          v40 = [v27 bundleExecutable];
          [v38 setObject:v40 forKeyedSubscript:@"AppBundleExecutable"];

          v41 = [v27 bundleID];
          [v38 setObject:v41 forKeyedSubscript:v69];

          [v38 setObject:&__kCFBooleanTrue forKeyedSubscript:v68];
          [*(v24 + 32) _setEnablement:v38];
          [v71 addObject:v38];
          v42 = [v27 bundleID];
          [v72 addObject:v42];

          v26 = v26 + 1;
        }

        while (v25 != v26);
        v25 = [obj countByEnumeratingWithState:&v78 objects:v98 count:16];
      }

      while (v25);
    }

    if (![v71 count])
    {
      v48 = [PSSpecifier preferenceSpecifierNamed:v60 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v71 addObject:v48];
      [v72 addObject:v60];
    }

    v49 = objc_alloc_init(NSMutableSet);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v50 = [*(v24 + 32) cachedDeveloperAppsSpecifiers];
    v51 = [v50 countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v75;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v74 + 1) + 8 * j);
          v56 = [v55 identifier];

          if (v56)
          {
            v57 = [v55 identifier];
            [v49 addObject:v57];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v52);
    }

    v58 = [v49 isEqualToSet:v72];
    WeakRetained = v63;
    v59 = [v63 cachedDeveloperAppsSpecifiers];
    if ((v58 & 1) == 0)
    {
      [v63 setCachedDeveloperAppsSpecifiers:v71];
      if ([*(v66 + 32) isPowerProfilerPlanSelected])
      {
        [v63 removeContiguousSpecifiers:v59 animated:0];
        [v63 insertContiguousSpecifiers:v71 afterSpecifierID:@"MONITORABLE_APPS" animated:0];
        [*(v66 + 32) forceReloadSpecifiers];
      }
    }

    v6 = 0;
    v5 = v64;
    v8 = v62;
  }
}

void sub_5450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (!*(a1 + 32))
  {
    (*(v5 + 2))(v5, 0);
    goto LABEL_10;
  }

  v7 = +[NSFileManager defaultManager];
  v8 = *(a1 + 32);
  v12 = 0;
  v9 = [v7 removeItemAtPath:v8 error:&v12];
  v10 = v12;

  if (v10)
  {
    if (qword_10E08 != -1)
    {
      sub_7118();
    }

    v11 = qword_10E00;
    if (os_log_type_enabled(qword_10E00, OS_LOG_TYPE_ERROR))
    {
      sub_7140((a1 + 32), v10, v11);
      if (!v9)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v9)
  {
LABEL_7:
    [*(a1 + 40) forceReloadSpecifiers];
  }

LABEL_8:
  (v6)[2](v6, v9);

LABEL_10:
}

void sub_57F0(id a1)
{
  qword_10DB0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PerformanceTraceGlobalState");

  _objc_release_x1();
}

void sub_5834(id a1)
{
  qword_10DC0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PassiveTraceConfiguration");

  _objc_release_x1();
}

id sub_5878()
{
  if (qword_10DD8 != -1)
  {
    sub_71CC();
  }

  v1 = qword_10DD0;

  return v1;
}

id sub_58BC()
{
  if (qword_10DE8 != -1)
  {
    sub_71E0();
  }

  v1 = qword_10DE0;

  return v1;
}

void sub_5900(id a1)
{
  qword_10DD0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.PerformanceTrace.SettingsPanePrefs"];

  _objc_release_x1();
}

void sub_5948(id a1)
{
  qword_10DE0 = os_log_create("com.apple.Preferences.DeveloperSettings", "SettingsPanePref");

  _objc_release_x1();
}

void sub_598C(id a1)
{
  qword_10DF0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PassiveTraceLightweightPowerConfiguration");

  _objc_release_x1();
}

void sub_59D0(id a1)
{
  qword_10E00 = os_log_create("com.apple.Preferences.DeveloperSettings", "TraceFileManagement");

  _objc_release_x1();
}

void sub_5A14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_5A3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_6128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifier];
  v2 = [v1 target];
  v3 = [WeakRetained specifier];
  [v2 _shareLog:v3];
}

void sub_6610(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10E10;
  qword_10E10 = v1;

  [qword_10E10 setDateStyle:2];
  v3 = qword_10E10;

  [v3 setTimeStyle:1];
}

uint64_t sub_6694()
{
  sub_69A0(&qword_10CF0, qword_9200);
  sub_722C();
  sub_69E8();
  swift_getOpaqueTypeConformance2();
  return sub_727C();
}

uint64_t sub_6738()
{
  v0 = *(*(sub_72CC() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_724C() - 8) + 64);
  __chkstk_darwin();
  v2 = sub_722C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72AC();
  sub_729C();
  sub_728C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_72BC();
  sub_723C();
  sub_721C();
  sub_725C();
  sub_69E8();
  sub_726C();

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_69A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_69E8()
{
  result = qword_10CF8;
  if (!qword_10CF8)
  {
    sub_722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10CF8);
  }

  return result;
}

unint64_t sub_6A48()
{
  result = qword_10D00;
  if (!qword_10D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10D00);
  }

  return result;
}

unint64_t sub_6AF0()
{
  result = qword_10DA0;
  if (!qword_10DA0)
  {
    sub_6B54(&qword_10DA8, "D)");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10DA0);
  }

  return result;
}

uint64_t sub_6B54(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_7140(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to delete file at path %{public}@ due to error: %{public}@", &v4, 0x16u);
}