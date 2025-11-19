@interface UpdatesBatchTask
- (void)main;
@end

@implementation UpdatesBatchTask

- (void)main
{
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v70 = sub_1003B953C;
  v71 = &unk_100526FE8;
  v72 = self;
  v3 = v69;
  v65 = self;
  if (self)
  {
    v4 = +[ACAccountStore ams_sharedAccountStore];
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = +[BagService appstoredService];
    v8 = [v7 lastBag];
    v9 = [v8 BOOLForKey:@"ignore-maid-accounts" defaultValue:0];

    if (v9)
    {
      v10 = v6;
      v6 = [(NSArray *)v65->_apps mutableCopy];
    }

    else
    {
      v63 = v4;
      v64 = v3;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v11 = self->_apps;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v81 objects:v94 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v82;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v82 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v81 + 1) + 8 * i);
            if ([v16 isB2BCustomApp])
            {
              v17 = [UpdatableApp alloc];
              v18 = [v16 storeItemID];
              v19 = [v16 storeExternalVersionID];
              v20 = sub_100307E74(&v17->super.isa, v18, v19);
              [v5 addObject:v20];
            }

            else
            {
              [v6 addObject:v16];
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v81 objects:v94 count:16];
        }

        while (v13);
      }

      if (![v5 count])
      {
        v3 = v64;
LABEL_42:
        v4 = v63;
        goto LABEL_43;
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v21 = +[ACAccountStore ams_sharedAccountStore];
      v22 = [v21 ams_iTunesAccounts];

      v23 = [v22 countByEnumeratingWithState:&v77 objects:v93 count:16];
      v3 = v64;
      if (v23)
      {
        v24 = v23;
        v25 = *v78;
LABEL_17:
        v26 = 0;
        while (1)
        {
          if (*v78 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v77 + 1) + 8 * v26);
          if ([v27 ams_isManagedAppleID])
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v77 objects:v93 count:16];
            if (v24)
            {
              goto LABEL_17;
            }

            goto LABEL_23;
          }
        }

        v28 = v27;

        if (!v28)
        {
          goto LABEL_42;
        }

        v29 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          logKey = v65->_logKey;
          v31 = [v28 ams_DSID];
          *buf = 138412546;
          v90 = logKey;
          v91 = 2114;
          v92 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] ╒ Checking for updates for MAID: %{public}@", buf, 0x16u);
        }

        v62 = v28;

        v76 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        v32 = v5;
        v33 = [v32 countByEnumeratingWithState:&v73 objects:buf count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v74;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v74 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v73 + 1) + 8 * j);
              v38 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = v65->_logKey;
                *v85 = 138412546;
                *&v85[4] = v39;
                *&v85[12] = 2114;
                *&v85[14] = v37;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@] ├ %{public}@", v85, 0x16u);
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v73 objects:buf count:16];
          }

          while (v34);
        }

        v40 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v65->_logKey;
          *v85 = 138412290;
          *&v85[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] ╘", v85, 0xCu);
        }

        v3 = v64;
        v10 = v62;
        v70(v64, v62, v32);
      }

      else
      {
LABEL_23:
        v10 = v22;
      }

      v4 = v63;
    }

LABEL_43:
    v42 = sub_10036F9FC(v6, &stru_100527050);
    *v85 = _NSConcreteStackBlock;
    *&v85[8] = 3221225472;
    *&v85[16] = sub_1003B9E3C;
    v86 = &unk_100527078;
    v87 = v4;
    v88 = v3;
    v43 = v4;
    [v42 enumerateKeysAndObjectsUsingBlock:v85];
  }

  v44 = objc_opt_new();
  updates = v65->_updates;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1003B9D8C;
  v67[3] = &unk_100527010;
  v46 = v44;
  v68 = v46;
  [(NSMutableArray *)updates enumerateObjectsUsingBlock:v67];
  v47 = sub_1003841D0(ForcedUpdatesTask, v46, v65->_logKey);
  v66 = 0;
  v48 = [(Task *)v65 runSubTask:v47 returningError:&v66];
  v49 = v66;
  if (!v48)
  {
    v60 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = v65->_logKey;
      *v94 = 138412546;
      v95 = v61;
      v96 = 2114;
      v97 = v49;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[%@] Failed to run forced updates task: %{public}@", v94, 0x16u);
    }

    goto LABEL_57;
  }

  if (v47)
  {
    v50 = v47[7];
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;
  v52 = [v51 count];

  if (v52)
  {
    v53 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v65->_logKey;
      if (v47)
      {
        v55 = v47[7];
      }

      else
      {
        v55 = 0;
      }

      v56 = v55;
      v57 = [v56 count];
      *v94 = 138412546;
      v95 = v54;
      v96 = 2048;
      v97 = v57;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%@] Received %lu forced update(s)", v94, 0x16u);
    }

    v58 = v65->_updates;
    if (v47)
    {
      v59 = v47[7];
    }

    else
    {
      v59 = 0;
    }

    v60 = v59;
    [(NSMutableArray *)v58 addObjectsFromArray:v60];
LABEL_57:
  }

  [(Task *)v65 completeWithSuccess];
}

@end