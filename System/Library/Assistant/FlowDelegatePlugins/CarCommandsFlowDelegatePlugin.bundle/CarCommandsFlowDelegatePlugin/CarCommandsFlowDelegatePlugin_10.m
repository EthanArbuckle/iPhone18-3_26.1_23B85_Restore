void *sub_F6174()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    goto LABEL_31;
  }

  v1 = result;
  v2 = [result passesOfType:1];

  sub_16484(0, &qword_1EC450, PKPass_ptr);
  v3 = sub_16A7D4();

  v4 = sub_F6874(v3);

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = 0xD000000000000011;
  v7 = "gin17WalletPassLibrary";
  v8 = "et/WalletPassLibrary.swift";
  sub_16ACF4(28);

  v44 = 0x20646E756F46;
  v45 = 0xE600000000000000;
  *&v41 = sub_11B48C(v4);
  v49._countAndFlagsBits = sub_16AE24();
  sub_16A744(v49);

  v50._countAndFlagsBits = 0xD000000000000014;
  v50._object = 0x800000000018D2E0;
  sub_16A744(v50);
  v9 = 0x20646E756F46;
  v10 = 0xE600000000000000;
  if (qword_1E58E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v11 = sub_16A584();
  v12 = sub_9DA0(v11, qword_1E65C0);
  v13 = sub_16A9A4();
  v38 = v8;
  v39 = v7;
  v14 = v9;
  v37 = v12;
  v9 = v12;
  sub_386D8(v13, 0x20000uLL, v6 + 121, v7 | 0x8000000000000000, 0xD000000000000011, (v8 | 0x8000000000000000), 36, v14, v10);

  v44 = _swiftEmptyArrayStorage;
  v10 = sub_11B48C(v4);
  v8 = 0;
  v6 = v4 & 0xC000000000000001;
  v7 = &off_1E2000;
  while (v10 != v8)
  {
    if (v6)
    {
      v15 = sub_16AD04();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v15 = *(v4 + 8 * v8 + 32);
    }

    v16 = v15;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if ([v15 isCarKeyPass])
    {
      v9 = &v44;
      sub_16AD34();
      v17 = *(v44 + 16);
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
    }

    else
    {
    }

    ++v8;
  }

  v18 = v44;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_16ACF4(21);

  v44 = 0x20646E756F46;
  v45 = 0xE600000000000000;
  v19 = sub_11B48C(v18);
  *&v41 = v19;
  v51._countAndFlagsBits = sub_16AE24();
  sub_16A744(v51);

  v52._countAndFlagsBits = 0x5079654B72616320;
  v52._object = 0xED00007365737361;
  sub_16A744(v52);
  v20 = v44;
  v21 = v45;
  v22 = sub_16A9A4();
  sub_386D8(v22, 0x20000uLL, 0xD00000000000008ALL, v39 | 0x8000000000000000, 0xD000000000000011, (v38 | 0x8000000000000000), 40, v20, v21);

  if (!v19)
  {

    return _swiftEmptyArrayStorage;
  }

  v48 = _swiftEmptyArrayStorage;
  result = sub_1468D8(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v5 = v48;
    v39 = v18 & 0xC000000000000001;
    swift_beginAccess();
    v23 = 0;
    v38 = v18;
    do
    {
      if (v39)
      {
        v24 = sub_16AD04();
      }

      else
      {
        v24 = *(v18 + 8 * v23 + 32);
      }

      v25 = v24;
      sub_D8400(v40 + 16, &v44);
      sub_F5958(&v41);
      v26 = type metadata accessor for WalletCarKey();
      swift_allocObject();
      v27 = sub_10F754(&v44, &v41);
      v46 = v26;
      v47 = &off_1D9928;

      v44 = v27;
      v48 = v5;
      v29 = v5[2];
      v28 = v5[3];
      if (v29 >= v28 >> 1)
      {
        sub_1468D8((v28 > 1), v29 + 1, 1);
        v5 = v48;
      }

      ++v23;
      v30 = v46;
      v31 = sub_2F8D0(&v44, v46);
      v32 = *(*(v30 - 8) + 64);
      __chkstk_darwin(v31);
      v34 = (&v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v34);
      v36 = *v34;
      v42 = v26;
      v43 = &off_1D9928;
      *&v41 = v36;
      v5[2] = v29 + 1;
      sub_D250(&v41, &v5[5 * v29 + 4]);
      sub_D13C(&v44);
      v18 = v38;
    }

    while (v19 != v23);

    return v5;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_F6724(uint64_t a1)
{
  v2 = sub_11B48C(a1);
  sub_1468B8(0, v2 & ~(v2 >> 63), 0);
  if (sub_11B48C(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = sub_16AD04();
      goto LABEL_5;
    }

    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      v3 = *(a1 + 32);
LABEL_5:
      v4 = v3;
      sub_16A954();

      return;
    }

    __break(1u);
  }
}

void *sub_F6874(uint64_t a1)
{
  sub_11B48C(a1);
  sub_16AD54();
  result = sub_11B48C(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return _swiftEmptyArrayStorage;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_16AD34();
    v6 = _swiftEmptyArrayStorage[2];
    sub_16AD64();
    sub_16AD74();
    result = sub_16AD44();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_F69A8()
{
  sub_D8470(v0 + 16);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_F6A04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1E91B8, &qword_1777C0);
    v2 = sub_16ACC4();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_F7038(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_F6BA8(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_F6BA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_16AF14();
  sub_16A6F4();
  result = sub_16AF54();
  v8 = v5 + 56;
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = result & v9;
    v11 = (result & v9) >> 6;
    v12 = *(v8 + 8 * v11);
    v13 = 1 << (result & v9);
    if ((v13 & v12) == 0)
    {
      break;
    }

    v14 = (*(v5 + 48) + 16 * v10);
    if (*v14 == a1 && v14[1] == a2)
    {
      goto LABEL_13;
    }

    if (sub_16AE54())
    {
      v20 = v14[1];
LABEL_13:
      *v14 = a1;
      v14[1] = a2;
    }

    result = v10 + 1;
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v13 | v12;
    v16 = (*(v5 + 48) + 16 * v10);
    *v16 = a1;
    v16[1] = a2;
    v17 = *(v5 + 16);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      *(v5 + 16) = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_F6CE8(void *a1)
{
  v2 = [a1 subcredentials];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
  sub_F6FE8(&qword_1EC470, &qword_1EC468, PKAppletSubcredential_ptr);
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6D8C(void *a1)
{
  v1 = [a1 associatedApplicationIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6DEC(void *a1)
{
  v1 = [a1 devicePaymentApplications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
  sub_F6FE8(&qword_1EC460, &qword_1EC458, PKPaymentApplication_ptr);
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6E88(void *a1)
{
  v1 = [a1 frontFieldBuckets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_5758(&qword_1EC478, &qword_1777C8);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_F6EF4()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[20];

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F6F7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_16484(0, &qword_1E6310, NSNumber_ptr);
  v4 = sub_16A7D4();

  return v4;
}

uint64_t sub_F6FE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_16484(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_F7094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();
  v5 = [a3 passWithUniqueID:v4];

  return v5;
}

uint64_t sub_F70E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_168994();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_F71A4, 0, 0);
}

uint64_t sub_F71A4()
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD00000000000007ELL, 0x800000000018D340, 0x2865747563657865, 0xE900000000000029, 20, 0xD00000000000001CLL, 0x800000000018D3C0);
  (*(v2 + 104))(v1, enum case for FlowUnhandledReason.needsServerExecution(_:), v3);
  sub_168D64();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_F7320()
{
  type metadata accessor for CommonServerFallbackFlow();
  sub_F7494();
  return sub_168934();
}

uint64_t sub_F73C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D8D0;

  return sub_F70E4(a1);
}

uint64_t sub_F745C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommonServerFallbackFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_F7494()
{
  result = qword_1EC530;
  if (!qword_1EC530)
  {
    type metadata accessor for CommonServerFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC530);
  }

  return result;
}

id sub_F74E8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    v6 = *sub_D084((v0 + 56), *(v0 + 80));
    v7 = v5;
    v8 = sub_DB860();
    v9 = sub_1329C4(v7, 9, v8 & 1);

    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_F75B8()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169384();
  v8 = sub_10A898(&off_1D3640);
  sub_86E4(v7, v8, v12);

  (*(v2 + 8))(v7, v0);
  v9 = v12[3];
  sub_57A80(v12);
  if (v9)
  {
    return sub_168C64();
  }

  else
  {
    return sub_168C74();
  }
}

uint64_t sub_F76CC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_F77B0()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_F786C, 0, 0);
}

uint64_t sub_F786C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A3C4();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_115100(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_F864C(&qword_1E92F0, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_F7A14()
{
  v1 = sub_5758(&qword_1EC788, &qword_177A08);
  sub_37404();
  v36 = v2;
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  sub_16A3C4();
  sub_16A424();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  sub_168894();
  sub_1693F4();
  v10 = type metadata accessor for FeatureFlagHelper();
  v11 = swift_allocObject();
  v12 = sub_168E34();
  sub_483C8(v12);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v40[3] = v10;
  v40[4] = &off_1D9AF0;
  v40[0] = v11;
  v13 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy();
  v14 = sub_483C8(v13);
  sub_2F8D0(v40, v10);
  sub_37404();
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v19 = sub_F8694(v18, v35);
  v20(v19);
  v21 = *v0;
  v39[3] = v10;
  v39[4] = &off_1D9AF0;
  v39[0] = v21;
  *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v41, v38);
  sub_10824(v39, v37);
  sub_2F8D0(v37, v37[3]);
  sub_37404();
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v26 = sub_F8694(v25, v35);
  v27(v26);
  v28 = *v0;

  sub_1668CC();
  v30 = v29;
  sub_D13C(v41);
  sub_D13C(v39);
  sub_D13C(v37);
  sub_D13C(v40);

  v41[0] = v30;
  sub_F864C(&qword_1EC790, type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  v31 = v36;
  (*(v36 + 16))(v35, v9, v1);
  v32 = sub_5758(&qword_1EC798, &unk_177A10);
  sub_483C8(v32);
  v33 = sub_168914();
  (*(v31 + 8))(v9, v1);
  return v33;
}

uint64_t sub_F7E60()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlayClimateRCHFlowStrategy()
{
  result = qword_1EC568;
  if (!qword_1EC568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F7F6C(uint64_t a1)
{
  result = sub_F864C(&qword_1EC770, type metadata accessor for SetCarPlayClimateRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_F7FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_F77B0();
}

uint64_t sub_F8088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_F8158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_F8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_F82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_F83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  v20 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy();
  *v19 = v12;
  v19[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v20, a6, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_F84B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_461EC();
}

uint64_t sub_F864C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NLFanVentMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xF87A0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F87DC()
{
  result = qword_1EC7A0;
  if (!qword_1EC7A0)
  {
    sub_37130(&qword_1EC7A8, qword_177A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7A0);
  }

  return result;
}

uint64_t sub_F8840(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3668;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F888C(char a1)
{
  result = 0x7265707075;
  switch(a1)
  {
    case 1:
      result = 0x656C6464696DLL;
      break;
    case 2:
      result = 0x7265776F6CLL;
      break;
    case 3:
      result = 0x646E417265707075;
      break;
    case 4:
      result = 0x6E41656C6464696DLL;
      break;
    case 5:
      result = 0x726F707075736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_F898C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F8840(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_F89BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F888C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_F89FC()
{
  result = qword_1EC7B0;
  if (!qword_1EC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7B0);
  }

  return result;
}

uint64_t sub_F8A60(uint64_t a1)
{
  *(v2 + 336) = a1;
  *(v2 + 344) = v1;
  return sub_D2B0();
}

uint64_t sub_F8EB8()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    switch(*(v3 + 457))
    {
      case 1:
        v17 = *(v3 + 456);
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 400) = v18;
        *v18 = v19;
        v20 = sub_FC800(v18);

        result = sub_FAAC4(v20, v21);
        break;
      case 2:
        v22 = *(v3 + 456);
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 368) = v23;
        *v23 = v24;
        v25 = sub_FC800(v23);

        result = sub_F9CE0(v25, v26);
        break;
      default:
        v12 = *(v3 + 456);
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 384) = v13;
        *v13 = v14;
        v15 = sub_FC800(v13);

        result = sub_FB778(v15, v16);
        break;
    }
  }

  return result;
}

uint64_t sub_F9234()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  sub_71940();
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 376) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F9330()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = *(v0 + 184);
  v2 = sub_FC740();

  return v3(v2);
}

uint64_t sub_F938C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  sub_71940();
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 392) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F9488()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = *(v0 + 208);
  v2 = sub_FC740();

  return v3(v2);
}

uint64_t sub_F94E4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  sub_71940();
  v6 = *(v5 + 400);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F95E0()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = *(v0 + 232);
  v2 = sub_FC740();

  return v3(v2);
}

uint64_t sub_F963C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  sub_71940();
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 424) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F9738()
{
  sub_D2DC();
  v1 = *(v0 + 256);
  v2 = sub_FC740();

  return v3(v2);
}

uint64_t sub_F978C()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 424);
  sub_D37C();

  return v2();
}

uint64_t sub_F97E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[34] = v1;
  v2[35] = v4;
  v2[36] = v0;
  sub_71940();
  v6 = *(v5 + 440);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 448) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_F98E4()
{
  sub_D2DC();
  v1 = *(v0 + 432);

  v2 = *(v0 + 280);
  v3 = sub_FC740();

  return v4(v3);
}

uint64_t sub_F9C7C()
{
  sub_D2DC();
  v1 = v0[54];

  sub_D13C(v0 + 2);
  v2 = v0[56];
  sub_D37C();

  return v3();
}

uint64_t sub_F9CE0(char a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  *(v3 + 152) = a1;
  return sub_D2B0();
}

uint64_t sub_F9CF8()
{
  sub_D3A4();
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(sub_FC788(v1) + 24);
  sub_61494();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v9 = sub_2FCBC(v8);

  return v11(v9);
}

uint64_t sub_F9DFC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v1;
  *(v2 + 80) = v6;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_F9F18()
{
  sub_30984();
  v1 = *(v0 + 80);
  if (!v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v28 = *(v0 + 64);
    v29 = sub_16A584();
    sub_48154(v29, qword_1E65C0);
    sub_FC888();
    sub_FC930();
    sub_386D8(v30, v31, v32, v33, v34, v35, 54, v36, v61);
    sub_3024C(&unk_179C38);
    v37 = sub_FC9A4();
    *(v0 + 144) = v37;
    *v37 = v0;
    v38 = sub_FA9D4;
LABEL_20:
    v37[1] = v38;
    v48 = *(v0 + 64);
    sub_FC864();
    sub_FC870();

    __asm { BR              X1 }
  }

  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v39 = *(v0 + 64);
    v40 = sub_16A584();
    sub_48154(v40, qword_1E65C0);
    sub_FC888();
    sub_FC930();
    sub_386D8(v41, v42, v43, v44, v45, v46, 59, v47, v61);
    sub_3024C(&unk_179C38);
    v37 = sub_FC9A4();
    *(v0 + 136) = v37;
    *v37 = v0;
    v38 = sub_FA8EC;
    goto LABEL_20;
  }

  v3 = *(v0 + 64);
  v4 = sub_D084((v3 + 48), *(v3 + 72));
  v5 = sub_133644(v1);
  v7 = sub_948E4(v5, *v4, v6);

  v8 = v7[2];

  if (!v8)
  {
    v51 = *(v0 + 64);

    v52 = *(v51 + 80);
    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v63 = v53 + *v53;
    v55 = *(v54 + 4);
    v56 = swift_task_alloc();
    *(v0 + 128) = v56;
    *v56 = v0;
    sub_2FCBC(v56);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  v9 = 0x6E696C6261736944;
  if (*(v0 + 152))
  {
    v9 = 0x676E696C62616E45;
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  v64 = v9;

  v65._countAndFlagsBits = 0xD000000000000010;
  v65._object = 0x800000000018D5A0;
  sub_16A744(v65);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9F450(v11, qword_1E65C0);
  sub_FC930();
  sub_386D8(v12, v13, v14, v15, v16, v17, 67, v64, v10);

  *(v0 + 96) = 0;
  result = *(v0 + 80);
  if (*(v0 + 88))
  {
    if (*(result + 16))
    {
      sub_6765C(result + 32, v0 + 16);
      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      v21 = *(sub_FC788((v0 + 16)) + 16);
      sub_FC7A8();
      v62 = v22 + *v22;
      v24 = *(v23 + 4);
      v25 = swift_task_alloc();
      *(v0 + 104) = v25;
      *v25 = v0;
      v25[1] = sub_FA46C;
      sub_FC7C8(*(v0 + 152));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
  }

  else
  {

    v59 = swift_task_alloc();
    *(v0 + 120) = v59;
    *v59 = v0;
    sub_FC818(v59);
    sub_FC870();

    return sub_FC168();
  }

  return result;
}

uint64_t sub_FA46C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[10];
    sub_D13C(v3 + 2);
  }

  else
  {
    sub_D13C(v3 + 2);
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FA584()
{
  sub_D3A4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96) + 1;
  *(v0 + 96) = v2;
  result = *(v0 + 80);
  if (v2 == v1)
  {

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    sub_FC818(v4);

    return sub_FC168();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_6765C(result + 40 * v2 + 32, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(sub_FC788((v0 + 16)) + 16);
    sub_61494();
    v13 = (v8 + *v8);
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_FA46C;
    v12 = sub_FC7C8(*(v0 + 152));

    return v13(v12);
  }

  return result;
}

uint64_t sub_FA71C()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 120);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FA804()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 128);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FA8EC()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 136);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FA9D4()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 144);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FAAC4(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 304) = a1;
  return sub_D2B0();
}

