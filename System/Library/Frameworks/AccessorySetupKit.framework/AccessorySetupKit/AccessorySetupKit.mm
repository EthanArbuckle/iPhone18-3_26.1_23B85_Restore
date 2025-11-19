__CFString *ASAccessoryStateToString(uint64_t a1)
{
  v1 = @"Authorized";
  v2 = @"?";
  if (a1 == 10)
  {
    v2 = @"AwaitingAuthorization";
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Unauthorized";
  }
}

void sub_2369C99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  (*(a13 + 16))();
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2369CACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2369CE290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2369CE6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ASDiscoveryDescriptorRangeToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 10)
  {
    v1 = @"Immediate";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Default";
  }
}

__CFString *ASDiscoveryDescriptorWiFiAwareServiceRoleToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 20)
  {
    v1 = @"Publisher";
  }

  if (a1 == 10)
  {
    return @"Subscriber";
  }

  else
  {
    return v1;
  }
}

Class initPSSpecifier()
{
  if (PreferencesLibrary_sOnce != -1)
  {
    initPSSpecifier_cold_1();
  }

  result = objc_getClass("PSSpecifier");
  classPSSpecifier = result;
  getPSSpecifierClass = PSSpecifierFunction;
  return result;
}

void *__PreferencesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Preferences.framework/Preferences", 2);
  PreferencesLibrary_sLib = result;
  return result;
}

