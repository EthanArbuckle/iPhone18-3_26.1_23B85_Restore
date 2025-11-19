void sub_2334BC1A8(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[CNAssistantCommandClear clearAceDomainObjects]";
  _os_log_debug_impl(&dword_2334BB000, log, OS_LOG_TYPE_DEBUG, "%s Failed to remove the updates cache file.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_2334BC870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2334BC888(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3);
  if (objc_msgSend_iOSLegacyIdentifier(v3, v5, v6) <= *(*(*(a1 + 40) + 8) + 24) && os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C2AC8();
  }

  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_iOSLegacyIdentifier(v3, v7, v8);
}

void sub_2334BCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334BCCA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334BCFC4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t sub_2334BD2FC(void *a1, const char *a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_contact(a1, a2, a3);
  v6 = v4;
  v7 = *MEMORY[0x277CBD010];
  if (v4 && (objc_msgSend_isKeyAvailable_(v4, v5, *MEMORY[0x277CBD010]) & 1) != 0)
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_opt_new();
    v14 = objc_msgSend_contactIdentifier(a1, v12, v13);
    v24[0] = v7;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v24, 1);
    v23 = 0;
    v18 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v11, v17, v14, v16, &v23);
    v10 = v23;

    v6 = v18;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  if (!v10)
  {
    v19 = objc_msgSend_iOSLegacyIdentifier(v6, v8, v9);
    goto LABEL_11;
  }

LABEL_8:
  v20 = *MEMORY[0x277CEF0D0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C2D04(v10, v20);
  }

  v19 = 0xFFFFFFFFLL;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

id sub_2334BDD08(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2334BDDEC;
  v17[3] = &unk_2789D8E10;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

uint64_t sub_2334BDDEC(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2);
  }

  return MEMORY[0x2821F96F8]();
}

id sub_2334BDE54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2334BDF38;
  v17[3] = &unk_2789D8E10;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

void sub_2334BDF38(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v4);
  }
}

void sub_2334BF6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334BF73C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334BF754(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D47100];
  v4 = a2;
  v5 = [v3 alloc];
  v17 = objc_msgSend_initWithDictionary_(v5, v6, v4);

  v9 = objc_msgSend_refId(*(a1 + 32), v7, v8);
  objc_msgSend_setRefId_(v17, v10, v9);

  objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v11, v17);
  v14 = objc_msgSend_results(v17, v12, v13);
  *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_count(v14, v15, v16);
}

