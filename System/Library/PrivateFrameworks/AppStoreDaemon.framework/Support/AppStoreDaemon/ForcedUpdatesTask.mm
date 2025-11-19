@interface ForcedUpdatesTask
- (void)main;
@end

@implementation ForcedUpdatesTask

- (void)main
{
  v2 = self;
  if (self)
  {
    v3 = objc_opt_new();
    v4 = +[BagService appstoredService];
    v5 = [v4 lastBag];
    v6 = [v5 arrayOfStringsForKey:@"invalid-build-tools/invalid-versions"];
    v7 = v6;
    v8 = &__NSArray0__struct;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &__NSArray0__struct;
    }

    v10 = v9;

    v11 = sub_1003D6810();
    if (([v11 isEqualToArray:v10] & 1) == 0)
    {
      v8 = v10;
    }

    v12 = +[BagService appstoredService];
    v13 = [v12 lastBag];
    v14 = [v13 stringForKey:@"drm-recovery"];

    if (!v14)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        logKey = v2->_logKey;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = logKey;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%@] Error looking up DRM recovery key", &buf, 0xCu);
      }
    }

    if ([v8 count] || v14)
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100384790;
      v44[3] = &unk_100520C68;
      v44[4] = v2;
      v17 = v8;
      v45 = v17;
      v46 = v14;
      v47 = v3;
      sub_1003D31A8(ApplicationProxy, 0, v44);
      sub_1003D6984(AppDefaultsManager, v17);
    }

    if ([v3 count])
    {
      v38 = v14;
      v39 = v8;
      v41 = v2;
      v37 = objc_opt_new();
      v40 = v3;
      v18 = v3;
      v19 = objc_opt_new();
      v43 = +[ACAccountStore ams_sharedAccountStore];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v18;
      v20 = [obj countByEnumeratingWithState:&v48 objects:&buf count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v49;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v49 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v48 + 1) + 8 * i);
            v25 = [v24 downloaderDSID];
            if (sub_1002C68D0(v25))
            {
              v26 = [v43 ams_iTunesAccountWithDSID:v25];
            }

            else
            {
              v26 = 0;
            }

            v27 = [v24 purchaserDSID];
            v28 = v27;
            if (!v26)
            {
              if (!sub_1002C68D0(v27) || ([v43 ams_iTunesAccountWithDSID:v28], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v26 = [v43 ams_activeiTunesAccount];
              }
            }

            v29 = [v26 ams_DSID];

            if (v29)
            {
              v30 = [v26 ams_DSID];
              v31 = [v19 objectForKeyedSubscript:v30];

              if (!v31)
              {
                v31 = objc_opt_new();
              }

              [v31 addObject:v24];
              v32 = [v26 ams_DSID];
              [v19 setObject:v31 forKeyedSubscript:v32];
            }
          }

          v21 = [obj countByEnumeratingWithState:&v48 objects:&buf count:16];
        }

        while (v21);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v53 = sub_1003849C4;
      v54 = &unk_100525D68;
      v2 = v41;
      v55 = obj;
      v56 = v41;
      v33 = v37;
      v57 = v33;
      [v19 enumerateKeysAndObjectsUsingBlock:&buf];
      v34 = v57;
      v35 = v33;

      v8 = v39;
      v3 = v40;
      v14 = v38;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  updates = v2->_updates;
  v2->_updates = v35;

  [(Task *)v2 completeWithSuccess];
}

@end