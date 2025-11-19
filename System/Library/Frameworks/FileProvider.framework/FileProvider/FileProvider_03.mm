void __FPNumberOfNonMaterializedFilesForProviderDomainID_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void FPWriteImportCookieForDomainURL_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] writing import cookie for domain url %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void FPClearImportCookieForDomainURL_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] clearing import cookie for domain url %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __FPOSVersion_block_invoke_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1AAAE1000, a1, OS_LOG_TYPE_ERROR, "[ERROR] sysctl(kern.osversion) failed %{errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __getCSSearchableItemAttributeSetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableItemAttributeSetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSearchOnServerResult.m" lineNumber:21 description:{@"Unable to find class %s", "CSSearchableItemAttributeSet"}];

  __break(1u);
}

void CoreSpotlightLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSearchOnServerResult.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchableItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSearchOnServerResult.m" lineNumber:20 description:{@"Unable to find class %s", "CSSearchableItem"}];

  __break(1u);
}

void abc_report_assert_with_signature_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to send snapshot for signature %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void abc_report_assert_with_signature_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __abc_report_assert_with_signature_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __fp_leave_section_Error_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] ┗%llx ", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void fpfs_update_purgency_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_set_evictable_cold_1(_DWORD *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = (*a1 >> 5) & 1;
  v3 = a2[30];
  v4 = a2[3];
  v5 = *a2;
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
  v11 = *MEMORY[0x1E69E9840];
}

void fpfs_get_purgeable_stats_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void fpfs_unset_dataless_cmpfs_attrs_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_unset_dataless_cmpfs_attrs_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _fpfs_remove_sharing_xattrs_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _fpfs_remove_sharing_xattrs_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _fpfs_remove_sharing_xattrs_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _fpfs_remove_sharing_xattrs_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _fpfs_prune_fault_error_cold_1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

void _fpfs_prune_fault_status_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_DEBUG, "prune dataless: removed %s", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void fpfs_materialize_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x14u);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_materialize_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x14u);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_materialize_cold_3(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "failed to remove content dpendent xattrs during materialization [%s]", buf, 0xCu);
}

void _materialize_partial_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _materialize_partial_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void _materialize_partial_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _materialize_partial_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void fpfs_purge_single_file_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_evict_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "Unable to fully empty directory at '%s' during eviction: %s (leaving in state)", buf, 0x16u);
}

void fpfs_evict_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "APFSIOC_REVOKE_CHILDREN is allowing the eviction of folder, but FP heuristics identified %llu is busy", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void fpfs_evict_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_evict_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "Unable to update cmpfs_attrs", buf, 2u);
}

void FPLocvImpl_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = FPLocalizationBundle();
  v7 = [v6 bundlePath];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = a2;
  v13 = 2112;
  v14 = v7;
  _os_log_fault_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_FAULT, "[CRIT] Localized key '%@' missing from table '%@' (bundlePath:%@)", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void FPLocalizedErrorStringForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = FPLocalizationBundle();
  v5 = [v4 bundlePath];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Localized key '%@' missing from table 'Errors' (bundlePath:%@)", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void copyfile_status_cb_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] copyfile: recursing in %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void copyfile_status_cb_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] copyfile: done copying %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void copyfile_status_cb_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] copyfile: skipping appledouble file %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void copyfile_status_cb_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] copyfile: failed while copying an appledouble file %s, skipping error", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void copyfile_status_cb_cold_5(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6 = 136315394;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] copyfile: failed while copying (%s): %d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void getMDItemFileProviderDomainIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFileProviderDomainIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:61 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemLastUsedDate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemLastUsedDate(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemFileSize_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFileSize(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemFileItemID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFileItemID(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:56 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemFileProviderID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFileProviderID(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:57 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCSSearchableItemAttributeSetClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableItemAttributeSetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:71 description:{@"Unable to find class %s", "CSSearchableItemAttributeSet"}];

  __break(1u);
}

void CoreSpotlightLibrary_cold_1_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPItem+CSSearchableItem.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSLocalizedStringClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSLocalizedStringClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:72 description:{@"Unable to find class %s", "CSLocalizedString"}];

  __break(1u);
}

void MetadataUtilitiesLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MetadataUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPItem+CSSearchableItem.m" lineNumber:74 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchableItemClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPItem+CSSearchableItem.m" lineNumber:70 description:{@"Unable to find class %s", "CSSearchableItem"}];

  __break(1u);
}

void getCSIndexErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCSIndexErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightFetchClientStateOperation.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCSIndexErrorDomainSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSpotlightFetchClientStateOperation.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getFBSSystemServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSSystemServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPAccessControlManager.m" lineNumber:21 description:{@"Unable to find class %s", "FBSSystemService"}];

  __break(1u);
}

