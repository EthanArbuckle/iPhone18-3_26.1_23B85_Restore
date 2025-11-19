Swift::Int sub_1000015EC()
{
  v1 = *v0;
  sub_10000AA90();
  sub_10000AAA0(v1);
  return sub_10000AAB0();
}

Swift::Int sub_100001660()
{
  v1 = *v0;
  sub_10000AA90();
  sub_10000AAA0(v1);
  return sub_10000AAB0();
}

uint64_t sub_1000016B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000A990();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_logger;
  sub_10000A980();
  v49 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v49);
  *(v1 + OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_service) = MatchingService;
  if (!MatchingService)
  {
    (*(v4 + 16))(v7, v1 + v8, v3);
    v23 = sub_10000A970();
    v24 = sub_10000A9F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to retrieve Processor Trace service", v25, 2u);
    }

    (*(v4 + 8))(v7, v3);
    v26 = v3;
    v27 = 1;
    LOBYTE(v47) = 1;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    goto LABEL_22;
  }

  v10 = MatchingService;
  v44 = v3;
  v11 = sub_10000A9A0();
  CFProperty = IORegistryEntryCreateCFProperty(v10, v11, kCFAllocatorDefault, 0);

  if (!CFProperty)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v27 = 2;
    LOBYTE(v47) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

LABEL_21:
    v26 = v44;
LABEL_22:
    (*(v4 + 8))(v1 + v8, v26);
    v28 = *(*v1 + 48);
    v29 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return v27;
  }

  v42 = v8;
  v1[3] = [v13 integerValue];
  v14 = sub_10000A9A0();
  v43 = CFProperty;
  v15 = v14;
  v16 = IORegistryEntryCreateCFProperty(v10, v14, kCFAllocatorDefault, 0);

  if (!v16)
  {
LABEL_16:
    v27 = 2;
    LOBYTE(v47) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    swift_unknownObjectRelease();
    v8 = v42;
    goto LABEL_21;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v41 = v16;
  v1[4] = [v17 integerValue];
  v18 = sub_10000A9A0();
  v19 = IORegistryEntryCreateCFProperty(v10, v18, kCFAllocatorDefault, 0);

  v8 = v42;
  if (!v19)
  {
LABEL_18:
    v21 = 0;
    v47 = 0u;
    v48 = 0u;
LABEL_19:
    sub_1000020F4(&v47);
LABEL_20:
    v27 = 2;
    LOBYTE(v47) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  *&v45 = 0x69746375646F7250;
  *(&v45 + 1) = 0xEF65636172546E6FLL;
  v21 = v20;
  v22 = [v21 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v22)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_19;
  }

  sub_1000021A4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v40 = v45;
  *&v45 = 0xD000000000000010;
  *(&v45 + 1) = 0x800000010000C200;
  v21 = v21;
  v31 = [v21 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v31)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    goto LABEL_40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    goto LABEL_20;
  }

  v39 = v45;
  strcpy(&v45, "FeatureFlags");
  BYTE13(v45) = 0;
  HIWORD(v45) = -5120;
  v21 = v21;
  v32 = [v21 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v32)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {

LABEL_40:
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_42;
  }

  v33 = v45;
  v34 = [v45 unsignedIntegerValue];
  *(v1 + 18) = (v34 & 8) != 0;
  *(v1 + 17) = (v34 & 4) != 0;
  v35 = v40;
  if ([v40 BOOLValue])
  {
    v36 = 1;
    v37 = v39;
  }

  else
  {
    v37 = v39;
    v36 = [v39 BOOLValue];
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + 16) = v36;
  return v1;
}

