@interface BCSNotificationIcon
+ (UNNotificationIcon)nfcIcon;
+ (UNNotificationIcon)qrCodeIcon;
+ (UNNotificationIcon)viewfinderIcon;
+ (uint64_t)nfcIcon;
+ (uint64_t)qrCodeIcon;
+ (uint64_t)viewfinderIcon;
- (BCSNotificationIcon)initWithAction:(id)a3;
- (NSURL)imageURL;
- (id)_clipIconURLForAction:(id)a3 scale:(double)a4;
- (id)_notificationIconDataURLForApp:(id)a3 scale:(float)a4;
@end

@implementation BCSNotificationIcon

+ (UNNotificationIcon)qrCodeIcon
{
  if (_MergedGlobals == 1)
  {
    v4 = qword_27E551498;
  }

  else
  {
    v6[1] = v2;
    v7 = v3;
    +[(BCSNotificationIcon *)v6];
    v4 = v6[0];
  }

  return v4;
}

+ (UNNotificationIcon)nfcIcon
{
  if (byte_27E551491 == 1)
  {
    v4 = qword_27E5514A0;
  }

  else
  {
    v6[1] = v2;
    v7 = v3;
    +[(BCSNotificationIcon *)v6];
    v4 = v6[0];
  }

  return v4;
}

+ (UNNotificationIcon)viewfinderIcon
{
  if (byte_27E551492 == 1)
  {
    v4 = qword_27E5514A8;
  }

  else
  {
    v6[1] = v2;
    v7 = v3;
    +[(BCSNotificationIcon *)v6];
    v4 = v6[0];
  }

  return v4;
}

- (BCSNotificationIcon)initWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCSNotificationIcon;
  v5 = [(BCSNotificationIcon *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_action, v4);
    v7 = v6;
  }

  return v6;
}

