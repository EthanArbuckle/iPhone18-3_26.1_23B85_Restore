@interface AAPCommandFilterNonRestricted
- (void)performWithCompletion:(id)a3;
@end

@implementation AAPCommandFilterNonRestricted

- (void)performWithCompletion:(id)a3
{
  v5 = [(AAPCommandFilterNonRestricted *)self appIds];
  v48 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v6 = [(AAPCommandFilterNonRestricted *)self executionEnvironment];
  if ([v6 isEqualToString:SAAppsLaunchAppSTARK_EXECUTION_ENVValue])
  {
    v7 = +[FBSOpenApplicationService dashboardService];
  }

  else
  {
    v7 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  }

  v8 = v7;
  v9 = &AFSiriLogContextPlugin;
  if (v7)
  {
    v43 = a3;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      v44 = SAAppsAppRestrictionReasonNOT_FOUNDValue;
      v47 = SAAppsAppRestrictionReasonRESTRICTEDValue;
      v45 = *v51;
      v46 = v8;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          v49 = 1;
          if ([(FBSOpenApplicationService *)v8 canOpenApplication:v14 reason:&v49])
          {
            v15 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              *buf = 136315906;
              v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
              v57 = 2114;
              v58 = v16;
              v59 = 2048;
              v60 = self;
              v61 = 2112;
              v62 = v14;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can be launched - filtering", buf, 0x2Au);
            }
          }

          else if (v49 == 4)
          {
            v21 = [NSMutableArray arrayWithCapacity:1];
            v22 = [+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy applicationProxyForIdentifier:{v14), "isRestricted"}];
            v23 = *v9;
            v24 = os_log_type_enabled(*v9, OS_LOG_TYPE_INFO);
            if (v22)
            {
              v25 = v47;
              if (v24)
              {
                v26 = objc_opt_class();
                *buf = 136315906;
                v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v57 = 2114;
                v58 = v26;
                v59 = 2048;
                v60 = self;
                v61 = 2112;
                v62 = v14;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched because it is restricted - not filtering", buf, 0x2Au);
                v25 = v47;
              }
            }

            else
            {
              v25 = v44;
              if (v24)
              {
                v27 = objc_opt_class();
                v28 = v5;
                v29 = v9;
                v30 = v49;
                v31 = FBSOpenApplicationErrorCodeToString();
                *buf = 136316418;
                v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v57 = 2114;
                v58 = v27;
                v59 = 2048;
                v60 = self;
                v61 = 2112;
                v62 = v14;
                v63 = 2048;
                v64 = v30;
                v9 = v29;
                v5 = v28;
                v65 = 2112;
                v66 = v31;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (restricted) - not filtering", buf, 0x3Eu);
                v25 = v44;
              }
            }

            [(NSMutableArray *)v21 addObject:v25];
            [(NSMutableDictionary *)v48 setObject:[(NSMutableArray *)v21 copy] forKey:v14];
            v12 = v45;
            v8 = v46;
          }

          else
          {
            if (v49 != 5)
            {
              v34 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                v40 = objc_opt_class();
                v41 = v49;
                v42 = FBSOpenApplicationErrorCodeToString();
                *buf = 136316418;
                v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v57 = 2114;
                v58 = v40;
                v59 = 2048;
                v60 = self;
                v61 = 2112;
                v62 = v14;
                v63 = 2048;
                v64 = v41;
                v65 = 2112;
                v66 = v42;
                _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) - bailing", buf, 0x3Eu);
              }

              a3 = v43;
              goto LABEL_32;
            }

            v17 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
            {
              v18 = objc_opt_class();
              v19 = v49;
              v20 = FBSOpenApplicationErrorCodeToString();
              *buf = 136316418;
              v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
              v57 = 2114;
              v58 = v18;
              v59 = 2048;
              v60 = self;
              v61 = 2112;
              v62 = v14;
              v63 = 2048;
              v64 = v19;
              v12 = v45;
              v8 = v46;
              v65 = 2112;
              v66 = v20;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) - not filtering", buf, 0x3Eu);
            }

            v54 = v47;
            [(NSMutableDictionary *)v48 setObject:[NSArray forKey:"arrayWithObjects:count:" arrayWithObjects:1 count:?], v14];
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v50 objects:v67 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v32 = objc_alloc_init(SAAppsGetRestrictedAppsResponse);
    [v32 setAppToItsRestrictionsMap:v48];
    [v32 setRestrictedApps:{-[NSMutableDictionary allKeys](v48, "allKeys")}];
    a3 = v43;
  }

  else
  {
    v33 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_12364(self, v5, v33);
    }

LABEL_32:
    v32 = objc_alloc_init(SACommandFailed);
  }

  v35 = [v32 dictionary];

  v36 = *v9;
  v37 = os_log_type_enabled(*v9, OS_LOG_TYPE_INFO);
  if (a3)
  {
    if (v37)
    {
      v38 = objc_opt_class();
      *buf = 136315906;
      v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
      v57 = 2114;
      v58 = v38;
      v59 = 2048;
      v60 = self;
      v61 = 2112;
      v62 = v35;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> sending response = %@", buf, 0x2Au);
    }

    (*(a3 + 2))(a3, v35);
  }

  else if (v37)
  {
    v39 = objc_opt_class();
    *buf = 136315906;
    v56 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
    v57 = 2114;
    v58 = v39;
    v59 = 2048;
    v60 = self;
    v61 = 2112;
    v62 = v35;
    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> no completion block - dropping response = %@", buf, 0x2Au);
  }
}

@end