uint64_t sub_100001EE4()
{
  IOObjectRelease(*(v0 + OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_service));
  v1 = OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_logger;
  v2 = sub_10000A990();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DTProcessorTraceConfigurationState()
{
  result = qword_100018230;
  if (!qword_100018230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001FE4()
{
  result = sub_10000A990();
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

unint64_t sub_1000020A0()
{
  result = qword_1000182E8;
  if (!qword_1000182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000182E8);
  }

  return result;
}

uint64_t sub_1000020F4(uint64_t a1)
{
  v2 = sub_10000215C(&qword_1000182F0, &unk_10000AFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000215C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000021A4()
{
  result = qword_1000182F8;
  if (!qword_1000182F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000182F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceStateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceStateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002368()
{
  result = qword_100018300;
  if (!qword_100018300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018300);
  }

  return result;
}

unint64_t sub_1000023C0()
{
  result = qword_100018318;
  if (!qword_100018318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018318);
  }

  return result;
}

unint64_t sub_100002418()
{
  result = qword_100018320;
  if (!qword_100018320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018320);
  }

  return result;
}

uint64_t sub_10000246C()
{
  v0 = sub_10000A920();
  sub_10000A294(v0, qword_1000194F0);
  sub_10000A25C(v0, qword_1000194F0);
  return sub_10000A910();
}

uint64_t sub_1000024D0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000A7C0();
  *a1 = v5;
  return result;
}

uint64_t sub_10000250C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10000A7D0();
}

void (*sub_100002544(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10000A7B0();
  return sub_1000025B8;
}

void sub_1000025B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002604()
{
  result = qword_100018328;
  if (!qword_100018328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018328);
  }

  return result;
}

uint64_t sub_100002658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A3F4();
  v5 = sub_10000A2F8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000026C8()
{
  result = qword_100018330;
  if (!qword_100018330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018330);
  }

  return result;
}

unint64_t sub_100002720()
{
  result = qword_100018338;
  if (!qword_100018338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018338);
  }

  return result;
}

unint64_t sub_100002778()
{
  result = qword_100018340;
  if (!qword_100018340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018340);
  }

  return result;
}

uint64_t sub_10000286C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A3F4();
  v7 = sub_10000A448();
  v8 = sub_10000A2F8();
  *v5 = v2;
  v5[1] = sub_100002938;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100002938()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100002A40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008A7C();
  *a1 = result;
  return result;
}

uint64_t sub_100002A68(uint64_t a1)
{
  v2 = sub_100002604();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002AA8()
{
  result = qword_100018348;
  if (!qword_100018348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018348);
  }

  return result;
}

unint64_t sub_100002B00()
{
  result = qword_100018350;
  if (!qword_100018350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018350);
  }

  return result;
}

unint64_t sub_100002B54()
{
  result = qword_100018358;
  if (!qword_100018358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018358);
  }

  return result;
}

uint64_t sub_100002BA8()
{
  v0 = sub_10000215C(&qword_100018400, &qword_10000B878);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10000A920();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10000A8E0();
  sub_10000A294(v7, qword_100019508);
  sub_10000A25C(v7, qword_100019508);
  sub_10000A910();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10000A8D0();
}

