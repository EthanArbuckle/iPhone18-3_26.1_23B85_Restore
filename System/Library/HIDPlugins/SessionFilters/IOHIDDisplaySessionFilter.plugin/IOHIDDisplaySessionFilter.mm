id sub_E70()
{
  if (qword_8548 != -1)
  {
    sub_15F8();
  }

  v1 = qword_8540;

  return v1;
}

void sub_1024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1044(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = sub_E70();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "removed";
      if (a3)
      {
        v8 = "added";
      }

      v18 = 136315394;
      v19 = v8;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Display device %s: %{public}@", &v18, 0x16u);
    }

    v9 = [v5 propertyForKey:@"UniqueID"];
    if (a3)
    {
      v10 = [[HIDDisplayPresetInterface alloc] initWithMatching:WeakRetained[2]];
      if (v10)
      {
        [WeakRetained setPresetIndexForDevice:v10 uniqueID:v9];
      }

      else
      {
        v11 = sub_E70();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_160C(WeakRetained + 2, v11, v12, v13, v14, v15, v16, v17);
        }
      }
    }

    else
    {
      v10 = WeakRetained;
      objc_sync_enter(v10);
      [v10[3] removeObject:v9];
      objc_sync_exit(v10);
    }
  }
}

void sub_1554(id a1)
{
  qword_8540 = os_log_create("com.apple.iohid", "HIDDisplaySessionFilter");

  _objc_release_x1();
}

void sub_1598(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

er *)manager setDeviceNotificationHandler:&v4];
    [(HIDManager *)self->_manager setDispatchQueue:self->_queue, v4, v5, v6, v7];
    [(HIDManager *)self->_manager activate];
    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

- (id)serialize
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = self;
  objc_sync_enter(v4);
  [v3 setObject:@"HIDDisplaySessionFilter" forKeyedSubscript:@"Class"];
  [v3 setObject:v4->_debugInfo forKeyedSubscript:@"Status"];
  objc_sync_exit(v4);

  return v3;
}

- (BOOL)setPresetIndexForDevice:(id)a3 uniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v8 = [v6 getFactoryDefaultPresetIndex:&v39];
  v9 = v39;
  v10 = v9;
  if (v8 == -1)
  {
    v18 = sub_E70();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1754(v10, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_15;
  }

  v38 = v9;
  v11 = [v6 getActivePresetIndex:&v38];
  v12 = v38;

  if (v11 == -1)
  {
    v18 = sub_E70();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_16E8(v12, v18, v25, v26, v27, v28, v29, v30);
    }

    v10 = v12;
    goto LABEL_15;
  }

  if (v8 != v11)
  {
    v13 = sub_E70();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v41 = v11;
      v42 = 2048;
      v43 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Setting active preset index (%ld) to factory default preset index (%ld)", buf, 0x16u);
    }

    v37 = v12;
    v14 = [v6 setActivePresetIndex:v8 error:&v37];
    v10 = v37;

    if (v14)
    {
      goto LABEL_8;
    }

    v18 = sub_E70();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_167C(v10, v18, v31, v32, v33, v34, v35, v36);
    }

LABEL_15:

    objc_sync_enter(self);
    v16 = 0;
    goto LABEL_9;
  }

  v10 = v12;
LABEL_8:
  v15 = self;
  objc_sync_enter(v15);
  [(NSMutableArray *)v15->_debugInfo addObject:v7];
  v16 = 1;
LABEL_9:
  objc_sync_exit(self);

  return v16;
}

@end