id ASErrorF(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA068];
  v18[0] = @"cuErrorMsg";
  v18[1] = v13;
  v19[0] = v11;
  v19[1] = v11;
  v18[2] = *MEMORY[0x277CCA470];
  v19[2] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v15 = [v12 initWithDomain:@"ASErrorDomain" code:a1 userInfo:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

__CFString *ASAccessoryEventTypeToString(uint64_t a1)
{
  if (a1 > 30)
  {
    if (a1 > 39)
    {
      if (a1 == 40)
      {
        return @"PickerDidPresent";
      }

      if (a1 == 50)
      {
        return @"PickerDidDismiss";
      }
    }

    else
    {
      if (a1 == 31)
      {
        return @"AccessoryRemoved";
      }

      if (a1 == 32)
      {
        return @"AccessoryChanged";
      }
    }
  }

  else if (a1 > 10)
  {
    if (a1 == 11)
    {
      return @"Invalidated";
    }

    if (a1 == 30)
    {
      return @"AccessoryAdded";
    }
  }

  else
  {
    if (!a1)
    {
      return @"Unknown";
    }

    if (a1 == 10)
    {
      return @"Activated";
    }
  }

  return @"?";
}

__CFString *ASPickerDisplaySettingsDiscoveryTimeoutToString(double a1)
{
  if (a1 == 60.0)
  {
    return @"Short";
  }

  if (a1 == 180.0)
  {
    return @"Medium";
  }

  v2 = @"?";
  if (a1 == INFINITY)
  {
    v2 = @"Unbounded";
  }

  if (a1 == 360.0)
  {
    return @"Long";
  }

  else
  {
    return v2;
  }
}

id ASDiscoveredAccessory.bluetoothRSSI.getter()
{
  v1 = [v0 bluetoothRSSI];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

uint64_t sub_2369D9C80(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE60490, type metadata accessor for ASError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2369D9CEC(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE60490, type metadata accessor for ASError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2369D9D5C(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2369D9DE8(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2369D9E54(uint64_t a1)
{
  v2 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2369D9EC0(void *a1, uint64_t a2)
{
  v4 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2369D9F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2369D9FF0()
{
  v2 = *v0;
  sub_2369E1BB8();
  sub_2369E1978();
  return sub_2369E1BC8();
}

void *sub_2369DA050@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2369DA06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2369DA138(&qword_27DE604C8, type metadata accessor for ASError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2369DA138(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2369DA2FC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2369DA394()
{
  result = qword_27DE604B8;
  if (!qword_27DE604B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE604B8);
  }

  return result;
}

uint64_t sub_2369DA494()
{
  v0 = sub_2369E1928();
  __swift_allocate_value_buffer(v0, qword_27DE60C40);
  __swift_project_value_buffer(v0, qword_27DE60C40);
  return sub_2369E1918();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2369DA5B0()
{
  v0 = sub_2369E1928();
  __swift_allocate_value_buffer(v0, qword_27DE60540);
  v1 = __swift_project_value_buffer(v0, qword_27DE60540);
  if (qword_27DE603A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DE60C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2369DA678()
{
  result = [objc_allocWithZone(type metadata accessor for ASUIClientManager()) init];
  qword_27DE60558 = result;
  return result;
}

id ASUIClientManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ASUIClientManager.shared.getter()
{
  if (qword_27DE603B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DE60558;

  return v1;
}

void sub_2369DA794(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = v7;
  v148 = a5;
  v150 = a1;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60560, &qword_2369E45B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v147 = &v139 - v16;
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v17 = sub_2369E1928();
  __swift_project_value_buffer(v17, qword_27DE60540);
  v18 = sub_2369E1908();
  v19 = sub_2369E1A38();
  if (os_log_type_enabled(v18, v19))
  {
    v8 = a2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2369C4000, v18, v19, "activateConnection", v20, 2u);
    v21 = v20;
    a2 = v8;
    MEMORY[0x2383B4B10](v21, -1, -1);
  }

  v22 = (v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v23 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v24 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v22 = a6;
  v22[1] = a7;

  sub_2369DBAC4(v23);
  if (*(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection))
  {
    v25 = sub_2369E1908();
    v26 = sub_2369E1A28();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2369C4000, v25, v26, "Picker already activated", v27, 2u);
      MEMORY[0x2383B4B10](v27, -1, -1);
    }

    type metadata accessor for ASError(0);
    v28 = 500;
    goto LABEL_47;
  }

  v29 = mach_absolute_time();
  v30 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull;
  v31 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull);
  if (!v31)
  {
    *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull) = v29;
    v31 = v29;
  }

  if (v29 >= v31)
  {
    if (UpTicksToSeconds() >= 0x10)
    {
      *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = 0;
    }

    v32 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter);
    if (v32 > 2)
    {
      v48 = sub_2369E1908();
      v49 = sub_2369E1A28();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Picker rate limited for repeated calls";
LABEL_45:
        _os_log_impl(&dword_2369C4000, v48, v49, v51, v50, 2u);
        MEMORY[0x2383B4B10](v50, -1, -1);
      }

LABEL_46:

      type metadata accessor for ASError(0);
      v28 = 550;
LABEL_47:
      v151 = v28;
      sub_2369DF294(MEMORY[0x277D84F90]);
      sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
      sub_2369E18B8();
      v65 = v152;
      sub_2369DD5C4(v152);

      return;
    }

    *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter) = v32 + 1;
    *(v9 + v30) = mach_absolute_time();
    v8 = sub_2369DF3A4(a2);
    a6 = v33;
    if (!(v33 >> 62))
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  if (!sub_2369E1B58())
  {
    goto LABEL_28;
  }

LABEL_18:

  v34 = sub_2369E1908();
  v35 = sub_2369E1A28();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v149 = a2;
    v37 = v36;
    v144 = swift_slowAlloc();
    v152 = v144;
    *v37 = 136315138;
    v38 = sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
    v39 = a3;
    v40 = MEMORY[0x2383B4160](a6, v38);
    v145 = v8;
    v41 = a4;
    v43 = v42;

    v44 = v40;
    a3 = v39;
    v45 = sub_2369DEBBC(v44, v43, &v152);
    a4 = v41;
    v8 = v145;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_2369C4000, v34, v35, "Ignoring invalid display items: %s", v37, 0xCu);
    v46 = v144;
    __swift_destroy_boxed_opaque_existential_0(v144);
    MEMORY[0x2383B4B10](v46, -1, -1);
    v47 = v37;
    a2 = v149;
    MEMORY[0x2383B4B10](v47, -1, -1);
  }

  else
  {
  }

  if (v8 >> 62)
  {
    goto LABEL_147;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    v48 = sub_2369E1908();
    v49 = sub_2369E1A28();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Cannot launch picker due to no valid display item";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_29:
  sub_2369DC808();
  v52 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (!v52)
  {

    v48 = sub_2369E1908();
    v49 = sub_2369E1A28();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "No server connection available";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  swift_unknownObjectWeakAssign();
  v53 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems;
  v54 = *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems);
  *(v9 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems) = v8;
  swift_unknownObjectRetain();

  v55 = *(v9 + v53);
  if (v55 >> 62)
  {
    if (v55 < 0)
    {
      v138 = *(v9 + v53);
    }

    sub_2369E1B58();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v144 = a4;
  v142 = v52;
  v141 = sub_2369DFC4C(0, &qword_27DE605A8, 0x277CCABB0);
  v145 = sub_2369E1A88();
  v146 = a3;
  v149 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v143 = sub_2369E1B58();
    v140 = v143 > 0;
    v57 = sub_2369E1B58();
  }

  else
  {
    v57 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v140 = v57 != 0;
    v143 = v57;
  }

  v58 = 0;
  v150 = a2 & 0xC000000000000001;
  v59 = &qword_27DE605B0;
  v60 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
  v61 = off_278A01738;
  do
  {
    if (v57 == v58)
    {
      v66 = a2;
      v8 = v143;
      v67 = v146;
      v68 = v140;
      if (!v57 || v143 != 1)
      {
        if (!v140)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

LABEL_54:
      if (v150)
      {
        v69 = MEMORY[0x2383B4250](0, v66);
      }

      else
      {
        if (!*(v149 + 16))
        {
          __break(1u);
          return;
        }

        v69 = *(v66 + 32);
      }

      v60 = v69;
      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (!v70 || (v71 = v70, ![v70 upgradeAccessory]))
      {

        if (!v68)
        {
          goto LABEL_64;
        }

LABEL_62:
        v74 = sub_2369E1A98();
        v75 = v142;
        [v142 updateMigrationDisplayCount_];

        if (v148)
        {
          v76 = sub_2369E1988();
        }

        else
        {
          v76 = 0;
        }

        [v75 showMigrationPickerWithOverrideBundleID_];
        swift_unknownObjectRelease();

        goto LABEL_115;
      }

      [v67 discoveryTimeout];
      if (v72 >= 30.0)
      {
        [v67 discoveryTimeout];
        v73 = v116;
      }

      else
      {
        v73 = 30.0;
      }

      v8 = v142;
      v117 = v147;
      v118 = [v71 peripheralIdentifier];
      if (v118)
      {
        v119 = v118;
        sub_2369E18E8();

        v120 = sub_2369E18F8();
        (*(*(v120 - 8) + 56))(v117, 0, 1, v120);
        sub_2369DFC94(v117, &qword_27DE60560, &qword_2369E45B0);
        v121 = [v71 descriptor];
        v122 = [v121 wifiAwareServiceName];
        if (v122)
        {

          v123 = [v71 accessoryIdentifier];
          if (!v123)
          {
            sub_2369E1998();
            v123 = sub_2369E1988();
          }

          v124 = sub_2369E1A88();
          v125 = sub_2369E1A88();
          v126 = sub_2369E1A88();
          v127 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          if (v148)
          {
            v128 = sub_2369E1988();
          }

          else
          {
            v128 = 0;
          }

          [v8 upgradeAccessory:v123 needsBluetooth:v124 needsWiFi:v125 needsDeviceOTANameBroadcast:v126 discoveryTimeout:v127 overrideBundleID:v128];

          goto LABEL_139;
        }

        v133 = sub_2369E1908();
        v134 = sub_2369E1A28();
        if (!os_log_type_enabled(v133, v134))
        {
          goto LABEL_138;
        }

        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "MigrationDisplayItem does not have wi-fi aware descriptor";
      }

      else
      {
        v129 = sub_2369E18F8();
        (*(*(v129 - 8) + 56))(v117, 1, 1, v129);
        sub_2369DFC94(v117, &qword_27DE60560, &qword_2369E45B0);
        if (![v71 wifiAwarePairedDeviceID])
        {
LABEL_139:
          swift_unknownObjectRelease();
          goto LABEL_140;
        }

        v130 = [v71 descriptor];
        v131 = sub_2369DB96C();

        if (v131)
        {
          v58 = [v71 accessoryIdentifier];
          if (!v58)
          {
            sub_2369E1998();
            v58 = sub_2369E1988();
          }

          v59 = sub_2369E1A88();
          v61 = sub_2369E1A88();
          v57 = sub_2369E1A88();
          v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          if (!v148)
          {
            goto LABEL_143;
          }

          v132 = sub_2369E1988();
          goto LABEL_144;
        }

        v133 = sub_2369E1908();
        v134 = sub_2369E1A28();
        if (!os_log_type_enabled(v133, v134))
        {
LABEL_138:

          type metadata accessor for ASError(0);
          v151 = 450;
          sub_2369DF294(MEMORY[0x277D84F90]);
          sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
          sub_2369E18B8();
          v137 = v152;
          sub_2369DD5C4(v152);

          goto LABEL_139;
        }

        v135 = swift_slowAlloc();
        *v135 = 0;
        v136 = "MigrationDisplayItem does not have bluetooth descriptor";
      }

      _os_log_impl(&dword_2369C4000, v133, v134, v136, v135, 2u);
      MEMORY[0x2383B4B10](v135, -1, -1);
      goto LABEL_138;
    }

    if (v150)
    {
      v8 = a2;
      v62 = MEMORY[0x2383B4250](v58, a2);
    }

    else
    {
      if (v58 >= *(v149 + 16))
      {
        goto LABEL_142;
      }

      v8 = a2;
      v62 = *(a2 + 8 * v58 + 32);
    }

    v63 = v62;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v132 = 0;
LABEL_144:
      [v8 upgradeAccessory:v58 needsBluetooth:v59 needsWiFi:v61 needsDeviceOTANameBroadcast:v57 discoveryTimeout:v9 overrideBundleID:{v132, v139}];
      swift_unknownObjectRelease();

LABEL_140:
      return;
    }

    sub_2369DFC4C(0, &qword_27DE605B0, off_278A01738);
    v64 = [v63 isKindOfClass_];

    ++v58;
    a2 = v8;
  }

  while ((v64 & 1) != 0);
  v66 = v8;
  v8 = v143;
  v67 = v146;
  if (v143 == 1)
  {
    v68 = 0;
    goto LABEL_54;
  }

LABEL_64:
  if (v57)
  {
    v9 = 0;
    LODWORD(v77) = 0;
    a3 = 0;
    a4 = 0;
    LODWORD(v147) = 0;
    a2 = v66;
    v139 = v57;
    do
    {
      if (v150)
      {
        v78 = MEMORY[0x2383B4250](v9, a2);
      }

      else
      {
        if (v9 >= *(v149 + 16))
        {
          goto LABEL_146;
        }

        v78 = *(a2 + 8 * v9 + 32);
      }

      v79 = v78;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        if (!sub_2369E1B58())
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

      if (a4)
      {
        if (v147)
        {

          break;
        }

        a4 = 1;
        goto LABEL_80;
      }

      v80 = [v78 descriptor];
      if (![v80 bluetoothCompanyIdentifier])
      {
        v81 = [v80 bluetoothManufacturerDataBlob];
        if (!v81)
        {
          LODWORD(v143) = v77;
          v95 = [v80 bluetoothManufacturerDataMask];
          if (v95)
          {
            goto LABEL_92;
          }

          v102 = [v80 bluetoothNameSubstring];
          if (v102)
          {
            v103 = v102;

            goto LABEL_95;
          }

          v95 = [v80 bluetoothServiceDataBlob];
          if (v95 || (v95 = [v80 bluetoothServiceDataMask]) != 0)
          {
LABEL_92:
            v96 = v95;
            v97 = sub_2369E18D8();
            v98 = a2;
            v100 = v99;

            v101 = v100;
            a2 = v98;
            sub_2369DF7DC(v97, v101);
          }

          else
          {
            v103 = [v80 bluetoothServiceUUID];

            if (!v103)
            {
              a4 = 0;
              if (a3)
              {
                v88 = 1;
                LOBYTE(v77) = v143;
                goto LABEL_85;
              }

              LOBYTE(v77) = v143;
LABEL_80:
              v89 = [v79 descriptor];
              v90 = [v89 SSID];
              if (v90 || (v90 = [v89 SSIDPrefix]) != 0)
              {
                v91 = v90;
                v92 = v89;
                v89 = v91;
                goto LABEL_83;
              }

              v92 = [v89 wifiAwareServiceName];
              if (v92)
              {
LABEL_83:

                v88 = 1;
              }

              else
              {
                v88 = 0;
              }

              LODWORD(v147) = v88;
              goto LABEL_85;
            }

LABEL_95:
          }

          a4 = 1;
          v88 = 1;
          LOBYTE(v77) = v143;
          if (a3)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        }

        v82 = v77;
        v77 = v81;
        v83 = sub_2369E18D8();
        v84 = a2;
        v86 = v85;

        LOBYTE(v77) = v82;
        v57 = v139;
        v87 = v86;
        a2 = v84;
        sub_2369DF7DC(v83, v87);
      }

      a4 = 1;
      v88 = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_85:
      if (v77)
      {
        LODWORD(v77) = 1;
      }

      else
      {
        v77 = [v79 descriptor];
        v93 = [v77 wifiAwareServiceName];
        v94 = v93 != 0;
        if (v93)
        {
        }

        LODWORD(v77) = v94;
      }

      ++v9;
      a3 = v88;
    }

    while (v8 != v57);
  }

  v104 = v146;
  [v146 discoveryTimeout];
  if (v105 >= 30.0)
  {
    [v104 discoveryTimeout];
    v106 = v107;
  }

  else
  {
    v106 = 30.0;
  }

  v108 = v142;
  if (v148)
  {
    v109 = sub_2369E1988();
  }

  else
  {
    v109 = 0;
  }

  v110 = sub_2369E1A88();
  v111 = sub_2369E1A88();
  v112 = sub_2369E1A88();
  v113 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v104 options];
  v114 = sub_2369E1A88();
  [v108 showPickerWithOverrideBundleID:v109 shouldRetrieveDisplayItems:v145 needsBluetooth:v110 needsWiFi:v111 needsDeviceOTANameBroadcast:v112 discoveryTimeout:v113 filterInApp:v114];
  swift_unknownObjectRelease();

LABEL_115:
  v115 = v145;
}

uint64_t sub_2369DB96C()
{
  if ([v0 bluetoothCompanyIdentifier])
  {
    return 1;
  }

  v1 = [v0 bluetoothManufacturerDataBlob];
  if (v1)
  {
    goto LABEL_4;
  }

  v1 = [v0 bluetoothManufacturerDataMask];
  if (v1)
  {
    goto LABEL_4;
  }

  result = [v0 bluetoothNameSubstring];
  if (result)
  {
    goto LABEL_7;
  }

  v1 = [v0 bluetoothServiceDataBlob];
  if (v1 || (v1 = [v0 bluetoothServiceDataMask]) != 0)
  {
LABEL_4:
    v2 = v1;
    v3 = sub_2369E18D8();
    v5 = v4;

    sub_2369DF7DC(v3, v5);
    return 1;
  }

  result = [v0 bluetoothServiceUUID];
  if (result)
  {
LABEL_7:

    return 1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2369DBAC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2369DBC00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2369E18C8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_2369DBC64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_2369DBAC4(v6);
  v8 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
    swift_unknownObjectRetain();
    v10 = [a1 identifier];
    if (!v10)
    {
      sub_2369E1998();
      v11 = sub_2369E1988();

      v10 = v11;
    }

    v12 = v10;
    [v8 failAccessory_];
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
    sub_2369E18B8();
    sub_2369DD5C4(v13);
  }
}

void sub_2369DBE80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = (v6 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v11 = *(v6 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v12 = v10[1];
  *v10 = a5;
  v10[1] = a6;

  sub_2369DBAC4(v11);
  sub_2369DC808();
  v13 = *(v7 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (!v13)
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
    sub_2369E18B8();
    sub_2369DD5C4(v21);

    return;
  }

  v14 = *(v7 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  swift_unknownObjectRetain();
  v15 = [a1 SSID];
  if (v15)
  {
  }

  sub_2369DFC4C(0, &qword_27DE605A8, 0x277CCABB0);
  v16 = sub_2369E1A88();
  v17 = [a1 identifier];
  if (!v17)
  {
    sub_2369E1998();
    v17 = sub_2369E1988();
  }

  v18 = [a1 displayName];
  if (!v18)
  {
    sub_2369E1998();
    v18 = sub_2369E1988();

    if (a4)
    {
      goto LABEL_9;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = sub_2369E1988();
LABEL_12:
  v20 = v19;
  [v13 renameAccessory:v17 currentName:v18 updateSSID:v16 overrideBundleID:?];
  swift_unknownObjectRelease();
}

void sub_2369DC1D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_2369DBAC4(v6);
  v8 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
    swift_unknownObjectRetain();
    sub_2369DC338(a1);
    v10 = sub_2369E19D8();

    [v8 updatePickerWith_];
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
    sub_2369E18B8();
    sub_2369DD5C4(v11);
  }
}

char *sub_2369DC338(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2369E1B58();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2369DF164(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2383B4250](i, a1);
        sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2369DF164((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2369DFBAC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2369DFC4C(0, &qword_27DE605B8, off_278A01740);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2369DF164((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2369DFBAC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_2369DC5F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_2369DBAC4(v4);
  v6 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  if (v6)
  {

    [v6 endDiscoveryInPicker];
  }

  else
  {
    type metadata accessor for ASError(0);
    sub_2369DF294(MEMORY[0x277D84F90]);
    sub_2369DFAD0(&qword_27DE604C8, type metadata accessor for ASError);
    sub_2369E18B8();
    sub_2369DD5C4(v7);
  }
}

uint64_t sub_2369DC79C()
{
  v1 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection;
  v2 = *(v0 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server);
  *(v0 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server) = 0;

  return swift_unknownObjectRelease();
}

void sub_2369DC808()
{
  v1 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server;
  if (*&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for ASUIClientWrapper()) init];
  v3 = *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager];
  *&v2[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager] = v0;
  v4 = v0;

  v5 = *&v4[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper];
  *&v4[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = v2;
  v6 = v2;

  v7 = sub_2369E1988();
  v48 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v48 setServer_];

  v10 = [v8 protocolForProtocol_];
  [v48 setClient_];

  [v48 setClientMessagingExpectation_];
  v11 = sub_2369E1988();
  v12 = sub_2369E1988();
  v13 = [objc_opt_self() endpointForMachName:v11 service:v12 instance:0];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 connectionWithEndpoint_];
    if (v16)
    {
      v17 = v16;
      v56 = &unk_2849C2280;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        v19 = v18;
        v47 = v1;
        v20 = swift_allocObject();
        *(v20 + 16) = v48;
        *(v20 + 24) = v6;
        *(v20 + 32) = v4;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_2369DFC08;
        *(v21 + 24) = v20;
        v54 = sub_2369DFC24;
        v55 = v21;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v53 = sub_2369DD570;
        *(&v53 + 1) = &block_descriptor_70;
        v22 = _Block_copy(&aBlock);
        v23 = v4;
        v24 = v6;
        v25 = v48;

        v26 = v17;

        [v19 configureConnection_];

        _Block_release(v22);
        LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

        if (v20)
        {
          __break(1u);
        }

        else
        {
          v27 = *&v23[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
          *&v23[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection] = v19;
          v28 = v26;

          [v19 activate];
          v29 = sub_2369E1988();
          v30 = sub_2369E1988();
          v31 = [objc_opt_self() attributeWithDomain:v29 name:v30];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60708, &qword_2369E4648);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_2369E45A0;
          *(v32 + 32) = v31;
          sub_2369DFC4C(0, &qword_27DE60710, 0x277D46DD8);
          v33 = v31;
          v34 = sub_2369E19D8();

          v35 = [v19 remoteTargetWithLaunchingAssertionAttributes_];

          if (v35)
          {
            sub_2369E1AB8();
            swift_unknownObjectRelease();
          }

          else
          {

            v50 = 0u;
            v51 = 0u;
          }

          aBlock = v50;
          v53 = v51;
          if (*(&v51 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60720, &qword_2369E4658);
            v44 = swift_dynamicCast();
            v45 = v49;
            if (!v44)
            {
              v45 = 0;
            }
          }

          else
          {
            sub_2369DFC94(&aBlock, &qword_27DE60718, &qword_2369E4650);
            v45 = 0;
          }

          v46 = *&v0[v47];
          *&v0[v47] = v45;

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    else
    {
    }

    if (qword_27DE603A8 != -1)
    {
      swift_once();
    }

    v40 = sub_2369E1928();
    __swift_project_value_buffer(v40, qword_27DE60540);
    v41 = sub_2369E1908();
    v42 = sub_2369E1A28();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2369C4000, v41, v42, "No valid endpoint's connection available", v43, 2u);
      MEMORY[0x2383B4B10](v43, -1, -1);
    }
  }

  else
  {
    if (qword_27DE603A8 != -1)
    {
      swift_once();
    }

    v36 = sub_2369E1928();
    __swift_project_value_buffer(v36, qword_27DE60540);
    v37 = sub_2369E1908();
    v38 = sub_2369E1A28();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2369C4000, v37, v38, "No server endpoint available", v39, 2u);
      MEMORY[0x2383B4B10](v39, -1, -1);
    }
  }
}

id sub_2369DCF90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v8 = sub_2369E1928();
  __swift_project_value_buffer(v8, qword_27DE60540);
  v9 = sub_2369E1908();
  v10 = sub_2369E1A38();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2369C4000, v9, v10, "configuring connection", v11, 2u);
    MEMORY[0x2383B4B10](v11, -1, -1);
  }

  v12 = sub_2369E1988();
  [a1 setName_];

  v13 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v24 = sub_2369DD308;
  v25 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_73;
  v14 = _Block_copy(&v20);
  [a1 setActivationHandler_];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_2369DFD2C;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_79;
  v16 = _Block_copy(&v20);

  [a1 setInvalidationHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_2369DFD50;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2369DD3F0;
  v23 = &block_descriptor_83;
  v18 = _Block_copy(&v20);

  [a1 setInterruptionHandler_];
  _Block_release(v18);
  return [a1 setTargetQueue_];
}

void sub_2369DD308()
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v0 = sub_2369E1928();
  __swift_project_value_buffer(v0, qword_27DE60540);
  oslog = sub_2369E1908();
  v1 = sub_2369E1A38();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2369C4000, oslog, v1, "angel connection activated", v2, 2u);
    MEMORY[0x2383B4B10](v2, -1, -1);
  }
}

