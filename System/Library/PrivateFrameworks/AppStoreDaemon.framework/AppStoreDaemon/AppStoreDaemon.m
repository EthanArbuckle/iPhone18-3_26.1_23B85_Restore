id getLSApplicationWorkspaceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_4;
  v7 = _MergedGlobals_4;
  if (!_MergedGlobals_4)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLSApplicationWorkspaceClass_block_invoke;
    v3[3] = &unk_1E7CDBA78;
    v3[4] = &v4;
    __getLSApplicationWorkspaceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B8221D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ASDLogHandleForCategory(uint64_t a1)
{
  if (ASDLogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&ASDLogHandleForCategory_onceToken, &__block_literal_global_12);
  }

  v2 = ASDLogHandleForCategory_logHandles[a1];

  return v2;
}

void sub_1B82225C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&a43);
  objc_destroyWeak((v49 - 200));
  objc_destroyWeak((v49 - 160));
  objc_destroyWeak((v49 - 120));
  objc_destroyWeak((v49 - 112));
  _Unwind_Resume(a1);
}

uint64_t __ASDLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.appstored", "Activity");
  v1 = ASDLogHandleForCategory_logHandles;
  ASDLogHandleForCategory_logHandles = v0;

  v2 = os_log_create("com.apple.appstored", "AppCapabilities");
  v3 = qword_1ED90D6A0;
  qword_1ED90D6A0 = v2;

  v4 = os_log_create("com.apple.appstored", "AppInstall");
  v5 = qword_1ED90D6A8;
  qword_1ED90D6A8 = v4;

  v6 = os_log_create("com.apple.appstored", "AppUsage");
  v7 = qword_1ED90D6B0;
  qword_1ED90D6B0 = v6;

  v8 = os_log_create("com.apple.appstored", "Arcade");
  v9 = qword_1ED90D6B8;
  qword_1ED90D6B8 = v8;

  v10 = os_log_create("com.apple.appstored", "Bag");
  v11 = qword_1ED90D6C0;
  qword_1ED90D6C0 = v10;

  v12 = os_log_create("com.apple.appstored", "Cleanup");
  v13 = qword_1ED90D6C8;
  qword_1ED90D6C8 = v12;

  v14 = os_log_create("com.apple.appstored", "Clips");
  v15 = qword_1ED90D6D0;
  qword_1ED90D6D0 = v14;

  v16 = os_log_create("com.apple.appstored", "DAAP");
  v17 = qword_1ED90D6D8;
  qword_1ED90D6D8 = v16;

  v18 = os_log_create("com.apple.appstored", "Daemon");
  v19 = qword_1ED90D6E0;
  qword_1ED90D6E0 = v18;

  v20 = os_log_create("com.apple.appstored", "Download");
  v21 = qword_1ED90D6E8;
  qword_1ED90D6E8 = v20;

  v22 = os_log_create("com.apple.appstored", "EventsExtension");
  v23 = qword_1ED90D6F0;
  qword_1ED90D6F0 = v22;

  v24 = os_log_create("com.apple.appstored", "Extension");
  v25 = qword_1ED90D6F8;
  qword_1ED90D6F8 = v24;

  v26 = os_log_create("com.apple.appstored", "Framework");
  v27 = qword_1ED90D700;
  qword_1ED90D700 = v26;

  v28 = os_log_create("com.apple.appstored", "General");
  v29 = qword_1ED90D708;
  qword_1ED90D708 = v28;

  v30 = os_log_create("com.apple.appstored", "Library");
  v31 = qword_1ED90D710;
  qword_1ED90D710 = v30;

  v32 = os_log_create("com.apple.appstored", "Metrics");
  v33 = qword_1ED90D718;
  qword_1ED90D718 = v32;

  v34 = os_log_create("com.apple.appstored", "Migrate");
  v35 = qword_1ED90D720;
  qword_1ED90D720 = v34;

  v36 = os_log_create("com.apple.appstored", "StoreKitInXcode");
  v37 = qword_1ED90D728;
  qword_1ED90D728 = v36;

  v38 = os_log_create("com.apple.appstored", "ODR");
  v39 = qword_1ED90D730;
  qword_1ED90D730 = v38;

  v40 = os_log_create("com.apple.appstored", "Offloading");
  v41 = qword_1ED90D738;
  qword_1ED90D738 = v40;

  v42 = os_log_create("com.apple.appstored", "Daemon-Oversize");
  v43 = qword_1ED90D740;
  qword_1ED90D740 = v42;

  v44 = os_log_create("com.apple.appstored", "Performance");
  v45 = qword_1ED90D748;
  qword_1ED90D748 = v44;

  v46 = os_log_create("com.apple.appstored", "PrivilegedTask");
  v47 = qword_1ED90D750;
  qword_1ED90D750 = v46;

  v48 = os_log_create("com.apple.appstored", "Progress");
  v49 = qword_1ED90D758;
  qword_1ED90D758 = v48;

  v50 = os_log_create("com.apple.appstored", "Purchase");
  v51 = qword_1ED90D760;
  qword_1ED90D760 = v50;

  v52 = os_log_create("com.apple.appstored", "Push");
  v53 = qword_1ED90D768;
  qword_1ED90D768 = v52;

  v54 = os_log_create("com.apple.appstored", "QA");
  v55 = qword_1ED90D770;
  qword_1ED90D770 = v54;

  v56 = os_log_create("com.apple.appstored", "Repair");
  v57 = qword_1ED90D778;
  qword_1ED90D778 = v56;

  v58 = os_log_create("com.apple.appstored", "Restore");
  v59 = qword_1ED90D780;
  qword_1ED90D780 = v58;

  v60 = os_log_create("com.apple.appstored", "Scheduler");
  v61 = qword_1ED90D788;
  qword_1ED90D788 = v60;

  v62 = os_log_create("com.apple.appstored", "Signpost");
  v63 = qword_1ED90D790;
  qword_1ED90D790 = v62;

  v64 = os_log_create("com.apple.appstored", "SKAdNetwork");
  v65 = qword_1ED90D798;
  qword_1ED90D798 = v64;

  v66 = os_log_create("com.apple.appstored", "Skanner");
  v67 = qword_1ED90D7A0;
  qword_1ED90D7A0 = v66;

  v68 = os_log_create("com.apple.appstored", "SoftwareMap");
  v69 = qword_1ED90D7A8;
  qword_1ED90D7A8 = v68;

  v70 = os_log_create("com.apple.appstored", "SQL");
  v71 = qword_1ED90D7B0;
  qword_1ED90D7B0 = v70;

  v72 = os_log_create("com.apple.appstored", "StoreKit");
  v73 = qword_1ED90D7B8;
  qword_1ED90D7B8 = v72;

  v74 = os_log_create("com.apple.appstored", "Subscription");
  v75 = qword_1ED90D7C0;
  qword_1ED90D7C0 = v74;

  v76 = os_log_create("com.apple.appstored", "TestFlightFeedback");
  v77 = qword_1ED90D7C8;
  qword_1ED90D7C8 = v76;

  v78 = os_log_create("com.apple.appstored", "TestFlightExtension");
  v79 = qword_1ED90D7D0;
  qword_1ED90D7D0 = v78;

  v80 = os_log_create("com.apple.appstored", "Updates");
  v81 = qword_1ED90D7D8;
  qword_1ED90D7D8 = v80;

  v82 = os_log_create("com.apple.appstored", "VPP");
  v83 = qword_1ED90D7E0;
  qword_1ED90D7E0 = v82;

  qword_1ED90D7E8 = os_log_create("com.apple.appstored", "XDC");

  return MEMORY[0x1EEE66BB8]();
}