uint64_t sub_100002D18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000215C(&qword_1000183F8, &qword_10000B870);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v101 - v6;
  v8 = sub_10000215C(&qword_100018400, &qword_10000B878);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v101 - v10;
  v12 = sub_10000A920();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v101 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v101 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v101 - v25;
  __chkstk_darwin(v24);
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 5:
    case 9:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
      sub_10000A910();
      sub_10000A910();
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_10000A7F0();
      v92 = sub_10000A800();
      (*(*(v92 - 8) + 56))(v7, 0, 1, v92);
      goto LABEL_22;
    case 3:
      sub_10000A910();
      sub_10000A910();
      v59 = *(v13 + 56);
      v58 = v13 + 56;
      v59(v11, 0, 1, v12);
      sub_10000A7F0();
      v60 = sub_10000A800();
      (*(*(v60 - 8) + 56))(v7, 0, 1, v60);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v61 = *(v58 + 16);
      v62 = (*(v58 + 24) + 32) & ~*(v58 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B0A0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 6:
      v75 = v101 - v27;
      v103 = a2;
      v76 = MobileGestalt_get_current_device();
      if (!v76)
      {
        goto LABEL_27;
      }

      v77 = v76;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      v104 = v75;
      sub_10000A910();
      sub_10000A910();
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_10000A7F0();
      v78 = sub_10000A800();
      (*(*(v78 - 8) + 56))(v7, 0, 1, v78);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v79 = *(v13 + 72);
      v80 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (*(v13 + 16))(v26, v23, v12);
      sub_10000A810();
      return (*(v13 + 8))(v23, v12);
    case 7:
      v104 = v101 - v27;
      v63 = MobileGestalt_get_current_device();
      if (!v63)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        JUMPOUT(0x1000069ACLL);
      }

      v64 = v63;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      v102 = v26;
      v103 = a2;
      v93 = MobileGestalt_get_current_device();
      if (!v93)
      {
        goto LABEL_28;
      }

      v94 = v93;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_10000A7F0();
      v95 = sub_10000A800();
      (*(*(v95 - 8) + 56))(v7, 0, 1, v95);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v96 = *(v13 + 72);
      v97 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v101[1] = 4 * v96;
      v98 = swift_allocObject();
      v101[2] = v98;
      *(v98 + 16) = xmmword_10000B0C0;
      v99 = v98 + v97;
      sub_10000A910();
      v101[0] = *(v13 + 16);
      (v101[0])(v99 + v96, v20, v12);
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (v101[0])(v102, v17, v12);
      sub_10000A810();
      v100 = *(v13 + 8);
      v100(v17, v12);
      return (v100)(v20, v12);
    case 8:
      sub_10000A910();
      sub_10000A910();
      v88 = *(v13 + 56);
      v87 = v13 + 56;
      v88(v11, 0, 1, v12);
      sub_10000A7F0();
      v89 = sub_10000A800();
      (*(*(v89 - 8) + 56))(v7, 0, 1, v89);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v90 = *(v87 + 16);
      v91 = (*(v87 + 24) + 32) & ~*(v87 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 10:
      sub_10000A910();
      sub_10000A910();
      v83 = *(v13 + 56);
      v82 = v13 + 56;
      v83(v11, 0, 1, v12);
      sub_10000A7F0();
      v84 = sub_10000A800();
      (*(*(v84 - 8) + 56))(v7, 0, 1, v84);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v85 = *(v82 + 16);
      v86 = *(v82 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      goto LABEL_22;
    case 11:
      sub_10000A910();
      sub_10000A910();
      v49 = *(v13 + 56);
      v48 = v13 + 56;
      v49(v11, 0, 1, v12);
      sub_10000A7F0();
      v50 = sub_10000A800();
      (*(*(v50 - 8) + 56))(v7, 0, 1, v50);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v51 = *(v48 + 16);
      v52 = *(v48 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      goto LABEL_22;
    case 14:
      v104 = v101 - v27;
      sub_10000A910();
      sub_10000A910();
      v44 = *(v13 + 56);
      v43 = v13 + 56;
      v44(v11, 0, 1, v12);
      sub_10000A7F0();
      v45 = sub_10000A800();
      (*(*(v45 - 8) + 56))(v7, 0, 1, v45);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v46 = *(v43 + 16);
      v47 = (*(v43 + 24) + 32) & ~*(v43 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B0C0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      goto LABEL_22;
    case 16:
      sub_10000A910();
      sub_10000A910();
      v39 = *(v13 + 56);
      v38 = v13 + 56;
      v39(v11, 0, 1, v12);
      sub_10000A7F0();
      v40 = sub_10000A800();
      (*(*(v40 - 8) + 56))(v7, 0, 1, v40);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      goto LABEL_22;
    case 17:
      sub_10000A910();
      sub_10000A910();
      v66 = *(v13 + 56);
      v65 = v13 + 56;
      v66(v11, 0, 1, v12);
      sub_10000A7F0();
      v67 = sub_10000A800();
      (*(*(v67 - 8) + 56))(v7, 0, 1, v67);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v68 = *(v65 + 16);
      v69 = *(v65 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      goto LABEL_22;
    case 27:
      v104 = v101 - v27;
      sub_10000A910();
      sub_10000A910();
      v34 = *(v13 + 56);
      v33 = v13 + 56;
      v34(v11, 0, 1, v12);
      sub_10000A7F0();
      v35 = sub_10000A800();
      (*(*(v35 - 8) + 56))(v7, 0, 1, v35);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v36 = *(v33 + 16);
      v37 = (*(v33 + 24) + 32) & ~*(v33 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      goto LABEL_22;
    case 41:
      sub_10000A910();
      sub_10000A910();
      v71 = *(v13 + 56);
      v70 = v13 + 56;
      v71(v11, 0, 1, v12);
      sub_10000A7F0();
      v72 = sub_10000A800();
      (*(*(v72 - 8) + 56))(v7, 0, 1, v72);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v73 = *(v70 + 16);
      v74 = (*(v70 + 24) + 32) & ~*(v70 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B0A0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 49:
      sub_10000A910();
      sub_10000A910();
      v54 = *(v13 + 56);
      v53 = v13 + 56;
      v54(v11, 0, 1, v12);
      sub_10000A7F0();
      v55 = sub_10000A800();
      (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v56 = *(v53 + 16);
      v57 = *(v53 + 24);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
LABEL_22:
      sub_10000A910();
      return sub_10000A810();
    default:
      v104 = v101 - v27;
      sub_10000A910();
      v29 = *(v13 + 56);
      v28 = v13 + 56;
      v29(v11, 1, 1, v12);
      sub_10000A7F0();
      v30 = sub_10000A800();
      (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v31 = *(v28 + 16);
      v32 = (*(v28 + 24) + 32) & ~*(v28 + 24);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_10000B0D0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
  }
}

uint64_t sub_100006A7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A4E8;

  return sub_100008E98(a1);
}

uint64_t sub_100006B24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A4BC;

  return sub_100009540();
}

uint64_t sub_100006BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100006C88;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006C88(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100006D88()
{
  result = qword_100018360;
  if (!qword_100018360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018360);
  }

  return result;
}

uint64_t sub_100006DDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006E80;

  return sub_100008D78();
}

uint64_t sub_100006E80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100006F98()
{
  result = qword_100018368;
  if (!qword_100018368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018368);
  }

  return result;
}

unint64_t sub_100006FEC()
{
  result = qword_100018370;
  if (!qword_100018370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018370);
  }

  return result;
}

unint64_t sub_100007044()
{
  result = qword_100018378;
  if (!qword_100018378)
  {
    sub_1000070C8(&qword_100018380, qword_10000B338);
    sub_100006FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018378);
  }

  return result;
}

uint64_t sub_1000070C8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100006D88();
  *v6 = v2;
  v6[1] = sub_1000071C4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000071C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000072B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000735C;

  return sub_100009BEC();
}

