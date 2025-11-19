@interface AAPCommandCheckRestriction
- (void)performWithCompletion:(id)a3;
@end

@implementation AAPCommandCheckRestriction

- (void)performWithCompletion:(id)a3
{
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v41 = sub_C1E8;
  v42 = &unk_20748;
  v43 = self;
  v44 = a3;
  v4 = [(AAPCommandCheckRestriction *)self launchId];
  if (v4)
  {
    v5 = v4;
    v6 = [(AAPCommandCheckRestriction *)self executionEnvironment];
    if ([v6 isEqualToString:SAAppsLaunchAppSTARK_EXECUTION_ENVValue])
    {
      v7 = +[FBSOpenApplicationService dashboardService];
    }

    else
    {
      v7 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    }

    v10 = v7;
    v39 = 1;
    if ([(FBSOpenApplicationService *)v7 canOpenApplication:v5 reason:&v39])
    {
      v11 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        *buf = 136315906;
        v46 = "[AAPCommandCheckRestriction performWithCompletion:]";
        v47 = 2114;
        v48 = v12;
        v49 = 2048;
        v50 = self;
        v51 = 2112;
        v52 = v5;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can be launched", buf, 0x2Au);
      }

      v13 = SACommandSucceeded_ptr;
      goto LABEL_32;
    }

    if (!v10)
    {
      v15 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_12214(self, v5, v15);
      }

      goto LABEL_31;
    }

    if (v39 == 4)
    {
      v16 = [LSApplicationProxy applicationProxyForIdentifier:v5];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 isRestricted];
        v14 = AFSiriLogContextPlugin;
        v19 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
        if (v18)
        {
          if (v19)
          {
            v20 = objc_opt_class();
            v21 = v39;
            v22 = FBSOpenApplicationErrorCodeToString();
            v23 = [v17 isRestricted];
            *buf = 136316674;
            v46 = "[AAPCommandCheckRestriction performWithCompletion:]";
            v47 = 2114;
            v48 = v20;
            v49 = 2048;
            v50 = self;
            v51 = 2112;
            v52 = v5;
            v53 = 2048;
            v54 = v21;
            v55 = 2112;
            v56 = v22;
            v57 = 1024;
            v58 = v23;
            v24 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) restricted=%i";
            v25 = v14;
            v26 = 68;
LABEL_30:
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
          }
        }

        else if (v19)
        {
LABEL_28:
          v34 = objc_opt_class();
          v35 = v39;
          v36 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v46 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v47 = 2114;
          v48 = v34;
          v49 = 2048;
          v50 = self;
          v51 = 2112;
          v52 = v5;
          v53 = 2048;
          v54 = v35;
          v55 = 2112;
          v56 = v36;
          v24 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@)";
          goto LABEL_29;
        }
      }

      else
      {
        v14 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
        {
          v31 = objc_opt_class();
          v32 = v39;
          v33 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v46 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v47 = 2114;
          v48 = v31;
          v49 = 2048;
          v50 = self;
          v51 = 2112;
          v52 = v5;
          v53 = 2048;
          v54 = v32;
          v55 = 2112;
          v56 = v33;
          v24 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (no app proxy)";
LABEL_29:
          v25 = v14;
          v26 = 62;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v39 != 5)
      {
        v27 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = v39;
          v30 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v46 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v47 = 2114;
          v48 = v28;
          v49 = 2048;
          v50 = self;
          v51 = 2112;
          v52 = v5;
          v53 = 2048;
          v54 = v29;
          v55 = 2112;
          v56 = v30;
          _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (could not determine)", buf, 0x3Eu);
        }

        goto LABEL_31;
      }

      v14 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v13 = SACommandFailed_ptr;
LABEL_32:
    v9 = *v13;
    goto LABEL_33;
  }

  v8 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
  {
    sub_122C8(self, v8);
  }

  v9 = SACommandFailed;
LABEL_33:
  v37 = objc_alloc_init(v9);
  v38 = [v37 dictionary];
  v41(v40, v38);
}

@end