void sub_2369DD3F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2369DD458(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27DE603A8 != -1)
  {
    swift_once();
  }

  v4 = sub_2369E1928();
  __swift_project_value_buffer(v4, qword_27DE60540);
  v5 = sub_2369E1908();
  v6 = sub_2369E1A38();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2369C4000, v5, v6, a3, v7, 2u);
    MEMORY[0x2383B4B10](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_2369DC79C();
  }
}

uint64_t sub_2369DD570(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void *sub_2369DD5C4(void *a1)
{
  v3 = sub_2369E1938();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2369E1968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v8;
    v14 = result;
    v21 = [result queue];

    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = a1;
    aBlock[4] = sub_2369DFE4C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2369DD93C;
    aBlock[3] = &block_descriptor_90;
    v16 = _Block_copy(aBlock);
    v17 = v1;
    v18 = a1;
    sub_2369E1948();
    v23 = MEMORY[0x277D84F90];
    sub_2369DFAD0(&qword_27DE60680, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60688, &qword_2369E4628);
    sub_2369DFB18(&qword_27DE60690, &qword_27DE60688, &qword_2369E4628);
    sub_2369E1AC8();
    v19 = v21;
    MEMORY[0x2383B41D0](0, v12, v7, v16);
    _Block_release(v16);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v22);
  }

  return result;
}