uint64_t sub_FAADC()
{
  sub_D3A4();
  v1 = *(v0 + 216);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(sub_FC788(v1) + 16);
  sub_61494();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v8;
  *v8 = v9;
  v10 = sub_FC8C0(v8);

  return v11(v10);
}

uint64_t sub_FABDC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_FACD4()
{
  sub_30984();
  if (*(v2 + 152))
  {
    sub_FC95C();
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    sub_FC8E8(inited, xmmword_16D9A0);
    sub_4EB50(v1);
    v6.n128_f64[0] = (*(v5 + 16))();
    v7 = sub_948E4(inited, *v0, v6);
    swift_setDeallocating();
    sub_EFFF4();
    v8 = v7[2];

    if (v8)
    {
      v9 = 0x6E696C6261736944;
      if (*(v2 + 304))
      {
        v9 = 0x676E696C62616E45;
      }

      v40 = v9;

      v41._countAndFlagsBits = 0x6564207261657220;
      v41._object = 0xEF726574736F7266;
      sub_16A744(v41);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v10 = sub_16A584();
      sub_9F450(v10, qword_1E65C0);
      sub_FC8DC();
      sub_386D8(v12, 0x400uLL, v11 + 99, 0x800000000018D450, 0xD00000000000001FLL, 0x800000000018D670, 105, v40, v37);

      v13 = *(v2 + 112);
      v14 = *(v2 + 120);
      v15 = *(sub_FC788((v2 + 88)) + 16);
      sub_FC7A8();
      v38 = v16 + *v16;
      v18 = *(v17 + 4);
      v19 = swift_task_alloc();
      *(v2 + 248) = v19;
      *v19 = v2;
      v19[1] = sub_FB16C;
      sub_FC7C8(*(v2 + 304));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    v30 = *(*(v2 + 224) + 80);
    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v39 = v31 + *v31;
    v33 = *(v32 + 4);
    v34 = swift_task_alloc();
    *(v2 + 280) = v34;
    *v34 = v2;
    sub_2FCBC(v34);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  sub_4EAF4(v2 + 128, &qword_1E6368, &qword_16DAA0);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_7194C();
  v22 = *(v2 + 224);
  v23 = sub_16A584();
  sub_48154(v23, qword_1E65C0);
  sub_FC8DC();
  sub_386D8(v25, 0x400uLL, v24 + 99, 0x800000000018D450, 0xD00000000000001FLL, (v1 | 0x8000000000000000), 97, v24 + 8, v37);
  sub_3024C(&unk_179C38);
  v26 = sub_FC9A4();
  *(v2 + 296) = v26;
  *v26 = v2;
  v26[1] = sub_FB57C;
  v27 = *(v2 + 224);
  sub_FC864();
  sub_FC870();

  __asm { BR              X1 }
}

uint64_t sub_FB16C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 264) = v12;
    *v12 = v7;
    v12[1] = sub_FB2C4;
    v13 = *(v3 + 304);

    return sub_FC168();
  }
}

uint64_t sub_FB2C4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v6 = *(v5 + 264);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FB3C0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 176);
  sub_30AEC();

  return v2();
}

uint64_t sub_FB420()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FB51C()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 200);
  sub_30AEC();

  return v2();
}

uint64_t sub_FB57C()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 296);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FB664()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 288);
  sub_D37C();

  return v2();
}

uint64_t sub_FB6C0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 256);
  sub_D37C();

  return v2();
}

uint64_t sub_FB71C()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = *(v0 + 272);
  sub_D37C();

  return v2();
}

uint64_t sub_FB778(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 304) = a1;
  return sub_D2B0();
}

uint64_t sub_FB790()
{
  sub_D3A4();
  v1 = *(v0 + 216);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(sub_FC788(v1) + 8);
  sub_61494();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v8;
  *v8 = v9;
  v10 = sub_FC8C0(v8);

  return v11(v10);
}

uint64_t sub_FB890()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_FB988()
{
  sub_30984();
  if (*(v2 + 152))
  {
    sub_FC95C();
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    sub_FC8E8(inited, xmmword_16D9A0);
    sub_4EB50(v1);
    v6.n128_f64[0] = (*(v5 + 16))();
    v7 = sub_948E4(inited, *v0, v6);
    swift_setDeallocating();
    sub_EFFF4();
    v8 = v7[2];

    if (v8)
    {
      v9 = 0x6E696C6261736944;
      if (*(v2 + 304))
      {
        v9 = 0x676E696C62616E45;
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE900000000000067;
      }

      v40 = v9;

      v41._countAndFlagsBits = 0xD000000000000010;
      v41._object = 0x800000000018D650;
      sub_16A744(v41);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v11 = sub_16A584();
      v12 = sub_9F450(v11, qword_1E65C0);
      sub_386D8(v12, 0x400uLL, 0xD000000000000082, 0x800000000018D450, 0xD000000000000020, 0x800000000018D5F0, 87, v40, v10);

      v13 = *(v2 + 112);
      v14 = *(v2 + 120);
      v15 = *(sub_FC788((v2 + 88)) + 16);
      sub_FC7A8();
      v38 = v16 + *v16;
      v18 = *(v17 + 4);
      v19 = swift_task_alloc();
      *(v2 + 248) = v19;
      *v19 = v2;
      v19[1] = sub_FBE18;
      sub_FC7C8(*(v2 + 304));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    v30 = *(*(v2 + 224) + 80);
    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v39 = v31 + *v31;
    v33 = *(v32 + 4);
    v34 = swift_task_alloc();
    *(v2 + 280) = v34;
    *v34 = v2;
    sub_2FCBC(v34);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  sub_4EAF4(v2 + 128, &qword_1E6368, &qword_16DAA0);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_7194C();
  v22 = *(v2 + 224);
  v23 = sub_16A584();
  sub_48154(v23, qword_1E65C0);
  sub_FC8DC();
  sub_386D8(v25, 0x400uLL, v24 + 98, 0x800000000018D450, 0xD000000000000020, (v1 | 0x8000000000000000), 79, v24 | 8, v37);
  sub_3024C(&unk_179C38);
  v26 = sub_FC9A4();
  *(v2 + 296) = v26;
  *v26 = v2;
  v26[1] = sub_FC6D0;
  v27 = *(v2 + 224);
  sub_FC864();
  sub_FC870();

  __asm { BR              X1 }
}

uint64_t sub_FBE18()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 264) = v12;
    *v12 = v7;
    v12[1] = sub_FBF70;
    v13 = *(v3 + 304);

    return sub_FC168();
  }
}

uint64_t sub_FBF70()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v6 = *(v5 + 264);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FC06C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FC168()
{
  sub_D2DC();
  *(v0 + 57) = v1;
  *(v0 + 56) = v2;
  v3 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_FC22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  type metadata accessor for CarCommandsSetDefrosterCATsSimple();
  sub_16A154();
  *(v0 + 32) = sub_16A0F4();
  sub_151FFC();
  v4 = sub_16A0C4();
  sub_5370(v1, 0, 1, v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_FC328;
  v6 = *(v0 + 16);
  v7 = *(v0 + 57);

  return sub_A09B0(v7, v6);
}

uint64_t sub_FC328()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v7 = v4[5];
  v8 = *v1;
  *v6 = *v1;
  v5[6] = v0;

  v9 = v4[4];
  if (v0)
  {
    sub_4EAF4(v5[2], &qword_1E6300, &qword_16ECE0);

    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v5[3];
    sub_4EAF4(v5[2], &qword_1E6300, &qword_16ECE0);

    v14 = v8[1];

    return v14(v3);
  }
}

uint64_t sub_FC4DC()
{
  sub_D2DC();
  v2 = v0[2];
  v1 = v0[3];

  sub_D37C();
  v4 = v0[6];

  return v3();
}

uint64_t sub_FC540(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_FC5D4;

  return sub_F8A60(a1);
}

uint64_t sub_FC5D4()
{
  sub_D2DC();
  sub_FC7B8();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_FC6D8(uint64_t a1)
{
  *(a1 + 8) = sub_F97E8;
  v3 = *(v2 + 344);
  return v1;
}

void sub_FC708(os_log_type_t a1)
{

  sub_386D8(a1, 0x400uLL, v3 + 112, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 44, v2, v1);
}

uint64_t sub_FC740()
{
  sub_D13C((v1 + 16));
  v2 = *(v1 + 8);
  return v0;
}

uint64_t *sub_FC768()
{
  result = (*(v0 + 8) + 40);
  v2 = *result;
  return result;
}

void sub_FC7DC()
{
  *(v1 + 432) = v0;

  sub_16ACF4(27);
}

uint64_t sub_FC800(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 344);
  return v3 & 1;
}

uint64_t sub_FC818(uint64_t a1)
{
  *(a1 + 8) = sub_FA71C;
  v2 = *(v1 + 152);
  return 2;
}

void sub_FC844(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 7;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_FC8A4()
{
  v2 = *(v0 + 344);

  return sub_16A584();
}

uint64_t *sub_FC8E8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v3[14];
  v5 = v3[15];
  sub_D084(v3 + 11, v4);
  v2[7] = v4;
  v2[8] = *(v5 + 8);

  return sub_10888(v2 + 4);
}

uint64_t sub_FC940()
{

  return sub_D13C((v0 + 136));
}

void *sub_FC95C()
{
  v1 = *(v0 + 224);
  sub_D124((v0 + 128), v0 + 88);
  return sub_D084((v1 + 48), *(v1 + 72));
}

uint64_t sub_FC9A4()
{
  v2 = *v0;

  return swift_task_alloc();
}

uint64_t sub_FC9BC()
{
  v2 = *v0;

  return swift_task_alloc();
}

uint64_t sub_FC9D4()
{

  return sub_16AD84();
}

uint64_t getEnumTagSinglePayload for CarCommandsDirectInvocations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsDirectInvocations(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0xFCB40);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_FCDBC(unsigned __int8 a1)
{
  sub_FD6AC();
  sub_16AF24(a1);
  return sub_16AF54();
}

Swift::Int sub_FCF7C()
{
  sub_FD6AC();
  sub_16A6F4();
  return sub_16AF54();
}

Swift::Int sub_FCFE8(Swift::UInt8 a1)
{
  sub_FD6AC();
  sub_16AF34(a1);
  return sub_16AF54();
}

Swift::Int sub_FD07C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_FD6AC();
  a2(a1);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_FD0F8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_FD6AC();
  a2(v5, a1);
  return sub_16AF54();
}

Swift::Int sub_FD158(uint64_t a1, void (*a2)(uint64_t))
{
  sub_FD6AC();
  a2(a1);
  return sub_16AF54();
}

uint64_t sub_FD1A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1618;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

id sub_FD1F4(uint64_t a1, char a2)
{
  sub_FD5D4();
  sub_FD2E0(a2);
  v4 = sub_FD3A8();
  sub_5758(&qword_1E6350, &unk_177CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  sub_16AC84();
  sub_16138(a1, inited + 72);
  v6 = sub_16A5C4();
  sub_FD618(v6, v4);
  return v4;
}

unint64_t sub_FD2E0(char a1)
{
  result = 0xD00000000000003FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000042;
      break;
    case 2:
      result = 0xD00000000000003CLL;
      break;
    case 3:
    case 4:
      result = 0xD000000000000045;
      break;
    case 5:
      result = 0xD00000000000003DLL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_FD3A8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_16A644();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

id sub_FD41C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() runSiriKitExecutorCommandWithContext:a2 payload:a1];
  v5 = a3[4];
  sub_D084(a3, a3[3]);
  sub_168B04();
  if (v6)
  {
    v7 = sub_16A644();
  }

  else
  {
    v7 = 0;
  }

  [v4 setSessionHandOffContinuityID:v7];

  return v4;
}

uint64_t sub_FD520@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FD1A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_FD550@<X0>(unint64_t *a1@<X8>)
{
  result = sub_FD2E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_FD580()
{
  result = qword_1EC7C8;
  if (!qword_1EC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C8);
  }

  return result;
}

unint64_t sub_FD5D4()
{
  result = qword_1EC7D0;
  if (!qword_1EC7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D0);
  }

  return result;
}

void sub_FD618(uint64_t a1, void *a2)
{
  isa = sub_16A5A4().super.isa;

  [a2 setUserData:isa];
}

uint64_t sub_FD6AC()
{

  return sub_16AF14();
}

uint64_t type metadata accessor for CarCommandsSetLockStatusCATsSimple()
{
  result = qword_1EC7D8;
  if (!qword_1EC7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FD750(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_FD7F0, 0, 0);
}

uint64_t sub_FD7F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_16D3A0;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_10888((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 64);
  *(v3 + 80) = 0x64656B636F6CLL;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v8;
  v9 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_31B04;
  v11 = *(v0 + 24);

  return v13(0xD00000000000002ELL, 0x8000000000185DF0, v3);
}

uint64_t sub_FD9DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_FDA30(a1, a2);
}

uint64_t sub_FDA30(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2F868(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_FDBAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for CarCommandsSetRadioStationCATsSimple()
{
  result = qword_1EC828;
  if (!qword_1EC828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDD40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_FDD94(a1, a2);
}

uint64_t sub_FDD94(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_FDEF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

Class sub_FDFF8(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v19);
  if (v19[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EC880, &qword_177DB8);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_D124(&v20, v23);
        v4 = v24;
        v5 = v25;
        sub_D084(v23, v24);
        v6 = (*(v5 + 16))(v4, v5);
        v7 = v24;
        sub_D084(v23, v24);
        sub_FE958();
        v8(v7);
        if (v9.value.super.isa)
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v9.value.super.isa = sub_99BFC();
        }

        v10.value = v6;
        v11.super.super.isa = sub_16AA04(v10, v9).super.super.isa;
        v12 = sub_1693E4();
        sub_955E4(v12);
        (*(v13 + 8))(a1);
        sub_D13C(v23);
        return v11.super.super.isa;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    sub_99140(v19, &qword_1E5F80, &unk_16E7E0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_99140(&v20, &qword_1EC878, &unk_177DA8);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  sub_386D8(v15, 0x40uLL, 0xD0000000000000A5, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 67, 0xD000000000000016, v2);
  v16 = sub_1693E4();
  sub_955E4(v16);
  (*(v17 + 8))(a1);
  return 0;
}

id sub_FE290(char *a1, char a2)
{
  v3 = v2;
  v31 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) == 0x30)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v32);
    if (v32[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1EC880, &qword_177DB8);
      if (swift_dynamicCast())
      {
        if (*(&v34 + 1))
        {
          sub_D124(&v33, v36);
          if (a2)
          {
          }

          else
          {
            v17 = sub_16AE54();

            if ((v17 & 1) == 0)
            {
              v20 = sub_16AA14();
              goto LABEL_23;
            }
          }

          v18 = v37;
          v19 = v38;
          sub_D084(v36, v37);
          v20 = (*(v19 + 16))(v18, v19);
          if (a2)
          {
            v21 = sub_16AE54();

            if ((v21 & 1) == 0)
            {
              v22 = [v31 carName];
              goto LABEL_26;
            }

LABEL_24:
            v23 = v37;
            sub_D084(v36, v37);
            sub_FE958();
            v24(v23);
            if (!v25)
            {
              v26 = 0;
              goto LABEL_28;
            }

            sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
            v22 = sub_99BFC();
LABEL_26:
            v26 = v22;
LABEL_28:
            v40.is_nil = sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
            v27.value = v20;
            v40.value.super.isa = v26;
            v28.super.super.isa = sub_16AA04(v27, v40).super.super.isa;
            v29 = swift_dynamicCastUnknownClass();
            if (!v29)
            {

              v29 = v31;
            }

            sub_D13C(v36);
            return v29;
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
      }
    }

    else
    {
      sub_99140(v32, &qword_1E5F80, &unk_16E7E0);
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
    }

    sub_99140(&v33, &qword_1EC878, &unk_177DA8);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_FE934();
    v14 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_FE934();
    v14 = 18;
  }

  sub_386D8(v7, v8, v9, v10, v11, v12, v14, v13, v30);

  return v31;
}

id sub_FE680(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v17 carName];
  v5 = sub_16AA14();
  if ((a2 & 0xF0) == 0x30)
  {
    if (a2)
    {
      sub_16138(a1, v19);
      sub_5758(&qword_1EC228, &unk_177DC0);
      if (sub_991D0())
      {
        v5 = v18;
      }
    }

    else
    {
      sub_16138(a1, v19);
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_991D0())
      {

        v4 = v18;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_FE934();
    sub_386D8(v7, v8, v9, v10, v11, v12, 43, v13, 0x8000000000186FF0);
  }

  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v14.value = v5;
  v21.value.super.isa = v4;
  v15.super.super.isa = sub_16AA04(v14, v21).super.super.isa;
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v17;
  }

  return result;
}

double sub_FE884@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x30)
  {
    if (a1)
    {
      v4 = sub_16AA14();
      if (v4 != 2)
      {
        *(a2 + 24) = &type metadata for Bool;
        *a2 = v4 & 1;
        return result;
      }
    }

    else
    {
      v6 = [v2 carName];
      if (v6)
      {
        v7 = v6;
        *(a2 + 24) = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        *a2 = v7;
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for CarCommandsAppResolutionCATsSimple()
{
  result = qword_1EC888;
  if (!qword_1EC888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FE9F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_FEA18, 0, 0);
}

uint64_t sub_FEA18()
{
  v1 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_16D9A0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = sub_5758(&qword_1EB948, &qword_176490);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_6D128;
  v5 = v0[3];

  return v7(0xD000000000000032, 0x800000000018AA20, v2);
}

uint64_t sub_FEB58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_FEBAC(a1, a2);
}

uint64_t sub_FEBAC(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_FED08(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_FEE20()
{
  sub_D2DC();
  v1[61] = v2;
  v1[62] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[63] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_FEEA8()
{
  sub_D2DC();
  v1 = *sub_D084((*(v0 + 496) + 8), *(*(v0 + 496) + 32));
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  v2[1] = sub_FEF50;

  return sub_13AB58(v0 + 96, 1);
}

uint64_t sub_FEF50()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 520) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_FF048()
{
  sub_10824(*(v0 + 488), v0 + 176);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EC8D8, &qword_177EA8);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 216), v0 + 136);
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    sub_D084((v0 + 96), v1);
    v3 = *(v2 + 64);
    v13 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 528) = v5;
    *v5 = v0;
    v5[1] = sub_FF384;

    return v13(v0 + 296, v1, v2);
  }

  else
  {
    v7 = *(v0 + 488);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_D188(v0 + 216, &qword_1EC8E0, &unk_177EB0);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v9 = v8;
    sub_16ACF4(65);
    *(v0 + 456) = 0;
    *(v0 + 464) = 0xE000000000000000;
    v15._object = 0x8000000000184C00;
    v15._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v15);
    sub_16AD84();
    v16._countAndFlagsBits = 0xD000000000000029;
    v16._object = 0x800000000018D860;
    sub_16A744(v16);
    v10 = *(v0 + 464);
    *v9 = *(v0 + 456);
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 96));
    v11 = *(v0 + 504);

    sub_D37C();

    return v12();
  }
}

