@interface CompleteRestoreCoordinatorsTask
- (void)main;
@end

@implementation CompleteRestoreCoordinatorsTask

- (void)main
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = self->_logKey;
      v5 = self->_clientID;
      reason = self->_reason;
      v7 = v5;
      v8 = v4;
    }

    else
    {
      v5 = 0;
      v7 = 0;
      v4 = 0;
      v8 = 0;
      reason = 0;
    }

    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v129 = reason;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Checking for incomplete coordinators for client: %{public}@ reason: %{public}@", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v10 = sub_10029E758(v9);
  v96 = [NSOrderedSet orderedSetWithArray:v10];

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      logKey = self->_logKey;
    }

    else
    {
      logKey = 0;
    }

    v13 = logKey;
    v14 = [v96 count];
    v15 = [v96 array];
    v16 = [v15 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    *&buf[4] = logKey;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v129 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Commonly used count: %ld apps: [%{public}@]", buf, 0x20u);
  }

  if (self)
  {
    v17 = self->_logKey;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  objc_opt_self();
  address = 0;
  LODWORD(size) = 0;
  SBSSpringBoardBlockableServerPort();
  SBGetFlattenedIconState();
  vm_deallocate(mach_task_self_, 0, 0);
  v19 = objc_opt_new();

  v97 = [NSOrderedSet orderedSetWithArray:v19];

  v20 = [v97 count];
  v21 = ASDLogHandleForCategory();
  v22 = fmin(v20 * 0.15, 25.0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v23 = self->_logKey;
    }

    else
    {
      v23 = 0;
    }

    *buf = 138412546;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%@] Ordered: Max app count: %ld", buf, 0x16u);
  }

  v98 = [NSMutableOrderedSet orderedSetWithOrderedSet:v97 range:0 copyItems:v22, 0];
  [v98 unionOrderedSet:v96];
  v24 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v25 = self->_logKey;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = [v98 count];
    v28 = [v98 array];
    v29 = [v28 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = v27;
    *&buf[22] = 2114;
    v129 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] Ordered: App count: %ld apps: [%{public}@]", buf, 0x20u);
  }

  v30 = [NSMutableOrderedSet orderedSetWithOrderedSet:v98];
  [v30 unionOrderedSet:v97];
  v31 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v32 = self->_logKey;
    }

    else
    {
      v32 = 0;
    }

    v33 = [v30 count];
    v34 = [v98 count];
    *buf = 138412546;
    *&buf[4] = v32;
    *&buf[12] = 2048;
    *&buf[14] = v33 - v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%@] Ordered: Added an additional %ld springboard apps to the end of the prioritized list", buf, 0x16u);
  }

  v93 = [v98 count];
  v95 = v30;
  if (self)
  {
    v35 = sub_1002856D4();
    v91 = sub_100286400(v35);

    size = 0;
    p_size = &size;
    v111 = 0x3032000000;
    v112 = sub_1003D9DFC;
    v113 = sub_1003D9E0C;
    v114 = objc_alloc_init(NSMutableArray);
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    v89 = +[NSMutableDictionary dictionary];
    v36 = self->_logKey;
    objc_opt_self();
    v37 = +[NSMutableDictionary dictionary];
    v38 = +[NSMutableArray array];
    v39 = sub_1003C27BC();
    address = _NSConcreteStackBlock;
    p_address = 3221225472;
    v117 = sub_1003DA824;
    v118 = &unk_100522FD0;
    v119 = v38;
    v120 = v37;
    v121 = v36;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    [v39 readUsingSession:&address];

    v43 = [CompleteRestoreRestoringInfo alloc];
    v44 = [v41 copy];
    v45 = [v42 copy];
    v46 = v44;
    v47 = v45;
    if (v43)
    {
      v102.receiver = v43;
      v102.super_class = CompleteRestoreRestoringInfo;
      v48 = [(Task *)&v102 init];
      p_isa = &v48->super.super.super.isa;
      if (v48 == v43)
      {
        objc_storeStrong(&v48->super._keepAlive, v44);
        objc_storeStrong(p_isa + 2, v45);
      }
    }

    else
    {
      p_isa = 0;
    }

    if (p_isa)
    {
      Property = objc_getProperty(p_isa, v50, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v52 = Property;
    v102.receiver = 0;
    v102.super_class = &v102;
    v103 = 0x2020000000;
    v104 = 0;
    address = 0;
    p_address = &address;
    v117 = 0x3032000000;
    v118 = sub_1003D9DFC;
    v119 = sub_1003D9E0C;
    v120 = +[NSMutableArray array];
    v101 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003D9E14;
    v129 = &unk_1005279A8;
    v130 = self;
    v135 = &v102;
    v136 = &address;
    v53 = v52;
    v131 = v53;
    v54 = v91;
    v132 = v54;
    v55 = v89;
    v133 = v55;
    v92 = v95;
    v134 = v92;
    v137 = &size;
    v138 = &v105;
    v139 = v93;
    v56 = [IXRestoringAppInstallCoordinator enumerateCoordinatorsWithError:&v101 usingBlock:buf];
    v57 = v101;
    if ([*(p_address + 40) count])
    {
      v58 = +[_TtC9appstored9MadBridge shared];
      v59 = *(p_address + 40);
      v60 = self->_logKey;
      [v58 transferAppAssetPromisesForCoordinators:v59 logKey:v60];
    }

    if (*(v102.super_class + 24) == 1)
    {
      v61 = +[_TtC9appstored9MadBridge shared];
      [v61 sendDiscoverEvent];
    }

    if (v56)
    {
      v100[0] = _NSConcreteStackBlock;
      v100[1] = 3221225472;
      v100[2] = sub_1003DA578;
      v100[3] = &unk_1005279D0;
      v100[4] = self;
      [v55 enumerateKeysAndObjectsUsingBlock:v100];
      if ([p_size[5] count])
      {
        v63 = sub_1003C27BC();
        v99[0] = _NSConcreteStackBlock;
        v99[1] = 3221225472;
        v99[2] = sub_1003DA7EC;
        v99[3] = &unk_100522CF0;
        v99[4] = &size;
        [v63 modifyUsingTransaction:v99];

        v64 = [p_size[5] count];
        v106[3] += v64;
        v65 = sub_1002856D4();
        v66 = sub_100286400(v65);

        if (([v54 isEqual:v66] & 1) == 0)
        {
          v67 = sub_1002856D4();
          sub_100289064(v67);
        }
      }

      if (p_isa)
      {
        v68 = objc_getProperty(p_isa, v62, 16, 1);
      }

      else
      {
        v68 = 0;
      }

      v69 = v68;
      v70 = [v69 count];

      if (v106[3] | v70)
      {
        v77 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = self->_logKey;
          v79 = v106[3];
          *v122 = 138412802;
          v123 = v78;
          v124 = 2048;
          v125 = v79;
          v126 = 2048;
          v127 = v70;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%@] Discovered %ld coordinators to complete and %ld restores that need to be bootstrapped", v122, 0x20u);
        }

        if (v106[3] >= 1)
        {
          v80 = sub_100283C38();
          sub_10028408C(v80);
        }

        if (v70 >= 1)
        {
          v81 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v94 = self->_logKey;
            if (p_isa)
            {
              v83 = objc_getProperty(p_isa, v82, 16, 1);
            }

            else
            {
              v83 = 0;
            }

            v90 = v83;
            v84 = [v90 componentsJoinedByString:{@", "}];
            *v122 = 138412546;
            v123 = v94;
            v124 = 2114;
            v88 = v84;
            v125 = v84;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%@] Will re-bootstrap restores: [%{public}@]", v122, 0x16u);
          }
        }

        v73 = sub_1002856D4();
        sub_1002870A8(v73, @"Complete coordinators called", 0, 0);
      }

      else
      {
        v71 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = self->_logKey;
          *v122 = 138412290;
          v123 = v72;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%@] No incomplete coordinators were found.", v122, 0xCu);
        }

        v73 = sub_100283C38();
        sub_100283F78(v73);
      }

      v76 = 0;
    }

    else
    {
      v74 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v87 = self->_logKey;
        *v122 = 138412546;
        v123 = v87;
        v124 = 2114;
        v125 = v57;
        _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "[%@] Failed to enumerate restoring coordinators error: %{public}@", v122, 0x16u);
      }

      v75 = v57;
      v76 = v57;
    }

    _Block_object_dispose(&address, 8);
    _Block_object_dispose(&v102, 8);

    _Block_object_dispose(&v105, 8);
    _Block_object_dispose(&size, 8);

    v85 = v76;
    self->super._success = v56;
    objc_setProperty_atomic_copy(self, v86, v85, 32);
  }

  else
  {

    v85 = 0;
  }
}

@end