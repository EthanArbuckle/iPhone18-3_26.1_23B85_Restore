uint64_t __AXXIPCSimpleSendData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _OWORD *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:a4];
  v11 = AXIPCServerGetServer(a1);
  v12 = v11;
  if (v11)
  {
    v13 = a6[1];
    *buf = *a6;
    v17 = v13;
    [v11 _handleIncomingMessage:v10 securityToken:a5 auditToken:buf clientPort:a2 completion:0];
    if (a2)
    {
      if (mach_port_deallocate(*MEMORY[0x1E69E9A60], a2))
      {
        _AXAssert();
      }

      a2 = 0;
    }
  }

  else
  {
    v14 = AXLogIPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a1;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "Did not find server for server port %d", buf, 8u);
    }

    a2 = 5;
  }

  return a2;
}

void _XSimpleSendData(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 68)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 51) == 1 && (v4 = *(a1 + 52), v4 == *(a1 + 64)))
    {
      if (!*(a1 + 68))
      {
        v5 = *(a1 + 72);
        if (v5 > 7 && v5 - 8 > 0x1F)
        {
          v7 = *(a1 + 12);
          v8 = *(a1 + 28);
          v9 = *(a1 + 40);
          v10 = *(a1 + 80);
          v11 = *(a1 + 104);
          v12[0] = *(a1 + 88);
          v12[1] = v11;
          *(a2 + 32) = __AXXIPCSimpleSendData(v7, v8, v9, v4, v10, v12);
          mig_deallocate(*(a1 + 40), *(a1 + 52));
          *(a1 + 40) = 0;
          *(a1 + 52) = 0;
          return;
        }
      }

      v6 = -309;
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

id AXIPCServerGetServer(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  [ServerPortLock lock];
  v2 = [ServerPortMapping objectForKey:v1];
  [ServerPortLock unlock];

  return v2;
}

BOOL AXIncrefSendRight(mach_port_name_t name)
{
  v2 = MEMORY[0x1E69E9A60];
  v3 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
  if (v3 == 17)
  {
    mach_port_mod_refs(*v2, name, 4u, 1);
  }

  return v3 == 0;
}

uint64_t _AXIPCSimpleSendData(int a1, int a2, mach_msg_timeout_t timeout, uint64_t a4, int a5)
{
  memset(&msg[4], 0, 32);
  *&msg[28] = a2;
  v9 = 1245184;
  v10 = a4;
  v11 = 16777472;
  v12 = a5;
  v13 = *MEMORY[0x1E69E99E0];
  v14 = a5;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x2000D5AD3;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v6 = mach_msg(msg, 17, 0x44u, 0, 0, timeout, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v6;
}

id sub_18B1617CC(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  a3();

  a4(0);
  v7 = sub_18B2C99D4();

  return v7;
}

uint64_t AXSettings.VoiceOver._$activities.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver___lock_activities);

  os_unfair_lock_lock(v1 + 4);
  sub_18B22F010(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t type metadata accessor for AXSettings.VoiceOver.Activity()
{
  result = qword_1EA9B5560;
  if (!qword_1EA9B5560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall AXSettings.VoiceOver.Activity._bridgeToObjectiveC()(AXVoiceOverActivity *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_18B2C9424();
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v132 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v134 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v133 = &v130 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v135 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v130 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v130 - v15;
  v136 = [objc_allocWithZone(AXVoiceOverActivity) init];
  v17 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v18 = *(v1 + v17[7]);
  if (v18)
  {
    v19 = sub_18B2C9B04();
  }

  else
  {
    v19 = 0;
  }

  v20 = v136;
  [v136 setAppIdentifiers_];

  v21 = sub_18B2C8F94();
  [v20 setUuid_];

  v22 = sub_18B2C9864();
  [v20 setName_];

  v23 = *(v2 + v17[6]);
  if (v23)
  {
    v24 = sub_18B163114(v23);
    sub_18B163348(v24);

    v25 = sub_18B2C9B04();

    [v136 setTextualContexts_];
  }

  if (v18)
  {
    v26 = sub_18B2C9B04();
  }

  else
  {
    v26 = 0;
  }

  [v136 setAppIdentifiers_];

  sub_18B163044(v2 + v17[8], v16, &unk_1EA9B74F0);
  v27 = sub_18B2C8FD4();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v16, 1, v27) != 1)
  {
    v29 = sub_18B2C8F94();
    (*(v28 + 8))(v16, v27);
  }

  [v136 setPunctuationGroup_];

  v30 = *(v2 + v17[9]);
  if (v30 != 2)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v136 setTableHeaders_];
  }

  v32 = *(v2 + v17[10]);
  if (v32 != 2)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v136 setTableRowAndColumn_];
  }

  v34 = *(v2 + v17[11]);
  if (v34 != 2)
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v136 setSpeakEmojis_];
  }

  v36 = *(v2 + v17[12]);
  if (v36 != 2)
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v136 setImageDescriptions_];
  }

  v38 = *(v2 + v17[13]);
  if (v38 != 2)
  {
    v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v136 setHints_];
  }

  v40 = v2 + v17[14];
  if ((*(v40 + 8) & 1) == 0)
  {
    v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v136 setContainerFeedback_];
  }

  v42 = v2 + v17[15];
  if ((*(v42 + 8) & 1) == 0)
  {
    v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v136 setNumberFeedback_];
  }

  v44 = v2 + v17[16];
  if ((*(v44 + 8) & 1) == 0)
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v136 setTypingStyle_];
  }

  v46 = v2 + v17[17];
  if ((*(v46 + 8) & 1) == 0)
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v136 setNavigationStyle_];
  }

  v48 = v17[18];
  sub_18B163044(v2 + v48, v13, &qword_1EA9B63D8);
  v49 = *(v4 + 48);
  if (v49(v13, 1, v3) == 1)
  {
    sub_18B1630AC(v13, &qword_1EA9B63D8);
    v50 = 0;
  }

  else
  {
    v131 = v17;
    sub_18B2C9404();
    v52 = v51;
    (*(v4 + 8))(v13, v3);
    if (v52)
    {
      v50 = sub_18B2C9864();
    }

    else
    {
      v50 = 0;
    }

    v17 = v131;
  }

  [v136 setVoiceIdentifier_];

  v53 = v135;
  sub_18B163044(v2 + v48, v135, &qword_1EA9B63D8);
  v54 = v3;
  if (v49(v53, 1, v3) == 1)
  {
    v55 = v4;
    sub_18B1630AC(v53, &qword_1EA9B63D8);
  }

  else
  {
    v56 = sub_18B2C9374();
    v57 = v4;
    v58 = v56;
    v59 = v3;
    v55 = v57;
    (*(v57 + 8))(v53, v59);
    if ((v58 & 0x100000000) == 0)
    {
      v60 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v61) = v58;
      v62 = [v60 initWithFloat_];
      [v136 setSpeechRate_];
    }
  }

  v135 = v55;
  v63 = v133;
  sub_18B163044(v2 + v48, v133, &qword_1EA9B63D8);
  if (v49(v63, 1, v54) == 1)
  {
    sub_18B1630AC(v63, &qword_1EA9B63D8);
  }

  else
  {
    v64 = sub_18B2C93B4();
    (*(v135 + 8))(v63, v54);
    if ((v64 & 0x100000000) == 0)
    {
      v65 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v66) = v64;
      v67 = [v65 initWithFloat_];
      [v136 setVolume_];
    }
  }

  v68 = v2 + v48;
  v69 = v134;
  sub_18B163044(v68, v134, &qword_1EA9B63D8);
  if (v49(v69, 1, v54) != 1)
  {
    (*(v135 + 32))(v132, v69, v54);
    sub_18B2C9404();
    v73 = v72;
    if ((sub_18B2C9374() & 0x100000000) != 0)
    {
      v134 = 0;
    }

    else
    {
      v74 = sub_18B2C9374();
      if ((v74 & 0x100000000) != 0)
      {
        __break(1u);
        goto LABEL_101;
      }

      v75 = v74;
      v76 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v77) = v75;
      v134 = [v76 initWithFloat_];
    }

    v78 = sub_18B2C9394();
    v130 = v54;
    if ((v78 & 0x100000000) != 0)
    {
      v83 = 0;
      if ((sub_18B2C93B4() & 0x100000000) != 0)
      {
LABEL_52:
        v84 = 0;
        v85 = sub_18B2C9344();
        if (v85)
        {
          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v79 = sub_18B2C9394();
    if ((v79 & 0x100000000) == 0)
    {
      v80 = v79;
      v81 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v82) = v80;
      v83 = [v81 initWithFloat_];
      if ((sub_18B2C93B4() & 0x100000000) != 0)
      {
        goto LABEL_52;
      }

LABEL_59:
      v92 = sub_18B2C93B4();
      if ((v92 & 0x100000000) == 0)
      {
        v93 = v92;
        v94 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v95) = v93;
        v84 = [v94 initWithFloat_];
        v85 = sub_18B2C9344();
        if (v85)
        {
LABEL_53:
          v138 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7510);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
          swift_dynamicCast();
          v86 = v137;
          v87 = sub_18B2C93D4();
          if (v87)
          {
            goto LABEL_54;
          }

          goto LABEL_62;
        }

LABEL_61:
        v86 = 0;
        v87 = sub_18B2C93D4();
        if (v87)
        {
LABEL_54:
          v138 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7500);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7040);
          swift_dynamicCast();
          v88 = v137;
          if (v73)
          {
            goto LABEL_55;
          }

          goto LABEL_63;
        }

LABEL_62:
        v88 = 0;
        if (v73)
        {
LABEL_55:
          v89 = sub_18B2C9864();

          if (v86)
          {
            goto LABEL_56;
          }

          goto LABEL_64;
        }

LABEL_63:
        v89 = 0;
        if (v86)
        {
LABEL_56:
          sub_18B2862C0(0, &qword_1ED653B98);
          v90 = sub_18B2C9804();

          if (v88)
          {
LABEL_57:
            sub_18B2C9BC4();
            v91 = sub_18B2C99D4();

LABEL_66:
            v96 = objc_allocWithZone(MEMORY[0x1E6988768]);
            v97 = v134;
            v98 = [v96 initWithVoiceId:v89 rate:v134 pitch:v83 volume:v84 voiceSettings:v90 effects:v91 boundLanguage:0];

            [v136 setVoiceSelection_];
            (*(v135 + 8))(v132, v130);
            v71 = &selRef_setSelection_;
            v70 = &selRef_setSelection_;
            goto LABEL_67;
          }

LABEL_65:
          v91 = 0;
          goto LABEL_66;
        }

LABEL_64:
        v90 = 0;
        if (v88)
        {
          goto LABEL_57;
        }

        goto LABEL_65;
      }

LABEL_102:
      __break(1u);
      return;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_18B1630AC(v69, &qword_1EA9B63D8);
  v70 = &selRef_setSelection_;
  v71 = &selRef_setSelection_;
LABEL_67:
  v99 = *(v2 + v17[19]);
  if (v99 != 2)
  {
    v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setSpeechMuted_];
  }

  v101 = *(v2 + v17[20]);
  if (v101 != 2)
  {
    v102 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setSoundMuted_];
  }

  v103 = v2 + v17[21];
  if ((*(v103 + 8) & 1) == 0)
  {
    v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v70[21]];
    [v136 setAudioDucking_];
  }

  v105 = (v2 + v17[22]);
  if ((v105[1] & 1) == 0)
  {
    v106 = *v105;
    v107 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v108) = v106;
    v109 = [v107 initWithFloat_];
    [v136 setAudioDuckingAmount_];
  }

  v110 = v2 + v17[23];
  if ((*(v110 + 8) & 1) == 0)
  {
    v111 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v70[21]];
    [v136 setModifierKeys_];
  }

  v112 = *(v2 + v17[24]);
  if (v112 != 2)
  {
    v113 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setBrailleStatusCellGeneral_];
  }

  v114 = *(v2 + v17[25]);
  if (v114 != 2)
  {
    v115 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setBrailleStatusCellText_];
  }

  if (*(v2 + v17[26] + 8))
  {
    v116 = sub_18B2C9864();
  }

  else
  {
    v116 = 0;
  }

  [v136 setBrailleTable_];

  if (*(v2 + v17[27] + 8))
  {
    v117 = sub_18B2C9864();
  }

  else
  {
    v117 = 0;
  }

  [v136 setBrailleInputTable_];

  v118 = v2 + v17[28];
  if ((*(v118 + 8) & 1) == 0)
  {
    v119 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v70[21]];
    [v136 setBrailleOutput_];
  }

  v120 = v2 + v17[29];
  if ((*(v120 + 8) & 1) == 0)
  {
    v121 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v70[21]];
    [v136 setBrailleInput_];
  }

  v122 = v2 + v17[30];
  if ((*(v122 + 8) & 1) == 0)
  {
    v123 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v136 setBrailleAutoAdvanceDuration_];
  }

  v124 = *(v2 + v17[31]);
  if (v124 != 2)
  {
    v125 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setBrailleAlerts_];
  }

  v126 = *(v2 + v17[32]);
  if (v126 != 2)
  {
    v127 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setBrailleFormatting_];
  }

  v128 = *(v2 + v17[33]);
  if (v128 != 2)
  {
    v129 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v71[26]];
    [v136 setBrailleStartAutoActivateOnTextFields_];
  }
}

uint64_t AXInPreboardScenario()
{
  if (AXDeviceIsAudioAccessory())
  {
    v0 = 0;
  }

  else
  {
    if (AXInPreboardScenario_onceToken != -1)
    {
      AXInPreboardScenario_cold_1();
    }

    v0 = InPreBoardMode;
  }

  return v0 & 1;
}

void __AXInPreboardScenario_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleInPreBoardModeUpdate, @"AXInternalInPreBoardModeUpdatedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  v1 = AXPreBoardQueue();
  dispatch_sync(v1, &__block_literal_global_3);
}

id AXPreBoardQueue()
{
  if (AXPreBoardQueue_onceToken != -1)
  {
    AXPreBoardQueue_cold_1();
  }

  v1 = AXPreBoardQueue_PreBoardQueue;

  return v1;
}

uint64_t __AXPreBoardQueue_block_invoke()
{
  AXPreBoardQueue_PreBoardQueue = dispatch_queue_create("AXPreBoardQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __AXInPreboardScenario_block_invoke_2()
{
  v0 = +[AXBackBoardServer server];
  InPreBoardMode = [v0 inPreboardMode];
}

char *sub_18B162C48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B162D54(char *a1, int64_t a2, char a3)
{
  result = sub_18B162C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18B162D74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18B2C9F64();
  sub_18B2C98D4();
  v8 = sub_18B2C9FB4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_18B2C9F24() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_18B162EC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_18B162EC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_18B233E14();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_18B234F30();
      goto LABEL_16;
    }

    sub_18B235970();
  }

  v10 = *v4;
  sub_18B2C9F64();
  sub_18B2C98D4();
  result = sub_18B2C9FB4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_18B2C9F24();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_18B2C9F34();
  __break(1u);
  return result;
}

uint64_t sub_18B163044(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B1630AC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B163114(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_18B162D54(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_18B2C9C74();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_18B2C9894();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_18B162D54((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_18B16333C(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_18B16333C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_18B16333C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18B163348(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x18CFF0C30](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_18B162D74(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

double AXDeviceGetMainScreenBounds()
{
  v0 = _AXSharedDisplayManager();
  if ([v0 isInitialized])
  {
    v1 = [v0 coreAnimationMainDisplay];
    [v1 referenceBounds];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
  }

  return v3;
}

id _AXSharedDisplayManager()
{
  if (_AXSharedDisplayManager_CanAccessDisplayManager)
  {
    v1 = 0;
  }

  else
  {
    if (_AXSharedDisplayManager_onceToken != -1)
    {
      _AXSharedDisplayManager_cold_1();
    }

    v1 = _AXSharedDisplayManager__Shared;
  }

  return v1;
}

uint64_t AXSettingsReturnBoolValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 BOOLValueForPreferenceKey:v3 defaultValue:a2];

  return v5;
}

void *sub_18B164144@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_18B164160@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_18B1641A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B1641E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B164234()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B16427C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B1642F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserVoiceConfiguration();
  result = sub_18B2C9404();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B164350(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18B2C9424();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B1643FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18B2C9424();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B16452C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B164564@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AccessibilityReader.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1645BC@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AccessibilityReader.automaticallyStartSpeaking.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164630()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B164668()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18B164738@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.resolver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164764(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings9VoiceOver____lazy_storage___resolver) = *a1;
}

uint64_t sub_18B1647B0@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.defaultVoiceSelectionsByLanguage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B1647F4@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.voiceRotors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164838@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.currentRotorVoiceIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B16487C@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.rotorItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B1648C0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.largeCursorEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164918@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164970@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.contentDescriptionLevel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B1649C4@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.useDigitalCrownNavigation.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164A1C@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.imageCaptionsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164A74@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.useTVToggleStyleNavigation.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164B20@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.hearingAidRoutingEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164B78@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.listAnnotation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164BCC@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.useSiriSounds.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164C24@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.cursorOutputStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164C78@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164CD0@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleDisplayOutputMode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164D24@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleDisplayInputMode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164D78@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesInputMode.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164DCC@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleDisplaySyncInputOutputTables.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164E20@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164E78@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleDisplayInputTableIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B164EBC@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleDisplayOutputTableIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B164F00@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesInputTableIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B164F44@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B164F9C@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesSoundOption.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B164FF0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165048@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1650A0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1650F8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165150@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1651A8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165200@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesSingleHandStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165254@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleGesturesCharacterAcceptanceTestBraille.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B165298@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.perkinsKeyboardInputEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1652F0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165348@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1653A0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.keyboardBrailleUIEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1653F8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165450@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIReadListItemsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1654A8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIVisualsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165500@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIBrailleNotesSortType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165554@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B1655A8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165600@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIBRFReflowEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165658@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1656B0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165708@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUILiveCaptionsSource.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B16575C@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1657B4@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUIShowsBackButton.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B16580C@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165860@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.brailleUsesUnderlineCursor.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1658E0@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.activities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165924@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.selectedActivityId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B165968@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.languageDetectionEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1659C0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.pitchChangeEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165A18@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.VoiceOver.selectedLanguage.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B165A5C@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.VoiceOver.speakUpEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165AB4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B165B08()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B165B50()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_18B165C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B165CC4@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.LiveSpeech.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B165D1C@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.LiveSpeech.keyboardVoiceSelections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165D60@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.LiveSpeech.preferredVoices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165DA4@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.LiveSpeech.preferredKeyboardLanguages.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165E3C@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.LiveSpeech.resolver.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165E68(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings10LiveSpeech____lazy_storage___resolver) = *a1;
}

uint64_t sub_18B165EB4@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.LiveSpeech.tripleClickItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B165F5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B165F94@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.Zoom.shouldLockPassthroughDepthToHands.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B16606C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EA9B6F68;
  *a1 = qword_1EA9B6F60;
  a1[1] = v2;
}

uint64_t sub_18B1660C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_18B2C8FD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_18B166258(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_18B2C8FD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[18];

  return v16(v17, a2, a2, v15);
}

id sub_18B166448@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selection];
  *a2 = result;
  return result;
}

uint64_t sub_18B1664A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B1664E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

id sub_18B166518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 migratedSwitchControlMenuItemsPreferenceKeys];
  *a2 = result;
  return result;
}