uint64_t sub_2369DD8B8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  v3 = *(a1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler);
  if (v3)
  {
    v5 = v2[1];

    v3(a2);
    sub_2369DBAC4(v3);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  return sub_2369DBAC4(v6);
}

uint64_t sub_2369DD93C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id ASUIClientManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASUIClientManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ASUIClientManager.init()()
{
  v13 = sub_2369E1A58();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2369E1A48() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2369E1968() - 8) + 64);
  MEMORY[0x28223BE20]();
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_displayItems] = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_queue;
  v11 = sub_2369DFC4C(0, &qword_27DE605C8, 0x277D85C78);
  sub_2369E1958();
  v15 = v7;
  sub_2369DFAD0(&qword_27DE605D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE605D8, &qword_2369E45B8);
  sub_2369DFB18(&qword_27DE605E0, &qword_27DE605D8, &qword_2369E45B8);
  sub_2369E1AC8();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  *&v0[v12] = sub_2369E1A78();
  v8 = &v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_completionHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_startTicksFull] = 0;
  *&v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_debounceCounter] = 0;
  v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_pickerDidPresent] = 0;
  v0[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_showPermissionPromptCalled] = 0;
  v9 = type metadata accessor for ASUIClientManager();
  v14.receiver = v0;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_2369DDE5C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v8 = [v4 initWithEventType_];
    if (a1)
    {
      v6 = sub_2369E18C8();
    }

    else
    {
      v6 = 0;
    }

    [v8 setError_];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];
  }
}

