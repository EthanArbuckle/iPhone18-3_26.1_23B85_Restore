id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

uint64_t __PHDefaultLog_block_invoke()
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.mobilephone", "Default");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLog()
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v1 = PHOversizedLog_PHOversizedLog;

  return v1;
}

uint64_t __PHOversizedLog_block_invoke()
{
  PHOversizedLog_PHOversizedLog = os_log_create("com.apple.calls.mobilephone", "Oversized");

  return MEMORY[0x2821F96F8]();
}

id PHOversizedLogQueue()
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v1 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v1;
}

void __PHOversizedLogQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v0 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v2);
  v1 = PHOversizedLogQueue_PHOversizedLogQueue;
  PHOversizedLogQueue_PHOversizedLogQueue = v0;
}

void sub_23C146ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C14CA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_23C14CF8C()
{
  v21 = sub_23C14EE88();
  v0 = *(v21 - 8);
  v1 = v0[8];
  MEMORY[0x28223BE20]();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x277D79778]) init];
  v4 = [v22 accounts];
  sub_23C14D1F4();
  v5 = sub_23C14EF98();

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C14F018())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v0 + 1;
    v9 = 0x278BB3000uLL;
    while (1)
    {
      if (v8)
      {
        v10 = MEMORY[0x23EEC91D0](v7, v5);
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v0 = v10;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v10 *(v9 + 3368)])
      {
        v12 = v5;
        v13 = i;
        v14 = v9;
        v15 = [v0 UUID];
        sub_23C14EE78();

        v16 = sub_23C14EE68();
        (*v20)(v3, v21);
        v17 = [v22 isPasscodeChangeSupportedForAccountUUID_];

        v9 = v14;
        i = v13;
        v5 = v12;

        if (v17)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

unint64_t sub_23C14D1F4()
{
  result = qword_27E1F02F8;
  if (!qword_27E1F02F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F02F8);
  }

  return result;
}

unint64_t sub_23C14D278()
{
  result = qword_27E1F0300;
  if (!qword_27E1F0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0300);
  }

  return result;
}