void __getFBSSystemServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPAccessControlManager.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSIndexErrorDomainSymbolLoc_block_invoke_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSpotlightIndexOneBatchOperation.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void FPCreateCrossDeviceItemIDForItemAtURLOnBehalfOfApplication_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_shortDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Connection %@ doesn't have access to file %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void hasConflictingVersion_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 itemIdentifier];
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void _FPItemAttributeValueFunction_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef _FPItemAttributeValueFunction(MDSimpleQueryEvaluator *, void *, CFStringRef)"}];
  [v1 handleFailureInFunction:v0 file:@"NSFileProviderSearchQuery.m" lineNumber:44 description:@"Unexpected kind of object for evaluation"];
}

void _FPItemAttributeValueFunction_cold_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef _FPItemAttributeValueFunction(MDSimpleQueryEvaluator *, void *, CFStringRef)"}];
  [v3 handleFailureInFunction:v2 file:@"NSFileProviderSearchQuery.m" lineNumber:47 description:{@"Unable to obtain value for key '%@'", a1}];
}

void MobileSpotlightIndexLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileSpotlightIndexLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NSFileProviderSearchQuery.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getDSFileOperationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDSFileOperationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_document_tracking.m" lineNumber:37 description:{@"Unable to find class %s", "DSFileOperation"}];

  __break(1u);
}

void __getDSFileOperationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DesktopServicesPrivLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"fpfs_document_tracking.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void FPDefaultFetchedAttributes_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDQueryResultRelevance(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void FPDefaultFetchedAttributes_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemExpirationDate(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void FPRecencyQualifyingAttributes_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemLastUsedDate(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void FPFileSizeAttributes_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemFileSize(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void FPIsAnyDocumentRecentlyUsed_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL FPIsAnyDocumentRecentlyUsed(NSArray<NSString *> *__strong, NSArray<NSString *> *__strong, NSArray<NSString *> *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"FPSpotlightQueryHelpers.m" lineNumber:357 description:{@"allowedFileTypes is empty, which is illegal."}];
}

void CoreSpotlightLibrary_cold_1_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSpotlightQueryHelpers.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchQueryContextClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:32 description:{@"Unable to find class %s", "CSSearchQueryContext"}];

  __break(1u);
}

void __getCSSearchQueryClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightQueryHelpers.m" lineNumber:31 description:{@"Unable to find class %s", "CSSearchQuery"}];

  __break(1u);
}

void __fpfs_get_materialization_alignment_block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_13(&dword_1AAAE1000, v1, v2, "[CRIT] Unable to resolve VM page size (%{errno}d). Defaulting to %lu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __fpfs_get_materialization_alignment_block_invoke_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_13(&dword_1AAAE1000, v1, v2, "[CRIT] Unable to resolve FS block size (%{errno}d). Defaulting to %lu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __FPSetLastUsedDateAtURL_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) path];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Failed to set last used date on %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) fp_shortDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] failed to get services for for item at URL %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 componentsJoinedByString:{@", "}];
  v6 = [*(a2 + 40) fp_shortDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] got services [%@] for item at URL %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v1, v2, "[ERROR] failed to get service endpoint creating for for item at URL %@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] got service endpoint creating %@ for item at URL %@");
  v5 = *MEMORY[0x1E69E9840];
}

void FPFetchServiceEndpointCreatorByNameForItemAtURL_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v1, v2, "[ERROR] Error fetching FPOriginalDocumentURL from url: %@ error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void fp_reachability_callback_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] Network reachability changed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void FPGetTagsFromTagsData_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFArrayRef _MDPropertyCopyDecodedUserTags(CFDataRef)"];
  [v0 handleFailureInFunction:v1 file:@"FPTools.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

void FPGetSharedDomainCachingPath_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6[0] = 67109376;
  v6[1] = v4;
  v7 = 2048;
  v8 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed getting sandbox extension: %d (handle: %lld)", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void FPGetSharedDomainCachingPath_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed querying shared cache: %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __FPGetTagsFromTagsDataInOnDiskEncoding_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFStringRef _MDPropertyCopyUserTagName(CFStringRef, uint8_t *)"}];
  [v0 handleFailureInFunction:v1 file:@"FPTools.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void MetadataUtilitiesLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MetadataUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPTools.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchQueryContextClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSearchQueryEnumerator.m" lineNumber:25 description:{@"Unable to find class %s", "CSSearchQueryContext"}];

  __break(1u);
}

void CoreSpotlightLibrary_cold_1_4(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSearchQueryEnumerator.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchQueryClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSearchQueryEnumerator.m" lineNumber:24 description:{@"Unable to find class %s", "CSSearchQuery"}];

  __break(1u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}