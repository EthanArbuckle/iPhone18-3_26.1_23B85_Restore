void sub_1440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 32));
  _Unwind_Resume(a1);
}

void sub_1460(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v6 = qword_10FF0;
    if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = a3;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve pending follow up items because %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = SRFollowUpEnableSKIdentifier;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(v12 "uniqueIdentifier")])
          {
            v13 = [objc_msgSend(v12 "userInfo")];
            if (v13)
            {
              v14 = v13;
              [objc_loadWeak((a1 + 40)) setFollowUpBundlePath:v13];
              v15 = qword_10FF0;
              if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v22 = v14;
                _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "Retrieved a follow up item for %{public}@", buf, 0xCu);
              }

              return;
            }
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

BOOL sub_1728(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) containsObject:{objc_msgSend(a2, "bundleIdentifier")}])
  {
    return 1;
  }

  if (*(a1 + 40))
  {
    return [objc_msgSend(a2 "entitlements")] != 0;
  }

  return 0;
}

id sub_1B48(uint64_t a1, void *a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  result = [a2 countByEnumeratingWithState:&v35 objects:v42 count:16];
  v27 = result;
  if (result)
  {
    v26 = *v36;
    v25 = PSValueKey;
    *&v3 = 138543362;
    v23 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(a2);
        }

        v5 = *(*(&v35 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        v7 = [NSBundle sk_bundleWithIdentifier:v5];
        if (v7)
        {
          v8 = v7;
          v29 = v5;
          v30 = v6;
          v9 = [a2 objectForKeyedSubscript:v5];
          v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v32;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v32 != v13)
                {
                  objc_enumerationMutation(v9);
                }

                v15 = *(*(&v31 + 1) + 8 * i);
                v16 = objc_autoreleasePoolPush();
                -[NSMutableSet addObject:](v10, "addObject:", [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v15), "authorizationService"}]);
                objc_autoreleasePoolPop(v16);
              }

              v12 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v12);
          }

          v17 = [v8 sr_bundleType];
          v6 = v30;
          if (v17)
          {
            v18 = (a1 + 32);
            if (v17 == &dword_0 + 1)
            {
              goto LABEL_18;
            }

            if (v17 == &dword_0 + 2)
            {
              v18 = (a1 + 40);
LABEL_18:
              v19 = *v18;
            }

            else
            {
              v19 = 0;
            }

            v21 = [v19 objectForKeyedSubscript:v29];
            if (v21)
            {
              [v21 setObject:-[NSNumber stringValue](+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(v21, "objectForKeyedSubscript:", v25), "integerValue") + -[NSMutableSet count](v10, "count")), "stringValue"), v25}];
            }

            else
            {
              v22 = [PSSpecifier sk_appSpecifierForBundle:v8 value:[[NSNumber numberWithUnsignedInteger:?]] cellType:2 target:*(a1 + 48)];
              [v19 setObject:v22 forKeyedSubscript:v29];
              [*(*(a1 + 48) + 136) addObject:v22];
            }
          }
        }

        else
        {
          v20 = qword_10FF0;
          if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v41 = v5;
            _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error locating bundle %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v4 != v27);
      result = [a2 countByEnumeratingWithState:&v35 objects:v42 count:16];
      v27 = result;
    }

    while (result);
  }

  return result;
}

id sub_1EC4(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 name];

  return [v3 localizedCaseInsensitiveCompare:v4];
}

id sub_2FB4(id *a1, void *a2, uint64_t a3)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  v17 = result;
  if (result)
  {
    v16 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(a2);
        }

        v19 = v6;
        v7 = *(*(&v24 + 1) + 8 * v6);
        if ([NSBundle sk_bundleWithIdentifier:v7, v16])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v8 = [a2 objectForKeyedSubscript:v7];
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                v14 = objc_autoreleasePoolPush();
                v15 = [SRAuthorizationGroup authorizationGroupWithServiceName:(*(a3 + 16))(a3, [SRSensorDescription sensorDescriptionForSensor:v13])];
                if (([a1[4] containsObject:{-[SRAuthorizationGroup localizedDisplayName](v15, "localizedDisplayName")}] & 1) == 0)
                {
                  [a1[5] addObject:{objc_msgSend(a1[6], "authGroupSpecifierForAuthGroup:", v15)}];
                  [a1[4] addObject:{-[SRAuthorizationGroup localizedDisplayName](v15, "localizedDisplayName")}];
                }

                objc_autoreleasePoolPop(v14);
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }
        }

        v6 = v19 + 1;
      }

      while ((v19 + 1) != v17);
      result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = result;
    }

    while (result);
  }

  return result;
}

NSMutableDictionary *sub_3660(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 32), "userInfo")}];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](v5, "setObject:forKeyedSubscript:", [v4 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9)], (*(a3 + 16))(a3, +[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription, "sensorDescriptionForSensor:", *(*(&v11 + 1) + 8 * v9))));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v5;
}

void sub_3CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_3CE0(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak deleteAllSamples];
}

void sub_3D20(id a1, NSError *a2)
{
  v2 = qword_10FF0;
  if (a2)
  {
    if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = a2;
      _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Failed to remove samples: %{public}@", &v4, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_INFO))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Samples are removed", &v4, 2u);
  }
}

void sub_3EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_3F0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = qword_10FF0;
    if (os_log_type_enabled(qword_10FF0, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = a2;
      _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Error running first run onboarding: %{public}@", &v7, 0xCu);
    }
  }

  Weak = objc_loadWeak((a1 + 32));
  [Weak setPresentingEnableSensorKit:0];
  return [Weak reloadSpecifiers];
}

id sub_4164(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  [Weak setFollowUpBundlePath:0];

  return [Weak reloadSpecifiers];
}

id sub_4BC8()
{
  objc_opt_self();

  return [NSURL URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ALMANAC"];
}