void sub_2369DE050(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v7 = [v4 initWithEventType_];
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];
  }
}

void sub_2369DE15C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v2)
  {
    v4 = objc_allocWithZone(ASAccessoryEvent);
    v5 = v2;
    v6 = [v4 initWithEventType_];
    if (a1)
    {
      a1 = sub_2369E18C8();
    }

    [v6 setError_];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong relayPickerEvent_];

    v8 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection;
    v9 = *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_connection];
    if (v9)
    {
      v10 = v9;
      [v10 invalidate];
    }

    v11 = *&v5[v8];
    *&v5[v8] = 0;

    v12 = *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server];
    *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_server] = 0;
    swift_unknownObjectRelease();
    v13 = *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper];
    *&v5[OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_clientWrapper] = 0;
  }
}

uint64_t sub_2369DE320(void *a1)
{
  v2 = v1;
  v4 = sub_2369E1938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2369E1968();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20]();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager;
  v16 = *(v2 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (v16)
  {
    v29 = v12;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v17 = result;
      v18 = v16;
      v28 = v2;
      v19 = v18;
      v27 = [v17 queue];

      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = a1;
      aBlock[4] = sub_2369DFAB0;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2369DD93C;
      aBlock[3] = &block_descriptor;
      v21 = _Block_copy(aBlock);
      v26 = v19;
      v22 = a1;
      sub_2369E1948();
      v30 = MEMORY[0x277D84F90];
      sub_2369DFAD0(&qword_27DE60680, MEMORY[0x277D85198]);
      v25 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60688, &qword_2369E4628);
      v2 = v28;
      sub_2369DFB18(&qword_27DE60690, &qword_27DE60688, &qword_2369E4628);
      sub_2369E1AC8();
      v23 = v27;
      MEMORY[0x2383B41D0](0, v14, v8, v21);
      _Block_release(v21);

      (*(v5 + 8))(v8, v4);
      (*(v29 + 8))(v14, v25);
    }

    v24 = *(v2 + v15);
    if (v24)
    {
      *(v24 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientManager_showPermissionPromptCalled) = 0;
    }
  }

  return result;
}