uint64_t sub_10000735C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100007478()
{
  result = qword_100018388;
  if (!qword_100018388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018388);
  }

  return result;
}

uint64_t sub_1000074CC()
{
  v0 = sub_10000215C(&qword_100018418, &qword_10000B888);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000215C(&qword_100018420, &qword_10000B890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002B54();
  sub_10000A890();
  v9._object = 0x800000010000F040;
  v9._countAndFlagsBits = 0xD000000000000033;
  sub_10000A880(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000A870();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000A880(v10);
  return sub_10000A8A0();
}

uint64_t sub_100007690()
{
  v0 = qword_100018308;

  return v0;
}

unint64_t sub_1000076CC()
{
  result = qword_100018390;
  if (!qword_100018390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018390);
  }

  return result;
}

unint64_t sub_100007724()
{
  result = qword_100018398;
  if (!qword_100018398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018398);
  }

  return result;
}

unint64_t sub_100007780()
{
  result = qword_1000183A0;
  if (!qword_1000183A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183A0);
  }

  return result;
}

uint64_t sub_1000077D4()
{
  sub_10000A2F8();
  v1 = sub_10000A840();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100007844()
{
  result = qword_1000183A8;
  if (!qword_1000183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183A8);
  }

  return result;
}

unint64_t sub_10000789C()
{
  result = qword_1000183B0;
  if (!qword_1000183B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183B0);
  }

  return result;
}

unint64_t sub_1000078F8()
{
  result = qword_1000183B8;
  if (!qword_1000183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183B8);
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_1000183C0;
  if (!qword_1000183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183C0);
  }

  return result;
}

uint64_t sub_1000079EC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000A25C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100007AD8(uint64_t a1)
{
  v2 = sub_100002B54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B28()
{
  result = qword_1000183D8;
  if (!qword_1000183D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183D8);
  }

  return result;
}