id sub_18B166568@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 voiceOverEffectiveSpeakingRate];
  *a2 = v4;
  return result;
}

id sub_18B1665B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 voiceOverEffectiveSpeakingVolume];
  *a2 = v4;
  return result;
}

id sub_18B1665F8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 voiceOverSpeakingRate];
  *a2 = v4;
  return result;
}

uint64_t sub_18B166678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18B16674C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7118);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_18B1668C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B1668F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_18B166948()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B166980@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.useNinePointCalibration.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1669D8@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B166A30@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.scannerSpeechEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166A88@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166AE0@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166B38@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166B90@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166BE8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166C94()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18B166CF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B166D30()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B166D80()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B166E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B166E60@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.SwitchControl.scanningStyle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B166EB4@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvg_0();
  *a1 = result;
  return result;
}

void sub_18B166EDC()
{

  _sSo10AXSettingsC22AccessibilityUtilitiesE13SwitchControlC8switchesSaySo8AXSwitchCGvs_0();
}

uint64_t sub_18B166F08@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SwitchControl.longPressEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166F60@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SwitchControl.showFaceGuidance.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B166FB8@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SwitchControl.eyeTrackingDwellEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B167010@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SwitchControl.skipCalibration.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B167070@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.SwitchControl.ignoreInvalidConfig.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1670DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167114@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.Touch.preferActionSliderAlternative.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B16716C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___VOActivityKeyedArchiveHelper_hashableValue;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_18B1671CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167204@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.NameRecognition.userNeedsDefaultEnglishLocale.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B16725C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167340()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167378@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.Magnifier.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1673DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B1674B4@<X0>(uint64_t *a1@<X8>)
{
  result = AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18B167528()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167560@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.GuestPass.shouldSyncToiCloud.getter();
  *a1 = result & 1;
  return result;
}

double sub_18B1675B8@<D0>(_OWORD *a1@<X8>)
{
  AXSettings.GuestPass.settingsToIncludeInTransfer.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18B167654@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.GuestPass.didShowOnboarding.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B1676AC@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.GuestPass.presentDevicePicker.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B167704@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.GuestPass.presentOnboarding.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18B16775C@<X0>(_BYTE *a1@<X8>)
{
  result = AXSettings.GuestPass.presentProfilePicker.getter();
  *a1 = result & 1;
  return result;
}

id sub_18B1677DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableVoiceOverCaptions];
  *a2 = result;
  return result;
}

id sub_18B167824@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 voiceOverLargeCursorEnabled];
  *a2 = result;
  return result;
}

id sub_18B16786C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speechControllerIdleOpacity];
  *a2 = v4;
  return result;
}

id sub_18B1678B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSpeechController];
  *a2 = result;
  return result;
}

id sub_18B1678FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 increaseContrastEnabled];
  *a2 = result;
  return result;
}

id sub_18B167944@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 assistiveTouchScannerCursorHighVisibilityEnabled];
  *a2 = result;
  return result;
}

id sub_18B16798C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 switchControlPointPickerSelectionStyle];
  *a2 = result;
  return result;
}

id sub_18B1679D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assistiveTouchAxisSweepSpeed];
  *a2 = v4;
  return result;
}

id sub_18B167A1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assistiveTouchCursorColor];
  *a2 = result;
  return result;
}

id sub_18B167A64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assistiveTouchMouseDwellControlActivationTimeout];
  *a2 = v4;
  return result;
}

id sub_18B167AAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout];
  *a2 = v4;
  return result;
}

uint64_t sub_18B167AF4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B167B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void _handleInPreBoardModeUpdate()
{
  v0 = AXPreBoardQueue();
  dispatch_async(v0, &__block_literal_global_56);
}

uint64_t AXInCheckerBoardScenario()
{
  if (AXInCheckerBoardScenario_onceToken != -1)
  {
    AXInCheckerBoardScenario_cold_1();
  }

  return InCheckerBoardMode;
}

void __AXInCheckerBoardScenario_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleInCheckerBoardModeUpdate, @"AXInternalInCheckerBoardModeUpdatedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  v1 = +[AXBackBoardServer server];
  InCheckerBoardMode = [v1 inCheckerBoardMode];
}

void _handleInCheckerBoardModeUpdate()
{
  v0 = +[AXBackBoardServer server];
  InCheckerBoardMode = [v0 inCheckerBoardMode];

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"AXInCheckerBoardScenarioUpdatedNotification", 0, 0, 1u);
}

uint64_t AXSessionIsLoginSession(BOOL *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AXSessionIsLoginSession_onceToken != -1)
  {
    AXSessionIsLoginSession_cold_1();
  }

  v2 = SessionIsLoginSession;
  if (SessionIsLoginSession)
  {
    if (a1)
    {
      *a1 = 1;
    }
  }

  else
  {
    v3 = +[AXBackBoardServer server];
    [v3 sessionIsLoginSessionWithResult:&__block_literal_global_16];

    v4 = SessionIsLoginSession;
    if (a1)
    {
      *a1 = SessionIsLoginSession != 0;
    }

    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v4 != 0;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Login session uninitialized, attempting to retrieve (initialized: %d now)", v7, 8u);
    }

    v2 = SessionIsLoginSession;
  }

  return [v2 BOOLValue];
}

void __AXSessionIsLoginSession_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleSessionIsLoginSessionUpdate, @"AXInternalSessionIsLoginSessionChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void _handleSessionIsLoginSessionUpdate()
{
  v0 = +[AXBackBoardServer server];
  [v0 sessionIsLoginSessionWithResult:&__block_literal_global_61];
}

void __AXSessionIsLoginSession_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Retrieved login session status: %d", v6, 8u);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = SessionIsLoginSession;
  SessionIsLoginSession = v4;
}

uint64_t AXUtilitiesFrameworkBundle()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

BOOL AXUICanShowPointerControlSettings()
{
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 laserEnabled];

  if (v1)
  {
    v2 = _AXSAssistiveTouchEnabled();
    v3 = _AXSAssistiveTouchScannerEnabled();
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchScanningMode];

    if (v5 == 3)
    {
      v6 = 1;
    }

    else
    {
      v8 = +[AXSettings sharedInstance];
      v6 = [v8 assistiveTouchScanningMode] == 5;
    }

    v9 = v2 | v3;
    v10 = +[AXPointerDeviceManager sharedInstance];
    v11 = [v10 connectedDevices];
    v12 = [v11 count];

    v13 = v9 != 0;
    IsPhone = AXDeviceIsPhone();
    v15 = v12 != 0;
    if (IsPhone)
    {
      return v15 && v13 || v6 && v3 != 0;
    }

    else
    {
      return v15 || v13;
    }
  }

  else
  {
    return 0;
  }
}

id AXZoomLensDefault()
{
  IsPad = AXDeviceIsPad();
  v1 = MEMORY[0x1E69886E0];
  if (!IsPad)
  {
    v1 = MEMORY[0x1E69886D8];
  }

  v2 = *v1;

  return v2;
}

id AXZoomAllLensEffects()
{
  if (AXZoomAllLensEffects_onceToken != -1)
  {
    AXZoomAllLensEffects_cold_1();
  }

  v1 = AXZoomAllLensEffects_Result;

  return v1;
}

void __AXZoomAllLensEffects_block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFB8];
  v1 = *MEMORY[0x1E69886C0];
  v6[0] = *MEMORY[0x1E69886D0];
  v6[1] = v1;
  v2 = *MEMORY[0x1E69886B0];
  v6[2] = *MEMORY[0x1E69886A8];
  v6[3] = v2;
  v6[4] = *MEMORY[0x1E69886C8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v0 orderedSetWithArray:v3];
  v5 = AXZoomAllLensEffects_Result;
  AXZoomAllLensEffects_Result = v4;
}

id AXZoomAllLensModes()
{
  if (AXZoomAllLensModes_onceToken != -1)
  {
    AXZoomAllLensModes_cold_1();
  }

  v1 = AXZoomAllLensModes_Result;

  return v1;
}

void __AXZoomAllLensModes_block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA0];
  v1 = *MEMORY[0x1E69886E8];
  v9[0] = *MEMORY[0x1E69886E0];
  v9[1] = v1;
  v9[2] = *MEMORY[0x1E69886D8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v3 = [v0 orderedSetWithArray:v2];
  v4 = AXZoomAllLensModes_Result;
  AXZoomAllLensModes_Result = v3;

  v5 = AXZoomAllLensModes_Result;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:&stru_1EFE6D570 ascending:1 selector:sel_compare_];
  v8 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  [v5 sortUsingDescriptors:v7];
}

id AXZoomUserSelectableLensModes()
{
  if (AXZoomUserSelectableLensModes_onceToken != -1)
  {
    AXZoomUserSelectableLensModes_cold_1();
  }

  v1 = AXZoomUserSelectableLensModes_Result;

  return v1;
}

void __AXZoomUserSelectableLensModes_block_invoke()
{
  v15[3] = *MEMORY[0x1E69E9840];
  IsPad = AXDeviceIsPad();
  v1 = MEMORY[0x1E695DFA0];
  if (IsPad)
  {
    v2 = *MEMORY[0x1E69886E8];
    v15[0] = *MEMORY[0x1E69886E0];
    v15[1] = v2;
    v15[2] = *MEMORY[0x1E69886D8];
    v3 = MEMORY[0x1E695DEC8];
    v4 = v15;
    v5 = 3;
  }

  else
  {
    v6 = *MEMORY[0x1E69886D8];
    v14[0] = *MEMORY[0x1E69886E0];
    v14[1] = v6;
    v3 = MEMORY[0x1E695DEC8];
    v4 = v14;
    v5 = 2;
  }

  v7 = [v3 arrayWithObjects:v4 count:v5];
  v8 = [v1 orderedSetWithArray:v7];
  v9 = AXZoomUserSelectableLensModes_Result;
  AXZoomUserSelectableLensModes_Result = v8;

  v10 = AXZoomUserSelectableLensModes_Result;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:&stru_1EFE6D570 ascending:1 selector:sel_compare_];
  v13 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v10 sortUsingDescriptors:v12];
}

id AXZoomDockPositions()
{
  if (AXZoomDockPositions_onceToken != -1)
  {
    AXZoomDockPositions_cold_1();
  }

  v1 = AXZoomDockPositions_Result;

  return v1;
}

void __AXZoomDockPositions_block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA0];
  v1 = *MEMORY[0x1E6988690];
  v6[0] = *MEMORY[0x1E69886A0];
  v6[1] = v1;
  v2 = *MEMORY[0x1E6988688];
  v6[2] = *MEMORY[0x1E6988698];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [v0 orderedSetWithArray:v3];
  v5 = AXZoomDockPositions_Result;
  AXZoomDockPositions_Result = v4;
}

uint64_t AXGetSiriRequireSiriForInterruptionsInValue()
{
  v0 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v1 = [v0 isSiriAccessibilityBargeInEnabled];

  return v1 ^ 1u;
}

void AXSetSiriRequireSiriForInterruptionsInValue(int a1)
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  [v2 setSiriAccessibilityBargeInEnabled:a1 ^ 1u];
}

uint64_t AXGetSiriCallHangUpValue()
{
  v0 = [getVTPreferencesClass() sharedPreferences];
  v1 = [v0 canUseVoiceTriggerDuringPhoneCall];

  return v1;
}

id getVTPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVTPreferencesClass_softClass;
  v7 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVTPreferencesClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getVTPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B168A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXSetSiriCallHangUpValue(uint64_t a1)
{
  v2 = [getVTPreferencesClass() sharedPreferences];
  [v2 setCanUseVoiceTriggerDuringPhoneCall:a1];
}

uint64_t AXApplicationSupportsHapticMusic(void *a1)
{
  v1 = a1;
  v2 = [v1 URL];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E698E640]);
    v4 = [v1 URL];
    v5 = [v3 initWithURL:v4];

    v6 = [v5 infoDictionary];
    v7 = [v6 count];

    if (v7)
    {
      objc_opt_class();
      v8 = [v5 infoDictionary];
    }

    else
    {
      v12 = MEMORY[0x1E695DF20];
      v13 = MEMORY[0x1E695DFF8];
      v14 = [v5 bundlePath];
      v15 = [v14 stringByAppendingPathComponent:@"Info.plist"];
      v16 = [v13 URLWithString:v15];
      v8 = [v12 dictionaryWithContentsOfURL:v16];

      objc_opt_class();
    }

    v9 = [v8 objectForKey:@"MusicHapticsSupported"];
    v10 = __UIAccessibilityCastAsClass();

    if ([v10 BOOLValue])
    {
      v11 = 1;
    }

    else
    {
      v17 = [v1 bundleIdentifier];
      if ([v17 isEqualToString:@"com.apple.Music"])
      {
        v11 = 1;
      }

      else
      {
        v18 = [v1 bundleIdentifier];
        if ([v18 isEqualToString:@"com.apple.music.classical"])
        {
          v11 = 1;
        }

        else
        {
          v19 = [v1 bundleIdentifier];
          v11 = [v19 isEqualToString:@"com.apple.Preferences"];
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void ___handleInPreBoardModeUpdate_block_invoke()
{
  v0 = +[AXBackBoardServer server];
  InPreBoardMode = [v0 inPreboardMode];

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"AXInPreBoardScenarioUpdatedNotification", 0, 0, 1u);
}

void ___handleSessionIsLoginSessionUpdate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v4 = SessionIsLoginSession;
  SessionIsLoginSession = v3;

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"AXSessionIsLoginSessionUpdatedNotification", 0, 0, 1u);
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Updated login session status: %d", v7, 8u);
  }
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71E9AA0;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B1693B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id soft_AXUIAssistiveTouchStringForName(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAXUIAssistiveTouchStringForNameSymbolLoc_ptr;
  v9 = getAXUIAssistiveTouchStringForNameSymbolLoc_ptr;
  if (!getAXUIAssistiveTouchStringForNameSymbolLoc_ptr)
  {
    v3 = AccessibilityUIUtilitiesLibrary();
    v7[3] = dlsym(v3, "AXUIAssistiveTouchStringForName");
    getAXUIAssistiveTouchStringForNameSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_AXUIAssistiveTouchStringForName_cold_1();
  }

  v4 = v2(v1, 1);

  return v4;
}

void sub_18B169648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B169C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_paCurrentRouteSupportsTransparencyAccommodations()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_ptr;
  v6 = getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_ptr;
  if (!getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_ptr)
  {
    v1 = PersonalAudioLibrary();
    v4[3] = dlsym(v1, "paCurrentRouteSupportsTransparencyAccommodations");
    getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_paCurrentRouteSupportsTransparencyAccommodations_cold_1();
  }

  return v0();
}

void sub_18B169D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_paBluetoothDeviceSupportsSSL(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getpaBluetoothDeviceSupportsSSLSymbolLoc_ptr;
  v9 = getpaBluetoothDeviceSupportsSSLSymbolLoc_ptr;
  if (!getpaBluetoothDeviceSupportsSSLSymbolLoc_ptr)
  {
    v3 = PersonalAudioLibrary();
    v7[3] = dlsym(v3, "paBluetoothDeviceSupportsSSL");
    getpaBluetoothDeviceSupportsSSLSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_paBluetoothDeviceSupportsSSL_cold_1();
  }

  v4 = v2(v1);

  return v4;
}