void sub_2369DE770(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17AccessorySetupKit17ASUIClientWrapper_clientManager);
  if (!v2)
  {
    return;
  }

  v7 = v2;
  if (!sub_2369DE888(a1))
  {
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2369DFC4C(0, &qword_27DE60678, 0x277D04758);
    v6 = sub_2369E19D8();

    [v5 pickerDidReport_];

LABEL_5:

    return;
  }
}

uint64_t sub_2369DE888(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2369E1B28();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2369DFA50(i, v6);
    sub_2369DFC4C(0, &qword_27DE60678, 0x277D04758);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2369E1B08();
    v4 = *(v7 + 16);
    sub_2369E1B38();
    sub_2369E1B48();
    sub_2369E1B18();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_2369DEA48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIClientWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2369DEA8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2369E1BB8();
  sub_2369E19A8();
  v6 = sub_2369E1BC8();

  return sub_2369DEB04(a1, a2, v6);
}

unint64_t sub_2369DEB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2369E1B78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2369DEBBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2369DEC88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2369DFA50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2369DEC88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2369DED94(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2369E1AF8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2369DED94(uint64_t a1, unint64_t a2)
{
  v4 = sub_2369DEDE0(a1, a2);
  sub_2369DEF10(&unk_28499D388);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2369DEDE0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2369DEFFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2369E1AF8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2369E19B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2369DEFFC(v10, 0);
        result = sub_2369E1AD8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2369DEF10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2369DF070(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2369DEFFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE606A0, &unk_2369E4638);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2369DF070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE606A0, &unk_2369E4638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2369DF164(char *a1, int64_t a2, char a3)
{
  result = sub_2369DF184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2369DF184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60698, &qword_2369E4630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2369DF294(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60728, &qword_2369E4660);
    v3 = sub_2369E1B68();
    v4 = a1 + 32;

    while (1)
    {
      sub_2369DFDB4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2369DEA8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2369DFBAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2369DF3A4(unint64_t result)
{
  v1 = result;
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_2369E1B58();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0x6E4920656C707041;
    v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383B4250](v3, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        if ([v10 upgradeAccessory])
        {
          MEMORY[0x2383B4130]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2369E1A08();
          }

          sub_2369E1A18();

LABEL_18:
          v35 = v37;
          goto LABEL_9;
        }
      }

      v12 = [v8 descriptor];
      v13 = [v12 wifiAwareVendorNameMatch];

      if (v13)
      {
        v14 = v4;
        v15 = [v13 string];
        v16 = sub_2369E1998();
        v18 = v17;

        v4 = v14;
        if (v16 == v14 && v18 == 0xEA00000000002E63)
        {

LABEL_34:
          v30 = v8;
          MEMORY[0x2383B4130]();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2369E1A08();
          }

          sub_2369E1A18();

          goto LABEL_8;
        }

        v20 = sub_2369E1B78();

        if (v20)
        {
          goto LABEL_34;
        }

        v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
      }

      v21 = [v8 v5[366]];
      v22 = [v21 imageAsset];

      if (v22)
      {

        v23 = [v8 v5[366]];
        [v23 size];
        v25 = v24;

        if (v25 != 0.0)
        {
          v26 = [v8 v5[366]];
          [v26 size];
          v28 = v27;

          if (v28 != 0.0)
          {
            v29 = v8;
            MEMORY[0x2383B4130]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v34 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2369E1A08();
            }

            sub_2369E1A18();

            goto LABEL_18;
          }
        }
      }

      v6 = v8;
      MEMORY[0x2383B4130]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2369E1A08();
      }

      sub_2369E1A18();

LABEL_8:
      v5 = &_swift_FORCE_LOAD___swiftOSLog___AccessorySetupKit;
LABEL_9:
      if (v2 == ++v3)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2369DF7DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2369DFA50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2369DFAD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2369DFB18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2369DFB6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

_OWORD *sub_2369DFBAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2369DFBC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2369DFC24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2369DFC4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2369DFC94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2369DFCF4()
{
  MEMORY[0x2383B4B50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2369DFDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE60730, &qword_2369E4668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}