uint64_t sub_FF328()
{
  sub_D2DC();
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);

  sub_D37C();

  return v3();
}

uint64_t sub_FF384()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_FF47C()
{
  if (!*(v0 + 320))
  {
    sub_D188(v0 + 296, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v28 = *(v0 + 496);
    v29 = sub_16A584();
    sub_9DA0(v29, qword_1E65C0);
    sub_16A9A4();
    sub_1005B8();
    sub_1005D4();
    sub_386D8(v30, v31, v32, v33, v34, v35, 27, v36, v71);
    sub_89054(&unk_179C68);
    v37 = *v28;
    v38 = swift_task_alloc();
    *(v0 + 616) = v38;
    *v38 = v0;
    v39 = sub_1000B8;
LABEL_18:
    v38[1] = v39;
    v50 = *(v0 + 496);
    sub_D2C0();

    __asm { BR              X1 }
  }

  sub_D124((v0 + 296), v0 + 256);
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  sub_D084((v0 + 256), v1);
  v3 = (*(v2 + 88))(v1, v2);
  if (!v3)
  {
LABEL_15:
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v40 = *(v0 + 496);
    v41 = sub_16A584();
    sub_9DA0(v41, qword_1E65C0);
    sub_16A9A4();
    sub_1005B8();
    sub_1005D4();
    sub_386D8(v42, v43, v44, v45, v46, v47, 33, v48, v71);
    sub_89054(&unk_179C68);
    v49 = *v40;
    v38 = swift_task_alloc();
    *(v0 + 600) = v38;
    *v38 = v0;
    v39 = sub_FFF5C;
    goto LABEL_18;
  }

  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {

    goto LABEL_15;
  }

  v6 = *sub_D084((v0 + 136), *(v0 + 160));
  v7 = sub_8F248();
  if (v8 == 0xFF)
  {

    sub_16ACF4(43);

    v53 = *sub_D084((v0 + 136), *(v0 + 160));
    *(v0 + 472) = sub_8F248();
    *(v0 + 480) = v54;
    sub_5758(&qword_1EC8E8, &qword_177EC0);
    v73._countAndFlagsBits = sub_16A694();
    sub_16A744(v73);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v55 = *(v0 + 496);
    v56 = sub_16A584();
    sub_9DA0(v56, qword_1E65C0);
    sub_16A9A4();
    sub_1005D4();
    sub_386D8(v57, v58, v59, v60, v61, v62, 38, 0xD000000000000029, 0x800000000018D950);

    sub_89054(&unk_179C68);
    v63 = *v55;
    v38 = swift_task_alloc();
    *(v0 + 584) = v38;
    *v38 = v0;
    v39 = sub_FFE00;
    goto LABEL_18;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(v0 + 496);
  v12 = sub_D084((v11 + 48), *(v11 + 72));
  v13 = sub_1334E0(v4);
  v15 = sub_948E4(v13, *v12, v14);

  v16 = v15[2];

  if (!v16)
  {
    v64 = *(v0 + 496);

    v65 = *(v64 + 80);
    sub_D084((v11 + 48), *(v11 + 72));
    v66 = *(*(v65 + 8) + 40);
    v72 = v66 + *v66;
    v67 = v66[1];
    v68 = swift_task_alloc();
    *(v0 + 568) = v68;
    *v68 = v0;
    v68[1] = sub_FFCA4;
    sub_D2C0();

    __asm { BRAA            X2, X16 }
  }

  v17 = (v4 + 32);
  do
  {
    v19 = v17[3];
    v18 = v17[4];
    v20 = sub_D084(v17, v19);
    *(v0 + 40) = v19;
    *(v0 + 48) = *(v18 + 8);
    v21 = sub_10888((v0 + 16));
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    *(v0 + 80) = &type metadata for DefaultChangeNormalizer;
    *(v0 + 88) = &off_1D4868;
    sub_4BF0C(v9, v10);
    sub_100500(v0 + 16);
    v17 += 5;
    --v5;
  }

  while (v5);
  v22 = *(v0 + 504);

  type metadata accessor for CarCommandsSetCarPlayFanIntensityCATsSimple();
  sub_16A154();
  *(v0 + 544) = sub_16A0F4();
  v23 = swift_task_alloc();
  *(v0 + 552) = v23;
  *v23 = v0;
  v23[1] = sub_FFB0C;
  sub_D2C0();

  return sub_6CFBC(v24, v25);
}

uint64_t sub_FFB0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[42] = v2;
  v4[43] = a1;
  v4[44] = v1;
  v5 = v3[69];
  v6 = *v2;
  v4[70] = v1;

  v7 = v3[68];

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_FFC44()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  v1 = *(v0 + 344);
  sub_100554();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_FFCA4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[45] = v1;
  v2[46] = v4;
  v2[47] = v0;
  sub_71940();
  v6 = *(v5 + 568);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 576) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FFDA0()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  v1 = *(v0 + 368);
  sub_100554();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_FFE00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[48] = v1;
  v2[49] = v4;
  v2[50] = v0;
  sub_71940();
  v6 = *(v5 + 584);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 592) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_FFEFC()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  v1 = *(v0 + 392);
  sub_100554();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_FFF5C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[51] = v1;
  v2[52] = v4;
  v2[53] = v0;
  sub_71940();
  v6 = *(v5 + 600);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 608) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100058()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  v1 = *(v0 + 416);
  sub_100554();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_1000B8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v0;
  sub_71940();
  v6 = *(v5 + 616);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 624) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001B4()
{
  sub_D2DC();
  v1 = *(v0 + 440);
  sub_100554();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_10020C()
{
  sub_D2DC();
  sub_10058C();
  v1 = *(v0 + 624);
  v2 = *(v0 + 504);

  sub_D37C();

  return v3();
}

uint64_t sub_10026C()
{
  sub_D2DC();
  sub_10058C();
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);

  sub_D37C();

  return v3();
}

uint64_t sub_1002CC()
{
  sub_D2DC();
  sub_D13C(v0 + 32);
  sub_10058C();
  v1 = v0[76];
  v2 = v0[63];

  sub_D37C();

  return v3();
}

uint64_t sub_100334()
{
  sub_D2DC();
  sub_D13C(v0 + 32);
  sub_10058C();
  v1 = v0[74];
  v2 = v0[63];

  sub_D37C();

  return v3();
}

uint64_t sub_10039C()
{
  sub_D2DC();
  sub_D13C(v0 + 32);
  sub_10058C();
  v1 = v0[72];
  v2 = v0[63];

  sub_D37C();

  return v3();
}

uint64_t sub_100404()
{
  sub_D2DC();
  sub_D13C(v0 + 32);
  sub_10058C();
  v1 = v0[70];
  v2 = v0[63];

  sub_D37C();

  return v3();
}

uint64_t sub_10046C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_FEE20();
}

uint64_t sub_100554()
{
  v1 = v0[63];
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 12);
}

uint64_t sub_10058C()
{
  sub_D13C((v0 + 136));

  return sub_D13C((v0 + 96));
}

