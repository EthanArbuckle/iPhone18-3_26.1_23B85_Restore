uint64_t sub_1BADC2EB8()
{
  v0 = [APUnfairLock alloc];
  qword_1EDBA4BF0 = objc_msgSend_initWithOptions_(v0, v1, 1, v2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BADC2F64()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v114 = 0;
    _os_log_impl(&dword_1BADC1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Initializing log categories.", v114, 2u);
  }

  v0 = os_log_create("com.apple.adplatforms", "Accumulator");
  v1 = qword_1EDBA4E08;
  qword_1EDBA4E08 = v0;

  v2 = os_log_create("com.apple.adplatforms", "AdPolicy");
  v3 = qword_1EDBA4E10;
  qword_1EDBA4E10 = v2;

  v4 = os_log_create("com.apple.adplatforms", "Analytics");
  v5 = qword_1EDBA4E18;
  qword_1EDBA4E18 = v4;

  v6 = os_log_create("com.apple.adplatforms", "AppStoreEvent");
  v7 = qword_1EDBA4E28;
  qword_1EDBA4E28 = v6;

  v8 = os_log_create("com.apple.adplatforms", "Attribution");
  v9 = qword_1EDBA4E30;
  qword_1EDBA4E30 = v8;

  v10 = os_log_create("com.apple.adplatforms", "AttributionLegacy");
  v11 = qword_1EDBA4E38;
  qword_1EDBA4E38 = v10;

  v12 = os_log_create("com.apple.adplatforms", "AudienceEstimation");
  v13 = qword_1EDBA4E40;
  qword_1EDBA4E40 = v12;

  v14 = os_log_create("com.apple.adplatforms", "ClientInformation");
  v15 = qword_1EDBA4E48;
  qword_1EDBA4E48 = v14;

  v16 = os_log_create("com.apple.adplatforms", "ConfigurationSystem");
  v17 = qword_1EDBA4E50;
  qword_1EDBA4E50 = v16;

  v18 = os_log_create("com.apple.adplatforms", "ContentCache");
  v19 = qword_1EDBA4E58;
  qword_1EDBA4E58 = v18;

  v20 = os_log_create("com.apple.adplatforms", "ConversionMonitoring");
  v21 = qword_1EDBA4E60;
  qword_1EDBA4E60 = v20;

  v22 = os_log_create("com.apple.adplatforms", "Database");
  v23 = qword_1EDBA4E68;
  qword_1EDBA4E68 = v22;

  v24 = os_log_create("com.apple.adplatforms", "DeviceInformation");
  v25 = qword_1EDBA4E70;
  qword_1EDBA4E70 = v24;

  v26 = os_log_create("com.apple.adplatforms", "ECObservability");
  v27 = qword_1EDBA4E78;
  qword_1EDBA4E78 = v26;

  v28 = os_log_create("com.apple.adplatforms", "EncryptedFileSystem");
  v29 = qword_1EDBA4E80;
  qword_1EDBA4E80 = v28;

  v30 = os_log_create("com.apple.adplatforms", "EventStorage");
  v31 = qword_1EDBA4E88;
  qword_1EDBA4E88 = v30;

  v32 = os_log_create("com.apple.adplatforms", "FatalError");
  v33 = qword_1EDBA4E90;
  qword_1EDBA4E90 = v32;

  v34 = os_log_create("com.apple.adplatforms", "APFoundation");
  v35 = qword_1EDBA4E98;
  qword_1EDBA4E98 = v34;

  v36 = os_log_create("com.apple.adplatforms", "IdAccounts");
  v37 = qword_1EDBA4EA0;
  qword_1EDBA4EA0 = v36;

  v38 = os_log_create("com.apple.adplatforms", "IdentifierManager");
  v39 = qword_1EDBA4EA8;
  qword_1EDBA4EA8 = v38;

  v40 = os_log_create("com.apple.adplatforms", "InMemoryTTLCache");
  v41 = qword_1EDBA4EB0;
  qword_1EDBA4EB0 = v40;

  v42 = os_log_create("com.apple.adplatforms", "JavaScriptBridge");
  v43 = qword_1EDBA4EB8;
  qword_1EDBA4EB8 = v42;

  v44 = os_log_create("com.apple.adplatforms", "JetEngine");
  v45 = qword_1EDBA4EC0;
  qword_1EDBA4EC0 = v44;

  v46 = os_log_create("com.apple.adplatforms", "KeychainServices");
  v47 = qword_1EDBA4EC8;
  qword_1EDBA4EC8 = v46;

  v48 = os_log_create("com.apple.adplatforms", "LegacyInterface");
  v49 = qword_1EDBA4ED0;
  qword_1EDBA4ED0 = v48;

  v50 = os_log_create("com.apple.adplatforms", "LegacyInterfaceRetryManager");
  v51 = qword_1EDBA4ED8;
  qword_1EDBA4ED8 = v50;

  v52 = os_log_create("com.apple.adplatforms", "EventsListener");
  v53 = qword_1EDBA4EE0;
  qword_1EDBA4EE0 = v52;

  v54 = os_log_create("com.apple.adplatforms", "Location");
  v55 = qword_1EDBA4EE8;
  qword_1EDBA4EE8 = v54;

  v56 = os_log_create("com.apple.adplatforms", "Logging");
  v57 = qword_1EDBA4EF0;
  qword_1EDBA4EF0 = v56;

  v58 = os_log_create("com.apple.adplatforms", "MasterSingleton");
  v59 = qword_1EDBA4EF8;
  qword_1EDBA4EF8 = v58;

  v60 = os_log_create("com.apple.adplatforms", "MediaService");
  v61 = qword_1EDBA4F00;
  qword_1EDBA4F00 = v60;

  v62 = os_log_create("com.apple.adplatforms", "MescalSigning");
  v63 = qword_1EDBA4F08;
  qword_1EDBA4F08 = v62;

  v64 = os_log_create("com.apple.adplatforms", "Metrics");
  v65 = qword_1EDBA4F10;
  qword_1EDBA4F10 = v64;

  v66 = os_log_create("com.apple.adplatforms", "Networking");
  v67 = qword_1EDBA4F18;
  qword_1EDBA4F18 = v66;

  v68 = os_log_create("com.apple.adplatforms", "ODML");
  v69 = qword_1EDBA4F20;
  qword_1EDBA4F20 = v68;

  v70 = os_log_create("com.apple.adplatforms", "OnDeviceAttribution");
  v71 = qword_1EDBA4F28;
  qword_1EDBA4F28 = v70;

  v72 = os_log_create("com.apple.adplatforms.perf", "OnDeviceConversion");
  v73 = qword_1EDBA4F30;
  qword_1EDBA4F30 = v72;

  v74 = os_log_create("com.apple.adplatforms", "PersistentCache");
  v75 = qword_1EDBA4F38;
  qword_1EDBA4F38 = v74;

  v76 = os_log_create("com.apple.adplatforms", "PersistentCacheGC");
  v77 = qword_1EDBA4F40;
  qword_1EDBA4F40 = v76;

  v78 = os_log_create("com.apple.adplatforms", "PromotedContent");
  v79 = qword_1EDBA4F48;
  qword_1EDBA4F48 = v78;

  v80 = os_log_create("com.apple.adplatforms", "PromotedContentLegacy");
  v81 = qword_1EDBA4F50;
  qword_1EDBA4F50 = v80;

  v82 = os_log_create("com.apple.adplatforms", "PromotedContentSupport");
  v83 = qword_1EDBA4F58;
  qword_1EDBA4F58 = v82;

  v84 = os_log_create("com.apple.adplatforms", "PromotedContentUI");
  v85 = qword_1EDBA4F60;
  qword_1EDBA4F60 = v84;

  v86 = os_log_create("com.apple.adplatforms", "Proxy");
  v87 = qword_1EDBA4F68;
  qword_1EDBA4F68 = v86;

  v88 = os_log_create("com.apple.adplatforms", "Reports");
  v89 = qword_1EDBA4F70;
  qword_1EDBA4F70 = v88;

  v90 = os_log_create("com.apple.adplatforms", "RunLoop");
  v91 = qword_1EDBA4F78;
  qword_1EDBA4F78 = v90;

  v92 = os_log_create("com.apple.adplatforms", "Settings");
  v93 = qword_1EDBA4F80;
  qword_1EDBA4F80 = v92;

  v94 = os_log_create("com.apple.adplatforms", "Signing");
  v95 = qword_1EDBA4F88;
  qword_1EDBA4F88 = v94;

  v96 = os_log_create("com.apple.adplatforms", "SponsoredSearch");
  v97 = qword_1EDBA4F90;
  qword_1EDBA4F90 = v96;

  v98 = os_log_create("com.apple.adplatforms", "StatusConditions");
  v99 = qword_1EDBA4F98;
  qword_1EDBA4F98 = v98;

  v100 = os_log_create("com.apple.adplatforms", "StorageManager");
  v101 = qword_1EDBA4FA0;
  qword_1EDBA4FA0 = v100;

  v102 = os_log_create("com.apple.adplatforms", "TargetingExpressions");
  v103 = qword_1EDBA4FA8;
  qword_1EDBA4FA8 = v102;

  v104 = os_log_create("com.apple.adplatforms", "TaskScheduler");
  v105 = qword_1EDBA4FB0;
  qword_1EDBA4FB0 = v104;

  v106 = os_log_create("com.apple.adplatforms", "Telephony");
  v107 = qword_1EDBA4FB8;
  qword_1EDBA4FB8 = v106;

  v108 = os_log_create("com.apple.adplatforms", "TimeSpentReports");
  v109 = qword_1EDBA4FC0;
  qword_1EDBA4FC0 = v108;

  v110 = os_log_create("com.apple.adplatforms", "UnitTesting");
  v111 = qword_1EDBA4FC8;
  qword_1EDBA4FC8 = v110;

  v112 = os_log_create("com.apple.adplatforms", "XPCSupport");
  v113 = qword_1EDBA4FD0;
  qword_1EDBA4FD0 = v112;
}

void sub_1BADC3B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1BADC3BC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EDBA4BF8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);

  return MEMORY[0x1EEE66BB8]();
}

id APLogForCategory(unint64_t a1)
{
  if (a1 >= 0x3A)
  {
    sub_1BAF8DDE8();
  }

  if (qword_1EDBA4E00 != -1)
  {
    sub_1BADC3670();
  }

  v2 = qword_1EDBA4E08[a1];

  return v2;
}

id sub_1BADC4088()
{
  objc_opt_self();
  if (qword_1EDBA41C0 != -1)
  {
    sub_1BAF8DDAC();
  }

  v0 = qword_1EDBA41C8;

  return v0;
}

id sub_1BADC412C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_componentsSeparatedByString_(a1, a2, @".", a4);
  v8 = objc_msgSend_lastObject(v4, v5, v6, v7);

  return v8;
}

void sub_1BADC4258()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1BADC1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Initializing performance log categories.", v24, 2u);
  }

  v0 = os_log_create("com.apple.adplatforms.perf", "Attribution");
  v1 = qword_1EDBA4C58;
  qword_1EDBA4C58 = v0;

  v2 = os_log_create("com.apple.adplatforms.perf", "MediaService");
  v3 = qword_1EDBA4D28;
  qword_1EDBA4D28 = v2;

  v4 = os_log_create("com.apple.adplatforms.perf", "MescalSigning");
  v5 = qword_1EDBA4D30;
  qword_1EDBA4D30 = v4;

  v6 = os_log_create("com.apple.adplatforms.perf", "Signing");
  v7 = qword_1EDBA4DB0;
  qword_1EDBA4DB0 = v6;

  v8 = os_log_create("com.apple.adplatforms.perf", "Accumulator");
  v9 = qword_1EDBA4C30;
  qword_1EDBA4C30 = v8;

  v10 = os_log_create("com.apple.adplatforms.perf", "APFoundation");
  v11 = qword_1EDBA4C48;
  qword_1EDBA4C48 = v10;

  v12 = os_log_create("com.apple.adplatforms.perf", "JetEngine");
  v13 = qword_1EDBA4CE8;
  qword_1EDBA4CE8 = v12;

  v14 = os_log_create("com.apple.adplatforms.perf", "OnDeviceAttribution");
  v15 = qword_1EDBA4D50;
  qword_1EDBA4D50 = v14;

  v16 = os_log_create("com.apple.adplatforms.perf", "OnDeviceConversion");
  v17 = qword_1EDBA4D58;
  qword_1EDBA4D58 = v16;

  v18 = os_log_create("com.apple.adplatforms.perf", "EventStorage");
  v19 = qword_1EDBA4CB0;
  qword_1EDBA4CB0 = v18;

  v20 = os_log_create("com.apple.adplatforms.perf", "PromotedContentUI");
  v21 = qword_1EDBA4D88;
  qword_1EDBA4D88 = v20;

  v22 = os_log_create("com.apple.adplatforms.perf", "XPCSupport");
  v23 = qword_1EDBA4DF8;
  qword_1EDBA4DF8 = v22;
}

id APPerfLogForCategory(unint64_t a1)
{
  if (a1 >= 0x3A)
  {
    sub_1BAF8DE14();
  }

  if (qword_1EDBA4C28 != -1)
  {
    sub_1BADC4244();
  }

  v2 = qword_1EDBA4C30[a1];

  return v2;
}

uint64_t sub_1BADC47F4()
{
  qword_1EDBA4BD8 = objc_alloc_init(APMetricDaemonDelivery);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BADC4A3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BADC4A84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BADC4AC0()
{
  v0 = sub_1BAF8E938();
  sub_1BADC4B44(v0, qword_1EDBA3A28);
  sub_1BADC4BA8(v0, qword_1EDBA3A28);
  return sub_1BAF8E928();
}

uint64_t *sub_1BADC4B44(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1BADC4BA8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BADC4BE0()
{
  qword_1EDBA4BC0 = objc_alloc_init(APLocationManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t static Logger.eventCollection.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA3A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E938();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3A28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1BADC4F28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_currentPlacemark(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_locationEnabled(*(a1 + 32), v6, v7, v8);

    if (v10)
    {
      obj = objc_alloc_init(APLocationInfo);
      v14 = objc_msgSend_administrativeArea(*(*(a1 + 32) + 24), v11, v12, v13);
      objc_msgSend_setAdministrativeArea_(obj, v15, v14, v16);

      v20 = objc_msgSend_ISOcountryCode(*(*(a1 + 32) + 24), v17, v18, v19);
      objc_msgSend_setIsoCountryCode_(obj, v21, v20, v22);

      v26 = objc_msgSend_locality(*(*(a1 + 32) + 24), v23, v24, v25);
      objc_msgSend_setLocality_(obj, v27, v26, v28);

      v32 = objc_msgSend_postalCode(*(*(a1 + 32) + 24), v29, v30, v31);
      objc_msgSend_setPostalCode_(obj, v33, v32, v34);

      v38 = objc_msgSend_subAdministrativeArea(*(*(a1 + 32) + 24), v35, v36, v37);
      objc_msgSend_setSubAdministrativeArea_(obj, v39, v38, v40);

      if ((objc_msgSend_isEmpty(obj, v41, v42, v43) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      }
    }
  }
}

uint64_t sub_1BADC5190(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v13, v17, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v9 = objc_msgSend_objectForKey_(v1, v4, *(*(&v13 + 1) + 8 * i), v5, v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

          v10 = 1;
          goto LABEL_16;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v13, v17, 16);
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1BADC5534(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v11, v15, 16);
  if (v3)
  {
    v7 = v3;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_connectionInvalidated(*(*(&v11 + 1) + 8 * v9++), v4, v5, v6, v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BADC5734(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_cStringUsingEncoding_(@"com.apple.ap.AdPlatformsCommon", a2, 30, a4);
  result = os_variant_has_internal_content();
  byte_1EDBA4C20 = result;
  return result;
}

void sub_1BADC57F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_connectionInvalidated(WeakRetained, v1, v2, v3);
}

uint64_t sub_1BADC5858(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1BAF8F0D8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Guarantee.init()()
{
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1, *(*v0 + 80));
  v1 = *(*v0 + 96);
  swift_getFunctionTypeMetadata1();
  *(v0 + v1) = sub_1BAF8EED8();
  v2 = *(*v0 + 104);
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v0 + v2) = v3;
  return v0;
}

void sub_1BADC5A24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1BADC5A70()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1BAF8EC28();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EDBA4048 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BADC5AE8()
{
  if (qword_1EDBA28D8 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3B98;
}

uint64_t sub_1BADC5B38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t StoredCohortCandidateSource.init(store:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1BADC5B38(a1, v2 + 16);
  sub_1BADC5B38(a2, v2 + 56);
  return v2;
}

uint64_t JSONKeyValueSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BADC5BE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1BADC5C2C(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36AB8, &qword_1BAF966E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String_optional __swiftcall UserDefaultsKeyValueStore.stringFor(key:)(Swift::String key)
{
  v2 = *(v1 + 16);
  v3 = sub_1BAF8EC28();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1BAF8F168();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v5 = swift_dynamicCast();
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    sub_1BADC5C2C(v14);
    v7 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

Swift::Double_optional __swiftcall UserDefaultsKeyValueStore.doubleFor(key:)(Swift::String key)
{
  v2 = *(v1 + 16);
  v3 = sub_1BAF8EC28();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1BAF8F168();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_1BADC5C2C(v10);
    v6 = 0;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

void Guarantee.fulfill(_:)(uint64_t a1)
{
  v20 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = sub_1BAF8F0D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = *(v1 + *(v2 + 104));
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v11, v1 + v13, v4);
  v14 = *(v3 - 8);
  LODWORD(v2) = (*(v14 + 48))(v11, 1, v3);
  (*(v5 + 8))(v11, v4);
  if (v2 == 1)
  {
    v15 = v20;
    (*(v14 + 16))(v9, v20, v3);
    (*(v14 + 56))(v9, 0, 1, v3);
    swift_beginAccess();
    (*(v5 + 40))(v1 + v13, v9, v4);
    swift_endAccess();
    v16 = *(*v1 + 96);
    swift_beginAccess();
    v17 = *(v1 + v16);
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();

    sub_1BAF8EF18();
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    v21 = v17;
    MEMORY[0x1EEE9AC00](v18);
    *(&v19 - 2) = v3;
    *(&v19 - 1) = v15;
    swift_getWitnessTable();
    sub_1BAF8EE88();
  }

  else
  {
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1BADC6688(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v37 = 138477827;
    v38 = objc_opt_class();
    v4 = v38;
    _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_INFO, "[%{private}@] Initializing the Location Manager", &v37, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695FBE8]);
  objc_msgSend_setClLocationManager_(*(a1 + 32), v6, v5, v7);

  v8 = *(a1 + 32);
  v12 = objc_msgSend_clLocationManager(v8, v9, v10, v11);
  objc_msgSend_setDelegate_(v12, v13, v8, v14);

  v15 = *MEMORY[0x1E6985C90];
  v19 = objc_msgSend_clLocationManager(*(a1 + 32), v16, v17, v18);
  objc_msgSend_setDesiredAccuracy_(v19, v20, v21, v22, v15);

  v26 = objc_msgSend_clLocationManager(*(a1 + 32), v23, v24, v25);
  objc_msgSend_setDistanceFilter_(v26, v27, v28, v29, v15);

  objc_msgSend_setIsLocationInitialized_(*(a1 + 32), v30, 1, v31);
  result = objc_msgSend_start(*(a1 + 32), v32, v33, v34);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BADC6860(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_locationEnabled(*(a1 + 32), a2, a3, a4) & 1) == 0)
  {
    v11 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v47 = 138477827;
      v48 = objc_opt_class();
      v26 = v48;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_DEBUG, "[%{private}@] Location services was turned off prior to start call.", &v47, 0xCu);
    }

    goto LABEL_14;
  }

  if (!objc_msgSend_isLocationInitialized(*(a1 + 32), v5, v6, v7) || (objc_msgSend_isLocationUpdating(*(a1 + 32), v8, v9, v10) & 1) != 0)
  {
    v11 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      v15 = v13;
      if (objc_msgSend_isLocationInitialized(v14, v16, v17, v18))
      {
        v22 = @"NO";
      }

      else
      {
        v22 = @"YES";
      }

      isLocationUpdating = objc_msgSend_isLocationUpdating(*(a1 + 32), v19, v20, v21);
      v47 = 138478339;
      if (isLocationUpdating)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v48 = v13;
      v49 = 2114;
      v50 = v22;
      v51 = 2114;
      v52 = v24;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_INFO, "[%{private}@] LocationManager has not yet initialized (%{public}@) or location is already updating (%{public}@).", &v47, 0x20u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v28 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 32);
    v47 = 138477827;
    v48 = objc_opt_class();
    v30 = v48;
    _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_INFO, "[%{private}@] Starting location updates.", &v47, 0xCu);
  }

  v34 = objc_msgSend_clLocationManager(*(a1 + 32), v31, v32, v33);
  objc_msgSend_startUpdatingLocation(v34, v35, v36, v37);

  v41 = objc_msgSend_clLocationManager(*(a1 + 32), v38, v39, v40);
  objc_msgSend_startMonitoringSignificantLocationChanges(v41, v42, v43, v44);

  objc_msgSend_setIsLocationUpdating_(*(a1 + 32), v45, 1, v46);
LABEL_15:
  v27 = *MEMORY[0x1E69E9840];
}

void sub_1BADC6CC8(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  objc_msgSend__flushCacheStorage(v1, v2, v3, v4);

  objc_destroyWeak(&to);
}

id sub_1BADC72CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_hasPrefix_(a1, a2, @"set", a4))
  {
    v8 = objc_msgSend_length(a1, v5, v6, v7);
    v10 = v8 - 5;
    if (v8 < 5)
    {
      v20 = 0;
    }

    else
    {
      v11 = objc_msgSend_substringWithRange_(a1, v9, 3, 1);
      v15 = objc_msgSend_lowercaseString(v11, v12, v13, v14);

      v17 = objc_msgSend_substringWithRange_(a1, v16, 4, v10);
      v20 = objc_msgSend_stringByAppendingString_(v15, v18, v17, v19);
    }
  }

  else
  {
    v20 = a1;
  }

  return v20;
}

id sub_1BADC7450(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v6 = objc_msgSend_bytes(v2, v3, v4, v5);
  v10 = objc_msgSend_length(a1, v7, v8, v9);
  CC_SHA256(v6, v10, md);
  v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v11, md, 32);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

__CFString *sub_1BADC7504(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v11 = objc_msgSend_bytes(v7, v8, v9, v10);
    v16 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v12, 2 * v6, v13);
    do
    {
      v17 = *v11++;
      objc_msgSend_appendFormat_(v16, v14, @"%02x", v15, v17);
      --v6;
    }

    while (v6);
    v18 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v14, v16, v15);
  }

  else
  {
    v18 = &stru_1F38FD5F0;
  }

  return v18;
}

id sub_1BADC75C8()
{
  if (qword_1EDBA48F0 != -1)
  {
    sub_1BAF8E2B8();
  }

  v1 = qword_1EDBA48F8;

  return v1;
}

id sub_1BADC7CD4(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5 = objc_msgSend_UTF8String(v1, v2, v3, v4);
  v6 = strlen(v5);
  CC_SHA256(v5, v6, md);
  v11 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v7, 64, v8);
  for (i = 0; i != 32; ++i)
  {
    objc_msgSend_appendFormat_(v11, v9, @"%02x", v10, md[i]);
  }

  v13 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v9, v11, v10);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id sub_1BADC7EF4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_description(a1, v2, v3, v4);
  }

  else
  {
    objc_msgSend_lastPathComponent(a1, v2, v3, v4);
  }
  v5 = ;

  return v5;
}

uint64_t sub_1BADC7FE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  if (objc_msgSend_isEqualToString_(v8, v9, @"com.apple.news", v10))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v8, v11, @"com.apple.stocks", v12);
  }

  return isEqualToString;
}

uint64_t sub_1BADC81FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BADC826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v23[2] = a2;
      v23[3] = a1;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1BAF8F2E8();
      v6 = a3 + 32;
      do
      {
        sub_1BADC81FC(v6, v27);
        sub_1BADC81FC(v27, &v24);
        v9 = *(&v25 + 1);
        if (*(&v25 + 1))
        {
          v7 = v26;
          sub_1BADC8524(&v24, *(&v25 + 1));
          (*(v7 + 8))(v9, v7);
          sub_1BADC5BE0(&v24);
        }

        else
        {
          sub_1BADC873C(&v24);
          v24 = 0u;
          v25 = 0u;
          v10 = sub_1BAF8EC28();
          v11 = *(&v25 + 1);
          if (*(&v25 + 1))
          {
            v12 = sub_1BADC8524(&v24, *(&v25 + 1));
            v13 = *(v11 - 8);
            v14 = *(v13 + 64);
            MEMORY[0x1EEE9AC00](v12);
            v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16);
            v17 = sub_1BAF8F4B8();
            (*(v13 + 8))(v16, v11);
            sub_1BADC5BE0(&v24);
          }

          else
          {
            v17 = 0;
          }

          [objc_allocWithZone(APDatabaseColumn) initWithName:v10 forColumnType:1 withValue:v17];

          swift_unknownObjectRelease();
        }

        sub_1BADC873C(v27);
        sub_1BAF8F2C8();
        v8 = *(v28 + 16);
        sub_1BAF8F2F8();
        sub_1BAF8F308();
        sub_1BAF8F2D8();
        v6 += 40;
        --v5;
      }

      while (v5);
      v3 = v23[1];
    }
  }

  v18 = *(v3 + 24);
  v19 = sub_1BAF8EC28();
  sub_1BADC880C();
  v20 = sub_1BAF8EE98();

  v21 = [v18 executeQuery:v19 withParameters:v20];

  return v21;
}

void *sub_1BADC8524(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1BADC8568(uint64_t a1)
{
  v3 = *v1;
  sub_1BADC880C();
  v5[3] = a1;
  v5[0] = v3;
  return sub_1BADC85C4(0, 0xE000000000000000, 2, v5);
}

id sub_1BADC85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1BAF8EC28();

  v7 = a4[3];
  if (v7)
  {
    v8 = sub_1BADC8524(a4, a4[3]);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_1BAF8F4B8();
    (*(v9 + 8))(v12, v7);
    sub_1BADC5BE0(a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 forColumnType:a3 withValue:v13];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1BADC873C(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BADC87A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1BADC880C();
  v8[3] = a1;
  v8[0] = v6;
  return sub_1BADC85C4(0, 0xE000000000000000, a3, v8);
}

unint64_t sub_1BADC880C()
{
  result = qword_1EDBA2088;
  if (!qword_1EDBA2088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA2088);
  }

  return result;
}

uint64_t Date.startOfUTCHour.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v39 - v3;
  v4 = sub_1BAF2DB10(&qword_1EBC36938, &qword_1BAF95CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v39 - v6;
  v7 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v39 - v9;
  v10 = sub_1BAF8E848();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF8E498();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  if (qword_1EDBA3880 != -1)
  {
    v38 = v19;
    swift_once();
    v19 = v38;
  }

  v49 = v19;
  v22 = sub_1BADC4BA8(v10, qword_1EDBA3888);
  swift_beginAccess();
  v23 = *(v11 + 16);
  v23(v14, v22, v10);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v24 = sub_1BAF8E888();
  v25 = sub_1BADC4BA8(v24, qword_1EDBA3868);
  sub_1BAF8E7F8();
  v26 = *(v11 + 8);
  v44 = v11 + 8;
  v45 = v26;
  v43 = v14;
  v26(v14, v10);
  v23(v14, v22, v10);
  v27 = v46;
  v23(v46, v22, v10);
  (*(v11 + 56))(v27, 0, 1, v10);
  v28 = *(v24 - 8);
  v29 = v50;
  (*(v28 + 16))(v50, v25, v24);
  (*(v28 + 56))(v29, 0, 1, v24);
  v42 = sub_1BAF8E468();
  v41 = sub_1BAF8E478();
  sub_1BAF8E448();
  v39 = v21;
  sub_1BAF8E458();
  v30 = v47;
  sub_1BAF8E488();
  v31 = v51;
  v32 = v43;
  sub_1BAF8E828();
  v33 = v49;
  v34 = *(v48 + 8);
  v34(v30, v49);
  v45(v32, v10);
  v35 = sub_1BAF8E728();
  v36 = *(v35 - 8);
  result = (*(v36 + 48))(v31, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34(v39, v33);
    return (*(v36 + 32))(v40, v31, v35);
  }

  return result;
}

uint64_t static Calendar.gregorian.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E848();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3888);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t Date.startOfUTCDay.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v41 - v3;
  v4 = sub_1BAF2DB10(&qword_1EBC36938, &qword_1BAF95CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v41 - v6;
  v7 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v41 - v9;
  v10 = sub_1BAF8E848();
  v51 = *(v10 - 8);
  v11 = v51[8];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAF8E498();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v46 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  if (qword_1EDBA3880 != -1)
  {
    v40 = v18;
    swift_once();
    v18 = v40;
  }

  v48 = v18;
  v21 = sub_1BADC4BA8(v10, qword_1EDBA3888);
  swift_beginAccess();
  v22 = v51[2];
  v22(v13, v21, v10);
  v23 = v10;
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v24 = sub_1BAF8E888();
  v25 = sub_1BADC4BA8(v24, qword_1EDBA3868);
  v42 = v13;
  sub_1BAF8E7F8();
  v26 = v20;
  v27 = v51;
  v28 = v51[1];
  v43 = v51 + 1;
  v44 = v28;
  v28(v13, v23);
  v22(v13, v21, v23);
  v29 = v45;
  v22(v45, v21, v23);
  (v27[7])(v29, 0, 1, v23);
  v30 = *(v24 - 8);
  v31 = v49;
  (*(v30 + 16))(v49, v25, v24);
  (*(v30 + 56))(v31, 0, 1, v24);
  sub_1BAF8E468();
  sub_1BAF8E478();
  v51 = v26;
  sub_1BAF8E448();
  v32 = v46;
  sub_1BAF8E488();
  v33 = v50;
  v34 = v42;
  sub_1BAF8E828();
  v35 = v48;
  v36 = *(v47 + 8);
  v36(v32, v48);
  v44(v34, v23);
  v37 = sub_1BAF8E728();
  v38 = *(v37 - 8);
  result = (*(v38 + 48))(v33, 1, v37);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36(v51, v35);
    return (*(v38 + 32))(v41, v33, v37);
  }

  return result;
}

id sub_1BADC993C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, a4);
  v8 = objc_msgSend_sha1(v4, v5, v6, v7);
  v12 = objc_msgSend_asHexString(v8, v9, v10, v11);

  return v12;
}

id sub_1BADC99A4(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v6 = objc_msgSend_bytes(v2, v3, v4, v5);
  v10 = objc_msgSend_length(a1, v7, v8, v9);
  CC_SHA1(v6, v10, md);
  v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v11, md, 20);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void *sub_1BADC9A8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BADC9AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF8E788();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BADC9B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF8E788();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BADC9BA4()
{
  v1 = type metadata accessor for WorkOrder();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = v1[5];
  v7 = sub_1BAF8E728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = *(v0 + v3 + v1[6] + 8);

  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = v1[9];
  if (!(*(v8 + 48))(v0 + v3 + v12, 1, v7))
  {
    v9(v4 + v12, v7);
  }

  v13 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[11] + 8);

  v15 = *(v4 + v1[12] + 8);

  v16 = *(v4 + v1[13] + 8);

  v17 = *(v4 + v1[14] + 8);

  v18 = *(v0 + v13);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1BADC9D74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADC9DAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BADC9DEC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BADC9E34()
{
  v1 = sub_1BAF8E728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BADC9F3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1BADC9FC8()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1BAF2DABC(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BADCA010()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BADCA048()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BADCA080()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCA0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF8E728();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BADCA124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF8E728();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BADCA1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BAF8E598();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BADCA24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BAF8E598();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BADCA2F0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BADCA328()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCA360()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BADCA398()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCA3F0(void **a1)
{
  off_1EDBA31E0 = *a1;
}

uint64_t sub_1BADCA43C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BADC5BE0((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BADCA50C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  sub_1BADC5BE0((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

void *sub_1BADCA618@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1BADCA65C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BADCA694()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BADCA6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCA710()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BADCA750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BAF8E728();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1BADCA880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BAF8E728();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1BADCA9B0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BADCA9F8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BADCAA30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BADCAA68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCAAA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BADCAAFC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for QueueMessage() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (v6 + *(*v4 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[5];

  v9 = v0 + v6;
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  (*(*(v2 - 8) + 8))(&v9[v4[14]], v2);
  v12 = *&v9[v4[15] + 8];

  v13 = *(v0 + v7 + 16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 24, v5 | 7);
}

uint64_t sub_1BADCAC20()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for QueueMessage() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 88) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[6];

  v9 = v0[8];

  v10 = v0[10];

  v11 = v0 + v6;
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  (*(*(v2 - 8) + 8))(&v11[v4[14]], v2);
  v14 = *&v11[v4[15] + 8];

  v15 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v5 | 7);
}

uint64_t sub_1BADCAD50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BADCADA4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 2138855791 * ((1427813210 - (a1 ^ 0x1DCB1484 | 0x551AB35A) + (a1 ^ 0x1DCB1484 | 0xAAE54CA5)) ^ 0xB89860A0);
  v2 = *(&off_1E7F1D8C0 + v1 - 2236);
  v13 = *(&off_1E7F1D8C0 + v1 - 2203);
  v14 = *(&off_1E7F1D8C0 + (v1 ^ 0x89A));
  v3 = *(&off_1E7F1D8C0 + (v1 ^ 0x8E8)) - 4;
  v4 = *(&off_1E7F1D8C0 + (v1 ^ 0x8F3));
  v7 = *(&off_1E7F1D8C0 + (v1 ^ 0x8E1));
  v8 = *(&off_1E7F1D8C0 + (v1 ^ 0x8EC));
  v5 = *(&off_1E7F1D8C0 + v1 - 2238);
  v6 = *(&off_1E7F1D8C0 + v1 - 2217);
  v11 = *(&off_1E7F1D8C0 + v1 - 2202);
  v12 = *(&off_1E7F1D8C0 + (v1 ^ 0x8C1));
  v9 = *(&off_1E7F1D8C0 + v1 - 2227);
  v10 = *(&off_1E7F1D8C0 + (v1 ^ 0x88D));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BADCAF70@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = (v5 + a1);
  *v7 = a2;
  v7[1] = a2;
  return (*(v6 + 8 * (((v2 + a1 == 512) * v3) ^ v4)))();
}

uint64_t sub_1BADCAFF0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = (v5 + a1);
  *v7 = a2;
  v7[1] = a2;
  return (*(v6 + 8 * (((a1 + v3 == 666) * v4) ^ v2)))();
}

uint64_t sub_1BADCB048@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v2[-1] = a2;
  *v2 = a2;
  return (*(v4 + 8 * (a1 ^ (2 * (v3 != 0)))))();
}

uint64_t sub_1BADCB06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 a35, char a36, char a37, char a38, unsigned __int16 a39, unsigned __int8 a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  a41 = &a35 >> (61 * (v45 ^ 0x4Bu) - 127);
  a40 = &a35;
  a39 = &a35;
  a38 = (v47 + 208) >> 24;
  a37 = &a35 >> 16;
  a36 = &a35 >> 8;
  a35 = &a35;
  STACK[0x2D0] = &a35;
  STACK[0x350] = 0x800000008;
  a45 = a17;
  STACK[0x2D8] = &a45;
  STACK[0x390] = 0x100000002;
  v48 = (*(v46 + 8 * (v45 + 2418)))(0);
  return (*(v46 + 8 * ((1491 * (LODWORD(STACK[0x394]) == 1)) ^ v45)))(v48);
}

uint64_t sub_1BADCB190@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(&a29 + 4 * v29) = a1;
  *(&a29 + LODWORD(STACK[0x390]) + 64) = &a29 + 32 * LODWORD(STACK[0x390]);
  *(&a29 + LODWORD(STACK[0x390]) + 160) = 8;
  LODWORD(STACK[0x390]) = v30 + LODWORD(STACK[0x390]) - 182;
  return (*(v31 + 8 * a2))();
}

uint64_t sub_1BADCB28C@<X0>(int a1@<W0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(&a29 + 8 * a2) = (v30 ^ 0xD7367AD2 ^ a1) + 684295713 + ((2 * a1) & 0xAE6CF3BE);
  *(&a29 + LODWORD(STACK[0x390]) + 64) = &a29 + 32 * LODWORD(STACK[0x390]);
  *(&a29 + LODWORD(STACK[0x390]) + 160) = 4;
  LODWORD(STACK[0x390]) = (v29 ^ 0x3BA) + LODWORD(STACK[0x390]) - 780;
  return (*(v31 + 8 * v29))();
}

uint64_t sub_1BADCB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28)
{
  v35 = (*(v31 + 8 * (v28 + 1963)))(4);
  *a16 = v35;
  *v35 = 1650614882;
  v36 = (*(v31 + 8 * (v28 + 1963)))(4);
  *a15 = v36;
  *v36 = -858993460;
  *v29 = 0;
  v37 = *a16;
  v38 = *a15;
  *a26 = -32;
  *(v30 + 2) = -10;
  *v37 = -10;
  *a25 = 40;
  *a28 = 76;
  v37[2] = -107;
  *a24 = -1;
  *(v30 + 20) = 78;
  *(v30 + 12) = 0;
  *(v38 + 3) = 117;
  *(v30 + 17) = -56;
  *v33 = 62;
  *a27 = 65;
  v37[3] = -40;
  *(v38 + 1) = 27061;
  *a23 = 22;
  *(v30 + 16) = 7;
  *(v30 + 14) = -127;
  *(v30 + 5) = -121;
  *(v30 + 19) = 91;
  *v38 = 37;
  *(v30 + 6) = 84;
  *(v30 + 21) = -121;
  *(v30 + 8) = -77;
  *v34 = 77;
  *v32 = -67;
  *(v30 + 22) = -10;
  *(v30 + 18) = -41;
  *(v30 + 3) = -30896;
  *(v30 + 9) = 23200;
  v37[1] = 63;
  *v30 = -27557;
  *(v30 + 15) = 0x80;
  *(v30 + 7) = 51;
  *(v30 + 11) = 93;
  *(v30 + 13) = -47;
  v39 = ((2 * *v29) & 0x777FB5D6) + (*v29 ^ 0xBBBFDAEB);
  return (*(v31 + 8 * (((LODWORD(STACK[0x390]) == 0) * (((v28 - 477) | 0x80) - 383)) ^ v28)))();
}

uint64_t sub_1BADCB4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned __int8 *a27, unsigned __int8 *a28)
{
  v38 = *a5;
  v56 = *v29;
  v39 = (*(v56 + 1) << 32) - ((*(v56 + 1) << 33) & 0x15600000000) - 0x5DCE00547596D90BLL;
  v40 = (*v30)[3];
  v41 = (**v30 | (*v37 << 24) | (*(v56 + 3) << 16) | (*v32 << 8)) - 2 * ((**v30 | (*v37 << 24) | (*(v56 + 3) << 16) | (*v32 << 8)) & 0x8C25BEB6 ^ (**v30 & 0x10)) - 0x69A83EFD73DA415ALL;
  v42 = ((2 * v40) & 0x58) + (v40 ^ 0x2C) - 2 * ((((2 * v40) & 0x58) + (v40 ^ 0x2C)) & 0xF ^ v40 & 1) + 14;
  v43 = (v42 ^ 0x3E) + (v42 ^ 0x12);
  v44 = ((v39 ^ 0xA231FFAB8A6926F5) - (v41 ^ 0x9657C1028C25BEA6 | v39 ^ 0xA231FFAB8A6926F5)) ^ ((v41 ^ 0x69A83EFD73DA4159) + 1);
  v45 = v44 - ((2 * v44) & 0x2CAF8205184B7D4CLL) - 0x69A83EFD73DA415ALL;
  v46 = *(&off_1E7F1D8C0 + v31 - 693);
  v47 = *(v46 - 12 + ((((2 * v40) & 0x58) + (v40 ^ 0x2C) - 2 * ((((2 * v40) & 0x58) + (v40 ^ 0x2C)) & 0xF ^ v40 & 1) + 14) ^ 0xDDLL) + 11);
  HIDWORD(v48) = v43 ^ ~v47;
  LODWORD(v48) = (v43 ^ 0x24 ^ v47) << 24;
  v49 = __ROR8__(((*v36 | ((v33[12] ^ 0x48) << 8)) & 0xFFFFFFFFFF00FFFFLL | ((v48 >> 25) << 16) | ((*v30)[1] << 24) | ((v33[2] ^ 0x48u) << 32)) ^ ((v33[20] ^ 0x48u) << 40), 29) ^ ((v33[9] ^ 0x48u) << 19) ^ 0x56A9DD20;
  v50 = (v33[1] ^ 0x48) - ((2 * (v33[1] ^ 0x48) + 70) & 0x78) - 33;
  v51 = ((v33[1] ^ 0x48) - ((2 * (v33[1] ^ 0x48) + 70) & 0x78) - 33) ^ 0xEELL;
  v52 = *v33 ^ 0x48;
  v53 = (v33[5] ^ 0x48 | ((v33[18] ^ 0x48) << 16) | ((v33[4] ^ 0x48) << 8) | ((v33[22] ^ 0x48) << 24) | ((v33[6] ^ 0x48u) << 32)) ^ (((v33[8] ^ 0x48u) << 48) | ((v33[17] ^ 0x48u) << 40) | ((v33[13] ^ 0x48u) << 56)) ^ 0xAD7951D05F561569;
  v54 = (v33[21] ^ 0x48 | (v52 << 8) | ((v33[15] ^ 0x48) << 24) | ((v33[3] ^ 0x48) << 16) | ((v33[10] ^ 0x48u) << 32) | ((v33[7] ^ 0x48u) << 40)) ^ ((v33[14] ^ 0x48u) << 48) ^ ((67 * (((v50 ^ 9) - ((2 * v50) & 0xFFFFFF84) - 62) ^ *(v46 + 270 + v51))) << 56) ^ 0xBE3DFE9DF99F5C0ALL;
  HIDWORD(a13) = v28;
  return (*(v34 + 8 * (v31 + 78)))(v51, 1403129717, v52, 184, ((**v29 << ((v31 - 22) & 0x6B ^ 0x53u)) | ((v38 ^ 0xF8u) << 40)) ^ (*a28 ^ 0xF8 | (*a27 << 8) | ((*v29)[2] << 16) | ((*v30)[2] << 24) | (*a8 << 32)) ^ (*a7 << 56) ^ 0xC47E4DFB31D34261, v39, ((*v35 << 56) | ((v33[16] ^ 0x48u) << 48) | ((v33[19] ^ 0x48u) << 40)) ^ 0x833164E60C05F600 ^ ((v45 ^ v41) + (v39 ^ 0xA231FFAB8A6926F5)), 88, v46 + 270, v46 - 12, *v29, *v30, a13, v33, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1BADCB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30, uint64_t a31, int a32, unsigned int a33, uint64_t a34, uint64_t a35, int a36)
{
  v39 = a36 + 913237505 < a30;
  if (a33 > 0x6290FFDB != (a36 + 913237505) < 0x9D6F0024)
  {
    v39 = a33 > 0x6290FFDB;
  }

  return (*(v38 + 8 * ((v37 - 481) ^ (v39 * v36))))();
}

uint64_t sub_1BADCD644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = v31 + 962 + a5 - 1728062281;
  v34 = (v30 + *(a29 + 4 * v33) + 2341);
  return (*(v32 + 8 * v31))(a1, a2, *(a30 + 8 * v33), a3, a4, 4147116633);
}

uint64_t sub_1BADCD68C(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v11 = v5 > v8;
  if (v11 == v7 < ((v6 - 1403128696) & a2) + v4)
  {
    v11 = v7 < v10;
  }

  return (*(v9 + 8 * ((v11 * a4) ^ v6)))(v7 < v10);
}

uint64_t sub_1BADCD724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a5 ^ v9 ^ 0xFFAF265FBDD24980;
  v13 = a7 ^ 0xAA9760A497544816 ^ v7;
  v14 = (v12 ^ 0x910D78ADB4A42102) & (a7 ^ 0x704FC5121C020A1ELL);
  v15 = v12 ^ (v13 ^ 0xFBE08EBA01FFA6B2) & (a7 ^ 0x8FB03AEDE3FDF5E1);
  v16 = v14 ^ v8 ^ 0xFB3C567A4618FBA3 ^ v9 ^ 0xFFAF265FBDD24980;
  v17 = v15 ^ 0xEC529FAFF372FFD0;
  v18 = (2 * (v16 & 0x400000)) ^ 0x800000 | v16 & 0x400000;
  v19 = v18 + 0x28F6BBC657FEB88BLL;
  v20 = v15 ^ 0x6EF287524B5BDEFDLL;
  v21 = (((v13 ^ 0x41F7145FE00594DLL) & (v8 ^ 0x741DDA5C2D9DBF96)) - ((2 * ((v13 ^ 0x41F7145FE00594DLL) & (v8 ^ 0x741DDA5C2D9DBF96))) & 0xB5B14B6D16AC8410) - 0x25275A4974A9BDF8) ^ a7 ^ 0xAA9760A497544816 ^ v15;
  if (((v18 - 0x400000) & v20) != 0)
  {
    v19 = 0x28F6BBC6587EB88BLL - v18;
  }

  v22 = (v17 - 0x28F6BBC6583EB88BLL + v19) ^ v16 & 0xFFFFFFFFFFBFFFFFLL;
  *(&v23 + 1) = v22 ^ 0x366B8;
  *&v23 = v22 ^ 0xF6B3085730980000;
  v24 = v22 ^ __ROR8__(v22, 28) ^ 0x3B7B2E236A78A1AALL;
  v25 = v24 ^ (v23 >> 19);
  *(&v23 + 1) = v21 ^ 0x99B3878C16;
  *&v23 = v21 ^ 0x221AFF0000000000;
  v26 = v23 >> 40;
  *(&v23 + 1) = v26 ^ 0x90160E;
  *&v23 = v26 ^ (v21 >> 37) ^ 0xC39277AF9D000000;
  return (*(v11 + 8 * v10))(v24, a2, a3, a4, v25, a6, (v21 << 25) ^ (8 * v21) ^ (v21 >> 39) ^ 0x309799F02E0A0CD3 ^ (v23 >> 24));
}

uint64_t sub_1BADCDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, _BYTE *a12, uint64_t a13, _BYTE *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, uint64_t a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28)
{
  v32 = ((a5 << (v31 - 2)) & 0x46 ^ 0x42) + (a5 ^ 0x31D34242);
  LOBYTE(v32) = *(a9 + ((v32 - ((2 * v32) & 0x12) - 119) ^ 0xDBLL)) ^ (v32 - ((2 * v32) & 0x12) - 119) ^ 0xFE;
  *a28 = 67 * v32 - ((-122 * v32) & 0xF0) - 8;
  *a11 = BYTE6(a5) ^ 0x7E;
  *a26 = HIBYTE(a5) ^ 0xC4;
  *a27 = BYTE1(a5) ^ 0x42;
  a11[2] = BYTE2(a5) ^ 0xD3;
  *a24 = BYTE4(a5) ^ 0xFB;
  a12[2] = BYTE3(a5) ^ 0x31;
  *a25 = (BYTE5(a5) ^ 0x4D) - ((2 * (BYTE5(a5) ^ 0x4D)) & 0xF0) - 8;
  v33 = *(a10 + (((32 * (a6 & 7)) | (a6 >> 3)) ^ 0x27) + 554);
  a14[19] = (BYTE5(a6) ^ 0x68) - 2 * ((BYTE5(a6) ^ 0x68) & 0x4A ^ BYTE5(a6) & 2) + 72;
  *a20 = BYTE3(a6) ^ 0xB9;
  *a23 = BYTE1(a6) ^ 0xA2;
  *a12 = (v33 - 39) ^ 0x85;
  *a19 = HIBYTE(a6) ^ 0x4D;
  a14[20] = (BYTE5(v28) ^ 0x75) - ((2 * (BYTE5(v28) ^ 0x75)) & 0x90) + 72;
  a14[2] = (BYTE4(v28) ^ 0xAC) + (~(2 * (BYTE4(v28) ^ 0xAC)) | 0x6F) + 73;
  a11[3] = BYTE2(a6) ^ 0x8A;
  a14[16] = (BYTE6(a6) ^ 0xD0) - 2 * ((BYTE6(a6) ^ 0xD0) & 0x4D ^ BYTE6(a6) & 5) + 72;
  a14[11] = (HIBYTE(v28) ^ 0x59) + ~(2 * ((HIBYTE(v28) ^ 0x59) & 0xCC ^ HIBYTE(v28) & 4)) + 73;
  a12[1] = BYTE3(v28) ^ 0xCA;
  a14[12] = (BYTE1(v28) ^ 0x90) - ((2 * BYTE1(v28)) & 0x90) + 72;
  a14[22] = (BYTE3(a3) ^ 0xF7) - ((2 * (BYTE3(a3) ^ 0xF7)) & 0x90) + 72;
  a11[1] = BYTE4(a6) ^ 0x4D;
  *a21 = v28 ^ 0x9A;
  a14[18] = (BYTE2(a3) ^ 0xA5) - ((2 * BYTE2(a3)) & 0x90) + 72;
  a14[4] = (BYTE1(a3) ^ 0xEB) - ((2 * (BYTE1(a3) ^ 0xEB)) & 0x90) + 72;
  a14[9] = (BYTE6(v28) ^ 0xA9) - ((2 * (BYTE6(v28) ^ 0xA9)) & 0x90) + 72;
  a14[13] = (HIBYTE(a3) ^ 0x55) - ((2 * (HIBYTE(a3) ^ 0x55)) & 0x90) + 72;
  a14[8] = (BYTE6(a3) ^ 0xBC) - ((2 * (BYTE6(a3) ^ 0xBC)) & 0x90) + 72;
  a14[17] = (BYTE5(a3) ^ 0xE1) - ((2 * (BYTE5(a3) ^ 0xE1)) & 0x90) + 72;
  a14[5] = (a3 & 0xE6 ^ 0xA6 | a3 ^ 0xAF) - ((2 * (a3 & 0xE6 ^ 0xA6 | a3 ^ 0xAF)) & 0x90) + 72;
  a14[3] = (BYTE2(v30) ^ 0xEB) - ((2 * (BYTE2(v30) ^ 0xEB)) & 0x90) + 72;
  *a14 = (BYTE1(v30) ^ 0xD2) - ((2 * (BYTE1(v30) ^ 0xD2)) & 0x90) + 72;
  a14[6] = (BYTE4(a3) ^ 0xC6) - ((2 * (BYTE4(a3) ^ 0xC6)) & 0x90) + 72;
  a14[1] = (HIBYTE(v30) ^ 0x2F) - ((2 * (HIBYTE(v30) ^ 0x2F)) & 0x90) + 72;
  a12[3] = BYTE2(v28) ^ 0xF7;
  a14[21] = v30 ^ 0x2F;
  a14[7] = (BYTE5(v30) ^ 0x13) - ((2 * BYTE5(v30)) & 0x90) + 72;
  a14[14] = (BYTE6(v30) ^ 0x96) - ((2 * BYTE6(v30)) & 0x90) + 72;
  a14[10] = (BYTE4(v30) ^ 0xB8) - 2 * ((BYTE4(v30) ^ 0xB8) & 0x4A ^ BYTE4(v30) & 2) + 72;
  a14[15] = (BYTE3(v30) ^ 0xF2) - ((2 * (BYTE3(v30) ^ 0xF2)) & 0x90) + 72;
  return (*(v29 + 8 * v31))();
}

uint64_t sub_1BADCE124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17)
{
  *v19 = (v18 ^ 0x444024A6) + v17;
  *a17 = 1;
  return (*(v20 + 8 * v18))();
}

uint64_t sub_1BADCE15C@<X0>(unsigned __int8 *a1@<X4>, unsigned __int8 *a2@<X6>, unsigned __int8 *a3@<X7>, int a4@<W8>)
{
  v13 = *v6;
  v14 = *v5;
  v15 = ((*v6)[2] << 24) | (*v308 << 8) | (v14[2] << 16) | ((*v309 ^ 0xF8) + (~(2 * (*v309 ^ 0xF8)) | 0x3D) + 98);
  v16 = *a2;
  v17 = *v10;
  v18 = (v15 ^ 0x61) - ((2 * (v15 ^ 0x61)) & 0x37DB0EE64DCFC958) - 0x6412788CD9181B54;
  v19 = ((*a3 << 32) - ((*a3 << 33) & 0xEC00000000) + 0x5E181476E6EFDB17) ^ 0x5E181476E6EFDB17;
  v20 = (v19 - (v18 ^ 0x9BED877326E7E4ACLL | v19)) ^ ((v18 ^ 0x6412788CD9181B53) + 1);
  v21 = v20 - ((2 * v20) & 0x37DB0EE64DCFC958) - 0x6412788CD9181B54;
  v22 = v8[16];
  *(&v24 + 1) = ((v21 ^ v18) + v19) ^ ((*a1 ^ 0xF8u) << 40);
  *&v24 = ((*v14 << 48) - ((*v14 << 49) & 0xA2000000000000) - 0x73AEE7E6C1B2AA79) ^ 0x8C51000000000000 ^ *(&v24 + 1);
  v23 = v24 >> 46;
  v25 = ((v22 ^ 0x48) << 48) - (((v22 ^ 0x48) << 49) & 0x1111111111111111) + 0x528833A2039F378BLL;
  v26 = v25 & 0x40000000000000;
  v27 = v25 & 0x40000000000000 | 0x5505DBE2F72D59D9;
  v28 = (v14[1] << 32) | (*v7 << 8) | *v13 | (*v11 << 24) | (v14[3] << 16) | ((v8[19] ^ 0x48u) << 40);
  *(&v24 + 1) = v23 ^ (v16 << 10) ^ 0x23FF5;
  *&v24 = v23 ^ 0x797EAAF5F5300000;
  v29 = v24 >> 18;
  v30 = v25 & 0xBF000000000000;
  if ((v26 & v28) != 0)
  {
    v31 = 0xAA0BB7C5EE5AB3B2 - v27;
  }

  else
  {
    v31 = v27;
  }

  v32 = (v28 - 0x5505DBE2F72D59D9 + v31) ^ (v30 | (*v9 << 56));
  v33 = (v8[18] ^ 0x48) << 16;
  v311 = ((2 * a4) & 0xFDFCF9F6) + (a4 ^ 0xFEFE7CFB) + 16876293;
  v34 = v32 & 0xF06092DA9D7AA52ELL ^ (v311 - ((2 * v311) & 0x18CB8E08CLL) + 0x46444C8CC65C7046) & 0x9D7AA52ELL | v32 & 0xF9F6D2562855AD1 ^ (v311 - ((2 * v311) & 0x18CB8E08CLL) + 0x46444C8CC65C7046) & 0x62855AD1;
  v35 = (v34 ^ 0x880000C65C7046) - 2 * ((v34 ^ 0x880000C65C7046) & 0x20297DEA39EF54FFLL ^ v34 & 0x38) - 0x5FD68215C610AB39;
  v36 = ((2 * v35) & 0x8B2240285A62FBB4 ^ 0xFFFDBFFFADBD567BLL) + (v35 ^ 0xA0297DEA39EF54C7);
  v37 = v36 - ((2 * v36 - 0x74DDBFD7A59D044ALL) & 0x8C27DDBF90EE0064) + 0xBA50EF3F5A87E0DLL;
  v38 = (((v8[14] ^ 0x48) << (v22 & 0x30) << (v22 & 0x30 ^ 0x30)) | ((v8[7] ^ 0x48u) << 40)) ^ (v8[21] ^ 0x48 | ((v8[3] ^ 0x48) << 16) | ((*v8 ^ 0x48) << 8) | ((v8[15] ^ 0x48) << 24) | ((v8[10] ^ 0x48u) << 32));
  v39 = v38 ^ ((v8[1] ^ 0x48u) << 56);
  v40 = v39 ^ v29;
  v41 = ((v8[14] ^ 0x48) << (v22 & 0x30) << (v22 & 0x30 ^ 0x30)) ^ (v8[21] ^ 0x48 | ((v8[3] ^ 0x48) << 16) | ((*v8 ^ 0x48) << 8) | ((v8[15] ^ 0x48) << 24)) ^ v33;
  v42 = ((v38 ^ v33) & 0x40000 ^ 0x7F7BD69FFD9DAF5FLL) + 2 * ((v38 ^ v33) & 0x40000);
  v43 = (v39 ^ v29 ^ 0xF8545DB2E1D68F6CLL) & (v37 ^ 0xECAC6D3FFD37E1BDLL) ^ (v39 ^ v29) & 0xAABF83E03540E18FLL;
  LODWORD(v38) = (v17 >> 2) - ((v17 >> 1) & 0x28);
  v44 = -121 - ((((v38 + 84) ^ 0x54 | (v17 << 6)) + ~(2 * (((v38 + 84) ^ 0x54) & 0x2F ^ (v38 + 84) & 2)) - 82) ^ 0xAD);
  v45 = (((v38 + 84) ^ 0x54 | (v17 << 6)) + ~(2 * (((v38 + 84) ^ 0x54) & 0x2F ^ (v38 + 84) & 2)) - 82) ^ 0xE2;
  v46 = *(&off_1E7F1D8C0 + (v4 ^ 0x8D8));
  v47 = v46 + 534;
  v48 = v46 - 5;
  v49 = *(v46 - 5 + (((~(70 * (v8[9] ^ 0x48)) | 0x8D) + 35 * (v8[9] ^ 0x48) - 70) ^ 0x61));
  v50 = v49 & 0xFFFFFF8C;
  LODWORD(v32) = v49 - 116 - 2 * v50 - 2 * ((v49 - 116 - 2 * v50) ^ (v49 - 116) & 4);
  v51 = (v13[3] << ((-85 - v38) & 0x10) << ((-85 - v38) & 0x10 ^ 0x10)) ^ v44 ^ (*(v46 + 534 + v45) | ((v8[12] ^ 0x48) << 8));
  LODWORD(v45) = v50 ^ 0x7B ^ (v32 + 123);
  LODWORD(v38) = v45 + v50 + 2 * (((v32 + 123) ^ 8) & v50);
  LODWORD(v38) = v38 + ~(2 * (v38 & 0x1F ^ v45 & 3));
  v52 = v8[22] ^ 0xDBLL;
  v53 = ((v8[20] ^ 0x48u) << 40) | ((v8[2] ^ 0x48u) << 32);
  v54 = *(v46 - 5 + ((35 * (v8[17] ^ 0x48)) ^ 0xD8));
  LODWORD(v38) = v38 - 99;
  v55 = v8;
  v56 = (v38 >> 1) & 0x3A;
  v57 = v56 ^ v38;
  HIDWORD(v58) = v56 ^ ~v38;
  LODWORD(v58) = (v56 ^ v38 ^ 4) << 24;
  LOBYTE(v38) = v58 >> 26;
  v59 = v54 - ((2 * v54) & 4) + 14;
  v60 = (v59 >> 1) & 0x3A;
  v310 = v46 + 263;
  LODWORD(v52) = *(v46 + 263 + v52);
  v61 = ((v60 - (v60 ^ 0xFFFFFF91)) ^ 0xFFFFFFFE) + v60 - ((2 * (((v60 - (v60 ^ 0xFFFFFF91)) ^ 0xFFFFFFFE) + v60)) & 0xFFFFFFCF);
  HIDWORD(v58) = ~v52;
  LODWORD(v58) = (v52 ^ 0x66666666) << 24;
  v62 = v58 >> 25;
  v63 = v33 | ((v55[4] ^ 0x48) << 8);
  v64 = v53 | (v38 << 48);
  if (((v43 ^ 0xA81401A021400000) & (v42 - 0x7F7BD69FFD9DAF5FLL)) != 0)
  {
    v65 = 0xF0C49D27BB2257BCLL - v42;
  }

  else
  {
    v65 = v42 - 0xE33101840190702;
  }

  v66 = v61 - 25;
  v67 = 3 * ((((v61 - 25) ^ v59) << 6) ^ 0x40) - 25;
  v68 = (~v67 & 0xC0) == 0;
  v69 = (v67 ^ 0xE7 | ((((v61 - 25) ^ v59) & 0xFC) >> 2)) ^ 0x19;
  v70 = v55[6];
  v71 = (v64 | ((v55[11] ^ 0x48u) << 56)) ^ (v51 | (v13[1] << 24));
  v72 = ((v70 ^ 0x48u) << 32) | (v69 << 40) | (v55[5] ^ 0x48) & 0xFFFFFFFF00FFFFFFLL | (v62 << 24) | v63 | ((v55[13] ^ 0x48u) << 56) | ((v55[8] ^ 0x48u) << 48);
  v73 = (v71 - 2 * (v71 & 0x4613EEDFC8770037 ^ v51 & 5) + 0x4613EEDFC8770032) ^ v37;
  v74 = v40 ^ 0x9EB69D04C27F6302 ^ (((v73 ^ 0xC03FD86D138A73CFLL) & (v37 ^ 0xB9EC11203788FFCDLL)) - ((2 * ((v73 ^ 0xC03FD86D138A73CFLL) & (v37 ^ 0xB9EC11203788FFCDLL))) & 0x4F5A4859C6F26ECALL) - 0x5852DBD31C86C89BLL);
  v75 = ((2 * v73) ^ 0x7F804F25D8EB1861) + (v73 ^ 0xC03FD86D138A73CFLL) - ((2 * (((2 * v73) ^ 0x7F804F25D8EB1861) + (v73 ^ 0xC03FD86D138A73CFLL))) & 0xC87446C481ADFD6CLL) - 0x1BC5DC9DBF29014ALL;
  v76 = v72 ^ 0xBFE34788D9657353;
  if (!v68)
  {
    v75 ^= v72 ^ 0xBFE34788D9657353;
  }

  v77 = (((v75 ^ 0xE43A236240D6FEB6) & (v72 ^ 0x401CB877269A8CACLL)) - ((2 * ((v75 ^ 0xE43A236240D6FEB6) & (v72 ^ 0x401CB877269A8CACLL))) & 0x8C27DDBF90EE0064) + 0x4613EEDFC8770032) ^ v37;
  v78 = v77 - ((2 * v77) & 0x7D6036CA7E5E49E8) + 0x3EB01B653F2F24F4;
  v79 = v78 ^ ~v74;
  v80 = v78 ^ v74;
  v81 = (2 * (((v78 ^ v74) >> 1) & 0x1000000000000)) ^ 0x2000000000000 | ((v78 ^ v74) >> 1) & 0x1000000000000;
  *(&v82 + 1) = (((v79 >> 60) & 0xC) - (v79 >> 61) + 1) ^ v78 ^ v74;
  *&v82 = v78 ^ v74 ^ 0xE58EBD2F588E0630;
  v83 = (v82 >> 4) - ((2 * (v82 >> 4)) & 0x949FACF2468466F4) - 0x35B02986DCBDCC86;
  v84 = v72 ^ v39;
  v85 = ((v43 ^ 0xA81401A02140810CLL) - 0x7148C687BD84A85DLL + v65) ^ (*&v41 | 0xFFFFFFFFFFFBFFFFLL) ^ v84;
  v86 = ((v84 ^ 0x57764969FB1C1608) & (v40 ^ 0x7ABA24D1E297093)) - ((2 * ((v84 ^ 0x57764969FB1C1608) & (v40 ^ 0x7ABA24D1E297093))) & 0xABD001B5C460E84ELL);
  v87 = v84 ^ 0xA889B69604E3E9F7;
  v88 = v85 ^ v74;
  *(&v82 + 1) = v85 ^ v74 ^ 0xDF33BCCCD03;
  *&v82 = v85 ^ v74 ^ 0xA214000000000000;
  v89 = (v82 >> 45) - ((2 * (v82 >> 45)) & 0x4B64CBD41CE57C1ALL);
  *(&v82 + 1) = v88 ^ 0x54F44;
  *&v82 = v88 ^ 0xA2141B1B85880000;
  v90 = v89 + 0x25B265EA0E72BE0DLL;
  v91 = v87 & v76 ^ v73;
  v92 = v88 ^ 0x78283C9B23E80887 ^ ((v88 ^ 0x78283C9B23E80887) >> 28) ^ (v82 >> 19);
  *(&v82 + 1) = v79;
  *&v82 = v80;
  v93 = (v82 >> 1) & 0x8FFEFFFFFFFFFFFFLL;
  v86 += 0x55E800DAE2307427;
  v94 = v86 ^ v72;
  v95 = (v76 + 1) ^ v72 ^ ((v86 ^ 0x55E800DAE2307427) - (v86 ^ v72 ^ 0x15F4B8ADC4AAF88BLL));
  v96 = (v95 ^ 0x401CB877269A8CACLL) + (v86 ^ 0x55E800DAE2307427);
  v97 = 0xA1181FDDAF083F6 - v81;
  if (((v83 ^ 0xCA4F000000000000) & (v81 - 0x1000000000000)) == 0)
  {
    v97 = v81 + 0xA0F81FDDAF083F6;
  }

  v98 = ((v83 ^ 0xCA4FD6792342337ALL) - 0xA1081FDDAF083F6 + v97) ^ v93;
  v99 = ((v90 >> 19 << 36) ^ 0x2FCC389000000000) + (v92 ^ 0xDA3C278D05A73FC9) - 2 * (((v90 >> 19 << 36) ^ 0x2FCC389000000000) & (v92 ^ 0x5A3C278000000000));
  v100 = v99 - 2 * (v99 & 0x70B5585F06D2615FLL ^ v92 & 4) - 0xF4AA7A0F92D9EA5;
  *(&v102 + 1) = v98 ^ 0x2C65E97AC470318;
  *&v102 = v98;
  v101 = v102 >> 60;
  v103 = (v96 + 0x52F7392341DEA6A4 + (~(2 * v96) | 0x5A118DB97C42B2B9)) ^ v91;
  *(&v102 + 1) = v103 ^ 0x2A7;
  *&v102 = v103 ^ 0xE9E244B994D8A400;
  v104 = v101 ^ __ROR8__(v80, 39);
  v105 = ((v91 ^ 0x8DDF5FE05CFD8201 ^ (((((v91 >> 1) ^ 0x28EF726D13154CD6) - (v91 ^ 0x793196B7353FD57BLL ^ (v91 >> 1))) ^ ((v91 ^ 0xAE211B25D9D56652) + 1)) - ((2 * ((((v91 >> 1) ^ 0x28EF726D13154CD6) - (v91 ^ 0x793196B7353FD57BLL ^ (v91 >> 1))) ^ ((v91 ^ 0xAE211B25D9D56652) + 1))) & 0xB8037674F5AE3758) - 0x23FE44C58528E454)) + ((v91 >> 1) ^ 0x28EF726D13154CD6)) ^ ((v91 >> 6) | (~v91 << 63));
  v106 = v103 ^ __ROR8__(v103, 17) ^ (v102 >> 10);
  v107 = v104 ^ 0xC51A711E10029AFDLL;
  v104 ^= 0x5EB11C0C63CB1D7AuLL;
  v108 = ((v85 << 57) ^ 0xD800000000000000) - ((2 * ((v85 << 57) ^ 0xD800000000000000)) & 0x7777777777777777) - 0x44D44D9FF7989EA5;
  v109 = v85 ^ (v85 >> 7) ^ ((v85 ^ (v85 >> 7) ^ 0x6B4282B020D44677) - ((2 * (v85 ^ (v85 >> 7) ^ 0x6B4282B020D44677) + 2) & 0xC28B7E81CB5CFAC4) + 0x6145BF40E5AE7D63) ^ ((v108 ^ 0xBB2BB2600867615BLL) - (v85 ^ (v85 >> 7) ^ 0x2F96CF2FD74CD8D3 ^ v108)) ^ 0xF5F8C20F3A85C4EALL;
  v110 = ((v109 - ((2 * v109) & 0xD88AF8A9CA9100C6) - 0x13BA83AB1AB77F9DLL) ^ v108 ^ 0x576ECE34ED2FE138) + 2 * ((((v109 - ((2 * v109) & 0xD88AF8A9CA9100C6) - 0x13BA83AB1AB77F9DLL) ^ 0xEC457C54E5488063 | v108 ^ 0xBB2BB2600867615BLL) - ((2 * ((v109 - ((2 * v109) & 0xD88AF8A9CA9100C6) - 0x13BA83AB1AB77F9DLL) ^ 0xEC457C54E5488063 | v108 ^ 0xBB2BB2600867615BLL)) & 0x2EDD9C69DA5FC270) + 0x576ECE34ED2FE138) ^ (v109 - ((2 * v109) & 0xD88AF8A9CA9100C6) - 0x13BA83AB1AB77F9DLL) ^ v108);
  v111 = v105 ^ (v91 << 58);
  v112 = v110 ^ __ROR8__(v85, 41);
  v113 = ((v105 | 0xFFFFFFFFFDFFFFFFLL) - (v104 & (v111 ^ 0xB5477B936898AA66))) ^ v111 & 0xFFFFFFFFFDFFFFFFLL;
  v114 = (v112 ^ v100 ^ 0x6B6CAA63098AA73) - 2 * ((v112 ^ v100 ^ 0x6B6CAA63098AA73) & 0x49B5D5AEA2AFB87ELL ^ (v112 ^ v100) & 4) - 0x364A2A515D504786;
  v115 = v114 ^ 0x757C4C9C5776DC0FLL ^ ((v113 ^ 0xB5477B936898AA66) - 2 * ((v113 ^ 0xB5477B936898AA66) & 0x49B5D5AEA2AFB87BLL ^ v113 & 1) - 0x364A2A515D504786);
  v116 = (v112 ^ 0xF60392F9364ACB28) & (v106 ^ 0x454E4FB7497B9334);
  v117 = v106 ^ 0x32B6B1E89567B7B5;
  v118 = v107 ^ v111;
  v119 = v112 ^ v106 ^ 0x32B6B1E89567B7B5;
  v120 = v104 & (v114 ^ 0x364A2A515D504785) ^ v119;
  v121 = (v114 ^ 0xC9B5D5AEA2AFB87ALL) & (v119 ^ 0x81FB6CA6EA56EFA9);
  v122 = (((v118 ^ 0xD113E97EE4AED21ELL) & (v106 ^ 0xBAB1B048B6846CCBLL)) - ((2 * ((v118 ^ 0xD113E97EE4AED21ELL) & (v106 ^ 0xBAB1B048B6846CCBLL))) & 0x3756DA24E7930F0ELL) - 0x645492ED8C367879) ^ v107;
  v123 = (v122 - ((2 * v122) & 0x150766C7551247E0) - 0x757C4C9C5576DC10) ^ v115;
  v124 = v118 ^ v116;
  v125 = (0xD3FEEE71105EDF2CLL - (v115 ^ v120 ^ 0x2779CE4BAF7EEC8ALL)) ^ v115 ^ v120 ^ ((v115 ^ v120 ^ 0xB78DFC540DFCC59) + 1);
  v126 = ((2 * v125) & 0x1FFF5FF6AFFAFFFCLL ^ 0x90E40742E40674CLL) + (v125 ^ 0xFB788FC1E8DD4C58);
  v127 = v126 - ((2 * v126 - 0x780183148F3D41A4) & 0x875D1BFC45DAE888) - 0x7852338C24B12C8ELL;
  v128 = (v121 - ((2 * v121) & 0x100E034047C7B6FCLL) - 0x77F8FE5FDC1C2482) ^ v117;
  v129 = (v127 >> 19) ^ 0x1875D1BFC45DLL;
  v130 = v95 & 0x1C;
  v131 = (v127 ^ 0xC3AE8DFE22ED7444) >> (v95 & 0x1C ^ 0xC);
  v132 = (v123 ^ 0x9E81F449D42A04DCLL) << (v90 & 3 ^ 1) << (v90 & 3 ^ 2);
  v133 = (v129 - (v127 ^ 0xC3AE958BF352B019 ^ (v127 >> 19))) ^ (0x3C00C18A479EA0D2 - v126);
  v134 = ((v133 - ((2 * v133) & 0x875D1BFC45DAE888) - 0x3C517201DD128BBCLL) ^ v127) + v129;
  v135 = (v128 - ((2 * v128) & 0x9A0982DA9049A33ALL) - 0x32FB3E92B7DB2E63) ^ v124;
  v136 = v124 ^ 0x5405BBB170627111;
  *(&v102 + 1) = ~(v124 ^ 0x70627111);
  *&v102 = v124 ^ 0x7AE9AD306B335CF0;
  v137 = v132 ^ v123 ^ ((v123 >> 61) ^ (v123 >> 39) | (v123 << 25));
  v138 = v136 ^ __ROR8__(v136, 6) ^ (v102 >> 1);
  v139 = ((v120 << 23) ^ 0xEC7B8AF11F800000) - ((2 * ((v120 << 23) ^ 0xEC7B8AF11F800000)) & 0x60F7394F95000000);
  *(&v102 + 1) = v138 ^ 0x26DB1F3C6956;
  *&v102 = v138 ^ 0xAA57800000000000;
  v140 = v102 >> 47;
  *(&v102 + 1) = v135 ^ 0x174;
  *&v102 = v135 ^ 0xE42F13CF8620A000;
  v141 = v102 >> 10;
  v142 = v120 ^ (v120 >> 7) ^ 0x5B9F20CB46E923BFLL ^ ((v120 >> 41) | (v120 << 57));
  *(&v102 + 1) = v140 ^ 0x1B19A ^ (v137 >> 47);
  *&v102 = v140 ^ (v137 << 17) ^ 0x1261F64016E00000;
  v143 = (v102 >> 17) - ((2 * (v102 >> 17)) & 0x860F4DE41786F12ELL) - 0x3CF8590DF43C8769;
  v144 = (v143 ^ 0x16E30F829DF474D7) & (v137 ^ 0xF2D65FBF92E8F8CFLL);
  v145 = ((v139 - 0x4F846358351D4299) ^ 0xB07B9CA7CAE2BD67) + v142 - 2 * (((v139 - 0x4F846358351D4299) ^ 0x307B9CA7CAE2BD67) & v142) - ((2 * (((v139 - 0x4F846358351D4299) ^ 0xB07B9CA7CAE2BD67) + v142 - 2 * (((v139 - 0x4F846358351D4299) ^ 0x307B9CA7CAE2BD67) & v142))) & 0x3E9547530047CC18);
  v146 = v135 ^ __ROR8__(v135, 17) ^ v141;
  v147 = (v143 ^ 0xE91CF07D620B8B28) & (v146 ^ 0xB49561D80FC76264);
  v145 -= 0x60B55C567FDC19F4;
  v148 = v145 ^ (v127 << 36) ^ (v127 << 45) ^ (v131 >> (v130 ^ 0x10u)) ^ v134;
  v149 = v137 ^ 0xD29A0406D170730;
  v150 = (v145 ^ 0x9F4AA3A98023E60CLL) & (v146 ^ 0x4B6A9E27F0389D9BLL);
  v151 = v145 ^ v146;
  v152 = 0x4000000000000000;
  if ((v151 & 0x4000000000000000) != 0)
  {
    v152 = 0xC000000000000000;
  }

  v153 = v143 ^ v150;
  v154 = v148 ^ 0xE0EA98167FDC19F3;
  v155 = v148 ^ v144;
  v156 = v148 ^ 0x1F1567E98023E60CLL;
  v157 = v156 & ((v152 + (v151 ^ 0x2BDFC2718FE48468)) ^ 0xBFFFFFFFFFFFFFFFLL) ^ v146;
  v158 = v154 & v149;
  v159 = (v155 ^ 0x1F1567E98023E60CLL | v149 ^ v147) ^ v156 & (v149 ^ v147);
  *(&v161 + 1) = v157 ^ v153 ^ 0x33333333;
  *&v161 = v157 ^ v153 ^ 0xA2766E5A92331680;
  v160 = v161 >> 7;
  *(&v161 + 1) = v160 ^ 0x1F0B12B91B48028;
  *&v161 = v160 ^ 0xD600000000000000;
  v162 = __ROR8__(v159, 8);
  v163 = v158 ^ v151;
  v164 = ((v162 << 9) & 0x805B276E7BC0DA00 ^ 0x7FAEDBB1EDBF65FFLL) + ((v162 << 8) ^ 0x473AD627492ACF00);
  v165 = v164 - ((2 * v164 - 0x7FA4D891843F24A0) & 0x8A76C41C5FE05F1CLL) + 0x568F5C56DD09D8ELL;
  v166 = ((2 * ((v153 ^ 0x16E30F829DF474D7) - ((v161 >> 57) ^ 0xF85895C8DA40146BLL))) & 0xFFEC5FCBE7FBF1DCLL) + (((v153 ^ 0x16E30F829DF474D7) - ((v161 >> 57) ^ 0xF85895C8DA40146BLL)) ^ 0x7FF62FE5F3FDF8EELL) - 0x7FF62FE5F3FDF8EELL;
  v167 = v163 ^ v155;
  *(&v161 + 1) = v163 ^ v155 ^ 0xAF63;
  *&v161 = v163 ^ v155 ^ 0x9EDFC25791100000;
  v168 = v161 >> 19;
  v169 = (v166 + (v157 ^ 0x4B6A9E27F0389D9BLL ^ v166) + 1) ^ ((v157 ^ 0x4B6A9E27F0389D9BLL) + 1);
  v170 = (((v157 ^ 0xE9DD86A65084BE5FLL ^ (v169 - ((2 * v169) & 0xBA91CEFCBE87B876) + 0x5D48E77E5F43DC3BLL)) + v166) ^ ((v157 ^ 0x4B6A9E27F0389D9BLL) + 1)) + (v153 ^ 0x16E30F829DF474D7);
  v171 = ((2 * v153) & 0xB7FF95FBFFFFF5FELL ^ 0x9F017273A39510) + (v153 ^ 0x7FB04F46C62E3077);
  v172 = v171 + 0x2400350200000501 + (((v153 ^ 0xB1814FA01A28657ELL) + 0x2400350200000501 + v171 + 1) ^ 0xFFFFFFFFFFFFFFFELL);
  v173 = v172 - ((2 * v172) & 0x62C6134734495486) + 0x316309A39A24AA43;
  v174 = v165 ^ HIBYTE(v162);
  v175 = ((8 * v174) ^ 0x29DB10717F817E50) - ((2 * ((8 * v174) ^ 0x29DB10717F817E50)) & 0xDEFA3B05DAB3A750) - 0x1082E27D12A62C56;
  *(&v161 + 1) = (v172 - ((2 * v172) & 0x34495486) - 1708873149) ^ 0x224AA43u;
  *&v161 = v173 ^ 0x316309A398000000;
  v176 = v161 >> 26;
  v177 = v167 ^ ((v167 ^ 0x24BD3836C1408C87) >> 28) ^ v168 ^ ((v167 ^ 0x24BD3836C1408C87) << 36);
  *(&v161 + 1) = v170 ^ 0x1F0;
  *&v161 = v170 ^ 0x5FDAEE8B38A0DC00;
  v178 = v161 >> 10;
  *(&v161 + 1) = v174;
  *&v161 = v165;
  v179 = ((v175 ^ 0xEF7D1D82ED59D3AALL) + (v174 ^ 0xA636BE12F552BA3DLL ^ (-((v165 >> 61) ^ 2) - 0x1CF223E3255D6A09)) - 2 * ((v175 ^ 0x6F7D1D82ED59D3AALL) & (v174 ^ 0x453B620E2FF02FCALL))) ^ (v161 >> 39);
  v180 = __ROR8__(v173, 27) & 0xFFFFFFDFFFFFFFFFLL ^ v176;
  *(&v161 + 1) = v180 ^ 0x3027D34A90;
  *&v161 = v180 ^ 0xD83CC000000000;
  v181 = v163 ^ (v163 << 23) ^ (v163 >> 7) ^ ((v163 >> 41) | (v163 << 57));
  v182 = ((v178 ^ v170 ^ 0x5FDAEE8B38A0DDF0) + ((v170 >> 17) ^ 0x2FED77459C50) - 2 * ((v178 ^ v170 ^ 0x6E8B38A0DDF0) & ((v170 >> 17) ^ 0x2FED77459C50))) ^ ((v170 ^ 0x5FDAEE8B38A0DDF0) << (v70 & 0x2F ^ 8u) << (v70 & 0x2F ^ 0x27u));
  v183 = (((v161 >> 38) & 0x2600420890040001 ^ (v173 >> 6) & 0x200420890040001 | (v161 >> 38) & 0x1880154640E14A00) ^ (v173 >> 6) & 0x80154640E14A00 | (v161 >> 38) & 0xC17FA8B12F1AB5FELL ^ ((v173 >> 6) & 0x17FA8B12F1AB5FELL | (v172 << 63))) ^ 0xD8EB45DD0379A77BLL;
  v184 = v181 ^ 0xED5DFB49EF00F653;
  v185 = v177 ^ v181 ^ 0xED5DFB49EF00F653;
  v186 = v185 ^ 0x74F92255307C56ALL;
  v187 = (v183 - ((2 * v183) & 0xE896D4325C4BECE0) - 0xBB495E6D1DA0990) ^ (((v173 << 58) ^ 0xC00000000000000) - ((2 * ((v173 << 58) ^ 0xC00000000000000)) & 0x6800000000000000) + 0x36E7E98097BC64C7);
  v188 = (v179 ^ 0x1C5FE05F948A76C4) & (v185 ^ 0x6F46BF1B0E3BDA43);
  v189 = (v179 ^ 0xE3A01FA06B75893BLL) & (v187 ^ 0xC2AC8399B99992B7);
  v68 = v187 == 0xC2AC8399B99992B7;
  v190 = v179 ^ v187;
  v191 = v182 & (v190 ^ 0x210C9C39D2EC1B8CLL) ^ v179;
  v192 = v191 & 0x80000000 ^ 0x5F67E7FDE1F7CEEFLL;
  v193 = (v181 ^ 0xE63947B129FBDA99) & ~v182 ^ v190;
  v194 = v189 ^ v186;
  v195 = v177 ^ 0xC2B2EDD95FCE9A0 ^ v182;
  if (v68)
  {
    v195 = v186;
  }

  v196 = v182 ^ 0xEF1ED65EF12DE2;
  v197 = v196 ^ v184 ^ v188;
  *(&v199 + 1) = v197 ^ v194 ^ 0x551E2;
  *&v199 = v197 ^ v194 ^ 0xB1B5FFBDE1780000;
  v198 = v199 >> 19;
  v200 = (v195 ^ v196 ^ v184 ^ 0x9C7D70EF3AC9E1FELL) + (v195 ^ 0x97F6D2C1A2C3E0D6 | v196 ^ v184 ^ 0xF4745DD167F5FED7) + 1;
  v201 = v200 - ((2 * v200) & 0x1DE3DACBDE25BC4) + 0xEF1ED65EF12DE2;
  v202 = v192 - 0x220063D20800800;
  if (((v192 - 0x5F67E7FD61F7CEEFLL) & ~v194) != 0)
  {
    v202 = 0xBCAFC9BDA36F95DELL - v192;
  }

  v203 = v193 ^ v196 ^ v201;
  v204 = ((v194 ^ 0x618E12C3AA6DF087) - 0x5D47E1C04177C6EFLL + v202) ^ v191 & 0xFFFFFFFF7FFFFFFFLL;
  v205 = v193 ^ 0xAEACCBBF88A44026;
  *(&v207 + 1) = (8 * v204) ^ (v204 >> 39) ^ 0x14D258;
  *&v207 = (8 * v204) ^ 0x7A731A6510000000;
  v206 = v207 >> 26;
  v208 = (v193 ^ 0x705FA879A5B7A455) << (v94 & 0x3F ^ 0xBu) << (v94 & 0x3F ^ 0x34u);
  *(&v207 + 1) = v206 ^ 0x262306276DLL;
  *&v207 = v206 ^ 0x1FF6EE0000000000;
  v209 = v208 - ((2 * v208) & 0xACE27ED72748F0BELL) - 0x298EC0946C5B87A1;
  v210 = ((v204 >> 61) | (v204 << 25)) ^ v204 ^ (v207 >> 38);
  v211 = ((v209 ^ 0xD6713F6B93A4785FLL) - ((v205 >> 1) ^ 0xB9088E88852D8A66 ^ v209)) ^ (((v205 >> 1) ^ 0x90864E1CE9760DC6) + 1);
  *&v207 = __ROR8__(v197 ^ v194, 28);
  v212 = (v198 ^ v207 ^ 0x17D51E2B1B5FFBDELL) - ((2 * (v198 ^ v207 ^ 0x17D51E2B1B5FFBDELL)) & 0x5603BF1299CAF436) + 0x2B01DF894CE57A1BLL;
  *(&v207 + 1) = v197 ^ 0x1D;
  *&v207 = v197 ^ 0x46AD85B94B13AE80;
  v213 = (v207 >> 7) - ((2 * (v207 >> 7)) & 0x59505DB0D22D73C6) + 0x2CA82ED86916B9E3;
  v214 = v205 ^ __ROR8__(v205, 6) ^ (((v205 >> 1) ^ 0x34E375500457EE87 ^ (v211 - ((2 * v211) & 0xB735896625BC397CLL) + 0x5B9AC4B312DE1CBELL)) + (v209 ^ 0xD6713F6B93A4785FLL));
  *(&v207 + 1) = v203 ^ 0x73;
  *&v207 = v203 ^ 0xF97AE09BCF98E000;
  v215 = ((v197 ^ 0x46AD85B94B13AE9DLL) >> (v66 & 0x29 ^ 0x21u) >> (v66 & 0x29 ^ 8u)) ^ (v197 << 23) ^ v213;
  v216 = v203 ^ __ROR8__(v203, 17) ^ (v207 >> 10);
  v217 = v215 ^ v197;
  v218 = v215 ^ v194 ^ v212;
  v219 = v218 ^ 0x1C75FB836D368FCELL ^ (v214 ^ 0x1188AE4935A7ABE2) & (v210 ^ 0x5D890B4D6375893BLL);
  v220 = v216 ^ 0xE8C502A3DABBA36 ^ v217;
  v221 = (v210 ^ 0xA276F4B29C8A76C4) & (v218 ^ 0xD3EBFD7D3EE2C378) ^ v220;
  v222 = v221 ^ 0x283508E3F196E782;
  v223 = (0x91FD23332A7CA0C9 - (v221 ^ 0x61934D89C487093CLL)) ^ ((v221 ^ 0xF9191451104560ALL) + 1);
  v224 = (v223 - ((2 * v223) & 0xB0B6CCB23EDA9CEELL) - 0x27A499A6E092B189) ^ v222;
  v225 = v224 - ((2 * v224 + 0x3FA466654F94192) & 0x69F9296C623115CLL) + 0x154CEC7E8D8E2977;
  v226 = v222 ^ v219;
  v227 = (v226 << 36) ^ (v226 >> 19) ^ (((v222 ^ v219) >> 28) | ((v222 ^ v219) << 45)) ^ 0x304DE3FF4123B5D5;
  *(&v207 + 1) = v225 ^ 0x2E;
  *&v207 = v225 ^ 0x834FC94B63118880;
  v228 = v225 ^ __ROR8__(v225, 41) ^ (v207 >> 7);
  v229 = v226 ^ 0xA6D2B50B997A6265 ^ (v227 - ((2 * v227) & 0x60B942ACE18451B8) - 0x4FA35EA98F3DD724);
  v230 = (v228 & 8 | (16 * (((v228 & 8) >> 3) & 1)) | 0xF3BFFDE7BEF9D3E7) ^ 0x10;
  v231 = v230 + 0x7E437BBE6DDF2FDBLL;
  v232 = v230 + 0xC40021841062C11;
  v233 = 0x65C3778DEBD2D7B9 - v230;
  if ((v232 & v229) == 0)
  {
    v233 = v231;
  }

  *(&v235 + 1) = v214 ^ v210 ^ 0x2DDD26;
  *&v235 = v214 ^ v210 ^ 0xB3FE5AFBA9000000;
  v234 = v235 >> 24;
  *(&v235 + 1) = v234 ^ 0x665960A1D0;
  *&v235 = v234 ^ 0xEFDD5F0000000000;
  v236 = (v235 >> 40) & 0xF196C8D9BC1CB6CCLL ^ v210 ^ ((v235 >> 40) ^ 0x99A69F5E2F1022A0) & (v216 ^ 0xB9D4D4FF03C9B271);
  *(&v235 + 1) = v236 ^ 0x1A5444;
  *&v235 = v236 ^ 0x33F07CEAB0800000;
  v237 = v235 >> 21;
  v238 = v214 ^ v210 ^ (v216 ^ 0xB7BDE3D9402AFB42) & (v217 ^ 0xB6A022B66C85177ELL);
  v239 = (((v220 ^ 0xF9191451104560ALL) & (v218 ^ 0x2C140282C11D3C87)) - ((2 * ((v220 ^ 0xF9191451104560ALL) & (v218 ^ 0x2C140282C11D3C87))) & 0x8D9C981904FD7D16) + 0x46CE4C0C827EBE8BLL) ^ v216 ^ 0xE8C502A3DABBA36;
  *(&v235 + 1) = v237 ^ 0x294463224A2;
  *&v235 = v237 ^ 0xD818300000000000;
  v240 = ((v235 >> 43) - ((2 * (v235 >> 43)) & 0x60C3F20358576692) + 0x3061F901AC2BB349) ^ v219;
  *(&v235 + 1) = v240 ^ 0x866EDB71871F983;
  *&v235 = v240 ^ 0xBFFFFFFFFFFFFFFFLL;
  v241 = v235 >> 61;
  v242 = (v239 - ((2 * v239) & 0xB3449CCDDD5002B8) - 0x265DB1991157FEA4) ^ v238;
  *(&v235 + 1) = v242 ^ 0x3A9;
  *&v235 = v242 ^ 0x15F9A14021DEC400;
  v243 = v235 >> 10;
  *(&v235 + 1) = v238;
  *&v235 = v238 ^ 0x8382DEB5769EEFA4;
  v244 = v238 ^ __ROR8__(v238, 6) ^ (v235 >> 1);
  v245 = v242 ^ __ROR8__(v242, 17) ^ v243;
  v246 = v240 ^ __ROR8__(v240, 39) ^ v241;
  v247 = (v229 - 0x720379A62CD903CALL + v233) ^ v228 & 0xFFFFFFFFFFFFFFF7;
  v248 = (v246 ^ 0x39A9F1BBE0DECBA7) & (v244 ^ 0x118CD5CFA344941ALL);
  v249 = v246 ^ 0xB9B92AD5C1A9FE9DLL;
  v250 = (v247 ^ 0xD901BE70CBAFD0BDLL) & (v246 ^ 0xC6560E441F213458);
  v251 = v245 ^ 0xB088ED8C632B26DLL;
  if (v88 != 0x69C6520CC43732FCLL)
  {
    v251 = v228 ^ 0xA4241B14FCE3B59ELL;
  }

  v252 = v245 ^ 0xBBD29D744AA6ECA9;
  v253 = v228 ^ 0xA4241B14FCE3B59ELL ^ v245 ^ 0xBBD29D744AA6ECA9;
  v254 = v247 ^ v248;
  v255 = v250 ^ v253;
  v256 = v250 ^ v253 ^ v247 ^ v248;
  v257 = v256 ^ (v256 >> 19);
  v258 = v249 ^ v244;
  v259 = v258 ^ (v253 ^ 0x4F25EC53736BA13BLL) & (v251 ^ 0x82DA5A9BC8B39AD4);
  v260 = v259 ^ 0x3CB53945C1B69B1 ^ v257;
  v261 = ((2 * v257) & 0x620147C64EA198BALL ^ 0x220007404A8180B8) + (v257 & 0x732AA3E32754EC5DLL ^ 0x22C8F85F1A3A3F23);
  v262 = v261 - 0x31C0FBFF3F7ADF7FLL + (v260 & 0x732AA3E32754EC5DLL ^ ((v260 & 0x732AA3E32754EC5DLL ^ 0x8DDF5E9DFBEB3BEFLL) + 1) ^ 0x7220A1620414C410 ^ ((v259 & 0x732AA3E32754EC5DLL ^ 0x9DDD5EBDDABBB3A2) - 0x31C0FBFF3F7ADF7FLL + v261 + 1));
  v263 = v262 - ((2 * v262) & 0x8A67A6CCABA31960) + 0x4533D36655D18CB0;
  v264 = (v263 & 0x1000 ^ 0xF4BBDF62EF7DFBEFLL) + 2 * (v263 & 0x1000);
  v68 = ((v264 + 0xB44209D10820411) & (v259 ^ 0x6E63F15E7DCC5000)) == 0;
  v265 = (((v258 ^ 0x919C0EA18233A120) & (v245 ^ 0x762D2BBCF17ED746)) - ((2 * ((v258 ^ 0x919C0EA18233A120) & (v245 ^ 0x762D2BBCF17ED746))) & 0xFFDE4923BD11958ALL) + 0x7FEF2491DE88CAC5) ^ v249;
  v266 = (v265 - ((2 * v265) & 0x878D9C230962C7CLL) - 0x7BC3931EE7B4E9C2) ^ v254;
  LODWORD(v265) = ((v266 >> 54) & 0x80 | (v266 >> 62)) ^ 1;
  v267 = v265 - 1266565606 - 2 * (v265 & 1) + 99;
  v268 = v264 + 0x1FF5FD9F5FE24720;
  v269 = 0x96DBC653EDE3EFELL - v264;
  if (v68)
  {
    v269 = v268;
  }

  v270 = ((v259 & 0x8CD55C1CD8AB13A2 ^ 0xC41501C58881282) - 0x14B1DD024F60430FLL + v269) ^ v263 & 0xFFFFFFFFFFFFEFFFLL;
  v271 = ((v256 >> 28) | (v256 << 45)) ^ (v256 << 36) ^ 0xB470EA617C9155D0;
  v272 = (v271 - 2 * (v271 & 0x7A61B56E0CBED433 ^ (v256 >> 28) & 3) + 0x7A61B56E0CBED430) ^ v260;
  v273 = *(v46 + (v267 ^ 0xB481BE1A) + 799);
  v274 = v272 ^ v270;
  v13[2] = ((v272 ^ v270) >> 24) ^ 0x55;
  *v308 = ((v272 ^ v270) >> 8) ^ 0x8C;
  v14[2] = ((v272 ^ v270) >> 16) ^ 0xD1;
  *v309 = v272 ^ v270 ^ 0x48;
  v275 = v273 ^ ((v267 ^ 0x7D) - 123) & 0x8F ^ v267 & 0xE3 ^ 0xCB;
  v276 = (((v272 ^ v270) >> 26) & 0xC0 | ((v272 ^ v270) >> 34) & 0x3F) ^ 0x99;
  v277 = v276 - ((2 * v276) & 0x170) - 2100382024;
  v278 = *(v47 + (v277 ^ 0x82CEB6F7));
  v279 = v275 + 53;
  v280 = v266 ^ (v266 >> 39) ^ (8 * v266);
  *v13 = v280 ^ 0x65 ^ v279;
  *v304 = BYTE1(v280) ^ 0xE0;
  v281 = (((v247 ^ 0x26FE418F34502F42) & (v253 ^ 0xB0DA13AC8C945EC4)) - ((2 * ((v247 ^ 0x26FE418F34502F42) & (v253 ^ 0xB0DA13AC8C945EC4))) & 0x9BFF6D9177B077DELL) - 0x320049374427C411) ^ v252;
  v282 = (v281 - ((2 * v281) & 0xC9D75B4267596E84) - 0x1B14525ECC5348BELL) ^ v259;
  v283 = v278 ^ 0x80;
  if (v57 == 7)
  {
    v283 = 127;
  }

  v284 = v280 ^ (v266 << 25);
  v285 = -127 - (v277 ^ 0xB8) - ((14 - 2 * (v277 ^ 0xB8)) & 0xF4);
  v14[3] = BYTE2(v280) ^ 0xE4;
  v14[1] = BYTE4(v284) ^ 0x2F;
  *v305 = (~(v285 ^ v278) & 0x80 | v285 & 0x7F ^ v283 & v278) ^ 0x59;
  *(&v287 + 1) = ~v270;
  *&v287 = v270 ^ 0xD83933A1C6B1E98CLL;
  v286 = v287 >> 1;
  v288 = v255 ^ (v255 >> 7) ^ ((v255 >> 41) | (v255 << 57));
  *(&v287 + 1) = v288 ^ 0x7CE0C1FA3ADB27;
  *&v287 = v288 ^ 0xBD00000000000000;
  v289 = v287 >> 56;
  *v306 = (BYTE5(v274) ^ 0xD3) - ((2 * (BYTE5(v274) ^ 0xD3)) & 0xF0) - 8;
  *(&v287 + 1) = v282 ^ 0xA9;
  *&v287 = v282 ^ 0x61EB7233DF30D800;
  v290 = v287 >> 10;
  *v307 = HIBYTE(v274) ^ 0x45;
  *v300 = HIBYTE(v284) ^ 0xD8;
  v291 = v289 ^ __ROR8__(v255, 33) & 0xFFFFFFFF800000FFLL;
  *(&v287 + 1) = v291 ^ 0x3F;
  *&v287 = v291 ^ 0xBBBC8643DA119800;
  v292 = v287 >> 8;
  v293 = v270 ^ __ROR8__(v270, 6) ^ v286;
  *v14 = BYTE6(v274) ^ 0x33;
  v294 = v290 ^ v282 ^ 0x8A885CFF4E60E99DLL ^ __ROR8__(v282 ^ 0x8A885CFF4E60E99DLL, 17);
  v55[19] = (BYTE5(v284) ^ 0x15) - ((2 * BYTE5(v284)) & 0x90) + 72;
  v55[16] = (BYTE6(v284) ^ 0x73) - 2 * ((BYTE6(v284) ^ 0x73) & 0xCC ^ BYTE6(v284) & 4) + 72;
  *v301 = BYTE3(v284) ^ 0x20;
  LODWORD(v284) = *(v48 + ((35 * (v293 ^ 0x2B)) ^ 0xD8));
  LODWORD(v284) = v284 - ((2 * v284 + 24) & 0xFFFFFFEF) + 3;
  LODWORD(v284) = ((~((v284 & 0xFE) >> 1) & 0x3A) + (~(2 * ~((v284 & 0xFE) >> 1)) | 0xFFFFFF9B) + 120) ^ v284;
  v55[9] = (BYTE6(v293) ^ 0x59) - ((2 * (BYTE6(v293) ^ 0x59)) & 0x90) + 72;
  v13[1] = BYTE3(v293) ^ 0x41;
  v55[20] = (BYTE5(v293) ^ 0xD7) - ((2 * (BYTE5(v293) ^ 0xD7)) & 0x90) + 72;
  DWORD1(v287) = v284 ^ 1;
  LODWORD(v287) = (v284 ^ 0x90) << 24;
  v13[3] = BYTE2(v293) ^ 0xAB;
  v55[12] = (BYTE1(v293) ^ 0x2E) - ((2 * (BYTE1(v293) ^ 0x2E)) & 0x90) + 72;
  *v302 = v287 >> 26;
  v55[2] = (BYTE4(v293) ^ 0x6F) - ((2 * (BYTE4(v293) ^ 0x6F)) & 0x90) + 72;
  v295 = *(v310 + (HIBYTE(v293) ^ 0x7C));
  DWORD1(v287) = ~v295;
  LODWORD(v287) = (v295 ^ 0x66666666) << 24;
  v55[4] = (BYTE1(v294) ^ 0x79) - ((2 * (BYTE1(v294) ^ 0x79)) & 0x90) + 72;
  v55[22] = (BYTE3(v294) ^ 6) - ((2 * BYTE3(v294)) & 0x90) + 72;
  v55[17] = (BYTE5(v294) ^ 0x5B) - ((2 * (BYTE5(v294) ^ 0x5B)) & 0x90) + 72;
  v55[13] = (HIBYTE(v294) ^ 0xF3) - 2 * ((HIBYTE(v294) ^ 0xF3) & 0xCC ^ HIBYTE(v294) & 4) + 72;
  v55[5] = v294 ^ 0xD4;
  v55[8] = (BYTE6(v294) ^ 0xF9) - ((2 * (BYTE6(v294) ^ 0xF9)) & 0x90) + 72;
  v55[18] = (BYTE2(v294) ^ 0x36) - ((2 * BYTE2(v294)) & 0x90) + 72;
  v55[6] = (BYTE4(v294) ^ 0x7D) - ((2 * (BYTE4(v294) ^ 0x7D)) & 0x90) + 72;
  v55[11] = (v287 >> 25) - ((2 * (v287 >> 25)) & 0x90) + 72;
  LODWORD(v293) = *(v48 + ((35 * (v292 ^ 0x98)) ^ 0xD8));
  *v55 = (BYTE1(v292) ^ 0x11) - ((2 * BYTE1(v292)) & 0x90) + 72;
  LODWORD(v293) = v293 - 2 * ((v293 + 12) & 0x4F ^ v293 & 2) - 39;
  LODWORD(v293) = (((v293 >> 1) & 0x3A ^ 0x22) - (v293 & 0x10) + 77) ^ v293;
  DWORD1(v287) = v293 ^ 1;
  LODWORD(v287) = (v293 ^ 0x90) << 24;
  result = (v292 >> 24) & 3;
  v55[3] = (BYTE2(v292) ^ 0x5A) - ((2 * (BYTE2(v292) ^ 0x5A)) & 0x90) + 72;
  v55[21] = (v287 >> 26) - ((2 * (v287 >> 26)) & 0x90) + 72;
  v55[15] = (BYTE3(v292) ^ 0xEC) - 2 * ((BYTE3(v292) ^ 0xEC) & 0x4B ^ BYTE3(v292) & 3) + 72;
  v55[10] = (BYTE4(v292) ^ 0x5A) - 2 * ((BYTE4(v292) ^ 0x5A) & 0x49 ^ BYTE4(v292) & 1) + 72;
  v55[14] = (BYTE6(v292) ^ 0xAE) - ((2 * (BYTE6(v292) ^ 0xAE)) & 0x90) + 72;
  v55[1] = (HIBYTE(v292) ^ 0x4B) + (~(2 * (HIBYTE(v292) ^ 0x4B)) | 0x6F) + 73;
  v55[7] = ((v292 ^ 0x4BAE8B5AEC5A1198) >> (v163 & 0x28 ^ 0x20) >> (v163 & 0x28 ^ 8)) - ((2 * ((v292 ^ 0x4BAE8B5AEC5A1198) >> (v163 & 0x28 ^ 0x20) >> (v163 & 0x28 ^ 8))) & 0x90) + 72;
  *v303 = v311 + 1;
  *v299 = v274 ^ 0x717DC18A45425DA4;
  v297 = *(v12 - 96);
  v298 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BADD0DF8()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v9 = *MEMORY[0x1E69E9840];
  v1 = 536782777 * (((v0 | 0x3FE76125) - v0 + (v0 & 0xC0189EDA)) ^ 0x1C378C12);
  v2 = *(v0 + 8) ^ v1;
  v3 = *v0;
  v4 = *(v0 + 40) - v1;
  v5 = *(&off_1E7F1D8C0 + v2 - 1046);
  (*(v5 + 8 * (v2 ^ 0xEED)))(v8, 0, 296);
  if (v3)
  {
    v6 = ((2 * v4) & 0x9EF7AFFE ^ 0x14B30F90) + (v4 ^ 0x75227037) == 1333516319;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1BADD0F58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  STACK[0x980] = v5;
  STACK[0xB88] = &STACK[0xEB0];
  LODWORD(STACK[0xD48]) = v3;
  LODWORD(STACK[0xD38]) = a3 - 1027 + v4;
  return (*(STACK[0xD40] + 8 * (((v3 != a3 - 1027 + v4) * (a3 - 1948)) ^ a3)))(201596640, a1, a2, v6, 1780089565, 2846408844, 337497821);
}

uint64_t sub_1BADD1078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v12 = v9 < v8;
  v13 = (a6 ^ 0xE39FB636) - 1016174510 - 2104627269 * (v10 + *(a4 + v10));
  if (v12 == a8 < v8)
  {
    v12 = a8 < v9;
  }

  return (*(STACK[0xD40] + 8 * ((13 * v12) ^ (v11 + 1465))))();
}

uint64_t sub_1BADD14DC@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W8>)
{
  v6 = a5 < a2;
  v7 = (a1 ^ 0x4633685A) - 1016174510 - 2104627269 * (*(a4 + (v5 - 1394288108)) + v5 - 1394288108);
  if (v6 == v5 - 272481900 < a2)
  {
    v6 = v5 - 272481900 < a5;
  }

  return (*(STACK[0xD40] + 8 * ((v6 | (8 * v6)) ^ a3)))();
}

uint64_t sub_1BADD18C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xA40] = a4;
  STACK[0xD50] = &STACK[0x1290];
  STACK[0x988] = &STACK[0x624059F3CD2E28B6];
  v8 = STACK[0xB88];
  return (*(STACK[0xD40] + 8 * v7))(a1, 161, 522, 299880, a5, a6, a7, 2100574940);
}

uint64_t sub_1BADD195C@<X0>(char a1@<W1>, int a2@<W2>, unsigned int a3@<W3>, int a4@<W7>, int a5@<W8>)
{
  *(v12 + a3 - ((((a3 * v6) >> 32) + ((a3 - ((a3 * v6) >> 32)) >> 1)) >> 9) * v7) = a5 - 1 + ((v9 - 2 * (a5 - 1)) | a1) - 103;
  *(v12 + v8 + (a4 + v10 + 542) * a5 - (((((v8 + (a4 + v10 + 542) * a5) * v6) >> 32) + ((v8 + (a4 + v10 + 542) * a5 - (((v8 + (a4 + v10 + 542) * a5) * v6) >> 32)) >> 1)) >> 9) * v7) = a5 + ((v9 - 2 * a5) | a1) - 103;
  return (*(STACK[0xD40] + 8 * (((v5 == 0) * a2) ^ v11)))();
}

uint64_t sub_1BADD19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v12 = (833 * (((v8 + 2100574664) & a6 ^ 0x7B6FEBFE) + ((2 * (a6 & 7)) ^ 2)) + 1490404529) % 0x3D1;
  v13 = STACK[0x1246];
  v14 = a5 - 567670025;
  LOBYTE(STACK[0x1246]) = *(v10 + v12);
  *(v10 + v12) = v13;
  v15 = v11 + 833 * ((a5 - 567670025) % 0xFu) + 833;
  v16 = STACK[0x11B6];
  v17 = v15 - 977 * ((4396078 * v15) >> 32);
  LOBYTE(STACK[0x11B6]) = *(v10 + v17);
  *(v10 + v17) = v16;
  LOBYTE(v17) = STACK[0x1126];
  v18 = (833 * (((2 * ((a7 - 515358863) % 0xEu)) & 0x16) + (((a7 - 515358863) % 0xEu) ^ 0x36F3FEAB)) + 806678399) % 0x3D1;
  LOBYTE(STACK[0x1126]) = *(v10 + v18);
  *(v10 + v18) = v17;
  v19 = (v9 - 557607896) % 0xDu - ((2 * ((v9 - 557607896) % 0xDu)) & 0x10) + 1460962488;
  v20 = STACK[0x1096];
  v21 = 2 * (v19 & 3) + (v19 ^ 0x571484BB);
  v22 = (a5 - 567670025) ^ (v9 - a7 - 42249033);
  v23 = v22 ^ 0xC7;
  v24 = ((2 * v22) & 0x7BFFFF8E) + (v22 ^ 0xBDFFFFC7);
  v25 = a7 - a5 + v24;
  v26 = v25 + 1539484663;
  v27 = (v11 + 833 * v21) % 0x3D1u;
  v28 = v14 + (a6 ^ 0x1C6049C9) + v24;
  LOBYTE(STACK[0x1096]) = *(v10 + v27);
  *(v10 + v27) = v20;
  v29 = STACK[0x1006];
  v30 = v25 + 1539484663 + v9 - a7;
  v31 = 833 * ((v28 + 1107296313) % 0xC);
  LOBYTE(STACK[0x1006]) = *(v10 + (v11 + v31 + 2355 - 977 * ((4396078 * (v11 + v31 + 2355)) >> 32)));
  *(v10 + (v31 + 303212 - 977 * ((4396078 * (v31 + 303212)) >> 32))) = v29;
  v32 = (v25 + 1263723336) % 0xA;
  v33 = 833 * ((v24 + 1211412174) % 0xB) + 304045 - 977 * ((4396078 * (833 * ((v24 + 1211412174) % 0xB) + 304045)) >> 32);
  v34 = STACK[0xF76];
  LOBYTE(STACK[0xF76]) = *(v10 + v33);
  v35 = (((v30 - 318010360) % 9u) ^ 0xFEB3FFDF) + 2 * ((v30 - 318010360) % 9u);
  *(v10 + v33) = v34;
  LOBYTE(v33) = STACK[0xEE6];
  v36 = v30 + v26 - ((2 * (v30 + v26) - 1187543374) & 0x90B7F718) + 620216037;
  v37 = 833 * v32 + 304878 - 977 * ((4396078 * (833 * v32 + 304878)) >> 32);
  LOBYTE(STACK[0xEE6]) = *(v10 + v37);
  *(v10 + v37) = v33;
  v38 = ((623 - v35) & 0x201 ^ (v35 + 400) & 0x141) * (v35 + 21758352);
  v39 = v30 - ((2 * v30 + 704439028) & 0x279FB52A) + 1758350351;
  v40 = v24 + ((2 * v36) ^ 0x90B7F718);
  LOBYTE(v37) = STACK[0x1227];
  LOBYTE(STACK[0x1227]) = *(v10 + ((v38 - ((2 * v38) & 0x18F4C) - 1793538138) ^ 0x9518C7A6) % ((v38 - ((2 * v38) & 0x18F4C) - 1793538138) & 0x3D1 ^ 0x380 | (v38 - ((2 * v38) & 0x18F4C) - 1793538138) & 0x3D1 ^ 0x51u));
  v41 = (v40 + 1211412174) % 7;
  v42 = v28 + (v39 ^ 0x13CFDA95) - v40 + 1768779886 + (~(2 * (v28 + (v39 ^ 0x13CFDA95) - v40 - 104115861)) | 0x20BBC1FB);
  *(v10 + (833 * v35 + 944838032) % 0x3D1) = v37;
  v43 = v36 ^ v39;
  v44 = (833 * (((2 * (v42 & 7)) ^ 4) + (v42 & 7 ^ 0x6BF72CEDu)) - 1329891391) % 0x3D1;
  LOBYTE(v35) = STACK[0x1197];
  LOBYTE(STACK[0x1197]) = *(v10 + v44);
  v45 = ((2 * (v42 ^ v39)) & 0xBFEFF5FE ^ 0xB8CB812E) + (v42 ^ v39 ^ 0x239A3F68);
  *(v10 + v44) = v35;
  v46 = 833 * v41 + 307377 - 977 * ((4396078 * (833 * v41 + 307377)) >> 32);
  LOBYTE(v35) = STACK[0x1107];
  v47 = (((v43 ^ 0x5B942119u) % 6) ^ 0xAF86F7BF) + 2 * ((v43 ^ 0x5B942119u) % 6);
  LOBYTE(STACK[0x1107]) = *(v10 + v46);
  v48 = (833 * v47 - 640118925) % 0x3D1 - ((2 * ((833 * v47 - 640118925) % 0x3D1)) & 0x2BE) - 69314209;
  *(v10 + v46) = v35;
  v49 = 833 * ((v45 - 1610087167) % 5) + 309043 - 977 * ((4396078 * (833 * ((v45 - 1610087167) % 5) + 309043)) >> 32);
  v50 = 833 * (v47 + 1975946319 * (v48 & 0x218 ^ 0x5D170600 | v48 & 0x218 ^ 0x18)) - 640418805;
  LOBYTE(v35) = STACK[0x1077];
  v51 = *(v10 + (v48 ^ 0xFBDE595F));
  LOBYTE(STACK[0x1077]) = v51;
  *(v10 + v50 % 0x3D1) = v35;
  LOBYTE(v50) = STACK[0xFE7];
  LOBYTE(STACK[0xFE7]) = *(v10 + v49);
  *(v10 + v49) = v50;
  v52 = 833 * (v42 & 3 ^ 2) + 309876 - 977 * ((4396078 * (833 * (v42 & 3 ^ 2u) + 309876)) >> 32);
  v53 = v52 - ((2 * v52) & 0x5E8) + 2031250164;
  v54 = ((~v45 + v23) ^ v43) & 1 ^ 0x7F76F6F5;
  v55 = ((2 * ((2061221084 - v45) % 3)) & 4) + (((2061221084 - v45) % 3) ^ 0x7FBFF5BE);
  LOBYTE(v43) = *(v10 + (((v51 & 0xFFFFFF83 ^ 0xFFFFFF83) + (v51 & 0xFFFFFF83)) & 0x82) + 37);
  LOBYTE(STACK[0xF57]) = *(v10 + (v53 ^ 0x79126AF4u));
  *(v10 + (v53 ^ 0x79126AF4u)) = v43;
  v56 = 833 * ((v53 & 0x2A6 ^ 0xFFFFFD5B) + v55 + (v53 & 0x2A6 ^ 0xA5768FFD) - 2143287295 - (v53 & 0x3F2 ^ 0xA5768902 | v53 & 0x3F2 ^ 0x2F0) + 592);
  LOBYTE(v53) = STACK[0xEC7];
  LOBYTE(STACK[0xEC7]) = *(v10 + v56 % 0x3D1);
  v57 = 833 * v54 + 1038822705;
  *(v10 + (833 * v55 + 1348869751) % 0x3D1) = v53;
  LOBYTE(v56) = STACK[0x1208];
  LOBYTE(STACK[0x1208]) = *(v10 + v57 % 0x3D1);
  *(v10 + (v57 + 977) % 0x3D1) = v56;
  return (*(STACK[0xD40] + 8 * ((708 * (v8 < 0xEE5609BD)) ^ (v8 + a8))))(a1, 2016212632, 175);
}

uint64_t sub_1BADD2310@<X0>(int a1@<W8>)
{
  v5 = a1 + 833 * (v3 + v1);
  *(v4 + v5 % 0x3D1) = v3 + v1 - ((2 * (v3 + v1) + 24) & 0x5C) + 123;
  *(v4 + (v5 + 833) % ((v2 - 136) ^ 0x187u)) = v3 + v1 + 1 - ((2 * (v3 + v1 + 1) + 24) & 0x5E) + 123;
  return (*(STACK[0xD40] + 8 * ((472 * (v3 == 14)) ^ v2)))();
}

uint64_t sub_1BADD23BC(int a1, int a2, uint64_t a3, int a4, unsigned int a5, int a6)
{
  v13 = v11 + (a1 & 0xF ^ 5) * a4 - ((4396078 * (v11 + (a1 & 0xF ^ 5u) * a4)) >> 32) * a6;
  v14 = STACK[0x1246];
  LOBYTE(STACK[0x1246]) = *(v10 + v13);
  *(v10 + v13) = v14;
  v15 = v11 + (v6 - 8063941) % 0xFu * a4 + 833;
  v16 = v15 - ((4396078 * v15) >> 32) * a6;
  v17 = STACK[0x11B6];
  v18 = 2 * (((v8 - 1695502326) % 0xDu) & 7) + (((v8 - 1695502326) % 0xDu) ^ 0x5FFE59B7);
  LOBYTE(STACK[0x11B6]) = *(v10 + v16);
  *(v10 + v16) = v17;
  v19 = ((((v7 - 1711857441) % 0xEu) ^ (113 * (a2 ^ 0x25C)) ^ 0x62FF9B85) + 2 * ((v7 - 1711857441) % 0xEu)) * a4 - 566415045;
  v20 = STACK[0x1126];
  v21 = v8 - v7;
  v22 = v19 - ((((v19 * a5) >> 32) + ((v19 - ((v19 * a5) >> 32)) >> 1)) >> 9) * a6;
  v23 = (v21 + 16355115) ^ (v6 - 8063941);
  v24 = ((2 * v23) & 0xFF6B1F74) + (v23 ^ 0xFFB58FBA);
  LOBYTE(STACK[0x1126]) = *(v10 + v22);
  *(v10 + v22) = v20;
  v25 = (a1 ^ 0xB9CC97A5) + v6 - 8063941 + v24;
  LOBYTE(v22) = STACK[0x1096];
  v26 = v18 * a4 - 1520258892 - (((((v18 * a4 - 1520258892) * a5) >> 32) + ((v18 * a4 - 1520258892 - (((v18 * a4 - 1520258892) * a5) >> 32)) >> 1)) >> 9) * a6;
  v27 = (v25 + 4878406) % 0xC;
  LOBYTE(STACK[0x1096]) = *(v10 + v26);
  *(v10 + v26) = v22;
  v28 = v27 * a4 + v12;
  v29 = v28 - ((4396078 * v28) >> 32) * a6;
  v30 = v7 - v6;
  v31 = STACK[0x1006];
  v32 = (v27 * a4 + 108) & 0xBD1;
  v33 = v24 + v30;
  *(v10 + ((v29 - ((2 * v29) & 0x78E) + 444164039) & 0x156 ^ 0x10u) + ((v29 - ((2 * v29) & 0x78E) + 444164039) & 0x156 ^ 0x146u)) = *(v10 + ((v29 - ((2 * v29) & 0x78E) + 444164039) ^ 0x1A7967C7u));
  LOWORD(v26) = 3263 * v27 + 3987;
  v34 = v24 + v30 + 74937024;
  v35 = v34 + v21;
  v36 = v32 + (v26 & 0xBD1);
  v37 = v35 + v34 - ((2 * (v35 + v34) + 1943699794) & 0x6779D932) - 307614398;
  *(v10 + v28 % (v36 & 0xFFFFF7FF)) = v31;
  v38 = v12 + (v24 + 108994267) % 0xB * a4 + 833;
  v39 = v38 - ((4396078 * v38) >> 32) * a6;
  LOBYTE(v34) = STACK[0xF76];
  LOBYTE(STACK[0xF76]) = *(v10 + v39);
  *(v10 + v39) = v34;
  v40 = v35 - 2 * ((v35 + 90590556) & 0x30CA96DF ^ v35 & 2);
  v41 = v12 + (v33 - 1594799233) % 0xAu * a4 + 1666 - ((4396078 * (v12 + (v33 - 1594799233) % 0xAu * a4 + 1666)) >> 32) * a6;
  v42 = STACK[0xEE6];
  v43 = ((((v35 - 1653381142) % 9u) ^ 0xFD7FDFFF) + 2 * ((v35 - 1653381142) % 9u)) * a4 + 585944432;
  LOBYTE(STACK[0xEE6]) = *(v10 + v41);
  *(v10 + v41) = v42;
  LOBYTE(v41) = STACK[0x1227];
  v44 = v43 - ((((v43 * a5) >> 32) + ((v43 - ((v43 * a5) >> 32)) >> 1)) >> 9) * a6;
  LOBYTE(STACK[0x1227]) = *(v10 + v44);
  v45 = v24 + ((2 * v37) ^ 0x6779D932);
  v46 = v25 + ((v40 - 1238309831) ^ 0xB0CA96DD) - v45;
  v47 = v46 - 104115861;
  v46 += 743349879;
  v48 = v45 + 108994267;
  v49 = (v40 - 1238309831) ^ v37;
  v50 = v46 & 7 ^ 4;
  *(v10 + v44) = v41;
  v51 = (v46 - ((2 * v47) & 0x65069A18)) ^ (v40 - 1238309831);
  LOBYTE(v46) = (v46 - ((2 * v47) & 0x18)) ^ (v40 + 57) ^ 0x6D;
  v52 = ((2 * v51) & 0xF96BBF78 ^ 0x3B720) + (v51 ^ 0xFEFC046D);
  v53 = v12 + v50 * a4 + 3332 - ((4396078 * (v12 + v50 * a4 + 3332)) >> 32) * a6;
  LOBYTE(v44) = STACK[0x1197];
  LOBYTE(STACK[0x1197]) = *(v10 + v53);
  *(v10 + v53) = v44;
  v54 = (((v48 % 7) ^ 0x2999CF3F) + 2 * (v48 % 7)) * a4 - 1568058190;
  v55 = v54 - ((((v54 * a5) >> 32) + ((v54 - ((v54 * a5) >> 32)) >> 1)) >> 9) * a6;
  LOBYTE(v41) = STACK[0x1107];
  LOBYTE(STACK[0x1107]) = *(v10 + v55);
  *(v10 + v55) = v41;
  LOBYTE(v41) = STACK[0x1077];
  v56 = (((2 * ((v49 ^ 0x3767A44u) % 6)) & 0xC) + (((v49 ^ 0x3767A44u) % 6) ^ 0xE9DF2F7E)) * a4 + 13314804;
  v57 = v56 - ((((v56 * a5) >> 32) + ((v56 - ((v56 * a5) >> 32)) >> 1)) >> 9) * a6;
  v58 = ((((v52 - 2092294076) % 5) ^ 0xFD352FBF) + 2 * ((v52 - 2092294076) % 5)) * a4;
  LOBYTE(STACK[0x1077]) = *(v10 + v57);
  v59 = ((331 - v58) & a6) + ((v58 + 692) & a6);
  *(v10 + v57) = v41;
  v58 += 368335540;
  LOBYTE(v41) = STACK[0xFE7];
  LOBYTE(STACK[0xFE7]) = *(v10 + v58 % v59);
  *(v10 + v58 - ((((v58 * a5) >> 32) + ((v58 - ((v58 * a5) >> 32)) >> 1)) >> 9) * a6) = v41;
  v60 = -1751539303 - v52;
  LOBYTE(v52) = STACK[0xF57];
  v61 = v9 + (v47 & 3) * a4 - ((4396078 * (v9 + (v47 & 3) * a4)) >> 32) * a6;
  LOBYTE(STACK[0xF57]) = *(v10 + v61);
  *(v10 + v61) = v52;
  v62 = v9 + v60 % 3 * a4 + 833 - ((4396078 * (v9 + v60 % 3 * a4 + 833)) >> 32) * a6;
  LOBYTE(v60) = STACK[0xEC7];
  LOBYTE(STACK[0xEC7]) = *(v10 + v62);
  *(v10 + v62) = v60;
  v63 = (((2 * (((v46 + v23) ^ v49) & 1)) ^ 2) & 0xFFFFFFFE | ((v46 + v23) ^ v49) & 1) * a4 + 310709;
  v64 = v63 - ((((v63 * a5) >> 32) + ((v63 - ((v63 * a5) >> 32)) >> 1)) >> 9) * a6;
  LOBYTE(v62) = *(v10 + ((v64 - ((2 * v64) & 0x580) + 8896) & 0x23D ^ 0xE9E2F03D | (v64 - ((2 * v64) & 0x580) + 8896) & 0x23D ^ 0x200) + 371003675);
  LOBYTE(STACK[0x1208]) = *(v10 + ((v64 - ((2 * v64) & 0x580) - 257744192) ^ 0xF0A322C0));
  *(v10 + v64) = v62;
  v65 = ((1238309830 - v40) & 0x51) + ((35 - v35) & 0x51);
  v66 = *(&off_1E7F1D8C0 + a2 - 568) - 8;
  return (*(STACK[0xD40] + 8 * (a2 ^ (221 * ((v65 & 0xFFFFFFEF ^ 0x78F0FBAC) - 8394567 + ((2 * v65) & 0xFFFFFFC3 ^ 0x82) - 2020664486 < 0x100)))))();
}

uint64_t sub_1BADD2B68@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  v9 = v5 + 833 * ((v3 + 3) & 0xF);
  LOBYTE(v9) = *(v7 + (v9 - 977 * ((v9 * v4) >> 32))) ^ (16 * ~*(v7 + (833 * (((((a1 + 468) | 0x40) ^ a2) + v3) >> 4) + 279055) % (((4592 - 833 * (((((a1 + 468) | 0x40) ^ a2) + v3) >> 4)) | (833 * (((((a1 + 468) | 0x40) ^ a2) + v3) >> 4) - 3569)) & 0x3D1u)));
  v10 = v8 + 833 * ((*(v6 + (193 * (v9 ^ 0x2E) - 944 * (((6860185 * (v9 ^ 0x2Eu)) >> 16) >> 9))) ^ v9) ^ 0xE3);
  *(v7 + ((421 - v3) & 0x201 ^ v3 & 1 | 0x140) * (a2 + v3 + 993) % 0x3D1) = *(v7 + (v10 - 977 * ((v10 * v4) >> 32)));
  return (*(STACK[0xD40] + 8 * (((a2 + v3 + 923 < 0x100) * v2) ^ a1)))();
}

uint64_t sub_1BADD2CB0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(STACK[0xD40] + 8 * (a3 - 557));
  STACK[0xA50] = v3;
  return v4(1851714059, 833, 206615623, 977, 2443253237, 159, 193, 4549754);
}

uint64_t sub_1BADD2D58(int a1, int a2, unsigned int a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v15 = (v9 ^ 0x443F2) + ((v12 + 5) & 0xF) * a2;
  v16 = ~*(v13 + ((v12 + a5) >> 4) * a2 + 279055 - (((((((v12 + a5) >> 4) * a2 + 279055) * a3) >> 32) + ((((v12 + a5) >> 4) * a2 + 279055 - (((((v12 + a5) >> 4) * a2 + 279055) * a3) >> 32)) >> 1)) >> 9) * a4);
  v17 = (*(v13 + v15 - ((((v15 * a3) >> 32) + ((v15 - ((v15 * a3) >> 32)) >> 1)) >> 9) * a4) ^ a6 ^ (16 * v16 - ((32 * v16) & 0x40) - 81)) * a7 + 103062;
  v18 = v14 + (*(STACK[0xA50] + (v17 - ((v17 * a8) >> 32) * v10)) >> 4) * a2;
  LOBYTE(v18) = ~*(v13 + (v18 - ((v18 * v8) >> 32) * a4));
  *(v13 + v11 + v12 * a2 - (((((v11 + v12 * a2) * a3) >> 32) + ((v11 + v12 * a2 - (((v11 + v12 * a2) * a3) >> 32)) >> 1)) >> 9) * a4) = 16 * v18 - ((32 * v18) & 0x40) - 81;
  return (*(STACK[0xD40] + 8 * ((960 * (v12 + 1 != a1 + 256)) ^ v9)))();
}

uint64_t sub_1BADD2E7C()
{
  v7 = (833 * ((v2 - 1344860503) >> 4) + 279055) % 0x3D1 + v0 - ((2 * ((833 * ((v2 - 1344860503) >> 4) + 279055) % 0x3D1)) & 0x748);
  v8 = ~*(v5 + (v7 ^ v0));
  v9 = *(v5 + (((v2 + 9) & 0xF) * ((v3 + 1765213820) & 0x96C8FFE7 ^ 0xB20) + 279055) % 0x3D1) ^ ((v7 & 0xF9 ^ 0x59) + (v7 & 0xF9 ^ 0xA0)) ^ 0x49 ^ (16 * v8 - ((32 * v8) & 0x40) - 81);
  v10 = v6 + 833 * (*(v4 + (193 * v9 + 52110 - 944 * ((4549754 * (193 * v9 + 52110)) >> 32))) ^ 0x56);
  *(v5 + (833 * v2 + 718265017) % 0x3D1u) = *(v5 + (v10 - 977 * ((4396078 * v10) >> 32)));
  return (*(STACK[0xD40] + 8 * ((2288 * (v2 + 1 == v1 + 256)) ^ v3)))();
}

uint64_t sub_1BADD3008(unsigned int a1, int a2, int a3, int a4, unsigned int a5, int a6)
{
  v12 = v7 * a3;
  v13 = v11 + (*(v10 + v7 * a3 + 1218685231 - (((((v7 * a3 + 1218685231) * a1) >> 32) + ((v7 * a3 + 1218685231 - (((v7 * a3 + 1218685231) * a1) >> 32)) >> 1)) >> 9) * a2) ^ 0xA5) * a4 + 3392;
  v14 = *(v9 + (v13 - ((v13 * a5) >> 32) * a6));
  HIDWORD(v15) = (((v8 + 1509862622) & 0xA6014EDE) - 31) ^ v14;
  LODWORD(v15) = (v14 ^ 0xD4) << 24;
  v16 = (v15 >> 26) - ((2 * (v15 >> 26)) & 0x48) + 36;
  *(v10 + v12 + 1218985944 - (((((v12 + 1218985944) * a1) >> 32) + ((v12 + 1218985944 - (((v12 + 1218985944) * a1) >> 32)) >> 1)) >> 9) * a2) = v16 ^ 0x95 ^ (((v16 >> 1) & 0x64) - (v16 & 0x48) + 36);
  return (*(STACK[0xD40] + 8 * ((210 * (v7 + 1 == v6 + 16)) ^ v8)))();
}

uint64_t sub_1BADD3108@<X0>(int a1@<W8>)
{
  v7 = v5 + 833 * (*(v3 + (v6 + 193 * ((v1 + 144 + v2 - 1688550316) ^ 0xCu) + 1151) % 0x3B0) ^ (((v2 + 2) ^ 0xA) - ((2 * ((v2 + 2) ^ 0xA) + 36) & 0x2E) - 23) ^ 0xCD);
  *(v4 + (833 * v2 - 2106830447) % 0x3D1u) = *(v4 + (v7 - 977 * ((4396078 * v7) >> 32)));
  return (*(STACK[0xD40] + 8 * ((91 * (v2 + 1 != a1 + 16)) ^ v1)))();
}

uint64_t sub_1BADD31FC()
{
  v1 = LODWORD(STACK[0xD48]) == LODWORD(STACK[0xD38]);
  LODWORD(STACK[0xD48]) = 1302451973;
  LODWORD(STACK[0xD30]) = 1097317890;
  LODWORD(STACK[0xD28]) = v0 ^ 0x65;
  v2 = *(STACK[0xD40] + 8 * ((28 * (((((v0 ^ 0x65) - 97) ^ v1) & 1) == 0)) ^ v0));
  LODWORD(STACK[0xD10]) = 1574433247;
  v3 = STACK[0xA40];
  return v2();
}

uint64_t sub_1BADD3358(int a1, int a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8)
{
  v22 = a1 - 1129936405 * (v8 + *(v18 + v8)) - 1693342920;
  v23 = (a2 + v9 + (v13 ^ 0xDD20F4D8) + v12 + ((v22 % 0x101) ^ v22)) ^ (v16 + v21);
  v24 = (v15 & (2 * v23)) + (v23 ^ 0xFFFF33FB);
  v25 = v24 - ((2 * v24 + 920450040) & 0x6497DA66) - 843421905;
  v26 = v25 ^ (v9 + v12 + 635);
  v27 = v26 ^ a5;
  v28 = (v26 ^ a5) & 0x653CB61C ^ v26 & 4;
  v29 = a7 < a3;
  v30 = v27 + v10 - 2 * v28;
  v31 = v16 - v24 - ((2 * (v16 - v24) + 10892738) & a6) - 1748297335;
  v32 = ((2 * ((v25 ^ a5) + (v13 ^ v14))) & 0xFDDC1FF2) + (((v25 ^ a5) + (v13 ^ v14)) ^ 0xFEEE0FF9);
  HIDWORD(v33) = v25 ^ 0x24BED33;
  LODWORD(v33) = v25 ^ 0x30000000;
  v34 = (v30 ^ ((v33 >> 28) + v10 - ((2 * (v33 >> 28)) & 0xCA796C30))) - v32;
  v35 = (v34 - ((2 * v34 + 31203314) & a6) - 2140795231) ^ v31;
  v36 = v35 + v32;
  v37 = ((2 * (v35 + 1776743323 + (v30 ^ v10))) & 0x5FDFC9FE) + ((v35 + 1776743323 + (v30 ^ v10)) ^ 0xAFEFE4FF);
  v38 = (v35 + 1776743323) ^ v31;
  HIDWORD(v33) = v35 + 166130587;
  LODWORD(v33) = v35 + 1776743323;
  v39 = v36 + (v33 >> 28) - v37 - 2 * (((v33 >> 28) - v37 + 804250879) & (v36 + 1794696098)) + 451463329;
  v40 = v39 + a4 - ((2 * v39) & 0x79E23A28);
  v41 = v40 ^ ((v38 ^ 0x8177FEA8) + a4 - 2 * ((v38 ^ 0x8177FEA8) & (a4 + 1) ^ v38 & 1));
  v42 = ((2 * v41) & 0x7FFADF9E ^ 0x4458DF02) + (v41 ^ 0xDDD1006E);
  v43 = v42 + v36 - ((2 * (v42 + v36) + 1442244518) & (v19 + 2949)) + 1579413268;
  HIDWORD(v33) = v42 + 167985;
  LODWORD(v33) = v42 - (v43 & v20 ^ 0x4C818008 | v43 & v20 ^ 0x83201041) + 262414458;
  v44 = (v37 - v42 + (v43 ^ 0xB3287B41) + 269322960 + (v33 >> 30)) ^ v40;
  v45 = ((v17 + 3098) & (2 * v44) ^ 0xAD22E148) + (v44 ^ 0x96E8F59);
  if (v29 == a8 < a3)
  {
    v29 = a8 < a7;
  }

  return (*(STACK[0xD40] + 8 * ((212 * v29) ^ (v11 + 484))))(-1389011702 - v45);
}

uint64_t sub_1BADD371C@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xD48]) = v3;
  LODWORD(STACK[0xD30]) = v2;
  LODWORD(STACK[0xD10]) = a2 + 5445879;
  return (*(STACK[0xD40] + 8 * a1))(790555508, (a1 - 524819329), 1502628362, 2710160999, 209464146, 104732073, (a1 + 562), (LODWORD(STACK[0xD18]) + 169112075));
}

uint64_t sub_1BADD380C(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v12 = a8 < a3;
  v13 = (v8 ^ v11) - 1129936405 * (*(v10 + (v9 - 282992074)) + v9 - 282992074) + 1998746636;
  LODWORD(STACK[0xD28]) = a2 & 0x1F481DCF;
  if (v12 == v9 + 1219636289 < a3)
  {
    v12 = v9 + 1219636289 < a8;
  }

  return (*(STACK[0xD40] + 8 * ((488 * v12) ^ a7)))();
}

uint64_t sub_1BADD3B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0xD20]) = v6;
  LODWORD(STACK[0xD38]) = v5;
  LODWORD(STACK[0xA30]) = 0;
  v7 = STACK[0xD28];
  v8 = 191 * (LODWORD(STACK[0xD28]) ^ 0x4CF);
  LODWORD(STACK[0xA3C]) = LODWORD(STACK[0xD18]) + 1913872124;
  LODWORD(STACK[0xA38]) = v8 - 1047579649;
  v9 = *(STACK[0xD40] + 8 * v7);
  LODWORD(STACK[0x9D0]) = -1346059866;
  LODWORD(STACK[0xA10]) = -615949527;
  LODWORD(STACK[0xA08]) = -523309239;
  LODWORD(STACK[0x9B4]) = 2046363320;
  LODWORD(STACK[0x9F4]) = 309534606;
  LODWORD(STACK[0x9D8]) = 1200612640;
  LODWORD(STACK[0x9BC]) = 246983665;
  LODWORD(STACK[0xA04]) = -2069770644;
  LODWORD(STACK[0x9E4]) = 1336991262;
  LODWORD(STACK[0x9B8]) = 1909241579;
  LODWORD(STACK[0x9A4]) = 2145666207;
  LODWORD(STACK[0xA28]) = 2047097259;
  LODWORD(STACK[0xA34]) = 111860732;
  LODWORD(STACK[0x9B0]) = -194975650;
  LODWORD(STACK[0x9D4]) = -951274528;
  LODWORD(STACK[0x9C0]) = -1353754326;
  LODWORD(STACK[0x9E8]) = 1982104562;
  LODWORD(STACK[0x9F8]) = -1493255349;
  LODWORD(STACK[0x99C]) = -514079733;
  LODWORD(STACK[0x9E0]) = -1498724615;
  LODWORD(STACK[0x9EC]) = 61340400;
  LODWORD(STACK[0x9A8]) = 1605712097;
  LODWORD(STACK[0xA0C]) = -1575519630;
  LODWORD(STACK[0x9DC]) = 1518943109;
  LODWORD(STACK[0x9C4]) = -1330520193;
  LODWORD(STACK[0x994]) = -2082933460;
  LODWORD(STACK[0x9AC]) = 1078572296;
  LODWORD(STACK[0x9F0]) = 691111121;
  LODWORD(STACK[0x9A0]) = -935521206;
  LODWORD(STACK[0x9C8]) = 2029857106;
  LODWORD(STACK[0x998]) = -1543324583;
  LODWORD(STACK[0x9CC]) = 105020142;
  LODWORD(STACK[0xA4C]) = -2043677624;
  v10 = LODWORD(STACK[0xD10]);
  return v9(1170085454, a2, a3, 2710160999, a5, 4282249982, 100646381, 4194304000);
}

uint64_t sub_1BADD3DC4@<X0>(int a1@<W3>, char a2@<W8>)
{
  v5 = (LODWORD(STACK[0xD30]) ^ 0x22DF0B27) + LODWORD(STACK[0xD48]) - 1312713507;
  v6 = ((v3 + 1031310082) & 0xC287765B) + v5 + 2095024285 - ((2 * v5) & 0xF9BF19EE);
  v7 = v4 + LODWORD(STACK[0xD20]) - ((((v4 + LODWORD(STACK[0xD20])) << ((v3 + 3) & 0x5A ^ 0x5B)) + 1730105018) & 0xA3275518) + 86200809;
  v8 = LODWORD(STACK[0xD38]) ^ (v2 - 177961250) ^ v7;
  v9 = (((LODWORD(STACK[0xD20]) - 1551131805) ^ a1 ^ LODWORD(STACK[0xD38])) - ((2 * ((LODWORD(STACK[0xD20]) - 1551131805) ^ a1 ^ LODWORD(STACK[0xD38]))) & 0xA3275518) + 1368631948) ^ v7;
  v10 = ((2 * v6) & 0x5F3FF76E ^ 0x1C08B504) + (v6 ^ 0xA1DBA135);
  v11 = v8 ^ (v2 + 737129216);
  v12 = ((2 * v7) & 0xBDBFE9EE ^ 0x410E9E2) + (v7 ^ 0xFDD7880E);
  v13 = ((2 * ((v8 ^ 0xF01A6CEB) - v12 - 555748105)) & 0x6DD3F9F8) + (((v8 ^ 0xF01A6CEB) - v12 - 555748105) ^ 0xB6E9FCFC);
  v14 = ((v13 + 1226179332) ^ (v12 + v9 + 555748105)) - ((2 * ((v13 + 1226179332) ^ (v12 + v9 + 555748105))) & 0xE6498FD6) - 215693333;
  return (*(STACK[0xD40] + 8 * ((456 * (a2 & 1)) ^ v3)))(((2 * (v12 - 1071155650)) & 0xFF5FFE76 ^ 0xB855BC06) + ((v12 - 1071155650) ^ 0x23C52138), v11, v14, ((2 * (v10 - 278433922)) & 0x76FEEF96 ^ 0x30D4AC06) + ((v10 - 278433922) ^ 0xE715A9C8), v14 ^ v11);
}

uint64_t sub_1BADD4150@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W7>, int a5@<W8>)
{
  v9 = (a5 ^ 0x54FD27EA) - (((((v7 - 1114) | 0x250) ^ (a4 - 636)) & (2 * (v6 ^ v8)) ^ 0x70356F80) + (v6 ^ v8 ^ 0x45E5483F));
  v10 = v8 ^ 0x3A570F27;
  v11 = a2 ^ 0xB692EF3B;
  v12 = a1 + (a2 ^ 0xB692EF3B) - 2142240571 + (v5 ^ 0xC60A05CF);
  v13 = ((2 * (v5 ^ a2)) & 0x6D6E7FFA ^ 0x612055E8) + (v5 ^ a2 ^ 0x462FD509);
  return (*(STACK[0xD40] + 8 * v7))((v9 - 1387980622), (v13 - 1905583112), ((v11 + 917979133 + (a3 ^ 0x45B628D0) - v13) ^ 0x6EF7775A) - 36980232 + ((2 * (v11 + 917979133 + (a3 ^ 0x45B628D0) - v13)) & 0xDDEEEEB4), ((v10 + 2097151871 + v9 + 107) ^ 0x7FFD57CF) - 1178424841 + ((2 * (v10 + 2097151871 + v9 + 107)) & 0xFFFAAF9E), (v12 ^ 0x7FD9AAFD) - 167880709 + ((2 * v12) & 0xFFB355FA), 640105059);
}

uint64_t sub_1BADD4358@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W8>)
{
  v9 = a3 - 2118062625 + (a5 ^ 0xFF841C95);
  v10 = (a4 ^ 0xEECF13AF) + a1;
  v11 = a1 - 494828627;
  v12 = (v8 ^ v6 ^ 0x6DE7903F) - v9 + 1996515184;
  v13 = (((v6 ^ 0x34DB8F2) - 1421702259) & 0xD9D8C59D) + v9 + ((((v7 - 522) ^ 0x54BD7622) - (v6 ^ 0x34DB8F2)) & 0xD9D8C59D) - 87511538;
  v14 = ((2 * ((v5 ^ 0xC60A05CF) - 610206908)) & 0xFDB75DCE ^ 0x8C124DC2) + (((v5 ^ 0xC60A05CF) - 610206908) ^ 0xB9D2981E);
  return (*(STACK[0xD40] + 8 * v7))(v13, v14 - 1343916098, (a2 ^ v5 ^ 0x352EC224u) - v10 - 327995251, v12, ((v14 - 2128326375) ^ v11 ^ 0xFFF94EFB) + 1977529341 + ((2 * ((v14 - 2128326375) ^ v11)) & 0xFFF29DF6), 640105059);
}

uint64_t sub_1BADD4574(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0xAF0]) = v8 ^ v7;
  LODWORD(STACK[0xB40]) = 817390562 - v10;
  LODWORD(STACK[0xB48]) = a3 + 1602566658;
  LODWORD(STACK[0xB68]) = -256593258 - a4;
  LODWORD(STACK[0xD28]) = v9 + 538;
  v14 = (a5 - 1977090808) ^ (a3 + ((v9 + 538) ^ 0x933CCAC4));
  v15 = ((2 * v14) & 0xBDEAFED6) + (v14 ^ 0xDEF57F6B);
  v16 = ((v10 - 2005844031) ^ (a4 - 968884678) ^ 0x7A8D9BF6) - 545821222 + ((2 * ((v10 - 2005844031) ^ (a4 - 968884678))) & 0xF51B37EC);
  LODWORD(STACK[0xB60]) = -336999577 - v12;
  LODWORD(STACK[0xB20]) = a5 + 1419890391;
  LODWORD(STACK[0xAF4]) = -1485626208 - a2 - ((393966324 - 2 * a2) & 0x376AD64C);
  v17 = ((2 * (a1 - v11 + 1531452133)) & 0x7E7DDCEC ^ 0x21D1848) + ((a1 - v11 + 1531452133) ^ 0xFE717253);
  v18 = v17 + v16;
  LODWORD(STACK[0xA24]) = a5;
  v19 = v12 - a2 - ((2 * (v12 - a2) + 922473034) & 0x220CF792) - 1937480466;
  v20 = v16 + v11;
  v21 = a1 + 1003183144;
  v22 = v15 + a2;
  LODWORD(STACK[0xB28]) = v11 + 1381687852;
  LODWORD(STACK[0xB30]) = v15 + a2 - 1979579345;
  v23 = v10 - v11;
  LODWORD(STACK[0xB58]) = 1229151876 - v20;
  v24 = ((2 * (v15 + (v19 ^ 0x5049E7EC) + 554336405)) & 0xFB27FDCE) + ((v15 + (v19 ^ 0x5049E7EC) + 554336405) ^ 0x7D93FEE7);
  v25 = ((2 * v19) & 0x242FF2DA ^ 0x2003C2D8) + (v19 ^ 0x425E1E81);
  v26 = (((v19 ^ 0x5049E7EC) + v13) ^ 0x82FFDF5B) + 2145351672 + ((a7 + 201) & (2 * ((v19 ^ 0x5049E7EC) + v13)));
  LODWORD(STACK[0xB50]) = 1349916847 - v17;
  LODWORD(STACK[0xCA0]) = -2028963551 - (a5 - a2);
  LODWORD(STACK[0xB38]) = 1433338900 - v24;
  LODWORD(STACK[0xB00]) = v23 + 615560527;
  LODWORD(STACK[0xD38]) = v22 + v25 - 1291385766 - ((2 * (v22 + v25 - 1291385766) + 299081962) & 0x43138CCE) + 1785960156;
  v27 = *(STACK[0xD40] + 8 * v9);
  LODWORD(STACK[0xD48]) = v23 - 1390976291;
  LODWORD(STACK[0xAF8]) = 411059008;
  LODWORD(STACK[0xA5C]) = 23486680;
  LODWORD(STACK[0xA20]) = v21;
  LODWORD(STACK[0xB14]) = v21;
  LODWORD(STACK[0xA1C]) = v18 - 1474850905;
  LODWORD(STACK[0xB18]) = v18 - 1474850905;
  LODWORD(STACK[0xA2C]) = v26;
  LODWORD(STACK[0xB08]) = v26;
  return v27();
}

uint64_t sub_1BADD4A28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0xD20]) = LODWORD(STACK[0xA3C]) != LODWORD(STACK[0xA38]);
  v17 = (LODWORD(STACK[0xD28]) + 11602331) | (v11 + 2404);
  v18 = ((v10 - 52433071) ^ v16 ^ 0xDE1EFDFB) - 927291604 - ((2 * ((v10 - 52433071) ^ v16 ^ 0xDE1EFDFB)) & 0x91754E58);
  v19 = STACK[0xD38];
  v20 = LODWORD(STACK[0xAF0]) ^ LODWORD(STACK[0xD38]);
  v21 = (v18 ^ (v17 + v8 - 1830828290) ^ 0xC8BAA72C) + 1568252332 - 2 * ((v18 ^ (v17 + v8 - 1830828290) ^ 0xC8BAA72C) & 0x5D79A1AF ^ (v18 ^ (v17 + v8 - 1830828290)) & 3);
  LOBYTE(STACK[0x1246]) = v20 ^ 0x4D;
  v22 = ((v9 + a4) ^ v20 ^ 0xE2) + 31 - ((2 * ((v9 + a4) ^ v20 ^ 0xE2)) & 0x3E);
  LOBYTE(STACK[0x11F1]) = ((v18 ^ (v17 + v8 - 2) ^ 0x2C) - 84 - 2 * ((v18 ^ (v17 + v8 - 2) ^ 0x2C) & 0xAF ^ (v18 ^ (v17 + v8 - 2)) & 3)) ^ 0xE3;
  v23 = v21 ^ a8;
  LOBYTE(STACK[0xEB0]) = (((v10 + 81) ^ v16 ^ 0xFB) + 44 - ((2 * ((v10 + 81) ^ v16 ^ 0xFB)) & 0x58)) ^ 0x63;
  LOBYTE(STACK[0x11B6]) = v22 ^ 0xB0;
  v24 = STACK[0xD48];
  v25 = LODWORD(STACK[0xD48]) + a5;
  v26 = (v25 ^ 0x8B ^ v21 ^ a8) - ((2 * (v25 ^ 0x8B ^ v21 ^ a8)) & 0xA2) + 81;
  v27 = ((a7 + 99) ^ 0x1F ^ v22) - ((2 * ((a7 + 99) ^ 0x1F ^ v22)) & 0xB6) - 37;
  LOBYTE(v21) = v21 ^ a8 ^ 0xC4;
  LOBYTE(STACK[0x1161]) = v21;
  v28 = ((2 * v26) & 0xC0 ^ 0x7F) + (v26 ^ 0x51);
  v29 = STACK[0xB88];
  *(v29 + (((v10 + 922) ^ (101 - v10)) & 0x276)) = v27 ^ 0x74;
  v30 = v15 + v9 + (v19 ^ v13) + 840394928;
  LOBYTE(STACK[0x1096]) = (v27 ^ (v15 - 6) ^ 0xDB) - ((2 * (v27 ^ (v15 - 6) ^ 0xDB)) & 0x5E) - 81;
  LOBYTE(STACK[0x10D1]) = v28 - ((2 * v28 + 66) & 0x5E) - 112;
  v31 = v8 - v10 + v24 - 263939286;
  v32 = v9 + a7 + v30 - 2 * ((v9 + a7 + v30 + 1319098712) & 0x40F9A297 ^ (v9 + a7 + v30) & 2) + 261716973;
  LOBYTE(STACK[0x1006]) = v27 ^ 0x74;
  v33 = v8 + (a8 ^ a6) - 300056218 + v31 - 793772082 - ((2 * (v8 + (a8 ^ a6) - 300056218 + v31)) & 0xA16009B2) + 1291;
  v34 = v14 + v8 - ((2 * v8 - 1948318734) & 0xA54DBA8C) - 177;
  v35 = v30 - ((2 * v30 + 21440856) & 0x2C8721C) + 1711787450;
  v36 = (v35 ^ (v9 + 1472402380) ^ 0x8164390E) + 233219855 - 2 * ((v35 ^ (v9 + 1472402380) ^ 0x8164390E) & 0xDE6A72F ^ (v35 ^ (v9 + 1472402380)) & 0x20);
  v37 = v31 - ((2 * v31 + 1929434080) & 0x571AE3D6) - 452076581;
  v38 = v36 ^ v27;
  v39 = ((332 - v8 - ((12 - 2 * v8) & 0x8C)) ^ v34) & 0x101;
  v40 = (v37 ^ v34 ^ 0x6D64356) + 133256 + ((2 * (v37 ^ v34)) & 0xFFFBDFF6 ^ 0xF2535952);
  LOBYTE(STACK[0x1041]) = v21;
  v41 = (v40 + (v36 & 0x63 ^ 0x60 | v36 & 0x63 ^ 3) + 2074) ^ v23;
  LOBYTE(v21) = v41 ^ v33;
  v42 = v41 ^ v33 ^ v37;
  *(v29 + v39) = v41 ^ 0xC4;
  LODWORD(v39) = ((2 * (v40 + (v33 ^ 0x2F4FFB26) + 1918)) & 0xBEE2CFDE) + ((v40 + (v33 ^ 0x2F4FFB26) + 1918) ^ 0xDF7167EF);
  v43 = ((2 * (v25 + (v37 ^ 0xD4728E14) + 1)) & 0x3DFEBDFE) + ((v25 + (v37 ^ 0xD4728E14) + 1) ^ 0x9EFF5EFF);
  LOBYTE(STACK[0xF76]) = v38 ^ 0x7B;
  LOBYTE(STACK[0xEE6]) = v38 ^ v32 ^ 0xEE;
  LOBYTE(v40) = v38 ^ v32 ^ (v30 - ((2 * v30 + 88) & 0x1C) - 70);
  v44 = v33 ^ (v31 - 1067718526);
  v45 = (v35 ^ 0x7E9BC6F1) + v15 - ((2 * ((v35 ^ 0x7E9BC6F1) + v15) - 83044634) & 0xD1814E8E) + 1715933882;
  LOBYTE(STACK[0x1227]) = v40 ^ 0xE0;
  LOBYTE(STACK[0xF21]) = v21 ^ 0x1D;
  v46 = ((2 * (v31 - 1067718526 + (v44 ^ 0x4685ABCB) + 1)) & 0xFE5E8274) + ((v31 - 1067718526 + (v44 ^ 0x4685ABCB) + 1) ^ v12);
  v47 = v42 ^ (v43 + 1627431289);
  v48 = v47 ^ 0x6CC962A1;
  LOBYTE(STACK[0x1262]) = v42 ^ 0xF6;
  v49 = ((2 * ((v36 ^ 0xDE6A70F) - (v32 ^ 0x40F9A295))) & 0xF5D7FDFE) + (((v36 ^ 0xDE6A70F) - (v32 ^ 0x40F9A295)) ^ 0xFAEBFEFF);
  LOBYTE(v40) = v40 ^ ((v35 ^ 0xF1) + v15 - ((2 * ((v35 ^ 0xF1) + v15) - 26) & 0x8E) - 70);
  v50 = v32 ^ (v30 - 343993538);
  v51 = ((2 * (v30 - 343993538 + (v50 ^ 0xD6CC0D87) + 1)) & 0x6CEFF7DC) + ((v30 - 343993538 + (v50 ^ 0xD6CC0D87) + 1) ^ 0x3677FBEE);
  v52 = v39 + v46 - ((2 * (v39 + v46) + 1119792558) & 0x50259740) + 1232216695;
  LOBYTE(v19) = v52 & 0xE0 ^ 0x40 | v52 & 0xE0 ^ 0xA0;
  LOBYTE(v47) = (v47 & 0xE0 ^ 0xB8 | v47 & 0xE0 ^ 0x40) ^ v47 ^ 0xA1;
  v53 = v47 - ((2 * v47) & 0x5E);
  v54 = v49 + v51 - 1426063360 - ((2 * (v49 + v51) - 1657271770) & 0xB8C80958) + 2495;
  LOBYTE(STACK[0x11D2]) = v53 - 81;
  LOBYTE(STACK[0x1197]) = v40 ^ 0xA7;
  v55 = v48 ^ v52;
  LOBYTE(STACK[0x1142]) = ((((-47 * v19) & 0xE0) - ((2 * v19) & 0x40) - 72) ^ v55) - ((2 * ((((-47 * v19) & 0xE0) - ((2 * v19) & 0x40) - 72) ^ v55)) & 0x5E) - 81;
  v56 = ((2 * ((v43 - 830275463) ^ v44)) & 0xFFDBEFA6 ^ 0x72D0A820) + ((v43 - 830275463) ^ v44 ^ 0x4697A3E7);
  LOBYTE(v40) = (v49 + v51 - ((2 * (v49 + v51) + 38) & 0x58) - 65) ^ v40;
  LOBYTE(STACK[0x1107]) = v40 ^ 0xB;
  v57 = (v55 ^ v44 ^ (v46 - 2133803322) ^ 0xF93A228C) + 204552758 - 2 * ((v55 ^ v44 ^ (v46 - 2133803322) ^ 0xF93A228C) & 0xC313A37 ^ (v55 ^ v44 ^ (v46 - 2133803322)) & 1);
  LOBYTE(STACK[0x10B2]) = v55 ^ v44 ^ 0xC3;
  LOBYTE(v44) = v40 ^ v50;
  LOBYTE(v40) = v40 ^ v50 ^ 0x73;
  v58 = v50 ^ 0xC1F3553F ^ v45;
  LOBYTE(STACK[0x1077]) = v40;
  LOBYTE(STACK[0x1022]) = v57 ^ 0x79;
  v59 = ((2 * v52) & 0x96F7F79E ^ 0x6548318) + (v52 ^ 0xDC51BA63);
  LOBYTE(v40) = ((v51 + 18) ^ 0xDC ^ v44) - ((2 * ((v51 + 18) ^ 0xDC ^ v44)) & 0xD8) + 108;
  v60 = v58 - ((2 * v58 + 110346552) & 0xD6A611E) - 369159893;
  LOBYTE(STACK[0xFE7]) = v40 ^ 0xC3;
  v61 = v56 - ((2 * v56 + 112710034) & 0x251F6100) - 169109175;
  v62 = ((2 * v54) & 0x7FDBEDFE ^ 0x46990D40) + (v54 ^ 0xDCB1785F);
  LODWORD(v39) = v39 + v31;
  v63 = v62 + 740566035;
  LODWORD(v39) = v39 + v59;
  v64 = v60 ^ (v51 + 1847630357);
  v65 = v30 + 1004009357 + v49 + v62 + 740566035;
  LOBYTE(v30) = v40 ^ v60;
  LOBYTE(STACK[0xF57]) = v40 ^ v60 ^ 0x4C;
  v66 = v57 ^ v61;
  LOBYTE(v57) = (v30 ^ (v62 - 101) ^ 0xE3) - 29 - 2 * ((v30 ^ (v62 - 101) ^ 0xE3) & 0xFB ^ (v30 ^ (v62 - 101)) & 0x18);
  v67 = ((v59 + 74374859) ^ 0x9EBE8AB6 ^ v66) + 1646766699 - ((2 * ((v59 + 74374859) ^ 0x9EBE8AB6 ^ v66)) & 0xC44F54D6);
  LOBYTE(STACK[0xEC7]) = v57 ^ 0x4C;
  LOBYTE(v54) = (((((2 * v54) ^ 0x40) + (v54 ^ 0x5F) + 27) ^ (100 - (((2 * v54) ^ 0x40) + (v54 ^ 0x5F)))) & 0x40 | 0x16) ^ v66;
  LOBYTE(v30) = (((v59 - 53) ^ 0xB6 ^ v66) + 107 - ((2 * ((v59 - 53) ^ 0xB6 ^ v66)) & 0xD6)) ^ (((((v56 + 18) & 0xE0) - v56 - 19) & 0xE0) - ((2 * (((v56 + 18) & 0xE0) - v56 - 19)) & 0xC0) + 107);
  LOBYTE(v66) = v30 - ((2 * v30) & 0x5E) - 81;
  LOBYTE(STACK[0xF92]) = v54 + (~(2 * v54) | 0xA1) - 80;
  v68 = v61 ^ (v46 + 627659977);
  v69 = v39 + v56;
  v70 = (((v39 - 447127714) ^ 0x6227AA6B ^ v67) - ((2 * ((v39 - 447127714) ^ 0x6227AA6B ^ v67)) & 0xB1035394) + 1484892618) ^ v68;
  LOBYTE(STACK[0xF02]) = v66;
  v71 = (v39 - 447127714) ^ v68;
  LOBYTE(STACK[0x1208]) = (((v65 + 58) ^ 0xE3 ^ v57) - ((2 * ((v65 + 58) ^ 0xE3 ^ v57)) & 0xF0) - 8) ^ 0x57;
  LOBYTE(STACK[0x1243]) = (((v39 + 94) ^ 0x6B ^ v67) - ((2 * ((v39 + 94) ^ 0x6B ^ v67)) & 0x94) - 54) ^ 0x85;
  v72 = v39 + v59 - ((2 * (v39 + v59) - 745505710) & 0x87F2906E) + 767657568;
  LOBYTE(v66) = v64 ^ (((v65 + 58) ^ 0xE3 ^ v57) - ((2 * ((v65 + 58) ^ 0xE3 ^ v57)) & 0xF0) - 8);
  LODWORD(v39) = ((2 * (v65 - 1735140294 + (v60 ^ 0x86B5308F))) & 0x8FFAF8B6) + ((v65 - 1735140294 + (v60 ^ 0x86B5308F)) ^ 0x47FD7C5B);
  v73 = v62 - v39 + 1476026358;
  v74 = (v73 ^ (v39 - 1207794779)) + 986076976 - ((2 * (v73 ^ (v39 - 1207794779))) & 0x758CAE60);
  v75 = v66 ^ v74;
  LOBYTE(v62) = v66 ^ 0xD8;
  LOBYTE(STACK[0x11B3]) = v70 ^ 5;
  v76 = v69 + 1219840039;
  v77 = v59 - v69 + (v72 & 0x300080CA ^ 2 | v72 & 0x300080CA ^ 0x300080C8);
  v78 = v71 ^ v72 ^ 0xD176F8B7;
  v79 = v71 ^ v72 ^ 0x5BC647E0;
  LOBYTE(STACK[0x1178]) = v62;
  v80 = v63 + 2087492546 + v65;
  v81 = (v64 ^ 0x86B5308F ^ v80 ^ (v65 - 1735140294)) + 2146581302 - ((2 * (v64 ^ 0x86B5308F ^ v80 ^ (v65 - 1735140294))) & 0xFFE4766C);
  v82 = v81 ^ 0x7FF23B36;
  v83 = ((2 * (v82 + v73)) & 0xE3EFBFF2) + ((v82 + v73) ^ 0xF1F7DFF9);
  v84 = (v77 - 1950804518) ^ v76;
  v85 = ((2 * (v77 + v78 + 1704057719)) & 0xFF37D4EE) + ((v77 + v78 + 1704057719) ^ 0xFF9BEA77);
  v86 = (v75 ^ 0xE) & 8 ^ 0x7FFDB3E9;
  v87 = v85 - ((2 * v85 + 1293328344) & 0x6D5D28BC) - 583408566;
  v88 = v70 ^ v84;
  v89 = v85 - ((2 * v85 + 190232136) & 0x139454F2) - 9075299;
  v90 = (v72 ^ 0x43F94837) - v84 - ((2 * ((v72 ^ 0x43F94837) - v84)) & 0x93338A26) + 1234814227;
  v91 = -671496383 - v86;
  if (((v86 - 2147333089) & (v83 + 7)) == 0)
  {
    v91 = v86 - 671195265;
  }

  v92 = (v83 - 1240724313 + v91) ^ (v75 ^ 0xE) & 0xF7;
  LOBYTE(STACK[0x10E8]) = v75 ^ 0xE8;
  v93 = v88 ^ v87 ^ v90;
  v94 = v80 + (v74 ^ 0x3AC65730) + ((2 * v74) ^ 0x8A73519F) + 1 - ((2 * (v80 + (v74 ^ 0x3AC65730) + ((2 * v74) ^ 0x8A73519F) + 1)) & 0xDC5559A) + 115518157;
  LOBYTE(STACK[0x1058]) = v92 ^ 0xEE;
  v95 = v92 ^ v94;
  LOBYTE(STACK[0xFC8]) = v92 ^ v94 ^ 0x23;
  v96 = v93 ^ v79;
  LOBYTE(STACK[0x1123]) = v88 ^ 5;
  LOBYTE(STACK[0x1093]) = v88 ^ v87 ^ 0x5B;
  v97 = v89 ^ v84;
  v98 = v93 ^ v79 ^ v89 ^ v84;
  v99 = v95 ^ v81;
  LOBYTE(STACK[0xF38]) = v95 ^ v81 ^ 0x15;
  LOBYTE(STACK[0x1003]) = v93 ^ 0x48;
  v100 = v87 ^ v79 ^ v89;
  v101 = ((2 * ((v87 ^ v79 ^ 0x3C1E2B09) + 1887356738)) & 0xDFFBC5FE) + (((v87 ^ v79 ^ 0x3C1E2B09) + 1887356738) ^ 0x6FFDE2FF);
  v102 = (v82 ^ (v83 + 235413511)) + 561396128 - ((2 * (v82 ^ (v83 + 235413511))) & 0x42EC7340);
  v103 = v83 - ((2 * v83 - 1169140098) & 0x8775D776) + 551753466;
  v104 = v103 ^ v74;
  v105 = v103 ^ v74 ^ v94;
  v106 = v97 ^ v90;
  LOBYTE(STACK[0xF73]) = v96 ^ 0x1F;
  v107 = v98 ^ v100 ^ v97 ^ v90 ^ 0xE2740C11;
  v108 = v102 ^ v103;
  v109 = v103 ^ v74 ^ v99;
  LOBYTE(STACK[0x1279]) = v109 ^ 0x8C;
  v110 = v109 ^ v102 ^ v103 ^ v105;
  v111 = v109 ^ v102 ^ v103 ^ 0x97;
  LOBYTE(STACK[0x1224]) = v98 ^ v100 ^ 4;
  v112 = (v107 ^ 0x21B03F22 ^ (v101 - 1878909695)) - ((2 * (v107 ^ 0x21B03F22 ^ (v101 - 1878909695))) & 0x28470DC8) - 1809611036;
  LOBYTE(STACK[0x11E9]) = v111;
  v113 = (v97 ^ v90 ^ 0xC432F585) - 1878909695 + v101 + 1;
  v114 = ((2 * v113) & 0xFAFE7FEA) + (v113 ^ 0xFD7F3FF5);
  v115 = ((2 * ((v100 ^ 0x35D40170) - (v97 ^ v90 ^ 0x3BCD0A7A))) & 0xFFFF59F6) + (((v100 ^ 0x35D40170) - (v97 ^ v90 ^ 0x3BCD0A7A)) ^ 0x7FFFACFB);
  v116 = ((2 * ((v102 ^ 0x217639A0) + 1887356738)) & 0x9FEB5DBE) + (((v102 ^ 0x217639A0) + 1887356738) ^ 0x4FF5AEDF);
  LOBYTE(STACK[0xEE3]) = v98 ^ 0x74;
  LOBYTE(STACK[0x1159]) = v110 ^ 0xC3;
  v117 = v97 ^ 0xDC75BC6B ^ (v114 + 41992203);
  v118 = (v110 ^ (v116 - 1341501151) ^ 0x1D3EE96C) - ((2 * (v110 ^ (v116 - 1341501151) ^ 0x1D3EE96C)) & 0x3B2B7338) - 1651132004;
  LOBYTE(STACK[0x10C9]) = ((v110 ^ (v116 + 33) ^ 0x6C) - ((2 * (v110 ^ (v116 + 33) ^ 0x6C)) & 0x38) - 100) ^ 0x33;
  LOBYTE(STACK[0x1194]) = v107 ^ 0x6D;
  v119 = ((2 * ((v105 ^ 0xFBFF0CA9) - 1341501151 + v116 + 1)) & 0xBBFD6EEE) + (((v105 ^ 0xFBFF0CA9) - 1341501151 + v116 + 1) ^ 0x5DFEB777);
  v120 = v114 + v115 - 2 * ((v114 + v115 + 42013456) & 0x8F08B97 ^ (v114 + v115) & 2) + 191995557;
  v121 = v117 - v115 - ((2 * (v117 - v115) + 2147441142) & 0x6823D2A4) - 1273915827;
  v122 = ((2 * ((v108 ^ 0x62CCD21B) - (v105 ^ 0x400F356))) & 0xFF7FFEFE) + (((v108 ^ 0x62CCD21B) - (v105 ^ 0x400F356)) ^ 0x7FBFFF7F);
  v123 = (v104 ^ 0xACC32A99 ^ (v119 - 1576974199)) - v122 - ((2 * ((v104 ^ 0xACC32A99 ^ (v119 - 1576974199)) - v122) - 8388866) & 0x890D572A) + 1145482004;
  v124 = v123 ^ v118;
  LOBYTE(v103) = v121 ^ v112;
  v125 = v121 ^ v106;
  LOBYTE(STACK[0x1039]) = v123 ^ v118 ^ 0xA6;
  LOBYTE(STACK[0x1104]) = v112 ^ 0xAB;
  v126 = v119 + v122 - ((2 * (v119 + v122) + 75665940) & 0x1A507DAA) + 795445215;
  v127 = v121 ^ v112 ^ (v115 - 2147462226);
  v128 = ((2 * (v121 ^ v120)) & 0xD6EAF1FC ^ 0x50C2C18C) + (v121 ^ v120 ^ 0x57941A39);
  LOBYTE(v119) = v103 ^ 0xF9;
  v129 = v123 ^ v105;
  v130 = v125 ^ v127 ^ v120;
  v131 = (v124 ^ (v122 - 1671613142) ^ 0x59131209) - 2 * ((v124 ^ (v122 - 1671613142) ^ 0x59131209) & 0x730E6ABC ^ (v124 ^ (v122 - 1671613142)) & 0x20) - 217159012;
  LOBYTE(STACK[0x1074]) = v119;
  v132 = ((2 * (v123 ^ v126)) & 0xDCF5D5EE ^ 0x90550080) + (v123 ^ v126 ^ 0xA7D47FB7);
  v133 = v122 - v132;
  LOBYTE(STACK[0xFA9]) = v131 ^ 0x33;
  v134 = v123 ^ v105 ^ v131;
  LOBYTE(STACK[0xF54]) = v125 ^ v127 ^ 0xD1;
  v135 = (v125 ^ 0xFDCE328) + 344622850 + v128 - ((2 * ((v125 ^ 0xFDCE328) + 344622850 + v128)) & 0x991C2724) + 1284379538;
  v136 = (v129 ^ 0xC08658C3) - 1853549303 + v132 - ((2 * ((v129 ^ 0xC08658C3) - 1853549303 + v132)) & 0x90F879AE) + 1216101591;
  LOBYTE(STACK[0xF19]) = v134 ^ 0xF0;
  LOBYTE(STACK[0xFE4]) = v127 ^ 0xF9;
  LOBYTE(STACK[0x125A]) = v134 ^ v126 ^ 0x25;
  LOBYTE(STACK[0xEC4]) = v130 ^ 0x44;
  v137 = v133 - 2 * ((v133 + 599854676) & 0x7BAD507F ^ v133 & 1) + 527326930;
  v138 = v130 ^ v121 ^ 0x62DB068E;
  v139 = v115 - v128 - ((2 * (v115 - v128) + 1089985982) & 0x8A98EAFA) + 1707631708;
  LOBYTE(STACK[0x1205]) = v135 ^ v138 ^ 0xA;
  v140 = ((v115 + 471697326) & 0x65C92BD3) + ((1675786321 - v115) & 0x65C92BD3);
  v141 = v140 - ((2 * v140) & 0x87B46206) - 740413173;
  v142 = v136 ^ v141;
  v143 = v135 ^ 0x6C0B4D3C ^ v139;
  v144 = v138 ^ 0x97BBE7C9 ^ v120 ^ v139;
  v145 = v134 ^ v126 ^ v123 ^ v136;
  LOBYTE(STACK[0x11CA]) = v145 ^ 0x67;
  LOBYTE(STACK[0x10E5]) = v138 ^ 0xC9 ^ ~v139;
  v146 = v145 ^ v137 ^ v136 ^ v141;
  LOBYTE(STACK[0x113A]) = v145 ^ v137 ^ 0x19;
  LOBYTE(v145) = v135 ^ v138 ^ v139 ^ 0x77;
  v147 = v126 ^ v141;
  LOBYTE(STACK[0x1175]) = v145;
  v148 = ((2 * v121) & 0xFF7DFDDC ^ 0xA3318500) + (v121 ^ 0xAE663C6F);
  v149 = ((2 * ((v120 ^ 0xED39A046) - 173544328)) & 0xFF31EEFE) + (((v120 ^ 0xED39A046) - 173544328) ^ 0xFF98F77F);
  v150 = v146 ^ v126 ^ v141;
  v151 = v148 - ((2 * v148 + 21927118) & 0xED271738) - 147139069;
  LOBYTE(STACK[0x10AA]) = v146 ^ 0xC5;
  v152 = v141 ^ 0x17589A9E ^ v123;
  v153 = v152 - 2140780203;
  LOBYTE(STACK[0x101A]) = v150 ^ 0x1B;
  LOBYTE(STACK[0xFC5]) = (v148 - ((2 * v148 - 50) & 0x38) + 3) ^ v144 ^ 0x25;
  v154 = (v135 ^ 0x29473841) - v149 - ((2 * ((v135 ^ 0x29473841) - v149) + 315171036) & 0x9C055F1C) - 681099268;
  v155 = (v150 ^ (v152 - 2140780203) ^ 0x8CA3C9B4) + 2096398693 - ((2 * (v150 ^ (v152 - 2140780203) ^ 0x8CA3C9B4)) & 0xF9E902CA);
  LOBYTE(v146) = ((v150 ^ (v152 + 85) ^ 0xB4) + 101 - ((2 * (v150 ^ (v152 + 85) ^ 0xB4)) & 0xCA)) ^ 0xCA;
  v156 = v151 ^ v144 ^ 0x5D407A6A ^ (v143 + v148 - 2136520089);
  v157 = v156 - ((2 * v156) & 0x1B194FF8) + 227321852;
  LOBYTE(STACK[0xF8A]) = v146;
  LOBYTE(STACK[0x1055]) = v144 ^ 0xB9;
  v158 = (v142 ^ 0xE00F5DA2 ^ v137) + v152;
  v159 = v142 ^ 0x9BA20DDC;
  v160 = ((2 * ((v147 ^ 0xDEF60FDE) - 173544328)) & 0x79FFB6A6) + (((v147 ^ 0xDEF60FDE) - 173544328) ^ 0x3CFFDB53);
  v161 = ((v158 - 2140780203) ^ 0x7CF48165 ^ v155) - ((2 * ((v158 - 2140780203) ^ 0x7CF48165 ^ v155)) & 0xD87A6728) - 331533420;
  LOBYTE(STACK[0xEFA]) = v161 ^ 0x3B;
  LOBYTE(v146) = v157 ^ v154;
  v162 = v159 - v160 - 2 * ((v159 - v160 + 1187738690) & 0x6D534901 ^ (v159 - v160) & 1) - 1273053886;
  v163 = ((v149 + 6752385) ^ 0x4B317786) - 2 * (((v149 + 6752385) ^ 0x4B317786) & 0x780DECB8 ^ (v149 + 6752385) & 8) - 133305168;
  v164 = v161 ^ v162;
  LOBYTE(STACK[0x123B]) = v161 ^ v162 ^ 0x3B;
  v165 = v157 ^ v154 ^ v163;
  v166 = v154 ^ v151;
  v167 = (v162 ^ v153 ^ 0x6D534900) + 539404869 - 2 * ((v162 ^ v153 ^ 0x6D534900) & 0x2026AA65 ^ (v162 ^ v153) & 0x20);
  v168 = ((2 * (v166 ^ v163)) & 0x79F8F6B6 ^ 0x1389004) + (v166 ^ v163 ^ 0x7C60B3F9);
  LOBYTE(STACK[0x1276]) = v146 ^ 0x3D;
  v169 = ((v160 - 1023400787) ^ 0x4B317786) - ((2 * ((v160 - 1023400787) ^ 0x4B317786)) & 0x555A4CCE) + 715990631;
  v170 = v168 + v143 + v148;
  v171 = v164 ^ v169;
  v172 = ((2 * (v167 ^ v169)) & 0xFDEF7370 ^ 0x15071040) + (v167 ^ v169 ^ 0x747C359A);
  LOBYTE(STACK[0x11E6]) = v165 ^ 0x8D;
  v173 = v172 + v158;
  v174 = (v166 ^ 0xB8912412) + 1135267596 + v170 + 194418465 - ((2 * ((v166 ^ 0xB8912412) + 1135267596 + v170)) & 0x172D2E42);
  LOBYTE(STACK[0xF35]) = v157 ^ 0xB3;
  LOBYTE(STACK[0x11AB]) = v171 ^ 0x5C;
  v175 = v148 + 341875991 + (v174 ^ 0xB969721) + 1199890607 - ((2 * (v148 + 341875991 + (v174 ^ 0xB969721))) & 0x8F09C15E);
  v176 = (v167 ^ 0x2026AA45) + 24022941 + v173 + 824222107 - ((2 * ((v167 ^ 0x2026AA45) + 24022941 + v173)) & 0x62414336);
  v177 = ((2 * ((v176 ^ 0x3120A19B) + v153)) & 0xF54FEF7E) + (((v176 ^ 0x3120A19B) + v153) ^ 0xFAA7F7BF);
  v178 = v173 - ((2 * v173 - 1615193426) & 0x8FFE3266) - 1747179894;
  v179 = v170 + 1931557110 + ((-607295886 - 2 * v170) | 0x3DF027A1);
  v180 = v177 - ((2 * v177 + 841135586) & 0xE632C43C) - 1943356145;
  LOBYTE(STACK[0x111B]) = (v177 - ((2 * v177 - 30) & 0x3C) + 15) ^ v171 ^ 0x42;
  v181 = v175 ^ v165;
  v182 = v180 ^ v171 ^ v178;
  LOBYTE(v171) = v181 ^ 0x22;
  v183 = v181 ^ v179;
  LOBYTE(STACK[0x1156]) = v171;
  LOBYTE(STACK[0x108B]) = v182 ^ 0x71;
  v184 = v183 ^ v174;
  v185 = v182 ^ v176;
  LOBYTE(v144) = v182 ^ v176 ^ 0xEA;
  LOBYTE(STACK[0x1036]) = v183 ^ v174 ^ 0x2C;
  v186 = ((2 * (v174 ^ v179)) & 0xFEED67FE ^ 0xD420661C) + (v174 ^ v179 ^ 0x95E7C8F1);
  v187 = ((2 * (v175 ^ v174)) & 0xFF7BBFFA ^ 0x9820AF18) + (v175 ^ v174 ^ 0xB3AFA873);
  v168 += 1982971758;
  v188 = (v168 ^ 0x16967F63 ^ v184) - ((2 * (v168 ^ 0x16967F63 ^ v184)) & 0x39761FA) - 2117357315;
  LOBYTE(STACK[0x10C6]) = v183 ^ 0xD;
  v189 = ((2 * (v168 + (v179 ^ 0x9EF813D0) + 1)) & 0xEEE97FB6) + ((v168 + (v179 ^ 0x9EF813D0) + 1) ^ 0xF774BFDB);
  v190 = v187 + (v175 ^ 0x4784E0AF) - 2 * ((v187 + (v175 ^ 0x4784E0AF) + 343685192) & 0x54C9DFBD ^ (v187 + (v175 ^ 0x4784E0AF)) & 1) - 381282300;
  LOBYTE(STACK[0xFFB]) = v144;
  v172 += 875987217;
  v191 = (v172 ^ 0xAE058645 ^ v185) - ((2 * (v172 ^ 0xAE058645 ^ v185)) & 0x68D5E9B6) - 1268058917;
  v192 = ((2 * (v172 + (v178 ^ 0x3800E6CC) + 1)) & 0x5EEDFFDC) + ((v172 + (v178 ^ 0x3800E6CC) + 1) ^ 0x2F76FFEE);
  LOBYTE(STACK[0xF6B]) = v191 ^ 0x74;
  v193 = v176 ^ 0xF6DFB8A8 ^ v178;
  v194 = ((2 * (v180 ^ v176)) & 0xF2FEAB7E ^ 0x8072830A) + (v180 ^ v176 ^ 0x3B46963A);
  v195 = v187 + v189 - 2 * ((v187 + v189 + 147677224) & 0x170F0533 ^ (v187 + v189) & 1) - 1612946086;
  LOBYTE(STACK[0xFA6]) = v188 ^ 0xB2;
  v196 = v190 ^ v188;
  v197 = v194 + v177 - ((2 * (v194 + v177) + 1738029806) & 0x4D394B32) - 630668528;
  v198 = v197 ^ v191;
  v199 = v194 + v192 - ((2 * (v194 + v192) + 236147878) & 0xF989972) - 556402932;
  LOBYTE(STACK[0xEDB]) = (v194 + v177 - ((2 * (v194 + v177) - 18) & 0x32) + 16) ^ v191 ^ 0xED;
  v200 = v186 + 34337308;
  v201 = (v198 ^ (v193 + 787457247) ^ 0x92F65142) - 2 * ((v198 ^ (v193 + 787457247) ^ 0x92F65142) & 0x22EC49C9 ^ (v198 ^ (v193 + 787457247)) & 8) - 1561572927;
  LOBYTE(STACK[0xF16]) = v196 ^ 0xE;
  LOBYTE(STACK[0x1257]) = v196 ^ (v186 - 32) ^ 0xE;
  v202 = ((v189 + 654223130) ^ 0xC20D6A73 ^ v196 ^ (v186 + 8998112) ^ v195) - ((2 * ((v189 + 654223130) ^ 0xC20D6A73 ^ v196 ^ (v186 + 8998112) ^ v195)) & 0x808E1930) + 1078398104;
  LOBYTE(STACK[0x121C]) = v201 ^ 0x6E;
  v203 = v201 ^ v199;
  v204 = v186 + v189;
  LOBYTE(STACK[0x118C]) = v203 ^ 0xD7;
  v205 = ((v192 - 285448441) ^ 0xA5200578 ^ v203) + 297599654 - ((2 * ((v192 - 285448441) ^ 0xA5200578 ^ v203)) & 0x237A054C);
  LOBYTE(STACK[0x11C7]) = v196 ^ (v186 - 32) ^ v195 ^ 0x3C;
  v206 = 2113146339 - v186;
  v186 -= 1473041281;
  v207 = ((v204 - 818818151) ^ 0x970F0532 ^ v195) + v186 - ((2 * (((v204 - 818818151) ^ 0x970F0532 ^ v195) + v186)) & 0x5CEF533E) - 1367889505;
  v208 = (v186 ^ 0x72EC7F6C) + 1077987693 - ((2 * (v186 ^ 0x72EC7F6C)) & 0x808192DA);
  LOBYTE(STACK[0x10FC]) = (((v192 + 7) ^ 0x78 ^ v203) - 90 - ((2 * ((v192 + 7) ^ 0x78 ^ v203)) & 0x4C)) ^ 9;
  v209 = (v206 & 0x78BA3B9F) + (v200 & 0x78BA3B9F) + v193;
  v210 = v192 + v209;
  LOBYTE(STACK[0x1137]) = v202 ^ 0xD7;
  v211 = v209 + 787457247;
  v212 = ((v210 + 502008806) ^ 0x7CC4CB9 ^ v199) + v209 + 787457247;
  v213 = v212 - ((2 * v212) & 0xB30293D6) + 1501645291;
  v214 = v207 ^ v190 ^ v202;
  v215 = (v211 ^ 0x72EC7F6C) + 141136960 - ((2 * (v211 ^ 0x72EC7F6C)) & 0x10D32880);
  v216 = v205 ^ ((v213 ^ v197 ^ 0x7F1DEC72) + 297599654 - 2 * ((v213 ^ v197 ^ 0x7F1DEC72) & 0x11BD02AF ^ (v213 ^ v197) & 9));
  LOBYTE(STACK[0x106C]) = v216 ^ 0xCA;
  v217 = v216 ^ v215;
  LOBYTE(STACK[0x10A7]) = v214 ^ 0x91;
  LOBYTE(STACK[0xFDC]) = v216 ^ v215 ^ 0x8A;
  v218 = v214 ^ v208 ^ v207;
  v219 = ((2 * v190) & 0x7AF7439C ^ 0x58E60390) + (v190 ^ 0x538CE817);
  LOBYTE(STACK[0xF4C]) = v217 ^ v213 ^ 0x61;
  v220 = (v218 ^ (v204 - 1039558003) ^ 0x6EF08C2C) - 1998795930 - 2 * ((v218 ^ (v204 - 1039558003) ^ 0x6EF08C2C) & 0x8DCCB77 ^ (v218 ^ (v204 - 1039558003)) & 0x11);
  LOBYTE(STACK[0x1017]) = v214 ^ v208 ^ 0xFC;
  v221 = ((2 * ((v208 ^ 0x4040C96D) + 1602141661)) & 0xFF7FF1FE) + (((v208 ^ 0x4040C96D) + 1602141661) ^ 0x7FBFF8FF);
  v222 = v221 + v204 - ((2 * (v221 + v204) - 2070723812) & 0xA55C5E70) - 1795698490;
  v223 = ((v210 + 281268954) ^ 0xEBD64BCE ^ v217 ^ v213) - ((2 * ((v210 + 281268954) ^ 0xEBD64BCE ^ v217 ^ v213)) & 0xC5F9E302) - 486739583;
  LOBYTE(STACK[0xEF7]) = ((v218 ^ (v204 - 115) ^ 0x2C) + 102 - 2 * ((v218 ^ (v204 - 115) ^ 0x2C) & 0x77 ^ (v218 ^ (v204 - 115)) & 0x11)) ^ 0x29;
  LOBYTE(STACK[0xEBC]) = (((v210 - 38) ^ 0xCE ^ v217 ^ v213) - ((2 * ((v210 - 38) ^ 0xCE ^ v217 ^ v213)) & 2) - 127) ^ 0x2E;
  v224 = ((2 * v197) & 0xBFF7FDFC ^ 0x394465F8) + (v197 ^ 0xC359CD02);
  v225 = ((2 * ((v215 ^ 0x8699440) + 1602141661)) & 0xEF1FFBFA) + (((v215 ^ 0x8699440) + 1602141661) ^ 0xF78FFDFD);
  v226 = ((2 * (v219 - 1031512526 + (v222 ^ 0x52AE2F38))) & 0xDFDBFE8E) + ((v219 - 1031512526 + (v222 ^ 0x52AE2F38)) ^ 0x6FEDFF47);
  v227 = v225 + v210;
  v228 = v226 - 2129266260 - ((2 * v226 + 1063723524) & 0x42C4D154);
  LOBYTE(STACK[0xF87]) = v218 ^ 0x63;
  v229 = ((v226 - 1877868359) ^ 0x88DCCB66 ^ v220) - ((2 * ((v226 - 1877868359) ^ 0x88DCCB66 ^ v220)) & 0x6748AB94) - 1281075766;
  v230 = v221 - v219 - ((2 * (v221 - v219) + 7819678) & 0xF225FA) + 1043643340;
  v231 = v225 - v224;
  v232 = v224 + v227 - 729095616 - ((2 * (v224 + v227) + 846179262) & 0x36A6260A) + 1700;
  LOBYTE(STACK[0x11FD]) = v223 ^ (v224 + v227 + 64 - ((2 * (v224 + v227) - 66) & 0xA) - 92) ^ 0x2B;
  v233 = (((v214 ^ 0xC1) & (v214 ^ 0x3E)) + 1171901542) ^ v207;
  v234 = ((2 * v233) & 0xEFB13FFC ^ 0x4CA1133C) + (v233 ^ 0x59AF3661);
  LOBYTE(STACK[0x116D]) = ((v223 ^ v232 ^ (v231 + 1) ^ 0x84) + 48 - 2 * ((v223 ^ v232 ^ (v231 + 1) ^ 0x84) & 0x38 ^ (v223 ^ v232 ^ (v231 + 1)) & 8)) ^ 0x9F;
  LOBYTE(STACK[0x1238]) = v229 ^ 0x85;
  v235 = v213 ^ 0x1C58858D;
  LOBYTE(v213) = v229 ^ (v221 - v219 - ((2 * (v221 - v219) - 98) & 0xFA) - 52);
  v236 = ((2 * ((v230 ^ 0x807912FD) - v234 - 2049155097)) & 0x7DF7B3EC) + (((v230 ^ 0x807912FD) - v234 - 2049155097) ^ 0xBEFBD9F6);
  v237 = ((v234 + 2049155097) ^ 0x33DD4737 ^ v229 ^ v230) + 205472304 - ((2 * ((v234 + 2049155097) ^ 0x33DD4737 ^ v229 ^ v230)) & 0x187E8460);
  LOBYTE(STACK[0x11A8]) = v213 ^ 0x78;
  v238 = (v235 + 1912356887) ^ 0x9F4F5330 ^ ((v223 ^ v232 ^ (v231 + 1751908609) ^ 0xF9AFE284) - 1622191312 - 2 * ((v223 ^ v232 ^ (v231 + 1751908609) ^ 0xF9AFE284) & 0x1F4F5338 ^ (v223 ^ v232 ^ (v231 + 1751908609)) & 8));
  v239 = ((2 * v222) & 0x6A72F37E ^ 0x60223348) + (v222 ^ 0xCFAC645B);
  v240 = v238 - ((2 * v238) & 0x3622ADF2) - 1693362439;
  v241 = (v237 ^ (v239 + 1254524481) ^ 0xC3F4230) + 1258740071 - 2 * ((v237 ^ (v239 + 1254524481) ^ 0xC3F4230) & 0x4B06D96F ^ (v237 ^ (v239 + 1254524481)) & 8);
  LOBYTE(STACK[0x1118]) = v237 ^ 0x7F;
  LOBYTE(STACK[0x10DD]) = v240 ^ 0x56;
  v242 = ((v227 + 422827229) ^ 0x283B32DC) + 169130295 - ((2 * ((v227 + 422827229) ^ 0x283B32DC)) & 0x1429726E);
  v243 = ((2 * (v232 ^ v242)) & 0xFF47F7DC ^ 0x22075444) + (v232 ^ v242 ^ 0xEEE451DC);
  v244 = v240 ^ v242;
  LOBYTE(STACK[0x1088]) = v241 ^ 0x28;
  LOBYTE(STACK[0x104D]) = v240 ^ v242 ^ 0x61;
  v245 = ((2 * v228) ^ 0xBD3B2EAB) + v226;
  v246 = v231 - v235;
  v247 = ((v239 + 1786029309) & 0xCFA19049) + ((-1786029310 - v239) & 0xCFA19049) + (v222 ^ 0x7A951DE4 ^ (v226 - 1877868359));
  v248 = ((2 * (v234 - (v247 + v239) - 548369563)) & 0x7A53B3FA) + ((v234 - (v247 + v239) - 548369563) ^ 0x3D29D9FD);
  v249 = v236 + v239;
  v250 = (v230 & 0x7F51E2EC ^ 0x80FF1FFF) + (v230 & 0x7F51E2EC ^ 0xFFAEFD13) + (v242 ^ 0xA14B937) + (((v245 - 2129266260 - ((2 * v245 + 1063723524) & 0x42C4D154)) ^ v228) & 0x9F0001A8) + 2;
  v251 = ((2 * v250) & 0xE7B77B5A) + (v250 ^ 0x73DBBDAD);
  v252 = (v241 ^ (v247 - 1691049619) ^ 0x4B06D967) + 1552433251 - 2 * ((v241 ^ (v247 - 1691049619) ^ 0x4B06D967) & 0x5C88407B ^ (v241 ^ (v247 - 1691049619)) & 0x18);
  v253 = (v248 - 1026152957) ^ 0x5C884063 ^ v252 ^ (v236 + 1090791049);
  v254 = v253 + 938694175 - ((2 * v253) & 0x6FE6AC3E);
  LOBYTE(STACK[0xF68]) = ((v241 ^ (v247 + 109) ^ 0x67) + 99 - 2 * ((v241 ^ (v247 + 109) ^ 0x67) & 0x7B ^ (v241 ^ (v247 + 109)) & 0x18)) ^ (v236 - 119) ^ 0x2C;
  v255 = ((v236 + v239 - 1418147065) ^ 0x37F3561F ^ v254) - 1313228665 - ((2 * ((v236 + v239 - 1418147065) ^ 0x37F3561F ^ v254)) & 0x6373710E);
  v256 = v235 - v243 - v251;
  LOBYTE(STACK[0xFBD]) = ((v244 ^ (v243 - 56) ^ 0xCE) - 26 - 2 * ((v244 ^ (v243 - 56) ^ 0xCE) & 0xE7 ^ (v244 ^ (v243 - 56)) & 1)) ^ 0x49;
  LOBYTE(STACK[0xED8]) = v254 ^ 0x50;
  v257 = ((v244 ^ (v243 + 1798452680) ^ 0x9105EFCE) - 624896794 - 2 * ((v244 ^ (v243 + 1798452680) ^ 0x9105EFCE) & 0x5AC0D4E7 ^ (v244 ^ (v243 - 56)) & 1)) ^ (v246 + 724946281);
  LOBYTE(STACK[0xF2D]) = ((v244 ^ (v243 - 56) ^ 0xCE) - 26 - 2 * ((v244 ^ (v243 - 56) ^ 0xCE) & 0xE7 ^ (v244 ^ (v243 - 56)) & 1)) ^ (v246 + 105) ^ 0x49;
  v258 = (v257 ^ (v256 - 444859982) ^ 0xDAC0D4E6) + 943431132 - 2 * ((v257 ^ (v256 - 444859982) ^ 0xDAC0D4E6) & 0x383B9DDD ^ (v257 ^ (v256 - 444859982)) & 1);
  v259 = v247 - v236;
  v260 = ((v248 - 818429353) ^ (v236 - 272194700)) - 667453770 - ((2 * ((v248 - 818429353) ^ (v236 - 272194700))) & 0xB06EED6C);
  LOBYTE(STACK[0x126E]) = v258 ^ 0x73;
  LOBYTE(STACK[0xFF8]) = v252 ^ 0x2C;
  v261 = v243 - v246;
  v262 = ((v246 - 2104229059 + v251) ^ 0x383B9DDC ^ v258) + 359517314 - ((2 * ((v246 - 2104229059 + v251) ^ 0x383B9DDC ^ v258)) & 0x2ADB9904);
  v263 = ((v259 + 99630894) ^ 0xB1B9B887 ^ v255) - ((2 * ((v259 + 99630894) ^ 0xB1B9B887 ^ v255)) & 0x3E448BE2) - 1625143823;
  LOBYTE(STACK[0x11DE]) = v262 ^ 0x2D;
  LOBYTE(STACK[0x1219]) = v255 ^ 0xC8;
  v264 = v259 + v248;
  v265 = v264 - ((2 * v264 - 1437596918) & 0x83B17EA0) + 385925333;
  v266 = ((v256 - 237136378) ^ (v246 - 1523433900)) - 716352686 - ((2 * ((v256 - 237136378) ^ (v246 - 1523433900))) & 0xAA9AA6A4);
  v267 = (v262 ^ (v261 + 545405097) ^ 0x156DCC82) + 989946712 - 2 * ((v262 ^ (v261 + 545405097) ^ 0x156DCC82) & 0x3B016359 ^ (v262 ^ (v261 + 545405097)) & 1);
  LOBYTE(STACK[0x114E]) = v267 ^ 0xF7;
  v268 = v263 ^ v260 ^ v265;
  v269 = v267 ^ v266;
  LOBYTE(STACK[0x10F9]) = v263 ^ v260 ^ 8;
  LOBYTE(STACK[0x10BE]) = v269 ^ 0xA5;
  LOBYTE(STACK[0x1189]) = v263 ^ 0xBE;
  v270 = v249 + 639535959 + v264;
  v271 = (v260 ^ 0xD83776B6) + v270 - 718740444 - ((2 * ((v260 ^ 0xD83776B6) + v270)) & 0xAA51C848);
  v272 = v256 + v261 - ((2 * (v256 + v261) + 616537438) & 0xB9DD4096) - 280072454;
  v273 = (v260 ^ 0x27C88949) + v259 - 1431388146 + ((1948221856 - 2 * ((v260 ^ 0x27C88949) + v259)) | 0xB682FE43);
  v274 = v269 ^ v272;
  v275 = v235 + 980521143;
  v276 = (v266 ^ 0xD54D5352) + v235 + 980521143 - 817810110 - ((2 * ((v266 ^ 0xD54D5352) + v235 + 980521143)) & 0x9E826A84);
  v277 = (v266 ^ 0x2AB2ACAD) + v261 - ((2 * ((v266 ^ 0x2AB2ACAD) + v261) + 1090810196) & 0xFA7EE8FA) + 499232039;
  LOBYTE(STACK[0x102E]) = v274 ^ 0xEE;
  v278 = ((v235 + 980521143) ^ 0x32A29041 ^ v274) - ((2 * ((v235 + 980521143) ^ 0x32A29041 ^ v274)) & 0x5A7EE7E) - 2100037825;
  LOBYTE(STACK[0x1069]) = v268 ^ 0x58;
  LOBYTE(STACK[0xF9E]) = v278 ^ 0x90;
  v279 = v273 ^ v265;
  v280 = (v273 ^ v265 ^ 0xE5663F8E) + v270;
  v281 = v273 ^ v271 ^ ((v270 ^ 0x6CD8C17 ^ v268) - ((2 * (v270 ^ 0x6CD8C17 ^ v268)) & 0xB393E588) + 1506407108);
  LOBYTE(STACK[0xFD9]) = ((v270 ^ 0x17 ^ v268) - ((2 * (v270 ^ 0x17 ^ v268)) & 0x88) - 60) ^ 0x8B;
  v282 = v279 ^ v271;
  v283 = (v280 ^ 0x75F333FE) - 1978872830 + ((2 * v280) & 0xEBE667FC);
  v284 = v283 + (v271 ^ 0xD528E424) - ((2 * (v283 + (v271 ^ 0xD528E424))) & 0x146506D6) - 1976401045;
  v285 = v277 ^ v272 ^ v276;
  v286 = (((v277 ^ v272 ^ 0x21D1D436) + v275) ^ 0xFFF7F2FF) + 526616 + ((2 * ((v277 ^ v272 ^ 0x21D1D436) + v275)) & 0xFFEFE5FE) + 1001;
  LOBYTE(STACK[0xF49]) = v281 ^ 0x71;
  v287 = v286 + (v276 ^ 0xCF413542);
  v288 = v277 ^ v276 ^ v278;
  LOBYTE(STACK[0xF0E]) = v288 ^ 0xAF;
  v289 = ((2 * (v283 + (v282 ^ 0x304EDBAA))) & 0xDFEBF2FE) + ((v283 + (v282 ^ 0x304EDBAA)) ^ 0x6FF5F97F);
  v290 = v281 ^ v284;
  LOBYTE(v276) = v290 ^ 0x1A;
  v291 = (v287 ^ 0xFF7BEFF9) + 8654855 + ((2 * v287) & 0xFEF7DFF2);
  v292 = (v288 ^ v291) - ((2 * (v288 ^ v291)) & 0xED921352) - 154596951;
  v293 = v290 ^ v282;
  v294 = ((2 * (v286 + (v285 ^ 0xEE90E174))) & 0xD2776DFE) + ((v286 + (v285 ^ 0xEE90E174)) ^ 0xE93BB6FF);
  LOBYTE(STACK[0xEB9]) = v276;
  LOBYTE(STACK[0x124F]) = v292 ^ 6;
  v295 = v292 ^ v285;
  LOBYTE(STACK[0x11FA]) = v293 ^ 0xB0;
  LOBYTE(STACK[0x11BF]) = v295 ^ 0x72;
  LODWORD(STACK[0xAEC]) = ((v289 - 1878391167) ^ v293 ^ 0xFF) - 568394245 - ((2 * ((v289 - 1878391167) ^ v293 ^ 0xFF)) & 0xBC3DFBF6);
  LOBYTE(STACK[0x116A]) = (-((v289 - 127) ^ v293) - 6 - ((2 * ~((v289 - 127) ^ v293)) & 0xF6)) ^ 0xB4;
  v296 = (v282 ^ 0x95A8F640 ^ v284) + 2 * ((v284 ^ 0xA32836B) & (v282 ^ 0x1F9A752B));
  LODWORD(STACK[0xAF0]) = (v295 ^ (v294 + 381962497) ^ 0xDD) + 1062154629 - 2 * ((v295 ^ (v294 + 381962497) ^ 0xDD) & 0x3F4F3187 ^ (v295 ^ (v294 + 381962497)) & 2);
  LOBYTE(STACK[0x112F]) = ((v295 ^ (v294 + 1) ^ 0xDD) - 123 - 2 * ((v295 ^ (v294 + 1) ^ 0xDD) & 0x87 ^ (v295 ^ (v294 + 1)) & 2)) ^ 0x2A;
  v297 = ((2 * (v296 ^ v282)) & 0xFFFC5796 ^ 0x3F344216) + (v296 ^ v282 ^ 0x60645EE0);
  v298 = v285 ^ 0xC1444FF5;
  LODWORD(STACK[0xD30]) = v296 + (v265 ^ 0xB017DC49) + 10806861 - ((2 * (v296 + (v265 ^ 0xB017DC49))) & 0x149CC9A);
  v299 = ((v291 + (v285 ^ 0xC1444FF5)) ^ 0x759CEF47) - 1973219143 + ((2 * (v291 + (v285 ^ 0xC1444FF5))) & 0xEB39DE8E);
  LODWORD(STACK[0xCCC]) = ((v297 - 2147363787) ^ (v289 + 1438550941) ^ 0x777F7F7B) - 643973200 + ((2 * ((v297 - 2147363787) ^ (v289 + 1438550941))) & 0xEEFEFEF6);
  v300 = ((v298 ^ v299) - ((2 * (v298 ^ v299)) & 0x213DE79E) - 1868631089) ^ (v294 - 596062691);
  LODWORD(STACK[0xCC0]) = (v300 ^ 0xEE2484A0) - 34219273 + ((2 * v300) & 0xFD74EEDE ^ 0x2134E69E);
  LODWORD(STACK[0xD48]) = v299 + (v272 ^ 0x2D21C352) + 183387985 - ((2 * (v299 + (v272 ^ 0x2D21C352))) & 0x15DC8EA2);
  v301 = (4 * LODWORD(STACK[0xD20])) | (8 * LODWORD(STACK[0xD20]));
  v302 = LODWORD(STACK[0xD28]) - 422;
  LODWORD(STACK[0xCB0]) = v265 ^ 0xB8EDC4F4;
  LODWORD(STACK[0xD38]) = v297 - 1871970506;
  LODWORD(STACK[0xCB8]) = v272 ^ 0x8D67EFB3;
  v303 = STACK[0xA40];
  v304 = STACK[0xA50];
  return (*(STACK[0xD40] + 8 * (v302 ^ v301)))();
}

uint64_t sub_1BADD77CC@<X0>(unsigned int a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, unsigned int a5@<W7>, int a6@<W8>)
{
  v21 = ((LODWORD(STACK[0xD28]) - v10) ^ v19) * v9;
  v22 = v21 + v14 - (((((v21 + v14) * a1) >> 32) + ((v21 + v14 - (((v21 + v14) * a1) >> 32)) >> 1)) >> 9) * a6;
  v23 = v21 + v11 - (v21 + v11) / 0x3D1u * a6;
  *(a2 + v22) ^= *(a3 + (v8 + v9));
  v24 = (((2 * v9 + 4) & 0xE ^ 0xC) + ((v9 + 10) & 0xF ^ v15)) * v12;
  *(a2 + v23) ^= *(a4 + (v24 - ((v24 * v13) >> 32) * v16)) ^ v6;
  if (v20 < a5 != v9 + v17 < a5)
  {
    v25 = v20 < a5;
  }

  else
  {
    v25 = v9 + v17 < v20;
  }

  return (*(STACK[0xD40] + 8 * ((v25 * v18) ^ v7)))();
}

uint64_t sub_1BADD78C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v7 + v6 + 1436;
  LODWORD(STACK[0xCAC]) = ((v5 << ((v7 + v6 - 100) ^ 7)) & 0xEA7F77E6 ^ 0x203D6786) + (v5 ^ 0x65A1483C);
  v9 = *(STACK[0xD40] + 8 * ((2764 * (v6 > 0x5B6CB1C1)) ^ (v7 + v6 + 472)));
  LODWORD(STACK[0xD28]) = 304045;
  LODWORD(STACK[0xD00]) = 308210;
  LODWORD(STACK[0xD08]) = 309043;
  LODWORD(STACK[0xD20]) = 310709;
  LODWORD(STACK[0xCE0]) = 9996;
  LODWORD(STACK[0xCDC]) = 10829;
  LODWORD(STACK[0xC98]) = 14;
  LODWORD(STACK[0xD18]) = 4998;
  LODWORD(STACK[0xD10]) = 5831;
  LODWORD(STACK[0xCF8]) = 833;
  LODWORD(STACK[0xB78]) = v8;
  v10 = 372 * (v8 ^ 0xA02);
  LODWORD(STACK[0xB80]) = v10;
  LODWORD(STACK[0xB70]) = v10 ^ 0x601;
  LODWORD(STACK[0xCF0]) = 299880;
  LODWORD(STACK[0xCE8]) = 303212;
  LODWORD(STACK[0xCE4]) = 312375;
  LODWORD(STACK[0xCD0]) = 621418;
  v11 = LODWORD(STACK[0xD38]);
  v12 = LODWORD(STACK[0xCB0]);
  return v9(302379, a2, 300713, 304878, a5, 301546, 2499, 7497);
}

uint64_t sub_1BADD7A50@<X0>(unsigned int a1@<W0>, unsigned int a2@<W2>, unsigned int a3@<W3>, uint64_t a4@<X4>, unsigned int a5@<W5>, unsigned int a6@<W6>, unsigned int a7@<W7>, unsigned int a8@<W8>)
{
  LODWORD(STACK[0xCB0]) = v9;
  LODWORD(STACK[0xD38]) = v21;
  LODWORD(STACK[0xC58]) = v11;
  LODWORD(STACK[0xC60]) = v20;
  LODWORD(STACK[0xC68]) = v18;
  LODWORD(STACK[0xC70]) = v17;
  LODWORD(STACK[0xC78]) = a3;
  LODWORD(STACK[0xC80]) = a1;
  LODWORD(STACK[0xC88]) = a5;
  LODWORD(STACK[0xC90]) = a2;
  v24 = v10;
  LODWORD(STACK[0xC00]) = v10;
  LODWORD(STACK[0xB90]) = ((206615623 * a3) >> 32) + ((a3 - ((206615623 * a3) >> 32)) >> 1);
  LODWORD(STACK[0xC50]) = v16;
  v25 = v17;
  LODWORD(STACK[0xB98]) = ((206615623 * v16) >> 32) + ((v16 - ((206615623 * v16) >> 32)) >> 1);
  LODWORD(STACK[0xC48]) = a7;
  LODWORD(STACK[0xC40]) = v13;
  LODWORD(STACK[0xBB0]) = ((206615623 * a7) >> 32) + ((a7 - ((206615623 * a7) >> 32)) >> 1);
  LODWORD(STACK[0xC38]) = v19;
  LODWORD(STACK[0xBA0]) = ((206615623 * v13) >> 32) + ((v13 - ((206615623 * v13) >> 32)) >> 1);
  LODWORD(STACK[0xBA8]) = ((206615623 * v19) >> 32) + ((v19 - ((206615623 * v19) >> 32)) >> 1);
  LODWORD(STACK[0xBD0]) = ((206615623 * v18) >> 32) + ((v18 - ((206615623 * v18) >> 32)) >> 1);
  v26 = (206615623 * LODWORD(STACK[0xD00])) >> 32;
  v27 = LODWORD(STACK[0xD00]) - v26;
  LODWORD(STACK[0xBC0]) = ((206615623 * v20) >> 32) + ((v20 - ((206615623 * v20) >> 32)) >> 1);
  LODWORD(STACK[0xBC8]) = v26 + (v27 >> 1);
  v28 = STACK[0xCE0];
  v29 = 206615623 * LODWORD(STACK[0xCE0]);
  LODWORD(STACK[0xBB8]) = ((206615623 * LODWORD(STACK[0xD08])) >> 32) + ((LODWORD(STACK[0xD08]) - ((206615623 * LODWORD(STACK[0xD08])) >> 32)) >> 1);
  v30 = HIDWORD(v29);
  v31 = v28 - HIDWORD(v29);
  v32 = (206615623 * LODWORD(STACK[0xCDC])) >> 32;
  v33 = LODWORD(STACK[0xCDC]) - v32;
  LODWORD(STACK[0xBF8]) = v30 + (v31 >> 1);
  LODWORD(STACK[0xBF0]) = v32 + (v33 >> 1);
  LODWORD(STACK[0xC30]) = v15;
  LODWORD(STACK[0xC28]) = v23;
  LODWORD(STACK[0xBE8]) = ((206615623 * v15) >> 32) + ((v15 - ((206615623 * v15) >> 32)) >> 1);
  LODWORD(STACK[0xC20]) = v22;
  LODWORD(STACK[0xBE0]) = ((206615623 * v23) >> 32) + ((v23 - ((206615623 * v23) >> 32)) >> 1);
  LODWORD(STACK[0xBD8]) = ((206615623 * v22) >> 32) + ((v22 - ((206615623 * v22) >> 32)) >> 1);
  LODWORD(STACK[0xC18]) = v12;
  v34 = v12;
  v35 = (206615623 * LODWORD(STACK[0xCF8])) >> 32;
  v36 = LODWORD(STACK[0xCF8]) - v35;
  LODWORD(STACK[0xC10]) = v8;
  LODWORD(STACK[0xC08]) = a6;
  LOWORD(v33) = 263 * v24;
  v37 = STACK[0xCB0];
  LODWORD(v35) = (((*(a4 + ((a8 % LODWORD(STACK[0xB70]) - 1786247825 + (~(2 * (a8 % LODWORD(STACK[0xB70]))) | 0xFFFFFD21) + 1) ^ 0x9588056F)) ^ v14) << 24) | ((*(a4 + a8 - 977 * ((v35 + (v36 >> 1)) >> 9) + 833) ^ v14) << 16) | ((*(a4 + a8 - 977 * (v8 / 0x3D1) + 1666) ^ v14) << 8) | *(a4 + a8 - 977 * (a6 / 0x3D1) + 2499) ^ 0xAF) ^ LODWORD(STACK[0xCB0]);
  v38 = STACK[0xD50];
  *(STACK[0xD50] + 4 * ((263 * v24 - 5094) % 0x11Bu)) = v35 ^ 0x9920FD96;
  v40 = STACK[0xD18];
  v39 = ((206615623 * LODWORD(STACK[0xD18])) >> 32) + ((LODWORD(STACK[0xD18]) - ((206615623 * LODWORD(STACK[0xD18])) >> 32)) >> 1);
  v41 = ((*(a4 + a8 + 299880 - 977 * (LODWORD(STACK[0xCF0]) / 0x3D1)) ^ 0xAF) << 24) | ((*(a4 + 299880 - 977 * (a2 / 0x3D1) + a8 + 833) ^ 0xAF) << 16) | ((*(a4 + 299880 - 977 * (a5 / 0x3D1) + a8 + 1666) ^ 0xAF) << 8) | *(a4 + 299880 - 977 * (a1 / 0x3D1) + a8 + 2499) ^ 0xAF;
  v42 = STACK[0xCB8];
  v43 = v41 ^ LODWORD(STACK[0xCB8]);
  *(v38 + 4 * ((263 * v24 - 22189) % 0x11Bu)) = v43 ^ 0xD346F14E;
  v44 = STACK[0xD30];
  v45 = LODWORD(STACK[0xD30]) ^ v37 ^ 0x7B5E235F ^ v43 ^ 0xD346F14E;
  LODWORD(v32) = v45 + 721218203 - ((2 * v45) & 0x55F9D536);
  v46 = v42 ^ 0xA8BC34BC ^ v35;
  v47 = v35 ^ v32 ^ 0x2206F2C6;
  v48 = STACK[0xD48];
  LODWORD(v35) = LODWORD(STACK[0xD48]) ^ 0x2145F0C ^ v35;
  v49 = LODWORD(STACK[0xD48]) ^ 0xAEE4751;
  LODWORD(STACK[0xD48]) = STACK[0xD48];
  LODWORD(v35) = v35 - v49;
  v50 = v42 ^ 0xA0462CE1;
  LODWORD(v35) = v35 ^ (v46 - (v42 ^ 0xA0462CE1));
  v51 = STACK[0xCAC];
  *(v38 + 4 * ((263 * v24 + 5212) % 0x11Bu)) = (v35 ^ (v47 - (v32 ^ 0x2AFCEA9B))) - LODWORD(STACK[0xCAC]) + 1941143519 - ((2 * ((v35 ^ (v47 - (v32 ^ 0x2AFCEA9B))) - LODWORD(STACK[0xCAC])) + 23418592) & 0xE601BB5E) + 2368;
  v52 = STACK[0xD38];
  LODWORD(v35) = LODWORD(STACK[0xD38]) - 275393281;
  *(v38 + 4 * ((263 * v24 + 24674) % 0x11Bu)) = (v43 ^ 0xA0462CE1) + v35 - 2010994587 - ((2 * ((v43 ^ 0xA0462CE1) + v35) + 709072236) & 0xE601BB5E);
  v54 = STACK[0xD10];
  v53 = ((206615623 * LODWORD(STACK[0xD10])) >> 32) + ((LODWORD(STACK[0xD10]) - ((206615623 * LODWORD(STACK[0xD10])) >> 32)) >> 1);
  v55 = 206615623 * LODWORD(STACK[0xD20]);
  v56 = STACK[0xD20];
  LODWORD(STACK[0xD20]) = STACK[0xD20];
  v57 = LODWORD(STACK[0xCCC]) + 1087578504;
  LODWORD(STACK[0xD30]) = v44;
  v58 = v57 ^ v44;
  v59 = ((*(a4 + a8 - 977 * (v34 / 0x3D1) + 4165) ^ 0x4F) << 16) | ((*(a4 + a8 - 977 * (v40 / 0x3D1) + 4998) ^ 0x4F) << 8) | ((*(a4 + a8 - 977 * (v11 / 0x3D1) + 3332) ^ 0x4F) << 24) | *(a4 + a8 - 977 * (v54 / 0x3D1) + 5831);
  v60 = v59 ^ v57 ^ v44;
  *(v38 + 4 * ((v33 - 4831) % 0x11Bu)) = v60 ^ 0x9AE3860D;
  v61 = STACK[0xCE8];
  v62 = 206615623 * LODWORD(STACK[0xCE8]);
  LODWORD(STACK[0xCCC]) = HIDWORD(v55) + ((v56 - HIDWORD(v55)) >> 1);
  v63 = (v35 ^ v37 ^ 0x8FA18BD) - ((2 * (v35 ^ v37 ^ 0x8FA18BD)) & 0xC4A31F52);
  v64 = v57 ^ v44 ^ 0xF4C69C76;
  v65 = ((2 * (v52 + 1533657903 + v64)) & 0xFDFFBABA) + ((v52 + 1533657903 + v64) ^ 0xFEFFDD5D);
  v66 = (LODWORD(STACK[0xCC0]) + 356519501) ^ v48;
  LODWORD(v35) = *(a4 + a8 + 303212 - 977 * ((HIDWORD(v62) + ((v61 - HIDWORD(v62)) >> 1)) >> 9));
  LOBYTE(v61) = *(a4 + 303212 - 977 * (LODWORD(STACK[0xD28]) / 0x3D1) + a8 + 833);
  LODWORD(v35) = (((v35 ^ 0xAF) << 24) | ((v61 ^ 0xAF) << 16) | ((*(a4 + 303212 - 977 * (LODWORD(STACK[0xB90]) >> 9) + a8 + 1666) ^ 0xAF) << 8) | *(a4 + 303212 - 977 * (v25 / 0x3D1) + a8 + 2499) ^ 0xAF) ^ v66;
  *(v38 + 4 * ((v33 - 21926) % 0x11Bu)) = v35 ^ 0x72731F3A;
  LODWORD(STACK[0xD38]) = v63 - 497971287;
  v67 = ((2 * (v51 + 1989423677 + (v66 ^ 0xFE8C3D6A))) & 0x6FBFCBCA) + ((v51 + 1989423677 + (v66 ^ 0xFE8C3D6A)) ^ 0xB7DFE5E5);
  v68 = (v63 - 497971287) ^ v58;
  v69 = (v50 ^ (v51 + 180372493)) - ((2 * (v50 ^ (v51 + 180372493))) & 0x4C298B5E) - 1508588113;
  v70 = ((2 * ((v66 ^ 0x173C295) - 123684106)) & 0xFA7FCBB6) + (((v66 ^ 0x173C295) - 123684106) ^ 0xFD3FE5DB);
  LODWORD(v62) = v69 ^ v66 ^ 0xACFA82FE;
  v71 = ((v66 ^ 0x66D36F09 ^ v60 ^ 0x6C99CE5A) - (v66 ^ 0x173C295)) ^ ((v69 ^ v66 ^ 0xCB5A2F62 ^ v60 ^ 0x6C99CE5A) - v62) ^ ((v59 ^ 0x635447C0 ^ v68 ^ 0xF2A1F3C4 ^ v35 ^ 0x72731F3A) - (v58 ^ 0x686D2406 ^ v68 ^ 0xF2A1F3C4 ^ v35 ^ 0x72731F3A));
  v72 = v62 + v67 - v70 - 1049202374 - ((2 * (v62 + v67 - v70 + 1163919350)) & 0xF82CE288);
  *(v38 + 4 * ((v33 + 5475) % 0x11Bu)) = v71 - v67 - ((2 * (v71 - v67) - 2035963196) & 0xE601BB5E) + 911454993;
  LODWORD(v35) = (v72 & 0x1521CAB6 ^ 0x14004004 | v72 & 0x1521CAB6 ^ 0x1218AB2) + v65 + 16786083 + (v35 ^ 0x173C295);
  *(v38 + 4 * ((v33 + 24937) % 0x11Bu)) = v35 + 1929436591 - ((2 * v35) & 0xE601BB5E);
  LODWORD(v55) = ((v65 + 16786083) ^ 0x8D1BD9CE) - 2138256540 - 2 * (((v65 + 16786083) ^ 0x8D1BD9CE) & 0x8CCB75 ^ (v65 + 16786083) & 0x11);
  v73 = *(a4 + a8 - 977 * (LODWORD(STACK[0xB98]) >> 9) + 6664);
  HIDWORD(v75) = ~v73;
  LODWORD(v75) = (v73 ^ 0xAAAAAAAA) << 24;
  v74 = v75 >> 27;
  LOBYTE(v35) = v61 & 0xE0 ^ 0xA0 | v61 & 0xE0 ^ 0x40;
  HIDWORD(v75) = v74 ^ 0x55555555;
  LODWORD(v75) = (v74 ^ 0x80) << 24;
  v76 = ((((v75 >> 29) ^ 0x4C) << 24) | ((*(a4 + a8 - 977 * (LODWORD(STACK[0xBA0]) >> 9) + 8330) ^ (v35 - ((2 * v35) & 0x40) - 81)) << 8) | *(a4 + a8 - 977 * (LODWORD(STACK[0xBA8]) >> 9) + 9163) ^ 0xAF | ((*(a4 + a8 - 977 * (LODWORD(STACK[0xBB0]) >> 9) + 7497) ^ 0x4F) << 16)) ^ v55;
  *(v38 + 4 * ((v33 - 4568) % 0x11Bu)) = v76 ^ 0x33111D95;
  LODWORD(v62) = ((v67 + 1210063387) ^ 0x8D1BD9CE) - 193358887 - ((2 * ((v67 + 1210063387) ^ 0x8D1BD9CE)) & 0xE8F327B2);
  v77 = ((2 * (v70 + 46141954 + (v62 ^ 0xF47993D9) + 2083)) & 0xFBFDCFFE) + ((v70 + 46141954 + (v62 ^ 0xF47993D9) + 2083) ^ 0x7DFEE7FF);
  v78 = ((2 * ((v58 ^ 0xB396389) - 123684106 + (v55 ^ 0x808CCB64))) & 0xE57FCBEE) + (((v58 ^ 0xB396389) - 123684106 + (v55 ^ 0x808CCB64)) ^ 0x72BFE5F7);
  v79 = v64 + v65 + (v68 ^ 0xE2F569E4) + 140470190 + 1821144171 - ((2 * (v64 + v65 + (v68 ^ 0xE2F569E4) + 140470190)) & 0xD918E8D6);
  v80 = v79 ^ 0x6C8C746B;
  v81 = ((v65 + 16786083) ^ 0xAF5CEA14) - 725260945 - ((2 * ((v65 + 16786083) ^ 0xAF5CEA14)) & 0xA98ACADE);
  LODWORD(v55) = v76 ^ ((v79 ^ 0x6C8C746B ^ (v78 - 1925178871)) - ((2 * (v79 ^ 0x6C8C746B ^ (v78 - 1925178871))) & 0xD93D7FB2) + 1822343129);
  v82 = (((*(a4 + 303212 - 977 * (LODWORD(STACK[0xBD0]) >> 9) + a8 + 3332) ^ 0xAF) << 24) | ((*(a4 + 309876 - 977 * (LODWORD(STACK[0xBC0]) >> 9) + a8 - 2499) ^ 0xAF) << 16) | ((*(a4 + 309876 - 977 * (LODWORD(STACK[0xBC8]) >> 9) + a8 - 1666) ^ 0xAF) << 8) | *(a4 + 309876 - 977 * (LODWORD(STACK[0xBB8]) >> 9) + a8 - 833) ^ 0xAF) ^ v62;
  v83 = (v76 ^ 0xA2CBF85E) + (v81 ^ 0xD4C5656F);
  *(v38 + 4 * ((v33 - 21663) % 0x11Bu)) = v82 ^ 0xA53E7DAC;
  v84 = ((v67 + 1210063387) ^ 0xAF5CEA14) + 619233916 - 2 * (((v67 + 1210063387) ^ 0xAF5CEA14) & 0x24E8C27D ^ (v67 + 1210063387) & 1);
  v85 = (((v55 ^ v82 ^ 0x186BE784) - (v55 ^ 0xCE554787)) ^ ((v72 ^ 0xAA28D147 ^ v82) - (v72 ^ 0x7C167144)) ^ (2113857535 - v77 + ((v77 - 2113857535) ^ 0xD63EA003 ^ v82))) - (v84 ^ 0x24E8C27C);
  *(v38 + 4 * ((v33 + 5738) % 0x11Bu)) = v85 + 2121518380 - ((2 * v85 + 384163578) & 0xE601BB5E);
  *(v38 + 4 * ((v33 + 25200) % 0x11Bu)) = v83 - 2010994587 - ((2 * v83 + 709072236) & 0xE601BB5E);
  v86 = 1937995936 - v65 + (LODWORD(STACK[0xD30]) ^ 0xE2F569E4 ^ LODWORD(STACK[0xD38])) + 2045;
  v87 = (LODWORD(STACK[0xD48]) ^ 0xACFA82FE ^ v69) - v67 + 744720677;
  v88 = (v86 ^ 0xD4C5656F ^ v81) + 1973011925 - ((2 * (v86 ^ 0xD4C5656F ^ v81)) & 0xEB338BAA);
  v89 = ((2 * v79) & 0xD9DFEDA8 ^ 0xC8978C28) + (v79 ^ 0x1AA431C9);
  v90 = (v87 ^ 0x24E8C27C ^ v84) - 529024560 - ((2 * (v87 ^ 0x24E8C27C ^ v84)) & 0xC0EF73A0);
  LODWORD(v62) = LODWORD(STACK[0xCCC]) >> 9;
  LODWORD(v55) = LODWORD(STACK[0xCD0]) - 1954 * v62;
  v91 = 309876 - 977 * (LODWORD(STACK[0xBD8]) >> 9);
  LODWORD(v35) = 312375 - 977 * (LODWORD(STACK[0xCE4]) / 0x3D1);
  v92 = ((2 * v72) & 0xFCEEDFFE ^ 0xCCA28464) + (v72 ^ 0x98A6ADCD);
  v93 = ((v77 + 1401365759) ^ (v92 - 2121756671)) - 1346259414 - ((2 * ((v77 + 1401365759) ^ (v92 - 2121756671))) & 0x5F836C54);
  v94 = (v80 + v86) ^ v88;
  v95 = (v89 + 319818028) ^ (v78 + 1590044423);
  v96 = v90 ^ ((v72 ^ 0x7C167144) + v87);
  v97 = v95 - 1066944736 - ((2 * v95) & 0x80CF6E40);
  v98 = ((2 * ((v90 ^ 0xE077B9D0) + 1324480239)) & 0xEFDBCE7E) + (((v90 ^ 0xE077B9D0) + 1324480239) ^ 0x77EDE73F);
  v99 = (v88 ^ 0x7599C5D5) + 1324480239;
  v100 = (((*(a4 + a8 - 977 * (LODWORD(STACK[0xBF0]) >> 9) + 10829) ^ 0x4F) << 16) | ((*(a4 + a8 - 977 * (LODWORD(STACK[0xBF8]) >> 9) + 9996) ^ 0x4F) << 24) | ((*(a4 + a8 - 977 * (LODWORD(STACK[0xBE8]) >> 9) + 11662) ^ 0x4F) << 8) | *(a4 + a8 - 977 * (LODWORD(STACK[0xBE0]) >> 9) + 12495) ^ 0xAF) ^ v94;
  *(v38 + 4 * ((v33 - 4305) % 0x11Bu)) = v100 ^ 0xE44320FE;
  LODWORD(v55) = a8 - (v55 & 0x288) - 977 * v62;
  v101 = STACK[0xC98];
  LODWORD(v55) = ((*(a4 + a8 + v91) ^ 0xAF) << 24) | ((*(a4 + ((v55 - 523207943) ^ 0xE0CBBD44)) ^ 0xAF) << 16) | ((*(a4 + 833 * (LODWORD(STACK[0xC98]) + ((v55 - 523207943) & 0x168 ^ 0x28) + ((v55 - 523207943) & 0x168 ^ 0x140u)) % 0x3D1) ^ 0xAF) << 8);
  v102 = *(a4 + a8 + v35);
  v103 = (v55 | v102 ^ 0xAF) ^ v96;
  LODWORD(v62) = v97 ^ (v89 - ((2 * v89 - 1817938834) & 0xD1FE8CF2) + 852590768) ^ v100;
  v104 = (v99 ^ 0x6FDFF16F) - 1876947311 + ((2 * v99) & 0xDFBFE2DE);
  *(v38 + 4 * ((v33 - 21400) % 0x11Bu)) = v103 ^ 0x9377647F;
  v105 = (v89 - ((2 * v89 + 1733776934) & 0xFC31651C) + 834952609) ^ v94;
  v106 = v93 ^ 0xAFC1B62A;
  v107 = v105 ^ v97;
  v108 = (v92 + 572797416) ^ v96 ^ 0x4FB60FFA ^ v93;
  v109 = (v93 ^ 0x4FB60FFA ^ v103) - (v93 ^ 0xAFC1B62A);
  v110 = v108 - 2020680542 - ((2 * v108) & 0xF1DB944);
  v111 = v107 ^ (v89 + 542077923) ^ ((v97 ^ 0xC067B720) + v104);
  v112 = STACK[0xC68];
  LODWORD(v55) = ((((v92 + 944423180) ^ 0xE077B9D0 ^ v103) - v92 - 944423180) ^ ((v62 ^ 0x3D768DBC ^ v103) - (v62 ^ 0xDD01346C)) ^ v109) - v98;
  v113 = v33 + 25463;
  *(v38 + 4 * ((v33 + 6001) % 0x11Bu)) = v55 - 161368980 + ((-113356154 - 2 * v55) | 0x19FE44A1);
  LODWORD(v62) = ((2 * ((v107 ^ 0xCBE6C07B) - v89 - 542077923)) & 0xDF5FB7F6) + (((v107 ^ 0xCBE6C07B) - v89 - 542077923) ^ 0x6FAFDBFB);
  LODWORD(STACK[0xD30]) = v111 ^ 0xCB422636 ^ (2 * v89 + (v97 ^ 0xC067B720) - 1562323908 + (v111 & 0x26273A63 ^ 0x24013A00 | v111 & 0x26273A63 ^ 0x2260063));
  LODWORD(v55) = ((2 * ((v110 ^ 0x878EDCA2) - v92 + 1899496776)) & 0xFDD7DDEE) + (((v110 ^ 0x878EDCA2) - v92 + 1899496776) ^ 0xFEEBEEF7);
  v114 = (v98 - 2012079935 + v106 - 2020680542 - ((2 * (v98 - 2012079935 + v106)) & 0xF1DB944)) ^ (v92 - 1899496776) ^ v110;
  v115 = STACK[0xC70];
  v116 = v114 + 1832738008 - ((2 * v114) & 0xDA7AB9B0);
  LODWORD(STACK[0xD48]) = (v106 + 2 * v92 - 1510400951) ^ 0x67D31B89 ^ v116;
  v117 = (v100 ^ 0x7599C535) + v104;
  v118 = STACK[0xC60];
  v119 = ((2 * ((v116 ^ 0x6D3D5CD8) - 432564681)) & 0xFFB7B1F2) + (((v116 ^ 0x6D3D5CD8) - 432564681) ^ 0xFFDBD8F9) + 2369287;
  v120 = LODWORD(STACK[0xC00]) + (v102 & 1) + !(v102 & 1);
  LODWORD(STACK[0xCCC]) = ((v62 - 1873796091) ^ 0xEA8F29FE) - 205651984 + ((2 * (v62 - 1873796091)) & 0xBABE7E76 ^ 0x2AA02C02);
  LODWORD(v62) = ((v119 + (v119 ^ 0x39E063F0) + 1) ^ 0xFFFFFFFE) + v119;
  v121 = STACK[0xC88];
  LODWORD(STACK[0xCC0]) = ((v55 + 18092297) ^ 0xC864682B) - 50605192 + ((2 * (v55 + 18092297)) & 0xFF68FDDC ^ 0x6F202D88);
  v122 = STACK[0xC78];
  LODWORD(STACK[0xCAC]) = ((2 * (v62 - ((2 * v62) & 0x3BD44DAE) - 1645599017)) & 0xEA7F77E6 ^ 0xA26B75A0) + ((v62 - ((2 * v62) & 0x3BD44DAE) - 1645599017) ^ 0xAECA012B);
  LODWORD(v62) = STACK[0xC80];
  *(v38 + 4 * (v113 % 0x11Bu)) = v117 - 2010994587 - ((2 * v117 + 709072236) & 0xE601BB5E);
  v123 = STACK[0xC90];
  v124 = (LODWORD(STACK[0xC50]) + 13328);
  v125 = (LODWORD(STACK[0xC48]) + 13328);
  v126 = (LODWORD(STACK[0xC40]) + 13328);
  v127 = (LODWORD(STACK[0xC38]) + 13328);
  v128 = *(STACK[0xD40] + 8 * ((15 * ((v120 - 1489134137) < 0x10)) ^ LODWORD(STACK[0xB78])));
  LODWORD(STACK[0xD00]) += 13328;
  LODWORD(STACK[0xD08]) += 13328;
  LODWORD(STACK[0xCE0]) += 13328;
  LODWORD(STACK[0xCDC]) += 13328;
  v129 = (LODWORD(STACK[0xC30]) + 13328);
  v130 = (LODWORD(STACK[0xC28]) + 13328);
  v131 = (LODWORD(STACK[0xC20]) + 13328);
  LODWORD(STACK[0xD20]) += 13328;
  LODWORD(STACK[0xCD0]) += 26656;
  LODWORD(STACK[0xCE4]) += 13328;
  LODWORD(STACK[0xC98]) = v101 + 16;
  v132 = (LODWORD(STACK[0xC58]) + 13328);
  v133 = (LODWORD(STACK[0xC18]) + 13328);
  LODWORD(STACK[0xD18]) += 13328;
  LODWORD(STACK[0xD10]) += 13328;
  LODWORD(STACK[0xCE8]) += 13328;
  LODWORD(STACK[0xD28]) += 13328;
  LODWORD(STACK[0xCF8]) += 13328;
  LODWORD(STACK[0xCB8]) = v92 - v55 - ((2 * (v92 - v55) + 1225189336) & 0x408C59C2) - 2067160883;
  v134 = (LODWORD(STACK[0xC10]) + 13328);
  v135 = (LODWORD(STACK[0xC08]) + 13328);
  LODWORD(STACK[0xCF0]) += 13328;
  return v128((v62 + 13328));
}

uint64_t sub_1BADD9218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xD10]) = LODWORD(STACK[0xCAC]) + 2147209182;
  v8 = 16 * (LOBYTE(STACK[0x1112]) ^ 0xAF);
  v9 = STACK[0xB80];
  v10 = *(STACK[0xD40] + 8 * SLODWORD(STACK[0xB80]));
  LODWORD(STACK[0xD08]) = -1959640081;
  LODWORD(STACK[0xC70]) = v9 ^ 0x47B;
  LODWORD(STACK[0xC68]) = v8 ^ 0xAF;
  v11 = STACK[0xD50];
  LODWORD(STACK[0xD38]) = v7;
  v12 = LODWORD(STACK[0xCB8]);
  v13 = LODWORD(STACK[0xCCC]);
  return v10(47, v11, 58912, 55493, LODWORD(STACK[0xCC0]), 3885200099, a7, LODWORD(STACK[0xD30]));
}

uint64_t sub_1BADD9310(int a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xCF0]) = a1;
  LODWORD(STACK[0xCF8]) = v16;
  LODWORD(STACK[0xD00]) = v19;
  LODWORD(STACK[0xD20]) = a4;
  LODWORD(STACK[0xD28]) = a3;
  LODWORD(STACK[0xD30]) = v13;
  LODWORD(STACK[0xC80]) = LODWORD(STACK[0xD30]) - 283 * (((v13 * a6) >> 32) >> 8);
  LODWORD(STACK[0xCDC]) = v16 - 283 * (((v16 * a6) >> 32) >> 8);
  v23 = LODWORD(STACK[0xD28]) - 283 * (((a3 * a6) >> 32) >> 8);
  v24 = (a4 * a6) >> 40;
  v25 = 3 * LODWORD(STACK[0xC70]);
  LODWORD(STACK[0xC78]) = v25;
  v26 = ((a5 + (v25 ^ 0x834FA89B)) ^ 0x9D1F17F) - ((2 * ((a5 + (v25 ^ 0x834FA89B)) ^ 0x9D1F17F)) & 0xA2694626);
  v27 = *(a2 + 4 * (LODWORD(STACK[0xD20]) - 283 * v24));
  v28 = v8;
  v30 = v14;
  HIDWORD(v32) = v27 ^ 0x4B;
  LODWORD(v32) = v27 ^ 0x91DAE580;
  v31 = v32 >> 7;
  LODWORD(STACK[0xD18]) = v17;
  v33 = 263 * v17;
  v34 = *(a2 + 4 * (v33 + 9604 - 283 * ((((v33 + 9604) * v21) >> 16) >> 6)));
  v35 = ((v27 >> 3) ^ 0xB9) + ((v27 >> 3) ^ 0x46);
  HIDWORD(v32) = v27 ^ 0x2E5CB;
  LODWORD(v32) = v27 ^ 0x91D80000;
  v36 = *(a2 + 4 * v23);
  v37 = v31 ^ (v27 >> 3) ^ (v32 >> 18);
  v38 = (v34 ^ v20) << (-25 * v35);
  HIDWORD(v32) = v34 ^ 0xDDAF;
  LODWORD(v32) = v34 ^ 0x73000000;
  v39 = v32 >> 18;
  HIDWORD(v32) = v36 ^ 0x2E5CB;
  LODWORD(v32) = v36 ^ 0x91D80000;
  v40 = (v36 >> 10) ^ __ROR4__(v36, 17);
  LODWORD(v38) = v39 ^ (v34 >> 3) ^ (v38 | (v34 >> 7) ^ 0xE601BB);
  v41 = (v40 & 0x6CF6F5D8 ^ 0x60C0B450) + (v40 & 0x6CF6F5D8 ^ 0xC364188) - 1828123837;
  v42 = v22 / v41;
  LODWORD(v24) = v22;
  LODWORD(STACK[0xCE8]) = v22;
  v43 = v40 ^ (v32 >> 19);
  v44 = v18 ^ a8 ^ v37;
  v45 = a8 ^ 0xA4E64D;
  v46 = (v26 - 785079533) & 0xFFFFFFFD | (2 * (((785079512 - v26) >> 1) & 1));
  v47 = v9 ^ 0xA0462CE1;
  v48 = (v9 ^ 0xAE263754 ^ v38) - (v9 ^ 0xA0462CE1);
  v49 = ((2 * (v46 ^ 0x6091550A)) & 0xF96EBBFC ^ 0xA0680220) + (v46 ^ 0x4C528BE5);
  v50 = LODWORD(STACK[0xD48]) ^ v15;
  v51 = (LODWORD(STACK[0xD48]) ^ 0x48E5CE4 ^ v38) - v50;
  v52 = ((2 * (v30 - 1360871211)) & 0x7F77FEFA ^ 0x500108EA) + ((v30 - 1360871211) ^ 0x57BB7B08);
  v53 = v52 + v28;
  v54 = v44 ^ 0x1405B9FC ^ v38;
  LODWORD(v38) = v45 + 970621612;
  v55 = *(STACK[0xD50] + 4 * (v24 - v42 * v41));
  v56 = v38 + v52 + v28 - ((2 * (v38 + v52 + v28) + 1032837966) & 0x2F532DEC) - 697203555;
  v57 = v37 ^ 0x123B5CB9;
  v58 = v48 ^ (v54 - (v44 ^ 0x1A65A249)) ^ v51;
  v59 = ((v52 + v28 + 1212416156) & 0x691E50FA ^ 0x691E50FA) + ((v52 + v28 + 1212416156) & 0x691E50FA);
  HIDWORD(v32) = v55 ^ 0xDDAF;
  LODWORD(v32) = v55 ^ 0x73000000;
  v60 = v32 >> 17;
  HIDWORD(v32) = v55 ^ 0xDDAF;
  LODWORD(v32) = v55 ^ 0x73000000;
  v61 = ((2 * (v47 + 55091714 + v49)) & 0xFBFFEDDA) + ((v47 + 55091714 + v49) ^ 0x7DFFF6ED);
  v62 = v50 - 2113929216 + v61 + 2323 - ((2 * (v50 - 2113929216 + v61 + 2323)) & 0x1B9CFCE2) + 231636593;
  v63 = STACK[0xD10];
  LODWORD(v38) = LODWORD(STACK[0xD10]) - v49;
  LODWORD(STACK[0xCC0]) = v38;
  v64 = v60 ^ (v55 >> 10);
  v65 = v18 ^ 0x8FA18BD;
  LODWORD(STACK[0xD48]) = v56;
  v66 = v49 - ((2 * v49 + 95434626) & 0x6F03632) + 105920218;
  v67 = (v59 ^ 0x96E1AF05) + v53;
  v68 = v67 + (v56 ^ 0xA819A9EB);
  LODWORD(STACK[0xCB8]) = v61;
  LODWORD(STACK[0xC90]) = v68;
  LODWORD(v24) = STACK[0xD38];
  v69 = ((2 * (LODWORD(STACK[0xD38]) + v65 - v53 - 151821140)) & 0xF9BF7F9E) + ((LODWORD(STACK[0xD38]) + v65 - v53 - 151821140) ^ 0xFCDFBFCF);
  LODWORD(STACK[0xCD0]) = v62;
  v70 = v64 ^ 0xE6C40F35 ^ ((v32 >> 19) - ((2 * (v32 >> 19)) & 0xCDB19E04) - 421998846);
  v71 = ((2 * v62) & 0xED6B77B8 ^ 0x64680298) + (v62 ^ 0x44CBFAB0);
  LODWORD(STACK[0xCB0]) = v71;
  v72 = v52 - ((2 * v52 + 2141648004) & 0xE28C1520) - 1323727662;
  v73 = (v67 + 682445336) ^ v56 ^ v43;
  v74 = ((2 * (v67 + 682445336 + (v56 ^ 0xA819A9EB))) & 0x9BDABFAE) + ((v67 + 682445336 + (v56 ^ 0xA819A9EB)) ^ 0x4DED5FD7);
  LODWORD(STACK[0xCE4]) = v74;
  v75 = v43 ^ 0x72C1BE54;
  v76 = v70 - 1424178375 - ((2 * v70) & 0x56398672);
  v77 = ((2 * ((v74 - 1307402199) ^ (v69 + 52445233))) & 0xA7FB3FF4) + ((v74 - 1307402199) ^ (v69 + 52445233) ^ 0xD3FD9FFA);
  LODWORD(STACK[0xCE0]) = v77;
  v78 = *(STACK[0xD50] + 4 * LODWORD(STACK[0xCDC]));
  v79 = v76 ^ v62 ^ 0x19628255;
  v80 = ((2 * v72) & 0xFBAB7FB4 ^ 0x6BA90510) + (v72 ^ 0x4A097D77);
  LODWORD(STACK[0xCAC]) = v66;
  v81 = ((2 * v66) & 0xCEEFADFA ^ 0x8AC5A448) + (v66 ^ 0x229505D9);
  LODWORD(STACK[0xC98]) = v81;
  v82 = v80;
  v83 = v77 - v80 - 2 * ((v77 - v80 + 702029792) & 0x39C6661E ^ (v77 - v80) & 0x18) + 1671333350;
  LODWORD(STACK[0xCDC]) = v83;
  v84 = v79 - v71;
  v85 = (v83 & 0xF48D1083 ^ 0xC4091081) + (v83 & 0xF48D1083 ^ 0x30840002);
  v86 = (v78 ^ 0x7300DDAF) - v63 + (*(STACK[0xD50] + 4 * LODWORD(STACK[0xC80])) ^ 0x7300DDAF) + 1774754900 + v58;
  v87 = (((v76 ^ (v61 - 1307909417) ^ 0xAB1CC339) - v61 + 1307909417) ^ ((v73 ^ 0x71C4D486 ^ v76) - (v73 ^ 0xDAD817BF)) ^ (v84 - 155862052)) - v38 + ((v86 - ((2 * v86) & 0xE321C202) - 242163455) ^ (v85 + 2120735154 - ((2 * v85) & 0xF80E2304)) ^ 0x8FF738B3) + 2 * (((v85 + 2120735154 - ((2 * v85) & 0xF80E2304)) ^ 0x7E67D9B2) & ((v86 - ((2 * v86) & 0xE321C202) - 242163455) ^ 0x7190E101)) + 2021928403;
  LODWORD(STACK[0xC88]) = v82;
  LODWORD(STACK[0xCCC]) = v33;
  *(STACK[0xD50] + 4 * ((v33 - 24586) % 0x11Bu)) = v87 + 2121518380 - ((2 * v87 + 384163578) & 0xE601BB5E);
  v88 = v24 + v69 + v75 + v57 + (*(STACK[0xD50] + 4 * ((v33 - 9332) % 0x11Bu)) ^ 0x7300DDAF) + (*(STACK[0xD50] + 4 * ((v33 - 6965) % 0x11Bu)) ^ 0x7300DDAF);
  v89 = v82 + 36323366 + v87 + 33529610 - ((2 * (v82 + 36323366 + v87)) & 0x3FF3E14);
  v90 = v88 - 222948048 - v81 - ((2 * (v88 - 222948048 - v81) + 174621474) & 0xD06706A) + 1136097734;
  *(STACK[0xD50] + 4 * ((v33 - 5124) % 0x11Bu)) = v88 - 222948048 - ((2 * (v88 - 222948048) - 709072236) & 0xE601BB5E) + 1574900473;
  v91 = (HIBYTE(v89) & 0xF ^ 1) * v10 + 279055;
  v92 = (((v88 + 5424 - ((2 * (v88 + 5424) + 27284) & 0xBB5E) + 4857) & 0x14F ^ 0x10F) + ((222948229 - v88) & 0x14F) + (~(v89 >> 20) & 0xF)) * v10;
  v93 = (~HIWORD(v89) & 0xF) * v10 + 279055;
  v94 = ((v89 >> 12) ^ 9) * v10 + 279055;
  v95 = *(v11 + (v93 - ((4396078 * v93) >> 32) * v12)) ^ 0xAF;
  v96 = (~(v89 >> 8) & 0xF) * v10 + 279055;
  v97 = ((*(v11 + (v91 - ((4396078 * v91) >> 32) * v12)) ^ 0xAF) << 8) ^ ((*(v11 + ((v89 >> 28) * v10 + 279055 - ((4396078 * ((v89 >> 28) * v10 + 279055)) >> 32) * v12)) ^ 0xAF) << 12) | v95;
  v98 = v97 - 2 * (v97 & 0x6842E ^ v95 & 0xA);
  v99 = *(v11 + ((v89 & 0xF ^ 0xA) * v10 + 279055 - ((4396078 * ((v89 & 0xF ^ 0xA) * v10 + 279055)) >> 32) * v12));
  v100 = 833 * (HIBYTE(v90) & 0xF ^ 6) + 279055;
  v101 = *(v11 + (v92 - ((4396078 * v92) >> 32) * v12)) ^ 0xAF;
  v102 = (v99 ^ 0xAF) + 507395520 - ((2 * (v99 ^ 0xAF)) & 0x19A) + 13;
  v103 = 833 * ((v90 >> 20) & 0xF ^ 8) + 279055;
  v104 = 833 * (HIWORD(v90) & 0xF ^ 3) + 279055;
  v105 = 833 * ((v90 >> 12) ^ 3) + 279055;
  v106 = (v98 + 957776932) ^ (16 * v101 - ((32 * v101) & 0x1F00) - 1706528887);
  v107 = *(v11 + (v105 - 977 * ((4396078 * v105) >> 32)));
  v108 = 833 * ((v90 >> 8) & 0xF ^ 8) + 279055;
  v109 = ((((*(v11 + (v100 - 977 * ((4396078 * v100) >> 32))) ^ 0xAF) << 8) ^ ((*(v11 + ((v90 >> 28) * v10 + 279055 - 977 * ((4396078 * ((v90 >> 28) * v10 + 279055)) >> 32))) ^ 0xAF) << 12) | *(v11 + (v104 - 977 * ((4396078 * v104) >> 32))) ^ 0xAF) << 8) ^ ((*(v11 + (v103 - 977 * ((4396078 * v103) >> 32))) ^ 0xAF) << 12);
  v110 = v90 & 0xF ^ 5;
  v111 = ((((*(v11 + (v94 - ((4396078 * v94) >> 32) * v12)) ^ 0xAF) << ((v89 >> 20) & 4 ^ 4) << ((v89 >> 20) & 4)) ^ (*(v11 + (v96 - ((4396078 * v96) >> 32) * v12)) ^ 0xAF | (v106 << 8))) << 8) ^ 0xEBAD0000;
  v112 = 833 * ((v90 >> 4) ^ 3) + 279055;
  v113 = v109 | *(v11 + (v108 - 977 * ((4396078 * v108) >> 32))) ^ 0xAF;
  v114 = v111 + 406789952 - ((2 * v111) & 0x307E3E00);
  v115 = (v113 << 8) - 1957923168 - ((v113 << 9) & 0x1698EC00) + 1;
  v116 = v115 ^ ((v107 ^ 0xAF) << 12);
  v117 = *(v11 + (833 * v110 + 279055) % (((833 * v110 + 527) & 0x3D1) + ((496 - 833 * v110) & 0x3D1u))) ^ 0xAF;
  v118 = v114 + 7;
  v119 = v117 + 1139375568 - ((2 * v117) & 0x1A8) + 4;
  v120 = 833 * (((2 * (v102 & 0xF | (16 * (v119 & 0xF)))) & 0x1FC ^ 0x98) + ((v102 & 0xF | (16 * (v119 & 0xF))) ^ 0x2DF5FFB3));
  v121 = *(v11 + (v120 + 1921707401) % 0x3D1u) ^ LODWORD(STACK[0xC68]);
  v122 = 833 * (((2 * v121) & 0xFE4) + (v121 ^ 0x9AFFF7F2));
  LOBYTE(v96) = *(v11 + (v112 - 977 * ((4396078 * v112) >> 32))) ^ ((v116 ^ 0x8B4C76A0 | v119 ^ 0x43E97DD0) >> 4);
  v123 = *(v11 + ((v89 >> 4) * v10 + 279055 - ((4396078 * ((v89 >> 4) * v10 + 279055)) >> 32) * v12)) ^ ((v118 ^ 0x183F1F40 | v102 ^ 0x1E3E3DC0) >> 4);
  v124 = *(v11 + (v122 - 1524949867) % 0x3D1) ^ 0xAF;
  v125 = *(v11 + (v120 + 1922007281) % 0x3D1u) ^ (*(v11 + (v122 - 1524649987) % 0x3D1) >> 4);
  v126 = 833 * ((((2 * v125) ^ 0xA) & 0x8E) + (v125 ^ 0xE2));
  v127 = 833 * ((~(2 * (v123 & 0xF | (16 * (v96 & 0xF)))) & 0x1FC) + ((v123 & 0xF | (16 * (v96 & 0xF))) ^ 0xFC7B7701));
  v128 = v124 - ((2 * v124) & 0xFFFFFF1F);
  v129 = *(v11 + (v127 + 1916761481) % 0x3D1) ^ (16 * (*(v11 + (v126 - 977 * ((4396078 * v126) >> 32))) ^ 0xAF));
  v130 = 833 * (((2 * (v129 ^ 0xA9)) & 0x1F72) + (v129 ^ 0x1CFF7F16));
  v131 = 833 * ((-((*(v11 + (v130 - 1532567178) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v11 + (v127 + 1917061361) % 0x3D1)) + 59143;
  v132 = 833 * (((2 * (v96 & 0xF0 | (v123 >> 4))) & 0x17A ^ 0x150) + ((v96 & 0xF0 | (v123 >> 4)) ^ 0x6D7FF417));
  v133 = *(v11 + (v132 - 1297773558) % 0x3D1u) ^ (16 * (*(v11 + (v131 - 977 * ((4396078 * v131) >> 32))) ^ 0xAF));
  v134 = (v128 + 504939407) ^ (16 * (*(v11 + (v130 - 1532867058) % (1722066215 * (((129050014 - v68) & 0xAC95DA47) + ((v68 - 129050015) & 0xAC95DA47)))) ^ 0xAF));
  v135 = 833 * (((2 * (v133 ^ 0xF)) & 0x1EBE) + (v133 ^ 0x1F967FF0));
  v136 = v135 + 927757032;
  v137 = ((v116 >> 8) & 0xF0 | (v118 >> 12)) ^ 0x71;
  v138 = v137 - 862270882 - ((2 * v137) & 0xBC);
  v139 = (-((*(v11 + (v135 + 928056912) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v11 + (v132 - 1297473678) % 0x3D1u);
  v140 = *(v11 + (833 * (v138 ^ 0xCC9ACA5E) + 59143) % 0x3D1) ^ (16 * (*(v11 + (833 * v139 + 59143 - 977 * ((4396078 * (833 * v139 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF;
  v141 = *(v11 + 833 * (((2 * v138) & 0x15E ^ 0x1C) + (v138 ^ 0xCC9ACBF1)) % 0x3D1);
  v142 = 833 * (((2 * v140) & 0xFFFFFFBF) + (v140 ^ 0xFFCDFFDF));
  v143 = (v116 >> 12) & 0xF0 | HIWORD(v118) & 0xF;
  v144 = (-((*(v11 + (v142 - 1565006384) % 0x3D1) >> 4) ^ 0xA) - 81) ^ v141;
  v145 = 833 * (((2 * (v143 & 0x7F)) ^ 0x9E) + (v143 ^ 0xF9A7EFB0));
  v146 = *(v11 + (v145 - 1534158136) % 0x3D1) ^ (16 * (*(v11 + (833 * v144 + 59143 - 977 * ((4396078 * (833 * v144 + 59143)) >> 32))) ^ 0xAF));
  v147 = 833 * (((2 * (v146 ^ 0x3F)) & 0x1ADE) + (v146 ^ 0xB3FD7DC0));
  v148 = ((*(v11 + (v142 - 1565306264) % 0x3D1) ^ 0xAF) << 12) ^ ((*(v11 + v136 % 0x3D1) ^ 0xAF) << 8);
  v149 = (-((*(v11 + (v147 + 1412453440) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v11 + (v145 - 1533858256) % 0x3D1);
  v150 = 833 * (((2 * (HIWORD(v115) & 0x70 | (v118 >> 20) & 0xF)) ^ 0x86) + ((HIWORD(v115) & 0xF0 | (v118 >> 20) & 0xF) ^ 0xABDBF43C));
  v151 = *(v11 + (v150 - 917875256) % 0x3D1);
  v152 = *(v11 + (833 * v149 + 59143 - 977 * ((4396078 * (833 * v149 + 59143)) >> 32))) ^ 0xAF;
  v153 = 16 * v152 - ((32 * v152) & 0xB20) + 1587729810;
  v154 = (v150 - 917575376) % (((((2 * v72) & 0xFBAB7FB4 ^ 0x6BA90510) + (v72 ^ 0x4A097D77) + 38) & 0x3D1) + (v72 & 0x3D1 ^ 0x150));
  v155 = 833 * (((2 * (v151 ^ v153 ^ 0xAF)) & 0xFFBFEBD6 ^ 0xBD05AB04) + (v151 ^ v153 ^ 0xA17D20D6));
  v156 = (v147 + 1412153560) % 0x3D1;
  v157 = HIBYTE(v118) ^ 0xE8;
  v158 = (-((*(v11 + (v155 + 1749436612) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v11 + v154);
  v159 = ((2 * v158) & 0x13C) + (v158 ^ 0x7FFFDF9E);
  if (v106 == -1554060371)
  {
    v157 = 15;
  }

  v160 = 833 * (((2 * (v157 & (HIBYTE(v118) ^ 0x18) ^ (v115 >> 20) & 0xF0)) & 0x1FC ^ 0x160) + (v157 & (HIBYTE(v118) ^ 0x18) ^ (v115 >> 20) & 0xF0 ^ 0xFBDBB74E));
  v161 = *(v11 + (v160 + 2047817097) % 0x3D1) ^ (16 * (*(v11 + ((854 - v159) & 0x341 ^ (v159 + 169) & 0x141u) * (v159 - 2147475287) % 0x3D1) ^ 0xAF));
  v162 = 833 * (((2 * (v161 ^ 0x3E)) & 0xED4) + (v161 ^ 0x6A9FA7C5));
  v163 = ((*(v11 + (v155 + 1749136732) % 0x3D1) ^ 0xAF) << 20) ^ ((*(v11 + v156) ^ 0xAF) << 16);
  v164 = v148 ^ v134;
  v165 = (-((*(v11 + (v162 + 243645061) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v11 + (v160 + 2048116977) % 0x3D1);
  v166 = 833 * (((16 * v128 - 16) & 0xF0 | v102 & 0xF) ^ 0xFD) + 599760;
  v167 = v166 - 977 * ((4396078 * v166) >> 32);
  v168 = v162 + 243345181;
  v169 = 833 * ((v134 & 0xF0 | v123 & 0xF) ^ 0x8F);
  v170 = -599761 - v169;
  v169 += 599760;
  v171 = (v153 & 0x140 ^ 0xC9EDF043) + (v153 & 0x140 ^ 0x100);
  v172 = (v170 & 0xC9E5F292) + (v169 & 0xDF292);
  v173 = v163 ^ v164;
  v174 = 833 * (((v164 >> 4) & 0xF0 | (v123 >> 4)) ^ 0x3A) + 599760;
  v175 = v169 % (v171 ^ v172);
  v176 = v174 - 977 * ((4396078 * v174) >> 32);
  v177 = STACK[0xD08];
  v178 = *(v11 + (833 * ((((HIBYTE(v115) & 0xF0 | (v118 >> 28)) ^ 0x81) - 2032406336 - 2 * (((HIBYTE(v115) & 0xF0 | (v118 >> 28)) ^ 0x81) & 0xD4 ^ (HIBYTE(v115) & 0x10 | (v118 >> 28) & 0x14))) ^ 0x86DBF0C0) + 59143) % 0x3D1) ^ (16 * (*(v11 + (833 * v165 + 59143 - 977 * ((4396078 * (833 * v165 + 59143)) >> 32))) ^ 0xAF));
  v179 = ((((v148 >> 8) & 0xF0 | (v118 >> 12)) ^ 1) + 720) * (STACK[0xD08] & 0x341 ^ STACK[0xD18] & 1);
  v180 = v179 - 977 * ((4396078 * v179) >> 32);
  v181 = ((v173 >> 12) & 0xF0 | HIWORD(v118) & 0xF) ^ 0x8F;
  v182 = v181 - 1894019680 - ((2 * v181) & 0x140);
  v183 = (833 * (v182 ^ 0x8F1B8DA0) + 599760) % 0x3D1 + 1923235429 - ((2 * ((833 * (v182 ^ 0x8F1B8DA0) + 599760) % 0x3D1)) & 0x4CA);
  v184 = v173 ^ ((*(v11 + v168 % 0x3D1) ^ 0xAF) << 24);
  v185 = (833 * (((HIWORD(v163) & 0xF0 | (v118 >> 20) & 0xF) ^ 3) + (v183 & 0x27F59 ^ 0xEF0C4118) + (v183 & 0x359 ^ 0x241) + ((v183 & 0x11F ^ 5 | v183 & 0x11F ^ 0xD8B4B51A) ^ 0xC8453669)) + 833) % 0x3D1;
  v186 = ((v118 >> 20) ^ 0x183) >> ((v182 & 0xA7 ^ 7 | v182 & 0xA7 ^ 0xA0) ^ 0xA3);
  v187 = STACK[0xC98];
  LOBYTE(v186) = v186 - ((2 * v186) & 0xF8) + 124;
  v188 = (((v186 & 0xF | (16 * (((v184 ^ 0x6DE01C43u) >> 24) & 0xF))) ^ 0x3C) + 720) * (((LODWORD(STACK[0xC98]) + 259) & 0x341) + (STACK[0xCAC] & 0x341 ^ 0x41));
  v189 = 833 * ((((v184 ^ 0x6DE01C43 ^ (~*(v11 + 833 * (v178 ^ 0xAF) + 59143 - 977 * (((8792155 * (833 * (v178 ^ 0xAFu) + 59143)) >> 32) >> 1)) << 28)) >> 24) & 0xF0 | (v186 >> 4)) ^ 0x77) + 599760;
  v190 = *(v11 + (v189 - 977 * ((4396078 * v189) >> 32))) ^ 0xFF;
  v191 = *(v11 + v167);
  v192 = *(v11 + v180);
  v193 = v191 ^ (16 * (*(v11 + v175) ^ 0xAF));
  v194 = v192 ^ 0xAF;
  v195 = *(v11 + (v183 ^ 0x72A23E65));
  v196 = v193 ^ ((*(v11 + v176) ^ 0xAF) << 8);
  v197 = v196 ^ (v194 << 12);
  v198 = v197 ^ ((v195 ^ 0xAF) << 16);
  v199 = v198 ^ ((*(v11 + v185) ^ 0xAF) << 20);
  v200 = v199 ^ ((*(v11 + (v188 - 977 * ((4396078 * v188) >> 32))) ^ 0xAF) << 24);
  v201 = 833 * (((v200 ^ ((v190 << 28) - ((v190 << 29) & 0xA0000000) + 1362923910)) >> 28) ^ 5) + 579768;
  v202 = 833 * (HIBYTE(v200) & 0xF) + 579768;
  v203 = LODWORD(STACK[0xCB0]) + LODWORD(STACK[0xCB8]);
  v204 = ((*(v11 + (v202 - 977 * ((4396078 * v202) >> 32))) ^ 0xAF) << 8) ^ ((*(v11 + (v201 - 977 * ((4396078 * v201) >> 32))) ^ 0xAF) << 12);
  v205 = (v196 >> 8) & 0xF;
  v206 = ((v204 | *(v11 + (833 * (HIWORD(v198) & 0xF) + 579768 - 977 * ((4396078 * (833 * (HIWORD(v198) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 8) ^ ((*(v11 + (833 * ((v199 >> 20) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v199 >> 20) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 12);
  v207 = (LODWORD(STACK[0xCD0]) ^ 0x781DECDF) - v203;
  v208 = ~v191 & 0xF;
  v209 = (v193 >> 4) ^ 0xA;
  v210 = STACK[0xD28];
  *(STACK[0xD50] + 4 * (LODWORD(STACK[0xD00]) % 0x11B)) = (v207 + 1152047365) ^ 0x91DAE5CB ^ (16 * (*(v11 + (833 * v209 + 579768 - 977 * ((4396078 * (833 * v209 + 579768)) >> 32))) ^ 0xAF)) ^ (((v206 | *(v11 + (833 * v205 + 579768 - 977 * ((4396078 * (833 * v205 + 579768)) >> 32))) ^ 0xAF) << 8) ^ ((*(v11 + (833 * (v197 >> 12) + 579768 - 977 * ((4396078 * (833 * (v197 >> 12) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v11 + (833 * v208 + 579768 - 977 * ((4396078 * (833 * v208 + 579768)) >> 32))) ^ 0xAF);
  v211 = ((v203 - 1152047365) ^ (LODWORD(STACK[0xCC0]) - 2021928403)) - v187;
  v212 = (LODWORD(STACK[0xD48]) ^ 0x627A0458) - LODWORD(STACK[0xCE4]) + 1307402199;
  v213 = ((2 * (v212 + (LODWORD(STACK[0xCDC]) ^ 0xC63999F9) + 1)) & 0x3B87FB7E) + ((v212 + (LODWORD(STACK[0xCDC]) ^ 0xC63999F9) + 1) ^ 0x1DC3FDBF);
  LODWORD(STACK[0xD38]) = LODWORD(STACK[0xC90]) + 1085369005 + LODWORD(STACK[0xCE0]);
  v214 = LODWORD(STACK[0xC88]) + 620780990 + v213;
  v215 = (v89 ^ 0x1FF9F0A) + v212 - 2 * ((v89 ^ 0x1FF9F0A) & v212);
  v216 = STACK[0xCF8];
  v217 = STACK[0xCF0];
  v218 = STACK[0xD20];
  *(STACK[0xD50] + 4 * ((LODWORD(STACK[0xCCC]) + 13549) % 0x11Bu)) = v215 + 1929436591 - ((2 * v215) & 0xE601BB5E);
  LODWORD(STACK[0xD48]) = ((v207 - v211 - 583859704) ^ 0x58BD3D9A) + 183387985 - ((2 * ((v207 - v211 - 583859704) ^ 0x58BD3D9A)) & 0x15DC8EA2);
  v219 = STACK[0xD30];
  v220 = (LODWORD(STACK[0xD18]) + 1);
  LODWORD(STACK[0xD10]) = v187 + 203963650 + v203 + v211 + 2904;
  v221 = *(STACK[0xD40] + 8 * ((961 * (v217 == 0)) ^ LODWORD(STACK[0xB80])));
  v222 = (LODWORD(STACK[0xCE8]) + 263);
  LODWORD(STACK[0xD08]) = v177 - 1;
  return v221((v217 - 1));
}

uint64_t sub_1BADDB080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v12 + LODWORD(STACK[0xB28]) - ((2 * (v12 + LODWORD(STACK[0xB28])) + 202374428) & 0xEE9DF7A) - 444797365;
  v15 = v14;
  v16 = LODWORD(STACK[0xAF4]) ^ 0x1BB56B26;
  LODWORD(STACK[0xB78]) = v16;
  v17 = v16 - a5 + 2091930214 - ((2 * (v16 - a5 + 2091930214)) & 0x5D324E9E);
  v18 = v10;
  v19 = *(v10 + (833 * (v14 >> 28) + 279055 - ((4396078 * (833 * (v14 >> 28) + 279055)) >> 32) * v11));
  v20 = 833 * (HIBYTE(v14) & 0xF ^ 7) + 279055;
  v21 = *(v10 + (v20 - ((4396078 * v20) >> 32) * v11));
  v22 = 16 * (v19 ^ 0xAF) - 2122836307 - ((32 * (v19 ^ 0xAF)) & 0xD40);
  v23 = (v21 ^ 0xAF) - ((2 * (v21 ^ 0xAF)) & 0x18C) - 1859684666;
  v24 = 833 * ((v15 >> 20) & 0xF ^ 7) + 279055;
  v25 = 833 * (HIWORD(v15) & 0xF ^ 4) + 279055;
  v26 = ((v22 ^ 0x817816AD) - (v22 ^ 0x105F606B ^ v23)) ^ ((v23 ^ 0x6ED88939) + 1);
  v27 = ((v26 - ((2 * v26) & 0xED8C) + 30406) ^ v23) + (v22 ^ 0x16AD);
  v28 = *(v18 + (v24 - 977 * ((4396078 * v24) >> 32))) ^ 0xAF;
  v29 = *(v18 + (v25 - 977 * ((4396078 * v25) >> 32))) ^ 0xAF;
  v30 = 833 * ((v15 >> 12) ^ 0xE) + 279055;
  v31 = *(v18 + (v30 - 977 * ((4396078 * v30) >> 32))) ^ 0xAF;
  v32 = ((v29 << 8) | (v27 << 16)) ^ (v28 << 12);
  v33 = 833 * (~(v15 >> 8) & 0xF) + 279055;
  LODWORD(STACK[0xD18]) = v15;
  v34 = 833 * ((v15 >> 4) ^ 0xB) + 279055;
  v35 = v32 | *(v18 + (v33 - 977 * ((4396078 * v33) >> 32))) ^ 0xAF;
  v36 = *(v18 + (v34 - 977 * ((4396078 * v34) >> 32))) ^ 0xAF;
  v37 = (v35 << 8) - 656092883 - ((v35 << 9) & 0xB1C9A200);
  v38 = v37 ^ (v31 << 12);
  LODWORD(STACK[0xCC0]) = a5;
  v39 = *(v18 + (833 * (v15 & 0xF ^ 0xD) + 279055 - 977 * ((4396078 * (833 * (v15 & 0xF ^ 0xD) + 279055)) >> 32)));
  v40 = 833 * (((v17 + 781789007) >> 28) ^ 2) + 279055;
  v41 = 833 * (((v17 + 781789007) >> 16) & 0xF ^ 9) + 279055;
  v42 = *(v18 + (v40 - 977 * ((4396078 * v40) >> 32))) ^ 0xAF;
  v43 = (v39 ^ 0xAF) - 2026981527 - ((2 * (v39 ^ 0xAF)) & 0xD2);
  v44 = 833 * (((v17 + 781789007) >> 24) & 0xF ^ 0xE) + 279055;
  v45 = (v38 ^ 0xD8E4D12D | v43 ^ 0x872EB769) ^ (16 * v36);
  v46 = *(v18 + (v44 - 977 * ((4396078 * v44) >> 32)));
  v47 = 833 * (((v17 + 781789007) >> 20) & 0xF ^ 9) + 279055;
  v48 = ((((v46 ^ 0xAF) << 8) ^ (v42 << 12) | *(v18 + (v41 - 977 * ((4396078 * v41) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v47 - 977 * ((4396078 * v47) >> 32))) ^ 0xAF) << 12);
  v49 = *(v18 + (833 * (((v17 + 10063) >> 12) ^ 2) + 279055 - 977 * ((4396078 * (833 * (((v17 + 10063) >> 12) ^ 2u) + 279055)) >> 32))) ^ 0xAF;
  v50 = 833 * (((v17 + 79) >> 4) ^ 4) + 279055;
  v51 = v50 - 977 * ((4396078 * v50) >> 32);
  v52 = *(v18 + (833 * (((v17 + 781789007) >> 8) & 0xF ^ 7) + 279055 - 977 * ((4396078 * (833 * (((v17 + 781789007) >> 8) & 0xF ^ 7) + 279055)) >> 32))) ^ 0xAF;
  v53 = 833 * ((-96 - v17) & 0xF) + 279055;
  LODWORD(STACK[0xCCC]) = v12;
  v54 = ((v48 | v52) << 8) + 285382832 - (((v48 | v52) << 9) & 0x22053000) + 13;
  v55 = v54 ^ (v49 << 12);
  v56 = *(v18 + (v53 - 977 * ((4396078 * v53) >> 32)));
  LOBYTE(v49) = *(v18 + v51);
  v57 = LOBYTE(STACK[0x1112]) ^ 0xAF;
  v58 = 16 * v57;
  LODWORD(STACK[0xD08]) = 16 * v57;
  v57 *= 32;
  LODWORD(STACK[0xD00]) = v57;
  v59 = v58 - 1087890960 - (v57 & 0xFFFFF3FF);
  LODWORD(STACK[0xD28]) = v59;
  v60 = (v56 ^ 0xAF) - 1085815424 - ((2 * (v56 ^ 0xAF)) & 0x114) + 10;
  v61 = v55 ^ 0x110298B0 | v60 ^ 0xBF47C580;
  v62 = v43 & 0xF;
  v63 = 833 * (((2 * (v43 & 0xF | (16 * (v60 & 0xF)))) & 0xFF9F ^ 0x112) + ((v62 | (16 * (v60 & 0xF))) ^ 0x7FFDF766));
  v64 = *(v18 + (v63 - 2036494728) % 0x3D1u) ^ v59;
  v65 = *(v18 + (v63 - 2036194848) % 0x3D1u);
  LOBYTE(v63) = v49 ^ (v61 >> 4);
  v66 = 833 * (((2 * (v64 ^ 0xA9)) & 0xEAEF33F2 ^ 0x6A4033E0) + (v64 ^ 0x4A5F80A6));
  v67 = *(v18 + (v66 + 1171579854) % 0x3D1);
  LODWORD(STACK[0xD30]) = a8;
  v68 = (v45 >> 4) | (16 * (v63 & 0xF));
  v69 = 833 * ((-((*(v18 + (v66 + 1171879734) % 0x3D1) >> 4) ^ 0xA) - 81) ^ v65) + 59143;
  v70 = 833 * (((2 * v68) & 0xFA ^ 0xE0) + (v68 ^ 0x7BAFFE8D));
  v71 = *(v18 + (v70 - 2007641526) % 0x3D1u) ^ (16 * (*(v18 + (v69 - 977 * ((4396078 * v69) >> 32))) ^ 0xAF));
  v72 = 833 * (((2 * (v71 ^ 0xAF)) & 0x1F76) + (v71 ^ 0x7D7BDF14));
  v73 = *(v18 + (v72 - 1343363188) % 0x3D1u);
  v74 = (-((*(v18 + (v72 - 1343063308) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v70 - 2007341646) % 0x3D1u);
  v75 = (v67 ^ 0xAF) - ((2 * (v67 ^ 0xAF)) & 0x1A4) - 1527307822;
  v76 = v75 ^ (16 * (v73 ^ 0xAF));
  v77 = 833 * (((2 * (v63 & 0xF0 | (v45 >> 8) & 0xF)) & 0xDC ^ 0x40) + ((v63 & 0xF0 | (v45 >> 8) & 0xF) ^ 0x7FFFFBCE));
  v78 = *(v18 + (v77 - 2146449895) % 0x3D1u) ^ (16 * (*(v18 + (833 * v74 + 59143 - 977 * ((4396078 * (833 * v74 + 59143)) >> 32))) ^ 0xAF));
  v79 = 833 * (((2 * (v78 ^ 0x8F)) & 0x17BE) + (v78 ^ 0xD9EDFB70));
  v80 = v79 - 526363032;
  v81 = 833 * ((-((*(v18 + (v79 - 526063152) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v77 - 2146150015) % 0x3D1u)) + 59143;
  v82 = *(v18 + (v81 - 977 * ((4396078 * v81) >> 32)));
  v83 = *(v18 + v80 % 0x3D1) ^ 0xAF;
  v84 = (v55 >> 8) & 0xF0 | (v38 >> 12);
  v85 = 833 * (((2 * v84) & 0x1FC ^ 0x138) + (v84 ^ 0xE767F63));
  v86 = *(v18 + (v85 - 261460599) % 0x3D1u) ^ (16 * (v82 ^ 0xAF));
  v87 = 833 * ((v86 ^ 0xEF4FFF50) + 2 * (v86 ^ 0xAF));
  v88 = v87 + 1286662728;
  v89 = 833 * ((-((*(v18 + (v87 + 1286962608) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v85 - 261160719) % 0x3D1u)) + 59143;
  v90 = (v55 >> 12) & 0xF0 | HIWORD(v38) & 0xF;
  v91 = 833 * (((2 * v90) & 0x1FC ^ 0x48) + (v90 ^ 0xDB7FEDDA));
  v92 = *(v18 + (v91 - 994345079) % 0x3D1) ^ (16 * (*(v18 + (v89 - 977 * ((4396078 * v89) >> 32))) ^ 0xAF)) ^ 0xAF;
  v93 = *(v18 + (v91 - 994045199) % 0x3D1);
  v94 = 833 * (((2 * v92) & 0x1A7E) + (v92 ^ 0xFF7FFD3F));
  v95 = *(v18 + (v94 - 1601577720) % 0x3D1);
  v96 = ((v83 << 8) | 0xAA4C00E8) ^ ((*(v18 + v88 % 0x3D1) ^ 0xAF) << 12);
  v97 = 833 * ((-((*(v18 + (v94 - 1601277840) % 0x3D1) >> 4) ^ 0xA) - 81) ^ v93) + 59143;
  v98 = HIWORD(v54) & 0xF0 | (v37 >> 20) & 0xF;
  v99 = 833 * (((2 * v98) & 0xFFFFFFDF ^ 0x1C) + (v98 ^ 0xB9DC7EE1));
  v100 = *(v18 + (v99 + 965205848) % 0x3D1) ^ (16 * (*(v18 + (v97 - 977 * ((4396078 * v97) >> 32))) ^ 0xAF));
  v101 = 833 * (((2 * (v100 ^ 0x88)) & 0x1BB0) + (v100 ^ 0x9FBF7D77));
  v102 = (v101 + 837315375) % 0x3D1;
  v103 = (-((*(v18 + (v101 + 837614278) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v99 + 965505728) % 0x3D1);
  v104 = 833 * v103 - ((1666 * v103 + 118286) & 0x59DA0) + 2031859159;
  v105 = (v54 >> 20) & 0xF0 | HIBYTE(v37) & 0xF;
  v106 = 833 * (((2 * v105) & 0x164 ^ 0x20) + (v105 ^ 0xE73B35AA));
  v107 = v106 - 1739116843;
  v108 = *(v18 + (v106 - 1738816963) % 0x3D1);
  v109 = *(v18 + v107 % 0x3D1) ^ (16 * (*(v18 + (v104 ^ 0x791ACED0u) % ((v104 & 0xBC3A ^ (-404740857 - 833 * v103 - ((-118288 - 1666 * v103) & 0xCFC2181E)) & 0xC068BC3A ^ 0x3F9F7FE5) - ((-404740857 - 833 * v103 - ((-118288 - 1666 * v103) & 0xCFC2181E)) & 0x7B52D2F9 ^ 0x63400009 | v104 & 0x2D2F9 ^ 0x2C2D0) + ((-404740857 - 833 * v103 - ((-118288 - 1666 * v103) & 0xCFC2181E)) & 0x3BBB9304 ^ 0x23A38204 ^ v104 & 0x39304) + 1)) ^ 0xAF)) ^ 0xAF;
  v110 = 833 * (((2 * v109) & 0x1FCA) + (v109 ^ 0xFDCE6FE5));
  LODWORD(STACK[0xCF8]) = v110;
  v111 = 833 * ((-((*(v18 + (v110 + 592142922) % 0x3D1) >> 4) ^ 0xA) - 81) ^ v108) + 59143;
  LODWORD(STACK[0xCDC]) = v37;
  v112 = 833 * ((HIBYTE(v54) & 0xF0 | (v37 >> 28)) ^ 0x1D) + 59143;
  v113 = *(v18 + (v112 - 977 * ((4396078 * v112) >> 32))) ^ (16 * (*(v18 + (v111 - 977 * ((4396078 * v111) >> 32))) ^ 0xAF)) ^ 0xAF;
  v114 = 833 * v113;
  v115 = 1666 * v113;
  v116 = 833 * v113 - ((1666 * v113 + 118286) & 0xBD89BA) - 505435164;
  v117 = v76 ^ 0x57EFDD51 ^ v96;
  v118 = *(v18 + v102) ^ 0xAF;
  v119 = v117 ^ ((v95 ^ 0xAF) << 16);
  v120 = v119 ^ (v118 << 20);
  LODWORD(STACK[0xCE0]) = v120;
  v121 = (((1075945145 - v114 - ((-118288 - v115) & 0x80450B82)) & 0xF1141821 ^ 0x40000001) + (v116 & 0x141821 ^ 0x140001) + (v116 & 0x10F450 ^ (1075945145 - v114 - ((-118288 - v115) & 0x80450B82)) & 0xE910F450 ^ 0xBFEFBFEF) + 1) & ((v116 & 0x3C9FF3 ^ 0x1C84D1) + ((1075945145 - v114 - ((-118288 - v115) & 0x80450B82)) & 0xF1BC9FF3 ^ 0x402085C1));
  v122 = ((2 * (v62 & 0xFFFFFF0F | (16 * (v75 & 0xF)))) & 0xFFFFFF7F ^ 0x52) + ((v62 & 0xFFFFFF0F | (16 * (v75 & 0xF))) ^ 0x759ADF96);
  v123 = *(v18 + ((v122 + 785) & 0x341 ^ (238 - v122) & 0x141) * (v122 - 1973083375) % 0x3D1);
  v124 = 833 * ((v76 & 0xF0 | (v45 >> 4)) ^ 0xD0) + 599760;
  v125 = 833 * (((v117 >> 4) & 0xF0 | (v45 >> 8) & 0xF) ^ 0xC0) + 599760;
  v126 = *(v18 + (v125 - 977 * ((4396078 * v125) >> 32)));
  v127 = v123 ^ (16 * (*(v18 + (v124 - 977 * ((4396078 * v124) >> 32))) ^ 0xAF));
  LODWORD(STACK[0xCF0]) = v127;
  v128 = 833 * (((v96 >> 8) & 0xF0 | (v38 >> 12)) ^ 0xD) + 599760;
  v129 = 833 * (((v119 >> 12) & 0xF0 | HIWORD(v38) & 0xF) ^ 0x44) + 599760;
  v130 = *(v18 + (v129 - 977 * ((4396078 * v129) >> 32))) ^ 0xAF;
  v131 = 833 * ((HIWORD(v120) & 0xF0 | (v37 >> 20) & 0xF) ^ 0x5E) + 599760;
  v132 = *(v18 + (v131 - 977 * ((4396078 * v131) >> 32)));
  v133 = ((*(v18 + (v128 - 977 * ((4396078 * v128) >> 32))) ^ 0xAF) << 12) ^ ((v126 ^ 0xAF) << 8);
  LODWORD(STACK[0xCE4]) = v133;
  LODWORD(STACK[0xCE8]) = v133 ^ v127;
  v134 = (v133 ^ v127 | ((v132 ^ 0xAF) << 20)) ^ (v130 << 16);
  LODWORD(STACK[0xCD0]) = v134;
  v135 = *(v18 + (833 * ((v134 >> 20) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v134 >> 20) & 0xF) + 579768)) >> 32))) ^ 0xAF;
  v136 = 16 * v135 - ((32 * v135) & 0x1C80) + 1966353993;
  LODWORD(STACK[0xCB8]) = v136;
  v137 = (v136 & 0x340 ^ 0x240 | v136 & 0x340 ^ 0x101) * ((~v123 & 0xF) + 696);
  v138 = v137 - 977 * ((4396078 * v137) >> 32);
  v139 = v138 + 345117190 - ((2 * v138) & 0x40C);
  LODWORD(STACK[0xCB0]) = v139;
  v140 = (v9 ^ 0xA0462CE1) - (v139 & 0x10800C49 ^ 0x49400C49 | v139 & 0x49);
  v141 = ((2 * v140) & 0xFAFFEE62) + (v140 ^ 0x7D7FF731);
  LODWORD(STACK[0xC48]) = v141;
  v142 = v8 + LODWORD(STACK[0xCCC]);
  LODWORD(STACK[0xC30]) = v142;
  v143 = v142 + LODWORD(STACK[0xB60]) - 2 * ((v142 + LODWORD(STACK[0xB60]) + 170897964) & 0xA4CC6AA ^ (v142 + LODWORD(STACK[0xB60])) & 2);
  v144 = 833 * (((v143 - 1266911020) >> 24) & 0xF ^ 0xA) + 279055;
  v145 = LODWORD(STACK[0xCC0]) - 135352336 + v141;
  v146 = LODWORD(STACK[0xB14]) - v145 - ((2 * (LODWORD(STACK[0xB14]) - v145) + 1480732362) & 0x6CFB6D5A);
  v147 = 833 * (((v143 - 1266911020) >> 20) & 0xF ^ 4) + 279055;
  v148 = 833 * (((v143 - 1266911020) >> 16) & 0xF ^ 0xC) + 279055;
  v149 = v148 - 977 * ((4396078 * v148) >> 32);
  v150 = 833 * (((v143 + 30932) >> 12) ^ 0xC) + 279055;
  v151 = *(v18 + v149) ^ 0xAF ^ ((*(v18 + (v144 - 977 * ((4396078 * v144) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v143 + 880572628) >> 28) + 279055 - 977 * ((4396078 * (833 * ((v143 + 880572628) >> 28) + 279055)) >> 32))) ^ 0xAF) << 12) ^ (16 * (*(v18 + (v147 - 977 * ((4396078 * v147) >> 32))) ^ 0xAF));
  LODWORD(STACK[0xCAC]) = v143 - 1266911020;
  v152 = 833 * (((v143 - 1266911020) >> 8) & 0xF ^ 6) + 279055;
  v153 = v152 - 977 * ((4396078 * v152) >> 32);
  v154 = 833 * (((v143 - 44) >> 4) ^ 0xA) + 279055;
  v155 = 833 * ((v143 - 12) & 0xF ^ 8) + 279055;
  v156 = v155 - 977 * ((4396078 * v155) >> 32);
  v157 = v146 - 1566650862;
  v158 = 833 * (((v146 - 1566650862) >> 28) ^ 0xB) + 279055;
  v159 = v158 - 977 * ((4396078 * v158) >> 32);
  v160 = *(v18 + v153) ^ 0xAF;
  v161 = (v151 << 16) - 759837465 - ((v151 << 17) & 0xA56A0000);
  LODWORD(STACK[0xBD0]) = v161;
  v162 = ((v161 ^ 0xD2B5CCE7) + (v160 << 8)) ^ ((*(v18 + (v150 - 977 * ((4396078 * v150) >> 32))) ^ 0xAF) << 12);
  v163 = 833 * (HIWORD(v157) & 0xF ^ 0xD) + 279055;
  v164 = v163 - 977 * ((4396078 * v163) >> 32);
  v165 = *(v18 + v156) ^ 0xAF;
  v166 = 833 * (HIBYTE(v157) & 0xF ^ 6) + 279055;
  v167 = 833 * ((v157 >> 20) & 0xF ^ 7) + 279055;
  v168 = ((*(v18 + (v166 - 977 * ((4396078 * v166) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + v159) ^ 0xAF) << 12) | *(v18 + v164) ^ 0xAF;
  v169 = 833 * ((v157 >> 12) ^ 0xB) + 279055;
  v170 = v169 - 977 * ((4396078 * v169) >> 32);
  v171 = 833 * ((v157 >> 8) & 0xF ^ 6) + 279055;
  v172 = v171 - 977 * ((4396078 * v171) >> 32);
  v173 = 833 * (((2 * (v157 >> 4)) ^ 0x14) + ((v157 >> 4) ^ 0x145));
  v174 = (v168 << 8) ^ ((*(v18 + (v167 - 977 * ((4396078 * v167) >> 32))) ^ 0xAF) << 12) | *(v18 + v172) ^ 0xAF;
  v175 = *(v18 + (833 * (v157 & 0xF ^ 0xD) + 279055 - 977 * ((4396078 * (833 * (v157 & 0xF ^ 0xD) + 279055)) >> 32))) ^ 0xAF;
  v176 = (v174 << 8) + 1905861792 - ((v174 << 9) & 0xE3324800) + 14;
  v177 = v176 ^ ((*(v18 + v170) ^ 0xAF) << 12);
  v178 = v176;
  LODWORD(STACK[0xBD8]) = v176;
  v179 = v175 + 1182998160 - ((2 * v175) & 0x136) + 11;
  v180 = v177 ^ 0x719924A0 | v179 ^ 0x46831E90;
  v181 = v165 - 1501495312 - ((2 * v165) & 0xFFFFFFE3) + 1;
  v182 = v181 & 0xF;
  v183 = *(v18 + (v154 - 977 * ((4396078 * v154) >> 32))) ^ ((v162 | v181 ^ 0xA680FFF0) >> 4);
  v184 = 833 * (((2 * (v181 & 0xF | (16 * (v179 & 0xF)))) & 0xFFEF ^ 0x162) + ((v182 | (16 * (v179 & 0xF))) ^ 0xFFDEFB46));
  v185 = (v184 + 1802738616) % 0x3D1;
  v186 = STACK[0xD28];
  v187 = *(v18 + (v184 + 1802438736) % 0x3D1) ^ LODWORD(STACK[0xD28]);
  v188 = ((2 * (v187 ^ 0xAC)) & 0x77BBFFD8 ^ 0x761033C0) + (v187 ^ 0x4F5E6B3);
  LOBYTE(v187) = *(v18 + (v173 - 977 * ((4396078 * v173) >> 32))) ^ (v180 >> 4);
  LODWORD(STACK[0xD20]) = 833 * v188;
  v189 = 833 * ((-((*(v18 + (833 * v188 - 1297630333) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + v185)) + 59143;
  LODWORD(STACK[0xC38]) = v183;
  v190 = 833 * ((~(2 * (v183 & 0xF | (16 * (v187 & 0xF)))) & 0x16E) + ((v183 & 0xF | (16 * (v187 & 0xF))) ^ 0xDCFBFF48));
  v191 = *(v18 + (v190 - 268053360) % 0x3D1) ^ (16 * (*(v18 + (v189 - 977 * ((4396078 * v189) >> 32))) ^ 0xAF));
  v192 = 833 * (((2 * (v191 ^ 0x86)) & 0x1FAC) + (v191 ^ 0xFF76EF79));
  LODWORD(STACK[0xC10]) = v192;
  v193 = (*(v18 + (v192 - 1107094759) % 0x3D1) >> 4) ^ 0xA;
  v194 = 833 * ((v193 + ~(2 * v193) - 80) ^ *(v18 + (v190 - 267753480) % 0x3D1)) + 59143;
  v195 = 833 * (((2 * (v187 & 0xF0 | (v183 >> 4))) & 0x5E ^ 0x54) + ((v187 & 0xF0 | (v183 >> 4)) ^ 0x77FFAE85));
  v196 = *(v18 + (v195 - 1995759592) % 0x3D1u) ^ (16 * (*(v18 + (v194 - 977 * ((4396078 * v194) >> 32))) ^ 0xAF)) ^ 0xAF;
  v197 = 833 * (((2 * v196) & 0xFFFFFF7F) + (v196 ^ 0x3FCFAFBF));
  LODWORD(STACK[0xBF8]) = v197;
  LOBYTE(v180) = *(v18 + (v195 - 1995459712) % 0x3D1u);
  v198 = *(v18 + (v197 + 1564122608) % 0x3D1) >> 4;
  v199 = 833 * ((v198 ^ v180) ^ 0xA5) + 59143;
  LODWORD(STACK[0xC18]) = v162;
  v200 = (v177 >> 8) & 0xF0 | (v162 >> 12);
  v201 = (v200 ^ 0x20) - 1141329467 - ((2 * v200) & 0x18A);
  v202 = *(v18 + 833 * (((2 * v201) & 0x8E ^ 0x8A) + (v201 ^ 0xBBF8B182)) % 0x3D1) ^ (16 * (*(v18 + (v199 - 977 * ((4396078 * v199) >> 32))) ^ 0xAF));
  v203 = 833 * (((2 * (v202 ^ 0xAF)) & 0x5FE) + (v202 ^ 0xFFC72250));
  LODWORD(STACK[0xBE0]) = v203;
  v204 = (v177 >> 12) & 0xF0 | HIWORD(v162) & 0xF;
  v205 = 833 * ((-((*(v18 + (v203 - 1190356304) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (833 * (v201 ^ 0xBBF8B1C5) + 359023) % 0x3D1)) + 59143;
  v206 = 833 * (((2 * v204) & 0xD2) + (v204 ^ 0x4FFFCEF9));
  v207 = *(v18 + (v205 - 977 * ((4396078 * v205) >> 32)));
  v208 = *(v18 + (v206 - 1331543202) % 0x3D1u);
  LODWORD(STACK[0xC98]) = (v116 ^ 0xE1DEC4DD) % v121;
  v209 = v206 - 1331244299;
  v210 = 833 * (((2 * (v208 ^ (16 * (v207 ^ 0xAF)) ^ 0xFE)) & 0x165C) + (v208 ^ (16 * (v207 ^ 0xAF)) ^ 0xDFFFCB81));
  LODWORD(STACK[0xBC8]) = v210;
  v211 = HIWORD(v178) & 0xF0 | (v161 >> 20) & 0xF;
  v212 = 833 * ((-((*(v18 + (v210 + 548493761) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + v209 % 0x3D1)) + 59143;
  v213 = 833 * (((2 * v211) & 0x1AC ^ 0x124) + (v211 ^ 0xBE4DFB4D));
  LODWORD(STACK[0xBC0]) = v213;
  v214 = *(v18 + (v213 - 1002409039) % 0x3D1) ^ (16 * (*(v18 + (v212 - 977 * ((4396078 * v212) >> 32))) ^ 0xAF));
  v215 = v145;
  v216 = 833 * (((2 * (v214 ^ 0x8F)) & 0x13BE) + (v214 ^ 0xF3B5F970));
  LODWORD(STACK[0xBB8]) = v216;
  LODWORD(STACK[0xBE8]) = (v216 - 52504472) % (((793 - v145) ^ (v145 + 230)) & 0x3D1);
  v217 = STACK[0xC30];
  v218 = LODWORD(STACK[0xC30]) + LODWORD(STACK[0xB68]);
  v219 = (2 * v218 - 1931981418) & 0x9F40E7A0;
  v218 += 369924763;
  v220 = v218 - v219;
  v221 = 833 * (((v218 - v219) >> 20) & 0xF ^ 0xA);
  v222 = LODWORD(STACK[0xB48]) - v145 - ((2 * (LODWORD(STACK[0xB48]) - v145) + 617323724) & 0x2146905A);
  v223 = ((v198 ^ 5) + (v198 ^ 0xA)) & (HIBYTE(v220) ^ 0xFFFFFFCF);
  v224 = 833 * ((v220 >> 12) ^ 7) + 279055;
  v225 = *(v18 + (833 * (HIWORD(v220) & 0xF) + 279055 - 977 * ((4396078 * (833 * (HIWORD(v220) & 0xF) + 279055)) >> 32))) ^ 0xAF | ((*(v18 + (833 * v223 + 279055 - 977 * ((4396078 * (833 * v223 + 279055)) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v220 >> 28) ^ 0xC) + 279055 - 977 * ((4396078 * (833 * ((v220 >> 28) ^ 0xC) + 279055)) >> 32))) ^ 0xAF) << 12);
  v226 = 833 * ((v220 >> 8) & 0xF ^ 3) + 279055;
  LOBYTE(v161) = v220;
  LODWORD(STACK[0xC90]) = v220;
  v227 = (((v225 << 8) ^ ((*(v18 + (v221 + 279055) % (((v221 + 527) & 0x3D1) + ((496 - v221) & 0x3D1))) ^ 0xAF) << 12) | *(v18 + (v226 - 977 * ((4396078 * v226) >> 32))) ^ 0xAF) ^ (16 * (*(v18 + (v224 - 977 * ((4396078 * v224) >> 32))) ^ 0xAF))) << ((((v220 >> 12) & 9 ^ 8) + ((v220 >> 12) & 9)) & 0x18);
  v228 = v227 - ((2 * v227) & 0xDBD61156);
  v229 = v222 + 50927251;
  v230 = 833 * (((v222 + 50927251) >> 20) & 0xF ^ 0xA) + 279055;
  v231 = v230 - 977 * ((4396078 * v230) >> 32);
  v232 = v231 + 1169947005 - ((2 * v231) & 0x2FA);
  v233 = *(v18 + (v232 ^ 0x45BBF97Du)) ^ 0xAF;
  v234 = *(v18 + (833 * (v229 & 0xF ^ 0xD) + 279055 - 977 * ((4396078 * (833 * (v229 & 0xF ^ 0xD) + 279055)) >> 32))) ^ 0xAF;
  v228 += 1844119723;
  LODWORD(STACK[0xC88]) = v228;
  v235 = *(v18 + (833 * (v218 & 0xF) + 279055 - 977 * ((4396078 * (833 * (v218 & 0xFu) + 279055)) >> 32))) ^ 0xAF ^ v228;
  v236 = v234 - 553126976 - ((2 * v234) & 0xFFFFFF83) + 1;
  v237 = 833 * (((2 * (v235 & 0xF | (16 * (v236 & 0xF)))) & 0xFFEF ^ 0x26) + ((v235 & 0xF | (16 * (v236 & 0xF))) ^ 0x3EDB2EEC));
  v238 = *(v18 + (v237 + 2026706256) % 0x3D1u) ^ v186 ^ 0xAF;
  v239 = 16 * v233 - ((32 * v233) & 0x1A40) - 890667733;
  v240 = 833 * (v238 ^ 0xBF2819F0);
  v241 = (v240 + 359023) % ((v236 & 0xD ^ 1) + (v236 & 0xD ^ 0x497FB4FC) + (v239 & 0xED0 ^ 0xC00 | v239 & 0xED0 ^ 0xB68042D4));
  v242 = 833 * ((v161 >> 4) ^ 0xD) + 279055;
  v243 = *(v18 + (v242 - 977 * ((4396078 * v242) >> 32))) ^ 0xAF;
  v244 = HIBYTE(v229) & 0xF;
  v245 = ((*(v18 + (833 * ((v244 ^ 0xE5EE1FFE) + ((v229 >> 23) & 0x1C)) - 735172463) % 0x3D1) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v229 >> 28) ^ 1) + 279055 - 977 * ((4396078 * (833 * ((v229 >> 28) ^ 1) + 279055)) >> 32))) ^ 0xAF) << 12) | *(v18 + 833 * ((v232 & 0x107 ^ 2 | ((v229 & 0x14F ^ 0x142) + (v229 & 0x14F ^ 0xD)) | v232 & 0x107 ^ 0x105) + (((v244 ^ 0xE5EE1FFE) + ((v229 >> 23) & 0x1C) - v244 + 57361) & (HIWORD(v229) ^ 0x10A3))) % 0x3D1) ^ 0xAF;
  v246 = 833 * ((v229 >> 12) ^ 4) + 279055;
  v247 = (v245 + 93952 - ((2 * v245) & 0xFA56) + 3627) ^ v239;
  v248 = 833 * ((v229 >> 8) & 0xF ^ 8) + 279055;
  v249 = 833 * ((v229 >> 4) ^ 2) + 279055;
  v250 = *(v18 + (v248 - 977 * ((4396078 * v248) >> 32)));
  v251 = (v247 << 16) - 2030707009 - ((v247 << 17) & 0xDEA0000);
  LODWORD(STACK[0xC80]) = v251;
  v252 = ((v251 ^ 0x86F5DEBF) + ((v250 ^ 0xAF) << 8)) ^ ((*(v18 + (v246 - 977 * ((4396078 * v246) >> 32))) ^ 0xAF) << 12);
  LODWORD(STACK[0xC70]) = v252;
  v253 = *(v18 + (v249 - 977 * ((4396078 * v249) >> 32))) ^ ((v252 | v236 ^ 0xDF07F3C0) >> 4);
  LODWORD(STACK[0xC68]) = v253;
  v254 = (-((*(v18 + v241) >> 4) ^ 0xA) - 81) ^ *(v18 + (v237 + 2027006136) % 0x3D1u);
  v255 = (v243 - ((2 * v243) & 0x116) - 974354037) ^ (v235 >> 4);
  LODWORD(STACK[0xC58]) = v255;
  v256 = 833 * (((2 * (v255 & 0xF | (16 * (v253 & 0xF)))) & 0xFFBF ^ 0x1A2) + ((v255 & 0xF | (16 * (v253 & 0xF))) ^ 0x613DDD2E));
  v257 = *(v18 + (v256 - 1783499672) % 0x3D1u) ^ (16 * (*(v18 + (833 * v254 + 59143 - 977 * ((4396078 * (833 * v254 + 59143)) >> 32))) ^ 0xAF));
  v258 = 833 * (((2 * (v257 ^ 0xAF)) & 0x17DE) + (v257 ^ 0x5BEFFB40));
  LODWORD(STACK[0xC60]) = v258;
  LODWORD(STACK[0xC50]) = (833 * ((-((*(v18 + (v258 - 668813888) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v256 - 1783199792) % 0x3D1u)) + 59143) % ((v255 & 0x9258014 ^ 0x1200000 | v255 & 0x9258014 ^ 0xC8058014) - (v238 & 0xC43 ^ 0x840 | v238 & 0xC43 ^ 0xC9257403));
  v259 = LODWORD(STACK[0xCC0]) - 2091931493 + (LODWORD(STACK[0xD48]) ^ 0xAEE4751) + 1279;
  v260 = ((2 * v259) & 0xFFDBEBEE) + (v259 ^ 0x7FEDF5F7);
  v261 = LODWORD(STACK[0xC48]) - ((2 * LODWORD(STACK[0xC48]) - 508090844) & 0xC2330930);
  v262 = v215 + v260 - ((2 * (v215 + v260) - 1444710946) & 0xC2330930) - 1240776825;
  LODWORD(STACK[0xAC8]) = v262;
  v263 = ((2 * v262) & 0x77FFD7D6 ^ 0x40613C0) + (v262 ^ 0x3DFCF61F);
  v264 = (v262 ^ (v261 + 1375016874)) - 1006627819 + v263 - 2053230557 - ((2 * ((v262 ^ (v261 + 1375016874)) - 1006627819 + v263)) & 0xB3C6046);
  v265 = *(v18 + (v240 + 59143) % 0x3D1) ^ 0xAF;
  LODWORD(STACK[0xC28]) = v265 - ((2 * v265) & 0x3C) - 851924962;
  LODWORD(STACK[0xCC0]) = (833 * ((v235 & 0xF | (16 * ((v265 - ((2 * v265) & 0x3C) + 30) & 0xF))) ^ 0xEB) + 599760) % (v264 & 0x3D1 ^ 0x3D0 | v264 & 0x3D1 ^ 1u);
  v266 = LODWORD(STACK[0xD30]) ^ 0xA4E64D;
  v267 = (((v266 - 640105059) << LODWORD(STACK[0xC78])) & 0xE9BD4FFA) + ((v266 - 640105059) ^ 0x74DEA7FD);
  LODWORD(STACK[0xC20]) = v267;
  v268 = (v260 - 2146301431) ^ (LODWORD(STACK[0xD10]) - 1966836689);
  v269 = v217;
  v270 = LODWORD(STACK[0xCCC]) + v266 + 56790942 + v217 - ((2 * (LODWORD(STACK[0xCCC]) + v266 + 56790942 + v217)) & 0xB49722BA);
  v271 = (LODWORD(STACK[0xCCC]) + 1613452091 + v267) ^ (LODWORD(STACK[0xD38]) - 275393281);
  v272 = *(v18 + (LODWORD(STACK[0xD20]) - 1297930213) % 0x3D1u) ^ 0xAF;
  v273 = v272 - ((2 * v272) & 0xFFFFFFEF) - 1305681417;
  LODWORD(STACK[0xAB0]) = v273;
  v274 = 833 * ((v182 & 0xFFFFFF0F | (16 * (v273 & 0xF))) ^ 0x71) + 599760;
  v275 = *(v18 + (v274 - 977 * ((4396078 * v274) >> 32)));
  LODWORD(STACK[0xAB8]) = v275;
  v276 = 833 * (~v275 & 0xF) + 579768 - 977 * ((4396078 * (833 * (~v275 & 0xFu) + 579768)) >> 32);
  v277 = v276 - 1189098152 - ((2 * v276) & 0x2B0);
  v278 = v270 + 1514901853;
  LODWORD(STACK[0xC08]) = v270 + 1514901853;
  v279 = ((v270 + 1514901853) ^ 0x3D510831) + ((v270 + 1514901853) & 0x26273A63 ^ 0xFDFCEFBE) + ((v270 + 1514901853) & 0x26273A63 ^ 0xDBDBD5DD) + 2;
  v280 = ((2 * v279) & 0x5BE67BDE) + (v279 ^ 0x2DF33DEF);
  v281 = ((2 * v280 + 68781090) & 0xB40FC6C) + ((v280 - 770915823) ^ 0x85A07E36);
  v282 = v281 - 491257737 - ((2 * v281) & 0xC57000EE);
  LODWORD(STACK[0xC40]) = v282;
  v283 = v280 + (v278 ^ (v13 - ((2 * v13 + 691469300) & 0xB49722BA) + 1860636503));
  v284 = v271 + v280 - v269;
  LODWORD(STACK[0xABC]) = v277;
  v285 = v268 - v215 + v263 - (v277 & 0xA80AC032 ^ 0x6800022 | v277 & 0x32 ^ 0x10) - (v277 & 0x89062554 ^ 0x40002004 | v277 & 0x154 ^ 0x150) + 471835353;
  v286 = ((2 * v285) & 0xE7D757FC) + (v285 ^ 0x73EBABFE);
  v287 = (v282 ^ 0xE2B80077) - ((2 * (v282 ^ 0xE2B80077) + 1280210118) & 0xA2F92430) - 140260229;
  LODWORD(STACK[0xCCC]) = v287;
  v288 = ((2 * (v287 ^ (v283 - 130810764))) & 0xFDF7BFEE ^ 0xA0F12420) + (v287 ^ (v283 - 130810764) ^ 0x2F874DEF);
  v289 = v263 - ((2 * v263 + 323036310) & 0x2051F398) - 641102825;
  LODWORD(STACK[0xC48]) = v289;
  v290 = ((2 * (v264 ^ v289)) & 0xBBD5F9FA ^ 0x2B4591DA) + (v264 ^ v289 ^ 0xC85C3512);
  v291 = ((2 * ((v264 ^ 0x859E3023) - 451892926)) & 0xED37EBCC) + (((v264 ^ 0x859E3023) - 451892926) ^ 0x769BF5E6);
  LODWORD(STACK[0xD30]) = v291;
  v292 = ((v286 - 1944824830) ^ (v215 - 723537690)) + v290;
  LODWORD(STACK[0xD20]) = v292;
  v293 = ((v284 + 1495435215) ^ (v269 + 1417662153)) + v288;
  v294 = LODWORD(STACK[0xB40]) + 665339914 + v293 - ((2 * (LODWORD(STACK[0xB40]) + 665339914 + v293) + 1564729518) & 0x771426CE);
  v295 = v290 - v291 - ((2 * (v290 - v291) + 828502482) & 0xB1DB6BAE) + 1906224832;
  LODWORD(STACK[0xAB4]) = v295;
  v296 = v294 - 366214210;
  v297 = ((v295 & 0x341 ^ 0x141) + (v295 & 0x341 ^ 0x200)) * ((((v294 - 366214210) >> 28) ^ 3) + 335);
  v298 = 833 * (((v294 - 366214210) >> 24) & 0xF ^ 0xB) + 279055;
  v299 = LODWORD(STACK[0xB20]) - v292 + 487588949 + ((-1419954396 - 2 * (LODWORD(STACK[0xB20]) - v292)) | 0x1A82C031);
  v300 = 833 * ((v296 >> 20) & 0xF ^ 8) + 279055;
  v301 = ((*(v18 + (v298 - 977 * ((4396078 * v298) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v297 - 977 * ((4396078 * v297) >> 32))) ^ 0xAF) << 12);
  v302 = 833 * (HIWORD(v296) & 0xF ^ 0xA) + 279055;
  v303 = v302 - 977 * ((4396078 * v302) >> 32);
  v304 = v301 | *(v18 + ((2 * v303) & 0x3DC) + (v303 ^ 0xDDFCE5EE) + 570628626) ^ 0xAF;
  v305 = v288 - v283;
  LODWORD(STACK[0xAE0]) = v288 - v283;
  v306 = 833 * ((v296 >> 12) ^ 1) + 279055;
  v307 = 833 * ((((3 - (v288 - v283)) ^ (v288 - v283)) & 3 | 0xC) & ((v296 >> 8) ^ 3)) + 279055;
  v308 = (v304 << 8) ^ ((*(v18 + (v300 - 977 * ((4396078 * v300) >> 32))) ^ 0xAF) << 12);
  LOBYTE(v250) = v296;
  LODWORD(STACK[0xD10]) = v296;
  v309 = 833 * ((v296 >> 4) ^ 6) + 279055;
  v310 = v309 - 977 * ((4396078 * v309) >> 32);
  v311 = v283 - v284;
  v312 = v308 | *(v18 + (v307 - 977 * ((4396078 * v307) >> 32))) ^ 0xAF;
  v313 = (v312 << 8) - 1185513399 - ((v312 << 9) & 0x72AD0000);
  v314 = *(v18 + (833 * (v250 & 0xF ^ 7) + 279055 - 977 * ((4396078 * (833 * (v250 & 0xF ^ 7u) + 279055)) >> 32))) ^ 0xAF;
  v315 = v314 - 2064692882 - ((2 * v314) & 0xDC);
  v316 = v313 ^ ((*(v18 + (v306 - 977 * ((4396078 * v306) >> 32))) ^ 0xAF) << 12);
  LODWORD(STACK[0xB98]) = v313;
  v317 = 833 * ((HIBYTE(v299) ^ 0xF2) >> (-(((v283 - v284 + 18) | (-19 - (v283 - v284))) & 0xFC) & 0xFC)) + 279055;
  v318 = 833 * (HIBYTE(v299) & 0xF ^ 2) + 279055;
  v319 = (v316 ^ 0xB9568049 | v315 ^ 0x84EF496E) ^ (16 * (*(v18 + v310) ^ 0xAF));
  v320 = 833 * ((v299 >> 20) & 0xF ^ 0xB) + 279055;
  v321 = 833 * (HIWORD(v299) & 0xF ^ 0xE) + 279055;
  v322 = v321 - 977 * ((4396078 * v321) >> 32);
  v323 = 833 * ((v299 >> 12) ^ 9) + 279055;
  v324 = ((*(v18 + (v318 - 977 * ((4396078 * v318) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v317 - 977 * ((4396078 * v317) >> 32))) ^ 0xAF) << 12);
  v325 = 833 * ((v299 & 0x14F ^ 8) + (v299 & 0x14F ^ 0x147) + (~(v299 >> 8) & 0xF));
  v326 = v325 - 977 * ((4396078 * v325) >> 32);
  v327 = 833 * ((v299 >> 4) ^ 0xE) + 279055;
  v328 = ((v324 | *(v18 + v322) ^ 0xAF) << 8) ^ ((*(v18 + (v320 - 977 * ((4396078 * v320) >> 32))) ^ 0xAF) << 12) | *(v18 + v326) ^ 0xAF;
  v329 = *(v18 + (833 * (v299 & 0xF ^ 7) + 279055 - 977 * ((4396078 * (833 * (v299 & 0xF ^ 7) + 279055)) >> 32))) ^ 0xAF;
  v330 = (v328 << 8) - 828476384 - ((v328 << 9) & 0x9D3CE800) + 13;
  v331 = v330 ^ ((*(v18 + (v323 - 977 * ((4396078 * v323) >> 32))) ^ 0xAF) << 12);
  v332 = v330;
  LODWORD(STACK[0xBA0]) = v330;
  v333 = v329 + 1644245904 - ((2 * v329) & 0x33333333) + 9;
  v334 = v331 ^ 0xCE9E7420 | v333 ^ 0x62013390;
  v335 = v315 & 0xF;
  LODWORD(STACK[0xC30]) = v335;
  v336 = 833 * (((2 * (v335 & 0xFFFFFF0F | (16 * (v333 & 0xF)))) & 0x178 ^ 0x138) + ((v335 & 0xFFFFFF0F | (16 * (v333 & 0xF))) ^ 0xBCDA7D22));
  LOBYTE(v323) = *(v18 + (v327 - 977 * ((4396078 * v327) >> 32)));
  v337 = *(v18 + (v336 + 2098054731) % 0x3D1);
  LOBYTE(v335) = v323 ^ (v334 >> 4);
  v338 = STACK[0xD28];
  v339 = 833 * (((2 * (v337 ^ LODWORD(STACK[0xD28]) ^ 0xAF)) & 0xFFF7DEF6 ^ 0x7E5012E0) + (v337 ^ LODWORD(STACK[0xD28]) ^ 0x40D3F624));
  LODWORD(STACK[0xBF0]) = v339;
  v340 = (v319 >> 4) | (16 * (v335 & 0xF));
  v341 = 833 * (((115 - v284) & 0x47) + ((v284 + 12) & 0x47) + ((-((*(v18 + (v339 + 222247732) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v336 + 2098354611) % 0x3D1)));
  v342 = 833 * (((2 * v340) & 0x13A ^ 0x120) + (v340 ^ 0x4AFF2F6D));
  v343 = *(v18 + (v342 - 140052182) % 0x3D1u) ^ (16 * (*(v18 + (v341 - 977 * ((4396078 * v341) >> 32))) ^ 0xAF)) ^ 0xAF;
  v344 = 833 * (((2 * v343) & 0xF7F7F7F7) + (v343 ^ 0xFF7FEBFB));
  v345 = (v344 - 1597895860) % 0x3D1;
  v346 = (-((*(v18 + (v344 - 1597595980) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v342 - 139752302) % 0x3D1u);
  v347 = *(v18 + v345) ^ 0xAF;
  v348 = v335 & 0xF0;
  v349 = v348 ^ 0xA0;
  LODWORD(STACK[0xC00]) = v319;
  v350 = (v319 >> 8) & 0xF;
  v351 = ((v348 ^ 0xA0) - ((v348 & 0xFFFFFFF0 | v350) ^ 0xA0)) ^ -v350;
  v352 = (v350 ^ 0xD2FD0912 ^ (v351 - 755169006 - ((2 * v351) & 0xA5FA1224))) + v349;
  v353 = 833 * (((2 * v352) & 0xE7F7F7FA) + (v352 ^ 0x73FBFBFD));
  v354 = *(v18 + (v353 - 1726876470) % 0x3D1) ^ (16 * (*(v18 + (833 * v346 + 59143 - 977 * ((4396078 * (833 * v346 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF;
  v355 = 833 * (((2 * v354) & 0x1DE6) + (v354 ^ 0x56022EF3));
  v356 = v355 + 585507412;
  v357 = (*(v18 + (v355 + 585807292) % 0x3D1u) >> 4) ^ 0xA;
  v358 = (v357 + ~(2 * v357) - 80) ^ *(v18 + (v353 - 1726576590) % 0x3D1);
  v359 = (v331 >> 8) & 0xF0 | (v316 >> 12);
  v360 = 833 * (((2 * v359) & 0xFFFFFF7F ^ 0x70) + (v359 ^ 0x7D3D2FC7));
  v361 = *(v18 + (v360 + 2078837384) % 0x3D1) ^ (16 * (*(v18 + ((403 - (((2 * v358) & 0x1B6) + (v358 ^ 0xFFE3B1DB))) & 0x341 | (((2 * v358) & 0x1B6) + (v358 ^ 0xFFE3B1DB) + 108) & 0x141) * (((2 * v358) & 0x1B6) + (v358 ^ 0xFFE3B1DB) + 1855084) % 0x3D1) ^ 0xAF));
  v362 = 833 * (((2 * (v361 ^ 0xAF)) & 0xBFE) + (v361 ^ 0x5B7CF550));
  v363 = (v362 + 1315206216) % 0x3D1u;
  v364 = 833 * ((-((*(v18 + (v362 + 1315506096) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v360 + 2079137264) % 0x3D1)) + 59143;
  v365 = (v331 >> 12) & 0xF0 | HIWORD(v316) & 0xF;
  v366 = 833 * (((2 * v365) & 0xA8 ^ 0x88) + (v365 ^ 0x7FF23FB2));
  v367 = ((*(v18 + v363) ^ 0xAF) << 12) ^ ((*(v18 + v356 % 0x3D1) ^ 0xAF) << 8);
  v368 = *(v18 + (v366 - 1396648269) % 0x3D1u) ^ (16 * (*(v18 + (v364 - 977 * ((4396078 * v364) >> 32))) ^ 0xAF));
  v369 = 833 * (((2 * (v368 ^ 0xAB)) & 0x1D76) + (v368 ^ 0x79F71E14));
  v370 = (v369 + 585492620) % 0x3D1u;
  v371 = 833 * ((-((*(v18 + (v369 + 585792500) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v366 - 1396348389) % 0x3D1u)) + 59143;
  v372 = HIWORD(v332) & 0xF0 | (v313 >> 20) & 0xF;
  v373 = 833 * (((2 * v372) & 0xFFFFFFDF ^ 0x10A) + (v372 ^ 0xDFFD827A));
  LODWORD(STACK[0xB90]) = v373;
  v374 = *(v18 + (v373 + 672783192) % 0x3D1) ^ (16 * (*(v18 + (v371 - 977 * ((4396078 * v371) >> 32))) ^ 0xAF));
  v375 = 833 * (2 * ((v374 ^ 0xAF) & 0x1FF) + (v374 ^ 0x7BBEF150));
  LODWORD(STACK[0xB80]) = v375;
  v376 = (v375 + 1471117384) % 0x3D1u;
  v377 = 16 * v347 - ((32 * v347) & 0x11A0) - 1659893549;
  LODWORD(STACK[0xBB0]) = v377;
  v378 = v377 ^ 0xED478F2E ^ v367;
  LODWORD(STACK[0xBA8]) = v378;
  v379 = v378 ^ ((*(v18 + v370) ^ 0xAF) << 16) ^ ((*(v18 + v376) ^ 0xAF) << 20);
  LODWORD(STACK[0xAF4]) = v379;
  v380 = 833 * (((v367 >> 8) & 0xF0 | (v316 >> 12)) ^ 8) + 599760;
  v381 = v380 - 977 * ((4396078 * v380) >> 32);
  LODWORD(STACK[0xB70]) = HIWORD(v379);
  v382 = ((*(v18 + (833 * ((HIWORD(v316) & 0xF | (16 * ((HIWORD(v379) ^ 7) & ((v381 - 684370140 - ((2 * v381) & 0x648)) & 0xF ^ 4 | (v381 - 684370140 - ((2 * v381) & 0x648)) & 0xF ^ 0xB)))) ^ 6) + 599760) % 0x3D1u) ^ 0xAF) << 16) ^ ((*(v18 + ((v381 - 684370140 - ((2 * v381) & 0x648)) ^ 0xD7355724)) ^ 0xAF) << 12);
  LODWORD(STACK[0xAE4]) = v382;
  LODWORD(STACK[0xAE8]) = (833 * (HIWORD(v382) & 0xF) + 579768) % (((839 - 833 * (HIWORD(v382) & 0xF)) | (833 * (HIWORD(v382) & 0xF) + 184)) & 0x3D1);
  v383 = ((v305 - v311 + 17801515) ^ (v311 + 581949736)) + 1126101739 - ((2 * ((v305 - v311 + 17801515) ^ (v311 + 581949736))) & 0x863DE5D6);
  v384 = v293 + v311;
  LODWORD(STACK[0xAAC]) = v293 + v311;
  LODWORD(STACK[0xAD4]) = v383;
  v385 = v293 + v311 + v283 - ((2 * (v293 + v311 + v283) - 1004985010) & 0xD1F2C5B6) + 1258681730;
  LODWORD(STACK[0xADC]) = v385;
  v386 = ((v383 ^ 0x431EF2EB) + 947191924 + ~(2 * (((v383 ^ 0x431EF2EB) + 1333501336) & 0x68F962DF ^ (v383 + 24) & 4))) ^ v385;
  LODWORD(STACK[0xAD8]) = v386;
  v387 = v385 ^ (v311 + 581949736);
  v388 = (v387 ^ 0x17069D24) + v384 + (v386 ^ 0x8632B64);
  LODWORD(STACK[0xD38]) = v388;
  v389 = LODWORD(STACK[0xB50]) - 1789637157 + v388 - ((2 * (LODWORD(STACK[0xB50]) - 1789637157 + v388) + 1561517370) & 0x7A3372FC);
  v390 = v387;
  LODWORD(STACK[0xA9C]) = v387;
  v391 = v389 + 1805854747;
  v392 = (833 * ((v389 + 1805854747) & 0xF ^ 0xEu) + 279055) % (((2147204592 - 833 * ((v389 + 1805854747) & 0xF ^ 0xE)) & 0x69BB09CF) - (v387 & 0x69BF05FE ^ 0x1060524 | v387 & 0x69BF05FE ^ 0x68B900DA) + ((833 * ((v389 + 1805854747) & 0xF ^ 0xE) + 279055) & 0x409CFu));
  v393 = v286 - ((2 * v286 + 129783726) & 0x18C198BC) - 1069615051;
  v394 = ((2 * (LODWORD(STACK[0xD30]) - 1989932517 + (v393 ^ 0xF39F33A1))) & 0xAEADFFFC) + ((LODWORD(STACK[0xD30]) - 1989932517 + (v393 ^ 0xF39F33A1)) ^ 0xD756FFFE);
  v395 = v394 + LODWORD(STACK[0xD20]);
  LODWORD(STACK[0xAA8]) = v395;
  v396 = (v393 ^ 0x38D1C5B6) + ((2 * v393) & 0x696213D0 ^ 0x8401090) + v394 + v395 + 1713471477;
  v397 = v394 - ((2 * v394 - 570350032) & 0x96459522) - 1172087383;
  v398 = v396 - ((2 * v396) & 0x7A865226) - 1119672045;
  LODWORD(STACK[0xAD0]) = v398;
  v399 = ((v295 ^ 0xD8EDB5D7) - (v397 ^ 0xCB22CA91)) ^ v397;
  LODWORD(STACK[0xAC4]) = v399;
  v400 = v398 ^ v397;
  LODWORD(STACK[0xAA0]) = v400;
  v401 = ((v399 ^ 0xCB22CA91) + 1333501336) ^ v398;
  LODWORD(STACK[0xACC]) = v401;
  v402 = (v400 ^ 0x899E1C7D) + v395 + (v401 ^ 0xB5200277);
  LODWORD(STACK[0xD30]) = v402;
  v403 = LODWORD(STACK[0xB08]) - v402 - 1059033436 - ((2 * (LODWORD(STACK[0xB08]) - v402 - 1059033436) - 836761598) & 0x88B25E0A);
  v404 = 833 * (HIBYTE(v391) & 0xF ^ 0xD) + 279055;
  v405 = 833 * ((v391 >> 20) & 0xF ^ 1) + 279055;
  v406 = 833 * (HIWORD(v391) & 0xF ^ 9) + 279055;
  v407 = 833 * ((v391 >> 12) ^ 0xB) + 279055;
  v408 = ((*(v18 + (v404 - 977 * ((4396078 * v404) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v391 >> 28) ^ 0xB) + 279055 - 977 * ((4396078 * (833 * ((v391 >> 28) ^ 0xB) + 279055)) >> 32))) ^ 0xAF) << 12) | *(v18 + (v406 - 977 * ((4396078 * v406) >> 32))) ^ 0xAF;
  v409 = 833 * ((v391 >> 8) & 0xF ^ 9) + 279055;
  v410 = (v408 << 8) ^ ((*(v18 + (v405 - 977 * ((4396078 * v405) >> 32))) ^ 0xAF) << 12);
  LOWORD(v215) = v391;
  LODWORD(STACK[0xAC0]) = v391;
  v411 = 833 * ((v391 >> 4) ^ 7) + 279055;
  v412 = v410 | *(v18 + (v409 - 977 * ((4396078 * v409) >> 32))) ^ 0xAF;
  v413 = (v412 << 8) + 2072961578 - ((v412 << 9) & 0xF71DC400);
  v414 = *(v18 + v392) ^ 0xAF;
  v415 = v414 + 1880316994 - ((2 * v414) & 0x84);
  v416 = *(v18 + (v411 - 977 * ((4396078 * v411) >> 32)));
  v417 = v413 ^ ((*(v18 + (v407 - 977 * ((4396078 * v407) >> 32))) ^ 0xAF) << 12);
  v418 = (v417 ^ 0x7B8EE22A | v415 ^ 0x70135C42) ^ (16 * (v416 ^ 0xAF));
  v403 += 728314630;
  v419 = *(v18 + (833 * (v403 & 0xF ^ 5) + 279055 - 977 * ((4396078 * (833 * (v403 & 0xF ^ 5) + 279055)) >> 32))) ^ 0xAF;
  v420 = v419 - 1999009008 - ((2 * v419) & 0x2C) + 6;
  v421 = v415 & 0xF;
  v422 = ((2 * (v421 & 0xFFFFFF0F | (16 * (v420 & 0xF)))) & 0x1AC ^ 0x84) + ((v421 & 0xFFFFFF0F | (16 * (v420 & 0xF))) ^ 0xFFD97FB4);
  v423 = ((v403 >> 27) & 0x1A ^ 0x18) + ((v403 >> 28) ^ 0xD9F37FD1);
  v424 = 833 * (HIBYTE(v403) & 0xF ^ 4) + 279055;
  v425 = 833 * ((v403 >> 20) & 0xF ^ 5) + 279055;
  v426 = ((*(v18 + (v424 - 977 * ((4396078 * v424) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + ((((v423 + 18) & 0x1C) + ((435388045 - v423) & 0x32BD129C)) ^ ((((v390 ^ 0x28F962DB) + 262246473) & 0x32BD11DD) + ((811495350 - (v390 ^ 0x28F962DB)) & 0x32BD11DD))) * (v423 + 638353778) % 0x3D1) ^ 0xAF) << 12);
  v427 = 833 * (HIWORD(v403) & 0xF ^ 9) + 279055;
  v428 = v426 | *(v18 + (v427 - 977 * ((4396078 * v427) >> 32))) ^ 0xAF;
  v429 = 833 * ((v403 >> 12) ^ 2) + 279055;
  v430 = (v428 << 8) ^ ((*(v18 + (v425 - 977 * ((4396078 * v425) >> 32))) ^ 0xAF) << 12);
  v431 = 833 * (~(v403 >> 8) & 0xF) + 279055;
  v432 = 833 * (v403 >> 4) + 279055 - 977 * ((4396078 * (833 * (v403 >> 4) + 279055)) >> 32);
  v433 = v430 | *(v18 + (v431 - 977 * ((4396078 * v431) >> 32))) ^ 0xAF;
  v434 = (v433 << 8) + 1420407056 - ((v433 << 9) & 0xA9536200) + 15;
  v435 = v434 ^ ((*(v18 + (v429 - 977 * ((4396078 * v429) >> 32))) ^ 0xAF) << 12);
  v436 = v434;
  v437 = v435 ^ 0x54A9B110 | v420 ^ 0x88D98B10;
  v438 = *(v18 + (833 * v422 + 2101866417) % ((v418 & 0x3D1 ^ 0x3D1) + (v418 & 0x3D1))) ^ v338;
  v439 = 833 * (((2 * (v438 ^ 0x84)) & 0xFF77FDA8 ^ 0x7E5031A0) + (v438 ^ 0xC093E78B));
  LOBYTE(v438) = *(v18 + v432) ^ (v437 >> 4);
  v440 = (-((*(v18 + (v439 + 1565346459) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v422 + 2523609) * ((v418 ^ 0x341) - (v418 & 0xFFFFFCBE) + (v418 & 0x341)) % 0x3D1);
  v441 = (v418 >> 4) | (16 * (v438 & 0xF));
  v442 = 833 * (((2 * v441) & 0x9C ^ 0x80) + (v441 ^ 0x7FADFFBE));
  v443 = *(v18 + (v442 - 1965741511) % 0x3D1u) ^ (16 * (*(v18 + (833 * v440 + 59143 - 977 * ((4396078 * (833 * v440 + 59143)) >> 32))) ^ 0xAF));
  v444 = 833 * ((-((*(v18 + 833 * (((2 * v443) & 0x35E ^ 0x15E) + (v443 ^ 0x100u)) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v442 - 1965441631) % 0x3D1u)) + 59143;
  v445 = 833 * (((2 * (v438 & 0xF0 | (v418 >> 8) & 0xF)) & 0xFFFFFF9F ^ 0x100) + ((v438 & 0xF0 | (v418 >> 8) & 0xF) ^ 0x5CE6FD6F));
  v446 = *(v18 + (v445 - 1268709256) % 0x3D1) ^ (16 * (*(v18 + (v444 - 977 * ((4396078 * v444) >> 32))) ^ 0xAF));
  v447 = 833 * (((2 * (v446 ^ 0x8E)) & 0xFBC) + (v446 ^ 0x7DEB5771));
  LODWORD(STACK[0xA88]) = v447;
  v448 = 833 * ((-((*(v18 + (v447 + 1161597201) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v445 - 1268409376) % 0x3D1)) + 59143;
  LODWORD(STACK[0xA8C]) = v417;
  v449 = (v435 >> 8) & 0xF0 | (v417 >> 12);
  v450 = ((2 * v449) & 0xFFFFFFFB ^ 0x178) + (v449 ^ 0xDDDE3A43);
  v451 = *(v18 + (833 * v450 + 266532298) % 0x3D1) ^ (16 * (*(v18 + (v448 - 977 * ((4396078 * v448) >> 32))) ^ 0xAF));
  v452 = 833 * (((2 * (v451 ^ 0xAF)) & 0xFFFFFFDF) + (v451 ^ 0xA37FFF40));
  LODWORD(STACK[0xA84]) = v452;
  v453 = 833 * ((-((*(v18 + (v452 - 58347072) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v450 + 572638898) * ((v215 & 0x341 ^ 0x201) + (v215 & 0x341 ^ 0x140)) % 0x3D1)) + 59143;
  v454 = (v435 >> 12) & 0xF0 | HIWORD(v417) & 0xF;
  v455 = ((2 * v454) & 0xFFFFFFBF ^ 0x13C) + (v454 ^ 0x77D39F41);
  v456 = (833 * v455 + 409317992) % 0x3D1 + 1568236937 - ((2 * ((833 * v455 + 409317992) % 0x3D1)) & 0x312);
  v457 = *(v18 + (v456 ^ 0x5D796589)) ^ (16 * (*(v18 + (v453 - 977 * ((4396078 * v453) >> 32))) ^ 0xAF));
  v458 = 833 * (((2 * (v457 ^ 0xAE)) & 0x1F7C) + (v457 ^ 0xDFF5BF11));
  v459 = 833 * ((-((*(v18 + (v458 + 1096847665) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (833 * (v455 - (v456 & 0x195 ^ 0x181 | v456 & 0x195 ^ 0x55FB5414)) - 549732443) % 0x3D1)) + 59143;
  v460 = *(v18 + (v459 - 977 * ((4396078 * v459) >> 32))) ^ 0xAF;
  LODWORD(STACK[0xA7C]) = v436;
  LODWORD(STACK[0xD20]) = v413;
  v461 = HIWORD(v436) & 0xF0 | (v413 >> 20) & 0xF;
  v462 = 833 * (((2 * v461) & 0x1FC ^ 0x150) + (v461 ^ 0x1FF9DD56));
  v463 = *(v18 + (v462 - 202010743) % 0x3D1u) ^ (16 * v460 - ((32 * v460) & 0x1180) - 1816545087);
  v464 = 833 * (((2 * (v463 ^ 0xAF)) & 0xFFEF33FA ^ 0x27633182) + (v463 ^ 0xEC4E2193));
  v465 = (*(v18 + (v464 - 1688638926) % 0x3D1) >> 4) ^ 0xA;
  v466 = (v465 + ~(2 * v465) - 80) ^ *(v18 + (v462 - 201710863) % 0x3D1u);
  v467 = (v436 >> 20) & 0xF0 | HIBYTE(v413) & 0xF;
  v468 = 833 * (((2 * v467) & 0xFFFFFF8F ^ 0x86) + (v467 ^ 0xF75DF78C));
  v469 = *(v18 + (v468 + 389916800) % 0x3D1) ^ (16 * (*(v18 + (833 * v466 + 59143 - 977 * ((4396078 * (833 * v466 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF;
  v470 = 833 * (((2 * v469) & 0x1F5E) + (v469 ^ 0xF7EFBFAF));
  LODWORD(STACK[0xA80]) = (v470 + 1021456024) % ((v436 >> 20) & 0xD0 ^ 0x391 | (v436 >> 20) & 0xD0 ^ 0x40);
  LODWORD(STACK[0xA78]) = v421 ^ 0xAECB1BBE;
  v471 = LODWORD(STACK[0xAB0]) ^ (16 * (*(v18 + (LODWORD(STACK[0xC10]) - 1107394639) % 0x3D1u) ^ 0xAF));
  v472 = ((*(v18 + (LODWORD(STACK[0xBE0]) - 1190656184) % 0x3D1u) ^ 0xAF) << 12) ^ ((*(v18 + (LODWORD(STACK[0xBF8]) + 1563822728) % 0x3D1u) ^ 0xAF) << 8);
  v473 = 833 * ((-((*(v18 + (LODWORD(STACK[0xBB8]) - 52204592) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (LODWORD(STACK[0xBC0]) - 1002109159) % 0x3D1u)) + 59143;
  v474 = (LODWORD(STACK[0xBD8]) >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0xBD0])) & 0xF;
  v475 = 833 * (((2 * v474) & 0xFFFFFFBF ^ 0x24) + (v474 ^ 0x79A3B3CD));
  v476 = (v475 + 844406376) % 0x3D1;
  v477 = (v475 + 844706256) % 0x3D1 - 1868081398 - ((2 * ((v475 + 844706256) % 0x3D1)) & 0x614);
  v478 = *(v18 + v476) ^ (16 * (*(v18 + (v473 - 977 * ((4396078 * v473) >> 32))) ^ 0xAF));
  v479 = (v477 & 0x47 ^ 2) + (v477 & 0x47 ^ 0x45);
  v480 = v479 - 467019698 - ((2 * v479) & 0xFFFFFF83) + 147;
  v481 = v480 ^ 0xE429D84E ^ v478;
  v478 ^= 0xAFu;
  v482 = 833 * (v481 + 2 * (v478 & (v480 ^ 0x8E1))) % 0x3D1;
  v483 = *(v18 + (v477 ^ 0x90A7570A)) ^ (*(v18 + (833 * v478 + 359023) % 0x3D1u) >> 4);
  v484 = 833 * ((HIBYTE(LODWORD(STACK[0xBD8])) & 0xF0 | (LODWORD(STACK[0xBD0]) >> 28)) ^ 0x7D) + 59143;
  v485 = 833 * (*(v18 + (v484 - 977 * ((4396078 * v484) >> 32))) ^ (16 * (*(v18 + (833 * (v483 ^ 0xA5) + 59143 - 977 * ((4396078 * (833 * (v483 ^ 0xA5u) + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  v486 = 833 * ((v471 & 0xF0 | STACK[0xC38] & 0xF) ^ 0xFF) + 599760;
  v487 = LODWORD(STACK[0xAB8]) ^ (16 * (*(v18 + (v486 - 977 * ((4396078 * v486) >> 32))) ^ 0xAF));
  v488 = v471 ^ 0xF7B76E40 ^ v472;
  v489 = v488 ^ ((*(v18 + (LODWORD(STACK[0xBC8]) + 548193881) % 0x3D1u) ^ 0xAF) << 16);
  v490 = 833 * (((v488 >> 4) & 0xF0 | (LODWORD(STACK[0xC38]) >> 4)) ^ 0xFA) + 599760;
  v491 = 833 * ((v472 >> 8) & 0xF0 | (LODWORD(STACK[0xC18]) >> 12)) + 599760;
  v492 = v489 ^ ((*(v18 + LODWORD(STACK[0xBE8])) ^ 0xAF) << 20);
  v493 = 833 * (((v489 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0xC18])) & 0xF) ^ 0xB0) + 599760;
  v494 = v492 ^ ((*(v18 + v482) ^ 0xAF) << 24);
  v495 = 833 * ((HIWORD(v492) & 0xF0 | (LODWORD(STACK[0xBD0]) >> 20) & 0xF) ^ 0x9B) + 599760;
  v496 = ((*(v18 + (v491 - 977 * ((4396078 * v491) >> 32))) ^ 0xAF) << 12) ^ ((*(v18 + (v490 - 977 * ((4396078 * v490) >> 32))) ^ 0xAF) << 8);
  v497 = 833 * (((v494 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0xBD0])) & 0xF) ^ 0x52) + 599760;
  v498 = 833 * ((((v494 ^ (~*(v18 + v485 - 977 * (((8792155 * v485) >> 32) >> 1)) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0xBD0]) >> 28)) ^ 0x4D) + 599760;
  v499 = *(v18 + (v498 - 977 * ((4396078 * v498) >> 32)));
  v500 = v487 ^ 0x1C5EC858 ^ v496;
  v501 = v500 ^ ((*(v18 + (v493 - 977 * ((4396078 * v493) >> 32))) ^ 0xAF) << 16);
  v502 = v501 ^ ((*(v18 + (v495 - 977 * ((4396078 * v495) >> 32))) ^ 0xAF) << 20);
  v503 = ((*(v18 + (v497 - 977 * ((4396078 * v497) >> 32))) ^ 0xAF) << 24) ^ (~v499 << 28) ^ v502;
  v504 = (HIBYTE(v503) ^ 0x1C) & ((v499 & 0xF ^ 0xF) + (v499 & 0xF));
  v505 = 833 * ((v502 >> 20) & 0xF ^ 5) + 579768;
  v506 = 833 * (HIWORD(v501) & 0xF ^ 0xE) + 579768;
  v507 = ((*(v18 + (833 * v504 + 579768 - 977 * ((4396078 * (833 * v504 + 579768)) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v503 >> 28) ^ 1) + 579768 - 977 * ((4396078 * (833 * ((v503 >> 28) ^ 1) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v18 + (v506 - 977 * ((4396078 * v506) >> 32))) ^ 0xAF;
  v508 = 833 * ((v500 >> 8) & 0xF ^ 8) + 579768;
  v509 = 833 * ((v487 >> 4) ^ 0xA) + 579768;
  v510 = ((((v507 << 8) ^ ((*(v18 + (v505 - 977 * ((4396078 * v505) >> 32))) ^ 0xAF) << 12) | *(v18 + (v508 - 977 * ((4396078 * v508) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * (v496 >> 12) + 579768 - 977 * ((4396078 * (833 * (v496 >> 12) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v18 + (LODWORD(STACK[0xABC]) ^ 0xB91FCD58)) ^ 0xAF) ^ (16 * (*(v18 + (v509 - 977 * ((4396078 * v509) >> 32))) ^ 0xAF));
  LODWORD(STACK[0xA64]) = v510;
  v511 = (v510 & 0x200 ^ 0xB3EDF73F) + 2 * (v510 & 0x200);
  v512 = LODWORD(STACK[0xAC8]) ^ 0x61198498;
  v513 = ((v511 + 1276250305) & v512) == 0;
  v514 = v511 + 1874505724;
  v515 = -677994886 - v511;
  if (v513)
  {
    v515 = v514;
  }

  LODWORD(STACK[0xA60]) = v515;
  v516 = LODWORD(STACK[0xAAC]) + LODWORD(STACK[0xB58]) - ((2 * (LODWORD(STACK[0xAAC]) + LODWORD(STACK[0xB58])) - 2078609628) & 0xE8ADCEC2);
  v517 = LODWORD(STACK[0xB30]) - LODWORD(STACK[0xAA8]) + 1182828641 - ((2 * (LODWORD(STACK[0xB30]) - LODWORD(STACK[0xAA8]) + 1182828641) - 1083583304) & 0xD636AE7E);
  LODWORD(STACK[0xA98]) = v517;
  v516 -= 1234936077;
  LODWORD(STACK[0xA90]) = v516;
  v518 = *(v18 + (833 * (v516 & 0xF ^ 1) + 279055 - 977 * ((4396078 * (833 * (v516 & 0xF ^ 1) + 279055)) >> 32))) ^ 0xAF;
  v519 = v518 - 283558636 - ((2 * v518) & 0x28);
  LODWORD(STACK[0xA94]) = v519;
  v520 = 833 * ((84 - v517) & 0xF) + 279055;
  v521 = *(v18 + (v520 - 977 * ((4396078 * v520) >> 32))) ^ 0xAF;
  v522 = v521 + 1154541632 - ((2 * v521) & 0x9E) + 15;
  LODWORD(STACK[0xAAC]) = v522;
  v523 = (v519 + 32) & 0xF | (16 * (v522 & 0xF));
  v524 = 833 * (((2 * v523) & 0xFFFFFFFB ^ 0x1E8) + (v523 ^ 0x7D7FEF09));
  LODWORD(STACK[0xAA8]) = v524;
  v525 = STACK[0xD28];
  v526 = *(v18 + (v524 - 1565196086) % 0x3D1) ^ LODWORD(STACK[0xD28]);
  v527 = 833 * (((2 * (v526 ^ 0xA7)) & 0xAACFE7EE ^ 0x2A4023E0) + (v526 ^ 0xEA4FEAA8));
  LODWORD(STACK[0xAA4]) = v527;
  v528 = *(v18 + (v527 + 415240272) % 0x3D1) ^ 0xAF;
  v529 = v528 - ((2 * v528) & 0x32) + 717382169;
  LODWORD(STACK[0xAB0]) = v529;
  v530 = 833 * (((v519 + 32) & 0xF | (16 * (v529 & 0xF))) ^ 0x94) + 599760;
  v531 = v530 - 1954 * ((2198039 * v530) >> 32);
  v532 = ((2 * v531) & 0xAF6) + (v531 ^ 0xC7EFDD7B);
  LODWORD(STACK[0xC10]) = v532;
  v533 = v532 + 940581509 >= 0x3D1;
  v534 = ((2 * ((833 * (v443 ^ 0xAFu) + 59143) % 0x7A2)) & 0xE7E) + (((833 * (v443 ^ 0xAFu) + 59143) % 0x7A2) ^ 0x3FEFFF3F);
  if (v533)
  {
    v535 = 1010251783;
  }

  else
  {
    v535 = 1010252760;
  }

  LODWORD(STACK[0xBF8]) = v535;
  if (v534 - 1072693055 >= 0x3D1)
  {
    v536 = -580913361;
  }

  else
  {
    v536 = -580912384;
  }

  v537 = *(v18 + v534 - 491780671 + v536) ^ 0xAF;
  v538 = v537 - ((2 * v537) & 0xAA) - 43;
  v539 = *(v18 + (LODWORD(STACK[0xA88]) + 1161297321) % 0x3D1u) ^ 0xAF;
  v540 = v539 - ((2 * v539) & 0xF2);
  v541 = *(v18 + (LODWORD(STACK[0xA84]) - 58646952) % 0x3D1u) ^ 0xAF;
  v542 = v541 - ((2 * v541) & 0xF6);
  v543 = ((*(v18 + (v464 - 1688938806) % 0x3D1) ^ 0xAF) << 20) ^ ((*(v18 + (v458 + 1096547785) % 0x3D1) ^ 0xAF) << 16);
  v544 = 833 * ((-((*(v18 + (v470 + 1021755904) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v468 + 390215703) % 0x3D1)) + 59143;
  v545 = STACK[0xD20];
  v546 = 833 * ((HIBYTE(LODWORD(STACK[0xA7C])) & 0xF0 | (LODWORD(STACK[0xD20]) >> 28)) ^ 0x57) + 59143;
  v547 = 833 * (*(v18 + (v546 - 977 * ((4396078 * v546) >> 32))) ^ (16 * (*(v18 + (v544 - 977 * ((4396078 * v544) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  v542 -= 1472659333;
  v548 = *(v18 + v547 - 977 * (((8792155 * v547) >> 32) >> 1));
  v549 = (*(v18 + (v439 + 1565046579) % 0x3D1) ^ 0xAF) - ((2 * (*(v18 + (v439 + 1565046579) % 0x3D1) ^ 0xAF)) & 0x8A) - 59;
  v550 = (v549 & 0xF ^ 5) << ((v548 & 4 ^ 4) + (v548 & 4));
  v551 = 833 * (((((16 * v538) ^ 0x50) - ((2 * ((16 * v538) ^ 0x50)) & 0x80) - 59) ^ v549) & 0xF0 | (v418 >> 4)) + 599760;
  v552 = *(v18 + (833 * (LODWORD(STACK[0xA78]) ^ (v550 - 1362420804 - ((2 * v550) & 0x3778u))) + 599760) % 0x3D1);
  v553 = *(v18 + (v551 - 977 * ((4396078 * v551) >> 32)));
  v554 = (~v548 << 28) ^ ((*(v18 + LODWORD(STACK[0xA80])) ^ 0xAF) << 24);
  LODWORD(STACK[0xBE0]) = v554;
  v555 = 833 * (((((16 * (v540 + 121)) ^ 0x90) - ((2 * ((16 * (v540 + 121)) ^ 0x90)) & 0xA0) - 43) ^ v538) & 0xF0 | (v418 >> 8) & 0xF) + 599760;
  v556 = v552 ^ (16 * (v553 ^ 0xAF)) ^ ((*(v18 + (v555 - 977 * ((4396078 * v555) >> 32))) ^ 0xAF) << 8);
  v557 = 833 * ((((((16 * v542) ^ 0xB0) - ((2 * ((16 * v542) ^ 0xB0)) & 0xE0) + 121) ^ (v540 + 121)) & 0xF0 | (LODWORD(STACK[0xA8C]) >> 12)) ^ 0xE) + 599760;
  v558 = v543 ^ (((v542 << 12) ^ 0x9007B000) - ((2 * ((v542 << 12) ^ 0x9007B000)) & 0x29864000) - 1799150332) ^ v554;
  v559 = ((HIWORD(LODWORD(STACK[0xA8C])) & 0xF | (16 * ((HIWORD(v558) ^ 0x94C3) & 0xF))) ^ 0x2DE) + ((32 * (HIWORD(v558) ^ 0x94C3)) & 0x1A0);
  v560 = v556 ^ ((*(v18 + (v557 - 977 * ((4396078 * v557) >> 32))) ^ 0xAF) << 12);
  LODWORD(STACK[0xBE8]) = v560;
  v561 = v545;
  v562 = 833 * ((HIWORD(v543) & 0xF0 | (v545 >> 20) & 0xF) ^ 8) + 599760;
  v563 = *(v18 + (v562 - 977 * ((4396078 * v562) >> 32))) ^ 0xAF;
  v564 = v560 ^ ((*(v18 + (833 * v559 - 977 * ((4396078 * (833 * v559)) >> 32))) ^ 0xAF) << 16) ^ 0xAF;
  v565 = (v563 << 20) - ((v563 << 21) & 0x8A00000) + 1146552650;
  v566 = v565 & 0x5C00000 ^ v564 & 0x5CB01E5;
  v567 = v565 & 0xA300000 ^ v564 & 0x7A34FE1A;
  v568 = 833 * (((v558 >> 20) & 0xF0 | HIBYTE(v561) & 0xF) ^ 0x4B) + 599760;
  v569 = ((v567 | v566) ^ 0x4500000) + 1649771306 - 2 * (((v567 | v566) ^ 0x4500000) & 0x6255833F ^ (v567 | v566) & 0x15);
  LODWORD(STACK[0xBD8]) = v569;
  v570 = v569 ^ ((*(v18 + (v568 - 977 * ((4396078 * v568) >> 32))) ^ 0xAF) << 24);
  LODWORD(STACK[0xBD0]) = v570;
  LODWORD(STACK[0xBC0]) = (833 * (HIBYTE(v570) & 0xF ^ 2) + 579768) % (((839 - 833 * (HIBYTE(v570) & 0xF ^ 2)) ^ (833 * (HIBYTE(v570) & 0xF ^ 2) + 184)) & 0x3D1);
  v571 = (LODWORD(STACK[0xAA0]) ^ 0xBC46F779) + 1850275865;
  LODWORD(STACK[0xBC8]) = v571;
  v572 = (LODWORD(STACK[0xD30]) - 668263689) ^ v571;
  LODWORD(STACK[0xBB8]) = v572;
  v573 = (v572 ^ 0xFD984339) + LODWORD(STACK[0xB18]) + 1466373073 + ((1058170902 - 2 * ((v572 ^ 0xFD984339) + LODWORD(STACK[0xB18]))) | 0xD21F7047);
  v574 = (LODWORD(STACK[0xA9C]) ^ 0x22DE7620) + 1850275865;
  LODWORD(STACK[0xABC]) = v574;
  v575 = (LODWORD(STACK[0xD38]) - 355893747) ^ v574;
  LODWORD(STACK[0xC38]) = v575;
  LODWORD(STACK[0xAC8]) = v575 ^ 0x267BCC6;
  v576 = LODWORD(STACK[0xB38]) - 975798114 + (v575 ^ 0x267BCC6) - ((2 * (LODWORD(STACK[0xB38]) - 975798114 + (v575 ^ 0x267BCC6))) & 0x6D217D34) - 1232028006;
  v577 = 833 * (HIBYTE(v576) & 0xF ^ 6) + 279055;
  v578 = 833 * ((v576 >> 20) & 0xF ^ 9) + 279055;
  v579 = *(v18 + (833 * (HIWORD(v576) & 0xF) + 279055 - 977 * ((4396078 * (833 * (HIWORD(v576) & 0xF) + 279055)) >> 32))) ^ 0xAF ^ ((*(v18 + (v577 - 977 * ((4396078 * v577) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v576 >> 28) ^ 0xB) + 279055 - 977 * ((4396078 * (833 * ((v576 >> 28) ^ 0xB) + 279055)) >> 32))) ^ 0xAF) << 12) ^ (16 * (*(v18 + (v578 - 977 * ((4396078 * v578) >> 32))) ^ 0xAF));
  v580 = 833 * ((v576 >> 12) ^ 0xB) + 279055;
  v581 = v580 - 977 * ((4396078 * v580) >> 32);
  LOBYTE(v561) = v576;
  LODWORD(STACK[0xC18]) = v576;
  v582 = 833 * ((v576 >> 8) & 0xF ^ 0xE) + 279055;
  v583 = 833 * ((v576 >> 4) ^ 9) + 279055;
  v584 = v583 - 977 * ((4396078 * v583) >> 32);
  v585 = *(v18 + (833 * (v561 & 0xF ^ 0xA) + 279055 - 977 * ((4396078 * (833 * (v561 & 0xF ^ 0xA) + 279055)) >> 32))) ^ 0xAF;
  v586 = v585 - 1942322013 - ((2 * v585) & 0x146);
  v587 = (v579 << 16) - 354106773 - ((v579 << 17) & 0xD5C80000);
  v588 = ((v587 ^ 0xEAE4C26B) + ((*(v18 + (v582 - 977 * ((4396078 * v582) >> 32))) ^ 0xAF) << 8)) ^ ((*(v18 + v581) ^ 0xAF) << 12);
  v589 = 833 * (HIBYTE(v573) & 0xF ^ 6) + 279055;
  v590 = 833 * (~(v573 >> 20) & 0xF) + 279055;
  v591 = (v588 | v586 ^ 0x8C3A84A3) ^ (16 * (*(v18 + v584) ^ 0xAF));
  v592 = 833 * ((v573 >> 12) ^ 4) + 279055;
  v593 = ((((*(v18 + (v589 - 977 * ((4396078 * v589) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v573 >> 28) ^ 1) + 279055 - 977 * ((4396078 * (833 * ((v573 >> 28) ^ 1) + 279055)) >> 32))) ^ 0xAF) << 12) | *(v18 + (833 * (HIWORD(v573) & 0xF) + 279055 - 977 * ((4396078 * (833 * (HIWORD(v573) & 0xF) + 279055)) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v590 - 977 * ((4396078 * v590) >> 32))) ^ 0xAF) << 12);
  v594 = 833 * ((v573 >> 8) & 0xF ^ 7) + 279055;
  v595 = 833 * ((v573 >> 4) ^ 0xD) + 279055;
  v596 = v593 | *(v18 + (v594 - 977 * ((4396078 * v594) >> 32))) ^ 0xAF;
  v597 = *(v18 + (833 * (v573 & 0xF ^ 0xC) + 279055 - 977 * ((4396078 * (833 * (v573 & 0xF ^ 0xC) + 279055)) >> 32))) ^ 0xAF;
  v598 = v586 & 0xF;
  LODWORD(STACK[0xAB8]) = v598;
  v599 = v597 - 1938925568 - ((2 * v597) & 0x1A) + 13;
  v600 = 833 * (((2 * (v598 & 0xFFFFFF0F | (16 * (v599 & 0xF)))) ^ 0x1A6) + ((v598 & 0xFFFFFF0F | (16 * (v599 & 0xF))) ^ 0x4FF5F72C));
  v601 = (v596 << 8) - 625335296 - ((v596 << 9) & 0xB5744800) + 15;
  v602 = v601 ^ ((*(v18 + (v592 - 977 * ((4396078 * v592) >> 32))) ^ 0xAF) << 12);
  v603 = v599 ^ 0x8C6E5800;
  v604 = *(v18 + (v600 - 794496440) % 0x3D1) ^ v525;
  v605 = *(v18 + (v595 - 977 * ((4396078 * v595) >> 32))) ^ ((v602 ^ 0xDABA2400 | v603) >> 4);
  v606 = 833 * (((2 * (v604 ^ 0x86)) & 0x717FEFAC ^ 0x705023A0) + (v604 ^ 0x797EE89));
  LODWORD(STACK[0xA9C]) = v606;
  v607 = (-((*(v18 + (v606 - 681571559) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v600 - 794196560) % 0x3D1);
  LODWORD(STACK[0xAA0]) = v591;
  v608 = (v591 >> 4) | (16 * (v605 & 0xF));
  v609 = 833 * (((2 * v608) & 0xFFFFFFEF ^ 0x1E0) + (v608 ^ 0x47F7FF07));
  v610 = *(v18 + (v609 - 771161008) % 0x3D1) ^ (16 * (*(v18 + (833 * v607 + 59143 - 977 * ((4396078 * (833 * v607 + 59143)) >> 32))) ^ 0xAF));
  v611 = 833 * (((2 * (v610 ^ 0xAA)) & 0x1DF4) + (v610 ^ 0xBEF79E55));
  v612 = 833 * ((-((*(v18 + (v611 - 1672925451) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v609 - 770861128) % 0x3D1)) + 59143;
  v613 = 833 * (((2 * (v605 & 0xF0 | (v591 >> 8) & 0xF)) & 0xFFFFFFE7 ^ 0x140) + ((v605 & 0xF0 | (v591 >> 8) & 0xF) ^ 0x45FEFE53));
  v614 = *(v18 + (v613 + 1027953236) % 0x3D1) ^ (16 * (*(v18 + (v612 - 977 * ((4396078 * v612) >> 32))) ^ 0xAF));
  v615 = 833 * (((2 * (v614 ^ 0xAE)) & 0x1FFC) + (v614 ^ 0xFBBF9F51));
  LODWORD(STACK[0xA8C]) = v615;
  v616 = 833 * ((-((*(v18 + (v615 - 713170703) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v613 + 1028253116) % 0x3D1)) + 59143;
  v617 = (v602 >> 8) & 0xF0 | (v588 >> 12);
  v618 = 833 * (((2 * v617) ^ 0x40) + (v617 ^ 0xDBEFF9DF));
  v619 = *(v18 + (v618 + 1478783048) % 0x3D1) ^ (16 * (*(v18 + (v616 - 977 * ((4396078 * v616) >> 32))) ^ 0xAF)) ^ 0xAF;
  v620 = ((2 * v619) & 0x1FFC) + (v619 ^ 0xAFBFFFFE);
  LODWORD(STACK[0xA84]) = v620;
  v621 = *(v18 + (v618 + 1479082928) % 0x3D1);
  v622 = *(v18 + (((590 - v620) & 0x341) + ((v620 + 433) & 0x341)) * (v620 + 1346372017) % 0x3D1);
  LODWORD(STACK[0xA88]) = (v611 - 1673225331) % ((v605 & 0x3D1 ^ 0x350) + (v605 & 0x3D1 ^ 0x81));
  v623 = 833 * ((-((v622 >> 4) ^ 0xA) - 81) ^ v621) + 59143;
  v624 = (v602 >> 12) & 0xF0 | HIWORD(v588) & 0xF;
  v625 = ((2 * v624) & 0x1EA ^ 0x140) + (v624 ^ 0x8F99B55);
  v626 = (833 * v625 - 875794734) % 0x3D1u + 113952280 - ((2 * ((833 * v625 - 875794734) % 0x3D1u)) & 0x430);
  v627 = v625 - (v626 & 0x251 ^ 0xFFFFFC41 | v626 & 0x251 ^ 0x210);
  v628 = *(v18 + (v626 ^ 0x6CAC618)) ^ (16 * (*(v18 + (v623 - 977 * ((4396078 * v623) >> 32))) ^ 0xAF));
  v629 = 833 * (((2 * (v628 ^ 0x2F)) & 0xEFE) + (v628 ^ 0x8FFFE7D0));
  v630 = (v629 + 1884332744) % 0x3D1;
  v631 = 833 * ((-((*(v18 + (v629 + 1884632624) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (833 * v627 - 875853877) % 0x3D1)) + 59143;
  LODWORD(STACK[0xA7C]) = v601;
  v632 = HIWORD(v601) & 0xF0 | (v587 >> 20) & 0xF;
  v633 = ((2 * v632) & 0xFFFFFFBF ^ 0x13C) + (v632 ^ 0xFFCDDF61);
  v634 = *(v18 + v630);
  LODWORD(STACK[0xA80]) = v634;
  v635 = *(v18 + (833 * (v633 + (v634 & 0x47 ^ 7) + (v634 & 0x47 ^ 0x40)) - 1558541471) % 0x3D1) ^ (16 * (*(v18 + (v631 - 977 * ((4396078 * v631) >> 32))) ^ 0xAF));
  v636 = ((2 * (v635 ^ 0xAB)) & 0xF7F7F7F7) + (v635 ^ 0xFFFFFB54);
  v637 = v636 + 1100;
  v636 *= 833;
  v638 = v636 - 1667853754 - ((1666 * v637) & 0x392D248C) + 916300;
  LODWORD(STACK[0xA78]) = (v638 ^ 0x9C969246) % ((v638 & 0x3D1 ^ 0x240) + (v638 & 0x3D1 ^ 0x191u));
  v639 = 833 * ((-((*(v18 + (v636 + 1216180) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (833 * v633 - 1558182448) % 0x3D1)) + 59143;
  LODWORD(STACK[0xA74]) = v587;
  v640 = (v601 >> 20) & 0xF0 | HIBYTE(v587) & 0xF;
  v641 = 833 * (((2 * v640) & 0xFFFFFFF3 ^ 0x150) + (v640 ^ 0xF6B8FD53));
  LODWORD(STACK[0xA6C]) = v641;
  v642 = *(v18 + (v641 + 806256590) % 0x3D1) ^ (16 * (*(v18 + (v639 - 977 * ((4396078 * v639) >> 32))) ^ 0xAF)) ^ 0xAF;
  v643 = 833 * (((2 * v642) & 0x1DBE) + (v642 ^ 0xB73FFEDF));
  LODWORD(STACK[0xA68]) = v643;
  LODWORD(STACK[0xA70]) = (v643 - 1195076760) % (((v587 >> 20) & 1 ^ 0x3D1) + ((v587 >> 20) & 1));
  v644 = LODWORD(STACK[0xCE0]) ^ ((*(v18 + (LODWORD(STACK[0xCF8]) + 591843042) % 0x3D1u) ^ 0xAF) << 24);
  v645 = v644 ^ (~*(v18 + LODWORD(STACK[0xC98])) << 28);
  v646 = 833 * (((v644 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0xCDC])) & 0xF) ^ 0x98) + 599760;
  v647 = 833 * ((HIBYTE(v645) & 0xF0 | (LODWORD(STACK[0xCDC]) >> 28)) ^ 0x5D) + 599760;
  v648 = ((*(v18 + (v646 - 977 * ((4396078 * v646) >> 32))) ^ 0xAF) << 24) ^ (~*(v18 + (v647 - 977 * ((4396078 * v647) >> 32))) << 28) ^ LODWORD(STACK[0xCD0]);
  v649 = 833 * (HIWORD(LODWORD(STACK[0xCD0])) & 0xF) + 579768;
  v650 = *(v18 + (v649 - 977 * ((4396078 * v649) >> 32))) ^ 0xAF;
  v651 = ((*(v18 + (833 * (v648 >> 28) + 579768 - 977 * ((4396078 * (833 * (v648 >> 28) + 579768)) >> 32))) ^ 0xAF) << 12) ^ ((*(v18 + (833 * (HIBYTE(v648) & 0xF) + 579768 - 977 * ((4396078 * (833 * (HIBYTE(v648) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 8) | v650;
  v652 = (v651 - 2 * (v651 & 0x2E5F ^ v650 & 0x16) + 11849) ^ LODWORD(STACK[0xCB8]);
  v653 = 833 * (LODWORD(STACK[0xCE4]) >> 12) + 579768;
  v654 = 833 * ((LODWORD(STACK[0xCE8]) >> 8) & 0xF) + 579768;
  v655 = 833 * ((LODWORD(STACK[0xCF0]) >> 4) ^ 0xA) + 579768;
  v656 = (((*(v18 + (v654 - 977 * ((4396078 * v654) >> 32))) ^ 0xAF) << 8) | (v652 << 16)) ^ ((*(v18 + (v653 - 977 * ((4396078 * v653) >> 32))) ^ 0xAF) << 12) | *(v18 + (LODWORD(STACK[0xCB0]) ^ 0x14921206u)) ^ 0xAF;
  v657 = STACK[0xCB0] & 0x4021A63 ^ 0x22252861 | STACK[0xCB0] & 0x263 ^ 0x202;
  LODWORD(STACK[0xD48]) ^= (16 * (*(v18 + (v655 - 977 * ((4396078 * v655) >> 32))) ^ 0xAF)) ^ 0xEB37C1F0 ^ v656;
  LODWORD(STACK[0xCF0]) = LODWORD(STACK[0xD18]) ^ 0x19A80E75 ^ (LODWORD(STACK[0xC20]) - 1960749053 + v657);
  LODWORD(STACK[0xD28]) = LODWORD(STACK[0xC08]) ^ 0xCEDBB63D ^ LODWORD(STACK[0xCAC]);
  LOBYTE(v657) = *(v18 + (LODWORD(STACK[0xC60]) - 669113768) % 0x3D1u);
  v658 = (v512 - 598255419 + LODWORD(STACK[0xA60])) ^ STACK[0xA64] & 0xFFFFFDFF;
  LODWORD(STACK[0xCE4]) = v658;
  LOBYTE(v591) = (v657 ^ 0xAF) - ((2 * (v657 ^ 0xAF)) & 0xA2) - 47;
  v659 = 833 * (((STACK[0xC68] & 0xF0 | (LODWORD(STACK[0xC58]) >> 4)) ^ 0xFF74FFAA) + ((LODWORD(STACK[0xC58]) >> 3) & 0x14));
  v660 = *(v18 + (v659 - 1001453699) % 0x3D1) ^ (16 * (*(v18 + LODWORD(STACK[0xC50])) ^ 0xAF));
  v661 = 833 * ((v660 ^ 0xFFB37F50) + 2 * (v660 ^ 0xAF));
  v662 = *(v18 + (v661 - 118658488) % 0x3D1) ^ 0xAF;
  v663 = v662 - ((2 * v662) & 0x168);
  v664 = (-((*(v18 + (v661 - 118358608) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v659 - 1001153819) % 0x3D1);
  v665 = (LODWORD(STACK[0xC70]) >> 8) & 0xF0 | (LODWORD(STACK[0xC88]) >> 12);
  v666 = 833 * (((2 * v665) & 0xFFFFFF3F) + (v665 ^ 0x67F8DE9F));
  v667 = *(v18 + (v666 - 1355512920) % 0x3D1) ^ (16 * (*(v18 + (833 * v664 + 59143 - 977 * ((4396078 * (833 * v664 + 59143)) >> 32))) ^ 0xAF));
  v668 = 833 * (((2 * (v667 ^ 0xAF)) & 0x19DE) + (v667 ^ 0x7DE7DC40));
  v669 = (v668 + 1351287128) % 0x3D1u;
  v670 = (-((*(v18 + (v668 + 1351587008) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v666 - 1355213040) % 0x3D1);
  v671 = (LODWORD(STACK[0xC70]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0xC88])) & 0xF;
  v672 = 833 * (((2 * v671) & 0xE2 ^ 2) + (v671 ^ 0x69CFFD7A));
  v673 = *(v18 + (v672 - 1304872362) % 0x3D1u) ^ (16 * (*(v18 + (833 * v670 + 59143 - 977 * ((4396078 * (833 * v670 + 59143)) >> 32))) ^ 0xAF));
  v674 = 833 * (((2 * (v673 ^ 0x8E)) & 0x1FBC) + (v673 ^ 0xE67AFF71));
  v675 = (v674 + 163993001) % 0x3D1;
  v676 = (*(v18 + (v674 + 164292881) % 0x3D1) >> 4) ^ 0xA;
  v677 = 833 * ((v676 + ~(2 * v676) - 80) ^ *(v18 + (v672 - 1304572482) % 0x3D1u)) + 59143;
  v678 = HIWORD(LODWORD(STACK[0xC80])) & 0xF0 | (LODWORD(STACK[0xC88]) >> 20) & 0xF;
  v679 = ((2 * v678) & 0xBE ^ 0xBC) + (v678 ^ 0x7FFFFFA1);
  v680 = *(v18 + (v677 - 977 * ((4396078 * v677) >> 32))) ^ 0xAF;
  v681 = 16 * v680 - ((32 * v680) & 0x1A40) - 1000399574;
  v682 = (v679 + 2147483621 + (v681 & 0x1A0 ^ 0x120) + (v681 & 0x1A0 ^ 0x8F) + 188) * (((LODWORD(STACK[0xC80]) >> 20) & 0x341 ^ 0x41) + ((LODWORD(STACK[0xC80]) >> 20) & 0x341 ^ 0x300));
  v683 = *(v18 + (833 * v679 - 2147290392) % 0x3D1u) ^ v681;
  v684 = 833 * (((2 * (v683 ^ 0xAF)) & 0x33FBFFC8 ^ 0xBA3A40) + (v683 ^ 0x5DA2E261));
  v685 = (v684 - 326942173) % 0x3D1u;
  v686 = (*(v18 + (v684 - 326642293) % 0x3D1u) >> 4) ^ 0xA;
  v687 = (v686 + ~(2 * v686) - 80) ^ *(v18 + v682 % 0x3D1);
  v688 = (LODWORD(STACK[0xC80]) >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0xC88])) & 0xF;
  v689 = 833 * (((2 * v688) & 0xFFFFFF7F ^ 0x5A) + (v688 ^ 0x7FBBFFD2));
  v690 = *(v18 + (v689 + 1564850824) % 0x3D1) ^ (16 * (*(v18 + (833 * v687 + 59143 - 977 * ((4396078 * (833 * v687 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF;
  v691 = 833 * (((2 * v690) & 0x1F12) + (v690 ^ 0xFF3CFF89));
  v692 = v691 + 2055563838;
  v693 = (-((*(v18 + (v691 + 2055863718) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v689 + 1565150704) % 0x3D1);
  v694 = 833 * ((HIBYTE(LODWORD(STACK[0xC80])) & 0xF0 | (LODWORD(STACK[0xC88]) >> 28)) ^ 0x86) + 59143;
  v695 = 833 * (*(v18 + (v694 - 977 * ((4396078 * v694) >> 32))) ^ (16 * (*(v18 + (833 * v693 + 59143 - 977 * ((4396078 * (833 * v693 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  LOBYTE(v694) = v663 - 76;
  v696 = ((*(v18 + v669) ^ 0xAF) << 12) ^ ((v663 + 1633117620) << 8) ^ ((*(v18 + v675) ^ 0xAF) << 16);
  LOBYTE(v663) = *(v18 + v685);
  v697 = v696 ^ ((v663 ^ 0xAF) << 20) ^ ((*(v18 + v692 % 0x3D1) ^ 0xAF) << 24) ^ (~*(v18 + v695 - 977 * (((8792155 * v695) >> 32) >> 1)) << 28);
  LOBYTE(v656) = (((16 * v694) ^ 0x40) - ((2 * ((16 * v694) ^ 0x40)) & 0xA0) - 47) ^ v591;
  LOBYTE(v694) = (((((((16 * v591) ^ 0x10) - ((2 * ((16 * v591) ^ 0x10)) & 0x20) + 30) ^ LODWORD(STACK[0xC28])) & 0xF0 | STACK[0xC58] & 0xF) ^ 1) - 110 - 2 * ((((((16 * v591) ^ 0x10) - ((2 * ((16 * v591) ^ 0x10)) & 0x20) + 30) ^ LODWORD(STACK[0xC28])) & 0x90 | STACK[0xC58] & 6) ^ STACK[0xC58] & 4)) & 0x8D;
  v698 = (LODWORD(STACK[0xC58]) ^ 0xC3323901) >> (-111 - (v694 ^ 0xD | v694 ^ 0x80));
  v699 = v698 - ((2 * v698) & 0x1A582E84) + 1294735170;
  v700 = 833 * ((v656 & 0xF0 | v699 & 0xF) ^ 2) + 599760;
  v701 = *(v18 + (v700 - 977 * ((4396078 * v700) >> 32)));
  v702 = *(v18 + LODWORD(STACK[0xCC0])) ^ (16 * (*(v18 + (833 * ((((((((16 * v591) ^ 0x10) - ((2 * ((16 * v591) ^ 0x10)) & 0x20) + 30) ^ LODWORD(STACK[0xC28])) & 0xF0 | STACK[0xC58] & 0xF) ^ 1) + 1456808082 - 2 * ((((((16 * v591) ^ 0x10) - ((2 * ((16 * v591) ^ 0x10)) & 0x20) + 30) ^ LODWORD(STACK[0xC28])) & 0x90 | STACK[0xC58] & 6) ^ STACK[0xC58] & 4)) ^ 0x56D52092u) + 599760) % 0x3D1) ^ 0xAF)) ^ ((v701 ^ 0xAFu) << ((v663 & 0xCB ^ 0x8B | v663 & 0xCB ^ 0x40) - (v701 & 0xC3 ^ 0x40 | v701 & 0xC3 ^ 0x83u)));
  v703 = ((v697 >> 12) ^ 0x5765B) - 878308641 - ((2 * ((v697 >> 12) ^ 0x5765B)) & 0xC25BE);
  v704 = 833 * ((((v699 >> 4) | (16 * (v703 & 0xF))) ^ 0xF4) + (STACK[0xC40] & 0x2D0 ^ 0x50 | STACK[0xC40] & 0x2D0 ^ 0x280));
  v705 = v704 - 977 * ((4396078 * v704) >> 32);
  v706 = v705 + 1599391006 - ((2 * v705) & 0x23C);
  v707 = (v703 ^ 0xCBA612DF) >> ((((v706 & 0xD4 ^ 0xC0) + (v706 & 0xD4 ^ 0x14)) ^ 0x60) - (v706 & 0xB0 ^ 0xA0 | v706 & 0xB0 ^ 0x10));
  v708 = v707 - ((2 * v707) & 0x9669838) + 1152601116;
  v709 = 833 * (((v699 >> 8) & 0xF | (16 * (v708 & 0xF))) ^ 0xC7) + 599760;
  v710 = 833 * ((v708 & 0xF0 | (v699 >> 12)) ^ 0x11) + 599760;
  v711 = ((*(v18 + (v710 - 977 * ((4396078 * v710) >> 32))) ^ 0xAF) << 20) ^ ((*(v18 + (v709 - 977 * ((4396078 * v709) >> 32))) ^ 0xAF) << 16);
  v712 = 833 * (((((v708 >> 8) & 0xF ^ 0xC) << (((v658 & 0x91 ^ 0x91) + (v658 & 0x91)) ^ 0x95)) | HIWORD(v699) & 0xF) ^ 0xC) + 599760;
  v713 = 833 * (((v708 >> 8) & 0xF0 | (v699 >> 20) & 0xF) ^ 0x42) + 599760;
  v714 = *(v18 + (v713 - 977 * ((4396078 * v713) >> 32))) ^ 0xFF;
  LOBYTE(v699) = v702 ^ 0xAF;
  v715 = v702 ^ 0xAF ^ ((*(v18 + (v706 ^ 0x5F54C51Eu)) ^ 0xAF) << 12);
  v716 = v711 ^ v715;
  v717 = v716 ^ ((*(v18 + v712 % 0x3D1) ^ 0xAF) << 24);
  v718 = v717 ^ ((v714 << 28) + (v714 >> 2 << 31) + 1134173717);
  v719 = (HIBYTE(v717) & 0xF ^ 0x6DAFF367) + ((v717 >> 23) & 0xE);
  v720 = ((*(v18 + (((174 - v719) & 0x141) + ((v719 + 849) & 0x241u)) * (v719 - 1840246959) % 0x3D1) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v718 >> 28) ^ 4) + 579768 - 977 * ((4396078 * (833 * ((v718 >> 28) ^ 4) + 579768)) >> 32))) ^ 0xAF) << 12);
  v721 = 833 * ((HIWORD(v716) & 0xF ^ 0x2B8) + ((v716 >> 15) & 0x10));
  v722 = LODWORD(STACK[0xC48]) ^ (16 * (*(v18 + (833 * (v699 >> 4) + 579768 - 977 * ((4396078 * (833 * (v699 >> 4) + 579768)) >> 32))) ^ 0xAF)) ^ 0x71F17F6D ^ (*(v18 + (833 * (v699 & 0xF) + 579768 - 977 * ((4396078 * (833 * (v699 & 0xF) + 579768)) >> 32))) ^ 0xAF | ((*(v18 + (833 * ((v702 >> 8) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v702 >> 8) & 0xF) + 579768)) >> 32))) ^ 0xAF ^ ((v720 | *(v18 + (v721 - 977 * ((4396078 * v721) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v716 >> 20) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v716 >> 20) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 12) ^ (16 * (*(v18 + (833 * (v715 >> 12) + 579768 - 977 * ((4396078 * (833 * (v715 >> 12) + 579768)) >> 32))) ^ 0xAFu))) << 8));
  LODWORD(STACK[0xD18]) = LODWORD(STACK[0xCCC]) ^ LODWORD(STACK[0xC90]);
  LOBYTE(v702) = *(v18 + (LODWORD(STACK[0xBF0]) + 221947852) % 0x3D1u) ^ 0xAF;
  v723 = (*(v18 + (LODWORD(STACK[0xB80]) + 1471417264) % 0x3D1u) >> 4) ^ 0xA;
  v724 = 833 * ((v723 + ~(2 * v723) - 80) ^ *(v18 + (LODWORD(STACK[0xB90]) + 673083072) % 0x3D1u)) + 59143;
  v725 = (HIBYTE(LODWORD(STACK[0xB98])) ^ 0xB9) - 8691970 - ((2 * (HIBYTE(LODWORD(STACK[0xB98])) ^ 0xB9)) & 0xDDDDDDDD);
  v726 = v725 & 0xF | (16 * (HIBYTE(LODWORD(STACK[0xBA0])) & 0xF));
  v727 = 833 * (((2 * v726) & 0x1D6 ^ 0x1D4) + (v726 ^ 0xFABE7D05));
  v728 = *(v18 + (v727 + 438906204) % 0x3D1) ^ (16 * (*(v18 + (v724 - 977 * ((4396078 * v724) >> 32))) ^ 0xAF));
  v729 = 833 * (((2 * (v728 ^ 0xAF)) & 0x177E) + (v728 ^ 0x1BDFEB10));
  v730 = (v729 + 1281543816) % 0x3D1u;
  v731 = 833 * ((HIBYTE(LODWORD(STACK[0xBA0])) & 0xF0 | ((v725 - 16) >> 4)) ^ 0xCE) + 59143;
  v732 = 833 * ((-((*(v18 + (v729 + 1281843696) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v727 + 439206084) % 0x3D1)) + 59143;
  v733 = *(v18 + (v731 - 977 * ((4396078 * v731) >> 32))) ^ (16 * (*(v18 + (v732 - 977 * ((4396078 * v732) >> 32))) ^ 0xAF)) ^ 0xAF;
  v734 = LODWORD(STACK[0xAF4]) ^ ((*(v18 + v730) ^ 0xAF) << 24);
  LOBYTE(v702) = v702 - ((2 * v702) & 0xDD) - 18;
  LOBYTE(v727) = LODWORD(STACK[0xBB0]) ^ v702;
  v735 = 833 * ((STACK[0xC30] & 0xFFFFFF0F | (16 * (v702 & 0xF))) ^ 0xEE) + 599760;
  v736 = 833 * ((v727 & 0xF0 | (LODWORD(STACK[0xC00]) >> 4)) ^ 0x30) + 599760;
  v737 = 833 * (((LODWORD(STACK[0xBA8]) >> 4) & 0xF0 | (LODWORD(STACK[0xC00]) >> 8) & 0xF) ^ 0x70) + 599760;
  v738 = *(v18 + (v735 - 977 * ((4396078 * v735) >> 32)));
  v739 = *(v18 + (v737 - 977 * ((4396078 * v737) >> 32))) ^ 0xAF;
  v740 = (v739 << 8) + 262326805 - ((v739 << 9) & 0x19400);
  v741 = v738 ^ (16 * (*(v18 + (v736 - 977 * ((4396078 * v736) >> 32))) ^ 0xAF));
  v742 = v741 ^ 0xFA2CABA ^ v740;
  v743 = 833 * ((STACK[0xB70] & 0xF0 | (LODWORD(STACK[0xB98]) >> 20) & 0xF) ^ 0x55) + 599760;
  v744 = v734 ^ (~*(v18 + (((946 - (((2 * v733) & 0x17F4) + (v733 ^ 0x5DFFBBFA))) ^ (((2 * v733) & 0x17F4) + (v733 ^ 0x5DFFBBFA) + 77)) & 0x341) * (((2 * v733) & 0x17F4) + (v733 ^ 0x5DFFBBFAu) - 1577040819) % 0x3D1) << 28);
  v745 = 833 * (((v734 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0xB98])) & 0xF) ^ 9) + 599760;
  v746 = (v742 + ((*(v18 + (v743 - 977 * ((4396078 * v743) >> 32))) ^ 0xAF) << 20)) ^ LODWORD(STACK[0xAE4]);
  v747 = 833 * ((HIBYTE(v744) & 0xF0 | (LODWORD(STACK[0xB98]) >> 28)) ^ 0x7B) + 599760;
  v748 = *(v18 + (v745 - 977 * ((4396078 * v745) >> 32)));
  LOBYTE(v743) = v748 & 0x18 ^ 0x10 | v748 & 0x18 ^ 8;
  v749 = *(v18 + (v747 - 977 * ((4396078 * v747) >> 32)));
  v750 = ((v748 ^ 0xAF) << 24) ^ (~v749 << 28) ^ v746;
  v751 = (v750 >> v743) - ((2 * (v750 >> v743)) & 0xFFA8B346);
  v752 = 833 * (((v751 - 93) >> 4) ^ 0xA) + 579768;
  v753 = 833 * ((v751 - 77) & 0xF ^ 3) + 579768;
  v754 = ((*(v18 + (v753 - 977 * ((4396078 * v753) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v752 - 977 * ((4396078 * v752) >> 32))) ^ 0xAF) << 12);
  v755 = LODWORD(STACK[0xAE8]) + 1833679217 - ((2 * LODWORD(STACK[0xAE8])) & 0x2E2);
  v756 = (*(v18 + (v755 ^ 0x6D4BB971u)) ^ 0xAF | v754) ^ (16 * (*(v18 + (833 * ((v746 >> 20) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v746 >> 20) & 0xF) + 579768)) >> 32))) ^ 0xAF));
  v757 = v750 >> ((((v756 & 0x58 ^ 0x58) + (v756 & 0x58)) | ((v755 & 0x12 ^ 2) + (v755 & 0x12 ^ 0x10))) & ((v749 & 0x89 ^ 0x89) + (v749 & 0x89)));
  LOBYTE(v757) = v757 - ((2 * v757) & 0x7C) + 62;
  v758 = 833 * ((v757 >> 4) ^ 3) + 579768;
  v759 = 833 * ((v741 >> 4) ^ 0xA) + 579768;
  v760 = (((*(v18 + (833 * (v757 & 0xF ^ 0xE) + 579768 - 977 * ((4396078 * (833 * (v757 & 0xF ^ 0xE) + 579768)) >> 32))) ^ 0xAF) << 8) | (v756 << 16)) ^ ((*(v18 + (v758 - 977 * ((4396078 * v758) >> 32))) ^ 0xAF) << 12) | *(v18 + (833 * (~v738 & 0xF) + 579768 - 977 * ((4396078 * (833 * (~v738 & 0xFu) + 579768)) >> 32))) ^ 0xAF;
  v761 = (LODWORD(STACK[0xAE0]) + 599751251) ^ 0x3B8A1367 ^ LODWORD(STACK[0xD10]);
  LODWORD(STACK[0xD10]) = v761 + 517792200 + (~(2 * v761) | 0xC2463C6F);
  LODWORD(STACK[0xCF8]) = LODWORD(STACK[0xAB4]) ^ (16 * (*(v18 + (v759 - 977 * ((4396078 * v759) >> 32))) ^ 0xAF)) ^ 0x39343376 ^ v760;
  v762 = STACK[0xA90];
  v763 = 833 * (HIBYTE(LODWORD(STACK[0xA90])) & 0xF ^ 4) + 279055;
  v764 = 833 * ((LODWORD(STACK[0xA90]) >> 28) ^ 7) + 279055;
  v765 = 833 * ((LODWORD(STACK[0xA90]) >> 20) & 0xF ^ 5) + 279055;
  v766 = 833 * (HIWORD(LODWORD(STACK[0xA90])) & 0xF ^ 6) + 279055;
  v767 = (*(v18 + (v763 - 977 * ((4396078 * v763) >> 32))) ^ (16 * (*(v18 + (v764 - 977 * ((4396078 * v764) >> 32))) ^ 0xAF)) ^ 0xAF) << ((HIBYTE(LODWORD(STACK[0xA90])) & 8 ^ 8) + (HIBYTE(LODWORD(STACK[0xA90])) & 8));
  v768 = 833 * ((LODWORD(STACK[0xA90]) >> 12) ^ 0xE) + 279055;
  v769 = v768 - 977 * ((4396078 * v768) >> 32);
  v770 = 833 * ((LODWORD(STACK[0xA90]) >> 8) & 0xF ^ 7) + 279055;
  v771 = ((*(v18 + (v766 - 977 * ((4396078 * v766) >> 32))) ^ 0xAF ^ v767) << 8) ^ ((*(v18 + (v765 - 977 * ((4396078 * v765) >> 32))) ^ 0xAF) << 12) | *(v18 + (v770 - 977 * ((4396078 * v770) >> 32))) ^ 0xAF;
  v772 = (v771 << 8) - 1769942096 - ((v771 << 9) & 0x2D01A600);
  v773 = 833 * ((LODWORD(STACK[0xA90]) >> 4) ^ 6) + 279055;
  v774 = v773 - 977 * ((4396078 * v773) >> 32);
  v775 = LODWORD(STACK[0xA98]) - 892321381;
  v776 = v772 ^ ((*(v18 + v769) ^ 0xAF) << 12);
  v777 = (v776 ^ 0x9680D3B0 | LODWORD(STACK[0xA94]) ^ 0xEF193D14) ^ (16 * (*(v18 + v774) ^ 0xAF));
  v778 = 833 * (HIBYTE(v775) & 0xF ^ 0xB) + 279055;
  v779 = 833 * ((v775 >> 20) & 0xF ^ 1) + 279055;
  v780 = 833 * (HIWORD(v775) & 0xF ^ 0xB) + 279055;
  v781 = 833 * (((LOWORD(STACK[0xA98]) + 16795) >> 12) ^ 5) + 279055;
  v782 = ((((*(v18 + (v778 - 977 * ((4396078 * v778) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * ((v775 >> 28) ^ 0xE) + 279055 - 977 * ((4396078 * (833 * ((v775 >> 28) ^ 0xE) + 279055)) >> 32))) ^ 0xAF) << 12) | *(v18 + (v780 - 977 * ((4396078 * v780) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v779 - 977 * ((4396078 * v779) >> 32))) ^ 0xAF) << 12);
  v783 = 833 * ((v775 >> 8) & 0xF ^ 7) + 279055;
  v784 = 833 * ((v775 >> 4) ^ 3) + 279055;
  v785 = v782 | *(v18 + (v783 - 977 * ((4396078 * v783) >> 32))) ^ 0xAF;
  v786 = (v785 << 8) - 616386528 - ((v785 << 9) & 0xB6856000) + 1;
  v787 = v786 ^ ((*(v18 + (v781 - 977 * ((4396078 * v781) >> 32))) ^ 0xAF) << 12);
  LOBYTE(v780) = *(v18 + (v784 - 977 * ((4396078 * v784) >> 32))) ^ ((v787 ^ 0xDB42B020 | LODWORD(STACK[0xAAC]) ^ 0x44D0E840) >> 4);
  v788 = (v777 >> 4) | (16 * (v780 & 0xF));
  v789 = 833 * ((-((*(v18 + (LODWORD(STACK[0xAA4]) + 415540152) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (LODWORD(STACK[0xAA8]) - 1564896206) % 0x3D1u)) + 59143;
  v790 = 833 * (((2 * v788) & 0x16A ^ 0x160) + (v788 ^ 0xFFBBB745));
  v791 = *(v18 + (v790 - 567270638) % 0x3D1) ^ (16 * (*(v18 + (v789 - 977 * ((4396078 * v789) >> 32))) ^ 0xAF)) ^ 0xAF;
  v792 = 833 * (((2 * v791) & 0xFFFFFFBF) + (v791 ^ 0x21DFFFDF));
  v793 = LODWORD(STACK[0xAB0]) ^ (16 * (*(v18 + (v792 - 970894744) % 0x3D1) ^ 0xAF));
  v794 = (-((*(v18 + (v792 - 970594864) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v790 - 566970758) % 0x3D1);
  v795 = 833 * (((2 * (v780 & 0x70 | (v777 >> 8) & 0xF)) ^ 0x40) + ((v780 & 0xF0 | (v777 >> 8) & 0xF) ^ 0x9DBDFFDF));
  v796 = *(v18 + (v795 - 1195078968) % 0x3D1) ^ (16 * (*(v18 + (833 * v794 + 59143 - 977 * ((4396078 * (833 * v794 + 59143)) >> 32))) ^ 0xAF));
  v797 = 833 * (((2 * (v796 ^ 0xA9)) & 0x1DF2) + (v796 ^ 0x3FB6FE56));
  v798 = (v797 - 1383252274) % 0x3D1u;
  v799 = 833 * ((-((*(v18 + (v797 - 1382952394) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v795 - 1194779088) % 0x3D1)) + 59143;
  v800 = v799 - 977 * ((4396078 * v799) >> 32);
  v801 = (v787 >> 8) & 0xF0 | (v776 >> 12);
  v802 = 833 * (((2 * v801) & 0x1F0 ^ 0x170) + (v801 ^ 0xEDFFFF45));
  v803 = *(v18 + (v802 - 1845427953) % 0x3D1) ^ (16 * (*(v18 + ((v800 + 2135927734 - ((2 * v800) & 0x76C)) ^ 0x7F4FABB6u)) ^ 0xAF));
  v804 = 833 * (((2 * (v803 ^ 0x88)) & 0x1F90) + (v803 ^ 0xEBA7FF67));
  v805 = (v804 + 844733759) % 0x3D1;
  v806 = 833 * ((-((*(v18 + (v804 + 845033639) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v802 - 1845128073) % 0x3D1)) + 59143;
  v807 = ((*(v18 + v805) ^ 0xAF) << 12) ^ ((*(v18 + v798) ^ 0xAF) << 8);
  v808 = (v787 >> 12) & 0xF0 | HIWORD(v776) & 0xF;
  v809 = 833 * (((2 * v808) & 0xFA ^ 0x40) + (v808 ^ 0xB7D7C55D));
  v810 = *(v18 + (v809 - 890811574) % 0x3D1) ^ (16 * (*(v18 + (v806 - 977 * ((4396078 * v806) >> 32))) ^ 0xAF));
  v811 = ((2 * (v810 ^ 0xAF)) & 0xFFFFFFDF) + (v810 ^ 0x6B57BF40);
  v812 = (((935 - v811) & 0x341) + ((v811 + 88) & 0x341)) * (v811 - 1800912808) % 0x3D1;
  v813 = (-((*(v18 + (833 * v811 - 1216482880) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v809 - 890511694) % 0x3D1);
  v814 = HIWORD(v786) & 0xF0 | (v772 >> 20) & 0xF;
  v815 = 833 * (((2 * v814) & 0xBE ^ 0x90) + (v814 ^ 0x7F5F6117));
  v816 = *(v18 + (v815 - 1968893720) % 0x3D1u) ^ (16 * (*(v18 + (833 * v813 + 59143 - 977 * ((4396078 * (833 * v813 + 59143)) >> 32))) ^ 0xAF));
  v817 = 833 * (2 * ((v816 ^ 0xAF) & 0x7FF) + (v816 ^ 0x7DFF9750));
  v818 = (v817 + 55792200) % 0x3D1u;
  v819 = 833 * ((-((*(v18 + (v817 + 56092080) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (v815 - 1968593840) % 0x3D1u)) + 59143;
  v820 = (v786 >> 20) & 0xF0 | HIBYTE(v772) & 0xF;
  v821 = 833 * (((2 * v820) & 0x1FC ^ 0x16C) + (v820 ^ 0x1B9ECF48));
  v822 = *(v18 + (v821 + 540941705) % 0x3D1u) ^ (16 * (*(v18 + (v819 - 977 * ((4396078 * v819) >> 32))) ^ 0xAF)) ^ 0xAF;
  v823 = 833 * (((2 * v822) & 0xDFE) + (v822 ^ 0xF7FFD6FF));
  v824 = (v823 + 143020872) % 0x3D1;
  v825 = 833 * ((-((*(v18 + (v823 + 143320752) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v18 + (v821 + 541241585) % 0x3D1u)) + 59143;
  v826 = 833 * ((HIBYTE(v786) & 0xF0 | (v772 >> 28)) ^ 0xD9) + 59143;
  v827 = 833 * (*(v18 + (v826 - 977 * ((4396078 * v826) >> 32))) ^ (16 * (*(v18 + (v825 - 977 * ((4396078 * v825) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  v828 = v793 ^ 0x8D3073F0 ^ v807;
  v829 = v828 ^ ((*(v18 + v812) ^ 0xAF) << 16);
  v830 = 833 * ((v793 & 0xF0 | (v777 >> 4)) ^ 0x10) + 599760;
  v831 = 833 * (((v828 >> 4) & 0xF0 | (v777 >> 8) & 0xF) ^ 0x10) + 599760;
  v832 = v829 ^ ((*(v18 + v818) ^ 0xAF) << 20);
  v833 = (v829 >> 12) & 0xF0 | HIWORD(v776) & 0xF;
  v834 = 833 * (((v807 >> 8) & 0xF0 | (v776 >> 12)) ^ 0xD) + 599760;
  v835 = v832 ^ ((*(v18 + v824) ^ 0xAF) << 24);
  v836 = 833 * ((HIWORD(v832) & 0xF0 | (v772 >> 20) & 0xF) ^ 0xF8) + 599760;
  v837 = v835 ^ (~*(v18 + v827 - 977 * (((8792155 * v827) >> 32) >> 1)) << 28);
  v838 = 833 * (((v835 >> 20) & 0xF0 | HIBYTE(v772) & 0xF) ^ 0x76) + 599760;
  v839 = HIBYTE(v837) & 0xF0 | (v772 >> 28);
  v840 = *(v18 + (LODWORD(STACK[0xC10]) - 69671251 + LODWORD(STACK[0xBF8])));
  v841 = v840 ^ (16 * (*(v18 + (v830 - 977 * ((4396078 * v830) >> 32))) ^ 0xAF));
  v842 = v841 ^ ((*(v18 + (v831 - 977 * ((4396078 * v831) >> 32))) ^ 0xAF) << 8);
  v843 = v842 ^ ((*(v18 + (v834 - 977 * ((4396078 * v834) >> 32))) ^ 0xAF) << 12);
  v844 = v843 ^ ((*(v18 + (833 * (v833 ^ 0x20) + 599760 - 977 * ((4396078 * (833 * (v833 ^ 0x20u) + 599760)) >> 32))) ^ 0xAF) << 16);
  v845 = v844 ^ ((*(v18 + (v836 - 977 * ((4396078 * v836) >> 32))) ^ 0xAF) << 20);
  v846 = ((*(v18 + (v838 - 977 * ((4396078 * v838) >> 32))) ^ 0xAF) << 24) ^ (~*(v18 + (833 * (v839 ^ 0xA9) + 599760 - 977 * ((4396078 * (833 * (v839 ^ 0xA9u) + 599760)) >> 32))) << 28) ^ v845;
  v847 = ((*(v18 + (833 * (HIBYTE(v846) & 0xF) + 579768 - 977 * ((4396078 * (833 * (HIBYTE(v846) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (833 * (v846 >> 28) + 579768 - 977 * ((4396078 * (833 * (v846 >> 28) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v18 + (833 * (HIWORD(v844) & 0xF) + 579768 - 977 * ((4396078 * (833 * (HIWORD(v844) & 0xF) + 579768)) >> 32))) ^ 0xAF;
  v848 = 833 * ((v841 >> 4) ^ 0xA) + 579768;
  LODWORD(STACK[0xCE8]) = LODWORD(STACK[0xAC4]) ^ (16 * (*(v18 + (v848 - 977 * ((4396078 * v848) >> 32))) ^ 0xAF)) ^ 0x3C23BCF0 ^ ((((v847 << 8) ^ ((*(v18 + (833 * ((v845 >> 20) & 0xF) + 579768 - 977 * ((4396078 * (833 * ((v845 >> 20) & 0xF) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v18 + (833 * ((v842 >> 8) & 0xF) + 578791) % 0x3D1) ^ 0xAF) << 8) ^ ((*(v18 + (833 * (v843 >> 12) + 579768 - 977 * ((4396078 * (833 * (v843 >> 12) + 579768)) >> 32))) ^ 0xAF) << 12) | *(v18 + (833 * (~v840 & 0xF) + 579768 - 977 * ((4396078 * (833 * (~v840 & 0xFu) + 579768)) >> 32))) ^ 0xAF);
  v849 = v762 ^ LODWORD(STACK[0xAD4]);
  LODWORD(STACK[0xCDC]) = v849;
  v850 = 833 * ((HIBYTE(LODWORD(STACK[0xBE0])) & 0xF0 | (LODWORD(STACK[0xD20]) >> 28)) ^ 7) + 599760;
  v851 = *(v18 + (v850 - 977 * ((4396078 * v850) >> 32))) ^ 0xFF;
  v852 = 833 * (((LODWORD(STACK[0xBD0]) ^ ((v851 << 28) + (v851 >> 2 << 31) - 913999565)) >> 28) ^ 0xA) + 579768;
  v853 = 833 * (HIWORD(LODWORD(STACK[0xBD8])) & 0xF ^ 5) + 579768;
  v854 = 833 * ((LODWORD(STACK[0xBD8]) >> 20) & 0xF ^ 5) + 579768;
  v855 = ((*(v18 + LODWORD(STACK[0xBC0])) ^ 0xAF) << 8) ^ ((*(v18 + (v852 - 977 * ((4396078 * v852) >> 32))) ^ 0xAF) << 12) | *(v18 + (v853 - 977 * ((4396078 * v853) >> 32))) ^ 0xAF;
  v856 = 833 * (LODWORD(STACK[0xBE8]) >> 12) + 579768;
  v857 = (v855 << 8) ^ ((*(v18 + (v854 - 977 * ((4396078 * v854) >> 32))) ^ 0xAF) << 12);
  v858 = 833 * ((LODWORD(STACK[0xBD8]) >> 8) & 0xF ^ 3) + 579768;
  v859 = v857 | *(v18 + (v858 - 977 * ((4396078 * v858) >> 32))) ^ 0xAF;
  v860 = 833 * ((LODWORD(STACK[0xBD8]) >> 4) ^ 2) + 579768;
  v861 = v860 - 977 * ((4396078 * v860) >> 32);
  v862 = 833 * (STACK[0xBD8] & 0xF ^ 0xA) + 579768;
  v863 = (v859 << 8) ^ ((*(v18 + (v856 - 977 * ((4396078 * v856) >> 32))) ^ 0xAF) << 12) | *(v18 + (v862 - 977 * ((4396078 * v862) >> 32))) ^ 0xAF;
  v864 = LODWORD(STACK[0xAD8]) ^ 0xBD841B84 ^ LODWORD(STACK[0xAC0]);
  v865 = LODWORD(STACK[0xACC]) ^ (16 * (*(v18 + v861) ^ 0xAF)) ^ 0x59EEC074 ^ v863;
  v866 = LODWORD(STACK[0xACC]) ^ 0x4ADFFD88 ^ (LODWORD(STACK[0xD30]) + 1031307253);
  v867 = STACK[0xABC];
  v868 = (LODWORD(STACK[0xABC]) ^ 0x267BCC6) - 2130503100 + ((2 * ((LODWORD(STACK[0xD38]) + 1343677195) ^ LODWORD(STACK[0xAD8]))) & 0xFDF9B5BE ^ 0xED39A136) + ((LODWORD(STACK[0xD38]) + 1343677195) ^ LODWORD(STACK[0xAD8]) ^ 0x89600E44) + 2781;
  LODWORD(STACK[0xD38]) = v868 - ((2 * v868) & 0x4B4306CC);
  v869 = v867 ^ 0x1EEA933F ^ ((LODWORD(STACK[0xADC]) ^ 0x1F65B640) - ((2 * (LODWORD(STACK[0xADC]) ^ 0x1F65B640) + 414728562) & 0x391A5FF2) - 387362638);
  v870 = STACK[0xBC8];
  LODWORD(STACK[0xD30]) = v866 + (LODWORD(STACK[0xBC8]) ^ 0x267BCC6) + 1062476469 - ((2 * (v866 + (LODWORD(STACK[0xBC8]) ^ 0x267BCC6))) & 0x7EA84E76);
  v871 = (LODWORD(STACK[0xBB8]) ^ 0x267BCC6) + (v870 ^ 0x58B9A64B ^ ((LODWORD(STACK[0xAD0]) ^ 0x4ADFFD88) - ((2 * (LODWORD(STACK[0xAD0]) ^ 0x4ADFFD88) - 1732755086) & 0xB5BC351A) + 658127686));
  v872 = ((2 * (LODWORD(STACK[0xAC8]) + v869)) & 0xE0FDDDD0) + ((LODWORD(STACK[0xAC8]) + v869) ^ 0xF07EEEE8);
  v873 = *(v18 + (LODWORD(STACK[0xA9C]) - 681871439) % 0x3D1u) ^ 0xAF;
  v874 = v873 - ((2 * v873) & 0x172);
  v875 = ((*(v18 + (833 * LODWORD(STACK[0xA84]) + 541126025) % 0x3D1u) ^ 0xAF) << 12) ^ ((*(v18 + (LODWORD(STACK[0xA8C]) - 713470583) % 0x3D1u) ^ 0xAF) << 8);
  v876 = ((*(v18 + LODWORD(STACK[0xA78])) ^ 0xAF) << 20) ^ ((LODWORD(STACK[0xA80]) ^ 0xAF) << 16);
  v877 = 833 * ((-((*(v18 + (LODWORD(STACK[0xA68]) - 1194776880) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v18 + (LODWORD(STACK[0xA6C]) + 806556470) % 0x3D1u)) + 59143;
  v878 = 833 * ((HIBYTE(LODWORD(STACK[0xA7C])) & 0xF0 | (LODWORD(STACK[0xA74]) >> 28)) ^ 0xDE) + 59143;
  v879 = 833 * (*(v18 + (v878 - 977 * ((4396078 * v878) >> 32))) ^ (16 * (*(v18 + (v877 - 977 * ((4396078 * v877) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  LOBYTE(v878) = v874 - 71;
  v880 = (v874 + 1771626681) ^ (16 * (*(v18 + LODWORD(STACK[0xA88])) ^ 0xAF));
  v881 = v880 ^ 0x52EC5160 ^ v875;
  v882 = 833 * ((STACK[0xAB8] & 0xFFFFFF0F | (16 * (v878 & 0xF))) ^ 0x93) + 599760;
  v883 = *(v18 + (v882 - 977 * ((4396078 * v882) >> 32)));
  v884 = (v876 - ((2 * v876) & 0x5460000) + 312730324) ^ v881 ^ ((*(v18 + LODWORD(STACK[0xA70])) ^ 0xAF) << 24) ^ (~*(v18 + v879 - 977 * (((8792155 * v879) >> 32) >> 1)) << 28);
  v885 = LODWORD(STACK[0xAA0]) >> ((v883 & 4 ^ 4) + (v883 & 4));
  v886 = v885 - ((2 * v885) & 0x76071DBE);
  v887 = (HIWORD(v884) ^ 0x29D7) + 1608825293 - ((2 * (HIWORD(v884) ^ 0x29D7)) & 0x1739A);
  v888 = 833 * ((v880 & 0xF0 | (32 - v886) & 0xF) ^ 0xB0) + 599760;
  v889 = v888 - 977 * ((4396078 * v888) >> 32);
  v890 = v886 + 990088927;
  v891 = 471565879 * ((v849 & 0x564B8647 ^ 0x40038245) + (v849 & 0x564B8647 ^ 0x16480402)) * ((((v881 >> 4) & 0xF0 | ((v886 - 33) >> 4)) ^ 0x1D) + 720);
  v892 = 833 * (((v875 >> 8) & 0xF0 | ((v886 + 990088927) >> 8) & 0xF) ^ 0xE) + 599760;
  v893 = *(v18 + (v892 - 977 * ((4396078 * v892) >> 32))) ^ 0xAF;
  v894 = v893 - ((2 * v893) & 0x48) + 409827108;
  v895 = (v894 << 12) ^ ((*(v18 + v891 % 0x3D1) ^ 0xAF) << 8);
  v896 = 833 * (((16 * (v887 & 0xF)) | (v890 >> 12)) ^ 0xD8) + 599760;
  v897 = v896 - 977 * ((4396078 * v896) >> 32);
  v898 = v897 - 181249556 - ((2 * v897) & 0x3D8);
  v899 = (v887 ^ 0x5FE4B9CDu) >> (((3 - v897) & 4 ^ 4) + ((3 - v897) & 4));
  v900 = v899 - ((2 * v899) & 0xFF2DC2C) + 1207528982;
  v901 = 833 * ((HIWORD(v890) & 0xF | (16 * (v900 & 0xF))) ^ 0x63) + 599760;
  v902 = *(v18 + (v898 ^ 0xF53259EC)) ^ 0xAF;
  v903 = *(v18 + (v901 - 977 * ((4396078 * v901) >> 32)));
  v904 = v902 - ((2 * v902) & 0x156);
  v905 = v883 ^ (16 * (*(v18 + v889) ^ 0xAF));
  v906 = v905 ^ 0x330379A3 ^ v895;
  v907 = (((v900 & 0xF0 | (v890 >> 20) & 0xF) ^ 0x10) + 720) * (v906 & 0x341 ^ 0x100 | v906 & 0x341 ^ 0x241);
  v908 = (v900 >> 4) & 0xF0 | HIBYTE(v890) & 0xF;
  v909 = ((*(v18 + (v907 - 977 * ((4396078 * v907) >> 32))) ^ 0xAF) << 24) ^ (~*(v18 + (833 * (v908 ^ 0xEB) + 599760 - 977 * ((4396078 * (833 * (v908 ^ 0xEBu) + 599760)) >> 32))) << 28);
  v910 = (v903 ^ 0xAF) - ((2 * (v903 ^ 0xAF)) & 0x138) + 1267096220;
  v911 = (((v910 << 20) ^ 0xA9C00000) - ((2 * ((v910 << 20) ^ 0xA9C00000)) & 0x1200000) - 1063794294) ^ v909;
  LOBYTE(v911) = HIBYTE(v911) - ((v911 >> 23) & 0x92);
  v904 -= 75278933;
  v912 = LODWORD(STACK[0xCE8]);
  v913 = 833 * ((v895 >> 12) ^ 4) + 579768;
  v914 = 833 * ((v906 >> 8) & 0xF ^ 9) + 579768;
  v915 = 833 * ((v905 >> 4) ^ 0xA) + 579768;
  v916 = LODWORD(STACK[0xCF0]);
  v917 = STACK[0xC78];
  v918 = (((((*(v18 + (833 * (v904 & 0xF ^ (v894 >> 4) ^ 0x186D779) + 579768) % 0x3D1) ^ 0xAF) << 8) | ((*(v18 + (833 * ((v911 + 73) & 0xF ^ 9) + 579768 - 977 * ((4396078 * (833 * ((v911 + 73) & 0xF ^ 9u) + 579768)) >> 32))) ^ ((*(v18 + (833 * (v909 >> 28) + 579768 - 977 * ((4396078 * (833 * (v909 >> 28) + 579768)) >> 32))) ^ 0xAF) << (((-66 - v911) | (v911 + 73)) & 4)) ^ 0xAF) << 16)) ^ ((*(v18 + (833 * (v910 & 0xF ^ (v904 >> 4) ^ 0xFB83556) + 579768) % 0x3D1) ^ 0xAF) << 12) | *(v18 + (v914 - 977 * ((4396078 * v914) >> 32))) ^ 0xAF) << 8) ^ ((*(v18 + (v913 - 977 * ((4396078 * v913) >> 32))) ^ 0xAF) << 12);
  v919 = *(v18 + (v915 - 977 * ((4396078 * v915) >> 32))) ^ 0xAF;
  v920 = *(v18 + (833 * (~v883 & 0xF) + 579768 - 977 * ((4396078 * (833 * (~v883 & 0xFu) + 579768)) >> 32))) ^ 0xAF;
  v921 = (LODWORD(STACK[0xD38]) - 1516141722) ^ LODWORD(STACK[0xC18]);
  LODWORD(STACK[0xD38]) = (LODWORD(STACK[0xD30]) + 3206) ^ (16 * v919 + 857137846 - ((32 * v919) & 0x560)) ^ 0xC855515A ^ ((v918 | v920) + 857137846 - 2 * ((v918 | v920) & 0x3316E2B7 ^ v920 & 1));
  LODWORD(STACK[0xCE0]) = LODWORD(STACK[0xB00]) - 778064392;
  v922 = LODWORD(STACK[0xCE4]) ^ 0xE1D986A1;
  LODWORD(STACK[0xB70]) = LODWORD(STACK[0xCA0]) - 540763690;
  LODWORD(STACK[0xD20]) = LODWORD(STACK[0xD10]) + 1;
  v923 = LODWORD(STACK[0xCDC]) ^ 0x24792876u;
  v924 = (LODWORD(STACK[0xC38]) ^ 0x127C2DF5) - v872 - 691788682;
  LODWORD(STACK[0xB80]) = LODWORD(STACK[0xD08]) - (STACK[0xD00] & 0x19C0) + 352509159;
  return (*(STACK[0xD40] + 8 * v917))();
}

uint64_t sub_1BADE3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = LODWORD(STACK[0xD28]);
  LODWORD(STACK[0xD28]) = v7;
  v10 = *(STACK[0xD40] + 8 * ((506 * (a5 == 0)) ^ v6));
  LODWORD(STACK[0xCF0]) = v5;
  LODWORD(STACK[0xCE4]) = v8;
  return v10();
}

uint64_t sub_1BADE3D70(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v23 = (v14 + 1080) ^ 0x502;
  v24 = v14 + 1080;
  LODWORD(STACK[0xCB8]) = v24;
  v25 = 67 * v23;
  LODWORD(STACK[0xCC0]) = 67 * v23;
  HIDWORD(v27) = v19 ^ 0x1313DFC;
  LODWORD(v27) = v19 ^ 0x12000000;
  v26 = v27 >> 25;
  HIDWORD(v27) = v19 ^ 0x3C;
  LODWORD(v27) = v19 ^ (v18 - 60);
  v28 = v27 >> 6;
  HIDWORD(v27) = v19 ^ 0x535 ^ v25;
  LODWORD(v27) = v19 ^ (v18 - 1532);
  v29 = v27 >> 11;
  LODWORD(STACK[0xCE8]) = v20;
  LODWORD(STACK[0xBE8]) = v9;
  HIDWORD(v27) = v20 ^ 0xFFFFFFE1;
  LODWORD(v27) = v20 ^ 0xF7017640;
  v30 = v27 >> 6;
  v31 = v20 ^ 0xF7017661;
  v32 = v26 ^ v28 ^ v29;
  HIDWORD(v27) = v20 ^ 0x661;
  LODWORD(v27) = v20 ^ 0xF7017000;
  v33 = (v27 >> 11) ^ v30;
  LODWORD(STACK[0xD10]) = v8;
  HIDWORD(v27) = v20 ^ 0x1017661;
  LODWORD(v27) = v20 ^ 0xF6000000;
  v34 = v33 ^ (v27 >> 25);
  LODWORD(STACK[0xC68]) = v34;
  v35 = STACK[0xD38];
  v36 = v31 & (v13 ^ v18) ^ (LODWORD(STACK[0xD38]) ^ a1) & (v19 ^ v18);
  LODWORD(STACK[0xC80]) = v21;
  LODWORD(STACK[0xC78]) = v21 ^ 0x8ECBD9BF;
  v37 = v36 ^ v21 ^ (v21 ^ 0x8ECBD9BF) & v31;
  LODWORD(STACK[0xC88]) = v35 ^ 0xF7017661;
  v38 = v35 ^ (v19 ^ v18) & (v13 ^ v18) ^ v31 & (a1 ^ 0xF7017661) ^ v31 & (v35 ^ 0xF7017661) ^ (v21 ^ 0x8ECBD9BF) & (v19 ^ v18);
  LODWORD(STACK[0xC58]) = v38;
  v39 = a8 - a2 - ((2 * (a8 - a2) + 510365448) & 0x54528EE6);
  v40 = v12 ^ 0x724275F8;
  v41 = ((a4 ^ (a6 - 241978762) ^ 0xED356C15 ^ v34 ^ v32) - (a4 ^ (a6 - 241978762) ^ 0xED356C15 ^ v34)) ^ (a3 + 1812660115 + (v32 ^ (a8 - 1812660115))) ^ ((v40 ^ v32) - v40);
  v42 = v22;
  v43 = ((a2 - 2067842839) ^ 0xF8C6342F) - 1653117822 - ((2 * ((a2 - 2067842839) ^ 0xF8C6342F)) & 0x3AEED904);
  v44 = (v11 + v40 - 1979604048) ^ v43;
  v45 = (v44 & 0x428D8986 ^ 0x50882) + (v44 & 0x428D8986 ^ 0x42888104);
  v46 = a6 - v10;
  v47 = v10 - 716052283;
  v48 = v47 ^ (v22 - 1221555 + (a4 ^ 0xED356C15));
  v49 = (((v47 ^ 0xF8C6342F) + 2017061677) ^ (v22 + 774046734)) - 522420833 - ((2 * (((v47 ^ 0xF8C6342F) + 2017061677) ^ (v22 + 774046734))) & 0xC1B8FB3E);
  v39 -= 1184952585;
  v50 = (v45 - ((2 * v45) & 0x4120604) - 1440135309) ^ v39;
  v51 = v46 + 474073521;
  LODWORD(STACK[0xCCC]) = a5;
  v52 = ((v37 ^ 0xC3811277 ^ v48 ^ v51 ^ v38) - (v48 ^ v51 ^ v38 ^ 0x4D4ACBC8)) ^ ((v44 ^ 0x13BCB53D ^ v37) - (v44 ^ 0x9D776C82)) ^ ((v37 ^ 0x40B12A3E ^ (v50 - 830803070 + (~(2 * v50) | 0x630A18FD))) - (v39 ^ 0xE8A4CEF5));
  v53 = (((v43 ^ 0x9D776C82) + 2017061677) ^ (v11 - 1204335759)) + 1454183722 - ((2 * (((v43 ^ 0x9D776C82) + 2017061677) ^ (v11 - 1204335759))) & 0xAD5A2A54);
  v54 = v53 ^ v39;
  v55 = v44 ^ v53 ^ v39;
  v56 = (v53 ^ 0x56AD152A) - (v55 ^ 0x237EB75D);
  v57 = v56 ^ 0x7FFE7FA6;
  v58 = (2 * v56) & 0xFFFCFF4C;
  v59 = v49 ^ v51 ^ v48;
  v60 = (((v49 ^ 0xE0DC7D9F) - (v59 ^ 0x5A97C036)) ^ 0xEFBDDFEF) + 272769041 + ((2 * ((v49 ^ 0xE0DC7D9F) - (v59 ^ 0x5A97C036))) & 0xDF7BBFDE);
  v61 = v60 + (v49 ^ v51 ^ 0xA251F419) - ((2 * (v60 + (v49 ^ v51 ^ 0xA251F419))) & 0x9E628FE0);
  LODWORD(STACK[0xCDC]) = v13;
  v62 = v59 ^ (v22 - 401081681);
  v63 = v57 - 2147385254 + v58;
  v64 = v63 + (v54 ^ 0xBE09DBDF) + 163658959 - ((2 * (v63 + (v54 ^ 0xBE09DBDF))) & 0x1382799E);
  LODWORD(STACK[0xCB0]) = v19;
  v65 = v55 ^ (v11 + 1915503122);
  LODWORD(STACK[0xC30]) = v65;
  v66 = *(&off_1E7F1D8C0 + v24 - 1234) - 12;
  v67 = *&v66[4 * ((71 * (v16 ^ 1u) - 1673659702) % 0xC0)];
  v68 = STACK[0xD50];
  v69 = LODWORD(STACK[0xCA0]) - 2 * v11 + v52 + (*(STACK[0xD50] + 4 * ((263 * v16 - 19632) % 0x11Bu)) ^ 0x7300DDAF) + (*&v66[4 * ((71 * ((v16 - 4634) ^ 0x5F)) % 0xC0u)] ^ 0xEE3D1E57) + v41 - 2006327297;
  v70 = ((2 * v69) & 0x7F3DFFEE) + (v69 ^ 0x3F9EFFF7);
  LODWORD(STACK[0xBD8]) = v70;
  v71 = (v60 ^ 0x5E7FCC3F) + 1404485242 - ((2 * (v60 ^ 0x5E7FCC3F)) & 0xA76D7CF4);
  LODWORD(STACK[0xC38]) = v71;
  v72 = ((2 * (v71 ^ (v22 - 1752369519))) & 0xAFBF76AE ^ 0xA72D74A4) + (v71 ^ (v22 - 1752369519) ^ 0x469052D);
  v73 = ((2 * (v64 ^ v65)) & 0x3FFD7DF6 ^ 0x157D1524) + (v64 ^ v65 ^ 0xB5413569);
  v74 = v61 + 1328629744;
  v75 = (v61 + 1328629744) ^ v62;
  v76 = v15;
  v77 = ((2 * v75) & 0xFFFFEFB6 ^ 0x2B4D0F84) + (v75 ^ 0xEA59701D);
  v78 = (v63 ^ 0x5E7FCC3F) + 735350823 - ((2 * (v63 ^ 0x5E7FCC3F)) & 0x57A9204E);
  v79 = ((2 * (v78 ^ (v11 + 564215284))) & 0x7EBFFFDE ^ 0x56A9204E) + (v78 ^ (v11 + 564215284) ^ 0x948B6FC8);
  LODWORD(STACK[0xBD0]) = v72;
  v80 = (((((v62 ^ 0x1A97C036) + 433636765) & 0x266FFB77) + (((v62 ^ 0x25683FC9) + 640105059) & 0x266FFB77)) & 0x2E373AE3) - ((v61 + 1328629744) & 0x26273A63 ^ 0x2202060 | (v61 + 1328629744) & 0x26273A63 ^ 0x24071A03) + v77 - v72 + 424432970;
  v81 = ((2 * v80) & 0xFFFFBF16) + (v80 ^ 0x7FFFDF8B);
  v82 = v17;
  LODWORD(STACK[0xCAC]) = v17;
  v83 = v73 - v79;
  v84 = v73 - v79 + 774534146;
  LODWORD(STACK[0xC70]) = v84;
  v85 = ((2 * v84) & 0xE35EFAF4 ^ 0x21445894) + (v84 ^ 0x614D51B0);
  LODWORD(STACK[0xC60]) = v85;
  v86 = v72 - v81;
  v87 = v72 - v81 - 217800613 - ((2 * (v72 - v81) + 801197436) & 0xB647F33A);
  v88 = v79 - (v73 - v79);
  v89 = ((2 * v87) & 0x7B61FBF6 ^ 0x4920EA60) + (v87 ^ 0x5B2288CB);
  LODWORD(STACK[0xC48]) = v88;
  v90 = ((2 * (v88 + 1335013337)) & 0xFBD7BEE ^ 0xB21194A) + ((v88 + 1335013337) ^ 0x3A6F315A);
  v91 = (v90 - 132038135) ^ (v85 - v88 - 2065242942);
  v92 = (v64 ^ 0x63E7A5B4) - v73;
  v93 = (v64 ^ 0x63E7A5B4) - v79;
  LODWORD(STACK[0xBE0]) = v79;
  LODWORD(STACK[0xCA0]) = v93;
  LODWORD(STACK[0xC90]) = v91 - 1176501448;
  v94 = v91 - 1176501448 - ((2 * v91) & 0x73C00670);
  LODWORD(STACK[0xD00]) = v94;
  v95 = ((2 * (v94 ^ (v93 - 10107717 + v85))) & 0xE6AFF7F2 ^ 0x62800670) + (v94 ^ (v93 - 10107717 + v85) ^ 0x4AB7F8C1);
  LODWORD(STACK[0xD30]) = v95;
  LODWORD(STACK[0xD08]) = v90;
  v96 = ((v78 ^ 0x2BD49027) + v79 - v92 + v88 - ((v64 ^ 0x63E7A5B4) - v79) + v90 + 884143210 + v95) ^ (v90 - 673335699);
  v97 = ((2 * v96) & 0x7FEDB7E6) + (v96 ^ 0xBFF6DBF3);
  LODWORD(STACK[0xC50]) = v97;
  LODWORD(v66) = (LODWORD(STACK[0xD20]) ^ 0x1EDCE1C8) + v89 - v97 + v70 - 1029251583;
  v98 = v66 - ((2 * v66) & 0xF1B8E9EA) + 2027713781;
  LODWORD(STACK[0xCD0]) = v16;
  LODWORD(STACK[0xC40]) = (833 * (~(v98 >> 4) & 0xF) + 279055) % ((v67 >> 9) & 0x140 ^ 0x2D1 | (v67 >> 9) & 0x140 ^ 0x100);
  v99 = STACK[0xD28];
  HIDWORD(v27) = LODWORD(STACK[0xD28]) ^ 0x1CE1C8;
  LODWORD(v27) = LODWORD(STACK[0xD28]) ^ 0x1EC00000;
  v100 = v27 >> 22;
  LODWORD(STACK[0xBA0]) = LODWORD(STACK[0xCE0]) + LODWORD(STACK[0xC68]) + 2 * v42 + (LODWORD(STACK[0xC58]) ^ 0xF7017661) + (__ROR4__(v67, 9) ^ 0x26779DA5) - 1065523648 + (*(v68 + 4 * ((263 * v16 + 26442) % 0x11Bu)) ^ 0x7300DDAF);
  HIDWORD(v27) = v99 ^ 0x1C8;
  LODWORD(v27) = v99 ^ 0x1EDCE000;
  v101 = v27 >> 13;
  v102 = STACK[0xD48];
  HIDWORD(v27) = LODWORD(STACK[0xD48]) ^ 1;
  LODWORD(v27) = LODWORD(STACK[0xD48]) ^ 0xE1D986A0;
  v103 = v27 >> 2;
  HIDWORD(v27) = LODWORD(STACK[0xD48]) ^ 0x1986A1;
  LODWORD(v27) = LODWORD(STACK[0xD48]) ^ 0xE1C00000;
  v104 = v27 >> 22;
  LODWORD(v66) = v99 ^ 0x1EDCE1C8;
  HIDWORD(v27) = v99;
  LODWORD(v27) = v99 ^ 0x1EDCE1C8;
  v105 = LODWORD(STACK[0xD48]) ^ 0xE1D98000;
  v106 = LODWORD(STACK[0xD48]) ^ 0x6A1;
  LODWORD(STACK[0xD48]) = STACK[0xD48];
  v107 = __PAIR64__(v106, v105) >> 13;
  v108 = (v27 >> 2) ^ v101 ^ v100;
  v109 = STACK[0xD10];
  v110 = LODWORD(STACK[0xD10]) ^ 0xE1D986A1;
  v111 = v103 ^ v107 ^ v104;
  LODWORD(STACK[0xC98]) = v76;
  v112 = LODWORD(STACK[0xD18]) ^ 0x1EDCE1C8;
  v113 = (v76 ^ v109) & v66 ^ v112 & (v76 ^ 0xE1D986A1) ^ (v102 ^ 0xE1D986A1) & (v82 ^ 0x1EDCE1C8) ^ (v102 ^ 0xE1D986A1) & v112 ^ (((v82 ^ 0x1EDCE1C8) & v110) + 257588228 - ((2 * ((v82 ^ 0x1EDCE1C8) & v110)) & 0x1EB4F808));
  v114 = (v76 ^ 0xE1D986A1) & v110 ^ (v82 ^ 0x1EDCE1C8) & v66 ^ v112 & v66 ^ v112 & (v82 ^ 0x1EDCE1C8) ^ (v102 ^ 0xE1D986A1) & (v76 ^ 0xE1D986A1) ^ (v102 ^ 0xE1D986A1) & v110;
  v115 = ((v111 ^ 0x9C13CCF ^ v64) - (v64 ^ 0x9C13CCF)) ^ ((LODWORD(STACK[0xC30]) ^ 0x237EB75D ^ v111) - (LODWORD(STACK[0xC30]) ^ 0x237EB75D)) ^ ((v75 ^ v108 ^ 0x15A687C6 ^ v111) - (v75 ^ v108 ^ 0x15A687C6));
  v116 = ((2 * ((v74 ^ 0x2517DE8B) - v77 - 2085)) & 0xFCFFF6D6) + (((v74 ^ 0x2517DE8B) - v77 - 2085) ^ 0x7E7FFB6B);
  v117 = ((v113 ^ 0xF5A7C04 ^ (v83 + 116722981)) - v83 - 116722981) ^ ((v113 ^ 0xF5A7C04 ^ (v92 - 1610694917)) - v92 + 1610694917) ^ ((v113 ^ 0xF5A7C04 ^ (v116 - 2122316651) ^ v114 ^ (v81 - 1507370280)) - ((v116 - 2122316651) ^ v114 ^ (v81 - 1507370280)));
  v118 = ((v81 - 849559115) ^ 0x10E22CCA) - 455246732 - ((2 * ((v81 - 849559115) ^ 0x10E22CCA)) & 0xC9BAF8E8);
  LODWORD(STACK[0xC08]) = v118;
  v119 = v81 + v116 - 238496382;
  LODWORD(STACK[0xC00]) = v119;
  LODWORD(STACK[0xBF8]) = v86;
  v120 = ((v118 ^ 0xE4DD7C74) - v86 - ((2 * ((v118 ^ 0xE4DD7C74) - v86) + 1552996014) & 0xB647F33A) + 158098676) ^ v87;
  v121 = (v118 ^ 0xE4DD7C74) + v119 - ((2 * ((v118 ^ 0xE4DD7C74) + v119)) & 0x6D91BFC2) + 919134177;
  LODWORD(STACK[0xC10]) = v121;
  v122 = ((2 * (v120 ^ v121)) & 0xFFA7FFCE ^ 0x16A2A688) + (v120 ^ v121 ^ 0x74AAACAB);
  v123 = STACK[0xBD0];
  v124 = ((LODWORD(STACK[0xC38]) ^ 0x53B6BE7A) + LODWORD(STACK[0xBD0]) - v116 + v86 - (v81 + v116) + v89 - 1073868018 + v122) ^ (v89 + 571176553);
  v125 = ((2 * v124) & 0xCF7FF7EC) + (v124 ^ 0x67BFFBF6);
  LODWORD(STACK[0xB98]) = v125;
  v126 = 2 * (v122 - v89);
  LODWORD(STACK[0xCE0]) = v126;
  LODWORD(STACK[0xC68]) = v122 - v89;
  v127 = v122 - v89 - ((v126 + 186510186) & 0x1427BC7E) - 1348283404;
  v128 = (v127 ^ 0x3A4DB188) + v89 + ((2 * v127) & 0x60BCDF6E ^ 0x249C6E);
  LODWORD(STACK[0xC38]) = v128;
  v129 = (v120 ^ 0x3DB18CAD) - 1005553014;
  LODWORD(STACK[0xC28]) = v129;
  v130 = (v129 ^ 0xB44EEAA5) - 329076857 + v122 - v89;
  LODWORD(STACK[0xC30]) = v130;
  v131 = ((2 * ((v125 - 1169458573 + v128) ^ v130)) & 0x7F5E7FE0 ^ 0x71E6EE0) + ((v125 - 1169458573 + v128) ^ v130 ^ 0xBC304886);
  LODWORD(STACK[0xC58]) = v131;
  v132 = LODWORD(STACK[0xD00]) ^ 0xB9E00338;
  LODWORD(STACK[0xBF0]) = v132 + 1301587242;
  v133 = v132 + 1301587242 - ((2 * v132 + 136377620) & 0x13085540);
  LODWORD(STACK[0xC18]) = v133;
  v134 = STACK[0xD30];
  v135 = LODWORD(STACK[0xD30]) - LODWORD(STACK[0xD08]);
  LODWORD(STACK[0xC20]) = v135;
  v136 = v135 + (v133 ^ 0x3DCAC005) - 1022594191 - ((2 * (v135 + (v133 ^ 0x3DCAC005) - 1022594191)) & 0x3D6D72A4) + 515291474;
  v137 = v136 ^ (v134 - 998374448 + LODWORD(STACK[0xC50]));
  LODWORD(STACK[0xB90]) = v136;
  v138 = ((2 * v137) & 0x97FC9EAA ^ 0x12509C08) + (v137 ^ 0x56D78171);
  LODWORD(STACK[0xC50]) = v138;
  v139 = STACK[0xBA0];
  v140 = v108 + LODWORD(STACK[0xCE4]) - LODWORD(STACK[0xBE0]) + v117 + LODWORD(STACK[0xBA0]) + 1935577924 + v131;
  v141 = v140 - ((2 * v140) & 0x49E938DC) + 620010606;
  v142 = 833 * (HIBYTE(v141) & 0xF ^ 4) + 279055;
  v143 = v142 - 977 * ((4396078 * v142) >> 32);
  v144 = 833 * (~(v141 >> 20) & 0xF) + 279055;
  v145 = v144 - 977 * ((4396078 * v144) >> 32);
  v146 = LODWORD(STACK[0xBE8]) + v114 + v123 + v115 - v138 + LODWORD(STACK[0xBD8]) - 1421178398;
  v147 = 833 * (HIWORD(v141) & 0xF ^ 4) + 279055;
  v148 = STACK[0xB88];
  v149 = ((*(STACK[0xB88] + v143) ^ 0xAF) << 8) ^ ((*(STACK[0xB88] + (833 * ((v141 >> 28) ^ 2) + 279055 - 977 * ((4396078 * (833 * ((v141 >> 28) ^ 2) + 279055)) >> 32))) ^ 0xAF) << 12);
  v150 = 833 * ((v141 >> 12) ^ 9) + 279055;
  v151 = v149 | *(STACK[0xB88] + (v147 - 977 * ((4396078 * v147) >> 32))) ^ 0xAF;
  v152 = 833 * ((v141 >> 8) & 0xF ^ 0xC) + 279055;
  v153 = (v151 << 8) ^ ((*(STACK[0xB88] + v145) ^ 0xAF) << 12) | *(STACK[0xB88] + (v152 - 977 * ((4396078 * v152) >> 32))) ^ 0xAF;
  v154 = 833 * ((v141 >> 4) ^ 6) + 279055;
  v155 = v146 - ((2 * v146) & 0xDF2D67C2) - 275336223;
  v156 = 833 * (~HIBYTE(v155) & 0xF) + 279055;
  v157 = v156 - 977 * ((4396078 * v156) >> 32);
  v158 = *(STACK[0xB88] + (833 * (v141 & 0xF ^ 0xE) + 279055 - 977 * ((4396078 * (833 * (v141 & 0xF ^ 0xE) + 279055)) >> 32))) ^ 0xAF;
  v159 = (v153 << 8) - 968728320 - ((v153 << 9) & 0x8C84C200) + 12;
  LODWORD(v68) = v159 ^ ((*(STACK[0xB88] + (v150 - 977 * ((4396078 * v150) >> 32))) ^ 0xAF) << 12);
  v160 = v158 - 228271584 - ((2 * v158) & 0x54) + 10;
  LODWORD(STACK[0xCE4]) = v160;
  v161 = 833 * ((((BYTE2(v155) ^ 0x96) - ((2 * (BYTE2(v155) ^ 0x96)) & 0xF2) + 121) >> 4) ^ 7) + 279055;
  v162 = 833 * (((HIWORD(v155) ^ 0xEF96) - ((2 * (HIWORD(v155) ^ 0xEF96)) & 0x64F2) - 840879495) & 0xF ^ 9) + 279055;
  v163 = ((*(v148 + ((v157 - 1352618846 - ((2 * v157) & 0x144)) ^ 0xAF60ACA2)) ^ 0xAF) << 8) ^ ((*(v148 + (833 * ((v155 >> 28) ^ 0xE) + 279055 - 977 * ((4396078 * (833 * ((v155 >> 28) ^ 0xE) + 279055)) >> 32))) ^ 0xAF) << 12);
  v164 = 833 * ((v155 >> 12) ^ 0xB) + 279055;
  v165 = v163 | *(v148 + (v162 - 977 * ((4396078 * v162) >> 32))) ^ 0xAF;
  v166 = 833 * ((v155 >> 8) & 0xF ^ 3) + 279055;
  v167 = (v165 << 8) ^ ((*(v148 + (v161 - 977 * ((4396078 * v161) >> 32))) ^ 0xAF) << 12);
  v168 = 833 * ((v155 >> 4) ^ 0xE) + 279055;
  v169 = v168 - 977 * ((4396078 * v168) >> 32);
  v170 = v167 | *(v148 + (v166 - 977 * ((4396078 * v166) >> 32))) ^ 0xAF;
  v171 = *(v148 + (833 * (v155 & 0xF ^ 1) + 279055 - 977 * ((4396078 * (833 * (v155 & 0xF ^ 1) + 279055)) >> 32))) ^ 0xAF;
  v172 = (v170 << 8) + 685943344 - ((v170 << 9) & 0x51C55400) + 4;
  v173 = v172 ^ ((*(v148 + (v164 - 977 * ((4396078 * v164) >> 32))) ^ 0xAF) << 12);
  v174 = v171 - 153383984 - ((2 * v171) & 0x1AC) + 6;
  v175 = (v158 + 32 - ((2 * v158) & 0x54) + 10) & 0xF | (16 * (v174 & 0xF));
  v176 = 833 * (((2 * v175) & 0xFC ^ 0xD4) + (v175 ^ 0xA7F7714));
  LOBYTE(v174) = *(v148 + v169) ^ ((v173 ^ 0x28E2AA30 | v174 ^ 0xF6DB8BD0) >> 4);
  v177 = v176 - 683562639;
  v178 = STACK[0xB80];
  v179 = *(v148 + (v176 - 683862519) % 0x3D1u) ^ LODWORD(STACK[0xB80]);
  v180 = 833 * (((2 * (v179 ^ 0xAF)) & 0x63FE5BFE ^ 0x220419CE) + (v179 ^ 0x64FDF1B7));
  LODWORD(STACK[0xBE0]) = v180;
  v181 = (-((*(v148 + (v180 + 280022960) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v148 + v177 % 0x3D1);
  v182 = *(v148 + (v154 - 977 * ((4396078 * v154) >> 32))) ^ ((v68 ^ 0xC6426100 | v160 ^ 0xF264DA20) >> 4);
  LODWORD(STACK[0xBE8]) = v182;
  v183 = 833 * ((~(2 * (v182 & 0xF | (16 * (v174 & 0xF)))) & 0x7E) + ((v182 & 0xF | (16 * (v174 & 0xF))) ^ 0x5656FFC0));
  v184 = *(v148 + (v183 + 250370824) % 0x3D1u) ^ (16 * (*(v148 + (833 * v181 + 59143 - 977 * ((4396078 * (833 * v181 + 59143)) >> 32))) ^ 0xAF));
  v185 = 833 * (((2 * (v184 ^ 0xA7)) & 0xEFEFEFEF) + (v184 ^ 0x371BD758));
  LODWORD(STACK[0xBD8]) = v185;
  v186 = 833 * ((-((*(v148 + (v185 - 1368670280) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v183 + 250670704) % 0x3D1u)) + 59143;
  v187 = 833 * (((2 * (v174 & 0xF0 | (v182 >> 4))) & 0xFF7F ^ 0x154) + ((v174 & 0xF0 | (v182 >> 4)) ^ 0x6FF75F15));
  v188 = *(v148 + (v187 - 1408083320) % 0x3D1u) ^ (16 * (*(v148 + (v186 - 977 * ((4396078 * v186) >> 32))) ^ 0xAF));
  v189 = 833 * (v188 ^ 0xAF);
  LODWORD(STACK[0xBC8]) = v189;
  v190 = 833 * (((-((*(v148 + (v189 + 359023) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v148 + (v187 - 1407783440) % 0x3D1u)) + (((v188 & 0x5F3 ^ 0xA3) + (v188 & 0x5F3 ^ 0x3B550) + 20084) & 0x3D85F));
  LODWORD(STACK[0xBD0]) = v68;
  v191 = (v173 >> 8) & 0xF0 | (v68 >> 12);
  v192 = 833 * (((2 * v191) & 0xFFFFFFEF ^ 0x14C) + (v191 ^ 0xFAD7EE51));
  v193 = *(v148 + (v192 - 949988016) % 0x3D1) ^ (16 * (*(v148 + v190 - 977 * (((562697865 * v190) >> 32) >> 7)) ^ 0xAF));
  v194 = 833 * (((2 * (v193 ^ 0x8F)) & 0xFFFFFF3F) + (v193 ^ 0xCBD65F30));
  v195 = (-((*(v148 + (v194 - 1149741552) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v192 - 949688136) % 0x3D1);
  v196 = (v173 >> 12) & 0xF0 | WORD1(v68) & 0xF;
  v197 = 833 * (((2 * (v196 & 0x7F)) ^ 0x44) + (v196 ^ 0xBBDFEB5D));
  v198 = *(v148 + (v197 - 1402757432) % 0x3D1) ^ (16 * (*(v148 + (833 * v195 + 59143 - 977 * ((4396078 * (833 * v195 + 59143)) >> 32))) ^ 0xAF));
  v199 = 833 * (((2 * (v198 ^ 0xAF)) & 0x15DE) + (v198 ^ 0xEBB6EA40));
  v200 = 833 * ((-((*(v148 + (v199 + 30607040) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v197 - 1402457552) % 0x3D1)) + 59143;
  v201 = HIWORD(v172) & 0xF0 | (v159 >> 20) & 0xF;
  v202 = 833 * (((2 * v201) & 0xFFFFFFFB ^ 0x1C8) + (v201 ^ 0xFEDDFF19));
  v203 = *(v148 + (v202 - 1348276999) % 0x3D1) ^ (16 * (*(v148 + (v200 - 977 * ((4396078 * v200) >> 32))) ^ 0xAF));
  v204 = 833 * (((2 * (v203 ^ 0xA7)) & 0x1B6E) + (v203 ^ 0xE3326D18));
  LODWORD(STACK[0xBC0]) = v204;
  v205 = 833 * ((-((*(v148 + (v204 - 1192330760) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v202 - 1347976142) % 0x3D1)) + 59143;
  v206 = (v172 >> 20) & 0xF0 | HIBYTE(v159) & 0xF;
  LODWORD(STACK[0xBB8]) = v159;
  v207 = 833 * (((2 * v206) & 0x166 ^ 0x104) + (v206 ^ 0xFDD77235));
  v208 = *(v148 + (v207 + 99921556) % 0x3D1) ^ (16 * (*(v148 + (v205 - 977 * ((4396078 * v205) >> 32))) ^ 0xAF)) ^ 0xAF;
  v209 = 833 * (((2 * v208) & 0x1BF6) + (v208 ^ 0xDEFFFDFB));
  LODWORD(STACK[0xBB0]) = (v209 + 1627879756) % (((691 - v209) | (v209 + 332)) & 0x3D1);
  v210 = 833 * (*(v148 + (v207 + 100221436) % 0x3D1) ^ (*(v148 + (v209 + 1628179636) % 0x3D1) >> 4) ^ 0xA5) + 59143;
  v211 = 833 * ((HIBYTE(v172) & 0xF0 | (v159 >> 28)) ^ 0x2C) + 59143;
  LODWORD(STACK[0xBA8]) = (833 * (*(v148 + (v211 - 977 * ((4396078 * v211) >> 32))) ^ (16 * (*(v148 + (v210 - 977 * ((4396078 * v210) >> 32))) ^ 0xAF)) ^ 0xAFu) + 59143) % ((v136 & 0x3D1 ^ 0x1D1) + (v136 & 0x3D1 ^ 0x200u));
  v212 = LODWORD(STACK[0xD38]) ^ LODWORD(STACK[0xC00]) ^ 0x13DC0A15 ^ LODWORD(STACK[0xC08]);
  v213 = STACK[0xC80];
  v214 = (LODWORD(STACK[0xC80]) ^ 0x5E688586 ^ (v212 - 794600391 - ((2 * v212) & 0xA146B872))) - ((v212 - 794600391 - ((2 * v212) & 0xA146B872)) ^ 0xD0A35C39);
  v215 = (LODWORD(STACK[0xC78]) ^ (LODWORD(STACK[0xCA0]) + 1897218613)) - LODWORD(STACK[0xCA0]);
  LODWORD(STACK[0xCA0]) = ((LODWORD(STACK[0xC88]) - 776498007 + LODWORD(STACK[0xBF8])) ^ 0x763BE76A) - 1442873664 + ((2 * (LODWORD(STACK[0xC88]) - 776498007 + LODWORD(STACK[0xBF8]))) & 0xEC77CED4);
  LODWORD(STACK[0xD38]) = (((v213 ^ 0x9E29F575 ^ LODWORD(STACK[0xC70])) - LODWORD(STACK[0xC60]) + 1907326330) ^ (v215 - 1897218613) ^ v214) - LODWORD(STACK[0xC48]);
  v216 = (((LODWORD(STACK[0xCF8]) ^ 0xE1D986A1 ^ (LODWORD(STACK[0xD30]) + 212337671)) - LODWORD(STACK[0xD30]) - 212337671) ^ ((LODWORD(STACK[0xCF8]) ^ 0x58398599 ^ LODWORD(STACK[0xD00])) - v132) ^ ((LODWORD(STACK[0xCF8]) ^ 0xC9CDB888 ^ LODWORD(STACK[0xC10]) ^ LODWORD(STACK[0xD20])) - (LODWORD(STACK[0xC10]) ^ LODWORD(STACK[0xD20]) ^ 0x28143E29))) - LODWORD(STACK[0xD08]) + v139 - 1800678780 + LODWORD(STACK[0xB98]);
  v217 = v216 - ((2 * v216) & 0x1DCB4A9E);
  v218 = v217 + 249931087;
  v219 = 833 * (((v217 + 249931087) >> 24) & 0xF ^ 0xE) + 279055;
  v220 = ((*(v148 + (v219 - 977 * ((4396078 * v219) >> 32))) ^ 0xAF) << 8) ^ ((*(v148 + (833 * (v218 >> 28) + 279055 - 977 * ((4396078 * (833 * (v218 >> 28) + 279055)) >> 32))) ^ 0xAF) << 12);
  v221 = 833 * (((v217 + 249931087) >> 20) & 0xF ^ 0xE) + 279055;
  v222 = 833 * (((v217 + 249931087) >> 16) & 0xF ^ 5) + 279055;
  v223 = *(v148 + (v222 - 977 * ((4396078 * v222) >> 32))) ^ 0xAF ^ v220 ^ (16 * (*(v148 + (v221 - 977 * ((4396078 * v221) >> 32))) ^ 0xAF));
  v224 = 833 * (((v217 - 23217) >> 12) ^ 0xA) + 279055;
  v225 = 833 * (((v217 + 249931087) >> 8) & 0xF ^ 5) + 279055;
  v226 = 833 * (((v217 + 79) >> 4) ^ 4) + 279055;
  LODWORD(v66) = v226 - 977 * ((4396078 * v226) >> 32);
  v227 = 833 * ((-96 - v217) & 0xF) + 279055;
  v228 = *(v148 + (v225 - 977 * ((4396078 * v225) >> 32)));
  v229 = (v223 << 16) - 1466149698 - ((v223 << 17) & 0x51380000);
  v230 = ((v229 ^ 0xA89C54BE) + ((v228 ^ 0xAF) << 8)) ^ ((*(v148 + (v224 - 977 * ((4396078 * v224) >> 32))) ^ 0xAF) << 12);
  v231 = *(v148 + (v227 - 977 * ((4396078 * v227) >> 32))) ^ 0xAF;
  v232 = v231 - 1688193941 - ((2 * v231) & 0xD6);
  v233 = 833 * (HIBYTE(v98) & 0xF ^ 8) + 279055;
  v234 = (v230 | v232 ^ 0x9B60346B) ^ (16 * (*(v148 + v66) ^ 0xAF));
  LODWORD(v66) = 833 * ((v98 >> 20) & 0xF ^ 0xD) + 279055;
  LODWORD(v68) = 833 * (HIWORD(v98) & 0xF ^ 0xC) + 279055;
  v235 = 833 * ((v98 >> 12) ^ 7) + 279055;
  v236 = 833 * ((v98 >> 8) & 0xF ^ 4) + 279055;
  v237 = (((*(v148 + (v233 - 977 * ((4396078 * v233) >> 32))) ^ 0xAF) << 16) ^ ((*(v148 + (833 * ((v98 >> 28) ^ 7) + 279055 - 977 * ((4396078 * (833 * ((v98 >> 28) ^ 7) + 279055)) >> 32))) ^ 0xAF) << 20) | ((*(v148 + (v68 - 977 * ((4396078 * v68) >> 32))) ^ 0xAF) << 8)) ^ ((*(v148 + (v66 - 977 * ((4396078 * v66) >> 32))) ^ 0xAF) << 12) | *(v148 + (v236 - 977 * ((4396078 * v236) >> 32))) ^ 0xAF;
  v238 = LODWORD(STACK[0xC40]) + 1161272464 - ((2 * LODWORD(STACK[0xC40])) & 0x120);
  v239 = (v237 << 8) ^ ((*(v148 + (v235 - 977 * ((4396078 * v235) >> 32))) ^ 0xAF) << 12) ^ (16 * (*(v148 + (v238 ^ 0x45379C90u)) ^ 0xAF));
  v240 = 833 * ((v98 & 0xF ^ 5 | ((v238 & 0xBB ^ 0x2B) + (v238 & 0xBB ^ 0x90) + 69) & 0xB0) + 335);
  v241 = *(v148 + (v240 - 977 * ((4396078 * v240) >> 32))) ^ 0xAF;
  v242 = v241 - 787461601 - 2 * (v241 & 0x1F);
  v243 = v232 & 0xF;
  v244 = (v239 - 787461601 - ((2 * v239) & 0xA2209420)) ^ v242;
  v245 = 833 * ((~(2 * (v243 | (16 * (v242 & 0xF)))) & 0xF2) + ((v243 | (16 * (v242 & 0xF))) ^ 0x7FBFDD82));
  LODWORD(v66) = (v245 + 1354093494) % 0x3D1u;
  v246 = *(v148 + (v245 + 1353793614) % 0x3D1u) ^ v178 ^ 0xAF;
  v247 = 833 * (((2 * v246) & 0x6DEDFFBE ^ 0x2805B98E) + (v246 ^ 0xE3F42338));
  v248 = (v247 + 1716146792) % 0x3D1;
  v249 = 833 * ((-((*(v148 + (v247 + 1716446672) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + v66)) + 59143;
  v250 = (v244 >> 4) - ((v244 >> 3) & 0x5A159DE) + 852536559;
  v251 = (v234 >> 4) | (16 * (((v244 >> 4) - ((v244 >> 3) & 0xDE) - 17) & 0xF));
  v252 = 833 * (((2 * v251) & 0xFFFFFFBF ^ 0x1A0) + (v251 ^ 0xEFF7F52F));
  v253 = *(v148 + (v252 + 707386472) % 0x3D1) ^ (16 * (*(v148 + (v249 - 977 * ((4396078 * v249) >> 32))) ^ 0xAF)) ^ 0xAF;
  v254 = 833 * ((v253 ^ 0xFBFF7FFF) + 2 * v253);
  LOBYTE(v139) = (*(v148 + (v254 + 94464584) % 0x3D1) ^ 0xAF) - ((2 * (*(v148 + (v254 + 94464584) % 0x3D1) ^ 0xAF)) & 0x52);
  v255 = 833 * ((-((*(v148 + (v254 + 94764464) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v252 + 707686352) % 0x3D1)) + 59143;
  LOBYTE(v90) = (*(v148 + v248) ^ 0xAF) - ((2 * (*(v148 + v248) ^ 0xAF)) & 0xBA);
  v256 = 833 * (((2 * (v250 & 0xF0 | (v234 >> 8) & 0xF)) & 0x1F4 ^ 0x1C0) + ((v250 & 0xF0 | (v234 >> 8) & 0xF) ^ 0x45979B1A));
  v257 = *(v148 + (v256 - 1917952371) % 0x3D1u) ^ (16 * (*(v148 + (v255 - 977 * ((4396078 * v255) >> 32))) ^ 0xAF));
  v258 = 833 * (((2 * (v257 ^ 0x8A)) & 0x1D34) + (v257 ^ 0xFAD79E35));
  v259 = v258 - 932850707;
  v260 = (-((*(v148 + (v258 - 932550827) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v256 - 1917652491) % 0x3D1u);
  LOBYTE(v256) = *(v148 + v259 % 0x3D1) ^ 0xAF;
  v261 = (v250 >> 4) & 0xF0 | (v230 >> 12);
  v262 = 833 * (((2 * v261) & 0xFFFFFF7F ^ 0x100) + (v261 ^ 0xD77D9F7F));
  v263 = *(v148 + (v262 - 801368393) % 0x3D1) ^ (16 * (*(v148 + (833 * v260 + 59143 - 977 * ((4396078 * (833 * v260 + 59143)) >> 32))) ^ 0xAF)) ^ 0xAF;
  v264 = 833 * (((2 * v263) & 0xBBBBBBBB) + (v263 ^ 0x7F7E6DDD));
  LODWORD(v66) = (v264 + 631073514) % 0x3D1;
  v265 = 833 * ((-((*(v148 + (v264 + 631373394) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + (v262 - 801067536) % 0x3D1)) + 59143;
  v266 = (v250 >> 8) & 0xF0 | HIWORD(v230) & 0xF;
  v267 = 833 * (((2 * v266) & 0xFC ^ 0x40) + (v266 ^ 0xFFFFFEDE));
  LOBYTE(v68) = (*(v148 + v66) ^ 0xAF) - ((2 * (*(v148 + v66) ^ 0xAF)) & 0x1A);
  v268 = *(v148 + (v267 + 380681) % 0x3D1) ^ (16 * (*(v148 + (v265 - 977 * ((4396078 * v265) >> 32))) ^ 0xAF));
  v269 = 833 * (((2 * (v268 ^ 0x8F)) & 0x1DBE) + (v268 ^ 0x77DC4E70));
  LOBYTE(v172) = *(v148 + (v269 - 64732312) % 0x3D1u) ^ 0xAF;
  LOBYTE(v66) = v172 - ((2 * v172) & 0x83);
  v270 = 833 * ((-((*(v148 + (v269 - 64432432) % 0x3D1u) >> 4) ^ 0xA) - 81) ^ *(v148 + (v267 + 680561) % 0x3D1)) + 59143;
  v271 = (v250 >> 12) & 0xF0 | (v229 >> 20) & 0xF;
  v272 = 833 * (((2 * v271) & 0xFA ^ 0x12) + (v271 ^ 0xBBFB6F74));
  v273 = (v272 + 1390392498) % 0x3D1;
  v274 = *(v148 + (v272 + 1390092618) % 0x3D1) ^ (16 * (*(v148 + (v270 - 977 * ((4396078 * v270) >> 32))) ^ 0xAF));
  v275 = 833 * (((2 * (v274 ^ 0x2F)) & 0xFFFFFE7F) + (v274 ^ 0x1C6E5F90));
  v276 = (v275 + 2094856968) % 0x3D1;
  v277 = 833 * ((-((*(v148 + (v275 + 2095156848) % 0x3D1) >> 4) ^ 0xA) - 81) ^ *(v148 + v273)) + 59143;
  v278 = (HIWORD(v250) & 0xF0 | HIBYTE(v229) & 0xF) ^ 0xD8;
  v279 = v278 - 680926904 - 2 * (v278 & 0x49 ^ HIBYTE(v229) & 1);
  v280 = *(v148 + 833 * (((2 * v279) & 0x8E ^ 0x80) + (v279 ^ 0xD769E10F)) % 0x3D1) ^ (16 * (*(v148 + (v277 - 977 * ((4396078 * v277) >> 32))) ^ 0xAF)) ^ 0xAF;
  v281 = 833 * (((2 * v280) & 0x1BEA) + (v280 ^ 0xFDFFADF5));
  v282 = (v281 - 2096374574) % 0x3D1;
  v283 = 833 * (*(v148 + (833 * (v279 ^ 0xD769E148) + 359023) % 0x3D1) ^ (*(v148 + (v281 - 2096074694) % 0x3D1) >> 4) ^ 0xA5) + 59143;
  LOBYTE(v235) = (*(v148 + v282) ^ 0xAF) - ((2 * (*(v148 + v282) ^ 0xAF)) & 0xB8);
  v284 = 833 * (((v250 >> 20) & 0xF0 | (v229 >> 28)) ^ 0x2A) + 59143;
  v285 = 833 * (*(v148 + (v284 - 977 * ((4396078 * v284) >> 32))) ^ (16 * (*(v148 + (v283 - 977 * ((4396078 * v283) >> 32))) ^ 0xAF)) ^ 0xAF) + 59143;
  v286 = v285 - 977 * (((8792155 * v285) >> 32) >> 1);
  v287 = 833 * ((v243 & 0xFFFFFF0F | (16 * ((v90 + 93) & 0xF))) ^ 0xDB) + 599760;
  LOBYTE(v243) = v256 - 2 * (v256 & 0x3F) + 63;
  v288 = 833 * (((((16 * (v139 + 41)) ^ 0x90) - ((2 * ((16 * (v139 + 41)) ^ 0x90)) & 0xA0) + 93) ^ (v90 + 93)) & 0xF0 | (v234 >> 4)) + 599760;
  v289 = *(v148 + (v287 - 977 * ((4396078 * v287) >> 32))) ^ (16 * (*(v148 + (v288 - 977 * ((4396078 * v288) >> 32))) ^ 0xAF));
  v290 = 833 * (((((16 * v243) ^ 0xF0) - ((2 * ((16 * v243) ^ 0xF0)) & 0x40) + 41) ^ (v139 + 41)) & 0xF0 | (v234 >> 8) & 0xF) + 599760;
  LOBYTE(v66) = v66 - 63;
  v291 = ((v68 + 13) ^ (16 * v66)) & 0xF0 | HIWORD(v230) & 0xF;
  v292 = 833 * (((((16 * (v68 + 13)) ^ 0xD0) - ((2 * ((16 * (v68 + 13)) ^ 0xD0)) & 0x60) + 63) ^ v243) & 0xF0 | (v230 >> 12)) + 599760;
  LOBYTE(v276) = *(v148 + v276);
  LOBYTE(v287) = (v276 ^ 0xAF) - ((2 * v276) & 0xA0) + 80;
  LOBYTE(v66) = (16 * v287 - ((32 * (v276 ^ 0xAF)) & 0x80) - 63) ^ v66;
  v293 = ((*(v148 + (v292 - 977 * ((4396078 * v292) >> 32))) ^ 0xAF) << 12) ^ ((*(v148 + (v290 - 977 * ((4396078 * v290) >> 32))) ^ 0xAF) << 8);
  v294 = 833 * (v291 ^ 0x10) + 599760 - 977 * ((4396078 * (833 * (v291 ^ 0x10u) + 599760)) >> 32);
  v295 = 833 * ((v66 & 0xF0 | (v229 >> 20) & 0xF) ^ 9) + 599760;
  LODWORD(v66) = 833 * ((((((16 * (v235 + 92)) ^ 0xC0) - ((2 * ((16 * (v235 + 92)) ^ 0xC0)) & 0xA0) + 80) ^ v287) & 0xF0 | HIBYTE(v229) & 0xF) ^ 8) + 599760;
  v296 = 833 * ((((16 * (*(v148 + v286) ^ 0xAF) - ((32 * (*(v148 + v286) ^ 0xAF)) & 0xBF) + 92) ^ (v235 + 92)) & 0xF0 | (v229 >> 28)) ^ 0xA) + 599760;
  v297 = v293 ^ v289;
  v298 = v293 ^ v289 ^ ((*(v148 + v294) ^ 0xAF) << 16) ^ 0xCC7821BC;
  v299 = v298 ^ ((*(v148 + (v295 - 977 * ((4396078 * v295) >> 32))) ^ 0xAF) << 20) ^ 0x54806524;
  v300 = ((*(v148 + (v66 - 977 * ((4396078 * v66) >> 32))) ^ 0xAF) << 24) ^ (~*(v148 + (v296 - 977 * ((4396078 * v296) >> 32))) << 28) ^ v299;
  LODWORD(v66) = 833 * ((v300 >> 28) ^ 9) + 579768 - 977 * ((4396078 * (833 * ((v300 >> 28) ^ 9) + 579768)) >> 32);
  v301 = 833 * (HIBYTE(v300) & 0xF ^ 8) + 579768;
  v302 = 833 * (~(v299 >> 20) & 0xF) + 579768;
  v303 = 833 * (HIWORD(v298) & 0xF ^ 8) + 579768;
  v304 = 833 * (v293 >> 12) + 579768 - 977 * ((4396078 * (833 * (v293 >> 12) + 579768)) >> 32);
  v305 = ((((*(v148 + (v301 - 977 * ((4396078 * v301) >> 32))) ^ 0xAF) << 8) ^ ((*(v148 + v66) ^ 0xAF) << 12) | *(v148 + (v303 - 977 * ((4396078 * v303) >> 32))) ^ 0xAF) << 8) ^ ((*(v148 + (v302 - 977 * ((4396078 * v302) >> 32))) ^ 0xAF) << 12);
  v306 = 833 * ((((STACK[0xBF0] & 0xE) + ((5 - (LODWORD(STACK[0xC90]) ^ 8)) & 0xE)) | 5) & (v297 >> 8)) + 579768;
  v307 = v306 - 977 * ((4396078 * v306) >> 32);
  v308 = 833 * (((v289 >> 4) ^ 0xA) + (STACK[0xD48] & 0x2B8 ^ 0x18 | STACK[0xD48] & 0x2B8 ^ 0x2A0));
  v309 = v308 - 977 * ((4396078 * v308) >> 32);
  v310 = v289 ^ 0x5F;
  if (LODWORD(STACK[0xC18]) == -1987827040)
  {
    v310 = 15;
  }

  v311 = 833 * ((v289 ^ 0xAF) & v310) + 579768;
  v312 = LODWORD(STACK[0xC28]) ^ 0xA99A7216 ^ v218;
  v313 = *(v148 + (v311 - 977 * ((4396078 * v311) >> 32))) ^ LODWORD(STACK[0xC18]) ^ (((*(v148 + v304) ^ 0xAF) << 12) | (16 * (*(v148 + v309) ^ 0xAF))) ^ ((v305 | *(v148 + v307) ^ 0xAF) << 8);
  v314 = LODWORD(STACK[0xD30]) - 2072715325 + (LODWORD(STACK[0xB90]) ^ 0x1D29CE24);
  v315 = ((2 * v314) & 0xFFFDFEDC) + (v314 ^ 0x7FFEFF6E);
  v316 = (LODWORD(STACK[0xC30]) ^ 0x39F7776) + 571176553 + LODWORD(STACK[0xC38]);
  v317 = ((2 * v316) & 0x390EBDFA) + (v316 ^ 0x9C875EFD);
  v318 = *(v148 + (LODWORD(STACK[0xBE0]) + 279723080) % 0x3D1u) ^ 0xAF;
  v319 = v318 - ((2 * v318) & 0xA);
  v320 = (v319 + 678696709) ^ (16 * (*(v148 + (LODWORD(STACK[0xBD8]) - 1368970160) % 0x3D1u) ^ 0xAF));
  v321 = ((*(v148 + (v194 - 1150041432) % 0x3D1) ^ 0xAF) << 12) ^ ((*(v148 + (LODWORD(STACK[0xBC8]) + 59143) % 0x3D1u) ^ 0xAF) << 8);
  v322 = ((*(v148 + (LODWORD(STACK[0xBC0]) - 1192630640) % 0x3D1u) ^ 0xAF) << 20) ^ ((*(v148 + (v199 + 30307160) % 0x3D1) ^ 0xAF) << 16);
  v323 = 833 * (((16 * v319 + 80) & 0xF0 | STACK[0xCE4] & 0xF) ^ 0x5A) + 599760;
  v324 = 833 * ((v320 & 0xF0 | STACK[0xBE8] & 0xF) ^ 0xF) + 599760;
  v325 = 833 * ((((v321 ^ v320) >> 4) & 0xF0 | (LODWORD(STACK[0xBE8]) >> 4)) ^ 0x7A) + 599760;
  v326 = ((v322 - ((2 * v322) & 0x136E0000) - 373853053) ^ v321 ^ v320 ^ ((*(v148 + LODWORD(STACK[0xBB0])) ^ 0xAF) << 24) ^ (~*(v148 + LODWORD(STACK[0xBA8])) << 28)) >> 16;
  v327 = (v326 ^ 0xC1C3) - 1120097291 + ((2 * ((v326 ^ 0xC1C3) & 0xABF6 ^ v326 & 2)) ^ 0xFFFFFFFB);
  v328 = 833 * (((v321 >> 8) & 0xF0 | (LODWORD(STACK[0xBD0]) >> 12)) ^ 6) + 599760;
  v329 = 833 * ((HIWORD(LODWORD(STACK[0xBD0])) & 0xF | (16 * (v327 & 0xF))) ^ 0x42) + 599760;
  v330 = ((*(v148 + (v328 - 977 * ((4396078 * v328) >> 32))) ^ 0xAF) << 12) ^ ((*(v148 + (v325 - 977 * ((4396078 * v325) >> 32))) ^ 0xAF) << 8);
  v331 = ((v327 >> 4) ^ 0xBD3CABF) - 382487100 + (~(2 * ((v327 >> 4) ^ 0xBD3CABF)) | 0xED989479);
  v332 = 833 * (((LODWORD(STACK[0xBB8]) >> 20) & 0xF | (16 * (v331 & 0xF))) ^ 0x34) + 599760;
  v333 = ((*(v148 + (v332 - 977 * ((4396078 * v332) >> 32))) ^ 0xAF) << 20) ^ ((*(v148 + (v329 - 977 * ((4396078 * v329) >> 32))) ^ 0xAF) << 16);
  v334 = 833 * ((v331 & 0xF0 | HIBYTE(LODWORD(STACK[0xBB8])) & 0xF) ^ 0xC6) + 599760;
  v335 = v334 - 977 * ((4396078 * v334) >> 32);
  v336 = *(v148 + (v323 - 977 * ((4396078 * v323) >> 32)));
  v337 = v336 ^ (16 * (*(v148 + (v324 - 977 * ((4396078 * v324) >> 32))) ^ 0xAF));
  v338 = 833 * (((v331 >> 4) & 0xF0 | (LODWORD(STACK[0xBB8]) >> 28)) ^ 0x5C) + 599760;
  v339 = v338 - 977 * ((4396078 * v338) >> 32);
  v340 = v337 ^ 0xAB2D4D9D ^ v330;
  v341 = v333 ^ v340;
  v342 = ((*(v148 + v335) ^ 0xAF) << 24) ^ (~*(v148 + v339) << 28) ^ v341;
  v343 = 833 * ((v342 >> 28) ^ 0xA) + 579768 - 977 * ((4396078 * (833 * ((v342 >> 28) ^ 0xA) + 579768)) >> 32);
  v344 = 833 * ((v341 >> 20) & 0xF ^ 2) + 579768;
  v345 = 833 * (HIBYTE(v342) & 0xF ^ 0xB) + 579768;
  v346 = 833 * (HIWORD(v341) & 0xF ^ 0xD) + 579768;
  v347 = 833 * ((v340 >> 8) & 0xF ^ 0xD) + 579768;
  v348 = ((v337 >> 3) & 0xE ^ 4) + ((v337 >> 4) ^ 0xFE6D0FFD);
  v349 = *(v148 + (v347 - 977 * ((4396078 * v347) >> 32))) ^ 0xAF ^ ((((*(v148 + (v345 - 977 * ((4396078 * v345) >> 32))) ^ 0xAF) << 8) ^ ((*(v148 + v343) ^ 0xAF) << 12) | *(v148 + (v346 - 977 * ((4396078 * v346) >> 32))) ^ 0xAF) << 8) ^ ((*(v148 + (v344 - 977 * ((4396078 * v344) >> 32))) ^ 0xAF) << 12) ^ (16 * (*(v148 + (833 * (v330 >> 12) + 579768 - 977 * ((4396078 * (833 * (v330 >> 12) + 579768)) >> 32))) ^ 0xAF));
  v350 = STACK[0xCD0];
  v351 = ~v336 & 0xF;
  v352 = LODWORD(STACK[0xCDC]);
  v353 = LODWORD(STACK[0xC58]) + v317;
  v354 = LODWORD(STACK[0xC68]) - ((LODWORD(STACK[0xCE0]) - 864048258) & 0xF085EF3C) + 1585630557;
  v355 = LODWORD(STACK[0xCC0]);
  v356 = LODWORD(STACK[0xC30]) ^ 0xC6B26DB9 ^ v141;
  v357 = *(v148 + (833 * v351 + 579768 - 977 * ((4396078 * (833 * v351 + 579768)) >> 32))) ^ LODWORD(STACK[0xB90]) ^ (16 * (*(v148 + (((v348 + 705) | (318 - v348)) & 0x341) * (v348 + 26407617) % 0x3D1) ^ 0xAF)) ^ (v349 << 8);
  v358 = v315 - 334757851 + ((LODWORD(STACK[0xC20]) - 1446789096 + ((-2043884372 - 2 * LODWORD(STACK[0xC20])) | 0x264BB323)) ^ 0x6CDA266E ^ (LODWORD(STACK[0xC50]) - 207969097));
  v359 = STACK[0xCCC];
  v360 = LODWORD(STACK[0xCB0]);
  v361 = LODWORD(STACK[0xC98]);
  v362 = LODWORD(STACK[0xD48]);
  LODWORD(STACK[0xCE0]) = LODWORD(STACK[0xD38]) - 1664762976;
  v363 = LODWORD(STACK[0xCE8]);
  v364 = *(STACK[0xD40] + 8 * SLODWORD(STACK[0xCB8]));
  LODWORD(STACK[0xD20]) = STACK[0xD18];
  LODWORD(STACK[0xD38]) = STACK[0xCF0];
  LODWORD(STACK[0xD18]) = STACK[0xCAC];
  LODWORD(STACK[0xCF8]) = STACK[0xD10];
  LODWORD(STACK[0xD48]) = v356;
  return v364();
}

uint64_t sub_1BADE7134(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xCA0]) += LODWORD(STACK[0xB70]);
  LODWORD(STACK[0xD30]) = LODWORD(STACK[0xB28]) + v10;
  LODWORD(STACK[0xD00]) = LODWORD(STACK[0xCE0]) + LODWORD(STACK[0xB00]);
  v23 = (v9 + 1305518471) & 0xB22F5EFF;
  LODWORD(STACK[0xD08]) = v23;
  v24 = a6 - ((v23 ^ 0xEB2B74E2) & (2 * a6 - 483957524)) - 416714624;
  v25 = ((2 * (v13 ^ (a8 - 1812660115))) & 0xB7EFEFBE ^ 0xA484EBB0) + (v13 ^ (a8 - 1812660115) ^ 0xA9B58227);
  LODWORD(STACK[0xCE0]) = ((LODWORD(STACK[0xD48]) ^ v13 ^ 0x939BF359) - (v13 ^ 0x724275F8)) ^ (a3 + 1812660115 + ((a8 - 1812660115) ^ LODWORD(STACK[0xD48]) ^ 0xE1D986A1)) ^ ((LODWORD(STACK[0xD48]) ^ 0xE7A5B576 ^ a4 ^ LODWORD(STACK[0xD28]) ^ v24) - (a4 ^ LODWORD(STACK[0xD28]) ^ v24 ^ 0x67C33D7));
  v26 = ((2 * (v24 ^ a4)) & 0x777B77EE ^ 0x3141242E) + (v24 ^ a4 ^ 0x231D69E8);
  v27 = v11 + v22;
  LODWORD(STACK[0xCD0]) = ((2 * ((v16 ^ 0x1EDCE1C8) + v11 + v22 + 1082693525)) & 0xDB737FEC) + (((v16 ^ 0x1EDCE1C8) + v11 + v22 + 1082693525) ^ 0xEDB9BFF6);
  v28 = a2 + v12;
  v29 = a2 + a3;
  v30 = 2091807368 - v25 - ((938471358 - 2 * v25) & 0x416CF552);
  v31 = v11 + (v24 ^ 0xA6A41F5);
  v32 = v28 + ((a8 - 1812660115) ^ 0x38AA28B0);
  v33 = v28;
  LODWORD(STACK[0xCDC]) = v28;
  v34 = (v15 ^ 0xE1D986A1 ^ (v32 + 247520409)) - (v32 + 1884344358);
  v35 = v32 + 1884344358 + v25;
  v36 = v14;
  v37 = v29 - 1958187608 + v35 + 670687080;
  v38 = v35 - 1032317804;
  v39 = v27 + (v24 ^ 0xCD3F96BA);
  v40 = v31 + v39 + 1338887811;
  v41 = (v39 - 717273838) ^ v16 ^ (v26 + v39 + 1338887811 - 2 * ((v26 + v39 + 1338887811 + 162773656) & 0x1EDCE1CA ^ (v26 + v39 - 125) & 2) + 1754307680);
  LODWORD(STACK[0xD48]) = ((v15 ^ 0xE1D986A1 ^ (v35 - 1032317804)) - (v35 + 670687080) + 1703004884) ^ (v34 + 1636823949) ^ ((v15 ^ 0xF708BDC3 ^ (v41 + 382810978 - ((2 * v41) & 0x2DA276C4))) - ((v41 + 382810978 - ((2 * v41) & 0x2DA276C4)) ^ 0x16D13B62));
  v42 = -437403528 - v26 - ((145180124 - 2 * v26) & 0x43343B14);
  v43 = v38 - (v15 & 0x5E81CF4D ^ 0x1E00494C | v15 & 0x5E81CF4D ^ 0x40818601);
  v44 = v43 - 14584155 - ((2 * v43) & 0xFE42ED4A);
  v45 = v27 - v26;
  v46 = v26 + v39 + 1338887811 - ((2 * (v26 + v39 + 1338887811) + 1449383574) & 0x43343B14) - 1932785451;
  v47 = ((v40 + 520463198 + v26) ^ 0x96BD4ACE) + v45;
  v48 = (v46 ^ (v45 + 2084983692) ^ 0xA19A1D8A) + 1953694705 - 2 * ((v46 ^ (v45 + 2084983692) ^ 0xA19A1D8A) & 0x747303F5 ^ (v46 ^ (v45 + 2084983692)) & 4);
  LODWORD(STACK[0xCCC]) = v48;
  v49 = v33 - v25;
  v50 = (v37 ^ 0x96BD4ACE) + v49;
  v51 = ((v49 + 1442981627) ^ 0xFF2176A5 ^ v44) + 184894076 - ((2 * ((v49 + 1442981627) ^ 0xFF2176A5 ^ v44)) & 0x160A84F8);
  v52 = ((2 * v30) & 0x112BCDEE ^ 0x128C542) + (v30 ^ 0xA8239C5E);
  v53 = v52 - 705754637 - ((2 * v52) & 0xABDE13E6);
  v54 = STACK[0xD18];
  v55 = v53 ^ v44 ^ 0x2ACE7F56;
  LODWORD(STACK[0xD10]) = (((v8 ^ 0xCB17F9F7 ^ v53 ^ v44) - v55) ^ ((v8 ^ 0x34368F52 ^ v53) - (v53 ^ 0xD5EF09F3)) ^ ((v8 ^ 0x5E9F7AE3 ^ v46 ^ LODWORD(STACK[0xD18])) - (v46 ^ LODWORD(STACK[0xD18]) ^ 0xBF46FC42))) - (v51 ^ 0xB05427C);
  v56 = ((1146331886 - v26) ^ 0x747303F1 ^ v48) - 589651873 - ((2 * ((1146331886 - v26) ^ 0x747303F1 ^ v48)) & 0xB9B540BE);
  v57 = v47 - v26;
  v58 = (v57 - 1063651718) ^ v42 ^ v46;
  v59 = v50 + 1442981627 + (v53 ^ 0xD5EF09F3);
  v60 = v53 ^ v51;
  v61 = v58 - (v51 & 0x26273A63 ^ 0x24223803 | v51 & 0x26273A63 ^ 0x2050260);
  v62 = (v59 ^ 0xBFFFEF39) + 1073745938 + ((v17 + 197) & (2 * v59));
  v63 = (v55 ^ (v62 + 181)) - ((2 * (v55 ^ (v62 + 181))) & 0x22336984) + 286897346;
  v64 = ((2 * (v62 + (v63 ^ 0xEEE64B3D) + 182)) & 0xFDDF7F8E) + ((v62 + (v63 ^ 0xEEE64B3D) + 182) ^ 0x7EEFBFC7);
  v65 = v47 - ((2 * v47 - 958465532) & 0x825C9E30) - 1533162470;
  v66 = v57 - v61;
  v67 = (v61 + 640105059) ^ v65;
  v68 = (v57 - v61 - 1703756777) ^ LODWORD(STACK[0xD20]) ^ v67;
  v50 += 1026248817;
  v69 = v63 ^ v50 ^ 0xD1B8D2B4;
  v70 = (2129641415 - v64 + (LODWORD(STACK[0xCF8]) ^ 0xE1D986A1 ^ (v64 - 2129641415))) ^ ((LODWORD(STACK[0xCF8]) ^ 0xD50BCBBA ^ v69) - (v63 ^ v50 ^ 0xE56A9FAF)) ^ ((LODWORD(STACK[0xCF8]) ^ 0x4A58031C ^ v68) - (v68 ^ 0xAB8185BD));
  v71 = v50 ^ 0xF4732B6D;
  v72 = v70 + (v50 ^ 0xF4732B6D) - (v60 ^ 0xDEEA4B8F);
  v73 = ((2 * v65) & 0x2FC55D82 ^ 0x2A804882) + (v65 ^ 0x22BFCAB4);
  v74 = v73 - ((2 * v73) & 0x8B490D10) - 979073400;
  v75 = (v74 ^ 0x3A5B7977) + v66 + (v56 ^ 0x23255FA0) - ((2 * ((v74 ^ 0x3A5B7977) + v66 + (v56 ^ 0x23255FA0)) + 887453746) & 0xD7575EF2);
  v76 = v60 ^ 0xEA380694 ^ v69;
  v77 = ((2 * (v56 ^ v67)) & 0xFFE7C2BE ^ 0xD3078014) + (v56 ^ v67 ^ 0x16742575);
  v78 = ((2 * (v56 ^ v74)) & 0xFFDDFFCA ^ 0x32DC4D8A) + (v56 ^ v74 ^ 0x6690D932);
  v79 = v75 - 2044826734;
  v80 = ((v75 - 2044826734) & 0x97E2AEC1 ^ 0x83A2AE41 | (v75 - 2044826734) & 0x97E2AEC1 ^ 0x14400080) + v71;
  v81 = (v75 - 2044826734) ^ v19 ^ (v77 - 885780467 - ((2 * v77 - 1089421016) & 0xD7575EF2));
  v82 = v80 - ((2 * v80) & 0xD4777558) + 1782299308;
  v83 = (v60 ^ 0x2115B470) + v64 + (v82 ^ 0x95C44553);
  v84 = ((2 * (v82 ^ v60)) & 0xAFDEFBEE ^ 0x2982E246) + (v82 ^ v60 ^ 0xE33E8CD4);
  v85 = (v20 ^ 0xE4304B9D ^ v81) - (v81 ^ v18);
  v86 = v20 ^ 0xF7017661 ^ (v83 - 2129641413);
  v87 = v19;
  v88 = v74 ^ 0xDA5F15EB ^ (v78 - ((2 * v78 - 381745122) & 0x8B490D10) - 1169945961);
  v83 -= 1132536829;
  v89 = v85 ^ ((v20 ^ 0xF7017661 ^ (v76 + 1601978867)) - v76 - 1601978867) ^ (v86 - v83 + 997104584);
  v90 = v77 + v78;
  v91 = v78 - ((2 * v78 + 867910632) & 0x3E9E1728) - 114512504;
  v92 = (v79 ^ 0xEBABAF79) - v90 - 387383033 + v88 - ((2 * ((v79 ^ 0xEBABAF79) - v90 - 387383033 + v88)) & 0x1EDCAF08) - 1888594044;
  v93 = v82 ^ 0xDA5F15EB ^ (v84 - ((2 * v84 + 960367610) & 0xD4777558) - 2032484183);
  v94 = v84 + v76;
  v95 = v83 - v94 + v93;
  v96 = v95 + 659181506;
  v97 = v94 - (v95 + 659181506) - 75352314 - ((2 * (v94 - (v95 + 659181506) - 75352314) + 1536931212) & 0xD5EFB8EE);
  v95 += 92733938;
  v98 = (v92 ^ 0x7091A87B) + v90 - ((2 * ((v92 ^ 0x7091A87B) + v90) - 1087192736) & 0xEF824B72) - 681933207;
  v99 = v98 ^ v92;
  v100 = (v36 ^ 0x1C9F39A0 ^ v99 ^ LODWORD(STACK[0xCF0])) - (v99 ^ LODWORD(STACK[0xCF0]) ^ 0xFAE045C);
  v101 = ((v36 ^ 0x13313DFC ^ v95) - v96 - ((2 * ((v36 ^ 0x13313DFC ^ v95) - v96) + 59153312) & 0x17899968) + 763894404) ^ (v100 - ((2 * v100) & 0x4AA6CF52) + 626223017);
  HIDWORD(v103) = v101 ^ 0xE97AB1D;
  LODWORD(v103) = v101 ^ 0x20000000;
  v102 = v103 >> 29;
  HIDWORD(v103) = v102 ^ 3;
  LODWORD(v103) = v102 ^ 0x8BCFBD60;
  v97 += 415610685;
  v104 = ((2 * (v97 ^ v95)) & 0xE7FF4DBA ^ 0xC5EF08AA) + (v97 ^ v95 ^ 0x19087AAA);
  v105 = ((v36 ^ 0xF9C6E18B ^ v97) - (v97 ^ 0xEAF7DC77)) ^ 0x7179F7AC ^ (v103 >> 3);
  v106 = ((2 * v99) & 0xFAFFB9FE ^ 0xF05EA07A) + (v99 ^ 0x85D0AEC2);
  v88 += 1216504246;
  v107 = ((2 * (v98 ^ v88)) & 0x6DBFFE9A ^ 0x6D824A12) + (v98 ^ v88 ^ 0x411EDAF4);
  v108 = v88 + (v91 ^ 0x9F4F0B94);
  v109 = ((2 * (v97 ^ (v93 + 1216504246))) & 0xFFAFEEF2 ^ 0xD5AFA8E2) + (v97 ^ (v93 + 1216504246) ^ 0x15202B0E);
  v110 = (LODWORD(STACK[0xCF0]) ^ 0x684E7DF5 ^ v91) + 2 * ((v91 ^ 0x1F4F0B94) & (LODWORD(STACK[0xCF0]) ^ 0x77017661));
  v111 = ((2 * (v84 - 2116213790)) & 0xEED2FF5E ^ 0xE240925C) + ((v84 - 2116213790) ^ 0x864BB681);
  v112 = ((2 * v91) & 0xFF5EFE7E ^ 0xDC5A8474) + (v91 ^ 0x11C2BD85);
  v113 = v112 - v106 + (v21 ^ 0x8ECBD9BF);
  v114 = (v106 + 1067193688) ^ v21;
  v115 = STACK[0xCD0];
  v116 = v114 ^ (v107 + v106 - ((2 * (v107 + v106) - 1757395096) & 0xF4B51D6E) + 1174057579);
  v117 = ((LODWORD(STACK[0xD38]) ^ 0xF7017661 ^ (v109 + v104 + 203973034)) - (v109 + v104) - 203973034) ^ ((LODWORD(STACK[0xD38]) ^ 0xF7017661 ^ (v104 - 920892550)) - v104 + 920892550) ^ ((LODWORD(STACK[0xD38]) ^ 0x479D152F ^ (v116 - ((2 * v116) & 0x881A688C) - 1005767610)) - ((v116 - ((2 * v116) & 0x881A688C) - 1005767610) ^ 0xB09C634E));
  LODWORD(STACK[0xB28]) = LODWORD(STACK[0xD30]) + 1979604048 + LODWORD(STACK[0xCE0]);
  v118 = v112 - 2 * ((v112 + 1030517528) & 0x2DBF2ADF ^ ((v78 - ((2 * v78 - 24) & 0x28) - 120) ^ 0x85) & 1) - 349463050;
  v119 = LODWORD(STACK[0xB40]) + (LODWORD(STACK[0xD20]) ^ 0x1EDCE1C8) + (v65 ^ 0x4AA29B8A) + (v56 ^ 0xDCDAA05F);
  v120 = v111 - ((2 * v111 + 191161680) & 0x5D36DDD2) + 1951261073;
  LODWORD(STACK[0xD38]) = v120 ^ 0xF12A88E ^ (v104 - (v93 + v84) - 1203218135);
  v121 = v108 - v107;
  LODWORD(STACK[0xD30]) = (v118 ^ 0x2DBF2ADE ^ (v108 - v107 + 980442717)) + 585042727 - ((2 * (v118 ^ 0x2DBF2ADE ^ (v108 - v107 + 980442717))) & 0x45BE164E);
  LODWORD(STACK[0xB30]) = LODWORD(STACK[0xB30]) + (v87 ^ 0x13313DFC) - 2146369509 + v78;
  LODWORD(STACK[0xD20]) = ((v93 + v84 - v109 - 842539999) ^ v120 ^ 0xF36E9836) - 25268802 + ((2 * ((v93 + v84 - v109 - 842539999) ^ v120)) & 0xBBEBEDBE ^ 0x1922CD92);
  LODWORD(STACK[0xB50]) = LODWORD(STACK[0xB50]) - v84 + 2116213790 + v105;
  LODWORD(STACK[0xB58]) = LODWORD(STACK[0xB58]) - v84 + 1475313143 + v89;
  LODWORD(STACK[0xB60]) = LODWORD(STACK[0xB60]) - LODWORD(STACK[0xCDC]) - 2047487772 + LODWORD(STACK[0xD48]);
  LODWORD(STACK[0xB68]) += (v54 ^ 0x1EDCE1C8) + (LODWORD(STACK[0xCCC]) ^ 0x747303F1);
  v122 = LODWORD(STACK[0xB78]) - 1221555 + (LODWORD(STACK[0xD28]) ^ 0x1EDCE1C8) + LODWORD(STACK[0xCE4]);
  LODWORD(STACK[0xAF4]) = v122 + 464874278 - ((2 * v122) & 0x376AD64C);
  LODWORD(STACK[0xB40]) = v119 + 1;
  v123 = LODWORD(STACK[0xB14]) + v115;
  LODWORD(STACK[0xB48]) += LODWORD(STACK[0xD10]);
  v124 = STACK[0xD00];
  LODWORD(STACK[0xB14]) = v123 + 306593802;
  LODWORD(STACK[0xB20]) += v72;
  v125 = LODWORD(STACK[0xB38]) - v111;
  LODWORD(STACK[0xB00]) = v124 + 1506846364;
  LODWORD(STACK[0xB18]) += v113 + 2110807488;
  LODWORD(STACK[0xB08]) += v110;
  LODWORD(STACK[0xB38]) = v125 + v104 + 57268434 + v117;
  return (*(STACK[0xD40] + 8 * v9))(v121 - 2001811072);
}

uint64_t sub_1BADE82D0(int a1)
{
  v1 = *(STACK[0xD40] + 8 * ((((LODWORD(STACK[0xD08]) - 1800184057) & 0x6B4C99BA ^ 0x6A) * (SLODWORD(STACK[0xA4C]) < -2043677624)) ^ LODWORD(STACK[0xD08])));
  v2 = LODWORD(STACK[0xAEC]);
  LODWORD(STACK[0xD48]) = a1;
  return v1();
}

uint64_t sub_1BADE842C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v4 = LODWORD(STACK[0xD28]) - 538;
  LODWORD(STACK[0xA5C]) = a4 + 64;
  LODWORD(STACK[0xAF8]) += 64;
  return (*(STACK[0xD40] + 8 * v4))(a1, a2, a3, 4117006046, 2982253789, 585042727, LODWORD(STACK[0xD20]), LODWORD(STACK[0xD30]));
}

uint64_t sub_1BADE8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x9EC]) = LODWORD(STACK[0xA2C]) + 1701376666 + a5 - 1566996003 - ((2 * (LODWORD(STACK[0xA2C]) + 1701376666 + a5)) & 0x453313BA);
  v10 = LODWORD(STACK[0xA24]) + v9 - 1593297337 - ((2 * (LODWORD(STACK[0xA24]) + v9 - 1593297337)) & 0x2E1B526);
  v11 = v8 + LODWORD(STACK[0xA20]) - 570569905 - ((2 * (v8 + LODWORD(STACK[0xA20])) + 109973674) & 0x156D9BFE);
  v12 = LODWORD(STACK[0xB28]) - ((2 * LODWORD(STACK[0xB28]) + 1581939570) & 0xF2EF94D4);
  v13 = LODWORD(STACK[0xB48]) - ((2 * LODWORD(STACK[0xB48]) - 1903493480) & 0xE90DEC9A);
  v14 = LODWORD(STACK[0xB30]) - ((2 * LODWORD(STACK[0xB30]) + 1197204832) & 0x5CE2CADE);
  LODWORD(STACK[0x9E8]) = v6 + LODWORD(STACK[0xA1C]) - ((((v6 + LODWORD(STACK[0xA1C])) << (((v5 - 72) | 0x53) ^ 0x5A)) + 2089702246) & 0x610EC8AA) + 1859030536;
  LODWORD(STACK[0xA08]) = v10 - 2123310445;
  LODWORD(STACK[0x9BC]) = v11 + 2821;
  LODWORD(STACK[0x9A0]) = v12 + 681379875;
  LODWORD(STACK[0x9F0]) = v7 - 2 * ((v7 + 88144688) & 0x2A64728F ^ v7 & 1) - 1348112962;
  LODWORD(STACK[0x9C0]) = v13 - 1144228455;
  LODWORD(STACK[0x9D4]) = v14 + 304044063;
  v15 = *(STACK[0xD40] + 8 * v5);
  LODWORD(STACK[0xA10]) = STACK[0xCA0];
  LODWORD(STACK[0x9D0]) = STACK[0xB40];
  LODWORD(STACK[0x9AC]) = STACK[0xB60];
  LODWORD(STACK[0xA28]) = STACK[0xB38];
  LODWORD(STACK[0x9A4]) = STACK[0xAF4];
  LODWORD(STACK[0x9E0]) = STACK[0xB50];
  LODWORD(STACK[0x9A8]) = STACK[0xB68];
  LODWORD(STACK[0x9C8]) = STACK[0xB58];
  return v15();
}

uint64_t sub_1BADE8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x9F8]) = LODWORD(STACK[0xA2C]) + 1701376666 + a5 - 1566996003 - ((2 * (LODWORD(STACK[0xA2C]) + 1701376666 + a5)) & 0x453313BA);
  LODWORD(STACK[0x9E4]) = LODWORD(STACK[0xB30]) - 2 * ((LODWORD(STACK[0xB30]) + 598602416) & 0x288CEBBD ^ STACK[0xB30] & 1) + ((v5 - 417) | 0x243) - 1942299631;
  v9 = STACK[0xB28];
  v10 = v9 - 815066667 - ((2 * v9 + 1581939570) & 0x408BA838);
  v11 = LODWORD(STACK[0xB48]) + 920483668 - ((2 * LODWORD(STACK[0xB48]) - 1903493480) & 0xDF2FF106);
  v12 = v7 - ((2 * v7 + 1609607834) & 0x7C5EA72C);
  v13 = LODWORD(STACK[0xB20]) - ((2 * LODWORD(STACK[0xB20]) - 1731408160) & 0x8AC1510C);
  LODWORD(STACK[0x9B8]) = v10;
  v14 = v6 + 1982237685;
  v15 = ((282772038 - v9) & 0x22C192C0) + v14 + (v10 & 0x22C192C0 ^ 0x20419000);
  LODWORD(STACK[0x9B0]) = v11 + 123;
  LODWORD(STACK[0x9F4]) = v12 + 1848092899;
  LODWORD(STACK[0xA0C]) = v8 - 2 * ((v8 + 88144688) & 0xCCE45C5 ^ v8 & 1) - 1844494092;
  LODWORD(STACK[0x9D8]) = v13 - 1849225226;
  LODWORD(STACK[0x99C]) = v15 - 2 * (v15 & 0x3F5B086E ^ v14 & 2) - 1084553108;
  v16 = *(STACK[0xD40] + 8 * ((v5 - 172715803) ^ 0xF5B493CE ^ (998 * (v5 == 76415774))));
  LODWORD(STACK[0xA04]) = STACK[0xCA0];
  LODWORD(STACK[0x9B4]) = STACK[0xB68];
  LODWORD(STACK[0xA34]) = STACK[0xB38];
  LODWORD(STACK[0x994]) = STACK[0xAF4];
  LODWORD(STACK[0x9C4]) = STACK[0xB40];
  LODWORD(STACK[0x9DC]) = STACK[0xB50];
  LODWORD(STACK[0x998]) = STACK[0xB60];
  LODWORD(STACK[0x9CC]) = STACK[0xB58];
  return v16();
}

uint64_t sub_1BADE8954()
{
  v3 = (((LODWORD(STACK[0xA28]) + 475925119) & 0x106409E4) + ((60945792 - LODWORD(STACK[0xA28])) & 0x106409E4)) ^ (LODWORD(STACK[0xA34]) - 975798114);
  LODWORD(STACK[0xA34]) = ((2 * v3) & 0xFFF3FFF4 ^ (v1 + 3588)) + (((v0 ^ 0x637) + 1872622370) ^ v3) - 1171292312;
  v4 = *(STACK[0xD40] + 8 * v0);
  LODWORD(STACK[0xA4C]) = v2 - 30;
  LODWORD(STACK[0xA30]) = 1;
  return v4();
}

uint64_t sub_1BADE8A14()
{
  STACK[0xE78] = 0xB6A3960EB5ECEF64;
  LODWORD(STACK[0xE74]) = -18407554;
  LODWORD(STACK[0xE70]) = -1381838588;
  v1 = LODWORD(STACK[0x994]) ^ 0x912AF803;
  STACK[0xE68] = 0x946BEAA6F1CD207;
  v2 = LODWORD(STACK[0x9B8]) ^ 0xFE8D350;
  v3 = LODWORD(STACK[0x99C]) ^ 0x10F60F20;
  v4 = (STACK[0x988] - 0x624059F3CD2E1B5ELL);
  *v4 = -2009212831 * (((829355883 * (STACK[0x9A0] & 0x50D82BD ^ 0x801AB ^ (v0 - 2009694104) & 0x77C977E7 | STACK[0x9A0] & 0x50D82BD ^ 0x50581DD ^ (v0 - 19236202) & 0x1257F7E)) & (STACK[0x9A0] & 0x63243E02 ^ 0x2003400 | STACK[0x9A0] & 0x63243E02 ^ 0x61240A02)) + (LODWORD(STACK[0x9A0]) ^ 0x95C5DEB3));
  v5 = ((2 * LODWORD(STACK[0x9A4])) & 0xC6487C02 ^ 0xC4005C00) + (LODWORD(STACK[0x9A4]) ^ 0x893551AF);
  v6 = LODWORD(STACK[0x9BC]) ^ 0x6604D926;
  v7 = LODWORD(STACK[0x9C0]) ^ 0x9834E294;
  v8 = LODWORD(STACK[0x998]) - 709893277;
  v9 = LODWORD(STACK[0x9AC]) - 709893277;
  v10 = LODWORD(STACK[0x9A8]) - 236169214;
  v11 = LODWORD(STACK[0x9B4]) - 236169214;
  v12 = -2009212831 * (LODWORD(STACK[0x9B0]) ^ 0xC03AFFCF) - 75026750;
  LODWORD(STACK[0xD9C]) = -2009212831 * v3 - 75026750;
  LODWORD(STACK[0xDA0]) = v12;
  v13 = STACK[0xA08];
  v14 = ((2 * ((v13 ^ 0xEDC2CE4A) + 1663319554)) & 0xFFBF77AE) + (((v13 ^ 0xEDC2CE4A) + 1663319554) ^ 0x7FDFBBD7);
  LODWORD(STACK[0xD5C]) = -2009212831 * v6 - 75026750;
  LODWORD(STACK[0xD60]) = -2009212831 * v7 - 75026750;
  LODWORD(STACK[0xDBC]) = -2009212831 * (v8 ^ 0x8A9F9325) - 75026750;
  LODWORD(STACK[0xDC0]) = -2009212831 * (v11 ^ 0x8A9F9325) - 75026750;
  LODWORD(STACK[0xD7C]) = -2009212831 * (v9 ^ 0xF1A40488) - 75026750;
  LODWORD(STACK[0xD80]) = -2009212831 * (v10 ^ 0xF1A40488) - 75026750;
  v15 = LODWORD(STACK[0x9D0]) - 716826536;
  v16 = LODWORD(STACK[0x9C4]) - 716826536;
  v17 = LODWORD(STACK[0x9E4]) ^ 0x8721ECF0;
  v18 = LODWORD(STACK[0x9D8]) ^ 0xEACDAFCA;
  v19 = -2009212831 * (LODWORD(STACK[0x9D4]) ^ 0xC2C371B6) - 75026750;
  LODWORD(STACK[0xD64]) = -2009212831 * v14 - 880710775;
  LODWORD(STACK[0xD68]) = v19;
  LODWORD(STACK[0xDA4]) = -2009212831 * v18 - 75026750;
  LODWORD(STACK[0xDA8]) = -2009212831 * v17 - 75026750;
  v20 = LODWORD(STACK[0x9EC]) ^ 0xCE2B9D04;
  v21 = (((v13 & 0xBD57CDB ^ 0x9C04C4A) + (v13 & 0xBD57CDB ^ 0x2153091)) & 0xB6931DF) + ((LODWORD(STACK[0x9C8]) - 235498359) ^ 0xF1A40488) + 1474497831;
  v22 = -2009212831 * v21 - ((276541634 * v21) & 0x800D813E) + 1074184351;
  LODWORD(STACK[0xD84]) = -2009212831 * (v15 ^ 0xF1A40488) - 75026750;
  LODWORD(STACK[0xD88]) = v22 ^ 0x4006C09F;
  v23 = LODWORD(STACK[0x9F8]) ^ 0xD348E91;
  v24 = LODWORD(STACK[0x9CC]) - 235498359;
  v25 = LODWORD(STACK[0x9E0]) - 205072019;
  v26 = ((2 * (LODWORD(STACK[0x9DC]) - 205072019)) & 0x6BED3BFE ^ 0x12D224A) + ((LODWORD(STACK[0x9DC]) - 205072019) ^ 0x3F690EDA);
  v27 = LODWORD(STACK[0x9F4]) ^ 0x918254DA;
  v28 = -2009212831 * (LODWORD(STACK[0x9E8]) ^ 0xDC35708C) - 75026750;
  LODWORD(STACK[0xD6C]) = -2009212831 * v20 - 75026750;
  LODWORD(STACK[0xD70]) = v28;
  v29 = (((1389518844 - v26) & 0x883DD861) + ((v26 - 1389518845) & 0x883DD861)) * (v26 - 1389518845);
  v30 = LODWORD(STACK[0xA28]) - 975798114;
  v31 = LODWORD(STACK[0xA34]) - 975798114;
  v32 = -2009212831 * (LODWORD(STACK[0x9F0]) ^ 0x46D66657) - 75026750;
  LODWORD(STACK[0xD78]) = -2009212831 * v5 - 2009212831;
  LODWORD(STACK[0xD74]) = v32;
  LODWORD(STACK[0xDC4]) = -2009212831 * (v16 ^ 0x8A9F9325) - 75026750;
  LODWORD(STACK[0xDC8]) = -2009212831 * (v24 ^ 0x8A9F9325) - 75026750;
  LODWORD(STACK[0xD8C]) = -2009212831 * (v25 ^ 0xF1A40488) - 75026750;
  LODWORD(STACK[0xD90]) = -2009212831 * (v30 ^ 0xF1A40488) - 75026750;
  LODWORD(STACK[0xDAC]) = -2009212831 * v23 - 75026750;
  LODWORD(STACK[0xDB0]) = -2009212831 * v27 - 75026750;
  LODWORD(STACK[0xDE4]) = -2113320834;
  v33 = LODWORD(STACK[0xA04]) - 540763690;
  v34 = -2009212831 * ((LODWORD(STACK[0xA10]) - 540763690) ^ 0xF1A40488) - 75026750;
  LODWORD(STACK[0xDCC]) = v29;
  LODWORD(STACK[0xDD0]) = -2009212831 * (v31 ^ 0x8A9F9325) - 75026750;
  STACK[0xE60] = 0xE2BA6A9C232CB852;
  STACK[0xE58] = 0x42E7A64A9CD714BBLL;
  v35 = -2009212831 * ((LODWORD(STACK[0xA0C]) ^ 0xA3634288) - ((((v13 ^ 0x123D31B5) - 1663319554) & 0x9CDBC1FE) + ((v14 - 2145369047) & 0x9CDBC1FE)));
  LODWORD(STACK[0xDB8]) = -2009212831 * v1 - 75026750;
  LODWORD(STACK[0xDB4]) = v35;
  LODWORD(STACK[0xD98]) = -2009212831 * v2 - 75026750;
  LODWORD(STACK[0xD94]) = v34;
  LODWORD(STACK[0xDDC]) = 1193172246;
  LODWORD(STACK[0xDE0]) = -537921666;
  v36 = ((2 * v33) & 0x5DFFFF56 ^ 0x153F2642) + (v33 ^ 0x24606C8E);
  LODWORD(STACK[0xE1C]) = 1809352487;
  LODWORD(STACK[0xE18]) = -1991868505;
  LODWORD(STACK[0xDD4]) = -2009212831 * v36 - 384825609;
  LODWORD(STACK[0xDD8]) = -482116946;
  STACK[0xDE8] = 0xA974080DAF093B95;
  LODWORD(STACK[0xE20]) = -1240199945;
  v4[(v22 & 0x2F ^ 0xF) + 4 + (v22 & 0x2F ^ 0x20)] = 892846863;
  LODWORD(STACK[0xE00]) = -31173807;
  LODWORD(STACK[0xE0C]) = -439612276;
  STACK[0xE04] = 0x7542C2918C7E335BLL;
  STACK[0xDF8] = 0x736FFDEEFBE82D3BLL;
  STACK[0xDF0] = 0xFCB9AB57E317721FLL;
  STACK[0xE44] = 0xDD4B27482680DD2ALL;
  STACK[0xE4C] = 0x82D34E637AB5933DLL;
  STACK[0xE30] = 0xEAF07526EB509E56;
  STACK[0xE38] = 0x2239849F5822A232;
  STACK[0xE10] = 0x9B04C1C9E6CB38EALL;
  v37 = *(STACK[0x490] + 16);
  STACK[0xE28] = 0xC45DDDFCFFBB465CLL;
  LODWORD(STACK[0xE40]) = -1442011256;
  LODWORD(STACK[0xE54]) = ((v36 + 337919575) & 0x1A666738) + ((198951336 - v36) & 0x1A666738);
  return (*(STACK[0xD40] + 8 * ((53 * (*(v37 - 0xF2C67B766E067CBLL) != 0x785FEF64C8799D66)) ^ v0)))();
}

uint64_t sub_1BADE91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xAF4]) = -18102087;
  v9 = (v6 - 612) | 0x6B1;
  v10 = *(STACK[0x490] + 24) + STACK[0x980] + (v9 ^ 0xD3576128);
  STACK[0xD50] = &STACK[0x1300];
  v11 = *(STACK[0xD40] + 8 * v6);
  LODWORD(STACK[0x488]) = 1673528295;
  LODWORD(STACK[0x484]) = -134742469;
  LODWORD(STACK[0x480]) = v7 + 2160;
  LODWORD(STACK[0x47C]) = 1069547005;
  LODWORD(STACK[0x478]) = 1407090776;
  LODWORD(STACK[0x474]) = -138434593;
  LODWORD(STACK[0x470]) = 2127035774;
  LODWORD(STACK[0x46C]) = -135266343;
  LODWORD(STACK[0x468]) = 1073620666;
  LODWORD(STACK[0x464]) = -347479140;
  LODWORD(STACK[0x460]) = 5050368;
  LODWORD(STACK[0x45C]) = 1880064;
  LODWORD(STACK[0x458]) = 5181440;
  LODWORD(STACK[0x454]) = 5558272;
  LODWORD(STACK[0x450]) = 4464640;
  LODWORD(STACK[0x44C]) = -1293942784;
  LODWORD(STACK[0x448]) = -1700748884;
  LODWORD(STACK[0x444]) = 893469528;
  LODWORD(STACK[0x440]) = 2075497866;
  LODWORD(STACK[0x43C]) = -1162272138;
  LODWORD(STACK[0x438]) = 109388854;
  LODWORD(STACK[0x434]) = 1610591958;
  LODWORD(STACK[0x430]) = -1965727708;
  LODWORD(STACK[0x42C]) = 1006625292;
  LODWORD(STACK[0x428]) = -1730154501;
  LODWORD(STACK[0x424]) = 864256;
  LODWORD(STACK[0x420]) = 8466432;
  LODWORD(STACK[0x41C]) = 671097880;
  LODWORD(STACK[0x418]) = 90240;
  LODWORD(STACK[0x414]) = 7408230;
  LODWORD(STACK[0x410]) = 2125736;
  LODWORD(STACK[0x40C]) = 1035927002;
  LODWORD(STACK[0x408]) = 2000116607;
  LODWORD(STACK[0x404]) = 302367488;
  LODWORD(STACK[0x400]) = 268288;
  LODWORD(STACK[0x3FC]) = -186646528;
  LODWORD(STACK[0x3F8]) = 1789952;
  LODWORD(STACK[0x3F4]) = 2355200;
  LODWORD(STACK[0x3F0]) = -411000832;
  LODWORD(STACK[0x3EC]) = -1713110528;
  LODWORD(STACK[0x3E8]) = 1695363072;
  LODWORD(STACK[0x3E4]) = 1208481044;
  LODWORD(STACK[0x3E0]) = -134351110;
  LODWORD(STACK[0x3DC]) = -268505690;
  LODWORD(STACK[0x3D8]) = -1208042017;
  LODWORD(STACK[0x3D4]) = -1078036490;
  LODWORD(STACK[0x3D0]) = 1979700471;
  LODWORD(STACK[0x3CC]) = -335566354;
  LODWORD(STACK[0xAF0]) = 1072283577;
  LODWORD(STACK[0xAEC]) = -1128614980;
  LODWORD(STACK[0xAE8]) = 2112882750;
  LODWORD(STACK[0xAE4]) = 415525;
  LODWORD(STACK[0xAE0]) = -66141956;
  LODWORD(STACK[0xADC]) = 2146828246;
  LODWORD(STACK[0xAD8]) = 1593769823;
  LODWORD(STACK[0xAD4]) = 1909083622;
  LODWORD(STACK[0xAD0]) = -4981411;
  LODWORD(STACK[0xACC]) = -134234113;
  LODWORD(STACK[0xAC8]) = 1610348781;
  LODWORD(STACK[0xAC4]) = 283827715;
  LODWORD(STACK[0xAC0]) = 2146940950;
  LODWORD(STACK[0xABC]) = 2143272726;
  LODWORD(STACK[0xAB8]) = -1819510490;
  LODWORD(STACK[0xAB4]) = 1290891616;
  LODWORD(STACK[0xAB0]) = -118592711;
  LODWORD(STACK[0xAAC]) = 2145385334;
  LODWORD(STACK[0xAA8]) = 341869621;
  LODWORD(STACK[0xAA4]) = -138546670;
  LODWORD(STACK[0xAA0]) = -268439619;
  LODWORD(STACK[0xA9C]) = 2059226623;
  HIDWORD(v13) = v8 + 12288;
  LODWORD(v13) = 1610480927;
  LODWORD(STACK[0xA98]) = 722547274;
  LODWORD(STACK[0xA94]) = 195197072;
  LODWORD(STACK[0xA90]) = -2036713584;
  LODWORD(STACK[0xA8C]) = -268633122;
  LODWORD(STACK[0xA88]) = 1006554195;
  LODWORD(STACK[0xA84]) = 2143157877;
  LODWORD(STACK[0xA80]) = -140514305;
  LODWORD(STACK[0xA78]) = 1476394950;
  LODWORD(STACK[0xA74]) = 90466864;
  LODWORD(STACK[0xA5C]) = 1551232173;
  LODWORD(STACK[0xA50]) = 2134830460;
  LODWORD(STACK[0xA4C]) = 2136473581;
  LODWORD(STACK[0xA40]) = 1962934189;
  LODWORD(STACK[0xA3C]) = -1216349201;
  LODWORD(STACK[0xA38]) = 2142756215;
  LODWORD(STACK[0xA34]) = 1879045788;
  LODWORD(STACK[0xA30]) = 2112815103;
  LODWORD(STACK[0xA2C]) = 1609957310;
  LODWORD(STACK[0xA28]) = 2123033436;
  LODWORD(STACK[0xA24]) = -143147024;
  LODWORD(STACK[0xA0C]) = 1380667066;
  LODWORD(STACK[0xA08]) = 2147436474;
  LODWORD(STACK[0xA04]) = 2136426410;
  STACK[0x9F8] = 0xBB151AB25527D40BLL;
  LODWORD(STACK[0xA20]) = -268444194;
  LODWORD(STACK[0xA1C]) = 1604284798;
  LODWORD(STACK[0xA10]) = -1074272324;
  LODWORD(STACK[0x48C]) = v10;
  LODWORD(STACK[0xA7C]) = -409937;
  LODWORD(STACK[0xA70]) = -33620257;
  LODWORD(STACK[0xA6C]) = -1093079059;
  LODWORD(STACK[0xA68]) = -694530;
  LODWORD(STACK[0xA64]) = 1167183872;
  LODWORD(STACK[0xA60]) = 1593699567;
  return v11(3000745984, 2594216846, 1167183872, v10, 1695499010, a6, v9, 4294557359, 0xF4FDFFB2EFF7BBD8, 0xA200008504440310, 0xFFD7DE7673632464, 0x88005A18C6B31585, 0x5CD02AA413010AE2, 0xFFDFDD7EFF7DC5DFLL, 0x661BA4183FDBFDDFLL, 0x5E6560C520101C2, 0x7DEBFF3B7EFFD7EELL, 0xDAEBF3EAEFFDD9FCLL, 0xFD5EA85472FFFDFALL, 0x79EFECC6B6FEFBEELL, 0x1CF67594DF1F7FBELL, 0xFFFB77FC7AFF5B1FLL, 0xBFEFEEFEFFFDBBFELL, 0xC7BBEEF87FCFBFE6, 0xBFFCFDFCFFD7FBB6, 0x7828CE5DFFDCFFLL, 0x35E7793F7EF7F63DLL, 0xFBF7F787FEFE77DDLL, 0x67F9AEE077F7BF7ALL, 0xDFFFEEBFBFFFDD7ELL, 0x91018022FEBFBD66, 0xE910C98DFBDE4F08, 0x3A15506F7FFFFELL, 0x6D80007AA6B000, 0xF5DFFBFBB7F3F73ALL, 0x7FB67D7E6AFDC000, 0x67CC27EAFDFAF7F6, 0xDDEFCBFF8566FDBALL, 0x7BFE8CD75780048FLL, 0xFF373FEF3DEFFDF1, 0xFFFE7DFD6BA16000, 0x7FE7FEFBDFD7FF5FLL, 0x6FFFBBBE77F5DBECLL, 0xF5FF7BFF9BFFF6FDLL, 0xFFBFBF1B183709ECLL, 0x5DB6458D7B7F7FBFLL, 0x68BB8BD03EFFF37CLL, 0x676EBFFC320A6EA7, 0x3FDDF7FFFE7FFF45, 0xFFDFCBFFEF5FFAFFLL, 0x7F7FF55E5FFF9572, 0x7A7CA24E9C00000, 0xFEDEBF7E7BFFDB3FLL, 0xFDFB96F7B76FDACFLL, v13, 0x9E3A19007BBFFD9FLL, 0x69BDFFDCFEFDF5CFLL, 0xE7FD6FFD279CADE0, 0x4F9CFB8F173943AELL, 0xBEEEBFFE9FEEF93FLL, 0x7D77DED47BF7D7FBLL);
}

uint64_t sub_1BADEA00C()
{
  LODWORD(STACK[0xD20]) = LODWORD(STACK[0x50C]) - LODWORD(STACK[0x500]);
  LODWORD(STACK[0xD18]) = STACK[0x798] + LODWORD(STACK[0x928]) - LODWORD(STACK[0x9F4]);
  v0 = STACK[0x9DC];
  v1 = ((2 * LODWORD(STACK[0x9DC])) ^ 0x11294A34) - ((2 * ((2 * LODWORD(STACK[0x9DC])) ^ 0x11294A34)) & 0x4578D3C);
  v2 = (LODWORD(STACK[0xD38]) + 978227778) & 0xC5B16FF7;
  STACK[0xD48] = v2;
  LODWORD(STACK[0xD30]) = v1 + (v2 ^ 0x22BC5DD);
  LODWORD(STACK[0xD28]) = ((v0 << 6) ^ 0x25294680) - ((2 * ((v0 << 6) ^ 0x25294680)) & 0x5336F800);
  LODWORD(STACK[0xD00]) = LODWORD(STACK[0x704]) - (STACK[0x700] & 0x2D02E800);
  LODWORD(STACK[0xD08]) = (LODWORD(STACK[0x6A4]) ^ 0x40000000) - ((STACK[0x920] & 1) << 30);
  v3 = (v0 >> 26) ^ (v0 >> 3) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x754]) ^ LODWORD(STACK[0x758]) ^ LODWORD(STACK[0x738]) ^ LODWORD(STACK[0x73C]) ^ LODWORD(STACK[0x764]) ^ LODWORD(STACK[0x74C]) ^ LODWORD(STACK[0x750]) ^ LODWORD(STACK[0x734]) ^ LODWORD(STACK[0x730]) ^ LODWORD(STACK[0x748]) ^ LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x72C]) ^ LODWORD(STACK[0x744]) ^ LODWORD(STACK[0x740]);
  LODWORD(STACK[0xCE4]) = ((4 * v3) ^ 0xD10C2B28) + 1793962422 - ((2 * ((4 * v3) ^ 0xD10C2B28)) & 0xD5DB44C0);
  LODWORD(STACK[0xCE0]) = ((32 * v3) ^ 0x88615940) - ((2 * ((32 * v3) ^ 0x88615940)) & 0x567E5880);
  LODWORD(STACK[0xCDC]) = ((v3 << 11) ^ 0x18565000) - ((2 * ((v3 << 11) ^ 0x18565000)) & 0xC65D3000);
  v4 = (v3 >> 21) ^ (v3 >> 27);
  LODWORD(STACK[0xCD0]) = ((4 * v4) ^ 0x16D0) - 2 * (((4 * v4) ^ 0x16D0) & 0x198C ^ (4 * v4) & 4);
  LODWORD(STACK[0xCCC]) = ((32 * v4) ^ 0xB680) - ((2 * ((32 * v4) ^ 0xB680)) & 0xE6C0);
  LODWORD(STACK[0xCC0]) = ((v4 << 11) ^ 0x2DA000) + 2116988558 - ((2 * ((v4 << 11) ^ 0x2DA000)) & 0x5D5000);
  v5 = STACK[0x9AC];
  v6 = (STACK[0x9AC] & 0xFC000000 | (LODWORD(STACK[0x6D8]) >> 6) & 0x1FFFFF) ^ 0x38740;
  v7 = (LODWORD(STACK[0x6B4]) - (STACK[0x6B0] & 0xAB0270B8) - 712951714) ^ (((16 * LODWORD(STACK[0x6D8])) ^ 0xE1D00F0) - ((2 * ((16 * LODWORD(STACK[0x6D8])) ^ 0xE1D00F0)) & 0x5E358FE0) + 790284282) ^ LODWORD(STACK[0x6B8]);
  HIDWORD(v8) = v7 ^ 0xCB;
  LODWORD(v8) = v7 ^ 0x5778E800;
  v9 = ((v8 >> 11) - ((2 * (v8 >> 11)) & 0x95A46564) - 892194126) ^ (v6 + 1861496046 - 2 * (v6 & 0x6C142CEF ^ (LODWORD(STACK[0x6D8]) >> 6) & 1));
  HIDWORD(v8) = v9 ^ 0x1D288C;
  LODWORD(v8) = v9 ^ 0xE2E00000;
  LODWORD(STACK[0xCB8]) = (v8 >> 21) - ((2 * (v8 >> 21)) & 0xB2B73C9C);
  LODWORD(STACK[0xCB0]) = LODWORD(STACK[0x60C]) + ~LODWORD(STACK[0x4AC]);
  v10 = (LODWORD(STACK[0x878]) >> 27) ^ (LODWORD(STACK[0x878]) >> 28) ^ (LODWORD(STACK[0x9E0]) >> 2) ^ LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x818]) ^ LODWORD(STACK[0x9B0]) ^ LODWORD(STACK[0x858]) ^ LODWORD(STACK[0x6E4]) ^ LODWORD(STACK[0x81C]) ^ LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x814]) ^ LODWORD(STACK[0x6E8]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x84C]) ^ LODWORD(STACK[0x69C]) ^ LODWORD(STACK[0x850]);
  LODWORD(STACK[0xCAC]) = ((4 * v10) ^ 0x795BDFDC) - ((2 * ((4 * v10) ^ 0x795BDFDC)) & 0xF3C4C128);
  LODWORD(STACK[0xCA0]) = ((32 * v10) ^ 0xCADEFEE0) - ((2 * ((32 * v10) ^ 0xCADEFEE0)) & 0x21ED8B40);
  LODWORD(STACK[0xC98]) = ((v10 << 11) ^ 0xB7BFB800) - ((2 * ((v10 << 11) ^ 0xB7BFB800)) & 0x51C73000);
  v11 = (v10 >> 21) ^ (v10 >> 27);
  LODWORD(STACK[0xC90]) = ((4 * v11) ^ 0x1384) - ((2 * ((4 * v11) ^ 0x1384)) & 0x1108);
  LODWORD(STACK[0xC88]) = ((32 * v11) ^ 0x9C20) - ((2 * ((32 * v11) ^ 0x9C20)) & 0x5240);
  LODWORD(STACK[0xC80]) = ((v11 << 11) ^ 0x270800) - ((2 * ((v11 << 11) ^ 0x270800)) & 0x7C6000);
  v12 = (LODWORD(STACK[0x670]) >> 20) ^ (LODWORD(STACK[0x670]) >> 1);
  LODWORD(STACK[0xC70]) = ((LODWORD(STACK[0x670]) << 12) ^ 0x1A807000) - ((2 * ((LODWORD(STACK[0x670]) << 12) ^ 0x1A807000)) & 0x3F3AE000);
  LODWORD(STACK[0xC68]) = LODWORD(STACK[0x5C4]) - (STACK[0x5C0] & 0x9A620000);
  LODWORD(STACK[0xC78]) = LODWORD(STACK[0x5CC]) - (STACK[0x5C8] & 0x9AC00000);
  v13 = v12 ^ LODWORD(STACK[0x8AC]);
  v14 = STACK[0x9E4];
  v15 = (LODWORD(STACK[0x9E4]) >> 22) ^ 0x32A53F93;
  LODWORD(STACK[0xD10]) = v15;
  v16 = v13 ^ v15 ^ LODWORD(STACK[0x668]) ^ LODWORD(STACK[0x8A8]) ^ LODWORD(STACK[0x874]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x8B0]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x8A4]) ^ LODWORD(STACK[0x66C]) ^ LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x89C]) ^ LODWORD(STACK[0x870]);
  LODWORD(STACK[0xC60]) = ((4 * v16) ^ 0xE2B99EAC) - 2 * (((4 * v16) ^ 0xE2B99EAC) & 0x427B947C ^ (4 * v16) & 0x10);
  v17 = STACK[0x824];
  LODWORD(STACK[0xC58]) = ((LODWORD(STACK[0x824]) << 27) ^ 0xB0000000) - (((LODWORD(STACK[0x824]) << 27) ^ 0xB0000000) >> 29 << 30);
  LODWORD(v2) = ((LODWORD(STACK[0x9C0]) >> 31) | 0xD7B06B94) ^ (v16 >> 27) ^ (v16 >> 21);
  v18 = STACK[0x7A4] & 0xDC ^ 0xCC | STACK[0x7A4] & 0xDC ^ 0x10;
  v19 = (((v17 ^ 0x4D5050D6) - 280432238 - ((2 * (v17 ^ 0x4D5050D6)) & 0xDE91E324)) ^ 0xEF48F192) << (-34 - ((v18 - 109 - ((2 * v18) & 0x20)) ^ 0x93u));
  v20 = v19 - ((2 * v19) & 0x7F949AE6);
  LODWORD(v19) = LODWORD(STACK[0x800]) ^ HIBYTE(v17) ^ LODWORD(STACK[0x804]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x7A8]);
  v21 = (v17 ^ 0x4D5050D6) << ((v19 & 0xD ^ 8) + (v19 & 0xD ^ 5));
  v22 = v21 - ((2 * v21) & 0xD276EACC);
  v23 = LODWORD(STACK[0x7D4]) ^ (v17 >> 17) ^ LODWORD(STACK[0x9A8]) ^ LODWORD(STACK[0x7D0]) ^ LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x7DC]) ^ LODWORD(STACK[0x7FC]);
  v24 = (v17 >> 9) ^ 0xD5400E2A;
  LODWORD(STACK[0xCF8]) = v24;
  v25 = v23 ^ v24 ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x7F8]);
  v26 = (v17 >> 5) ^ 0xCA644CD8;
  LODWORD(STACK[0xCF0]) = v26;
  v27 = v25 ^ v26 ^ v19;
  v28 = ((v17 << 23) ^ 0x6B000000) - 1477504162 - ((2 * ((v17 << 23) ^ 0x6B000000)) & 0x4F000000);
  LODWORD(STACK[0xCE8]) = v28;
  LODWORD(v19) = ((((v27 << 11) ^ 0x2D048800) + 121763710 - ((2 * ((v27 << 11) ^ 0x2D048800)) & 0xE83E000)) ^ 0x741F77E | (v27 >> 21)) ^ 0x639;
  v29 = ((v27 >> 21 << 11) ^ 0x31C800) - (STACK[0x424] & (2 * ((v27 >> 21 << 11) ^ 0x31C800)));
  v30 = (LODWORD(STACK[0xD08]) + 848700058) ^ v0 ^ LODWORD(STACK[0x774]) ^ LODWORD(STACK[0x834]) ^ (LODWORD(STACK[0xD00]) - 1769900906) ^ (LODWORD(STACK[0xD28]) - 1449427924) ^ LODWORD(STACK[0x8D0]) ^ LODWORD(STACK[0x8C8]) ^ LODWORD(STACK[0x830]) ^ LODWORD(STACK[0x9D0]) ^ LODWORD(STACK[0x8BC]) ^ LODWORD(STACK[0x604]) ^ LODWORD(STACK[0x8C0]) ^ LODWORD(STACK[0x8B8]) ^ LODWORD(STACK[0x770]) ^ LODWORD(STACK[0x9C4]) ^ LODWORD(STACK[0x8B4]) ^ v3 ^ v4 ^ (LODWORD(STACK[0xCE4]) - 3923) ^ (LODWORD(STACK[0xCE0]) - 1421923234) ^ (LODWORD(STACK[0xCDC]) + 1663999048) ^ LODWORD(STACK[0xCC0]) ^ (LODWORD(STACK[0xCCC]) - 781618306) ^ (LODWORD(STACK[0xCD0]) - 1936729720) ^ (LODWORD(STACK[0xCB0]) - 997264728) ^ v5 ^ LODWORD(STACK[0x7CC]) ^ LODWORD(STACK[0x884]) ^ LODWORD(STACK[0x9B8]) ^ LODWORD(STACK[0x7C8]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x6C4]) ^ LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x828]) ^ LODWORD(STACK[0x82C]) ^ LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x6BC]) ^ v10 ^ v11 ^ (LODWORD(STACK[0xCB8]) + 1499176526) ^ (LODWORD(STACK[0xCAC]) + 2044878996) ^ (LODWORD(STACK[0xCA0]) + 284607914) ^ (LODWORD(STACK[0xC98]) + 686004529) ^ (LODWORD(STACK[0xC90]) + 957393031) ^ (LODWORD(STACK[0xC88]) + 440084795) ^ (LODWORD(STACK[0xC80]) - 1577175729) ^ LODWORD(STACK[0x7A0]) ^ ((v14 << 31) | 0x24DFABF9) ^ LODWORD(STACK[0x530]) ^ (LODWORD(STACK[0xC68]) + 1295064894) ^ (LODWORD(STACK[0xC70]) + 530413469) ^ LODWORD(STACK[0x868]) ^ LODWORD(STACK[0x864]) ^ LODWORD(STACK[0x7BC]) ^ LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x86C]) ^ LODWORD(STACK[0x7C4]);
  v31 = LODWORD(STACK[0xC78]) - 848388209;
  LODWORD(STACK[0xD08]) = v31;
  v32 = v30 ^ v31 ^ LODWORD(STACK[0x7B4]) ^ LODWORD(STACK[0x860]) ^ LODWORD(STACK[0x9B4]) ^ LODWORD(STACK[0x52C]) ^ v16 ^ v2 ^ (((32 * v16) ^ 0x15CCF560) - ((2 * ((32 * v16) ^ 0x15CCF560)) & 0x7ACB2100) + 1030066335) ^ (((v16 << 11) ^ 0x733D5800) - ((2 * ((v16 << 11) ^ 0x733D5800)) & 0xCC177000) + 1712045928) ^ (LODWORD(STACK[0xC60]) - 1032088465) ^ (((4 * v2) ^ 0x5EC1B138) - ((2 * ((4 * v2) ^ 0x5EC1B138)) & 0x42381168) - 1549989707) ^ (((32 * v2) ^ 0xF60D89C0) - ((2 * ((32 * v2) ^ 0xF60D89C0)) & 0x3E48140) - 704954186) ^ (((v2 << 11) ^ 0x83627000) - ((2 * ((v2 << 11) ^ 0x83627000)) & 0x487C7000) - 411157490) ^ (((v17 << 8) ^ 0x5050D600) - ((2 * ((v17 << 8) ^ 0x5050D600)) & 0x10786E00) + 138164101) ^ (((v17 << 15) ^ 0x286B0000) + 2084385011 + (~(2 * ((v17 << 15) ^ 0x286B0000)) | 0x785FFFF)) ^ LODWORD(STACK[0x7F4]) ^ LODWORD(STACK[0x594]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x7E8]) ^ LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x7C0]) ^ LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x7B8]) ^ LODWORD(STACK[0x7EC]) ^ v28 ^ LODWORD(STACK[0x584]) ^ LODWORD(STACK[0x588]);
  v33 = LODWORD(STACK[0xC58]) + 1632599144;
  LODWORD(STACK[0xD00]) = v33;
  LODWORD(STACK[0xD28]) = v32 ^ LODWORD(STACK[0x80C]) ^ v33 ^ (v22 - 381979290) ^ v27 ^ (((32 * v27) ^ 0xE4B41220) - ((2 * ((32 * v27) ^ 0xE4B41220)) & 0xF8C3FE00) + 2086797058) ^ (((4 * v27) ^ 0x1C968244) + 1075285223 - 2 * (((4 * v27) ^ 0x1C968244) & 0x40178CEC ^ (4 * v27) & 8)) ^ (((4 * (v27 >> 21)) ^ 0x18E4) - ((2 * ((4 * (v27 >> 21)) ^ 0x18E4)) & 0x380) - 1675345472) ^ (((32 * (v27 >> 21)) ^ 0xC720) - ((2 * ((32 * (v27 >> 21)) ^ 0xC720)) & 0x12140) - 2076274528) ^ (v29 + 2022087719) ^ (v19 - 2003702551 - ((2 * v19) & 0x1123D9D2)) ^ (v20 + 1070222707);
  LODWORD(STACK[0xC90]) = -1673081951 * LODWORD(STACK[0x4B0]) - ((948803394 * LODWORD(STACK[0x4B0]) + 968328188) & 0xA0F0BD4C);
  v34 = -1673081951 * LODWORD(STACK[0x4B8]) - 1676505839 - ((948803394 * LODWORD(STACK[0x4B8])) & 0x38251A22);
  LODWORD(v2) = (v34 & 0x63243E02 ^ 0xC00) + (v34 & 0x63243E02 ^ 0x63243202);
  LODWORD(v2) = (v2 ^ 0xC8710001) - 1673081951 * LODWORD(STACK[0x4BC]) - ((2 * v2) & 0x4E18FC0C) + 453899862;
  LODWORD(STACK[0xC68]) = v2 - ((2 * v2 + 956437330) & 0x5D0D4AB0);
  LODWORD(v2) = LODWORD(STACK[0x9F0]) - 1878972391 + ((-1673081951 * LODWORD(STACK[0x4B4]) - 2 * ((-1673081951 * LODWORD(STACK[0x4B4]) + 484164094) & 0x25467DF9 ^ (-1673081951 * LODWORD(STACK[0x4B4])) & 1) + 1109540854) ^ LODWORD(STACK[0x508]) ^ 0xBAF12B09);
  LODWORD(STACK[0xC88]) = v2 - ((2 * v2) & 0xCD031CA4);
  LODWORD(STACK[0xCA0]) = -1673081951 * LODWORD(STACK[0x4C0]) - ((948803394 * LODWORD(STACK[0x4C0]) + 968328188) & 0x6463020A);
  LODWORD(STACK[0xC98]) = -1673081951 * LODWORD(STACK[0x4C4]) - ((948803394 * LODWORD(STACK[0x4C4]) + 968328188) & 0xDBB29B68);
  LODWORD(STACK[0xC80]) = -1673081951 * LODWORD(STACK[0x4C8]) + 1867580949 + ((397825378 - 2 * (-1673081951 * LODWORD(STACK[0x4C8]) + 683076784)) | 0x5B1577D3);
  LODWORD(v2) = -1673081951 * LODWORD(STACK[0x4CC]) - ((948803394 * LODWORD(STACK[0x4CC]) + 968328188) & 0x3CD8EF58) - 1152894550;
  LODWORD(STACK[0xC78]) = v2;
  LODWORD(v2) = (v2 & 0x9CDBC1FE ^ 0x80938052) + (v2 & 0x9CDBC1FE ^ 0x1C4841AC);
  LODWORD(v2) = (v2 ^ 0x7EFDFFFB) - 1673081951 * LODWORD(STACK[0x4D0]) + ((2 * v2) & 0x79FB87F4) + 618393040;
  LODWORD(STACK[0xC70]) = v2 - ((2 * v2 + 944514154) & 0x5443C91E);
  LODWORD(v2) = -1673081951 * LODWORD(STACK[0x4D4]) - 681590577 - ((948803394 * LODWORD(STACK[0x4D4])) & 0xAEBF819E);
  v35 = (STACK[0x4F4] & 0x9CDBC1FE ^ 0x109A80BC) + (STACK[0x4F4] & 0x9CDBC1FE ^ 0x8C414142);
  v36 = v35 + 1651263549 - ((2 * v35) & 0x40D88078);
  LODWORD(v19) = (2 * (((v36 ^ 0x626C483D) & (v2 ^ 0xD75FC0CF)) + 1223639986 + (~(2 * ((v36 ^ 0x626C483D) & (v2 ^ 0xD75FC0CF))) | 0x6E215F87)) + 6422) ^ 0x91DEA078;
  LODWORD(v2) = ((v19 - 721330958 - ((2 * v19) & 0xAA02B9E4)) ^ 0xD5015CF2) + (v2 ^ v36 ^ 0xB53388F2);
  LODWORD(STACK[0xC58]) = v2 - ((2 * v2) & 0x9D94A1A4);
  LODWORD(STACK[0xC60]) = -1673081951 * LODWORD(STACK[0x4D8]) - ((948803394 * LODWORD(STACK[0x4D8]) + 968328188) & 0xE420C944);
  LODWORD(STACK[0xC50]) = -1673081951 * LODWORD(STACK[0x4DC]) - ((948803394 * LODWORD(STACK[0x4DC]) + 968328188) & 0x6C4C3E92);
  LODWORD(STACK[0xC48]) = (v34 ^ 0x9C128D11) - 98654819 + ((-968328190 - 2 * (v34 ^ 0x9C128D11)) | 0x457A38C3);
  LODWORD(STACK[0xC40]) = -1673081951 * LODWORD(STACK[0x4E0]) - ((948803394 * LODWORD(STACK[0x4E0]) + 968328188) & 0x5D3F836C);
  LODWORD(STACK[0xC30]) = -1673081951 * LODWORD(STACK[0x4E4]) - ((948803394 * LODWORD(STACK[0x4E4]) + 968328188) & 0x247EC8A6);
  LODWORD(STACK[0xC28]) = -1673081951 * LODWORD(STACK[0x4E8]) - ((948803394 * LODWORD(STACK[0x4E8]) + 968328188) & 0x9B6399F0);
  LODWORD(STACK[0xC38]) = -1673081951 * LODWORD(STACK[0x4EC]) - ((948803394 * LODWORD(STACK[0x4EC]) + 968328188) & 0x4D8E6E06);
  LODWORD(STACK[0xC20]) = -1673081951 * LODWORD(STACK[0x4F0]) - ((948803394 * LODWORD(STACK[0x4F0]) + 968328188) & 0x46995CB0);
  v37 = STACK[0x5EC];
  v38 = STACK[0x51C];
  v39 = STACK[0x524];
  v40 = STACK[0x568];
  v41 = STACK[0x570];
  v42 = STACK[0x520];
  v43 = STACK[0x57C];
  v44 = STACK[0x518];
  LODWORD(v19) = STACK[0x580];
  v45 = STACK[0x514];
  v46 = STACK[0x564];
  v47 = STACK[0x560];
  v48 = LODWORD(STACK[0x55C]) ^ ((LODWORD(STACK[0x5EC]) >> 31) | 0x34FE268A) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x54C]) ^ LODWORD(STACK[0x518]) ^ ((LODWORD(STACK[0x57C]) >> 26) | 0xE60D9D00) ^ (LODWORD(STACK[0x580]) >> 3) ^ LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x564]) ^ LODWORD(STACK[0x560]);
  v49 = (v48 >> 21) ^ (v48 >> 27);
  LODWORD(STACK[0xCE4]) = ((32 * v49) ^ 0x2720) - 1698490762 + (~(2 * ((32 * v49) ^ 0x2720)) | 0xFFFFD33F);
  v50 = (v43 >> 20) ^ (v43 >> 13) ^ v40 ^ v38 ^ LODWORD(STACK[0x574]) ^ v39 ^ v41 ^ v42 ^ v44 ^ LODWORD(STACK[0x578]) ^ (v19 >> 1) ^ LODWORD(STACK[0x56C]) ^ v45 ^ v46 ^ v47;
  v51 = ((v37 >> 31) | 0x9DB9419E) ^ (v50 >> 27) ^ (v50 >> 21);
  LODWORD(STACK[0xCE0]) = ((v51 << 11) ^ 0xCA1D9800) - (STACK[0x420] & (2 * ((v51 << 11) ^ 0xCA1D9800)));
  v52 = LODWORD(STACK[0x6CC]) >> ((8 - LODWORD(STACK[0x630])) & 0x10);
  v53 = ((v52 + 298280259 - ((2 * v52) & 0x238ECA86)) ^ 0x11C76543u) >> (STACK[0x638] & 0x10 | 5);
  v54 = (LODWORD(STACK[0x6F0]) >> 28) ^ (LODWORD(STACK[0x6F0]) >> 27) ^ (LODWORD(STACK[0x6F0]) >> 2) ^ LODWORD(STACK[0x624]) ^ LODWORD(STACK[0x844]) ^ LODWORD(STACK[0x840]) ^ LODWORD(STACK[0x854]) ^ LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x5F8]) ^ LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x6D4]) ^ LODWORD(STACK[0x838]) ^ LODWORD(STACK[0x6C8]) ^ LODWORD(STACK[0x61C]) ^ LODWORD(STACK[0x848]);
  LODWORD(v19) = v54 ^ (v53 - ((2 * v53) & 0x3640) - 25824);
  v55 = ((v19 << 11) ^ 0x7ACB4800) - ((2 * ((v19 << 11) ^ 0x7ACB4800)) & 0xA8041000);
  LODWORD(v2) = ((32 * v19) ^ 0xE1EB2D20) - 402500202 + (~(2 * ((32 * v19) ^ 0xE1EB2D20)) | 0x2FFB54FF);
  v56 = (((v19 << 12) ^ 0xF5969000) + 330461842 - ((2 * ((v19 << 12) ^ 0xF5969000)) & 0x2764E000)) ^ 0x13B27292 | (v54 >> 20) & 0x3FF;
  v57 = (v56 ^ 0x2F0) + 284924368 - 2 * ((v56 ^ 0x2F0) & 0x10FB99DF ^ (((((v19 << 12) ^ 0xF5969000) + 330461842 - ((2 * ((v19 << 12) ^ 0xF5969000)) & 0x2764E000)) ^ 0x13B27292) & 0xF | (v54 >> 20) & 0xF));
  v58 = ((2 * LODWORD(STACK[0x9E8])) ^ 0x2973F150) + 1626504778 - ((2 * ((2 * LODWORD(STACK[0x9E8])) ^ 0x2973F150)) & 0xC1E4FC94);
  v59 = STACK[0x6A8] >> (((v58 & 0x7A ^ 0x4A) - (((v58 & 0x7A ^ 0xCF) + 62 - ((2 * (v58 & 0x7A ^ 0xCF)) & 0x7C)) ^ 0x3E) - ((2 * ((v58 & 0x7A ^ 0x4A) - (((v58 & 0x7A ^ 0xCF) + 62 - ((2 * (v58 & 0x7A ^ 0xCF)) & 0x7C)) ^ 0x3E))) & 0xDD) - 18) & 0x84 ^ 0x9A);
  v60 = STACK[0x720] >> ((STACK[0x9C0] & 0xF ^ 1) + (STACK[0x9C0] & 0xF ^ 0xE));
  v61 = (v59 - ((2 * v59) & 0xFC9E4020) + 2119114768) ^ (LODWORD(STACK[0x9EC]) >> 26) ^ (v60 - ((2 * v60) & 0x2167A076) - 1867263941);
  LODWORD(v59) = (LODWORD(STACK[0x4F8]) | 0x5C39689E) ^ LODWORD(STACK[0x718]) ^ LODWORD(STACK[0x8F0]) ^ LODWORD(STACK[0x8FC]) ^ LODWORD(STACK[0x9CC]) ^ LODWORD(STACK[0x8D8]) ^ v61;
  LODWORD(v59) = (v59 & 0x22ADA89 ^ STACK[0x77C] & 0xDA89 | v59 & 0xFDD52576 ^ STACK[0x77C] & 0x2576) ^ 0x3A5A198A;
  LODWORD(v59) = LODWORD(STACK[0x900]) ^ (LODWORD(STACK[0x9E8]) >> 3) ^ LODWORD(STACK[0x898]) ^ LODWORD(STACK[0x71C]) ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x9C8]) ^ LODWORD(STACK[0x8E0]) ^ (v59 - ((2 * v59) & 0xEEAD7178) - 145311556);
  v62 = (v59 ^ 0x7A5E233B) << (STACK[0x83C] & 5 ^ 1 | STACK[0x83C] & 5 ^ 4);
  v63 = ((v61 >> 30) | 0xFAA87DC0) ^ (v59 >> 27) ^ (v59 >> 21);
  v64 = (LODWORD(STACK[0xD20]) + 1987489259) ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x7E0]) ^ v58 ^ (((LODWORD(STACK[0x9E8]) << 6) ^ 0x2E7E2A00) - ((2 * ((LODWORD(STACK[0x9E8]) << 6) ^ 0x2E7E2A00)) & 0x5EC08200) + 794837270) ^ LODWORD(STACK[0x708]) ^ LODWORD(STACK[0x894]) ^ LODWORD(STACK[0x714]) ^ LODWORD(STACK[0x880]) ^ LODWORD(STACK[0x7E4]) ^ LODWORD(STACK[0x88C]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x888]) ^ LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x70C]) ^ LODWORD(STACK[0x87C]) ^ LODWORD(STACK[0x9BC]) ^ LODWORD(STACK[0x908]) ^ ((LODWORD(STACK[0x808]) << 30) - 1133123729) ^ LODWORD(STACK[0x7AC]) ^ (((32 * LODWORD(STACK[0x6F0])) ^ 0x250EB2E0) + 1395480119 + (~(2 * ((32 * LODWORD(STACK[0x6F0])) ^ 0x250EB2E0)) | 0x59A553BF)) ^ (((16 * LODWORD(STACK[0x6F0])) ^ 0x12875970) - ((2 * ((16 * LODWORD(STACK[0x6F0])) ^ 0x12875970)) & 0x6B3290E0) + 899238010) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x674]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x7D8]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x9A4]) ^ LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x698]) ^ v59 ^ v63 ^ (((4 * v59) ^ 0xE9788CEC) - ((2 * ((4 * v59) ^ 0xE9788CEC)) & 0x962BB278) + 1259723070) ^ (v62 - ((2 * v62) & 0xBECD1622) - 546927855) ^ (((v59 << 11) ^ 0xF119D800) - ((2 * ((v59 << 11) ^ 0xF119D800)) & 0xCBAC4000) + 1708533500);
  LODWORD(v19) = v64 ^ (((4 * v63) ^ 0xEAA1F878) - (STACK[0x41C] & (2 * ((4 * v63) ^ 0xEAA1F878))) - 1669213684) ^ (((32 * v63) ^ 0x550FC3C0) - ((2 * ((32 * v63) ^ 0x550FC3C0)) & 0x45217840) + 580041774) ^ (((v63 << 11) ^ 0x43F0F000) - ((2 * ((v63 << 11) ^ 0x43F0F000)) & 0x58746000) - 1363527809) ^ v19;
  HIDWORD(v8) = v19 ^ 0x1F1605;
  LODWORD(v8) = v19 ^ 0x7A400000;
  LODWORD(v19) = ((v8 >> 22) - ((2 * (v8 >> 22)) & 0x71751AFA) - 1195733635) ^ v57;
  HIDWORD(v8) = v19 ^ 0x38E;
  LODWORD(v8) = v19 ^ 0xFBA6E000;
  v65 = (v54 >> 27) ^ (v54 >> 21);
  v66 = STACK[0x9A0];
  v67 = STACK[0x4FC];
  v68 = STACK[0x5E8];
  v69 = STACK[0x5A4];
  v70 = STACK[0x5E4];
  v71 = STACK[0x5E0];
  v72 = STACK[0x5B0];
  v73 = STACK[0x5AC];
  v74 = STACK[0x5A0];
  v75 = (v55 - 738062685) ^ v65 ^ v2 ^ (((32 * v65) ^ 0xECA0) - ((2 * ((32 * v65) ^ 0xECA0)) & 0x1A8C0) + 817222778) ^ (((v65 << 11) ^ 0x3B2800) - ((2 * ((v65 << 11) ^ 0x3B2800)) & 0x7A4000) + 1694311959) ^ (((4 * v65) ^ 0x1D94) - 2 * (((4 * v65) ^ 0x1D94) & 0xFFFFFE3F ^ (4 * v65) & 8) - 1379189193) ^ ((v8 >> 10) - ((2 * (v8 >> 10)) & 0x9C974E18) + 1313580812) ^ LODWORD(STACK[0x4FC]) ^ ((~LODWORD(STACK[0x9A0]) << 31) | 0x4F163E38) ^ LODWORD(STACK[0x5E8]) ^ (((LODWORD(STACK[0x9A0]) << 19) ^ 0xC7180000) - ((2 * ((LODWORD(STACK[0x9A0]) << 19) ^ 0xC7180000)) & 0x7A400000) - 1121498407) ^ (((LODWORD(STACK[0x9A0]) << 12) ^ 0xDD8E3000) - ((2 * ((LODWORD(STACK[0x9A0]) << 12) ^ 0xDD8E3000)) & 0xF55B4000) - 89282624) ^ LODWORD(STACK[0x5BC]) ^ LODWORD(STACK[0x5A4]) ^ LODWORD(STACK[0x5E4]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x5AC]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x5B4]);
  LODWORD(v2) = v50 ^ v51 ^ (((4 * v50) ^ 0x12F02214) - ((2 * ((4 * v50) ^ 0x12F02214)) & 0xBBD805D8) + 1575748334) ^ (((32 * v50) ^ 0x978110A0) + 501486401 - ((2 * ((32 * v50) ^ 0x978110A0)) & 0x3BC82680)) ^ (((v50 << 11) ^ 0xE0442800) + 1745631810 - ((2 * ((v50 << 11) ^ 0xE0442800)) & 0xD0187000) + 724) ^ (((4 * v51) ^ 0x76E50ECC) - ((2 * ((4 * v51) ^ 0x76E50ECC)) & 0x1205A6F8) + 189191038) ^ (((32 * v51) ^ 0xB7287660) - ((2 * ((32 * v51) ^ 0xB7287660)) & 0x102A8040) + 1866285115) ^ (LODWORD(STACK[0xCE0]) - 2109694640);
  v76 = STACK[0x59C];
  v77 = STACK[0x5D8];
  LODWORD(STACK[0xD20]) = v75 ^ LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0x5D8]) ^ v2;
  v78 = v68 ^ v67 ^ (((2 * v66) ^ 0xE1BB1C6) - ((2 * ((2 * v66) ^ 0xE1BB1C6)) & 0xF40D1DE0) + 2047250161) ^ (((v66 << 6) ^ 0xC37638C0) - ((2 * ((v66 << 6) ^ 0xC37638C0)) & 0x15C81900) - 1964766021) ^ (((v66 << 29) ^ 0x60000000) + (((v66 << 29) ^ 0x60000000u) >> 30 << 31) - 873835162) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5DC]) ^ v72 ^ v73 ^ v71 ^ v70 ^ v74 ^ LODWORD(STACK[0x5D0]) ^ v69 ^ LODWORD(STACK[0x5D4]) ^ LODWORD(STACK[0x598]) ^ v76 ^ v77 ^ v48 ^ v49 ^ (((32 * v48) ^ 0xF41B3EC0) - ((2 * ((32 * v48) ^ 0xF41B3EC0)) & 0x49C56C80) - 1528646056) ^ (((v48 << 11) ^ 0x6CFB000) - ((2 * ((v48 << 11) ^ 0x6CFB000)) & 0xCAEDF000) - 445186309) ^ (((4 * v48) ^ 0x9E8367D8) + 1138325201 - 2 * (((4 * v48) ^ 0x9E8367D8) & 0x43D976D4 ^ (4 * v48) & 4)) ^ LODWORD(STACK[0xCE4]) ^ (((v49 << 11) ^ 0x9C800) - ((2 * ((v49 << 11) ^ 0x9C800)) & 0x540000) - 2052456086) ^ (((4 * v49) ^ 0x4E4) - 1299443884 - 2 * (((4 * v49) ^ 0x4E4) & 0x1B94 ^ (4 * v49) & 0x10) + 3122);
  LODWORD(STACK[0xCAC]) = v78;
  LODWORD(v2) = (v17 >> 28) ^ (v17 >> 27) ^ (v17 >> 2) ^ LODWORD(STACK[0x800]) ^ LODWORD(STACK[0x804]) ^ LODWORD(STACK[0x7D4]) ^ LODWORD(STACK[0x9A8]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x65C]) ^ LODWORD(STACK[0x7D0]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x7DC]) ^ LODWORD(STACK[0x7FC]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0x7F8]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0x650]);
  v79 = (v2 >> 21) ^ (v2 >> 27);
  v80 = ((v79 << 11) ^ 0x302800) - 1989258885 - ((2 * ((v79 << 11) ^ 0x302800)) & 0x5CA000);
  LODWORD(v19) = (((16 * v17) ^ 0xD5050D60) - ((2 * ((16 * v17) ^ 0xD5050D60)) & 0xF4CD9E60) + 2053558073) ^ (((32 * v17) ^ 0xAA0A1AC0) - ((2 * ((32 * v17) ^ 0xAA0A1AC0)) & 0x624A8EC0) + 824526719) ^ LODWORD(STACK[0x7F4]) ^ LODWORD(STACK[0x7E8]) ^ LODWORD(STACK[0x644]) ^ LODWORD(STACK[0x664]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x7C0]) ^ LODWORD(STACK[0x7B8]) ^ LODWORD(STACK[0x5F4]) ^ LODWORD(STACK[0x7EC]) ^ LODWORD(STACK[0x820]);
  v81 = LODWORD(STACK[0xCE8]) ^ 0xA7EF135E;
  v82 = (v19 ^ 0x4CB43DBA) + v81;
  LODWORD(v19) = (2 * (((v19 ^ 0x4C800000) & v81) - ((2 * ((v19 ^ 0x4C800000) & v81)) & 0x6A05B222)) - 368725470) ^ 0xEA05B222;
  LODWORD(v19) = (v82 ^ 0xDF7FFBAF) + 545260626 + ((2 * v82) & 0xBEFFF75E) + ((v19 - ((2 * v19) & 0x1B2C77AC) + 227949527) ^ 0xF269C428);
  v83 = LODWORD(STACK[0x504]) + (v17 << 30);
  v84 = ((v14 << 6) ^ 0xEE11C300) - ((2 * ((v14 << 6) ^ 0xEE11C300)) & 0x4A88B000);
  v85 = ((2 * v14) ^ 0x7F708E18) - ((2 * ((2 * v14) ^ 0x7F708E18)) & 0x2692CA40);
  v86 = ((v14 << 13) ^ 0x8E18000) - ((2 * ((v14 << 13) ^ 0x8E18000)) & 0xA8C14000);
  v87 = ((v14 << 28) ^ 0xC0000000) - ((v14 << 29) & 0x20000000);
  v88 = (v14 << 29) - (STACK[0x618] & 0x40000000);
  v89 = (((v14 ^ 0x3FB8470C) - 0xD7AE7F0FF3C74EBLL - ((2 * (v14 ^ 0x3FB8470C)) & 0x187162A)) ^ 0xF285180F00C38B15) >> (((LODWORD(STACK[0x778]) >> 21) & 0x1F ^ 0x1F) + ((LODWORD(STACK[0x778]) >> 21) & 0x1F));
  v90 = (v14 >> 3) ^ (v14 >> 26) ^ LODWORD(STACK[0x8AC]) ^ LODWORD(STACK[0x8A8]) ^ LODWORD(STACK[0x874]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0x8B0]) ^ LODWORD(STACK[0x6FC]) ^ LODWORD(STACK[0x8A4]) ^ LODWORD(STACK[0x76C]) ^ LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x89C]) ^ LODWORD(STACK[0x870]) ^ LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x6F4]);
  LODWORD(v89) = v90 ^ (v89 - ((2 * v89) & 0xEA) + 117);
  v91 = (v90 >> 21) ^ (v90 >> 27);
  v92 = (v88 + 765868075) ^ LODWORD(STACK[0x7A0]) ^ (v87 + 433357163) ^ (v84 - 1522247634) ^ (v85 - 1823906527) ^ (v86 + 1415626506) ^ LODWORD(STACK[0x868]) ^ LODWORD(STACK[0x6E0]) ^ LODWORD(STACK[0x6DC]) ^ LODWORD(STACK[0x864]) ^ LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x86C]) ^ LODWORD(STACK[0x64C]) ^ LODWORD(STACK[0x85C]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x6EC]) ^ LODWORD(STACK[0x860]) ^ LODWORD(STACK[0x9B4]) ^ v89 ^ v91 ^ (((32 * v89) ^ 0x591F1820) - ((2 * ((32 * v89) ^ 0x591F1820)) & 0xEAE7E9C0) - 176950045) ^ (((v89 << 11) ^ 0x47C60800) - ((2 * ((v89 << 11) ^ 0x47C60800)) & 0x1766A000) + 196301388) ^ (((4 * v89) ^ 0xCB23E304) - 1430617448 + ~(2 * (((4 * v89) ^ 0xCB23E304) & 0x2ABA829C ^ (4 * v89) & 8))) ^ (((32 * v91) ^ 0x7300) - ((2 * ((32 * v91) ^ 0x7300)) & 0x5B80) + 48180701) ^ (((v91 << 11) ^ 0x1CC000) - 96574213 + ~((2 * ((v91 << 11) ^ 0x1CC000)) & 0x7CC000)) ^ (((4 * v91) ^ 0xE60) - 2 * (((4 * v91) ^ 0xE60) & 0xDDDDDDDD ^ (4 * v91) & 0x10) + 405028302) ^ (v83 + 1208829888) ^ LODWORD(STACK[0x80C]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0x810]);
  LODWORD(v2) = v92 ^ v2 ^ v79 ^ (((4 * v2) ^ 0xEBC8C6C) - ((2 * ((4 * v2) ^ 0xEBC8C6C)) & 0xD13266E8) - 392613001) ^ (((32 * v2) ^ 0x75E46360) - ((2 * ((32 * v2) ^ 0x75E46360)) & 0xF13BEC00) + 2023618049) ^ (((v2 << 11) ^ 0x7918D800) - ((2 * ((v2 << 11) ^ 0x7918D800)) & 0x26B6A000) - 1822732176) ^ (((4 * v79) ^ 0x1814) - ((2 * ((4 * v79) ^ 0x1814)) & 0x360) + 670982578) ^ (((32 * v79) ^ 0xC0A0) - (STACK[0x418] & (2 * ((32 * v79) ^ 0xC0A0))) + 238399580) ^ (v19 - ((2 * v19) & 0xCE12588A) - 418829243);
  v93 = (v2 ^ ((v80 ^ 0x896E517B) - (v80 ^ 0xB056BCDC ^ v2) - ((2 * ((v80 ^ 0x896E517B) - (v80 ^ 0xB056BCDC ^ v2))) & 0xBC19CB8) - 2048864676) ^ ((v2 ^ 0xC6C71258) - ((2 * (v2 ^ 0xC6C71258) + 2) & 0x67FE13E2) - 1275131406) ^ 0xF272A0A) + (v80 ^ 0x896E517B);
  LODWORD(STACK[0xBE8]) = LODWORD(STACK[0x950]) - ((2 * LODWORD(STACK[0x950]) - 1093782598) & 0xF3BD70AC);
  LODWORD(STACK[0xBB0]) = LODWORD(STACK[0x964]) - ((2 * LODWORD(STACK[0x964]) + 918693512) & 0xA3AB4022);
  LODWORD(STACK[0xBB8]) = LODWORD(STACK[0x958]) - ((2 * LODWORD(STACK[0x958]) + 803616908) & 0x48351B5C);
  LODWORD(v2) = (LOBYTE(STACK[0x1628]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1628]) ^ 0x15)) & 0x5A);
  LODWORD(STACK[0xBD0]) = LODWORD(STACK[0x948]) - ((2 * LODWORD(STACK[0x948]) + 1702294092) & 0x9E2E25BA);
  LODWORD(STACK[0xB90]) = LODWORD(STACK[0x944]) - ((2 * LODWORD(STACK[0x944]) + 1954541276) & 0x5C1B8EAE);
  v94 = (LOBYTE(STACK[0x1519]) ^ 0x15) + 6518044 - 2 * ((LOBYTE(STACK[0x1519]) ^ 0x15) & 0x3F);
  LODWORD(STACK[0xC08]) = LODWORD(STACK[0x934]) - 2 * ((LODWORD(STACK[0x934]) + 300823392) & 0x18E5EFB6 ^ STACK[0x934] & 0x10);
  LODWORD(STACK[0xB80]) = LODWORD(STACK[0x968]) - ((2 * LODWORD(STACK[0x968]) - 658488992) & 0x9138C432);
  LODWORD(v2) = ((((v2 << 16) + 1932328960) ^ 0x732D0000) + 1898417538 - ((2 * (((v2 << 16) + 1932328960) ^ 0x732D0000)) & 0x624E0000)) ^ 0x71278D82 | ((((v94 << 8) + 205568) ^ 0x63783F00) + 758891770 - ((2 * (((v94 << 8) + 205568) ^ 0x63783F00)) & 0x5A778800)) ^ 0x2D3BC4FA;
  LODWORD(v2) = (v2 - 1055856193 - ((2 * v2) & 0x221D37E)) ^ 0xC110E9BF | ((LOBYTE(STACK[0x140A]) ^ 0x15) + 1829444036 - ((2 * (LOBYTE(STACK[0x140A]) ^ 0x15)) & 0x188)) ^ 0x6D0B19C4;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0xFAB6F0)) << 8) + 2103146496) ^ 0x7D5B7800;
  v95 = (LOBYTE(STACK[0x1604]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1604]) ^ 0x15)) & 0xEEEEEEEE);
  LODWORD(v2) = (v2 - 1376307702 - ((2 * v2) & 0x5BEE6C00)) ^ 0xADF7360A | ((LOBYTE(STACK[0x16BD]) ^ 0x15) - 117837241 - ((2 * (LOBYTE(STACK[0x16BD]) ^ 0x15)) & 0x8E)) ^ 0xF8F9F247;
  LODWORD(STACK[0xC18]) = v2 + 1650660355 - ((2 * v2) & 0xC4C6417E);
  LODWORD(STACK[0xC10]) = LODWORD(STACK[0xD18]) - ((2 * LODWORD(STACK[0xD18]) + 286003782) & 0x5AF4F34A);
  LODWORD(v2) = (LOBYTE(STACK[0x14F5]) ^ 0x15) + 6845852 - ((2 * (LOBYTE(STACK[0x14F5]) ^ 0x15)) & 0x120);
  LODWORD(STACK[0xBF0]) = LODWORD(STACK[0x938]) - ((2 * LODWORD(STACK[0x938]) - 1783043638) & 0xEC9C24A2);
  LODWORD(v2) = ((((v2 << 8) - 3072) ^ 0x68759000) + 796380025 - ((2 * (((v2 << 8) - 3072) ^ 0x68759000)) & 0x5EEF9600)) ^ 0x2F77CB79 | ((((v95 << 16) + 58130432) ^ 0x3770000) - 262913568 - ((2 * (((v95 << 16) + 58130432) ^ 0x3770000)) & 0x60A80000)) ^ 0xF05441E0;
  v96 = LOBYTE(STACK[0x15AE]);
  LODWORD(v2) = (v2 + 400489483 - ((2 * v2) & 0x2FBDF816)) ^ 0x17DEFC0B | ((LOBYTE(STACK[0x13E6]) ^ 0x15) - 2099430241 - ((2 * (LOBYTE(STACK[0x13E6]) ^ 0x15)) & 0xFFFFFF3F)) ^ 0x82DD3C9F;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0x6D1AC0)) << 8) - 1232248832) ^ 0xB68D6000;
  LODWORD(v19) = v2 - 923941091 - ((2 * v2) & 0x91DB8E00);
  LODWORD(v2) = (LOBYTE(STACK[0x1699]) ^ 0x15) - 1939183490 - ((2 * (LOBYTE(STACK[0x1699]) ^ 0x15)) & 0xFC);
  LODWORD(STACK[0xC00]) = (v19 ^ 0xC8EDC71D | v2 ^ 0x8C6A687E) - ((2 * (v19 ^ 0xC8EDC71D | v2 ^ 0x8C6A687E)) & 0x6F88DC66);
  v97 = (v96 ^ 0x15) - ((2 * (v96 ^ 0x15)) & 0x62) - 0xE39C5059EF2E5CFLL;
  LODWORD(v97) = (((v97 << 27) ^ 0x8000000) - ((v97 << 28) & 0x60000000) + 875652167) ^ 0x30102447 | (v97 >> 5) ^ 0xD4272A78;
  v98 = ((((LOBYTE(STACK[0x149F]) ^ 0x25) - ((2 * (LOBYTE(STACK[0x149F]) ^ 0x25)) & 0xFFFFFFFFFFFFFF7FLL)) << 19) - 0x2000D23FBA080000) ^ 0xDFFF2DC045F80000;
  v99 = (v97 - ((2 * v97) & 0x3A1DD4A6) + 487516755) & 0xF80742AF ^ 0x18064203 | (v98 - 0x5855B720529498ALL - ((2 * v98) & 0x74F5491BF5A00000)) ^ 0xFA7AA48DFAD6B676;
  v100 = v99 - ((2 * v99) & 0x459377C45B90602) + 0x422C9BBE22DC8301;
  LOWORD(v98) = ((v100 << 13) ^ 0x6000) - ((2 * ((v100 << 13) ^ 0x6000)) & 0x8000) + 23302;
  LODWORD(v100) = (((v98 & 0xE000 ^ 0x4000 | (v100 >> 19) ^ 0x9377CFD4) << 8) - 327064064 - (((v98 & 0xE000 ^ 0x4000 | (v100 >> 19) ^ 0x9377CFD4) & 0x6C8176 ^ ((v100 >> 19) ^ 0x9377CFD4) & 0x10) << 9)) ^ 0xEC816600;
  LODWORD(v100) = (v100 + 1602461600 - ((2 * v100) & 0xBF073E00)) ^ 0x5F839FA0 | ((LOBYTE(STACK[0x1390]) ^ 0x15) - 896407104 - ((2 * LOBYTE(STACK[0x1390])) & 0x180)) ^ 0xCA91E9C0;
  LODWORD(v100) = (((v100 - ((2 * v100) & 0xFEA1B8)) << 8) + 2136005632) ^ 0x7F50DC00;
  LODWORD(v98) = v100 + 140605970 - ((2 * v100) & 0x10C2F400);
  v101 = (LOBYTE(STACK[0x158A]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x158A]) ^ 0x15)) & 0x172);
  LODWORD(v100) = (LOBYTE(STACK[0x14BA]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x14BA]) ^ 0x15)) & 0x1A);
  LODWORD(v98) = v98 ^ 0x8617A12 | ((LOBYTE(STACK[0x1643]) ^ 0x15) - 1631960036 - ((2 * (LOBYTE(STACK[0x1643]) ^ 0x15)) & 0x38)) ^ 0x9EBA441C;
  LODWORD(STACK[0xBF8]) = v98 - ((2 * v98) & 0xE213A7A8);
  LODWORD(v98) = ((((LOBYTE(STACK[0x147B]) ^ 0x15) + 14536886 - 2 * ((LOBYTE(STACK[0x147B]) ^ 0x15) & 0x1F)) << 8) + 223488) ^ 0xDDD41F00;
  LODWORD(v98) = (v98 - 289852417 - ((2 * v98) & 0x5D726600)) ^ 0xEEB933FF | ((((v101 << 16) - 977731584) ^ 0xC5B90000) - 1771418226 - ((2 * (((v101 << 16) - 977731584) ^ 0xC5B90000)) & 0x2CD40000)) ^ 0x966A4D8E;
  LODWORD(v98) = (v98 - 1793759334 - ((2 * v98) & 0x2A2ACF34)) ^ 0x9515679A | ((LOBYTE(STACK[0x136C]) ^ 0x15) + 1568475527 + (~(2 * (LOBYTE(STACK[0x136C]) ^ 0x15)) | 0xFFFFFEF1) + 1) ^ 0x5D7D0987;
  v102 = (LOBYTE(STACK[0x1534]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1534]) ^ 0x15)) & 0xFFFFFFCF);
  LODWORD(v98) = (((v98 - ((2 * v98) & 0x36B4E6)) << 8) + 458912512) ^ 0x1B5A7300;
  v103 = ((((LOBYTE(STACK[0x1425]) ^ 0x15) + 6077083 - ((2 * (LOBYTE(STACK[0x1425]) ^ 0x15)) & 0x118)) << 8) - 3840) ^ 0x5CBA8C00;
  v104 = (v103 - 2052966637 - ((2 * v103) & 0xB446E00)) ^ 0x85A23713 | ((((v102 << 16) + 199688192) ^ 0xBE70000) - 1281630269 - ((2 * (((v102 << 16) + 199688192) ^ 0xBE70000)) & 0x67360000)) ^ 0xB39BDFC3;
  LODWORD(v98) = (v98 - 565850651 - ((2 * v98) & 0xBC8B9A00)) ^ 0xDE45CDE5 | ((LOBYTE(STACK[0x161F]) ^ 0x15) - 906928302 - ((2 * (LOBYTE(STACK[0x161F]) ^ 0x15)) & 0xA4)) ^ 0xC9F15F52;
  LODWORD(STACK[0xBE0]) = v98 - ((2 * v98) & 0x4ED238E2);
  LODWORD(v98) = (v104 - 1372324643 - ((2 * v104) & 0x5C67F9BA)) ^ 0xAE33FCDD | ((LOBYTE(STACK[0x1316]) ^ 0x15) + 889928907 - ((2 * (LOBYTE(STACK[0x1316]) ^ 0x15)) & 0x196)) ^ 0x350B3CCB;
  v105 = (LOBYTE(STACK[0x13AB]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x13AB]) ^ 0x15)) & 0x1FC);
  LODWORD(v98) = (((v98 - ((2 * v98) & 0xABEE2E)) << 8) - 705227008) ^ 0xD5F71700;
  v106 = (LOBYTE(STACK[0x1510]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1510]) ^ 0x15)) & 0x124);
  LODWORD(v100) = ((((v105 << 8) + 1265892864) ^ 0x4B73FE00) - 8109393 - ((2 * (((v105 << 8) + 1265892864) ^ 0x4B73FE00)) & 0x7F088400)) ^ 0xFF8442AF | ((((v100 << 16) + 1158479872) ^ 0x450D0000) - 942601005 - ((2 * (((v100 << 16) + 1158479872) ^ 0x450D0000)) & 0xFA20000)) ^ 0xC7D10CD3;
  LODWORD(v98) = (v98 - 701148294 - ((2 * v98) & 0xAC6AA600)) ^ 0xD635537A | ((LOBYTE(STACK[0x15C9]) ^ 0x15) - 1439278805 - ((2 * (LOBYTE(STACK[0x15C9]) ^ 0x15)) & 0x56)) ^ 0xAA36592B;
  LODWORD(STACK[0xBD8]) = v98 - ((2 * v98) & 0xC3BC27B4);
  LODWORD(v98) = ((((v106 << 16) + 1351745536) ^ 0x50920000) + 1959751105 - ((2 * (((v106 << 16) + 1351745536) ^ 0x50920000)) & 0x699E0000)) ^ 0x74CF6DC1 | (((LOBYTE(STACK[0x1401]) ^ 0x15) << 8) + 1849832651 - (((LOBYTE(STACK[0x1401]) ^ 0x15) << 9) & 0x6800)) ^ 0x6E4234CB;
  LODWORD(v98) = (v98 - 1747517507 - ((2 * v98) & 0x2FADFF7A)) ^ 0x97D6FFBD | ((LOBYTE(STACK[0x16B4]) ^ 0x15) - 1671664249 - ((2 * (LOBYTE(STACK[0x16B4]) ^ 0x15)) & 0xFFFFFF0F)) ^ 0x9C5C6D87;
  LODWORD(v100) = (v100 - 574239605 - ((2 * v100) & 0x3B8B9916)) ^ 0xDDC5CC8B | ((LOBYTE(STACK[0x165E]) ^ 0x15) - 1715318549 + (~(2 * (LOBYTE(STACK[0x165E]) ^ 0x15)) | 0xFFFFFE29) + 1) ^ 0x99C250EB;
  LODWORD(v98) = (((v98 + 574271 - ((2 * v98) & 0x119586)) << 8) + 492544) ^ 0x8CAC300;
  LODWORD(v98) = (v98 + 729139180 - ((2 * v98) & 0x56EB8E00)) ^ 0x2B75C7EC | ((LOBYTE(STACK[0x15A5]) ^ 0x15) - 392507929 - ((2 * (LOBYTE(STACK[0x15A5]) ^ 0x15)) & 0xFFFFFFCF)) ^ 0xE89ACDE7;
  LODWORD(STACK[0xBC0]) = v98 - ((2 * v98) & 0xE1276D10);
  LODWORD(v100) = (((v100 - ((2 * v100) & 0xF9A64C)) << 8) - 53271040) ^ 0xFCD32600;
  v107 = LOBYTE(STACK[0x154F]);
  LODWORD(STACK[0xD00]) = v107;
  LODWORD(v100) = (v100 - 1703317126 - ((2 * v100) & 0x34F2E200)) ^ 0x9A79717A | ((v107 ^ 0x15) - 1916779408 - ((2 * (v107 ^ 0x15)) & 0xE0)) ^ 0x8DC04470;
  LODWORD(STACK[0xBC8]) = v100 - 1918342745 - ((2 * v100) & 0x1B50D34E);
  LODWORD(v100) = (LOBYTE(STACK[0x1496]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1496]) ^ 0x15)) & 0xFFFFFF87);
  LODWORD(v98) = ((((LOBYTE(STACK[0x1387]) ^ 0x15) + (~(2 * (LOBYTE(STACK[0x1387]) ^ 0x15)) | 0xFFFEB3)) << 8) - 441669888) ^ 0xE5ACA600;
  LODWORD(v100) = ((((v100 << 16) + 365101056) ^ 0x15C30000) + 1903594912 - ((2 * (((v100 << 16) + 365101056) ^ 0x15C30000)) & 0x62EC0000)) ^ 0x71768DA0 | (v98 + 1147169265 - ((2 * v98) & 0xD200)) ^ 0x446069F1;
  LODWORD(v100) = (v100 - 1421974961 - ((2 * v100) & 0x567CC49E)) ^ 0xAB3E624F | ((LOBYTE(STACK[0x163A]) ^ 0x15) - 1584868991 - ((2 * (LOBYTE(STACK[0x163A]) ^ 0x15)) & 0xFFFFFF03)) ^ 0xA188D181;
  LODWORD(v100) = (((v100 - ((2 * v100) & 0x765394)) << 8) - 1154889216) ^ 0xBB29CA00;
  LOBYTE(v2) = (v2 & 0x39 ^ 0x38) + (v2 & 0x39 ^ 1);
  LODWORD(v100) = (v100 + 830887404 - ((2 * v100) & 0x630CAA00)) ^ 0x318655EC | ((LOBYTE(STACK[0x152B]) ^ 0x15) - 327304064 - ((2 * LOBYTE(STACK[0x152B])) & 0x100)) ^ 0xEC7DBC80;
  LODWORD(STACK[0xBA8]) = v100 - ((2 * v100) & 0xF4C061C0);
  LODWORD(v2) = ((LOBYTE(STACK[0x1440]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1440]) ^ 0x15)) & 0x16E) + 51895) ^ (v2 - ((2 * v2) & 0xE7) + 19) & 0x30;
  LODWORD(v98) = (LOBYTE(STACK[0x1331]) ^ 0x25) - ((2 * LOBYTE(STACK[0x1331])) & 0x184);
  LODWORD(v100) = (LOBYTE(STACK[0x13C6]) ^ 0x15) - ((2 * LOBYTE(STACK[0x13C6])) & 0x50);
  LODWORD(v2) = ((((v98 << 8) - 700005888) ^ 0xD646C200) - 485548012 - ((2 * (((v98 << 8) - 700005888) ^ 0xD646C200)) & 0x461E4000)) ^ 0xE30F2014 | (((v2 << 16) ^ 0xCAA70000) + 635963533 - ((2 * ((v2 << 16) ^ 0xCAA70000)) & 0x4BD00000)) ^ 0x25E8088D;
  LODWORD(v98) = (LOBYTE(STACK[0x141C]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x141C]) ^ 0x15)) & 0xB4);
  v108 = (LOBYTE(STACK[0x130D]) ^ 0x15) + 4501357 - ((2 * (LOBYTE(STACK[0x130D]) ^ 0x15)) & 0xC6);
  LODWORD(v2) = (v2 - 1369596811 - ((2 * v2) & 0x5CBB38EA)) ^ 0xAE5D9C75 | ((LOBYTE(STACK[0x15E4]) ^ 0x15) - 755117353 - ((2 * (LOBYTE(STACK[0x15E4]) ^ 0x15)) & 0x1AE)) ^ 0xD2FDD2D7;
  LODWORD(v98) = ((((v108 << 8) - 2560) ^ 0x44AF6300) - 2082145511 - ((2 * (((v108 << 8) - 2560) ^ 0x44AF6300)) & 0x7C9F600)) ^ 0x83E4FB19 | ((((v98 << 16) - 950403072) ^ 0xC75A0000) - 287138288 - ((2 * (((v98 << 16) - 950403072) ^ 0xC75A0000)) & 0x5DC40000)) ^ 0xEEE29E10;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0xCEA110)) << 8) - 414152704) ^ 0xE7508800;
  LODWORD(v98) = (v98 + 435541091 - ((2 * v98) & 0x33EBA8C6)) ^ 0x19F5D463 | ((LOBYTE(STACK[0x15C0]) ^ 0x15) + 927720641 - ((2 * (LOBYTE(STACK[0x15C0]) ^ 0x15)) & 0xFFFFFF83)) ^ 0x374BE4C1;
  LODWORD(v2) = (v2 + 825811820 - ((2 * v2) & 0x6271C600)) ^ 0x3138E36C | ((LOBYTE(STACK[0x14D5]) ^ 0x15) - 303525562 - ((2 * (LOBYTE(STACK[0x14D5]) ^ 0x15)) & 0x8C)) ^ 0xEDE89146;
  LODWORD(v98) = (((v98 + 6435616 - ((2 * v98) & 0xC481C2)) << 8) + 901376) ^ 0x6240E100;
  LODWORD(v98) = (v98 + 1886999563 - ((2 * v98) & 0xE0F2A800)) ^ 0x7079540B | ((LOBYTE(STACK[0x14B1]) ^ 0x15) + 497725242 - ((2 * (LOBYTE(STACK[0x14B1]) ^ 0x15)) & 0x74)) ^ 0x1DAAAF3A;
  LODWORD(STACK[0xBA0]) = v98 - ((2 * v98) & 0x6F8BD680);
  LODWORD(v98) = ((((LOBYTE(STACK[0x1679]) ^ 0x15) + 8946825 - ((2 * (LOBYTE(STACK[0x1679]) ^ 0x15)) & 0x1AA)) << 8) + 674816) ^ 0x888ED500;
  LODWORD(v100) = (v98 - 1498896315 - ((2 * v98) & 0x4D515000)) ^ 0xA6A8A845 | ((((v100 << 16) + 422051840) ^ 0x19280000) + 1116666275 - ((2 * (((v100 << 16) + 422051840) ^ 0x19280000)) & 0x51C0000)) ^ 0x428EF9A3;
  LODWORD(v100) = (v100 - 240247992 - ((2 * v100) & 0xE35C3690)) ^ 0xF1AE1B48 | ((LOBYTE(STACK[0x156A]) ^ 0x15) + 1347401195 - ((2 * (LOBYTE(STACK[0x156A]) ^ 0x15)) & 0x1D6)) ^ 0x504FB5EB;
  LODWORD(v100) = (((v100 + 3203488 - ((2 * v100) & 0x61C7B6)) << 8) + 146176) ^ 0x30E3DB00;
  LODWORD(v98) = (LOBYTE(STACK[0x13A2]) ^ 0x15) - ((2 * LOBYTE(STACK[0x13A2])) & 0x5555);
  LODWORD(v100) = (v100 - 266536436 - ((2 * v100) & 0xE039F400)) ^ 0xF01CFA0C | ((LOBYTE(STACK[0x145B]) ^ 0x15) - 1670056981 - ((2 * (LOBYTE(STACK[0x145B]) ^ 0x15)) & 0x1D6)) ^ 0x9C74F3EB;
  LODWORD(STACK[0xB98]) = v100 - ((2 * v100) & 0x420DEA70);
  LODWORD(v100) = ((((LOBYTE(STACK[0x1655]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1655]) ^ 0x15)) & 0x196)) << 8) - 531182848) ^ 0xE056CB00;
  LODWORD(v100) = (v100 - 1464954268 - ((2 * v100) & 0x515D2400)) ^ 0xA8AE9264 | ((((v98 << 16) + 229244928) ^ 0xDAA0000) - 298569603 - ((2 * (((v98 << 16) + 229244928) ^ 0xDAA0000)) & 0x5C680000)) ^ 0xEE34307D;
  LODWORD(v98) = (LOBYTE(STACK[0x134C]) ^ 0x15) - ((2 * LOBYTE(STACK[0x134C])) & 0xC0);
  LODWORD(v100) = (v100 - 80356435 - ((2 * v100) & 0x766BB75A)) ^ 0xFB35DBAD | ((LOBYTE(STACK[0x1546]) ^ 0x15) + 1837884577 - ((2 * (LOBYTE(STACK[0x1546]) ^ 0x15)) & 0x142)) ^ 0x6D8BE4A1;
  v109 = (((LOBYTE(STACK[0x15FF]) ^ 0x15) + 4228780 - ((2 * (LOBYTE(STACK[0x15FF]) ^ 0x15)) & 0x122)) << 8) - 6912;
  LODWORD(v98) = ((v109 ^ 0x40869100) + 2064736404 - ((2 * v109) & 0x7622C000)) ^ 0x7B116094 | ((((v98 << 16) - 2090860544) ^ 0x83600000) - 1332356813 - ((2 * ((v98 << 16) - 2090860544)) & 0x612A0000)) ^ 0xB095D933;
  LODWORD(v100) = (((v100 + 6845852 - ((2 * v100) & 0xD0F83A)) << 8) + 426240) ^ 0x687C1D00;
  LODWORD(v100) = (v100 - 1349263759 - ((2 * v100) & 0x5F27BC00)) ^ 0xAF93DE71 | ((LOBYTE(STACK[0x1437]) ^ 0x15) + 1537782616 - ((2 * (LOBYTE(STACK[0x1437]) ^ 0x15)) & 0xB0)) ^ 0x5BA8B358;
  LODWORD(STACK[0xB78]) = v100 - 75252475 + (~(2 * v100) | 0x8F885F7);
  LODWORD(v100) = (LOBYTE(STACK[0x1328]) ^ 0x15) + (~(2 * (LOBYTE(STACK[0x1328]) ^ 0x15)) | 0xFF59);
  v110 = (LOBYTE(STACK[0x15DB]) ^ 0x15) + 2359299 - ((2 * (LOBYTE(STACK[0x15DB]) ^ 0x15)) & 0x5E);
  LODWORD(v98) = (v98 + 1432398597 - ((2 * v98) & 0x2AC1560A)) ^ 0x5560AB05 | ((LOBYTE(STACK[0x14F0]) ^ 0x15) + 471411004 - ((2 * (LOBYTE(STACK[0x14F0]) ^ 0x15)) & 0x78)) ^ 0x1C19293C;
  LODWORD(v98) = (((v98 - ((2 * v98) & 0x4C1F02)) << 8) - 1508933376) ^ 0xA60F8100;
  LODWORD(v100) = ((((v110 << 8) + 338944) ^ 0x24052F00) + 328044519 - ((2 * (((v110 << 8) + 338944) ^ 0x24052F00)) & 0x271B1E00)) ^ 0x138D8FE7 | ((((v100 << 16) + 1448345600) ^ 0x56530000) - 1726789010 - ((2 * (((v100 << 16) + 1448345600) ^ 0x56530000)) & 0x2260000)) ^ 0x99134A6E;
  LODWORD(v98) = (v98 - 1245544155 - ((2 * v98) & 0x6B850200)) ^ 0xB5C28125 | ((LOBYTE(STACK[0x13E1]) ^ 0x15) + 638819186 - ((2 * (LOBYTE(STACK[0x13E1]) ^ 0x15)) & 0xE4)) ^ 0x26139B72;
  LODWORD(STACK[0xB70]) = v98 - ((2 * v98) & 0x9E04E7C);
  LODWORD(v100) = (v100 - 492302199 - ((2 * v100) & 0x45502112)) ^ 0xE2A81089 | ((LOBYTE(STACK[0x14CC]) ^ 0x15) - 1037142100 - ((2 * (LOBYTE(STACK[0x14CC]) ^ 0x15)) & 0x158)) ^ 0xC22E77AC;
  v111 = (LOBYTE(STACK[0x1694]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1694]) ^ 0x15)) & 0xE0);
  LODWORD(v100) = (((v100 - ((2 * v100) & 0x19315C)) << 8) - 1936151040) ^ 0x8C98AE00;
  LODWORD(v98) = v100 - 1810601867 - ((2 * v100) & 0x2828D000);
  v112 = (LOBYTE(STACK[0x1670]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1670]) ^ 0x15)) & 0xFA);
  v113 = ((((LOBYTE(STACK[0x1585]) ^ 0x25) - ((2 * (LOBYTE(STACK[0x1585]) ^ 0x25)) & 0xF6)) << 8) + 1548909312) ^ 0x5C527B00;
  v114 = ((((v111 << 16) + 40894464) ^ 0x2700000) - 1505995758 - ((2 * (((v111 << 16) + 40894464) ^ 0x2700000)) & 0x4C780000)) ^ 0xA63C5412 | (v113 + 83135096 - ((2 * v113) & 0x9E91400)) ^ 0x4F48A78;
  v115 = (v114 + 321767078 - ((2 * v114) & 0x265B8D4C)) ^ 0x132DC6A6 | ((LOBYTE(STACK[0x1476]) ^ 0x15) - 1598157066 - ((2 * (LOBYTE(STACK[0x1476]) ^ 0x15)) & 0x1EC)) ^ 0xA0BE0EF6;
  v116 = (((v115 - ((2 * v115) & 0x1F7044)) << 8) - 1883758080) ^ 0x8FB82200;
  LODWORD(v100) = (v116 + 1649859356 - ((2 * v116) & 0xC4ADB600)) ^ 0x6256DB1C | ((LOBYTE(STACK[0x1367]) ^ 0x15) + 553213844 - ((2 * (LOBYTE(STACK[0x1367]) ^ 0x15)) & 0x128)) ^ 0x20F95F94;
  LODWORD(STACK[0xB68]) = v100 - ((2 * v100) & 0x34DB2284);
  v117 = (LOBYTE(STACK[0x161A]) ^ 0x15) - 2 * ((LOBYTE(STACK[0x161A]) ^ 0x15) & 0x1F);
  v118 = (LOBYTE(STACK[0x1561]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1561]) ^ 0x15)) & 0xB8);
  LODWORD(v100) = (LOBYTE(STACK[0x15F6]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x15F6]) ^ 0x15)) & 0x130);
  v119 = ((((v112 << 16) + 1971126272) ^ 0x757D0000) - 1492559271 - ((2 * (((v112 << 16) + 1971126272) ^ 0x757D0000)) & 0x4E120000)) ^ 0xA7095A59 | ((((v118 << 8) + 1723161600) ^ 0x66B55C00) + 1755956825 - ((2 * (((v118 << 8) + 1723161600) ^ 0x66B55C00)) & 0x51538C00)) ^ 0x68A9C659;
  v120 = (v119 + 672608163 - ((2 * v119) & 0x502E5F46)) ^ 0x28172FA3 | ((LOBYTE(STACK[0x1452]) ^ 0x15) - 171946932 - ((2 * (LOBYTE(STACK[0x1452]) ^ 0x15)) & 0x98)) ^ 0xF5C04C4C;
  LODWORD(v98) = v98 ^ 0x94146875 | ((LOBYTE(STACK[0x13BD]) ^ 0x15) - 1361464616 + (~(2 * (LOBYTE(STACK[0x13BD]) ^ 0x15)) | 0xFFFFFE4F) + 1) ^ 0xAED9B2D8;
  LODWORD(STACK[0xB58]) = v98 - ((2 * v98) & 0xFEE96128);
  LODWORD(v98) = (((v120 + 5240281 - ((2 * v120) & 0x9FEBA6)) << 8) - 1536) ^ 0x4FF5D300;
  LODWORD(v98) = (v98 - 1731435809 - ((2 * v98) & 0x3198C400)) ^ 0x98CC62DF | ((LOBYTE(STACK[0x1343]) ^ 0x15) + 1159058912 - ((2 * LOBYTE(STACK[0x1343])) & 0x1C0)) ^ 0x4515D5E0;
  LODWORD(STACK[0xB60]) = v98 - ((2 * v98) & 0x228FE3A6);
  LODWORD(v98) = ((((LOBYTE(STACK[0x150B]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x150B]) ^ 0x15)) & 0x1F8)) << 8) - 117113856) ^ 0xF904FC00;
  LODWORD(v98) = (v98 - 880415946 - ((2 * v98) & 0x170BD600)) ^ 0xCB85EB36 | ((((v117 << 16) - 1826684928) ^ 0x931F0000) - 1778686260 - ((2 * (((v117 << 16) - 1826684928) ^ 0x931F0000)) & 0x2BF60000)) ^ 0x95FB66CC;
  LODWORD(v98) = (v98 - 1510261257 - ((2 * v98) & 0x4BF67BEE)) ^ 0xA5FB3DF7 | ((LOBYTE(STACK[0x13FC]) ^ 0x15) - 1050818283 - ((2 * (LOBYTE(STACK[0x13FC]) ^ 0x15)) & 0x2A)) ^ 0xC15DC915;
  LODWORD(v98) = (((v98 - ((2 * v98) & 0x922844)) << 8) - 921427456) ^ 0xC9142200;
  v121 = (LOBYTE(STACK[0x14E7]) ^ 0x15) + 3203488 - ((2 * (LOBYTE(STACK[0x14E7]) ^ 0x15)) & 0x122);
  LODWORD(v98) = (v98 + 1900998148 - ((2 * v98) & 0xE29DDC00)) ^ 0x714EEE04 | ((LOBYTE(STACK[0x16AF]) ^ 0x15) - 1411925570 - ((2 * (LOBYTE(STACK[0x16AF]) ^ 0x15)) & 0x17C)) ^ 0xABD7B9BE;
  LODWORD(STACK[0xB50]) = v98 - ((2 * v98) & 0xBD4E8164);
  LODWORD(v100) = ((((v121 << 8) - 3840) ^ 0x30E19100) - 934193579 - ((2 * (((v121 << 8) - 3840) ^ 0x30E19100)) & 0x10A2AC00)) ^ 0xC8515655 | ((((v100 << 16) + 1117257728) ^ 0x42980000) - 1740931938 - ((2 * (((v100 << 16) + 1117257728) ^ 0x42980000)) & 0x30760000)) ^ 0x983B7C9E;
  LODWORD(v100) = (v100 - 117703344 - ((2 * v100) & 0x71F7FAA0)) ^ 0xF8FBFD50 | ((LOBYTE(STACK[0x13D8]) ^ 0x15) - 1329944881 - ((2 * (LOBYTE(STACK[0x13D8]) ^ 0x15)) & 0xFFFFFF9F)) ^ 0xB0BAA6CF;
  LODWORD(v98) = (LOBYTE(STACK[0x15A0]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x15A0]) ^ 0x15)) & 0x1B4);
  v122 = ((((LOBYTE(STACK[0x1491]) ^ 0x15) + 234244 - ((2 * (LOBYTE(STACK[0x1491]) ^ 0x15)) & 0x33333333)) << 8) + 103680) ^ 0x3949900;
  LODWORD(v98) = ((((v98 << 16) + 651821056) ^ 0x26DA0000) + 155070304 - ((2 * (((v98 << 16) + 651821056) ^ 0x26DA0000)) & 0x127C0000)) ^ 0x93E2F60 | (v122 - 2056443119 - ((2 * v122) & 0xADA5600)) ^ 0x856D2B11;
  LODWORD(v98) = (v98 + 604983525 - ((2 * v98) & 0x481EA1CA)) ^ 0x240F50E5 | ((LOBYTE(STACK[0x1382]) ^ 0x15) - 1925200694 - ((2 * LOBYTE(STACK[0x1382])) & 0x194)) ^ 0x8D3FC4CA;
  LODWORD(v100) = (((v100 + 4580824 - ((2 * v100) & 0x8BCF06)) << 8) + 109312) ^ 0x45E78300;
  LODWORD(v100) = (v100 + 1526611123 - ((2 * v100) & 0xB5FC7800)) ^ 0x5AFE3CB3 | ((LOBYTE(STACK[0x168B]) ^ 0x15) + 587247819 - ((2 * (LOBYTE(STACK[0x168B]) ^ 0x15)) & 0x196)) ^ 0x2300B0CB;
  LODWORD(STACK[0xB48]) = v100 - ((2 * v100) & 0x153CE604);
  v123 = v2 - ((2 * v2) & 0xE8FB416A) + 1954390197;
  LODWORD(STACK[0xB30]) = v123;
  LODWORD(v2) = v123 & 0x38DA28 ^ 0x4A08 | v123 & 0x38DA28 ^ 0x389020;
  LODWORD(v2) = (((v98 - ((2 * v98) & 0xB9CD6E) + 14476983) ^ (v2 + 10638711 + (~(2 * v2) | 0xBF5FBF))) << 8) ^ 0x7EB3C100;
  LODWORD(v2) = (v2 + 944570669 - ((2 * v2) & 0x709A0200)) ^ 0x384D012D | ((LOBYTE(STACK[0x1635]) ^ 0x15) + 1806808663 - ((2 * (LOBYTE(STACK[0x1635]) ^ 0x15)) & 0xAE)) ^ 0x6BB1B657;
  LODWORD(STACK[0xB40]) = v2 - ((2 * v2) & 0x6821BA30);
  LODWORD(v2) = LOBYTE(STACK[0x1502]);
  LODWORD(v100) = ((((LOBYTE(STACK[0x157C]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x157C]) ^ 0x15)) & 0x34)) << 16) - 417726464) ^ 0xE71A0000;
  v124 = ((((LOBYTE(STACK[0x146D]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x146D]) ^ 0x15)) & 0xCCCCCCCC)) << 8) + 1918592512) ^ 0x725B6600;
  LODWORD(v100) = (v100 + 1522751488 - ((2 * v100) & 0x35860000)) ^ 0x5AC35800 | (v124 - 1111025529 - ((2 * v124) & 0x7B8E3000)) ^ 0xBDC71887;
  v125 = (LOBYTE(STACK[0x1417]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1417]) ^ 0x15)) & 0xFFFFFFE7);
  LODWORD(v100) = (v100 + 213960794 - ((2 * v100) & 0x198190B4)) ^ 0xCC0C85A | ((LOBYTE(STACK[0x135E]) ^ 0x15) - 2085414448 - ((2 * (LOBYTE(STACK[0x135E]) ^ 0x15)) & 0x1A0)) ^ 0x83B319D0;
  LODWORD(v98) = ((((LOBYTE(STACK[0x1526]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1526]) ^ 0x15)) & 0xF4)) << 16) + 947519488) ^ 0x387A0000;
  LODWORD(v98) = ((((v125 << 8) + 576582400) ^ 0x225DF300) - 1853073540 - ((2 * (((v125 << 8) + 576582400) ^ 0x225DF300)) & 0x2318AE00)) ^ 0x918C577C | (v98 - 1206730752 - ((2 * v98) & 0x70240000)) ^ 0xB812C000;
  LODWORD(v98) = (v98 + 1812198787 - ((2 * v98) & 0xD807EB06)) ^ 0x6C03F583 | ((LOBYTE(STACK[0x1308]) ^ 0x15) - 205867119 - ((2 * (LOBYTE(STACK[0x1308]) ^ 0x15)) & 0x122)) ^ 0xF3BAB791;
  LODWORD(v98) = (((v98 - ((2 * v98) & 0xB2E012)) << 8) + 1500514560) ^ 0x59700900;
  LODWORD(v98) = (v98 - 523958807 - ((2 * v98) & 0xC18A0A00)) ^ 0xE0C505E9 | ((LOBYTE(STACK[0x15BB]) ^ 0x15) - 1084713063 - ((2 * (LOBYTE(STACK[0x15BB]) ^ 0x15)) & 0x33333333)) ^ 0xBF589799;
  LODWORD(STACK[0xB38]) = v98 + 464263980 + (~(2 * v98) | 0xC8A7C9A9);
  LODWORD(v98) = (LOBYTE(STACK[0x13F3]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x13F3]) ^ 0x15)) & 0xC6);
  LODWORD(v100) = (((v100 - ((2 * v100) & 0x968D06)) << 8) + 1262912256) ^ 0x4B468300;
  LODWORD(v100) = (v100 + 1630880974 - ((2 * v100) & 0xC26A8800)) ^ 0x613544CE | ((LOBYTE(STACK[0x1611]) ^ 0x15) + 817324080 - ((2 * (LOBYTE(STACK[0x1611]) ^ 0x15)) & 0x60)) ^ 0x30B76030;
  LODWORD(STACK[0xB28]) = v100 - ((2 * v100) & 0x74C176D4);
  LODWORD(v2) = ((((v2 ^ 0x15) - ((2 * (v2 ^ 0x15)) & 0x118)) << 16) + 193724416) ^ 0xB8C0000;
  LODWORD(v2) = ((((v98 << 8) - 1389534464) ^ 0xAD2D6300) + 1559445969 - ((2 * (((v98 << 8) - 1389534464) ^ 0xAD2D6300)) & 0x39E68200)) ^ 0x5CF341D1 | (v2 + 1590098527 - ((2 * v2) & 0x3D8C0000)) ^ 0x5EC6FA5F;
  LODWORD(v2) = (v2 + 254308010 - ((2 * v2) & 0x1E50DD54)) ^ 0xF286EAA | ((LOBYTE(STACK[0x16A6]) ^ 0x15) - 684170969 - ((2 * (LOBYTE(STACK[0x16A6]) ^ 0x15)) & 0x4E)) ^ 0xD7386127;
  LODWORD(v100) = (LOBYTE(STACK[0x14AC]) ^ 0x15) - ((2 * LOBYTE(STACK[0x14AC])) & 0x10);
  LODWORD(v2) = (((v2 + 950554 - ((2 * v2) & 0x1D0780)) << 8) + 173568) ^ 0xE83C000;
  LODWORD(v98) = ((((LOBYTE(STACK[0x139D]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x139D]) ^ 0x15)) & 0x4A)) << 8) - 651614976) ^ 0xD9292500;
  LODWORD(v100) = (v98 + 1085533721 - ((2 * v98) & 0x167DC00)) ^ 0x40B3EE19 | ((((v100 << 16) - 418906112) ^ 0xE7080000) + 1859672394 - ((2 * (((v100 << 16) - 418906112) ^ 0xE7080000)) & 0x5DB00000)) ^ 0x6ED8594A;
  LODWORD(v98) = (LOBYTE(STACK[0x1488]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1488]) ^ 0x15)) & 0x1E0);
  v126 = (LOBYTE(STACK[0x1379]) ^ 0x15) + 656024 - ((2 * LOBYTE(STACK[0x1379])) & 0x104);
  LODWORD(v2) = (v2 - 2102601984 - ((2 * v2) & 0x559AE00)) ^ 0x82ACD700 | ((LOBYTE(STACK[0x1597]) ^ 0x15) - 915170751 - ((2 * (LOBYTE(STACK[0x1597]) ^ 0x15)) & 0x82)) ^ 0xC9739A41;
  LODWORD(STACK[0xB20]) = v2 - ((2 * v2) & 0xB7A44730);
  LODWORD(v2) = (v100 - 819751969 - ((2 * v100) & 0x1E4727BE)) ^ 0xCF2393DF | ((LOBYTE(STACK[0x1650]) ^ 0x15) + 1163174803 - ((2 * (LOBYTE(STACK[0x1650]) ^ 0x15)) & 0x126)) ^ 0x4554A393;
  LODWORD(v100) = ((((v126 << 8) - 5632) ^ 0xA028200) - 878037699 - ((2 * (((v126 << 8) - 5632) ^ 0xA028200)) & 0x17546A00)) ^ 0xCBAA353D | ((((v98 << 16) - 1578106880) ^ 0xA1F00000) + 1891807193 - ((2 * (((v98 << 16) - 1578106880) ^ 0xA1F00000)) & 0x61840000)) ^ 0x70C2AFD9;
  LODWORD(v100) = (v100 - 502248576 - ((2 * v100) & 0x44209700)) ^ 0xE2104B80 | ((LOBYTE(STACK[0x162C]) ^ 0x15) - 1005953924 - ((2 * (LOBYTE(STACK[0x162C]) ^ 0x15)) & 0xF8)) ^ 0xC40A5C7C;
  LODWORD(v100) = v100 + 3704124 - (LODWORD(STACK[0x414]) & (2 * v100));
  LODWORD(v2) = (((v2 - ((2 * v2) & 0x54AB5E)) << 8) + 710258432) ^ 0x2A55AF00;
  LODWORD(v2) = (v2 + 1845198337 - ((2 * v2) & 0xDBF6FC00)) ^ 0x6DFB7E01 | ((LOBYTE(STACK[0x1541]) ^ 0x15) - 130086922 - ((2 * (LOBYTE(STACK[0x1541]) ^ 0x15)) & 0x1EC)) ^ 0xF83F07F6;
  LODWORD(STACK[0xB18]) = v2 - ((2 * v2) & 0xC81F736);
  LODWORD(v2) = (((v100 << 8) - 2304) ^ 0x38853300) + 1766333671 - ((2 * (((v100 << 8) - 2304) ^ 0x38853300)) & 0xD2903800);
  LODWORD(v100) = LOBYTE(STACK[0x1432]);
  LODWORD(v98) = (LOBYTE(STACK[0x1323]) ^ 0x15) - 2 * ((LOBYTE(STACK[0x1323]) ^ 0x15) & 1);
  LODWORD(v2) = v2 ^ 0x69481CE7 | ((LOBYTE(STACK[0x151D]) ^ 0x15) - 1260559614 - ((2 * LOBYTE(STACK[0x151D])) & 4)) ^ 0xB4DD6302;
  LODWORD(STACK[0xB14]) = v2 + 1038571495 + (~(2 * v2) | 0x84314325);
  LODWORD(v2) = ((((v100 ^ 0x15) - ((2 * (v100 ^ 0x15)) & 0x130)) << 16) - 359137280) ^ 0xEA980000;
  LODWORD(v2) = (v2 - 241268392 - ((2 * v2) & 0x633C0000)) ^ 0xF19E8958 | ((((v98 << 8) + 321323264) ^ 0x13270100) + 1922052995 - ((2 * (((v98 << 8) + 321323264) ^ 0x13270100)) & 0x65206600)) ^ 0x72903383;
  LODWORD(v2) = (v2 + 819363051 - ((2 * v2) & 0x61ACF9D6)) ^ 0x30D67CEB | ((LOBYTE(STACK[0x15D6]) ^ 0x15) - 870327372 - ((2 * (LOBYTE(STACK[0x15D6]) ^ 0x15)) & 0x168)) ^ 0xCC1FDBB4;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0xD35DAA)) << 8) - 374418176) ^ 0xE9AED500;
  LODWORD(v100) = (LOBYTE(STACK[0x140E]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x140E]) ^ 0x15)) & 0x9C);
  LODWORD(v98) = (LOBYTE(STACK[0x16C1]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x16C1]) ^ 0x15)) & 0x19A);
  LODWORD(v2) = (v2 - 259085714 - ((2 * v2) & 0xE11D5400)) ^ 0xF08EAA6E | ((LOBYTE(STACK[0x14C7]) ^ 0x15) - 135754737 - 2 * ((LOBYTE(STACK[0x14C7]) ^ 0x15) & 0xF)) ^ 0xF7E88C0F;
  LODWORD(STACK[0xB08]) = v2 - ((2 * v2) & 0x36B622E2);
  LODWORD(v2) = ((((v98 << 8) - 759968512) ^ 0xD2B3CD00) - 1808502128 - ((2 * (((v98 << 8) - 759968512) ^ 0xD2B3CD00)) & 0x2868E400)) ^ 0x94347290 | ((((v100 << 16) - 884080640) ^ 0xCB4E0000) + 515951875 - ((2 * (((v100 << 16) - 884080640) ^ 0xCB4E0000)) & 0x3D800000)) ^ 0x1EC0CD03;
  LODWORD(v2) = (v2 - 453481386 - ((2 * v2) & 0x49F0D8AC)) ^ 0xE4F86C56 | ((LOBYTE(STACK[0x15B2]) ^ 0x15) + 1857440522 - ((2 * LOBYTE(STACK[0x15B2])) & 0x14)) ^ 0x6EB64B0A;
  LODWORD(v100) = (LOBYTE(STACK[0x13B8]) ^ 0x15) - 2 * ((LOBYTE(STACK[0x13B8]) ^ 0x15) & 0x1F);
  LODWORD(v2) = (((v2 + 15973136 - ((2 * v2) & 0xE78F2A)) << 8) + 820480) ^ 0xF3C79500;
  LODWORD(v98) = (LOBYTE(STACK[0x1394]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1394]) ^ 0x15)) & 0x12C);
  LODWORD(v2) = (v2 + 2103227586 - ((2 * v2) & 0xFAB96800)) ^ 0x7D5CB4C2 | ((LOBYTE(STACK[0x14A3]) ^ 0x15) + 1390498970 - ((2 * (LOBYTE(STACK[0x14A3]) ^ 0x15)) & 0x134)) ^ 0x52E1549A;
  LODWORD(STACK[0xB00]) = v2 - ((2 * v2) & 0xDDC0D7A);
  LODWORD(v2) = (LOBYTE(STACK[0x1647]) ^ 0x15) + 3015828 - ((2 * (LOBYTE(STACK[0x1647]) ^ 0x15)) & 0xFFFFFF1F);
  LODWORD(v2) = ((((v2 << 8) - 1280) ^ 0x2E048F00) - 212784412 - ((2 * (((v2 << 8) - 1280) ^ 0x2E048F00)) & 0x66A25400)) ^ 0xF3512AE4 | ((((v98 << 16) - 1701445632) ^ 0x9A960000) - 695147642 - ((2 * (((v98 << 16) - 1701445632) ^ 0x9A960000)) & 0x2D200000)) ^ 0xD690E386;
  LODWORD(v98) = ((((LOBYTE(STACK[0x166B]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x166B]) ^ 0x15)) & 0x5E)) << 8) + 411119360) ^ 0x18812F00;
  LODWORD(v100) = (v98 + 564064037 - ((2 * v98) & 0x433DDE00)) ^ 0x219EEF25 | ((((v100 << 16) + 2115960832) ^ 0x7E1F0000) + 1954061270 - ((2 * (((v100 << 16) + 2115960832) ^ 0x7E1F0000)) & 0x68F00000)) ^ 0x74789BD6;
  LODWORD(v2) = (v2 - 1936916227 - ((2 * v2) & 0x191A01FA)) ^ 0x8C8D00FD | ((LOBYTE(STACK[0x1538]) ^ 0x15) - 1001249590 - ((2 * LOBYTE(STACK[0x1538])) & 0x194)) ^ 0xC45224CA;
  LODWORD(v100) = (v100 - 333256311 - ((2 * v100) & 0x5845D312)) ^ 0xEC22E989 | ((LOBYTE(STACK[0x155C]) ^ 0x15) + 1043962861 - ((2 * (LOBYTE(STACK[0x155C]) ^ 0x15)) & 0x1DA)) ^ 0x3E399BED;
  LODWORD(v100) = (((v100 - ((2 * v100) & 0x9FA0AC)) << 8) - 808430080) ^ 0xCFD05600;
  LODWORD(v100) = (v100 - 907449214 - ((2 * v100) & 0x93D2D800)) ^ 0xC9E96C82 | ((LOBYTE(STACK[0x144D]) ^ 0x15) + 1617365789 - ((2 * (LOBYTE(STACK[0x144D]) ^ 0x15)) & 0x3A)) ^ 0x60670B1D;
  LODWORD(STACK[0xAF8]) = v100 - ((2 * v100) & 0x15F94B00);
  LODWORD(v2) = (((v2 - ((2 * v2) & 0xAE227E)) << 8) - 686735616) ^ 0xD7113F00;
  LODWORD(v100) = ((((LOBYTE(STACK[0x133E]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x133E]) ^ 0x15)) & 0x1B0)) << 16) + 450363392) ^ 0x1AD80000;
  LODWORD(v98) = ((((LOBYTE(STACK[0x15F1]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x15F1]) ^ 0x15)) & 0xA8)) << 8) + 1587762176) ^ 0x5EA35400;
  LODWORD(v100) = (v98 + 2093400640 - ((2 * v98) & 0x798D8400)) ^ 0x7CC6C240 | (v100 - 1087793931 - ((2 * v100) & 0x7E520000)) ^ 0xBF2994F5;
  LODWORD(v2) = (v2 - 1925803736 - ((2 * v2) & 0x1A6D2200)) ^ 0x8D369128 | ((LOBYTE(STACK[0x1429]) ^ 0x15) + 116878529 - ((2 * (LOBYTE(STACK[0x1429]) ^ 0x15)) & 0xFFFFFF83)) ^ 0x6F76CC1;
  LODWORD(STACK[0x9F4]) = v2 - ((2 * v2) & 0x9BB5A748);
  LODWORD(v2) = LOBYTE(STACK[0x131A]);
  LODWORD(v100) = (v100 + 1203666116 - ((2 * v100) & 0x8F7CF988)) ^ 0x47BE7CC4 | ((LOBYTE(STACK[0x14E2]) ^ 0x15) - 98264729 - ((2 * (LOBYTE(STACK[0x14E2]) ^ 0x15)) & 0xCE)) ^ 0xFA249967;
  LODWORD(v98) = (LOBYTE(STACK[0x15CD]) ^ 0x15) + 11403610 - ((2 * (LOBYTE(STACK[0x15CD]) ^ 0x15)) & 0xFFFFFFDF);
  LODWORD(v100) = (((v100 + 2944907 - ((2 * v100) & 0x59DEFC)) << 8) - 3328) ^ 0x2CEF7E00;
  LODWORD(v100) = (v100 - 1150831897 - ((2 * v100) & 0x76CF6400)) ^ 0xBB67B2E7 | ((LOBYTE(STACK[0x13D3]) ^ 0x15) - 2131095287 - ((2 * (LOBYTE(STACK[0x13D3]) ^ 0x15)) & 0x12)) ^ 0x80FA1109;
  LODWORD(STACK[0x9F0]) = v100 - ((2 * v100) & 0x2056EA52);
  LODWORD(v100) = (LOBYTE(STACK[0x1686]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1686]) ^ 0x15)) & 0x62);
  LODWORD(v2) = (((v2 ^ 0x15) - ((2 * v2) & 0x11111111)) << 16) - 846725120;
  LODWORD(v2) = ((((v98 << 8) + 693504) ^ 0xAE0BEF00) + 1902346574 - ((2 * (((v98 << 8) + 693504) ^ 0xAE0BEF00)) & 0x62C70200)) ^ 0x7163814E | ((v2 ^ 0xCD880000) + 1880266573 - ((2 * v2) & 0x60240000)) ^ 0x7012974D;
  LODWORD(v2) = (v2 - 295693955 - ((2 * v2) & 0x5CC022FA)) ^ 0xEE60117D | ((LOBYTE(STACK[0x14BE]) ^ 0x15) + 862568611 - ((2 * (LOBYTE(STACK[0x14BE]) ^ 0x15)) & 0x146)) ^ 0x3369C0A3;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0xEFB29A)) << 8) - 136753920) ^ 0xF7D94D00;
  LODWORD(v98) = (LOBYTE(STACK[0x1577]) ^ 0x15) + 10461356 - 2 * ((LOBYTE(STACK[0x1577]) ^ 0x15) & 0xF);
  LODWORD(v2) = (v2 + 959713930 - ((2 * v2) & 0x72682400)) ^ 0x3934128A | ((LOBYTE(STACK[0x13AF]) ^ 0x15) - 930349060 - ((2 * (LOBYTE(STACK[0x13AF]) ^ 0x15)) & 0x1F8)) ^ 0xC88BFFFC;
  LODWORD(STACK[0x9EC]) = v2 - ((2 * v2) & 0x244A492);
  LODWORD(v2) = ((((v98 << 8) + 418560) ^ 0x9FA70F00) + 392702804 - ((2 * (((v98 << 8) + 418560) ^ 0x9FA70F00)) & 0x2ED05600)) ^ 0x17682B54 | ((((v100 << 16) - 1070530560) ^ 0xC0310000) - 1244420846 - ((2 * (((v100 << 16) - 1070530560) ^ 0xC0310000)) & 0x6BA60000)) ^ 0xB5D3A512;
  LODWORD(v2) = (v2 + 647772256 - ((2 * v2) & 0x4D3870C0)) ^ 0x269C3860 | ((LOBYTE(STACK[0x1468]) ^ 0x15) - 1492218030 - ((2 * (LOBYTE(STACK[0x1468]) ^ 0x15)) & 0xA4)) ^ 0xA70E8F52;
  LODWORD(v2) = (((v2 + 9449625 - (STACK[0x410] & (2 * v2))) << 8) + 473856) ^ 0x9037D400;
  LODWORD(v100) = (LOBYTE(STACK[0x1662]) ^ 0x15) - ((2 * (LOBYTE(STACK[0x1662]) ^ 0x15)) & 0x33333333);
  LODWORD(v2) = (v2 + 1137274503 + (~(2 * v2) | 0x786D23FF) + 1) ^ 0x43C96E87 | ((LOBYTE(STACK[0x1359]) ^ 0x15) - 1398792215 - ((2 * (LOBYTE(STACK[0x1359]) ^ 0x15)) & 0x1D2)) ^ 0xACA01FE9;
  LODWORD(STACK[0x9E8]) = v2 - ((2 * v2) & 0xA9581000);
  LODWORD(v2) = ((((LOBYTE(STACK[0x1553]) ^ 0x15) + 10384183 - ((2 * (LOBYTE(STACK[0x1553]) ^ 0x15)) & 0xFFFFFF87)) << 8) + 953344) ^ 0x9E81C300;
  LODWORD(v2) = (v2 + 1704865458 - ((2 * v2) & 0x4B3C5C00)) ^ 0x659E2EB2 | ((((v100 << 16) + 110690304) ^ 0x6990000) + 765388777 - ((2 * (((v100 << 16) + 110690304) ^ 0x6990000)) & 0x5B3C0000)) ^ 0x2D9EE7E9;
  LODWORD(v2) = (v2 - 1430663015 + (~(2 * v2) | 0xAA8C5ECD) + 1) ^ 0xAAB9D099 | ((LOBYTE(STACK[0x1444]) ^ 0x15) - 2001532257 - ((2 * (LOBYTE(STACK[0x1444]) ^ 0x15)) & 0xFFFFFF3F)) ^ 0x88B30A9F;
  LODWORD(v2) = (((v2 - ((2 * v2) & 0x114760)) << 8) - 2002538496) ^ 0x88A3B000;
  v127 = LOBYTE(STACK[0x1335]);
  LODWORD(STACK[0xCB0]) = v127;
  LODWORD(v2) = (v2 + 1747212248 - ((2 * v2) & 0xD048AE00)) ^ 0x682457D8 | ((v127 ^ 0x15) + 747083111 - ((2 * (v127 ^ 0x15)) & 0xCE)) ^ 0x2C879567;
  LODWORD(STACK[0x9E4]) = v2 + 851551677 - ((2 * v2) & 0x6583631C);
  LODWORD(STACK[0xE68]) = ((276541634 * (LODWORD(STACK[0x910]) ^ 0xC12C043C)) & 0xFFFFDFEE) + ((-2009212831 * (LODWORD(STACK[0x910]) ^ 0xC12C043C)) ^ 0x7FFFEFF7) + 2072461003;
  LODWORD(v2) = LODWORD(STACK[0x9D8]) ^ 0x3DB4EF76;
  LODWORD(STACK[0xE74]) = ((276541634 * (LODWORD(STACK[0x91C]) ^ 0x26D91A83)) & 0xEE7F6BFC) + ((-2009212831 * (LODWORD(STACK[0x91C]) ^ 0x26D91A83)) ^ 0x773FB5FE) - 2075690812;
  LODWORD(STACK[0xE60]) = ((276541634 * v2) & 0x76CF6EC6) + ((-2009212831 * v2) ^ 0x3B67B763) - 1071679649;
  LODWORD(STACK[0xE70]) = ((276541634 * (v78 ^ 0x97149369)) & STACK[0x40C]) + ((-2009212831 * (v78 ^ 0x97149369)) ^ 0x1EDF7EED) - 592990251;
  LODWORD(v100) = STACK[0xD30];
  v128 = STACK[0xD28];
  v129 = LODWORD(STACK[0xD28]) ^ LODWORD(STACK[0xD30]);
  v130 = v93 - ((2 * v93) & 0xAC2E8246) + 1444364579;
  LODWORD(STACK[0x8E8]) = v130;
  LODWORD(STACK[0xE64]) = ((276541634 * (v130 ^ 0x86D4EC4A)) & 0xCDE77FEE) + ((-2009212831 * (v130 ^ 0x86D4EC4A)) ^ 0xE6F3BFF7) + 345206475;
  LODWORD(STACK[0xE6C]) = ((276541634 * (v129 ^ 0xB31205C3)) & 0xECF73F7A) + ((-2009212831 * (v129 ^ 0xB31205C3)) ^ 0x767B9FBD) - 2062840059;
  v131 = (((4 * v129) ^ 0xCC48170C) - 2 * (((4 * v129) ^ 0xCC48170C) & 0x38749D18 ^ (4 * v129) & 0x10) - 1200317175) ^ (((8 * v129) ^ 0x98902E18) - ((2 * ((8 * v129) ^ 0x98902E18)) & 0xA9D383B0) - 722877990);
  LODWORD(STACK[0xD10]) = v131;
  v132 = STACK[0x9D4];
  LODWORD(STACK[0xE7C]) = ((276541634 * (LODWORD(STACK[0x9D4]) ^ 0xCADC57CC)) & 0xEE6EB6FE) - 2075144388 + ((-2009212831 * (LODWORD(STACK[0x9D4]) ^ 0xCADC57CC)) ^ LODWORD(STACK[0x408])) + 1031;
  LODWORD(STACK[0xE78]) = ((276541634 * (LODWORD(STACK[0xD20]) ^ 0x1E9C71)) & 0x2EFE8EF6) + ((-2009212831 * (LODWORD(STACK[0xD20]) ^ 0x1E9C71)) ^ 0x977F477B) + 1678239559;
  v133 = ((v129 << 21) ^ 0xB8600000) + 450168193 + (~(2 * ((v129 << 21) ^ 0xB8600000)) | 0xCA7FFFFF);
  v134 = ((v129 << 19) ^ 0x2E180000) - ((v129 << 20) & 0x22800000) + 289630509;
  LODWORD(STACK[0x8D0]) = v134;
  v135 = (((16 * v129) ^ 0x31205C30) - ((2 * ((16 * v129) ^ 0x31205C30)) & 0xB87BA5E0) - 599928079) ^ v134 ^ (((32 * v129) ^ 0x6240B860) - ((2 * ((32 * v129) ^ 0x6240B860)) & 0xAE056DC0) + 1459795711) ^ (((v129 << 17) ^ 0xB860000) - ((2 * ((v129 << 17) ^ 0xB860000)) & 0x72040000) - 1191006181);
  v136 = ((v129 << 13) ^ 0x40B86000) - ((2 * ((v129 << 13) ^ 0x40B86000)) & 0xA363C000) + 1370616520;
  LODWORD(STACK[0xCDC]) = v136;
  v137 = ((v129 << 11) ^ 0x902E1800) - ((2 * ((v129 << 11) ^ 0x902E1800)) & 0x5CC3E000) - 1369311537;
  LODWORD(STACK[0xCE8]) = v137;
  v138 = ((v129 << 14) ^ 0x8170C000) - ((2 * ((v129 << 14) ^ 0x8170C000)) & 0x23460000) - 1851580083;
  LODWORD(STACK[0x8C0]) = v138;
  LODWORD(v98) = v135 ^ v137 ^ v136 ^ v138;
  v139 = ((v129 << 18) ^ 0x170C0000) - ((2 * ((v129 << 18) ^ 0x170C0000)) & 0xB4100000) + 1510639787;
  LODWORD(STACK[0xCE0]) = v139;
  LODWORD(v98) = v98 ^ v139 ^ v131;
  LODWORD(STACK[0x7C0]) = v133;
  v140 = (v133 ^ ((v133 ^ 0xE52AFA7F) - ((2 * (v133 ^ 0xE52AFA7F) + 2) & 0xCA6B260E) - 449473784) ^ 0x13128B04 ^ ((v98 ^ 0x7B9A4C0A) - (v133 ^ 0x614F498A ^ v98) - ((2 * ((v98 ^ 0x7B9A4C0A) - (v133 ^ 0x614F498A ^ v98))) & 0xD9E43B06) - 319677053)) + (v98 ^ 0x7B9A4C0A);
  LODWORD(STACK[0x968]) = v140 - ((2 * v140) & 0x7D4CAACA);
  v141 = v128 ^ ~v100;
  LODWORD(STACK[0x958]) = ((v129 << 27) ^ 0x18000000) + ((v129 << 28) & 0x80000000);
  LODWORD(STACK[0x8B4]) = ((v129 << 28) ^ 0x30000000) - ((2 * ((v129 << 28) ^ 0x30000000)) & 0x40000000);
  v142 = (v129 >> 21) ^ 0xB62DCCCE;
  v143 = (v129 >> 19) ^ 0x44DEC688;
  v144 = (v129 >> 18) ^ 0x1B110F5E;
  LODWORD(v59) = (v129 >> 14) ^ 0x68852860;
  v145 = (v129 >> 13) ^ 0x63199040;
  LODWORD(v89) = (v129 >> 9) ^ 0x792521AE;
  v146 = (v129 >> 29) ^ (v129 >> 30) ^ 0x4D6A09B9;
  v147 = (v129 >> 11) ^ 0xBDFFF78F;
  v148 = v147 ^ (v129 >> 10) ^ 0xCBF2C2E1;
  v149 = (v129 >> 5) ^ 0xE12B96C9;
  v150 = (v129 >> 6) ^ 0x4466CB22;
  v151 = (v129 >> 4) ^ 0xEDD36D07;
  LODWORD(v100) = (v129 >> 28) ^ (v129 >> 27) ^ (v129 >> 15) ^ (v129 >> 2) ^ v144 ^ v142 ^ v143 ^ v59 ^ v145 ^ v89 ^ v150 ^ v149 ^ v151 ^ v146 ^ v148;
  LODWORD(STACK[0x934]) = v100;
  LODWORD(STACK[0x950]) = ((4 * v100) ^ 0x219B2E8C) - ((2 * ((4 * v100) ^ 0x219B2E8C)) & 0x364C42C0);
  LODWORD(STACK[0x948]) = ((32 * v100) ^ 0xCD97460) - 2014954568 - ((2 * ((32 * v100) ^ 0xCD97460)) & 0xFCC7740);
  LODWORD(STACK[0x944]) = ((v100 << 11) ^ 0x365D1800) - ((2 * ((v100 << 11) ^ 0x365D1800)) & 0xA58EC000);
  LODWORD(STACK[0x8AC]) = ((v129 << 12) ^ 0x205C3000) - ((2 * ((v129 << 12) ^ 0x205C3000)) & 0x2D850000);
  v152 = (v100 >> 27) ^ (v100 >> 21);
  LODWORD(STACK[0x938]) = ((4 * v152) ^ 0x1968) - 2 * (((4 * v152) ^ 0x1968) & 0x55C ^ (4 * v152) & 0x10);
  LODWORD(STACK[0x900]) = v152;
  LODWORD(STACK[0x920]) = ((32 * v152) ^ 0xCB40) - ((2 * ((32 * v152) ^ 0xCB40)) & 0x7740);
  LODWORD(STACK[0x908]) = ((v152 << 11) ^ 0x32D000) - ((2 * ((v152 << 11) ^ 0x32D000)) & 0x7C3000);
  v153 = (v129 << 26) ^ 0xC000000;
  v154 = v153 - ((2 * v153) & 0x10000000);
  LODWORD(STACK[0x8A8]) = v153 - ((2 * v153) & 0x58000000);
  v155 = (v129 >> 25) ^ 0x9C16F17D ^ (v129 >> 22) ^ 0xC5F55EB9;
  v156 = HIWORD(v129) ^ 0xAEA80EA4;
  LODWORD(v100) = (v129 >> 12) ^ 0xAEB924AF;
  v157 = (v129 >> 20) ^ (v129 >> 1) ^ v155 ^ v142 ^ v143 ^ v144 ^ v156 ^ v145 ^ v59 ^ v100;
  v158 = (v129 >> 7) ^ 0x2910B469;
  v159 = v157 ^ v147 ^ v158 ^ v150 ^ v151;
  LODWORD(STACK[0x8E0]) = -1073741824 * v141;
  LODWORD(STACK[0x854]) = (v141 << 31) | 0x3A8C8133;
  LODWORD(STACK[0x898]) = ((32 * v159) ^ 0xFBC234A0) - ((2 * ((32 * v159) ^ 0xFBC234A0)) & 0x4B85C40);
  LODWORD(STACK[0x88C]) = ((4 * v159) ^ 0x5F784694) - ((2 * ((4 * v159) ^ 0x5F784694)) & 0x186DC658);
  v160 = (v159 >> 27) ^ (v129 >> 31) ^ (v159 >> 21);
  LODWORD(STACK[0x848]) = v160;
  LODWORD(STACK[0x850]) = v159;
  LODWORD(STACK[0x890]) = ((32 * v160) ^ 0xD4A0) - ((2 * ((32 * v160) ^ 0xD4A0)) & 0x5880);
  LODWORD(STACK[0x888]) = ((4 * v160) ^ 0x1A94) - ((2 * ((4 * v160) ^ 0x1A94)) & 0x158);
  LODWORD(STACK[0x858]) = ((v159 << 11) ^ 0xF08D2800) - ((2 * ((v159 << 11) ^ 0xF08D2800)) & 0x8CADA000);
  LODWORD(STACK[0x860]) = ((v160 << 11) ^ 0x352800) - ((2 * ((v160 << 11) ^ 0x352800)) & 0x28000);
  v161 = (LODWORD(STACK[0x404]) ^ (v129 << 8)) - ((2 * (LODWORD(STACK[0x404]) ^ (v129 << 8))) & 0xF22D1C00);
  v162 = HIBYTE(v129) ^ (v129 >> 17) ^ v100 ^ v59 ^ v155 ^ v142 ^ v143 ^ v156 ^ v146;
  LOBYTE(v142) = v162 & 0xA9 ^ 0x81 | v162 & 0xA9 ^ 0x28;
  LODWORD(v89) = v89 ^ (v129 >> 8) ^ v158 ^ v150 ^ v149 ^ v148 ^ v162;
  v163 = (((v129 ^ 0xB31205C3) - 1836878687 - ((2 * (v129 ^ 0xB31205C3)) & 0x2506E942)) ^ 0x928374A1) << ((35 * ((v142 - 83 - 2 * v142) ^ 0xAD) - ((6 * ((v142 - 83 - 2 * v142) ^ 0xAD)) & 8) + 4) ^ 4);
  LODWORD(STACK[0xD18]) = v163 - ((2 * v163) & 0x95B233AA);
  LODWORD(v163) = (((v89 << 11) ^ 0x84A67000) - 1311262991 - ((2 * ((v89 << 11) ^ 0x84A67000)) & 0x63AF6000)) ^ 0xB1D7B6F1 | (v89 >> 21) ^ 0x5B;
  LODWORD(STACK[0xD30]) = ((4 * v132) ^ 0x2B715F30) + 1675320116 - 2 * (((4 * v132) ^ 0x2B715F30) & 0x63DB5B3C ^ (4 * v132) & 8);
  v164 = (v161 + 2031521535) ^ LODWORD(STACK[0x910]) ^ (((v129 << 15) ^ 0x2E18000) - ((2 * ((v129 << 15) ^ 0x2E18000)) & 0xFBAE0000) + 2111256085) ^ (((v129 << 24) ^ 0xC3000000) - ((2 * ((v129 << 24) ^ 0xC3000000)) & 0x1A000000) + 225838074);
  LODWORD(v100) = ((v129 << 7) ^ 0x8902E180) - ((2 * ((v129 << 7) ^ 0x8902E180)) & 0x3B771C00) - 1648652756;
  LODWORD(STACK[0x83C]) = v100;
  v165 = ((v129 << 10) ^ 0x48170C00) - ((2 * ((v129 << 10) ^ 0x48170C00)) & 0x73DDC800) - 1175526334;
  LODWORD(STACK[0x910]) = v165;
  v166 = v164 ^ v100 ^ v165 ^ LODWORD(STACK[0xCE8]);
  v167 = ((v129 << 16) ^ 0x5C30000) - ((2 * ((v129 << 16) ^ 0x5C30000)) & 0x30B60000) - 1738829488;
  LODWORD(STACK[0x82C]) = v167;
  LODWORD(v100) = ((v129 << 20) ^ 0x5C300000) - ((2 * ((v129 << 20) ^ 0x5C300000)) & 0xDE400000) + 1865140187;
  LODWORD(STACK[0x834]) = v100;
  v168 = v166 ^ LODWORD(STACK[0xCDC]) ^ v167 ^ LODWORD(STACK[0xCE0]) ^ v100;
  v169 = ((v129 << 23) ^ 0xE1800000) - ((2 * ((v129 << 23) ^ 0xE1800000)) & 0xF4000000) - 96067630;
  LODWORD(STACK[0x87C]) = v169;
  LODWORD(v100) = ((v129 << 22) ^ 0x70C00000) - ((2 * ((v129 << 22) ^ 0x70C00000)) & 0x36000000) + 453885338;
  LODWORD(STACK[0x878]) = v100;
  LODWORD(STACK[0x874]) = v154 + 199487663;
  v170 = ((v129 << 25) ^ 0x86000000) - ((2 * ((v129 << 25) ^ 0x86000000)) & 0x78000000) - 1134434734;
  LODWORD(STACK[0x7B8]) = v170;
  LODWORD(STACK[0xCB8]) = v168 ^ v133 ^ v100 ^ v169 ^ v170 ^ (v154 + 199487663) ^ LODWORD(STACK[0xD10]) ^ v89 ^ (((4 * v89) ^ 0x2DC25338) - ((2 * ((4 * v89) ^ 0x2DC25338)) & 0x266D7420) + 322353681) ^ (((32 * v89) ^ 0x6E1299C0) - ((2 * ((32 * v89) ^ 0x6E1299C0)) & 0xE50E87C0) + 1921467365) ^ (((32 * (v89 >> 21)) ^ 0xB60) - ((2 * ((32 * (v89 >> 21)) ^ 0xB60)) & 0x2840) + 107746362) ^ (v163 - ((2 * v163) & 0xF88076CA) + 2084584293);
  v171 = ((v132 << 13) ^ 0x8AF98000) + 556494547 - ((2 * ((v132 << 13) ^ 0x8AF98000)) & 0x4256C000);
  LODWORD(STACK[0xD28]) = v171;
  v172 = ((v132 << 14) ^ 0x15F30000) - 1017855411 - ((2 * ((v132 << 14) ^ 0x15F30000)) & 0x86A98000);
  LODWORD(STACK[0xCE4]) = v172;
  LODWORD(v100) = STACK[0x784];
  v173 = v172 ^ 0xC354C24D | (LODWORD(STACK[0x784]) >> 18) & 0x1FFF ^ 0x17CD;
  LODWORD(STACK[0xD10]) = (((4 * (v89 >> 21)) ^ 0x16C) - 2 * (((4 * (v89 >> 21)) ^ 0x16C) & 0xAB8 ^ (4 * (v89 >> 21)) & 0x10) - 582243672) ^ (((v89 >> 21 << 11) ^ 0x2D800) - ((2 * ((v89 >> 21 << 11) ^ 0x2D800)) & 0x5A8000) + 204292920);
  LODWORD(v163) = (((v171 ^ 0x212B6ED3 | (v100 >> 19)) ^ 0xBE6) - ((2 * ((v171 ^ 0x212B6ED3 | (v100 >> 19)) ^ 0xBE6)) & 0x6EB1E6A2) + 928576337) ^ (v173 - ((2 * v173) & 0x5BD7C6A4) - 1377049774);
  LODWORD(STACK[0x9DC]) = ((v132 << 6) ^ 0xB715F300) - 566485592 + (~(2 * ((v132 << 6) ^ 0xB715F300)) | 0x4387C4FF);
  HIDWORD(v8) = v163 ^ 0x1661;
  LODWORD(v8) = v163 ^ 0x49190000;
  LODWORD(STACK[0x9E0]) = (v8 >> 13) - ((2 * (v8 >> 13)) & 0xA0DF3454);
  LODWORD(STACK[0x870]) = ((v132 << 17) ^ 0xAF980000) - ((2 * ((v132 << 17) ^ 0xAF980000)) & 0xF4700000);
  v174 = ((v132 << 7) ^ 0x6E2BE600) - ((2 * ((v132 << 7) ^ 0x6E2BE600)) & 0xCF901000);
  LODWORD(v59) = ((v132 << 10) ^ 0x715F3000) - 1612273728 - ((2 * ((v132 << 10) ^ 0x715F3000)) & 0x3FCD5800);
  LODWORD(STACK[0xD08]) = ((v132 << 20) ^ 0x7CC00000) - ((2 * ((v132 << 20) ^ 0x7CC00000)) & 0xEFA00000);
  LODWORD(STACK[0xCF8]) = ((v132 << 22) ^ 0xF3000000) - ((2 * ((v132 << 22) ^ 0xF3000000)) & 0xE6800000);
  LODWORD(STACK[0xCF0]) = ((v132 << 24) ^ 0xCC000000) - ((2 * ((v132 << 24) ^ 0xCC000000)) & 0x5C000000);
  LODWORD(STACK[0x9D0]) = v132 << 29;
  LODWORD(STACK[0x86C]) = ((v132 << 28) ^ 0xC0000000) - ((v132 << 29) & 0x20000000);
  LODWORD(STACK[0xCD0]) = ((v132 << 25) ^ 0x98000000) - ((v132 << 26) & 0xC000000);
  LODWORD(STACK[0xCCC]) = ((v132 << 26) ^ 0x30000000) - ((v132 << 27) & 0x18000000);
  v175 = (v100 >> 19) ^ 0xDA9A9F13;
  LODWORD(v98) = ((v100 >> 29) | 0x2C21FAD0) ^ (v100 >> 30) ^ 0x6DC99F37;
  v176 = (v100 >> 25) ^ 0xF47DD1D6;
  LODWORD(STACK[0x9A0]) = v98;
  v177 = (v100 >> 22) ^ 0xE77544D1;
  v178 = (v100 >> 18) ^ 0x2676F9F4;
  v179 = WORD1(v100) ^ 0x31EDB00A;
  v180 = (v100 >> 15) ^ 0xC72D05C3;
  LODWORD(v89) = (v100 >> 12) ^ 0x675910FF;
  v181 = v132;
  v182 = v98 ^ ((v100 >> 31) | 0xB7F59EE2) ^ (v100 >> 26) ^ v176 ^ v177 ^ v175 ^ v178 ^ v179 ^ v180 ^ v89 ^ (v132 >> 3);
  LODWORD(v98) = (v132 >> 8) ^ 0x85C72832;
  LODWORD(STACK[0x9A4]) = v98;
  v183 = (v132 >> 10) ^ 0xEE5F0DA9;
  v184 = (v132 >> 7) ^ 0x5969D79C;
  v185 = (v132 >> 6) ^ 0xD41DC99E;
  v186 = v183 ^ v98 ^ v184 ^ v185;
  LODWORD(v98) = (v132 >> 4) ^ 0x69168DF5;
  v187 = v182 ^ v186 ^ v98;
  LODWORD(STACK[0x9CC]) = ((4 * v187) ^ 0x40BFE7D0) - 2 * (((4 * v187) ^ 0x40BFE7D0) & 0x405B7ADC ^ (4 * v187) & 8);
  LODWORD(STACK[0x9B8]) = v187;
  v188 = (v187 >> 27) ^ (v187 >> 21);
  LODWORD(STACK[0x9C8]) = ((32 * v188) ^ 0x1060) - ((2 * ((32 * v188) ^ 0x1060)) & 0x33C0);
  LODWORD(STACK[0x9C4]) = ((32 * v187) ^ 0x5FF3E80) - ((2 * ((32 * v187) ^ 0x5FF3E80)) & 0x1E461D80);
  LODWORD(STACK[0x9BC]) = ((v187 << 11) ^ 0x7FCFA000) - ((2 * ((v187 << 11) ^ 0x7FCFA000)) & 0x70414000);
  LODWORD(STACK[0x9B0]) = v188;
  LODWORD(STACK[0x9C0]) = ((4 * v188) ^ 0x20C) - ((2 * ((4 * v188) ^ 0x20C)) & 0x3CC0);
  LODWORD(STACK[0x800]) = ((32 * v132) ^ 0x5B8AF980) - ((2 * ((32 * v132) ^ 0x5B8AF980)) & 0x524CC880);
  LODWORD(STACK[0x9B4]) = (LODWORD(STACK[0x400]) ^ (v188 << 11)) - ((2 * (LODWORD(STACK[0x400]) ^ (v188 << 11))) & 0x7DA000);
  v189 = ((v132 << 11) ^ 0xE2BE6000) + 731479461 - ((2 * ((v132 << 11) ^ 0xE2BE6000)) & 0x5732F000);
  LODWORD(STACK[0x838]) = ((16 * v132) ^ 0xADC57CC0) - 2 * (((16 * v132) ^ 0xADC57CC0) & 0x57CD8850 ^ (16 * v132) & 0x10);
  LODWORD(STACK[0xD30]) ^= ((8 * v132) ^ 0x56E2BE60) + 887171148 - 2 * (((8 * v132) ^ 0x56E2BE60) & 0x34E12858 ^ (8 * v132) & 0x10);
  LODWORD(STACK[0xCC0]) = ((v132 << 18) ^ 0x5F300000) - ((2 * ((v132 << 18) ^ 0x5F300000)) & 0x47800000);
  LODWORD(STACK[0x928]) = ((v132 << 21) ^ 0xF9800000) - ((2 * ((v132 << 21) ^ 0xF9800000)) & 0x8B400000);
  LODWORD(STACK[0x8FC]) = ((v132 << 23) ^ 0xE6000000) + 817324080 - ((2 * ((v132 << 23) ^ 0xE6000000)) & 0x61000000);
  LODWORD(STACK[0x7F4]) = ((v132 << 19) ^ 0xBE600000) + 2111440499 - ((2 * ((v132 << 19) ^ 0xBE600000)) & 0xFBB00000);
  LODWORD(STACK[0x8F0]) = ((v132 << 27) ^ 0x60000000) - ((2 * ((v132 << 27) ^ 0x60000000)) & 0x70000000);
  v190 = (v100 >> 21) ^ 0xC4CC4991;
  v191 = (v100 >> 14) ^ 0x604FB167;
  LODWORD(v163) = (v100 >> 13) ^ 0x1F7BCB96;
  v192 = (v100 >> 28) ^ (v100 >> 27) ^ v190 ^ v175 ^ v178 ^ v180 ^ v191 ^ v163;
  v193 = (v100 >> 11) ^ 0x6E2B7811;
  v194 = v192 ^ v193 ^ (v181 >> 2);
  v195 = (v181 >> 9) ^ 0xDDD5010C;
  v196 = (v181 >> 5) ^ 0xFA951545;
  v197 = v194 ^ ((v100 >> 29) | 0x2C21FAD0) ^ (v100 >> 30) ^ 0x6DC99F37 ^ v183 ^ v195 ^ v185 ^ v196 ^ v98;
  LODWORD(STACK[0x7EC]) = ((4 * v197) ^ 0x835924C0) + 1313062054 - 2 * (((4 * v197) ^ 0x835924C0) & 0x4E43BCAC ^ (4 * v197) & 8);
  LODWORD(STACK[0x7DC]) = ((32 * v197) ^ 0x1AC92600) - ((2 * ((32 * v197) ^ 0x1AC92600)) & 0xAAE12900);
  v198 = (v197 >> 27) ^ (v197 >> 21);
  LODWORD(STACK[0x7C4]) = v197;
  LODWORD(STACK[0x7D4]) = ((4 * v198) ^ 0x1C68) - 2 * (((4 * v198) ^ 0x1C68) & 0xFFFFF81F ^ (4 * v198) & 4);
  LODWORD(STACK[0x7CC]) = ((v197 << 11) ^ 0xB2498000) - ((2 * ((v197 << 11) ^ 0xB2498000)) & 0x3DA50000);
  LODWORD(STACK[0x7B4]) = v198;
  LODWORD(STACK[0x7C8]) = ((32 * v198) ^ 0xE340) - ((2 * ((32 * v198) ^ 0xE340)) & 0x68C0);
  LODWORD(STACK[0x7BC]) = ((v198 << 11) ^ 0x38D000) - ((2 * ((v198 << 11) ^ 0x38D000)) & 0x299000);
  v199 = v59 + 1715;
  LODWORD(v59) = v174 - 406321075;
  LODWORD(STACK[0x9A8]) = v174 - 406321075;
  v200 = (v174 - 406321075) ^ v181 ^ v199;
  LODWORD(STACK[0x9AC]) = v199;
  LODWORD(STACK[0x7A8]) = v189;
  v201 = (v200 ^ ((v189 ^ 0x2B997DA5) - (v189 ^ 0x996B8C57 ^ v200) - ((2 * ((v189 ^ 0x2B997DA5) - (v189 ^ 0x996B8C57 ^ v200))) & 0xA0EA856C) - 797621578) ^ ((v200 ^ 0x4D0D0E0D) - ((2 * (v200 ^ 0x4D0D0E0D) + 2) & 0x2B440DE) - 2124799888) ^ 0xE3DD932B) + (v189 ^ 0x2B997DA5);
  LODWORD(STACK[0x84C]) = v201 - ((2 * v201) & 0xB8A8A6C);
  LODWORD(STACK[0x844]) = ((v181 << 12) ^ 0xC57CC000) - ((2 * ((v181 << 12) ^ 0xC57CC000)) & 0x40720000);
  v202 = (v181 << 16) ^ 0x57CC0000;
  v203 = v202 - ((2 * v202) & 0xAD660000);
  LODWORD(STACK[0x840]) = v202 + 687523504 + (~(2 * v202) | 0xAE0BFFFF);
  v204 = v89 ^ (v100 >> 20) ^ v163 ^ v191 ^ v179 ^ v190 ^ v177 ^ v176 ^ v175 ^ v178 ^ v193 ^ (v181 >> 1) ^ v184 ^ v185 ^ v98;
  LODWORD(STACK[0x828]) = ((32 * v204) ^ 0x722F23A0) - ((2 * ((32 * v204) ^ 0x722F23A0)) & 0x7155E100);
  LODWORD(STACK[0x824]) = ((4 * v204) ^ 0x8E45E474) + 750113907 - 2 * (((4 * v204) ^ 0x8E45E474) & 0x2CB5D478 ^ (4 * v204) & 8);
  v205 = STACK[0x780];
  v206 = (LODWORD(STACK[0x780]) >> 31) - 579860786;
  LODWORD(STACK[0x814]) = v204;
  LODWORD(v98) = v206 ^ (v204 >> 27) ^ (v204 >> 21);
  LODWORD(STACK[0x80C]) = v98;
  LODWORD(STACK[0x820]) = ((v98 << 11) ^ 0x800E7800) - ((2 * ((v98 << 11) ^ 0x800E7800)) & 0x7F19E000);
  LODWORD(STACK[0x818]) = ((v204 << 11) ^ 0x8BC8E800) - ((2 * ((v204 << 11) ^ 0x8BC8E800)) & 0xA6DEC000);
  LODWORD(STACK[0x81C]) = ((32 * v98) ^ 0xAE0039E0) - ((2 * ((32 * v98) ^ 0xAE0039E0)) & 0x23184E80);
  LODWORD(STACK[0x810]) = ((4 * v98) ^ 0x75C0073C) - ((2 * ((4 * v98) ^ 0x75C0073C)) & 0x43B09F0);
  LODWORD(v163) = v176 ^ (v100 >> 17) ^ v177 ^ v190 ^ v175 ^ v179 ^ v191 ^ v89 ^ v193 ^ (HIBYTE(v205) | 0xE7EA2B00) ^ LODWORD(STACK[0x9A0]) ^ v185 ^ v196 ^ v183 ^ v195 ^ LODWORD(STACK[0x9A4]) ^ v184;
  LODWORD(STACK[0x780]) = v163 >> 21;
  v207 = (((((v163 >> 21) ^ 0x1B2) << ((v163 >> 21) & 2 ^ 2)) - 1848671793 - ((2 * (((v163 >> 21) ^ 0x1B2) << ((v163 >> 21) & 2 ^ 2))) & 0x39E)) ^ 0x91CF81CF) << ((v163 >> 21) & 2);
  v208 = LODWORD(STACK[0xD18]) + 1255741909;
  LODWORD(STACK[0x964]) = v208;
  v209 = LODWORD(STACK[0xCB8]) ^ v208;
  v210 = LODWORD(STACK[0xD10]) ^ v209;
  v211 = v210 ^ 0xC2501EC9;
  LODWORD(STACK[0x884]) = (((v210 ^ 0xC2501EC9) << 10) ^ 0x9D39A800) - ((2 * (((v210 ^ 0xC2501EC9) << 10) ^ 0x9D39A800)) & 0x98B0A000);
  LODWORD(STACK[0x798]) = ((4 * (v210 ^ 0xC2501EC9)) ^ 0x5F9D39A8) - ((2 * ((4 * (v210 ^ 0xC2501EC9)) ^ 0x5F9D39A8)) & 0x7372CBC0);
  v212 = LODWORD(STACK[0xCD0]) - 2021518330;
  LODWORD(STACK[0xD18]) = v212;
  LODWORD(v100) = LODWORD(STACK[0xCCC]) + 215828665;
  LODWORD(STACK[0xCD0]) = v100;
  v213 = v212 ^ v100 ^ (((v181 << 8) ^ 0xDC57CC00) - ((2 * ((v181 << 8) ^ 0xDC57CC00)) & 0xDAD50E00) - 311785542) ^ (((v181 << 15) ^ 0x2BE60000) - ((2 * ((v181 << 15) ^ 0x2BE60000)) & 0x6FDC0000) - 1209131275);
  v214 = LODWORD(STACK[0xD08]) + 2010174844;
  LODWORD(STACK[0xD10]) = v214;
  v215 = v203 + 1454621271;
  LODWORD(STACK[0x9A4]) = v203 + 1454621271;
  v216 = LODWORD(STACK[0xCF8]) - 213585129;
  LODWORD(STACK[0xD08]) = v216;
  v217 = LODWORD(STACK[0xCF0]) - 1365998679;
  LODWORD(STACK[0x9A0]) = v217;
  v218 = LODWORD(STACK[0xCC0]) + 599945506;
  LODWORD(STACK[0xCC0]) = v218;
  LODWORD(v100) = LODWORD(STACK[0x928]) + 1168637338;
  LODWORD(STACK[0xCCC]) = v100;
  v219 = LODWORD(STACK[0x8FC]) + 1070;
  LODWORD(STACK[0x7B0]) = v219;
  v220 = LODWORD(STACK[0x8F0]) - 1171817832;
  LODWORD(STACK[0x7AC]) = v220;
  v221 = v213 ^ v59 ^ v199 ^ v189 ^ LODWORD(STACK[0xD28]) ^ v215 ^ v218 ^ v214 ^ v100 ^ v216 ^ v219 ^ v217 ^ v220 ^ LODWORD(STACK[0xD30]) ^ v163 ^ (((32 * v163) ^ 0xCB4E8720) - ((2 * ((32 * v163) ^ 0xCB4E8720)) & 0x42FB0A00) - 1585609450) ^ (((v163 << 11) ^ 0xD3A1C800) - ((2 * ((v163 << 11) ^ 0xD3A1C800)) & 0xAD49F000) + 1453652117) ^ (((4 * v163) ^ 0xD969D0E4) + 1640210186 - 2 * (((4 * v163) ^ 0xD969D0E4) & 0x61C39F18 ^ (4 * v163) & 0x10)) ^ (((32 * (v163 >> 21)) ^ 0x3640) - ((2 * ((32 * (v163 >> 21)) ^ 0x3640)) & 0x76C0) - 1204733074) ^ (((v163 >> 21 << 11) ^ 0xD9000) - ((2 * ((v163 >> 21 << 11) ^ 0xD9000)) & 0x258000) + 1674756700) ^ (v207 - ((2 * v207) & 0x78BB7C16) - 1134707189) ^ LODWORD(STACK[0xD20]);
  LODWORD(STACK[0xD20]) = ((8 * (v210 ^ 0xC2501EC9)) ^ 0xBF3A7350) - ((2 * ((8 * (v210 ^ 0xC2501EC9)) ^ 0xBF3A7350)) & 0xD79F22F0);
  LODWORD(STACK[0x928]) = ((2 * (v210 ^ 0xC2501EC9)) ^ 0xAFCE9CD4) - 2 * (((2 * (v210 ^ 0xC2501EC9)) ^ 0xAFCE9CD4) & 0x3834585C ^ (2 * (v210 ^ 0xC2501EC9)) & 8);
  v222 = (((v210 ^ 0xC2501EC9) << 7) ^ 0xF3A73500) - ((2 * (((v210 ^ 0xC2501EC9) << 7) ^ 0xF3A73500)) & 0x6F05C00);
  LODWORD(STACK[0x8FC]) = (((v210 ^ 0xC2501EC9) << 6) ^ 0xF9D39A80) - 567783214 - ((2 * (((v210 ^ 0xC2501EC9) << 6) ^ 0xF9D39A80)) & 0xBC50A300);
  v223 = (((v210 ^ 0xC2501EC9) << 20) ^ 0xE6A00000) - (STACK[0x3FC] & (2 * (((v210 ^ 0xC2501EC9) << 20) ^ 0xE6A00000)));
  v224 = (((v210 ^ 0xC2501EC9) << 13) ^ 0xE9CD4000) - ((2 * (((v210 ^ 0xC2501EC9) << 13) ^ 0xE9CD4000)) & 0x25D54000);
  LODWORD(STACK[0x8F0]) = (((v210 ^ 0xC2501EC9) << 17) ^ 0x9CD40000) - ((2 * (((v210 ^ 0xC2501EC9) << 17) ^ 0x9CD40000)) & 0x6A1C0000);
  LODWORD(STACK[0x77C]) = (((v210 ^ 0xC2501EC9) << 22) ^ 0x9A800000) - ((2 * (((v210 ^ 0xC2501EC9) << 22) ^ 0x9A800000)) & 0xB7000000);
  v225 = (STACK[0xD00] & 6 ^ 4) + (STACK[0xD00] & 6 ^ 2);
  v226 = (v210 ^ 0x15B750A3) >> ((v225 ^ 0xFD) + ((2 * v225) & 0x18) + 3);
  v227 = (((v210 ^ 0xC2501EC9) << 25) ^ 0xD4000000) - ((2 * (((v210 ^ 0xC2501EC9) << 25) ^ 0xD4000000)) & 0x9C000000);
  LODWORD(STACK[0x778]) = (((v210 ^ 0xC2501EC9) << 24) ^ 0x6A000000) - ((2 * (((v210 ^ 0xC2501EC9) << 24) ^ 0x6A000000)) & 0xFA000000);
  LODWORD(STACK[0x8D8]) = (((v210 ^ 0xC2501EC9) << 29) ^ 0x40000000) - (((v210 ^ 0xC2501EC9) & 1) << 30);
  v228 = (v209 >> 30) ^ 0x2BA48A49 ^ (v209 >> 29) ^ 0x284559C3;
  v229 = v226 - ((2 * v226) & 0x538EBCD4) + 700931690;
  v230 = (v209 >> 22) ^ (v209 >> 25) | 0x176EB800;
  v231 = (v210 >> 19) ^ 0xBDC6D854;
  v232 = (v210 >> 18) ^ 0xA49F7A72;
  v233 = HIWORD(v210) ^ 0xBE147065;
  v234 = (v210 >> 10) ^ 0x1861DF3F;
  LODWORD(STACK[0x7A4]) = v234;
  v235 = (v210 >> 8) ^ 0x3A8569D8;
  LODWORD(v59) = (v210 >> 7) ^ 0xD6FA133F;
  v236 = (v210 >> 4) ^ 0xC90317D0;
  v237 = v230 ^ ((v209 >> 31) | 0xDDDAA50A) ^ (v209 >> 26) ^ v228 ^ ((v210 ^ 0xC2501EC9) >> 15) ^ ((v210 ^ 0xC2501EC9) >> 12) ^ ((v210 ^ 0xC2501EC9) >> 3) ^ v231 ^ v232 ^ v233 ^ v234 ^ v235 ^ v59 ^ v236 ^ v229;
  v238 = (((v210 ^ 0xC2501EC9) << 28) ^ 0xA0000000) - 1197753721 - ((2 * (((v210 ^ 0xC2501EC9) << 28) ^ 0xA0000000)) & 0x60000000);
  LODWORD(STACK[0x880]) = v238;
  LODWORD(STACK[0x8C8]) = ((4 * v237) ^ 0x85486344) - 2 * (((4 * v237) ^ 0x85486344) & 0x73D7590C ^ (4 * v237) & 8);
  LODWORD(STACK[0x8BC]) = ((32 * v237) ^ 0x2A431A20) - ((2 * ((32 * v237) ^ 0x2A431A20)) & 0x2503C9C0);
  LODWORD(STACK[0x8B8]) = ((v237 << 11) ^ 0x90C68800) - ((2 * ((v237 << 11) ^ 0x90C68800)) & 0x4585F000);
  LODWORD(STACK[0x89C]) = v237;
  v239 = ((v229 >> 30) | 0x290A3E0C) ^ (v237 >> 21) ^ ((v237 >> 27) | 0xDBFD2C0);
  LODWORD(STACK[0x894]) = v239;
  LODWORD(STACK[0x8B0]) = ((v239 << 11) ^ 0xAF7E5000) - ((2 * ((v239 << 11) ^ 0xAF7E5000)) & 0xEC44000);
  LODWORD(STACK[0x8A4]) = ((4 * v239) ^ 0x92D7BF28) - ((2 * ((4 * v239) ^ 0x92D7BF28)) & 0x35276858);
  LODWORD(STACK[0x8A0]) = ((32 * v239) ^ 0x96BDF940) - ((2 * ((32 * v239) ^ 0x96BDF940)) & 0x1178A5C0);
  LODWORD(STACK[0xD00]) = v222 + 58207806;
  v240 = ((((v210 ^ 0xC2501EC9) << 12) ^ 0x74E6A000) - ((2 * (((v210 ^ 0xC2501EC9) << 12) ^ 0x74E6A000)) & 0x24618000) + 305186656) ^ v211 ^ (((v211 << 19) ^ 0x73500000) - ((2 * ((v211 << 19) ^ 0x73500000)) & 0x41B00000) + 551524715) ^ (v222 + 58207806);
  v241 = v233 ^ (v210 >> 14) ^ 0x5C5B613C;
  v242 = LODWORD(STACK[0x884]) - 866627584;
  LODWORD(STACK[0xCF0]) = v242;
  v223 += 2054976261;
  LODWORD(STACK[0xCF8]) = v223;
  LODWORD(STACK[0x76C]) = v224 + 317371719;
  LODWORD(v89) = (((v210 ^ 0xC2501EC9) << 11) ^ 0x3A735000) - ((2 * (((v210 ^ 0xC2501EC9) << 11) ^ 0x3A735000)) & 0xBF006000) - 545245926;
  LODWORD(STACK[0x764]) = v89;
  LODWORD(v98) = ((v211 << 18) ^ 0x39A80000) - ((2 * ((v211 << 18) ^ 0x39A80000)) & 0xE0280000) - 266976330;
  LODWORD(STACK[0x768]) = v98;
  v243 = (v224 + 317371719) ^ ((((v210 ^ 0xC2501EC9) << 14) ^ 0xD39A8000) - 537075745 - ((2 * (((v210 ^ 0xC2501EC9) << 14) ^ 0xD39A8000)) & 0xBFF98000) + 1666);
  LODWORD(STACK[0x884]) = v243;
  v244 = (((v210 ^ 0xC2501EC9) << 16) ^ 0x4E6A0000) - ((2 * (((v210 ^ 0xC2501EC9) << 16) ^ 0x4E6A0000)) & 0x37A60000) + 466819949;
  LODWORD(STACK[0x85C]) = v244;
  v245 = v89 ^ v242 ^ v243 ^ v244 ^ v98 ^ v223;
  v246 = (((v210 ^ 0xC2501EC9) << 21) ^ 0xCD400000) - ((2 * (((v210 ^ 0xC2501EC9) << 21) ^ 0xCD400000)) & 0x99999999) + 1288800033;
  LODWORD(v89) = v246 ^ (v227 + 1329271095);
  v227 += 1329271095;
  LODWORD(STACK[0x830]) = v227;
  HIDWORD(v8) = v240 ^ 0x5F;
  LODWORD(v8) = v245 ^ v89 ^ v240 ^ 0xAAEDB400;
  v247 = (v210 >> 12) ^ 0xF4CC695;
  v248 = v230 ^ ((v210 ^ 0xC2501EC9) >> 21) ^ ((v210 ^ 0xC2501EC9) >> 20) ^ ((v210 ^ 0xC2501EC9) >> 13) ^ v241 ^ v232 ^ v231 ^ v247;
  v249 = (v8 >> 9) - ((2 * (v8 >> 9)) & 0x67B10B72) + 869828025;
  LODWORD(STACK[0x808]) = (((v249 >> 23) | v238 ^ 0xB89BBA87) ^ 0x2F) - ((2 * (((v249 >> 23) | v238 ^ 0xB89BBA87) ^ 0x2F)) & 0xDB172FDE);
  LODWORD(v98) = (((v210 ^ 0xC2501EC9) << 26) ^ 0xA8000000) - ((2 * (((v210 ^ 0xC2501EC9) << 26) ^ 0xA8000000)) & 0x68000000) + 910669284;
  LODWORD(STACK[0x864]) = v98;
  LODWORD(STACK[0x804]) = (v98 & 0xFC069000 ^ (v249 << 9) ^ 0xB1100800) - ((2 * (v98 & 0xFC069000 ^ (v249 << 9) ^ 0xB1100800)) & 0xA6872000);
  LODWORD(STACK[0xCB8]) ^= ~LODWORD(STACK[0x964]);
  v250 = (v210 >> 11) ^ ((v210 ^ 0xC2501EC9) >> 1) ^ 0xBC23FA1E ^ v248;
  v251 = (v210 >> 6) ^ 0x3B216928 ^ v59 ^ v236 ^ v250;
  LODWORD(STACK[0x7FC]) = ((32 * v251) ^ 0x23E4A960) - ((2 * ((32 * v251) ^ 0x23E4A960)) & 0x910F8D00);
  v252 = (v250 >> 30) | 0x15C8;
  LODWORD(STACK[0x7F8]) = ((4 * v251) ^ 0x447C952C) - ((2 * ((4 * v251) ^ 0x447C952C)) & 0xA47ED8B0);
  LOBYTE(v250) = ((v249 >> 23) & 0xB1 ^ 0x90) + ((v249 >> 23) & 0xB1 ^ 0x21);
  LODWORD(STACK[0x7E0]) = v251;
  LODWORD(STACK[0x7F0]) = ((v251 << 11) ^ 0xF92A5800) - ((2 * ((v251 << 11) ^ 0xF92A5800)) & 0x47798000);
  LOBYTE(v250) = (v250 - ((2 * v250) & 0xC3) + 101) & 0xF1 ^ 0x61;
  v253 = (((v251 ^ 0x111F254B) - 0x2A41141B595DE5F0 - ((2 * (v251 ^ 0x111F254B)) & 0x4D443420)) ^ 0xD5BEEBE4A6A21A10) >> ((-91 * v250 - ((74 * v250) & 0x96) + 75) ^ 0x4B);
  v254 = v252 ^ (v251 >> 27) ^ (v253 - ((2 * v253) & 0x2A6E) - 27337);
  LODWORD(STACK[0x7D0]) = v254;
  LODWORD(STACK[0x7E8]) = ((32 * v254) ^ 0x101FA0) - ((2 * ((32 * v254) ^ 0x101FA0)) & 0x27FD40);
  LODWORD(STACK[0x7E4]) = ((4 * v254) ^ 0x203F4) - ((2 * ((4 * v254) ^ 0x203F4)) & 0x78D90);
  LODWORD(STACK[0x7D8]) = ((v254 << 11) ^ 0x407E800) - ((2 * ((v254 << 11) ^ 0x407E800)) & 0xB835000);
  LODWORD(v253) = (v210 ^ 0x15B750A3) >> (v248 & 0x15 ^ 4 | v248 & 0x15 ^ 0x11);
  LODWORD(STACK[0x868]) = v210;
  v255 = HIBYTE(v209) ^ (v210 >> 17) ^ (v210 >> 9) ^ (v210 >> 5) ^ v228 ^ v230 ^ (v210 >> 11) ^ v231 ^ v241 ^ v247 ^ LODWORD(STACK[0x7A4]) ^ v235 ^ v59 ^ (v210 >> 6) ^ 0xDDD48FB9;
  LODWORD(v253) = v255 ^ (v253 - ((2 * v253) & 0x90A) - 31611);
  v256 = ((4 * (v255 >> 21)) ^ 0xDA8) - ((2 * ((4 * (v255 >> 21)) ^ 0xDA8)) & 0x38);
  v257 = STACK[0x780];
  v258 = v221 ^ 0x3685F8D0 ^ LODWORD(STACK[0x780]);
  LODWORD(STACK[0x7A4]) = ((8 * v258) ^ 0xAAF21588) - 2 * (((8 * v258) ^ 0xAAF21588) & 0x6DC2A998 ^ (8 * v258) & 0x10);
  LODWORD(STACK[0x784]) = v255 >> 21;
  LODWORD(v59) = ((32 * (v255 >> 21)) ^ 0x6D40) - ((2 * ((32 * (v255 >> 21)) ^ 0x6D40)) & 0x14D80);
  v259 = (LODWORD(STACK[0x3F8]) ^ (v255 >> 21 << 11)) - ((2 * (LODWORD(STACK[0x3F8]) ^ (v255 >> 21 << 11))) & 0x196000);
  LODWORD(STACK[0x964]) = ((16 * v258) ^ 0x55E42B10) - ((2 * ((16 * v258) ^ 0x55E42B10)) & 0x7D770420);
  LODWORD(STACK[0x7A0]) = ((4 * v258) ^ 0x55790AC4) - ((2 * ((4 * v258) ^ 0x55790AC4)) & 0x50850BE0);
  LODWORD(STACK[0x774]) = ((v258 << 11) ^ 0xF2158800) - ((2 * ((v258 << 11) ^ 0xF2158800)) & 0x5A5A1000);
  v260 = v129 ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x854]) ^ LODWORD(STACK[0x8D0]) ^ (LODWORD(STACK[0x8A8]) - 1388755466) ^ (LODWORD(STACK[0x8AC]) - 1765636225) ^ LODWORD(STACK[0x8C0]) ^ LODWORD(STACK[0x82C]) ^ LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0x83C]) ^ LODWORD(STACK[0x910]) ^ LODWORD(STACK[0xCDC]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0x834]);
  LODWORD(v100) = LODWORD(STACK[0x7C0]) ^ LODWORD(STACK[0x7B8]);
  v261 = LODWORD(STACK[0x8B4]) + 599820965;
  LODWORD(STACK[0xCE0]) = v261;
  v262 = v260 ^ v100 ^ v261 ^ LODWORD(STACK[0x850]) ^ LODWORD(STACK[0x848]) ^ (LODWORD(STACK[0x88C]) + 204923693) ^ (LODWORD(STACK[0x898]) - 2107888074) ^ (LODWORD(STACK[0x858]) - 967388451) ^ (LODWORD(STACK[0x888]) + 1967022253) ^ (LODWORD(STACK[0x890]) - 478335911) ^ (LODWORD(STACK[0x860]) + 2017542761) ^ (((v210 << 27) ^ 0x18000000) + (v210 >> 3 << 31) - 955994603) ^ (((v210 << 8) ^ 0xB750A300) - ((2 * ((v210 << 8) ^ 0xB750A300)) & 0xF39D4400) - 103898514) ^ (((v210 << 15) ^ 0xA8518000) - ((2 * ((v210 << 15) ^ 0xA8518000)) & 0xD76E0000) - 340311642) ^ (((v210 << 23) ^ 0x51800000) - ((2 * ((v210 << 23) ^ 0x51800000)) & 0xA0000000) - 803101121) ^ v98 ^ v244;
  LODWORD(v100) = LODWORD(STACK[0x798]) - 1179032094;
  LODWORD(STACK[0x83C]) = v100;
  LODWORD(v163) = LODWORD(STACK[0xD20]) + 1808765306;
  LODWORD(STACK[0x848]) = v163;
  v263 = v262 ^ LODWORD(STACK[0x764]) ^ v163 ^ v100 ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0x76C]) ^ LODWORD(STACK[0x768]);
  LODWORD(v100) = LODWORD(STACK[0x77C]) + 1537189514;
  LODWORD(STACK[0x834]) = v100;
  LODWORD(v98) = LODWORD(STACK[0x778]) + 2104710271;
  LODWORD(STACK[0x82C]) = v98;
  v264 = v263 ^ LODWORD(STACK[0xCF8]) ^ v246 ^ v100 ^ v98 ^ v227 ^ v253 ^ (((4 * v253) ^ 0xB5259E50) - ((2 * ((4 * v253) ^ 0xB5259E50)) & 0x5AA72048) - 313290714) ^ (((32 * v253) ^ 0xA92CF280) - ((2 * ((32 * v253) ^ 0xA92CF280)) & 0x6570F040) + 850950185) ^ (((v253 << 11) ^ 0x4B3CA000) - ((2 * ((v253 << 11) ^ 0x4B3CA000)) & 0x5074D000) - 1472567246) ^ (v256 + 2114633759) ^ (v59 - 1044732193) ^ (v259 + 1586279001);
  LODWORD(STACK[0x910]) = ((32 * v258) ^ 0xABC85620) - ((2 * ((32 * v258) ^ 0xABC85620)) & 0x7B13A80);
  LODWORD(STACK[0x860]) = ((v258 << 14) ^ 0x90AC4000) - ((2 * ((v258 << 14) ^ 0x90AC4000)) & 0x5B918000);
  LODWORD(STACK[0x850]) = ((v258 << 18) ^ 0xAC40000) - ((2 * ((v258 << 18) ^ 0xAC40000)) & 0x5E580000);
  LODWORD(STACK[0xCDC]) = ((v258 << 23) ^ 0x58800000) - ((2 * ((v258 << 23) ^ 0x58800000)) & 0x74000000);
  LODWORD(STACK[0x8E8]) = ((v258 << 17) ^ 0x85620000) - ((2 * ((v258 << 17) ^ 0x85620000)) & 0x80F40000);
  LODWORD(STACK[0x798]) = ((v258 << 22) ^ 0xAC400000) - ((2 * ((v258 << 22) ^ 0xAC400000)) & 0xF2000000);
  LODWORD(STACK[0x7C0]) = ((v258 << 21) ^ 0x56200000) - ((2 * ((v258 << 21) ^ 0x56200000)) & 0xA400000);
  v265 = ((v258 << 26) ^ 0xC4000000) - ((v258 << 27) & 0x20000000);
  LODWORD(STACK[0x77C]) = ((v258 << 27) ^ 0x88000000) - ((2 * ((v258 << 27) ^ 0x88000000)) & 0x50000000);
  LODWORD(STACK[0xD20]) = ((v258 << 28) ^ 0x10000000) - 1224461531 + (~(2 * ((v258 << 28) ^ 0x10000000)) | 0x9FFFFFFF);
  LODWORD(v98) = (v221 >> 21) ^ 0xEF95A843;
  LODWORD(v253) = (v221 >> 18) ^ 0x4F077F45;
  LODWORD(STACK[0x768]) = v98;
  v266 = (v221 >> 19) ^ 0xED6DB571;
  v267 = (v221 >> 14) ^ 0x5791C91A;
  LODWORD(v163) = (v221 >> 13) ^ 0xDE4841F;
  LODWORD(STACK[0x764]) = v267;
  v268 = (v221 >> 11) ^ 0xC214F1C6;
  v269 = ((v221 >> 30) | 0x958826FC) ^ (v221 >> 29) ^ 0x9767609E ^ (v258 >> 10) ^ 0xFE80D391 ^ (v258 >> 9) ^ 0xBAEF9D62;
  LODWORD(STACK[0x76C]) = v269;
  LODWORD(v100) = (v221 >> 27) ^ (v221 >> 15) ^ v253 ^ v98 ^ v266 ^ v267 ^ v163 ^ v268 ^ (((v221 ^ 0x3685F8D0) >> 28) | 0x50BF96D0) ^ (v258 >> 2);
  v270 = (v258 >> 6) ^ 0x7DBBA110;
  v271 = (v258 >> 5) ^ 0x323D6F4;
  LODWORD(STACK[0x778]) = v271;
  v272 = (v258 >> 4) ^ 0xE85489C7;
  v273 = v258;
  v274 = v100 ^ v269 ^ v270 ^ v271 ^ v272;
  LODWORD(STACK[0x8A8]) = v274;
  LODWORD(STACK[0x8D0]) = ((v274 << 11) ^ 0x69682800) - ((2 * ((v274 << 11) ^ 0x69682800)) & 0xC5C92000);
  LODWORD(STACK[0x8C0]) = ((32 * v274) ^ 0xFDA5A0A0) - ((2 * ((32 * v274) ^ 0xFDA5A0A0)) & 0x445B1440);
  LODWORD(STACK[0x8B4]) = ((4 * v274) ^ 0xFFB4B414) - ((2 * ((4 * v274) ^ 0xFFB4B414)) & 0xCCE72820);
  v275 = ((v274 >> 27) | 0xA59C2540) ^ (v274 >> 21);
  LODWORD(STACK[0x8AC]) = ((4 * v275) ^ 0x96709AC0) - 2 * (((4 * v275) ^ 0x96709AC0) & 0xB3C ^ (4 * v275) & 0x1C);
  LODWORD(STACK[0x88C]) = v275;
  LODWORD(STACK[0x898]) = ((32 * v275) ^ 0xB384D600) - ((2 * ((32 * v275) ^ 0xB384D600)) & 0x18780);
  v276 = ((v273 << 10) ^ 0x790AC400) - ((2 * ((v273 << 10) ^ 0x790AC400)) & 0xB9EA4800);
  LODWORD(STACK[0x890]) = ((v275 << 11) ^ 0xE1358000) - ((2 * ((v275 << 11) ^ 0xE1358000)) & 0x12A000);
  v277 = ((v273 << 12) ^ 0xE42B1000) - ((2 * ((v273 << 12) ^ 0xE42B1000)) & 0x96904000);
  v278 = ((v273 << 16) ^ 0x42B10000) - ((2 * ((v273 << 16) ^ 0x42B10000)) & 0x9E140000);
  v279 = ((v273 << 20) ^ 0x2B100000) - ((2 * ((v273 << 20) ^ 0x2B100000)) & 0xB8200000);
  LODWORD(v100) = (v258 << 19) ^ 0x15880000;
  v280 = v258;
  LODWORD(STACK[0x888]) = v100 - ((2 * v100) & 0xE9F00000);
  v281 = ((v273 << 25) ^ 0x62000000) - ((2 * ((v273 << 25) ^ 0x62000000)) & 0xEC000000);
  v282 = v221 ^ 0x3685F8D0 ^ ~v257;
  v283 = (v221 >> 25) ^ 0x59519B5;
  v284 = (v221 >> 22) ^ 0xBAA1C0F5;
  LODWORD(v89) = HIWORD(v221) ^ 0x648D7AC3;
  v285 = (v221 >> 12) ^ 0x4A85CDAF;
  v286 = (v258 >> 7) ^ 0xB84BF665;
  LODWORD(v253) = v284 ^ (v221 >> 20) ^ v283 ^ v98 ^ v266 ^ v253 ^ (v221 >> 14) ^ 0x5791C91A ^ v89 ^ v163 ^ v268 ^ v285 ^ (v258 >> 1) ^ v286 ^ v270 ^ v272;
  v287 = LODWORD(STACK[0x86C]) - 1721527505;
  LODWORD(STACK[0x780]) = v287;
  LODWORD(v59) = (((LODWORD(STACK[0x9D4]) << 30) | 0xFDB30D0) + 1921) ^ LODWORD(STACK[0xCD0]) ^ v287 ^ (LODWORD(STACK[0x800]) - 1457101748) ^ LODWORD(STACK[0x7A8]);
  v288 = LODWORD(STACK[0x870]) - 96936698;
  LODWORD(STACK[0x870]) = v288;
  v289 = LODWORD(STACK[0x7F4]) + 1773;
  LODWORD(STACK[0x800]) = v289;
  v290 = STACK[0xD28];
  LODWORD(v59) = v59 ^ LODWORD(STACK[0xD28]) ^ v288;
  v291 = STACK[0xCE4];
  LODWORD(v59) = v59 ^ LODWORD(STACK[0xCE4]) ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0xCCC]) ^ v289 ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x7AC]) ^ (LODWORD(STACK[0x838]) - 674396082) ^ LODWORD(STACK[0xD30]) ^ LODWORD(STACK[0x7C4]) ^ LODWORD(STACK[0x7B4]) ^ (LODWORD(STACK[0x7DC]) + 1433441425) ^ (LODWORD(STACK[0x7CC]) + 517112116) ^ LODWORD(STACK[0x7EC]) ^ (LODWORD(STACK[0x7C8]) + 998978672) ^ (LODWORD(STACK[0x7BC]) + 1813302302) ^ (LODWORD(STACK[0x7D4]) - 412190695) ^ LODWORD(STACK[0xCAC]) ^ v258 ^ ((v282 << 31) - 1761270587);
  LODWORD(STACK[0xCE8]) = v265 + 328239742;
  LODWORD(v98) = v59 ^ (v265 + 328239742) ^ (v100 - ((2 * v100) & 0x49A00000) - 1529756575);
  v292 = ((v258 << 7) ^ 0xAF215880) - ((2 * ((v258 << 7) ^ 0xAF215880)) & 0x643B600) + 52550452;
  LODWORD(STACK[0xCAC]) = v292;
  v293 = LODWORD(STACK[0x774]) + 757926275;
  v294 = ((v258 << 13) ^ 0xC8562000) - ((2 * ((v258 << 13) ^ 0xC8562000)) & 0xF851C000) + 2083056167;
  LODWORD(STACK[0x7F4]) = v276 - 587913727;
  LODWORD(STACK[0x858]) = v293;
  LODWORD(STACK[0x854]) = v294;
  LODWORD(v98) = v98 ^ (v277 + 1263019927) ^ v292 ^ (v276 - 587913727) ^ v293 ^ v294;
  v295 = LODWORD(STACK[0x860]) + 768137671;
  LODWORD(STACK[0x86C]) = v295;
  v296 = LODWORD(STACK[0x850]) + 791428787;
  LODWORD(v59) = v278 - 821385455;
  v279 -= 602889614;
  LODWORD(STACK[0x7EC]) = v279;
  LODWORD(STACK[0x860]) = v296;
  v297 = LODWORD(STACK[0x7C0]) - 2060725221;
  LODWORD(STACK[0x850]) = v297;
  v298 = v98 ^ v295 ^ (v278 - 821385455) ^ v296 ^ v279 ^ v297 ^ (v281 + 1986486766) ^ LODWORD(STACK[0xD20]) ^ v253 ^ (((4 * v253) ^ 0xA668AC08) - ((2 * ((4 * v253) ^ 0xA668AC08)) & 0x18453158) - 1943889745) ^ (((32 * v253) ^ 0x33456040) - ((2 * ((32 * v253) ^ 0x33456040)) & 0x9129B600) - 929768677);
  LODWORD(STACK[0x7C0]) = v298;
  LODWORD(v98) = (v253 >> 21) ^ 0x14C;
  LODWORD(v163) = v98 - ((v253 >> 21) ^ (v253 >> 27) ^ 0x149);
  LODWORD(v163) = ((v253 >> 27) ^ 0x47F570B8 ^ (((v253 >> 27) ^ 0xFFFFFFFA) - ((2 * ((v253 >> 27) ^ 0xFFFFFFFA) + 2) & 0x52F076C2) + 695745378) ^ (v163 - ((2 * v163) & 0xDD1A97B8) + 1854753756)) + v98;
  LODWORD(v253) = (v253 ^ 0x299A2B02) << (v298 & 0xB ^ 8 | v298 & 0xB ^ 3);
  LODWORD(STACK[0x7BC]) = v253 - ((2 * v253) & 0x17354786);
  LODWORD(v98) = (v163 - ((2 * v163) & 0xC0D2) - 8087) ^ (v221 >> 31);
  LODWORD(STACK[0x7AC]) = v98;
  LODWORD(STACK[0x7B8]) = ((32 * v98) ^ 0x1C0D00) - ((2 * ((32 * v98) ^ 0x1C0D00)) & 0x189D80);
  LODWORD(STACK[0x7B4]) = ((4 * v98) ^ 0x381A0) - 2 * (((4 * v98) ^ 0x381A0) & 0x3147C ^ (4 * v98) & 4);
  LODWORD(STACK[0x7A8]) = ((v98 << 11) ^ 0x7034000) - ((2 * ((v98 << 11) ^ 0x7034000)) & 0xA925000);
  LODWORD(STACK[0x770]) = v280;
  LODWORD(v98) = HIBYTE(v221) ^ (v221 >> 17) ^ v283 ^ v284 ^ v266 ^ LODWORD(STACK[0x768]) ^ v89 ^ v268 ^ LODWORD(STACK[0x764]) ^ v285 ^ (v280 >> 8) ^ LODWORD(STACK[0x76C]) ^ v286 ^ v270 ^ LODWORD(STACK[0x778]);
  v299 = v264 ^ LODWORD(STACK[0x784]);
  v300 = v98 >> 21;
  v301 = ((v98 >> 21 << 11) ^ 0x204800) - (STACK[0x3F4] & (2 * ((v98 >> 21 << 11) ^ 0x204800)));
  v302 = ((LODWORD(STACK[0x9D4]) << 31) | 0x2CE0305A) ^ LODWORD(STACK[0x91C]);
  v303 = LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0x780]);
  LODWORD(STACK[0x838]) = v303;
  v304 = v302 ^ LODWORD(STACK[0xD18]) ^ v303 ^ LODWORD(STACK[0x840]) ^ (LODWORD(STACK[0x844]) + 540606618) ^ v290 ^ v291 ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0x800]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xCCC]) ^ LODWORD(STACK[0x814]) ^ LODWORD(STACK[0x80C]) ^ (LODWORD(STACK[0x828]) + 950726808) ^ (LODWORD(STACK[0x818]) + 1399808703) ^ LODWORD(STACK[0x824]) ^ (LODWORD(STACK[0x810]) - 1231190791) ^ (LODWORD(STACK[0x84C]) - 2050669258) ^ (LODWORD(STACK[0x81C]) - 1282660539) ^ (LODWORD(STACK[0x820]) - 1081282494) ^ LODWORD(STACK[0xCE8]) ^ (((v280 << 15) ^ 0x21588000) - ((2 * ((v280 << 15) ^ 0x21588000)) & 0x974A0000) + 1269123975) ^ (((v280 << 8) ^ 0x5E42B100) - ((2 * ((v280 << 8) ^ 0x5E42B100)) & 0xFF051E00) + 2139262817) ^ (((v280 << 24) ^ 0xB1000000) - ((2 * ((v280 << 24) ^ 0xB1000000)) & 0xBC000000) - 568212620) ^ v296 ^ v59 ^ v293;
  v305 = LODWORD(STACK[0x7A0]) - 1472035341;
  LODWORD(STACK[0x91C]) = v305;
  v306 = v304 ^ v305 ^ LODWORD(STACK[0xCAC]) ^ v294 ^ LODWORD(STACK[0x7F4]);
  v307 = LODWORD(STACK[0xCDC]) - 1173173808;
  LODWORD(STACK[0x84C]) = v307;
  v308 = LODWORD(STACK[0x798]) + 2031786051;
  LODWORD(STACK[0x9D4]) = v308;
  v309 = v306 ^ LODWORD(STACK[0x7EC]) ^ v297 ^ v308 ^ v307 ^ (v281 + 1986486766);
  v310 = LODWORD(STACK[0x7A4]) - 306009718;
  LODWORD(STACK[0x844]) = v310;
  v311 = LODWORD(STACK[0x77C]) + 797304705;
  LODWORD(STACK[0x840]) = v311;
  v312 = v309 ^ v311 ^ v310 ^ v98 ^ (((32 * (v98 >> 21)) ^ 0x8120) - ((v98 >> 15) & 0x2400) - 971959798) ^ (((4 * (v98 >> 21)) ^ 0x1024) - 1550807216 - ((v98 >> 18) & 0x1EA0)) ^ (((32 * v98) ^ 0x242F6600) - ((2 * ((32 * v98) ^ 0x242F6600)) & 0x95FF8C40) - 889207251) ^ (((v98 << 11) ^ 0xBD98000) - ((2 * ((v98 << 11) ^ 0xBD98000)) & 0xAAFE2000) - 713091373) ^ (((4 * v98) ^ 0x485ECC0) + 166818247 - 2 * (((4 * v98) ^ 0x485ECC0) & 0x9F171DC ^ (4 * v98) & 0x18)) ^ (v301 - 1642987641);
  LODWORD(STACK[0x828]) = (((v299 ^ 0xD7B82D40) << 14) ^ 0x8EFB0000) - ((2 * (((v299 ^ 0xD7B82D40) << 14) ^ 0x8EFB0000)) & 0xF9238000);
  LODWORD(STACK[0xCDC]) = (((v299 ^ 0xD7B82D40) << 18) ^ 0xEFB00000) - ((2 * (((v299 ^ 0xD7B82D40) << 18) ^ 0xEFB00000)) & 0xD980000);
  v313 = (((8 * (v299 ^ 0xD7B82D40)) ^ 0x6DF1DF60) + 1177563855 - 2 * (((8 * (v299 ^ 0xD7B82D40)) ^ 0x6DF1DF60) & 0x463032D8 ^ (8 * (v299 ^ 0xD7B82D40)) & 0x10)) ^ (((4 * (v299 ^ 0xD7B82D40)) ^ 0x36F8EFB0) - ((2 * ((4 * (v299 ^ 0xD7B82D40)) ^ 0x36F8EFB0)) & 0x55F43650) - 1426449622);
  LODWORD(STACK[0x780]) = v313;
  LODWORD(STACK[0x824]) = ((32 * (v299 ^ 0xD7B82D40)) ^ 0xB7C77D80) - ((2 * ((32 * (v299 ^ 0xD7B82D40)) ^ 0xB7C77D80)) & 0xF8047FC0);
  LODWORD(STACK[0x820]) = ((16 * (v299 ^ 0xD7B82D40)) ^ 0xDBE3BEC0) - ((2 * ((16 * (v299 ^ 0xD7B82D40)) ^ 0xDBE3BEC0)) & 0x62DBF600);
  LODWORD(STACK[0xCD0]) = (((v299 ^ 0xD7B82D40) << 13) ^ 0xC77D8000) - ((2 * (((v299 ^ 0xD7B82D40) << 13) ^ 0xC77D8000)) & 0x608B8000);
  LODWORD(STACK[0xCCC]) = (((v299 ^ 0xD7B82D40) << 11) ^ 0xF1DF6000) - ((2 * (((v299 ^ 0xD7B82D40) << 11) ^ 0xF1DF6000)) & 0x9B8D3000);
  LODWORD(STACK[0x81C]) = (((v299 ^ 0xD7B82D40) << 17) ^ 0x77D80000) - ((2 * (((v299 ^ 0xD7B82D40) << 17) ^ 0x77D80000)) & 0xA7B40000);
  LODWORD(STACK[0x7A0]) = (((v299 ^ 0xD7B82D40) << 21) ^ 0x7D800000) - ((2 * (((v299 ^ 0xD7B82D40) << 21) ^ 0x7D800000)) & 0x81800000);
  v314 = ((v264 >> 30) | 0x1836B174) ^ (v264 >> 29) ^ 0x5D787FF5;
  LODWORD(v89) = (v264 >> 19) ^ 0xF8898D55;
  v315 = (v264 >> 21) ^ 0x656CF350;
  v316 = (v264 >> 14) ^ 0xEDA8D44E;
  v317 = (v264 >> 15) ^ (v264 >> 28) ^ (v264 >> 18) ^ (v264 >> 13) ^ ((v264 >> 27) - 2052110592) ^ v89 ^ v315 ^ v316 ^ v314;
  LODWORD(STACK[0x818]) = (((v299 ^ 0xD7B82D40) << 19) ^ 0xDF600000) - 273263920 - ((2 * (((v299 ^ 0xD7B82D40) << 19) ^ 0xDF600000)) & 0xDF600000);
  LOBYTE(v98) = (v317 & 0x16 ^ 2) + (v317 & 0x16 ^ 0x14);
  v318 = (((v299 ^ 0x9A0616AC) - 671387752 - ((2 * (v299 ^ 0x9A0616AC)) & 0xAFF6DF30)) ^ 0xD7FB6F98) << ((v98 - 34 - ((2 * v98) & 0x3C)) & 0xEC ^ 0xDE);
  LODWORD(STACK[0x814]) = v318 - ((2 * v318) & 0xA9080000);
  v319 = (((v299 ^ 0xD7B82D40) << 23) ^ 0xF6000000) - ((2 * (((v299 ^ 0xD7B82D40) << 23) ^ 0xF6000000)) & 0x9E000000);
  v320 = ((v299 << 26) ^ 0xB0000000) - ((2 * ((v299 << 26) ^ 0xB0000000)) & 0xC8000000);
  LODWORD(STACK[0x7EC]) = ((v299 << 28) ^ 0xC0000000) - ((v299 << 29) & 0x40000000);
  v321 = ((v299 ^ 0xD7B82D40) >> 4) ^ ((v299 ^ 0xD7B82D40) >> 2) ^ v317;
  v322 = (v264 >> 11) ^ 0x9A2B1946;
  v323 = (v299 >> 10) ^ 0x134622A5;
  v324 = (v299 >> 9) ^ 0xB07C812F;
  v325 = (v299 >> 6) ^ 0x22355715;
  LODWORD(v318) = (v299 >> 5) ^ 0x671C8218;
  LODWORD(v100) = v299;
  v326 = v323 ^ v322 ^ v324 ^ v325 ^ v318 ^ v321;
  LODWORD(STACK[0x80C]) = ((4 * v326) ^ 0x779DDB10) - ((2 * ((4 * v326) ^ 0x779DDB10)) & 0xD0535390);
  LODWORD(STACK[0x800]) = ((32 * v326) ^ 0xBCEED880) - ((2 * ((32 * v326) ^ 0xBCEED880)) & 0x720A7F40);
  LODWORD(STACK[0x7CC]) = v326;
  v327 = (v326 >> 21) ^ (v321 >> 27);
  LODWORD(STACK[0x7F4]) = ((v327 << 11) ^ 0x37D800) - ((2 * ((v327 << 11) ^ 0x37D800)) & 0x82000);
  LODWORD(STACK[0x7DC]) = ((v326 << 11) ^ 0x3BB62000) + 2075000574 - ((2 * ((v326 << 11) ^ 0x3BB62000)) & 0xF75BF000);
  LODWORD(STACK[0x7C4]) = v327;
  LODWORD(STACK[0x7D4]) = ((32 * v327) ^ 0xDF60) + 2016040429 + (~(2 * ((32 * v327) ^ 0xDF60)) | 0xFFFF543F);
  LODWORD(STACK[0x7C8]) = ((4 * v327) ^ 0x1BEC) - ((2 * ((4 * v327) ^ 0x1BEC)) & 0x1628);
  LODWORD(STACK[0x7B0]) = v299;
  v328 = HIWORD(v264) ^ (v264 >> 17) ^ (v264 >> 12) ^ (v264 >> 22) ^ (v264 >> 25) ^ HIBYTE(v264) ^ (v100 >> 7) ^ (v100 >> 8) ^ v315 ^ v89 ^ v316 ^ v322 ^ v314 ^ v323 ^ v324 ^ v325 ^ v318;
  v329 = v312 ^ v300 ^ 0x33E4995F;
  LODWORD(STACK[0x810]) = ((2 * v329) ^ 0x2C16A372) - 2 * (((2 * v329) ^ 0x2C16A372) & 0x4B607AAA ^ (2 * v329) & 8);
  LODWORD(STACK[0x758]) = ((4 * v329) ^ 0x582D46E4) - 2 * (((4 * v329) ^ 0x582D46E4) & 0x25E581BC ^ (4 * v329) & 0x10);
  LODWORD(STACK[0xCAC]) = v328 >> 21;
  v330 = (LODWORD(STACK[0x8E0]) - 878139094) ^ LODWORD(STACK[0x9D8]) ^ (LODWORD(STACK[0x958]) - 1052330392) ^ LODWORD(STACK[0x878]) ^ LODWORD(STACK[0x87C]) ^ LODWORD(STACK[0x874]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0x934]) ^ LODWORD(STACK[0x900]) ^ LODWORD(STACK[0x948]) ^ (LODWORD(STACK[0x950]) - 1691999902) ^ (LODWORD(STACK[0x944]) + 1388799527) ^ (LODWORD(STACK[0x920]) + 556022714) ^ (LODWORD(STACK[0x908]) - 1082255054) ^ (LODWORD(STACK[0x938]) - 865786547) ^ (LODWORD(STACK[0x968]) + 1051088229) ^ ((LODWORD(STACK[0xCB8]) << 31) | 0x46D83CDC) ^ LODWORD(STACK[0x7E0]) ^ (LODWORD(STACK[0x7F8]) + 1379888218) ^ (LODWORD(STACK[0x7FC]) - 930625918) ^ (LODWORD(STACK[0x7F0]) + 599572629) ^ (LODWORD(STACK[0x804]) + 1396936778) ^ (LODWORD(STACK[0x808]) - 309618705) ^ LODWORD(STACK[0x7D0]) ^ (LODWORD(STACK[0x7E4]) + 1932773064) ^ (LODWORD(STACK[0x7E8]) - 1043071320) ^ (LODWORD(STACK[0x7D8]) + 1572972732);
  LODWORD(STACK[0x7D0]) = v320 - 436592562;
  v331 = ((v299 << 27) ^ 0x60000000) - ((2 * ((v299 << 27) ^ 0x60000000)) & 0x55555555) + 706165859;
  LODWORD(STACK[0x7A4]) = v331;
  LODWORD(v163) = (((v299 << 22) ^ 0xAB000000) - ((2 * ((v299 << 22) ^ 0xAB000000)) & 0x42800000) + 559809024) ^ (((v299 << 24) ^ 0xAC000000) - ((2 * ((v299 << 24) ^ 0xAC000000)) & 0x7E000000) - 1079474280) ^ (((v100 << 25) ^ 0x58000000) - ((2 * ((v100 << 25) ^ 0x58000000)) & 0x78000000) - 1121910737) ^ (v320 - 436592562) ^ v331 ^ ((((v299 ^ 0xD7B82D40) << 8) ^ 0xBE3BEC00) - ((2 * (((v299 ^ 0xD7B82D40) << 8) ^ 0xBE3BEC00)) & 0xCE5F4600) - 416308238) ^ ((((v299 ^ 0xD7B82D40) << 10) ^ 0xF8EFB000) - ((2 * (((v299 ^ 0xD7B82D40) << 10) ^ 0xF8EFB000)) & 0xA3E6B800) + 1374903668) ^ ((((v299 ^ 0xD7B82D40) << 7) ^ 0xDF1DF600) - ((2 * (((v299 ^ 0xD7B82D40) << 7) ^ 0xDF1DF600)) & 0xAC117300) + 1443412471) ^ ((((v299 ^ 0xD7B82D40) << 16) ^ 0x3BEC0000) - ((2 * (((v299 ^ 0xD7B82D40) << 16) ^ 0x3BEC0000)) & 0x77400000) - 1147136473) ^ ((((v299 ^ 0xD7B82D40) << 15) ^ 0x1DF60000) - ((2 * (((v299 ^ 0xD7B82D40) << 15) ^ 0x1DF60000)) & 0xB7160000) + 1535851906) ^ ((((v299 ^ 0xD7B82D40) << 20) ^ 0xBEC00000) - ((2 * (((v299 ^ 0xD7B82D40) << 20) ^ 0xBEC00000)) & 0xE0200000) - 267019826);
  LODWORD(v98) = LODWORD(STACK[0xCDC]) + 114247462;
  LODWORD(STACK[0x77C]) = v98;
  v332 = LODWORD(STACK[0xCD0]) + 809885239;
  LODWORD(STACK[0x778]) = v332;
  v333 = LODWORD(STACK[0xCCC]) + 1304861092;
  LODWORD(STACK[0x784]) = v333;
  v334 = LODWORD(STACK[0x7A0]) - 1059341255;
  LODWORD(STACK[0x774]) = v334;
  LODWORD(STACK[0x798]) = v319 - 821782061;
  v335 = v330 ^ v163 ^ v333 ^ v332 ^ v98 ^ v334 ^ (v319 - 821782061) ^ v313 ^ v328 ^ (((32 * v328) ^ 0xCBDC38C0) - ((2 * ((32 * v328) ^ 0xCBDC38C0)) & 0xADDC4840) + 1458447403) ^ (((v328 << 11) ^ 0xF70E3000) - ((2 * ((v328 << 11) ^ 0xF70E3000)) & 0x1CDE0000) + 242157460) ^ (((4 * v328) ^ 0x397B8718) + 1581748666 - 2 * (((4 * v328) ^ 0x397B8718) & 0x5E4791BC ^ (4 * v328) & 4)) ^ (((32 * (v328 >> 21)) ^ 0x4E40) - ((2 * ((32 * (v328 >> 21)) ^ 0x4E40)) & 0x1980) + 1485769949) ^ (((v328 >> 21 << 11) ^ 0x139000) - ((2 * ((v328 >> 21 << 11) ^ 0x139000)) & 0x6A6000) + 1022703379) ^ (((4 * (v328 >> 21)) ^ 0x9C8) - 2 * (((4 * (v328 >> 21)) ^ 0x9C8) & 0x344 ^ (4 * (v328 >> 21)) & 4) - 538451136);
  LODWORD(STACK[0xCDC]) = ((8 * v329) ^ 0xB05A8DC8) - 1146462023 - ((2 * ((8 * v329) ^ 0xB05A8DC8)) & 0x7754D8C0);
  LODWORD(STACK[0x878]) = ((v329 << 6) ^ 0x82D46E40) - ((2 * ((v329 << 6) ^ 0x82D46E40)) & 0xECC16200);
  LODWORD(STACK[0xCCC]) = ((v329 << 13) ^ 0x6A372000) - ((2 * ((v329 << 13) ^ 0x6A372000)) & 0x8E5EC000);
  LODWORD(STACK[0xCD0]) = ((v329 << 7) ^ 0x5A8DC80) - ((2 * ((v329 << 7) ^ 0x5A8DC80)) & 0x5A5EC00);
  LODWORD(STACK[0x8E0]) = ((v329 << 10) ^ 0x2D46E400) - ((2 * ((v329 << 10) ^ 0x2D46E400)) & 0x12307000);
  LODWORD(STACK[0xCB8]) = ((v329 << 26) ^ 0xE4000000) - ((2 * ((v329 << 26) ^ 0xE4000000)) & 0x18000000);
  LODWORD(STACK[0xCE0]) = ((v329 << 16) ^ 0x51B90000) - ((2 * ((v329 << 16) ^ 0x51B90000)) & 0x3F7A0000);
  LODWORD(STACK[0x808]) = ((v329 << 17) ^ 0xA3720000) - ((2 * ((v329 << 17) ^ 0xA3720000)) & 0x99680000);
  LODWORD(STACK[0x874]) = ((v329 << 14) ^ 0xD46E4000) - ((2 * ((v329 << 14) ^ 0xD46E4000)) & 0x6DF50000);
  LODWORD(STACK[0x750]) = ((v329 << 24) ^ 0xB9000000) - ((2 * ((v329 << 24) ^ 0xB9000000)) & 0x10000000);
  LODWORD(STACK[0x74C]) = ((v329 << 25) ^ 0x72000000) - ((2 * ((v329 << 25) ^ 0x72000000)) & 0x68000000);
  v336 = ((v329 << 22) ^ 0x6E400000) - ((2 * ((v329 << 22) ^ 0x6E400000)) & 0x13000000);
  v337 = (v312 >> 25) ^ 0x1FA39AAB;
  v338 = (v312 >> 30) ^ 0x164ABE5 ^ (v312 >> 29) ^ 0x93D92AAD;
  LODWORD(v59) = (v312 >> 22) ^ 0x1E6254F;
  v339 = HIWORD(v312) ^ 0xE5005CD6;
  v340 = (v312 >> 19) ^ 0x6D215E38;
  v341 = (v312 >> 18) ^ 0x84B873CE;
  v342 = (v312 >> 12) ^ 0x3CC20CCA;
  v343 = ((v312 ^ v300) >> 4) ^ 0x8222A654;
  v344 = ((v312 ^ v300) >> 8) ^ 0x1C2FE3D6;
  v345 = ((v312 ^ v300) >> 7) ^ 0xC1B28118;
  LODWORD(v100) = (v312 >> 26) ^ (v312 >> 15) ^ (v312 >> 31) ^ v337 ^ v338 ^ v59 ^ v340 ^ v341 ^ v339 ^ v342 ^ (v329 >> 10) ^ (v329 >> 3) ^ v344 ^ v345 ^ v343;
  v346 = ((v312 ^ v300) >> 6) ^ 0x628431F4;
  v347 = v100 ^ v346 ^ 0xBB14FB0D;
  LODWORD(STACK[0x7F8]) = v347;
  LODWORD(STACK[0x804]) = ((32 * v347) ^ 0x288B3A40) - ((2 * ((32 * v347) ^ 0x288B3A40)) & 0xA79AD400);
  LODWORD(STACK[0x7FC]) = ((4 * v347) ^ 0x85116748) - ((2 * ((4 * v347) ^ 0x85116748)) & 0xD5FDB68);
  LODWORD(STACK[0x7D8]) = ((v329 << 29) ^ 0x20000000) + (v329 >> 1 << 31);
  LODWORD(v89) = ((v329 << 28) ^ 0x90000000) + 709672842 + (~(v329 << 29) | 0xBFFFFFFF);
  v348 = ((v100 ^ v346) >> 21) ^ (v100 >> 27);
  LODWORD(STACK[0x7A0]) = v348;
  LODWORD(STACK[0x7F0]) = ((v348 << 11) ^ 0x266800) - ((2 * ((v348 << 11) ^ 0x266800)) & 0x673000);
  LODWORD(STACK[0x7E4]) = (((v100 ^ v346) << 11) ^ 0x8516F800) - ((2 * (((v100 ^ v346) << 11) ^ 0x8516F800)) & 0x8FAB6000);
  LODWORD(STACK[0x7E8]) = ((4 * v348) ^ 0x1334) - ((2 * ((4 * v348) ^ 0x1334)) & 0x1318);
  v349 = ((v329 << 11) ^ 0x5A8DC800) - ((2 * ((v329 << 11) ^ 0x5A8DC800)) & 0x6749000);
  LODWORD(STACK[0x7E0]) = ((32 * v348) ^ 0x99A0) - ((2 * ((32 * v348) ^ 0x99A0)) & 0x1A240);
  LODWORD(STACK[0x9D8]) = ((v329 << 12) ^ 0xB51B9000) - ((2 * ((v329 << 12) ^ 0xB51B9000)) & 0xE2EE8000);
  v350 = ((v329 << 21) ^ 0x37200000) - ((2 * ((v329 << 21) ^ 0x37200000)) & 0x400000);
  LODWORD(STACK[0x958]) = ((v329 << 19) ^ 0x8DC80000) - ((2 * ((v329 << 19) ^ 0x8DC80000)) & 0xBCA00000);
  LODWORD(v100) = (v312 >> 21) ^ 0x132540A9;
  LODWORD(v98) = (v312 >> 14) ^ 0x2C26BCD1;
  LODWORD(v318) = v341 ^ v339 ^ v98;
  v351 = (v312 >> 11) ^ 0xE373FD;
  LODWORD(v163) = (v312 >> 20) ^ (v312 >> 13) ^ (v312 >> 22) ^ v342 ^ v337 ^ v100 ^ v340 ^ v318 ^ v351 ^ (v329 >> 1) ^ v345 ^ v346 ^ v343;
  LODWORD(STACK[0x950]) = ((4 * v163) ^ 0xCE4A1314) - ((2 * ((4 * v163) ^ 0xCE4A1314)) & 0x729DADB0);
  LODWORD(STACK[0x948]) = ((32 * v163) ^ 0x725098A0) - ((2 * ((32 * v163) ^ 0x725098A0)) & 0xED4B9680);
  v352 = (((v163 ^ 0x739284C5) - 1700977152 - ((2 * (v163 ^ 0x739284C5)) & 0x353A4C00)) ^ 0x9A9D2600) << ((STACK[0xCB0] & 0xCD ^ 0xC8) + (STACK[0xCB0] & 0xCD ^ 5u) + 62);
  LODWORD(STACK[0x968]) = v352 - ((2 * v352) & 0x547A427C);
  LODWORD(STACK[0x934]) = v163;
  LODWORD(v163) = ((v312 >> 31) | 0x11D51994) ^ (v163 >> 27) ^ (v163 >> 21);
  LODWORD(STACK[0x908]) = v163;
  LODWORD(STACK[0x944]) = ((v163 << 11) ^ 0xA8D03800) - ((2 * ((v163 << 11) ^ 0xA8D03800)) & 0x409D000);
  LODWORD(STACK[0x938]) = ((32 * v163) ^ 0x3AA340E0) - ((2 * ((32 * v163) ^ 0x3AA340E0)) & 0x2103480);
  LODWORD(STACK[0x920]) = ((4 * v163) ^ 0x4754681C) - ((2 * ((4 * v163) ^ 0x4754681C)) & 0x515134F8);
  LODWORD(v163) = LODWORD(STACK[0xCE0]) - 1614954585;
  LODWORD(STACK[0xCE0]) = v163;
  v353 = ((v329 << 18) ^ 0x46E40000) - ((2 * ((v329 << 18) ^ 0x46E40000)) & 0x8F200000) - 946659738;
  LODWORD(STACK[0x900]) = v353;
  v354 = (((v329 << 8) ^ 0xB51B900) - ((2 * ((v329 << 8) ^ 0xB51B900)) & 0xFCEB9000) + 2121648185) ^ (((v329 << 15) ^ 0xA8DC8000) - ((2 * ((v329 << 15) ^ 0xA8DC8000)) & 0xDBF30000) - 302407714) ^ v163 ^ v353;
  v355 = LODWORD(STACK[0xCDC]) + 2985;
  LODWORD(STACK[0x76C]) = v355;
  LODWORD(v163) = LODWORD(STACK[0xCD0]) + 47379982;
  LODWORD(STACK[0xCD0]) = v163;
  v356 = ((v329 << 20) ^ 0x1B900000) - ((2 * ((v329 << 20) ^ 0x1B900000)) & 0x2D200000) + 378693585;
  LODWORD(STACK[0xCDC]) = v356;
  v357 = v354 ^ v356 ^ v355 ^ v163;
  v358 = LODWORD(STACK[0xCCC]) + 1194288414;
  LODWORD(STACK[0x764]) = v358;
  LODWORD(v163) = LODWORD(STACK[0x8E0]) - 1994901122;
  LODWORD(STACK[0x768]) = v163;
  LODWORD(STACK[0x8E0]) = v350 - 2144536816;
  LODWORD(v163) = v163 ^ (v349 + 54151914) ^ v358;
  LODWORD(STACK[0x87C]) = v163;
  v359 = v357 ^ v163 ^ (v350 - 2144536816);
  LODWORD(v163) = LODWORD(STACK[0x758]) - 1511685714;
  LODWORD(STACK[0x754]) = v163;
  LODWORD(STACK[0x758]) = v336 - 1984550099;
  v360 = v359 ^ (v336 - 1984550099) ^ v163;
  LODWORD(STACK[0xCCC]) = v89 + 1;
  v361 = (v89 + 1) ^ 0x2A4CBF8A | ((v312 ^ v300) >> 4) & 0x1F ^ 0xE;
  HIDWORD(v8) = v360 ^ 0x53A4082;
  LODWORD(v8) = v360;
  v362 = ((v8 >> 27) - ((2 * (v8 >> 27)) & 0xA60870D4) + 1392785514) ^ (v361 - ((2 * v361) & 0xA808DFBC) - 737906722);
  HIDWORD(v8) = v362 ^ 0x10;
  LODWORD(v8) = v362 ^ 0x2932A040;
  LODWORD(STACK[0xCC0]) = v312 ^ v300;
  LODWORD(v352) = HIBYTE(v312) ^ (v312 >> 17) ^ ((v312 ^ v300) >> 10) ^ ((v312 ^ v300) >> 9) ^ ((v312 ^ v300) >> 5) ^ v338 ^ v337 ^ v59 ^ v100 ^ v340 ^ v339 ^ v98 ^ v342 ^ v351 ^ v344 ^ v345 ^ v346;
  LODWORD(v163) = (LODWORD(STACK[0x7A8]) - 2058802074) ^ LODWORD(STACK[0x7AC]) ^ (LODWORD(STACK[0x7B8]) + 2068598487) ^ (LODWORD(STACK[0x7B4]) - 1875176326) ^ LODWORD(STACK[0x7C0]);
  LODWORD(v100) = (LODWORD(STACK[0x7BC]) - 1952799805) ^ ((((v312 ^ v300) << 27) ^ 0x30000000) - ((((v312 ^ v300) << 27) ^ 0x30000000) >> 28 << 29) - 175994459);
  LODWORD(v98) = LODWORD(STACK[0xCB8]) - 1906042425;
  LODWORD(STACK[0xCB8]) = v98;
  v363 = LODWORD(STACK[0x750]) + 149410721;
  LODWORD(STACK[0x7BC]) = v363;
  v364 = LODWORD(STACK[0x74C]) + 872510066;
  LODWORD(STACK[0xCB0]) = v364;
  LODWORD(v163) = v163 ^ v100 ^ v363 ^ v364 ^ v98 ^ v352 ^ ((v8 >> 5) - ((2 * (v8 >> 5)) & 0x2CE81134) - 1770780518);
  LODWORD(v98) = (v352 ^ 0xBED3014B) << ((v163 & 2 ^ 2) + (v163 & 2));
  LODWORD(STACK[0x7B8]) = (((v352 << 11) ^ 0x980A5800) - (STACK[0x3F0] & (2 * ((v352 << 11) ^ 0x980A5800))) + 1941983746) ^ (((32 * v352) ^ 0xDA602960) - ((2 * ((32 * v352) ^ 0xDA602960)) & 0xC9FFEBC0) + 1694496233) ^ v163 ^ (v98 - ((2 * v98) & 0x1C5D25CA) - 1909550363);
  v365 = v352 >> 21;
  LODWORD(STACK[0x74C]) = v352 >> 21;
  v366 = v335 ^ LODWORD(STACK[0xCAC]);
  LODWORD(STACK[0x7C0]) = (((v366 ^ 0x598B1D0) << 6) ^ 0x7A474440) - (STACK[0x3EC] & (2 * (((v366 ^ 0x598B1D0) << 6) ^ 0x7A474440)));
  LODWORD(STACK[0x750]) = ((2 * (v366 ^ 0x598B1D0)) ^ 0xDBD23A22) - 1429894721 - ((2 * ((2 * (v366 ^ 0x598B1D0)) ^ 0xDBD23A22)) & 0x558B22B8);
  LODWORD(STACK[0x7B4]) = (((4 * v365) ^ 0x17D8) - ((2 * ((4 * v365) ^ 0x17D8)) & 0x39D8) + 927186159) ^ (((32 * (v352 >> 21)) ^ 0xBEC0) - ((2 * ((32 * (v352 >> 21)) ^ 0xBEC0)) & 0x97C0) + 1771588599) ^ (((v365 << 11) ^ 0x2FB000) - ((2 * ((v365 << 11) ^ 0x2FB000)) & 0x7D4000) + 1400809176);
  LODWORD(STACK[0x740]) = ((4 * (v366 ^ 0x598B1D0)) ^ 0xB7A47444) + 1400049333 + (~(2 * ((4 * (v366 ^ 0x598B1D0)) ^ 0xB7A47444)) | 0x5919E297);
  LODWORD(STACK[0x748]) = (((v366 ^ 0x598B1D0) << 13) ^ 0x23A22000) - ((2 * (((v366 ^ 0x598B1D0) << 13) ^ 0x23A22000)) & 0x5BCD8000);
  LODWORD(STACK[0x73C]) = ((v366 << 7) ^ 0x38D66080) - ((2 * ((v366 << 7) ^ 0x38D66080)) & 0x19341500);
  LODWORD(STACK[0x738]) = ((v366 << 16) ^ 0xACC10000) - ((2 * ((v366 << 16) ^ 0xACC10000)) & 0x36D00000);
  LODWORD(STACK[0x730]) = ((8 * v366) ^ 0x438D6608) - ((2 * ((8 * v366) ^ 0x438D6608)) & 0x8A3133F0);
  LODWORD(STACK[0x734]) = ((v366 << 10) ^ 0xC6B30400) - (STACK[0x3E8] & (2 * ((v366 << 10) ^ 0xC6B30400)));
  LODWORD(STACK[0x72C]) = ((v366 << 14) ^ 0x6B304000) - ((2 * ((v366 << 14) ^ 0x6B304000)) & 0xB9C38000);
  LODWORD(STACK[0x744]) = v366 << 21;
  LODWORD(STACK[0x71C]) = ((v366 << 17) ^ 0x59820000) - ((2 * ((v366 << 17) ^ 0x59820000)) & 0x74F40000);
  LODWORD(STACK[0x720]) = ((v366 << 22) ^ 0x30400000) - ((2 * ((v366 << 22) ^ 0x30400000)) & 0x9B800000);
  v367 = (v335 >> 19) ^ 0x28B6CF91;
  LODWORD(v59) = (v335 >> 22) ^ 0xE2138A16;
  v368 = (v335 >> 25) ^ 0x162C452E;
  v369 = (v335 >> 18) ^ 0x5DD7E532;
  v370 = HIWORD(v335) ^ 0xC0FDEEE7;
  v371 = (v335 >> 12) ^ 0x9473D4A4;
  v372 = (v366 >> 7) ^ 0xF859BC6A;
  v373 = (v366 >> 6) ^ 0xA3436879;
  v374 = (v366 >> 4) ^ 0x672939C5;
  LODWORD(v352) = (v335 >> 31) ^ (v335 >> 29) ^ (v335 >> 30) ^ (v335 >> 26) ^ (v335 >> 15) ^ (v366 >> 3) ^ (v366 >> 8) ^ (v366 >> 10) ^ v367 ^ v368 ^ v59 ^ v369 ^ v370 ^ v371 ^ v372 ^ v373 ^ v374;
  LODWORD(v89) = (v352 >> 27) ^ (v352 >> 21);
  v375 = ((v366 << 20) ^ 0xCC100000) - ((v366 << 21) & 0x65C00000) - 1293684550;
  LODWORD(STACK[0x7A8]) = v375;
  v376 = ((v366 << 25) ^ 0x82000000) - ((v366 << 26) & 0xF0000000) - 101246646;
  LODWORD(STACK[0x7AC]) = v376;
  v377 = ((v366 << 28) ^ 0x10000000) - ((v366 << 29) & 0xC0000000) - 448469240;
  v378 = ((v366 << 26) ^ 0x4000000) - ((v366 << 27) & 0x90000000) - 881058634;
  v379 = LODWORD(STACK[0x73C]) + 211421949;
  v380 = (((v366 << 29) ^ 0x20000000) - 1682512098) ^ v366 ^ v377 ^ v375 ^ v376 ^ v378 ^ (LODWORD(STACK[0x730]) + 1159240185) ^ (LODWORD(STACK[0x71C]) + 981110725) ^ (LODWORD(STACK[0x720]) + 1306164131) ^ (((v366 << 24) ^ 0xC1000000) + 1682733304 + ~((2 * ((v366 << 24) ^ 0xC1000000)) & 0xC8000000)) ^ v379;
  v381 = LODWORD(STACK[0x738]) + 459812413;
  v382 = LODWORD(STACK[0x734]) + 847681945;
  v383 = LODWORD(STACK[0x72C]) + 1558299086;
  v384 = v380 ^ v382 ^ v381 ^ v383 ^ LODWORD(STACK[0x740]);
  v385 = LODWORD(STACK[0x748]) - 1377384097;
  LODWORD(STACK[0x7C0]) = v384 ^ (LODWORD(STACK[0x750]) + 1949) ^ (LODWORD(STACK[0x7C0]) + 1290928434) ^ v385 ^ v352 ^ v89 ^ (((4 * v352) ^ 0xE31B381C) - ((2 * ((4 * v352) ^ 0xE31B381C)) & 0x49996100) + 617394307) ^ (((32 * v352) ^ 0x18D9C0E0) - ((2 * ((32 * v352) ^ 0x18D9C0E0)) & 0x41B49200) - 1596307174) ^ (((v352 << 11) ^ 0x36703800) - ((2 * ((v352 << 11) ^ 0x36703800)) & 0x3767B000) + 464772681) ^ (((32 * v89) ^ 0xFB20) - ((2 * ((32 * v89) ^ 0xFB20)) & 0x11D80) - 2095149359) ^ (((v89 << 11) ^ 0x3EC800) - ((2 * ((v89 << 11) ^ 0x3EC800)) & 0x64F000) - 1246593673) ^ (((4 * v89) ^ 0x1F64) - 2 * (((4 * v89) ^ 0x1F64) & 0x197C ^ (4 * v89) & 0x10) - 337553041);
  LODWORD(STACK[0x750]) = ((v366 << 19) ^ 0x66080000) - ((2 * ((v366 << 19) ^ 0x66080000)) & 0x47D00000);
  LODWORD(v100) = (v335 >> 20) ^ (v335 >> 21) ^ (v335 >> 14) ^ (v335 >> 13) ^ (v335 >> 11) ^ (v366 >> 1) ^ 0xF75B4D73;
  LODWORD(v352) = v367 ^ v59 ^ v368 ^ v369 ^ v370 ^ v371 ^ v372 ^ v373 ^ v374 ^ v100;
  v386 = ((v100 >> 30) | 0x5FFE5050) ^ (v352 >> 27) ^ (v352 >> 21);
  v387 = (LODWORD(STACK[0x8D8]) - 1214591593) ^ LODWORD(STACK[0x868]) ^ (LODWORD(STACK[0x8FC]) + 222) ^ (LODWORD(STACK[0x8F0]) + 890142629) ^ LODWORD(STACK[0x83C]) ^ LODWORD(STACK[0x848]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0x884]) ^ LODWORD(STACK[0x85C]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0x834]) ^ LODWORD(STACK[0x82C]) ^ LODWORD(STACK[0x830]) ^ LODWORD(STACK[0x864]) ^ LODWORD(STACK[0x880]) ^ (LODWORD(STACK[0x928]) - 1204529068) ^ LODWORD(STACK[0x89C]) ^ LODWORD(STACK[0x894]) ^ (LODWORD(STACK[0x8BC]) + 310502653) ^ (LODWORD(STACK[0x8B8]) + 583203863) ^ (LODWORD(STACK[0x8C8]) - 203990777) ^ (LODWORD(STACK[0x8A4]) + 1520153644) ^ (LODWORD(STACK[0x8A0]) + 1241404151) ^ (LODWORD(STACK[0x8B0]) + 1466048815) ^ ((LODWORD(STACK[0x7B0]) << 30) - 1113777233) ^ (LODWORD(STACK[0x7EC]) + 778688226) ^ LODWORD(STACK[0x7D0]) ^ LODWORD(STACK[0x7A4]) ^ (LODWORD(STACK[0x824]) + 2080522224) ^ (LODWORD(STACK[0x820]) + 829291264) ^ (LODWORD(STACK[0x828]) + 2089936480) ^ (LODWORD(STACK[0x81C]) + 1406865431) ^ (LODWORD(STACK[0x818]) + 3214) ^ LODWORD(STACK[0x784]) ^ LODWORD(STACK[0x778]) ^ LODWORD(STACK[0x77C]) ^ LODWORD(STACK[0x774]) ^ LODWORD(STACK[0x798]) ^ LODWORD(STACK[0x780]) ^ LODWORD(STACK[0x7CC]) ^ LODWORD(STACK[0x7C4]) ^ (LODWORD(STACK[0x80C]) - 399922743) ^ (LODWORD(STACK[0x800]) - 1190838344) ^ (LODWORD(STACK[0x7DC]) + 194) ^ LODWORD(STACK[0x7D4]) ^ (LODWORD(STACK[0x7C8]) + 199838486) ^ (LODWORD(STACK[0x7F4]) + 1204031871) ^ (LODWORD(STACK[0x814]) + 1418100279) ^ v366 ^ (((v335 ^ ~LODWORD(STACK[0xCAC])) << 31) - 1680370888);
  LODWORD(STACK[0xD00]) = v387 ^ v377 ^ v378 ^ LODWORD(STACK[0x7A8]) ^ LODWORD(STACK[0x7AC]) ^ (((v366 << 12) ^ 0x1ACC1000) + 393966324 - ((2 * ((v366 << 12) ^ 0x1ACC1000)) & 0x2EF6E000) + 2131) ^ (((v366 << 11) ^ 0x8D660800) - ((2 * ((v366 << 11) ^ 0x8D660800)) & 0xAE0F0000) + 1460110044) ^ (LODWORD(STACK[0x750]) + 602474586) ^ (((v366 << 18) ^ 0xB3040000) - ((2 * ((v366 << 18) ^ 0xB3040000)) & 0x44E80000) - 1569329250) ^ ((LODWORD(STACK[0x744]) ^ 0x98200000) - ((2 * (LODWORD(STACK[0x744]) ^ 0x98200000)) & 0x38C00000) - 1670798410) ^ v379 ^ v382 ^ v383 ^ v381 ^ v385 ^ v352 ^ v386 ^ (((4 * v352) ^ 0x9984E0B4) - ((2 * ((4 * v352) ^ 0x9984E0B4)) & 0x8051AFE8) + 1076418551) ^ (((32 * v352) ^ 0xCC2705A0) - ((2 * ((32 * v352) ^ 0xCC2705A0)) & 0x3C6CF640) + 506886969) ^ (((v352 << 11) ^ 0x9C16800) - ((2 * ((v352 << 11) ^ 0x9C16800)) & 0x5B526000) + 766064143) ^ (((4 * v386) ^ 0x7FF94DB4) - ((2 * ((4 * v386) ^ 0x7FF94DB4)) & 0x54CB8) - 35477923) ^ (((32 * v386) ^ 0xFFCA6DA0) - ((2 * ((32 * v386) ^ 0xFFCA6DA0)) & 0x4A50C0) + 1600464996) ^ (((v386 << 11) ^ 0xF29B6800) - ((2 * ((v386 << 11) ^ 0xF29B6800)) & 0x12054000) + 1803722975);
  v388 = STACK[0x7B8];
  v389 = LODWORD(STACK[0x7B8]) ^ 0x8D70FEE;
  v390 = LODWORD(STACK[0x7B4]) ^ v389;
  LODWORD(v352) = v390 ^ LODWORD(STACK[0x74C]);
  LODWORD(STACK[0x8D8]) = ((32 * v352) ^ 0x7B603940) - ((2 * ((32 * v352) ^ 0x7B603940)) & 0xF3031A80);
  LODWORD(STACK[0xCF8]) = ((v352 << 11) ^ 0xD80E5000) - ((2 * ((v352 << 11) ^ 0xD80E5000)) & 0x5F882000);
  v391 = (((4 * v352) ^ 0x6F6C0728) - 2 * (((4 * v352) ^ 0x6F6C0728) & 0x5ED10698 ^ (4 * v352) & 0x10) - 556726648) ^ (((8 * v352) ^ 0xDED80E50) - ((2 * ((8 * v352) ^ 0xDED80E50)) & 0x2BE6C630) - 1779211489);
  LODWORD(STACK[0x8BC]) = v391;
  LODWORD(STACK[0x8C8]) = ((v352 << 18) ^ 0x7280000) - ((2 * ((v352 << 18) ^ 0x7280000)) & 0xF5C80000);
  LODWORD(STACK[0x8B8]) = ((16 * v352) ^ 0xBDB01CA0) - ((2 * ((16 * v352) ^ 0xBDB01CA0)) & 0x4B4DE260);
  LODWORD(STACK[0x89C]) = ((v352 << 17) ^ 0x3940000) - ((v352 << 18) & 0x10000000);
  v392 = ((v389 >> 27) | 0x5B257080) ^ ((v388 >> 28) | 0xF7DBFE20);
  LODWORD(STACK[0x8B0]) = ((v352 << 13) ^ 0x60394000) - ((2 * ((v352 << 13) ^ 0x60394000)) & 0x292C8000);
  LODWORD(STACK[0x8A4]) = ((v352 << 21) ^ 0x39400000) - (((v352 << 21) ^ 0x39400000u) >> 26 << 27);
  LODWORD(STACK[0x8A0]) = ((v352 << 26) ^ 0x28000000) - ((2 * ((v352 << 26) ^ 0x28000000)) & 0xB0000000);
  LODWORD(STACK[0x884]) = ((v352 << 28) ^ 0xA0000000) - (((v352 << 28) ^ 0xA0000000) >> 29 << 30);
  LODWORD(STACK[0x894]) = ((v352 << 23) ^ 0xE5000000) - ((2 * ((v352 << 23) ^ 0xE5000000)) & 0x97000000);
  v393 = (LODWORD(STACK[0x808]) + 1286886415) ^ (LODWORD(STACK[0x878]) - 161435371);
  LODWORD(v163) = LODWORD(STACK[0x7D8]) - 640227728;
  LODWORD(v100) = LODWORD(STACK[0xCC0]) ^ 0x3FDCCC68;
  LODWORD(STACK[0xCAC]) = v100;
  v394 = v163 ^ v100 ^ LODWORD(STACK[0xCCC]) ^ v393 ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0x76C]) ^ LODWORD(STACK[0xCD0]);
  LODWORD(v163) = LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x764]);
  LODWORD(v100) = LODWORD(STACK[0x874]) - 1225091350;
  LODWORD(STACK[0xCF0]) = v100;
  v395 = v394 ^ v163 ^ v100 ^ LODWORD(STACK[0xCDC]) ^ LODWORD(STACK[0x758]) ^ LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0x7BC]) ^ LODWORD(STACK[0xCB8]) ^ (LODWORD(STACK[0x810]) - 882869597) ^ LODWORD(STACK[0x754]) ^ LODWORD(STACK[0x7F8]) ^ LODWORD(STACK[0x7A0]) ^ (LODWORD(STACK[0x7E4]) + 1205188542) ^ (LODWORD(STACK[0x7FC]) + 112192948) ^ (LODWORD(STACK[0x804]) + 1405970954) ^ (LODWORD(STACK[0x7E8]) + 260401551) ^ (LODWORD(STACK[0x7E0]) + 785699135) ^ (LODWORD(STACK[0x7F0]) + 1165204945);
  v396 = (v388 >> 30) ^ (v388 >> 29) | 0x87561DA0;
  v397 = (v390 >> 14) ^ 0x4CDD25C3;
  LODWORD(v59) = (v390 >> 21) ^ 0xB9DC5D0E;
  v398 = (v390 >> 19) ^ 0x8E2A8E7;
  v399 = (v390 >> 11) ^ 0xB0241081;
  v400 = (v352 >> 10) ^ 0xB153E0A;
  v401 = (v352 >> 9) ^ 0xF3ED2331;
  LODWORD(v89) = (v352 >> 6) ^ 0xF9273C65;
  v402 = (v352 >> 5) ^ 0x7BC6FCB;
  LODWORD(v163) = v392 ^ (v390 >> 18) ^ (v390 >> 15) ^ (v390 >> 13) ^ (v352 >> 2) ^ (v352 >> 4);
  v403 = v396 ^ v59 ^ v398 ^ v397 ^ v399 ^ v400 ^ v401 ^ v89 ^ v402 ^ v163;
  v404 = v403 ^ 0x109CFE64;
  v405 = ((4 * (v403 ^ 0x109CFE64)) ^ 0x81657900) - 2 * (((4 * (v403 ^ 0x109CFE64)) ^ 0x81657900) & STACK[0x3E4] ^ (4 * (v403 ^ 0x109CFE64)) & 0x10);
  v406 = ((32 * v403) ^ 0x18B40480) - ((2 * ((32 * v403) ^ 0x18B40480)) & 0xA5778E80);
  v407 = ((v403 << 11) ^ 0x2D012000) - ((2 * ((v403 << 11) ^ 0x2D012000)) & 0x47438000);
  LODWORD(v98) = (v403 >> 21) ^ (v163 >> 27);
  LODWORD(STACK[0x928]) = ((v352 << 7) ^ 0xED80E500) - ((2 * ((v352 << 7) ^ 0xED80E500)) & 0x145DB200);
  LODWORD(STACK[0x8FC]) = ((v352 << 8) ^ 0xDB01CA00) - ((2 * ((v352 << 8) ^ 0xDB01CA00)) & 0xD91E6E00);
  LODWORD(STACK[0x8F0]) = ((v352 << 10) ^ 0x6C072800) - ((2 * ((v352 << 10) ^ 0x6C072800)) & 0x42809000);
  v408 = v395 ^ (v352 << 30) ^ (LODWORD(STACK[0x89C]) - 2013160582) ^ (LODWORD(STACK[0x8D8]) - 108950188) ^ (LODWORD(STACK[0x8B8]) + 631697714) ^ (((v352 << 14) ^ 0xC0728000) - ((2 * ((v352 << 14) ^ 0xC0728000)) & 0xA73F0000) - 744518528);
  v409 = (((v352 << 19) ^ 0xE500000) - 635527628 - ((2 * ((v352 << 19) ^ 0xE500000)) & 0xB4300000) + 2855) ^ (LODWORD(STACK[0x884]) + 1748148334);
  v410 = LODWORD(STACK[0xCF8]) - 1346103808;
  LODWORD(STACK[0x8D8]) = v410;
  v411 = v408 ^ v409 ^ v410;
  v412 = LODWORD(STACK[0x8C8]) - 85571733;
  LODWORD(STACK[0x8C8]) = v412;
  v413 = LODWORD(STACK[0x8B0]) + 345392532;
  v414 = LODWORD(STACK[0x8A4]) - 66919485;
  v415 = ((v352 << 22) ^ 0x72800000) - ((2 * ((v352 << 22) ^ 0x72800000)) & 0x73800000) + 970641267;
  v416 = v411 ^ v413 ^ v412 ^ v414 ^ v415;
  v417 = LODWORD(STACK[0x8A0]) + 1508172658;
  v418 = LODWORD(STACK[0x894]) + 1269918665;
  v419 = ((v352 << 27) ^ 0x50000000) - ((2 * ((v352 << 27) ^ 0x50000000)) & 0x70000000) + 1071392138;
  v420 = v416 ^ v418 ^ v417 ^ v419 ^ v391 ^ v404 ^ v98 ^ (v406 - 759445672) ^ (v407 - 1549680498) ^ (v405 - 939002618) ^ (((4 * v98) ^ 0xE44) - ((2 * ((4 * v98) ^ 0xE44)) & 0x25D8) - 852331794) ^ (((32 * v98) ^ 0x7220) - ((2 * ((32 * v98) ^ 0x7220)) & 0x14EC0) + 1591125886) ^ (((v98 << 11) ^ 0x1C8800) - ((2 * ((v98 << 11) ^ 0x1C8800)) & 0x123000) - 964091957);
  LODWORD(STACK[0x8B8]) = ((v352 << 15) ^ 0x80E50000) - ((2 * ((v352 << 15) ^ 0x80E50000)) & 0x77470000);
  LODWORD(STACK[0x8B0]) = ((v352 << 16) ^ 0x1CA0000) + 963181972 + (~(2 * ((v352 << 16) ^ 0x1CA0000)) | 0x8D2FFFFF);
  v421 = ((v352 << 20) ^ 0x1CA00000) - ((2 * ((v352 << 20) ^ 0x1CA00000)) & 0xECE00000);
  v422 = ((v352 << 24) ^ 0xCA000000) - ((2 * ((v352 << 24) ^ 0xCA000000)) & 0x5E000000);
  v423 = ((v352 << 25) ^ 0x94000000) - ((2 * ((v352 << 25) ^ 0x94000000)) & 0x98000000);
  LODWORD(v100) = v396 ^ HIBYTE(v388) ^ (v388 >> 22) ^ (v388 >> 25) ^ (v390 >> 12) ^ HIWORD(v390) ^ (v390 >> 17) ^ (v352 >> 7) ^ (v352 >> 8) ^ v397 ^ v59 ^ v398 ^ v399 ^ v400 ^ v401 ^ v89 ^ v402;
  v424 = v420 ^ 0xE218B294;
  v425 = v420 ^ 0x42FCE7AE;
  v426 = (v420 ^ 0x42FCE7AE ^ (LODWORD(STACK[0x96C]) - 1656824564)) - 696236842 - ((2 * (v420 ^ 0x42FCE7AE ^ (LODWORD(STACK[0x96C]) - 1656824564))) & 0xAD0089AC);
  LODWORD(STACK[0xCF8]) = v100 >> 21;
  v427 = (LODWORD(STACK[0x9D0]) - 1816019189) ^ LODWORD(STACK[0xD18]) ^ LODWORD(STACK[0x838]) ^ LODWORD(STACK[0x9DC]) ^ LODWORD(STACK[0x9A8]) ^ LODWORD(STACK[0x9AC]) ^ LODWORD(STACK[0xD28]) ^ LODWORD(STACK[0xCE4]) ^ LODWORD(STACK[0x9A4]) ^ LODWORD(STACK[0x870]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x9A0]) ^ LODWORD(STACK[0xD30]) ^ LODWORD(STACK[0x9B8]) ^ LODWORD(STACK[0x9B0]) ^ (LODWORD(STACK[0x9BC]) - 1205819877) ^ (LODWORD(STACK[0x9C4]) + 253955787) ^ (LODWORD(STACK[0x9CC]) - 1067746603) ^ (LODWORD(STACK[0x9C0]) + 2063892065) ^ (LODWORD(STACK[0x9E0]) + 1349491242) ^ (LODWORD(STACK[0x9C8]) + 661658102) ^ (LODWORD(STACK[0x9B4]) - 650193949) ^ LODWORD(STACK[0xCE8]) ^ (3 * ((LODWORD(STACK[0x770]) << 30) ^ 0x40000000) + 1294585172) ^ (LODWORD(STACK[0x910]) + 64527706) ^ (LODWORD(STACK[0x964]) + 1052475927) ^ (LODWORD(STACK[0x8E8]) - 1065644047) ^ (LODWORD(STACK[0x888]) - 184988768) ^ LODWORD(STACK[0x91C]) ^ LODWORD(STACK[0x858]) ^ LODWORD(STACK[0x854]) ^ LODWORD(STACK[0x86C]) ^ LODWORD(STACK[0x860]) ^ LODWORD(STACK[0x850]) ^ LODWORD(STACK[0x9D4]) ^ LODWORD(STACK[0x84C]) ^ LODWORD(STACK[0xD20]) ^ LODWORD(STACK[0x840]) ^ LODWORD(STACK[0x844]) ^ LODWORD(STACK[0x8A8]) ^ LODWORD(STACK[0x88C]) ^ (LODWORD(STACK[0x8B4]) - 428633071) ^ (LODWORD(STACK[0x8C0]) - 1574073819) ^ (LODWORD(STACK[0x8D0]) + 1659148207) ^ (LODWORD(STACK[0x898]) + 13943772) ^ (LODWORD(STACK[0x890]) - 1127656219) ^ (LODWORD(STACK[0x8AC]) + 935299875) ^ LODWORD(STACK[0xCAC]) ^ ((LODWORD(STACK[0xCC0]) << 31) - 1229768543) ^ LODWORD(STACK[0xCCC]) ^ (LODWORD(STACK[0x958]) + 1582575684);
  LODWORD(v352) = v427 ^ (LODWORD(STACK[0x9D8]) + 1903640834) ^ LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0x87C]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0x900]) ^ LODWORD(STACK[0xCDC]) ^ LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0xCB8]) ^ LODWORD(STACK[0x934]) ^ LODWORD(STACK[0x908]) ^ (LODWORD(STACK[0x950]) - 1186015527) ^ (LODWORD(STACK[0x948]) - 156906657) ^ (LODWORD(STACK[0x920]) - 324232578) ^ (LODWORD(STACK[0x938]) + 596122176) ^ (LODWORD(STACK[0x944]) - 1031476400) ^ (LODWORD(STACK[0x8F0]) - 1589622439) ^ (LODWORD(STACK[0x928]) - 1976641160) ^ (LODWORD(STACK[0x8FC]) + 1821325251) ^ (LODWORD(STACK[0x8B8]) + 1000599070) ^ LODWORD(STACK[0x8B0]) ^ (v421 + 1987502836) ^ (v422 + 794803608) ^ (v423 - 868618994) ^ v413 ^ LODWORD(STACK[0x8D8]) ^ LODWORD(STACK[0x8C8]) ^ v415 ^ v414 ^ v418 ^ v419 ^ v417 ^ LODWORD(STACK[0x8BC]) ^ v100 ^ (v100 >> 21) ^ (((32 * v100) ^ 0xF370DE40) - ((2 * ((32 * v100) ^ 0xF370DE40)) & 0xE27A6000) - 247648255) ^ (((v100 << 11) ^ 0xDC379000) - ((2 * ((v100 << 11) ^ 0xDC379000)) & 0xD799C000) - 338892854) ^ (((4 * v100) ^ 0x3E6E1BC8) + 1080222661 - 2 * (((4 * v100) ^ 0x3E6E1BC8) & 0x4062E3D4 ^ (4 * v100) & 0x10)) ^ (((32 * (v100 >> 21)) ^ 0xCF80) - ((2 * ((32 * (v100 >> 21)) ^ 0xCF80)) & 0xB380) - 1793041976) ^ (((v100 >> 21 << 11) ^ 0x33E000) - ((2 * ((v100 >> 21 << 11) ^ 0x33E000)) & 0x10C000) - 662149706);
  v428 = v352 ^ (((4 * (v100 >> 21)) ^ 0x19F0) - 2 * (((4 * (v100 >> 21)) ^ 0x19F0) & 0xC5C ^ (4 * (v100 >> 21)) & 8) + 1427450967) ^ (LODWORD(STACK[0x968]) + 708649278);
  LODWORD(v352) = ((276541634 * (v426 ^ 0xD68044D6)) & 0x9BFDAF7C) + ((-2009212831 * (v426 ^ 0xD68044D6)) ^ 0x4DFED7BE);
  v429 = STACK[0x7C0];
  LODWORD(v100) = ((276541634 * ((LODWORD(STACK[0xB80]) + 888963785) ^ 0xD39A4135 ^ v429)) & STACK[0x3E0]) + ((-2009212831 * ((LODWORD(STACK[0xB80]) + 888963785) ^ 0xD39A4135 ^ v429)) ^ 0x7BFEFB7D) + 2139632453;
  LODWORD(STACK[0xD58]) = ((276541634 * ((LODWORD(STACK[0xB90]) + 1749925573) ^ 0xB50BE47B ^ LODWORD(STACK[0x7C0]))) & 0xF7E57FFE) + ((-2009212831 * ((LODWORD(STACK[0xB90]) + 1749925573) ^ 0xB50BE47B ^ LODWORD(STACK[0x7C0]))) ^ 0xFBF2BFFF) - 7049533;
  LODWORD(STACK[0xD5C]) = v100;
  v430 = v428 ^ 0xB86C4A61;
  v431 = STACK[0x78C];
  LODWORD(v163) = (LODWORD(STACK[0xC28]) + 1787662070) ^ LODWORD(STACK[0x78C]) ^ 0x1392038 ^ v428 ^ 0xB86C4A61;
  LODWORD(v100) = ((276541634 * v163) & 0x3F66FFFC) + ((-2009212831 * v163) ^ 0x9FB37FFE);
  v432 = STACK[0x788];
  LODWORD(v163) = LODWORD(STACK[0xD00]) ^ 0xA6DA356F;
  LODWORD(v98) = (LODWORD(STACK[0xC20]) + 1076392022) ^ LODWORD(STACK[0x788]) ^ 0x3998DAEC ^ v163;
  v433 = (LODWORD(STACK[0xC30]) + 790308433) ^ 0x5EB78893;
  v434 = ((276541634 * (v424 ^ LODWORD(STACK[0x998]) ^ 0xFE83F2B)) & 0xD7FFBB7C) + ((-2009212831 * (v424 ^ LODWORD(STACK[0x998]) ^ 0xFE83F2B)) ^ 0xEBFFDDBE) + 260526340;
  LODWORD(STACK[0xD78]) = v352 - 1383573756;
  LODWORD(STACK[0xD7C]) = v434;
  LODWORD(STACK[0xDB8]) = v100 + 1540599492;
  LODWORD(STACK[0xDBC]) = ((276541634 * (v433 ^ v431 ^ v428 ^ 0xB86C4A61)) & 0xB5F6FF5C) + 546026291 + ((-2009212831 * (v433 ^ v431 ^ v428 ^ 0xB86C4A61)) ^ 0xDAFB7FAE) - 1055;
  LODWORD(v352) = (LODWORD(STACK[0xC38]) + 1134754049) ^ v432 ^ 0x3C1343B7 ^ v163;
  LODWORD(STACK[0xD98]) = ((276541634 * v98) & 0xD7DE63EE) + ((-2009212831 * v98) ^ 0xEBEF31F7) + 261618891;
  LODWORD(STACK[0xD9C]) = ((276541634 * v352) & 0xDD7FF7CE) + ((-2009212831 * v352) ^ 0xEEBFFBE7) + 214381275;
  LODWORD(v352) = ((v425 ^ (LODWORD(STACK[0x970]) - 1532490415)) + 2115815958 - ((2 * (v425 ^ (LODWORD(STACK[0x970]) - 1532490415))) & 0xFC39942C)) ^ 0x7E1CCA16;
  LODWORD(v100) = (-2009212831 * v352) ^ 0x7FFEBDEB;
  LODWORD(v98) = (276541634 * v352) & 0xFFFD7BD6;
  v435 = ((LODWORD(STACK[0x980]) - 490029609) ^ v424 ^ 0xA0E4553A) + 577905114 - 2 * (((LODWORD(STACK[0x980]) - 490029609) ^ v424 ^ 0xA0E4553A) & 0x227221DB ^ ((LODWORD(STACK[0x980]) - 490029609) ^ v424) & 1);
  LODWORD(v352) = (LODWORD(STACK[0xC40]) + 1266385844) ^ v432 ^ 0x344BB502 ^ v163;
  v436 = ((276541634 * v352) & 0x9FF2D77C) + ((-2009212831 * v352) ^ 0xCFF96BBE);
  LODWORD(v352) = v429 ^ 0xD9C24AB8 ^ (LODWORD(STACK[0xBB8]) + 1007528436);
  LODWORD(v89) = ((276541634 * ((LODWORD(STACK[0xBD0]) - 2116908029) ^ 0x541131F1 ^ v429)) & 0xFC73DFFE) + ((-2009212831 * ((LODWORD(STACK[0xBD0]) - 2116908029) ^ 0x541131F1 ^ v429)) ^ 0x7E39EFFF) + 2102214339;
  LODWORD(STACK[0xD60]) = ((276541634 * ((LODWORD(STACK[0xBB0]) - 315182251) ^ 0xCAD3833D ^ v429)) & 0xFE7DFF64) + ((-2009212831 * ((LODWORD(STACK[0xBB0]) - 315182251) ^ 0xCAD3833D ^ v429)) ^ 0xFF3EFFB2) - 62378224;
  LODWORD(STACK[0xD64]) = v89;
  v437 = ((276541634 * (LODWORD(STACK[0xC48]) ^ v431 ^ 0x91CA0F5E ^ v430)) & 0x7EFD09EE) + 1007197118 + ((-2009212831 * (LODWORD(STACK[0xC48]) ^ v431 ^ 0x91CA0F5E ^ v430)) ^ 0xBF7E84F7);
  LODWORD(STACK[0xD80]) = v98 + 2072539351 + v100;
  LODWORD(STACK[0xD84]) = ((276541634 * (v435 ^ 0x227221DA)) & 0xDEC7D5F6) + ((-2009212831 * (v435 ^ 0x227221DA)) ^ 0xEF63EAFB) + 203637703;
  LODWORD(v100) = (LODWORD(STACK[0xC50]) + 1392632135) ^ 0x2CF26BFD ^ v432 ^ v163;
  LODWORD(STACK[0xDA0]) = v436 + 730710788;
  LODWORD(STACK[0xDA4]) = ((276541634 * v100) & 0xB7FFABB6) + ((-2009212831 * v100) ^ 0x5BFFD5DB) - 1618519833;
  LODWORD(v98) = (v425 ^ (LODWORD(STACK[0x988]) - 1799538837)) + 442470902 - ((2 * (v425 ^ (LODWORD(STACK[0x988]) - 1799538837))) & 0x34BF23EC);
  LODWORD(v100) = (LODWORD(STACK[0xC68]) - 888688895) ^ 0x620E4998 ^ v431 ^ v428 ^ 0xB86C4A61;
  v438 = ((LODWORD(STACK[0x97C]) - 1567088260) ^ v424 ^ 0xA0E4553A) + 1602142890 - 2 * (((LODWORD(STACK[0x97C]) - 1567088260) ^ v424 ^ 0xA0E4553A) & 0x5F7EC2AB ^ ((LODWORD(STACK[0x97C]) - 1567088260) ^ v424) & 1);
  LODWORD(STACK[0xDC0]) = v437 + 3597;
  LODWORD(STACK[0xDC4]) = ((276541634 * v100) & 0x3FDFFF6E) + ((-2009212831 * v100) ^ 0x9FEFFFB7) + 1536634635;
  LODWORD(v100) = v163 ^ v432 ^ (LODWORD(STACK[0xC58]) - 825601838);
  LODWORD(v89) = (v100 & 0x23 ^ 1) + (v100 & 0x23 ^ 0x22);
  LODWORD(v89) = ((v89 - ((2 * v89) & 0x40) + 56) & 0x44) - 1663319554;
  LODWORD(v100) = (v100 ^ 0x541E2466) + (v89 ^ 0x4021) - ((2 * v89) & 0x39B707BC) - 16417;
  v439 = ((276541634 * ((LODWORD(STACK[0xBE8]) + 1497748019) ^ 0x62D89B7A ^ v429)) & 0x7DF7AFFE) + ((-2009212831 * ((LODWORD(STACK[0xBE8]) + 1497748019) ^ 0x62D89B7A ^ v429)) ^ 0xBEFBD7FF) + 1015764675;
  LODWORD(STACK[0xD68]) = ((276541634 * (v352 ^ 0x66DEE43A)) & 0x6FEFEFC6) + ((-2009212831 * (v352 ^ 0x66DEE43A)) ^ 0xB7F7F7E3) + 1133459167;
  LODWORD(STACK[0xD6C]) = v439;
  v440 = (LODWORD(STACK[0xC60]) - 1897126240) ^ v431 ^ 0x3E988862 ^ v428 ^ 0xB86C4A61;
  LODWORD(v352) = (v352 & 0x9F4B5AD0 ^ 0x99011AC0) + (v352 & 0x9F4B5AD0 ^ 0x64A4010);
  LODWORD(STACK[0xD88]) = ((276541634 * (v98 ^ 0x1A5F91F6)) & 0x39FFF7F6) + ((-2009212831 * (v98 ^ 0x1A5F91F6)) ^ 0x1CFFFBFB) - 561564985;
  LODWORD(STACK[0xD8C]) = ((276541634 * (v438 ^ 0x5F7EC2AA)) & 0xFDEFF7DE) + ((-2009212831 * (v438 ^ 0x5F7EC2AA)) ^ 0x7EF7FBEF) + 2089759443;
  LODWORD(v98) = (LODWORD(STACK[0xC70]) + 105379524) ^ v431 ^ 0x66A9084F ^ v428 ^ 0xB86C4A61;
  LODWORD(STACK[0xDC8]) = ((276541634 * v440) & 0x279FFFAE) + ((-2009212831 * v440) ^ 0x13CFFFD7) - 407425301;
  LODWORD(STACK[0xDCC]) = ((276541634 * v98) & 0xD9DCAF7E) + ((-2009212831 * v98) ^ 0xECEE57BF) + 244897539;
  LODWORD(v98) = (LODWORD(STACK[0xC78]) ^ v432 ^ 0x84B80318 ^ v163) + 1663319554;
  LODWORD(v352) = ((v98 ^ 0x6EBB67DF) - 1857775583 + ((2 * v98) & 0xDD76CFBE)) * ((v352 - ((2 * v352) & 0xB29E4C0) + 1167389292) ^ 0x52E270DD);
  LODWORD(v98) = ((276541634 * ((LODWORD(STACK[0xBF0]) + 1093306166) ^ 0x6D48317D ^ v429)) & 0xEFFBBA56) + ((-2009212831 * ((LODWORD(STACK[0xBF0]) + 1093306166) ^ 0x6D48317D ^ v429)) ^ 0x77FDDD2B);
  LODWORD(STACK[0xDA8]) = -2009212831 * (((2 * v100) & 0xDFDBFDFA) + (v100 ^ 0x6FEDFEFD)) - 1654396381;
  LODWORD(STACK[0xDAC]) = (v352 ^ 0xDF7FBFFE) + 545275906 + ((2 * v352) & 0xBEFF7FFC);
  v441 = (v425 ^ (LODWORD(STACK[0x99C]) - 1358478141)) - 302558985 - ((2 * (v425 ^ (LODWORD(STACK[0x99C]) - 1358478141))) & 0xDBEEA1EE);
  LODWORD(v352) = ((v425 ^ (LODWORD(STACK[0x994]) - 1081010185)) - 1869329699 - ((2 * (v425 ^ (LODWORD(STACK[0x994]) - 1081010185))) & 0x212895BA)) ^ 0x90944ADD;
  v442 = ((276541634 * v352) & 0x17FFF73C) + ((-2009212831 * v352) ^ 0xBFFFB9E);
  LODWORD(v352) = (LODWORD(STACK[0xC90]) - 313253724) ^ v431 ^ 0x9CF0B266 ^ v428 ^ 0xB86C4A61;
  LODWORD(v352) = ((276541634 * v352) & LODWORD(STACK[0x3DC])) + ((-2009212831 * v352) ^ 0x77FF76D3);
  LODWORD(v100) = (LODWORD(STACK[0xC88]) + 1719766610) ^ 0x2445E7C6 ^ v429 ^ 0xD9C24AB8;
  v443 = ((276541634 * (LODWORD(STACK[0xC80]) ^ v432 ^ 0x48A130A2 ^ v163)) & 0x5F2EF7FA) - 873486209 + ((-2009212831 * (LODWORD(STACK[0xC80]) ^ v432 ^ 0x48A130A2 ^ v163)) ^ 0x2F977BFD);
  v444 = ((276541634 * ((LODWORD(STACK[0xC08]) - 892067066) ^ 0x83E3CC8A ^ v429)) & 0xDF6F0E7C) + ((-2009212831 * ((LODWORD(STACK[0xC08]) - 892067066) ^ 0x83E3CC8A ^ v429)) ^ 0x6FB7873E) - 1949325436;
  LODWORD(STACK[0xD70]) = v98 - 2088152681;
  LODWORD(STACK[0xD74]) = v444;
  LODWORD(v98) = (LODWORD(STACK[0xC98]) - 1967845454) ^ v432;
  LODWORD(STACK[0xD90]) = v442 - 276352220;
  LODWORD(STACK[0xD94]) = ((276541634 * (v441 ^ 0xEDF750F7)) & 0x6BE7EEBE) + ((-2009212831 * (v441 ^ 0xEDF750F7)) ^ 0xB5F3F75F) + 1167275875;
  LODWORD(STACK[0xDB0]) = v443 + 2630;
  LODWORD(STACK[0xDB4]) = ((276541634 * (v98 ^ 0x770D3900 ^ v163)) & 0xADFDFFFE) + ((-2009212831 * (v98 ^ 0x770D3900 ^ v163)) ^ 0x56FEFFFF) - 1534579005;
  LODWORD(v98) = (LODWORD(STACK[0xCA0]) + 1326269187) ^ v431 ^ 0x7EB96DC5 ^ v428 ^ 0xB86C4A61;
  LODWORD(STACK[0xE58]) = ((276541634 * v100) & 0xDFBF76FC) + ((-2009212831 * v100) ^ 0xEFDFBB7E) + 195523396;
  LODWORD(STACK[0xDD0]) = v352 - 2088257553;
  LODWORD(STACK[0xDD4]) = ((276541634 * v98) & 0xCFFFFF7C) + ((-2009212831 * v98) ^ 0xE7FFFFBE) + 327626500;
  LODWORD(STACK[0xE5C]) = ((276541634 * (v424 ^ (LODWORD(STACK[0xC10]) - 167738680) ^ 0x8D9E2C9F)) & 0x6FFD7BBE) + ((-2009212831 * (v424 ^ (LODWORD(STACK[0xC10]) - 167738680) ^ 0x8D9E2C9F)) ^ LODWORD(STACK[0x3D8])) + 1133015267;
  LODWORD(v100) = ((276541634 * ((LODWORD(STACK[0xC18]) + 3260) ^ 0x534FC010 ^ v163)) & 0x87F95F7E) + ((-2009212831 * ((LODWORD(STACK[0xC18]) + 3260) ^ 0x534FC010 ^ v163)) ^ 0x43FCAFBF);
  LODWORD(v98) = ((276541634 * (v424 ^ (LODWORD(STACK[0xBE0]) + 661199985) ^ 0x878D494B)) & 0x7796DCFE) + ((-2009212831 * (v424 ^ (LODWORD(STACK[0xBE0]) + 661199985) ^ 0x878D494B)) ^ 0x3BCB6E7F) - 1078214589;
  LODWORD(STACK[0xE18]) = ((276541634 * ((LODWORD(STACK[0xC00]) - 1211863501) ^ 0x63792CBE ^ v428 ^ 0xB86C4A61)) & 0xDB67FFFE) + ((-2009212831 * ((LODWORD(STACK[0xC00]) - 1211863501) ^ 0x63792CBE ^ v428 ^ 0xB86C4A61)) ^ 0x6DB3FFFF) - 1915539773;
  LODWORD(STACK[0xE1C]) = v98;
  LODWORD(v98) = ((276541634 * ((LODWORD(STACK[0xBD8]) - 505539622) ^ 0xD0F2F375 ^ v163)) & 0xEE6A3F4A) + ((-2009212831 * ((LODWORD(STACK[0xBD8]) - 505539622) ^ 0xD0F2F375 ^ v163)) ^ 0xF7351FA5);
  LODWORD(v352) = ((276541634 * ((LODWORD(STACK[0xBC0]) - 258754936) ^ 0x242EF405 ^ v430)) & 0xED769FFC) + ((-2009212831 * ((LODWORD(STACK[0xBC0]) - 258754936) ^ 0x242EF405 ^ v430)) ^ 0xF6BB4FFE);
  v445 = ((276541634 * (LODWORD(STACK[0xB30]) ^ 0x7561401A ^ v163)) & 0xFFFD6DFE) + 2072539351 + ((-2009212831 * (LODWORD(STACK[0xB30]) ^ 0x7561401A ^ v163)) ^ 0x7FFEB6FF);
  v446 = ((276541634 * ((LODWORD(STACK[0xBF8]) + 1896469460) ^ 0xA180C0C8 ^ v429)) & 0xB3ADAAFE) + ((-2009212831 * ((LODWORD(STACK[0xBF8]) + 1896469460) ^ 0xA180C0C8 ^ v429)) ^ 0xD9D6D57F) + 565205315;
  LODWORD(STACK[0xDD8]) = v100 - 1215660285;
  LODWORD(STACK[0xDDC]) = v446;
  LODWORD(v100) = ((276541634 * (LODWORD(STACK[0xBC8]) ^ 0x269E7ABB ^ v429)) & STACK[0x3D4]) + ((-2009212831 * (LODWORD(STACK[0xBC8]) ^ 0x269E7ABB ^ v429)) ^ 0x5FDF3BFB) - 1683492153;
  LODWORD(STACK[0xDE0]) = v98 + 72486685;
  LODWORD(STACK[0xDE4]) = v100;
  LODWORD(v100) = v424 ^ (LODWORD(STACK[0xBA8]) + 2053124320) ^ 0xDA8465DA;
  v447 = ((276541634 * (v424 ^ LODWORD(STACK[0xB78]) ^ 0x5B67E83E)) & 0xFAFFFF5E) + ((-2009212831 * (v424 ^ LODWORD(STACK[0xB78]) ^ 0x5B67E83E)) ^ 0xFD7FFFAF) - 33083629;
  LODWORD(STACK[0xE28]) = ((276541634 * ((LODWORD(STACK[0xBA0]) - 1211765952) ^ 0x6378A9CD ^ v428 ^ 0xB86C4A61)) & 0xBFFFEFF6) + ((-2009212831 * ((LODWORD(STACK[0xBA0]) - 1211765952) ^ 0x6378A9CD ^ v428 ^ 0xB86C4A61)) ^ 0xDFFFF7FB) + 461846215;
  LODWORD(STACK[0xE2C]) = v447;
  v448 = ((276541634 * ((LODWORD(STACK[0xB58]) - 9129836) ^ 0x2BC9F219 ^ v430)) & 0xFB227C66) + ((-2009212831 * ((LODWORD(STACK[0xB58]) - 9129836) ^ 0x2BC9F219 ^ v430)) ^ 0x7D913E33);
  v449 = ((276541634 * ((LODWORD(STACK[0xB70]) + 82847550) ^ 0x35DCC791 ^ v163)) & 0xA6BF77EE) + ((-2009212831 * ((LODWORD(STACK[0xB70]) + 82847550) ^ 0x35DCC791 ^ v163)) ^ 0xD35FBBF7);
  LODWORD(STACK[0xE20]) = v352 + 80469700;
  LODWORD(v352) = LODWORD(STACK[0xB98]) - 1593379528;
  LODWORD(STACK[0xE24]) = ((276541634 * v100) & 0x5F7FDEBE) + ((-2009212831 * v100) ^ 0xAFBFEF5F) + 1271349091;
  LODWORD(v98) = v424 ^ (LODWORD(STACK[0xB60]) + 289927635) ^ 0xB1A3A4E9;
  v450 = (-2009212831 * v98) ^ 0x3FFFFFF7;
  v451 = (276541634 * v98) & 0x7FFFFFEE;
  LODWORD(v59) = ((276541634 * (v352 ^ 0xA30E624 ^ v429)) & 0xF7CBEF8A) + ((-2009212831 * (v352 ^ 0xA30E624 ^ v429)) ^ 0x7BE5F7C5);
  v452 = LODWORD(STACK[0xB68]) + 443388226;
  v453 = LODWORD(STACK[0xB50]) + 1588019378;
  v454 = LODWORD(STACK[0xB48]) - 1969327358;
  v455 = LODWORD(STACK[0xB40]) - 1273963240;
  v456 = LODWORD(STACK[0xB28]) + 979417962;
  LODWORD(v89) = LODWORD(STACK[0xB20]) - 606985320;
  v457 = LODWORD(STACK[0xB18]) + 104922011;
  v458 = LODWORD(STACK[0xB14]) + 1671;
  v459 = LODWORD(STACK[0xB08]) - 1688530575;
  v460 = LODWORD(STACK[0xB00]) - 2031221059;
  v461 = LODWORD(STACK[0xAF8]) + 184329600;
  LODWORD(v98) = LODWORD(STACK[0x9F4]) - 841296988;
  v462 = LODWORD(STACK[0x9F0]) - 1876200151;
  LODWORD(v352) = LODWORD(STACK[0x9EC]) + 19026505;
  v463 = LODWORD(STACK[0x9E8]) - 726923264;
  LODWORD(v100) = LODWORD(STACK[0x9E4]) + 3025;
  LODWORD(STACK[0xDE8]) = v445 + 1772;
  LODWORD(STACK[0xDEC]) = v59 + 2141271805;
  LODWORD(STACK[0xE30]) = v448 + 2113269903;
  LODWORD(STACK[0xE34]) = v451 + v450 - 1148768565;
  LODWORD(v163) = v453 ^ 0x6F8BA01D ^ v163;
  LODWORD(STACK[0xDF0]) = v449 + 673673931;
  LODWORD(STACK[0xDF4]) = ((276541634 * (v452 ^ 0xB16B825E ^ v429)) & 0xCF72FFD4) + ((-2009212831 * (v452 ^ 0xB16B825E ^ v429)) ^ 0xE7B97FEA) + 332246744;
  LODWORD(STACK[0xE38]) = ((276541634 * (v454 ^ 0x5E23318F ^ v428 ^ 0xB86C4A61)) & 0xDFCDD6EA) + ((-2009212831 * (v454 ^ 0x5E23318F ^ v428 ^ 0xB86C4A61)) ^ 0xEFE6EB75) + 195052365;
  LODWORD(STACK[0xE3C]) = ((276541634 * (v424 ^ v456 ^ 0x9A84EE50)) & 0x46EFFFDE) + ((-2009212831 * (v424 ^ v456 ^ 0x9A84EE50)) ^ 0x2377FFEF) - 670093613;
  v464 = STACK[0xD00];
  LODWORD(STACK[0xE00]) = ((276541634 * (LODWORD(STACK[0xB38]) ^ 0x8C5ACEEB ^ LODWORD(STACK[0xD00]))) & STACK[0x3CC]) + ((-2009212831 * (LODWORD(STACK[0xB38]) ^ 0x8C5ACEEB ^ LODWORD(STACK[0xD00]))) ^ LODWORD(STACK[0x3D0])) - 2054727221;
  LODWORD(STACK[0xE04]) = ((276541634 * (v457 ^ 0xAD76E887 ^ v429)) & 0xFCF599DA) + ((-2009212831 * (v457 ^ 0xAD76E887 ^ v429)) ^ 0xFE7ACCED) - 49520171;
  LODWORD(STACK[0xDFC]) = ((276541634 * (v455 ^ 0x27FCE604 ^ v429)) & 0xFD671FFC) + ((-2009212831 * (v455 ^ 0x27FCE604 ^ v429)) ^ 0xFEB38FFE) - 53240124;
  LODWORD(STACK[0xDF8]) = ((276541634 * v163) & 0xFFFBBDFE) + ((-2009212831 * v163) ^ 0xFFFDDEFF) - 74887229;
  LODWORD(v163) = v424 ^ v458 ^ 0x9D030B57;
  v465 = STACK[0xCF8] & 0x2C;
  LODWORD(STACK[0xE40]) = ((276541634 * (v89 ^ 0xF6F6115 ^ v428 ^ 0xB86C4A61)) & 0x6A7BBDE4) + ((-2009212831 * (v89 ^ 0xF6F6115 ^ v428 ^ 0xB86C4A61)) ^ 0xB53DDEF2) + 1179209680;
  LODWORD(STACK[0xE44]) = ((276541634 * v163) & 0x63B7FD7E) + ((-2009212831 * v163) ^ 0x31DBFEBF) - 911527933;
  LODWORD(v163) = ((2 * ((v465 ^ 0x2C) + v465)) & 0x18) + (((v465 ^ 0x2C) + v465) ^ 0x544BF68F);
  *(&STACK[0xD58] + ((4 * v163) | (((v163 - 67211912) < 0x504A6407) << 34)) - 0x1512FDA3CLL) = ((276541634 * (v459 ^ 0xCADC4B1 ^ v464)) & 0x576FFDF6) + ((-2009212831 * (v459 ^ 0xCADC4B1 ^ v464)) ^ 0xABB7FEFB) + 1338978247;
  LODWORD(STACK[0xE0C]) = ((276541634 * (v461 ^ 0xA1CAB69C ^ v429)) & 0xDF15CE7C) + ((-2009212831 * (v461 ^ 0xA1CAB69C ^ v429)) ^ 0xEF8AE73E) + 201082756;
  LODWORD(STACK[0xE10]) = ((276541634 * (v462 ^ 0x7DDA0E9 ^ v464)) & 0xDEFD0E7C) + ((-2009212831 * (v462 ^ 0x7DDA0E9 ^ v464)) ^ 0xEF7E873E) + 201893764;
  LODWORD(STACK[0xE54]) = ((276541634 * (v424 ^ v100 ^ 0x9225E4B4)) & 0x4FBF5FFA) + ((-2009212831 * (v424 ^ v100 ^ 0x9225E4B4)) ^ 0x27DFAFFD) - 743997755;
  LODWORD(STACK[0xE4C]) = ((276541634 * (v424 ^ v98 ^ 0x6D3E869E)) & 0x1AFFA8DA) + ((-2009212831 * (v424 ^ v98 ^ 0x6D3E869E)) ^ 0x8D7FD46D) + 1845975637;
  LODWORD(STACK[0xE50]) = ((276541634 * (v352 ^ 0xD59F10C4 ^ v428 ^ 0xB86C4A61)) & 0xDFDBFD62) + ((-2009212831 * (v352 ^ 0xD59F10C4 ^ v428 ^ 0xB86C4A61)) ^ 0x6FEDFEB1) - 1952894959;
  LODWORD(STACK[0xE48]) = ((276541634 * (v460 ^ 0x52534430 ^ v428 ^ 0xB86C4A61)) & 0x5E3FFEDE) + ((-2009212831 * (v460 ^ 0x52534430 ^ v428 ^ 0xB86C4A61)) ^ 0xAF1FFF6F) + 1281830739;
  LODWORD(STACK[0xE14]) = ((276541634 * (v463 ^ 0x7F9A1B1C ^ v429)) & 0xFFE7F9B6) + ((-2009212831 * (v463 ^ 0x7F9A1B1C ^ v429)) ^ 0xFFF3FCDB) - 74239513;
  v466 = STACK[0x790];
  v467 = LODWORD(STACK[0x48C]);
  return (*(STACK[0xD40] + 8 * SLODWORD(STACK[0xD38])))();
}

uint64_t sub_1BADF68C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (a7 + 2014950430) & 0x87E6476B;
  v12 = *(a6 - 0x785FEF64C8799D4ELL);
  v13 = *v12;
  v14 = __ROR8__((((a7 - 1875438287) & 0x6FC8E77F) - 1138) & v12, 8);
  STACK[0xD48] = v11;
  v15 = (((v11 ^ 0x4D7C3013B6750132) - v14) & 0x75530549AD230FB7) + v14 + 0x3283CFEC498AFD8ELL - ((v14 + 0x3283CFEC498AFD8ELL) & 0x73530549AD230FB7);
  v16 = v15 ^ 0x6B165CB7EFD148A9;
  v15 ^= 0xFF0823D5A386A4D8;
  v17 = __ROR8__(v16, 8);
  v18 = (0x61C2C849B785CFCLL - ((v17 + v15) | 0x61C2C849B785CFCLL) + ((v17 + v15) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v19 = v18 ^ __ROR8__(v15, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((((2 * (v20 + v19)) & 0x69C1C0D9ABA5C00ALL) - (v20 + v19) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8, 8);
  v22 = (((2 * (v20 + v19)) & 0x69C1C0D9ABA5C00ALL) - (v20 + v19) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22) ^ 0xFD1C75332F7F0C87;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0x683C63A725393F58) - (v25 + v24) - 0x341E31D3929C9FACLL) ^ 0xC80B8ADABB55473CLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x4E57CE6D5C1D29D7 - ((v28 + v27) | 0x4E57CE6D5C1D29D7) + ((v28 + v27) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xC809DE93B29A9CA6;
  v32 = __ROR8__((v12 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = -2 - (((0x4D7C3013B6750271 - v32) | 0x80ECD30D5A457A12) + ((v32 + 0x3283CFEC498AFD8ELL) | 0x7F132CF2A5BA85EDLL));
  v34 = __ROR8__(v33 ^ 0x9CA98AF318B73D0CLL, 8);
  v33 ^= 0x8B7F59154E0D17DuLL;
  v35 = (v34 + v33) ^ 0xE13500AF98B0C0DCLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x490250233B9E532;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xFD1C75332F7F0C87;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x918D3AB85B7434E0) - (v41 + v40) + 0x373962A3D245E58FLL) ^ 0xCB2CD9AAFB8C3D1FLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x4B876952F452CECFLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xC809DE93B29A9CA6;
  v47 = (((((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v12 + 1) & 7))) ^ *(v12 + 1)) << 16) | (((((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v12 & 7u))) ^ v13) << 24);
  v48 = (__ROR8__((v12 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x3283CFEC498AFD8ELL) & 0xF9FFFFFFFFFFFFFFLL;
  v49 = v48 ^ 0x1E4559FE42F2471ELL;
  v48 ^= 0x8A5B269C0EA5AB6FLL;
  v50 = __ROR8__(v49, 8);
  v51 = (v50 + v48 - ((2 * (v50 + v48)) & 0x94DA847B6A78BD3CLL) - 0x3592BDC24AC3A162) ^ 0x2B5842922D8C9E42;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x490250233B9E532;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  v56 = (((2 * (v54 + v55)) & 0x55D206C00BA16EBELL) - (v54 + v55) - 0x2AE9036005D0B760) ^ 0x280A89ACD5504427;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xFC15BB0929C9D890;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x4B876952F452CECFLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xC809DE93B29A9CA6;
  v63 = v47 | (((((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v12 + 2) & 7))) ^ *(v12 + 2)) << 8);
  v64 = *(v12 + 3);
  v12 += 3;
  v65 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v66 = -2 - (((0x4D7C3013B6750271 - v65) | 0x8667B3E936086AC9) + ((v65 + 0x3283CFEC498AFD8ELL) | 0x79984C16C9F79536));
  v67 = v66 ^ 0x9A22EA1774FA2DD7;
  v66 ^= 0xE3C957538ADC1A6uLL;
  v68 = (__ROR8__(v67, 8) + v66) ^ 0xE13500AF98B0C0DCLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x490250233B9E532;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (0x1380784254EB2752 - ((v72 + v71) | 0x1380784254EB2752) + ((v72 + v71) | v8)) ^ v9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__(((v10 & (2 * (v75 + v74))) - (v75 + v74) + 0x487919B9114A733ELL) ^ 0xB46CA2B03883ABAELL, 8);
  v77 = ((v10 & (2 * (v75 + v74))) - (v75 + v74) + 0x487919B9114A733ELL) ^ 0xB46CA2B03883ABAELL ^ __ROR8__(v74, 61);
  v78 = (v76 + v77) ^ 0x4B876952F452CECFLL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xC809DE93B29A9CA6;
  LODWORD(v12) = (((__ROR8__(v80, 8) + (v80 ^ __ROR8__(v79, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v12 & 7u))) ^ v64;
  return (*(STACK[0xD40] + 8 * ((((((v63 | v12) - 2135508617 - 2 * ((v63 | v12) & 0xB6B97F ^ v12 & 8)) ^ a4) != -2135508617) * v7) ^ a7)))();
}

uint64_t sub_1BADF6FBC@<X0>(unint64_t a1@<X5>, int a2@<W8>)
{
  v3 = (a2 + 934) | v2;
  STACK[0x790] = a1;
  v4 = *(a1 - 0x785FEF64C8799D56) - ((2 * *(a1 - 0x785FEF64C8799D56) + 416811056) & (v3 ^ 0x187DA019)) - 391456744;
  v5 = ((2 * v4) & 0xDFFDAFCE ^ 0x187DA800) + (v4 ^ LODWORD(STACK[0x488]));
  LODWORD(STACK[0x9F0]) = v5;
  v5 -= 758154880;
  v6 = (v3 ^ 0xC73) + 1120816381;
  LODWORD(STACK[0x928]) = v5;
  LODWORD(STACK[0xD48]) = v6;
  v7 = STACK[0xD50];
  return (*(STACK[0xD40] + 8 * (v3 ^ (2 * (v5 == v6)))))(1487311063, 4237105649, 3191346604, (v3 ^ 0xC73u) - 443);
}

uint64_t sub_1BADF7144@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W6>, int a5@<W8>)
{
  v19 = v6 < v17;
  v20 = *((v8 | ((v8 < 0x1E41870C) << 32)) + v5 - 507610892);
  v21 = (a1 ^ 0xA316B7C) - 322506639 * (v7 + (v20 ^ 0x667FFF7F) + 2 * (v20 & 0x7F)) + 96748124;
  v22 = (v21 ^ 0xBCFD7FBF) + 1124237377 + ((2 * v21) & 0x79FAFF7E);
  v23 = v9 ^ v22 ^ v12 ^ (v22 % 0x101 - ((2 * (v22 % 0x101)) & 0xD8) - 643236756);
  v24 = ((v23 + v14 - ((2 * v23) & 0x5046A288)) ^ v14) + (a2 ^ 0x965F982D);
  v25 = ((2 * v24) & 0xE6CF7EEE) + (v24 ^ 0x7367BF77);
  HIDWORD(v26) = a3 + v25 - 25775147;
  LODWORD(v26) = HIDWORD(v26);
  v27 = (a2 ^ 0x965F982D ^ HIDWORD(v26)) - 1177134216 + (~(2 * (a2 ^ 0x965F982D ^ HIDWORD(v26))) | 0x8C534911);
  v28 = ((2 * ((v9 ^ v15) - (a3 + v25) + 25775147)) & 0x7F8BFF5A) + (((v9 ^ v15) - (a3 + v25) + 25775147) ^ 0xBFC5FFAD);
  v29 = ((v26 >> 31) ^ 0x7FEBEF3B) - v25 + (a4 & (2 * (v26 >> 31))) - v28;
  v30 = v27 ^ 0x59087AFF ^ (v29 - ((2 * v29 + 1873511890) & 0xC1BC4310) + 414442609);
  v31 = v30 - ((2 * v30 + 1750842) & 0xF5E6FE) + 42487580;
  v32 = ((2 * (v28 + 1077542996 + (v31 ^ 0x7F850C80))) & 0xFF61BE7C) + ((v28 + 1077542996 + (v31 ^ 0x7F850C80)) ^ v11);
  v33 = ((v13 + ((8 * v31) ^ 0x3D79BF8) + (~(2 * ((8 * v31) ^ 0x3D79BF8)) | 0x86C6E57F) + 1) ^ v13) - v32 + v11;
  v34 = ((2 * ((v31 ^ 0x807AF37F) - v25 + v18)) & 0x7CF1FFFC) + (((v31 ^ 0x807AF37F) - v25 + v18) ^ 0x3E78FFFE);
  v35 = ((v31 >> 29) ^ 4) + (v33 ^ 0xD7B5CFEF) + ((2 * v33) & 0xAF6B9FDE) + 675950609;
  v36 = v31 ^ v27;
  v37 = (v35 ^ 0xFFB75F1D) + v34 + ((2 * v35) & 0xFF6EBE3A);
  v38 = v37 - ((2 * v37 + 60768714) & 0x2CDBCBD6) - 667056432;
  v39 = v38 ^ v36 ^ 0xA78B8629;
  v40 = v39 + (v36 ^ 0x39ACA808) - ((2 * (v39 + (v36 ^ 0x39ACA808))) & 0xC722195C);
  HIDWORD(v26) = v38 ^ v36 ^ 0x278B8629;
  LODWORD(v26) = v38 ^ ~v36;
  v41 = ((2 * (v38 ^ v36 ^ (v32 + 5185730))) & 0xE7F7BFFC ^ 0x47170C50) + (v38 ^ v36 ^ (v32 + 5185730) ^ 0xD47059D7);
  v42 = ((2 * (v26 >> 31)) & 0x4F7DFEF2) + ((v26 >> 31) ^ (v10 + 122));
  v43 = ((2 * (v34 - 1048117246 + v39)) & 0xF03FFBDE) + ((v34 - 1048117246 + v39) ^ 0xF81FFDEF);
  if (v19 == v8 + 492156302 < v17)
  {
    v19 = v8 + 492156302 < v6;
  }

  v44 = (v40 + 1670450350) ^ 0xF20488AE ^ (v42 - v41 + v43 - ((2 * (v42 - v41 + v43) + 674874668) & 0x232B0800) + 1706190486);
  v45 = v44 - ((2 * v44 + 236326122) & 0xEB9D2906) - 52847880;
  return (*(STACK[0xD40] + 8 * ((39 * !v19) ^ a5)))(v45, v45 ^ (v40 + 1670450350), ((v43 + 132121105 + (v45 ^ 0xF5CE9483)) ^ v16) - 1650475016 + ((2 * (v43 + 132121105 + (v45 ^ 0xF5CE9483))) & 0xD7DBB378));
}

uint64_t sub_1BADF76C8@<X0>(unsigned int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v14 = *((a1 | ((a1 < v11) << 32)) + v8 - 1840388239);
  v15 = (a1 + (v14 ^ 0x2D1DF3F8) + ((v14 << ((v7 + 120) ^ 0xE3)) & 0x1F0)) * (((v7 - 1066) | 0x403) - 322507730) - v5 + 735860442;
  v16 = v15 ^ v12 ^ (v15 % 0x101 + v12 - ((2 * (v15 % 0x101)) & 0x138));
  v17 = a2 - 256444646 + (a3 ^ 0x77A855EF ^ (v16 - ((2 * v16) & 0xF8367D7C) + 2082160318));
  v18 = (v4 ^ v10) + 134219930 + (v17 ^ 0xF7FFEEEF) + (STACK[0xA20] & (2 * v17)) + 2167;
  v19 = (STACK[0xA1C] & (2 * v18)) + (v18 ^ 0x2FCFB8BF);
  HIDWORD(v20) = v19 + 1268536385;
  LODWORD(v20) = v19 + 1268536385;
  v21 = ((v20 >> 31) ^ (v13 + 2662)) + a2 - v19 + (LODWORD(STACK[0xA10]) & (2 * (v20 >> 31))) - (((2 * ((a3 ^ v3) - v19 - 1268536385)) & 0xFE9755BE) + (((a3 ^ v3) - v19 - 1268536385) ^ 0xFF4BAADF));
  v22 = a1 - 513964340;
  if (v6 < v9 != v22 < v9)
  {
    v23 = v6 < v9;
  }

  else
  {
    v23 = v22 < v6;
  }

  return (*(STACK[0xD40] + 8 * ((509 * v23) ^ (v7 + 636))))();
}

uint64_t sub_1BADF7BBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  STACK[0xD18] = a5;
  STACK[0x4A0] = a5 + 0x3FD06D747743858;
  return (*(STACK[0xD40] + 8 * a4))(a1, a2, a3, 243232, 120699936, 15, a4 ^ 0x155u, 486464);
}

uint64_t sub_1BADF7C5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  v18 = ((a4 >> 1) * v16) >> 40;
  LODWORD(v18) = ((a8 - v18 * v13) & a7) + ((a4 - v18 * v15) ^ v17);
  *(v14 + ((v18 + v11 < v12) << 32) + v18 + v8) = a5 - (v9 & (2 * a5)) - 11;
  return (*(STACK[0xD40] + 8 * ((14 * (a6 != 0)) | v10)))(a1, a2, a3, a4 + 691, (a5 + 1), (a6 - 1));
}

uint64_t sub_1BADF7CD8(int a1, int a2, int a3)
{
  v10 = (((v5 ^ 0x39B19232u) % 0xF) ^ 0xFF7BDEBF) + 2 * ((v5 ^ 0x39B19232u) % 0xF);
  v11 = STACK[0x1628];
  v12 = 691 * ((a1 & 0xF ^ 0xFA337EFD) + 1608494942 + ((2 * a1) & 0x1C ^ 4)) - 566389812;
  v13 = v12 - ((((v12 >> 1) * v9) >> 32) >> 8) * v8;
  v14 = ((2 * v13) & 0x77E) + (v13 ^ 0x7FFFEFBF);
  v15 = *(v7 + v14 - 2147479487 + (((v14 - 84476928) < 0x7AF6EBBF) << 32));
  LODWORD(v14) = a3 - 160274868;
  v16 = ((v14 % 0xE) ^ 0x3BA8E944) + ((2 * (v14 % 0xE)) & 8);
  LOBYTE(STACK[0x1628]) = v15;
  v17 = ((2 * v13) & 0x7DE) + (v13 ^ 0x9331EFEF);
  *(v7 + ((v17 + 2130656082 < 0x12312B41) << 32) + (v17 + 1825443857)) = v11;
  v18 = 691 * v10 + 1688828742 - (((((691 * v10 + 1688828742) >> 1) * v9) >> 32) >> 8) * v8;
  v19 = ((2 * v18) & 0x7BE) + (v18 ^ 0xFCDFFFDF);
  v20 = STACK[0x1519];
  LOBYTE(STACK[0x1519]) = *(v7 + ((v19 + 1073323766 < 0x3CD99ED5) << 32) + (v19 + 52428833));
  v21 = ((2 * v18) & 0x1F4) + (v18 ^ 0x737D78FA);
  *((v21 | (((v21 - 51912720) < 0x706558EA) << 32)) + v7 - 1937602810) = v20;
  v22 = 691 * v16 - 149546758 - (((((691 * v16 - 149546758) >> 1) * v9) >> 32) >> 8) * v8;
  LODWORD(v21) = ((2 * v22) & 0x476) + (v22 ^ LODWORD(STACK[0x484]));
  v23 = STACK[0x140A];
  LOBYTE(STACK[0x140A]) = *(v7 + (((v21 + 1597626846) < 0x5731D819) << 32) + v21 + 134742469);
  LODWORD(v21) = a2 ^ 0x965F982D;
  v24 = ((v21 % 0xD) ^ 0x6F436FFF) + 2 * (v21 % 0xD);
  v25 = ((2 * v22) & 0x7CA) + (v22 ^ 0x7F7BF3E5);
  v26 = (v5 ^ v14 ^ 0x39B19232) + 302666385 - 2 * ((v5 ^ v14 ^ 0x39B19232) & 0x120A5CED ^ (v5 ^ v14) & 4) + 2648;
  LODWORD(v14) = (a1 ^ v14 ^ 0xF5CE9483) + 2026223922 - 2 * ((a1 ^ v14 ^ 0xF5CE9483) & 0x78C5B93A ^ (a1 ^ v14) & 8);
  *(v7 + v25 - 2138829797 + (((v25 - 2199585) < 0x7F5A63C4) << 32)) = v23;
  v27 = STACK[0x16BD];
  LODWORD(v25) = v14 ^ v5;
  v28 = 691 * v24 - 1392742164 - (((((691 * v24 - 1392742164) >> 1) * v9) >> 32) >> 8) * v8;
  v29 = 2 * (691 * v24 + 28908 - (((((691 * v24 - 1392742164) >> 1) * v9) >> 32) >> 8) * v8);
  LOBYTE(STACK[0x16BD]) = *((((v29 & 0x79C) + (v28 ^ 0x6DF72BCE)) | (((v29 & 0x79C) + (v28 ^ 0x6DF72BCE) - 1180356 < 0x6DE5290A) << 32)) + v7 - 1844915150);
  *(v7 + (((v29 & 0x7F2) + (v28 ^ 0xF7F8FFF9) + 2135947455 < 0x7748F8B8) << 32) + ((v29 & 0x7F2) + (v28 ^ 0xF7F8FFF9) + 134676487)) = v27;
  v30 = v14 ^ v5 ^ 0xBE48A28A;
  LODWORD(v14) = v21 - (v14 ^ 0x78C5B932);
  LOBYTE(v21) = v14 - 65;
  LODWORD(v14) = v14 - 1312911425 - ((2 * v14) & 0x637D1F60) - 15;
  v31 = 691 * (((2 * (v30 % 0xC)) & 0x12) + ((v30 % 0xC) ^ 0x7F4FA5F9)) + 1543946705;
  v32 = v31 - ((((v31 >> 1) * v9) >> 32) >> 8) * v8;
  LOBYTE(v29) = STACK[0x15AE];
  v33 = ((((2 * v32) & 0x76E) + (v32 ^ 0xFCBFBBB7) + 1275002848 < 0x48BEBB97) << 32) + (((2 * v32) & 0x76E) + (v32 ^ 0xFCBFBBB7) + 54543433);
  LOBYTE(STACK[0x15AE]) = *(v7 + v33);
  v34 = ((2 * v14) & 0xFF5FDF56 ^ 0xB74A5B44) + (v14 ^ 0xA41AC209);
  LODWORD(v14) = v34 + 5247061;
  *(v7 + v33) = v29;
  v35 = ((v14 + (v5 ^ 0xC68D1BB8)) ^ 0x6FCFFAEF) - 1875901167 + ((2 * (v14 + (v5 ^ 0xC68D1BB8))) & 0xDF9FF5DE);
  LODWORD(v33) = 691 * (((v35 % 0xB) ^ 0x2BFCDBD5) + (v3 & (2 * (v35 % 0xB)))) + 1149133744;
  LODWORD(v33) = v33 - ((((v33 >> 1) * v9) >> 32) >> 8) * v8;
  v36 = STACK[0x149F];
  LOBYTE(STACK[0x149F]) = *(v7 + ((((2 * v33) & 0x32C) + (v33 ^ 0xDFFBF596) + 1989660288 < 0x5693C416) << 32) + (((2 * v33) & 0x32C) + (v33 ^ 0xDFFBF596) + 537135722));
  v37 = ((2 * (v14 + (v26 ^ 0xED36D563))) & 0x9F7EFFFA) + ((v14 + (v26 ^ 0xED36D563)) ^ 0xCFBF7FFD);
  *(v7 + (((v33 ^ 0xFFF6FFFF) + 2 * v33 + 1705839608 < 0x65A40BF7) << 32) + ((v33 ^ 0xFFF6FFFF) + 2 * v33 + 589825)) = v36;
  LODWORD(v33) = v37 + 809533443 - (v37 + 809533443) / 0xAu * v3;
  v38 = (((v25 ^ 0x41B75D75) + 809533443 + v37 + 1) ^ 0xEFF7FFF7) + 477095803 + (LODWORD(STACK[0x480]) & (2 * ((v25 ^ 0x41B75D75) + 809533443 + v37 + 1)));
  LODWORD(v33) = 691 * ((v33 ^ 0xC6FDF97F) + 2 * v33) - 528788347;
  LODWORD(v33) = v33 - ((((v33 >> 1) * v9) >> 32) >> 8) * v8;
  v39 = ((2 * v33) & 0x4CE) + (v33 ^ 0x7FFE5267);
  v40 = STACK[0x1390];
  v41 = (v30 ^ v35) - 444138478 - ((2 * (v30 ^ v35)) & 0xCB0DF824);
  v42 = ((2 * v33) & 0x57C) + (v33 ^ 0x73BED6BE);
  LOBYTE(STACK[0x1390]) = *((v39 | (((v39 - 20972036) < 0x7EBE5063) << 32)) + v7 - 2147373671);
  *((v42 | (((v42 - 269648928) < 0x63AC529E) << 32)) + v7 - 1941886654) = v40;
  LODWORD(v42) = ((2 * ((v25 ^ 0xE6A553F7) + 1421682953)) & 0x773FE7FE) + (((v25 ^ 0xE6A553F7) + 1421682953) ^ 0x3B9FF3FF);
  LODWORD(v25) = v42 + v38;
  LODWORD(v33) = 691 * (((v14 % 9) ^ 0x3FCFEDBE) + ((2 * (v14 % 9)) & 0x1C)) - 1044049621;
  LODWORD(v33) = v33 - ((((v33 >> 1) * v9) >> 32) >> 8) * v8;
  v43 = ((2 * v33) & 0x5BE) + (v33 ^ 0x6AF7EEDF);
  v44 = STACK[0x1643];
  LOBYTE(STACK[0x1643]) = *((v43 | (((v43 - 1076102214) < 0x2AD3EA99) << 32)) + v7 - 1794633439);
  v45 = ((2 * v33) & 0x5FE) + (v33 ^ 0x1B7F9EFF);
  *((v45 | (((v45 - 272371744) < 0xB438EDF) << 32)) + v7 - 461348607) = v44;
  LODWORD(v45) = ((1382 * ((v42 + 1) & 7)) & 0x3B0C) + ((691 * ((v42 + 1) & 7)) ^ 0xF8F7BD86) + 118230578;
  LODWORD(v45) = v45 - ((4464623 * v45) >> 32) * v8;
  v46 = ((((2 * v45) & 0x6FE) + (v45 ^ 0xFD9FDF7F) + 1937698301 < 0x711ECD7C) << 32) + (((2 * v45) & 0x6FE) + (v45 ^ 0xFD9FDF7F) + 39854209);
  v47 = STACK[0x1534];
  LOBYTE(STACK[0x1534]) = *(v7 + v46);
  *(v7 + v46) = v47;
  v48 = (((v41 ^ 0xE586FC12) - (v38 + v34) + 202888989) ^ 0x3D7FEDEE) - 1031794158 + ((2 * ((v41 ^ 0xE586FC12) - (v38 + v34) + 202888989)) & 0x7AFFDBDC);
  v49 = 691 * (v6 + 2 * (v48 % 7) + ((v48 % 7) ^ 0xB7FAC7BF) + 3688) - 138109610;
  v50 = v49 - ((((v49 >> 1) * v9) >> 32) >> 8) * v8;
  v51 = ((2 * v50) & 0x4B6) + (v50 ^ 0x7BE5F65B);
  v52 = (((v25 - 1208474481) % 6u) ^ 0x778EFDB7) + 2 * ((v25 - 1208474481) % 6u);
  v53 = STACK[0x1425];
  LOBYTE(STACK[0x1425]) = *((v51 | (((v51 - 302319128) < 0x69E0F043) << 32)) + v7 - 2078668379);
  v54 = ((2 * v50) & 0x7FC) + (v50 ^ 0x5EFCCFFE);
  *((v54 | (((v54 - 1109428568) < 0x1CDC46A6) << 32)) + v7 - 1593626622) = v53;
  LOBYTE(v54) = STACK[0x1316];
  LODWORD(v51) = 691 * v52 + 1225587753 - (((((691 * v52 + 1225587753) >> 1) * v9) >> 32) >> 8) * v8;
  v55 = ((((2 * v51) & 0x67E) + (v51 ^ 0xE1743F3F) + 1066137322 < 0x21003629) << 32) + (((2 * v51) & 0x67E) + (v51 ^ 0xE1743F3F) + 512475329);
  LOBYTE(STACK[0x1316]) = *(v7 + v55);
  LODWORD(v43) = ((v14 % 5) ^ 0xFFB7DF5F) + 2 * (v14 % 5);
  *(v7 + v55) = v54;
  LODWORD(v14) = v25 + v34 + 610238046;
  v56 = 691 * v43 - 1028397468 - (((((691 * v43 - 1028397468) >> 1) * v9) >> 32) >> 8) * v8;
  v57 = ((2 * v56) & 0x5FE) + (v56 ^ 0x3DEB52FFu);
  v58 = ((2 * v56) & 0x1BC) + (v56 ^ 0xF7FD7CDE);
  LOBYTE(v54) = STACK[0x15C9];
  LOBYTE(STACK[0x15C9]) = *((v57 | (((v57 - 94437602) < 0x384A521D) << 32)) + v7 - 1038832383);
  *(v7 + ((v58 + 1565196144 < 0x55487C4E) << 32) + (v58 + 134382370)) = v54;
  LOBYTE(v57) = 3 * (v42 - v14 - v14) + 4;
  LODWORD(v42) = (v42 - v14 + 813127035) ^ 0x21210BA3 ^ ((v48 ^ (v42 - 1000338431)) + 555813795 - ((2 * (v48 ^ (v42 - 1000338431))) & 0x42421746));
  LODWORD(v42) = ((v42 - 1853802935 - ((2 * v42) & 0x23026C92)) ^ 0x91813649) % 3;
  LOBYTE(v58) = STACK[0x14BA];
  LODWORD(v57) = ((1382 * (v57 & 3 ^ 1)) & 0xFFFFFF7F) - 1017786837 + ((691 * (v57 & 3 ^ 1)) ^ 0x3CADFFBF) + 2202;
  LODWORD(v57) = v57 - ((((v57 >> 1) * v9) >> 32) >> 8) * v8;
  v59 = ((2 * v57) & 0x1FA) + (v57 ^ 0x7F7AFCFD);
  v60 = (v59 | (((v59 - 1632265233) < 0x1E3098EC) << 32)) + v7;
  LOBYTE(STACK[0x14BA]) = *(v60 - 2138766589);
  *(v60 - 2138766589) = v58;
  LODWORD(v42) = 691 * ((v42 ^ 0xFFFF5DFD) + 2 * (v42 & 1)) + 28911440 - (((((691 * ((v42 ^ 0xFFFF5DFD) + 2 * (v42 & 1)) + 28911440) >> 1) * v9) >> 32) >> 8) * v8;
  v61 = ((2 * v42) & 0x214) + (v42 ^ 0x3EBBDD0A);
  LOBYTE(v48) = STACK[0x13AB];
  LOBYTE(STACK[0x13AB]) = *((v61 | (((v61 - 310394888) < 0x2C3B9D02) << 32)) + v7 - 1052499210);
  LODWORD(v42) = ((2 * v42) & 0x6EC) + (v42 ^ 0xDE9FF776);
  *(v7 + (((v42 + 2071986108) < 0x5A1FF732) << 32) + v42 + 559941770) = v48;
  v62 = STACK[0x165E];
  if ((v14 - v21))
  {
    v63 = 591;
  }

  else
  {
    v63 = 862;
  }

  LOBYTE(STACK[0x165E]) = *(v7 + v63);
  *(v7 + v63) = v62;
  return (*(STACK[0xD40] + 8 * v4))(v4 ^ 0x6A0u, 1344240580);
}

uint64_t sub_1BADF8C48(int a1, int a2)
{
  v10 = ((5 * a1) ^ 0x5A4) * a2 - 1157061612 - (((((((5 * a1) ^ 0x5A4u) * a2 - 1157061612) >> 1) * v4) >> 32) >> 8) * v8;
  v11 = ((2 * v10) & 0x7BE) + (v10 ^ 0x7FF5D3DF);
  LODWORD(v11) = *((v11 | (((v11 - 155455555) < 0x76B1C39C) << 32)) + v7 - 2146816991);
  LODWORD(v11) = (((2 * (v11 ^ 0x15)) & 0xFFFFFFEF) + (v11 ^ 0x57DFBEE2)) * v5 - 821049683;
  LODWORD(v11) = v11 - ((((v11 >> 1) * v4) >> 32) >> 8) * v8;
  v12 = (v3 & (2 * v11)) + (v11 ^ (v6 + 64));
  *((v12 | (((v12 - 958992421) < 0x40564EDA) << 32)) + v7 - 2038390527) = a2 - 2 * ((a2 + 28) & 0x17 ^ a2 & 2) + 81;
  return (*(STACK[0xD40] + 8 * ((58 * (a2 + 1 == v9 + 16)) ^ v2)))();
}

uint64_t sub_1BADF8D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v16 = a7 + v9 * a3 - (((((a7 + v9 * a3) >> 1) * v13) >> 32) >> 8) * v15;
  v17 = (v11 & (2 * v16)) + (v16 ^ a8);
  *((v17 | ((a5 + v17 + 1027 < v12) << 32)) + v14 + v8) = a3 - ((2 * a3 + 8) & 0x2A) + 89;
  return (*(STACK[0xD40] + 8 * (((a3 == 1679068875) * a6) ^ v10)))();
}

uint64_t sub_1BADF8E10@<X0>(int a1@<W8>)
{
  v9 = 2 * (((a1 ^ 0xBB36B51u) % 0xF) & 1) + (((a1 ^ 0xBB36B51u) % 0xF) ^ 0x756F12F1);
  v10 = (((2 * v2) & 0x1C) - 168044803 + (v2 & 0xF ^ 0x6FBCFFFE) + 1187) * v6 + 1846209190;
  v11 = v10 - ((((v10 >> 1) * v5) >> 32) >> 8) * v8;
  v12 = STACK[0x1628];
  v13 = *((((v11 ^ 0x5FFCDBFF) + 2 * v11) | (((v11 ^ 0x5FFCDBFF) + 2 * v11 - 346587146 < 0x4B545BF5) << 32)) + v7 - 1610406911);
  v14 = ((2 * v11) & 0x3C4) + (v11 ^ 0xAFFAFDE2);
  LOBYTE(STACK[0x1628]) = v13;
  *(v7 + ((v14 + 1472061056 < 0x7B8DC62) << 32) + (v14 + 1342505502)) = v12;
  v15 = 2 * (((v3 ^ 0xD86B243C) % 0xE) & 3) + (((v3 ^ 0xD86B243C) % 0xE) ^ 0x7D4EDFD3);
  v16 = STACK[0x1519];
  v17 = v9 * v6 + 87267408 - (((((v9 * v6 + 87267408) >> 1) * v5) >> 32) >> 8) * v8;
  v18 = ((2 * v17) & 0x4FE) + (v17 ^ 0x7E6EB67F);
  v19 = (v18 | (((v18 - 537165826) < 0x5E6A367D) << 32)) + v7;
  LOBYTE(STACK[0x1519]) = *(v19 - 2121184895);
  *(v19 - 2121184895) = v16;
  v20 = v15 * v6 - 1004694275 - (((((v15 * v6 - 1004694275) >> 1) * v5) >> 32) >> 8) * v8;
  v21 = ((((2 * v20) & 0x4E2) + (v20 ^ 0xDAEEBA71) + 2142625280 < 0x5AA49871) << 32) + (((2 * v20) & 0x4E2) + (v20 ^ 0xDAEEBA71) + 621888911);
  v22 = STACK[0x140A];
  LOBYTE(STACK[0x140A]) = *(v7 + v21);
  *(v7 + v21) = v22;
  v23 = v1 ^ 0x5D51A3C6;
  LODWORD(v21) = ((v23 % 0xD) ^ 0x27F3CEBD) - 19006128 + ((2 * (v23 % 0xD)) & 0x1A);
  v24 = (v3 ^ (v2 - 297356016) ^ 0xD86B243C) - 465586690 - 2 * ((v3 ^ (v2 - 297356016) ^ 0xD86B243C) & 0x643FB5FF ^ (v3 ^ (v2 - 297356016)) & 1);
  LODWORD(v19) = v23 - (v24 ^ 0xE43FB5FE);
  LOBYTE(v23) = v19 - 65;
  v25 = v21 * v6 + 934934306 - (((((v21 * v6 + 934934306) >> 1) * v5) >> 32) >> 8) * v8;
  v26 = 2 * (v21 * v6 - 2270 - (((((v21 * v6 + 934934306) >> 1) * v5) >> 32) >> 8) * v8);
  v27 = STACK[0x16BD];
  v28 = v24 ^ a1;
  LODWORD(v21) = v24 ^ a1 ^ 0x10B05725;
  v29 = ((2 * (v21 % 0xC)) & 0x1A) + ((v21 % 0xC) ^ LODWORD(STACK[0x47C]));
  LOBYTE(STACK[0x16BD]) = *((((v26 & 0x71E) + (v25 ^ 0x4CDFBB8Fu)) | (((v26 & 0x71E) + (v25 ^ 0x4CDFBB8Fu) - 138846730 < 0x44991985) << 32)) + v7 - 1289730959);
  v30 = (v26 & 0x5F8) + (v25 ^ 0x7D7ADAFCu);
  v31 = ((2 * (v19 + 489907391 - ((2 * v19) & 0x3A66C96C) - 9)) & 0xF7FF79FE ^ 0xE6710948) + ((v19 + 489907391 - ((2 * v19) & 0x3A66C96C) - 9) ^ 0x8CC77A5B);
  LODWORD(v19) = v31 - 2080357631;
  v32 = ((2 * (v19 + (a1 ^ v3 ^ 0x2CE4C6E7))) & 0xFEBFF33A) + ((v19 + (a1 ^ v3 ^ 0x2CE4C6E7)) ^ 0x7F5FF99D);
  v33 = (((v28 ^ 0xEF4FA8DA) - 2136996253 + v32 + 1) ^ 0x7F5A577F) - 889869322 + ((2 * ((v28 ^ 0xEF4FA8DA) - 2136996253 + v32 + 1)) & 0xFEB4AEFE);
  *((v30 | (((v30 - 1479053984) < 0x2552485C) << 32)) + v7 - 2105203452) = v27;
  v34 = v29 * v6 - 322359547 - (((((v29 * v6 - 322359547) >> 1) * v5) >> 32) >> 8) * v8;
  v35 = ((2 * v34) & 0x4EE) + (v34 ^ 0x7BFFFE77);
  v36 = v35 - 2080374653 + (((v35 - 1885536356) < 0xB9CFE13) << 32) + v7;
  LOBYTE(v29) = STACK[0x15AE];
  LOBYTE(STACK[0x15AE]) = *(v36 + 262);
  LODWORD(v30) = ((v31 - 2080357631 + (a1 ^ 0xF48FE2DB)) ^ 0xEFC7EAFF) + 272110849 + ((2 * (v31 - 2080357631 + (a1 ^ 0xF48FE2DB))) & 0xDF8FD5FE);
  *(v36 + 262) = v29;
  LOBYTE(v36) = STACK[0x149F];
  v37 = (((2 * (v30 % 0xB)) & 0x18) + ((v30 % 0xB) ^ 0xBBFEF9FC)) * v6 - 1899560853;
  v38 = v37 - ((((v37 >> 1) * v5) >> 32) >> 8) * v8;
  v39 = ((2 * v38) & 0x27E) + (v38 ^ 0x7C99DD3F);
  v40 = (v39 | (((v39 - 76055576) < 0x78115927) << 32)) + v7;
  LOBYTE(STACK[0x149F]) = *(v40 - 2090458431);
  *(v40 - 2090458431) = v36;
  LODWORD(v40) = ((2 * ((v28 ^ 0x485DA658) + 1421682953)) & 0xCF7EFDFE) + (((v28 ^ 0x485DA658) + 1421682953) ^ 0xE7BF7EFF);
  v41 = ((((v32 - 2136996253) % 0xAu) ^ 0x7EEFF977) - 75782393 + 2 * (((v32 - 2136996253) % 0xAu) & 7) + 2025) * v6 - 1888733107;
  v42 = v41 - v41 / 0x3C2 * v8;
  v43 = ((2 * v42) & 0x3FC) + (v42 ^ 0x7BFBEDFE);
  LOBYTE(v28) = STACK[0x1390];
  LOBYTE(STACK[0x1390]) = *(v43 - 2080110591 + (((v43 - 543277384) < 0x5B9A2CB6) << 32) + v7 + 2561);
  LODWORD(v21) = (v21 ^ v30) - 1999392289 - ((2 * (v21 ^ v30)) & 0x11A763BE);
  v44 = ((2 * v42) & 0x354) + (v42 ^ 0x3AD3A9AA);
  *((v44 | (((v44 - 1116192) < 0x3AC2A18A) << 32)) + v7 - 986950058) = v28;
  LODWORD(v30) = ((v19 % 9) ^ 0xDBB95FDF) + 2 * (v19 % 9);
  LOBYTE(v44) = STACK[0x1643];
  LODWORD(v43) = v30 * v6 - 358219240 - (v30 * v6 - 358219240) / 0x3C2u * v8;
  LOWORD(v28) = 2 * (v30 * v6 + 536 - (v30 * v6 - 358219240) / 0x3C2u * v8);
  LOBYTE(STACK[0x1643]) = *(v7 + (((v28 & 0x6FE) + (v43 ^ 0xF6D6CB7F) + 1073348351 < 0x36D0CA7E) << 32) + ((v28 & 0x6FE) + (v43 ^ 0xF6D6CB7F) + 153695361));
  *(v7 + (((v28 & 0x57A) + (v43 ^ 0xBAD7DEBD) + 2146024960 < 0x3AC19CBD) << 32) + ((v28 & 0x57A) + (v43 ^ 0xBAD7DEBD) + 1160257859)) = v44;
  LODWORD(v21) = (((v21 ^ 0x88D3B1DF) - (v33 + v31) - 967851916) ^ 0xA36FDE61) + 1552949663 + ((2 * ((v21 ^ 0x88D3B1DF) - (v33 + v31) - 967851916)) & 0x46DFBCC2);
  LODWORD(v43) = ((v21 % 7) ^ 0x9BEFF3FE) + ((2 * (v21 % 7)) & 0xC);
  LODWORD(v44) = (((v40 + 1) & 7 ^ 0xF7C6D39F) + 2 * ((v40 + 1) & 7)) * v6 + 844535179;
  LODWORD(v36) = v44 - v44 / 0x3C2 * v8;
  v45 = ((2 * v36) & 0x5FC) + (v36 ^ 0x7BADFEFE);
  LOBYTE(v29) = STACK[0x1534];
  LOBYTE(STACK[0x1534]) = *((v45 | (((v45 - 1073775158) < 0x3BAD7CC8) << 32)) + v7 - 2075000574);
  LODWORD(v45) = v40 + 971165695;
  v46 = v33 + v40 + 971165695;
  v47 = ((2 * v36) & 0x4FE) + (v36 ^ 0x75EDFE7F);
  *((v47 | (((v47 - 71926880) < 0x71A47A1F) << 32)) + v7 - 1978531455) = v29;
  LODWORD(v43) = v43 * v6 + 391395281 - (v43 * v6 + 391395281) / 0x3C2u * v8;
  LODWORD(v30) = ((1 - v30 - ((6 - 2 * v30) & 4)) & 6 ^ 2) + (v30 & 6);
  LODWORD(v30) = (v46 - 1811042931) % ((v30 ^ 0xEBFFFFFF) + 2 * v30 + 335544321);
  LODWORD(v47) = ((2 * v43) & 0x3FE) + (v43 ^ 0xF3DEC1FF);
  LOBYTE(v29) = STACK[0x1425];
  LOBYTE(STACK[0x1425]) = *(v7 + (((v47 + 1610595929) < LODWORD(STACK[0x478])) << 32) + v47 + 203505153);
  LODWORD(v43) = ((2 * v43) & 0x7BE) + (v43 ^ LODWORD(STACK[0x474]));
  *(v7 + (((v43 + 2045639400) < 0x71ADA2C7) << 32) + v43 + 138434593) = v29;
  LODWORD(v30) = (((2 * v30) & 0xF3D7FAFE) + (v30 ^ 0x79EBFD7F)) * v6 - 402222255;
  LODWORD(v30) = ((2 * (v30 - v30 / 0x3C2 * v8)) & 0x7BC) + ((v30 - v30 / 0x3C2 * v8) ^ 0xB6FFFFDE);
  v48 = (((v30 + 2138791424) < 0x367B5DDE) << 32) + v30 + 1224736802;
  LOBYTE(v47) = STACK[0x1316];
  LOBYTE(STACK[0x1316]) = *(v7 + v48);
  *(v7 + v48) = v47;
  v49 = v31 - 1747784816 + v46;
  LODWORD(v40) = (v21 ^ (v40 + 406880513)) - 213270131 - ((2 * (v21 ^ (v40 + 406880513))) & 0xE693831A);
  LODWORD(v19) = (((2 * (v19 % 5)) & 0xA) + ((v19 % 5) ^ 0xF4F1D3D5)) * v6 - 683340830;
  v50 = ((2 * (v19 - v19 / 0x3C2 * v8)) & 0x2FE) + ((v19 - v19 / 0x3C2 * v8) ^ 0x56F8AD7F);
  v51 = (v50 | (((v50 - 1088423032) < 0x1618A907) << 32)) + v7;
  LOBYTE(v48) = STACK[0x15C9];
  LOBYTE(STACK[0x15C9]) = *(v51 - 1459137919);
  *(v51 - 1459137919) = v48;
  v52 = (~(2 * (v45 - v49 - v49)) & 4 | (v45 - v49 - v49) & 3) * v6 + 250142;
  v53 = v52 - v52 / 0x3C2 * v8;
  v54 = ((2 * v53) & 0x4FE) + (v53 ^ 0x5F584E7Fu);
  LODWORD(v40) = (((v40 ^ (v45 - v49 + 1579330564) ^ 0xF349C18D) - 20447876 - 2 * ((v40 ^ (v45 - v49 + 1579330564) ^ 0xF349C18D) & STACK[0x470] ^ (v40 ^ (v45 - v49 + 1579330564)) & 2)) ^ 0xFEC7FD7C) % 3;
  LOBYTE(v45) = STACK[0x14BA];
  LOBYTE(STACK[0x14BA]) = *((v54 | (((v54 - 1515716704) < 0x5004E1F) << 32)) + v7 - 1599622783);
  v55 = ((2 * v53) & 0x71E) + (v53 ^ 0x3FFFC38Fu);
  *(v55 - 1073727833 + (((v55 - 272384256) < 0x2FC3828F) << 32) + v7 + 1482) = v45;
  LODWORD(v40) = ((v40 ^ 0x6B7EBBBF) + 2 * v40) * v6 - 655420246 - (((v40 ^ 0x6B7EBBBF) + 2 * v40) * v6 - 655420246) / 0x3C2 * v8;
  v56 = ((2 * v40) & 0x7BA) + (v40 ^ 0x6E7FEBDD);
  v57 = (v56 | (((v56 - 201427589) < 0x627E6158) << 32)) + v7;
  LOBYTE(v54) = STACK[0x13AB];
  LOBYTE(STACK[0x13AB]) = *(v57 - 1853877213);
  *(v57 - 1853877213) = v54;
  v58 = STACK[0x165E];
  v59 = ((v49 - v23) & 1) == 0;
  v60 = 591;
  if (v59)
  {
    v60 = 862;
  }

  LOBYTE(STACK[0x165E]) = *(v7 + v60);
  *(v7 + v60) = v58;
  v61 = LODWORD(STACK[0x46C]);
  v62 = LODWORD(STACK[0x468]);
  return (*(STACK[0xD40] + 8 * (v4 ^ 0xE3B)))();
}

uint64_t sub_1BADF9C98(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = ((v7 - 1874205223) >> 4) - 136231211 - (((v7 - 1874205223) >> 3) & 0xFC28DAA);
  v15 = (((v7 + ((v5 - 2332) | 0x28C) - 659) & 0xF) + 1211833444 - ((2 * (v7 + ((v5 - 2332) | 0x28C) - 659)) & 8)) ^ 0x483B1C64;
  v16 = ((1382 * v15) & (a4 + 3259)) + ((v15 * v9) ^ 0xFDFDCE5F) + 33713411;
  v17 = v16 - ((((v16 >> 1) * v13) >> 32) >> 8) * v12;
  v18 = ((1382 * (v14 ^ 0xF7E146D5)) & 0x5BEB79F6) + ((691 * (v14 ^ 0xF7E146D5)) ^ 0xEDF5BCFB) + 302677607;
  v19 = v18 - 962 * ((((v18 >> 1) * v13) >> 32) >> 8);
  LOBYTE(v19) = (16 * *(v11 + ((((2 * v19) & 0x7BE) + (v19 ^ 0xFFEEFFDF) + 1532476390 < 0x5B46BBC5) << 32) + (((2 * v19) & 0x7BE) + (v19 ^ 0xFFEEFFDF) + 1114145))) ^ 0x50;
  v20 = *(v11 + ((((2 * v17) & 0x7BE) + (v17 ^ 0xF7DFDBDF) + 800702080 < 0x27999A5F) << 32) + (((2 * v17) & 0x7BE) + (v17 ^ 0xF7DFDBDF) + 136324129)) ^ (v19 - ((2 * v19) & 0xA0) + 87);
  v21 = (((2 * (v20 ^ 0x27)) & 0xFFFFFF7F) + (v20 ^ 0x52F8DF98)) * v4 - 880036088;
  v22 = (*(*(a2 + 8 * v6) + v21 - (((v21 * v10) >> 32) >> 9) * v8) ^ 0xFFFFFFFB) - 92;
  v23 = (v22 ^ 0xFFFFFFFE) + 4 * (v22 >> 1) + 2;
  v24 = v23 * v23 + (~(2 * v23 * v23) | 0xFFFFFFFB) + 3;
  v25 = v23 ^ (((16 * v24) ^ 0x20) + ((32 * v24) ^ 0xFFFFFFBF) - 4) ^ 0xFFFFFFFB;
  v26 = (v25 - ((2 * v25) & 0x32) + 25) ^ 0xA8;
  v27 = 691 * (((2 * v26) & 0x1DE) + (v26 ^ 0xF3BCEFEF)) + 419959811;
  v28 = v27 - 962 * ((((v27 >> 1) * v13) >> 32) >> 8);
  v29 = ((2 * v28) & 0x6FE) + (v28 ^ 0x55FFFF7F);
  v30 = 691 * v7 + 2004378562 - 962 * (((((691 * v7 + 2004378562) >> 1) * v13) >> 32) >> 8);
  v31 = ((2 * v30) & 0x3BE) + (v30 ^ 0x4FDD2DDF);
  *((v31 | (((v31 - 1108870149) < 0xDC529DA) << 32)) + v11 - 1339895263) = *((v29 | (((v29 - 271974723) < 0x45C9FE3C) << 32)) + v11 - 1442840447);
  return (*(STACK[0xD40] + 8 * ((817 * (v7 == 1874205478)) ^ v5)))();
}

uint64_t sub_1BADFA004@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v11 = (((v4 + 10) & 0xF) - 75121127 - ((2 * (v4 + 10)) & 0x12)) ^ 0xFB85BE19;
  v12 = ((1382 * v11) & 0x5FBF4) + ((v11 * v6) ^ 0x7BF2FDFA) - 2079507096;
  v13 = v12 - ((((v12 >> 1) * v10) >> 32) >> 8) * v9;
  v14 = 2 * (v13 & 0x1FF) + (v13 ^ 0x7DFF75FF);
  v15 = ((v4 - 1842078630) >> 4) + 2133571286 - (((v4 - 1842078630) >> 3) & 0x1E576DAC);
  v16 = ((1382 * (v15 ^ 0x7F2BB6D6)) & 0xF5F79AFE) + (((v15 ^ 0x7F2BB6D6) * v6) ^ 0xFAFBCD7F) + 84176355;
  v17 = v16 - ((((v16 >> 1) * v10) >> 32) >> 8) * v9;
  v18 = ((2 * v17) & 0x5EE) + (v17 ^ 0x7FBEBEF7);
  LOBYTE(v18) = (16 * *((v18 | (((v18 - 184549382) < 0x74BEBEF1) << 32)) + v8 - 2143207159)) ^ 0x50;
  LODWORD(v14) = *((v14 | (((v14 - 406069312) < 0x65CB55BF) << 32)) + v8 - 2113893887) ^ (v18 - ((2 * v18) & 0xC0) + 97);
  LODWORD(v14) = (((2 * (v14 ^ 0x8A)) & 0x1F6) + (v14 ^ 0x6FCB4E75)) * v2 - 1232901939;
  LODWORD(v14) = *(a2 + v14 - (((v14 * v7) >> 32) >> 9) * v5);
  LODWORD(v14) = (((v14 >> 3) & 0x12) + (a1 ^ (v14 >> 4) ^ 2)) * v6 - 1019994267;
  LODWORD(v14) = v14 - ((((v14 >> 1) * v10) >> 32) >> 8) * v9;
  LOBYTE(v14) = (16 * *(v8 + ((((2 * v14) & 0x67A) + (v14 ^ 0xEA5FFB3D) + 2146905324 < 0x6A572829) << 32) + (((2 * v14) & 0x67A) + (v14 ^ 0xEA5FFB3D) + 362808515))) ^ 0x50;
  LODWORD(v18) = v4 * v6 - 1565529323 - (((((v4 * v6 - 1565529323) >> 1) * v10) >> 32) >> 8) * v9;
  *(v8 + ((((2 * v18) & 0x7EC) + (v18 ^ 0xF5FF9FF6) + 1609196542 < 0x55EA03F4) << 32) + (((2 * v18) & 0x7EC) + (v18 ^ 0xF5FF9FF6) + 167796746)) = v14 - ((2 * v14) & 0x20) + 21;
  return (*(STACK[0xD40] + 8 * (v3 | (2 * (v4 != 1842078885)))))();
}

uint64_t sub_1BADFA2EC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v13 = ((((v3 ^ 0xA16u) + v4 - 358506039) >> 4) - 2043849786 - ((((v3 ^ 0xA16u) + v4 - 358506039) >> 3) & 0xC5AA78C)) ^ 0x862D53C6;
  v14 = (((v4 + 3) & 0xF) - 1094469989 - ((2 * (v4 + 3)) & 0x16)) ^ 0xBEC3B69B;
  v15 = ((1382 * v13) & v5) + ((v13 * v8) ^ 0x9FFF135D) + 1610688517;
  v16 = v15 - ((((v15 >> 1) * v12) >> 32) >> 8) * v11;
  v17 = ((2 * v16) & 0x1FC) + (v16 ^ 0x5E3AFCFE);
  v18 = ((1382 * v14) & a1) + ((v14 * v8) ^ 0xED2BFAE7) + 315900027;
  v19 = v18 - ((((v18 >> 1) * v12) >> 32) >> 8) * v11;
  LOBYTE(v17) = *((v17 | (((v17 - 134755346) < 0x5632C8EC) << 32)) + v10 - 1580924158);
  LODWORD(v17) = *(v10 + ((((2 * v19) & 0x7D8) + (v19 ^ 0x9FFCBBEC) + 2143255808 < 0x1FBC38EC) << 32) + (((2 * v19) & 0x7D8) + (v19 ^ 0x9FFCBBEC) + 1610826772)) ^ (((16 * v17) ^ 0x50) - ((32 * v17) & 0x40) - 91);
  LODWORD(v17) = (((2 * (v17 ^ 0x93)) & 0x17E) + (v17 ^ 0x7EB4CB6C)) * v2 - 1767156764;
  LODWORD(v17) = *(a2 + v17 - (((v17 * v9) >> 32) >> 9) * v7);
  LODWORD(v17) = (((2 * (v17 ^ 0x20)) & 0xFFFFFFDF) + (v17 ^ 0xC77F7BCF)) * v8 - 2098712573;
  LODWORD(v17) = v17 - ((((v17 >> 1) * v12) >> 32) >> 8) * v11;
  v20 = v4 * v8 + 1382245476 - (((((v4 * v8 + 1382245476) >> 1) * v12) >> 32) >> 8) * v11;
  v21 = ((2 * v20) & 0x7DC) + (v20 ^ 0x6FEFEFEE);
  *(v6 + v21 + (((v21 - 41945602) < 0x6D6FE5EC) << 32) + v10 + 3502) = *(v10 + ((((2 * v17) & 0x35C) + (v17 ^ 0xC6BBFDAE) + 2078231546 < 0x429B49A8) << 32) + (((2 * v17) & 0x35C) + (v17 ^ 0xC6BBFDAE) + 960758354));
  return (*(STACK[0xD40] + 8 * ((2582 * (v4 == 358504108)) ^ v3)))();
}

uint64_t sub_1BADFA5D0@<X0>(uint64_t a1@<X8>)
{
  v10 = ((2 * (v3 * v6 + 24991 - (v3 * v6 + 24991) / 0x3C2u * v9)) & 0x77A) + ((v3 * v6 + 24991 - (v3 * v6 + 24991) / 0x3C2u * v9) ^ 0x73FDFFBD);
  LODWORD(v10) = *((v10 | ((v10 - 55058592 < ((v2 - 1121) ^ 0x70B5DB34u)) << 32)) + v8 - 1946025917);
  v11 = ((2 * (v10 ^ 0x10)) & 0x1F0) + (v10 ^ 0x16CFF7EE);
  v12 = v3 * v6 + 9789 - (v3 * v6 + 9789) / 0x3C2u * v9;
  v13 = (v4 & (2 * v12)) + (v12 ^ 0xBFBE96FF);
  *(v8 + ((v13 + 2018508784 < 0x380E96EF) << 32) + (v13 + 1078028545)) = *(a1 + v11 * v1 - 389027583 - ((((v11 * v1 - 389027583) * v7) >> 32) >> 9) * v5) ^ ((v10 ^ 0x12) - (v10 ^ 0x7B) - ((2 * ((v10 ^ 0x12) - (v10 ^ 0x7B))) & 0x42) + 33) ^ 0x37;
  return (*(STACK[0xD40] + 8 * ((655 * (v3 == 731059392)) ^ v2)))();
}

uint64_t sub_1BADFA74C@<X0>(uint64_t a1@<X5>, int a2@<W6>, unsigned int a3@<W7>, uint64_t a4@<X8>)
{
  v15 = v7 + (((2 * (v6 - 1859246940)) & 0x7ADF7FDE ^ 0x642) + ((v6 - 1859246940) ^ ((v5 ^ 0x82) + 2104473651))) * v4;
  v16 = v15 - (((v15 * v10) >> 32) >> 9) * v8;
  v17 = *(a4 + (v16 ^ v14) - 1384617981 + ((2 * v16) & 0x7FA));
  v18 = (((2 * v17) & 0xFFFFFFDF) + (v17 ^ 0xD9F37FFF)) * v9 - 1279171581;
  v19 = v18 - ((((v18 >> 1) * v13) >> 32) >> 8) * v12;
  v20 = v6 * v9 - 544123816 - (((((v6 * v9 - 544123816) >> 1) * v13) >> 32) >> 8) * v12;
  v21 = ((2 * v20) & 0x1DA) + (v20 ^ 0x5558F4ED);
  *((v21 | (((v21 - 272634881) < 0x4518E0EC) << 32)) + v11 + a1) = *(v11 + (((v19 ^ 0xBF9D7FFF) + 2 * v19 + a2 < a3) << 32) + ((v19 ^ 0xBF9D7FFF) + 2 * v19 + 1080197121));
  return (*(STACK[0xD40] + 8 * ((30 * (v6 != 1859246955)) ^ v5)))();
}

uint64_t sub_1BADFA8BC(uint64_t a1)
{
  v2 = *(STACK[0xD40] + 8 * (((((LODWORD(STACK[0x928]) == LODWORD(STACK[0xD48])) ^ (19 * (v1 ^ 0xD4))) & 1) * ((2 * v1) ^ 0x94D)) ^ v1));
  LODWORD(STACK[0xD10]) = -1728255641;
  LODWORD(STACK[0xD28]) = 1593669657;
  LODWORD(STACK[0xD20]) = 2118667377;
  LODWORD(STACK[0xD30]) = 423389756;
  LODWORD(STACK[0xD38]) = 508869323;
  LODWORD(STACK[0xD48]) = 1242165416;
  v3 = STACK[0xD18];
  return v2(a1, 339333726);
}

uint64_t sub_1BADFAA2C@<X0>(unsigned int a1@<W3>, int a2@<W8>)
{
  v6 = v3 < a1;
  v7 = *((v4 | ((v4 < (a2 ^ (v2 + 527) ^ 0xEF7FD36B)) << 32)) + v5 - 2026731778);
  if (v6 == v4 - 278989557 < 0x682C6E0C)
  {
    v6 = v4 - 278989557 < v3;
  }

  return (*(STACK[0xD40] + 8 * ((61 * !v6) ^ (a2 + 103))))();
}

uint64_t sub_1BADFB128(int a1, int a2, int a3)
{
  LODWORD(STACK[0xD10]) = v4;
  LODWORD(STACK[0xD20]) = v3;
  LODWORD(STACK[0xD28]) = a3;
  LODWORD(STACK[0xD30]) = a2;
  v5 = *(STACK[0xD40] + 8 * (a1 ^ 0x97B2ABF4 ^ (729 * (a1 == -2016231390))));
  v6 = (((a1 + 1749899832) | 0xA) ^ 0x5569EF5Eu) + LODWORD(STACK[0x9F0]);
  LODWORD(STACK[0xD38]) = 508869323;
  LODWORD(STACK[0xD48]) = 1242165416;
  return v5(2025861137, 339333726, 1124907881, 1173637652, 3311977436, 3965600132, 2547420593);
}

uint64_t sub_1BADFB250@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W6>, int a7@<W8>)
{
  v22 = v9 < a5;
  v23 = *((v10 | ((v10 < 0x7E501632) << 32)) + v19 - 2119177778);
  v24 = v10 + (v23 ^ 0xF97DF9F3) + ((v23 << (a7 + 86)) & 0x1E6) + 920596336;
  v25 = (1490189781 * v24 - ((-1314587734 * v24 + 626923560) & 0xDB98277A) + v21) ^ (LODWORD(STACK[0xD38]) - 1843427974);
  v26 = ((2 * v25) & 0xFF7BD3FE ^ 0xDB18037A) + (v25 ^ 0x1271FA42);
  v27 = a2 - v8 - v26 + (((v26 + 4331009) % 0x101) ^ 0xB7A6F2EE) + ((2 * ((v26 + 4331009) % 0x101)) & 0x1DC) + 57917479;
  v28 = (LODWORD(STACK[0xD48]) ^ v17 ^ (v27 - ((v16 + 2 * v27) & 0x824D7EE0) - 596232469)) + 1331713508;
  v29 = ((2 * v28) & 0xFFEFEDD0) + (v28 ^ 0xFFF7F6E8);
  v30 = v8 - v29;
  v31 = v29 + a2 - ((2 * (v29 + a2) + 351443868) & 0xB5ADB8B2);
  v29 += 526616;
  v32 = LODWORD(STACK[0xD48]) ^ a1 ^ v29;
  v33 = v31 + v13;
  HIDWORD(v34) = v29;
  LODWORD(v34) = v29;
  v30 -= 1279460595;
  v35 = (v33 ^ v14 ^ ((v34 >> 28) - ((2 * (v34 >> 28)) & 0x9590116E) + 1254623415)) + v30;
  v36 = v32 + v7 - ((2 * v32) & 0x1C6054E8);
  v37 = (v35 - ((2 * v35) & 0x39222E90) - 1668212920) ^ v36;
  v38 = (v37 ^ 0x92A13D3C) - 2 * (((v37 ^ 0x92A13D3C) + 1540275480) & (a4 + 2) ^ v37 & 2) + v11;
  v39 = v38 ^ v33;
  v40 = ((2 * (v38 ^ v30)) & 0xFFEDEF92 ^ 0x8BE88400) + (v38 ^ v30 ^ 0x3A02BDDD);
  HIDWORD(v34) = v38 ^ a4;
  LODWORD(v34) = v38;
  v41 = ((2 * ((v38 ^ a4) + (v36 ^ v7))) & 0xBFFFF9D6) + (((v38 ^ a4) + (v36 ^ v7)) ^ 0xDFFFFCEB);
  v42 = (v39 ^ 0x5C11A4F9 ^ ((v34 >> 31) - (v20 & (2 * (v34 >> 31))) - 1020054860)) - (v40 + v41);
  v43 = v42 - ((2 * v42 - 1074927256) & 0xA78E3CD8) - 1279388896;
  v44 = ((2 * (v43 ^ v39)) & 0x7CCE67F2 ^ 0x10C827F0) + (v43 ^ v39 ^ 0xB6932805);
  HIDWORD(v34) = v43 ^ 0x7D68DB1;
  LODWORD(v34) = v43 ^ 0x90000000;
  v45 = ((2 * (v40 - 2146891721 + (v43 ^ a6))) & 0xBF9F745A) + ((v40 - 2146891721 + (v43 ^ a6)) ^ 0x5FCFBA2D);
  v46 = ((v41 + 536871701) ^ a6 ^ v43) + a3 - ((2 * ((v41 + 536871701) ^ a6 ^ v43)) & 0x861976D2);
  v47 = (v46 ^ 0xC0F3D8 ^ (((v34 >> 28) ^ 0x75BDFFFD) + ((2 * (v34 >> 28)) & 0xEB7BFFFA) + v45 + v44 - 1344841073 + ((-1899148694 - 2 * (((v34 >> 28) ^ 0x75BDFFFD) + ((2 * (v34 >> 28)) & 0xEB7BFFFA) + v45 + v44 - 1284393197)) | v15))) + 737700960;
  v48 = ((2 * v47) & 0xFFE5FFAC) + (v47 ^ 0xFFF2FFD6);
  v49 = (v48 + v12) ^ v46;
  v50 = v49 ^ a3;
  v51 = (v49 ^ a3) & 0x78C03017 ^ v49 & 6;
  if (v22 == v10 + v18 < 0xC568C3DC)
  {
    v22 = v10 + v18 < v9;
  }

  LODWORD(STACK[0xD48]) = v50 + 2025861137 - 2 * v51;
  LODWORD(STACK[0xD38]) = v48 + 1844279984;
  return (*(STACK[0xD40] + 8 * ((906 * v22) ^ a7)))();
}

uint64_t sub_1BADFB748(uint64_t a1, int a2)
{
  LODWORD(STACK[0xBB8]) = a2;
  LODWORD(STACK[0xC08]) = v2;
  LODWORD(STACK[0xC10]) = v3;
  v4 = STACK[0xE64];
  v5 = -1673081951 * LODWORD(STACK[0xE64]);
  LODWORD(STACK[0x49C]) = v3 - 354;
  LODWORD(STACK[0xCB8]) = v5 - ((v3 + 968327834 + 948803394 * v4 - 2059) & 0x79C389EA);
  LODWORD(STACK[0xC18]) = v3 - 1634;
  v6 = STACK[0xE6C];
  LODWORD(STACK[0x920]) = STACK[0xE6C];
  v7 = STACK[0xE7C];
  LODWORD(STACK[0xD18]) = STACK[0xE7C];
  v8 = -1673081951 * v6 - 2 * ((-1673081951 * v6 + 215728638) & 0x894A51B ^ (-1673081951 * v6) & 1) - 1519360232;
  LODWORD(STACK[0xBF8]) = -1673081951 * LODWORD(STACK[0xE70]) - ((948803394 * LODWORD(STACK[0xE70]) + 968328188) & 0xB76332D0);
  v9 = -1673081951 * v7 - ((948803394 * v7 + 968328188) & 0xA060A806);
  v10 = STACK[0xE74];
  v11 = -1673081951 * LODWORD(STACK[0xE74]);
  LODWORD(STACK[0xD00]) = -1673081951 * LODWORD(STACK[0xE68]) - ((948803394 * LODWORD(STACK[0xE68]) + 968328188) & 0xC2023724);
  LODWORD(STACK[0xD08]) = ((v8 << 7) ^ 0x4A528D00) - ((2 * ((v8 << 7) ^ 0x4A528D00)) & 0xDC79E500);
  LODWORD(STACK[0xCD0]) = v11 - ((948803394 * v10 + 968328188) & 0x51F0C1FE);
  LODWORD(STACK[0xC00]) = ((1198680254 * LODWORD(STACK[0xE60]) + 1179155458) | 0xA93EFE7F) + LODWORD(STACK[0xE60]) * ((v3 - 1634) ^ 0x9C46C8AA);
  LODWORD(STACK[0xCF8]) = ((8 * v8) ^ 0x44A528D0) - ((2 * ((8 * v8) ^ 0x44A528D0)) & 0x1D4D59E0);
  v12 = LODWORD(STACK[0xD10]) ^ 0xAA3529DE;
  v13 = v12 + LODWORD(STACK[0xD30]);
  v14 = STACK[0xD30];
  LODWORD(STACK[0xD30]) = STACK[0xD30];
  LODWORD(STACK[0xBE8]) = v12;
  v15 = ((2 * (v13 - 149422666)) & 0x6ABEFFF4) + ((v13 - 149422666) ^ 0xB55F7FFA);
  LODWORD(STACK[0xBD0]) = v15;
  v16 = LODWORD(STACK[0xD28]) - v14;
  LODWORD(STACK[0xBE0]) = v16;
  v17 = ((2 * (v12 - 1487046285)) & 0xCFEFDFDE) + ((v12 - 1487046285) ^ 0x67F7EFEF);
  LODWORD(STACK[0xBF0]) = v17;
  v18 = LODWORD(STACK[0xD20]) + v16 - v17;
  LODWORD(STACK[0xBC0]) = v18 + 1958185529;
  LODWORD(STACK[0xBC8]) = v15 - (v18 + 1958185529) - ((2 * (v15 - (v18 + 1958185529)) - 1187181970) & 0xA4A6E3FE);
  v19 = (-55 - (v15 - (v18 + 57) - ((2 * (v15 - (v18 + 57)) + 110) & 0xFE))) & 0x80;
  v20 = (v19 ^ 0xD5EBC5FA) + 2 * v19;
  LODWORD(STACK[0xBD8]) = v20;
  v21 = ((2 * ((v20 + 705968646) & (v18 - 2037356412))) & 0x44464100) == ((v20 + 705968646) & (v18 - 2037356412));
  LODWORD(STACK[0xCE4]) = -1673081951 * LODWORD(STACK[0xE78]) - ((948803394 * LODWORD(STACK[0xE78]) + 968328188) & 0x3C6DFC3A);
  LODWORD(STACK[0xD10]) = ((v8 << 26) ^ 0x68000000) - ((2 * ((v8 << 26) ^ 0x68000000)) & 0x90000000);
  LODWORD(STACK[0xCB0]) = ((v8 << 13) ^ 0x94A34000) - ((2 * ((v8 << 13) ^ 0x94A34000)) & 0x88408000);
  LODWORD(STACK[0x9D0]) = ((v8 << 14) ^ 0x29468000) - 772339017 + (~(2 * ((v8 << 14) ^ 0x29468000)) | 0x5C11FFFF);
  LODWORD(STACK[0xB50]) = ((v8 << 17) ^ 0x4A340000) - ((2 * ((v8 << 17) ^ 0x4A340000)) & 0xAC740000);
  LODWORD(STACK[0xCE8]) = ((v8 << 20) ^ 0x51A00000) - ((2 * ((v8 << 20) ^ 0x51A00000)) & 0xD8200000);
  LODWORD(STACK[0xCCC]) = ((v8 << 16) ^ 0xA51A0000) - ((2 * ((v8 << 16) ^ 0xA51A0000)) & 0xD6420000);
  LODWORD(STACK[0xCF0]) = ((v8 << 24) ^ 0x1A000000) - ((2 * ((v8 << 24) ^ 0x1A000000)) & 0x10000000);
  LODWORD(STACK[0xCDC]) = ((v8 << 22) ^ 0x46800000) - ((2 * ((v8 << 22) ^ 0x46800000)) & 0x17000000);
  LODWORD(STACK[0xB48]) = ((16 * v8) ^ 0x894A51A0) - 2 * (((16 * v8) ^ 0x894A51A0) & 0xCDDB730 ^ (16 * v8) & 0x10);
  LODWORD(STACK[0xCAC]) = ((v8 << 23) ^ 0x8D000000) - ((2 * ((v8 << 23) ^ 0x8D000000)) & 0xC3000000);
  LODWORD(STACK[0xC78]) = ((v8 << 27) ^ 0xD0000000) - ((2 * ((v8 << 27) ^ 0xD0000000)) & 0xA0000000);
  v22 = (v8 >> 29) ^ 0xFFFA8C2B;
  v23 = (v8 >> 30) ^ 0x66FA7F87;
  v24 = (v8 >> 19) ^ 0xF19CC631;
  v25 = (v8 >> 21) ^ 0x58A6515C;
  v26 = (v8 >> 15) ^ 0xB4767C6E;
  v27 = (v8 >> 18) ^ 0x1510FEFA;
  v28 = (v8 >> 14) ^ 0x781FBF57;
  LODWORD(STACK[0x750]) = v26;
  v29 = v27 ^ v26 ^ v28;
  v30 = (v8 >> 13) ^ 0xDE6CE150;
  v31 = (v8 >> 10) ^ 0x5CD60FA7;
  v32 = (v8 >> 11) ^ 0x5D538AFA;
  v33 = (v8 >> 9) ^ 0x62E15407;
  v34 = (v8 >> 6) ^ 0x9C11842F;
  v35 = (v8 >> 5) ^ 0x5956C9C0;
  v36 = (v8 >> 4) ^ 0xDB7A4648;
  v37 = v22 ^ (v8 >> 2) ^ v23 ^ v24 ^ v25 ^ v29 ^ v30 ^ v32 ^ v31 ^ v33 ^ v34 ^ v35 ^ v36 ^ ((v8 >> 28) ^ (v8 >> 27) | 0xEA3FA800);
  LODWORD(STACK[0xC70]) = v37;
  LODWORD(STACK[0xB30]) = ((4 * v37) ^ 0x8A115D1C) + 1359975899 - 2 * (((4 * v37) ^ 0x8A115D1C) & 0x510F95F8 ^ (4 * v37) & 0x20);
  v38 = LODWORD(STACK[0x464]) ^ (v8 >> 22);
  v39 = (v8 >> 25) ^ 0x82242C2E;
  LODWORD(STACK[0x74C]) = v27;
  v40 = HIWORD(v8) ^ 0xF291237B;
  v41 = (v8 >> 12) ^ 0x4ED9C3DB;
  v42 = (v8 >> 7) ^ 0x295BAC79;
  LODWORD(STACK[0x740]) = v36;
  v43 = (v8 >> 20) ^ (v8 >> 1) ^ v38 ^ v39 ^ v25 ^ v24 ^ v27 ^ v40 ^ v28 ^ v30 ^ v41 ^ v32 ^ v42 ^ v34 ^ v36;
  LODWORD(STACK[0xCE0]) = v43;
  v44 = ((v8 >> 31) | 0xFB4E285A) ^ (v43 >> 27) ^ (v43 >> 21);
  LODWORD(STACK[0xB58]) = v44;
  LODWORD(STACK[0xB70]) = ((32 * v44) ^ 0x69C5F040) - 2 * (((32 * v44) ^ 0x69C5F040) & 0xFD20 ^ (32 * v44) & 0x20);
  v45 = (v8 ^ 0x894A51A) << ((v8 >> 21) & 0xD ^ 4 | (v8 >> 21) & 0xD ^ 9);
  v46 = v45 - ((2 * v45) & 0x48E57C18);
  LODWORD(STACK[0x754]) = v23;
  LODWORD(STACK[0x738]) = v39;
  LODWORD(STACK[0x758]) = v22;
  LODWORD(STACK[0x73C]) = v38;
  LODWORD(STACK[0x764]) = v24;
  LODWORD(STACK[0x734]) = v40;
  LODWORD(STACK[0x730]) = v41;
  LODWORD(STACK[0x748]) = v31;
  v47 = (v8 >> 8) ^ 0x9BD8742C;
  LODWORD(STACK[0x710]) = v47;
  LODWORD(STACK[0x72C]) = v42;
  LODWORD(STACK[0x744]) = v34;
  v48 = HIBYTE(v8) ^ (v8 >> 17) ^ v23 ^ v39 ^ v22 ^ v38 ^ v25 ^ v24 ^ v40 ^ v28 ^ v41 ^ v32 ^ v33 ^ v31 ^ v47 ^ v42 ^ v34 ^ v35;
  v49 = v9;
  v50 = v9 - 317975039;
  LODWORD(STACK[0xBB0]) = ((2 * (v9 - 317975039)) ^ 0xA060A806) - 2 * (((2 * (v9 - 317975039)) ^ 0xA060A806) & 0x60585DDA ^ (2 * (v9 - 317975039)) & 0x10);
  LODWORD(STACK[0xC80]) = v48 >> 21;
  LODWORD(STACK[0xCA0]) = (((v9 - 317975039) << 10) ^ 0xC1500C00) - ((2 * (((v9 - 317975039) << 10) ^ 0xC1500C00)) & 0xD80F5000);
  v51 = ((4 * (v9 - 317975039)) ^ 0x40C1500C) - ((2 * ((4 * (v9 - 317975039)) ^ 0x40C1500C)) & 0xF2B5D28);
  v52 = ((8 * (v9 - 317975039)) ^ 0x8182A018) - ((2 * ((8 * (v9 - 317975039)) ^ 0x8182A018)) & 0xC20524C0);
  v53 = LODWORD(STACK[0xD00]) + 2111626640;
  v54 = (v8 << 25) ^ 0x34000000;
  LODWORD(STACK[0xC28]) = v54;
  v55 = v54 - ((v8 << 26) & 0x94000000) - 878693577;
  LODWORD(STACK[0x774]) = v55;
  v56 = LODWORD(STACK[0xCF8]) - 1901679375;
  LODWORD(STACK[0x8D0]) = v56;
  v57 = v55 ^ v53 ^ (((v8 << 8) ^ 0x94A51A00) - ((2 * ((v8 << 8) ^ 0x94A51A00)) & 0xE5773200) - 222586543) ^ (((v8 << 15) ^ 0x528D0000) - ((2 * ((v8 << 15) ^ 0x528D0000)) & 0x94AF0000) - 900206300) ^ v56;
  v58 = LODWORD(STACK[0xD08]) + 1849488039;
  LODWORD(STACK[0x8C8]) = v58;
  v59 = ((v8 << 11) ^ 0xA528D000) - ((2 * ((v8 << 11) ^ 0xA528D000)) & 0x85889000) - 1027323831;
  LODWORD(STACK[0xC98]) = v59;
  v60 = (v8 << 10) ^ 0x52946800;
  LODWORD(STACK[0x700]) = 2 * v60;
  LODWORD(STACK[0x704]) = v60;
  v61 = v60 - ((2 * v60) & 0xCC38C000) - 434347919;
  LODWORD(STACK[0xB68]) = v61;
  v62 = v57 ^ v58 ^ v61 ^ v59;
  v63 = LODWORD(STACK[0xCE8]) - 334153944;
  LODWORD(STACK[0x8C0]) = v63;
  v64 = LODWORD(STACK[0xCCC]) - 350094171;
  LODWORD(STACK[0x8BC]) = v64;
  v65 = ((v8 << 21) ^ 0xA3400000) - ((2 * ((v8 << 21) ^ 0xA3400000)) & 0x2E000000) - 1761058883;
  LODWORD(STACK[0xC88]) = v65;
  v66 = ((v8 << 18) ^ 0x94680000) - ((2 * ((v8 << 18) ^ 0x94680000)) & 0x2C080000) + 369507707;
  LODWORD(STACK[0xC90]) = v66;
  v67 = v62 ^ v64 ^ v66 ^ v63 ^ v65;
  v68 = LODWORD(STACK[0xD10]) + 1224776328;
  LODWORD(STACK[0x9C4]) = v68;
  v69 = LODWORD(STACK[0xCF0]) - 2011743094;
  v70 = LODWORD(STACK[0xCDC]) - 1951466598;
  LODWORD(STACK[0x8B8]) = v70;
  v71 = LODWORD(STACK[0xCAC]) - 511220789;
  LODWORD(STACK[0x9D4]) = v71;
  v72 = LODWORD(STACK[0xC78]) - 730373398;
  LODWORD(STACK[0x9B4]) = v72;
  LODWORD(STACK[0x770]) = v69;
  v73 = v67 ^ v70 ^ v71 ^ v69 ^ v68 ^ v72;
  v74 = ((4 * v8) ^ 0x22529468) - 2 * (((4 * v8) ^ 0x22529468) & 0x2DA0B2DC ^ (4 * v8) & 0x10) - 1381977394;
  LODWORD(STACK[0x8B4]) = v74;
  LODWORD(STACK[0x878]) = v73 ^ v74 ^ (v46 - 1535984116) ^ v48 ^ (((4 * v48) ^ 0x27608598) - ((2 * ((4 * v48) ^ 0x27608598)) & 0x225B56F8) - 785536132) ^ (((32 * v48) ^ 0x3B042CC0) - ((2 * ((32 * v48) ^ 0x3B042CC0)) & 0x55528040) + 715735079) ^ (((v48 << 11) ^ 0xC10B3000) - ((2 * ((v48 << 11) ^ 0xC10B3000)) & 0x3ADED000) + 493841657) ^ (((4 * (v48 >> 21)) ^ 0x1138) - ((2 * ((4 * (v48 >> 21)) ^ 0x1138)) & 0x11D0) - 87578392) ^ (((32 * (v48 >> 21)) ^ 0x89C0) - ((2 * ((32 * (v48 >> 21)) ^ 0x89C0)) & 0x1A280) + 543609170) ^ (((v48 >> 21 << 11) ^ 0x227000) + 624627962 - ((2 * ((v48 >> 21 << 11) ^ 0x227000)) & 0x762000));
  v75 = v50;
  LODWORD(STACK[0xD10]) = ((v50 << 7) ^ 0x182A0180) - ((2 * ((v50 << 7) ^ 0x182A0180)) & 0x15BEEB00);
  LODWORD(STACK[0xD00]) = ((v50 << 13) ^ 0xA806000) - ((2 * ((v50 << 13) ^ 0xA806000)) & 0x58CC0000);
  v76 = v50 << 24;
  LODWORD(STACK[0xCF8]) = ((v50 << 24) ^ 0x3000000) - ((2 * ((v50 << 24) ^ 0x3000000)) & 0xEC000000);
  LODWORD(STACK[0xB38]) = v50 << 29;
  LODWORD(STACK[0xBA8]) = ((v50 << 29) ^ 0x60000000) + (((v50 << 29) ^ 0x60000000) >> 30 << 31);
  LODWORD(STACK[0xB40]) = v50 >> 31;
  v77 = (v50 >> 26) ^ (v50 >> 3) ^ (v50 >> 31);
  v78 = ((v50 >> 30) | 0x50BD28DC) ^ (v50 >> 29) ^ 0x735393D9;
  v79 = (v75 >> 22) ^ 0xE55ED392;
  LODWORD(STACK[0x9A4]) = v79;
  v80 = v78 ^ v77 ^ v79;
  v81 = (v75 >> 18) ^ 0x618C5EB0;
  v82 = (v75 >> 19) ^ 0x8474F7F3;
  v83 = (v75 >> 25) ^ 0x8292C71A;
  LODWORD(STACK[0xCDC]) = v83;
  v84 = HIWORD(v75) ^ 0x5AA5E1FD;
  LODWORD(STACK[0xAF8]) = v84;
  v85 = (v75 >> 15) ^ 0x2A36E7D6;
  v86 = v80 ^ v83 ^ v81 ^ v82 ^ v84 ^ v85;
  v87 = (v75 >> 12) ^ 0x7766F94C;
  v88 = (v75 >> 10) ^ 0x16122598;
  v89 = (v75 >> 8) ^ 0xB3785173;
  LODWORD(STACK[0xB00]) = v87;
  v90 = (v75 >> 7) ^ 0xB2F6E085;
  LODWORD(STACK[0x964]) = v90;
  v91 = (v75 >> 6) ^ 0xC7DD2121;
  v92 = (v75 >> 4) ^ 0x8D35E455;
  LODWORD(STACK[0xB18]) = v92;
  v93 = v86 ^ v87 ^ v88 ^ v89 ^ v90 ^ v91 ^ v92;
  LODWORD(STACK[0xCCC]) = v93;
  LODWORD(STACK[0xBA0]) = ((4 * v93) ^ 0xD7FF5BA8) - 2 * (((4 * v93) ^ 0xD7FF5BA8) & 0x197C61DC ^ (4 * v93) & 4);
  LODWORD(STACK[0x9A0]) = (LODWORD(STACK[0xD18]) << 31) - (v49 << 30);
  v94 = (v75 >> 21) ^ 0x9A192954;
  v95 = v94 ^ v82 ^ v81;
  LODWORD(STACK[0xB28]) = v95;
  v96 = (v75 >> 11) ^ 0xA7330E9C;
  v97 = (v75 >> 14) ^ 0xE37FE84;
  v98 = (v75 >> 13) ^ 0xFEAA768;
  LODWORD(STACK[0xB20]) = v98;
  LODWORD(STACK[0x9AC]) = v97;
  LODWORD(STACK[0x9C0]) = v96;
  v99 = (v75 >> 9) ^ 0xF7231F90;
  v100 = (v75 >> 27) ^ (v75 >> 28) ^ (v75 >> 2) ^ v95 ^ v85 ^ v97 ^ v98 ^ v96 ^ v88 ^ v99;
  v101 = (v75 >> 5) ^ 0x883CC9B0;
  v102 = v75;
  LODWORD(STACK[0x9BC]) = v91;
  v103 = v100 ^ v91 ^ v101 ^ (v75 >> 4) ^ 0x8D35E455 ^ v78;
  LODWORD(STACK[0x998]) = v103;
  LODWORD(STACK[0x99C]) = ((4 * v103) ^ 0x87260564) + 1237058306 - 2 * (((4 * v103) ^ 0x87260564) & 0x49BC0308 ^ (4 * v103) & 8);
  v104 = ((v75 << 16) ^ 0x54030000) - ((2 * ((v75 << 16) ^ 0x54030000)) & 0x475C0000);
  LODWORD(STACK[0xC78]) = ((v75 << 22) ^ 0xC00000) - ((2 * ((v75 << 22) ^ 0xC00000)) & 0x95000000);
  v105 = ((v75 << 20) ^ 0x40300000) - ((2 * ((v75 << 20) ^ 0x40300000)) & 0x400000);
  v106 = ((v75 << 25) ^ 0x6000000) + 1402671893 + (~(2 * ((v75 << 25) ^ 0x6000000)) | 0x5BFFFFFF);
  LODWORD(STACK[0xCF0]) = v106;
  v107 = ((v75 << 11) ^ 0x82A01800) - ((2 * ((v75 << 11) ^ 0x82A01800)) & 0xE0604000);
  v108 = (v51 - 2020233577) ^ (v52 - 519925147);
  LODWORD(STACK[0xCE8]) = v108;
  v109 = ((v75 << 18) ^ 0x500C0000) - ((2 * ((v75 << 18) ^ 0x500C0000)) & 0xB2200000);
  v110 = ((v75 << 21) ^ 0x80600000) - ((2 * ((v75 << 21) ^ 0x80600000)) & 0xDC00000);
  v111 = ((v75 << 27) ^ 0x18000000) + 684802119 - ((2 * ((v75 << 27) ^ 0x18000000)) & 0x55555555);
  v112 = ((v75 << 23) ^ 0x1800000) - (v76 & 0x7C000000);
  v113 = HIBYTE(v102) ^ (v102 >> 17) ^ v87 ^ v84 ^ (v75 >> 22) ^ 0xE55ED392 ^ v94 ^ v82 ^ v96 ^ v88 ^ v97 ^ v99 ^ v89 ^ v90 ^ v91 ^ v101;
  v114 = v78 ^ LODWORD(STACK[0xCDC]);
  v115 = v113 ^ v114;
  v116 = (v113 ^ v114 ^ 0x72D5C985) << (v114 & 5 ^ 1 | v114 & 5 ^ 4);
  v117 = v115 >> 21;
  v118 = (LODWORD(STACK[0x45C]) ^ (v115 >> 21 << 11)) - ((2 * (LODWORD(STACK[0x45C]) ^ (v115 >> 21 << 11))) & 0x758000);
  v119 = ((v75 << 26) ^ 0xE48AA72) - 18;
  LODWORD(STACK[0xCAC]) = v119;
  LODWORD(STACK[0x97C]) = v112 + 1043450222;
  v120 = LODWORD(STACK[0xD10]) + 182416872;
  LODWORD(STACK[0xD10]) = v120;
  v121 = (v112 + 1043450222) ^ v119 ^ (((v75 << 8) ^ 0x30540300) - ((2 * ((v75 << 8) ^ 0x30540300)) & 0x1999000) + 13420692) ^ (((v102 << 15) ^ 0x2A018000) - ((2 * ((v102 << 15) ^ 0x2A018000)) & 0x44FE0000) - 1568729786) ^ v120;
  v122 = LODWORD(STACK[0xCA0]) + 1812441736;
  LODWORD(STACK[0xD08]) = v122;
  v123 = LODWORD(STACK[0xD00]) - 1402596463;
  LODWORD(STACK[0xCA0]) = v123;
  LODWORD(STACK[0xC38]) = v107 + 1882203668;
  LODWORD(STACK[0xB98]) = v104 - 1548835715;
  LODWORD(STACK[0xD00]) = v105 + 2866350;
  LODWORD(STACK[0x970]) = v109 + 1494465457;
  LODWORD(STACK[0xC30]) = v110 - 2030378331;
  v124 = (v104 - 1548835715) ^ (v109 + 1494465457);
  LODWORD(STACK[0xB60]) = v124;
  v125 = v121 ^ v122 ^ (v107 + 1882203668) ^ v123 ^ v124 ^ (v105 + 2866350) ^ (v110 - 2030378331);
  v126 = LODWORD(STACK[0xCE4]) + 991084571;
  v127 = LODWORD(STACK[0xCF8]) - 157213382;
  LODWORD(STACK[0xB90]) = v127;
  v128 = LODWORD(STACK[0xC78]) - 897069985;
  LODWORD(STACK[0xCF8]) = v128;
  v111 += 965;
  LODWORD(STACK[0x96C]) = v111;
  v129 = v125 ^ v128 ^ v127 ^ v106 ^ v111 ^ v126 ^ v108 ^ v115 ^ (((4 * v115) ^ 0xCB572614) - ((2 * ((4 * v115) ^ 0xCB572614)) & 0x57373238) + 731617565) ^ (v116 - ((2 * v116) & 0xC7ADCD44) - 472455518) ^ (((v115 << 11) ^ 0xAE4C2800) - ((2 * ((v115 << 11) ^ 0xAE4C2800)) & 0xD57CC000) - 356620352) ^ (((4 * (v115 >> 21)) ^ 0xE58) - ((2 * ((4 * (v115 >> 21)) ^ 0xE58)) & 0x510) - 744004981) ^ (((32 * (v115 >> 21)) ^ 0x72C0) - ((2 * ((32 * (v115 >> 21)) ^ 0x72C0)) & 0xD400) - 1693488632) ^ (v118 + 314230562);
  v130 = STACK[0x878];
  v131 = LODWORD(STACK[0x878]) ^ LODWORD(STACK[0xC80]);
  v132 = v131 ^ 0x16E6D44B;
  v133 = (((v131 ^ 0x16E6D44B) << 13) ^ 0x3A01E000) - ((2 * (((v131 ^ 0x16E6D44B) << 13) ^ 0x3A01E000)) & 0x83888000);
  v134 = (((v131 ^ 0x16E6D44B) << 10) ^ 0x87403C00) - ((2 * (((v131 ^ 0x16E6D44B) << 10) ^ 0x87403C00)) & 0x8E50D000);
  v135 = ((8 * (v131 ^ 0x16E6D44B)) ^ 0x70E8078) - ((2 * ((8 * (v131 ^ 0x16E6D44B)) ^ 0x70E8078)) & 0x5BC62ED0);
  v136 = (((v131 ^ 0x16E6D44B) << 7) ^ 0x70E80780) - ((2 * (((v131 ^ 0x16E6D44B) << 7) ^ 0x70E80780)) & 0xECC05D00);
  v137 = ((LODWORD(STACK[0x878]) >> 29) | 0x7E348CB8) ^ (LODWORD(STACK[0x878]) >> 30) ^ 0x97D1C3CD;
  v138 = LODWORD(STACK[0x878]) >> 31;
  LODWORD(STACK[0x994]) = v138;
  v139 = (v130 >> 19) ^ 0xEF1A813A;
  LODWORD(STACK[0x9B0]) = v139;
  v140 = v137 ^ v138 ^ (v130 >> 26) ^ v139;
  v141 = (v130 >> 18) ^ 0xEF723F33;
  LODWORD(STACK[0x858]) = v141;
  v142 = HIWORD(v130) ^ 0xBCE04F47;
  LODWORD(STACK[0xC58]) = v142;
  v143 = (v130 >> 15) ^ 0x9DE9083A;
  LODWORD(STACK[0x6E4]) = v143;
  v144 = v141 ^ v142 ^ v143;
  v145 = (v130 >> 12) ^ 0xDA74E2DA;
  LODWORD(STACK[0xC60]) = v145;
  v146 = (v130 >> 22) ^ (v130 >> 25) ^ 0x837ADB19;
  v147 = v131;
  LODWORD(STACK[0x9E0]) = v131;
  v131 >>= 10;
  LODWORD(STACK[0x6D0]) = v131;
  v148 = (v147 >> 8) ^ 0xF0B65933;
  LODWORD(STACK[0x874]) = v146;
  v149 = v140 ^ v144 ^ v145 ^ v146 ^ v131 ^ 0x2014F009 ^ v148;
  v150 = (v147 >> 4) ^ 0xEE73D67E;
  LODWORD(STACK[0x850]) = v150;
  v151 = (v147 >> 6) ^ 0xC70B2176;
  LODWORD(STACK[0x84C]) = v151;
  v152 = (v147 >> 7) ^ 0x7C78B477;
  v153 = v150 ^ (v132 >> 3);
  LODWORD(STACK[0x870]) = v152;
  v154 = v149 ^ v152 ^ v151 ^ v153;
  LODWORD(STACK[0xC80]) = v154;
  LODWORD(STACK[0xC78]) = (v154 >> 21) ^ (v153 >> 27);
  LODWORD(STACK[0xB08]) = ((v132 << 27) ^ 0x78000000) + (((v132 << 27) ^ 0x78000000) >> 30 << 31);
  v155 = (4 * v132) ^ 0x8387403C;
  LODWORD(STACK[0x6B0]) = 2 * v155;
  LODWORD(STACK[0x6B4]) = v155;
  v156 = v155 - ((2 * v155) & 0xE5992E00) + 1926010626;
  LODWORD(STACK[0xB80]) = v156;
  LODWORD(STACK[0xCE4]) = v134 - 953652860;
  v157 = v135 - 1377626257;
  v158 = v136 + 1986014904;
  LODWORD(STACK[0x9A8]) = v136 + 1986014904;
  v159 = ((v132 << 11) ^ 0xE807800) - ((2 * ((v132 << 11) ^ 0xE807800)) & 0xF158C000) + 2024563938;
  LODWORD(STACK[0x884]) = v159;
  LODWORD(STACK[0x6B8]) = v157;
  v160 = v157 ^ v158;
  LODWORD(STACK[0xB78]) = v160;
  v161 = v156 ^ (((v132 << 8) ^ 0xE1D00F00) - ((2 * ((v132 << 8) ^ 0xE1D00F00)) & 0x50ABF200) - 1470760497) ^ v160 ^ (v134 - 953652860) ^ v159;
  HIDWORD(v162) = v161 ^ 0xA7C;
  LODWORD(v162) = v161 ^ 0xBE9E5000;
  v163 = v133 - 1044101065;
  LODWORD(STACK[0x9B8]) = v133 - 1044101065;
  v164 = (v162 >> 12) - ((2 * (v162 >> 12)) & 0xB941AEF8) + 1554044796;
  HIDWORD(v162) = v164 ^ (v163 >> 12) ^ 0x99FDB;
  LODWORD(v162) = v164 ^ 0x47400000;
  LODWORD(STACK[0x988]) = v129 ^ 0x7968B409;
  v165 = v129 ^ 0x7968B409 ^ v117;
  LODWORD(STACK[0x908]) = ((4 * v165) ^ 0x52E7E2A0) + 2101874987 - 2 * (((4 * v165) ^ 0x52E7E2A0) & 0x7D48112C ^ (4 * v165) & 4);
  v166 = (v129 >> 22) ^ 0xC84768D7;
  LODWORD(STACK[0x8FC]) = v166;
  v167 = (v129 >> 25) ^ 0x5413DF28;
  LODWORD(STACK[0x8F0]) = v167;
  v168 = (v129 >> 21) ^ 0xFF9424D2;
  LODWORD(STACK[0x980]) = v168;
  v169 = (v129 >> 11) ^ 0x56FD6128;
  LODWORD(STACK[0xC68]) = v169;
  v170 = v166 ^ v169 ^ v167 ^ v168;
  v171 = (v129 >> 19) ^ 0x531F08FF;
  LODWORD(STACK[0x9CC]) = v171;
  v172 = (v129 >> 18) ^ 0x47D4F6DC;
  LODWORD(STACK[0x8D8]) = v172;
  LODWORD(STACK[0x77C]) = HIWORD(v129);
  v173 = HIWORD(v129) ^ 0xE1841592;
  LODWORD(STACK[0xB14]) = v173;
  v174 = v170 ^ v171 ^ v172 ^ v173;
  v175 = (v129 >> 12) ^ 0x160C0269;
  LODWORD(STACK[0x900]) = v175;
  v176 = (v129 >> 13) ^ 0x1AD5D7D2;
  LODWORD(STACK[0x8A8]) = v176;
  v177 = (v129 >> 14) ^ 0xCDC5F2C3;
  LODWORD(STACK[0xC50]) = v177;
  v178 = v177 ^ v176 ^ v175;
  LODWORD(STACK[0x89C]) = v165 >> 7;
  v179 = (v165 >> 7) ^ 0xBF2FED7E;
  LODWORD(STACK[0x8E8]) = v179;
  v180 = v174 ^ v178 ^ v179;
  LODWORD(STACK[0x9EC]) = v129;
  v181 = (v165 >> 4) ^ 0x450F478F;
  LODWORD(STACK[0x8E0]) = v181;
  v182 = (v165 >> 1) ^ (v129 >> 20) ^ v181;
  v183 = ((v129 >> 31) | 0x86DA0FA) ^ (v182 >> 27);
  v184 = (v165 >> 6) ^ 0x1417BE3B;
  LODWORD(STACK[0x9C8]) = v184;
  v185 = v180 ^ v184 ^ v182;
  LODWORD(STACK[0xC40]) = v185;
  LODWORD(STACK[0x9F4]) = ((32 * v185) ^ 0xE4544A80) + 654223130 - 2 * (((32 * v185) ^ 0xE4544A80) & 0x26FEB520 ^ (32 * v185) & 0x20);
  LODWORD(STACK[0x6A4]) = v8 << 29;
  LODWORD(STACK[0x950]) = ((v8 << 29) ^ 0xBFFFFFFF) + ((v8 << 28) ^ 0xA0000000);
  LODWORD(STACK[0x934]) = ((32 * v8) ^ 0x1294A340) - ((2 * ((32 * v8) ^ 0x1294A340)) & 0xE12FFD40);
  LODWORD(STACK[0x958]) = ((v8 << 19) ^ 0x28D00000) - ((2 * ((v8 << 19) ^ 0x28D00000)) & 0x81400000);
  v186 = STACK[0xC70];
  LODWORD(STACK[0x938]) = ((LODWORD(STACK[0xC70]) << 11) ^ 0x22BA3800) - ((2 * ((LODWORD(STACK[0xC70]) << 11) ^ 0x22BA3800)) & 0x87662000);
  v187 = (v185 ^ 0xAF22A254) >> ((v183 & 5 ^ 0x14) + (v183 & 5 ^ 1));
  v188 = (v187 - ((2 * v187) & 0x125EA) + 626692853) ^ v183;
  LODWORD(STACK[0xC48]) = v188;
  LODWORD(STACK[0x9D8]) = ((4 * v188) ^ 0xB4DCC838) + 173773881 - 2 * (((4 * v188) ^ 0xB4DCC838) & 0xA5B943C ^ (4 * v188) & 4);
  LODWORD(STACK[0x91C]) = ((32 * v186) ^ 0x508AE8E0) - ((2 * ((32 * v186) ^ 0x508AE8E0)) & 0x92287EC0);
  v189 = (v186 >> 21) ^ (v186 >> 27);
  LODWORD(STACK[0xC20]) = v189;
  LODWORD(STACK[0x910]) = ((4 * v189) ^ 0x1400) - 134975493 - ((2 * ((4 * v189) ^ 0x1400)) & 0x1FF0);
  LODWORD(STACK[0x9DC]) = v8;
  v190 = LODWORD(STACK[0xC28]) - ((2 * LODWORD(STACK[0xC28])) & 0xC000000);
  v191 = STACK[0xCE0];
  LODWORD(STACK[0x948]) = ((4 * LODWORD(STACK[0xCE0])) ^ 0xE3B9A414) - ((2 * ((4 * LODWORD(STACK[0xCE0])) ^ 0xE3B9A414)) & 0x2E1E4270);
  LODWORD(STACK[0x944]) = ((32 * v191) ^ 0x1DCD20A0) - ((2 * ((32 * v191) ^ 0x1DCD20A0)) & 0x14F42600);
  LODWORD(STACK[0x8AC]) = ((v191 << 11) ^ 0x73482800) - ((2 * ((v191 << 11) ^ 0x73482800)) & 0x4980C000);
  v192 = STACK[0xB58];
  LODWORD(STACK[0x8B0]) = ((LODWORD(STACK[0xB58]) << 11) ^ 0x717C1000) - ((2 * ((LODWORD(STACK[0xB58]) << 11) ^ 0x717C1000)) & 0x185CD000);
  LODWORD(STACK[0x8A4]) = ((4 * v192) ^ 0xED38BE08) - ((2 * ((4 * v192) ^ 0xED38BE08)) & 0x20008798);
  LODWORD(STACK[0xCC0]) = v102;
  LODWORD(STACK[0x9E4]) = ((v102 << 14) ^ 0x1500C000) - ((2 * ((v102 << 14) ^ 0x1500C000)) & 0x98458000);
  LODWORD(STACK[0xB38]) = ((v102 << 28) ^ 0x30000000) + (STACK[0xB38] & 0x80000000);
  LODWORD(STACK[0xC28]) = ((v102 << 19) ^ 0xA0180000) + 302666385 - ((2 * ((v102 << 19) ^ 0xA0180000)) & 0x24100000);
  LODWORD(STACK[0x968]) = ((v102 << 12) ^ 0x5403000) - ((2 * ((v102 << 12) ^ 0x5403000)) & 0x395A0000);
  v193 = (v102 >> 20) ^ (v102 >> 1) ^ LODWORD(STACK[0x9A4]) ^ LODWORD(STACK[0xCDC]) ^ LODWORD(STACK[0xB28]) ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0x9AC]) ^ LODWORD(STACK[0xB00]) ^ LODWORD(STACK[0xB20]) ^ LODWORD(STACK[0x9C0]) ^ LODWORD(STACK[0x964]) ^ LODWORD(STACK[0x9BC]) ^ LODWORD(STACK[0xB18]);
  LODWORD(STACK[0xB28]) = ((4 * v193) ^ 0x1FA7F228) - ((2 * ((4 * v193) ^ 0x1FA7F228)) & 0xF2212228);
  LODWORD(STACK[0xB20]) = ((32 * v193) ^ 0xFD3F9140) - ((2 * ((32 * v193) ^ 0xFD3F9140)) & 0x9FA25B40);
  LODWORD(STACK[0xB18]) = ((v193 << 11) ^ 0x4FE45000) - ((2 * ((v193 << 11) ^ 0x4FE45000)) & 0xCB9A7000);
  v194 = (LODWORD(STACK[0xB40]) - 2104623526) ^ (v193 >> 27) ^ (v193 >> 21);
  LODWORD(STACK[0xB40]) = ((32 * v194) ^ 0x51BF8DA0) - ((2 * ((32 * v194) ^ 0x51BF8DA0)) & 0x14012800);
  LODWORD(STACK[0x9BC]) = ((4 * v194) ^ 0xA37F1B4) - ((2 * ((4 * v194) ^ 0xA37F1B4)) & 0x9003848);
  LODWORD(STACK[0x9A4]) = ((v194 << 11) ^ 0x6FE36800) - ((2 * ((v194 << 11) ^ 0x6FE36800)) & 0x7AD000);
  v195 = (v130 >> 21) ^ 0x5F9E3440;
  LODWORD(STACK[0x818]) = v195;
  v196 = (v130 >> 14) ^ 0x1CBA1A42;
  LODWORD(STACK[0x81C]) = v196;
  v197 = (v130 >> 22) ^ (v130 >> 25) ^ 0x837ADB19 ^ HIBYTE(v130) ^ (v130 >> 17) ^ v195 ^ LODWORD(STACK[0x9B0]) ^ v196 ^ LODWORD(STACK[0xC58]) ^ LODWORD(STACK[0xC60]);
  LODWORD(STACK[0x6E8]) = v137;
  v198 = STACK[0x9E0];
  v199 = (LODWORD(STACK[0x9E0]) >> 9) ^ 0xC9BE826C;
  LODWORD(STACK[0x6A0]) = v199;
  v200 = v137 ^ v131 ^ 0x2014F009 ^ v199 ^ v152 ^ v148;
  v201 = (v130 >> 11) ^ 0x44F9F53;
  LODWORD(STACK[0x814]) = v201;
  v202 = v197 ^ v201 ^ (v132 >> 6);
  v203 = (v198 >> 5) ^ 0xFB7430F2;
  LODWORD(STACK[0x69C]) = v203;
  v204 = v202 ^ v200 ^ v203;
  LODWORD(STACK[0x964]) = ((8 * v165) ^ 0xA5CFC540) - ((2 * ((8 * v165) ^ 0xA5CFC540)) & 0x33B53F30);
  v205 = LODWORD(STACK[0xCB8]) + 1505593075;
  v206 = LODWORD(STACK[0x920]) << 31;
  LODWORD(STACK[0x868]) = v206;
  v207 = (v206 - 416362731) ^ v205;
  v208 = LODWORD(STACK[0x950]) - 88451524;
  LODWORD(STACK[0x834]) = v208;
  v209 = v207 ^ v8 ^ v208 ^ (v190 - 2017011567) ^ (((v8 << 12) ^ 0x4A51A000) - ((2 * ((v8 << 12) ^ 0x4A51A000)) & 0xFB13A000) - 41299236) ^ LODWORD(STACK[0x8C8]);
  v210 = LODWORD(STACK[0xCB0]) - 1004519149;
  LODWORD(STACK[0x830]) = v210;
  v211 = v209 ^ LODWORD(STACK[0xB68]) ^ LODWORD(STACK[0xC98]) ^ v210;
  v212 = LODWORD(STACK[0x958]) + 1084641935;
  LODWORD(STACK[0x864]) = v212;
  v213 = v211 ^ LODWORD(STACK[0x9D0]) ^ LODWORD(STACK[0x8BC]) ^ LODWORD(STACK[0xC90]) ^ v212 ^ LODWORD(STACK[0x8C0]) ^ LODWORD(STACK[0xC88]) ^ LODWORD(STACK[0x9C4]) ^ LODWORD(STACK[0xCE0]) ^ v192 ^ (LODWORD(STACK[0x948]) + 386867514) ^ (LODWORD(STACK[0x944]) + 175772420) ^ (LODWORD(STACK[0x8AC]) + 616588002) ^ (LODWORD(STACK[0x8A4]) + 1544086477) ^ (LODWORD(STACK[0x8B0]) - 1406244280) ^ (LODWORD(STACK[0xB70]) + 257490179);
  v214 = ((v132 << 26) ^ 0x3E770158) - 23;
  LODWORD(STACK[0x9AC]) = v214;
  v215 = v213 ^ v214 ^ (((v132 << 15) ^ 0xE8078000) - ((2 * ((v132 << 15) ^ 0xE8078000)) & 0x4C7E0000) + 641663629);
  v216 = ((v132 << 16) ^ 0xD00F0000) - ((2 * ((v132 << 16) ^ 0xD00F0000)) & 0xC3AE0000) + 1641490617;
  LODWORD(STACK[0xB00]) = v216;
  v217 = ((v132 << 20) ^ 0xF00000) - ((2 * ((v132 << 20) ^ 0xF00000)) & 0x62400000) - 1322858483;
  LODWORD(STACK[0xCB8]) = v217;
  v218 = ((v132 << 22) ^ 0x3C00000) + 1744029663 - ((2 * ((v132 << 22) ^ 0x3C00000)) & 0xCF800000) + 2384;
  LODWORD(STACK[0x82C]) = v218;
  v219 = ((v132 << 21) ^ 0x1E00000) - ((2 * ((v132 << 21) ^ 0x1E00000)) & 0xA000000) - 2061620376;
  LODWORD(STACK[0x828]) = v219;
  v220 = ((v132 << 18) ^ 0x403C0000) - ((2 * ((v132 << 18) ^ 0x403C0000)) & 0x51D80000) + 686701285;
  LODWORD(STACK[0x6C4]) = v220;
  v221 = v216 ^ v220;
  LODWORD(STACK[0x86C]) = v221;
  v222 = v215 ^ v221 ^ v217 ^ v219 ^ v218;
  v223 = ((v132 << 25) ^ 0x1E000000) - ((2 * ((v132 << 25) ^ 0x1E000000)) & 0xD4000000) - 352574464;
  LODWORD(STACK[0xCB0]) = v223;
  v224 = ((v132 << 24) ^ 0xF000000) - ((2 * ((v132 << 24) ^ 0xF000000)) & 0x50000000) + 676952849;
  LODWORD(STACK[0xAF8]) = v224;
  v225 = ((v132 << 23) ^ 0x7800000) - ((2 * ((v132 << 23) ^ 0x7800000)) & 0xC9000000) - 458342174;
  v226 = LODWORD(STACK[0xB08]) - 955505440;
  LODWORD(STACK[0x6C0]) = v225;
  LODWORD(STACK[0x6BC]) = v226;
  LODWORD(STACK[0x9C0]) = v222 ^ v225 ^ v224 ^ v223 ^ v226 ^ v204 ^ (((4 * v204) ^ 0xF3A85AB8) - ((2 * ((4 * v204) ^ 0xF3A85AB8)) & 0x2D561178) + 1454049468) ^ (((32 * v204) ^ 0x9D42D5C0) - ((2 * ((32 * v204) ^ 0x9D42D5C0)) & 0x4CB84BC0) - 1503910405) ^ (((v204 << 11) ^ 0x50B57000) - ((2 * ((v204 << 11) ^ 0x50B57000)) & 0x9C70A000) + 1312314949) ^ ((v162 >> 20) - ((2 * (v162 >> 20)) & 0x92CC5884) - 916050878);
  LODWORD(STACK[0xB08]) = (((4 * (v204 >> 21)) ^ 0x79C) - ((2 * ((4 * (v204 >> 21)) ^ 0x79C)) & 0x33C0) + 271817184) ^ (v204 >> 21) ^ (((32 * (v204 >> 21)) ^ 0x3CE0) - ((2 * ((32 * (v204 >> 21)) ^ 0x3CE0)) & 0x1ABC0) + 1514591732) ^ (((v204 >> 21 << 11) ^ 0xF3800) - ((2 * ((v204 >> 21 << 11) ^ 0xF3800)) & 0x2E0000) + 1914110529);
  v227 = v165;
  LODWORD(STACK[0xB68]) = ((v165 << 16) ^ 0xF8A80000) - ((2 * ((v165 << 16) ^ 0xF8A80000)) & 0x5A4A0000);
  LODWORD(STACK[0xB58]) = ((v165 << 13) ^ 0x3F150000) - ((2 * ((v165 << 13) ^ 0x3F150000)) & 0x29A44000);
  v228 = ((v227 << 20) ^ 0x8A800000) - ((2 * ((v227 << 20) ^ 0x8A800000)) & 0x53400000);
  LODWORD(STACK[0x958]) = ((v165 << 24) ^ 0xA8000000) - ((2 * ((v165 << 24) ^ 0xA8000000)) & 0x7A000000);
  v229 = ((v227 << 26) ^ 0xA0000000) - ((2 * ((v227 << 26) ^ 0xA0000000)) & 0x70000000);
  v230 = ((v227 << 25) ^ 0x50000000) - ((2 * ((v227 << 25) ^ 0x50000000)) & 0xD0000000);
  v231 = ((v227 << 27) ^ 0x40000000) - ((2 * ((v227 << 27) ^ 0x40000000)) & 0x90000000);
  v232 = ((v227 << 18) ^ 0xE2A00000) - ((2 * ((v227 << 18) ^ 0xE2A00000)) & 0x17600000);
  v233 = ((v227 << 23) ^ 0x54000000) + 1414264463 - ((2 * ((v227 << 23) ^ 0x54000000)) & 0xA8000000);
  v234 = ((v227 << 11) ^ 0xCFC54000) - ((2 * ((v227 << 11) ^ 0xCFC54000)) & 0x54DE8000);
  v235 = ((v227 << 8) ^ 0xB9F8A800) - ((2 * ((v227 << 8) ^ 0xB9F8A800)) & 0xF495DC00);
  v236 = v165 ^ 0x94B9F8A8;
  v237 = STACK[0x9EC];
  v238 = v236 << (HIBYTE(LODWORD(STACK[0x9EC])) & 0xF ^ 2 | HIBYTE(LODWORD(STACK[0x9EC])) & 0xF ^ 0xD);
  v239 = v238 - ((2 * v238) & 0x39B49598);
  v240 = LODWORD(STACK[0x8F0]) ^ HIBYTE(LODWORD(STACK[0x9EC])) ^ LODWORD(STACK[0x8FC]) ^ LODWORD(STACK[0x9CC]) ^ LODWORD(STACK[0xB14]) ^ LODWORD(STACK[0xC50]) ^ LODWORD(STACK[0x900]);
  v241 = LODWORD(STACK[0x9EC]) >> 29;
  LODWORD(STACK[0x718]) = v241;
  v242 = v241 ^ (v237 >> 30) ^ 0xABDD7159;
  LODWORD(STACK[0x80C]) = v242;
  v243 = v240 ^ LODWORD(STACK[0xC68]) ^ v242;
  v244 = (v165 >> 8) ^ 0x771B0F2E;
  v245 = (v165 >> 10) ^ 0x1A30FC14;
  LODWORD(STACK[0x898]) = v245;
  v246 = (v165 >> 9) ^ 0x2B18BDF9;
  LODWORD(STACK[0x7F0]) = v246;
  LODWORD(STACK[0x71C]) = v244;
  v247 = v243 ^ v245 ^ v246 ^ v244;
  v248 = (v165 >> 5) ^ 0x39F7F7C6;
  LODWORD(STACK[0x7C8]) = v248;
  LODWORD(STACK[0x9E8]) = v165;
  v249 = v247 ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x9C8]) ^ v248;
  v250 = v249 ^ (((v236 >> 21) - ((v236 >> 20) & 0xEEEE) + 1911) ^ ((v236 >> 17) - (WORD1(v236) & 0x94BA) + 19037));
  v251 = STACK[0xCC0];
  v252 = LODWORD(STACK[0xCC0]) ^ ((LODWORD(STACK[0xD18]) << 31) | 0x2F13A3B9) ^ (LODWORD(STACK[0xCD0]) + 1171530493);
  v253 = LODWORD(STACK[0xB38]) - 1057214536;
  LODWORD(STACK[0xCDC]) = v253;
  v254 = STACK[0xCAC];
  v255 = v252 ^ LODWORD(STACK[0xCAC]) ^ v253 ^ (LODWORD(STACK[0x968]) + 481100999) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xD08]);
  v256 = LODWORD(STACK[0x9E4]) + 1277354412;
  LODWORD(STACK[0xCE0]) = v256;
  v257 = STACK[0xCA0];
  v258 = v255 ^ LODWORD(STACK[0xC38]) ^ v256 ^ LODWORD(STACK[0xCA0]) ^ LODWORD(STACK[0xB60]) ^ LODWORD(STACK[0xC28]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xC30]) ^ LODWORD(STACK[0xCF0]) ^ v193 ^ v194 ^ (LODWORD(STACK[0xB28]) - 116354794) ^ (LODWORD(STACK[0xB20]) - 808374867) ^ (LODWORD(STACK[0xB18]) - 439535018) ^ (LODWORD(STACK[0x9BC]) + 1318370343) ^ (LODWORD(STACK[0xB40]) + 1261671455) ^ (LODWORD(STACK[0x9A4]) + 1669163242);
  v259 = 2145849735 - ((v165 << 21) ^ 0x15000000);
  LODWORD(STACK[0xD18]) = v259;
  v260 = ((v165 << 7) ^ 0x5CFC5400) - ((2 * ((v165 << 7) ^ 0x5CFC5400)) & 0x98EFFB00) + 1282932203;
  LODWORD(STACK[0x894]) = v260;
  LODWORD(STACK[0xB70]) = v231 - 924397694;
  v261 = v258 ^ v259 ^ (v235 - 95752562) ^ (v231 - 924397694) ^ v260;
  v262 = ((v165 << 10) ^ 0xE7E2A000) - ((2 * ((v165 << 10) ^ 0xE7E2A000)) & 0x5C02F000) + 771848472;
  v263 = LODWORD(STACK[0xB68]) + 757428893;
  LODWORD(STACK[0x88C]) = v263;
  v264 = LODWORD(STACK[0xB58]) + 349317835;
  LODWORD(STACK[0x880]) = v264;
  v265 = ((v165 << 22) ^ 0x2A000000) - ((2 * ((v165 << 22) ^ 0x2A000000)) & 0x73800000) - 1177578662;
  LODWORD(STACK[0x890]) = v265;
  LODWORD(STACK[0x888]) = v228 - 1448107110;
  LODWORD(STACK[0xCD0]) = v232 + 196337684;
  LODWORD(STACK[0x714]) = v262;
  v266 = v262 ^ (v234 + 711935226) ^ v264;
  LODWORD(STACK[0x9A4]) = v266;
  v267 = LODWORD(STACK[0x958]) + 1027245625;
  LODWORD(STACK[0x9BC]) = v229 + 1002477833;
  v230 += 1754125185;
  LODWORD(STACK[0x87C]) = v230;
  LODWORD(STACK[0xB68]) = v233 + 2492;
  LODWORD(STACK[0x70C]) = v267;
  v268 = v261 ^ v266 ^ v263 ^ (v232 + 196337684) ^ (v228 - 1448107110) ^ v265 ^ (v233 + 2492) ^ v267 ^ v230 ^ (v229 + 1002477833) ^ (v239 + 484068044);
  v269 = LODWORD(STACK[0x964]) - 1713725542;
  LODWORD(STACK[0x708]) = v269;
  v270 = LODWORD(STACK[0x908]) ^ v269;
  LODWORD(STACK[0xB60]) = v270;
  LODWORD(STACK[0x778]) = v250;
  v271 = v268 ^ v270 ^ v250 ^ (((4 * v250) ^ 0x6FBD7AD0) - ((2 * ((4 * v250) ^ 0x6FBD7AD0)) & 0x52F4EC40) - 377850336) ^ (((32 * v250) ^ 0x7DEBD680) - ((2 * ((32 * v250) ^ 0x7DEBD680)) & 0xBC4CD9C0) + 1579576563) ^ (((v250 << 11) ^ 0x7AF5A000) - ((2 * ((v250 << 11) ^ 0x7AF5A000)) & 0xFEAA6000) - 11194016);
  HIDWORD(v162) = v271 ^ 0x4C2DE09;
  LODWORD(v162) = v271 ^ 0xC0000000;
  v272 = (((16 * (v249 >> 21)) ^ 0x6DF0) - ((2 * ((16 * (v249 >> 21)) ^ 0x6DF0)) & 0xFFFFE1FF) + 383774970) ^ (((v249 >> 21 << 6) ^ 0x1B7C0) + 938520576) ^ ((v162 >> 28) - ((2 * (v162 >> 28)) & 0x8CC9BCDE) - 966467985);
  HIDWORD(v162) = v272 ^ 0xFFFFFFFD;
  LODWORD(v162) = v272 ^ 0x9CCF5FB0;
  v273 = v162 >> 4;
  v274 = (((32 * (v249 >> 21)) ^ 0xDBE0) - ((2 * ((32 * (v249 >> 21)) ^ 0xDBE0)) & 0x4C80) - 1939855804) ^ (((v249 >> 21 << 11) ^ 0x36F800) - ((2 * ((v249 >> 21 << 11) ^ 0x36F800)) & 0x763000) + 108730638);
  LODWORD(STACK[0x7D8]) = v274;
  v275 = LODWORD(STACK[0xB08]) ^ LODWORD(STACK[0x9C0]);
  LODWORD(STACK[0x9E4]) = v275;
  v276 = v275 ^ 0x4F69EF0B;
  v277 = (v275 >> 25) ^ 0x2C9D4C59;
  v278 = HIWORD(v275) ^ 0x5FD2A68B;
  v279 = (v275 >> 14) ^ 0xD4E4F3BA;
  LODWORD(STACK[0x8B0]) = v278;
  LODWORD(STACK[0x8AC]) = v277;
  v280 = (v275 >> 19) ^ 0x67616F63;
  v281 = (v275 >> 21) ^ 0xD8CFC869;
  v282 = ((v275 ^ 0x4F69EF0B) >> 24) ^ ((v275 ^ 0x4F69EF0B) >> 22) ^ ((v275 ^ 0x4F69EF0B) >> 17) ^ v279 ^ v278 ^ v277 ^ v280 ^ v281;
  v283 = (v275 >> 10) ^ 0x46BAC08A;
  v284 = (v275 >> 12) ^ 0x7AE1B5B1;
  v285 = (v275 >> 11) ^ 0xC564C067;
  LODWORD(STACK[0x8A4]) = v284;
  v286 = (v275 >> 9) ^ 0x2D011FF3;
  v287 = v284 ^ v285 ^ v283 ^ v286;
  v288 = (v275 >> 8) ^ 0xDED74FB2;
  LODWORD(STACK[0x768]) = v288;
  v289 = v287 ^ v288;
  v290 = (v275 >> 7) ^ 0x97E448DC;
  LODWORD(STACK[0x8A0]) = v290;
  v291 = (v275 >> 6) ^ 0xB68D6085;
  v292 = (v275 >> 5) ^ 0xDFA6D2A;
  v293 = v282 ^ v289 ^ v290 ^ v291 ^ v292;
  LODWORD(STACK[0x85C]) = v293;
  v294 = v293 >> 21;
  LODWORD(STACK[0x824]) = ((4 * (v293 >> 21)) ^ 0x7E4) - 2 * (((4 * (v293 >> 21)) ^ 0x7E4) & 0x29C ^ (4 * (v293 >> 21)) & 0x18);
  LODWORD(STACK[0xB58]) = v273;
  v295 = v273 - ((2 * v273) & 0x99160D9E) + 1284179663;
  LODWORD(STACK[0x808]) = v295;
  v296 = v274 ^ v295;
  v297 = v274 ^ v295 ^ 0x41287597;
  LODWORD(STACK[0x6CC]) = v297;
  LOWORD(v295) = (v297 >> 17) - (HIWORD(v297) & 0x265C);
  v298 = (v296 >> 22) ^ 0x8AFB9BEB;
  LODWORD(STACK[0x7F4]) = v298;
  v299 = (v296 >> 25) ^ 0xDECC6F27;
  LODWORD(STACK[0x7EC]) = v299;
  LODWORD(STACK[0x804]) = v296 >> 14;
  v300 = (v296 >> 14) ^ HIBYTE(v296) ^ v299 ^ v298;
  v301 = (v296 >> 19) ^ 0x13C09809;
  LODWORD(STACK[0x854]) = v301;
  v302 = (v296 >> 21) ^ 0xFE79F87B ^ v301;
  LODWORD(STACK[0x7FC]) = v302;
  v303 = HIWORD(v296) ^ 0xCB9588AD;
  LODWORD(STACK[0x7E8]) = v303;
  v304 = v300 ^ v302 ^ v303;
  v305 = (v296 >> 12) ^ 0x519147AE;
  LODWORD(STACK[0x7E4]) = v305;
  v306 = (v296 >> 10) ^ 0xBABC179A;
  LODWORD(STACK[0x844]) = v306;
  v307 = (v296 >> 11) ^ 0x3F42C79F;
  LODWORD(STACK[0x840]) = v307;
  v308 = v305 ^ v307 ^ v306;
  v309 = (v296 >> 9) ^ 0xAC36B26D;
  LODWORD(STACK[0x6D4]) = v309;
  v310 = v304 ^ v308 ^ v309;
  v311 = (v296 >> 29) ^ (v296 >> 30) ^ 0x89644A8F;
  LODWORD(STACK[0x848]) = v311;
  v312 = (v296 >> 6) ^ 0x74271C83;
  LODWORD(STACK[0x838]) = v312;
  v313 = (v296 >> 8) ^ 0x7CD04D9F;
  LODWORD(STACK[0x7DC]) = v313;
  LODWORD(STACK[0x7F8]) = v296 >> 7;
  v314 = (v296 >> 7) ^ 0x55E3D25D;
  LODWORD(STACK[0x7E0]) = v314;
  v315 = v313 ^ v314 ^ v312;
  v316 = (v296 >> 5) ^ 0xA3867A0E;
  LODWORD(STACK[0x6C8]) = v316;
  v317 = v310 ^ v315 ^ v316 ^ v311;
  LODWORD(STACK[0x820]) = v317;
  v318 = v317 ^ (v295 + 4910);
  LODWORD(STACK[0x800]) = v318;
  LODWORD(STACK[0x810]) = ((4 * v318) ^ 0xF91E92C8) + 1604315594 - 2 * (((4 * v318) ^ 0xF91E92C8) & 0x5F9FE9DC ^ (4 * v318) & 0x14);
  v319 = STACK[0xC20];
  LODWORD(STACK[0x860]) = ((LODWORD(STACK[0xC20]) << 11) ^ 0x280000) - ((2 * ((LODWORD(STACK[0xC20]) << 11) ^ 0x280000)) & 0x468000);
  LODWORD(STACK[0x7CC]) = ((32 * v319) ^ 0xA000) - ((v319 << 6) & 0xA200);
  LODWORD(STACK[0xB18]) = ((v251 << 6) ^ 0xC1500C0) - ((2 * ((v251 << 6) ^ 0xC1500C0)) & 0x49A5A80);
  v320 = STACK[0xCCC];
  LODWORD(STACK[0xB40]) = ((32 * LODWORD(STACK[0xCCC])) ^ 0xBFFADD40) - ((2 * ((32 * LODWORD(STACK[0xCCC])) ^ 0xBFFADD40)) & 0xB76BD00);
  LODWORD(STACK[0xB38]) = ((v320 << 11) ^ 0xFEB75000) - ((2 * ((v320 << 11) ^ 0xFEB75000)) & 0x41629000);
  v321 = (v320 >> 27) ^ (v320 >> 21);
  LODWORD(STACK[0xB28]) = ((32 * v321) ^ 0xF620) - ((2 * ((32 * v321) ^ 0xF620)) & 0xFFC0);
  LODWORD(STACK[0xB08]) = v321;
  LODWORD(STACK[0xB20]) = ((v321 << 11) ^ 0x3D8800) - ((2 * ((v321 << 11) ^ 0x3D8800)) & 0x475000);
  LODWORD(STACK[0xB14]) = ((4 * v321) ^ 0x1EC4) + 76354256 + ~(2 * (((4 * v321) ^ 0x1EC4) & 0x12DC ^ (4 * v321) & 0x10));
  v322 = ((LODWORD(STACK[0x998]) << 11) ^ 0x4C0AC800) - ((2 * ((LODWORD(STACK[0x998]) << 11) ^ 0x4C0AC800)) & 0x7D389000);
  v323 = (LODWORD(STACK[0x998]) >> 21) ^ (LODWORD(STACK[0x998]) >> 27);
  v324 = STACK[0x998];
  v325 = ((32 * LODWORD(STACK[0x998])) ^ 0x39302B20) - ((2 * ((32 * LODWORD(STACK[0x998])) ^ 0x39302B20)) & 0x476B4D40);
  v326 = ((v323 << 11) ^ 0x389000) - (STACK[0x460] & (2 * ((v323 << 11) ^ 0x389000)));
  v327 = v254 ^ (LODWORD(STACK[0x9A0]) - 884292544) ^ (LODWORD(STACK[0xBF8]) - 124953754) ^ LODWORD(STACK[0x97C]) ^ LODWORD(STACK[0xCDC]) ^ (((32 * v251) ^ 0x60A8060) - ((2 * ((32 * v251) ^ 0x60A8060)) & 0x5737EEC0) + 731641727) ^ (((16 * v251) ^ 0x3054030) - ((2 * ((16 * v251) ^ 0x3054030)) & 0xCAC558A0) + 1700965471) ^ LODWORD(STACK[0xC38]);
  v328 = ((v251 << 17) ^ 0xA8060000) - ((2 * ((v251 << 17) ^ 0xA8060000)) & 0x99740000) - 860154548;
  LODWORD(STACK[0xC38]) = v328;
  LODWORD(STACK[0x83C]) = v327 ^ v257 ^ LODWORD(STACK[0xCE0]) ^ v328 ^ LODWORD(STACK[0x970]) ^ LODWORD(STACK[0xC28]) ^ LODWORD(STACK[0xC30]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0x96C]) ^ LODWORD(STACK[0xCE8]) ^ v324 ^ v323 ^ (v325 + 599107239) ^ (v322 + 1050429760) ^ LODWORD(STACK[0x99C]) ^ (((4 * v323) ^ 0x1C48) - ((2 * ((4 * v323) ^ 0x1C48)) & 0x2FC0) - 1843087389) ^ (((32 * v323) ^ 0xE240) - ((2 * ((32 * v323) ^ 0xE240)) & 0x7000) + 1290680325) ^ (v326 - 1595502613);
  LODWORD(STACK[0x9A0]) = ((2 * v132) ^ 0x41C3A01E) - ((2 * ((2 * v132) ^ 0x41C3A01E)) & 0xA75F26CC);
  LODWORD(STACK[0x968]) = ((v132 << 6) ^ 0x387403C0) - ((2 * ((v132 << 6) ^ 0x387403C0)) & 0x2BAD0800);
  LODWORD(STACK[0x7C4]) = ((v132 << 14) ^ 0x7403C000) - ((2 * ((v132 << 14) ^ 0x7403C000)) & 0xF7950000);
  LODWORD(STACK[0x970]) = ((v132 << 17) ^ 0xA01E0000) - ((2 * ((v132 << 17) ^ 0xA01E0000)) & 0x513C0000);
  v329 = STACK[0x9E0];
  v330 = LODWORD(STACK[0x9E0]) << 29;
  LODWORD(STACK[0x7BC]) = ((LODWORD(STACK[0x9E0]) << 28) ^ 0x40000000) - (v330 & 0x40000000);
  v331 = STACK[0xC80];
  LODWORD(STACK[0x97C]) = ((4 * LODWORD(STACK[0xC80])) ^ 0x21C4E238) - ((2 * ((4 * LODWORD(STACK[0xC80])) ^ 0x21C4E238)) & 0xFE0AFDD0);
  LODWORD(STACK[0x96C]) = ((32 * v331) ^ 0xE2711C0) - ((2 * ((32 * v331) ^ 0xE2711C0)) & 0x2AC0980);
  LODWORD(STACK[0x60C]) = v329 << 30;
  LODWORD(STACK[0x944]) = v330 - ((v329 << 30) & 0x40000000);
  LODWORD(STACK[0x958]) = ((v331 << 11) ^ 0x89C47000) - ((2 * ((v331 << 11) ^ 0x89C47000)) & 0x1E96B000);
  v332 = STACK[0xC78];
  LODWORD(STACK[0x964]) = ((LODWORD(STACK[0xC78]) << 11) ^ 0x2E800) - ((2 * ((LODWORD(STACK[0xC78]) << 11) ^ 0x2E800)) & 0x4F0000);
  LODWORD(STACK[0x950]) = ((32 * v332) ^ 0xBA0) - ((2 * ((32 * v332) ^ 0xBA0)) & 0xA9C0);
  LODWORD(STACK[0x948]) = ((4 * v332) ^ 0x174) - ((2 * ((4 * v332) ^ 0x174)) & 0xEB0);
  LODWORD(STACK[0x7B4]) = ((v132 << 19) ^ 0x80780000) - ((2 * ((v132 << 19) ^ 0x80780000)) & 0x8DC00000);
  LODWORD(STACK[0x780]) = ((v132 << 12) ^ 0x1D00F000) - ((2 * ((v132 << 12) ^ 0x1D00F000)) & 0x297A000);
  v333 = LODWORD(STACK[0x858]) ^ (v130 >> 20) ^ LODWORD(STACK[0x9B0]) ^ LODWORD(STACK[0x818]) ^ LODWORD(STACK[0xC58]);
  v334 = (v130 >> 13) ^ 0x97041772;
  LODWORD(STACK[0x608]) = v334;
  v335 = v333 ^ LODWORD(STACK[0x81C]) ^ v334 ^ LODWORD(STACK[0xC60]) ^ LODWORD(STACK[0x814]);
  v336 = LODWORD(STACK[0x874]) ^ LODWORD(STACK[0x870]);
  LODWORD(STACK[0x6D8]) = v132;
  v337 = v335 ^ (v132 >> 1) ^ v336 ^ LODWORD(STACK[0x84C]) ^ LODWORD(STACK[0x850]);
  LODWORD(STACK[0x784]) = ((4 * v337) ^ 0xE15FB8A8) - ((2 * ((4 * v337) ^ 0xE15FB8A8)) & 0x20E48728);
  v338 = LODWORD(STACK[0x994]) ^ (v337 >> 27) ^ (v337 >> 21);
  LODWORD(STACK[0x788]) = ((32 * v338) ^ 0x3880) - ((2 * ((32 * v338) ^ 0x3880)) & 0x18B00);
  LODWORD(STACK[0x6F0]) = ((32 * v337) ^ 0xAFDC540) - ((2 * ((32 * v337) ^ 0xAFDC540)) & 0x80DE3B00);
  LODWORD(STACK[0x6EC]) = ((v337 << 11) ^ 0xBF715000) - 2003702551 - ((2 * ((v337 << 11) ^ 0xBF715000)) & 0x1123E000);
  LODWORD(STACK[0x6E0]) = ((4 * v338) ^ 0x710) - ((2 * ((4 * v338) ^ 0x710)) & 0x27C0);
  LODWORD(STACK[0x6DC]) = ((v338 << 11) ^ 0xE2000) - ((2 * ((v338 << 11) ^ 0xE2000)) & 0x606000);
  STACK[0x720] = v236;
  v339 = STACK[0x9E8];
  LODWORD(STACK[0x7D4]) = ((LODWORD(STACK[0x9E8]) << 14) ^ 0x7E2A0000) - ((2 * ((LODWORD(STACK[0x9E8]) << 14) ^ 0x7E2A0000)) & 0xA0050000);
  LODWORD(STACK[0xC60]) = ((v339 << 17) ^ 0xF1500000) - ((2 * ((v339 << 17) ^ 0xF1500000)) & 0xE0800000);
  LODWORD(STACK[0xC30]) = ((32 * v339) ^ 0x973F1500) - ((2 * ((32 * v339) ^ 0x973F1500)) & 0x2FCFFE00);
  LODWORD(STACK[0xC28]) = ((16 * v339) ^ 0x4B9F8A80) - ((2 * ((16 * v339) ^ 0x4B9F8A80)) & 0xBE7E42A0);
  v340 = STACK[0x89C] & 0xED ^ 0xC | STACK[0x89C] & 0xED ^ 0xE1;
  LOBYTE(v340) = (v340 - 43 - ((2 * v340) & 0x8F)) ^ 0xD5;
  v341 = (v236 - 0x638185D412799D89 - ((2 * v236) & 0x1DB0CC4EELL)) ^ 0x9C7E7A2BED866277;
  STACK[0x6A8] = v341;
  v342 = v341 << ((v340 - ((2 * v340 + 60) & 0xE0) + 14) ^ 0xF0u);
  LODWORD(STACK[0xC58]) = v342 - ((2 * v342) & 0x233ED390);
  LODWORD(STACK[0x7D0]) = ((v339 << 19) ^ 0xC5400000) - ((2 * ((v339 << 19) ^ 0xC5400000)) & 0x3E500000);
  v343 = (LODWORD(STACK[0x9EC]) >> 15) ^ (LODWORD(STACK[0x9EC]) >> 28) ^ LODWORD(STACK[0x980]) ^ LODWORD(STACK[0x9CC]) ^ LODWORD(STACK[0x8D8]) ^ LODWORD(STACK[0xC50]) ^ LODWORD(STACK[0x8A8]) ^ LODWORD(STACK[0xC68]) ^ ((LODWORD(STACK[0x988]) >> 27) | 0xC178FC80) ^ (v339 >> 2) ^ LODWORD(STACK[0x80C]) ^ LODWORD(STACK[0x898]) ^ LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x9C8]) ^ LODWORD(STACK[0x7C8]) ^ LODWORD(STACK[0x8E0]);
  LODWORD(STACK[0x988]) = v343;
  LODWORD(STACK[0xC68]) = ((v343 << 11) ^ 0xABF3B800) - ((2 * ((v343 << 11) ^ 0xABF3B800)) & 0x6CC0B000);
  LODWORD(STACK[0xC50]) = ((4 * v343) ^ 0xCCD5F9DC) - 272706709 - ((2 * ((4 * v343) ^ 0xCCD5F9DC)) & 0xDF7DC060);
  v344 = (v343 >> 21) ^ (v343 >> 27);
  LODWORD(STACK[0x980]) = v344;
  LODWORD(STACK[0xBF8]) = ((4 * v344) ^ 0xE5C) - ((2 * ((4 * v344) ^ 0xE5C)) & 0x1710);
  LODWORD(STACK[0x994]) = ((32 * v343) ^ 0x66AFCEE0) - ((2 * ((32 * v343) ^ 0x66AFCEE0)) & 0x929BD40);
  LODWORD(STACK[0x99C]) = ((32 * v344) ^ 0x72E0) - ((2 * ((32 * v344) ^ 0x72E0)) & 0xE000);
  LODWORD(STACK[0x998]) = ((v344 << 11) ^ 0x1CB800) - (STACK[0x458] & (2 * ((v344 << 11) ^ 0x1CB800)));
  LODWORD(STACK[0x798]) = ((v339 << 12) ^ 0x9F8A8000) - ((2 * ((v339 << 12) ^ 0x9F8A8000)) & 0x9A144000);
  v345 = STACK[0xC40];
  LODWORD(STACK[0x7B0]) = ((4 * LODWORD(STACK[0xC40])) ^ 0xBC8A8950) - ((2 * ((4 * LODWORD(STACK[0xC40])) ^ 0xBC8A8950)) & 0xFEABE018);
  LODWORD(STACK[0x690]) = ((v345 << 11) ^ 0x1512A000) - 743075696 - ((2 * ((v345 << 11) ^ 0x1512A000)) & 0xA76B2000);
  v346 = STACK[0xC48];
  LODWORD(STACK[0x7A8]) = ((32 * LODWORD(STACK[0xC48])) ^ 0xA6E641C0) - ((2 * ((32 * LODWORD(STACK[0xC48])) ^ 0xA6E641C0)) & 0x6D706100);
  LODWORD(STACK[0x698]) = ((v346 << 11) ^ 0xB9907000) - ((2 * ((v346 << 11) ^ 0xB9907000)) & 0x28686000);
  LODWORD(STACK[0x674]) = ((v276 << 10) ^ 0x46A01C00) - ((2 * ((v276 << 10) ^ 0x46A01C00)) & 0xD8D1D000);
  LODWORD(STACK[0x688]) = ((4 * v276) ^ 0xC346A01C) - ((2 * ((4 * v276) ^ 0xC346A01C)) & 0xA9BACF00);
  LODWORD(STACK[0x680]) = ((8 * v276) ^ 0x868D4038) - ((2 * ((8 * v276) ^ 0x868D4038)) & 0xD35AEE80);
  LODWORD(STACK[0x80C]) = ((v276 << 14) ^ 0x6A01C000) - ((2 * ((v276 << 14) ^ 0x6A01C000)) & 0x4A8A8000);
  LODWORD(STACK[0x664]) = ((v276 << 22) ^ 0x1C00000) - ((2 * ((v276 << 22) ^ 0x1C00000)) & 0x3B800000);
  LODWORD(STACK[0x7C0]) = ((v276 << 17) ^ 0x500E0000) - ((2 * ((v276 << 17) ^ 0x500E0000)) & 0xB64C0000);
  v347 = ((v276 << 25) ^ 0xE000000) - ((2 * ((v276 << 25) ^ 0xE000000)) & 0x9C000000);
  v348 = ((v276 << 24) ^ 0x7000000) - ((2 * ((v276 << 24) ^ 0x7000000)) & 0xB4000000);
  v349 = ((v276 << 26) ^ 0x1C000000) - 743075696 - ((2 * ((v276 << 26) ^ 0x1C000000)) & 0xA0000000);
  LODWORD(STACK[0x7B8]) = ((32 * v276) ^ 0x1A3500E0) - ((2 * ((32 * v276) ^ 0x1A3500E0)) & 0x6B3C8040);
  LODWORD(STACK[0x7F0]) = ((16 * v276) ^ 0xD1A8070) - ((2 * ((16 * v276) ^ 0xD1A8070)) & 0x23DC43E0);
  v350 = ((v276 << 11) ^ 0x8D403800) - ((2 * ((v276 << 11) ^ 0x8D403800)) & 0x9D0BF000);
  LODWORD(v236) = STACK[0x9E4];
  LODWORD(STACK[0x7AC]) = ((v276 << 19) ^ 0x40380000) - ((LODWORD(STACK[0x9E4]) << 20) & 0xB000000);
  v351 = ((v276 << 21) ^ 0xE00000) - ((2 * ((v276 << 21) ^ 0xE00000)) & 0x66C00000);
  v352 = ((v276 << 18) ^ 0xA01C0000) - ((2 * ((v276 << 18) ^ 0xA01C0000)) & 0xDA980000);
  v353 = ((v276 << 23) ^ 0x3800000) - ((2 * ((v276 << 23) ^ 0x3800000)) & 0x8C000000);
  LODWORD(STACK[0x7A4]) = ((v276 << 28) ^ 0x70000000) - ((2 * ((v276 << 28) ^ 0x70000000)) & 0x60000000);
  LODWORD(v342) = (v236 >> 18) ^ 0x658E343D;
  LODWORD(STACK[0x8A8]) = v280;
  LODWORD(STACK[0x668]) = v281;
  LODWORD(STACK[0x874]) = v342;
  v354 = v281 ^ v280 ^ v342;
  LODWORD(v342) = (v236 >> 15) ^ 0xB11CB8F2;
  LODWORD(STACK[0x6FC]) = v342;
  LODWORD(STACK[0x678]) = v279;
  v355 = (v276 >> 28) ^ (v276 >> 27) ^ (v276 >> 2) ^ v354 ^ v342 ^ v279;
  LODWORD(v342) = (v236 >> 13) ^ 0x64B6A09B;
  LODWORD(STACK[0x66C]) = v285;
  LODWORD(STACK[0x5F0]) = v342;
  LODWORD(STACK[0x76C]) = v283;
  LODWORD(STACK[0x89C]) = v291;
  v356 = v355 ^ v342 ^ v285 ^ v283 ^ v286 ^ v291 ^ v292;
  v357 = (v236 >> 4) ^ 0x76CDD08D;
  LODWORD(v236) = (v276 >> 30) ^ 0xDA15AC8F;
  LODWORD(v342) = (v276 >> 29) ^ 0xEB525867;
  LODWORD(STACK[0x6F8]) = v236;
  LODWORD(STACK[0x6F4]) = v342;
  LODWORD(STACK[0x870]) = v357;
  v358 = v356 ^ v357 ^ v236 ^ v342;
  LOBYTE(v356) = ((v276 >> 29) ^ (((v276 >> 29) ^ 0xFC) - ((2 * ((v276 >> 29) ^ 0xFC) + 2) & 0x28) + 21) ^ 0x5E ^ (((v276 >> 30) ^ 1) - (v236 ^ v342 ^ 0xEA) - ((2 * (((v276 >> 30) ^ 1) - (v236 ^ v342 ^ 0xEA))) & 0x92) + 73)) + ((v276 >> 30) ^ 1);
  v359 = LODWORD(STACK[0x85C]) ^ (v356 - 2 * (v356 & 1) + 1);
  v360 = (v276 << 27) ^ 0x38000000;
  LODWORD(STACK[0x7A0]) = v360 - ((2 * v360) & 0xB0000000);
  v361 = v360 - ((2 * v360) & 0x90000000);
  v362 = ((((v359 << 11) ^ 0x41AE4800) + 1558403961 - ((2 * ((v359 << 11) ^ 0x41AE4800)) & 0xB9C6B000)) ^ 0x5CE35B79 | v294) ^ 0x1F9;
  v363 = ((32 * v294) ^ 0x3F20) - ((2 * ((32 * v294) ^ 0x3F20)) & 0x9DC0);
  LODWORD(v236) = ((v294 << 11) ^ 0xFC800) - ((2 * ((v294 << 11) ^ 0xFC800)) & 0x2F8000);
  LODWORD(v342) = (LODWORD(STACK[0x868]) + (LODWORD(STACK[0x9DC]) << 30) + 1773052950) ^ (LODWORD(STACK[0xC00]) + 1211908799) ^ LODWORD(STACK[0x834]) ^ (LODWORD(STACK[0x934]) + 1889009340) ^ LODWORD(STACK[0x8D0]) ^ LODWORD(STACK[0xC98]);
  v364 = LODWORD(STACK[0xB50]) + 1446747865;
  v365 = LODWORD(STACK[0x830]) ^ LODWORD(STACK[0x9D0]);
  LODWORD(STACK[0x604]) = v364;
  LODWORD(v342) = v342 ^ v365 ^ v364 ^ LODWORD(STACK[0xC90]) ^ LODWORD(STACK[0x864]) ^ LODWORD(STACK[0xC88]) ^ LODWORD(STACK[0x9D4]) ^ LODWORD(STACK[0x8B8]) ^ LODWORD(STACK[0x9C4]) ^ LODWORD(STACK[0x9B4]) ^ (LODWORD(STACK[0xB48]) - 1931626713) ^ LODWORD(STACK[0x8B4]) ^ LODWORD(STACK[0xC70]) ^ LODWORD(STACK[0xC20]) ^ (LODWORD(STACK[0x91C]) - 921419926) ^ (LODWORD(STACK[0x938]) - 1011673836) ^ LODWORD(STACK[0xB30]) ^ (LODWORD(STACK[0x7CC]) + 2137542917) ^ LODWORD(STACK[0x910]) ^ (LODWORD(STACK[0x860]) - 39632507);
  LODWORD(STACK[0x78C]) = v329 ^ 0x2ADEFFA9;
  v366 = LODWORD(STACK[0x7BC]) + 538413022;
  LODWORD(STACK[0x7CC]) = v366;
  LODWORD(v342) = v342 ^ v329 ^ 0x2ADEFFA9 ^ ((v329 << 31) | 0x2C26CF5D) ^ LODWORD(STACK[0x9AC]) ^ v366 ^ (LODWORD(STACK[0x780]) - 2125737859) ^ LODWORD(STACK[0x9A8]) ^ LODWORD(STACK[0xCE4]);
  v367 = LODWORD(STACK[0x7C4]) + 2076870116;
  LODWORD(STACK[0x7C8]) = v367;
  LODWORD(v342) = v342 ^ LODWORD(STACK[0x884]) ^ LODWORD(STACK[0x9B8]) ^ v367;
  v368 = LODWORD(STACK[0x7B4]) + 1189579845;
  LODWORD(STACK[0x5FC]) = v368;
  LODWORD(v342) = v342 ^ LODWORD(STACK[0x86C]) ^ v368 ^ LODWORD(STACK[0xCB8]) ^ LODWORD(STACK[0x828]) ^ LODWORD(STACK[0xCB0]) ^ v337 ^ v338 ^ (LODWORD(STACK[0x784]) - 1871559785) ^ (LODWORD(STACK[0x6F0]) - 1066459773) ^ (LODWORD(STACK[0x6EC]) + 1689) ^ (LODWORD(STACK[0x6E0]) - 1250741278) ^ (LODWORD(STACK[0x788]) + 1964426638) ^ (LODWORD(STACK[0x6DC]) - 1250938095) ^ (((v276 << 8) ^ 0xD1A80700) - ((2 * ((v276 << 8) ^ 0xD1A80700)) & 0x652DD800) + 848751743);
  v369 = (v276 << 20) ^ 0x80700000;
  LODWORD(STACK[0x5C8]) = 2 * v369;
  LODWORD(STACK[0x5CC]) = v369;
  v370 = ((v276 << 7) ^ 0x68D40380) - ((2 * ((v276 << 7) ^ 0x68D40380)) & 0x755E2200) + 984551689;
  v371 = ((v276 << 16) ^ 0xA8070000) - ((2 * ((v276 << 16) ^ 0xA8070000)) & 0xB4F80000) + 1518105928;
  LODWORD(STACK[0x86C]) = v371;
  LODWORD(STACK[0x868]) = v370;
  LODWORD(v342) = v342 ^ (((v276 << 15) ^ 0xD4038000) - ((2 * ((v276 << 15) ^ 0xD4038000)) & 0x16A10000) - 1957657254) ^ (v369 - ((2 * v369) & 0xCDC00000) - 421126438) ^ (v361 + 1233723183) ^ v371 ^ v370;
  v372 = LODWORD(STACK[0x674]) + 1818814612;
  LODWORD(STACK[0x670]) = v276;
  v373 = (v276 << 13) ^ 0x3500E000;
  LODWORD(STACK[0x5C0]) = 2 * v373;
  LODWORD(STACK[0x5C4]) = v373;
  v374 = v373 - ((2 * v373) & 0xD67A0000) - 348320957;
  LODWORD(STACK[0x784]) = v374;
  LODWORD(STACK[0x7BC]) = v350 - 830080725;
  LODWORD(STACK[0x7C4]) = v352 + 1833947940;
  LODWORD(STACK[0x864]) = v372;
  LODWORD(v342) = v342 ^ v372 ^ (v350 - 830080725) ^ v374 ^ (v352 + 1833947940);
  v375 = LODWORD(STACK[0x664]) + 502384010;
  LODWORD(STACK[0x85C]) = v375;
  LODWORD(STACK[0x7B4]) = v351 + 863438520;
  LODWORD(STACK[0x780]) = v353 - 969002858;
  LODWORD(STACK[0x6EC]) = v348 - 625168220;
  LODWORD(STACK[0x860]) = v347 - 828411852;
  v376 = LODWORD(STACK[0x688]) + 1423796099;
  v377 = LODWORD(STACK[0x680]) + 1772975939;
  LODWORD(STACK[0x9B4]) = v349 + 2179;
  LODWORD(STACK[0x6E0]) = v376;
  LODWORD(STACK[0x6DC]) = v377;
  v378 = v376 ^ v377;
  LODWORD(STACK[0x6F0]) = v378;
  v379 = v342 ^ (v351 + 863438520) ^ v375 ^ (v353 - 969002858) ^ (v348 - 625168220) ^ (v347 - 828411852) ^ (v349 + 2179) ^ v378 ^ v359 ^ (((32 * v359) ^ 0xE506B920) + 1867706002 - ((2 * ((32 * v359) ^ 0xE506B920)) & 0xDEA5DD00)) ^ (((4 * v359) ^ 0xFCA0D724) - ((2 * ((4 * v359) ^ 0xFCA0D724)) & 0x4D6377D8) + 649182191) ^ (v363 + 1510100730) ^ (v236 + 760726660) ^ (LODWORD(STACK[0x824]) + 27320967) ^ (v362 - ((2 * v362) & 0xEB941F18) + 1976176524);
  LODWORD(STACK[0x664]) = ((2 * v379) ^ LODWORD(STACK[0x448])) + 786676861 - 2 * (((2 * v379) ^ LODWORD(STACK[0x448])) & 0x2EE3BC7E ^ (2 * v379) & 2);
  LODWORD(v342) = LODWORD(STACK[0x820]) >> 21;
  LODWORD(STACK[0xC90]) = v342;
  LODWORD(STACK[0x9A8]) = ((4 * v342) ^ 0xFC8) - 2 * (((4 * v342) ^ 0xFC8) & 0xFFFFFF8F ^ (4 * v342) & 4);
  LODWORD(STACK[0x65C]) = ((32 * v342) ^ 0x7E40) - 2 * (((32 * v342) ^ 0x7E40) & 0x3A60 ^ (32 * v342) & 0x20);
  LODWORD(STACK[0x820]) = ((4 * v379) ^ LODWORD(STACK[0x444])) - 1074334640 - 2 * (((4 * v379) ^ LODWORD(STACK[0x444])) & 0x3FF6F454 ^ (4 * v379) & 4);
  LODWORD(STACK[0x654]) = ((v379 << 28) ^ 0x60000000) + (((v379 << 28) ^ 0x60000000) >> 30 << 31);
  LODWORD(STACK[0x5B0]) = v358;
  LODWORD(STACK[0x644]) = ((4 * v358) ^ 0x5E58CF8C) - ((2 * ((4 * v358) ^ 0x5E58CF8C)) & 0x1A135030);
  LODWORD(STACK[0x5F4]) = ((32 * v358) ^ 0xF2C67C60) - ((2 * ((32 * v358) ^ 0xF2C67C60)) & 0xDB4EA1C0);
  LODWORD(STACK[0x5D0]) = ((v358 << 11) ^ 0xB19F1800) - ((2 * ((v358 << 11) ^ 0xB19F1800)) & 0x288FD000);
  v380 = (v358 >> 27) ^ (v358 >> 21);
  LODWORD(STACK[0x5AC]) = v380;
  LODWORD(STACK[0x5BC]) = ((4 * v380) ^ 0x12B8) - ((2 * ((4 * v380) ^ 0x12B8)) & 0x30B0);
  LODWORD(STACK[0x5B8]) = ((32 * v380) ^ 0x95C0) - ((2 * ((32 * v380) ^ 0x95C0)) & 0xCE00);
  LODWORD(STACK[0x5B4]) = ((v380 << 11) ^ 0x257000) + 585788911 - (STACK[0x454] & (2 * ((v380 << 11) ^ 0x257000)));
  LODWORD(v342) = (8 * v296) ^ 0x943ACB8;
  v381 = (2 * v342) & 0x8CE53320;
  LODWORD(STACK[0x630]) = v342;
  LODWORD(v342) = v342 - 965568110;
  LODWORD(STACK[0x638]) = v342;
  v382 = (((4 * v296) ^ 0x4A1D65C) - ((2 * ((4 * v296) ^ 0x4A1D65C)) & 0x6AD6C390) + 896229833) ^ (v342 - v381);
  v383 = ((v296 << 10) ^ 0xA1D65C00) + 698347451 + (~(2 * ((v296 << 10) ^ 0xA1D65C00)) | 0xACC027FF);
  v384 = ((v296 << 24) ^ 0x97000000) - 1967052107 - ((2 * ((v296 << 24) ^ 0x97000000)) & 0x14000000);
  LODWORD(STACK[0xC98]) = v384;
  v385 = ((v296 << 7) ^ 0x943ACB80) - ((2 * ((v296 << 7) ^ 0x943ACB80)) & 0xF1E5EC00) - 118294987;
  v386 = ((v296 << 13) ^ 0xEB2E000) - ((2 * ((v296 << 13) ^ 0xEB2E000)) & 0xA8464000) - 735892288;
  v387 = ((v296 << 14) ^ 0x1D65C000) - ((2 * ((v296 << 14) ^ 0x1D65C000)) & 0x6F2F0000) - 1214794347;
  v388 = ((v296 << 22) ^ 0x65C00000) - ((2 * ((v296 << 22) ^ 0x65C00000)) & 0xDC800000) + 1851593594;
  v389 = ((v296 << 16) ^ 0x75970000) - ((2 * ((v296 << 16) ^ 0x75970000)) & 0x87CA0000) + 1139104029;
  v390 = ((v296 << 20) ^ 0x59700000) - ((2 * ((v296 << 20) ^ 0x59700000)) & 0xBD600000) - 558576541;
  LODWORD(v342) = ((v296 << 17) ^ 0xEB2E0000) - ((2 * ((v296 << 17) ^ 0xEB2E0000)) & 0x95500000) - 894955669;
  LODWORD(STACK[0x674]) = v342;
  LODWORD(STACK[0x910]) = v390;
  v391 = (((2 * v296) ^ 0x8250EB2E) - ((2 * ((2 * v296) ^ 0x8250EB2E)) & 0x6859AFB4) - 1272129573) ^ v296 ^ 0x456AC03B ^ (((v296 << 6) ^ 0x4A1D65C0) - ((2 * ((v296 << 6) ^ 0x4A1D65C0)) & 0x14623D00) - 1976492395) ^ v385 ^ v383 ^ v386 ^ v387 ^ v389 ^ v342 ^ v390 ^ v388 ^ v382;
  v392 = (v391 ^ 0x423B8D0C) + (v384 ^ 0x8AC12AB5);
  LODWORD(STACK[0x808]) = LODWORD(STACK[0x7D8]) ^ ~LODWORD(STACK[0x808]);
  v393 = (2 * (((v391 ^ 0x42000000) & (v384 ^ 0x8AC12AB5)) - ((2 * ((v391 ^ 0x42000000) & (v384 ^ 0x8AC12AB5))) & 0x2A00DD36)) + 704699702) ^ 0x2A00DD36;
  LODWORD(STACK[0x650]) = ((v296 << 26) ^ 0x5C000000) - ((2 * ((v296 << 26) ^ 0x5C000000)) & 0xD0000000);
  v394 = (v392 ^ 0xF7FF2F7F) + ((2 * v392) & 0xEFFE5EFE) + 134271106 + ((v393 - ((2 * v393) & 0x88794210) - 1002659576) ^ 0x3BC35EF7);
  LODWORD(STACK[0x91C]) = v394 - ((2 * v394) & 0xF369BBDE);
  LODWORD(STACK[0x624]) = v296 >> 15;
  v395 = STACK[0x7EC];
  v396 = (v296 >> 18) ^ 0x7819F5E6;
  v397 = STACK[0x7F4];
  v398 = STACK[0x7E8];
  LODWORD(v342) = STACK[0x7E4];
  v399 = STACK[0x838];
  v400 = (v296 >> 4) ^ 0x21F173DC;
  v401 = (v296 >> 26) ^ (v296 >> 3) ^ (v296 >> 31) ^ (v296 >> 15) ^ LODWORD(STACK[0x7EC]) ^ LODWORD(STACK[0x7F4]) ^ LODWORD(STACK[0x854]) ^ v396 ^ LODWORD(STACK[0x7E8]) ^ LODWORD(STACK[0x7E4]) ^ LODWORD(STACK[0x844]) ^ LODWORD(STACK[0x7DC]) ^ LODWORD(STACK[0x7E0]) ^ LODWORD(STACK[0x838]) ^ v400 ^ LODWORD(STACK[0x848]);
  LODWORD(STACK[0x5D8]) = v401;
  LODWORD(STACK[0x788]) = ((32 * v401) ^ 0xE6653620) - ((2 * ((32 * v401) ^ 0xE6653620)) & 0xDE2A5F40);
  LODWORD(STACK[0x5EC]) = ((v401 << 11) ^ 0x994D8800) - ((2 * ((v401 << 11) ^ 0x994D8800)) & 0xB668D000);
  LODWORD(STACK[0x5E4]) = ((4 * v401) ^ 0x9CCCA6C4) - 1676318466 - ((2 * ((4 * v401) ^ 0x9CCCA6C4)) & 0x382AD1F8);
  v402 = (v401 >> 27) ^ (v401 >> 21);
  LODWORD(STACK[0x5D4]) = v402;
  LODWORD(STACK[0x5E8]) = ((32 * v402) ^ 0xE4A0) - ((2 * ((32 * v402) ^ 0xE4A0)) & 0x17F80);
  LODWORD(STACK[0x5E0]) = ((4 * v402) ^ 0x1C94) - ((2 * ((4 * v402) ^ 0x1C94)) & 0x3738);
  LODWORD(STACK[0x5DC]) = ((v402 << 11) ^ 0x392800) - (STACK[0x450] & (2 * ((v402 << 11) ^ 0x392800)));
  v403 = ((v296 << 18) ^ 0xD65C0000) + 1319294525 - ((2 * ((v296 << 18) ^ 0xD65C0000)) & 0x9D400000);
  LODWORD(STACK[0xC88]) = ((v296 << 19) ^ 0xACB80000) - ((2 * ((v296 << 19) ^ 0xACB80000)) & 0x87600000);
  v404 = (LODWORD(STACK[0x44C]) ^ (v296 << 21)) - ((2 * (LODWORD(STACK[0x44C]) ^ (v296 << 21))) & 0x39C00000);
  v405 = v385 ^ v383;
  v406 = ((v296 << 11) ^ 0x43ACB800) + 511843166 - ((2 * ((v296 << 11) ^ 0x43ACB800)) & 0x3D043000) + 1082;
  LODWORD(STACK[0x688]) = v387;
  v407 = (((v296 << 12) ^ 0x87597000) - ((2 * ((v296 << 12) ^ 0x87597000)) & 0x10F3C000) - 2005278365) ^ v296 ^ 0x456AC03B ^ v405 ^ v406 ^ v386 ^ v387 ^ v389;
  v408 = (2 * (((v407 ^ 0x63840000) & (v403 ^ 0x4EA2D63D)) - ((2 * ((v407 ^ 0x63840000) & (v403 ^ 0x4EA2D63D))) & 0x331F5538)) - 1289792200) ^ 0xB31F5538;
  v409 = (((v407 ^ 0x63859290) + (v403 ^ 0x4EA2D63D)) ^ 0x13DEBF5F) + ((2 * ((v407 ^ 0x63859290) + (v403 ^ 0x4EA2D63D))) & 0x27BD7EBE) - 333365086 + ((v408 - ((2 * v408) & 0x34B4A708) + 442127236) ^ 0xE5A5AC7B);
  LODWORD(STACK[0xC70]) = v409 - ((2 * v409) & 0x1937364E);
  v410 = (v296 >> 13) ^ 0x73323B26;
  LODWORD(STACK[0x600]) = v410;
  v411 = (v296 >> 20) ^ (v296 >> 1) ^ LODWORD(STACK[0x7F8]) ^ v410 ^ v342 ^ v397 ^ v395;
  LODWORD(STACK[0x628]) = v396;
  v412 = v411 ^ LODWORD(STACK[0x7FC]) ^ v396 ^ v398;
  v413 = LODWORD(STACK[0x804]) ^ 0xB676BD8B;
  LODWORD(STACK[0x5F8]) = v413;
  v414 = v413 ^ LODWORD(STACK[0x840]) ^ v399;
  LODWORD(STACK[0x61C]) = v400;
  v415 = v412 ^ v414 ^ v400;
  LODWORD(STACK[0xC20]) = ((v415 << 11) ^ 0x65445000) - ((2 * ((v415 << 11) ^ 0x65445000)) & 0xFE54C000);
  LODWORD(STACK[0xB50]) = ((4 * v415) ^ 0x4532A228) - ((2 * ((4 * v415) ^ 0x4532A228)) & 0x85204260);
  v416 = ((v296 >> 31) | 0x54EB0FA2) ^ (v415 >> 27) ^ (v415 >> 21);
  LODWORD(STACK[0x934]) = v416;
  LODWORD(STACK[0x938]) = v415;
  LODWORD(STACK[0xC00]) = ((32 * v416) ^ 0x9D612640) - ((2 * ((32 * v416) ^ 0x9D612640)) & 0x4314A00);
  LODWORD(STACK[0xB48]) = ((v416 << 11) ^ 0x58499000) - ((2 * ((v416 << 11) ^ 0x58499000)) & 0x1047000);
  LODWORD(STACK[0xB30]) = ((32 * v415) ^ 0x29951140) - ((2 * ((32 * v415) ^ 0x29951140)) & 0xB7008140);
  LODWORD(STACK[0x9D4]) = ((4 * v416) ^ 0x53AC24C8) - ((2 * ((4 * v416) ^ 0x53AC24C8)) & 0x1887BB30);
  v417 = STACK[0x800];
  v418 = ((32 * LODWORD(STACK[0x800])) ^ 0xC8F49640) - ((2 * ((32 * LODWORD(STACK[0x800])) ^ 0xC8F49640)) & 0x5835CB00);
  v419 = ((LODWORD(STACK[0x800]) << 11) ^ 0x3D259000) - ((2 * ((LODWORD(STACK[0x800]) << 11) ^ 0x3D259000)) & 0xF7A56000);
  v420 = ((v379 << 7) ^ 0xA8286B00) - ((2 * ((v379 << 7) ^ 0xA8286B00)) & 0x7A88BE00);
  v421 = ((LODWORD(STACK[0xC90]) << 11) ^ 0x1F9000) - ((2 * ((LODWORD(STACK[0xC90]) << 11) ^ 0x1F9000)) & 0x137000);
  v422 = STACK[0x9E8];
  v423 = (LODWORD(STACK[0x9E8]) << 31) | 0x6E250A26;
  v424 = LODWORD(STACK[0x9E8]) ^ 0xB2037B93;
  LODWORD(STACK[0x62C]) = v424;
  v425 = v424 ^ LODWORD(STACK[0x83C]) ^ v423;
  LODWORD(STACK[0x50C]) = v422 << 29;
  LODWORD(v342) = -268435456 * v422 + 2136227226;
  LODWORD(STACK[0x7E0]) = v342;
  v426 = v425 ^ v342 ^ LODWORD(STACK[0xD18]) ^ (LODWORD(STACK[0x798]) + 1292511072) ^ LODWORD(STACK[0x9BC]) ^ LODWORD(STACK[0x894]) ^ LODWORD(STACK[0x9A4]);
  v427 = LODWORD(STACK[0x7D4]) + 1342349146;
  LODWORD(STACK[0x7E4]) = v427;
  LODWORD(v342) = LODWORD(STACK[0x7D0]) - 1624724656;
  LODWORD(STACK[0x798]) = v342;
  v428 = v426 ^ v427 ^ LODWORD(STACK[0x88C]) ^ LODWORD(STACK[0xCD0]) ^ v342 ^ LODWORD(STACK[0x888]) ^ LODWORD(STACK[0x87C]) ^ LODWORD(STACK[0xC40]) ^ LODWORD(STACK[0x690]) ^ (LODWORD(STACK[0x7B0]) + 2136338447) ^ (LODWORD(STACK[0x9F4]) + 3588) ^ LODWORD(STACK[0xC48]) ^ (LODWORD(STACK[0x7A8]) - 1229442943) ^ (LODWORD(STACK[0x698]) - 1808518262) ^ LODWORD(STACK[0x9D8]) ^ (((v296 << 15) ^ 0x3ACB8000) - ((2 * ((v296 << 15) ^ 0x3ACB8000)) & 0x249B0000) + 307075775);
  v429 = ((v296 << 27) ^ 0xB8000000) - ((2 * ((v296 << 27) ^ 0xB8000000)) & 0x10000000) + 209811601;
  LODWORD(STACK[0x620]) = v429;
  LODWORD(STACK[0x658]) = v406;
  LODWORD(STACK[0x690]) = v386;
  LODWORD(STACK[0x660]) = v403;
  LODWORD(STACK[0x7D8]) = v404 - 1661758538;
  LODWORD(v342) = ((v296 << 23) ^ 0xCB800000) - ((2 * ((v296 << 23) ^ 0xCB800000)) & 0xF6000000) - 79419438;
  LODWORD(STACK[0x680]) = v388;
  LODWORD(STACK[0x614]) = v342;
  v430 = (v404 - 1661758538) ^ v388 ^ v342 ^ LODWORD(STACK[0xC98]);
  LODWORD(v342) = ((v296 << 25) ^ 0x2E000000) - ((2 * ((v296 << 25) ^ 0x2E000000)) & 0xBC000000) + 1589188002;
  LODWORD(STACK[0xC98]) = v342;
  v431 = v428 ^ (((v296 << 8) ^ 0x28759700) - ((2 * ((v296 << 8) ^ 0x28759700)) & 0x8B8EC400) + 1170694828) ^ v429 ^ v405 ^ v406 ^ v386 ^ v389 ^ v403 ^ v390 ^ v430 ^ v342;
  LODWORD(v342) = LODWORD(STACK[0x650]) - 366921615;
  LODWORD(STACK[0x9A4]) = v342;
  LODWORD(STACK[0x698]) = v382;
  v432 = v431 ^ v342 ^ v382 ^ v417 ^ (v418 - 1407523454) ^ (v419 - 70076634) ^ LODWORD(STACK[0x810]) ^ (v421 + 1296677823) ^ (LODWORD(STACK[0x9A8]) + 1349738376) ^ (LODWORD(STACK[0x65C]) - 1379124663);
  v433 = v379;
  v434 = ((v379 << 13) ^ 0xA1AC000) - 861531668 - ((2 * ((v379 << 13) ^ 0xA1AC000)) & 0x994C0000);
  v435 = ((v379 << 16) ^ 0x50D60000) + 1562958455 + ~((2 * ((v379 << 16) ^ 0x50D60000)) & 0xBA500000);
  LODWORD(STACK[0x7B0]) = v435;
  LODWORD(STACK[0xC48]) = ((v379 << 17) ^ 0xA1AC0000) - ((2 * ((v379 << 17) ^ 0xA1AC0000)) & 0x8BC0000);
  LODWORD(STACK[0x9F4]) = ((v379 << 20) ^ 0xD600000) - ((2 * ((v379 << 20) ^ 0xD600000)) & 0x70800000);
  LODWORD(STACK[0xC40]) = ((v379 << 25) ^ 0xAC000000) - ((2 * ((v379 << 25) ^ 0xAC000000)) & 0x28000000);
  LODWORD(STACK[0x9D8]) = ((v379 << 22) ^ 0x35800000) - ((2 * ((v379 << 22) ^ 0x35800000)) & 0xED000000);
  LODWORD(STACK[0x7F8]) = ((v379 << 26) ^ 0x58000000) - ((2 * ((v379 << 26) ^ 0x58000000)) & 0x98000000);
  v436 = (v379 >> 22) ^ 0x29423DE3;
  LODWORD(STACK[0x7A8]) = v436;
  LODWORD(v342) = (v379 >> 19) ^ 0xEB67551F;
  LODWORD(STACK[0x9A8]) = v342;
  v437 = (v379 >> 30) | 0x4118B5B8;
  v438 = (v379 >> 29) ^ 0x421D076C;
  v439 = (v379 >> 25) ^ 0x7CC079EF;
  LODWORD(STACK[0x804]) = v437;
  LODWORD(STACK[0x800]) = v438;
  v440 = (v433 >> 3) ^ (v433 >> 26) ^ v436 ^ v342 ^ v437 ^ v438 ^ v439;
  v441 = (v379 >> 15) ^ 0xFB02CFA;
  v442 = (v379 >> 18) ^ 0xBCF2726;
  v443 = HIWORD(v379) ^ 0x5F33E2F4;
  LODWORD(STACK[0x65C]) = v441;
  v444 = (v379 >> 12) ^ 0xF6D97BF1;
  v445 = v440 ^ v442 ^ v443 ^ v441 ^ v444;
  v446 = LODWORD(STACK[0x440]) ^ (v379 >> 10);
  v447 = (v379 >> 7) ^ 0x4D9DDCA6;
  v448 = (v379 >> 8) ^ 0x16B7F262;
  LODWORD(STACK[0x7FC]) = v446;
  LODWORD(STACK[0x540]) = v448;
  v449 = (v379 >> 6) ^ 0xC2198BBD;
  v450 = (v379 >> 4) ^ 0xEBB59691;
  LODWORD(v236) = v379 ^ 0xEA9DE208;
  LODWORD(v342) = v379;
  v451 = v445 ^ v446 ^ v448 ^ v447 ^ v449 ^ v450 ^ (((v379 ^ 0xEA9DE208) >> 31) | 0xE52DB8DE);
  v452 = (v451 >> 27) ^ (v451 >> 21);
  v453 = ((8 * v379) ^ 0x6A8286B0) - ((2 * ((8 * v379) ^ 0x6A8286B0)) & 0x83382A0) - 2078686889;
  v454 = LODWORD(STACK[0x654]) - 1023541257;
  LODWORD(STACK[0x810]) = v454;
  LODWORD(STACK[0x7F4]) = v453;
  v455 = ((v379 << 10) ^ 0x41435800) - ((2 * ((v379 << 10) ^ 0x41435800)) & 0x8F65E000) + 1202909990;
  LODWORD(STACK[0x594]) = v420 + 1027890968;
  LODWORD(STACK[0x590]) = v455;
  v456 = (v420 + 1027890968) ^ v455;
  v457 = (((v379 << 29) ^ 0xC0000000) - 2098571825) ^ v379 ^ 0xEA9DE208 ^ (((v379 << 6) ^ 0x54143580) + 2071297503 - ((2 * ((v379 << 6) ^ 0x54143580)) & 0xF6EB0900) + 1743) ^ v454 ^ v453 ^ v456 ^ v434;
  v458 = ((v379 << 14) ^ 0x14358000) - ((2 * ((v379 << 14) ^ 0x14358000)) & 0x8FC38000) + 1205983357;
  v459 = LODWORD(STACK[0xC48]) - 2074103377;
  v460 = LODWORD(STACK[0x9F4]) + 944542080;
  LODWORD(STACK[0x648]) = v459;
  v461 = v458 ^ v435 ^ v459 ^ v460;
  v462 = v460;
  v463 = LODWORD(STACK[0xC40]) + 367481979;
  v464 = LODWORD(STACK[0x9D8]) - 157571553;
  v465 = ((v379 << 24) ^ 0xD6000000) - ((2 * ((v379 << 24) ^ 0xD6000000)) & 0xB4000000) + 1514505787;
  v466 = LODWORD(STACK[0x7F8]) - 869499139;
  LODWORD(STACK[0x7EC]) = v464;
  LODWORD(STACK[0x584]) = v465;
  LODWORD(STACK[0x9D8]) = v457 ^ v461 ^ v464 ^ v465 ^ v463 ^ v466 ^ LODWORD(STACK[0x664]) ^ LODWORD(STACK[0x820]) ^ v451 ^ v452 ^ (((4 * v451) ^ 0xC3877068) - ((2 * ((4 * v451) ^ 0xC3877068)) & 0x2E554308) - 1758813820) ^ (((32 * v451) ^ 0x1C3B8340) - ((2 * ((32 * v451) ^ 0x1C3B8340)) & 0x48067C00) - 1543291373) ^ (((v451 << 11) ^ 0xEE0D000) - ((2 * ((v451 << 11) ^ 0xEE0D000)) & 0xA7EBA000) + 1408618555) ^ (((4 * v452) ^ 0x1E64) - ((2 * ((4 * v452) ^ 0x1E64)) & 0x3558) + 1700682414) ^ (((32 * v452) ^ 0xF320) - 2140479290 - ((2 * ((32 * v452) ^ 0xF320)) & 0x1D480) + 2442) ^ (((v452 << 11) ^ 0x3CC800) - ((2 * ((v452 << 11) ^ 0x3CC800)) & 0x72A000) + 2113492289);
  v467 = ((v433 << 18) ^ 0x43580000) - ((2 * ((v433 << 18) ^ 0x43580000)) & 0xA8A00000);
  v468 = ((v433 << 11) ^ 0x8286B000) - ((2 * ((v433 << 11) ^ 0x8286B000)) & 0x74156000) + 973780561;
  LODWORD(STACK[0x7E8]) = v468;
  v469 = (((v342 << 12) ^ 0x50D6000) - ((2 * ((v342 << 12) ^ 0x50D6000)) & 0x6DAB2000) + 919967215) ^ v236 ^ v456 ^ v468;
  LODWORD(STACK[0x664]) = v434;
  v470 = (v469 ^ ((v434 ^ 0xCCA611EC) - (v434 ^ 0x1D422CB2 ^ v469) - ((2 * ((v434 ^ 0xCCA611EC) - (v434 ^ 0x1D422CB2 ^ v469))) & 0xAE5959A6) - 684938029) ^ ((v469 ^ 0x2E1BC2A1) - ((2 * (v469 ^ 0x2E1BC2A1) + 2) & 0xFD18E324) + 2123133331) ^ 0x7844E01F) + (v434 ^ 0xCCA611EC);
  v471 = v470 - ((2 * v470) & 0x7DF89BCC);
  v472 = v342;
  v473 = (v342 >> 20) ^ (v342 >> 1);
  LODWORD(v342) = (v342 >> 11) ^ 0xB8B36A2C;
  LODWORD(STACK[0x7DC]) = v342;
  LODWORD(STACK[0x544]) = v444;
  v474 = v473 ^ v444 ^ v342;
  LODWORD(v342) = (v472 >> 21) ^ 0x1B87BCE6;
  LODWORD(STACK[0x538]) = v439;
  v475 = LODWORD(STACK[0x7A8]) ^ v439;
  LODWORD(STACK[0x7D4]) = v342;
  v476 = v474 ^ v475 ^ v342;
  LODWORD(STACK[0x654]) = v442;
  v477 = LODWORD(STACK[0x9A8]) ^ v442;
  LODWORD(STACK[0x554]) = v443;
  LODWORD(v342) = (v472 >> 14) ^ 0x8E08DABB;
  LODWORD(STACK[0x7D0]) = v342;
  v478 = v476 ^ v477 ^ v443 ^ v342;
  LODWORD(v342) = (v472 >> 13) ^ 0x5B52501B;
  LODWORD(STACK[0x610]) = v342;
  LODWORD(STACK[0x550]) = v447;
  LODWORD(STACK[0x7F8]) = v449;
  LODWORD(STACK[0x650]) = v450;
  LODWORD(v236) = v478 ^ v342 ^ v447 ^ v449 ^ v450;
  LODWORD(STACK[0x824]) = v472;
  v479 = ((v472 >> 31) | 0x68305A5E) ^ (v236 >> 27) ^ (v236 >> 21);
  v480 = (LODWORD(STACK[0x944]) + 546008390) ^ LODWORD(STACK[0x78C]) ^ LODWORD(STACK[0x9AC]) ^ LODWORD(STACK[0x7CC]) ^ (LODWORD(STACK[0x968]) - 1781103586) ^ (LODWORD(STACK[0x9A0]) + 1404015462) ^ LODWORD(STACK[0xB80]) ^ LODWORD(STACK[0xB78]) ^ LODWORD(STACK[0xCE4]);
  v481 = LODWORD(STACK[0x9B8]) ^ LODWORD(STACK[0x7C8]) ^ LODWORD(STACK[0xB00]);
  v482 = LODWORD(STACK[0x970]) + 681526303;
  LODWORD(STACK[0x528]) = v482;
  v483 = v480 ^ v481 ^ v482 ^ LODWORD(STACK[0xCB8]) ^ LODWORD(STACK[0x82C]) ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0xC80]) ^ LODWORD(STACK[0xC78]) ^ (LODWORD(STACK[0x97C]) - 16417046) ^ (LODWORD(STACK[0x96C]) + 22414539) ^ (LODWORD(STACK[0x958]) + 256597955) ^ (LODWORD(STACK[0x948]) + 848054106) ^ (LODWORD(STACK[0x950]) + 192500975) ^ (LODWORD(STACK[0x964]) - 1469611328);
  v484 = LODWORD(STACK[0x9E4]) << 30;
  LODWORD(STACK[0x618]) = v484;
  v485 = v483 ^ (v484 - 1981433660);
  v486 = LODWORD(STACK[0x7B8]) + 899563566;
  v487 = LODWORD(STACK[0x7AC]) + 92350012;
  LODWORD(STACK[0x530]) = v487;
  v488 = v485 ^ v487 ^ v486 ^ (LODWORD(STACK[0x7F0]) - 1846664714) ^ (LODWORD(STACK[0x7A0]) + 1498905412);
  v489 = LODWORD(STACK[0x80C]) + 625299640;
  v490 = LODWORD(STACK[0x7BC]) ^ LODWORD(STACK[0x784]);
  LODWORD(STACK[0x7F0]) = v489;
  v491 = v488 ^ v490 ^ v489;
  v492 = LODWORD(STACK[0x7C0]) + 1529327915;
  LODWORD(STACK[0x64C]) = v492;
  v493 = v491 ^ v492 ^ LODWORD(STACK[0x7C4]) ^ LODWORD(STACK[0x7B4]) ^ LODWORD(STACK[0x85C]);
  v494 = LODWORD(STACK[0x7A4]) - 1323425869;
  v495 = LODWORD(STACK[0x780]) ^ LODWORD(STACK[0x9B4]);
  LODWORD(STACK[0x52C]) = v494;
  v496 = v493 ^ v495 ^ v494 ^ LODWORD(STACK[0x6F0]) ^ LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x5AC]) ^ (LODWORD(STACK[0x644]) + 218736664) ^ (LODWORD(STACK[0x5F4]) + 1839681765) ^ (LODWORD(STACK[0x5D0]) + 340257699) ^ (LODWORD(STACK[0x5BC]) + 547502171) ^ (LODWORD(STACK[0x5B8]) + 1468294941) ^ LODWORD(STACK[0x5B4]) ^ ((v472 << 31) | 0x486EF675);
  LODWORD(STACK[0x644]) = v458;
  LODWORD(STACK[0x7C0]) = v467 + 1414578750;
  v497 = v496 ^ v458 ^ LODWORD(STACK[0x7B0]) ^ (v467 + 1414578750);
  v498 = ((v433 << 21) ^ 0x1AC00000) - ((2 * ((v433 << 21) ^ 0x1AC00000)) & 0x5F000000) - 1348874959;
  v499 = ((v433 << 19) ^ 0x86B00000) - ((2 * ((v433 << 19) ^ 0x86B00000)) & 0x8B00000) + 72935300;
  LODWORD(STACK[0x5F4]) = v499;
  LODWORD(STACK[0x58C]) = v462;
  LODWORD(STACK[0x7B8]) = v498;
  LODWORD(STACK[0x80C]) = v466;
  LODWORD(STACK[0x588]) = v463;
  LODWORD(STACK[0x7A4]) = v497 ^ v499 ^ v462 ^ v498 ^ v463 ^ v466 ^ LODWORD(STACK[0x810]) ^ v236 ^ v479 ^ (((32 * v236) ^ 0xA871D340) - ((2 * ((32 * v236) ^ 0xA871D340)) & 0xE01AC600) + 1879925519) ^ (((v236 << 11) ^ 0x1C74D000) - ((2 * ((v236 << 11) ^ 0x1C74D000)) & 0x660C0000) - 1291451657) ^ (((4 * v236) ^ 0xB50E3A68) - 2052772728 + ~(2 * (((4 * v236) ^ 0xB50E3A68) & 0x5A52C94 ^ (4 * v236) & 0x10))) ^ (v471 - 1090761242);
  LODWORD(STACK[0xC80]) = (((4 * v479) ^ 0xA0C16CC4) - ((2 * ((4 * v479) ^ 0xA0C16CC4)) & 0x11F0) - 228071174) ^ (((32 * v479) ^ 0x60B6620) - ((2 * ((32 * v479) ^ 0x60B6620)) & 0xE8C0) - 1886751626) ^ (((v479 << 11) ^ 0x82D98800) - ((2 * ((v479 << 11) ^ 0x82D98800)) & 0x7C4000) + 1950228933);
  v500 = v432 ^ LODWORD(STACK[0xC90]);
  v501 = v500 ^ 0x30CAC286;
  LODWORD(STACK[0xCE4]) = ((8 * (v500 ^ 0x30CAC286)) ^ 0xBE38D328) - ((2 * ((8 * (v500 ^ 0x30CAC286)) ^ 0xBE38D328)) & 0x483C6680);
  LODWORD(STACK[0xCB0]) = (((v500 ^ 0x30CAC286) << 7) ^ 0xE38D3280) - ((2 * (((v500 ^ 0x30CAC286) << 7) ^ 0xE38D3280)) & 0x63D26E00);
  LODWORD(STACK[0xCB8]) = (((v500 ^ 0x30CAC286) << 16) ^ 0x1A650000) - ((2 * (((v500 ^ 0x30CAC286) << 16) ^ 0x1A650000)) & 0xD3580000);
  LODWORD(STACK[0xC90]) = (((v500 ^ 0x30CAC286) << 10) ^ 0x1C699400) - ((2 * (((v500 ^ 0x30CAC286) << 10) ^ 0x1C699400)) & 0x437B9000);
  LODWORD(STACK[0xB00]) = (((v500 ^ 0x30CAC286) << 14) ^ 0xC6994000) - ((2 * (((v500 ^ 0x30CAC286) << 14) ^ 0xC6994000)) & 0x4FAD0000);
  LODWORD(STACK[0xC78]) = (((v500 ^ 0x30CAC286) << 20) ^ 0xA6500000) - ((2 * (((v500 ^ 0x30CAC286) << 20) ^ 0xA6500000)) & 0x99E00000);
  LODWORD(v342) = (v500 ^ 0x30CAC286) << 22;
  LODWORD(STACK[0xB78]) = (v342 ^ 0x99400000) - ((2 * (v342 ^ 0x99400000)) & 0x23000000);
  LODWORD(STACK[0x96C]) = (((v500 ^ 0x30CAC286) << 13) ^ 0xE34CA000) - ((2 * (((v500 ^ 0x30CAC286) << 13) ^ 0xE34CA000)) & 0xFAF6C000);
  LODWORD(STACK[0x9F4]) = (((v500 ^ 0x30CAC286) << 17) ^ 0x34CA0000) - ((2 * (((v500 ^ 0x30CAC286) << 17) ^ 0x34CA0000)) & 0x21C80000);
  LODWORD(STACK[0xC48]) = (((v500 ^ 0x30CAC286) << 25) ^ 0xCA000000) - ((2 * (((v500 ^ 0x30CAC286) << 25) ^ 0xCA000000)) & 0x34000000);
  LODWORD(STACK[0xC40]) = (((v500 ^ 0x30CAC286) << 24) ^ 0x65000000) - ((2 * (((v500 ^ 0x30CAC286) << 24) ^ 0x65000000)) & 0xBC000000);
  LODWORD(STACK[0x968]) = (((v500 ^ 0x30CAC286) << 26) ^ 0x94000000) - ((2 * (((v500 ^ 0x30CAC286) << 26) ^ 0x94000000)) & 0x28000000);
  v502 = (4 * (v500 ^ 0x30CAC286)) ^ 0xDF1C6994;
  LODWORD(STACK[0xB80]) = v502 - ((2 * v502) & 0x264D9D88);
  v503 = v502 - ((2 * v502) & 0xD3E3A180);
  LODWORD(STACK[0x964]) = (((v500 ^ 0x30CAC286) << 11) ^ 0x38D32800) - ((2 * (((v500 ^ 0x30CAC286) << 11) ^ 0x38D32800)) & 0xFB53000);
  v504 = (((v500 ^ 0x30CAC286) << 21) ^ 0x4CA00000) - (v342 & 0x20800000);
  LODWORD(v342) = (v432 ^ 0xEF328BF4) >> 14;
  LODWORD(STACK[0xAF8]) = v500 ^ 0x70DD8E3;
  v505 = (v500 ^ 0x70DD8E3) >> ((v342 & 0xD ^ 0xD) + (v342 & 0xD));
  v506 = (v432 >> 30) ^ 0x9D1F06A6;
  v507 = (v432 >> 21) ^ 0x20B7A98C;
  v508 = (v432 >> 11) ^ 0xE9EB2526;
  LODWORD(STACK[0x55C]) = v506;
  v509 = ((v432 ^ 0xEF328BF4) >> 28) ^ ((v432 ^ 0xEF328BF4) >> 27) ^ v508 ^ v506 ^ v507;
  v510 = (v432 >> 18) ^ 0x706D2EA4;
  v511 = (v432 >> 19) ^ 0xDBBECD6E;
  v512 = (v432 >> 15) ^ 0xDEAF22CE;
  LODWORD(STACK[0x570]) = v510;
  LODWORD(STACK[0x54C]) = v512;
  v513 = ((v432 ^ 0xEF328BF4) >> 29) | 0x53669678;
  v514 = v342 ^ 0x6265051B;
  LODWORD(v342) = v509 ^ v511 ^ v510 ^ v512 ^ ((v500 ^ 0x30CAC286) >> 2);
  LODWORD(STACK[0x9A0]) = v500;
  v515 = (v500 >> 10) ^ 0xD5BE4105;
  v516 = (v500 ^ 0x30CAC286) >> 9;
  LODWORD(STACK[0x970]) = v516;
  v517 = (v500 >> 6) ^ 0x9C998F21;
  v518 = (v500 >> 5) ^ 0xF99538DE;
  LODWORD(STACK[0x97C]) = v518;
  LODWORD(v342) = v342 ^ v516 ^ v515 ^ v513 ^ v514 ^ v517 ^ v518;
  v519 = v505 - ((2 * v505) & 0x466B754) + 36920234;
  v520 = (v500 >> 4) ^ 0x9128ECC1;
  LODWORD(STACK[0x560]) = v520;
  v521 = v342 ^ v520 ^ v519;
  LODWORD(STACK[0x958]) = (((v500 ^ 0x30CAC286) << 18) ^ 0x69940000) - ((2 * (((v500 ^ 0x30CAC286) << 18) ^ 0x69940000)) & 0x1FD00000);
  LODWORD(STACK[0x950]) = ((32 * v521) ^ 0xC536BC20) - ((2 * ((32 * v521) ^ 0xC536BC20)) & 0xA8ACAA40);
  LODWORD(v342) = (v521 >> 21) ^ (v519 >> 30) ^ (v521 >> 27);
  LODWORD(STACK[0x6F0]) = v296;
  v522 = ((v296 << 28) ^ 0x79FE480E) - 13;
  LODWORD(STACK[0x7AC]) = v522;
  v523 = v522 ^ ((LODWORD(STACK[0x808]) << 29) - 2137416785) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0x9A4]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x5D4]) ^ LODWORD(STACK[0x5E4]) ^ (LODWORD(STACK[0x788]) - 283824220) ^ (LODWORD(STACK[0x5EC]) + 1530161505) ^ (LODWORD(STACK[0x5E0]) + 1104288668) ^ (LODWORD(STACK[0x5E8]) + 1628618712) ^ (LODWORD(STACK[0x5DC]) + 1973555994) ^ ((((v500 ^ 0x30CAC286) << 30) ^ 0x40000000) - 1156823656);
  v524 = (((v500 ^ 0x30CAC286) << 28) ^ 0x50000000) - 2096369845;
  v525 = v504 - 1872901120;
  LODWORD(STACK[0x5E8]) = v524;
  LODWORD(v236) = v523 ^ v524 ^ (v504 - 1872901120) ^ (((16 * (v500 ^ 0x30CAC286)) ^ 0x7C71A650) - ((2 * ((16 * (v500 ^ 0x30CAC286)) ^ 0x7C71A650)) & 0xC4E4820) - 2044255202) ^ (v503 - 370028352) ^ (((32 * (v500 ^ 0x30CAC286)) ^ 0xF8E34CA0) - ((2 * ((32 * (v500 ^ 0x30CAC286)) ^ 0xF8E34CA0)) & 0x8C923440) + 1179195960) ^ (LODWORD(STACK[0x91C]) - 105587217);
  v526 = LODWORD(STACK[0xCE4]) + 605958983;
  v527 = LODWORD(STACK[0xB00]) + 668377257;
  v528 = LODWORD(STACK[0x96C]) + 2105237676;
  v529 = LODWORD(STACK[0x964]) - 2015716908;
  LODWORD(STACK[0x5E4]) = v527;
  LODWORD(v236) = v236 ^ ((((v500 ^ 0x30CAC286) << 19) ^ 0xD3280000) - ((2 * (((v500 ^ 0x30CAC286) << 19) ^ 0xD3280000)) & 0x5600000) - 2102132435) ^ v526 ^ v528 ^ v529 ^ v527;
  v530 = LODWORD(STACK[0xB78]) - 1849792062;
  v531 = LODWORD(STACK[0x9F4]) + 283458660;
  v532 = LODWORD(STACK[0x968]) + 382086609;
  v533 = LODWORD(STACK[0x958]) - 1880455385;
  v534 = (((v500 ^ 0x30CAC286) << 23) ^ 0x32800000) - ((2 * (((v500 ^ 0x30CAC286) << 23) ^ 0x32800000)) & 0xE1FFFFFF) + 1889972305;
  v535 = ((v501 << 27) ^ 0x28000000) - ((2 * ((v501 << 27) ^ 0x28000000)) & 0xB0000000) - 596208216;
  LODWORD(STACK[0xB78]) = v535;
  LODWORD(STACK[0x5D0]) = v531;
  v536 = v531 ^ v533 ^ v530;
  v537 = v530;
  LODWORD(STACK[0x5D8]) = v532;
  v538 = v236 ^ v536 ^ v534 ^ v532 ^ v535 ^ v521 ^ v342 ^ (((4 * v521) ^ 0xF8A6D784) - ((2 * ((4 * v521) ^ 0xF8A6D784)) & 0xD482F430) + 1782675992) ^ (LODWORD(STACK[0x950]) + 1414944059) ^ (((v521 << 11) ^ 0x4DAF0800) - ((2 * ((v521 << 11) ^ 0x4DAF0800)) & 0x36496000) - 1692092685) ^ (((4 * v342) ^ 0x7D8) - 1905323956 - ((2 * ((4 * v342) ^ 0x7D8)) & 0x3A80) + 3316) ^ (((32 * v342) ^ 0x3EC0) - ((2 * ((32 * v342) ^ 0x3EC0)) & 0x1AC80) + 1402721862) ^ (((v342 << 11) ^ 0xFB000) - ((2 * ((v342 << 11) ^ 0xFB000)) & 0x327000) + 1780039647);
  v539 = ((v501 << 8) ^ 0xC71A6500) - ((2 * ((v501 << 8) ^ 0xC71A6500)) & 0xA8049A00);
  LODWORD(STACK[0x580]) = v501;
  v540 = ((v501 << 15) ^ 0x8D328000) - ((2 * ((v501 << 15) ^ 0x8D328000)) & 0xE0640000);
  LODWORD(v342) = (v432 ^ 0xEF328BF4) >> 24;
  v541 = LODWORD(STACK[0xAF8]) << (v342 & 0x1A ^ 8 | v342 & 0x1A ^ 0x12);
  LODWORD(v236) = v541 - ((2 * v541) & 0x2D1141B4);
  LODWORD(STACK[0x57C]) = v432 ^ 0xEF328BF4;
  v542 = (v432 >> 25) ^ 0xA4CD43F2;
  LODWORD(STACK[0x524]) = v542;
  LODWORD(v342) = v542 ^ v342;
  v543 = (v432 >> 22) ^ 0x9C916836;
  LODWORD(STACK[0x51C]) = v543;
  LODWORD(v342) = ((v432 ^ 0xEF328BF4) >> 30) ^ ((v432 ^ 0xEF328BF4) >> 17) ^ v342 ^ v543;
  v544 = HIWORD(v432) ^ 0x8FF5E52F;
  LODWORD(STACK[0x574]) = v507;
  LODWORD(STACK[0x568]) = v511;
  LODWORD(STACK[0x520]) = v544;
  v545 = v507 ^ v511 ^ v544;
  LODWORD(STACK[0x5EC]) = v432;
  v546 = (v432 >> 12) ^ 0x6A886F67;
  LODWORD(STACK[0x518]) = v546;
  LODWORD(v342) = v342 ^ v545 ^ v546;
  LODWORD(STACK[0x578]) = v508;
  v547 = v508 ^ LODWORD(STACK[0x970]);
  LODWORD(STACK[0x558]) = v513;
  LODWORD(STACK[0x56C]) = v514;
  LODWORD(v342) = v342 ^ v547 ^ v513 ^ v514;
  v548 = (LODWORD(STACK[0x9A0]) >> 7) ^ 0x8F43A416;
  v549 = (LODWORD(STACK[0x9A0]) >> 8) ^ 0xC2A7B0AC;
  LODWORD(STACK[0x548]) = v515;
  LODWORD(STACK[0x510]) = v549;
  LODWORD(STACK[0x514]) = v548;
  LODWORD(STACK[0x564]) = v517;
  v550 = v342 ^ v515 ^ v549 ^ v548 ^ v517 ^ LODWORD(STACK[0x97C]);
  v551 = v550 >> 21;
  v552 = STACK[0xD5C];
  LODWORD(STACK[0xCE4]) = -1673081951 * LODWORD(STACK[0xD58]) - ((948803394 * LODWORD(STACK[0xD58]) + 968328188) & 0x9AC6433A);
  v553 = LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xCAC]) ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0xCDC]) ^ (LODWORD(STACK[0xBA8]) - 894886371) ^ (LODWORD(STACK[0xB18]) - 2108871343) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0xCA0]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0xB98]) ^ LODWORD(STACK[0xC38]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0xCF0]) ^ LODWORD(STACK[0xB90]) ^ (LODWORD(STACK[0xBB0]) - 531079734) ^ LODWORD(STACK[0xCCC]) ^ LODWORD(STACK[0xB08]) ^ (LODWORD(STACK[0xB40]) + 96165531) ^ (LODWORD(STACK[0xB38]) - 1598993591) ^ (LODWORD(STACK[0xBA0]) - 1719901734) ^ (LODWORD(STACK[0xB28]) - 205488131) ^ (LODWORD(STACK[0xB20]) + 933474237) ^ LODWORD(STACK[0xB14]);
  v554 = LODWORD(STACK[0x9E8]) << 30;
  v555 = LODWORD(STACK[0x9E8]) << 31;
  LODWORD(STACK[0x500]) = v554;
  v556 = v553 ^ (v554 + v555 + 2027292622) ^ LODWORD(STACK[0x7E0]) ^ LODWORD(STACK[0xD18]) ^ (LODWORD(STACK[0xC30]) + 401080077) ^ (LODWORD(STACK[0xC28]) - 549510819) ^ LODWORD(STACK[0x880]);
  v557 = LODWORD(STACK[0xC60]) - 264234634;
  LODWORD(STACK[0x53C]) = v557;
  v558 = v556 ^ LODWORD(STACK[0x7E4]) ^ v557 ^ LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0x798]) ^ LODWORD(STACK[0x890]) ^ LODWORD(STACK[0xB68]) ^ LODWORD(STACK[0x9BC]) ^ LODWORD(STACK[0xB70]) ^ LODWORD(STACK[0xB60]) ^ LODWORD(STACK[0x988]) ^ LODWORD(STACK[0x980]) ^ (LODWORD(STACK[0x994]) + 76865200) ^ (LODWORD(STACK[0xC50]) + 3269) ^ (LODWORD(STACK[0xC68]) + 912284721) ^ (LODWORD(STACK[0xBF8]) + 1660889994) ^ (LODWORD(STACK[0x99C]) - 577671143) ^ (LODWORD(STACK[0x998]) + 308775166) ^ (LODWORD(STACK[0xC58]) - 1851823672) ^ ((LODWORD(STACK[0xB58]) << 31) | 0x4405687B);
  v559 = LODWORD(STACK[0xC88]) + 1136052868;
  v560 = v558 ^ LODWORD(STACK[0x7AC]);
  LODWORD(STACK[0x534]) = v559;
  v561 = v560 ^ v559 ^ LODWORD(STACK[0x910]) ^ LODWORD(STACK[0x7D8]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0x9A4]) ^ LODWORD(STACK[0x938]) ^ LODWORD(STACK[0x934]) ^ (LODWORD(STACK[0xB50]) - 1030741711) ^ (LODWORD(STACK[0xB30]) + 1535131825) ^ (LODWORD(STACK[0xC20]) + 2133484486) ^ (LODWORD(STACK[0x9D4]) - 806879846) ^ (LODWORD(STACK[0xC00]) - 1709595383) ^ (LODWORD(STACK[0xB48]) + 12729655);
  LODWORD(STACK[0x5BC]) = v525;
  v562 = v561 ^ v525 ^ (v540 + 1882335778) ^ (v539 - 738046486) ^ (LODWORD(STACK[0xC70]) - 1935959257);
  v563 = LODWORD(STACK[0xB80]) + 321310406;
  v564 = LODWORD(STACK[0xCB0]) - 1310116019;
  v565 = LODWORD(STACK[0xC90]) + 566086326;
  LODWORD(STACK[0x5DC]) = v526;
  LODWORD(STACK[0x5A8]) = v563;
  LODWORD(STACK[0x5B0]) = v564;
  LODWORD(STACK[0x5AC]) = v565;
  v566 = v562 ^ v526 ^ v563 ^ v564 ^ v565;
  v567 = LODWORD(STACK[0xCB8]) - 374563365;
  v568 = LODWORD(STACK[0xC78]) - 856559052;
  LODWORD(STACK[0x5E0]) = v528;
  LODWORD(STACK[0x5B8]) = v529;
  LODWORD(STACK[0x5A0]) = v567;
  LODWORD(STACK[0x5B4]) = v533;
  LODWORD(STACK[0x5A4]) = v568;
  v569 = v566 ^ v529 ^ v528 ^ v567 ^ v533 ^ v568;
  v570 = LODWORD(STACK[0xC48]) - 1703113243;
  v571 = LODWORD(STACK[0xC40]) - 570181115;
  LODWORD(STACK[0x5D4]) = v537;
  LODWORD(STACK[0x598]) = v571;
  LODWORD(STACK[0x59C]) = v570;
  LODWORD(v236) = v569 ^ v537 ^ v534 ^ v571 ^ v570 ^ LODWORD(STACK[0xB78]) ^ (v236 + 378052826) ^ v550 ^ (((4 * v550) ^ 0xE8AF3F8) - 595131612 + (~(2 * ((4 * v550) ^ 0xE8AF3F8)) | 0xC6F1F9BF)) ^ (((32 * v550) ^ 0x74579FC0) + 854442629 + (~(2 * ((32 * v550) ^ 0x74579FC0)) | 0x9A247AFF)) ^ (((v550 << 11) ^ 0x15E7F000) - ((2 * ((v550 << 11) ^ 0x15E7F000)) & 0x1C38A000) + 236737364) ^ (((4 * (v550 >> 21)) ^ 0x74) - ((2 * ((4 * (v550 >> 21)) ^ 0x74)) & 0x1740) - 558306399) ^ (((32 * (v550 >> 21)) ^ 0x3A0) - ((2 * ((32 * (v550 >> 21)) ^ 0x3A0)) & 0x5040) + 1635264554) ^ (((v550 >> 21 << 11) ^ 0xE800) - ((2 * ((v550 >> 21 << 11) ^ 0xE800)) & 0x3AE000) + 1037924098);
  v572 = STACK[0xD7C];
  LODWORD(STACK[0xCE8]) = -1673081951 * LODWORD(STACK[0xD78]) - ((948803394 * LODWORD(STACK[0xD78]) + 968328188) & 0xBADC69E6);
  LODWORD(STACK[0xCB0]) = -1673081951 * v552 - 2 * ((-1673081951 * v552 + 484164094) & 0x22227E5F ^ (-95 * v552 + 6) & 4);
  v573 = STACK[0xD64];
  LODWORD(STACK[0xCB8]) = -1673081951 * LODWORD(STACK[0xD60]) - 303237708 - ((2 * (-1673081951 * LODWORD(STACK[0xD60]) - 303237708) + 1574803604) & 0x99EA05CE);
  LODWORD(STACK[0xCAC]) = -1673081951 * v572 - ((411932482 * v572 + 431457276) & 0x15BAC778);
  LODWORD(STACK[0xCC0]) = -1673081951 * LODWORD(STACK[0xD80]) - 1429223792 - 2 * ((-1673081951 * LODWORD(STACK[0xD80]) + 215728638) & 0xDF40493 ^ (-1673081951 * LODWORD(STACK[0xD80])) & 1);
  LODWORD(STACK[0xCCC]) = -1673081951 * v573 - ((948803394 * v573 + 968328188) & 0xBC8A0622);
  LODWORD(STACK[0xCE0]) = -1673081951 * LODWORD(STACK[0xD84]) - ((948803394 * LODWORD(STACK[0xD84]) + 968328188) & 0xED42C548);
  v574 = STACK[0xD6C];
  LODWORD(STACK[0xCF8]) = -1673081951 * LODWORD(STACK[0xD68]) - ((948803394 * LODWORD(STACK[0xD68]) + 968328188) & 0x23E47766);
  v575 = STACK[0xD8C];
  LODWORD(STACK[0xD00]) = -1673081951 * LODWORD(STACK[0xD88]) - 2 * ((-1673081951 * LODWORD(STACK[0xD88]) + 484164094) & 0x77BF855F ^ (-1673081951 * LODWORD(STACK[0xD88])) & 1);
  LODWORD(v342) = ((948803394 * v575 - ((823864964 * v575) & 0x32BC97D0) + 962481129) & 0x39B783FC ^ 0x391603E8) + ((-1673081951 * v575 - ((948803394 * v575) & 0xD04835F2) + 1747196665) ^ 0xF4FFDB07);
  LODWORD(STACK[0xD10]) = v342 - ((2 * v342) & 0x5F75CE98);
  LODWORD(STACK[0xCF0]) = -1673081951 * v574 - ((948803394 * v574 + 968328188) & 0xF6BF1E50);
  v576 = STACK[0xD74];
  LODWORD(STACK[0xCD0]) = -1673081951 * LODWORD(STACK[0xD70]) - ((948803394 * LODWORD(STACK[0xD70]) + 968328188) & STACK[0x43C]);
  v577 = STACK[0xD94];
  LODWORD(STACK[0xD18]) = -1673081951 * LODWORD(STACK[0xD90]) - ((948803394 * LODWORD(STACK[0xD90]) + 968328188) & 0xABAC5AF0);
  LODWORD(STACK[0xD08]) = -1673081951 * v577 - 2 * ((-1673081951 * v577 + 484164094) & 0x16BB565D ^ (-1673081951 * v577) & 1);
  LODWORD(STACK[0xCDC]) = -1673081951 * v576 - 718608820 - ((2 * (-1673081951 * v576 - 718608820) - 1889421468) & 0xC0F63DB6);
  v578 = STACK[0xE1C];
  v579 = -1673081951 * LODWORD(STACK[0xE18]) - 1753755093 - ((2 * (-1673081951 * LODWORD(STACK[0xE18]) - 1753755093) + 180871078) & 0x73573CC6);
  v580 = -1673081951 * LODWORD(STACK[0xDDC]) - ((411932482 * LODWORD(STACK[0xDDC]) + 431457276) & 0x18411C60);
  v581 = STACK[0xDE4];
  v582 = -1673081951 * LODWORD(STACK[0xDE0]) - 243191391 - ((2 * (-1673081951 * LODWORD(STACK[0xDE0]) - 243191391) + 1454710970) & 0x50E6B4EE);
  v583 = -1673081951 * LODWORD(STACK[0xDD8]) + 1461551656 - ((2 * (-1673081951 * LODWORD(STACK[0xDD8]) + 1461551656) - 1954775124) & 0xA9582DCA);
  LODWORD(v342) = v538 ^ (-1673081951 * LODWORD(STACK[0xE5C]) - ((948803394 * LODWORD(STACK[0xE5C]) + 968328188) & 0xD7723EE0) + 143974766);
  LODWORD(STACK[0xBA0]) = v342;
  v584 = ((2 * v342) & 0xDFBDFCB6 ^ 0x8FBCD414) + (v342 ^ 0x38019571);
  v585 = -1673081951 * LODWORD(STACK[0xE20]) - ((948803394 * LODWORD(STACK[0xE20]) + 968328188) & 0x2DF185BA);
  v586 = -1673081951 * v578 - 787404306 - ((2 * (-1673081951 * v578 - 787404306) - 1751830496) & 0xB15C939A);
  v587 = -1673081951 * LODWORD(STACK[0xE24]) - ((948803394 * LODWORD(STACK[0xE24]) + 968328188) & 0x4688B66E);
  v588 = ((948803394 * LODWORD(STACK[0xDE8])) & 0x7EDD6F76) + ((-1673081951 * LODWORD(STACK[0xDE8])) ^ 0x3F6EB7BB);
  v589 = v588 - ((2 * v588 + 987370630) & 0x28BC562A);
  v590 = -1673081951 * LODWORD(STACK[0xDEC]) + 1808790116 - ((948803394 * LODWORD(STACK[0xDEC]) + 968328188) & 0x9DE860CC);
  v591 = -1673081951 * LODWORD(STACK[0xE28]) - ((948803394 * LODWORD(STACK[0xE28]) + 968328188) & 0xE684C85C);
  v592 = -1673081951 * LODWORD(STACK[0xE2C]) - ((948803394 * LODWORD(STACK[0xE2C]) + 968328188) & 0x9832CB14);
  v593 = STACK[0xE34];
  LODWORD(STACK[0xBB0]) = -1673081951 * LODWORD(STACK[0xE30]) - ((948803394 * LODWORD(STACK[0xE30]) + 968328188) & 0x591C5814);
  v594 = STACK[0xDF4];
  LODWORD(STACK[0xBA8]) = -1673081951 * LODWORD(STACK[0xDF0]) - 661354160 - ((2 * (-1673081951 * LODWORD(STACK[0xDF0]) - 661354160) - 2003930788) & 0xA229C7FA);
  LODWORD(STACK[0xC00]) = -1673081951 * v594 - ((9279298 * v594 + 28804092) & STACK[0x438]);
  v595 = STACK[0xE3C];
  LODWORD(STACK[0xBF8]) = -1673081951 * LODWORD(STACK[0xE38]) - ((948803394 * LODWORD(STACK[0xE38]) + 968328188) & 0x56B25794);
  LODWORD(STACK[0xC20]) = -1673081951 * v593 - ((948803394 * v593 + 968328188) & 0xFD34E9FE);
  LODWORD(STACK[0xC38]) = -1673081951 * LODWORD(STACK[0xDF8]) + 335644869 - ((2 * (-1673081951 * LODWORD(STACK[0xDF8]) + 335644869) + 297038450) & 0xACD53DBE);
  LODWORD(STACK[0xC30]) = -1673081951 * LODWORD(STACK[0xDFC]) - ((948803394 * LODWORD(STACK[0xDFC]) + 968328188) & 0xC6AE2D92);
  v596 = STACK[0xE04];
  LODWORD(STACK[0xC48]) = -1673081951 * LODWORD(STACK[0xE00]) - 291980612 - ((2 * (-1673081951 * LODWORD(STACK[0xE00]) - 291980612) + 1552289412) & 0xBEB5111E);
  LODWORD(STACK[0xC28]) = -1673081951 * v595 - ((948803394 * v595 + 968328188) & 0x8F15F546);
  v597 = STACK[0xE44];
  LODWORD(STACK[0xC40]) = -1673081951 * LODWORD(STACK[0xE40]) - ((948803394 * LODWORD(STACK[0xE40]) + 968328188) & 0x70B374CA);
  LODWORD(STACK[0xC58]) = -1673081951 * v596 - ((143497026 * v596 + 163021820) & 0xF845FE2);
  v598 = STACK[0xE08];
  v599 = STACK[0xE0C];
  v600 = (STACK[0xE08] & 0x9CDBC1FE ^ 0x9CDBC1FE) + (STACK[0xE08] & 0x9CDBC1FE);
  LODWORD(STACK[0xC50]) = -1673081951 * v597 - ((948803394 * v597 + 968328188) & 0xB7B9B1D6);
  v601 = STACK[0xE4C];
  LODWORD(STACK[0xC70]) = -1673081951 * LODWORD(STACK[0xE48]) - ((948803394 * LODWORD(STACK[0xE48]) + 968328188) & 0x637030A6);
  v602 = (v600 ^ LODWORD(STACK[0x434])) - 1673081951 * v598 + ((2 * v600) & 0x3BFF05AC) - 1610591958;
  LODWORD(STACK[0xC60]) = v602 + 1676283904 - ((2 * v602) & 0xC7D437D8);
  v603 = STACK[0xE14];
  LODWORD(STACK[0xC78]) = -1673081951 * LODWORD(STACK[0xE10]) - ((948803394 * LODWORD(STACK[0xE10]) + 968328188) & 0x7335845C);
  v604 = STACK[0xE54];
  LODWORD(STACK[0xC98]) = -1673081951 * LODWORD(STACK[0xE50]) - ((948803394 * LODWORD(STACK[0xE50]) + 968328188) & 0x883A3E50);
  LODWORD(STACK[0xC88]) = -1673081951 * v599 - ((948803394 * v599 + 968328188) & 0xB7C717E2);
  LODWORD(STACK[0xC68]) = -1673081951 * v601 - ((9279298 * v601 + 28804092) & 0x5B18EA4);
  LODWORD(STACK[0x784]) = v236;
  LODWORD(STACK[0x780]) = v236 ^ 0x95E88178;
  LODWORD(v342) = v236 ^ 0x95E88178 ^ v551;
  LODWORD(STACK[0x9D4]) = v342;
  v605 = v342 ^ 0xA98DEB15;
  v606 = v342 ^ 0xA98DEB15 ^ (v579 + 1057984054);
  LODWORD(STACK[0xCA0]) = -1673081951 * v603 - ((948803394 * v603 + 968328188) & 0xD169DCBA);
  v607 = (v606 ^ 0x219E302E) - ((2 * (v606 ^ 0x219E302E)) & 0x21845B40) + 281161120;
  LOBYTE(STACK[0x1604]) = HIBYTE(v607) ^ 5;
  v608 = LODWORD(STACK[0xC80]) ^ LODWORD(STACK[0x7A4]);
  LODWORD(STACK[0x910]) = v608;
  v609 = v608 ^ 0xDE91088E ^ (v583 - 1704307013);
  v610 = (v609 ^ 0xFF5482FE) - ((2 * (v609 ^ 0xFF5482FE)) & 0xF050FB80) - 131564096;
  LOBYTE(STACK[0x1519]) = BYTE2(v610) ^ 0x3D;
  v611 = LODWORD(STACK[0x9D8]) ^ 0xFB7BA707;
  LODWORD(STACK[0xC90]) = -1673081951 * v604 - ((948803394 * v604 + 968328188) & 0xA6986470);
  LODWORD(STACK[0x91C]) = v538;
  v612 = v538 ^ 0xF903E2A9;
  LODWORD(v342) = v538 ^ 0xF903E2A9 ^ (v586 - 1535581731);
  LOBYTE(STACK[0x14F5]) = BYTE2(v607) ^ 0xD7;
  LOBYTE(STACK[0x1628]) = HIBYTE(v610) ^ 0xED;
  LOBYTE(STACK[0x140A]) = BYTE1(v610) ^ 0x68;
  LOBYTE(STACK[0x13E6]) = BYTE1(v607) ^ 0x38;
  LOBYTE(STACK[0x1699]) = v606 ^ 0x3B;
  v613 = (v611 ^ (v580 - 1459859410) ^ 0x23A7E8F1) - ((2 * (v611 ^ (v580 - 1459859410) ^ 0x23A7E8F1)) & 0x7141BB26) - 1197417069;
  LOBYTE(STACK[0x1390]) = (((v611 ^ (v580 + 20526) ^ 0xE8F1) - ((2 * (v611 ^ (v580 + 20526) ^ 0xE8F1)) & 0xBB26) - 8813) >> 8) ^ 0xC8;
  v614 = v608 ^ 0xDE91088E ^ (v582 - 741479724);
  v615 = (v614 ^ 0x838BCE6C) + 1889216243 + (~(2 * (v614 ^ 0x838BCE6C)) | 0x1EC9B21B);
  v616 = (v342 ^ 0x1DCBDF3E) - ((2 * (v342 ^ 0x1DCBDF3E)) & 0x3E6A3548) + 523573924;
  LOBYTE(STACK[0x158A]) = HIBYTE(v616) ^ 0xA;
  LOBYTE(STACK[0x16BD]) = v609 ^ 0xEB;
  LOBYTE(STACK[0x147B]) = BYTE2(v616) ^ 0x20;
  LOBYTE(STACK[0x149F]) = BYTE2(v613) ^ 0xB5;
  LOBYTE(STACK[0x136C]) = BYTE1(v616) ^ 0xF;
  LOBYTE(STACK[0x1534]) = HIBYTE(v615) ^ 0x65;
  LOBYTE(STACK[0x1643]) = v611 ^ (v580 + 46) ^ 0xE4;
  LOBYTE(STACK[0x15AE]) = HIBYTE(v613) ^ 0xAD;
  v617 = (v605 ^ (v585 + 869565659) ^ 0x8ECD6C90) - ((2 * (v605 ^ (v585 + 869565659) ^ 0x8ECD6C90)) & 0xFFF67686) - 312509;
  LOBYTE(STACK[0x1510]) = HIBYTE(v617) ^ 0xEA;
  LOBYTE(STACK[0x1316]) = BYTE1(v615) ^ 0x33;
  LOBYTE(STACK[0x15C9]) = v614 ^ 0x79;
  LOBYTE(STACK[0x1401]) = BYTE2(v617) ^ 0xEE;
  LOBYTE(STACK[0x16B4]) = (((v605 ^ (v585 - 31525) ^ 0x6C90) - ((2 * (v605 ^ (v585 - 31525) ^ 0x6C90)) & 0x7686) + 15171) >> 8) ^ 0x2E;
  LOBYTE(STACK[0x1425]) = BYTE2(v615) ^ 0x8E;
  LOBYTE(STACK[0x15A5]) = v605 ^ (v585 - 37) ^ 0x85;
  v618 = v611 ^ (-1673081951 * v581 - ((948803394 * v581 + 968328188) & 0x4AA40DCA) + 1110296803);
  v619 = (v618 ^ LODWORD(STACK[0x430])) - ((2 * (v618 ^ LODWORD(STACK[0x430]))) & 0xB0D02ECC) + 1483216742;
  LOBYTE(STACK[0x14BA]) = HIBYTE(v619) ^ 0x4D;
  v620 = (v612 ^ (v587 - 1071637195) ^ 0xE621CDC4) - ((2 * (v612 ^ (v587 - 1071637195) ^ 0xE621CDC4)) & 0x47A34E1A) + 600942349;
  LOBYTE(STACK[0x1496]) = HIBYTE(v620) ^ 0x36;
  LOBYTE(STACK[0x13AB]) = BYTE2(v619) ^ 0x7D;
  LOBYTE(STACK[0x165E]) = BYTE1(v619) ^ 2;
  LOBYTE(STACK[0x161F]) = v342 ^ 0x2B;
  LOBYTE(STACK[0x152B]) = v538 ^ 0xA9 ^ (v587 + 53) ^ 0xD1;
  LOBYTE(STACK[0x163A]) = (((v538 ^ 0xE2A9 ^ (v587 + 7477) ^ 0xCDC4) - ((2 * (v538 ^ 0xE2A9 ^ (v587 + 7477) ^ 0xCDC4)) & 0x4E1A) - 22771) >> 8) ^ 0xB2;
  v621 = (v608 ^ 0xDE91088E ^ (v589 - 238340776) ^ 0x3FA6BF0E) - ((2 * (v608 ^ 0xDE91088E ^ (v589 - 238340776) ^ 0x3FA6BF0E)) & 0x74DFCA7E) + 980411711;
  LOBYTE(STACK[0x1440]) = HIBYTE(v621) ^ 0x2F;
  LOBYTE(STACK[0x154F]) = v611 ^ (-95 * v581 - ((66 * v581 - 4) & 0xCA) - 29) ^ 0x31;
  LOBYTE(STACK[0x1331]) = BYTE2(v621) ^ 0x7A;
  v622 = (v605 ^ (v591 - 1877072340) ^ 0xEB77CA63) - ((2 * (v605 ^ (v591 - 1877072340) ^ 0xEB77CA63)) & 0xF19FA60C) - 120597754;
  LOBYTE(STACK[0x141C]) = HIBYTE(v622) ^ 0xED;
  LOBYTE(STACK[0x15E4]) = (((v608 ^ 0x88E ^ (v589 + 13656) ^ 0xBF0E) - ((2 * (v608 ^ 0x88E ^ (v589 + 13656) ^ 0xBF0E)) & 0xCA7E) - 6849) >> 8) ^ 0xF0;
  LOBYTE(STACK[0x15C0]) = (((v605 ^ (v591 + 9772) ^ 0xCA63) - ((2 * (v605 ^ (v591 + 9772) ^ 0xCA63)) & 0xA60C) - 11514) >> 8) ^ 0xC6;
  LOBYTE(STACK[0x14D5]) = v608 ^ 0x8E ^ (v589 + 88) ^ 0x1B;
  LOBYTE(STACK[0x1387]) = BYTE2(v620) ^ 0xC4;
  LOBYTE(STACK[0x130D]) = BYTE2(v622) ^ 0xDA;
  v623 = (v611 ^ v590 ^ 0xE17356A7) - ((2 * (v611 ^ v590 ^ 0xE17356A7)) & 0xB1409FA0) + 1486901200;
  LOBYTE(STACK[0x13C6]) = HIBYTE(v623) ^ 0x4D;
  v624 = v538 ^ 0xF903E2A9 ^ (v592 - 386586744);
  LOBYTE(STACK[0x1679]) = BYTE2(v623) ^ 0xB5;
  v625 = (v624 ^ 0x897CF379) - ((2 * (v624 ^ 0x897CF379)) & 0x25E1469C) + 317760334;
  LOBYTE(STACK[0x13A2]) = HIBYTE(v625) ^ 7;
  LOBYTE(STACK[0x156A]) = BYTE1(v623) ^ 0x5A;
  LOBYTE(STACK[0x14B1]) = v605 ^ (v591 + 44) ^ 0x76;
  LOBYTE(STACK[0x1546]) = BYTE1(v625) ^ 0xB6;
  LOBYTE(STACK[0x145B]) = v611 ^ v590 ^ 0xB2;
  LODWORD(v342) = v605 ^ (LODWORD(STACK[0xBB0]) - 915804664);
  v626 = v608 ^ 0xDE91088E ^ (LODWORD(STACK[0xBA8]) + 358358187);
  LOBYTE(STACK[0x1437]) = v624 ^ 0x6C;
  LOBYTE(STACK[0x1655]) = BYTE2(v625) ^ 0xE5;
  v627 = (v626 ^ 0xFAEC77E6) - ((2 * (v626 ^ 0xFAEC77E6)) & 0x19E275A6) + 217135827;
  LOBYTE(STACK[0x14F0]) = BYTE1(v627) ^ 0x2F;
  v628 = (v342 ^ 0x34BB8247) - ((2 * (v342 ^ 0x34BB8247)) & 0xC40497BC) - 503165986;
  LOBYTE(STACK[0x15DB]) = BYTE2(v628) ^ 0x17;
  LOBYTE(STACK[0x15FF]) = BYTE2(v627) ^ 0xE4;
  LOBYTE(STACK[0x134C]) = HIBYTE(v627) ^ 0x19;
  v629 = v611 ^ (LODWORD(STACK[0xC00]) + 538858521);
  v630 = v605 ^ (LODWORD(STACK[0xBF8]) + 1211428296);
  LOBYTE(STACK[0x13E1]) = v626 ^ 0xF3;
  LOBYTE(STACK[0x13BD]) = v342 ^ 0x52;
  v631 = v538 ^ 0xF903E2A9 ^ (LODWORD(STACK[0xC20]) - 1686751491);
  v632 = (v631 ^ LODWORD(STACK[0x42C])) - ((2 * (v631 ^ LODWORD(STACK[0x42C]))) & 0x81F0082C);
  LOBYTE(STACK[0x1328]) = HIBYTE(v628) ^ 0xF7;
  v633 = (v629 ^ 0xACC5F4DA) - ((2 * (v629 ^ 0xACC5F4DA)) & 0x7A43CA2E) + 1025631511;
  LOBYTE(STACK[0x1694]) = HIBYTE(v633) ^ 0x28;
  v632 -= 1057487850;
  LOBYTE(STACK[0x1670]) = HIBYTE(v632) ^ 0xD5;
  LOBYTE(STACK[0x1585]) = BYTE2(v633) ^ 0x34;
  LOBYTE(STACK[0x1452]) = BYTE1(v632) ^ 0x11;
  LOBYTE(STACK[0x1561]) = BYTE2(v632) ^ 0xED;
  LOBYTE(STACK[0x1367]) = v629 ^ 0xCF;
  LOBYTE(STACK[0x1343]) = v631 ^ 0x19;
  LOBYTE(STACK[0x14CC]) = BYTE1(v628) ^ 0x5E;
  LOBYTE(STACK[0x1476]) = BYTE1(v633) ^ 0xF0;
  v634 = (v630 ^ 0xB36C8587) - ((2 * (v630 ^ 0xB36C8587)) & 0xCBF2A9AC) + 1710838998;
  LOBYTE(STACK[0x15F6]) = HIBYTE(v634) ^ 0x70;
  v635 = v608 ^ 0xDE91088E ^ (LODWORD(STACK[0xC38]) - 549136360);
  LOBYTE(STACK[0x161A]) = HIBYTE(v635) ^ 0xE8;
  v636 = v611 ^ (LODWORD(STACK[0xC30]) - 2144151353);
  v637 = v538 ^ 0xF903E2A9 ^ (LODWORD(STACK[0xC28]) - 463029087);
  LOBYTE(STACK[0x150B]) = BYTE2(v635) ^ 0x87;
  v638 = (v636 ^ 0xCCD07008) - ((2 * (v636 ^ 0xCCD07008)) & 0x37AC8E54) + 467027754;
  LOBYTE(STACK[0x1382]) = BYTE1(v638) ^ 0x52;
  LOBYTE(STACK[0x16AF]) = v635 ^ 0xD1;
  LOBYTE(STACK[0x13FC]) = BYTE1(v635) ^ 0x1F;
  LOBYTE(STACK[0x168B]) = v630 ^ 0x92;
  LOBYTE(STACK[0x15A0]) = HIBYTE(v638) ^ 0xE;
  v639 = (v637 ^ 0x82EF6C50) - ((2 * (v637 ^ 0x82EF6C50)) & 0x70088768) - 1207680076;
  LOBYTE(STACK[0x157C]) = HIBYTE(v639) ^ 0xAD;
  LOBYTE(STACK[0x14E7]) = BYTE2(v634) ^ 0xEC;
  LOBYTE(STACK[0x135E]) = BYTE1(v639) ^ 0x56;
  LOBYTE(STACK[0x1635]) = v636 ^ 0x1D;
  LOBYTE(STACK[0x1611]) = v637 ^ 0x45;
  v640 = v605 ^ (LODWORD(STACK[0xC40]) - 717915037);
  LOBYTE(STACK[0x1491]) = BYTE2(v638) ^ 0xC3;
  v641 = v608 ^ 0xDE91088E ^ (LODWORD(STACK[0xC48]) - 1919053871);
  LOBYTE(STACK[0x13D8]) = BYTE1(v634) ^ 0x41;
  v642 = (v640 ^ 0x206C1428) - ((2 * (v640 ^ 0x206C1428)) & 0xA70EA586) - 746106173;
  LOBYTE(STACK[0x1502]) = HIBYTE(v642) ^ 0xC6;
  v643 = (v641 ^ 0x74A22C94) - ((2 * (v641 ^ 0x74A22C94)) & 0x76C3F2AC) + 996276566;
  LOBYTE(STACK[0x16A6]) = BYTE1(v642) ^ 0x47;
  LOBYTE(STACK[0x1417]) = ((BYTE2(v643) ^ 0x61) - ((2 * (BYTE2(v643) ^ 0x61)) & 0x46) + 35) ^ 0x36;
  LOBYTE(STACK[0x146D]) = BYTE2(v639) ^ 0x11;
  LOBYTE(STACK[0x13F3]) = BYTE2(v642) ^ 0x92;
  v644 = STACK[0xBC0];
  LOBYTE(STACK[0x1526]) = HIBYTE(v643) ^ 0x2E;
  LOBYTE(STACK[0x1597]) = v640 ^ 0x3D;
  LOBYTE(STACK[0x15BB]) = v641 ^ 0x81;
  v645 = v611 ^ (LODWORD(STACK[0xC58]) + 614330863);
  v646 = (v645 ^ 0xA8454930) - ((2 * (v645 ^ 0xA8454930)) & 0xF236F84) - 2020493374;
  LOBYTE(STACK[0x14AC]) = HIBYTE(v646) ^ 0x92;
  v647 = v538 ^ 0xF903E2A9 ^ (LODWORD(STACK[0xC50]) - 122119447);
  v648 = (v647 ^ 0x9EB94E18) - ((2 * (v647 ^ 0x9EB94E18)) & 0x2EB5C066) - 1755652045;
  LOBYTE(STACK[0x1488]) = HIBYTE(v648) ^ 0x82;
  LOBYTE(STACK[0x139D]) = BYTE2(v646) ^ 0x84;
  LOBYTE(STACK[0x1379]) = BYTE2(v648) ^ 0x4F;
  LOBYTE(STACK[0x1650]) = BYTE1(v646) ^ 0xA2;
  LOBYTE(STACK[0x162C]) = BYTE1(v648) ^ 0xF5;
  LOBYTE(STACK[0x1308]) = BYTE1(v641) ^ 9;
  LOBYTE(STACK[0x1541]) = v645 ^ 0x25;
  LOBYTE(STACK[0x151D]) = v647 ^ 0xD;
  v649 = v608 ^ 0xDE91088E ^ (LODWORD(STACK[0xC60]) + 3052);
  v650 = (v649 ^ 0xC8128FF7) + 0xCEDE3EF7047F0F6 - ((2 * (v649 ^ 0xC8128FF7)) & 0xE08FE1ECLL);
  LOBYTE(STACK[0x1432]) = (((v649 ^ 0xC8128FF7) + 1883762934 - ((2 * (v649 ^ 0xC8128FF7)) & 0xE08FE1EC)) >> 24) ^ 0x65;
  v651 = v605 ^ (LODWORD(STACK[0xC70]) - 829171119);
  v652 = (v651 ^ 0x298DB61E) - ((2 * (v651 ^ 0x298DB61E)) & 0x47D6FDE0) - 1544847632;
  LOBYTE(STACK[0x140E]) = HIBYTE(v652) ^ 0xB6;
  v653 = (v650 ^ 0xCEDE3EF7047F0F6uLL) >> (((v342 & 0x18 ^ 0x18) + (v342 & 0x18)) & 0x30);
  LOBYTE(STACK[0x16C1]) = BYTE2(v652) ^ 0xFE;
  LOBYTE(STACK[0x15D6]) = BYTE1(v650) ^ 0xE5;
  LODWORD(v650) = v538 ^ 0xF903E2A9 ^ (LODWORD(STACK[0xC68]) - 1615558320);
  LOBYTE(STACK[0x15B2]) = BYTE1(v652) ^ 0x6B;
  v654 = LODWORD(STACK[0xC78]) + 1450607660;
  LODWORD(STACK[0x788]) = v608 ^ 0xDE91088E;
  v655 = v608 ^ 0xDE91088E ^ v654;
  v656 = (v655 ^ 0x12625635) - 1838047483 + (~(2 * (v655 ^ 0x12625635)) | 0xDB1CC1F7);
  LOBYTE(STACK[0x1323]) = (v653 - ((2 * v653) & 0x46) - 93) ^ 0xB6;
  LOBYTE(STACK[0x14C7]) = v649 ^ 0xE2;
  LODWORD(v653) = v611 ^ (LODWORD(STACK[0xC88]) + 2025803247);
  LOBYTE(STACK[0x14A3]) = v651 ^ 0xB;
  v657 = (v653 ^ 0xF464ED30) - ((2 * (v653 ^ 0xF464ED30)) & 0x66C53AD8) - 1285382804;
  LOBYTE(STACK[0x166B]) = BYTE2(v657) ^ 0x77;
  v658 = (v650 ^ 0xC7BD51A1) - ((2 * (v650 ^ 0xC7BD51A1)) & 0xC3A934CC) - 506160538;
  LOBYTE(STACK[0x1394]) = HIBYTE(v658) ^ 0xF4;
  LOBYTE(STACK[0x13B8]) = HIBYTE(v657) ^ 0xA6;
  LOBYTE(STACK[0x1538]) = BYTE1(v658) ^ 0x8F;
  LOBYTE(STACK[0x1429]) = v650 ^ 0xB4;
  LOBYTE(STACK[0x144D]) = v653 ^ 0x25;
  LOBYTE(STACK[0x1647]) = BYTE2(v658) ^ 0xC1;
  LOBYTE(STACK[0x133E]) = HIBYTE(v656) ^ 0x87;
  LOBYTE(STACK[0x155C]) = BYTE1(v657) ^ 0x88;
  LODWORD(v653) = LODWORD(STACK[0xC98]) - 520560346;
  LODWORD(STACK[0x78C]) = v605;
  LODWORD(v653) = v605 ^ v653;
  v659 = (v653 ^ 0x5C28B165) - ((2 * (v653 ^ 0x5C28B165)) & 0xDEE858) - 2140179412;
  LOBYTE(STACK[0x131A]) = HIBYTE(v659) ^ 0x95;
  LOBYTE(STACK[0x15F1]) = BYTE2(v656) ^ 0x64;
  LOBYTE(STACK[0x15CD]) = BYTE2(v659) ^ 0x7A;
  LOBYTE(STACK[0x14E2]) = BYTE1(v656) ^ 0x8A;
  LOBYTE(STACK[0x13D3]) = v655 ^ 0x20;
  LOBYTE(STACK[0x13AF]) = v653 ^ 0x70;
  LODWORD(v653) = v538 ^ 0xF903E2A9 ^ (LODWORD(STACK[0xC90]) + 1881666614);
  v660 = v611 ^ (LODWORD(STACK[0xCA0]) - 2054115237);
  LODWORD(v650) = (v653 ^ 0x1629A4CB) - ((2 * (v653 ^ 0x1629A4CB)) & 0xD583AAA4) - 356395694;
  LOBYTE(STACK[0x1662]) = ~BYTE3(v650);
  LOBYTE(STACK[0x14BE]) = BYTE1(v659) ^ 0x61;
  v661 = (v660 ^ 0xC733889C) - ((2 * (v660 ^ 0xC733889C)) & 0x6CF6338A) - 1233446459;
  LOBYTE(STACK[0x1577]) = BYTE2(v661) ^ 0x6E;
  LOBYTE(STACK[0x1468]) = BYTE1(v661) ^ 0xC;
  v662 = STACK[0xBB8];
  v663 = 2 * LODWORD(STACK[0xBB8]) - ((4 * LODWORD(STACK[0xBB8]) + 163910360) & 0x10E36DA8);
  LOBYTE(v641) = (BYTE2(v650) ^ 0xC1) - ((2 * (BYTE2(v650) ^ 0xC1)) & 0x6E);
  LOBYTE(STACK[0x1686]) = HIBYTE(v661) ^ 0xA3;
  v664 = LODWORD(STACK[0xD28]) + 1068343035 + ((LODWORD(STACK[0xCB0]) + 1056850009) ^ 0xBD9528AA ^ v611);
  LOBYTE(STACK[0x1444]) = BYTE1(v650) ^ 0xC0;
  LODWORD(v650) = v662 + ((LODWORD(STACK[0xCAC]) - 1481038406) ^ 0xCFB8F54F ^ v538 ^ 0xF903E2A9) - 1972288330;
  LODWORD(v650) = ((v663 + 492060736) ^ 0xF78E492B) + (v650 ^ 0x63D79B7A) + ((2 * v650) & 0xC7AF36F4) - 1675074425;
  LODWORD(STACK[0x998]) = v650 - 1358140911 - ((2 * v650) & 0x5E18D422);
  v665 = STACK[0xC08];
  v666 = LODWORD(STACK[0xC08]) - 1278933979;
  LODWORD(v650) = ((LODWORD(STACK[0xCB8]) - 68956367) ^ 0x53425416 ^ v611) + v666;
  LODWORD(STACK[0x964]) = (v650 ^ 0xB796EBC5) - 1391984393 + ((2 * v650) & 0x6F2DD78A);
  LOBYTE(STACK[0x1359]) = v660 ^ 0x89;
  LODWORD(STACK[0x968]) = (v664 ^ 0xBD3F3EC5) + 1449173131 + ((2 * v664) & 0x7A7E7D8A);
  v667 = LODWORD(STACK[0xD20]) - 712034401 + ((LODWORD(STACK[0xCE4]) + 1782506395) ^ 0xD2D4776C ^ v611);
  LODWORD(STACK[0x944]) = (v667 ^ 0x2DFA7DDF) - 194885912 + ((2 * v667) & 0x5BF4FBBE);
  LOBYTE(STACK[0x1335]) = v653 ^ 0xDE;
  LOBYTE(STACK[0x1553]) = (v641 + 55) ^ 0x22;
  LODWORD(v653) = (LODWORD(STACK[0xCC0]) ^ 0xC8919261 ^ v538 ^ 0xF903E2A9) - LODWORD(STACK[0xD30]) + 149422666;
  v668 = (v653 ^ 0x7FD7FFAF) - 612373030 + ((2 * v653) & 0xFFAFFF5E);
  v669 = LODWORD(STACK[0xD48]) ^ 0x78C03011;
  LODWORD(v653) = ((LODWORD(STACK[0xCCC]) - 81738481) ^ 0x41F255E0 ^ v611) + v669;
  LODWORD(STACK[0x948]) = (v653 ^ 0x77EE58EF) - 715772437 + ((2 * v653) & 0xEFDCB1DE);
  v670 = STACK[0xD38];
  LODWORD(v653) = ((LODWORD(STACK[0xCE8]) - 95815951) ^ 0x980BA200 ^ v538 ^ 0xF903E2A9) - LODWORD(STACK[0xD38]) + 1843427974;
  LODWORD(STACK[0x96C]) = (v653 ^ 0xEED322F5) + 1944977407 + ((2 * v653) & 0xDDA645EA);
  v671 = ((2 * (v669 + v666)) & 0xDDDFEFDE) + ((v669 + v666) ^ 0xEEEFF7EF);
  LODWORD(v653) = ((LODWORD(STACK[0xCE0]) + 326968482) ^ 0xB3C4F457 ^ v538 ^ 0xF903E2A9) - LODWORD(STACK[0xBE8]);
  LODWORD(STACK[0x980]) = (v653 ^ 0xFD7F577F) + 532015786 + ((2 * v653) & 0xFAFEAEFE);
  v672 = v662 - v665 - ((2 * (v662 - v665) - 1386708702) & 0x96A5EDFC) - 1577109617;
  v673 = ((2 * (v670 - 1843427974 + (v672 ^ 0xCB52F6FE))) & 0xDE9F9DF0) + ((v670 - 1843427974 + (v672 ^ 0xCB52F6FE)) ^ 0xEF4FCEF8);
  LODWORD(v653) = (LODWORD(STACK[0xBD0]) + 1252032518) ^ (LODWORD(STACK[0xBE0]) + 1217765701);
  v674 = ((2 * v653) & 0xFDFFF7FC) + (v653 ^ 0x7EFFFBFE);
  v675 = ((LODWORD(STACK[0xCD0]) - 96971975) ^ 0x42EBC7CA ^ v611) + ((LODWORD(STACK[0xBC8]) - 1359874250) ^ 0xD25371FF);
  LODWORD(v653) = ((2 * ((v671 + 286263313) ^ v672)) & 0xEDBF5CBE ^ 0x84A54CBC) + ((v671 + 286263313) ^ v672 ^ 0x3D8D58A1);
  v676 = (v672 & 0xA75D7973 ^ 0x83507072) + (v672 & 0xA75D7973 ^ 0x240D0901);
  v677 = v669 + (v676 ^ 0xFB74F9DE) + ((2 * v676) & 0xD6E9F3AC) + 76219938;
  v678 = ((2 * v677) & 0xBBEDD5E0) + (v677 ^ 0x5DF6EAF0);
  v679 = ((2 * (LODWORD(STACK[0xBF0]) - 1744302063)) & 0xFBF4FFDC ^ 0xD910A050) + ((LODWORD(STACK[0xBF0]) - 1744302063) ^ 0x9172AFC6) - 2113568750 + ((LODWORD(STACK[0xCDC]) + 673970829) ^ 0x7FCC482A ^ v611);
  LODWORD(STACK[0x934]) = (v679 ^ 0xB7E1F6B7) - 1775249943 + ((2 * v679) & 0x6FC3ED6E);
  v680 = v611 ^ (LODWORD(STACK[0xCF8]) + 785251761);
  v681 = v673 - v678;
  LODWORD(STACK[0x4F4]) = v680;
  LODWORD(STACK[0x958]) = ((v673 - v678 + (v680 ^ 0x8E456D42) + 1856445432) ^ 0x73C9DB8B) + 1950550063 + ((2 * (v673 - v678 + (v680 ^ 0x8E456D42) + 1856445432)) & 0xE793B716);
  v682 = ((LODWORD(STACK[0xD00]) + 345720668) ^ 0xB2DA13AD ^ v538 ^ 0xF903E2A9) - v644 - 1845623503;
  v683 = (v682 ^ 0xEF52EEF5) + 2079312887 + ((2 * v682) & 0xDEA5DDEA);
  v684 = (LODWORD(STACK[0xCF0]) - 1740943066) ^ 0xE4E8D9D9;
  LODWORD(STACK[0x508]) = v611;
  LODWORD(STACK[0x950]) = ((v653 + (v684 ^ v611) + 153112993) ^ LODWORD(STACK[0x428])) + 129562152 + ((2 * (v653 + (v684 ^ v611) + 153112993)) & 0x31BFDFF6);
  v685 = ((LODWORD(STACK[0xD10]) + 800778060) ^ 0xEADF71BF ^ v538 ^ 0xF903E2A9) - v674 + 2130705406;
  v686 = (v685 ^ 0xDF77FFCF) + 2112868340 + ((2 * v685) & 0xBEEFFF9E);
  v687 = ((2 * (v678 - 1576463088)) & 0xAC66EFEE ^ 0x8800A040) + ((v678 - 1576463088) ^ 0x3ABBA7DF);
  LODWORD(v688) = LODWORD(STACK[0xBD8]) + 2138881752;
  if (v21)
  {
    v688 = v688;
  }

  else
  {
    v688 = (726944460 - LODWORD(STACK[0xBD8]));
  }

  v689 = ((LODWORD(STACK[0xD08]) - 1281943462) ^ 0xD3DEC0AF ^ v612) - v687 - 701270025;
  v690 = (v689 ^ 0x56FBBB7F) - 100861365 + ((2 * v689) & 0xADF776FE);
  LODWORD(STACK[0x938]) = (v675 ^ 0xDFFDBFFF) - 718943460 + ((2 * v675) & 0xBFFB7FFE);
  v691 = (v584 - 9176081);
  v692 = (LODWORD(STACK[0x9F0]) + 548285903 + v691) >= 0x40;
  v693 = ((LODWORD(STACK[0xD18]) - 223219850) ^ 0x90B3BB8B ^ v612) - (v671 - v681) + 1570182119;
  LODWORD(STACK[0x994]) = (v693 ^ 0xDD6FFE89) + 1660873088 + ((2 * v693) & 0xBADFFD12);
  v694 = !v692;
  v695 = *(STACK[0xD40] + 8 * ((182 * v694) ^ LODWORD(STACK[0xC10])));
  LODWORD(STACK[0x970]) = v668 + 1318;
  LODWORD(STACK[0x988]) = v683 + 3497;
  LODWORD(STACK[0x97C]) = v686 + 3777;
  LODWORD(STACK[0x99C]) = v690 + 1395;
  LODWORD(STACK[0x4F0]) = STACK[0xD98];
  LODWORD(STACK[0x4EC]) = STACK[0xD9C];
  LODWORD(STACK[0x4E8]) = STACK[0xDB8];
  LODWORD(STACK[0x4E4]) = STACK[0xDBC];
  LODWORD(STACK[0x4B8]) = STACK[0xDC0];
  LODWORD(STACK[0x4BC]) = STACK[0xDC4];
  LODWORD(STACK[0x4E0]) = STACK[0xDA0];
  LODWORD(STACK[0x4DC]) = STACK[0xDA4];
  LODWORD(STACK[0x4D4]) = STACK[0xDA8];
  LODWORD(STACK[0x4CC]) = STACK[0xDAC];
  LODWORD(STACK[0x4D8]) = STACK[0xDC8];
  LODWORD(STACK[0x4D0]) = STACK[0xDCC];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x9DC]) >> 31;
  LODWORD(STACK[0x4AC]) = LODWORD(STACK[0x9E0]) << 31;
  LODWORD(STACK[0x4C8]) = STACK[0xDB0];
  LODWORD(STACK[0x4C4]) = STACK[0xDB4];
  LODWORD(STACK[0x7A0]) = LODWORD(STACK[0x9E4]) ^ 0xE7E9B377;
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x9EC]) >> 31;
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x9A0]) ^ 0x6A5ECA8C;
  LODWORD(STACK[0x504]) = LODWORD(STACK[0x824]) << 31;
  LODWORD(STACK[0x4B0]) = STACK[0xDD0];
  LODWORD(STACK[0x4C0]) = STACK[0xDD4];
  LODWORD(STACK[0x4B4]) = STACK[0xE58];
  STACK[0x798] = v691;
  LODWORD(STACK[0xD30]) = 300682018;
  LODWORD(STACK[0x9F4]) = 2057786580;
  v696 = STACK[0xD50];
  return v695(v688);
}

uint64_t sub_1BAE03830@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W8>)
{
  v7 = (a1 + a2 - ((2 * (a1 + a2) + 2027991794) & 0xBB593B04) - 1709377797) ^ v3 & 0xFFFFFF7F;
  v8 = ((2 * ((v5 - 1570182119) ^ (v4 + 310247284))) & 0x9FBA77AC) + ((v5 - 1570182119) ^ (v4 + 310247284) ^ 0x4FDD3BD6);
  LODWORD(STACK[0xD48]) = v4 - 766273024 + v8 - 34159376;
  LODWORD(STACK[0xBC8]) = a3 - 1898634227 + v4;
  LODWORD(STACK[0xD20]) = v6 - v4 - 1797019936 + v8 - 34159376;
  LODWORD(STACK[0xBE0]) = a2 + 80943426 + ((2 * v7) & 0x635BFFDA ^ 0x35BD9DA) + (v7 ^ 0x3E521310) - 287869448;
  v9 = STACK[0x49C];
  v10 = LODWORD(STACK[0x49C]) - 929;
  v11 = 5 * (LODWORD(STACK[0x49C]) ^ 0x8B4);
  v12 = LODWORD(STACK[0xBA0]) != 1474259754;
  LODWORD(STACK[0xBE8]) = v8 - 164309717;
  return (*(STACK[0xD40] + 8 * ((((v11 + 177) ^ v10) * v12) ^ v9)))();
}

uint64_t sub_1BAE039B0@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0xBD8]) = a1;
  LODWORD(STACK[0xD28]) = v3;
  LODWORD(STACK[0xBD0]) = v2 - 140380999;
  v5 = (a2 - 1302045636) & 0x4D9BA3F8;
  LODWORD(STACK[0x49C]) = -2117400131 - v4;
  LODWORD(STACK[0xBF0]) = v5;
  v6 = *(STACK[0xD40] + 8 * (((v4 - 1876885083 < (v5 - 944)) * (((a2 - 891) | 0x42A) + 1374)) ^ a2));
  LODWORD(STACK[0x9F4]) = 2057786580;
  return v6();
}

uint64_t sub_1BAE03A78()
{
  v1 = STACK[0x4A0] - 0x3FD06D7B1280A31;
  v2 = STACK[0x798];
  return (*(STACK[0xD40] + 8 * (v0 - 166)))();
}

uint64_t sub_1BAE03AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7, char a8)
{
  v16 = ((v10 - v15 + 1782568426) + v9);
  v17 = (v10 * v13 - 2096488350) % (v8 - 168);
  v18 = ((2 * v17) & 0x75C) + (v17 ^ 0x3EDF1FAE);
  v19 = ((2 * v17) & 0x7FC) + (v17 ^ 0x5B9FDFFE);
  v20 = &v16[-((2 * v16) & 0x848ADDF34270C5B8) + 0x42456EF9A13862DCLL];
  v22 = ((((v20 << 56) ^ 0xDC00000000000000) - ((2 * ((v20 << 56) ^ 0xDC00000000000000)) & 0x5555555555555555) - 0x55869FAC056A29BBLL) & 0xF800000000000000 ^ 0xA800000000000000) + a4;
  v23 = v18 | (((v18 - 272762628) < 0x2E9D18AA) << 32);
  v24 = ((v20 >> 8) ^ 0x42456EF9A13862) + (v22 ^ 0x11FF1EED7BE76F5FLL) + ((2 * v22) & 0x21061DD89304DA1CLL) - 0x11FF1EED7BE76F5FLL;
  v25 = v24 - ((2 * v24) & 0x6DD870D6566B4A3ELL) - 0x4913C794D4CA5AE1;
  *(&v26 + 1) = v25 ^ 1;
  *&v26 = v25 ^ 0xAAA9619569C7E200;
  v27 = v19 | (((v19 - 1233197856) < 0x121EC4DE) << 32);
  v28 = (v25 ^ 0x3EB71EF725900E70) + ((v26 >> 8) ^ 0xF757BBFF67EFDE6BLL) + ((2 * (v26 >> 8)) & 0xEEAF77FECFDFBCD6) + 0x6BD36A5621673FACLL + (~(2 * ((v25 ^ 0x3EB71EF725900E70) + ((v26 >> 8) ^ 0xF757BBFF67EFDE6BLL) + ((2 * (v26 >> 8)) & 0xEEAF77FECFDFBCD6) + 0x8A8440098102195)) | 0x39A9B354ED51C3D3);
  *(&v26 + 1) = v25 ^ 0x1EB71EF725900E70;
  *&v26 = v25 ^ 0x2000000000000000;
  v29 = v28 ^ ((v26 >> 61) - ((2 * (v26 >> 61)) & 0x73508ECD03FD88E0) + 0x39A8476681FEC470);
  *(&v26 + 1) = v28 ^ 0xCA;
  *&v26 = v28 ^ 0x821E26FA11E7DE00;
  v30 = v26 >> 8;
  *(&v26 + 1) = v29 ^ 0x1BB6619C90191ABALL;
  *&v26 = v29 ^ 0xBFFFFFFFFFFFFFFFLL;
  v31 = (v29 ^ 0xBBB6619C90191ABALL) + (v30 ^ 0x353AFEB7EBF5BDCDLL) + ((2 * v30) & 0x6A75FD6FD7EB7B9ALL) - 0x353AFEB7EBF5BDCDLL;
  v32 = v31 - ((2 * v31) & 0x2573AB504D32567CLL) + 0x12B9D5A826992B3ELL;
  v33 = v32 ^ ((v26 >> 61) - ((2 * (v26 >> 61)) & 0x4BD248DAEB55E112) + 0x25E9246D75AAF089);
  *(&v26 + 1) = v32 ^ 0xC;
  *&v26 = v32 ^ 0x1629F0AA1520CE00;
  v34 = v26 >> 8;
  *(&v26 + 1) = v33 ^ 0x13C0D4C7608A3E85;
  *&v26 = v33 ^ 0x2000000000000000;
  v35 = (v33 ^ 0x33C0D4C7608A3E85) + (v34 ^ 0xBDF6F6BC6FCDFBCFLL) + ((2 * v34) & 0x7BEDED78DF9BF79ELL) + 0x4209094390320431;
  v36 = v35 - ((2 * v35) & 0x8322EF822CAFBE8) + 0x419177C11657DF4;
  v37 = v36 ^ ((v26 >> 61) - ((2 * (v26 >> 61)) & 0x5C006ABE9C408C56) + 0x2E00355F4E20462BLL);
  *(&v26 + 1) = v36 ^ 0x73;
  *&v26 = v36 ^ 0xF905624F3E1A7100;
  v38 = v23 + v14;
  v39 = (v37 ^ 0xD7055710703A3758) + ((v26 >> 8) ^ 0x53BDEFB7DBCFCEDFLL) + ((2 * (v26 >> 8)) & 0xA77BDF6FB79F9DBELL);
  v40 = (2 * v39 + 0x5884209048606242) & 0x6257C9531A2AF00;
  v39 += 0x2F54CE92BD0188A1;
  v41 = v39 - v40;
  *(&v26 + 1) = v37 ^ 0x17055710703A3758;
  *&v26 = v37 ^ 0xC000000000000000;
  v42 = v41 ^ ((v26 >> 61) - ((2 * (v26 >> 61)) & 0xA708CF222A2E99DELL) + 0x5384679115174CEFLL);
  *(&v26 + 1) = v39 ^ 0x10;
  *&v26 = v41 ^ 0x7F070543B1188F00;
  v43 = (v42 ^ 0x2C8362D2A40FC3FFLL) + ((v26 >> 8) ^ 0xED7FDDAD5FFBB583) + ((2 * (v26 >> 8)) & 0xDAFFBB5ABFF76B06) + 0x12802252A0044A7DLL;
  *(&v26 + 1) = v42 ^ 0xC8362D2A40FC3FFLL;
  *&v26 = v42 ^ 0x2000000000000000;
  v44 = v43 - ((2 * v43) & 0x95AEBCABB76CBE08) + 0x4AD75E55DBB65F04;
  v45 = (v26 >> 61) - ((2 * (v26 >> 61)) & 0xD0E4EBE08C7A1422) - 0x178D8A0FB9C2F5EFLL;
  v46 = ((v44 ^ v45) & 0x4B876952F452CECFLL ^ 0x285290094024405) + ((v44 ^ v45) & 0x4B876952F452CECFLL ^ 0x4902405260508ACALL);
  *(v27 + v14 - 1537204222) = *(v38 - 1054810030) ^ *v16;
  v47 = (v46 - ((2 * v46) & 0x2E0E1769D1499A30) - 0x68F8F04B145B32E8) ^ v44;
  *(&v26 + 1) = v47 ^ 0x1C;
  *&v26 = v47 ^ 0xDDD051E130129200;
  v48 = (v44 ^ v45 ^ 0xE92242F769D99BDALL) + ((v26 >> 8) ^ 0xEFF3D3BFDF5EAEFDLL) + ((2 * (v26 >> 8)) & 0xDFE7A77FBEBD5DFALL) + 0x100C2C4020A15103;
  v49 = v48 - ((2 * v48) & 0xE28C073084590456) + 0x71460398422C822BLL;
  *(&v26 + 1) = v44 ^ v45 ^ 0x92242F769D99BDALL;
  *&v26 = v44 ^ ~v45;
  v50 = (v26 >> 61) - ((2 * (v26 >> 61)) & 0x879D6D53644DB846);
  *(&v26 + 1) = v49 ^ a5;
  *&v26 = v49 ^ 0xB94FDD0BF0B61E00;
  v51 = ((v50 + 0x43CEB6A9B226DC23) ^ 0xFA816BA24290C2AELL ^ v49) + ((v26 >> 8) ^ 0xFDEEF3BDFEE75E73) + ((2 * (v26 >> 8)) & 0xFBDDE77BFDCEBCE6);
  v52 = ((v51 + 0x2110C420118A18DLL - ((2 * (v51 + 0x2110C420118A18DLL)) & 0xF5BE3B7517520006) - 0x520E2457456FFFDLL) ^ 0x1E0FF800A9D74CA3) >> ((((8 * (v16 - ((2 * v16) & 0xB8) - 36)) ^ 0x20) - 16 * (v16 & 1) + 43) & 0x38u ^ a8);
  v21 = ((2 * (v10 * v13 - 23132 - (((v10 * v13 - 23132) * v11) >> 19) * v12)) & 0x7FC) + ((v10 * v13 - 23132 - ((((v10 * v13 - 23132) * v11) >> 16) >> 3) * v12) ^ 0x45FEEFFE);
  *((v21 | (((v21 - 67898386) < 0x41F2E3EC) << 32)) + v14 - 1174335486) ^= a7 ^ (v52 - ((2 * v52) & 0x30) - 104);
  LODWORD(STACK[0xBF0]) = v8 - 122;
  v53 = *(STACK[0xD40] + 8 * ((127 * ((v10 - 1867709001) < 0x40)) ^ (v8 - 175)));
  LODWORD(STACK[0x9F4]) = 2057786580;
  return v53();
}