uint64_t sub_100007B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000071C4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007C48(uint64_t a1)
{
  v2 = sub_1000078F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100007C94(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = [a1 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    sub_10000A9B0();
  }

  v13._countAndFlagsBits = a2;
  v13._object = a3;
  if (sub_10000A9D0(v13))
  {
    v14._countAndFlagsBits = a4;
    v14._object = a5;
    v11 = sub_10000A9E0(v14);

    if (v11)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100007D60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

unint64_t sub_100007DA4(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
    case 15:
    case 39:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x70756F7247414955;
      break;
    case 3:
    case 46:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 30:
    case 42:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 4410446;
      break;
    case 7:
      result = 5194574;
      break;
    case 8:
      result = 0x545445535F53344CLL;
      break;
    case 9:
      result = 0x476C61755174654ELL;
      break;
    case 10:
      result = 0x45504F4C45564544;
      break;
    case 11:
    case 16:
    case 33:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 48:
      result = 0xD000000000000026;
      break;
    case 13:
      result = 0xD000000000000027;
      break;
    case 14:
    case 21:
      result = 0xD000000000000013;
      break;
    case 17:
    case 22:
    case 23:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000032;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
    case 43:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0xD00000000000001FLL;
      break;
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 28:
      result = 0xD000000000000023;
      break;
    case 29:
    case 49:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000022;
      break;
    case 32:
      result = 0xD000000000000020;
      break;
    case 34:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD00000000000001CLL;
      break;
    case 36:
    case 51:
      result = 0xD000000000000019;
      break;
    case 37:
      result = 0xD00000000000002FLL;
      break;
    case 38:
      result = 0xD000000000000039;
      break;
    case 40:
      result = 0xD000000000000016;
      break;
    case 41:
      result = 0xD000000000000016;
      break;
    case 44:
    case 45:
      result = 0xD000000000000024;
      break;
    case 47:
      result = 0xD000000000000016;
      break;
    case 50:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000838C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100007DA4(*a1);
  v5 = v4;
  if (v3 == sub_100007DA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000AA20();
  }

  return v8 & 1;
}

unint64_t sub_100008418()
{
  result = qword_1000183E0;
  if (!qword_1000183E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183E0);
  }

  return result;
}

Swift::Int sub_10000846C()
{
  v1 = *v0;
  sub_10000AA90();
  sub_100007DA4(v1);
  sub_10000A9C0();

  return sub_10000AAB0();
}

uint64_t sub_1000084D0()
{
  sub_100007DA4(*v0);
  sub_10000A9C0();
}

Swift::Int sub_100008524()
{
  v1 = *v0;
  sub_10000AA90();
  sub_100007DA4(v1);
  sub_10000A9C0();

  return sub_10000AAB0();
}

uint64_t sub_100008584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000A208();
  *a2 = result;
  return result;
}

unint64_t sub_1000085B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100007DA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100008624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000070C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008684@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10000A208();
  *a1 = result;
  return result;
}

