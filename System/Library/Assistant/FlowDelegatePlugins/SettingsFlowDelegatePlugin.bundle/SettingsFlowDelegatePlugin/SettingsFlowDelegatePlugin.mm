const char *sub_19FC(char a1)
{
  if (a1)
  {
    return "DisableAllActions";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

Swift::Int sub_1A5C(char a1)
{
  sub_5234();
  sub_5244(a1 & 1);
  return sub_5254();
}

Swift::Int sub_1AC0()
{
  v1 = *v0;
  sub_5234();
  sub_5244(v1);
  return sub_5254();
}

uint64_t sub_1B14()
{
  v5 = &type metadata for IntelligenceFlowHelper.Features;
  v0 = sub_1BA0();
  v6 = v0;
  LOBYTE(v4[0]) = 0;
  v1 = sub_4EF4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = &type metadata for IntelligenceFlowHelper.Features;
  v6 = v0;
  LOBYTE(v4[0]) = 1;
  v2 = sub_4EF4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = 0;
  if ((v1 & 1) != 0 && (v2 & 1) == 0)
  {
    return AFDeviceSupportsSAE();
  }

  return result;
}

unint64_t sub_1BA0()
{
  result = qword_C280;
  if (!qword_C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C280);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowHelper.Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowHelper.Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DB4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E08()
{
  result = qword_C288;
  if (!qword_C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C288);
  }

  return result;
}

uint64_t sub_1E5C()
{
  sub_4864(0, &qword_C4F8, OS_os_log_ptr);
  result = sub_51E4();
  qword_C8B0 = result;
  return result;
}

uint64_t sub_1EE4(uint64_t a1)
{
  sub_21B0(a1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_4D24();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_1F44(uint64_t a1)
{
  sub_4F54();
  type metadata accessor for SettingsFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_4F44();

  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_51C4();
  sub_5154();
  sub_21B0(a1, v10);
  sub_4B14(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C520, &qword_57C0);
  type metadata accessor for NoOpFlow();
  if (swift_dynamicCast())
  {

    sub_51C4();
    sub_5154();
    sub_4D84();
  }

  else
  {
    sub_51C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v4 = OUTLINED_FUNCTION_13();
    *(v4 + 16) = xmmword_55D0;
    sub_4B14(v10, v9);
    v5 = sub_51A4();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_47E8();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_5154();

    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_4D24();
    sub_4D94();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_21B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_5144();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = sub_5094();
  v13 = OUTLINED_FUNCTION_2(v12);
  v81 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v82 = sub_4EC4();
  v20 = OUTLINED_FUNCTION_2(v82);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v23 = sub_50E4();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  sub_5114();
  sub_5104();
  sub_50F4();

  v32 = (*(v26 + 88))(v31, v23);
  if (v32 == enum case for SupportedFlowDomain.invalidParse(_:))
  {
    if (qword_C278 == -1)
    {
LABEL_3:
      sub_51D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
      v33 = OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_1(v33, xmmword_55D0);
      OUTLINED_FUNCTION_8();
      (v6)();
      OUTLINED_FUNCTION_9();
      sub_51A4();
      OUTLINED_FUNCTION_7();
      v33[3].n128_u64[1] = &type metadata for String;
      v33[4].n128_u64[0] = sub_47E8();
      v33[2].n128_u64[0] = v19;
      v33[2].n128_u64[1] = v3;
      OUTLINED_FUNCTION_17();

      v34 = OUTLINED_FUNCTION_15();
      (v6)(v34);
      OUTLINED_FUNCTION_9();
LABEL_4:
      v35 = sub_51A4();
      v37 = v36;
      v38 = type metadata accessor for NoOpFlow();
      v39 = swift_allocObject();
      *(v39 + 16) = v35;
      *(v39 + 24) = v37;
      a2[3] = v38;
      OUTLINED_FUNCTION_4();
      result = sub_4ACC(v40, 255, v41);
      a2[4] = result;
      *a2 = v39;
      return result;
    }

LABEL_41:
    OUTLINED_FUNCTION_0();
    goto LABEL_3;
  }

  if (v32 != enum case for SupportedFlowDomain.playbackControls(_:))
  {
    if (v32 == enum case for SupportedFlowDomain.settings(_:))
    {
      sub_2E70(a1);
      if (qword_C278 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_51C4();
      sub_5154();
      sub_50D4();
      sub_50C4();
      sub_50B4();

      if (v86)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v32 == enum case for SupportedFlowDomain.invalidDomainIdentifier(_:))
      {
        if (qword_C278 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_41;
      }

      if (v32 == enum case for SupportedFlowDomain.unsupportedSiriX(_:))
      {
        if (qword_C278 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        sub_51D4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
        v48 = OUTLINED_FUNCTION_13();
        *(v48 + 16) = xmmword_55D0;
        OUTLINED_FUNCTION_5();
        v50 = *(v49 - 256);
        OUTLINED_FUNCTION_12();
        v52 = *(v51 - 256);
        v53();
        v54 = sub_51A4();
        v56 = v55;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = sub_47E8();
        *(v48 + 32) = v54;
        *(v48 + 40) = v56;
        OUTLINED_FUNCTION_17();

        v44 = 0x8000000000006220;
        type metadata accessor for NoOpFlow();
        v45 = swift_allocObject();
        v46 = v45;
        v47 = 0xD000000000000024;
        goto LABEL_25;
      }

      if (v32 != enum case for SupportedFlowDomain.clarityUIEnabled(_:))
      {
        if (v32 == enum case for SupportedFlowDomain.deviceExpertTellMeGenerated(_:))
        {
          sub_5084();
          v61 = sub_5054();
          v44 = *(v81 + 8);
          (v44)(v19, v12);
          if (!v61)
          {
            OUTLINED_FUNCTION_5();
            v77 = *(v76 - 256);
            OUTLINED_FUNCTION_12();
            v79 = *(v78 - 256);
            v80();
            goto LABEL_4;
          }

          sub_5084();
          sub_5074();
          (v44)(v19, v12);
          sub_5084();
          sub_5064();
          (v44)(v19, v12);
          sub_4E94();
          v62 = sub_5174();
          v63 = *(v62 + 48);
          v64 = *(v62 + 52);
          swift_allocObject();
          sub_5164();
          v86 = sub_5004();
          v87 = &protocol witness table for CoreAnalyticsLogger;
          __swift_allocate_boxed_opaque_existential_1(&v85);
          sub_4FF4();
          v65 = sub_4FA4();
          v66 = *(v65 + 48);
          v67 = *(v65 + 52);
          swift_allocObject();
          sub_4F94();
          v86 = sub_4FC4();
          v87 = &protocol witness table for BiomeEventSender;
          __swift_allocate_boxed_opaque_existential_1(&v85);
          sub_4FB4();
          v68 = sub_5024();
          OUTLINED_FUNCTION_10(v68);
          v84[8] = v61;
          v84[9] = &protocol witness table for SiriKitTaskLoggingProvider;
          v84[5] = sub_5014();
          v84[3] = sub_4FE4();
          v84[4] = &protocol witness table for TipKitEventSender;
          __swift_allocate_boxed_opaque_existential_1(v84);
          sub_4FD4();
          v69 = sub_4E74();
          OUTLINED_FUNCTION_10(v69);
          sub_4E64();
          sub_4ED4();
          v70 = sub_4F84();
          OUTLINED_FUNCTION_10(v70);
          v46 = sub_4F74();
          OUTLINED_FUNCTION_11();
          v57 = &unk_C518;
          v58 = &type metadata accessor for DeviceExpertTellMeGeneratedFlow;
        }

        else
        {
          if (v32 != enum case for SupportedFlowDomain.deviceExpertSetting(_:))
          {
            result = sub_5214();
            __break(1u);
            return result;
          }

          if (qword_C278 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          sub_51C4();
          OUTLINED_FUNCTION_6();
          sub_5154();
          OUTLINED_FUNCTION_5();
          v44 = *(v71 - 256);
          OUTLINED_FUNCTION_12();
          v73 = *(v72 - 256);
          v74();
          v75 = type metadata accessor for IntelligenceFlow();
          OUTLINED_FUNCTION_10(v75);
          v46 = sub_3700(v44);
          OUTLINED_FUNCTION_11();
          v57 = &unk_C4D8;
          v58 = type metadata accessor for IntelligenceFlow;
        }

LABEL_26:
        result = sub_4ACC(v57, 255, v58);
        *(v44 + 32) = result;
        *v44 = v46;
        return result;
      }

      if (qword_C278 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_51C4();
      sub_5154();
      sub_50D4();
      sub_50C4();
      sub_50A4();

      if (v86)
      {
LABEL_14:
        sub_4A54(&v85, &v88);
        return sub_4A54(&v88, a2);
      }
    }

    sub_49EC(&v85);
    sub_51D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v59 = OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_1(v59, xmmword_55D0);
    OUTLINED_FUNCTION_14();
    (v6)();
    OUTLINED_FUNCTION_15();
    sub_51A4();
    OUTLINED_FUNCTION_7();
    v59[3].n128_u64[1] = &type metadata for String;
    v59[4].n128_u64[0] = sub_47E8();
    v59[2].n128_u64[0] = v19;
    v59[2].n128_u64[1] = v3;
    sub_5154();

    v60 = OUTLINED_FUNCTION_9();
    (v6)(v60);
    OUTLINED_FUNCTION_15();
    goto LABEL_4;
  }

  sub_5134();
  v43 = sub_5124();
  (*(v6 + 8))(v11, v3);
  if (!v43)
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_51C4();
    OUTLINED_FUNCTION_6();
    sub_5154();
    v44 = 0x8000000000006380;
    type metadata accessor for NoOpFlow();
    v45 = swift_allocObject();
    v46 = v45;
    v47 = 0xD000000000000044;
LABEL_25:
    *(v45 + 16) = v47;
    *(v45 + 24) = v44;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4();
    goto LABEL_26;
  }

  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_51C4();
  OUTLINED_FUNCTION_6();
  sub_5154();
  result = sub_4D14();
  a2[3] = result;
  a2[4] = &protocol witness table for AnyFlow;
  *a2 = v43;
  return result;
}

uint64_t sub_2E70(uint64_t a1)
{
  v4 = sub_4EC4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, v4);
  if ((*(v7 + 88))(v12, v4) != enum case for Parse.uso(_:))
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_51C4();
    goto LABEL_18;
  }

  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_51C4();
  OUTLINED_FUNCTION_16();
  sub_5154();
  sub_4F34();
  if (!sub_4F14() || (sub_4F04(), , v13 = sub_5034(), v15 = v14, , !v15))
  {
    sub_51C4();
    OUTLINED_FUNCTION_16();
LABEL_18:
    sub_5154();
    return (*(v7 + 8))(v12, v4);
  }

  v16 = v13 == 48 && v15 == 0xE100000000000000;
  if (v16 || (sub_5224() & 1) != 0)
  {

    sub_51C4();
    OUTLINED_FUNCTION_16();
    sub_5154();
    v17 = [objc_allocWithZone(SAIntentGroupIntentSignal) init];
    sub_4864(0, &qword_C500, INSetBinarySettingIntent_ptr);
    v18 = sub_3300(0, 0, 0);
    sub_4914(0xD00000000000003ALL, 0x8000000000006120, v18, &selRef__setExtensionBundleId_);
    v19 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
    sub_48A4([v18 backingStore]);
    isa = 0;
    if (v21 >> 60 != 15)
    {
      OUTLINED_FUNCTION_7();
      isa = sub_4CF4().super.isa;
      sub_4980(v1, v2);
    }

    [v19 setData:isa];

    v22 = [v18 typeName];
    sub_5194();
    OUTLINED_FUNCTION_7();

    sub_4914(v1, v2, v19, &selRef_setTypeName_);
    [v17 setIntent:v19];
    sub_4DE4();
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_4E84();

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_51C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v24 = OUTLINED_FUNCTION_13();
    *(v24 + 16) = xmmword_55D0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_47E8();
    *(v24 + 32) = v13;
    *(v24 + 40) = v15;
    OUTLINED_FUNCTION_16();
    sub_5154();
  }

  return (*(v7 + 8))(v12, v4);
}

id sub_3300(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:a1 binaryValue:a2 temporalEventTrigger:a3];

  return v5;
}

uint64_t sub_33BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ED4();
  *a1 = result;
  return result;
}

void sub_3420()
{
  sub_51F4(54);
  v1._object = 0x8000000000005EE0;
  v1._countAndFlagsBits = 0xD000000000000034;
  sub_51B4(v1);
  sub_51B4(v0[1]);
  sub_5204();
  __break(1u);
}

uint64_t sub_34B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4B80;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4B7C;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_36C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoOpFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void *sub_3700(uint64_t a1)
{
  v2 = v1;
  sub_4864(0, &qword_C4F8, OS_os_log_ptr);
  v4 = sub_51E4();
  v1[5] = &type metadata for IntelligenceFlowHelper;
  v1[6] = &off_8748;
  v1[2] = v4;
  if (qword_C278 != -1)
  {
    swift_once();
  }

  sub_51C4();
  sub_5154();
  v5 = OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse;
  v6 = sub_4EC4();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t sub_3850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_4EB4() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_4E04();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E0, &qword_57A8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_4E14();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_4F64();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = sub_4E34();
  v2[15] = v14;
  v15 = *(v14 - 8);
  v2[16] = v15;
  v16 = *(v15 + 64) + 15;
  v2[17] = swift_task_alloc();
  v17 = sub_4EC4();
  v2[18] = v17;
  v18 = *(v17 - 8);
  v2[19] = v18;
  v19 = *(v18 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v20 = sub_4EE4();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_3B58, 0, 0);
}

uint64_t sub_3B58()
{
  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[3];
  sub_51C4();
  OUTLINED_FUNCTION_6();
  sub_5154();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  if ((sub_1B14() & 1) == 0)
  {
    v20 = v0[2];
    sub_51D4();
LABEL_11:
    OUTLINED_FUNCTION_6();
    sub_5154();
    sub_4E44();
    goto LABEL_12;
  }

  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = *(v5 + 16);
  v6(v3, v0[3] + OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse, v4);
  if ((*(v5 + 88))(v3, v4) != enum case for Parse.uso(_:))
  {
    v21 = v0[2];
    (*(v0[19] + 8))(v0[22], v0[18]);
    sub_51D4();
    goto LABEL_11;
  }

  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  (*(v0[19] + 96))(v10, v0[18]);
  (*(v8 + 32))(v7, v10, v9);
  sub_4F34();
  if (!sub_4F14())
  {
    sub_4F24();
  }

  sub_4F04();
  v51 = sub_5044();
  v12 = v11;

  v13 = v0[24];
  v14 = v0[25];
  v15 = v0[23];
  if (v12)
  {
    v42 = v0[21];
    v43 = v0[19];
    v45 = v0[18];
    v46 = v0[20];
    v53 = v0[17];
    v40 = v0[16];
    v41 = v0[15];
    v35 = v0[14];
    v52 = v0[23];
    v16 = v0[13];
    v36 = v0[12];
    v54 = v0[24];
    v18 = v0[10];
    v17 = v0[11];
    v37 = v0[9];
    v38 = v0[8];
    v47 = v0[7];
    v49 = v0[6];
    v50 = v0[5];
    v44 = v0[4];
    v48 = v0[2];
    sub_51C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v39 = v6;
    v19 = OUTLINED_FUNCTION_13();
    *(v19 + 16) = xmmword_55D0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_47E8();
    *(v19 + 32) = v51;
    *(v19 + 40) = v12;

    OUTLINED_FUNCTION_6();
    sub_5154();

    (*(v16 + 104))(v35, enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:), v36);
    *v17 = v51;
    v17[1] = v12;
    (*(v18 + 104))(v17, enum case for NLRouterParse.InputCandidate.text(_:), v37);
    (*(v54 + 16))(v38, v14, v52);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v52);
    sub_4E24();
    (*(v40 + 16))(v42, v53, v41);
    (*(v43 + 104))(v42, enum case for Parse.nlRouter(_:), v45);
    v39(v46, v42, v45);
    sub_4EA4();
    sub_4DF4();
    sub_4E54();

    (*(v49 + 8))(v47, v50);
    (*(v43 + 8))(v42, v45);
    (*(v40 + 8))(v53, v41);
    (*(v54 + 8))(v14, v52);
  }

  else
  {
    v34 = v0[2];
    sub_51D4();
    OUTLINED_FUNCTION_6();
    sub_5154();
    sub_4E44();

    (*(v13 + 8))(v14, v15);
  }

LABEL_12:
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[22];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[11];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[4];

  v32 = v0[1];

  return v32();
}

uint64_t sub_4124()
{
  type metadata accessor for IntelligenceFlow();
  sub_4ACC(&qword_C4D8, 255, type metadata accessor for IntelligenceFlow);
  return sub_4D34();
}

uint64_t sub_41B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse;
  v2 = sub_4EC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for IntelligenceFlow()
{
  result = qword_C428;
  if (!qword_C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42B0()
{
  result = sub_4EC4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4424;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4424(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_4544(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_45E0;

  return sub_3850(a1);
}

uint64_t sub_45E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_46D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IntelligenceFlow();

  return Flow<>.exitValue.getter(v3, a2);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_47E8()
{
  result = qword_C4F0;
  if (!qword_C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F0);
  }

  return result;
}

uint64_t sub_4864(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_48A4(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_4D04();

  return v3;
}

void sub_4914(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_5184();

  [a3 *a4];
}

uint64_t sub_4980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4994(a1, a2);
  }

  return a1;
}

uint64_t sub_4994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_49EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C508, &qword_57B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_4ACC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v3 = *(*(v2 - 368) + 16);
  return *(v2 - 360);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_5154();
}