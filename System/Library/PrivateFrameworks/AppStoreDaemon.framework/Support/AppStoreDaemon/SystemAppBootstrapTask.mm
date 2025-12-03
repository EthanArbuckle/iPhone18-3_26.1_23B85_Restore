@interface SystemAppBootstrapTask
- (void)main;
@end

@implementation SystemAppBootstrapTask

- (void)main
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableDictionary *)self->_installs count];
    *buf = 134217984;
    v96 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to bootstrap %lu system app(s)", buf, 0xCu);
  }

  allKeys = [(NSMutableDictionary *)self->_installs allKeys];
  v6 = [NSMutableSet setWithArray:allKeys];

  allObjects = [v6 allObjects];
  v8 = sub_1002D5E7C(SystemAppLookupTask, allObjects);

  v86 = 0;
  v9 = [(Task *)self runSubTask:v8 returningError:&v86];
  v11 = v86;
  v73 = v6;
  if (v9)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    if (v8)
    {
      Property = objc_getProperty(v8, v10, 48, 1);
    }

    else
    {
      Property = 0;
    }

    obj = Property;
    v75 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    v71 = v8;
    if (v75)
    {
      v13 = *v83;
      v72 = *v83;
      do
      {
        v14 = 0;
        do
        {
          if (*v83 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v82 + 1) + 8 * v14);
          installs = self->_installs;
          if (v15)
          {
            v17 = v15[2];
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          v19 = [(NSMutableDictionary *)installs objectForKeyedSubscript:v18];

          if (v19)
          {
            v20 = sub_1001D52EC([AppPackage alloc], v15);
            v92 = v20;
            v21 = [NSArray arrayWithObjects:&v92 count:1];
            objc_setProperty_atomic_copy(v19, v22, v21, 48);

            v23 = +[NSNull null];
            sub_10023E000(v19, v23, @"failure_error");

            sub_10023E000(v19, &off_100546D50, @"bootstrapped");
            if (v15)
            {
              v24 = v15[8];
            }

            else
            {
              v24 = 0;
            }

            v76 = v20;
            v25 = v24;
            sub_10023E000(v19, v25, @"bundle_name");

            v26 = sub_1003B6560();
            if (sub_10023E604(v19, @"IFNULL(app_install.priority, 0)") < 0)
            {
              sub_1003B6764(v26, 3);
              sub_1003B6820(v26, 3);
              sub_1003B66A8(v26, 62);
            }

            else
            {
              v28 = objc_getProperty(v19, v27, 48, 1);
              [v28 firstObject];
              v30 = v29 = v11;
              v31 = sub_100396E20(v19, v30);

              v32 = [[_TtC9appstored23ReviewNetworkPolicyTask alloc] initWithDownload:v31];
              v81 = v29;
              selfCopy = self;
              v34 = [(Task *)self runSubTask:v32 returningError:&v81];
              v11 = v81;

              if (v34)
              {
                sub_1003B6764(v26, [(ReviewNetworkPolicyTask *)v32 constrainedResult]);
                sub_1003B6820(v26, [(ReviewNetworkPolicyTask *)v32 expensiveResult]);
                sub_1003B66A8(v26, [(ReviewNetworkPolicyTask *)v32 interfaceMask]);
              }

              self = selfCopy;
              v13 = v72;
              v6 = v73;
            }

            sub_100408FB4(v19, v26);
            v38 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = sub_100408EB0(v19);
              *buf = 138412290;
              v96 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@] Bootstrap completed", buf, 0xCu);
            }

            v35 = v76;
          }

          else
          {
            v35 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              if (v15)
              {
                v36 = v15[2];
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;
              *buf = 138543362;
              v96 = v37;
              _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "Received item for unexpected system app: %{public}@", buf, 0xCu);
            }
          }

          if (v15)
          {
            v40 = v15[2];
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;
          [v6 removeObject:v41];

          v14 = v14 + 1;
        }

        while (v75 != v14);
        v42 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
        v75 = v42;
      }

      while (v42);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v43 = v6;
    v44 = [v43 countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v78;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v78 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [(NSMutableDictionary *)self->_installs objectForKeyedSubscript:*(*(&v77 + 1) + 8 * i)];
          sub_10023E000(v48, &off_100546D68, @"phase");
        }

        v45 = [v43 countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v45);
    }

    [(Task *)self lock];
    allValues = [(NSMutableDictionary *)self->_installs allValues];
    results = self->_results;
    self->_results = allValues;

    [(Task *)self unlock];
    [(Task *)self completeWithSuccess];
    v8 = v71;
    goto LABEL_70;
  }

  v51 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v70 = [(NSMutableDictionary *)self->_installs count];
    *buf = 134218242;
    v96 = v70;
    v97 = 2114;
    v98 = v11;
    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Bootstrap for %lu system app(s) failed with error: %{public}@", buf, 0x16u);
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_69;
  }

  v52 = v11;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_installs objectEnumerator];
  v54 = [objectEnumerator countByEnumeratingWithState:&v87 objects:buf count:16];
  if (!v54)
  {
    goto LABEL_68;
  }

  v55 = v54;
  v56 = *v88;
  while (2)
  {
    for (j = 0; j != v55; j = j + 1)
    {
      if (*v88 != v56)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      if (!sub_10023E4DC(*(*(&v87 + 1) + 8 * j), @"supress_dialogs"))
      {

        v58 = v52;
        objc_opt_self();
        v59 = v58;
        domain = [v59 domain];
        v61 = [domain isEqualToString:ASDErrorDomain];

        if (v61)
        {
          userInfo = [v59 userInfo];
          v63 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

          v64 = v59;
          v6 = v73;
          if (v63)
          {
            v64 = v63;
          }

          if ([v59 code] == 513)
          {
            v65 = @"Basejumper does not have assets for this build. Please try again later.";
          }

          else
          {
            v65 = @"Unable to connect to basejumper. Make sure you are on an internal network or have VPN on-demand enabled.";
          }

          if (!v64)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v65 = @"An unknown error occurred. Make sure you are on an internal network or have VPN on-demand enabled.";
          v64 = v59;
          v6 = v73;
          if (!v59)
          {
LABEL_67:

            objectEnumerator = [AMSDialogRequest requestWithTitle:@"Internal Only" message:v65];

            v67 = ASDLocalizedString();
            v68 = [AMSDialogAction actionWithTitle:v67 style:0];

            v94 = v68;
            v69 = [NSArray arrayWithObjects:&v94 count:1];
            [objectEnumerator setButtonActions:v69];

            sub_100406DAC(objectEnumerator, @"systemAppBootstrapInternal");
            sub_10022DA8C(v68, @"ok");
            sub_1003124D4(InteractiveRequestPresenter, objectEnumerator, 0);

            goto LABEL_68;
          }
        }

        domain2 = [v64 domain];
        v65 = -[__CFString stringByAppendingFormat:](v65, "stringByAppendingFormat:", @" (%@: %ld)", domain2, [v64 code]);

        goto LABEL_67;
      }
    }

    v55 = [objectEnumerator countByEnumeratingWithState:&v87 objects:buf count:16];
    if (v55)
    {
      continue;
    }

    break;
  }

  v6 = v73;
LABEL_68:

LABEL_69:
  [(Task *)self completeWithError:v11];
LABEL_70:
}

@end