uint64_t sub_1000086F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100008784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100008854(char *a1, int64_t a2, char a3)
{
  result = sub_100008894(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008874(char *a1, int64_t a2, char a3)
{
  result = sub_100008988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008894(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000215C(&qword_100018430, &qword_10000B8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100008988(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000215C(&qword_100018428, &qword_10000B8A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100008A7C()
{
  v20 = sub_10000A8B0();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_10000215C(&qword_100018438, &qword_10000B8C8) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_10000215C(&qword_100018400, &qword_10000B878);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10000A920();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000215C(&qword_100018440, &unk_10000B8D0);
  sub_10000A910();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 52;
  v17 = sub_10000A7A0();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002B54();
  return sub_10000A7E0();
}

uint64_t sub_100008D94()
{
  sub_100008854(0, 52, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_1000149D8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100008854((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 52);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008E98(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_10000A950();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100008F84, 0, 0);
}

uint64_t sub_100008F84()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = (v1 + 32);
    v5 = objc_opt_self();
    v42 = (v3 + 8);
    v6 = &DTProcessorTraceConfigurationState;
    v7 = &DTProcessorTraceConfigurationState;
    v43 = v5;
    while (1)
    {
      v9 = *v4++;
      v8 = v9;
      v10 = [v5 v6[4].ivars];
      v11 = [v10 v7[4].weak_ivar_lyt];

      if (!v11)
      {
        goto LABEL_5;
      }

      if (v8 > 28)
      {
        break;
      }

      if ((v8 - 20) < 4)
      {
        v12 = MobileGestalt_get_current_device();
        if (!v12)
        {
          goto LABEL_39;
        }

        v13 = v12;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_24;
        }

        goto LABEL_4;
      }

      if (v8 != 5)
      {
        goto LABEL_24;
      }

      v21 = type metadata accessor for DTProcessorTraceConfigurationState();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_1000016B4();
      v6 = &DTProcessorTraceConfigurationState;
      v7 = &DTProcessorTraceConfigurationState;
      if (v24[16] != 1 || (v24[18] & 1) == 0)
      {

        goto LABEL_5;
      }

      v25 = v24[17];

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_5:
      if (!--v2)
      {
        goto LABEL_30;
      }
    }

    if (v8 == 41)
    {
      v26 = v0[11];
      v27 = v0[9];
      v28 = sub_10000A9A0();
      v29 = SFRuntimeAbsoluteFilePathForPath();

      sub_10000A9B0();
      sub_10000A930();

      *(v0 + 96) = 0;
      v30 = [objc_opt_self() defaultManager];
      sub_10000A940();
      v31 = sub_10000A9A0();

      LODWORD(v29) = [v30 fileExistsAtPath:v31 isDirectory:v0 + 12];

      (*v42)(v26, v27);
      if (v29)
      {
        v5 = v43;
        v6 = &DTProcessorTraceConfigurationState;
        if (v0[12])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v5 = v43;
        v6 = &DTProcessorTraceConfigurationState;
      }
    }

    else
    {
      if (v8 != 29)
      {
        goto LABEL_24;
      }

      v15 = [objc_opt_self() enumeratorWithOptions:192];
      v16 = swift_allocObject();
      *(v16 + 16) = 0x6C7070612E6D6F63;
      *(v16 + 24) = 0xEA00000000002E65;
      strcpy((v16 + 32), ".ClassKitApp");
      *(v16 + 45) = 0;
      *(v16 + 46) = -5120;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10000A4A4;
      *(v17 + 24) = v16;
      v0[6] = sub_10000A4EC;
      v0[7] = v17;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100007D60;
      v0[5] = &unk_100015258;
      v18 = _Block_copy(v0 + 2);
      v19 = v0[7];

      v20 = [v15 swift_firstWhere:v18];

      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if (v18)
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v5 = v43;
      v6 = &DTProcessorTraceConfigurationState;
      if (v20)
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008874(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v33 = *(&_swiftEmptyArrayStorage + 2);
        v32 = *(&_swiftEmptyArrayStorage + 3);
        if (v33 >= v32 >> 1)
        {
          sub_100008874((v32 > 1), v33 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v33 + 1;
        *(&_swiftEmptyArrayStorage + v33 + 32) = v8;
      }
    }

LABEL_4:
    v7 = &DTProcessorTraceConfigurationState;
    goto LABEL_5;
  }

LABEL_30:
  v34 = *(&_swiftEmptyArrayStorage + 2);
  if (v34)
  {
    sub_100008854(0, v34, 0);
    v35 = *(&_swiftEmptyArrayStorage + 2);
    v36 = 32;
    do
    {
      v37 = *(&_swiftEmptyArrayStorage + v36);
      v38 = *(&_swiftEmptyArrayStorage + 3);
      if (v35 >= v38 >> 1)
      {
        sub_100008854((v38 > 1), v35 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v35 + 1;
      *(&_swiftEmptyArrayStorage + v35 + 32) = v37;
      ++v36;
      ++v35;
      --v34;
    }

    while (v34);
  }

  v39 = v0[11];

  v40 = v0[1];

  return v40(&_swiftEmptyArrayStorage);
}

uint64_t sub_100009540()
{
  v1 = sub_10000A950();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009628, 0, 0);
}

uint64_t sub_100009628()
{
  v1 = v0[9];
  v2 = objc_opt_self();
  v3 = 0;
  v39 = (v1 + 8);
  v38 = v0 + 4;
  v4 = &DTProcessorTraceConfigurationState;
  v40 = v2;
  do
  {
    v5 = *(&off_1000149D8 + v3 + 32);
    v6 = [v2 v4[4].ivars];
    v7 = [v6 sf_isDeveloperModeEnabled];

    if (v7)
    {
      if (v5 > 28)
      {
        if (v5 == 41)
        {
          v22 = v0[10];
          v23 = v0[8];
          v24 = sub_10000A9A0();
          v25 = SFRuntimeAbsoluteFilePathForPath();

          sub_10000A9B0();
          sub_10000A930();

          *(v0 + 88) = 0;
          v26 = [objc_opt_self() defaultManager];
          sub_10000A940();
          v27 = sub_10000A9A0();

          LODWORD(v25) = [v26 fileExistsAtPath:v27 isDirectory:v0 + 11];

          (*v39)(v22, v23);
          if (v25)
          {
            v2 = v40;
            if (v0[11])
            {
              goto LABEL_23;
            }
          }

          else
          {
            v2 = v40;
          }
        }

        else
        {
          if (v5 != 29)
          {
            goto LABEL_23;
          }

          v11 = [objc_opt_self() enumeratorWithOptions:192];
          v12 = swift_allocObject();
          *(v12 + 16) = 0x6C7070612E6D6F63;
          *(v12 + 24) = 0xEA00000000002E65;
          strcpy((v12 + 32), ".ClassKitApp");
          *(v12 + 45) = 0;
          *(v12 + 46) = -5120;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_10000A4A4;
          *(v13 + 24) = v12;
          v0[6] = sub_10000A4EC;
          v0[7] = v13;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_100007D60;
          v0[5] = &unk_1000151E0;
          v14 = _Block_copy(v0 + 2);
          v15 = v0[7];

          v16 = [v11 swift_firstWhere:v14];

          _Block_release(v14);
          LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

          if (v14)
          {
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v2 = v40;
          if (v16)
          {
LABEL_23:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100008874(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
            }

            v29 = *(&_swiftEmptyArrayStorage + 2);
            v28 = *(&_swiftEmptyArrayStorage + 3);
            if (v29 >= v28 >> 1)
            {
              sub_100008874((v28 > 1), v29 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v29 + 1;
            *(&_swiftEmptyArrayStorage + v29 + 32) = v5;
          }
        }

LABEL_3:
        v4 = &DTProcessorTraceConfigurationState;
        goto LABEL_4;
      }

      if ((v5 - 20) < 4)
      {
        v8 = MobileGestalt_get_current_device();
        if (!v8)
        {
          goto LABEL_38;
        }

        v9 = v8;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

      if (v5 != 5)
      {
        goto LABEL_23;
      }

      v17 = type metadata accessor for DTProcessorTraceConfigurationState();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = sub_1000016B4();
      v4 = &DTProcessorTraceConfigurationState;
      if (v20[16] == 1 && (v20[18] & 1) != 0)
      {
        v21 = v20[17];

        if ((v21 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

LABEL_4:
    ++v3;
  }

  while (v3 != 52);
  v30 = *(&_swiftEmptyArrayStorage + 2);
  if (v30)
  {
    sub_100008854(0, v30, 0);
    v31 = *(&_swiftEmptyArrayStorage + 2);
    v32 = 32;
    do
    {
      v33 = *(&_swiftEmptyArrayStorage + v32);
      v34 = *(&_swiftEmptyArrayStorage + 3);
      if (v31 >= v34 >> 1)
      {
        sub_100008854((v34 > 1), v31 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v31 + 1;
      *(&_swiftEmptyArrayStorage + v31 + 32) = v33;
      ++v32;
      ++v31;
      --v30;
    }

    while (v30);
  }

  v35 = v0[10];

  v36 = v0[1];

  return v36(&_swiftEmptyArrayStorage);
}

uint64_t sub_100009BEC()
{
  v1 = sub_10000A950();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009CD4, 0, 0);
}

uint64_t sub_100009CD4()
{
  v1 = v0[9];
  v2 = objc_opt_self();
  v3 = 0;
  v35 = (v1 + 8);
  v4 = &DTProcessorTraceConfigurationState;
  v5 = &DTProcessorTraceConfigurationState;
  do
  {
    v6 = *(&off_1000149D8 + v3 + 32);
    v7 = [v2 v4[4].ivars];
    v8 = [v7 v5[4].weak_ivar_lyt];

    if (v8)
    {
      if (v6 > 28)
      {
        if (v6 == 41)
        {
          v23 = v0[10];
          v24 = v0[8];
          v25 = sub_10000A9A0();
          v26 = SFRuntimeAbsoluteFilePathForPath();

          sub_10000A9B0();
          sub_10000A930();

          *(v0 + 88) = 0;
          v27 = [objc_opt_self() defaultManager];
          sub_10000A940();
          v28 = sub_10000A9A0();

          LODWORD(v26) = [v27 fileExistsAtPath:v28 isDirectory:v0 + 11];

          (*v35)(v23, v24);
          if (v26)
          {
            v4 = &DTProcessorTraceConfigurationState;
            if (v0[11])
            {
              goto LABEL_23;
            }
          }

          else
          {
            v4 = &DTProcessorTraceConfigurationState;
          }
        }

        else
        {
          if (v6 != 29)
          {
            goto LABEL_23;
          }

          v12 = [objc_opt_self() enumeratorWithOptions:192];
          v13 = swift_allocObject();
          *(v13 + 16) = 0x6C7070612E6D6F63;
          *(v13 + 24) = 0xEA00000000002E65;
          strcpy((v13 + 32), ".ClassKitApp");
          *(v13 + 45) = 0;
          *(v13 + 46) = -5120;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_10000A350;
          *(v14 + 24) = v13;
          v0[6] = sub_10000A36C;
          v0[7] = v14;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_100007D60;
          v0[5] = &unk_100015168;
          v15 = _Block_copy(v0 + 2);
          v16 = v0[7];

          v17 = [v12 swift_firstWhere:v15];

          _Block_release(v15);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            __break(1u);
LABEL_36:
            __break(1u);
          }

          v4 = &DTProcessorTraceConfigurationState;
          if (v17)
          {
LABEL_23:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100008874(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v30 = _swiftEmptyArrayStorage[2];
            v29 = _swiftEmptyArrayStorage[3];
            if (v30 >= v29 >> 1)
            {
              sub_100008874((v29 > 1), v30 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v30 + 1;
            *(&_swiftEmptyArrayStorage[4] + v30) = v6;
          }
        }

LABEL_3:
        v5 = &DTProcessorTraceConfigurationState;
        goto LABEL_4;
      }

      if ((v6 - 20) < 4)
      {
        v9 = MobileGestalt_get_current_device();
        if (!v9)
        {
          goto LABEL_36;
        }

        v10 = v9;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

      if (v6 != 5)
      {
        goto LABEL_23;
      }

      v18 = type metadata accessor for DTProcessorTraceConfigurationState();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_1000016B4();
      v5 = &DTProcessorTraceConfigurationState;
      if (v21[16] == 1 && (v21[18] & 1) != 0)
      {
        v22 = v21[17];

        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

LABEL_4:
    ++v3;
  }

  while (v3 != 52);
  if (_swiftEmptyArrayStorage[2])
  {
    v31 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v31 = 52;
  }

  v32 = v0[10];

  v33 = v0[1];

  return v33(v31);
}

uint64_t sub_10000A208()
{
  v0 = sub_10000AA30();

  if (v0 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10000A25C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000A294(uint64_t a1, uint64_t *a2)
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

unint64_t sub_10000A2F8()
{
  result = qword_100018410;
  if (!qword_100018410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018410);
  }

  return result;
}

uint64_t sub_10000A36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10000A398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A3B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000A3F4()
{
  result = qword_100018448;
  if (!qword_100018448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018448);
  }

  return result;
}

unint64_t sub_10000A448()
{
  result = qword_100018450;
  if (!qword_100018450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018450);
  }

  return result;
}

uint64_t sub_10000A4F0(uint64_t a1)
{
  v2 = sub_10000A69C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A5F4();
  sub_10000A960();
  return 0;
}

unint64_t sub_10000A5F4()
{
  result = qword_100018458;
  if (!qword_100018458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018458);
  }

  return result;
}

unint64_t sub_10000A69C()
{
  result = qword_100018460;
  if (!qword_100018460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018460);
  }

  return result;
}