void sub_18B169E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPASettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPASettingsClass_softClass;
  v7 = getPASettingsClass_softClass;
  if (!getPASettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPASettingsClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getPASettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B169F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWatchControlSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWatchControlSettingsClass_softClass;
  v7 = getWatchControlSettingsClass_softClass;
  if (!getWatchControlSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWatchControlSettingsClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getWatchControlSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B16A22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B16A530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXUIClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXUIClientClass_softClass;
  v7 = getAXUIClientClass_softClass;
  if (!getAXUIClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXUIClientClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getAXUIClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B16A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B16AF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B16B464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXPISystemActionHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXPISystemActionHelperClass_softClass;
  v7 = getAXPISystemActionHelperClass_softClass;
  if (!getAXPISystemActionHelperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXPISystemActionHelperClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getAXPISystemActionHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B16C050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXGuestPassManager_Soft()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXGuestPassManagerSymbolLoc_ptr;
  v7 = getAXGuestPassManagerSymbolLoc_ptr;
  if (!getAXGuestPassManagerSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXGuestPassManagerSymbolLoc_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getAXGuestPassManagerSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    AXGuestPassManager_Soft_cold_1();
  }

  v1 = v0();

  return v1;
}

void sub_18B16C134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _handleTripleClickPrefNotificationChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Handling triple click notification for %@", &v6, 0xCu);
  }

  v5 = [MEMORY[0x1E6994278] sharedInstance];
  [v5 reloadControlsForExtension:@"com.apple.AccessibilityUIServer.AccessibilityControlsExtension" kind:0 reason:@"AX shortcut preference changed"];
}

void *__getAXUILocalizedStringForKeyWithTableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUILocalizedStringForKeyWithTable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUILocalizedStringForKeyWithTableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71E9C60;
    v4 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    AccessibilityUIUtilitiesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXUIAssistiveTouchStringForNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIAssistiveTouchStringForName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIAssistiveTouchStringForNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHUComfortSoundsSettingsClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HearingUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71E9C78;
    v5 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    __getHUComfortSoundsSettingsClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HUComfortSoundsSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUComfortSoundsSettingsClass_block_invoke_cold_1();
  }

  getHUComfortSoundsSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "paCurrentBluetoothDeviceSupportingTransparencyAccommodations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PersonalAudioLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PersonalAudioLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PersonalAudioLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E71E9C90;
    v4 = 0;
    PersonalAudioLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PersonalAudioLibraryCore_frameworkLibrary;
  if (!PersonalAudioLibraryCore_frameworkLibrary)
  {
    PersonalAudioLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __PersonalAudioLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PersonalAudioLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "paCurrentRouteSupportsTransparencyAccommodations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getpaCurrentRouteSupportsTransparencyAccommodationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getpaBluetoothDeviceSupportsSSLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PersonalAudioLibrary();
  result = dlsym(v2, "paBluetoothDeviceSupportsSSL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getpaBluetoothDeviceSupportsSSLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPASettingsClass_block_invoke(uint64_t a1)
{
  PersonalAudioLibrary();
  result = objc_getClass("PASettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPASettingsClass_block_invoke_cold_1();
  }

  getPASettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WatchControlSettingsLibraryCore()
{
  if (!WatchControlSettingsLibraryCore_frameworkLibrary)
  {
    WatchControlSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return WatchControlSettingsLibraryCore_frameworkLibrary;
}

uint64_t __WatchControlSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WatchControlSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getWatchControlSettingsClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!WatchControlSettingsLibraryCore())
  {
    __getWatchControlSettingsClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("WatchControlSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWatchControlSettingsClass_block_invoke_cold_1();
  }

  getWatchControlSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXUIClientClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71E9CC0;
    v5 = 0;
    AccessibilityUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    __getAXUIClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1();
  }

  getAXUIClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSpeakThisServicesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpeakThisServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71E9CD8;
    v5 = 0;
    SpeakThisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    __getSpeakThisServicesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SpeakThisServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakThisServicesClass_block_invoke_cold_1();
  }

  getSpeakThisServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpeakThisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpeakThisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAXPISystemActionHelperClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityPhysicalInteractionLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71E9CF0;
    v5 = 0;
    AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXPISystemActionHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_1();
  }

  getAXPISystemActionHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityPhysicalInteractionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXGuestPassManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AXGuestPassServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AXGuestPassServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71E9D08;
    v6 = 0;
    AXGuestPassServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AXGuestPassServicesLibraryCore_frameworkLibrary;
  if (!AXGuestPassServicesLibraryCore_frameworkLibrary)
  {
    __getAXGuestPassManagerSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AXGuestPassManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXGuestPassManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXGuestPassServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXGuestPassServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id AXVoiceNameForVoiceId(void *a1, int a2)
{
  if (a1)
  {
    v3 = MEMORY[0x1E69D9E90];
    v4 = a1;
    v5 = [v3 sharedInstance];
    v6 = [v5 resourceWithVoiceId:v4];

    v7 = [v6 localizedName];
    if (a2 && [v6 type] == 3 && (objc_msgSend(v6, "subtype") != 7 || objc_msgSend(v6, "subtype") == 7 && objc_msgSend(v6, "footprint") != 3))
    {
      v10 = +[AXLanguageManager sharedInstance];
      v11 = [v6 primaryLanguage];
      v12 = [v10 dialectForLanguageID:v11];

      v13 = MEMORY[0x1E696AEC0];
      v14 = AXLocalizedString(@"siri.and.locale");
      v15 = [v12 localeNameInCurrentLocale];
      v8 = [v13 stringWithFormat:v14, v7, v15];
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id AXSiriTTSSynthesisVoiceFromVoiceIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([MEMORY[0x1E69D9E98] isSiriVoiceIdentifier:v3])
  {
    v17 = v4;
    v18 = 0;
    v16 = 0;
    v5 = &v16;
    TTSGetComponentsInNamedSiriVoiceIdentifier();
    v6 = v18;
    v7 = v17;

    v4 = v7;
LABEL_5:
    v8 = *v5;
    goto LABEL_7;
  }

  if ([MEMORY[0x1E69D9E98] isVocalizerVoiceIdentifier:v3])
  {
    v14 = 0;
    v15 = 0;
    v5 = &v14;
    TTSGetComponentsInNashvilleVoiceIdentifier();
    v6 = v15;
    goto LABEL_5;
  }

  v6 = 0;
  v8 = 0;
LABEL_7:
  v9 = objc_alloc(MEMORY[0x1E69D3320]);
  v10 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v11 = [v9 initWithLanguage:v10 name:v6];

  if ([MEMORY[0x1E69D9E98] isNeuralAXSiriVoiceIdentifier:v3])
  {
    v12 = 5;
  }

  else if ([MEMORY[0x1E69D9E98] isNeuralSiriVoiceIdentifier:v3])
  {
    v12 = 4;
  }

  else if ([MEMORY[0x1E69D9E98] isSiriVoiceIdentifier:v3])
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  [v11 setType:v12];

  return v11;
}

uint64_t AXSiriTTSSynthesisVoiceAssetsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 language];
  v6 = [v4 language];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v3, "type"), v7 == objc_msgSend(v4, "type")))
  {
    v8 = [v3 name];
    v9 = [v4 name];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id AXClientsForSiriResource(void *a1)
{
  v1 = a1;
  if ([v1 type] == 3)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = objc_alloc_init(MEMORY[0x1E69D32E8]);
    v4 = [v1 voiceId];
    v5 = [v1 primaryLanguage];
    v6 = AXSiriTTSSynthesisVoiceFromVoiceIdentifier(v4, v5);

    v7 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __AXClientsForSiriResource_block_invoke;
    v15[3] = &unk_1E71E9EC0;
    v16 = v6;
    v8 = v2;
    v17 = v8;
    v18 = v7;
    v9 = v7;
    v10 = v6;
    [v3 subscribedVoicesWithReply:v15];
    v11 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v9, v11);
    v12 = v18;
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __AXClientsForSiriResource_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138412546;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 voice];
        v11 = AXSiriTTSSynthesisVoiceAssetsAreEqual(v10, *(a1 + 32));

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v9 clientId];
          LOBYTE(v12) = [v12 containsObject:v13];

          if (v12)
          {
            v14 = AXLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v9 voice];
              v16 = [v15 name];
              v17 = [v9 clientId];
              *buf = v19;
              v25 = v16;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_INFO, "AXClientsForSiriResource: Found duplicate subscription %@ | %@", buf, 0x16u);
            }
          }

          else
          {
            v18 = *(a1 + 40);
            v14 = [v9 clientId];
            [v18 addObject:v14];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

id AXClientsForSiriVoice(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = [v1 array];
  v4 = objc_alloc_init(MEMORY[0x1E69D32E8]);
  v5 = [v2 identifier];
  v6 = [v2 language];

  v7 = AXSiriTTSSynthesisVoiceFromVoiceIdentifier(v5, v6);

  v8 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __AXClientsForSiriVoice_block_invoke;
  v16[3] = &unk_1E71E9EC0;
  v17 = v7;
  v9 = v3;
  v18 = v9;
  v19 = v8;
  v10 = v8;
  v11 = v7;
  [v4 subscribedVoicesWithReply:v16];
  v12 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v10, v12);
  v13 = v19;
  v14 = v9;

  return v9;
}

void __AXClientsForSiriVoice_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138412546;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 voice];
        v11 = AXSiriTTSSynthesisVoiceAssetsAreEqual(v10, *(a1 + 32));

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v9 clientId];
          LOBYTE(v12) = [v12 containsObject:v13];

          if (v12)
          {
            v14 = AXLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v9 voice];
              v16 = [v15 name];
              v17 = [v9 clientId];
              *buf = v19;
              v25 = v16;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_INFO, "AXClientsForSiriVoice: Found duplicate subscription %@ | %@", buf, 0x16u);
            }
          }

          else
          {
            v18 = *(a1 + 40);
            v14 = [v9 clientId];
            [v18 addObject:v14];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t AXResourceActivelyUsed(void *a1)
{
  v1 = a1;
  v2 = AXClientsForSiriResource(v1);
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 selectedSpeechVoiceIdentifiers];
  v5 = [v1 voiceId];

  v6 = [v4 containsObject:v5];
  if ([v2 count] == 1)
  {
    v7 = [v2 firstObject];
    if ([v7 isEqualToString:@"com.apple.accessibility.AccessibilityUIServer"])
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [v2 firstObject];
      if ([v8 isEqualToString:@"com.apple.AccessibilityUIServer"])
      {

        if (!v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = [v2 firstObject];
        v10 = [v9 isEqualToString:@"com.apple.accessibility.axassetsd"];

        if (!(v6 & 1 | ((v10 & 1) == 0)))
        {
LABEL_11:
          LOBYTE(v6) = 0;
          goto LABEL_10;
        }
      }
    }
  }

  LOBYTE(v6) = ([v2 count] != 0) | v6;
LABEL_10:

  return v6 & 1;
}

void AXSwapSpeechSettingsIdentifiers(void *a1, void *a2, void *a3)
{
  v33 = a1;
  v5 = a2;
  v6 = a3;
  v7 = +[AXSettings sharedInstance];
  v8 = *MEMORY[0x1E6988660];
  v9 = [v7 speechVoiceIdentifierForLanguageWithoutFallback:v6 sourceKey:*MEMORY[0x1E6988660]];

  if ([v9 isEqualToString:v33])
  {
    v10 = AXCRemapLanguageCodeToFallbackIfNeccessary();
    v11 = +[AXSettings sharedInstance];
    [v11 setSpeechVoiceIdentifier:v5 forLanguage:v10 sourceKey:v8];

    if (([v10 isEqualToString:v6] & 1) == 0)
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setSpeechVoiceIdentifier:0 forLanguage:v6 sourceKey:v8];
    }
  }

  v13 = AXCLanguageCanonicalFormToGeneralLanguageUsingFallback();
  v14 = +[AXSettings sharedInstance];
  v15 = [v14 speechVoiceIdentifierForLanguageWithoutFallback:v13 sourceKey:v8];

  if ([v15 isEqualToString:v33])
  {
    v16 = AXCLanguageCanonicalFormToGeneralLanguage();
    v17 = +[AXSettings sharedInstance];
    [v17 setSpeechVoiceIdentifier:v5 forLanguage:v16 sourceKey:v8];

    if (([v16 isEqualToString:v6] & 1) == 0)
    {
      v18 = +[AXSettings sharedInstance];
      [v18 setSpeechVoiceIdentifier:0 forLanguage:v13 sourceKey:v8];
    }
  }

  v19 = +[AXSettings sharedInstance];
  v20 = *MEMORY[0x1E6988648];
  v21 = [v19 speechVoiceIdentifierForLanguageWithoutFallback:v13 sourceKey:*MEMORY[0x1E6988648]];

  if ([v21 isEqualToString:v33])
  {
    v22 = AXCLanguageCanonicalFormToGeneralLanguage();
    v23 = +[AXSettings sharedInstance];
    [v23 setSpeechVoiceIdentifier:v5 forLanguage:v22 sourceKey:v20];

    if (([v22 isEqualToString:v6] & 1) == 0)
    {
      v24 = +[AXSettings sharedInstance];
      [v24 setSpeechVoiceIdentifier:0 forLanguage:v13 sourceKey:v20];
    }
  }

  v25 = +[AXSettings sharedInstance];
  v26 = *MEMORY[0x1E6988650];
  v27 = [v25 speechVoiceIdentifierForLanguageWithoutFallback:v13 sourceKey:*MEMORY[0x1E6988650]];

  if ([v27 isEqualToString:v33])
  {
    v32 = v15;
    v28 = v9;
    v29 = AXCLanguageCanonicalFormToGeneralLanguage();
    v30 = +[AXSettings sharedInstance];
    [v30 setSpeechVoiceIdentifier:v5 forLanguage:v29 sourceKey:v26];

    if (([v29 isEqualToString:v6] & 1) == 0)
    {
      v31 = +[AXSettings sharedInstance];
      [v31 setSpeechVoiceIdentifier:0 forLanguage:v13 sourceKey:v26];
    }

    v9 = v28;
    v15 = v32;
  }
}

uint64_t AXVoiceActivelyUsed(void *a1)
{
  v1 = a1;
  v2 = AXClientsForSiriVoice(v1);
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 selectedSpeechVoiceIdentifiers];
  v5 = [v1 identifier];

  v6 = [v4 containsObject:v5];
  if ([v2 count] == 1 && (objc_msgSend(v2, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.accessibility.AccessibilityUIServer"), v7, !(v6 & 1 | ((v8 & 1) == 0))))
  {
    v9 = 0;
  }

  else
  {
    v9 = ([v2 count] != 0) | v6;
  }

  return v9 & 1;
}

id AXSiriDisplayNameForIdentifier()
{
  TTSGetComponentsInNamedSiriVoiceIdentifier();
  v0 = 0;
  v1 = 0;
  v2 = [MEMORY[0x1E698D178] sharedInstance];
  v3 = [v2 outputVoiceDescriptorForOutputLanguageCode:v1 voiceName:v0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E698D178] sharedInstance];
    v7 = [v0 lowercaseString];
    v5 = [v6 outputVoiceDescriptorForOutputLanguageCode:v1 voiceName:v7];
  }

  v8 = [v5 localizedDisplay];

  return v8;
}

uint64_t AXForceTouchAvailableAndEnabled()
{
  result = _AXSForceTouchEnabled();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

double AXForceTouchThreshold()
{
  if ((_listeningForSensitivityMultiplerChanged & 1) == 0)
  {
    _registerForSensitivityChangedNotifications();
  }

  return *&_cachedPeek;
}

double AXForceTouchThresholdPeek()
{
  if ((_listeningForSensitivityMultiplerChanged & 1) == 0)
  {
    _registerForSensitivityChangedNotifications();
  }

  return *&_cachedPeek;
}

double AXForceTouchThresholdPeekPopMidpoint()
{
  if ((_listeningForSensitivityMultiplerChanged & 1) == 0)
  {
    _registerForSensitivityChangedNotifications();
  }

  return *&_cachedPeekPopMidpoint;
}

float _registerForSensitivityChangedNotifications()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleMultiplerChanged, *MEMORY[0x1E69E4D20], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  _listeningForSensitivityMultiplerChanged = 1;

  return _calculateThresholds();
}

double AXForceTouchThresholdPop()
{
  if ((_listeningForSensitivityMultiplerChanged & 1) == 0)
  {
    _registerForSensitivityChangedNotifications();
  }

  return *&_cachedPop;
}

float _calculateThresholds()
{
  _AXSForceTouchSensitivity();
  *&_cachedPeek = v0 * 300.0;
  _AXSForceTouchSensitivity();
  *&_cachedPop = v1 * 400.0;
  result = ((v1 * 400.0) - *&_cachedPeek) * 0.5 + *&_cachedPeek;
  _cachedPeekPopMidpoint = LODWORD(result);
  return result;
}

void sub_18B1722B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B1743C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _axEventTapHIDCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AXEventTapManager sharedManager];
  v7 = [v6 _processHIDEvent:a1 taskPort:a2 bundleId:v5];

  return v7;
}

uint64_t _ioHIDEventFilterCallback(uint64_t a1, void *a2, __IOHIDServiceClient *a3, uint64_t a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  Type = IOHIDEventGetType();
  if (Type != 17 && Type != 11)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_15;
  }

  if (IOHIDEventGetIntegerValue())
  {
    v9 = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (a3 && !v9)
  {
    v11 = IOHIDServiceClientCopyProperty(a3, @"Transport");
    if (v11)
    {
      v12 = v11;
      if (!CFEqual(v11, @"AirPlay"))
      {
        v10 = 0;
        goto LABEL_14;
      }

      CFRelease(v12);
      v13 = IOHIDServiceClientCopyProperty(a3, @"Category");
      if (v13)
      {
        v12 = v13;
        v10 = CFEqual(v13, @"Automotive") != 0;
LABEL_14:
        CFRelease(v12);
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_15:
  v14 = 0;
  if (a4 && !v10)
  {
    if (IOHIDEventGetType() == 15)
    {
      return 0;
    }

    v15 = +[AXEventTapManager sharedManager];
    v16 = [v15 _accessibilityShouldIgnoreHIDServiceForContinuity:a3];

    if (v16)
    {
      return 0;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a2;
      v19 = [v18 identifier];
      v20 = [AXEventRepresentation representationWithHIDEvent:a4 serviceClient:a3 hidStreamIdentifier:v19];

      v21 = [v18 handler];
      v14 = (v21)[2](v21, v20);

      if (CFAbsoluteTimeGetCurrent() - Current >= 0.016)
      {
        v23 = v18;
        v24 = v20;
        AXPerformBlockAsynchronouslyOnMainThread();
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  return v14;
}

void ___ioHIDEventFilterCallback_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = VOTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_18B15E000, v2, OS_LOG_TYPE_DEFAULT, "Failed to handle event in time for event tap: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) failedToHandleInTime];

  if (v4)
  {
    v5 = [*(a1 + 32) failedToHandleInTime];
    v5[2](v5, *(a1 + 40));
  }
}

id AXRetainAutorelease(void *a1)
{
  v1 = a1;

  return v1;
}

id AXSBTitleForMedusaGesture(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = @"SIDE_APP_RESIZE_TO_HALF";
  switch(a1)
  {
    case 0:
      goto LABEL_22;
    case 1:
      v12 = @"SIDE_APP_SHRINK_LEFT_APP";
      v13 = @"SIDE_APP_SHRINK_RIGHT_APP";
      goto LABEL_19;
    case 2:
      v12 = @"SIDE_APP_SHRINK_RIGHT_APP";
      v13 = @"SIDE_APP_SHRINK_LEFT_APP";
      goto LABEL_19;
    case 3:
      v12 = @"SIDE_APP_EXPAND_LEFT";
      v13 = @"SIDE_APP_EXPAND_RIGHT";
      goto LABEL_19;
    case 4:
      v12 = @"SIDE_APP_EXPAND_RIGHT";
      v13 = @"SIDE_APP_EXPAND_LEFT";
      goto LABEL_19;
    case 5:
    case 6:
      v11 = @"FLOAT_APP_SPLIT_VIEW";
      goto LABEL_22;
    case 7:
    case 8:
      v11 = @"FLOAT_APP_SLIDE_OVER";
      goto LABEL_22;
    case 9:
      v12 = @"FLOAT_APP_MOVE_RIGHT";
      v13 = @"FLOAT_APP_MOVE_LEFT";
      goto LABEL_19;
    case 10:
      v12 = @"FLOAT_APP_MOVE_LEFT";
      v13 = @"FLOAT_APP_MOVE_RIGHT";
LABEL_19:
      if (a2)
      {
        v11 = v13;
      }

      else
      {
        v11 = v12;
      }

      goto LABEL_22;
    case 11:
      v11 = @"FLOATING_APP_REMOVE_LEFT";
      goto LABEL_22;
    case 12:
      v11 = @"FLOATING_APP_REMOVE_RIGHT";
      goto LABEL_22;
    case 13:
      v11 = @"FLOAT_APP_SLIDE_OPEN_APP";
      goto LABEL_22;
    case 14:
      v11 = @"FLOAT_APP_DISMISS";
      goto LABEL_22;
    case 15:
      v11 = @"FLOATING_APP_SWITCHER";
      goto LABEL_22;
    case 16:
      v11 = @"FLOATING_APP_SWITCHER_SWIPE_RIGHT";
LABEL_22:
      v14 = AXParameterizedLocalizedString(1, v11, a3, a4, a5, a6, a7, a8, v8);

      break;
    default:
      v14 = 0;

      break;
  }

  return v14;
}

void sub_18B177D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18B178F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1791A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1792D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _isUILocked()
{
  if ((_isUILocked_isTokenInitialized & 1) == 0)
  {
    if (notify_register_check("com.apple.springboard.lockstate", &_isUILocked_token))
    {
      if (_isUILocked_isTokenInitialized != 1)
      {
        return 0;
      }
    }

    else
    {
      _isUILocked_isTokenInitialized = 1;
    }
  }

  state64 = 0;
  notify_get_state(_isUILocked_token, &state64);
  return state64 != 0;
}

BOOL _isDeviceLockedWithPasscode()
{
  if ((_isDeviceLockedWithPasscode_isTokenInitialized & 1) == 0)
  {
    if (notify_register_check("com.apple.springboard.passcodeLockedOrBlocked", &_isDeviceLockedWithPasscode_token))
    {
      if (_isDeviceLockedWithPasscode_isTokenInitialized != 1)
      {
        return 0;
      }
    }

    else
    {
      _isDeviceLockedWithPasscode_isTokenInitialized = 1;
    }
  }

  state64 = 0;
  notify_get_state(_isDeviceLockedWithPasscode_token, &state64);
  return state64 != 0;
}

uint64_t AXBTRouteIsAirpods(void *a1)
{
  v1 = AXBTRouteIsAirpods_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXBTRouteIsAirpods_cold_1();
  }

  v3 = [AXBTRouteIsAirpods_ValidAirPodRoutes containsObject:v2];

  return v3;
}

uint64_t __AXBTRouteIsAirpods_block_invoke()
{
  AXBTRouteIsAirpods_ValidAirPodRoutes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFE97138];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL AXIsBeatsProductId(void *a1)
{
  v1 = a1;
  if ([v1 vendorId] == 76)
  {
    v2 = [v1 productId] == 8203 || objc_msgSend(v1, "productId") == 8210 || objc_msgSend(v1, "productId") == 8230 || objc_msgSend(v1, "productId") == 8218 || objc_msgSend(v1, "productId") == 8221 || objc_msgSend(v1, "productId") == 8239;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_18B1827C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B182BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_18B182F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _prefChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = AXLogAirPodSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = a3;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Received pref change for %@", buf, 0xCu);
  }

  v5 = +[AXAirPodSettingsManager sharedInstance];
  if ([v5 ignoreSettingNotifications])
  {
    v6 = AXLogAirPodSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring preference change", buf, 2u);
    }
  }

  else
  {
    v7 = v5[6];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___prefChangedCallback_block_invoke;
    v8[3] = &unk_1E71E9B98;
    v9 = v5;
    [v7 afterDelay:v8 processBlock:0.2];
    v6 = v9;
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_18B1886FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXUIAddressForBTDevice()
{
  v2[31] = *MEMORY[0x1E69E9840];
  if (BTDeviceGetAddressString())
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  return v0;
}

void sub_18B18A400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B18D1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B18D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B18DAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_18B18E348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXAssistiveTouchChangeIconCount(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 count] >= a2)
  {
    if ([v3 count] <= a2)
    {
      v11 = v3;
    }

    else
    {
      v11 = AXAssistiveTouchRemoveIconsFromDictionary(v3, [v3 count] - a2);
    }

    v10 = v11;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{a2 - objc_msgSend(v3, "count")}];
    for (i = [v3 count] + 1; i <= a2; ++i)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v7 UUIDString];
      v9 = [v6 stringWithFormat:@"__empty%d__%@", i, v8];
      [v4 addObject:v9];
    }

    v10 = AXAssistiveTouchInsertIconsIntoDictionary(v3, v4);
  }

  return v10;
}

id AXAssistiveTouchInsertIconsIntoDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  v5 = [v3 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
  }

  v8 = v7;

  v9 = [v4 count];
  v10 = [v8 count] + v9;
  if ([v4 count] < v10)
  {
    while ([v4 count] >= v10)
    {
LABEL_25:
      if ([v4 count] >= v10)
      {
        goto LABEL_26;
      }
    }

    v11 = [v8 firstObject];
    v12 = [v4 count];
    if (v12 > 3)
    {
      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v20 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];
          [v4 setObject:v20 forKeyedSubscript:@"AXAssistiveTouchIconLocationBottomLeft"];

          v21 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];
          [v4 setObject:v21 forKeyedSubscript:@"AXAssistiveTouchIconLocationBottomRight"];

          v22 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];
          [v4 setObject:v22 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];

          v23 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopRight"];
          [v4 setObject:v23 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];

          v24 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopMiddle"];
          [v4 setObject:v24 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];

          [v4 removeObjectForKey:@"AXAssistiveTouchIconLocationTopMiddle"];
          v13 = v4;
          v14 = v11;
          v15 = @"AXAssistiveTouchIconLocationTopRight";
          goto LABEL_21;
        }

        if (v12 != 7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 != 4)
        {
          goto LABEL_13;
        }

        v17 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopMiddle"];
        [v4 setObject:v17 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];

        v18 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];
        [v4 setObject:v18 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopRight"];

        v19 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationBottomMiddle"];
        [v4 setObject:v19 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];

        [v4 removeObjectForKey:@"AXAssistiveTouchIconLocationBottomMiddle"];
      }

LABEL_19:
      v13 = v4;
      v14 = v11;
      v15 = @"AXAssistiveTouchIconLocationTopMiddle";
      goto LABEL_21;
    }

    switch(v12)
    {
      case 1:
        v16 = [v4 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidMiddle"];
        [v4 setObject:v16 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];

        [v4 setObject:v11 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];
        [v4 removeObjectForKey:@"AXAssistiveTouchIconLocationMidMiddle"];
        break;
      case 2:
        goto LABEL_19;
      case 3:
LABEL_13:
        v13 = v4;
        v14 = v11;
        v15 = @"AXAssistiveTouchIconLocationBottomMiddle";
LABEL_21:
        [v13 setObject:v14 forKeyedSubscript:v15];
        break;
    }

LABEL_22:
    if ([v8 count])
    {
      [v8 removeObjectAtIndex:0];
    }

    goto LABEL_25;
  }

LABEL_26:

  return v4;
}

id AXAssistiveTouchRemoveIconsFromDictionary(void *a1, uint64_t a2)
{
  v3 = [a1 mutableCopy];
  v4 = [v3 count] - a2;
  while ([v3 count] > v4)
  {
    if ([v3 count] > v4)
    {
      v5 = [v3 count];
      if (v5 <= 4)
      {
        if (v5 == 2)
        {
          v12 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];
          [v3 setObject:v12 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidMiddle"];

          [v3 removeObjectForKey:@"AXAssistiveTouchIconLocationMidRight"];
          v6 = @"AXAssistiveTouchIconLocationMidLeft";
          goto LABEL_16;
        }

        v6 = @"AXAssistiveTouchIconLocationTopMiddle";
        if (v5 == 3)
        {
          goto LABEL_16;
        }

        if (v5 == 4)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v5 <= 6)
        {
          if (v5 == 5)
          {
            v13 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];
            [v3 setObject:v13 forKeyedSubscript:@"AXAssistiveTouchIconLocationBottomMiddle"];

            v14 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];
            [v3 setObject:v14 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopMiddle"];

            v15 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopRight"];
            [v3 setObject:v15 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];

            [v3 removeObjectForKey:@"AXAssistiveTouchIconLocationTopLeft"];
            v6 = @"AXAssistiveTouchIconLocationTopRight";
          }

          else
          {
LABEL_10:
            v6 = @"AXAssistiveTouchIconLocationBottomMiddle";
          }

LABEL_16:
          [v3 removeObjectForKey:v6];
          continue;
        }

        v6 = @"AXAssistiveTouchIconLocationTopMiddle";
        if (v5 == 8)
        {
          goto LABEL_16;
        }

        if (v5 == 7)
        {
          v7 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];
          [v3 setObject:v7 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopMiddle"];

          v8 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];
          [v3 setObject:v8 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopRight"];

          v9 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];
          [v3 setObject:v9 forKeyedSubscript:@"AXAssistiveTouchIconLocationTopLeft"];

          v10 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationBottomRight"];
          [v3 setObject:v10 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidRight"];

          v11 = [v3 objectForKeyedSubscript:@"AXAssistiveTouchIconLocationBottomLeft"];
          [v3 setObject:v11 forKeyedSubscript:@"AXAssistiveTouchIconLocationMidLeft"];

          [v3 removeObjectForKey:@"AXAssistiveTouchIconLocationBottomRight"];
          v6 = @"AXAssistiveTouchIconLocationBottomLeft";
          goto LABEL_16;
        }
      }
    }
  }

  return v3;
}

id AXAssistiveTouchIcons()
{
  v0 = AXAssistiveTouchSystemIcons();
  v1 = AXAssistiveTouchAccessibilityIcons();
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = AXAssistiveTouchScrollIcons();
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v5 = AXAssistiveTouchCustomGesturesIcons();
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  v7 = AXAssistiveTouchSpecificActionIcons();
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = AXAssistiveTouchSiriShortcutsIcons();
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = AXAssistiveTouchDwellIcons();
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

id AXAssistiveTouchSystemIcons()
{
  if (AXAssistiveTouchSystemIcons_onceToken != -1)
  {
    AXAssistiveTouchSystemIcons_cold_1();
  }

  v0 = [AXAssistiveTouchSystemIcons_Array mutableCopy];
  if ((AXDeviceCanArmApplePay() & 1) == 0)
  {
    [v0 removeObject:@"AXAssistiveTouchIcontTypeArmApplePay"];
    [v0 removeObject:@"AXAssistiveTouchIcontTypeConfirmApplePay"];
  }

  if ((AXDeviceIsSiriAvailable() & 1) == 0)
  {
    [v0 removeObject:@"AXAssistiveTouchIconTypeSiri"];
    [v0 removeObject:@"AXAssistiveTouchIconTypeTypeToSiri"];
  }

  if ((AXDeviceIsVoiceControlAvailable() & 1) == 0)
  {
    [v0 removeObject:@"AXAssistiveTouchIconTypeVoiceControl"];
  }

  if ((AXForceTouchAvailableAndEnabled() & 1) == 0)
  {
    [v0 removeObject:@"AXAssistiveTouchIconTypeForceTap"];
  }

  return v0;
}

id AXAssistiveTouchAccessibilityIcons()
{
  if (AXAssistiveTouchAccessibilityIcons_onceToken != -1)
  {
    AXAssistiveTouchAccessibilityIcons_cold_1();
  }

  v0 = AXAssistiveTouchAccessibilityIcons_Array;
  if (AXRuntimeCheck_SupportsNearbyDeviceControl())
  {
    v1 = [v0 arrayByAddingObject:@"AXAssistiveTouchIconTypeNearbyDeviceControl"];

    v0 = v1;
  }

  if (AXDeviceSupportsHoverTextTyping())
  {
    v2 = [v0 arrayByAddingObject:@"AXAssistiveTouchIconTypeHoverTextTyping"];

    v0 = v2;
  }

  if (AXDeviceSupportsWatchRemoteScreen())
  {
    v3 = [v0 arrayByAddingObject:@"AXAssistiveTouchIconTypeWatchRemoteScreen"];

    v0 = v3;
  }

  if (AXHasCapability(@"LiveTranscription"))
  {
    v4 = [v0 arrayByAddingObject:@"AXAssistiveTouchIconTypeLiveCaptions"];

    v0 = v4;
  }

  v5 = [v0 arrayByAddingObject:@"AXAssistiveTouchIconTypeLiveSpeech"];

  if (AXDeviceSupportsPhotosensitiveMitigation())
  {
    v6 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeDimFlashingLights"];

    v5 = v6;
  }

  if (AXDeviceSupportsMotionCues())
  {
    v7 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeMotionCues"];

    v5 = v7;
  }

  if (AXDeviceSupportsHapticMusic())
  {
    v8 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeHapticMusic"];

    v5 = v8;
  }

  if (AXHasCapability(@"AXClarityUI"))
  {
    v9 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeAssistiveAccess"];

    v5 = v9;
  }

  if (AXHasCapability(@"AXReader"))
  {
    v10 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeAccessibilityReader"];

    v5 = v10;
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v11 = [v5 arrayByAddingObject:@"AXAssistiveTouchIconTypeOnDeviceEyeTracking"];

    v5 = v11;
  }

  return v5;
}

id AXAssistiveTouchScrollIcons()
{
  if (AXAssistiveTouchScrollIcons_onceToken != -1)
  {
    AXAssistiveTouchScrollIcons_cold_1();
  }

  v1 = AXAssistiveTouchScrollIcons_Array;

  return v1;
}

id AXAssistiveTouchCustomGesturesIcons()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 assistiveTouchCustomGestures];

  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x1E696AEC0];
          v9 = [*(*(&v12 + 1) + 8 * i) name];
          v10 = [v8 stringWithFormat:@"CustomGesture-%@", v9];
          [v2 addObject:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

id AXAssistiveTouchSpecificActionIcons()
{
  if (AXAssistiveTouchSpecificActionIcons_onceToken != -1)
  {
    AXAssistiveTouchSpecificActionIcons_cold_1();
  }

  v1 = AXAssistiveTouchSpecificActionIcons_Array;

  return v1;
}

id AXAssistiveTouchSiriShortcutsIcons()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = +[AXSiriShortcutsManager sharedManager];
  v1 = [v0 shortcuts];

  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v12 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x1E696AEC0];
          v9 = [*(*(&v13 + 1) + 8 * i) identifier];
          v10 = [v8 stringWithFormat:@"%@-%@", @"SiriShortcut", v9];
          [v2 addObject:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v1 = v12;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

id AXAssistiveTouchDwellIcons()
{
  if (AXAssistiveTouchDwellIcons_onceToken != -1)
  {
    AXAssistiveTouchDwellIcons_cold_1();
  }

  v1 = AXAssistiveTouchDwellIcons_Array;

  return v1;
}

uint64_t __AXAssistiveTouchSystemIcons_block_invoke()
{
  v4[47] = *MEMORY[0x1E69E9840];
  v4[0] = @"AXAssistiveTouchIconTypeHome";
  v4[1] = @"AXAssistiveTouchIconTypeNotificationCenter";
  v4[2] = @"AXAssistiveTouchIconTypeCustom";
  v4[3] = @"AXAssistiveTouchIconTypeDevice";
  v4[4] = @"AXAssistiveTouchIconTypeSiri";
  v4[5] = @"AXAssistiveTouchIconTypeTypeToSiri";
  v4[6] = @"AXAssistiveTouchIconTypeControlCenter";
  v4[7] = @"AXAssistiveTouchIconTypeLockScreen";
  v4[8] = @"AXAssistiveTouchIconTypeRotateScreen";
  v4[9] = @"AXAssistiveTouchIconTypeVolumeUp";
  v4[10] = @"AXAssistiveTouchIconTypeVolumeDown";
  v4[11] = @"AXAssistiveTouchIconTypeMute";
  v4[12] = @"AXAssistiveTouchIconTypeGestures";
  v4[13] = @"AXAssistiveTouchIconTypeShake";
  v4[14] = @"AXAssistiveTouchIconTypeMultitasking";
  v4[15] = @"AXAssistiveTouchIconTypeScreenshot";
  v4[16] = @"AXAssistiveTouchIconTypeOrientation";
  v4[17] = @"AXAssistiveTouchIconTypeVoiceControl";
  v4[18] = @"AXAssistiveTouchIconTypePinch";
  v4[19] = @"AXAssistiveTouchIconTypeRotate";
  v4[20] = @"AXAssistiveTouchIconTypePinchAndRotate";
  v4[21] = @"AXAssistiveTouchIconTypeForceTap";
  v4[22] = @"AXAssistiveTouchIconTypeTap";
  v4[23] = @"AXAssistiveTouchIconTypeDoubleTap";
  v4[24] = @"AXAssistiveTouchIconTypeLongPress";
  v4[25] = @"AXAssistiveTouchIconTypeDragAndDrop";
  v4[26] = @"AXAssistiveTouchIconTypeMoveMenu";
  v4[27] = @"AXAssistiveTouchIconTypeSpotlight";
  v4[28] = @"AXAssistiveTouchIconTypeSOS";
  v4[29] = @"AXAssistiveTouchIconTypeSysdiagnose";
  v4[30] = @"AXAssistiveTouchIconTypeToggleDock";
  v4[31] = @"AXAssistiveTouchIconTypeReachability";
  v4[32] = @"AXAssistiveTouchIconTypeRebootDevice";
  v4[33] = @"AXAssistiveTouchIcontTypeArmApplePay";
  v4[34] = @"AXAssistiveTouchIconTypeTorch";
  v4[35] = @"AXAssistiveTouchIcontTypeConfirmApplePay";
  v4[36] = @"AXAssistiveTouchIconTypeScroll";
  v4[37] = @"AXAssistiveTouchIconTypeDwell";
  v4[38] = @"AXAssistiveTouchIconTypeCamera";
  v4[39] = @"AXAssistiveTouchIconTypeFrontFacingCamera";
  v4[40] = @"AXAssistiveTouchIconTypeSiriShortcutsMenu";
  v4[41] = @"AXAssistiveTouchIconTypeActionButton";
  v4[42] = @"AXAssistiveTouchIconTypeCameraButton";
  v4[43] = @"AXAssistiveTouchIconTypeCameraButtonLightPress";
  v4[44] = @"AXAssistiveTouchIconTypeCameraButtonDoubleLightPress";
  v4[45] = @"AXAssistiveTouchIconTypeVisualIntelligence";
  v4[46] = @"AXAssistiveTouchIconTypeMenuBar";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:47];
  v1 = [v0 mutableCopy];
  v2 = AXAssistiveTouchSystemIcons_Array;
  AXAssistiveTouchSystemIcons_Array = v1;

  if (AXDeviceHasStaccato())
  {
    AXDeviceIsRingerSwitchAvailable();
  }

  else
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeActionButton"];
    if (AXDeviceIsRingerSwitchAvailable())
    {
      goto LABEL_5;
    }
  }

  [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeMute"];
LABEL_5:
  if ((AXDeviceIsSOSAvailable() & 1) == 0)
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeSOS"];
  }

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeReachability"];
  }

  if ((AXDeviceSupportsSideApp() & 1) == 0)
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeToggleDock"];
  }

  if ((AXDeviceSupportsCameraButton() & 1) == 0)
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeCameraButton"];
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeCameraButtonLightPress"];
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeCameraButtonDoubleLightPress"];
  }

  if (!AXDeviceIsPhone() || (AXDeviceHasGreyMatterEnabled() & 1) == 0)
  {
    [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeVisualIntelligence"];
  }

  result = AXDeviceSupportsMultitasking();
  if ((result & 1) == 0)
  {
    return [AXAssistiveTouchSystemIcons_Array removeObject:@"AXAssistiveTouchIconTypeMenuBar"];
  }

  return result;
}

void __AXAssistiveTouchAccessibilityIcons_block_invoke()
{
  v2[15] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXAssistiveTouchIconTypeAssistiveTouch";
  v2[1] = @"AXAssistiveTouchIconTypeClassicInvert";
  v2[2] = @"AXAssistiveTouchIconTypeColorFilters";
  v2[3] = @"AXAssistiveTouchIconTypeMagnifier";
  v2[4] = @"AXAssistiveTouchIconTypeVoiceOver";
  v2[5] = @"AXAssistiveTouchIconTypeSmartInvert";
  v2[6] = @"AXAssistiveTouchIconTypeZoom";
  v2[7] = @"AXAssistiveTouchIconTypeZoomController";
  v2[8] = @"AXAssistiveTouchIconTypeSwitchControl";
  v2[9] = @"AXAssistiveTouchIconTypeFullKeyboardAccess";
  v2[10] = @"AXAssistiveTouchIconTypeCommandAndControl";
  v2[11] = @"AXAssistiveTouchIconTypeSpeakScreen";
  v2[12] = @"AXAssistiveTouchIconTypeTripleClick";
  v2[13] = @"AXAssistiveTouchIconTypeDetectionMode";
  v2[14] = @"AXAssistiveTouchIconTypeBackgroundSounds";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:15];
  v1 = AXAssistiveTouchAccessibilityIcons_Array;
  AXAssistiveTouchAccessibilityIcons_Array = v0;
}

