id sub_29C900680(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 60) & 1) != 0 || *(a1 + 61) == 1)
  {
    v2 = *(a1 + 56);
    if (v2 == 1)
    {
      if (*(a1 + 62) == 1)
      {
        v3 = PLPreferencesGetLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 32);
          v49 = 138412290;
          v50 = v4;
          _os_log_impl(&dword_29C8FF000, v3, OS_LOG_TYPE_DEFAULT, "Enabling shared album for new account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setSharedAlbumEnabled:1];
      }

      if (*(a1 + 63) == 1)
      {
        v5 = PLPreferencesGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v49 = 138412290;
          v50 = v6;
          _os_log_impl(&dword_29C8FF000, v5, OS_LOG_TYPE_DEFAULT, "Enabling My Photo Stream for new account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setPhotoStreamEnabled:1];
      }

      if (*(a1 + 64) == 1)
      {
        v7 = PLPreferencesGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v49 = 138412290;
          v50 = v8;
          _os_log_impl(&dword_29C8FF000, v7, OS_LOG_TYPE_DEFAULT, "Enabling iCPL for new account %@", &v49, 0xCu);
        }

        v9 = *(a1 + 40);
        v10 = [v9 libraryBundleForSPL];
        [v9 _setiCPLEnabled:1 forBundle:v10];
      }

      v11 = [*(a1 + 40) libraryBundleForGP];
      if (v11 && *(a1 + 65) == 1)
      {
        v12 = PLPreferencesGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v49 = 138412290;
          v50 = v13;
          _os_log_impl(&dword_29C8FF000, v12, OS_LOG_TYPE_DEFAULT, "Enabling Image Playground iCPL for modified account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setiCPLEnabled:1 forBundle:v11];
      }

      v2 = *(a1 + 56);
    }

    if (v2 == 2)
    {
      if (*(a1 + 62) != 1)
      {
        goto LABEL_28;
      }

      if ((*(a1 + 66) & 1) == 0)
      {
        v14 = PLPreferencesGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v49 = 138412290;
          v50 = v15;
          _os_log_impl(&dword_29C8FF000, v14, OS_LOG_TYPE_DEFAULT, "Enabling shared album for modified account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setSharedAlbumEnabled:1];
        if ((*(a1 + 62) & 1) == 0)
        {
LABEL_28:
          if (*(a1 + 66) == 1)
          {
            v16 = PLPreferencesGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(a1 + 32);
              v49 = 138412290;
              v50 = v17;
              _os_log_impl(&dword_29C8FF000, v16, OS_LOG_TYPE_DEFAULT, "Disabling shared album for modified account %@", &v49, 0xCu);
            }

            [*(a1 + 40) _setSharedAlbumEnabled:0];
          }
        }
      }

      if (*(a1 + 63) != 1)
      {
        goto LABEL_37;
      }

      if ((*(a1 + 67) & 1) == 0)
      {
        v18 = PLPreferencesGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          v49 = 138412290;
          v50 = v19;
          _os_log_impl(&dword_29C8FF000, v18, OS_LOG_TYPE_DEFAULT, "Enabling My Photo Stream for modified account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setPhotoStreamEnabled:1];
        if ((*(a1 + 63) & 1) == 0)
        {
LABEL_37:
          if (*(a1 + 67) == 1)
          {
            v20 = PLPreferencesGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(a1 + 32);
              v49 = 138412290;
              v50 = v21;
              _os_log_impl(&dword_29C8FF000, v20, OS_LOG_TYPE_DEFAULT, "Disabling My Photo Stream for modified account %@", &v49, 0xCu);
            }

            [*(a1 + 40) _setPhotoStreamEnabled:0];
          }
        }
      }

      if (*(a1 + 64) != 1)
      {
        goto LABEL_46;
      }

      if ((*(a1 + 68) & 1) == 0)
      {
        v22 = PLPreferencesGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 32);
          v49 = 138412290;
          v50 = v23;
          _os_log_impl(&dword_29C8FF000, v22, OS_LOG_TYPE_DEFAULT, "Enabling iCPL for modified account %@", &v49, 0xCu);
        }

        v24 = *(a1 + 40);
        v25 = [v24 libraryBundleForSPL];
        [v24 _setiCPLEnabled:1 forBundle:v25];

        if ((*(a1 + 64) & 1) == 0)
        {
LABEL_46:
          if (*(a1 + 68) == 1)
          {
            v26 = PLPreferencesGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a1 + 32);
              v49 = 138412290;
              v50 = v27;
              _os_log_impl(&dword_29C8FF000, v26, OS_LOG_TYPE_DEFAULT, "Disabling iCPL for modified account %@", &v49, 0xCu);
            }

            v28 = *(a1 + 40);
            v29 = [v28 libraryBundleForSPL];
            [v28 _setiCPLEnabled:0 forBundle:v29];
          }
        }
      }

      v30 = [*(a1 + 40) libraryBundleForGP];
      if (v30)
      {
        if (*(a1 + 65) != 1)
        {
          goto LABEL_56;
        }

        if ((*(a1 + 69) & 1) == 0)
        {
          v31 = PLPreferencesGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            v49 = 138412290;
            v50 = v32;
            _os_log_impl(&dword_29C8FF000, v31, OS_LOG_TYPE_DEFAULT, "Enabling Image Playground iCPL for modified account %@", &v49, 0xCu);
          }

          [*(a1 + 40) _setiCPLEnabled:1 forBundle:v30];
          if ((*(a1 + 65) & 1) == 0)
          {
LABEL_56:
            if (*(a1 + 69) == 1)
            {
              v33 = PLPreferencesGetLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = *(a1 + 32);
                v49 = 138412290;
                v50 = v34;
                _os_log_impl(&dword_29C8FF000, v33, OS_LOG_TYPE_DEFAULT, "Disabling Image Playground iCPL for modified account %@", &v49, 0xCu);
              }

              [*(a1 + 40) _setiCPLEnabled:0 forBundle:v30];
            }
          }
        }
      }

      v2 = *(a1 + 56);
    }

    if (v2 == 3)
    {
      v35 = PLPreferencesGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 32);
        v49 = 138412290;
        v50 = v36;
        _os_log_impl(&dword_29C8FF000, v35, OS_LOG_TYPE_DEFAULT, "Account %@ deleted, turning off Photos services", &v49, 0xCu);
      }

      if (*(a1 + 66) == 1)
      {
        v37 = PLPreferencesGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          v49 = 138412290;
          v50 = v38;
          _os_log_impl(&dword_29C8FF000, v37, OS_LOG_TYPE_DEFAULT, "Disabling shared album for deleted account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setSharedAlbumEnabled:0];
      }

      if (*(a1 + 67) == 1)
      {
        v39 = PLPreferencesGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 32);
          v49 = 138412290;
          v50 = v40;
          _os_log_impl(&dword_29C8FF000, v39, OS_LOG_TYPE_DEFAULT, "Disabling My Photo Stream for deleted account %@", &v49, 0xCu);
        }

        [*(a1 + 40) _setPhotoStreamEnabled:0];
      }

      v41 = PLPreferencesGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 32);
        v49 = 138412290;
        v50 = v42;
        _os_log_impl(&dword_29C8FF000, v41, OS_LOG_TYPE_DEFAULT, "Disabling iCPL for deleted account %@", &v49, 0xCu);
      }

      PLRecordiCPLDisableState();
      v43 = *(a1 + 40);
      v44 = [v43 libraryBundleForSPL];
      [v43 _setiCPLEnabled:0 forBundle:v44];

      v45 = [*(a1 + 40) libraryBundleForGP];
      if (v45)
      {
        [*(a1 + 40) _setiCPLEnabled:0 forBundle:v45];
      }
    }
  }

  v46 = *(a1 + 48);
  result = objc_opt_self();
  v48 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29C901548(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a3;
  PLRecordiCPLEnableState();
  if (a2)
  {
    v6 = PLPreferencesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_29C8FF000, v6, OS_LOG_TYPE_DEFAULT, "Auto-enable iCloud Photos for account %@", &v11, 0xCu);
    }

    [*(a1 + 32) setEnabled:1 forDataclass:*MEMORY[0x29EDB80B8]];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (v5)
  {
    v8 = PLPreferencesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_29C8FF000, v8, OS_LOG_TYPE_ERROR, "Unable to auto-enable iCloud Photos for account %@: %@", &v11, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v10 = *MEMORY[0x29EDCA608];
}

