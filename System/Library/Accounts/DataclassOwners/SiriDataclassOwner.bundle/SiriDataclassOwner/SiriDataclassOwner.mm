void sub_F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

ataclasses
{
  v4 = kAccountDataclassSiri;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (SiriDataclassOwner)init
{
  v6.receiver = self;
  v6.super_class = SiriDataclassOwner;
  v2 = [(SiriDataclassOwner *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AFSettingsConnection);
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountType];
  v9 = [v8 identifier];
  if (![v9 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {

    goto LABEL_8;
  }

  v10 = [v7 isEqualToString:kAccountDataclassSiri];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v20 = 0;
    goto LABEL_11;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v11 = dispatch_semaphore_create(0);
  settings = self->_settings;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_F8C;
  v25 = &unk_4130;
  v27 = &v28;
  v13 = v11;
  v26 = v13;
  [(AFSettingsConnection *)settings fetchMultiUserVoiceIdentificationSetting:&v22];
  v14 = dispatch_time(0, 50000000);
  v15 = dispatch_semaphore_wait(v13, v14);
  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [NSNumber numberWithBool:*(v29 + 24), v22, v23, v24, v25];
    *buf = 136315650;
    v34 = "[SiriDataclassOwner actionsForDisablingDataclassOnAccount:forDataclass:]";
    v35 = 2048;
    v36 = v15;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%s #SiriDataclassOwner multiUserfetchCompleted:%lu multUserEnabled:%@", buf, 0x20u);
  }

  if (*(v29 + 24) == 1)
  {
    v18 = [ACDataclassAction actionWithType:3];
    v32[0] = v18;
    v19 = [ACDataclassAction actionWithType:0];
    v32[1] = v19;
    v20 = [NSArray arrayWithObjects:v32 count:2];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v28, 8);
LABEL_11:

  return v20;
}

@end