uint64_t __AXAssistiveTouchDwellIcons_block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"AXAssistiveTouchIconTypeDwellPauseToggle";
  v4[1] = @"AXAssistiveTouchIconTypeDwellClick";
  v4[2] = @"AXAssistiveTouchIconTypeDwellLockToggle";
  v4[3] = @"AXAssistiveTouchIconTypeMoveMenu";
  v4[4] = @"AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v1 = [v0 mutableCopy];
  v2 = AXAssistiveTouchDwellIcons_Array;
  AXAssistiveTouchDwellIcons_Array = v1;

  result = AXRuntimeCheck_DwellKeyboardSwipe();
  if ((result & 1) == 0)
  {
    return [AXAssistiveTouchDwellIcons_Array removeObject:@"AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath"];
  }

  return result;
}

void __AXAssistiveTouchScrollIcons_block_invoke()
{
  v2[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXAssistiveTouchIconTypeScrollToTop";
  v2[1] = @"AXAssistiveTouchIconTypeScrollUp";
  v2[2] = @"AXAssistiveTouchIconTypeScrollToBottom";
  v2[3] = @"AXAssistiveTouchIconTypeScrollLeft";
  v2[4] = @"AXAssistiveTouchIconTypeScrollRight";
  v2[5] = @"AXAssistiveTouchIconTypeContinuousScrollHorizontal";
  v2[6] = @"AXAssistiveTouchIconTypeScrollDown";
  v2[7] = @"AXAssistiveTouchIconTypeContinuousScrollVertical";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
  v1 = AXAssistiveTouchScrollIcons_Array;
  AXAssistiveTouchScrollIcons_Array = v0;
}

uint64_t __AXAssistiveTouchSpecificActionIcons_block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"AXAssistiveTouchIconTypeTrackpad";
  v4[1] = @"AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking";
  v4[2] = @"AXAssistiveTouchIconTypeOnDeviceEyeTrackingZoomScreen";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v1 = [v0 mutableCopy];
  v2 = AXAssistiveTouchSpecificActionIcons_Array;
  AXAssistiveTouchSpecificActionIcons_Array = v1;

  if ((AXDeviceSupportsVirtualTrackpad() & 1) == 0)
  {
    [AXAssistiveTouchSpecificActionIcons_Array removeObject:@"AXAssistiveTouchIconTypeTrackpad"];
  }

  result = AXDeviceSupportsOnDeviceEyeTracking();
  if ((result & 1) == 0)
  {
    return [AXAssistiveTouchSpecificActionIcons_Array removeObject:@"AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking"];
  }

  return result;
}

id AXAssistiveTouchEyeTrackingIcons()
{
  if (AXAssistiveTouchEyeTrackingIcons_onceToken != -1)
  {
    AXAssistiveTouchEyeTrackingIcons_cold_1();
  }

  v1 = AXAssistiveTouchEyeTrackingIcons_Array;

  return v1;
}

void __AXAssistiveTouchEyeTrackingIcons_block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXAssistiveTouchIconTypeEyeTrackingBubbleMode";
  v2[1] = @"AXAssistiveTouchIconTypeEyeTrackingAutoHide";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = AXAssistiveTouchEyeTrackingIcons_Array;
  AXAssistiveTouchEyeTrackingIcons_Array = v0;
}

id AXAssistiveTouchHeadTrackingIcons()
{
  if (AXAssistiveTouchHeadTrackingIcons_onceToken != -1)
  {
    AXAssistiveTouchHeadTrackingIcons_cold_1();
  }

  v1 = AXAssistiveTouchHeadTrackingIcons_Array;

  return v1;
}

void __AXAssistiveTouchHeadTrackingIcons_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXAssistiveTouchIconTypeHeadTrackingBubbleMode";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = AXAssistiveTouchHeadTrackingIcons_Array;
  AXAssistiveTouchHeadTrackingIcons_Array = v0;
}

double AXAssitiveTouchPosition(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 != 7 && a2 != 8)
      {
        goto LABEL_16;
      }

      v5 = _AXAssitiveTouchPositionForDefault8(v3);
    }

    else
    {
      v5 = _AXAssitiveTouchPositionForDefault6(v3);
    }

    goto LABEL_12;
  }

  if (a2 > 2)
  {
LABEL_8:
    v5 = _AXAssitiveTouchPositionForDefault4(v3);
LABEL_12:
    v6 = v5;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v6 = 0.5;
  if (([v3 isEqualToString:@"AXAssistiveTouchIconLocationMidMiddle"] & 1) == 0)
  {
    _AXAssert();
LABEL_16:
    v6 = *MEMORY[0x1E695EFF8];
  }

LABEL_13:

  return v6;
}

double _AXAssitiveTouchPositionForDefault8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopLeft"])
  {
LABEL_2:
    v2 = 0.205;
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopMiddle"])
  {
    goto LABEL_4;
  }

  v2 = 0.794;
  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopRight"])
  {
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidLeft"])
  {
    goto LABEL_2;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidRight"])
  {
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationBottomLeft"])
  {
    goto LABEL_2;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationBottomMiddle"])
  {
LABEL_4:
    v2 = 0.5;
    goto LABEL_6;
  }

  if (([v1 isEqualToString:@"AXAssistiveTouchIconLocationBottomRight"] & 1) == 0)
  {
    _AXAssert();
    v2 = *MEMORY[0x1E695EFF8];
  }

LABEL_6:

  return v2;
}

double _AXAssitiveTouchPositionForDefault6(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopLeft"])
  {
LABEL_2:
    v2 = 0.217;
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopMiddle"])
  {
    goto LABEL_4;
  }

  v2 = 0.782;
  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopRight"])
  {
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidLeft"])
  {
    goto LABEL_2;
  }

  if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationBottomMiddle"])
  {
LABEL_4:
    v2 = 0.5;
    goto LABEL_6;
  }

  if (([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidRight"] & 1) == 0)
  {
    _AXAssert();
    v2 = *MEMORY[0x1E695EFF8];
  }

LABEL_6:

  return v2;
}

double _AXAssitiveTouchPositionForDefault4(void *a1)
{
  v1 = a1;
  v2 = 0.5;
  if (([v1 isEqualToString:@"AXAssistiveTouchIconLocationTopMiddle"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidLeft"])
    {
      v2 = 0.203;
    }

    else if ([v1 isEqualToString:@"AXAssistiveTouchIconLocationMidRight"])
    {
      v2 = 0.806;
    }

    else if (([v1 isEqualToString:@"AXAssistiveTouchIconLocationBottomMiddle"] & 1) == 0)
    {
      _AXAssert();
      v2 = *MEMORY[0x1E695EFF8];
    }
  }

  return v2;
}

id AXAssistiveTouchLocationsForLayout(uint64_t a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      v6 = @"AXAssistiveTouchIconLocationMidMiddle";
      v1 = MEMORY[0x1E695DEC8];
      v2 = &v6;
      v3 = 1;
      goto LABEL_18;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v8[0] = @"AXAssistiveTouchIconLocationTopMiddle";
        v8[1] = @"AXAssistiveTouchIconLocationMidLeft";
        v8[2] = @"AXAssistiveTouchIconLocationMidRight";
        v1 = MEMORY[0x1E695DEC8];
        v2 = v8;
        v3 = 3;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v7[0] = @"AXAssistiveTouchIconLocationMidLeft";
    v7[1] = @"AXAssistiveTouchIconLocationMidRight";
    v1 = MEMORY[0x1E695DEC8];
    v2 = v7;
    v3 = 2;
  }

  else if (a1 > 6)
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        v13[0] = @"AXAssistiveTouchIconLocationTopLeft";
        v13[1] = @"AXAssistiveTouchIconLocationTopMiddle";
        v13[2] = @"AXAssistiveTouchIconLocationTopRight";
        v13[3] = @"AXAssistiveTouchIconLocationMidLeft";
        v13[4] = @"AXAssistiveTouchIconLocationMidRight";
        v13[5] = @"AXAssistiveTouchIconLocationBottomLeft";
        v13[6] = @"AXAssistiveTouchIconLocationBottomMiddle";
        v13[7] = @"AXAssistiveTouchIconLocationBottomRight";
        v1 = MEMORY[0x1E695DEC8];
        v2 = v13;
        v3 = 8;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v12[0] = @"AXAssistiveTouchIconLocationTopLeft";
    v12[1] = @"AXAssistiveTouchIconLocationTopRight";
    v12[2] = @"AXAssistiveTouchIconLocationMidLeft";
    v12[3] = @"AXAssistiveTouchIconLocationMidRight";
    v12[4] = @"AXAssistiveTouchIconLocationBottomLeft";
    v12[5] = @"AXAssistiveTouchIconLocationBottomMiddle";
    v12[6] = @"AXAssistiveTouchIconLocationBottomRight";
    v1 = MEMORY[0x1E695DEC8];
    v2 = v12;
    v3 = 7;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v10[0] = @"AXAssistiveTouchIconLocationTopLeft";
        v10[1] = @"AXAssistiveTouchIconLocationTopMiddle";
        v10[2] = @"AXAssistiveTouchIconLocationTopRight";
        v10[3] = @"AXAssistiveTouchIconLocationMidLeft";
        v10[4] = @"AXAssistiveTouchIconLocationMidRight";
        v1 = MEMORY[0x1E695DEC8];
        v2 = v10;
        v3 = 5;
        goto LABEL_18;
      }

LABEL_14:
      v11[0] = @"AXAssistiveTouchIconLocationTopLeft";
      v11[1] = @"AXAssistiveTouchIconLocationTopMiddle";
      v11[2] = @"AXAssistiveTouchIconLocationTopRight";
      v11[3] = @"AXAssistiveTouchIconLocationMidLeft";
      v11[4] = @"AXAssistiveTouchIconLocationMidRight";
      v11[5] = @"AXAssistiveTouchIconLocationBottomMiddle";
      v1 = MEMORY[0x1E695DEC8];
      v2 = v11;
      v3 = 6;
      goto LABEL_18;
    }

    v9[0] = @"AXAssistiveTouchIconLocationTopMiddle";
    v9[1] = @"AXAssistiveTouchIconLocationMidLeft";
    v9[2] = @"AXAssistiveTouchIconLocationMidRight";
    v9[3] = @"AXAssistiveTouchIconLocationBottomMiddle";
    v1 = MEMORY[0x1E695DEC8];
    v2 = v9;
    v3 = 4;
  }

LABEL_18:
  v4 = [v1 arrayWithObjects:v2 count:v3];

  return v4;
}

uint64_t AXAssistiveTouchNamedLayout(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  return result;
}

__CFString *AXAssistiveTouchDefaultIconTypeForMouseButton(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"__NONE__";
  }

  else
  {
    return off_1E71EACD8[a1 - 1];
  }
}

__CFString *AXAssistiveTouchDefaultLaserIconTypeForMouseButton(uint64_t a1)
{
  v1 = @"__NONE__";
  if (a1 == 2)
  {
    v1 = @"AXAssistiveTouchIconTypeMouseSecondaryClick";
  }

  if (a1 == 1)
  {
    return @"AXAssistiveTouchIconTypeMousePrimaryClick";
  }

  else
  {
    return v1;
  }
}

id AXAssistiveTouchDisallowedBaseActions()
{
  if (AXAssistiveTouchDisallowedBaseActions_onceToken != -1)
  {
    AXAssistiveTouchDisallowedBaseActions_cold_1();
  }

  v1 = AXAssistiveTouchDisallowedBaseActions_DisallowedIcons;

  return v1;
}

uint64_t __AXAssistiveTouchDisallowedBaseActions_block_invoke()
{
  AXAssistiveTouchDisallowedBaseActions_DisallowedIcons = [MEMORY[0x1E695DFD8] setWithObjects:{@"AXAssistiveTouchIconTypeTap", @"AXAssistiveTouchIconTypeCustom", @"AXAssistiveTouchIconTypeDevice", @"AXAssistiveTouchIconTypeRotateScreen", @"AXAssistiveTouchIconTypeGestures", @"AXAssistiveTouchIconTypeDwell", @"AXAssistiveTouchIconTypeScroll", @"AXAssistiveTouchIconTypeAssistiveTouch", @"AXAssistiveTouchIconTypeClassicInvert", @"AXAssistiveTouchIconTypeColorFilters", @"AXAssistiveTouchIconTypeMagnifier", @"AXAssistiveTouchIconTypeVoiceOver", @"AXAssistiveTouchIconTypeSmartInvert", @"AXAssistiveTouchIconTypeZoom", @"AXAssistiveTouchIconTypeZoomController", @"AXAssistiveTouchIconTypeSwitchControl", @"AXAssistiveTouchIconTypeFullKeyboardAccess", @"AXAssistiveTouchIconTypeTorch", @"AXAssistiveTouchIcontTypeConfirmApplePay", @"AXAssistiveTouchIconTypeSiriShortcutsMenu", 0}];

  return MEMORY[0x1EEE66BB8]();
}

id AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression(uint64_t a1)
{
  if (AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_onceToken != -1)
  {
    AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_cold_1();
  }

  v2 = AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_sAXSSExpressionToASTExpression;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_block_invoke()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE961A8;
  v2[1] = &unk_1EFE961C0;
  v3[0] = @"AXAssistiveTouchHeadTrackingExpressionNone";
  v3[1] = @"AXAssistiveTouchHeadTrackingExpressionBrowsUp";
  v2[2] = &unk_1EFE961D8;
  v2[3] = &unk_1EFE961F0;
  v3[2] = @"AXAssistiveTouchHeadTrackingExpressionJawOpen";
  v3[3] = @"AXAssistiveTouchHeadTrackingExpressionSmile";
  v2[4] = &unk_1EFE96208;
  v2[5] = &unk_1EFE96220;
  v3[4] = @"AXAssistiveTouchHeadTrackingExpressionTongueOut";
  v3[5] = @"AXAssistiveTouchHeadTrackingExpressionEyeBlink";
  v2[6] = &unk_1EFE96238;
  v2[7] = &unk_1EFE96250;
  v3[6] = @"AXAssistiveTouchHeadTrackingExpressionNoseSneer";
  v3[7] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerCenter";
  v2[8] = &unk_1EFE96268;
  v2[9] = &unk_1EFE96280;
  v3[8] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerRight";
  v3[9] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerLeft";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_sAXSSExpressionToASTExpression;
  AXAssistiveTouchHeadTrackingExpressionForAXSSFacialExpression_sAXSSExpressionToASTExpression = v0;
}

uint64_t AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression(void *a1)
{
  v1 = AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_cold_1();
  }

  v3 = [AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_sASTExpressionToAXSSExpression objectForKey:v2];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

void __AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_block_invoke()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXAssistiveTouchHeadTrackingExpressionNone";
  v2[1] = @"AXAssistiveTouchHeadTrackingExpressionBrowsUp";
  v3[0] = &unk_1EFE961A8;
  v3[1] = &unk_1EFE961C0;
  v2[2] = @"AXAssistiveTouchHeadTrackingExpressionJawOpen";
  v2[3] = @"AXAssistiveTouchHeadTrackingExpressionSmile";
  v3[2] = &unk_1EFE961D8;
  v3[3] = &unk_1EFE961F0;
  v2[4] = @"AXAssistiveTouchHeadTrackingExpressionTongueOut";
  v2[5] = @"AXAssistiveTouchHeadTrackingExpressionEyeBlink";
  v3[4] = &unk_1EFE96208;
  v3[5] = &unk_1EFE96220;
  v2[6] = @"AXAssistiveTouchHeadTrackingExpressionNoseSneer";
  v2[7] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerCenter";
  v3[6] = &unk_1EFE96238;
  v3[7] = &unk_1EFE96250;
  v2[8] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerRight";
  v2[9] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerLeft";
  v3[8] = &unk_1EFE96268;
  v3[9] = &unk_1EFE96280;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_sASTExpressionToAXSSExpression;
  AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression_sASTExpressionToAXSSExpression = v0;
}

id AXAssistiveTouchSupportedHeadTrackingExpressions()
{
  if (AXAssistiveTouchSupportedHeadTrackingExpressions_onceToken != -1)
  {
    AXAssistiveTouchSupportedHeadTrackingExpressions_cold_1();
  }

  v1 = AXAssistiveTouchSupportedHeadTrackingExpressions_supportedExpressionsForAST;

  return v1;
}

void __AXAssistiveTouchSupportedHeadTrackingExpressions_block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"AXAssistiveTouchHeadTrackingExpressionNone";
  v4[1] = @"AXAssistiveTouchHeadTrackingExpressionBrowsUp";
  v4[2] = @"AXAssistiveTouchHeadTrackingExpressionJawOpen";
  v4[3] = @"AXAssistiveTouchHeadTrackingExpressionSmile";
  v4[4] = @"AXAssistiveTouchHeadTrackingExpressionTongueOut";
  v4[5] = @"AXAssistiveTouchHeadTrackingExpressionEyeBlink";
  v4[6] = @"AXAssistiveTouchHeadTrackingExpressionNoseSneer";
  v4[7] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerRight";
  v4[8] = @"AXAssistiveTouchHeadTrackingExpressionMouthPuckerLeft";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = AXAssistiveTouchSupportedHeadTrackingExpressions_supportedExpressionsForAST;
  AXAssistiveTouchSupportedHeadTrackingExpressions_supportedExpressionsForAST = v2;
}

void sub_18B1947C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXIsASVAssetViewer_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  AXIsASVAssetViewer_sIsASVAssetViewer = [v1 isEqualToString:@"com.apple.AssetViewer.ASVAssetViewer"];
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t AXHasCapability(void *a1)
{
  v1 = a1;
  v2 = +[AXCapabilityManager sharedManager];
  v3 = [v2 isCapabilityAvailable:v1];

  return v3;
}

void sub_18B198B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTTTelephonyUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTTelephonyUtilitiesClass_softClass;
  v7 = getRTTTelephonyUtilitiesClass_softClass;
  if (!getRTTTelephonyUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTTelephonyUtilitiesClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getRTTTelephonyUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B198DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1993E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVCCaptionsClientClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AVConferenceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EAEE0;
    v5 = 0;
    AVConferenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    __getAVCCaptionsClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AVCCaptionsClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAVCCaptionsClientClass_block_invoke_cold_1();
  }

  getAVCCaptionsClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVConferenceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AVConferenceLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUITextInputModeClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EAEF8;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    __getUITextInputModeClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UITextInputMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUITextInputModeClass_block_invoke_cold_1();
  }

  getUITextInputModeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRTTTelephonyUtilitiesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __RTTUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EAF10;
    v5 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    __getRTTTelephonyUtilitiesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("RTTTelephonyUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRTTTelephonyUtilitiesClass_block_invoke_cold_1();
  }

  getRTTTelephonyUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpeechLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EAF28;
    v5 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    __getCSPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CSPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSPreferencesClass_block_invoke_cold_1();
  }

  getCSPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B199EBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t reportCallback(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  if (a3 == 4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4[1]];
    NSLog(&cfstr_SelectedItemIn.isa, v5);

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4[2]];
    NSLog(&cfstr_NumberOfItems.isa, v6);

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4[3]];
    NSLog(&cfstr_SeedEra.isa, v7);

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a4[4]];
    NSLog(&cfstr_ItemControlTyp.isa, v8);

    LOBYTE(v9) = a4[5];
    LOBYTE(v10) = a4[6];
    v11 = v10 / 255.0 + v9;
    *&v11 = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    NSLog(&cfstr_UiLatency.isa, v12);
  }

  return 0;
}

