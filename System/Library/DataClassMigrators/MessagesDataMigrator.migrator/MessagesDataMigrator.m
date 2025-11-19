void sub_23396FF84(uint64_t a1)
{
  IMDSMSRecordStoreSave();
  IMDSystemMigrationSetHasMigrated();
  [*(a1 + 32) setiCloudBackupsAndRestoresEnabledForSMSDirectory];
  [*(a1 + 32) saveDeviceState:1 isMigrating:0];
  [*(a1 + 32) clearMOCDefaultsForRestoreFromBackupIfNeeded];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_23396F000, v2, OS_LOG_TYPE_INFO, "Finished iMessage data migration", v3, 2u);
    }
  }
}

void sub_23397010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233970124(uint64_t a1)
{
  v2 = IMDSMSRecordStoreCopySMSDBPath();
  if (v2)
  {
    v3 = v2;
    Length = CFStringGetLength(v2);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    *&usedBufLen.st_dev = 0;
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    v9.location = 0;
    v9.length = Length;
    CFStringGetBytes(v3, v9, 0x8000100u, 0, 0, v6, MaximumSizeForEncoding, &usedBufLen.st_dev);
    v6[*&usedBufLen.st_dev] = 0;
    memset(&usedBufLen, 0, sizeof(usedBufLen));
    if (!stat(v6, &usedBufLen))
    {
      v7 = usedBufLen.st_size * 0.000114746094;
      *(*(*(a1 + 32) + 8) + 24) = v7;
    }

    free(v6);
    CFRelease(v3);
  }
}

ndleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23396F000, v3, OS_LOG_TYPE_INFO, "Beginning iMessage data migration", buf, 2u);
    }
  }

  [(MessagesDataMigrator *)self saveDeviceState:0 isMigrating:1];
  IMDPersistencePerformBlock();
  return 1;
}

- (float)estimatedDuration
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  IMDPersistencePerformBlock();
  v2 = v5[6] / 10.0;
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)_cloudKitEnabled
{
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19AD0];
  return IMGetDomainBoolForKey();
}

