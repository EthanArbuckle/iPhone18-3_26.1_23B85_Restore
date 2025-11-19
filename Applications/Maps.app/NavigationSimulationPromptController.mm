@interface NavigationSimulationPromptController
+ (id)actionsForPromptOptions:(id)a3;
+ (void)promptIfNeededForSimulationForRoute:(id)a3 navigationTracePlayback:(BOOL)a4 continueWithOptions:(id)a5;
@end

@implementation NavigationSimulationPromptController

+ (id)actionsForPromptOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = sub_100FE8C54([v10 unsignedIntegerValue]);
        v12 = +[MapsInterruptionAction actionWithTitle:cancels:handler:](MapsInterruptionAction, "actionWithTitle:cancels:handler:", v11, [v10 unsignedIntegerValue] == 0, 0);
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)promptIfNeededForSimulationForRoute:(id)a3 navigationTracePlayback:(BOOL)a4 continueWithOptions:(id)a5
{
  v6 = a4;
  v8 = a3;
  v39 = a5;
  v9 = +[GEOPlatform sharedPlatform];
  v38 = [v9 isInternalInstall];

  BOOL = GEOConfigGetBOOL();
  v36 = GEOConfigGetBOOL();
  v10 = sub_100799444();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    if (BOOL)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if (v36)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    if (v38)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    *buf = 138413058;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v53 = v16;
    LOWORD(v54) = 2112;
    *(&v54 + 2) = v18;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "isNavigationTracePlayback=%@ showNavigationSimulationPrompt=%@ navigationSimulationEnabled=%@ isInternalInstall=%@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x5810000000;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = &unk_1014C0133;
  v57 = 0;
  +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
  v19 = [v8 transportType] - 1;
  if (v19 > 5)
  {
    v20 = 1;
  }

  else
  {
    v20 = qword_101216278[v19];
  }

  v21 = [v8 routeAttributes];
  v22 = [v21 hasTimepoint];

  if (v6)
  {
    v23 = v39[2];
    v24 = *(*&buf[8] + 48);
    v46 = *(*&buf[8] + 32);
    v47 = v24;
    v48 = *(*&buf[8] + 64);
    v49 = *(*&buf[8] + 80);
    v23(v39, &v46, 0);
    goto LABEL_37;
  }

  if ((v38 & BOOL) != 0)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v25 = &off_1016EDC40;
        goto LABEL_36;
      }

      if (v20 != 5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v20 == 1)
      {
        v29 = +[CarDisplayController sharedInstance];
        v30 = [v29 isCurrentlyConnectedToAnyCarScene];

        if (v30)
        {
          v31 = &off_1016EDC70;
        }

        else
        {
          v31 = &off_1016EDC88;
        }

        v25 = [v31 mutableCopy];
        goto LABEL_36;
      }

      if (v20 != 2)
      {
LABEL_24:
        v25 = &__NSArray0__struct;
LABEL_36:
        v50[0] = @"kMapsInterruptionActions";
        v32 = [a1 actionsForPromptOptions:v25];
        v50[1] = @"kMapsInterruptionTitle";
        v51[0] = v32;
        v51[1] = @"Navigation Simulation";
        v33 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];

        v34 = +[UIApplication sharedMapsDelegate];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100FE9114;
        v40[3] = &unk_101660E40;
        v35 = v25;
        v41 = v35;
        v42 = v39;
        v43 = buf;
        v44 = v20;
        v45 = v22;
        [v34 interruptApplicationWithKind:12 userInfo:v33 completionHandler:v40];

        goto LABEL_37;
      }
    }

    v25 = &off_1016EDC58;
    goto LABEL_36;
  }

  v26 = *&buf[8];
  if (v36)
  {
    *(*&buf[8] + 32) = 1;
  }

  v27 = v39[2];
  v28 = *(v26 + 48);
  v46 = *(v26 + 32);
  v47 = v28;
  v48 = *(v26 + 64);
  v49 = *(v26 + 80);
  v27(v39, &v46, 0);
LABEL_37:
  _Block_object_dispose(buf, 8);
}

@end