rIdentifier:*MEMORY[0x29EDC6150]];
  [v3 setUuid:*MEMORY[0x29EDC6148]];
  v11 = 0;
  v4 = [(PhotosAccountNotificationPlugin *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:v3 error:&v11];
  v5 = v11;
  if (!v4)
  {
    v6 = PLPreferencesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_29C8FF000, v6, OS_LOG_TYPE_ERROR, "Unable to find default Image Playground library: %@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_7;
  }

  if ([v4 count])
  {
    v6 = [v4 firstObject];
    v7 = [v6 libraryURL];
    v8 = [(PhotosAccountNotificationPlugin *)self libraryBundleForURL:v7];

LABEL_7:
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)libraryBundleForSPL
{
  v3 = [MEMORY[0x29EDC6160] systemLibraryURL];
  v4 = [(PhotosAccountNotificationPlugin *)self libraryBundleForURL:v3];

  return v4;
}

- (id)libraryBundleForURL:(id)a3
{
  v3 = MEMORY[0x29EDC6138];
  v4 = a3;
  v5 = [v3 sharedBundleController];
  v6 = [v5 openBundleAtLibraryURL:v4];

  return v6;
}

- (PhotosAccountNotificationPlugin)init
{
  v8.receiver = self;
  v8.super_class = PhotosAccountNotificationPlugin;
  v2 = [(PhotosAccountNotificationPlugin *)&v8 init];
  if (v2)
  {
    [MEMORY[0x29EDC6160] enableMultiLibraryMode];
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.photos.account_did_change_unboost", v4);
    unboostingQueue = v2->_unboostingQueue;
    v2->_unboostingQueue = v5;
  }

  return v2;
}

@end