uint64_t sub_1005E4()
{
  v1 = sub_104B2C();
  sub_10B304(&off_1D0C40, v1);
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if ((sub_103994() & 1) == 0)
  {
    sub_1021D0();
    if (v4)
    {

      goto LABEL_5;
    }

    if (!*(*(v0 + 144) + 16))
    {
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:

  return sub_102714();
}

uint64_t sub_100678()
{
  v0 = sub_103A44();
  sub_82168(v0);
  if (v2 == 0x6574736F72666564 && v1 == 0xE900000000000072)
  {

    v4 = 1;
  }

  else
  {
    sub_16AE54();
    sub_48350();
    switch(sub_10226C())
    {
      case 1u:
        sub_93F0C();
        goto LABEL_9;
      case 3u:

        v4 = 0;
        break;
      default:
LABEL_9:
        sub_EAAF0();
        v6 = sub_16AE54();

        v4 = v6 ^ 1;
        break;
    }
  }

  return v4 & 1;
}

BOOL sub_100794()
{
  v2 = sub_103A44();
  sub_82168(v2);
  if (v4 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
  {
  }

  else
  {
    v1 = sub_10C098();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = sub_103570();
  if (sub_82B98(v6) == 0x6E776F6E6B6E75 && v7 == 0xE700000000000000)
  {
  }

  else
  {
    v1 = sub_10C098();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  switch(sub_10226C())
  {
    case 1u:
      sub_93F0C();
      goto LABEL_17;
    case 3u:

      break;
    default:
LABEL_17:
      sub_10C098();
      sub_48350();
      break;
  }

  sub_109B8C();
  sub_104B2C();
  sub_10C3F8();
  sub_9409C();

  if (v1 & 1) == 0 || (sub_103994())
  {
    return 1;
  }

  sub_1021D0();
  if (!v10)
  {
    return 0;
  }

  return *(*(v0 + 144) + 16) == 0;
}

uint64_t sub_100914()
{
  v2 = v0;
  sub_107BD8();
  if ((v3 & 1) == 0)
  {
    return 6;
  }

  v4 = *(v0 + 16);
  sub_143CC0();
  if (v5)
  {
    v6 = v5;
    sub_16A954();
  }

  sub_1438A4();
  if (v8)
  {
    v9 = v8;
    [v8 integerValue];
  }

  sub_144BE0();
  if ((v10 & 1) == 0)
  {
    v11 = sub_103570();
    sub_82B98(v11);
    sub_10C060();
    if (v14 == 0xD000000000000011 && v13 == v12)
    {
      goto LABEL_18;
    }

    sub_16AE54();
    sub_93EF4();
    if ((v1 & 1) == 0)
    {
      if (sub_82B98(*(v2 + 121)) != 0x697461676976616ELL || v16 != 0xEE006574754D6E6FLL)
      {
        sub_16AE54();
        sub_93EF4();
        return sub_1080E4();
      }

LABEL_18:
    }
  }

  return sub_1080E4();
}

BOOL sub_100CA8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1697C4();
    sub_10AEC(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_100D74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_100E24()
{
  sub_10C3C4();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = v0;
      }

      else
      {
        v4 = v1;
      }

      if (v2 >= v3)
      {
        v5 = v1;
      }

      else
      {
        v5 = v0;
      }

      v6 = 1 << *(v4 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(v4 + 56);
      v9 = (v6 + 63) >> 6;
      sub_D434();
      v36 = v10;

      v11 = 0;
      while (v8)
      {
        v12 = v8;
LABEL_19:
        v8 = (v12 - 1) & v12;
        if (*(v5 + 16))
        {
          v14 = *(*(v4 + 48) + (__clz(__rbit64(v12)) | (v11 << 6)));
          v15 = *(v5 + 40);
          sub_16AF14();
          sub_81C68(v14);
          sub_10BF98();

          v16 = sub_16AF54() & ~(-1 << *(v5 + 32));
          if ((*(v5 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = 0xEE0072656E6F6974;
            v18 = 0xEE0072656E6F6974;
            v19 = 0x69646E6F43726961;
            v20 = 0x69646E6F43726961;
            switch(*(*(v5 + 48) + v16))
            {
              case 1:
                v20 = sub_10BC8C();
                goto LABEL_46;
              case 2:
                v22 = 1768191329;
                goto LABEL_40;
              case 3:
                v20 = sub_10BC6C();
                break;
              case 4:
                v20 = sub_10C1A4();
                break;
              case 5:
                v20 = sub_10BC4C();
LABEL_46:
                v18 = 0xEE0072656E6F6974;
                break;
              case 6:
                v20 = sub_10BF20();
                break;
              case 7:
                v20 = sub_10C194();
                break;
              case 8:
                v18 = 0xE500000000000000;
                v20 = sub_93F0C();
                break;
              case 9:
                v20 = sub_10BCD8();
                goto LABEL_43;
              case 0xA:
                v24 = 1684104552;
                goto LABEL_61;
              case 0xB:
                v20 = sub_10C104() | 0x646F0000u;
                break;
              case 0xC:
                v20 = sub_10C104() | 0x6E720000u;
                break;
              case 0xD:
                v20 = sub_10BC2C();
                goto LABEL_49;
              case 0xE:
                v20 = sub_10BF34();
                break;
              case 0xF:
                v20 = sub_10BD80();
                break;
              case 0x10:
                v21 = sub_10BCF4();
                v20 = sub_10C1D4(v21);
                goto LABEL_43;
              case 0x11:
                v23 = sub_10BCF4();
                v20 = sub_10C164(v23);
LABEL_43:
                v18 = 0xEC0072656E6F6974;
                break;
              case 0x12:
                v20 = sub_10BE70();
                goto LABEL_62;
              case 0x13:
                v20 = sub_10BD98();
                break;
              case 0x14:
                v20 = sub_10C1B4();
                break;
              case 0x15:
                v20 = sub_10C1C4();
                break;
              case 0x16:
                v20 = sub_10BE20();
                goto LABEL_59;
              case 0x17:
                v20 = sub_10BE0C();
LABEL_59:
                v18 = 0xEA00000000007265;
                break;
              case 0x18:
                v20 = sub_10BF48();
                break;
              case 0x19:
                v20 = sub_10BCBC();
                goto LABEL_41;
              case 0x1A:
                v20 = 0xD000000000000013;
                v18 = v36;
                break;
              case 0x1B:
                v20 = sub_10BD68();
                break;
              case 0x1C:
                v24 = 1818845556;
LABEL_61:
                v20 = v24 | 0x6867694C00000000;
LABEL_62:
                v18 = 0xE900000000000074;
                break;
              case 0x1D:
                v20 = sub_10BE48();
                break;
              case 0x1E:
                v20 = sub_10BE5C();
                break;
              case 0x1F:
                v22 = 1769171318;
LABEL_40:
                v20 = sub_10BE94(v22);
LABEL_41:
                v18 = 0xEE00006C6E6F6974;
LABEL_49:
                v18 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x20:
                sub_10BE34();
                sub_10C0DC();
                v18 = v25 - 1540;
                break;
              case 0x21:
                v20 = sub_10BBC0();
                break;
              case 0x22:
                v20 = sub_10BEF8();
                break;
              case 0x23:
                v20 = sub_10BF0C();
                break;
              default:
                break;
            }

            switch(v14)
            {
              case 1:
                sub_10BDF8();
                v26 = 0x746867694C73;
                goto LABEL_88;
              case 2:
              case 31:
                sub_10C388();
                goto LABEL_83;
              case 3:
                sub_10BFD0();
                v17 = 0xEB00000000656372;
                break;
              case 4:
                v17 = 0xE300000000000000;
                v19 = 7496035;
                break;
              case 5:
                sub_10BF84();
                v26 = 0x6C6F72746E6FLL;
LABEL_88:
                v17 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v17 = 0xE600000000000000;
                sub_10C1F4();
                break;
              case 7:
                v17 = 0xE300000000000000;
                v19 = 7233894;
                break;
              case 8:
                v17 = 0xE500000000000000;
                sub_EACE8();
                break;
              case 9:
                sub_10C020();
                v28 = 1937008743;
                goto LABEL_85;
              case 10:
                v33 = 1684104552;
                goto LABEL_103;
              case 11:
                sub_10C39C();
                v19 = v29 | 0x646F0000u;
                break;
              case 12:
                sub_10C39C();
                v19 = v30 | 0x6E720000u;
                break;
              case 13:
                sub_10BF70();
                v31 = 0x746867694CLL;
                goto LABEL_91;
              case 14:
                v17 = 0xE600000000000000;
                sub_10C224();
                break;
              case 15:
                v17 = 0xE700000000000000;
                sub_10BFBC();
                break;
              case 16:
                sub_10BD24();
                v19 = v27 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
                v28 = 1701536114;
                goto LABEL_85;
              case 17:
                sub_10BD24();
                v19 = v32 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
                v28 = 1952999273;
LABEL_85:
                v17 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 18:
                sub_10BF5C();
                goto LABEL_104;
              case 19:
                v17 = 0xE700000000000000;
                sub_10BEA8();
                break;
              case 20:
                v17 = 0xE400000000000000;
                v19 = 1918985586;
                break;
              case 21:
                v17 = 0xE400000000000000;
                v19 = 1952540019;
                break;
              case 22:
                sub_10BED0();
                goto LABEL_101;
              case 23:
                sub_10BEBC();
LABEL_101:
                v17 = 0xEA00000000007265;
                break;
              case 24:
                v17 = 0xE600000000000000;
                sub_10C214();
                break;
              case 25:
                sub_10C00C();
                v17 = 1701144663;
LABEL_83:
                v31 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_91:
                v17 = v31 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 26:
                v19 = 0xD000000000000013;
                v17 = v36;
                break;
              case 27:
                v17 = 0xE700000000000000;
                sub_10C034();
                break;
              case 28:
                v33 = 1818845556;
LABEL_103:
                v19 = v33 | 0x6867694C00000000;
LABEL_104:
                v17 = 0xE900000000000074;
                break;
              case 29:
                v17 = 0xE500000000000000;
                sub_10C184();
                break;
              case 30:
                v17 = 0xE500000000000000;
                sub_10C1E4();
                break;
              case 32:
                sub_10BEE4();
                sub_10C0DC();
                v17 = v34 - 1540;
                break;
              case 33:
                v17 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 34:
                v17 = 0xE600000000000000;
                sub_10C154();
                break;
              case 35:
                v17 = 0xE600000000000000;
                sub_10C144();
                break;
              default:
                break;
            }

            if (v20 == v19 && v18 == v17)
            {
            }

            else
            {
              sub_10C0E8();
              sub_10C428();
            }

            goto LABEL_115;
          }
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          JUMPOUT(0x10140CLL);
        }

        if (v13 >= v9)
        {
          break;
        }

        v12 = *(v4 + 56 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_115:
  sub_10C3A8();
}

uint64_t sub_10152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_169724();
  v9 = sub_9F48(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = sub_1697C4();
    sub_10AEC(v17);
    v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v35 = v11 + 16;
    v22 = *(v21 + 72);
    v34 = a4;
    v31[2] = v20;
    v32 = v16;
    v31[1] = v22;
    while (2)
    {
      v33 = v18 + 1;
      result = sub_169764();
      v24 = result;
      v25 = 0;
      v36 = *(result + 16);
      while (v36 != v25)
      {
        if (v25 >= *(v24 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = *(v11 + 80);
        sub_10BDEC();
        (*(v11 + 16))(v15, v24 + v27 + *(v11 + 72) * v25, v8);
        if (sub_169714() == a1 && v28 == a2)
        {

LABEL_16:

          a4 = v34;
          (*(v11 + 32))(v34, v15, v8);
          v30 = 0;
          return sub_5370(a4, v30, 1, v8);
        }

        sub_16AE54();
        sub_93EF4();
        if (a2)
        {
          goto LABEL_16;
        }

        result = (*(v11 + 8))(v15, v8);
        ++v25;
      }

      v30 = 1;
      v18 = v33;
      a4 = v34;
      if (v33 != v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 1;
  }

  return sub_5370(a4, v30, 1, v8);
}

char *sub_1017A4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_169724();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v40 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v31 - v9;
  v32 = *(a2 + 16);
  if (!v32)
  {
    return &_swiftEmptyArrayStorage;
  }

  v37 = v8;
  v11 = 0;
  v12 = 0;
  v13 = *(sub_1697C4() - 8);
  v31[2] = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v38 = v4 + 16;
  v39 = (v4 + 8);
  v35 = (v4 + 32);
  v31[1] = *(v13 + 72);
  v42 = &_swiftEmptyArrayStorage;
  v31[0] = v4;
  do
  {
    v14 = sub_169764();
    v15 = *(v14 + 16);
    if (v15)
    {
      v33 = v14;
      v34 = v11;
      v36 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v16 = v14 + v36;
      v17 = *(v4 + 72);
      v18 = *(v4 + 16);
      v19 = v37;
      do
      {
        v43 = v15;
        v18(v10, v16, v19);
        v44[0] = sub_169714();
        v44[1] = v20;
        __chkstk_darwin(v44[0]);
        v31[-2] = v44;
        v21 = v12;
        v22 = v18;
        v23 = v19;
        v24 = sub_100D74(sub_D010, &v31[-4], v41);

        if (v24)
        {
          v22(v40, v10, v23);
          v18 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1082E0(0, *(v42 + 2) + 1, 1, v42);
          }

          v12 = v21;
          v26 = *(v42 + 2);
          v25 = *(v42 + 3);
          if (v26 >= v25 >> 1)
          {
            v42 = sub_1082E0((v25 > 1), v26 + 1, 1, v42);
          }

          v27 = v37;
          (*v39)(v10, v37);
          v28 = v42;
          *(v42 + 2) = v26 + 1;
          v29 = &v28[v36 + v26 * v17];
          v19 = v27;
          (*v35)(v29, v40, v27);
        }

        else
        {
          (*v39)(v10, v23);
          v19 = v23;
          v18 = v22;
          v12 = v21;
        }

        v16 += v17;
        v15 = v43 - 1;
      }

      while (v43 != 1);

      v4 = v31[0];
      v11 = v34;
    }

    else
    {
    }

    ++v11;
  }

  while (v11 != v32);
  return v42;
}

char *sub_101B48(uint64_t a1)
{
  v2 = sub_169724();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v2);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1697C4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v49 = *(v11 + 56);
    v50 = v12;
    v48 = (v11 - 8);
    v52 = _swiftEmptyArrayStorage;
    while (1)
    {
      v14 = v2;
      v15 = v5;
      v16 = v11;
      (v50)(v9, v13, v5);
      v17 = sub_169764();
      v18 = *(v17 + 16);
      result = v52;
      v20 = *(v52 + 2);
      v21 = v20 + v18;
      if (__OFADD__(v20, v18))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v52;
      if (!result || v21 > *(v52 + 3) >> 1)
      {
        if (v20 <= v21)
        {
          v23 = v20 + v18;
        }

        else
        {
          v23 = v20;
        }

        result = sub_1082E0(result, v23, 1, v52);
        v22 = result;
      }

      v2 = v14;
      v24 = *(v17 + 16);
      v52 = v22;
      if (v24)
      {
        if ((*(v22 + 3) >> 1) - *(v22 + 2) < v18)
        {
          goto LABEL_27;
        }

        v25 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v26 = *(v51 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v27 = *(v52 + 2);
          v28 = __OFADD__(v27, v18);
          v29 = v27 + v18;
          if (v28)
          {
            goto LABEL_28;
          }

          *(v52 + 2) = v29;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_26;
        }
      }

      v5 = v15;
      (*v48)(v9, v15);
      v13 += v49;
      --v10;
      v11 = v16;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_19:
    v30 = *(v52 + 2);
    if (v30)
    {
      v31 = &v52[(*(v51 + 80) + 32) & ~*(v51 + 80)];
      v32 = *(v51 + 72);
      v49 = *(v51 + 16);
      v50 = v32;
      v51 += 16;
      v33 = (v51 - 8);
      v34 = 0xE100000000000000;
      v35 = 91;
      v36 = v47;
      do
      {
        v49(v36, v31, v2);
        v37 = sub_169704();
        if (v38)
        {
          v39 = v37;
          v40 = v38;
          v53 = sub_169714();
          v54 = v41;
          v55._countAndFlagsBits = 8250;
          v55._object = 0xE200000000000000;
          sub_16A744(v55);
          v56._countAndFlagsBits = v39;
          v56._object = v40;
          sub_16A744(v56);

          v57._countAndFlagsBits = 8236;
          v57._object = 0xE200000000000000;
          sub_16A744(v57);
          v42 = v53;
          v43 = v54;
          v53 = v35;
          v54 = v34;

          v58._countAndFlagsBits = v42;
          v58._object = v43;
          sub_16A744(v58);

          v35 = v53;
          v34 = v54;
        }

        (*v33)(v36, v2);
        v31 = &v50[v31];
        --v30;
      }

      while (v30);
    }

    sub_12B3C4(2);
    v44 = sub_16A6D4();
    v46 = v45;

    v53 = v44;
    v54 = v46;

    v59._countAndFlagsBits = 93;
    v59._object = 0xE100000000000000;
    sub_16A744(v59);

    return v53;
  }

  return result;
}

uint64_t sub_101F70(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = *(sub_1697C4() - 8);
    v5 = v2 + 1;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2;
    v7 = sub_169764();
    sub_102040(v7);

    v2 = v5;
  }

  return result;
}

void sub_102040(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = *(sub_169724() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2;
    if (sub_169714() == 0xD000000000000019 && 0x800000000017EE60 == v6)
    {
    }

    else
    {
      v8 = sub_16AE54();

      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_169704();
    if (v9)
    {
      if (sub_82044() != 36)
      {
        sub_8F870();
      }
    }

LABEL_13:
    ++v2;
  }
}

uint64_t sub_102188()
{
  result = *(v1 + 56);
  if (result == 6)
  {
    sub_10C110();
    sub_169CF4();
    LODWORD(result) = sub_81248();
    if (result == 6)
    {
      result = 5;
    }

    else
    {
      result = result;
    }

    *(v0 + 56) = result;
  }

  return result;
}

uint64_t sub_10226C()
{
  result = *(v0 + 80);
  if (result == 4)
  {
    result = sub_102298(v0);
    *(v0 + 80) = result;
  }

  return result;
}

uint64_t sub_102298(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_1416D0();
  if (!v7)
  {
    return 3;
  }

  sub_10152C(0xD000000000000010, 0x800000000017EE80, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 3;
  }

  sub_169704();
  v11 = v10;
  (*(*(v8 - 8) + 8))(v5, v8);
  v9 = 3;
  if (v11)
  {
    v12 = sub_824A4();
    if (v12 == 4)
    {
      return 3;
    }

    else
    {
      return v12;
    }
  }

  return v9;
}

uint64_t sub_1023F8()
{
  result = *(v1 + 81);
  if (result == 21)
  {
    sub_10C110();
    sub_169CE4();
    LODWORD(result) = sub_81354();
    if (result == 21)
    {
      result = 20;
    }

    else
    {
      result = result;
    }

    *(v0 + 81) = result;
  }

  return result;
}

uint64_t sub_102440()
{
  v1 = *(v0 + 82);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_102474();
    *(v0 + 82) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_102474()
{
  v0 = *(sub_104B2C() + 2);

  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_103A44();
    sub_82168(v2);
    if (v4 == 0x6E776F6E6B6E75 && v3 == 0xE700000000000000)
    {

      v1 = 0;
    }

    else
    {
      v6 = sub_16AE54();

      v1 = v6 ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t sub_102510()
{
  v1 = *(v0 + 83);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_102544(v0);
    *(v0 + 83) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_102544(uint64_t a1)
{
  v2 = sub_103D74();
  if (sub_83C1C(v2) == 0x656D756C6F76 && v3 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_16AE54();
  }

  if (!sub_104098())
  {

LABEL_14:
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v6 = sub_16AE54();

  if (v6)
  {
    goto LABEL_14;
  }

  if (*(a1 + 129) && *(a1 + 129) == 1)
  {

    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v7 = 1;
    return v7 & 1;
  }

  v8 = sub_16AE54();

  if (v5 & v8)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_104224())
  {
    v7 = sub_16AE54();
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_102714()
{
  v1 = *(v0 + 84);
  if (v1 == 2)
  {
    v2 = sub_10A224(&off_1D0C18);
    v3 = sub_103570();
    sub_96FC(v3, v2);
    sub_48350();
    *(v0 + 84) = 0;
  }

  return v1 & 1;
}

uint64_t sub_102770()
{
  v1 = *(v0 + 85);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_1027A4(v0);
    *(v0 + 85) = v1 & 1;
  }

  return v1 & 1;
}

BOOL sub_1027A4(uint64_t a1)
{
  v2 = sub_1697F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_5758(&qword_1ED158, &qword_178248);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18[-v9];
  v11 = *(a1 + 16);
  sub_1416D0();
  if (v12)
  {
    v13 = v12;
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    *(inited + 32) = 0x74694B656D6F48;
    *(inited + 40) = 0xE700000000000000;
    (*(v3 + 104))(v6, enum case for UsoIdentifier.NluComponent.spanMatchSiriVocab(_:), v2);
    sub_1697E4();
    (*(v3 + 8))(v6, v2);
    v15 = sub_1697D4();
    __chkstk_darwin(v15);
    *&v18[-16] = v10;
    *&v18[-8] = inited;
    v16 = sub_100CA8(sub_10BB24, &v18[-32], v13);
    swift_setDeallocating();
    sub_EFFB0();

    sub_109A0(v10, &qword_1ED158, &qword_178248);
  }

  else
  {
    return 0;
  }

  return v16;
}

BOOL sub_1029E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v73 = a2;
  v72 = sub_5758(&qword_1ED160, &unk_178250);
  v4 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = v66 - v5;
  v6 = sub_169DB4();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5758(&qword_1E9B28, &unk_173710);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v66 - v12;
  v80 = sub_169DD4();
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v80);
  v77 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5758(&qword_1ED158, &qword_178248);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v70 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v71 = v66 - v21;
  __chkstk_darwin(v20);
  v23 = v66 - v22;
  v24 = sub_1697F4();
  v82 = *(v24 - 8);
  v25 = *(v82 + 64);
  v26 = __chkstk_darwin(v24);
  v68 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = v66 - v28;
  v29 = sub_5758(&qword_1ED168, &qword_178260);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = v66 - v31;
  v33 = sub_169754();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_169784();
  if (sub_9E2C(v32, 1, v33) != 1)
  {
    (*(v34 + 32))(v37, v32, v33);
    sub_169744();
    sub_1697D4();
    if (sub_9E2C(v23, 1, v24) == 1)
    {
      (*(v34 + 8))(v37, v33);
      v38 = &qword_1ED158;
      v39 = &qword_178248;
      v40 = v23;
      goto LABEL_7;
    }

    v67 = v34;
    v42 = v81;
    v41 = v82;
    v66[0] = *(v82 + 32);
    v66[1] = v82 + 32;
    (v66[0])(v81, v23, v24);
    sub_1697B4();
    v43 = v80;
    if (sub_9E2C(v13, 1, v80) == 1)
    {
      (*(v41 + 8))(v42, v24);
      (*(v67 + 8))(v37, v33);
      v38 = &qword_1E9B28;
      v39 = &unk_173710;
      v40 = v13;
      goto LABEL_7;
    }

    v46 = v77;
    (*(v78 + 32))(v77, v13, v43);
    sub_169D84();
    v47 = sub_169D64();
    v48 = v76;
    v49 = *(v75 + 8);
    v49(v9, v76);
    if ((v47 & 1) == 0)
    {
      sub_169D74();
      v59 = sub_169D64();
      v49(v9, v48);
      if (v59 & 1) == 0 || (sub_169D94(), v60 = sub_169D64(), v49(v9, v48), (v60))
      {
        (*(v78 + 8))(v46, v80);
        (*(v82 + 8))(v81, v24);
        (*(v67 + 8))(v37, v33);
        return 0;
      }
    }

    v50 = v71;
    (*(v82 + 16))(v71, v81, v24);
    sub_5370(v50, 0, 1, v24);
    v51 = *(v72 + 48);
    v52 = v74;
    sub_D4DC4(v50, v74, &qword_1ED158, &qword_178248);
    sub_D4DC4(v73, v52 + v51, &qword_1ED158, &qword_178248);
    v53 = sub_9E2C(v52, 1, v24);
    v54 = v67;
    if (v53 == 1)
    {
      sub_109A0(v50, &qword_1ED158, &qword_178248);
      v55 = sub_9E2C(v52 + v51, 1, v24);
      v56 = v77;
      v57 = v82;
      if (v55 == 1)
      {
        v58 = sub_109A0(v52, &qword_1ED158, &qword_178248);
LABEL_21:
        __chkstk_darwin(v58);
        v66[-2] = v79;
        v44 = sub_100D74(sub_10BB44, &v66[-4], v69);
        goto LABEL_23;
      }
    }

    else
    {
      v61 = v70;
      sub_D4DC4(v52, v70, &qword_1ED158, &qword_178248);
      if (sub_9E2C(v52 + v51, 1, v24) != 1)
      {
        v62 = v52 + v51;
        v63 = v68;
        (v66[0])(v68, v62, v24);
        sub_10BB64();
        LODWORD(v76) = sub_16A634();
        v64 = v82;
        v65 = *(v82 + 8);
        v65(v63, v24);
        sub_109A0(v50, &qword_1ED158, &qword_178248);
        v65(v70, v24);
        v57 = v64;
        v58 = sub_109A0(v74, &qword_1ED158, &qword_178248);
        v56 = v77;
        if ((v76 & 1) == 0)
        {
          v44 = 0;
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      sub_109A0(v50, &qword_1ED158, &qword_178248);
      v57 = v82;
      (*(v82 + 8))(v61, v24);
      v56 = v77;
    }

    sub_109A0(v52, &qword_1ED160, &unk_178250);
    v44 = 0;
LABEL_23:
    (*(v78 + 8))(v56, v80);
    (*(v57 + 8))(v81, v24);
    (*(v54 + 8))(v37, v33);
    return v44;
  }

  v38 = &qword_1ED168;
  v39 = &qword_178260;
  v40 = v32;
LABEL_7:
  sub_109A0(v40, v38, v39);
  return 0;
}

uint64_t sub_10331C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_169774();
  if (v4)
  {
    if (v1 == v3 && v4 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_16AE54();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1033A0()
{
  v2 = *(v1 + 86);
  if (v2 == 2)
  {
    sub_10C110();
    sub_13FBBC();
    v4 = v3;
    LOBYTE(v2) = v3 != 0;
    if (v3)
    {
    }

    *(v0 + 86) = v4 != 0;
  }

  return v2 & 1;
}

void sub_10340C()
{
  sub_10C274();
  v1 = v0;
  v2 = v0[11];
  if (v0[12] == 1)
  {
    v3 = v0[2];
    sub_13FBBC();
    if (v6)
    {
      v7 = v4;
      v8 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v1[11];
    v10 = v1[12];
    v1[11] = v7;
    v1[12] = v8;

    sub_10C234();
  }

  v11 = sub_37740();
  sub_10BB10(v11, v12);
  sub_10C288();
}

void sub_10349C()
{
  sub_10C274();
  v1 = v0;
  v2 = v0[13];
  if (v0[14] == 1)
  {
    v3 = v0[2];
    sub_141EAC();
    v4 = v1[13];
    v5 = v1[14];
    v1[13] = v6;
    v1[14] = v7;

    sub_10C234();
  }

  v8 = sub_37740();
  sub_10BB10(v8, v9);
  sub_10C288();
}

uint64_t sub_103514()
{
  v2 = *(v1 + 120);
  if (v2 == 2)
  {
    sub_10C110();
    sub_1422D8();
    v4 = sub_11B48C(v3);

    LOBYTE(v2) = v4 != 0;
    *(v0 + 120) = v4 != 0;
  }

  return v2 & 1;
}

uint64_t sub_103570()
{
  v1 = v0;
  v2 = *(v0 + 121);
  if (v2 == 14)
  {
    v3 = *(v1 + 16);
    sub_142688();
    v2 = sub_1035E4(v4, 0xD000000000000018, 0x800000000017EE00);

    *(v1 + 121) = v2;
  }

  return v2;
}

uint64_t sub_1035E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = sub_169724();
  v6 = sub_9F48(v51);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_A128();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v45 = &v41[-v16];
  __chkstk_darwin(v15);
  v18 = &v41[-v17];
  if (!a1)
  {
    return 6;
  }

  v48 = *(a1 + 16);
  if (!v48)
  {
    return 6;
  }

  v19 = sub_1697C4();
  sub_10AEC(v19);
  v47 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v50 = v8 + 16;
  v22 = (v8 + 8);
  v43 = (v8 + 32);
  v46 = *(v23 + 72);
  v42 = 14;
  v44 = v18;
  while (2)
  {
    v49 = v20 + 1;
    result = sub_169764();
    v25 = result;
    v26 = 0;
    v27 = *(result + 16);
    v28 = v51;
    while (1)
    {
      if (v27 == v26)
      {

        goto LABEL_19;
      }

      if (v26 >= *(v25 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = *(v8 + 80);
      sub_10BDEC();
      (*(v8 + 16))(v13, v25 + v30 + *(v8 + 72) * v26, v28);
      if (sub_169714() == a2 && v31 == a3)
      {

        goto LABEL_16;
      }

      v33 = a2;
      v34 = a3;
      v35 = sub_16AE54();

      if (v35)
      {
        break;
      }

      v28 = v51;
      result = (*v22)(v13, v51);
      ++v26;
      a3 = v34;
      a2 = v33;
    }

    a3 = v34;
    a2 = v33;
LABEL_16:
    v36 = v51;
    v37 = *v43;
    v38 = v45;
    (*v43)(v45, v13, v51);
    v39 = v44;
    v37(v44, v38, v36);
    sub_169704();
    if (v40)
    {
      v42 = sub_82B58();
    }

    (*v22)(v39, v36);
LABEL_19:
    v20 = v49;
    if (v49 != v48)
    {
      continue;
    }

    break;
  }

  result = v42;
  if (v42 == 14)
  {
    return 6;
  }

  return result;
}

uint64_t sub_103904()
{
  v2 = *(v1 + 122);
  if (v2 == 2)
  {
    sub_10C110();
    sub_142E48();
    *(v0 + 122) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_103940()
{
  v1 = *(v0 + 123);
  if (v1 == 2)
  {
    v2 = sub_104B2C();
    sub_96E4(4, v2);
    sub_48350();
    *(v0 + 123) = 0;
  }

  return v1 & 1;
}

uint64_t sub_103994()
{
  v1 = *(v0 + 124);
  if (v1 == 2)
  {
    if (sub_103940())
    {
      v2 = *(sub_104B2C() + 2);

      LOBYTE(v1) = v2 == 1;
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    *(v0 + 124) = v1;
  }

  return v1 & 1;
}

uint64_t sub_1039E8()
{
  v1 = *(v0 + 125);
  if (v1 == 2)
  {
    v2 = sub_10934C(&off_1D1590);
    v3 = sub_103A44();
    sub_96CC(v3, v2);
    sub_48350();
    *(v0 + 125) = 0;
  }

  return v1 & 1;
}

uint64_t sub_103A44()
{
  result = *(v0 + 126);
  if (result == 29)
  {
    result = sub_103A70(v0);
    *(v0 + 126) = result;
  }

  return result;
}

uint64_t sub_103A70(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = *(a1 + 16);
  sub_142688();
  if (v7)
  {
    sub_10152C(0xD000000000000017, 0x800000000017EDE0, v7, v5);

    v8 = sub_169724();
    if (sub_9E2C(v5, 1, v8) == 1)
    {
      sub_109A0(v5, &qword_1ED140, &qword_178228);
    }

    else
    {
      sub_169704();
      v10 = v9;
      (*(*(v8 - 8) + 8))(v5, v8);
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  sub_103BEC();
  if (!v11)
  {
    return 17;
  }

LABEL_6:
  LODWORD(result) = sub_82120();
  if (result == 29)
  {
    return 17;
  }

  else
  {
    return result;
  }
}

uint64_t sub_103BEC()
{
  v1 = sub_5758(&qword_1ED140, &qword_178228);
  v2 = sub_D414(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = *(v0 + 16);
  sub_142688();
  if (!v8)
  {
    return 0;
  }

  sub_10152C(0xD000000000000010, 0x800000000018E430, v8, v6);

  v9 = sub_169724();
  if (sub_9E2C(v6, 1, v9) == 1)
  {
    sub_109A0(v6, &qword_1ED140, &qword_178228);
    return 0;
  }

  v10 = sub_169704();
  v12 = v11;
  (*(*(v9 - 8) + 8))(v6, v9);
  if (!v12)
  {
    return 0;
  }

  v13 = 0x656D756C6F76;
  if (v10 != 0x656D756C6F76 || v12 != 0xE600000000000000)
  {
    if ((sub_16AE54() & 1) == 0)
    {

      return 0;
    }

    return v10;
  }

  return v13;
}

uint64_t sub_103D74()
{
  result = *(v0 + 127);
  if (result == 6)
  {
    result = sub_103DA0(v0);
    *(v0 + 127) = result;
  }

  return result;
}

uint64_t sub_103DA0(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_142688();
  if (!v7)
  {
    return 5;
  }

  sub_10152C(0xD000000000000010, 0x800000000018E430, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 5;
  }

  sub_169704();
  v11 = v10;
  (*(*(v8 - 8) + 8))(v5, v8);
  v9 = 5;
  if (v11)
  {
    v12 = sub_83BDC();
    if (v12 == 6)
    {
      return 5;
    }

    else
    {
      return v12;
    }
  }

  return v9;
}

uint64_t sub_103F00()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_103F34(v0);
    *(v0 + 128) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_103F34(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_142688();
  if (!v7)
  {
    goto LABEL_6;
  }

  sub_10152C(0xD000000000000011, 0x800000000018E7D0, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
LABEL_6:
    v12 = 1;
    return v12 & 1;
  }

  sub_169704();
  v10 = v9;
  (*(*(v8 - 8) + 8))(v5, v8);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_83D50();
  v12 = (v11 == 2) | v11;
  return v12 & 1;
}

uint64_t sub_104098()
{
  result = *(v0 + 129);
  if (result == 3)
  {
    result = sub_1040C4(v0);
    *(v0 + 129) = result;
  }

  return result;
}

uint64_t sub_1040C4(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_1416D0();
  if (!v7)
  {
    return 2;
  }

  sub_10152C(0xD000000000000016, 0x800000000018E7B0, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 2;
  }

  sub_169704();
  v11 = v10;
  (*(*(v8 - 8) + 8))(v5, v8);
  v9 = 2;
  if (v11)
  {
    v12 = sub_83CD0();
    if (v12 == 3)
    {
      return 2;
    }

    else
    {
      return v12;
    }
  }

  return v9;
}

uint64_t sub_104224()
{
  v1 = *(v0 + 130);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_104258(v0);
    *(v0 + 130) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_104258(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_142688();
  if (!v7)
  {
    goto LABEL_6;
  }

  sub_10152C(0x746553656E6F6870, 0xEC000000676E6974, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
LABEL_6:
    v12 = 1;
    return v12 & 1;
  }

  sub_169704();
  v10 = v9;
  (*(*(v8 - 8) + 8))(v5, v8);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_83D8C();
  v12 = (v11 == 2) | v11;
  return v12 & 1;
}

uint64_t sub_1043C0()
{
  result = *(v0 + 131);
  if (result == 3)
  {
    result = sub_1043EC(v0);
    *(v0 + 131) = result;
  }

  return result;
}

uint64_t sub_1043EC(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = *(a1 + 16);
  sub_142688();
  if (!v7)
  {
    return 2;
  }

  sub_10152C(0xD000000000000017, 0x800000000017EDC0, v7, v5);

  v8 = sub_169724();
  if (sub_9E2C(v5, 1, v8) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 2;
  }

  sub_169704();
  v11 = v10;
  (*(*(v8 - 8) + 8))(v5, v8);
  v9 = 2;
  if (v11)
  {
    v12 = sub_82D24();
    if (v12 == 3)
    {
      return 2;
    }

    else
    {
      return v12;
    }
  }

  return v9;
}

uint64_t sub_10454C()
{
  v2 = *(v0 + 132);
  if (v2 == 2)
  {
    sub_109B8C();
    sub_104B2C();
    sub_10C3F8();
    sub_9409C();

    LOBYTE(v2) = v1 ^ 1;
    *(v0 + 132) = (v1 ^ 1) & 1;
  }

  return v2 & 1;
}

uint64_t sub_1045B0()
{
  v1 = *(v0 + 133);
  if (v1 == 2)
  {
    v2 = sub_104B2C();
    sub_96E4(29, v2);
    sub_48350();
    *(v0 + 133) = 0;
  }

  return v1 & 1;
}

uint64_t sub_104604()
{
  v1 = *(v0 + 134);
  if (v1 == 2)
  {
    LOBYTE(v1) = 115;
    v2 = sub_103A44();
    sub_82168(v2);
    sub_93B94();
    v4 = v4 && v3 == 0xED00006572757373;
    if (v4)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      sub_93AB0();
      sub_93DFC();
    }

    *(v0 + 134) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_10468C()
{
  v2 = *(v0 + 135);
  if (v2 == 2)
  {
    sub_109B8C();
    sub_104B2C();
    sub_10C3F8();
    sub_9409C();

    LOBYTE(v2) = v1 ^ 1;
    *(v0 + 135) = (v1 ^ 1) & 1;
  }

  return v2 & 1;
}

uint64_t sub_1046F0()
{
  v2 = *(v0 + 136);
  if (v2 == 2)
  {
    sub_109B8C();
    sub_104B2C();
    sub_10C3F8();
    sub_9409C();

    LOBYTE(v2) = v1 ^ 1;
    *(v0 + 136) = (v1 ^ 1) & 1;
  }

  return v2 & 1;
}

uint64_t sub_104754()
{
  v1 = *(v0 + 137);
  if (v1 == 2)
  {
    sub_104788(v0);
    *(v0 + 137) = v1 & 1;
  }

  return v1 & 1;
}

void sub_104788(uint64_t a1)
{
  v2 = sub_169724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1697C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  sub_1416D0();
  if (!v13)
  {
    return;
  }

  v30 = *(v13 + 16);
  if (!v30)
  {
LABEL_25:

    return;
  }

  v14 = 0;
  v36 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v34 = v7;
  v35 = v8 + 16;
  v38 = v3 + 16;
  v15 = (v3 + 8);
  v31 = (v8 + 8);
  v32 = v13;
  v33 = v11;
  v29 = v8;
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_30;
    }

    v16 = *(v8 + 72);
    v37 = v14;
    (*(v8 + 16))(v11, v36 + v16 * v14, v7);
    v17 = sub_169764();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      break;
    }

LABEL_24:
    v14 = v37 + 1;

    v11 = v33;
    v7 = v34;
    (*v31)(v33, v34);
    v8 = v29;
    v13 = v32;
    if (v14 == v30)
    {
      goto LABEL_25;
    }
  }

  v20 = 0;
  v21 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (v20 < *(v18 + 16))
  {
    (*(v3 + 16))(v6, v21 + *(v3 + 72) * v20, v2);
    if (sub_169714() == 0x656D614E726163 && v22 == 0xE700000000000000)
    {
    }

    else
    {
      v24 = sub_16AE54();

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v25 = sub_169704();
    if (!v26)
    {
LABEL_22:
      (*v15)(v6, v2);
      goto LABEL_23;
    }

    if (v25 == 0x646E617242726163 && v26 == 0xE800000000000000)
    {

      (*v15)(v6, v2);
LABEL_27:

      (*v31)(v33, v34);
      return;
    }

    v28 = sub_16AE54();

    (*v15)(v6, v2);
    if (v28)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v19 == ++v20)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void *sub_104B2C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_104B8C(v0);
    v2 = *(v0 + 144);
    *(v0 + 144) = v1;
  }

  return v1;
}

void *sub_104B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1416D0();
  if (v2)
  {
    sub_101F70(v2);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_104BF4()
{
  v1 = *(v0 + 152);
  if (v1 == 2)
  {
    sub_104C28(v0);
    *(v0 + 152) = v1 & 1;
  }

  return v1 & 1;
}

void sub_104C28(uint64_t a1)
{
  v2 = sub_169724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1697C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  sub_143214();
  if (!v13)
  {
    return;
  }

  v31 = *(v13 + 16);
  if (!v31)
  {
LABEL_25:

    return;
  }

  v14 = 0;
  v37 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v35 = v7;
  v36 = v8 + 16;
  v15 = (v3 + 8);
  v39 = 0x80000000001863C0;
  v40 = v3 + 16;
  v32 = (v8 + 8);
  v33 = v13;
  v34 = v11;
  v30 = v8;
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_30;
    }

    v16 = *(v8 + 72);
    v38 = v14;
    (*(v8 + 16))(v11, v37 + v16 * v14, v7);
    v17 = sub_169764();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      break;
    }

LABEL_24:
    v14 = v38 + 1;

    v11 = v34;
    v7 = v35;
    (*v32)(v34, v35);
    v8 = v30;
    v13 = v33;
    if (v14 == v31)
    {
      goto LABEL_25;
    }
  }

  v20 = 0;
  v21 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (v20 < *(v18 + 16))
  {
    (*(v3 + 16))(v6, v21 + *(v3 + 72) * v20, v2);
    if (sub_169714() == 0x656D614E707061 && v22 == 0xE700000000000000)
    {
    }

    else
    {
      v24 = sub_16AE54();

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v25 = sub_169704();
    if (!v26)
    {
LABEL_22:
      (*v15)(v6, v2);
      goto LABEL_23;
    }

    if (v25 == 0xD000000000000016 && v26 == v39)
    {

      (*v15)(v6, v2);
LABEL_27:

      (*v32)(v34, v35);
      return;
    }

    v28 = sub_16AE54();

    (*v15)(v6, v2);
    if (v28)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v19 == ++v20)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_104FD4()
{
  result = *(v0 + 153);
  if (result == 13)
  {
    result = sub_105000(v0);
    *(v0 + 153) = result;
  }

  return result;
}

uint64_t sub_105000(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (sub_103904())
  {
    return 0;
  }

  v7 = *(a1 + 16);
  sub_1416D0();
  if (!v8)
  {
    return 12;
  }

  sub_10152C(0x5474616553726163, 0xEB00000000657079, v8, v5);

  v9 = sub_169724();
  if (sub_9E2C(v5, 1, v9) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 12;
  }

  sub_169704();
  v11 = v10;
  (*(*(v9 - 8) + 8))(v5, v9);
  v6 = 12;
  if (v11)
  {
    v12 = sub_82A84();
    if (v12 == 13)
    {
      return 12;
    }

    else
    {
      return v12;
    }
  }

  return v6;
}

uint64_t sub_105174()
{
  v1 = *(v0 + 154);
  if (v1 == 2)
  {
    v2 = sub_103A44();
    sub_82168(v2);
    sub_10C060();
    if (v5 == 0xD000000000000011 && v4 == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_10C29C();
    }

    *(v0 + 154) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1051FC()
{
  v1 = *(v0 + 155);
  if (v1 == 2)
  {
    if (sub_105294() == 2)
    {
      LOBYTE(v1) = 108;
      v2 = sub_103A44();
      sub_82168(v2);
      sub_93B94();
      v4 = v4 && v3 == 0xEE006E6F6974616CLL;
      if (!v4)
      {
        sub_93AB0();
        sub_93DFC();
LABEL_10:
        *(v0 + 155) = v1 & 1;
        return v1 & 1;
      }
    }

    LOBYTE(v1) = 1;
    goto LABEL_10;
  }

  return v1 & 1;
}

uint64_t sub_105294()
{
  result = *(v0 + 156);
  if (result == 3)
  {
    result = sub_1052C0(v0);
    *(v0 + 156) = result;
  }

  return result;
}

uint64_t sub_1052C0(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_169724();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  sub_142688();
  if (!v12)
  {
    return 2;
  }

  sub_10152C(0xD000000000000015, 0x800000000017EDA0, v12, v5);

  if (sub_9E2C(v5, 1, v6) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 2;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_169704();
  if (!v13)
  {
    (*(v7 + 8))(v10, v6);
    return 2;
  }

  v14 = sub_82DBC();
  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t sub_10549C()
{
  v1 = *(v0 + 157);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_105AC0() != 5;
    *(v0 + 157) = v1;
  }

  return v1 & 1;
}

void *sub_1054D4()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_105534(v0);
    v2 = *(v0 + 160);
    *(v0 + 160) = v1;
  }

  return v1;
}

void *sub_105534(uint64_t a1)
{
  v2 = sub_169724();
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  sub_142688();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v51 = v7;
    v53 = _swiftEmptyArrayStorage;
    sub_146878(0, 13, 0);
    v9 = 0;
    v10 = v53;
    v11 = 0x800000000017EE80;
    v12 = 0x800000000017EE60;
    v13 = 0x800000000017EE40;
    v14 = 0x800000000017EE20;
    v15 = 0x800000000017EE00;
    v16 = 0x800000000017EDE0;
    v17 = 0x800000000017EDC0;
    v18 = 0x800000000017EDA0;
    v19 = 0xD000000000000015;
    do
    {
      v20 = 0xE700000000000000;
      v21 = 0x656D614E726163;
      switch(*(&off_1D24D8 + v9 + 32))
      {
        case 1:
          v21 = 0xD000000000000017;
          v20 = v17;
          break;
        case 2:
          v21 = 0xD000000000000017;
          v20 = v16;
          break;
        case 3:
          v21 = 0xD000000000000018;
          v20 = v15;
          break;
        case 4:
          v21 = 0xD000000000000018;
          v20 = v14;
          break;
        case 5:
          v21 = 0xD000000000000017;
          v20 = v13;
          break;
        case 6:
          v21 = 0xD000000000000019;
          v20 = v12;
          break;
        case 7:
          v21 = 0xD000000000000010;
          v20 = v11;
          break;
        case 8:
          break;
        case 9:
          v20 = 0xEB00000000657079;
          v21 = 0x5474616553726163;
          break;
        case 0xA:
          v21 = 0x6D6572757361656DLL;
          v20 = 0xEF74696E55746E65;
          break;
        case 0xB:
          v21 = 0x74617265706D6574;
          v20 = 0xEF74696E55657275;
          break;
        case 0xC:
          v21 = 0x4D746E6556726163;
          v20 = 0xEB0000000065646FLL;
          break;
        default:
          v21 = v19;
          v20 = v18;
          break;
      }

      v53 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        v44 = v17;
        v45 = v16;
        v42 = v19;
        v43 = v18;
        v49 = v12;
        v50 = v11;
        v47 = v14;
        v48 = v13;
        v46 = v15;
        sub_146878(v22 > 1, v23 + 1, 1);
        v19 = v42;
        v18 = v43;
        v17 = v44;
        v16 = v45;
        v15 = v46;
        v14 = v47;
        v13 = v48;
        v12 = v49;
        v11 = v50;
        v10 = v53;
      }

      ++v9;
      *(v10 + 16) = v23 + 1;
      v24 = v10 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
    }

    while (v9 != 13);
    v25 = sub_1017A4(v10, v51);

    v26 = *(v25 + 2);
    if (v26)
    {
      v27 = v52 + 16;
      v52 = *(v52 + 16);
      v28 = *(v27 + 64);
      v50 = v25;
      v29 = &v25[(v28 + 32) & ~v28];
      v30 = *(v27 + 56);
      v31 = (v27 - 8);
      v8 = _swiftEmptyArrayStorage;
      v51 = v2;
      do
      {
        (v52)(v5, v29, v2);
        v32 = sub_169714();
        v34 = v33;
        v35._rawValue = &off_1D2380;
        v54._countAndFlagsBits = v32;
        v54._object = v34;
        v36 = sub_16ADE4(v35, v54);

        if (v36 >= 0xD)
        {
          (*v31)(v5, v2);
        }

        else
        {
          (*v31)(v5, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = v8[2];
            sub_108D9C();
            v8 = v39;
          }

          v37 = v8[2];
          if (v37 >= v8[3] >> 1)
          {
            sub_108D9C();
            v8 = v40;
          }

          v8[2] = v37 + 1;
          *(v8 + v37 + 32) = v36;
          v2 = v51;
        }

        v29 += v30;
        --v26;
      }

      while (v26);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v8;
}

uint64_t sub_105AC0()
{
  result = *(v0 + 168);
  if (result == 6)
  {
    result = sub_105AEC(v0);
    *(v0 + 168) = result;
  }

  return result;
}

uint64_t sub_105AEC(uint64_t a1)
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_169724();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  sub_142688();
  if (!v12)
  {
    return 5;
  }

  sub_10152C(0x4D746E6556726163, 0xEB0000000065646FLL, v12, v5);

  if (sub_9E2C(v5, 1, v6) == 1)
  {
    sub_109A0(v5, &qword_1ED140, &qword_178228);
    return 5;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_169704();
  if (!v13)
  {
    (*(v7 + 8))(v10, v6);
    return 5;
  }

  v14 = sub_82DFC();
  (*(v7 + 8))(v10, v6);
  return v14;
}

void sub_105D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10C274();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v22 = sub_1697C4();
  v23 = sub_9F48(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_5758(&unk_1EC980, &qword_178180);
  v31 = sub_D414(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &a9 - v34;
  v36 = *v21;
  v37 = sub_16A664();
  v39 = v38;
  sub_106294();
  if (sub_9E2C(v35, 1, v22))
  {

    sub_109A0(v35, &unk_1EC980, &qword_178180);
  }

  else
  {
    (*(v25 + 16))(v29, v35, v22);
    sub_109A0(v35, &unk_1EC980, &qword_178180);
    sub_A867C(v37, v39);

    (*(v25 + 8))(v29, v22);
  }

  sub_10C288();
}

void sub_106080()
{
  sub_10C274();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_10BCAC();
  if (v3)
  {
    sub_1060DC(v0);
    sub_10C06C();
    v4 = *(v0 + 256);
    v5 = *(v0 + 264);
    *(v0 + 256) = v6;
    *(v0 + 264) = v7;

    sub_10C234();
  }

  sub_10BBF8();
  sub_10C288();
}

uint64_t sub_1060DC(uint64_t a1)
{
  v2 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_169AD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  sub_14330C();
  if (!v12)
  {
    sub_5370(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_169AA4();

  if (sub_9E2C(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_109A0(v5, &qword_1E8FA8, &qword_1720D8);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = sub_169AC4();
  (*(v7 + 8))(v10, v6);
  return v13;
}

void sub_106294()
{
  sub_10C274();
  v2 = v1;
  v3 = sub_10B98();
  v5 = sub_5758(v3, v4);
  v6 = sub_D414(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_A128();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v15 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan;
  swift_beginAccess();
  sub_D4DC4(v0 + v15, v14, &qword_1ED148, &unk_178230);
  v16 = sub_5758(&unk_1EC980, &qword_178180);
  if (sub_9E2C(v14, 1, v16) == 1)
  {
    sub_109A0(v14, &qword_1ED148, &unk_178230);
    sub_106420(v0, v2);
    sub_D4DC4(v2, v11, &unk_1EC980, &qword_178180);
    sub_5370(v11, 0, 1, v16);
    swift_beginAccess();
    sub_10BA1C(v11, v0 + v15);
    swift_endAccess();
  }

  else
  {
    sub_10BA8C(v14, v2);
  }

  sub_10C288();
}

uint64_t sub_106420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_169724();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1697C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v51 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v42 - v14;
  v15 = a1;
  v16 = sub_106A80();
  v17 = 0;
  v49 = v16[2];
  v47 = v10 + 16;
  v58 = v5 + 16;
  v57 = IdentifierNamespaceRadioStationChannel;
  v18 = (v5 + 8);
  v50 = (v10 + 32);
  v48 = v10;
  v43 = (v10 + 8);
  v52 = &_swiftEmptyArrayStorage;
  v45 = v9;
  v46 = a1;
  v44 = v16;
LABEL_2:
  if (v17 != v49)
  {
    if (v17 < v16[2])
    {
      v54 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v53 = *(v48 + 72);
      v15 = v56;
      (*(v48 + 16))(v56, v16 + v54 + v53 * v17, v9);
      v55 = v17 + 1;
      v17 = sub_169764();
      v2 = 0;
      v19 = *(v17 + 16);
      while (1)
      {
        if (v19 == v2)
        {
          v9 = v45;
          (*v43)(v56, v45);

          a1 = v46;
          goto LABEL_20;
        }

        if (v2 >= *(v17 + 16))
        {
          break;
        }

        (*(v5 + 16))(v8, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2, v4);
        v20 = sub_169714();
        v22 = v21;
        v23 = sub_16A664();
        v15 = v24;
        if (v20 == v23 && v22 == v24)
        {

          (*v18)(v8, v4);
LABEL_15:

          v27 = *v50;
          v9 = v45;
          (*v50)(v51, v56, v45);
          v15 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = *(v15 + 16);
            sub_146820();
            v15 = v59;
          }

          a1 = v46;
          v2 = *(v15 + 16);
          if (v2 >= *(v15 + 24) >> 1)
          {
            sub_146820();
            v15 = v59;
          }

          *(v15 + 16) = v2 + 1;
          v52 = v15;
          v27((v15 + v54 + v2 * v53), v51, v9);
LABEL_20:
          v16 = v44;
          v17 = v55;
          goto LABEL_2;
        }

        ++v2;
        v26 = sub_16AE54();

        (*v18)(v8, v4);
        if (v26)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v2 = 0xD000000000000018;

  v5 = v52;
  if (v52[2])
  {
    v17 = "eChange: {\n        ";
    v4 = "ommandsNlv4Task.swift";
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_16ACF4(97);
    v61._countAndFlagsBits = 0xD00000000000005FLL;
    v61._object = 0x800000000018E6F0;
    sub_16A744(v61);
    v62._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v62);

    v15 = v59;
    v18 = v60;
    if (qword_1E58E8 == -1)
    {
LABEL_23:
      v30 = sub_16A584();
      sub_9DA0(v30, qword_1E65C0);
      v31 = sub_16A9A4();
      sub_386D8(v31, 0x800uLL, v2 + 93, v17 | 0x8000000000000000, 0xD000000000000018, (v4 | 0x8000000000000000), 394, v15, v18);

      sub_8A148(v5, v42);
    }

LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_16ACF4(83);
  v63._countAndFlagsBits = 0xD000000000000051;
  v63._object = 0x800000000018E750;
  sub_16A744(v63);
  v33 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch;
  v34 = *(a1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch);

  v35 = sub_16A7E4();
  v37 = v36;

  v64._countAndFlagsBits = v35;
  v64._object = v37;
  sub_16A744(v64);

  v39 = v59;
  v38 = v60;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v40 = sub_16A584();
  sub_9DA0(v40, qword_1E65C0);
  v41 = sub_16A9A4();
  sub_386D8(v41, 0x800uLL, 0xD000000000000075, 0x800000000018E650, 0xD000000000000018, 0x800000000018E6D0, 397, v39, v38);

  return sub_8A148(*(a1 + v33), v42);
}

void *sub_106A80()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch))
  {
    v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch);
  }

  else
  {
    v3 = sub_106AF8();
    v2 = sub_A8858(v3);

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_106AF8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans))
  {
    v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 16);
    sub_143400();
    if (v5)
    {
      v2 = v5;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    v6 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_106BB4(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    a2();
    if (v5 && (v6 = , sub_105FB8(v6), v7))
    {

      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

uint64_t sub_106C38()
{
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue;
  result = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue);
  if (result == 6)
  {
    sub_10C110();
    sub_143A60();
    if (v4)
    {
      result = sub_83AF8();
    }

    else
    {
      result = 5;
    }

    *(v0 + v2) = result;
  }

  return result;
}

void *sub_106CAC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + *a1);
  v6 = v5;
  if (v5 == &dword_0 + 1)
  {
    v7 = *(v3 + 16);
    v6 = a2();
    v8 = *(v3 + v4);
    *(v3 + v4) = v6;
    v9 = v6;
    sub_10B9FC(v8);
  }

  sub_10BA0C(v5);
  return v6;
}

uint64_t sub_106D20()
{
  v1 = v0;
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v71 - v7;
  v9 = *(v0 + 16);
  sub_143FF0(v6, v10, v11, v12, v13, v14, v15, v16, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11]);
  v18 = v17;
  if (sub_144B4C())
  {
    v19 = sub_169A34();
    if ((v20 & 1) == 0)
    {
      v33 = v19;
      v34 = sub_82EF0();

      if (v34 == 4)
      {
        v32 = 3;
      }

      else
      {
        v32 = v34;
      }

      v35 = v33;
      goto LABEL_22;
    }
  }

  sub_144BC8();
  if (v21)
  {
    v22 = sub_169B84();
    if (v23 & 1) != 0 || (v24 = v22, v25 = sub_169B94(), (v26))
    {

      goto LABEL_8;
    }

    v36 = v25;
    v37 = sub_169B74();
    v39 = v38;
    v40 = v37;
    v41 = sub_82EF0();

    if (v41 == 4)
    {
      v32 = 3;
    }

    else
    {
      v32 = v41;
    }

    v42 = 0.0;
    if ((v39 & 1) == 0)
    {
      v42 = v40;
    }

    v35 = v24 / v36 + v42;
LABEL_22:
    v31 = v35;
    goto LABEL_23;
  }

LABEL_8:
  if ((v18 & 1) != 0 && (v27 = sub_106C18()) != 0)
  {
    v28 = v27;
    [v27 doubleValue];
    v30 = v29;

    v31 = v30;
    v32 = 3;
  }

  else
  {
    v31 = 0.0;
    v32 = 4;
  }

LABEL_23:
  sub_142688();
  if (v43)
  {
    sub_10152C(0xD000000000000017, 0x800000000017EE40, v43, v8);

    v44 = sub_169724();
    if (sub_9E2C(v8, 1, v44) == 1)
    {
      sub_109A0(v8, &qword_1ED140, &qword_178228);
    }

    else
    {
      sub_169704();
      v46 = v45;
      v47 = *(*(v44 - 8) + 8);
      v48 = sub_10B98();
      v49(v48);
      if (v46)
      {
        v50 = sub_82FC8();
        goto LABEL_43;
      }
    }
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_39;
  }

  v51 = sub_1023F8();
  sub_8139C(v51);
  sub_10C060();
  if (v54 == 0xD000000000000015 && v53 == v52)
  {

    v50 = 0;
  }

  else
  {
    sub_10C29C();
    sub_93EF4();
    v50 = 0;
    if (v8)
    {
      goto LABEL_43;
    }

    sub_8139C(*(v1 + 81));
    sub_10C060();
    if (v58 == 0xD000000000000015 && v57 == v56)
    {
    }

    else
    {
      v60 = sub_10C29C();

      if ((v60 & 1) == 0)
      {
LABEL_39:
        v50 = 4;
        goto LABEL_43;
      }
    }

    v50 = 2;
  }

LABEL_43:
  v61 = sub_1023F8();
  sub_8139C(v61);
  if (v63 == 7628147 && v62 == 0xE300000000000000)
  {
  }

  else
  {
    sub_16AE54();
    sub_93EF4();
  }

  v65 = sub_103570();
  if (v65 == 9)
  {
    v66 = 1;
  }

  else
  {
    v66 = 2;
  }

  if (v65 == 8)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  if (v32 == 4 && v50 == 4 && v67 == 2)
  {
    v31 = 0.0;
  }

  return *&v31;
}

uint64_t sub_107124(char a1)
{
  if (a1 == 9)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_107140()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun);
  if (v2 == 2)
  {
    LOBYTE(v2) = 105;
    v3 = sub_103A44();
    sub_82168(v3);
    sub_93B94();
    v5 = v5 && v4 == 0xEF6E6F6974617A69;
    if (v5)
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      sub_93AB0();
      sub_93DFC();
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1071D8(uint64_t a1)
{
  *(v1 + 56) = 6;
  *(v1 + 64) = xmmword_16E2A0;
  *(v1 + 80) = 5380;
  *(v1 + 82) = 33686018;
  *(v1 + 86) = 2;
  *(v1 + 88) = xmmword_16E2A0;
  *(v1 + 104) = xmmword_16E2A0;
  *(v1 + 120) = 3586;
  *(v1 + 122) = 33686018;
  *(v1 + 126) = 50464285;
  *(v1 + 130) = 770;
  *(v1 + 132) = 33686018;
  *(v1 + 136) = 514;
  *(v1 + 144) = 0;
  *(v1 + 152) = 33688834;
  *(v1 + 156) = 515;
  *(v1 + 160) = 0;
  *(v1 + 168) = 6;
  *(v1 + 176) = xmmword_16E2A0;
  *(v1 + 192) = xmmword_16E2A0;
  *(v1 + 208) = xmmword_16E2A0;
  *(v1 + 224) = xmmword_16E2A0;
  *(v1 + 240) = xmmword_16E2A0;
  *(v1 + 256) = xmmword_16E2A0;
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan;
  v4 = sub_5758(&unk_1EC980, &qword_178180);
  sub_5370(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch) = 0;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans) = 0;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasFrequencyAndBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasChannelAndBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasRadioBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberValue) = 1;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue) = 6;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___decimalPercentValue) = 1;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun) = 2;
  *(v1 + 16) = a1;

  sub_169A74();

  *(v1 + 24) = v6;
  *(v1 + 40) = v7;
  return v1;
}

void *sub_107364()
{
  v1 = v0[2];

  sub_109A0((v0 + 3), &qword_1E6A10, &unk_1744D0);
  sub_10BAFC(v0[8], v0[9]);
  sub_10BAFC(v0[11], v0[12]);
  sub_10BAFC(v0[13], v0[14]);
  v2 = v0[18];

  v3 = v0[20];

  sub_10BAFC(v0[22], v0[23]);
  sub_10BAFC(v0[24], v0[25]);
  sub_10BAFC(v0[26], v0[27]);
  sub_10BAFC(v0[28], v0[29]);
  sub_10BAFC(v0[30], v0[31]);
  sub_10BAFC(v0[32], v0[33]);
  sub_109A0(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan, &qword_1ED148, &unk_178230);
  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch);

  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans);

  sub_10B9FC(*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberValue));
  sub_10B9FC(*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___decimalPercentValue));
  return v0;
}

uint64_t sub_107454()
{
  sub_107364();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CarCommandsNlv4Task()
{
  result = qword_1EC968;
  if (!qword_1EC968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_107500()
{
  sub_107674();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_107674()
{
  if (!qword_1EC978)
  {
    sub_37130(&unk_1EC980, &qword_178180);
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC978);
    }
  }
}

uint64_t sub_1076D8()
{
  sub_16ACF4(441);
  type metadata accessor for CarCommandsNlv4Task();
  sub_5758(&qword_1ED120, &unk_178208);
  v21._countAndFlagsBits = sub_10C3E0();
  sub_10C2B4(v21);

  v22._countAndFlagsBits = 0x56202020200A7B20;
  v22._object = 0xED0000203A627265;
  sub_16A744(v22);
  v2 = sub_1023F8();
  sub_8139C(v2);
  sub_10C2B4(v23);

  sub_10BDE0();
  sub_16A744(v24);
  v3 = sub_102188();
  sub_81288(v3);
  sub_10C2B4(v25);

  sub_10BDE0();
  sub_16A744(v26);
  sub_104B2C();
  sub_10B9A8();
  sub_16A924();
  sub_10C06C();

  v27._countAndFlagsBits = v0;
  v27._object = v1;
  sub_16A744(v27);

  sub_10BDE0();
  sub_16A744(v28);
  sub_103A44();
  sub_10C078();
  sub_10BDE0();
  sub_16A744(v29);
  sub_103570();
  sub_10C078();
  v30._countAndFlagsBits = 0x726143202020200ALL;
  v30._object = 0xEE00203A656D614ELL;
  sub_16A744(v30);
  v4._countAndFlagsBits = sub_1021D0();
  if (v4._object)
  {
    object = v4._object;
  }

  else
  {
    v4._countAndFlagsBits = 7104878;
    object = 0xE300000000000000;
  }

  v4._object = object;
  sub_16A744(v4);

  sub_10BDE0();
  v31._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v31);
  v6 = sub_104FD4();
  v32._countAndFlagsBits = sub_82770(v6);
  sub_16A744(v32);

  sub_10BDE0();
  sub_16A744(v33);
  v7 = sub_106AF8();
  sub_101B48(v7);

  v34._countAndFlagsBits = sub_10B98();
  sub_16A744(v34);

  sub_10BDE0();
  sub_16A744(v35);
  sub_10226C();
  sub_10C078();
  sub_10BDE0();
  sub_16A744(v36);
  sub_10340C();
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  v37._countAndFlagsBits = sub_10C3E0();
  sub_10C2B4(v37);

  sub_10BDE0();
  v38._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v38);
  v8 = sub_104754();
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v10._object = v11;
  sub_16A744(v10);

  sub_10BDE0();
  sub_16A744(v39);
  v12 = sub_102770();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14._countAndFlagsBits = 1702195828;
  }

  else
  {
    v14._countAndFlagsBits = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v14._object = v15;
  sub_16A744(v14);

  sub_10BDE0();
  sub_16A744(v40);
  v16 = sub_104BF4();
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18._countAndFlagsBits = 1702195828;
  }

  else
  {
    v18._countAndFlagsBits = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  v18._object = v19;
  sub_16A744(v18);

  sub_10BDE0();
  sub_16A744(v41);
  sub_106D20();
  sub_5758(&qword_1ED130, &qword_178218);
  v42._countAndFlagsBits = sub_10C3E0();
  sub_10C2B4(v42);

  sub_10BDE0();
  sub_16A744(v43);
  sub_100914();
  sub_5758(&qword_1ED138, &qword_178220);
  v44._countAndFlagsBits = sub_10C3E0();
  sub_16A744(v44);

  v45._countAndFlagsBits = 0x7D0A7D202020200ALL;
  v45._object = 0xE800000000000000;
  sub_16A744(v45);
  return 0;
}

void sub_107BD8()
{
  v1 = sub_169724();
  v2 = sub_9F48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_A128();
  v60 = v7 - v8;
  v10 = __chkstk_darwin(v9);
  v61 = v59 - v11;
  __chkstk_darwin(v10);
  v13 = v59 - v12;
  v59[0] = v0;
  v14 = *(v0 + 16);
  sub_142688();
  v59[1] = v14;
  if (v15)
  {
    v16 = v15;
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    *(swift_initStackObject() + 16) = xmmword_16D9A0;
    sub_D434();
    *(v17 + 32) = 0xD000000000000017;
    *(v17 + 40) = v18;
    v19 = sub_1017A4(v17, v16);

    swift_setDeallocating();
    sub_EFFB0();
    v20 = v19;
    v62 = *(v19 + 2);
    if (v62)
    {
      v21 = 0;
      v22 = *(v4 + 80);
      sub_10BDEC();
      v24 = &v19[v23];
      while (v21 < *(v20 + 2))
      {
        (*(v4 + 16))(v13, &v24[*(v4 + 72) * v21], v1);
        sub_169704();
        v26 = v25;
        (*(v4 + 8))(v13, v1);
        if (v26)
        {
          v27 = sub_82120();
          if (v27 != 29 && sub_E6090(v27, &off_1D1418))
          {
LABEL_29:

            return;
          }
        }

        if (v62 == ++v21)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_9:
  }

  sub_142688();
  if (!v28)
  {
LABEL_19:
    sub_142688();
    if (v42)
    {
      v43 = v42;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      *(swift_initStackObject() + 16) = xmmword_16D9A0;
      sub_D434();
      *(v44 + 32) = 0xD000000000000010;
      *(v44 + 40) = v45;
      v46 = sub_1017A4(v44, v43);

      swift_setDeallocating();
      sub_EFFB0();
      v62 = *(v46 + 2);
      if (v62)
      {
        v47 = 0;
        v48 = *(v4 + 80);
        sub_10BDEC();
        v50 = &v46[v49];
        while (v47 < *(v46 + 2))
        {
          (*(v4 + 16))(v60, &v50[*(v4 + 72) * v47], v1);
          v51 = sub_169704();
          v53 = v52;
          v54 = *(v4 + 8);
          v55 = sub_37740();
          v56(v55);
          if (v53)
          {
            v57._rawValue = &off_1D1490;
            v63._countAndFlagsBits = v51;
            v63._object = v53;
            v58 = sub_16ADE4(v57, v63);

            if (v58 <= 5 && sub_E6420(v58, &off_1D1468))
            {
              goto LABEL_29;
            }
          }

          if (v62 == ++v47)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_32;
      }

LABEL_27:
    }

    sub_102510();
    return;
  }

  v29 = v28;
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  *(swift_initStackObject() + 16) = xmmword_16D9A0;
  sub_D434();
  *(v30 + 32) = 0xD000000000000018;
  *(v30 + 40) = v31;
  v32 = sub_1017A4(v30, v29);

  swift_setDeallocating();
  sub_EFFB0();
  v33 = v32;
  v62 = *(v32 + 2);
  if (!v62)
  {
LABEL_18:

    goto LABEL_19;
  }

  v34 = 0;
  v35 = *(v4 + 80);
  sub_10BDEC();
  v37 = &v32[v36];
  while (v34 < *(v33 + 2))
  {
    v38 = v61;
    (*(v4 + 16))(v61, &v37[*(v4 + 72) * v34], v1);
    sub_169704();
    v40 = v39;
    (*(v4 + 8))(v38, v1);
    if (v40)
    {
      v41 = sub_82B58();
      if (v41 != 14 && sub_E60A8(v41, &off_1D1440))
      {
        goto LABEL_29;
      }
    }

    if (v62 == ++v34)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1080E4()
{
  v0 = sub_103A44() - 21;
  if (v0 < 4u)
  {
    return 0x1040302u >> (8 * (v0 & 0x1F));
  }

  v2 = sub_103570();
  sub_82B98(v2);
  sub_93B94();
  v4 = v4 && v3 == 0xEE006574754D6E6FLL;
  if (v4)
  {
  }

  else
  {
    sub_93AB0();
    sub_93DFC();
  }

  return 2;
}

void sub_108204()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10C2CC(v2, v5, &qword_1ED0F0, &qword_1781D0);
  sub_10C138();
  v9 = sub_1697C4();
  sub_10C0B8(v9);
  v11 = *(v10 + 80);
  sub_10BDEC();
  if (v1)
  {
    v13 = sub_10BD14(v12);
    sub_1091D8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

char *sub_1082E0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_108ED8(v9, a2, &qword_1ED0E8, &qword_1781C8, &type metadata accessor for SpanProperty);
  v11 = *(sub_169724() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1091D8(a4 + v12, v9, &v10[v12], &type metadata accessor for SpanProperty);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_108404()
{
  sub_10C054();
  if (v3)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_5758(&qword_1E6618, &qword_1781E0);
    v9 = sub_10C410();
    j__malloc_size(v9);
    sub_10BFE4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1084D8()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    v9 = sub_10C410();
    j__malloc_size(v9);
    sub_10BFE4();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_10C37C();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1085A8()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10C2CC(v2, v5, &qword_1ED110, &qword_1781F8);
  sub_10C138();
  v9 = sub_168B94();
  sub_10C0B8(v9);
  v11 = *(v10 + 80);
  sub_10BDEC();
  if (v1)
  {
    v13 = sub_10BD14(v12);
    sub_1091D8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108684()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10C2CC(v2, v5, &qword_1ED108, &qword_1781F0);
  sub_10C138();
  v9 = sub_169504();
  sub_10C0B8(v9);
  v11 = *(v10 + 80);
  sub_10BDEC();
  if (v1)
  {
    v13 = sub_10BD14(v12);
    sub_1091D8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108760()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10C2CC(v2, v5, &qword_1ED100, &qword_1781E8);
  sub_10C138();
  v9 = sub_16A314();
  sub_10C0B8(v9);
  v11 = *(v10 + 80);
  sub_10BDEC();
  if (v1)
  {
    v13 = sub_10BD14(v12);
    sub_1091D8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_10883C()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(&qword_1ED1A8, &qword_1782A8);
    v9 = sub_10C410();
    j__malloc_size(v9);
    sub_10BFE4();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10C37C();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10890C()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(&qword_1EAFA8, &unk_178270);
    v9 = sub_10C258();
    v10 = j__malloc_size(v9);
    sub_10BFF8(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10B98();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_5758(&qword_1E6380, &qword_16DAC0);
    sub_10B98();
    swift_arrayInitWithCopy();
  }
}

void sub_108A18()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(&qword_1ED1A0, &qword_1782A0);
    v9 = sub_10C258();
    v10 = j__malloc_size(v9);
    sub_10BFF8(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10C37C();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_108AF4()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(&qword_1ED1B8, &unk_1782C0);
    v9 = sub_10C258();
    v10 = j__malloc_size(v9);
    sub_10BFF8(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[6 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10B98();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_5758(&qword_1ED1C0, &qword_179280);
    sub_10B98();
    swift_arrayInitWithCopy();
  }
}

void sub_108BEC()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10C2CC(v2, v5, &qword_1ED190, &qword_178290);
  sub_10C138();
  v9 = type metadata accessor for CarTire();
  sub_10C0B8(v9);
  v11 = *(v10 + 80);
  sub_10BDEC();
  if (v1)
  {
    v13 = sub_10BD14(v12);
    sub_1091D8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108CC8()
{
  sub_10C054();
  if (v3)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_108FC8(*(v0 + 16), v4);
  v7 = sub_5758(&qword_1EA370, &qword_1782B0);
  sub_10C0B8(v7);
  v9 = *(v8 + 80);
  sub_10BDEC();
  if (v1)
  {
    sub_10BD14(v10);
    sub_10928C();
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108D9C()
{
  sub_10C054();
  if (v5)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10BD04(v6);
  if (v3)
  {
    sub_5758(v9, v10);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v2;
    v11[3] = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = sub_10C37C();
  if (v1)
  {
    if (v11 != v0 || &v14[v2] <= v13)
    {
      memmove(v13, v14, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v13, v14, v2);
  }
}

void *sub_108E64(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_5758(&qword_1ED180, &qword_178280);
  v4 = sub_10C410();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

char *sub_108ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5758(a3, a4);
  v8 = sub_10C138();
  v9 = a5(v8);
  sub_10AEC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (&result[-v13] != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * (&result[-v13] / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_108FC8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_5758(&qword_1ED1B0, &qword_1782B8);
  v4 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1090E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109150(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109178(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109198(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_1091D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10C368();
  if (v8 && (v9 = (a4)(0), result = sub_10AFC(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_10BD34();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_10BD34();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_10928C()
{
  sub_10C368();
  if (v3 && (v4 = sub_5758(&qword_1EA370, &qword_1782B0), result = sub_10AFC(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_10BD34();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_5758(&qword_1EA370, &qword_1782B0);
    sub_10BD34();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void *sub_10934C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1ED0F8, &qword_1781D8);
    v3 = sub_10C11C();
    v44 = *(a1 + 16);
    if (v44)
    {
      v4 = 0;
      sub_10C174();
      v42 = v5;
      v43 = v6;
      do
      {
        if (v4 >= *(a1 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
          JUMPOUT(0x109AA4);
        }

        v7 = *(a1 + 32 + v4);
        v8 = v3[5];
        sub_16AF14();
        sub_82168(v7);
        sub_16A6F4();

        sub_16AF54();
        sub_10C204();
        v10 = ~v9;
        v12 = v11 & ~v9;
        sub_10C320();
        if ((v15 & v14) != 0)
        {
          while (1)
          {
            v16 = 0xE400000000000000;
            v17 = 1935762529;
            switch(*(v3[6] + v12))
            {
              case 1:
                v17 = 0x7563726943726961;
                v16 = 0xEE006E6F6974616CLL;
                break;
              case 2:
                v17 = 0xD000000000000011;
                v16 = 0x800000000017E5A0;
                break;
              case 3:
                v16 = 0xE700000000000000;
                v17 = 0x79726574746162;
                break;
              case 4:
                v17 = 0x6F43657369757263;
                v20 = 0x6C6F72746ELL;
                goto LABEL_34;
              case 5:
                v17 = 0x6574736F72666564;
                v16 = 0xE900000000000072;
                break;
              case 6:
                sub_10C0D0();
                v17 = v24 + 2;
                v16 = 0x800000000017E5E0;
                break;
              case 7:
                v16 = 0xE800000000000000;
                v17 = 0x64656570536E6166;
                break;
              case 8:
                v17 = 1818588518;
                break;
              case 9:
                sub_10C0D0();
                v17 = v22 + 2;
                v16 = 0x800000000017E610;
                break;
              case 0xA:
                v16 = 0xE800000000000000;
                v21 = 1633906540;
                goto LABEL_29;
              case 0xB:
                v17 = 0x616E65746E69616DLL;
                v16 = 0xEB0000000065636ELL;
                break;
              case 0xC:
                v16 = 0xE800000000000000;
                v21 = 1769172848;
LABEL_29:
                v17 = v21 | 0x6E6F697400000000;
                break;
              case 0xD:
                v17 = 0xD000000000000011;
                v16 = v42;
                break;
              case 0xE:
                sub_10BE84();
                v16 = v19 + 1011;
                v17 = 0x7373614D74616573;
                break;
              case 0xF:
                v17 = 0x6E6F7268636E7973;
                v16 = 0xEF6E6F6974617A69;
                break;
              case 0x10:
                v17 = 0x6572705F65726974;
                v18 = 1920299891;
                goto LABEL_33;
              case 0x11:
                v17 = sub_10BBC0();
                break;
              case 0x12:
                v17 = 0x656C6553746E6576;
                v25 = 1919906915;
                goto LABEL_36;
              case 0x13:
                v17 = 0x566C6172656E6567;
                v18 = 1836412015;
LABEL_33:
                v20 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_34:
                v16 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x14:
                v17 = 0x756C6F566E69616DLL;
                v16 = 0xEA0000000000656DLL;
                break;
              case 0x15:
                sub_10C0D0();
                v17 = v23 - 1;
                v16 = v43;
                break;
              case 0x16:
                sub_10BE84();
                v16 = v26 + 2567;
                v17 = 0x6C6F56656E6F6870;
                break;
              case 0x17:
                v17 = 0x6F567265676E6972;
                v25 = 1701672300;
LABEL_36:
                v16 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 0x18:
                v16 = 0xE500000000000000;
                v17 = 0x6563696F76;
                break;
              case 0x19:
                v16 = 0xEA00000000006E6FLL;
                v17 = 0x697461676976616ELL;
                break;
              case 0x1A:
                v17 = 1819042147;
                break;
              case 0x1B:
                v16 = 0xE600000000000000;
                v17 = 0x7265676E6972;
                break;
              case 0x1C:
                v17 = 1769105779;
                break;
              default:
                break;
            }

            v27 = 0xE400000000000000;
            v28 = 1935762529;
            switch(v7)
            {
              case 1:
                v28 = 0x7563726943726961;
                v27 = 0xEE006E6F6974616CLL;
                break;
              case 2:
                v28 = 0xD000000000000011;
                v27 = 0x800000000017E5A0;
                break;
              case 3:
                v27 = 0xE700000000000000;
                v28 = 0x79726574746162;
                break;
              case 4:
                v28 = 0x6F43657369757263;
                v31 = 0x6C6F72746ELL;
                goto LABEL_67;
              case 5:
                v28 = 0x6574736F72666564;
                v27 = 0xE900000000000072;
                break;
              case 6:
                sub_10C0D0();
                v28 = v35 + 2;
                v27 = 0x800000000017E5E0;
                break;
              case 7:
                v27 = 0xE800000000000000;
                v28 = 0x64656570536E6166;
                break;
              case 8:
                v28 = 1818588518;
                break;
              case 9:
                sub_10C0D0();
                v28 = v33 + 2;
                v27 = 0x800000000017E610;
                break;
              case 10:
                v27 = 0xE800000000000000;
                v32 = 1633906540;
                goto LABEL_62;
              case 11:
                v28 = 0x616E65746E69616DLL;
                v27 = 0xEB0000000065636ELL;
                break;
              case 12:
                v27 = 0xE800000000000000;
                v32 = 1769172848;
LABEL_62:
                v28 = v32 | 0x6E6F697400000000;
                break;
              case 13:
                v28 = 0xD000000000000011;
                v27 = v42;
                break;
              case 14:
                sub_10BE84();
                v27 = v30 + 1011;
                v28 = 0x7373614D74616573;
                break;
              case 15:
                v28 = 0x6E6F7268636E7973;
                v27 = 0xEF6E6F6974617A69;
                break;
              case 16:
                v28 = 0x6572705F65726974;
                v29 = 1920299891;
                goto LABEL_66;
              case 17:
                v27 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 18:
                v28 = 0x656C6553746E6576;
                v36 = 1919906915;
                goto LABEL_69;
              case 19:
                v28 = 0x566C6172656E6567;
                v29 = 1836412015;
LABEL_66:
                v31 = v29 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_67:
                v27 = v31 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 20:
                v28 = 0x756C6F566E69616DLL;
                v27 = 0xEA0000000000656DLL;
                break;
              case 21:
                sub_10C0D0();
                v28 = v34 - 1;
                v27 = v43;
                break;
              case 22:
                sub_10BE84();
                v27 = v37 + 2567;
                v28 = 0x6C6F56656E6F6870;
                break;
              case 23:
                v28 = 0x6F567265676E6972;
                v36 = 1701672300;
LABEL_69:
                v27 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 24:
                v27 = 0xE500000000000000;
                v28 = 0x6563696F76;
                break;
              case 25:
                v27 = 0xEA00000000006E6FLL;
                v28 = 0x697461676976616ELL;
                break;
              case 26:
                v28 = 1819042147;
                break;
              case 27:
                v27 = 0xE600000000000000;
                v28 = 0x7265676E6972;
                break;
              case 28:
                v28 = 1769105779;
                break;
              default:
                break;
            }

            if (v17 == v28 && v16 == v27)
            {
              break;
            }

            sub_10C0E8();
            sub_10C428();

            if (v1)
            {
              goto LABEL_81;
            }

            v12 = (v12 + 1) & v10;
            sub_10C320();
            if ((v14 & v15) == 0)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
LABEL_78:
          v3[v13 + 7] = v14 | v15;
          *(v3[6] + v12) = v7;
          sub_10C348();
          if (v40)
          {
            goto LABEL_86;
          }

          v3[2] = v39;
        }

LABEL_81:
        ++v4;
      }

      while (v4 != v44);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

void sub_109B8C()
{
  sub_10C3C4();
  v3 = v2;
  if (*(v2 + 16))
  {
    sub_5758(&qword_1E91A0, &unk_172AF0);
    v4 = sub_10C11C();
    v42 = *(v3 + 16);
    if (v42)
    {
      sub_10C334();
      v5 = 0x69646E6F43726961;
      sub_D434();
      v39 = v7;
      v40 = v3;
      v41 = v3 + 32;
      do
      {
        if (v6 >= *(v3 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          JUMPOUT(0x10A104);
        }

        v43 = v6;
        v8 = *(v41 + v6);
        v9 = v4[5];
        sub_16AF14();
        sub_81C68(v8);
        sub_10BF98();

        sub_16AF54();
        sub_10C204();
        v11 = ~v10;
        v13 = v12 & ~v10;
        sub_10C30C();
        if ((v16 & v15) != 0)
        {
          while (1)
          {
            v17 = v0;
            v18 = v5;
            switch(*(v4[6] + v13))
            {
              case 1:
                v18 = sub_10BC8C();
                goto LABEL_31;
              case 2:
                v20 = 1768191329;
                goto LABEL_25;
              case 3:
                v18 = sub_10BC6C();
                break;
              case 4:
                v18 = sub_10C1A4();
                break;
              case 5:
                v18 = sub_10BC4C();
LABEL_31:
                v17 = v0 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v18 = sub_10BF20();
                break;
              case 7:
                v18 = sub_10C194();
                break;
              case 8:
                v17 = 0xE500000000000000;
                v18 = sub_93F0C();
                break;
              case 9:
                v18 = sub_10BCD8();
                goto LABEL_28;
              case 0xA:
                v22 = 1684104552;
                goto LABEL_46;
              case 0xB:
                v18 = sub_10C104() | 0x646F0000u;
                break;
              case 0xC:
                v18 = sub_10C104() | 0x6E720000u;
                break;
              case 0xD:
                v18 = sub_10BC2C();
                goto LABEL_34;
              case 0xE:
                v18 = sub_10BF34();
                break;
              case 0xF:
                v18 = sub_10BD80();
                break;
              case 0x10:
                v19 = sub_10BCF4();
                v18 = sub_10C1D4(v19);
                goto LABEL_28;
              case 0x11:
                v21 = sub_10BCF4();
                v18 = sub_10C164(v21);
LABEL_28:
                v17 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 0x12:
                v18 = sub_10BE70();
                goto LABEL_47;
              case 0x13:
                v18 = sub_10BD98();
                break;
              case 0x14:
                v18 = sub_10C1B4();
                break;
              case 0x15:
                v18 = sub_10C1C4();
                break;
              case 0x16:
                v18 = sub_10BE20();
                goto LABEL_44;
              case 0x17:
                v18 = sub_10BE0C();
LABEL_44:
                v17 = 0xEA00000000007265;
                break;
              case 0x18:
                v18 = sub_10BF48();
                break;
              case 0x19:
                v18 = sub_10BCBC();
                goto LABEL_26;
              case 0x1A:
                v18 = 0xD000000000000013;
                v17 = v39;
                break;
              case 0x1B:
                v18 = sub_10BD68();
                break;
              case 0x1C:
                v22 = 1818845556;
LABEL_46:
                v18 = v22 | 0x6867694C00000000;
LABEL_47:
                v17 = 0xE900000000000074;
                break;
              case 0x1D:
                v18 = sub_10BE48();
                break;
              case 0x1E:
                v18 = sub_10BE5C();
                break;
              case 0x1F:
                v20 = 1769171318;
LABEL_25:
                v18 = sub_10BE94(v20);
LABEL_26:
                v17 = v0 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_34:
                v17 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x20:
                sub_10C0DC();
                v17 = v23 - 1540;
                v18 = sub_10BE34();
                break;
              case 0x21:
                v18 = sub_10BBC0();
                break;
              case 0x22:
                v18 = sub_10BEF8();
                break;
              case 0x23:
                v18 = sub_10BF0C();
                break;
              default:
                break;
            }

            v24 = v5;
            v25 = v5;
            v26 = v0;
            switch(v8)
            {
              case 1:
                sub_10BDF8();
                v27 = 0x746867694C73;
                goto LABEL_73;
              case 2:
              case 31:
                sub_10C388();
                goto LABEL_68;
              case 3:
                sub_10BFD0();
                v0 = 0xEB00000000656372;
                break;
              case 4:
                v0 = 0xE300000000000000;
                v25 = 7496035;
                break;
              case 5:
                sub_10BF84();
                v27 = 0x6C6F72746E6FLL;
LABEL_73:
                v0 = v27 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v0 = 0xE600000000000000;
                sub_10C1F4();
                break;
              case 7:
                v0 = 0xE300000000000000;
                v25 = 7233894;
                break;
              case 8:
                v0 = 0xE500000000000000;
                sub_EACE8();
                break;
              case 9:
                sub_10C020();
                v29 = 1937008743;
                goto LABEL_70;
              case 10:
                v34 = 1684104552;
                goto LABEL_88;
              case 11:
                sub_10C39C();
                v25 = v30 | 0x646F0000u;
                break;
              case 12:
                sub_10C39C();
                v25 = v31 | 0x6E720000u;
                break;
              case 13:
                sub_10BF70();
                v32 = 0x746867694CLL;
                goto LABEL_76;
              case 14:
                v0 = 0xE600000000000000;
                sub_10C224();
                break;
              case 15:
                v0 = 0xE700000000000000;
                sub_10BFBC();
                break;
              case 16:
                sub_10BD24();
                v25 = v28 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
                v29 = 1701536114;
                goto LABEL_70;
              case 17:
                sub_10BD24();
                v25 = v33 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
                v29 = 1952999273;
LABEL_70:
                v0 = v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 18:
                sub_10BF5C();
                goto LABEL_89;
              case 19:
                v0 = 0xE700000000000000;
                sub_10BEA8();
                break;
              case 20:
                v0 = 0xE400000000000000;
                v25 = 1918985586;
                break;
              case 21:
                v0 = 0xE400000000000000;
                v25 = 1952540019;
                break;
              case 22:
                sub_10BED0();
                goto LABEL_86;
              case 23:
                sub_10BEBC();
LABEL_86:
                v0 = 0xEA00000000007265;
                break;
              case 24:
                v0 = 0xE600000000000000;
                sub_10C214();
                break;
              case 25:
                sub_10C00C();
                v0 = 1701144663;
LABEL_68:
                v32 = v0 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_76:
                v0 = v32 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 26:
                v25 = 0xD000000000000013;
                v0 = v39;
                break;
              case 27:
                v0 = 0xE700000000000000;
                sub_10C034();
                break;
              case 28:
                v34 = 1818845556;
LABEL_88:
                v25 = v34 | 0x6867694C00000000;
LABEL_89:
                v0 = 0xE900000000000074;
                break;
              case 29:
                v0 = 0xE500000000000000;
                sub_10C184();
                break;
              case 30:
                v0 = 0xE500000000000000;
                sub_10C1E4();
                break;
              case 32:
                sub_10C0DC();
                v0 = v35 - 1540;
                sub_10BEE4();
                break;
              case 33:
                v0 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 34:
                v0 = 0xE600000000000000;
                sub_10C154();
                break;
              case 35:
                v0 = 0xE600000000000000;
                sub_10C144();
                break;
              default:
                break;
            }

            if (v18 == v25 && v17 == v0)
            {
              break;
            }

            sub_10C0E8();
            sub_10C428();

            v0 = v26;
            v5 = v24;
            if (v1)
            {
              goto LABEL_101;
            }

            v13 = (v13 + 1) & v11;
            sub_10C30C();
            if ((v15 & v16) == 0)
            {
              goto LABEL_98;
            }
          }

          v0 = v26;
          v5 = v24;
        }

        else
        {
LABEL_98:
          v4[v14 + 7] = v15 | v16;
          *(v4[6] + v13) = v8;
          sub_10C348();
          if (v38)
          {
            goto LABEL_104;
          }

          v4[2] = v37;
        }

LABEL_101:
        v6 = v43 + 1;
        v3 = v40;
      }

      while (v43 + 1 != v42);
    }
  }

  sub_10C3A8();
}

void *sub_10A224(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_5758(&qword_1ED178, &qword_178268);
    v2 = sub_16ACC4();
    v3 = v2;
    v28 = *(v1 + 16);
    if (v28)
    {
      v4 = 0;
      v5 = v2 + 56;
      v26 = v1;
      v27 = v1 + 32;
      do
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          JUMPOUT(0x10A7F0);
        }

        v6 = *(v27 + v4++);
        v7 = v3[5];
        sub_16AF14();
        sub_16A6F4();

        v8 = sub_16AF54();
        v9 = ~(-1 << *(v3 + 32));
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) != 0)
        {
          while (1)
          {
            v14 = 0xE600000000000000;
            v15 = 0x64656B636F6CLL;
            switch(*(v3[6] + v10))
            {
              case 1:
                v14 = 0xE800000000000000;
                v16 = 0x696873616C66;
                goto LABEL_14;
              case 2:
                v15 = 0x746E656C6973;
                break;
              case 3:
                v14 = 0xE800000000000000;
                v16 = 0x69646E756F73;
LABEL_14:
                v15 = v16 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
                break;
              case 4:
                v14 = 0xE800000000000000;
                v15 = 0x64656B636F6C6E75;
                break;
              case 5:
                v14 = 0xE400000000000000;
                v15 = 1802658160;
                break;
              case 6:
                v14 = 0xE700000000000000;
                v15 = 0x6E776F6E6B6E75;
                break;
              case 7:
                v15 = 0x61635F7075746573;
                v14 = 0xED000079616C7072;
                break;
              case 8:
                v14 = 0xE300000000000000;
                v15 = 7827308;
                break;
              case 9:
                v14 = 0xE400000000000000;
                v15 = 1751607656;
                break;
              case 0xA:
                v15 = 0xD000000000000011;
                v14 = 0x800000000017E3D0;
                break;
              case 0xB:
                v15 = 0xD000000000000013;
                v14 = 0x800000000017E3F0;
                break;
              case 0xC:
                v15 = 0x697461676976616ELL;
                v14 = 0xEE006574754D6E6FLL;
                break;
              case 0xD:
                v15 = 0xD000000000000010;
                v14 = 0x800000000017E420;
                break;
              default:
                break;
            }

            v17 = 0xE600000000000000;
            v18 = 0x64656B636F6CLL;
            switch(v6)
            {
              case 1:
                v17 = 0xE800000000000000;
                v19 = 0x696873616C66;
                goto LABEL_29;
              case 2:
                v18 = 0x746E656C6973;
                break;
              case 3:
                v17 = 0xE800000000000000;
                v19 = 0x69646E756F73;
LABEL_29:
                v18 = v19 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
                break;
              case 4:
                v17 = 0xE800000000000000;
                v18 = 0x64656B636F6C6E75;
                break;
              case 5:
                v17 = 0xE400000000000000;
                v18 = 1802658160;
                break;
              case 6:
                v17 = 0xE700000000000000;
                v18 = 0x6E776F6E6B6E75;
                break;
              case 7:
                v18 = 0x61635F7075746573;
                v17 = 0xED000079616C7072;
                break;
              case 8:
                v17 = 0xE300000000000000;
                v18 = 7827308;
                break;
              case 9:
                v17 = 0xE400000000000000;
                v18 = 1751607656;
                break;
              case 10:
                v18 = 0xD000000000000011;
                v17 = 0x800000000017E3D0;
                break;
              case 11:
                v18 = 0xD000000000000013;
                v17 = 0x800000000017E3F0;
                break;
              case 12:
                v18 = 0x697461676976616ELL;
                v17 = 0xEE006574754D6E6FLL;
                break;
              case 13:
                v18 = 0xD000000000000010;
                v17 = 0x800000000017E420;
                break;
              default:
                break;
            }

            if (v15 == v18 && v14 == v17)
            {
              break;
            }

            v21 = sub_16AE54();

            if (v21)
            {
              goto LABEL_45;
            }

            v10 = (v10 + 1) & v9;
            v11 = v10 >> 6;
            v12 = *(v5 + 8 * (v10 >> 6));
            v13 = 1 << v10;
            if ((v12 & (1 << v10)) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          *(v5 + 8 * v11) = v12 | v13;
          *(v3[6] + v10) = v6;
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_50;
          }

          v3[2] = v24;
        }

LABEL_45:
        v1 = v26;
      }

      while (v4 != v28);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}