uint64_t sub_23C14D2E8(uint64_t a1)
{
  v2 = *(*(sub_23C14EED8() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_23C14EBA4();
  v3 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  [v3 setProperty:a1 forKey:*MEMORY[0x277D40038]];
  sub_23C14EEC8();
  return sub_23C14EE98();
}

uint64_t sub_23C14D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0320, &qword_23C1501C8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_23C14EF18();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = sub_23C14EED8();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action();
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = sub_23C14EEF8();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v16 = sub_23C14EE58();
  v3[23] = v16;
  v17 = *(v16 - 8);
  v3[24] = v17;
  v18 = *(v17 + 64) + 15;
  v3[25] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0328, &qword_23C1501D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = sub_23C14EE48();
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();
  sub_23C14EFC8();
  v3[30] = sub_23C14EFB8();
  v24 = sub_23C14EFA8();

  return MEMORY[0x2822009F8](sub_23C14D6E4, v24, v23);
}

uint64_t sub_23C14D6E4()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[7];

  sub_23C14EF48();
  sub_23C14EE18();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[22];
    v10 = v0[19];
    v11 = v0[20];
    v13 = v0[6];
    v12 = v0[7];
    sub_23C14EAF8(v0[26], &qword_27E1F0328, &qword_23C1501D0);
    sub_23C14EF38();
    sub_23C14EF68();
    (*(v11 + 8))(v9, v10);
    goto LABEL_41;
  }

  v14 = v0[21];
  v15 = v0[7];
  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_23C14EF38();
  v0[2] = sub_23C14EE28();
  v0[3] = v16;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_23C14E7CC();
  v17 = sub_23C14EFF8();

  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = -v19;
    v22 = v17 + 40;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = (v22 + 16 * v20++);
      while (1)
      {
        if ((v20 - 1) >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = HIBYTE(*v24) & 0xF;
        if ((*v24 & 0x2000000000000000) == 0)
        {
          v27 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          if (v25 != 0xD000000000000015 || 0x800000023C150DF0 != v26)
          {
            v29 = *(v24 - 1);
            v30 = *v24;
            result = sub_23C14F038();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v20;
        v24 += 2;
        if (v21 + v20 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      if ((result & 1) == 0)
      {
        result = sub_23C14E820(0, *(v23 + 2) + 1, 1);
      }

      v22 = v17 + 40;
      v32 = *(v23 + 2);
      v31 = *(v23 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v35 = v32 + 1;
        v102 = v32;
        result = sub_23C14E820((v31 > 1), v32 + 1, 1);
        v33 = v35;
        v32 = v102;
        v22 = v17 + 40;
        v23 = v107;
      }

      *(v23 + 2) = v33;
      v34 = &v23[16 * v32];
      *(v34 + 4) = v25;
      *(v34 + 5) = v26;
    }

    while (v21 + v20);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v36 = *(v23 + 2);
  if (v36)
  {
    goto LABEL_24;
  }

  v59 = v0[29];
  sub_23C14EE38();
  if (v60)
  {
    v61 = v0[8];

    v62 = sub_23C14EF88();

    [v61 setSpecifierIdentifierToScrollAndHighlight_];

LABEL_40:
    v64 = v0[28];
    v63 = v0[29];
    v65 = v0[27];
    v67 = v0[20];
    v66 = v0[21];
    v68 = v0[19];
    v69 = v0[6];
    sub_23C14EF68();
    (*(v67 + 8))(v66, v68);
    (*(v64 + 8))(v63, v65);
    goto LABEL_41;
  }

  v36 = *(v23 + 2);
  if (!v36)
  {

    goto LABEL_40;
  }

LABEL_24:
  v37 = v0[15];
  v38 = (v37 + 32);
  v39 = (v0[11] + 48);
  v105 = (v37 + 8);
  while (1)
  {
    v41 = *(v23 + 4);
    v40 = *(v23 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v36 - 1) > *(v23 + 3) >> 1)
    {
      v23 = sub_23C14E94C(isUniquelyReferenced_nonNull_native, v36, 1, v23);
    }

    sub_23C14EAA4((v23 + 32));
    v43 = *(v23 + 2);
    memmove(v23 + 32, v23 + 48, 16 * v43 - 16);
    *(v23 + 2) = v43 - 1;

    v44 = sub_23C14EA58();
    if (v44 == 15 || (v45 = v44, (sub_23C14DE8C(v44) & 1) == 0))
    {

LABEL_39:

      goto LABEL_40;
    }

    v47 = v0[17];
    v46 = v0[18];
    sub_23C14E0AC(v45);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v81 = v0[28];
      v103 = v0[27];
      v106 = v0[29];
      v82 = v0[20];
      v83 = v0[18];
      v98 = v0[21];
      v100 = v0[19];
      v84 = v0[11];
      v85 = v0[12];
      v86 = v0[10];
      v87 = v0[6];

      (*(v84 + 32))(v85, v83, v86);
      sub_23C14EF58();
      (*(v84 + 8))(v85, v86);
      (*(v82 + 8))(v98, v100);
      (*(v81 + 8))(v106, v103);
      goto LABEL_41;
    }

    v49 = v0[8];
    v50 = sub_23C14EF88();

    [v49 setSpecifierIdentifierToScrollAndSelect_];

LABEL_25:
    v36 = *(v23 + 2);
    if (!v36)
    {
      goto LABEL_39;
    }
  }

  v51 = v0[18];
  v52 = v0[16];
  v53 = v0[14];
  v54 = v0[9];
  v55 = v0[10];

  (*v38)(v52, v51, v53);
  sub_23C14EEB8();
  if ((*v39)(v54, 1, v55) == 1)
  {
    v56 = v0[21];
    v57 = v0[16];
    v58 = v0[14];
    sub_23C14EAF8(v0[9], &qword_27E1F0320, &qword_23C1501C8);
    sub_23C14EB58(&qword_27E1F0338, MEMORY[0x277D40250]);
    sub_23C14EEE8();
    (*v105)(v57, v58);
    goto LABEL_25;
  }

  v88 = v0[28];
  v101 = v0[27];
  v104 = v0[29];
  v90 = v0[20];
  v89 = v0[21];
  v97 = v0[16];
  v99 = v0[19];
  v91 = v0[13];
  v96 = v0[14];
  v93 = v0[10];
  v92 = v0[11];
  v94 = v0[9];
  v95 = v0[6];

  (*(v92 + 32))(v91, v94, v93);
  sub_23C14EF58();
  (*(v92 + 8))(v91, v93);
  (*v105)(v97, v96);
  (*(v90 + 8))(v89, v99);
  (*(v88 + 8))(v104, v101);
LABEL_41:
  v70 = v0[29];
  v71 = v0[25];
  v72 = v0[26];
  v74 = v0[21];
  v73 = v0[22];
  v75 = v0[18];
  v76 = v0[16];
  v78 = v0[12];
  v77 = v0[13];
  v79 = v0[9];

  v80 = v0[1];

  return v80();
}

uint64_t sub_23C14DE8C(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D6EE48]) init];
  v3 = v2;
  switch(a1)
  {
    case 1:
      v4 = [v2 isCallAnnouncementAvailableForPhone];
      goto LABEL_24;
    case 2:
      v5 = [v2 isSIMAvailable];

      if (!v5)
      {
        return v5;
      }

      v7 = [objc_opt_self() sharedInstance];
      if (v7)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v5 = [v3 isShareNameAndPhotosAvailable];

      if (v5)
      {
        v7 = [objc_opt_self() sharedInstance];
        if (!v7)
        {
          __break(1u);
          JUMPOUT(0x23C14E070);
        }

LABEL_16:
        v8 = v7;
        v9 = [v7 deviceType];

        return v9 == 2;
      }

      return v5;
    case 3:
      goto LABEL_14;
    case 4:
      v4 = [v2 isWiFiCallingAvailable];
      goto LABEL_24;
    case 5:
      v4 = [v2 isRelayPrimaryAvailable];
      goto LABEL_24;
    case 6:
      v4 = [v2 isRespondwithTextAvailable];
      goto LABEL_24;
    case 7:
      v4 = [v2 isCallForwardingAvailable];
      goto LABEL_24;
    case 8:
      v4 = [v2 isCallWaitingAvailable];
      goto LABEL_24;
    case 9:
      v4 = [v2 isCallRecordingAvailable];
      goto LABEL_24;
    case 10:
      v4 = [v2 isShowMyCallerIDAvailable];
      goto LABEL_24;
    case 11:
      v4 = [v2 isCallBlockingAndIdentificationAvailable];
      goto LABEL_24;
    case 12:
      v4 = [v2 isFaceTimeEnabledInSettings];
      goto LABEL_24;
    case 13:
      v4 = [v2 isILClassificationAvailable];
      goto LABEL_24;
    case 14:
      v5 = [v2 isSIMAvailable];

      if (!v5)
      {
        return v5;
      }

      return sub_23C14CF8C();
    default:
      v4 = [v2 isIncomingCallsAvailableForPhone];
LABEL_24:
      v5 = v4;

      return v5;
  }
}

