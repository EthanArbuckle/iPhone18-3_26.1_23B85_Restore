@interface StewieWidgetAvailability
+ (BOOL)isAnyServiceAllowedForState:(id)a3 includePermittedAtLocation:(BOOL)a4;
- (BOOL)shouldAddSkipperComplication;
@end

@implementation StewieWidgetAvailability

- (BOOL)shouldAddSkipperComplication
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_create("com.apple.NanoTimeKit.NTKLeghornFace.TelephonyQueue", 0);
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v7 = objc_msgSend_initWithQueue_(v4, v5, v6, v3);
  v30 = 0;
  v10 = objc_msgSend_getStewieSupport_(v7, v8, v9, &v30);
  v12 = v30;
  if (v12)
  {
    v14 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7458(v12, v14);
    }

    goto LABEL_9;
  }

  if ((objc_msgSend_hwSupport(v10, v11, v13) & 1) == 0)
  {
LABEL_9:
    v23 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
      _os_log_impl(&dword_23BEB1000, v23, OS_LOG_TYPE_DEFAULT, "%s - No HW support", buf, 0xCu);
    }

    LOBYTE(isAnyServiceAllowedForState_includePermittedAtLocation) = 0;
    goto LABEL_12;
  }

  v15 = objc_alloc(MEMORY[0x277CC3768]);
  v18 = objc_msgSend_initWithDelegate_queue_(v15, v16, v17, self, v3);
  objc_msgSend_start(v18, v19, v20);
  v23 = objc_msgSend_getState(v18, v21, v22);

  if (v23)
  {
    v24 = objc_opt_class();
    isAnyServiceAllowedForState_includePermittedAtLocation = objc_msgSend_isAnyServiceAllowedForState_includePermittedAtLocation_(v24, v25, v26, v23, 1);
    v28 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
      v33 = 1024;
      v34 = isAnyServiceAllowedForState_includePermittedAtLocation;
      _os_log_impl(&dword_23BEB1000, v28, OS_LOG_TYPE_DEFAULT, "%s - isAnyServiceAllowed: %{BOOL}d", buf, 0x12u);
    }
  }

  else
  {
    v28 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE74E4(v28);
    }

    LOBYTE(isAnyServiceAllowedForState_includePermittedAtLocation) = 0;
  }

LABEL_12:
  return isAnyServiceAllowedForState_includePermittedAtLocation;
}

+ (BOOL)isAnyServiceAllowedForState:(id)a3 includePermittedAtLocation:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284EB74C8, v6, 0.0, &v26, v32, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(&unk_284EB74C8);
        }

        v13 = objc_msgSend_integerValue(*(*(&v26 + 1) + 8 * i), v8, v9);
        isAllowedService = objc_msgSend_isAllowedService_(v5, v14, v15, v13);
        isDemoAllowedForService = objc_msgSend_isDemoAllowedForService_(v5, v17, v18, v13);
        if ((isAllowedService & 1) != 0 || isDemoAllowedForService)
        {
          v22 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v31 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
            v24 = "%s - Found at least one available service";
            goto LABEL_19;
          }

LABEL_20:
          v23 = 1;
          goto LABEL_21;
        }

        objc_msgSend_statusReasonForService_(v5, v20, v21, v13);
        if (v4 && objc_msgSend_isPermittedAtCurrentLocation_(v5, v8, v9, v13))
        {
          v22 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v31 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
            v24 = "%s - Found service permitted at current location";
LABEL_19:
            _os_log_impl(&dword_23BEB1000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
          }

          goto LABEL_20;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284EB74C8, v8, v9, &v26, v32, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v22 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "+[StewieWidgetAvailability isAnyServiceAllowedForState:includePermittedAtLocation:]";
    _os_log_impl(&dword_23BEB1000, v22, OS_LOG_TYPE_DEFAULT, "%s - No services are available", buf, 0xCu);
  }

  v23 = 0;
LABEL_21:

  return v23;
}

@end