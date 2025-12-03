@interface AppInstallPostProcessTask
- (void)main;
@end

@implementation AppInstallPostProcessTask

- (void)main
{
  if (self)
  {
    v3 = objc_alloc_init(BAAppStoreClient);
    v4 = sub_10023E604(self->_install, @"restore_type");
    install = self->_install;
    if (install)
    {
      v6 = sub_10023E604(install, @"source_type") == 2;
      if (v4)
      {
LABEL_4:
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100408EB0(&self->_install->super.super.isa);
          v9 = sub_1004090FC(self->_install);
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that a restore is ready for processing: %{public}@", buf, 0x16u);
        }

        v10 = sub_10040908C(self->_install);
        v11 = sub_1004090FC(self->_install);
        v12 = v10;
        v13 = v11;
        v14 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v15 = self->_install;
    if (v15)
    {
      v16 = sub_10023E604(v15, @"update_type") != 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = ASDLogHandleForCategory();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      if (v18)
      {
        v33 = sub_100408EB0(&self->_install->super.super.isa);
        v34 = sub_1004090FC(self->_install);
        *buf = 138412546;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that an install is ready for processing: %{public}@", buf, 0x16u);
      }

      v35 = sub_10040908C(self->_install);
      v36 = sub_1004090FC(self->_install);
      v37 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v35 appBundleURL:v36 event:10 client:v6];

      [v37 setUserInitiated:sub_100408E18(self->_install) ^ 1];
      v38 = self->_install;
      if (v38)
      {
        v39 = sub_10023E604(v38, @"automatic_type") != 0;
      }

      else
      {
        v39 = 0;
      }

      [v37 setAutomaticInstall:v39];
      v45 = 0;
      v40 = [v3 performEventWithDescriptor:v37 error:&v45];
      v25 = v45;

      if (v40)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    if (v18)
    {
      v19 = sub_100408EB0(&self->_install->super.super.isa);
      v20 = sub_1004090FC(self->_install);
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] About to tell Background Assets that an update is ready for processing: %{public}@", buf, 0x16u);
    }

    v10 = sub_10040908C(self->_install);
    v11 = sub_1004090FC(self->_install);
    v12 = v10;
    v13 = v11;
    v14 = 11;
LABEL_14:
    v21 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v12 appBundleURL:v13 event:v14 client:v6];

    [v21 setUserInitiated:sub_100408E18(self->_install) ^ 1];
    v22 = self->_install;
    if (v22)
    {
      v23 = sub_10023E604(v22, @"automatic_type") != 0;
    }

    else
    {
      v23 = 0;
    }

    [v21 setAutomaticInstall:v23];
    v45 = 0;
    v24 = [v3 performEventWithDescriptor:v21 error:&v45];
    v25 = v45;

    if (v24)
    {
LABEL_17:
      v26 = sub_10025E74C();
      v27 = sub_10040908C(self->_install);
      v28 = sub_100408EB0(&self->_install->super.super.isa);
      sub_10025F458(v26, v27, v28);

      v29 = sub_1003C27BC();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10036C628;
      v47 = &unk_10051D6C8;
      selfCopy = self;
      [v29 modifyUsingTransaction:buf];

      databaseID = [(SQLiteMemoryEntity *)self->_install databaseID];
      objc_opt_self();
      v31 = sub_10036C75C([AppInstallPostProcessResponse alloc], databaseID, 0, 0);
      taskResponse = self->_taskResponse;
      self->_taskResponse = v31;
LABEL_26:

      return;
    }

LABEL_23:
    v41 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v44 = sub_100408EB0(&self->_install->super.super.isa);
      *buf = 138412546;
      *&buf[4] = v44;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@] Failed to tell Background Assets that an install/update/restore was ready for processing: %{public}@", buf, 0x16u);
    }

    databaseID2 = [(SQLiteMemoryEntity *)self->_install databaseID];
    v25 = v25;
    objc_opt_self();
    v43 = sub_10036C75C([AppInstallPostProcessResponse alloc], databaseID2, 1, v25);

    taskResponse = self->_taskResponse;
    self->_taskResponse = v43;
    goto LABEL_26;
  }
}

@end