- (NSURL)imageURL
{
  WeakRetained = objc_loadWeakRetained(&self->_action);
  v4 = [WeakRetained defaultActionTargetApplicationBundleIdentifier];
  MGGetFloat32Answer();
  v6 = v5;
  if (v5 == 3.0)
  {
    v7 = @"CellularData@3x";
  }

  else
  {
    v7 = @"CellularData@2x";
  }

  if ([v4 isEqualToString:@"com.apple.Preferences.cellularData"])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 URLForResource:v7 withExtension:@"png"];

    goto LABEL_21;
  }

  if (![v4 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotificationIcon: target app identifier is nil", buf, 2u);
    }

LABEL_16:
    v9 = 0;
    goto LABEL_21;
  }

  v9 = [(BCSNotificationIcon *)self _clipIconURLForAction:WeakRetained scale:v6];
  if (v9)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [WeakRetained isAMSAction] && ((objc_msgSend(v4, "isEqualToString:", @"com.apple.ios.StoreKitUIService") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.AMSEngagementViewService")))
  {
    goto LABEL_16;
  }

  v10 = [getLSApplicationProxyClass() applicationProxyForIdentifier:v4];
  if (v10)
  {
    *&v11 = v6;
    v9 = [(BCSNotificationIcon *)self _notificationIconDataURLForApp:v10 scale:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotificationIcon: app proxy is nil", v13, 2u);
    }

    v9 = 0;
  }

LABEL_21:

  return v9;
}

- (id)_clipIconURLForAction:(id)a3 scale:(double)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 clipMetadataRequest];
    v7 = [v6 getClipMetadataSynchronously];

    if (v7)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__0;
      v27 = __Block_byref_object_dispose__0;
      v28 = 0;
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v9 = [v5 clipMetadataRequest];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __51__BCSNotificationIcon__clipIconURLForAction_scale___block_invoke;
      v19[3] = &unk_278CFF088;
      v10 = v8;
      v22 = a4;
      v20 = v10;
      v21 = &v23;
      [v9 requestDownloadedIconWithMetadata:v7 completion:v19];

      v11 = dispatch_time(0, 1000000000);
      dispatch_group_wait(v10, v11);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = v24[5];
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotificationIcon: processed icon URL after timeout = %@", buf, 0xCu);
      }

      v13 = v24[5];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        if (a4 == 3.0)
        {
          v15 = @"AppClips@3x";
        }

        else
        {
          v15 = @"AppClips@2x";
        }

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v16 URLForResource:v15 withExtension:@"png"];
      }

      _Block_object_dispose(&v23, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

void __51__BCSNotificationIcon__clipIconURLForAction_scale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(BCSConfigurationManager);
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__BCSNotificationIcon__clipIconURLForAction_scale___block_invoke_2;
    v8[3] = &unk_278CFF060;
    v7 = *(a1 + 32);
    v6 = v7;
    v9 = v7;
    [(BCSConfigurationManager *)v4 processAppClipImageWithURL:v3 scale:v8 completion:v5];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __51__BCSNotificationIcon__clipIconURLForAction_scale___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)_notificationIconDataURLForApp:(id)a3 scale:(float)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _bcs_notificationIconBaseURL();
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 stringWithFormat:@"%@.png", v8];
  v10 = [v6 URLByAppendingPathComponent:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v10 absoluteString];
    v13 = [v11 fileExistsAtPath:v12 isDirectory:0];

    if (v13)
    {
      v14 = v10;
      goto LABEL_33;
    }

    if (a4 == 2.0)
    {
      v15 = 17;
    }

    else if (a4 == 3.0)
    {
      v15 = 34;
    }

    else
    {
      v15 = 64;
    }

    v16 = [v5 iconDataForVariant:v15];
    if (v16)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v17 = getLICreateIconFromCachedBitmapSymbolLoc(void)::ptr;
      v32 = getLICreateIconFromCachedBitmapSymbolLoc(void)::ptr;
      if (!getLICreateIconFromCachedBitmapSymbolLoc(void)::ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = ___ZL40getLICreateIconFromCachedBitmapSymbolLocv_block_invoke;
        v36 = &unk_278CFF0B0;
        v37 = &v29;
        ___ZL40getLICreateIconFromCachedBitmapSymbolLocv_block_invoke(buf);
        v17 = v30[3];
      }

      _Block_object_dispose(&v29, 8);
      if (!v17)
      {
        v26 = [MEMORY[0x277CCA890] currentHandler];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGImageRef _LICreateIconFromCachedBitmap(CFDataRef)"];
        [v26 handleFailureInFunction:v27 file:@"BCSNotificationIcon.mm" lineNumber:31 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v18 = v17(v16);
      v19 = v18;
      if (v18)
      {
        v20 = _bcs_CGImagePNGRepresentation(v18);
        if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [BCSNotificationIcon _notificationIconDataURLForApp:scale:];
        }

        v28 = 0;
        [v20 writeToURL:v10 options:1 error:&v28];
        v21 = v28;
        if (v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v22 = [v21 _bcs_privacyPreservingDescription];
          [BCSNotificationIcon _notificationIconDataURLForApp:v22 scale:buf];
        }

        CGImageRelease(v19);
        if (v20)
        {
          v23 = v10;
        }

        else
        {
          v23 = 0;
        }

        v14 = v23;

        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSNotificationIcon _notificationIconDataURLForApp:scale:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [BCSNotificationIcon _notificationIconDataURLForApp:scale:];
    }

    v14 = 0;
LABEL_32:

    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BCSNotificationIcon _notificationIconDataURLForApp:scale:];
  }

  v14 = 0;
LABEL_33:

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (uint64_t)qrCodeIcon
{
  result = [MEMORY[0x277CE1FB0] iconNamed:@"QR_section_icon"];
  *a1 = result;
  qword_27E551498 = result;
  _MergedGlobals = 1;
  return result;
}

+ (uint64_t)nfcIcon
{
  result = [MEMORY[0x277CE1FB0] iconNamed:@"NFC_section_icon"];
  *a1 = result;
  qword_27E5514A0 = result;
  byte_27E551491 = 1;
  return result;
}

+ (uint64_t)viewfinderIcon
{
  result = [MEMORY[0x277CE1FB0] iconNamed:@"Viewfinder_section_icon"];
  *a1 = result;
  qword_27E5514A8 = result;
  byte_27E551492 = 1;
  return result;
}

- (void)_notificationIconDataURLForApp:(void *)a1 scale:(uint8_t *)buf .cold.2(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSNotificationIcon: Failed to write PNG image data to disk with error %{public}@", buf, 0xCu);
}

@end