void String.init(appStoreDaemonLocalized:comment:)(uint64_t a1)
{
  v35 = a1;
  v1 = *(*(sub_1B82A4834() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B82A4864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B82A4804();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = "bileCoreServices";
  sub_1B82A47E4();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v15 = sub_1B82A47F4();
  v16 = [v14 initWithURL_];

  v17 = *(v10 + 8);
  v34 = v10 + 8;
  v17(v13, v9);
  if (!v16)
  {
    goto LABEL_8;
  }

  v31 = v17;
  v32 = v9;
  v30[1] = v3;
  v18 = v4;
  v19 = v35;
  v20 = [v16 localizations];

  if (!v20)
  {
    sub_1B82A48A4();
    v20 = sub_1B82A4894();
  }

  v21 = objc_opt_self();
  sub_1B82A4814();
  v22 = sub_1B82A4894();

  v23 = [v21 preferredLocalizationsFromArray:v20 forPreferences:v22];

  v24 = sub_1B82A48A4();
  if (!v24[2])
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = v24[4];
  v26 = v24[5];

  (*(v5 + 16))(v8, v19, v18);
  sub_1B82A47E4();
  v27 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v28 = sub_1B82A47F4();
  v29 = [v27 initWithURL_];

  v31(v13, v32);
  if (v29)
  {
    sub_1B82A4824();
    sub_1B82A4884();
    (*(v5 + 8))(v19, v18);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t String.init(appStoreDaemonLocalized:defaultValue:comment:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v21 = a3;
  v20[1] = a1;
  v20[2] = a2;
  v5 = *(*(sub_1B82A4834() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = sub_1B82A4804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B82A4864();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  (*(v12 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
  sub_1B82A47E4();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v16 = sub_1B82A47F4();
  v17 = [v15 initWithURL_];

  result = (*(v7 + 8))(v10, v6);
  if (v17)
  {
    sub_1B82A4824();
    v19 = sub_1B82A4874();
    (*(v12 + 8))(a4, v11);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for ASDInstallAttributionVersion()
{
  if (!qword_1EBA80380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA80380);
    }
  }
}

void *sub_1B82259EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1B8225A18()
{
  result = qword_1EBA80388;
  if (!qword_1EBA80388)
  {
    type metadata accessor for ASDInstallAttributionVersion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA80388);
  }

  return result;
}

const char *FeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "EphemeralAccount";
  }

  else
  {
    return "ActiveRestoreSupport";
  }
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1B82A48B4();
  MEMORY[0x1B8CBBCC0](v1);
  return sub_1B82A48D4();
}

uint64_t sub_1B8225BA8()
{
  v1 = *v0;
  sub_1B82A48B4();
  MEMORY[0x1B8CBBCC0](v1);
  return sub_1B82A48D4();
}

uint64_t sub_1B8225C1C()
{
  v1 = *v0;
  sub_1B82A48B4();
  MEMORY[0x1B8CBBCC0](v1);
  return sub_1B82A48D4();
}

const char *sub_1B8225C74()
{
  if (*v0)
  {
    return "EphemeralAccount";
  }

  else
  {
    return "ActiveRestoreSupport";
  }
}

unint64_t sub_1B8225CFC()
{
  result = qword_1EBA80378;
  if (!qword_1EBA80378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA80378);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x1EEE6C0A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1B8225DA0()
{
  result = qword_1EBA80390;
  if (!qword_1EBA80390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA80390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static Logger.activity.getter()
{
  v0 = ASD_LOG_ACTIVITY();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_ACTIVITY()
{
  v0 = ASDLogHandleForCategory(0);

  return v0;
}

uint64_t static Logger.appCapabilities.getter()
{
  v0 = ASD_LOG_APP_CAPABILITIES();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_APP_CAPABILITIES()
{
  v0 = ASDLogHandleForCategory(1);

  return v0;
}

uint64_t static Logger.appInstall.getter()
{
  v0 = ASD_LOG_APPINSTALL();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_APPINSTALL()
{
  v0 = ASDLogHandleForCategory(2);

  return v0;
}

uint64_t static Logger.appUsage.getter()
{
  v0 = ASD_LOG_APPUSAGE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_APPUSAGE()
{
  v0 = ASDLogHandleForCategory(3);

  return v0;
}

uint64_t static Logger.arcade.getter()
{
  v0 = ASD_LOG_ARCADE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_ARCADE()
{
  v0 = ASDLogHandleForCategory(4);

  return v0;
}

uint64_t static Logger.bag.getter()
{
  v0 = ASD_LOG_BAG();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_BAG()
{
  v0 = ASDLogHandleForCategory(5);

  return v0;
}

uint64_t static Logger.cleanup.getter()
{
  v0 = ASD_LOG_CLEANUP();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_CLEANUP()
{
  v0 = ASDLogHandleForCategory(6);

  return v0;
}

uint64_t static Logger.clips.getter()
{
  v0 = ASD_LOG_CLIPS();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_CLIPS()
{
  v0 = ASDLogHandleForCategory(7);

  return v0;
}

uint64_t static Logger.daap.getter()
{
  v0 = ASD_LOG_DAAP();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_DAAP()
{
  v0 = ASDLogHandleForCategory(8);

  return v0;
}

uint64_t static Logger.daemon.getter()
{
  v0 = ASD_LOG_DAEMON();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_DAEMON()
{
  v0 = ASDLogHandleForCategory(9);

  return v0;
}

uint64_t static Logger.daemonOversize.getter()
{
  v0 = ASD_LOG_OVERSIZE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_OVERSIZE()
{
  v0 = ASDLogHandleForCategory(21);

  return v0;
}

uint64_t static Logger.download.getter()
{
  v0 = ASD_LOG_DOWNLOAD();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_DOWNLOAD()
{
  v0 = ASDLogHandleForCategory(10);

  return v0;
}

uint64_t static Logger.eventsExtension.getter()
{
  v0 = ASD_LOG_EVENTS_EXT();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_EVENTS_EXT()
{
  v0 = ASDLogHandleForCategory(11);

  return v0;
}

uint64_t static Logger.extension.getter()
{
  v0 = ASD_LOG_EXTENSION();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_EXTENSION()
{
  v0 = ASDLogHandleForCategory(12);

  return v0;
}

uint64_t static Logger.framework.getter()
{
  v0 = ASD_LOG_FRAMEWORK();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_FRAMEWORK()
{
  v0 = ASDLogHandleForCategory(13);

  return v0;
}

uint64_t static Logger.general.getter()
{
  v0 = ASD_LOG_GENERAL();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_GENERAL()
{
  v0 = ASDLogHandleForCategory(14);

  return v0;
}

uint64_t static Logger.library.getter()
{
  v0 = ASD_LOG_LIBRARY();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_LIBRARY()
{
  v0 = ASDLogHandleForCategory(15);

  return v0;
}

uint64_t static Logger.metrics.getter()
{
  v0 = ASD_LOG_METRICS();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_METRICS()
{
  v0 = ASDLogHandleForCategory(16);

  return v0;
}

uint64_t static Logger.migrate.getter()
{
  v0 = ASD_LOG_MIGRATE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_MIGRATE()
{
  v0 = ASDLogHandleForCategory(17);

  return v0;
}

uint64_t static Logger.odr.getter()
{
  v0 = ASD_LOG_ODR();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_ODR()
{
  v0 = ASDLogHandleForCategory(19);

  return v0;
}

uint64_t static Logger.offloading.getter()
{
  v0 = ASD_LOG_OFFLOADING();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_OFFLOADING()
{
  v0 = ASDLogHandleForCategory(20);

  return v0;
}

uint64_t static Logger.performance.getter()
{
  v0 = ASD_LOG_PERFORMANCE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_PERFORMANCE()
{
  v0 = ASDLogHandleForCategory(22);

  return v0;
}

uint64_t static Logger.privilegedTask.getter()
{
  v0 = ASD_LOG_PRIVTASK();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_PRIVTASK()
{
  v0 = ASDLogHandleForCategory(23);

  return v0;
}

uint64_t static Logger.progress.getter()
{
  v0 = ASD_LOG_PROGRESS();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_PROGRESS()
{
  v0 = ASDLogHandleForCategory(24);

  return v0;
}

uint64_t static Logger.purchase.getter()
{
  v0 = ASD_LOG_PURCHASE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_PURCHASE()
{
  v0 = ASDLogHandleForCategory(25);

  return v0;
}

uint64_t static Logger.push.getter()
{
  v0 = ASD_LOG_PUSH();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_PUSH()
{
  v0 = ASDLogHandleForCategory(26);

  return v0;
}

uint64_t static Logger.qa.getter()
{
  v0 = ASD_LOG_QA();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_QA()
{
  v0 = ASDLogHandleForCategory(27);

  return v0;
}

uint64_t static Logger.repair.getter()
{
  v0 = ASD_LOG_REPAIR();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_REPAIR()
{
  v0 = ASDLogHandleForCategory(28);

  return v0;
}

uint64_t static Logger.restore.getter()
{
  v0 = ASD_LOG_RESTORE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_RESTORE()
{
  v0 = ASDLogHandleForCategory(29);

  return v0;
}

uint64_t static Logger.scheduler.getter()
{
  v0 = ASD_LOG_SCHEDULER();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SCHEDULER()
{
  v0 = ASDLogHandleForCategory(30);

  return v0;
}

uint64_t static Logger.signpost.getter()
{
  v0 = ASD_LOG_SIGNPOST();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SIGNPOST()
{
  v0 = ASDLogHandleForCategory(31);

  return v0;
}

uint64_t static Logger.skAdNetwork.getter()
{
  v0 = ASD_LOG_SKADNETWORK();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SKADNETWORK()
{
  v0 = ASDLogHandleForCategory(32);

  return v0;
}

uint64_t static Logger.skanner.getter()
{
  v0 = ASD_LOG_SKANNER();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SKANNER()
{
  v0 = ASDLogHandleForCategory(33);

  return v0;
}

uint64_t static Logger.softwareMap.getter()
{
  v0 = ASD_LOG_SOFTWAREMAP();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SOFTWAREMAP()
{
  v0 = ASDLogHandleForCategory(34);

  return v0;
}

uint64_t static Logger.sql.getter()
{
  v0 = ASD_LOG_SQL();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SQL()
{
  v0 = ASDLogHandleForCategory(35);

  return v0;
}

uint64_t static Logger.storeKit.getter()
{
  v0 = ASD_LOG_STOREKIT();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_STOREKIT()
{
  v0 = ASDLogHandleForCategory(36);

  return v0;
}

uint64_t static Logger.storeKitInXcode.getter()
{
  v0 = ASD_LOG_OCTANE();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_OCTANE()
{
  v0 = ASDLogHandleForCategory(18);

  return v0;
}

uint64_t static Logger.subscription.getter()
{
  v0 = ASD_LOG_SUB();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_SUB()
{
  v0 = ASDLogHandleForCategory(37);

  return v0;
}

uint64_t static Logger.testFlightFeedback.getter()
{
  v0 = ASD_LOG_TESTFLIGHT();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_TESTFLIGHT()
{
  v0 = ASDLogHandleForCategory(38);

  return v0;
}

uint64_t static Logger.testFlightExtension.getter()
{
  v0 = ASD_LOG_TESTFLIGHT_EXT();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_TESTFLIGHT_EXT()
{
  v0 = ASDLogHandleForCategory(39);

  return v0;
}

uint64_t static Logger.updates.getter()
{
  v0 = ASD_LOG_UPDATES();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_UPDATES()
{
  v0 = ASDLogHandleForCategory(40);

  return v0;
}

uint64_t static Logger.vpp.getter()
{
  v0 = ASD_LOG_VPP();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_VPP()
{
  v0 = ASDLogHandleForCategory(41);

  return v0;
}

uint64_t static Logger.xdc.getter()
{
  v0 = ASD_LOG_XDC();

  return MEMORY[0x1EEE6EA10](v0);
}

id ASD_LOG_XDC()
{
  v0 = ASDLogHandleForCategory(42);

  return v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED90D448)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __NanoRegistryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7CDBA98;
    v7 = 0;
    qword_1ED90D448 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ED90D448)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED90D440 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED90D448 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B8231C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8231F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B8232DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B8234E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B8237CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v3 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(result + 56) = v3;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_1B8239CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B823A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823A66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823B61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823C29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823C610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823C914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823CC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B823CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B8248534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B8248798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ASA(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void ASDWithLock(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 lock];
  v3[2](v3);

  [v4 unlock];
}

void sub_1B824F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B824F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B824F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B824FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B824FF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B82501A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B82504D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8250748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8250A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8250DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8251264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8251598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8251A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8251D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B82522F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8252628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B825289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8252B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B8256A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B8256FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ASDInstallAttributionVersionCreateFromString(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"[. withString:]" options:@"." range:{1024, 0, objc_msgSend(v1, "length")}];

  if (qword_1ED90D540 != -1)
  {
    dispatch_once(&qword_1ED90D540, &__block_literal_global_11);
  }

  v3 = [_MergedGlobals_37 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __ASDInstallAttributionVersionCreateFromString_block_invoke()
{
  v0 = _MergedGlobals_37;
  _MergedGlobals_37 = &unk_1F3033350;
}

void sub_1B8257EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __ErrorWithUnderlyingErrorAndPredicate(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E695DF90];
  v5 = a2;
  v6 = [v4 dictionary];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 predicateFormat];

  v9 = [v7 stringWithFormat:@"Failed to execute query '%@'.", v8];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v3)
  {
    [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDAppQueryErrorDomain" code:1 userInfo:v6];

  return v10;
}

uint64_t ASDAggregateClusterMappingDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = 0x1ED90A000uLL;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v92) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v92 & 0x7F) << v6;
        if ((v92 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v13 & 7;
      if (v14 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v15 = v13 >> 3;
      if ((v13 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            if (v14 != 2)
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                LOBYTE(v92) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v92 & 0x7F) << v60;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_161;
                }

                v60 += 7;
                v12 = v61++ >= 9;
                if (v12)
                {
                  goto LABEL_162;
                }
              }
            }

            v92 = 0;
            v93 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v38 = [a2 position];
              if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                v94 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v94 & 0x7F) << v39;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v12 = v40++ >= 9;
                if (v12)
                {
                  goto LABEL_78;
                }
              }

              [a2 hasError];
LABEL_78:
              PBRepeatedInt32Add();
            }

LABEL_111:
            PBReaderRecallMark();
            goto LABEL_163;
          case 5:
            if (v14 != 2)
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              while (1)
              {
                LOBYTE(v92) = 0;
                v88 = [a2 position] + 1;
                if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                {
                  v90 = [a2 data];
                  [v90 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v87 |= (v92 & 0x7F) << v85;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                v12 = v86++ >= 9;
                if (v12)
                {
                  goto LABEL_162;
                }
              }

LABEL_161:
              [a2 hasError];
LABEL_162:
              PBRepeatedInt32Add();
              v5 = 0x1ED90A000;
              goto LABEL_163;
            }

            v92 = 0;
            v93 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v53 = [a2 position];
              if (v53 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_111;
              }

              v54 = 0;
              v55 = 0;
              v56 = 0;
              while (1)
              {
                v94 = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  v59 = [a2 data];
                  [v59 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v94 & 0x7F) << v54;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v12 = v55++ >= 9;
                if (v12)
                {
                  goto LABEL_110;
                }
              }

              [a2 hasError];
LABEL_110:
              PBRepeatedInt32Add();
            }

          case 6:
            if (v14 != 2)
            {
              v72 = 0;
              v73 = 0;
              v74 = 0;
              while (1)
              {
                LOBYTE(v92) = 0;
                v75 = [a2 position] + 1;
                if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                {
                  v77 = [a2 data];
                  [v77 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v74 |= (v92 & 0x7F) << v72;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_161;
                }

                v72 += 7;
                v12 = v73++ >= 9;
                if (v12)
                {
                  goto LABEL_162;
                }
              }
            }

            v92 = 0;
            v93 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v24 = [a2 position];
              if (v24 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_111;
              }

              v25 = 0;
              v26 = 0;
              v27 = 0;
              while (1)
              {
                v94 = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v94 & 0x7F) << v25;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v12 = v26++ >= 9;
                if (v12)
                {
                  goto LABEL_54;
                }
              }

              [a2 hasError];
LABEL_54:
              PBRepeatedInt32Add();
            }
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              LOBYTE(v92) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v92 & 0x7F) << v31;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v12 = v32++ >= 9;
              if (v12)
              {
                v37 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v33;
            }

LABEL_115:
            *(a1 + 128) = v37;
            goto LABEL_163;
          case 2:
            if (v14 != 2)
            {
              v78 = 0;
              v79 = 0;
              v80 = 0;
              v81 = *(v5 + 3828);
              while (1)
              {
                LOBYTE(v92) = 0;
                v82 = [a2 position] + 1;
                if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
                {
                  v84 = [a2 data];
                  [v84 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v80 |= (v92 & 0x7F) << v78;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_161;
                }

                v78 += 7;
                v12 = v79++ >= 9;
                if (v12)
                {
                  goto LABEL_162;
                }
              }
            }

            v92 = 0;
            v93 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_111;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v94 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v94 & 0x7F) << v46;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v12 = v47++ >= 9;
                if (v12)
                {
                  goto LABEL_95;
                }
              }

              [a2 hasError];
LABEL_95:
              v52 = *(v5 + 3828);
              PBRepeatedInt32Add();
            }

          case 3:
            if (v14 != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v92) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v92 & 0x7F) << v66;
                if ((v92 & 0x80) == 0)
                {
                  goto LABEL_161;
                }

                v66 += 7;
                v12 = v67++ >= 9;
                if (v12)
                {
                  goto LABEL_162;
                }
              }
            }

            v92 = 0;
            v93 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v17 = [a2 position];
              if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_111;
              }

              v18 = 0;
              v19 = 0;
              v20 = 0;
              while (1)
              {
                v94 = 0;
                v21 = [a2 position] + 1;
                if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
                {
                  v23 = [a2 data];
                  [v23 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v20 |= (v94 & 0x7F) << v18;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v18 += 7;
                v12 = v19++ >= 9;
                if (v12)
                {
                  goto LABEL_36;
                }
              }

              [a2 hasError];
LABEL_36:
              PBRepeatedInt32Add();
            }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_163:
      v91 = [a2 position];
    }

    while (v91 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B825C18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B825CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B825D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825D3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825D5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825D9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825DB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825DEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B825E074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8261110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B826279C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _autoUpdatesEnabled()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AutoUpdatesEnabled", @"com.apple.itunesstored", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = !v1;
  if (v1)
  {
    v3 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_INFO, "Auto updates disabled", v5, 2u);
    }
  }

  return v2;
}

void sub_1B8263A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8263BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B826588C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1B826C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B826E094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B826E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B826E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B826E7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8270B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8270ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B8275FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B82762C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B827649C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B8276828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1B8276F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ASDDebugFileLevel()
{
  if (qword_1ED90D418 != -1)
  {
    dispatch_once(&qword_1ED90D418, &__block_literal_global_43_1);
  }

  return _MergedGlobals_21;
}

uint64_t ASDDebugLevel()
{
  if (qword_1ED90D418 != -1)
  {
    dispatch_once(&qword_1ED90D418, &__block_literal_global_43_1);
  }

  return qword_1ED90D3B0;
}

void ASDDebugLogV(unint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_1ED90D418 != -1)
  {
    v17 = v5;
    dispatch_once(&qword_1ED90D418, &__block_literal_global_43_1);
    v5 = v17;
  }

  if (_MergedGlobals_21 >= a1)
  {
    v16 = v5;
    pthread_mutex_lock(&stru_1ED90D3B8);
    v6 = _MergedGlobals_1;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_1ED90D400 == 0;
    }

    if (!v7)
    {
      v8 = [ASDRollableLog alloc];
      v9 = [(ASDRollableLog *)v8 initWithLogOptions:qword_1ED90D400];
      v10 = _MergedGlobals_1;
      _MergedGlobals_1 = v9;

      v6 = v9;
    }

    pthread_mutex_unlock(&stru_1ED90D3B8);
    if (v6)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v16 arguments:a3];
      if (qword_1ED90D410 != -1)
      {
        dispatch_once(&qword_1ED90D410, &__block_literal_global_23);
      }

      v12 = qword_1ED90D408;
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v12, Current);
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ [%d]: %@\n", StringWithAbsoluteTime, getpid(), v11];
      [(ASDRollableLog *)v6 writeString:v15];
      CFRelease(StringWithAbsoluteTime);
    }

    v5 = v16;
  }
}

uint64_t ASDDebugSetFileLoggingOptions(void *a1)
{
  v1 = a1;
  pthread_mutex_lock(&stru_1ED90D3B8);
  v2 = qword_1ED90D400;
  qword_1ED90D400 = v1;

  return pthread_mutex_unlock(&stru_1ED90D3B8);
}

void __FileLogDateFormatter_block_invoke()
{
  v0 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  qword_1ED90D408 = v0;

  CFDateFormatterSetFormat(v0, @"yyyy-MM-dd HH:mm:ss.SSS");
}

uint64_t __ReloadDebugUserDefaults()
{
  has_internal_content = os_variant_has_internal_content();
  keyExistsAndHasValidFormat = 0;
  _MergedGlobals_21 = CFPreferencesGetAppIntegerValue(@"DebugFileLevel", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = 1;
  }

  else
  {
    v1 = has_internal_content == 0;
  }

  if (!v1)
  {
    _MergedGlobals_21 = 3;
    CFPreferencesSetAppValue(@"DebugFileLevel", [MEMORY[0x1E696AD98] numberWithInteger:3], @"com.apple.appstored");
  }

  qword_1ED90D3B0 = CFPreferencesGetAppIntegerValue(@"DebugLevel", @"com.apple.appstored", 0);
  CFPreferencesGetAppBooleanValue(@"LogIncomingHeaders", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  if (((keyExistsAndHasValidFormat == 0) & has_internal_content) == 1)
  {
    CFPreferencesSetAppValue(@"LogIncomingHeaders", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.appstored");
  }

  CFPreferencesGetAppBooleanValue(@"LogOutgoingHeaders", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  if (((keyExistsAndHasValidFormat == 0) & has_internal_content) == 1)
  {
    CFPreferencesSetAppValue(@"LogOutgoingHeaders", [MEMORY[0x1E696AD98] numberWithBool:1], @"com.apple.appstored");
  }

  return CFPreferencesGetAppBooleanValue(@"LogXML", @"com.apple.appstored", 0);
}

id ASDLocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
  v4 = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = [v3 localizations];
  v6 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v5 forPreferences:v4];
  v7 = [v6 firstObject];
  v8 = [v3 localizedStringForKey:v2 value:0 table:0 localization:v7];

  return v8;
}

void sub_1B827FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B82855F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B828B1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8291BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8291EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1B8293C08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B8294118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EBA81C78)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7CDDBC8;
    v7 = 0;
    qword_1EBA81C78 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1EBA81C78)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_4 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA81C78 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B8299018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B82995D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ASDErrorIsEqual(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 && [v5 code] == a3)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t ASDErrorSearch(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (ASDErrorIsEqual(v5, v6, a3))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 underlyingErrors];
    v9 = [v8 mutableCopy];
    while (1)
    {

      if (![v9 count])
      {
        v7 = 0;
        goto LABEL_12;
      }

      v8 = [(NSMutableArray *)v9 asd_pop];
      if (ASDErrorIsEqual(v8, v6, a3))
      {
        break;
      }

      v10 = [v8 underlyingErrors];

      if (v10)
      {
        v11 = [v8 underlyingErrors];
        if (v9)
        {
          [v9 addObjectsFromArray:v11];
        }
      }
    }

    v7 = 1;
LABEL_12:
  }

  return v7;
}

id ASDErrorBySettingUserInfoValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v8)
  {
    v9 = v8;
    if ([v6 length])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = [v8 userInfo];

      if (v11)
      {
        v12 = [v8 userInfo];
        [v10 addEntriesFromDictionary:v12];
      }

      if (v7)
      {
        [v10 setObject:v7 forKey:v6];
      }

      else
      {
        [v10 removeObjectForKey:v6];
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = [v8 domain];
      v9 = [v13 errorWithDomain:v14 code:objc_msgSend(v8 userInfo:{"code"), v10}];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id ASDErrorWithUnderlyingErrorAndDescription(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = ASDErrorWithSafeUserInfo(a1);
  v10 = v7;
  v11 = v8;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = v12;
  if (v11)
  {
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:a3 userInfo:v13];

  return v14;
}

id ASDErrorWithSafeUserInfo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = [v1 userInfo];
    v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = [v1 userInfo];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __ASDErrorWithSafeUserInfo_block_invoke;
    v14 = &unk_1E7CDDD70;
    v16 = &v17;
    v6 = v4;
    v15 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];

    if (v18[3])
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = [v1 domain];
      v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v1 userInfo:{"code"), v6}];
    }

    else
    {
      v9 = v1;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1B82A3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ASDErrorWithSafeUserInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = safeUserInfoValue(v5);
  v7 = v6;
  if (v6 != v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v10];
  }

  else
  {
    v8 = [v10 stringByAppendingString:@"_desc"];
    v9 = [v5 description];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
  }
}

id safeUserInfoValue(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = ASDErrorWithSafeUserInfo(v1);
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__17;
    v40 = __Block_byref_object_dispose__17;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __safeUserInfoValue_block_invoke;
    v31[3] = &unk_1E7CDDDD0;
    v31[4] = &buf;
    v31[5] = &v32;
    [v1 enumerateObjectsUsingBlock:v31];
    if (*(*(&buf + 1) + 40))
    {
      v6 = [v1 count];
      v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      v7 = [v1 subarrayWithRange:{0, v33[3]}];
      [v3 addObjectsFromArray:v7];

      [v3 addObject:*(*(&buf + 1) + 40)];
      v8 = v33[3] + 1;
      if (v8 < v6)
      {
        do
        {
          v9 = [v1 objectAtIndexedSubscript:v8];
          v10 = safeUserInfoValue(v9);
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = [v9 description];
          }

          v13 = v12;

          [v3 addObject:v13];
          ++v8;
        }

        while (v6 != v8);
      }
    }

    else
    {
      v3 = v1;
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __safeUserInfoValue_block_invoke_2;
      v29[3] = &unk_1E7CDDDF8;
      v15 = v14;
      v30 = v15;
      [v1 enumerateKeysAndObjectsUsingBlock:v29];
      if ([v15 isEqualToDictionary:v1])
      {
        v16 = v1;
      }

      else
      {
        v16 = [v15 copy];
      }

      v3 = v16;

      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v1, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = v1;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v36 count:16];
      if (v19)
      {
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = safeUserInfoValue(*(*(&v25 + 1) + 8 * i));
            [v17 addObject:{v22, v25}];
          }

          v19 = [v18 countByEnumeratingWithState:&v25 objects:v36 count:16];
        }

        while (v19);
      }

      if ([v17 isEqualToSet:v18])
      {
        v23 = v18;
      }

      else
      {
        v23 = [v17 copy];
      }

      v3 = v23;
    }

    else
    {
      if ([v1 conformsToProtocol:&unk_1F3034818])
      {
LABEL_3:
        v2 = v1;
LABEL_4:
        v3 = v2;
        goto LABEL_5;
      }

      v24 = ASDLogHandleForCategory(14);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v1;
        _os_log_impl(&dword_1B8220000, v24, OS_LOG_TYPE_INFO, "Dropping value from NSError.userInfo that could potentially cause problems: %{public}@", &buf, 0xCu);
      }

      v3 = 0;
    }
  }

LABEL_5:

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1B82A3870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

id ASDErrorWithUserInfoAndFormat(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = [a2 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v15 = v14;

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A278]];

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASDErrorDomain" code:a1 userInfo:v15];

  return v17;
}

id ASDErrorWithUnderlyingErrorAndInfo(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13 | v14)
  {
    v16 = v13;
  }

  else
  {
    v14 = @"An unknown error occurred";
    v16 = @"Unhandled exception";
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = v17;
  if (v15)
  {
    [v17 addEntriesFromDictionary:v15];
  }

  if (v11)
  {
    [v18 setObject:v11 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v16)
  {
    [v18 setObject:v16 forKey:*MEMORY[0x1E696A578]];
  }

  if (v14)
  {
    [v18 setObject:v14 forKey:*MEMORY[0x1E696A588]];
  }

  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:a3 userInfo:v18];

  return v19;
}

id ASDLocalizedTextForUserPresentableError(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((a1 - 1) >= 2)
  {
    if (a1 != 10)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v13[0] = @"ASDLocalizedTitle";
    v8 = ASDLocalizedString(@"DOWNLOAD_ERROR_TITLE");
    v13[1] = @"ASDLocalizedMessage";
    v14[0] = v8;
    v5 = ASDLocalizedString(@"NO_NETWORK_MESSAGE");
    v14[1] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:@"ASDAppName"];
    if ([v5 length])
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = ASDLocalizedString(@"SIGN_IN_FROM_WATCH_APP_WITH_NAME");
      v8 = [v6 localizedStringWithFormat:v7, v5];
    }

    else
    {
      v8 = ASDLocalizedString(@"SIGN_IN_FROM_WATCH_APP");
    }

    v15[0] = @"ASDLocalizedTitle";
    v10 = ASDLocalizedString(@"SIGN_IN_REQUIRED");
    v15[1] = @"ASDLocalizedMessage";
    v16[0] = v10;
    v16[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __safeUserInfoValue_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = safeUserInfoValue();
  if (v7 != v9)
  {
    v8 = v7;
    if (!v7)
    {
      v8 = [v9 description];
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v8);
    if (!v7)
    {
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __safeUserInfoValue_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = safeUserInfoValue(a3);
  v6 = *(a1 + 32);
  v7 = safeUserInfoValue(v5);

  [v6 setObject:v8 forKeyedSubscript:v7];
}