void sub_2334C16BC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_2334C2918(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = objc_msgSend_changeHistoryClientIdentifier(a2, v4, v5);
  sub_2334BCFA4();
  sub_2334BCFC4(&dword_2334BB000, v7, v8, "%s Failed to get latest consumed change history anchor for %@, error = %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334C29CC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C2A4C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C2AC8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C2B48(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = objc_msgSend_changeHistoryClientIdentifier(a2, v4, v5);
  sub_2334BCFA4();
  sub_2334BCFC4(&dword_2334BB000, v7, v8, "%s Failed to fetch change history for %@, error = %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2334C2BFC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C2C78()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  sub_2334BCFA4();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_2334BB000, v2, OS_LOG_TYPE_DEBUG, "%s failed to fetch contact with identifier = %@, error = %@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2334C2D04(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[CNChangeHistoryContactChange(CNAssistantAdditions) iOSLegacyIdentifier]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_2334BB000, a2, OS_LOG_TYPE_DEBUG, "%s Error retrieving contact for iOS legacy identifier: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334C2D90()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  sub_2334BCFA4();
  _os_log_error_impl(&dword_2334BB000, v0, OS_LOG_TYPE_ERROR, "%s Cannot write sync info dictionary to path %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_2334C2E10()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  sub_2334BCFA4();
  _os_log_error_impl(&dword_2334BB000, v0, OS_LOG_TYPE_ERROR, "%s Error writing sync info dictionary: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_2334C2E90(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = objc_msgSend_absoluteString(a2, v4, v5);
  v8 = 136315394;
  v9 = "[CNAssistantCommandCancelPerson removeUpdatesFromCache]";
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_2334BB000, v3, OS_LOG_TYPE_DEBUG, "%s Failed to remove updates from cache for identifer %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2334C2F4C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C2FC8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3044(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334C16B0();
  v6 = objc_msgSend_shortDescription(v3, v4, v5);
  sub_2334BCFA4();
  sub_2334C1690();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334C30E8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3164(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334C16B0();
  v6 = objc_msgSend_shortDescription(v3, v4, v5);
  sub_2334BCFA4();
  sub_2334C1690();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334C3208()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3288()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3310()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3390(void *a1, char *a2, uint64_t a3)
{
  v5 = a1;
  v22 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_syncCount(a1, a2, a3);
  v11 = objc_msgSend_syncCount(v5, v7, v8);
  if (v11)
  {
    v5 = objc_msgSend_allContacts(v5, v9, v10);
    v3 = objc_msgSend_lastObject(v5, v13, v14);
    v12 = objc_msgSend_identifier(v3, v15, v16);
  }

  else
  {
    v12 = @"n/a";
  }

  v18[0] = 136315650;
  sub_2334C16A0();
  v19 = v6;
  v20 = 2112;
  v21 = v12;
  _os_log_debug_impl(&dword_2334BB000, a2, OS_LOG_TYPE_DEBUG, "%s full sync cached %li contacts, max contactIdentifier = %@", v18, 0x20u);
  if (v11)
  {
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2334C34A0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3520()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C35A0(void *a1, void *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  objc_msgSend_syncIndex(a2, v6, v7);
  v10[0] = 136315650;
  sub_2334C16A0();
  v11 = v8;
  v12 = 1024;
  v13 = a3;
  _os_log_debug_impl(&dword_2334BB000, v5, OS_LOG_TYPE_DEBUG, "%s full sync resuming previous full sync, self.syncIndex = %li, contactLegacyIdentifier = %d", v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2334C3660()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C36DC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C375C(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334C16B0();
  objc_msgSend_syncCount(v3, v4, v5);
  sub_2334C16A0();
  sub_2334C1690();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2334C37F8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3878()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C38F8(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334C16B0();
  v6 = objc_msgSend_internalGUID(v3, v4, v5);
  sub_2334BCFA4();
  sub_2334C1690();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334C399C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3A18()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3A98()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3B18(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = sub_2334C16B0();
  objc_msgSend_syncIndex(v5, v6, v7);
  objc_msgSend_syncCount(a2, v8, v9);
  sub_2334C16A0();
  sub_2334C1690();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2334C3BD0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3C50(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = sub_2334C16B0();
  objc_msgSend_syncIndex(v5, v6, v7);
  objc_msgSend_syncCount(a2, v8, v9);
  sub_2334C16A0();
  sub_2334C1690();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2334C3D08()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3D88()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3E08()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C3E88(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = objc_msgSend_validity(a3, v6, v7);
  v11 = objc_msgSend_count(a3, v9, v10);
  v14 = objc_msgSend_anchor(a3, v12, v13);
  v16 = 136316162;
  v17 = "[ABAssistantSyncWorker syncSnapshotForKey:]";
  v18 = 2112;
  v19 = a1;
  v20 = 2112;
  v21 = v8;
  v22 = 2048;
  v23 = v11;
  v24 = 2112;
  v25 = v14;
  _os_log_debug_impl(&dword_2334BB000, v5, OS_LOG_TYPE_DEBUG, "%s syncSnapshotForKey:%@, validity=%@, count=%li, anchor=%@", &v16, 0x34u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2334C3F94()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2334BCFA4();
  sub_2334BCFB8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2334C4010(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = sub_2334C16B0();
  v6 = objc_msgSend_expectedSyncKeyPrefix(v3, v4, v5);
  sub_2334BCFA4();
  sub_2334C1690();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2334C40B4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  sub_2334BCFA4();
  sub_2334C16BC(&dword_2334BB000, v0, v1, "%s Failed to register %@ for contacts change history, error = %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2334C4130()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  sub_2334BCFA4();
  sub_2334C16BC(&dword_2334BB000, v0, v1, "%s Failed to unregister %@ for contacts change history, error = %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}