- (void)_printCriticalDefaultsWithMessage:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v20 = [(MessagesDataMigrator *)self _cloudKitEnabled];
  v3 = *MEMORY[0x277D19A50];
  v4 = *MEMORY[0x277D19A68];
  v18 = IMGetDomainBoolForKey();
  v5 = *MEMORY[0x277D19A60];
  v17 = IMGetDomainBoolForKey();
  v6 = *MEMORY[0x277D19AA8];
  v16 = IMGetDomainBoolForKey();
  v7 = *MEMORY[0x277D19A20];
  v8 = *MEMORY[0x277D19B20];
  v15 = IMGetDomainBoolForKey();
  v9 = *MEMORY[0x277D19A08];
  v10 = *MEMORY[0x277D199F8];
  v11 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *MEMORY[0x277D19AD0];
      v21 = 138416898;
      v22 = a3;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      v27 = 1024;
      v28 = v20;
      v29 = 2112;
      v30 = v3;
      v31 = 2112;
      v32 = v4;
      v33 = 1024;
      v34 = v18;
      v35 = 2112;
      v36 = v3;
      v37 = 2112;
      v38 = v5;
      v39 = 1024;
      v40 = v17;
      v41 = 2112;
      v42 = v3;
      v43 = 2112;
      v44 = v6;
      v45 = 1024;
      v46 = v16;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v8;
      v51 = 1024;
      v52 = v15;
      v53 = 2112;
      v54 = v9;
      v55 = 2112;
      v56 = v10;
      v57 = 1024;
      v58 = v11;
      _os_log_impl(&dword_23396F000, v12, OS_LOG_TYPE_INFO, "%@:\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}\n\t\t{domain: %@ key %@ originalValue: %{BOOL}d}", &v21, 0xA8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clearMOCDefaultsForRestoreFromBackupIfNeeded
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [(DataClassMigrator *)self didRestoreFromBackup];
  v4 = [(DataClassMigrator *)self didRestoreFromCloudBackup];
  v5 = [(MessagesDataMigrator *)self _didRestoreFromDeviceToDevice];
  v6 = [(DataClassMigrator *)self didUpgrade];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v47[0] = 67110144;
      v47[1] = v3;
      v48 = 1024;
      v49 = v4;
      v50 = 1024;
      v51 = v5;
      v52 = 1024;
      v53 = v6;
      v54 = 1024;
      v55 = [(DataClassMigrator *)self userDataDisposition];
      _os_log_impl(&dword_23396F000, v7, OS_LOG_TYPE_INFO, "clearMOCDefaultsForRestoreFromBackupIfNeeded {didRestoreFromBackUp: %{BOOL}d, didRestoreFromCloudBackUp: %{BOOL}d, didRestoreFromDeviceToDevice: %{BOOL}d, didUpgrade: %{BOOL}d, disposition: %d}", v47, 0x20u);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v47[0]) = 0;
        _os_log_impl(&dword_23396F000, v8, OS_LOG_TYPE_INFO, "We are upgrade installing, so no need to update the MOC defaults", v47, 2u);
      }
    }

    v9 = *MEMORY[0x277D19A08];
    v10 = *MEMORY[0x277D19A00];
    IMSetDomainBoolForKey();
  }

  else
  {
    v11 = *MEMORY[0x277D19A08];
    v12 = *MEMORY[0x277D19A00];
    if (v3)
    {
      v13 = *MEMORY[0x277D19A08];
      v14 = *MEMORY[0x277D19A00];
      IMSetDomainBoolForKey();
      [(MessagesDataMigrator *)self _printCriticalDefaultsWithMessage:@"We are restoring a device from backup ---- clearing defaults"];
      v15 = *MEMORY[0x277D19A50];
      v16 = *MEMORY[0x277D19A68];
      IMSetDomainBoolForKey();
      v17 = *MEMORY[0x277D19A60];
      IMSetDomainBoolForKey();
      v18 = *MEMORY[0x277D19AA8];
      IMSetDomainBoolForKey();
      v19 = *MEMORY[0x277D19A20];
      v20 = *MEMORY[0x277D19B20];
      IMSetDomainBoolForKey();
      v21 = *MEMORY[0x277D19750];
      IMSetDomainBoolForKey();
      v22 = *MEMORY[0x277D19BD8];
      IMSetDomainValueForKey();
      v23 = *MEMORY[0x277D19C40];
      IMSetDomainValueForKey();
      v24 = *MEMORY[0x277D19B18];
      IMSetDomainValueForKey();
      v25 = *MEMORY[0x277D19B30];
      IMSetDomainValueForKey();
      v26 = *MEMORY[0x277D19B28];
      IMSetDomainValueForKey();
      v27 = *MEMORY[0x277D19AF8];
      IMSetDomainValueForKey();
      v28 = *MEMORY[0x277D19B08];
      IMSetDomainValueForKey();
      v29 = *MEMORY[0x277D19B00];
      IMSetDomainValueForKey();
      v30 = *MEMORY[0x277D199B0];
      IMSetDomainValueForKey();
      v31 = *MEMORY[0x277D19AF0];
      IMSetDomainValueForKey();
      v32 = *MEMORY[0x277D19AE8];
      IMSetDomainValueForKey();
      v33 = *MEMORY[0x277D19AA0];
      IMSetDomainValueForKey();
      v34 = *MEMORY[0x277D19A98];
      IMSetDomainValueForKey();
      v35 = *MEMORY[0x277D199F0];
      IMSetDomainValueForKey();
      IMSetDomainValueForKey();
      IMSetDomainValueForKey();
      v36 = *MEMORY[0x277D19B88];
      IMSetDomainValueForKey();
      v37 = *MEMORY[0x277D19AB0];
      IMSetDomainValueForKey();
      v38 = *MEMORY[0x277D1A4F8];
      v39 = *MEMORY[0x277D1A500];
      IMSetDomainValueForKey();
      v40 = *MEMORY[0x277D19A78];
      IMSetDomainValueForKey();
      v41 = *MEMORY[0x277D19A88];
      IMSetDomainValueForKey();
      if ([(MessagesDataMigrator *)self _cloudKitEnabled])
      {
        v42 = *MEMORY[0x277D19BD0];
        IMSetDomainValueForKey();
        if (v5)
        {
          v43 = *MEMORY[0x277D199F8];
          IMSetDomainBoolForKey();
        }
      }

      [(MessagesDataMigrator *)self _printCriticalDefaultsWithMessage:@"Finished clearing with new values"];
      IMClearDidPerformInitialChatVocabularyUpdate();
    }

    else
    {
      v44 = *MEMORY[0x277D19A08];
      v45 = *MEMORY[0x277D19A00];
      if (IMGetDomainBoolForKey())
      {
        IMSetDomainValueForKey();
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

@end