uint64_t sub_23C14E0AC(char a1)
{
  v2 = *(*(sub_23C14EFE8() - 8) + 64);
  MEMORY[0x28223BE20]();
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 10:
    case 11:
    case 14:
      type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action();

      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_23C14EFD8();
      sub_23C14EF08();
      type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action();
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

uint64_t sub_23C14E2B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0308, &qword_23C1501B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_23C14EEA8();
  sub_23C14EB58(&qword_27E1F0310, MEMORY[0x277D40248]);
  v7 = v6;
  sub_23C14EF78();
  *(swift_allocObject() + 16) = v7;
  sub_23C14E6D4();
  v8 = v7;
  sub_23C14EF28();
  return (*(v2 + 8))(v5, v1);
}

id sub_23C14E46C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D3FA50]) init];
  *a1 = result;
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

uint64_t sub_23C14E4F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C14E530(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C14E5E0;

  return sub_23C14D3C4(a1, a2, v6);
}

uint64_t sub_23C14E5E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23C14E6D4()
{
  result = qword_27E1F0318;
  if (!qword_27E1F0318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F0308, &qword_23C1501B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0318);
  }

  return result;
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

uint64_t type metadata accessor for PhoneSettingsSpecifierIdentifiers.Action()
{
  result = qword_27E1F0350;
  if (!qword_27E1F0350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23C14E7CC()
{
  result = qword_27E1F0330;
  if (!qword_27E1F0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F0330);
  }

  return result;
}

char *sub_23C14E820(char *a1, int64_t a2, char a3)
{
  result = sub_23C14E840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C14E840(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0340, &qword_23C1501D8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23C14E94C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F0340, &qword_23C1501D8);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23C14EA58()
{
  v0 = sub_23C14F028();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23C14EAF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23C14EB58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23C14EBA4()
{
  result = qword_27E1F0348;
  if (!qword_27E1F0348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F0348);
  }

  return result;
}

void sub_23C14EC44()
{
  sub_23C14ECF0(319, &qword_27E1F0360, MEMORY[0x277D40250]);
  if (v0 <= 0x3F)
  {
    sub_23C14ECF0(319, &qword_27E1F0368, MEMORY[0x277D4D798]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23C14ECF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23C14ED4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F0308, &qword_23C1501B0);
  sub_23C14E6D4();
  return swift_getOpaqueTypeConformance2();
}