void _valueCallback(int a1, int a2, int a3, IOHIDValueRef value)
{
  Element = IOHIDValueGetElement(value);
  Usage = IOHIDElementGetUsage(Element);
  UsagePage = IOHIDElementGetUsagePage(Element);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOHIDElementGetReportID(Element)];
  NSLog(&cfstr_ReportId.isa, v8);

  if (UsagePage == 96 && Usage == 2)
  {
    BytePtr = IOHIDValueGetBytePtr(value);
    v10 = BytePtr[1];
    v15 = [MEMORY[0x1E696AD98] numberWithLong:*BytePtr];
    v11 = [MEMORY[0x1E696AD98] numberWithLong:v10];
    NSLog(&cfstr_SignalQualityV.isa, v15, v11);
LABEL_4:

    goto LABEL_24;
  }

  if (UsagePage != 96 || Usage != 4)
  {
    if (UsagePage == 9)
    {
      v14 = IOHIDValueGetIntegerValue(value) == 1;
      v15 = [MEMORY[0x1E696AD98] numberWithInt:Usage];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:v14];
      NSLog(&cfstr_ButtonDown.isa, v15, v11);
    }

    else
    {
      if (UsagePage == 1 && Usage == 48)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDValueGetIntegerValue(value)];
        NSLog(&cfstr_PointerXValue.isa, v15);
        goto LABEL_24;
      }

      if (UsagePage == 1 && Usage == 49)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDValueGetIntegerValue(value)];
        NSLog(&cfstr_PointerYValue.isa, v15);
        goto LABEL_24;
      }

      if (UsagePage == 1 && Usage == 50)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDValueGetIntegerValue(value)];
        NSLog(&cfstr_PointerZValue.isa, v15);
        goto LABEL_24;
      }

      if (UsagePage == 1 && Usage == 227)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLong:IOHIDValueGetIntegerValue(value)];
        NSLog(&cfstr_PointerIdValue.isa, v15);
        goto LABEL_24;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Usage];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:UsagePage];
      NSLog(&cfstr_ReceivedUnknow.isa, v15, v11);
    }

    goto LABEL_4;
  }

  Length = IOHIDValueGetLength(value);
  v13 = IOHIDValueGetBytePtr(value);
  if (Length < 1)
  {
    return;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithLong:*v13];
  NSLog(&cfstr_ItemSelectionI.isa, v15);
LABEL_24:
}

__CFString *AXNameForDetectionMode(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E71EAFE0[a1];
  }
}

id AXLocalizedNameForDetectionMode(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = AXParameterizedLocalizedString(1, off_1E71EAFE0[a1], a3, a4, a5, a6, a7, a8, v8);
  }

  return v10;
}

uint64_t AXDetectionModeForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"detection.people"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"detection.doors"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"detection.scenes"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"detection.point.speak"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"detection.text"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"detection.furniture"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"detection.activity"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_18B19CBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AXIPCServerSetServerPort(uint64_t a1, void *a2)
{
  v4 = a2;
  if (AXIPCServerSetServerPort_onceToken != -1)
  {
    AXIPCServerSetServerPort_cold_1();
  }

  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  [ServerPortLock lock];
  if (v4)
  {
    [ServerPortMapping setObject:v4 forKey:v3];
  }

  else
  {
    [ServerPortMapping removeObjectForKey:v3];
  }

  [ServerPortLock unlock];
}

void sub_18B19F434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AXXIPCSendData(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v14 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v15 = AXIPCServerGetServer(a1);
  if (v15)
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:a5];
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ____AXXIPCSendData_block_invoke;
    v21[3] = &unk_1E71EB1F0;
    v21[4] = buf;
    v22 = a2;
    v17 = a9[1];
    v20[0] = *a9;
    v20[1] = v17;
    [v15 _handleIncomingMessage:v16 securityToken:a8 auditToken:v20 clientPort:a3 completion:v21];
    if (a3 && mach_port_deallocate(*MEMORY[0x1E69E9A60], a3))
    {
      _AXAssert();
    }

    _Block_object_dispose(buf, 8);
    v18 = 4294966991;
  }

  else
  {
    v16 = AXLogIPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "Did not find server for server port %d", buf, 8u);
    }

    v18 = 5;
  }

  return v18;
}

void sub_18B1A1C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXXIPCSimpleSendDataWithFencePort(uint64_t a1, uint64_t a2, mach_port_name_t a3, uint64_t a4, unsigned int a5, uint64_t a6, _OWORD *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:a5];
  v13 = AXIPCServerGetServer(a1);
  v14 = v13;
  if (v13)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ____AXXIPCSimpleSendDataWithFencePort_block_invoke;
    v21[3] = &unk_1E71EB1F0;
    v21[4] = buf;
    v22 = a3;
    v15 = a7[1];
    v20[0] = *a7;
    v20[1] = v15;
    [v13 _handleIncomingMessage:v12 securityToken:a6 auditToken:v20 clientPort:a2 completion:v21];
    v16 = MEMORY[0x1E69E9A60];
    if (a3)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], a3);
    }

    if (a2 && mach_port_deallocate(*v16, a2))
    {
      _AXAssert();
    }

    _Block_object_dispose(buf, 8);
    v17 = 0;
  }

  else
  {
    v18 = AXLogIPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a1;
      _os_log_impl(&dword_18B15E000, v18, OS_LOG_TYPE_DEFAULT, "Did not find server for server port %d", buf, 8u);
    }

    v17 = 5;
  }

  return v17;
}

void sub_18B1A1FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXXIPCSendDataWithAsyncReply(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6, _OWORD *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) >= 0xFFFFFFFE)
  {
    v14 = AXLogIPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "Reply port was invalid, name: 0x%x", buf, 8u);
    }

    v17 = 17;
  }

  else
  {
    v13 = a1;
    v14 = AXIPCServerGetServer(a1);
    if (v14)
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:a5];
      *buf = 0;
      v23 = buf;
      v24 = 0x2020000000;
      v25 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ____AXXIPCSendDataWithAsyncReply_block_invoke;
      v20[3] = &unk_1E71EB1F0;
      v20[4] = buf;
      v21 = a3;
      v16 = a7[1];
      v19[0] = *a7;
      v19[1] = v16;
      [v14 _handleIncomingMessage:v15 securityToken:a6 auditToken:v19 clientPort:a2 completion:v20];
      if (a2 && mach_port_deallocate(*MEMORY[0x1E69E9A60], a2))
      {
        _AXAssert();
      }

      _Block_object_dispose(buf, 8);
      v17 = 0;
    }

    else
    {
      v15 = AXLogIPC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "Did not find server for server port %d", buf, 8u);
      }

      v17 = 5;
    }
  }

  return v17;
}

void sub_18B1A2410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXIPCServerSetServerPort_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = ServerPortMapping;
  ServerPortMapping = v0;

  ServerPortLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

Class __getUIWindowClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB238;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    __getUIWindowClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UIWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIWindowClass_block_invoke_cold_1();
  }

  getUIWindowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_18B1A2970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXUIClientClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71EB250;
    v5 = 0;
    AccessibilityUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!AccessibilityUILibraryCore_frameworkLibrary_0)
  {
    __getAXUIClientClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1_0();
  }

  getAXUIClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void _sendOnceRightDestroyedCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 sendOnceRightDestroyed];
}

void sub_18B1A4FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B1A514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A5420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A552C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A5920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXIPCClient_handlePortInvalidCallback()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = +[AXIPCClient allClients];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v10;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        [v5 serverPort];
        if (AXSafeEqual())
        {
          v6 = [v5 portDeathHandler];

          if (v6)
          {
            [v5 _serverDied];
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);
  }

  v7 = AXLogIPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "Client went invalid", v8, 2u);
  }
}

void sub_18B1A62B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A6514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A68C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B1A70A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXXIPCReplyToAsyncRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = [AXIPCOutstandingAsyncRequest lookupByPort:a1];
  if (a3)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  }

  else
  {
    v6 = 0;
  }

  [v5 rawResponseReceived:v6];

  return 0;
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t AXHomeClickHapticsSupported()
{
  if (AXHomeClickHapticsSupported_onceToken != -1)
  {
    AXHomeClickHapticsSupported_cold_1();
  }

  return AXHomeClickHapticsSupported_HapticsSupported;
}

uint64_t __AXHomeClickHapticsSupported_block_invoke()
{
  result = MGGetBoolAnswer();
  AXHomeClickHapticsSupported_HapticsSupported = result;
  return result;
}

id AXDateFromStringWithFormat(void *a1, void *a2)
{
  v3 = AXDateFromStringWithFormat_predicate;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    AXDateFromStringWithFormat_cold_1();
  }

  [AXDateFromStringWithFormat_formatter setDateFormat:v4];

  v6 = [AXDateFromStringWithFormat_formatter dateFromString:v5];

  return v6;
}

uint64_t __AXDateFromStringWithFormat_block_invoke()
{
  AXDateFromStringWithFormat_formatter = objc_alloc_init(MEMORY[0x1E696AB78]);

  return MEMORY[0x1EEE66BB8]();
}

id AXDateStringForFormat(void *a1, void *a2)
{
  v3 = a1;
  v4 = _AXCachedDateFormatterForFormat(a2);
  v5 = [v4 stringFromDate:v3];

  return v5;
}

id _AXCachedDateFormatterForFormat(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  if (_AXCachedDateFormatterForFormat_onceToken != -1)
  {
    _AXCachedDateFormatterForFormat_cold_1();
  }

  v2 = _AXCachedDateFormatterForFormat_AXDateFormatterQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___AXCachedDateFormatterForFormat_block_invoke_2;
  v6[3] = &unk_1E71EA1D8;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

id AXDateStringForFormatWithTimeZone(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = _AXCachedDateFormatterForFormat(a3);
  [v7 setTimeZone:v5];

  v8 = [v7 stringFromDate:v6];

  [v7 setTimeZone:0];

  return v8;
}

id AXDateStringForFormatWithLocale(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = _AXCachedDateFormatterForFormat(a2);
  v8 = [v7 locale];
  [v7 setLocale:v5];

  v9 = [v7 stringFromDate:v6];

  [v7 setLocale:v8];

  return v9;
}

id AXDateStringForFormatWithLocaleInCalendarAndTimeZone(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a1;
  v13 = _AXCachedDateFormatterForFormat(a2);
  v14 = [v13 locale];
  v15 = [v13 calendar];
  v16 = [v13 timeZone];
  [v13 setLocale:v11];

  [v13 setCalendar:v10];
  [v13 setTimeZone:v9];

  v17 = [v13 stringFromDate:v12];

  [v13 setLocale:v14];
  [v13 setCalendar:v15];
  [v13 setTimeZone:v16];

  return v17;
}

id AXShortDurationStringForDuration(double a1)
{
  v3 = objc_opt_new();
  [v3 setZeroFormattingBehavior:1];
  [v3 setUnitsStyle:1];
  [v3 setAllowedUnits:224];
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = [v3 stringFromTimeInterval:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _AXDurationStringForDuration(char a1, double a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  if (_AXCachedDateComponentsFormatter_onceToken != -1)
  {
    _AXDurationStringForDuration_cold_1();
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___AXCachedDateComponentsFormatter_block_invoke_2;
  v7[3] = &unk_1E71EB448;
  v7[4] = &v9;
  v8 = a1;
  dispatch_sync(_AXCachedDateComponentsFormatter_AXDateComponentsFormatterQueue, v7);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v5 = [v4 stringFromTimeInterval:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double AXDurationForDurationString(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFE6D570];
  v2 = [v1 componentsSeparatedByString:@":"];
  v3 = [v2 reverseObjectEnumerator];
  v4 = [v3 allObjects];

  v5 = 0.0;
  if ([v4 count] >= 3)
  {
    v6 = [v4 objectAtIndexedSubscript:2];
    v5 = (3600 * [v6 integerValue]);
  }

  if ([v4 count] >= 2)
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    v5 = v5 + (60 * [v7 integerValue]);
  }

  if ([v4 count])
  {
    v8 = [v4 objectAtIndexedSubscript:0];
    v5 = v5 + [v8 integerValue];
  }

  return v5;
}

uint64_t AXPositionalStyleDurationStringForDuration(double a1)
{
  if (AXPositionalStyleDurationStringForDuration_onceToken != -1)
  {
    AXPositionalStyleDurationStringForDuration_cold_1();
  }

  v2 = &AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter;
  if (a1 < 3600.0)
  {
    v2 = &AXPositionalStyleDurationStringForDuration_minuteSecondFormatter;
  }

  v3 = *v2;

  return [v3 stringFromTimeInterval:a1];
}

uint64_t __AXPositionalStyleDurationStringForDuration_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = AXPositionalStyleDurationStringForDuration_minuteSecondFormatter;
  AXPositionalStyleDurationStringForDuration_minuteSecondFormatter = v0;

  [AXPositionalStyleDurationStringForDuration_minuteSecondFormatter setAllowedUnits:192];
  [AXPositionalStyleDurationStringForDuration_minuteSecondFormatter setUnitsStyle:0];
  [AXPositionalStyleDurationStringForDuration_minuteSecondFormatter setZeroFormattingBehavior:1];
  v2 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v3 = AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter;
  AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter = v2;

  [AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter setAllowedUnits:224];
  [AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter setUnitsStyle:0];
  v4 = AXPositionalStyleDurationStringForDuration_hourMinuteSecondFormatter;

  return [v4 setZeroFormattingBehavior:1];
}

id AXClockTimeStringForDate(void *a1)
{
  v1 = AXDateStringForFormat(a1, @"jjmm");
  v2 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v1];
  [v2 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988DF8]];

  return v2;
}

id AXLocalizeDurationTime(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@":"])
  {
    v2 = [v1 componentsSeparatedByString:@":"];
    v3 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    v4 = [v2 count];
    v5 = v4 - 1;
    if (v4 >= 1)
    {
      v6 = 0;
      while (1)
      {
        v7 = [v2 objectAtIndex:v5];
        v8 = v7;
        if (!v6)
        {
          break;
        }

        if (v6 == 2)
        {
          if ([v7 intValue] >= 1)
          {
            v9 = 3;
            goto LABEL_12;
          }
        }

        else if (v6 == 1 && [v7 intValue] > 0)
        {
          v9 = 2;
          goto LABEL_12;
        }

LABEL_16:

        ++v6;
        if (--v5 == -1)
        {
          goto LABEL_17;
        }
      }

      v9 = 1;
LABEL_12:
      [v8 doubleValue];
      if (v10 < 10.0 && [v8 length] == 2)
      {
        v11 = [v8 substringFromIndex:1];

        v8 = v11;
      }

      [v8 floatValue];
      v13 = AXTimeStringForType(v9, v12);
      [v3 addObject:v13];

      goto LABEL_16;
    }

LABEL_17:
    v14 = [v3 reverseObjectEnumerator];
    v15 = [v14 allObjects];
    v16 = [v15 componentsJoinedByString:{@", "}];

    v17 = v16;
  }

  else
  {
    v17 = v1;
  }

  return v17;
}

id AXTimeStringForType(int a1, float a2)
{
  if (a1 > 2)
  {
    v4 = @"days.format";
    if (a1 != 4)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      v3 = @"hours.format";
    }

    else
    {
      v3 = v4;
    }

    goto LABEL_11;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v3 = @"minutes.format";
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_11;
  }

  if (vabds_f32(floorf(a2), a2) <= 0.00001)
  {
    v3 = @"seconds.format.integer";
LABEL_11:
    v5 = MEMORY[0x1E696AEC0];
    v6 = AXLocalizedString(v3);
    [v5 localizedStringWithFormat:v6, a2];
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E696AEC0];
  v6 = AXLocalizedString(@"seconds.format.float");
  [v9 localizedStringWithFormat:v6, a2];
  v7 = LABEL_12:;

  return v7;
}

id AXLocDuration(uint64_t a1, double a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v5 = v4;
  if (a1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [v4 setUnitsStyle:v6];
  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setSecond:a2];
  [v7 setNanosecond:{((a2 - objc_msgSend(v7, "second")) * 1000000000.0)}];
  v8 = [v5 stringFromDateComponents:v7];
  v9 = [v7 second];
  if (!a1 && v9 < a2)
  {
    v10 = AXFormatFloat();
    v17 = AXParameterizedLocalizedString(1, @"AX_SUB_SECOND_ABBREVIATION", v11, v12, v13, v14, v15, v16, v10);

    v8 = v17;
  }

  return v8;
}

id AXStringForTimeSince(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    _AXLogWithFacility();
    v17 = 0;
    goto LABEL_12;
  }

  v2 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v21 = [v2 components:64 fromDate:v1 toDate:v3 options:0];

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v2 components:32 fromDate:v1 toDate:v4 options:0];
  v6 = [v5 hour];

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v2 components:16 fromDate:v1 toDate:v7 options:0];
  v9 = [v8 day];

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v2 components:8 fromDate:v1 toDate:v10 options:0];
  v12 = [v11 month];

  v13 = [MEMORY[0x1E695DF00] date];
  v14 = 4;
  v15 = [v2 components:4 fromDate:v1 toDate:v13 options:0];
  v16 = [v15 year];

  if (v16 <= 0)
  {
    if (v12 <= 0)
    {
      if (v9 <= 0)
      {
        if (v6 < 1)
        {
          v19 = v21;
          goto LABEL_11;
        }

        v14 = 32;
      }

      else
      {
        v14 = 16;
      }
    }

    else
    {
      v14 = 8;
    }
  }

  v18 = [MEMORY[0x1E695DF00] date];
  v19 = [v2 components:v14 fromDate:v1 toDate:v18 options:0];

LABEL_11:
  v17 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:v19 unitsStyle:4];

LABEL_12:

  return v17;
}

id AXTimeAgoStringForTimeSince(void *a1)
{
  v1 = AXStringForTimeSince(a1);
  if (v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = AXLocalizedString(@"time.ago");
    v4 = [v2 localizedStringWithFormat:v3, v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXClockTimeStringForDateIncludingSeconds(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = AXDateStringForFormat(v3, @"jjmm");
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [v6 component:128 fromDate:v4];

    v8 = MEMORY[0x1E696AEC0];
    v9 = AXLocalizedString(@"time.with.seconds.format");
    v10 = [v8 localizedStringWithFormat:v9, v7, v5];

    v4 = v5;
  }

  else
  {
    v10 = AXDateStringForFormat(v3, @"jjmma");
  }

  v11 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v10];
  [v11 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988DF8]];

  return v11;
}

id AXClockTimeVoiceOverSpokenStringForWatchFaces(int a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = AXClockTimeStringForDateIncludingSeconds(v2, a1);

  return v3;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXTemperatureFromIntegerInUnits(uint64_t a1, int a2, int a3)
{
  if (AXTemperatureFromIntegerInUnits_predicate != -1)
  {
    AXTemperatureFromIntegerInUnits_cold_1();
  }

  if (a2 != a3)
  {
    v6 = a1;
    if (a3)
    {
      v7 = ((v6 + -32.0) * 5.0) / 9.0;
    }

    else
    {
      v7 = ((v6 * 9.0) / 5.0) + 32.0;
    }

    a1 = llroundf(v7);
  }

  v8 = AXTemperatureFromIntegerInUnits_formatter;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v10 = [v8 stringFromNumber:v9];

  return v10;
}

uint64_t __AXTemperatureFromIntegerInUnits_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = AXTemperatureFromIntegerInUnits_formatter;
  AXTemperatureFromIntegerInUnits_formatter = v0;

  v2 = AXTemperatureFromIntegerInUnits_formatter;

  return [v2 setNumberStyle:1];
}

__CFString *AXTemperatureFromStringInUnits(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = @"--";
    if (([v6 isEqualToString:@"--"] & 1) == 0)
    {
      v7 = AXTemperatureFromIntegerInUnits([v6 integerValue], a2, a3);
    }
  }

  else
  {
    v7 = @"--";
  }

  return v7;
}

double AX_CGRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double AX_CGRectBySubtractingRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (CGRectIsEmpty(*&a3))
  {
    return a3;
  }

  v27.origin.x = a7;
  v27.origin.y = a8;
  v27.size.width = a9;
  v27.size.height = a10;
  if (CGRectIsEmpty(v27))
  {
    return a3;
  }

  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  v32.origin.x = a7;
  v32.origin.y = a8;
  v32.size.width = a9;
  v32.size.height = a10;
  if (!CGRectIntersectsRect(v28, v32))
  {
    return a3;
  }

  v29.origin.x = a7;
  v29.origin.y = a8;
  v29.size.width = a9;
  v29.size.height = a10;
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  if (CGRectContainsRect(v29, v33))
  {
    return *MEMORY[0x1E695F058];
  }

  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  v34.origin.x = a7;
  v34.origin.y = a8;
  v34.size.width = a9;
  v34.size.height = a10;
  v31 = CGRectIntersection(v30, v34);
  v22 = a4 + a6;
  v23 = v31.origin.y + v31.size.height;
  if (a4 >= v31.origin.y || v22 > v23)
  {
    if (a4 < v31.origin.y || v22 <= v23)
    {
      v24 = v31.origin.y - a4 > 0.0;
      if (!a2)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = a3 + a5;
  v20 = v31.origin.x + v31.size.width;
  if (a3 < v31.origin.x && v25 <= v20)
  {
    v20 = a3;
LABEL_23:
    if (v24 && a1)
    {
      return a3;
    }

    return v20;
  }

  if (a3 >= v31.origin.x && v25 > v20)
  {
    goto LABEL_23;
  }

  v20 = a3;
  if (a2)
  {
    if (v31.origin.x - a3 > 0.0)
    {
      goto LABEL_23;
    }
  }

  return v20;
}

BOOL AX_CGRectAlmostEqualToRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v35 = CGRectStandardize(*&a1);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  v36 = CGRectStandardize(v35);
  v25 = v36.origin.x;
  v26 = v36.origin.y;
  v27 = v36.size.width;
  v28 = v36.size.height;
  v34 = x;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v25;
  v37.origin.y = v26;
  v37.size.width = v27;
  v37.size.height = v28;
  if (vabdd_f64(MinX, CGRectGetMinX(v37)) >= a9)
  {
    return 0;
  }

  v38.origin.y = y;
  v38.origin.x = v34;
  v38.size.width = width;
  v38.size.height = height;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = v25;
  v39.origin.y = v26;
  v39.size.width = v27;
  v39.size.height = v28;
  if (vabdd_f64(MinY, CGRectGetMinY(v39)) >= a9)
  {
    return 0;
  }

  v40.origin.x = v34;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = v25;
  v41.origin.y = v26;
  v41.size.width = v27;
  v41.size.height = v28;
  if (vabdd_f64(MaxX, CGRectGetMaxX(v41)) >= a9)
  {
    return 0;
  }

  v42.origin.x = v34;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = v25;
  v43.origin.y = v26;
  v43.size.width = v27;
  v43.size.height = v28;
  return vabdd_f64(MaxY, CGRectGetMaxY(v43)) < a9;
}

double AX_CGPointGetMidpointOfAllPoints(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = v9 + AX_CGPointFromString(*(*(&v14 + 1) + 8 * i));
          v8 = v8 + v11;
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v9 = 0.0;
    }

    v12 = v9 / v3;
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
  }

  return v12;
}

double AX_CGPointFromString(void *a1)
{
  v1 = a1;
  DoubleValue = *MEMORY[0x1E695EFF8];
  if ([v1 length] >= 5)
  {
    v3 = v1;
    if (!ParseBracesAndCommas___braceCharacters)
    {
      ParseBracesAndCommas___braceCharacters = CFCharacterSetCreateWithCharactersInString(0, @"{[,]}");
    }

    v19 = 0;
    Length = CFStringGetLength(v3);
    result.location = 0;
    result.length = 0;
    if (Length < 1)
    {
      v6 = 0;
      location = -1;
    }

    else
    {
      v5 = Length;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v18 = &v19;
      location = -1;
      v10 = Length;
      v11 = -1;
      while (1)
      {
        v21.location = v7;
        v21.length = v10;
        if (!CFStringFindCharacterFromSet(v3, ParseBracesAndCommas___braceCharacters, v21, 0, &result))
        {
          break;
        }

        if (result.location >= v5 || result.length != 1)
        {
          break;
        }

        CharacterAtIndex = CFStringGetCharacterAtIndex(v3, result.location);
        if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5B)
        {
          if (!v8)
          {
            location = result.location;
          }

          ++v8;
        }

        else if (CharacterAtIndex == 44)
        {
          if (v8 == 1)
          {
            if (v6 <= 0)
            {
              *v18++ = result.location;
              ++v6;
            }

            v8 = 1;
          }
        }

        else if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5D && !--v8)
        {
          v11 = result.location;
          goto LABEL_29;
        }

        if (result.location + 1 < v5)
        {
          v10 += v7 + ~result.location;
          v7 = result.location + 1;
          if (v10 > 0)
          {
            continue;
          }
        }

        goto LABEL_29;
      }
    }

    v11 = -1;
LABEL_29:
    if (location == -1 || v11 == -1 || v6 != 1 || location >= v11 || (v14 = v19, v19 <= location + 1) || v19 >= v11 - 1)
    {
    }

    else
    {
      v22.length = v19 + ~location;
      v22.location = location + 1;
      v15 = CFStringCreateWithSubstring(0, v3, v22);
      v23.location = v14 + 1;
      v23.length = v11 + ~v14;
      v16 = CFStringCreateWithSubstring(0, v3, v23);

      DoubleValue = CFStringGetDoubleValue(v15);
      CFStringGetDoubleValue(v16);
      CFRelease(v15);
      CFRelease(v16);
    }
  }

  return DoubleValue;
}

double AX_CGPointGetOffsetAlongVectorWithDistance(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 - a1 == 0.0)
  {
    return 0.0;
  }

  v6 = sqrt(a5 * a5 / ((a4 - a2) / (a3 - a1) * ((a4 - a2) / (a3 - a1)) + 1.0));
  if (a3 >= a1)
  {
    result = v6;
  }

  else
  {
    result = -v6;
  }

  if (a5 < 0.0)
  {
    return -result;
  }

  return result;
}

CGFloat AX_CGRectToOrientation(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MainScreenBounds = AXDeviceGetMainScreenBounds();

  return AX_CGRectToOrientationWithScreenBounds(a1, a2, a3, a4, a5, MainScreenBounds, v10, v11, v12);
}

CGFloat AX_CGRectToOrientationWithScreenBounds(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 4)
  {
    v29.origin.x = a6;
    v29.origin.y = a7;
    v29.size.width = a8;
    v29.size.height = a9;
    MaxY = CGRectGetMaxY(v29);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    v18 = MaxY - CGRectGetMaxY(v30);
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMinX(v31);
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    MinY = CGRectGetMinY(*&a2);
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v18 = MinY;
    v27.size.height = a9;
    CGRectGetMaxX(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMaxX(v28);
LABEL_7:
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetHeight(v32);
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetWidth(v33);
    return v18;
  }

  if (a1 != 2)
  {
    return a2;
  }

  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v17 = MaxX - CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v18 = v17;
  v25.size.height = a9;
  CGRectGetMaxY(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  return v18;
}

void AX_CGPathEnumerateElementsUsingBlock(const CGPath *a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __AX_CGPathEnumerateElementsUsingBlock_block_invoke;
  aBlock[3] = &unk_1E71EB480;
  v8 = v11;
  v4 = v3;
  v7 = v4;
  v9 = v10;
  v5 = _Block_copy(aBlock);
  CGPathApply(a1, v5, _CGPathEnumerationIteration);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
}

void sub_18B1B32B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void _CGPathEnumerationIteration(const void *a1, uint64_t a2)
{
  v3 = _Block_copy(a1);
  v3[2](v3, a2);
}

double AX_CGPathGetIntersectionPointWithOtherPath(const CGPath *a1, const CGPath *a2, char a3)
{
  if (a3)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3010000000;
    v49 = &unk_18B3155F1;
    v50 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3010000000;
    v44 = &unk_18B3155F1;
    v45 = *MEMORY[0x1E695EFF8];
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = ___AX_CGPathGetIntersectionPointWithOtherPathExhaustive_block_invoke;
    v38 = &unk_1E71EB590;
    v39.i64[1] = &v46;
    v40 = a2;
    v39.i64[0] = &v41;
    AX_CGPathEnumerateElementsUsingBlock(a1, &v35);
    Center = v47[4];
    _Block_object_dispose(&v41, 8);
    v5 = &v46;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3010000000;
    v38 = &unk_18B3155F1;
    v39 = *MEMORY[0x1E695EFF8];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3010000000;
    v49 = &unk_18B3155F1;
    v23 = v39;
    v50 = v39;
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___AX_CGPathGetIntersectionPointWithOtherPathNonExhaustive_block_invoke;
    v44 = &unk_1E71EB4D0;
    *&v45 = &v35;
    *(&v45 + 1) = &v46;
    AX_CGPathEnumerateElementsUsingBlock(a1, &v41);
    v30 = 0;
    v31 = &v30;
    v32 = 0x3010000000;
    v33 = &unk_18B3155F1;
    v34 = v23;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3010000000;
    v28 = &unk_18B3155F1;
    v29 = v23;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___AX_CGPathGetIntersectionPointWithOtherPathNonExhaustive_block_invoke_2;
    v24[3] = &unk_1E71EB4D0;
    v24[4] = &v30;
    v24[5] = &v25;
    AX_CGPathEnumerateElementsUsingBlock(a2, v24);
    v6 = v47[4];
    v7 = v47[5];
    v8 = *(v36 + 32);
    v9 = *(v36 + 40);
    if (v6 >= v8)
    {
      v10 = *(v36 + 32);
    }

    else
    {
      v10 = *(v47 + 4);
    }

    if (v7 >= v9)
    {
      v11 = *(v36 + 40);
    }

    else
    {
      v11 = *(v47 + 5);
    }

    v12 = fmax(vabdd_f64(v6, v8), 3.0);
    v13 = fmax(vabdd_f64(v7, v9), 3.0);
    v14 = v26[4];
    v15 = v26[5];
    v16 = v31[4];
    v17 = v31[5];
    if (v14 >= v16)
    {
      v18 = *(v31 + 4);
    }

    else
    {
      v18 = *(v26 + 4);
    }

    if (v15 >= v17)
    {
      v19 = *(v31 + 5);
    }

    else
    {
      v19 = *(v26 + 5);
    }

    v20 = fmax(vabdd_f64(v14, v16), 3.0);
    v21 = fmax(vabdd_f64(v15, v17), 3.0);
    v51 = CGRectIntersection(*&v10, *&v18);
    Center = 1.79769313e308;
    if (v51.size.width > 0.0 && v51.size.height != 0.0)
    {
      Center = AX_CGRectGetCenter(v51.origin.x, v51.origin.y, v51.size.width, v51.size.height);
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v46, 8);
    v5 = &v35;
  }

  _Block_object_dispose(v5, 8);
  return Center;
}

void sub_18B1B36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v30 - 96), 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

double AX_CGPathGetIntersectionPointWithRect(const CGPath *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v38[8] = *MEMORY[0x1E69E9840];
  MinX = CGRectGetMinX(*&a2);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  *v38 = MinX;
  v38[1] = CGRectGetMinY(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  *&v38[2] = MaxX;
  v38[3] = CGRectGetMinY(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  v12 = CGRectGetMaxX(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  *&v38[4] = v12;
  v38[5] = CGRectGetMaxY(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  v13 = CGRectGetMinX(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  v14 = 0;
  *&v38[6] = v13;
  v38[7] = CGRectGetMaxY(v45);
  v15 = MEMORY[0x1E695EFF8];
  do
  {
    Mutable = CGPathCreateMutable();
    if (Mutable)
    {
      v17 = Mutable;
      v18 = &v38[2 * v14];
      v19 = *v18;
      v20 = v18[1];
      v21 = &v38[2 * ((v14 + 1) & 3)];
      v22 = *v21;
      v23 = v21[1];
      CGPathMoveToPoint(Mutable, 0, v19, v20);
      CGPathAddLineToPoint(v17, 0, v22, v23);
      IntersectionPointWithOtherPath = AX_CGPathGetIntersectionPointWithOtherPath(a1, v17, 1);
      v25 = &v37[v14];
      *v25 = IntersectionPointWithOtherPath;
      *(v25 + 1) = v26;
      CGPathRelease(v17);
    }

    else
    {
      v37[v14] = *v15;
    }

    ++v14;
  }

  while (v14 != 4);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3010000000;
  v35 = &unk_18B3155F1;
  v36 = *v15;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __AX_CGPathGetIntersectionPointWithRect_block_invoke;
  v31[3] = &unk_1E71EB4A8;
  v31[4] = &v32;
  AX_CGPathEnumerateElementsUsingBlock(a1, v31);
  v27 = 0;
  v28 = *v15;
  do
  {
    v29 = *&v37[v27];
    if (AX_CGPointGetDistanceToPoint(v29, *(&v37[v27] + 1), v33[4], v33[5]) < 1.79769313e308)
    {
      v28 = v29;
    }

    ++v27;
  }

  while (v27 != 4);
  _Block_object_dispose(&v32, 8);
  return v28;
}

void sub_18B1B39B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AX_CGPathGetNumberOfElements(const CGPath *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AX_CGPathGetNumberOfElements_block_invoke;
  v3[3] = &unk_1E71EB4A8;
  v3[4] = &v4;
  AX_CGPathEnumerateElementsUsingBlock(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_18B1B3A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AX_CGPathGetStartingAndEndingPoints(const CGPath *a1, _OWORD *a2, _OWORD *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = &unk_18B3155F1;
  v15 = *MEMORY[0x1E695EFF8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v9 = &unk_18B3155F1;
  v10 = v15;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __AX_CGPathGetStartingAndEndingPoints_block_invoke;
  v5[3] = &unk_1E71EB4D0;
  v5[4] = &v11;
  v5[5] = &v6;
  AX_CGPathEnumerateElementsUsingBlock(a1, v5);
  if (a2)
  {
    *a2 = *(v12 + 2);
  }

  if (a3)
  {
    *a3 = *(v7 + 2);
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v11, 8);
}

void sub_18B1B3BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

double AX_CGPathGetPointForElementAtIndex(const CGPath *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = &unk_18B3155F1;
  v9 = *MEMORY[0x1E695EFF8];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __AX_CGPathGetPointForElementAtIndex_block_invoke;
  v4[3] = &unk_1E71EB4F8;
  v4[4] = &v5;
  v4[5] = a2;
  AX_CGPathEnumerateElementsUsingBlock(a1, v4);
  v2 = v6[4];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18B1B3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGMutablePathRef AX_CGCreatePathPathWithUniformInset(const CGPath *a1, double a2)
{
  BoundingBox = CGPathGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MidX = CGRectGetMidX(BoundingBox);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  Mutable = CGPathCreateMutable();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __AX_CGCreatePathPathWithUniformInset_block_invoke;
  v12[3] = &__block_descriptor_64_e33_v44__0i8__CGPoint_dd_12Q20Q28_B36l;
  *&v12[4] = MidX;
  *&v12[5] = MidY;
  *&v12[6] = a2;
  v12[7] = Mutable;
  AX_CGPathEnumerateElementsUsingBlock(a1, v12);
  return Mutable;
}

double AX_CGPointInset(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1;
  if (vabdd_f64(a1, a3) >= 2.22044605e-16)
  {
    v7 = atan2(a2 - a4, a1 - a3);
    return v6 - a5 * __sincos_stret(v7).__cosval;
  }

  return v6;
}

id AX_CGPathGetDescription(const CGPath *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"\n"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __AX_CGPathGetDescription_block_invoke;
  v5[3] = &unk_1E71EB540;
  v3 = v2;
  v6 = v3;
  AX_CGPathEnumerateElementsUsingBlock(a1, v5);

  return v3;
}

uint64_t AX_CGPathCopyDataRepresentation(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x1EEDBABC8]();
  }

  return result;
}

uint64_t AX_CGPathCreateWithDataRepresentation(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x1EEDBAC00]();
  }

  return result;
}

void sub_18B1B4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXAudioHDMIChannelLabelDescription(uint64_t a1)
{
  if (a1 <= 8)
  {
    if (a1 > 4)
    {
      if (a1 > 6)
      {
        if (a1 == 7)
        {
          v2 = @"ChannelLayout_LeftCenter";
        }

        else
        {
          v2 = @"ChannelLayout_RightCenter";
        }

        goto LABEL_27;
      }

      if (a1 == 5)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        goto LABEL_26;
      }

      if (a1 != 3)
      {
        goto LABEL_33;
      }

LABEL_17:
      v2 = @"ChannelLayout_Center";
LABEL_27:
      v3 = AXLocalizedString(v2);
      goto LABEL_28;
    }

LABEL_25:
    v2 = @"ChannelLayout_Left";
    goto LABEL_27;
  }

  if (a1 > 33)
  {
    if (a1 <= 300)
    {
      if (a1 == 34)
      {
        v2 = @"ChannelLayout_RearRight";
        goto LABEL_27;
      }

      if (a1 != 44)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    }

    if (a1 == 302)
    {
      goto LABEL_26;
    }

    if (a1 != 301)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (a1 <= 10)
  {
    if (a1 != 9)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (a1 == 11)
  {
LABEL_26:
    v2 = @"ChannelLayout_Right";
    goto LABEL_27;
  }

  if (a1 == 33)
  {
    v2 = @"ChannelLayout_RearLeft";
    goto LABEL_27;
  }

LABEL_33:
  if (AXIsInternalInstall())
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d - Unknown channel name - file a bug", a1];
  }

  else
  {
    v3 = 0;
  }

LABEL_28:

  return v3;
}

void sub_18B1B6278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B1B86B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXAssertMainThreadCallback()
{
  v0 = dispatch_get_current_queue();
  v1 = MEMORY[0x1E69E96A0];

  if (v0 != v1)
  {

    _AXAssert();
  }
}

id LocalizedString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1EFE6D570 table:@"TeachableMoments"];

  return v4;
}

id LocalizedItemString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 isEqualToString:@"PulseWidthMaximizationTitle"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PulseWidthMaximizationFooter"))
  {
    v5 = MEMORY[0x1E696AAE8];
    v6 = AXSystemRootDirectory();
    v7 = [v6 stringByAppendingPathComponent:@"/System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
    v8 = [v5 bundleWithPath:v7];

    v9 = [v8 localizedStringForKey:v3 value:0 table:@"Accessibility-V54"];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TeachableMomentItems-%@-%@", v4, @"iOS"];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v11 localizedStringForKey:v3 value:0 table:v8];

    if (!v9 || [v9 isEqualToString:v3])
    {
      v12 = AXLocStringKeyForModel(v3);

      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:v12 value:0 table:v8];

      v3 = v12;
      v9 = v14;
    }
  }

  return v9;
}

uint64_t AXDeviceHasTopTouchIDButton()
{
  if (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

uint64_t AXDeviceHasLongPress3dTouch()
{
  if (AXDeviceHasLongPress3dTouch_onceToken != -1)
  {
    AXDeviceHasLongPress3dTouch_cold_1();
  }

  return AXDeviceHasLongPress3dTouch_HasLongPress3dTouch;
}

void __AXDeviceHasLongPress3dTouch_block_invoke()
{
  if ((MGGetBoolAnswer() & 1) != 0 || !MGGetBoolAnswer())
  {
    v0 = 0;
  }

  else
  {
    if (AXDeviceHasHomeButton_onceToken != -1)
    {
      __AXDeviceHasLongPress3dTouch_block_invoke_cold_1();
    }

    v0 = AXDeviceHasHomeButton_hasHomeButton ^ 1;
  }

  AXDeviceHasLongPress3dTouch_HasLongPress3dTouch = v0 & 1;
}

uint64_t AXDeviceHasHomeButton()
{
  if (AXDeviceHasHomeButton_onceToken != -1)
  {
    __AXDeviceHasLongPress3dTouch_block_invoke_cold_1();
  }

  return AXDeviceHasHomeButton_hasHomeButton;
}

uint64_t AXDeviceHasForcePress3dTouch()
{
  if (AXDeviceHasForcePress3dTouch_onceToken != -1)
  {
    AXDeviceHasForcePress3dTouch_cold_1();
  }

  return AXDeviceHasForcePress3dTouch_HasForcePress3dTouch;
}

uint64_t __AXDeviceHasForcePress3dTouch_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceHasForcePress3dTouch_HasForcePress3dTouch = result;
  return result;
}

uint64_t AXDeviceHas3DTouch()
{
  if (AXDeviceHas3DTouch_onceToken != -1)
  {
    AXDeviceHas3DTouch_cold_1();
  }

  return AXDeviceHas3DTouch_Has3DTouch;
}

void __AXDeviceHas3DTouch_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    v0 = 1;
  }

  else if (MGGetBoolAnswer())
  {
    if (AXDeviceHasHomeButton_onceToken != -1)
    {
      __AXDeviceHasLongPress3dTouch_block_invoke_cold_1();
    }

    v0 = AXDeviceHasHomeButton_hasHomeButton ^ 1;
  }

  else
  {
    v0 = 0;
  }

  AXDeviceHas3DTouch_Has3DTouch = v0 & 1;
}

uint64_t AXDeviceHasTopButton()
{
  if (AXDeviceHasHomeButton_onceToken != -1)
  {
    __AXDeviceHasLongPress3dTouch_block_invoke_cold_1();
  }

  if (AXDeviceHasHomeButton_hasHomeButton)
  {
    return 0;
  }

  return AXDeviceIsPad();
}

uint64_t AXDeviceHasSideButton()
{
  if (AXDeviceHasHomeButton_onceToken != -1)
  {
    __AXDeviceHasLongPress3dTouch_block_invoke_cold_1();
  }

  if (AXDeviceHasHomeButton_hasHomeButton & 1) != 0 || (AXDeviceHasTopButton())
  {
    return 0;
  }

  else
  {
    return AXDeviceIsRealityDevice() ^ 1;
  }
}

uint64_t __AXDeviceHasHomeButton_block_invoke()
{
  result = MGGetSInt32Answer();
  AXDeviceHasHomeButton_hasHomeButton = result != 2;
  return result;
}

uint64_t AXDeviceHasPearl()
{
  if (_AXSMossdeepEnabled())
  {
    v0 = 0;
  }

  else
  {
    if (AXDeviceHasPearl_onceToken != -1)
    {
      AXDeviceHasPearl_cold_1();
    }

    v0 = AXDeviceHasPearl_hasPearl;
  }

  return v0 & 1;
}

uint64_t __AXDeviceHasPearl_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceHasPearl_hasPearl = result;
  return result;
}

uint64_t AXDeviceCanArmApplePay()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPassLibraryClass_softClass;
  v7 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKPassLibraryClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getPKPassLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 contactlessInterfaceCanBePresentedFromSource:0];
}

void sub_18B1BBEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsSecureDoubleClick()
{
  if (AXDeviceSupportsSecureDoubleClick_onceToken != -1)
  {
    AXDeviceSupportsSecureDoubleClick_cold_1();
  }

  return AXDeviceSupportsSecureDoubleClick_supportsSecureDoubleClick;
}

uint64_t __AXDeviceSupportsSecureDoubleClick_block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = MGGetBoolAnswer();
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  AXDeviceSupportsSecureDoubleClick_supportsSecureDoubleClick = v1;
  return result;
}

uint64_t AXDeviceIsSiriAvailable()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    v1 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v2 = [v1 assistantIsEnabled];

    return v2;
  }

  return result;
}

uint64_t AXDeviceIsSiriAvailableInClarity()
{
  v0 = [MEMORY[0x1E6994650] sharedInstance];
  if ([v0 allowSiri])
  {
    IsSiriAvailable = AXDeviceIsSiriAvailable();
  }

  else
  {
    IsSiriAvailable = 0;
  }

  return IsSiriAvailable;
}

uint64_t AXDeviceIsVoiceControlAvailable()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    if (_AXSHomeButtonAssistant() == 1 && ([MEMORY[0x1E6994660] sharedSystemShellSwitcher], v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "isClarityBoardEnabled"), v1, (v2 & 1) == 0))
    {
      v3 = +[AXSpringBoardServer server];
      v4 = [v3 isScreenLockedWithPasscode:0];

      if (v4)
      {
        v5 = v2 ^ 1;
        v6 = [MEMORY[0x1E69ADFB8] sharedConnection];
        v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD80]];

        return (v7 != 2) & v5;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AXDeviceIsSOSAvailable()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSManagerClass_softClass;
  v7 = getSOSManagerClass_softClass;
  if (!getSOSManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOSManagerClass_block_invoke;
    v3[3] = &unk_1E71E9A80;
    v3[4] = &v4;
    __getSOSManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 deviceSupportsSOS];
}

void sub_18B1BC1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsPhotosensitiveMitigation()
{
  if (AXDeviceSupportsPhotosensitiveMitigation_onceToken != -1)
  {
    AXDeviceSupportsPhotosensitiveMitigation_cold_1();
  }

  return AXDeviceSupportsPhotosensitiveMitigation_SupportsPSE;
}

void __AXDeviceSupportsPhotosensitiveMitigation_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v15 = -435113336;
    v14 = xmmword_18B2F84A0;
    v13 = 1839812531;
    v12 = xmmword_18B2F84B4;
    v11 = -1022451852;
    v10 = xmmword_18B2F84C8;
    v9 = 1729782187;
    v8 = xmmword_18B2F84DC;
    v7 = 996646949;
    v6 = xmmword_18B2F84F0;
    v5 = -563086000;
    v4 = xmmword_18B2F8504;
    AXDeviceSupportsPhotosensitiveMitigation_SupportsPSE = MGIsDeviceOneOfType() ^ 1;
    v0 = AXLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x1E696AD98] numberWithBool:{AXDeviceSupportsPhotosensitiveMitigation_SupportsPSE, &v12, &v10, &v8, &v6, &v4, 0}];
      *buf = 138412290;
      v3 = v1;
      _os_log_impl(&dword_18B15E000, v0, OS_LOG_TYPE_DEFAULT, "Allowing PSE Support: %@", buf, 0xCu);
    }
  }
}

uint64_t AXDeviceSupportsBootSound()
{
  if (_os_feature_enabled_impl())
  {

    return MGGetBoolAnswer();
  }

  else
  {
    v1 = AXLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_18B15E000, v1, OS_LOG_TYPE_DEFAULT, "Boot chime - feature flag off", v2, 2u);
    }

    return 0;
  }
}

void AXDeviceSizeMM()
{
  v19 = *MEMORY[0x1E69E9840];
  if (*&AXDeviceSizeMM__ResolvedValue_0 == 0.0 || *&AXDeviceSizeMM__ResolvedValue_1 == 0.0)
  {
    v0 = MGCopyAnswer();
    v1 = [v0 objectForKeyedSubscript:@"main-screen-pitch"];
    [v1 doubleValue];
    v3 = v2;

    v4 = [v0 objectForKeyedSubscript:@"main-screen-width"];
    [v4 doubleValue];
    v6 = v5;

    v7 = [v0 objectForKeyedSubscript:@"main-screen-height"];
    [v7 doubleValue];
    v9 = v8;

    if (v3 <= 0.0 || v6 <= 0.0 || v9 <= 0.0)
    {
      v14 = AXLogDisplay();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        AXDeviceSizeMM_cold_1();
      }

      if (AXFallbackDeviceSizeMM_onceToken != -1)
      {
        AXDeviceSizeMM_cold_2();
      }

      v10 = *&AXFallbackDeviceSizeMM_DeviceDimensions_0;
      v11 = *&AXFallbackDeviceSizeMM_DeviceDimensions_1;
      v12 = AXLogDisplay();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v15 = 134218240;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v13 = "Using (fallback!) physical device dimensions: [%.2fmm x %.2fmm]";
    }

    else
    {
      v10 = v6 / v3 * 25.4;
      v11 = v9 / v3 * 25.4;
      v12 = AXLogDisplay();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        AXDeviceSizeMM__ResolvedValue_0 = *&v10;
        AXDeviceSizeMM__ResolvedValue_1 = *&v11;

        return;
      }

      v15 = 134218240;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v13 = "Using physical device dimensions: [%.2fmm x %.2fmm]";
    }

    _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x16u);
    goto LABEL_15;
  }
}

id AXDeviceGetLocalizedShortModelName()
{
  if (AXDeviceGetLocalizedShortModelName__AXDeviceGetLocalizedShortModelNameOnceToken != -1)
  {
    AXDeviceGetLocalizedShortModelName_cold_1();
  }

  v1 = AXDeviceGetLocalizedShortModelName__AXDeviceGetLocalizedShortModelName;

  return v1;
}

void __AXDeviceGetLocalizedShortModelName_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = [v1 copy];
      v4 = AXDeviceGetLocalizedShortModelName__AXDeviceGetLocalizedShortModelName;
      AXDeviceGetLocalizedShortModelName__AXDeviceGetLocalizedShortModelName = v3;
    }

    CFRelease(v1);
  }
}

uint64_t AXDeviceSupportsSideApp()
{
  if (AXDeviceSupportsSideApp_onceToken != -1)
  {
    AXDeviceSupportsSideApp_cold_1();
  }

  return AXDeviceSupportsSideApp_DeviceSupportsMedusa;
}

void __AXDeviceSupportsSideApp_block_invoke()
{
  if (MGGetBoolAnswer() && (AXDeviceSupportsSideApp_DeviceSupportsMedusa = MGGetBoolAnswer(), (AXDeviceSupportsSideApp_DeviceSupportsMedusa & 1) != 0))
  {
    v0 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
    AXDeviceSupportsSideApp_DeviceSupportsMedusa = [v0 isClarityBoardEnabled] ^ 1;
  }

  else
  {
    AXDeviceSupportsSideApp_DeviceSupportsMedusa = 0;
  }
}

uint64_t AXDeviceSupportsMultitasking()
{
  if (AXDeviceSupportsMultitasking_onceToken[0] != -1)
  {
    AXDeviceSupportsMultitasking_cold_1();
  }

  if (AXDeviceSupportsMultitasking__isFlexibleWindowingEnabled != 1)
  {
    return 0;
  }

  return AXDeviceIsPad();
}

uint64_t __AXDeviceSupportsMultitasking_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXDeviceSupportsMultitasking__isFlexibleWindowingEnabled = result;
  return result;
}

void AXDeviceRegisterForDisplayUpdates(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1EFECA930] && !_AXSMossdeepEnabled())
  {
    v3 = AXLogDisplay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v7 = 138412546;
      v8 = v5;
      v9 = 2048;
      v10 = v1;
      _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "Did register for display updates: %@<%p>", &v7, 0x16u);
    }

    v6 = _AXSharedDisplayManager();
    v2 = [v6 displayMonitor];

    [v2 addObserver:v1];
    goto LABEL_9;
  }

  if (!_AXSMossdeepEnabled())
  {
    v2 = AXLogDisplay();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      AXDeviceRegisterForDisplayUpdates_cold_1();
    }

LABEL_9:
  }
}

void AXDeviceUnregisterForDisplayUpdates(void *a1)
{
  v3 = a1;
  if ([v3 conformsToProtocol:&unk_1EFECA930] && !_AXSMossdeepEnabled())
  {
    v1 = _AXSharedDisplayManager();
    v2 = [v1 displayMonitor];

    [v2 removeObserver:v3];
  }

  else
  {
    _AXAssert();
  }
}

double AXDeviceGetMainScreenPixelBounds()
{
  v0 = _AXSharedDisplayManager();
  if ([v0 isInitialized])
  {
    v1 = [v0 coreAnimationMainDisplay];
    [v1 size];

    v2 = MEMORY[0x1E695EFF8];
  }

  else
  {
    v2 = MEMORY[0x1E695F058];
  }

  v3 = *v2;

  return v3;
}

double AXDeviceGetMainScreenScaleFactor()
{
  v0 = _AXSharedDisplayManager();
  v1 = 1.0;
  if ([v0 isInitialized])
  {
    v2 = [v0 coreAnimationMainDisplay];
    [v2 scale];
    v1 = v3;

    v4 = [v0 coreAnimationMainDisplay];
    [v4 size];
    v6 = v5;
    v8 = v7;

    if (v1 == 3.0 && v6 == 1280.0 && v8 == 2272.0)
    {
      v1 = 4.0;
    }
  }

  return v1;
}

uint64_t AXDeviceSupportsBackTap()
{
  if (AXRuntimeCheck_HasANE() & 1) != 0 || (AXDeviceIsD22())
  {
    v0 = 1;
  }

  else
  {
    v0 = MGIsDeviceOneOfType();
  }

  return AXDeviceIsPhone() & v0;
}

uint64_t AXDeviceSupportsHeadTracking()
{
  if (AXRuntimeCheck_HasANE() & 1) != 0 || (AXDeviceIsD22())
  {
    return 1;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

uint64_t AXDeviceSupportsDetectionMode()
{
  if (_os_feature_enabled_impl())
  {
    if (AXDeviceSupportsDetectionMode_onceToken != -1)
    {
      AXDeviceSupportsDetectionMode_cold_1();
    }

    v0 = AXDeviceSupportsDetectionMode__AXDeviceSupportsDetectionMode;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t __AXDeviceSupportsDetectionMode_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceSupportsDetectionMode__AXDeviceSupportsDetectionMode = result;
  return result;
}

uint64_t AXDeviceSupportsHuman()
{
  if (AXDeviceSupportsHuman_onceToken != -1)
  {
    AXDeviceSupportsHuman_cold_1();
  }

  return AXDeviceSupportsHuman__AXDeviceSupportsHuman;
}

uint64_t __AXDeviceSupportsHuman_block_invoke()
{
  result = MGGetSInt64Answer();
  v1 = 1;
  if (result > 111)
  {
    if (result > 159)
    {
      if ((result - 192) <= 0x20 && ((1 << (result + 64)) & 0x100010001) != 0)
      {
        goto LABEL_6;
      }

      if (result == 176 || result == 160)
      {
        goto LABEL_5;
      }
    }

    else
    {
      switch(result)
      {
        case 112:
          goto LABEL_6;
        case 128:
LABEL_5:
          v1 = 0;
LABEL_6:
          AXDeviceSupportsHuman__AXDeviceSupportsHuman = v1;
          return result;
        case 144:
          goto LABEL_6;
      }
    }
  }

  else if (result > 63)
  {
    if (result == 64)
    {
      goto LABEL_6;
    }

    if (result == 80 || result == 96)
    {
      goto LABEL_5;
    }
  }

  else if (result <= 0x30 && ((1 << result) & 0x1000100070001) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t AXDeviceSupportsLaneChange()
{
  if (_os_feature_enabled_impl())
  {
    if (AXDeviceSupportsLaneChange_onceToken != -1)
    {
      AXDeviceSupportsLaneChange_cold_1();
    }

    v0 = AXDeviceSupportsLaneChange__AXDeviceSupportsLaneChange;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t __AXDeviceSupportsLaneChange_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceSupportsLaneChange__AXDeviceSupportsLaneChange = result;
  return result;
}

uint64_t AXDeviceSupportsWatchRemoteScreen()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr;
  v8 = getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr;
  if (!getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr)
  {
    v1 = AXWatchRemoteScreenServicesLibrary();
    v6[3] = dlsym(v1, "AXWatchRemoteScreenIsTwiceFeatureOn");
    getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    AXDeviceSupportsWatchRemoteScreen_cold_2();
  }

  result = v0();
  if (result)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v3 = getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_ptr;
    v8 = getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_ptr;
    if (!getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_ptr)
    {
      v4 = AXWatchRemoteScreenServicesLibrary();
      v6[3] = dlsym(v4, "AXWatchRemoteScreenIsPairedGizmoSupported");
      getAXWatchRemoteScreenIsPairedGizmoSupportedSymbolLoc_ptr = v6[3];
      v3 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v3)
    {
      AXDeviceSupportsWatchRemoteScreen_cold_1();
    }

    return v3();
  }

  return result;
}

void sub_18B1BD288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsConcurrentHPLPMics()
{
  if (AXDeviceSupportsConcurrentHPLPMics_onceToken != -1)
  {
    AXDeviceSupportsConcurrentHPLPMics_cold_1();
  }

  return AXDeviceSupportsConcurrentHPLPMics__AXDeviceSupportsConcurrentHPLPMics;
}

uint64_t __AXDeviceSupportsConcurrentHPLPMics_block_invoke()
{
  result = MGGetBoolAnswer();
  AXDeviceSupportsConcurrentHPLPMics__AXDeviceSupportsConcurrentHPLPMics = result;
  return result;
}

uint64_t AXDeviceSupportsHoverText()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (AXDeviceIsPhone() & 1) != 0 || (AXDeviceIsPad())
    {
      return 1;
    }

    else
    {

      return MEMORY[0x1EEDE9D90]();
    }
  }

  return result;
}