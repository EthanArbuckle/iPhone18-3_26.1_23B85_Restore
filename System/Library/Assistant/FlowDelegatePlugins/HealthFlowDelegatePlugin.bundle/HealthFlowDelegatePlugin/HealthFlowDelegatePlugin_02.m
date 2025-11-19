uint64_t sub_33D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_73720();
  v7 = sub_5394(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_C2A4();
  v14 = v13 - v12;
  v15 = (*(a3 + 32))(v3, a2, a3);
  v16 = swift_dynamicCastUnknownClass();
  if (!v16)
  {

    v17 = sub_73700();
    sub_34788();
    swift_beginAccess();
    (*(v9 + 16))(v14, v17, v6);
    v18 = sub_73710();
    v19 = sub_73980();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_221D8();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v20 = 136315138;
      v21 = sub_73ED0();
      v23 = sub_19144(v21, v22, &v26);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_0, v18, v19, "Failed to convert %s to base Intent", v20, 0xCu);
      sub_AE38(v25);
      sub_34770();

      sub_34770();
    }

    (*(v9 + 8))(v14, v6);
    sub_3405C();
    sub_3477C();
    swift_allocError();
    swift_willThrow();
  }

  return v16;
}

Swift::Int sub_33FB4(unsigned __int8 a1)
{
  sub_73E40();
  sub_73E50(a1);
  return sub_73E60();
}

Swift::Int sub_34018()
{
  v1 = *v0;
  sub_73E40();
  sub_73E50(v1);
  return sub_73E60();
}

unint64_t sub_3405C()
{
  result = qword_A5D60;
  if (!qword_A5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D60);
  }

  return result;
}

uint64_t sub_340B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_73720();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_C2A4();
  v18 = v17 - v16;
  v19 = (*(a5 + 40))(a1, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
    v29 = v19;
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  v20 = sub_73700();
  sub_34788();
  swift_beginAccess();
  (*(v13 + 16))(v18, v20, v10);
  v21 = sub_73710();
  v22 = sub_73980();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_221D8();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    v25 = sub_73ED0();
    v27 = sub_19144(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v21, v22, "Failed ot convert %s to base Intent", v23, 0xCu);
    sub_AE38(v24);
    sub_34770();

    sub_34770();
  }

  (*(v13 + 8))(v18, v10);
  sub_3405C();
  sub_3477C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_342F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_73720();
  v10 = sub_5394(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = sub_736F0();
  sub_34788();
  swift_beginAccess();
  v38 = v9;
  (*(v12 + 16))(v17, v18, v9);

  v19 = sub_73710();
  v20 = sub_73970();

  v37 = a1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v21 = 136315394;

    v22 = sub_737A0();
    v36 = a5;
    v24 = a4;
    v25 = sub_19144(v22, v23, &v39);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_73ED0();
    v28 = sub_19144(v26, v27, &v39);

    *(v21 + 14) = v28;
    a4 = v24;
    a5 = v36;
    _os_log_impl(&dword_0, v19, v20, "Converting %s to %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_34770();

    sub_34770();
  }

  (*(v12 + 8))(v17, v38);
  if (a2)
  {
    swift_bridgeObjectRetain_n();
    sub_73430();
    v29 = sub_734C0();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v33 = objc_allocWithZone(INSpeakableString);
    v34 = sub_5ED24(v31, v32, v37, a2, 0, 0);
  }

  else
  {
    v34 = 0;
  }

  (*(a5 + 48))(v34, a4, a5);

  sub_3477C();
  return swift_dynamicCastUnknownClassUnconditional();
}

unint64_t sub_345F0()
{
  result = qword_A5D68;
  if (!qword_A5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HealthNLIntentConversionError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x346E0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_3471C()
{
  result = qword_A5D70;
  if (!qword_A5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D70);
  }

  return result;
}

uint64_t sub_347A4()
{
  result = v0;
  v3 = *(*(v1 - 192) + 8);
  return result;
}

uint64_t sub_347BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_34800()
{
  v1 = v0[2];

  sub_2733C(v0 + OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_3488C(uint64_t a1)
{
  v3 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v7 = OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand;
  swift_beginAccess();
  sub_35730(a1 + v7, v6);

  sub_356C0(v6, v1 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  return v1;
}

uint64_t sub_34968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64);
  sub_303DC();
  result = __chkstk_darwin(v8);
  v11 = &v17 - v10;
  if (a1 != 7368801 || a2 != 0xE300000000000000)
  {
    result = sub_73DB0();
    if ((result & 1) == 0)
    {
      v14 = a1 == 0x616D6D6F43656361 && a2 == 0xEA0000000000646ELL;
      if (v14 || (result = sub_73DB0(), (result & 1) != 0))
      {
        sub_35730(v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand, v11);
        v15 = sub_73350();
        if (sub_5124(v11, 1, v15) != 1)
        {
          *(a3 + 24) = v15;
          v16 = sub_5BAC(a3);
          return (*(*(v15 - 8) + 32))(v16, v11, v15);
        }

        result = sub_2733C(v11);
      }

      goto LABEL_17;
    }
  }

  v13 = *(v3 + 24);
  if (!v13)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_732E0();
  *a3 = v13;
}

uint64_t sub_34B34(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_98380;
  v7._object = a2;
  v4 = sub_73CE0(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_34B9C(char a1)
{
  if (a1)
  {
    return 0x616D6D6F43656361;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_34BF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_34B34(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_34C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_34B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_34C58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_34B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_34C8C(uint64_t a1)
{
  v2 = sub_3566C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_34CC8(uint64_t a1)
{
  v2 = sub_3566C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_34D04()
{
  v1 = *(v0 + 24);

  sub_2733C(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  return v0;
}

uint64_t sub_34D3C()
{
  sub_34D04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_34DBC()
{
  sub_3505C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_34E58(void *a1)
{
  v3 = v1;
  v5 = sub_506C(&qword_A5FC0, &qword_77A48);
  sub_5394(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_303DC();
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_3566C();
  sub_73EA0();
  v21 = *(v3 + 24);
  HIBYTE(v20) = 0;
  sub_732E0();
  sub_35A48();
  sub_35624(v14, v15);
  sub_35A88(&v21, &v20 + 7);
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand;
    BYTE6(v20) = 1;
    sub_73350();
    sub_35A60();
    sub_35624(v17, v18);
    sub_35A88(v3 + v16, &v20 + 6);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_3500C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_35178(a1);
  return v5;
}

void sub_3505C()
{
  if (!qword_A5828)
  {
    sub_73350();
    v0 = sub_73A90();
    if (!v1)
    {
      atomic_store(v0, &qword_A5828);
    }
  }
}

void sub_350DC()
{
  sub_3505C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_35178(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64);
  sub_303DC();
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v24 = sub_506C(&qword_A5FA0, &qword_77A40);
  sub_5394(v24);
  v10 = *(v9 + 64);
  sub_303DC();
  __chkstk_darwin(v11);
  v1[2] = 0;
  v12 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_3566C();
  sub_73E90();
  if (v2)
  {

    type metadata accessor for WorkoutApp(0);
    v16 = *(*v1 + 12);
    v17 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = sub_732E0();
    v26 = 0;
    sub_35A48();
    sub_35624(v14, v15);
    sub_35AA8(v13, &v26);
    v3[3] = v27;
    v19 = sub_73350();
    v25 = 1;
    sub_35A60();
    sub_35624(v20, v21);
    sub_35AA8(v19, &v25);
    v22 = sub_35A78();
    v23(v22);
    sub_356C0(v8, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  }

  sub_AE38(a1);
  return v3;
}

void *sub_35434()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_3547C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_354C8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_35544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3500C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_35624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3566C()
{
  result = qword_A5FA8;
  if (!qword_A5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FA8);
  }

  return result;
}

uint64_t sub_356C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_35730(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkoutApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WorkoutApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x358F4);
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

unint64_t sub_3593C()
{
  result = qword_A5FD8;
  if (!qword_A5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FD8);
  }

  return result;
}

unint64_t sub_35994()
{
  result = qword_A5FE0;
  if (!qword_A5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FE0);
  }

  return result;
}

unint64_t sub_359EC()
{
  result = qword_A5FE8;
  if (!qword_A5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FE8);
  }

  return result;
}

uint64_t sub_35A88(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(a1, a2, v2, v3);
}

uint64_t sub_35AA8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(a1, a2, v3, v2);
}

uint64_t sub_35AC8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    sub_71DF0();
    v4 = v3;
    v5 = sub_71DD0();

    return v5;
  }

  else
  {

    return sub_45750(a1, a2);
  }
}

uint64_t sub_35B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_35B70, 0, 0);
}

uint64_t sub_35B70()
{
  v1 = **(v0 + 136);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_72230();
  *(v0 + 64) = v4;
  *(v0 + 72) = &protocol witness table for ResponseFactory;
  *(v0 + 40) = v7;
  v8 = sub_73750();
  *(v0 + 16) = 0xD000000000000014;
  *(v0 + 24) = 0x800000000007CFC0;
  *(v0 + 32) = v3;
  *(v0 + 80) = v8;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_35CF0;

  return sub_2CCDC(v0 + 88, v0 + 16, _swiftEmptyArrayStorage);
}

uint64_t sub_35CF0()
{
  sub_7F1C();
  v1 = *(*v0 + 160);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  return _swift_task_switch(sub_35DE0, 0, 0);
}

uint64_t sub_35DE0()
{
  sub_7F1C();
  v1 = *(v0 + 152);
  (*(v0 + 144))(v0 + 88);
  sub_16074(v0 + 88);
  sub_160DC(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_35E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_73910();
  sub_7CC4(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v7;
  v16[5] = a4;
  v16[6] = a5;

  sub_54390(0, 0, v14, a7, v16);
}

uint64_t sub_35F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_35F8C, 0, 0);
}

uint64_t sub_35F8C()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_15360;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return sub_45028();
}

uint64_t sub_360D8()
{
  sub_AE38((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_3613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_361B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_36234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_362D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_36350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_363F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_3643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_364C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_36534()
{
  result = qword_A60B8;
  if (!qword_A60B8)
  {
    type metadata accessor for PauseWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A60B8);
  }

  return result;
}

uint64_t sub_3658C()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_35F68(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_3662C()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_35B4C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_366D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_367A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_73390();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  type metadata accessor for WorkoutCancelCATPatternsExecutor(0);
  sub_368D4();
  v5 = sub_368EC();
  a1[3] = v1;
  a1[4] = &off_99388;
  *a1 = v5;
  type metadata accessor for WorkoutEndCATPatternsExecutor(0);
  sub_368D4();
  v6 = sub_368EC();
  a1[8] = v1;
  a1[9] = &off_9A450;
  a1[5] = v6;
  type metadata accessor for WorkoutPauseCATPatternsExecutor(0);
  sub_368D4();
  v7 = sub_368EC();
  a1[13] = v1;
  a1[14] = &off_9A790;
  a1[10] = v7;
  type metadata accessor for WorkoutResumeCATPatternsExecutor(0);
  sub_368D4();
  v8 = sub_368EC();
  a1[18] = v1;
  a1[19] = &off_9A5E0;
  a1[15] = v8;
  type metadata accessor for WorkoutStartCATPatternsExecutor(0);
  sub_368D4();
  v9 = sub_368EC();
  a1[23] = v1;
  a1[24] = &off_9A518;
  a1[20] = v9;
  type metadata accessor for WorkoutCATPatternsExecutor(0);
  sub_368D4();
  result = sub_368EC();
  a1[28] = v1;
  a1[29] = &off_99A48;
  a1[25] = result;
  return result;
}

uint64_t sub_368D4()
{

  return sub_73380();
}

uint64_t sub_368EC()
{

  return sub_732B0();
}

uint64_t type metadata accessor for HealthCATs()
{
  result = qword_A60C0;
  if (!qword_A60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36990(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_369E4(a1, a2);
}

uint64_t sub_369E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

uint64_t sub_36B58@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = sub_73720();
  v3 = sub_5394(v93);
  v91 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_198CC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_117D0();
  v86 = v11;
  sub_115DC();
  v12 = sub_721F0();
  v13 = sub_5394(v12);
  v83 = v14;
  v84 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_38618();
  v90 = v17;
  sub_115DC();
  v85 = sub_72B80();
  v18 = sub_5394(v85);
  v82 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_38618();
  v88 = v22;
  sub_115DC();
  v89 = sub_72AE0();
  v23 = sub_5394(v89);
  v87 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_198CC();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  sub_117D0();
  v32 = v31;
  v33 = sub_506C(&qword_A6110, &unk_77DB0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v78 - v35;
  v37 = sub_729C0();
  v38 = sub_5394(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_198CC();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  sub_117D0();
  v48 = v47;
  v49 = sub_38190(a1);
  if (!v49)
  {
LABEL_4:
    v51 = sub_736E0();
    swift_beginAccess();
    v52 = v91;
    v53 = v93;
    (*(v91 + 16))(v9, v51, v93);
    v54 = sub_73710();
    v55 = sub_73980();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "Failed to create protobuf UsoGraph from UsoTask", v56, 2u);
    }

    (*(v52 + 8))(v9, v53);
    return sub_721E0();
  }

  v50 = v49;
  sub_72CE0();
  if (sub_5124(v36, 1, v37) == 1)
  {

    sub_AEF4(v36, &qword_A6110, &unk_77DB0);
    goto LABEL_4;
  }

  v58 = v48;
  (*(v40 + 32))(v48, v36, v37);
  v59 = v32;
  sub_72AD0();
  v80 = v58;
  v81 = v40;
  (*(v40 + 16))(v45, v58, v37);
  sub_72AC0();
  v60 = v88;
  sub_72B70();
  (*(v87 + 16))(v29, v32, v89);
  sub_72B60();
  sub_721E0();
  sub_506C(&qword_A4FC0, &qword_76600);
  v61 = v82;
  v62 = *(v82 + 72);
  v63 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_74B40;
  v65 = v85;
  (*(v61 + 16))(v64 + v63, v60, v85);
  sub_72160();
  v66 = sub_736E0();
  swift_beginAccess();
  v67 = v91;
  v68 = v86;
  v69 = v93;
  (*(v91 + 16))(v86, v66, v93);

  v70 = sub_73710();
  v71 = sub_73970();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v94 = v50;
    v95 = v73;
    v79 = v59;
    v74 = v73;
    *v72 = 136315138;
    sub_72CF0();

    v75 = sub_737A0();
    v77 = sub_19144(v75, v76, &v95);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_0, v70, v71, "Built nlContextUpdate with SystemPrompted for task: %s", v72, 0xCu);
    sub_AE38(v74);

    (*(v67 + 8))(v86, v93);
    (*(v61 + 8))(v88, v85);
    (*(v87 + 8))(v79, v89);
  }

  else
  {

    (*(v67 + 8))(v68, v69);
    (*(v61 + 8))(v88, v65);
    (*(v87 + 8))(v59, v89);
  }

  (*(v81 + 8))(v80, v37);
  return (*(v83 + 32))(v92, v90, v84);
}

uint64_t sub_3727C(uint64_t a1)
{
  sub_37344();
  sub_72170();
  sub_506C(&qword_A4648, &qword_758E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_74F60;
  sub_32DAC(8);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_32DAC(3);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  sub_721C0();
  sub_37AF8(a1);
  return sub_72150();
}

uint64_t sub_37344()
{
  sub_721E0();
  sub_32DAC(0);
  sub_72190();
  sub_72180();
  sub_506C(&qword_A4648, &qword_758E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77300;
  sub_38648();
  sub_3862C();
  v2._countAndFlagsBits = sub_737C0();
  sub_73820(v2);

  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_38648();
  sub_3862C();
  v3._countAndFlagsBits = sub_737C0();
  sub_73820(v3);

  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_38648();
  sub_3862C();
  v4._countAndFlagsBits = sub_737C0();
  sub_73820(v4);

  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  return sub_721B0();
}

void sub_37490(unint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_506C(&qword_A4FB8, &qword_765F8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = &v44 - v5;
  sub_115DC();
  v50 = sub_71FA0();
  v6 = sub_5394(v50);
  v52 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_38618();
  v58 = v10;
  sub_115DC();
  v56 = sub_72040();
  v11 = sub_5394(v56);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_198CC();
  v49 = (v16 - v17);
  v19 = __chkstk_darwin(v18);
  v57 = &v44 - v20;
  __chkstk_darwin(v19);
  sub_117D0();
  v55 = v21;
  if (!(a1 >> 62))
  {
    v22 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_20:
    v59 = &_swiftEmptyArrayStorage;
    return;
  }

  v22 = sub_73CD0();
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v22 < 1)
  {
    __break(1u);
  }

  else
  {
    v23 = 0;
    v24 = a1 & 0xC000000000000001;
    v45 = (v13 + 8);
    v46 = (v13 + 16);
    v44 = v52 + 32;
    v59 = &_swiftEmptyArrayStorage;
    v47 = a1 & 0xC000000000000001;
    v48 = v22;
    v53 = a1;
    do
    {
      if (v24)
      {
        sub_73B70();
      }

      else
      {
        v25 = *(a1 + 8 * v23 + 32);
      }

      v26 = sub_723E0();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();

      sub_723D0();
      sub_733B0();
      if (v29)
      {
        sub_723C0();
        if (v30)
        {
          v31 = v55;
          sub_72030();
          v32 = v57;
          sub_72030();
          v33 = *v46;
          v34 = v51;
          v35 = v56;
          (*v46)(v51, v31, v56);
          sub_7CC4(v34, 0, 1, v35);
          v33(v49, v32, v35);
          sub_71F80();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = v59[2];
            sub_FDEC();
            v59 = v42;
          }

          a1 = v53;
          v36 = v59[2];
          v24 = v47;
          v22 = v48;
          if (v36 >= v59[3] >> 1)
          {
            sub_FDEC();
            v59 = v43;
          }

          v37 = *v45;
          v38 = v56;
          (*v45)(v57, v56);
          v37(v55, v38);
          v39 = v58;
          v40 = v59;
          v59[2] = v36 + 1;
          (*(v52 + 32))(v40 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v36, v39, v50);
        }

        else
        {

          a1 = v53;
        }
      }

      else
      {
      }

      ++v23;
    }

    while (v22 != v23);
  }
}

uint64_t sub_37918()
{
  sub_37344();
  sub_506C(&qword_A4648, &qword_758E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_74B40;
  sub_32DAC(8);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  return sub_721C0();
}

void sub_379A4()
{
  v0 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v1 = sub_73790();
  sub_385B4(v1, v2, v0);
  sub_37918();
  sub_506C(&unk_A63F0, &unk_760C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_752C0;
  *(v3 + 32) = v0;
  v7 = v0;
  sub_721A0();
  v4 = sub_72500();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_724F0();
  sub_733B0();
  sub_724D0();

  sub_724E0();

  sub_721D0();
}

char *sub_37AF8(uint64_t a1)
{
  v2 = sub_72670();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  __chkstk_darwin(v2);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_506C(&qword_A4FB8, &qword_765F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v57 - v10;
  v11 = sub_72040();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v72 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = &v57 - v17;
  v18 = __chkstk_darwin(v16);
  v68 = &v57 - v19;
  __chkstk_darwin(v18);
  v67 = &v57 - v20;
  v75 = sub_71FA0();
  v21 = *(v75 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v75);
  v71 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v57 - v25;
  v27 = *(a1 + 16);
  v28 = &_swiftEmptyArrayStorage;
  v61 = v12;
  v62 = v9;
  if (v27)
  {
    v73 = v11;
    v77 = &_swiftEmptyArrayStorage;
    sub_40240();
    v28 = v77;
    v65 = (v12 + 8);
    v66 = (v12 + 16);
    v63 = v26;
    v64 = v21 + 32;
    v29 = (a1 + 40);
    v76 = v21;
    do
    {
      v74 = v27;
      v30 = *(v29 - 1);
      v31 = *v29;
      swift_bridgeObjectRetain_n();
      v32 = v67;
      sub_72030();

      v33 = v68;
      sub_72030();
      v34 = *v66;
      v35 = v70;
      v36 = v73;
      (*v66)(v70, v32, v73);
      sub_7CC4(v35, 0, 1, v36);
      v34(v69, v33, v36);
      v37 = v63;
      sub_71F80();

      v38 = *v65;
      (*v65)(v33, v36);
      v38(v32, v36);
      v77 = v28;
      v39 = *(v28 + 2);
      if (v39 >= *(v28 + 3) >> 1)
      {
        sub_40240();
        v28 = v77;
      }

      *(v28 + 2) = v39 + 1;
      v21 = v76;
      (*(v76 + 32))(&v28[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v39], v37, v75);
      v29 += 2;
      v27 = v74 - 1;
    }

    while (v74 != &dword_0 + 1);
    v12 = v61;
    v9 = v62;
    v11 = v73;
  }

  sub_72650();
  v40 = *(v28 + 2);
  if (v40)
  {
    v42 = *(v21 + 16);
    v41 = v21 + 16;
    v43 = &v28[(*(v41 + 64) + 32) & ~*(v41 + 64)];
    v73 = *(v41 + 56);
    v74 = v42;
    v76 = v41;
    v44 = (v41 - 8);
    v45 = (v12 + 32);
    v46 = &_swiftEmptyArrayStorage;
    do
    {
      v47 = v71;
      v48 = v75;
      (v74)(v71, v43, v75);
      sub_71F90();
      (*v44)(v47, v48);
      if (sub_5124(v9, 1, v11) == 1)
      {
        sub_AEF4(v9, &qword_A4FB8, &qword_765F8);
      }

      else
      {
        v49 = *v45;
        (*v45)(v72, v9, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = *(v46 + 2);
          sub_FED0();
          v46 = v52;
        }

        v50 = *(v46 + 2);
        if (v50 >= *(v46 + 3) >> 1)
        {
          sub_FED0();
          v46 = v53;
        }

        *(v46 + 2) = v50 + 1;
        v49(&v46[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50], v72, v11);
        v9 = v62;
      }

      v43 += v73;
      --v40;
    }

    while (v40);
  }

  v54 = v60;
  v55 = sub_72660();

  (*(v58 + 8))(v54, v59);
  v77 = v28;
  sub_3844C(v55);
  return v77;
}

uint64_t sub_38190(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_506C(&qword_A4A38, &qword_75D68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_506C(&qword_A4A28, &unk_7A800);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_506C(&qword_A6118, &unk_7A7F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  switch(v1)
  {
    case 0:
      sub_731B0();
      v14 = sub_72FC0();
      sub_7CC4(v13, 1, 1, v14);
      v15 = sub_730B0();
      sub_7CC4(v9, 1, 1, v15);
      v16 = sub_72FF0();
      sub_7CC4(v5, 1, 1, v16);
      v17 = sub_73180();
      sub_AEF4(v5, &qword_A4A38, &qword_75D68);
      sub_AEF4(v9, &qword_A4A28, &unk_7A800);
      sub_AEF4(v13, &qword_A6118, &unk_7A7F0);
      return v17;
    case 1:
      sub_731B0();
      v18 = sub_73170();
      goto LABEL_7;
    case 2:
      sub_731B0();
      v18 = sub_73160();
      goto LABEL_7;
    case 3:
      sub_731B0();
      v18 = sub_731A0();
      goto LABEL_7;
    case 4:
      sub_731B0();
      v18 = sub_73190();
LABEL_7:
      v17 = v18;
      break;
    default:
      v17 = 0;
      break;
  }

  return v17;
}

uint64_t sub_3844C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_3854C(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_71FA0();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_3854C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_FDEC();
    *v1 = v6;
  }
}

void sub_385B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();

  [a3 setReason:v4];
}

void sub_3862C()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_73820(v2);
}

uint64_t sub_38648()
{

  return sub_32DAC(8);
}

void sub_38664(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_38930(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_74B40;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_73790();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_5258();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_73610();

    v22 = v8;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v13 = sub_B5BC(0);
    sub_73980();
    v14 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_74B40;
    v16 = v14;
    v17 = sub_B4FC();
    v19 = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_5258();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    sub_73620();

    sub_39300(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    v20 = swift_allocError();
    *v21 = v13;

    a3(v20, 1);
  }
}

id sub_38930(uint64_t a1)
{
  v51 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v48 - v5;
  v6 = type metadata accessor for HealthNLIntent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_731D0();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_72830();
  v19 = sub_5394(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = v21[2];
  v29(&v48 - v27, v51, v18);
  v30 = v21[11];
  v31 = sub_5388();
  v33 = v32(v31);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v34 = v21[12];
    v35 = sub_5388();
    v36(v35);
    (*(v13 + 32))(v17, v28, v10);
    (*(v13 + 16))(v9, v17, v10);
    sub_392BC();
    v37 = sub_5CD98(v9);
    sub_51F8(v9, type metadata accessor for HealthNLIntent);
    (*(v13 + 8))(v17, v10);
  }

  else if (v33 == enum case for Parse.directInvocation(_:))
  {
    v29(v26, v51, v18);
    v38 = v49;
    sub_6AFB0(v26, v49);
    v39 = v50;
    sub_50B4(v38, v50);
    v40 = type metadata accessor for DirectInvocationData();
    if (sub_5124(v39, 1, v40) == 1)
    {
      sub_514C(v38);
      sub_514C(v39);
      v37 = 0;
    }

    else
    {
      sub_6B824(v53);
      sub_514C(v38);
      sub_51F8(v39, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_392BC();
      if (swift_dynamicCast())
      {
        v37 = v52;
      }

      else
      {
        v37 = 0;
      }
    }

    v44 = v21[1];
    v45 = sub_5388();
    v46(v45);
  }

  else
  {
    v41 = v21[1];
    v42 = sub_5388();
    v43(v42);
    return 0;
  }

  return v37;
}

uint64_t sub_38D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_38E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_39004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_39050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_390B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_39120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_392BC()
{
  result = qword_A4418;
  if (!qword_A4418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4418);
  }

  return result;
}

uint64_t sub_39300(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_39348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v61 = a1;
  v10 = sub_72270();
  v11 = sub_5394(v10);
  v59 = v12;
  v60 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_73390();
  v18 = sub_5394(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  v24 = &v57[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_506C(&unk_A6CD0, &unk_75B80);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v57[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v31 = &v57[-v30];

  v32 = sub_453DC(a3, a4);
  if (v32 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v34 = sub_B5BC(2);
    sub_73980();
    v35 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_74B40;
    v37 = v35;
    v38 = sub_B4FC();
    v40 = v39;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_5258();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_73620();

    sub_14CF8(&qword_A3BB8, type metadata accessor for HealthFlowError);
    v41 = swift_allocError();
    *v42 = v34;
    v64[0] = v41;
    v65 = 1;

    v63(v64);

    v43 = &qword_A4810;
    v44 = &unk_760A0;
    v45 = v64;
  }

  else
  {
    v33 = v32;
    if (v32 == 4)
    {
      v58 = sub_739E0();
    }

    else
    {
      v58 = 0;
    }

    sub_73280();
    v46 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v47 = *(v20 + 72);
    v48 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_74B40;
    sub_73380();
    v64[0] = v49;
    sub_14CF8(&unk_A6CE0, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    v50 = type metadata accessor for HealthCATWrapper();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_4F648(v46, v24);
    sub_4FA6C(v61, v33, v58 & 1);

    sub_14DA4(v31, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v64[0] = *v29;
    }

    else
    {
      v55 = v59;
      v54 = v60;
      (*(v59 + 32))(v16, v29, v60);
      sub_39864(v64);
      (*(v55 + 8))(v16, v54);
    }

    v65 = EnumCaseMultiPayload == 1;
    v63(v64);
    sub_AEF4(v64, &qword_A4810, &unk_760A0);
    v43 = &unk_A6CD0;
    v44 = &unk_75B80;
    v45 = v31;
  }

  return sub_AEF4(v45, v43, v44);
}

uint64_t sub_39864@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_506C(&qword_A4050, &unk_75290);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a1[3] = v7;
  a1[4] = &protocol witness table for AceOutput;
  sub_5BAC(a1);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_39A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutUnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_39AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutUnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t type metadata accessor for HealthWorkoutCancelCATs()
{
  result = qword_A62A0;
  if (!qword_A62A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_74F60;
  *(v11 + 32) = 1953459315;
  *(v11 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v10, &qword_A3F98, qword_75450);
  v12 = sub_73350();
  if (sub_5124(v10, 1, v12) == 1)
  {
    sub_5B50(v10, &qword_A3F98, qword_75450);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    sub_5BAC((v11 + 48));
    sub_5C0C(v12);
    (*(v13 + 32))();
  }

  *(v11 + 80) = 0x4E74756F6B726F77;
  *(v11 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v8, &qword_A3F98, qword_75450);
  if (sub_5124(v8, 1, v12) == 1)
  {
    sub_5B50(v8, &qword_A3F98, qword_75450);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    sub_5BAC((v11 + 96));
    sub_5C0C(v12);
    (*(v14 + 32))();
  }

  sub_732A0();
}

uint64_t sub_39EE0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_74B40;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C(v7);
    (*(v8 + 32))();
  }

  sub_732A0();
}

uint64_t sub_3A07C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_3A0D0(a1, a2);
}

uint64_t sub_3A0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v14 - v11, &qword_A3F90, &unk_74FC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v12;
}

uint64_t sub_3A264()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_3A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v9 = sub_72270();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_506C(&unk_A6CD0, &unk_75B80);
  v12 = *(*(v36 - 8) + 64);
  v13 = __chkstk_darwin(v36);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_506C(&qword_A3F98, qword_75450);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - v20;

  v22 = sub_72250();
  if (v22 && (v23 = v22, v24 = [v22 displayAppName], v23, v24))
  {
    sub_73790();
    v33 = v9;

    sub_737F0();
    v9 = v33;

    v25 = sub_73350();
    v26 = 0;
  }

  else
  {

    v25 = sub_73350();
    v26 = 1;
  }

  sub_7CC4(v21, v26, 1, v25);
  v27 = v7[3];
  v28 = v7[4];
  sub_7C78(v7, v27);
  (*(v28 + 24))(v21, v27, v28);
  sub_14DA4(v17, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v37[0] = *v15;
  }

  else
  {
    v31 = v34;
    v30 = v35;
    (*(v35 + 32))(v34, v15, v9);
    sub_3A614(v37);
    (*(v30 + 8))(v31, v9);
  }

  v38 = EnumCaseMultiPayload == 1;
  a7(v37);
  sub_AEF4(v37, &qword_A4810, &unk_760A0);
  sub_AEF4(v17, &unk_A6CD0, &unk_75B80);
  return sub_AEF4(v21, &qword_A3F98, qword_75450);
}

uint64_t sub_3A614@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_506C(&qword_A4050, &unk_75290);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a1[3] = v7;
  a1[4] = &protocol witness table for AceOutput;
  sub_5BAC(a1);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_3A7B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_3A7F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3A84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_3A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  return sub_273C0();
}

uint64_t sub_3A8CC()
{
  sub_33058(v0[2], v0[3], v0[3], v0[4]);
  sub_273DC();

  return v1();
}

uint64_t sub_3A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_273C0();
}

uint64_t sub_3A964()
{
  sub_7F1C();
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_71DF0();
    v2 = v1;
    v3 = sub_71DD0();
  }

  else
  {
    v3 = sub_45750(*(v0 + 16), *(v0 + 24));
  }

  sub_273DC();

  return v4(v3);
}

uint64_t sub_3A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  *v6 = v3;
  v6[1] = sub_3AA94;

  return sub_3A8B4(a1, v7, v8, v10, v9, v11);
}

uint64_t sub_3AA94()
{
  sub_7F1C();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_B044();
  *v6 = v5;

  sub_273DC();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_3AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_16228;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_3AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_15F8C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_3AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_16228;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_3B068(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3B114;

  return sub_3A94C(a1, a2, v6);
}

uint64_t sub_3B114()
{
  sub_7F1C();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_B044();
  *v5 = v4;

  sub_273DC();

  return v6(v2);
}

id sub_3B254(uint64_t a1, uint64_t a2)
{
  v4 = sub_71550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SAStartRequest) init];
  v10 = sub_73790();
  sub_3B854(v10, v11, v9, &selRef_setOrigin_);
  sub_3B77C(a1, a2, v9);
  v12 = [objc_allocWithZone(SASendCommands) init];
  sub_506C(&unk_A63F0, &unk_760C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_752C0;
  *(v13 + 32) = v9;
  v14 = v9;
  sub_3B7D4(v13, v12);
  v15 = v12;
  sub_71540();
  v16 = sub_71520();
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  sub_3B854(v16, v18, v15, &selRef_setAceId_);

  return v15;
}

uint64_t sub_3B410(uint64_t a1)
{
  v2 = sub_72500();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_724F0();
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a1 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a1 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    sub_724D0();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v20 = sub_724E0();

      return v20;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_3B574(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(SAUIConfirmationView) init];
  v8 = sub_3B8C0(a1);
  if (v9)
  {
    sub_73780();
    v8 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v8, "setConfirmText:");

  v10 = sub_3B924(a1);
  if (v10)
  {
    sub_506C(&unk_A6D10, &unk_79340);
    sub_73860();
    v10 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v10, "setConfirmCommands:");

  v11 = sub_3B8C0(a2);
  if (v12)
  {
    sub_73780();
    v11 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v11, "setDenyText:");

  v13 = sub_3B924(a2);
  if (v13)
  {
    sub_506C(&unk_A6D10, &unk_79340);
    sub_73860();
    v13 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v13, "setDenyCommands:");

  sub_506C(&unk_A63F0, &unk_760C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_78310;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v22 = v14;
  if (a3)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    sub_73850();
    if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_73890();
    }

    sub_738C0();
    v18 = v22;
  }

  else
  {
    v18 = v14;
    v19 = a1;
    v20 = a2;
  }

  sub_3B990(v18, v7);
  return v7;
}

void sub_3B77C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setUtterance:v4];
}

void sub_3B7D4(uint64_t a1, void *a2)
{
  sub_506C(&qword_A6408, &unk_78330);
  isa = sub_73860().super.isa;

  [a2 setCommands:isa];
}

void sub_3B854(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_73780();

  [a3 *a4];
}

uint64_t sub_3B8C0(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_73790();

  return v3;
}

uint64_t sub_3B924(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_506C(&unk_A6D10, &unk_79340);
  v3 = sub_73870();

  return v3;
}

void sub_3B990(uint64_t a1, void *a2)
{
  sub_3BA04();
  isa = sub_73860().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_3BA04()
{
  result = qword_A6400;
  if (!qword_A6400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A6400);
  }

  return result;
}

id sub_3BA48(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_3BA60()
{
}

_BYTE *storeEnumTagSinglePayload for GenericWorkoutIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x3BB44);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_3BB7C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_3BBA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3BB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_3BBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3BB8C(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_3BC00()
{
  result = qword_A6410;
  if (!qword_A6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6410);
  }

  return result;
}

uint64_t sub_3BC54(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return v1;
    case 1:
      v1 = 1751346793;
      break;
    case 2:
      v1 = 0x726574656DLL;
      break;
    case 3:
      v1 = 1953460070;
      break;
    case 4:
      v1 = 1701603693;
      break;
    case 5:
      v1 = 1685217657;
      break;
    case 6:
      v1 = 0x646E6F636573;
      break;
    case 7:
      v1 = 0x6574756E696DLL;
      break;
    case 8:
      v1 = 1920298856;
      break;
    case 9:
      v1 = 0x656C756F6ALL;
      break;
    case 10:
      v1 = 0x6C6163206F6C696BLL;
      break;
    default:
      sub_73980();
      v2 = *sub_734D0();
      sub_506C(&qword_A3BA8, &unk_76BA0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_74B40;
      type metadata accessor for INWorkoutGoalUnitType(0);
      v4 = v2;
      sub_73C40();
      *(v3 + 56) = &type metadata for String;
      *(v3 + 64) = sub_5258();
      *(v3 + 32) = 0;
      *(v3 + 40) = 0xE000000000000000;
      sub_73620();

      break;
  }

  return v1;
}

unint64_t sub_3BE90()
{
  v0 = sub_73720();
  v1 = sub_5394(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  v8 = v7 - v6;
  sub_72840();
  sub_7C78(v15, v15[3]);
  v9 = sub_71F00();
  sub_AE38(v15);
  if (v9)
  {
    return 0x8000000000000002;
  }

  v11 = sub_736F0();
  sub_7EEC();
  (*(v3 + 16))(v8, v11, v0);
  v12 = sub_73710();
  v13 = sub_73970();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_22324();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "No Mindfulness override on this platform", v14, 2u);
    sub_7EBC();
  }

  (*(v3 + 8))(v8, v0);
  return 0x8000000000000001;
}

uint64_t sub_3C018(uint64_t a1, uint64_t a2)
{
  v3 = sub_73720();
  v4 = sub_5394(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_C2A4();
  v11 = v10 - v9;
  if (sub_3BE90() == 0x8000000000000002)
  {
    v12 = sub_736F0();
    sub_7EEC();
    (*(v6 + 16))(v11, v12, v3);
    v13 = sub_73710();
    v14 = sub_73970();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_22324();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "This is an unsupported device.", v15, 2u);
      sub_7EBC();
    }

    (*(v6 + 8))(v11, v3);
    a2 = sub_2AF64();
    sub_3E320(0x8000000000000002);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_3C190()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_3C1C8();
  return v3;
}

uint64_t sub_3C1C8()
{
  v1 = sub_73720();
  v2 = sub_5394(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v9 = v8 - v7;
  v10 = sub_736F0();
  sub_7EEC();
  (*(v4 + 16))(v9, v10, v1);
  sub_73660();
  return v0;
}

void sub_3C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  a19 = v20;
  a20 = v21;
  v22 = sub_73650();
  v23 = sub_5394(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_198CC();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  sub_73670();
  sub_73630();
  v34 = sub_73670();
  v35 = sub_739C0();
  if (sub_73A60())
  {
    v36 = sub_22324();
    *v36 = 0;
    v37 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v34, v35, v37, "pluginWarmUp", "", v36, 2u);
    sub_7EBC();
  }

  (*(v25 + 16))(v30, v33, v22);
  v38 = sub_736C0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_736B0();
  sub_3D2E0();

  (*(v25 + 8))(v33, v22);
  sub_11754();
}

void sub_3C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  a19 = v22;
  a20 = v23;
  v203 = v24;
  v25 = sub_506C(&qword_A3B90, &qword_76E00);
  v26 = sub_B1C0(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_3E430(&v178 - v29);
  v179 = type metadata accessor for DirectInvocationData();
  v30 = sub_1168C(v179);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v33);
  sub_3E430(&v178 - v34);
  v194 = sub_72820();
  v35 = sub_5394(v194);
  v193 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_C2A4();
  sub_3E430(v40 - v39);
  v41 = type metadata accessor for FlowRouterX();
  v42 = sub_B1C0(v41);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_C2A4();
  v47 = sub_3E430(v46 - v45);
  v48 = type metadata accessor for HealthNLIntent(v47);
  v49 = sub_B1C0(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v52);
  v197 = &v178 - v53;
  v198 = sub_731D0();
  v54 = sub_5394(v198);
  v196 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_C2A4();
  sub_3E430(v59 - v58);
  v60 = sub_72830();
  v61 = sub_5394(v60);
  v207 = v62;
  *&v208 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v65);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v66);
  v68 = &v178 - v67;
  v204 = sub_73720();
  v69 = sub_5394(v204);
  v206 = v70;
  v72 = *(v71 + 64);
  __chkstk_darwin(v69);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v73);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v74);
  sub_3E4F0();
  v75 = sub_73650();
  v76 = sub_5394(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  __chkstk_darwin(v76);
  sub_198CC();
  __chkstk_darwin(v81);
  v83 = &v178 - v82;
  v84 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin24HealthFlowDelegatePlugin_signposter;
  sub_73670();
  sub_73630();
  v202 = v20;
  v191 = v84;
  v85 = sub_73670();
  v86 = sub_739C0();
  v87 = sub_73A60();
  v205 = v83;
  if (v87)
  {
    v88 = sub_22324();
    *v88 = 0;
    v89 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v85, v86, v89, "makeFlow", "", v88, 2u);
    sub_7EBC();
  }

  v200 = v78;
  v201 = v75;
  v90 = *(v78 + 16);
  sub_3E518();
  v91();
  v92 = sub_736C0();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v199 = sub_736B0();
  v95 = sub_736E0();
  sub_7EEC();
  v96 = *(v206 + 16);
  v97 = v204;
  v185 = v206 + 16;
  v184 = v96;
  v96(v21, v95, v204);
  v99 = v207;
  v98 = v208;
  v100 = v21;
  v101 = *(v207 + 16);
  v102 = v203;
  sub_3E518();
  v101();
  v103 = sub_73710();
  v104 = sub_73970();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v210 = v106;
    *v105 = 136315138;
    (v101)(v190, v68, v98);
    v107 = sub_737A0();
    v109 = v108;
    v183 = *(v207 + 8);
    v183(v68, v208);
    v110 = v107;
    v102 = v203;
    v111 = sub_19144(v110, v109, &v210);
    v98 = v208;

    *(v105 + 4) = v111;
    _os_log_impl(&dword_0, v103, v104, "Workout plugin activate with %s", v105, 0xCu);
    sub_AE38(v106);
    sub_7EBC();
    v99 = v207;
    sub_7EBC();

    v112 = *(v206 + 8);
    v112(v100, v204);
  }

  else
  {

    v183 = *(v99 + 8);
    v183(v68, v98);
    v112 = *(v206 + 8);
    v112(v100, v97);
  }

  v113 = v194;
  v114 = v192;
  sub_3E518();
  v101();
  v115 = (*(v99 + 88))(v114, v98);
  v116 = v193;
  if (v115 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v99 + 96))(v114, v98);
    v117 = v196;
    v118 = v195;
    v119 = v114;
    v120 = v198;
    (*(v196 + 32))(v195, v119, v198);
    LODWORD(v207) = sub_73970();
    v121 = sub_734D0();
    v122 = *v121;
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v123 = swift_allocObject();
    v208 = xmmword_74B40;
    *(v123 + 16) = xmmword_74B40;
    sub_3E338(&qword_A4D08, &type metadata accessor for NLIntent);
    v124 = v122;
    v125 = sub_73DA0();
    v127 = v126;
    *(v123 + 56) = &type metadata for String;
    v128 = sub_5258();
    *(v123 + 64) = v128;
    *(v123 + 32) = v125;
    *(v123 + 40) = v127;
    sub_73620();

    (*(v117 + 16))(v197, v118, v120);
    sub_73970();
    v129 = *v121;
    v130 = swift_allocObject();
    *(v130 + 16) = v208;
    v131 = v129;
    v132 = sub_5A9F8();
    *(v130 + 56) = &type metadata for String;
    *(v130 + 64) = v128;
    *(v130 + 32) = v132;
    *(v130 + 40) = v133;
    sub_73620();

    v134 = sub_73670();
    v135 = sub_739D0();
    v136 = sub_73A60();
    v137 = v205;
    if (v136)
    {
      v138 = sub_22324();
      *v138 = 0;
      v139 = sub_73640();
      _os_signpost_emit_with_name_impl(&dword_0, v134, v135, v139, "nlv3IntentConverted", "", v138, 2u);
      sub_7EBC();
    }

    type metadata accessor for FlowRouter();
    v140 = v197;
    v141 = v189;
    sub_3E268(v197, v189, type metadata accessor for HealthNLIntent);
    sub_2A9E8(v141);
    sub_2AC00();
    v143 = v142;

    sub_3C018(v144, v143);

    sub_3E2C8(v140, type metadata accessor for HealthNLIntent);
    (*(v196 + 8))(v195, v198);
    goto LABEL_22;
  }

  if (v115 == enum case for Parse.directInvocation(_:))
  {
    *&v208 = v112;
    (*(v99 + 96))(v114, v98);
    v145 = v188;
    (*(v116 + 32))();
    sub_3D4F0(v145, v146, v147, v148, v149, v150, v151, v152, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
    v137 = v205;
    if (v153)
    {
      goto LABEL_21;
    }

    v167 = v190;
    sub_3E518();
    v101();
    v168 = v181;
    sub_6AFB0(v167, v181);
    if (sub_5124(v168, 1, v179) != 1)
    {
      v169 = v182;
      sub_3E204(v168, v182);
      type metadata accessor for FlowRouter();
      v170 = v180;
      sub_3E268(v169, v180, type metadata accessor for DirectInvocationData);
      sub_2AAF0(v170);
      sub_2AC00();

      sub_3E2C8(v169, type metadata accessor for DirectInvocationData);
LABEL_21:
      (*(v116 + 8))(v145, v113);
LABEL_22:
      sub_3D2E0();

      (*(v200 + 8))(v137, v201);
      sub_11754();
      return;
    }

    sub_10364(v168, &qword_A3B90, &qword_76E00);
    sub_736F0();
    sub_7EEC();
    v171 = sub_3E458(&v209);
    v172(v171);
    v173 = sub_73710();
    v174 = sub_73980();
    if (sub_3E4BC(v174))
    {
      v175 = sub_22324();
      sub_3E4D8(v175);
      sub_3E49C(&dword_0, v176, v177, "Workout plugin had no flows that can handle the invocation");
      sub_7EBC();
    }

    (v208)(v178, v204);
  }

  else
  {
    v137 = v205;
    if (v115 == enum case for Parse.uso(_:))
    {
      v154 = v112;
      sub_736F0();
      sub_7EEC();
      v155 = sub_3E458(&a9);
      v156(v155);
      v157 = sub_73710();
      v158 = sub_73970();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = sub_22324();
        sub_3E4D8(v159);
        _os_log_impl(&dword_0, v157, v158, "Workout domain received NLv4", v98, 2u);
        sub_7EBC();
      }

      v154(v100, v204);
      v160 = v187;
      sub_518DC(v187);
      v161 = sub_51A5C(v102);
      sub_3E2C8(v160, type metadata accessor for FlowRouterX);
      v162 = sub_73670();
      v163 = sub_739D0();
      if (sub_73A60())
      {
        v164 = sub_22324();
        *v164 = 0;
        v165 = sub_73640();
        _os_signpost_emit_with_name_impl(&dword_0, v162, v163, v165, "nlv4FlowBuilt", "", v164, 2u);
        sub_7EBC();
      }

      sub_3C018(v166, v161);

      v183(v114, v208);
      goto LABEL_22;
    }
  }

  sub_73CC0();
  __break(1u);
}

void sub_3D2E0()
{
  sub_11784();
  v24 = v0;
  v1 = sub_73690();
  v2 = sub_5394(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v9 = v8 - v7;
  v10 = sub_73650();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_C2A4();
  v18 = v17 - v16;
  v19 = sub_73670();
  sub_736A0();
  v20 = sub_739B0();
  if (sub_73A60())
  {

    sub_736D0();

    if ((*(v4 + 88))(v9, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v9, v1);
      v21 = "";
    }

    v22 = sub_22324();
    *v22 = 0;
    v23 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v19, v20, v23, v24, v21, v22, 2u);
    sub_7EBC();
  }

  (*(v13 + 8))(v18, v10);
  sub_11754();
}

void sub_3D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v136 = sub_73560();
  v25 = sub_5394(v136);
  v135[2] = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  sub_3E430(v30 - v29);
  v142 = sub_734F0();
  v31 = sub_5394(v142);
  v141 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_C2A4();
  v140 = v36 - v35;
  v37 = sub_506C(&qword_A64E0, qword_784B0);
  v38 = sub_B1C0(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_3E430(v135 - v41);
  v42 = sub_73530();
  v43 = sub_5394(v42);
  v139 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v47);
  sub_3E430(v135 - v48);
  v49 = sub_72820();
  v50 = sub_5394(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_198CC();
  v57 = v55 - v56;
  __chkstk_darwin(v58);
  sub_3E4F0();
  v59 = sub_73720();
  v60 = sub_5394(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v65);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v66);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v67);
  v69 = v135 - v68;
  v70 = sub_736F0();
  sub_7EEC();
  v152 = v70;
  v153 = v62;
  v71 = *(v62 + 16);
  v72 = v70;
  v73 = v49;
  v155 = v59;
  v151 = v62 + 16;
  v150 = v71;
  v71(v69, v72, v59);
  v74 = *(v52 + 16);
  v154 = v24;
  v74(v20, v24, v49);
  v75 = sub_73710();
  v76 = sub_73970();
  v77 = os_log_type_enabled(v75, v76);
  v148 = v42;
  v145 = v57;
  v144 = v52 + 16;
  v143 = v74;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v159[0] = v79;
    *v78 = 136315138;
    v74(v57, v20, v73);
    v80 = sub_737A0();
    v81 = v73;
    v82 = v80;
    v84 = v83;
    v85 = v20;
    v86 = v81;
    (*(v52 + 8))(v85, v81);
    v73 = sub_19144(v82, v84, v159);
    v87 = v155;

    *(v78 + 4) = v73;
    _os_log_impl(&dword_0, v75, v76, "Parse had DirectInvocation: %s", v78, 0xCu);
    sub_AE38(v79);
    sub_7EBC();
    sub_7EBC();

    v88 = sub_3E524();
    v89 = v87;
  }

  else
  {

    v90 = v20;
    v86 = v73;
    (*(v52 + 8))(v90, v73);
    v88 = sub_3E524();
    v89 = v155;
  }

  v73(v88, v89);
  v91 = v154;
  v92 = sub_72800();
  v94 = v93;
  if (v92 == sub_73540() && v94 == v95)
  {

    goto LABEL_17;
  }

  v97 = sub_73DB0();

  if (v97)
  {
LABEL_17:
    sub_3E47C();
    v106 = v149;
    sub_3E440();
    v107();
    v108 = sub_73710();
    v109 = sub_73970();
    if (sub_3E4BC(v109))
    {
      v110 = sub_22324();
      *v110 = 0;
      _os_log_impl(&dword_0, v108, v106, "WorkoutReminderAnnouncementFlow can handle the direct invocation", v110, 2u);
      sub_7EBC();
    }

    v73(v106, v155);
    sub_3E0BC(v159);
    v111 = sub_735E0();
    v112 = sub_735C0();
    v157 = v111;
    v158 = &protocol witness table for DeviceResolutionService;
    v156 = v112;
    v113 = sub_73510();
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_allocObject();
    v159[0] = sub_73500();
    sub_3E338(&qword_A64F8, &type metadata accessor for WorkoutReminderAnnouncementFlow);
    sub_71CF0();

    goto LABEL_20;
  }

  v143(v145, v91, v86);
  v98 = v147;
  sub_73520();
  v99 = v148;
  if (sub_5124(v98, 1, v148) == 1)
  {
    sub_10364(v98, &qword_A64E0, qword_784B0);
    v100 = sub_72800();
    v102 = v101;
    if (v100 == sub_73790() && v102 == v103)
    {
    }

    else
    {
      v105 = sub_73DB0();

      if ((v105 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_3E47C();
    v126 = v135[0];
    sub_3E440();
    v127();
    v128 = sub_73710();
    v129 = sub_73970();
    if (sub_3E4BC(v129))
    {
      v130 = sub_22324();
      sub_3E4D8(v130);
      sub_3E49C(&dword_0, v131, v132, "VoiceFeedbackAnnouncementFlow can handle the direct invocation");
      sub_7EBC();
    }

    v73(v126, v155);
    sub_72810();
    sub_73550();
    sub_3E338(&qword_A64E8, &type metadata accessor for VoiceFeedbackAnnouncementFlow);
    sub_71CF0();
    v133 = sub_3E504(&v160);
    v134(v133);
  }

  else
  {
    v116 = v139;
    v117 = v138;
    (*(v139 + 32))(v138, v98, v99);
    sub_3E47C();
    sub_3E440();
    v118();
    v119 = sub_73710();
    v120 = sub_73970();
    if (sub_3E4BC(v120))
    {
      v121 = sub_22324();
      sub_3E4D8(v121);
      sub_3E49C(&dword_0, v122, v123, "WorkoutReminderControlsFlow can handle the direct invocation");
      sub_7EBC();
    }

    v73(v146, v155);
    (*(v116 + 16))(v137, v117, v99);
    sub_734E0();
    sub_3E338(&qword_A64F0, &type metadata accessor for WorkoutReminderControlsFlow);
    sub_71CF0();
    v124 = sub_3E504(&a9);
    v125(v124);
    (*(v116 + 8))(v117, v99);
  }

LABEL_20:
  sub_11754();
}

uint64_t sub_3DEC8()
{
  v1 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin24HealthFlowDelegatePlugin_signposter;
  v2 = sub_73680();
  sub_1168C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for HealthFlowDelegatePlugin()
{
  result = qword_A6448;
  if (!qword_A6448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DFB0()
{
  result = sub_73680();
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

uint64_t sub_3E040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3C190();
  *a1 = result;
  return result;
}

uint64_t sub_3E0BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  return sub_73490();
}

uint64_t sub_3E170@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3E204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1168C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3E2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1168C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_3E320(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_3E338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3E380()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

void sub_3E440()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 256);
  v3 = *(v0 - 264);
}

uint64_t sub_3E458@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 192);
  v4 = *(v1 - 344);
  v5 = *(v1 - 352);
  return result;
}

uint64_t sub_3E47C()
{
  v2 = *(v0 - 248);

  return swift_beginAccess();
}

void sub_3E49C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_3E4BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_3E538(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_73BE0();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_14E68(v3, v6);
    sub_ADF8(0, &qword_A4058, INSpeakableString_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_73BB0();
    v4 = v7[2];
    sub_73BF0();
    sub_73C00();
    sub_73BC0();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_3E644(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_3E684(int a1, int a2, int a3, int a4, int a5, id a6, int a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v10 = [a6 disambiguationItems];
  v11 = sub_73870();

  v12 = sub_3E538(v11);

  if (v12)
  {
    v13 = sub_506C(&qword_A4CF8, &qword_75FF0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v26 = sub_727A0();
    v27 = 0;
    a8(&v26);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v16 = sub_B5BC(6);
    sub_73980();
    v17 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_74B40;
    v19 = v17;
    v20 = sub_B4FC();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_5258();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_73620();

    sub_401F0(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    v23 = swift_allocError();
    *v24 = v16;
    v26 = v23;
    v27 = 1;

    a8(&v26);
  }
}

void sub_3E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v107 = a8;
  v100 = a10;
  v101 = a9;
  v10 = sub_506C(&qword_A4E20, &qword_763D0);
  v11 = sub_5394(v10);
  v98 = v12;
  v99 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v97 = v95 - v15;
  v16 = sub_506C(&qword_A65C0, &qword_78608);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v95 - v18);
  v20 = type metadata accessor for HealthNLIntent(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  sub_C2A4();
  v24 = v23 - v22;
  v25 = sub_72830();
  v26 = sub_5394(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_C2A4();
  v33 = v32 - v31;
  v34 = sub_731D0();
  v35 = sub_5394(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_C2A4();
  v42 = v41 - v40;
  sub_727E0();
  if ((*(v28 + 88))(v33, v25) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v95[1] = v16;
    v96 = v19;
    (*(v28 + 96))(v33, v25);
    (*(v37 + 32))(v42, v33, v34);
    v43 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
    (*(v37 + 16))(v24, v42, v34);
    v95[0] = v43;
    v106 = sub_5C4C8();
    sub_BFD8(v24);
    sub_506C(&qword_A4D00, &unk_760B0);
    v44 = sub_72440();
    v45 = sub_114FC(v44);
    v46 = 0;
    v104 = v44 & 0xC000000000000001;
    v105 = v45;
    v107 = v44;
    v102 = v37;
    v103 = v44 & 0xFFFFFFFFFFFFFF8;
    v47 = &unk_A2000;
    v48 = v37;
    while (1)
    {
      if (v105 == v46)
      {

        type metadata accessor for HealthFlowError();
        swift_allocObject();
        v76 = sub_B5BC(5);
        sub_73980();
        v77 = *sub_734D0();
        sub_506C(&qword_A3BA8, &unk_76BA0);
        v78 = sub_29ACC();
        *(v78 + 16) = xmmword_74B40;
        v79 = v48;
        v80 = v34;
        v81 = v77;
        v82 = sub_B4FC();
        v84 = v83;
        *(v78 + 56) = &type metadata for String;
        *(v78 + 64) = sub_5258();
        *(v78 + 32) = v82;
        *(v78 + 40) = v84;
        sub_402D8();

        sub_402C0();
        sub_401F0(v85, 255, v86);
        v87 = sub_1B9B8();
        *v88 = v76;
        v89 = v96;
        *v96 = v87;
        swift_storeEnumTagMultiPayload();

        v101(v89);

        sub_AEF4(v89, &qword_A65C0, &qword_78608);
        (*(v79 + 8))(v42, v80);
        return;
      }

      if (v104)
      {
        v49 = sub_73B70();
      }

      else
      {
        if (v46 >= *(v103 + 16))
        {
          goto LABEL_24;
        }

        v49 = *(v107 + 8 * v46 + 32);
      }

      v50 = v49;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v51 = [v49 v47[449]];
      v52 = sub_73790();
      v54 = v53;

      v55 = [v106 workoutName];
      if (v55)
      {
        v56 = v55;
        v57 = v42;
        v58 = v34;
        v59 = [v55 v47[449]];

        v60 = sub_73790();
        v62 = v61;

        if (v52 == v60 && v54 == v62)
        {

          v90 = v96;
          v34 = v58;
          v42 = v57;
          goto LABEL_21;
        }

        v64 = sub_73DB0();

        v34 = v58;
        v48 = v102;
        v42 = v57;
        if (v64)
        {
          v90 = v96;
LABEL_21:

          v110 = sub_506C(&qword_A4D10, qword_78610);
          v108 = v46;
          v109 = v50;
          v91 = v50;
          v92 = v106;
          v93 = v97;
          sub_722A0();
          v94 = v99;
          sub_72350();
          (*(v98 + 8))(v93, v94);
          swift_storeEnumTagMultiPayload();
          v101(v90);

          sub_AEF4(v90, &qword_A65C0, &qword_78608);
          (*(v102 + 8))(v42, v34);
          return;
        }
      }

      else
      {
      }

      ++v46;
      v47 = &unk_A2000;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    (*(v28 + 8))(v33, v25);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v65 = sub_B5BC(0);
    sub_73980();
    v66 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v67 = sub_29ACC();
    *(v67 + 16) = xmmword_74B40;
    v68 = v66;
    v69 = sub_B4FC();
    v71 = v70;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_5258();
    *(v67 + 32) = v69;
    *(v67 + 40) = v71;
    sub_402D8();

    sub_402C0();
    sub_401F0(v72, 255, v73);
    v74 = sub_1B9B8();
    *v75 = v65;
    *v19 = v74;
    swift_storeEnumTagMultiPayload();

    v101(v19);

    sub_AEF4(v19, &qword_A65C0, &qword_78608);
  }
}

void sub_3F0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void **), uint64_t a9)
{
  v89 = a8;
  v87 = a1;
  v12 = sub_73390();
  v13 = sub_5394(v12);
  v88 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_C2A4();
  v19 = v18 - v17;
  v20 = sub_506C(&unk_A6CD0, &unk_75B80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v78 - v22;
  v24 = sub_721F0();
  v25 = sub_5394(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  v32 = v31 - v30;

  v33 = sub_453DC(a3, a4);
  if (v33 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v34 = sub_B5BC(2);
    sub_73980();
    v35 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v36 = sub_29ACC();
    *(v36 + 16) = xmmword_74B40;
    v37 = v35;
    v38 = sub_B4FC();
    v40 = v39;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_5258();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_402D8();

    sub_402C0();
    sub_401F0(v41, 255, v42);
    v43 = swift_allocError();
    *v44 = v34;
    v91 = v43;
    v93 = 1;

    v89(&v91);

    sub_AEF4(&v91, &qword_A4810, &unk_760A0);
    return;
  }

  v45 = v33;
  v81 = v12;
  v82 = v19;
  v83 = v32;
  v84 = v27;
  v85 = v23;
  sub_73970();
  v46 = *sub_734D0();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v47 = sub_29ACC();
  v80 = xmmword_74B40;
  *(v47 + 16) = xmmword_74B40;
  v91 = 0;
  v92 = 0xE000000000000000;
  v90 = v45;
  v48 = v46;
  sub_73C40();
  v49 = v91;
  v50 = v92;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_5258();
  *(v47 + 32) = v49;
  *(v47 + 40) = v50;
  sub_73620();

  v51 = sub_506C(&qword_A4D00, &unk_760B0);
  v52 = sub_72440();
  v53 = sub_114FC(v52);
  v86 = a9;
  if (!v53)
  {

    v56 = _swiftEmptyArrayStorage;
    v66 = v83;
    v65 = v89;
LABEL_14:
    sub_3727C(v56);

    type metadata accessor for DisambiguationStrategyHelper();
    sub_72440();
    sub_72840();
    v67 = sub_31CE8();

    sub_AE38(&v91);
    sub_73280();
    v68 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v69 = *(v88 + 72);
    v70 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v71 = swift_allocObject();
    *(v71 + 1) = v80;
    sub_73380();
    v91 = v71;
    sub_401F0(&unk_A6CE0, 255, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_D9A8(&qword_A6CF0, &qword_A4820, qword_77FF0);
    v72 = v82;
    sub_73B10();
    v73 = type metadata accessor for HealthCATWrapper();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    sub_4F648(v68, v72);
    v76 = v85;
    sub_4F9F0();

    __chkstk_darwin(v77);
    v78[-2] = v67;
    v78[-1] = v66;
    sub_541F4(sub_40238, &v91);
    v65(&v91);

    sub_AEF4(&v91, &qword_A4810, &unk_760A0);
    sub_AEF4(v76, &unk_A6CD0, &unk_75B80);
    (*(v84 + 8))(v66, v24);
    return;
  }

  v54 = v53;
  v91 = _swiftEmptyArrayStorage;
  sub_401D0();
  if ((v54 & 0x8000000000000000) == 0)
  {
    v78[1] = v51;
    v78[2] = a7;
    v79 = v24;
    v55 = 0;
    v56 = v91;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v57 = sub_73B70();
      }

      else
      {
        v57 = *(v52 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = [v57 spokenPhrase];
      v60 = sub_73790();
      v62 = v61;

      v91 = v56;
      v63 = v56[2];
      if (v63 >= v56[3] >> 1)
      {
        sub_401D0();
        v56 = v91;
      }

      ++v55;
      v56[2] = v63 + 1;
      v64 = &v56[2 * v63];
      v64[4] = v60;
      v64[5] = v62;
    }

    while (v54 != v55);

    v65 = v89;
    v24 = v79;
    v66 = v83;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_3F824@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_506C(&qword_A4050, &unk_75290);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  sub_72840();
  sub_72840();
  sub_7C78(v17, v17[3]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_752C0;
  *(v10 + 32) = a1;
  v11 = sub_721F0();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  sub_7CC4(v9, 0, 1, v11);
  v12 = sub_72890();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  a3[3] = v12;
  a3[4] = &protocol witness table for AceOutput;
  sub_5BAC(a3);
  v13 = a1;
  sub_72100();

  sub_AEF4(v15, &unk_A6D20, &qword_76D80);
  sub_AEF4(v9, &qword_A4050, &unk_75290);
  sub_AE38(v18);
  return sub_AE38(v17);
}

uint64_t sub_3FA54()
{
  type metadata accessor for StartWorkoutDisambiguationStrategy();

  return sub_718A0();
}

uint64_t sub_3FAD8(int a1, int a2, int a3, int a4, int a5, void *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v17 = *v8;

  return sub_3E684(a1, a2, a3, a4, a5, a6, v17, a7, a8);
}

uint64_t sub_3FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_3FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_3FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makePromptForDeviceUnlock(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_3FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_3FE54()
{
  type metadata accessor for StartWorkoutDisambiguationStrategy();

  return sub_72690();
}

uint64_t sub_3FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_3FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_40050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

void sub_401D0()
{
  v1 = *v0;
  sub_10ED8();
  *v0 = v2;
}

uint64_t sub_401F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_40240()
{
  v1 = *v0;
  sub_110E8();
  *v0 = v2;
}

void sub_40260()
{
  v1 = *v0;
  sub_11124();
  *v0 = v2;
}

void sub_40280()
{
  v1 = *v0;
  sub_112FC();
  *v0 = v2;
}

void sub_402A0()
{
  v1 = *v0;
  sub_11414();
  *v0 = v2;
}

uint64_t sub_402D8()
{

  return sub_73620();
}

uint64_t defaultWorkoutApp(for:workoutName:)(uint64_t a1, char a2)
{
  v3 = sub_731F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for DeviceIdiom.watch(_:), v3);
  v8 = sub_731E0();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) != 0 && a2 != 84)
  {
    return defaultWatchApp(for:)(a2);
  }

  else
  {
    return sub_73420();
  }
}

uint64_t defaultWatchApp(for:)(char a1)
{
  if (a1 == 79)
  {
    AFDeviceIsVictory();
  }

  return sub_73420();
}

uint64_t type metadata accessor for CancelWorkoutContinueInAppStrategy()
{
  result = qword_A65F0;
  if (!qword_A65F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessCATs()
{
  result = qword_A66B8;
  if (!qword_A66B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4054C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_405A0(a1, a2);
}

uint64_t sub_405A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

uint64_t sub_40714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_983D0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_40760(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t getEnumTagSinglePayload for HealthConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x408F4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_40930()
{
  result = qword_A6708;
  if (!qword_A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6708);
  }

  return result;
}

uint64_t sub_409A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_40714(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_409D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_40760(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_40A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_40B1C();
  v5 = sub_40B70();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_40A70()
{
  result = qword_A6710;
  if (!qword_A6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6710);
  }

  return result;
}

unint64_t sub_40AC8()
{
  result = qword_A6718;
  if (!qword_A6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6718);
  }

  return result;
}

unint64_t sub_40B1C()
{
  result = qword_A6720;
  if (!qword_A6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6720);
  }

  return result;
}

unint64_t sub_40B70()
{
  result = qword_A6728[0];
  if (!qword_A6728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_A6728);
  }

  return result;
}

uint64_t sub_40BC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_40C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_40C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_40CEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_7F10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_40D1C()
{
  sub_7F1C();
  v1 = *(*(v0 + 32) + 240);
  if (v1)
  {
    sub_71DF0();
    v2 = v1;
    v3 = sub_71DD0();
  }

  else
  {
    v3 = sub_45750(*(v0 + 16), *(v0 + 24));
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_40DB0()
{
  sub_7F1C();
  v0[22] = v1;
  v0[23] = v2;
  v0[21] = v3;
  v4 = sub_73720();
  v0[24] = v4;
  sub_7E94(v4);
  v0[25] = v5;
  v7 = *(v6 + 64);
  v0[26] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_40E5C()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_72420();
  sub_72400();
  v5 = sub_733B0();
  v7 = v6;

  if (v7)
  {
    v8 = v0[25];
    v9 = v0[26];
    v10 = v0[24];
    v11 = [objc_allocWithZone(HKHealthStore) init];
    v0[27] = v11;
    v12 = sub_736F0();
    swift_beginAccess();
    (*(v8 + 16))(v9, v12, v10);

    v13 = sub_73710();
    v14 = sub_73990();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[25];
    v17 = v0[26];
    v18 = v0[24];
    if (v15)
    {
      v27 = v11;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_19144(v5, v7, &v28);
      _os_log_impl(&dword_0, v13, v14, "Notifying HealthKit %s is allowed to start a workout from background process", v19, 0xCu);
      sub_AE38(v20);
      sub_7EBC();
      v11 = v27;
      sub_7EBC();
    }

    (*(v16 + 8))(v17, v18);
    v21 = sub_73780();
    v0[28] = v21;

    v0[2] = v0;
    v0[3] = sub_4116C;
    v22 = swift_continuation_init();
    v0[17] = sub_506C(&qword_A67B0, &unk_789D8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_41370;
    v0[13] = &unk_99940;
    v0[14] = v22;
    [v11 takeWorkoutBackgroundStartAssertionForApplicationIdentifier:v21 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v23 = v0[26];
    v24 = v0[21];
    sub_71FC0();
    sub_71FB0();

    sub_7EA4();

    return v25();
  }
}

uint64_t sub_4116C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_7F10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_41268()
{
  sub_7F1C();
  v1 = *(v0 + 224);

  v2 = *(v0 + 208);
  v3 = *(v0 + 168);
  sub_71FC0();
  sub_71FB0();

  sub_7EA4();

  return v4();
}

uint64_t sub_412EC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  swift_willThrow();

  sub_7EA4();
  v6 = v0[29];

  return v5();
}

uint64_t *sub_41370(uint64_t a1, int a2, void *a3)
{
  sub_ADF8(0, &qword_A67B8, INIntentResponse_ptr);
  result = sub_7C78((a1 + 32), *(a1 + 56));
  v7 = *result;
  if (a2)
  {
    v8 = *result;

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    v9 = a3;

    return sub_41414(v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_41414(uint64_t a1, uint64_t a2)
{
  sub_506C(&qword_A4828, qword_75BA0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_41484()
{
  sub_273D0();
  swift_task_alloc();
  sub_B144();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_44444(v1);

  return sub_4151C();
}

uint64_t sub_4151C()
{
  sub_7F1C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[9] = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = sub_72420();
  v1[10] = v6;
  sub_7E94(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = sub_7ED4();
  v10 = sub_73720();
  v1[13] = v10;
  sub_7E94(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = sub_7ED4();
  v14 = *(*(sub_71F70() - 8) + 64);
  v1[16] = sub_7ED4();
  v15 = sub_72580();
  v1[17] = v15;
  sub_7E94(v15);
  v1[18] = v16;
  v18 = *(v17 + 64);
  v1[19] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_41690()
{
  v59 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_723F0();
  v4 = [v3 _code];

  v5 = sub_3BB7C(v4);
  if ((v5 - 3) >= 3)
  {
    if (v5 == 9)
    {
      v14 = v0[14];
      v13 = v0[15];
      v16 = v0[12];
      v15 = v0[13];
      v17 = v0[10];
      v18 = v0[11];
      v19 = v0[6];
      v20 = sub_736E0();
      swift_beginAccess();
      (*(v14 + 16))(v13, v20, v15);
      (*(v18 + 16))(v16, v19, v17);
      v21 = sub_73710();
      v22 = sub_73980();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[14];
      v24 = v0[15];
      v26 = v0[12];
      v27 = v0[13];
      v29 = v0[10];
      v28 = v0[11];
      if (v23)
      {
        v54 = v0[9];
        v57 = v0[15];
        v30 = v0[7];
        v55 = v22;
        v31 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v31 = 136315650;
        v32 = sub_73ED0();
        v56 = v27;
        v34 = sub_19144(v32, v33, v58);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        v35 = sub_73ED0();
        v37 = sub_19144(v35, v36, v58);

        *(v31 + 14) = v37;
        *(v31 + 22) = 2048;
        v38 = sub_723F0();
        v39 = [v38 _code];

        (*(v28 + 8))(v26, v29);
        *(v31 + 24) = v39;
        _os_log_impl(&dword_0, v21, v55, "%s received %s unknown code: %ld", v31, 0x20u);
        swift_arrayDestroy();
        sub_7EBC();
        sub_7EBC();

        (*(v25 + 8))(v57, v56);
      }

      else
      {
        (*(v28 + 8))(v0[12], v0[10]);

        (*(v25 + 8))(v24, v27);
      }

      type metadata accessor for HealthFlowError();
      swift_allocObject();
      v46 = sub_B5BC(8);
      sub_7D5C();
      swift_allocError();
      *v47 = v46;
      swift_willThrow();
      v48 = v0[19];
      v50 = v0[15];
      v49 = v0[16];
      v51 = v0[12];

      sub_7EA4();
      sub_444B0();

      __asm { BRAA            X1, X16 }
    }

    v40 = v0[10];
    v41 = v0[6];
    v0[20] = sub_72400();
    v42 = swift_task_alloc();
    v0[21] = v42;
    *v42 = v0;
    v42[1] = sub_41ACC;
    v43 = v0[7];
    v44 = v0[8];
    sub_444B0();

    return sub_42D1C();
  }

  else
  {
    v6 = v0[10];
    v7 = v0[6];
    v0[23] = sub_72400();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_41BE0;
    v9 = v0[7];
    v10 = v0[8];
    sub_444B0();

    return sub_42258();
  }
}

uint64_t sub_41ACC()
{
  sub_273D0();
  v3 = v2;
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  v5[22] = v0;

  if (!v0)
  {
    v11 = v5[20];

    v5[27] = v3;
  }

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_41BE0()
{
  sub_273D0();
  v3 = v2;
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  v5[25] = v0;

  if (!v0)
  {
    v11 = v5[23];

    v5[26] = v3;
  }

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_41CF4()
{
  sub_273D0();
  v2 = *(v0 + 128);
  v3 = *(v0 + 208);
  sub_71F60();
  v4 = *(v0 + 208);
  sub_443AC();
  v5 = v1[35];
  sub_7C78(v1 + 31, v1[34]);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_B144();
  *(v0 + 232) = v7;
  *v7 = v8;
  v9 = sub_44360(v7);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9, v10, v11, v12, v13);
}

uint64_t sub_41D9C()
{
  sub_273D0();
  v2 = *(v0 + 128);
  v3 = *(v0 + 216);
  sub_71F30();
  v4 = *(v0 + 216);
  sub_443AC();
  v5 = v1[35];
  sub_7C78(v1 + 31, v1[34]);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_B144();
  *(v0 + 232) = v7;
  *v7 = v8;
  v9 = sub_44360(v7);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9, v10, v11, v12, v13);
}

uint64_t sub_41E44()
{
  sub_273D0();
  v2 = *v1;
  sub_44428();
  *v4 = v3;
  v5 = *(v2 + 232);
  *v4 = *v1;
  *(v3 + 240) = v0;

  sub_7F10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_41F68()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  sub_7EA4();

  return v7();
}

uint64_t sub_42020()
{
  sub_273D0();
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  sub_44468();

  sub_7EA4();

  return v3();
}

uint64_t sub_420A0()
{
  sub_273D0();
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  sub_44468();

  sub_7EA4();

  return v3();
}

uint64_t sub_42120()
{
  sub_273D0();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 240);
  sub_44468();

  sub_7EA4();

  return v5();
}

uint64_t sub_421C0()
{
  sub_273D0();
  swift_task_alloc();
  sub_B144();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_44444(v1);

  return sub_4151C();
}

uint64_t sub_42258()
{
  sub_7F1C();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 288) = v3;
  *(v1 + 136) = v4;
  v5 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64);
  *(v1 + 160) = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v6, v7, v8);
}

void sub_422EC()
{
  v1 = *(v0 + 136);

  v2 = sub_72250();
  if (v2 && (v3 = v2, v4 = [v2 displayAppName], v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_73790();

    sub_737F0();

    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 136);

    v7 = 1;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = sub_73350();
  sub_7CC4(v9, v7, 1, v11);
  v12 = *(v10 + 16);
  v13 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v13))
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 288);
    v16 = sub_273E8(*(v0 + 152), *(*(v0 + 152) + 24));
    *(v0 + 168) = v16;
    sub_4439C(v16);
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_427A4;
    sub_44484();

    sub_2EE04();
  }

  else
  {
    v19 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v19))
    {
      sub_444A4();
      v21 = sub_273E8((v20 + 40), *(v20 + 64));
      *(v0 + 192) = v21;
      sub_4439C(v21);
      v22 = swift_task_alloc();
      *(v0 + 200) = v22;
      *v22 = v0;
      v22[1] = sub_428BC;
      sub_44484();

      sub_61DCC();
    }

    else
    {
      v24 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v24))
      {
        sub_444A4();
        v26 = sub_273E8((v25 + 80), *(v25 + 104));
        *(v0 + 216) = v26;
        sub_4439C(v26);
        v27 = swift_task_alloc();
        *(v0 + 224) = v27;
        *v27 = v0;
        v27[1] = sub_429D4;
        sub_44484();

        sub_69728();
      }

      else
      {
        v29 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v29))
        {
          sub_444A4();
          v31 = sub_273E8((v30 + 120), *(v30 + 144));
          *(v0 + 240) = v31;
          sub_4439C(v31);
          v32 = swift_task_alloc();
          *(v0 + 248) = v32;
          *v32 = v0;
          v32[1] = sub_42AEC;
          sub_44484();

          sub_6634C();
        }

        else
        {
          v34 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v34))
          {
            sub_444A4();
            v36 = sub_273E8((v35 + 160), *(v35 + 184));
            *(v0 + 264) = v36;
            sub_4439C(v36);
            v37 = swift_task_alloc();
            *(v0 + 272) = v37;
            *v37 = v0;
            v37[1] = sub_42C04;
            sub_44484();

            sub_644D8();
          }

          else
          {
            sub_443E4();
            sub_44484();
          }
        }
      }
    }
  }
}

uint64_t sub_427A4()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_B15C();
  v6 = *(v5 + 176);
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 184) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_428BC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v6 = *(v5 + 200);
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_429D4()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v6 = *(v5 + 224);
  v8 = *(v7 + 216);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 232) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_42AEC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v6 = *(v5 + 248);
  v8 = *(v7 + 240);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 256) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_42C04()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v6 = *(v5 + 272);
  v8 = *(v7 + 264);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 280) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_42D1C()
{
  sub_7F1C();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64);
  v1[20] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v5, v6, v7);
}

void sub_42DAC()
{
  v1 = *(v0 + 136);

  v2 = sub_72250();
  if (v2 && (v3 = v2, v4 = [v2 displayAppName], v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_73790();

    sub_737F0();

    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 136);

    v7 = 1;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = sub_73350();
  sub_7CC4(v9, v7, 1, v11);
  v12 = *(v10 + 16);
  v13 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v13))
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 136);
    sub_7C78(*(v0 + 152), *(*(v0 + 152) + 24));
    sub_733C0();
    v16 = sub_B1EC();
    *(v0 + 168) = v16;
    sub_44438(v16);
    swift_task_alloc();
    sub_B144();
    *(v0 + 176) = v17;
    *v17 = v18;
    v17[1] = sub_4329C;
    sub_4434C();
    sub_44484();

    sub_2F4FC();
  }

  else
  {
    v20 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v20))
    {
      sub_44498();
      sub_7C78((v21 + 40), *(v21 + 64));
      sub_733C0();
      v22 = sub_B1EC();
      *(v0 + 192) = v22;
      sub_44438(v22);
      swift_task_alloc();
      sub_B144();
      *(v0 + 200) = v23;
      *v23 = v24;
      v23[1] = sub_43474;
      sub_4434C();
      sub_44484();

      sub_624C4();
    }

    else
    {
      v26 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v26))
      {
        sub_44498();
        sub_7C78((v27 + 80), *(v27 + 104));
        sub_733C0();
        v28 = sub_B1EC();
        *(v0 + 216) = v28;
        sub_44438(v28);
        swift_task_alloc();
        sub_B144();
        *(v0 + 224) = v29;
        *v29 = v30;
        v29[1] = sub_4364C;
        sub_4434C();
        sub_44484();

        sub_69DE8();
      }

      else
      {
        v32 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v32))
        {
          sub_44498();
          sub_7C78((v33 + 120), *(v33 + 144));
          sub_733C0();
          v34 = sub_B1EC();
          *(v0 + 240) = v34;
          sub_44438(v34);
          swift_task_alloc();
          sub_B144();
          *(v0 + 248) = v35;
          *v35 = v36;
          v35[1] = sub_43824;
          sub_4434C();
          sub_44484();

          sub_66A44();
        }

        else
        {
          v38 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v38))
          {
            sub_44498();
            sub_7C78((v39 + 160), *(v39 + 184));
            sub_733C0();
            v40 = sub_B1EC();
            *(v0 + 264) = v40;
            sub_44438(v40);
            swift_task_alloc();
            sub_B144();
            *(v0 + 272) = v41;
            *v41 = v42;
            v41[1] = sub_439FC;
            sub_44484();

            sub_64BF8();
          }

          else
          {
            sub_443E4();
            sub_44484();
          }
        }
      }
    }
  }
}

uint64_t sub_4329C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_B15C();
  v6 = *(v5 + 176);
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 184) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_433B4()
{
  sub_7F1C();
  v1 = *(v0 + 24);
  sub_44410();

  v2 = sub_B030();

  return v3(v2);
}

uint64_t sub_43414()
{
  sub_7F1C();
  v1 = *(v0 + 184);
  sub_44410();

  sub_7EA4();

  return v2();
}

uint64_t sub_43474()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v6 = *(v5 + 200);
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_4358C()
{
  sub_7F1C();
  v1 = *(v0 + 48);
  sub_44410();

  v2 = sub_B030();

  return v3(v2);
}

uint64_t sub_435EC()
{
  sub_7F1C();
  v1 = *(v0 + 208);
  sub_44410();

  sub_7EA4();

  return v2();
}

uint64_t sub_4364C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v6 = *(v5 + 224);
  v8 = *(v7 + 216);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 232) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_43764()
{
  sub_7F1C();
  v1 = *(v0 + 72);
  sub_44410();

  v2 = sub_B030();

  return v3(v2);
}

uint64_t sub_437C4()
{
  sub_7F1C();
  v1 = *(v0 + 232);
  sub_44410();

  sub_7EA4();

  return v2();
}

uint64_t sub_43824()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v6 = *(v5 + 248);
  v8 = *(v7 + 240);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 256) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_4393C()
{
  sub_7F1C();
  v1 = *(v0 + 96);
  sub_44410();

  v2 = sub_B030();

  return v3(v2);
}

uint64_t sub_4399C()
{
  sub_7F1C();
  v1 = *(v0 + 256);
  sub_44410();

  sub_7EA4();

  return v2();
}

uint64_t sub_439FC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v6 = *(v5 + 272);
  v8 = *(v7 + 264);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  *(v11 + 280) = v0;

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_43B14()
{
  sub_7F1C();
  v1 = *(v0 + 120);
  sub_44410();

  v2 = sub_B030();

  return v3(v2);
}

uint64_t sub_43B74()
{
  sub_7F1C();
  v1 = *(v0 + 280);
  sub_44410();

  sub_7EA4();

  return v2();
}

uint64_t sub_43BD4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(void))
{
  v6 = a3;
  sub_AFA4(a2, a1);
  result = a4(0);
  v8 = a1 + *(result + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_43C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_40DB0();
}

uint64_t sub_43E74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_41484();
}

uint64_t sub_43F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_440AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_421C0();
}

uint64_t sub_4415C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2CA00;

  return sub_40CEC(a1, a2);
}

uint64_t sub_44360(uint64_t a1)
{
  *(a1 + 8) = sub_41E44;
  v2 = *(v1 + 152);
  return *(v1 + 40);
}

uint64_t sub_4439C(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v3;
  v4 = *v1;
  return result;
}

uint64_t sub_443AC()
{
  v1[28] = v0;
  v3 = v1[19];
  v4 = v1[16];
  v5 = v1[8];

  return sub_72530();
}

uint64_t sub_443E4()
{

  return sub_73CC0();
}

uint64_t sub_44410()
{
  v2 = *(v0 + 160);

  return sub_2733C(v2);
}

uint64_t sub_44438(uint64_t result)
{
  *(result + 16) = v2;
  v3 = *v1;
  return result;
}

uint64_t sub_44468()
{
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
}

void sub_44498()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
}

void sub_444A4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 288);
}

uint64_t type metadata accessor for HealthWorkoutStartCATs()
{
  result = qword_A67C0;
  if (!qword_A67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_44558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_445AC(a1, a2);
}

uint64_t sub_445AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

uint64_t sub_44740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_44764, 0, 0);
}

uint64_t sub_44764()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = sub_17B28(&dword_78B68);
  *(v0 + 56) = v6;
  *v6 = v0;
  sub_17B14(v6);
  v7 = sub_17B00(18);

  return v8(v7);
}

uint64_t sub_448A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_73910();
  sub_7CC4(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v7;
  v16[5] = a4;
  v16[6] = a5;

  sub_54390(0, 0, v14, a7, v16);
}

uint64_t sub_4499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_449C0, 0, 0);
}

uint64_t sub_449C0()
{
  v1 = **(v0 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 40) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_72230();
  v6 = sub_17B28(&dword_78B68);
  *(v0 + 56) = v6;
  *v6 = v0;
  sub_17B14(v6);
  v7 = sub_17B00(23);

  return v8(v7);
}

uint64_t sub_44B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_44E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_44E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_44EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_44F30()
{
  result = qword_A68C0;
  if (!qword_A68C0)
  {
    type metadata accessor for CancelWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A68C0);
  }

  return result;
}

uint64_t sub_44F88()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_4499C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_45028()
{
  sub_7F1C();
  v2 = v1;
  v0[25] = v3;
  v0[26] = v4;
  v0[23] = v5;
  v0[24] = v6;
  v0[22] = v7;
  v0[20] = sub_72240();
  v0[21] = &protocol witness table for ResponseFactory;
  v0[17] = v2;

  return _swift_task_switch(sub_450B8, 0, 0);
}

uint64_t sub_450B8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = sub_73750();
  v0[2] = v3;
  v0[3] = v1;
  v0[4] = v2;
  sub_21FC0((v0 + 17), (v0 + 5));
  v0[10] = v4;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_451C8;

  return sub_2CCDC((v0 + 11), (v0 + 2), &_swiftEmptyArrayStorage);
}

uint64_t sub_451C8()
{
  sub_7F1C();
  v1 = *(*v0 + 216);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  return _swift_task_switch(sub_452B8, 0, 0);
}

uint64_t sub_452B8()
{
  sub_7F1C();
  v1 = *(v0 + 208);
  (*(v0 + 200))(v0 + 88);
  sub_16074(v0 + 88);
  sub_160DC(v0 + 16);
  sub_AE38((v0 + 136));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_45334()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_44740(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_453DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97CE0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_45428(char a1)
{
  result = 0x4E74756F6B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x756C61566C616F67;
      break;
    case 4:
      result = 0x6E456E65704F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SlotNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x45640);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_4569C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_453DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_456CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_45428(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_456FC()
{
  result = qword_A68C8;
  if (!qword_A68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A68C8);
  }

  return result;
}

uint64_t sub_45750(uint64_t a1, void *a2)
{
  v3 = sub_73960();
  v4 = *sub_734D0();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [a2 typeName];
    v9 = sub_73790();
    v11 = v10;

    v12 = sub_19144(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v5, v3, "Returning standard execution behavior for %s", v6, 0xCu);
    sub_AE38(v7);
  }

  sub_71DF0();
  return sub_71DE0();
}

uint64_t sub_45918()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_74F60;
  *(v8 + 32) = 1953459315;
  *(v8 + 40) = 0xE400000000000000;
  sub_5AEC(v0, v7, &qword_A3F98, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v7, 1, v9) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_5BAC((v8 + 48));
    sub_5C0C(v9);
    (*(v10 + 32))();
  }

  *(v8 + 80) = 1651664246;
  *(v8 + 88) = 0xE400000000000000;
  v11 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  sub_5AEC(v0 + *(v11 + 20), v5, &qword_A3F98, qword_75450);
  if (sub_5124(v5, 1, v9) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v9;
    sub_5BAC((v8 + 96));
    sub_5C0C(v9);
    (*(v12 + 32))();
  }

  return v8;
}

void *sub_45B44()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A69B8, &qword_78D20);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_46524(v0, v14);
  return v2;
}

uint64_t sub_45DBC()
{
  sub_7F1C();
  *(v0 + 72) = v1;
  *(v0 + 16) = v2;
  v3 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  *(v0 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v0 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_45E50, 0, 0);
}

uint64_t sub_45E50()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  v4 = sub_73350();
  sub_7CC4(v1, 1, 1, v4);
  sub_7CC4(v1 + *(v2 + 20), 1, 1, v4);
  sub_7508(v1, v3);
  v5 = sub_45918();
  *(v0 + 40) = v5;
  v6 = sub_46728(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_45F64;
  v7 = *(v0 + 16);

  return v9(0xD00000000000001ALL, 0x800000000007E910, v5);
}

uint64_t sub_45F64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_46120;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_460B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_460B0()
{
  sub_7F1C();
  sub_4658C(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_46120()
{
  sub_7F1C();
  sub_4658C(v0[4]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_4618C()
{
  v1 = sub_46728(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_46240;

  return v3(0xD000000000000014, 0x800000000007E8F0, _swiftEmptyArrayStorage);
}

uint64_t sub_46240()
{
  sub_7F1C();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t sub_4633C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_46390(a1, a2);
}

uint64_t sub_46390(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v14 - v11, &qword_A3F90, &unk_74FC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v12;
}

uint64_t sub_4658C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_465FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(a1, a2, v4);
}

uint64_t sub_46664(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);

  return sub_7CC4(a1, a2, a2, v4);
}

void sub_466BC()
{
  sub_3505C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_46728@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_46748()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_4678C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_467CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_46840@<X0>(uint64_t a1@<X8>)
{
  if (sub_72A60() & 1) != 0 || (sub_72A50())
  {
    v2 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_4:
    v3 = *v2;
    v4 = sub_72340();
    (*(*(v4 - 8) + 104))(a1, v3, v4);
    v5 = a1;
    v6 = 0;
    v7 = v4;
    goto LABEL_5;
  }

  if (sub_72A40())
  {
    v2 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_4;
  }

  v7 = sub_72340();
  v5 = a1;
  v6 = 1;
LABEL_5:

  return sub_7CC4(v5, v6, 1, v7);
}

uint64_t sub_46914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v129 = a2;
  v2 = sub_506C(&qword_A54E8, &qword_76BB0);
  v3 = sub_B1C0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v120 = &v106 - v6;
  v7 = sub_506C(&qword_A42E0, &unk_77840);
  v8 = sub_B1C0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_3E430(&v106 - v11);
  v114 = sub_729E0();
  v12 = sub_5394(v114);
  v113 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  sub_3E430(v17 - v16);
  v117 = sub_72AB0();
  v18 = sub_5394(v117);
  v109 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_C2A4();
  sub_3E430(v23 - v22);
  v24 = sub_72880();
  v25 = sub_5394(v24);
  v118 = v26;
  v119 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  v116 = v30 - v29;
  v31 = sub_72820();
  v32 = sub_5394(v31);
  v126 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_11544();
  v123 = v36;
  v38 = __chkstk_darwin(v37);
  v122 = &v106 - v39;
  __chkstk_darwin(v38);
  v124 = &v106 - v40;
  v127 = sub_72830();
  v41 = sub_5394(v127);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41);
  sub_C2A4();
  v48 = v47 - v46;
  v49 = sub_73720();
  v50 = sub_5394(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_11544();
  v121 = v55;
  __chkstk_darwin(v56);
  v58 = &v106 - v57;
  v59 = sub_736F0();
  swift_beginAccess();
  v60 = *(v52 + 16);
  v111 = v59;
  v110 = v60;
  v60(v58, v59, v49);
  v61 = sub_73710();
  v62 = sub_73970();
  v63 = os_log_type_enabled(v61, v62);
  v125 = v52;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v107 = v31;
    v66 = v65;
    v131[0] = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_19144(0xD000000000000016, 0x800000000007E930, v131);
    _os_log_impl(&dword_0, v61, v62, "%s", v64, 0xCu);
    sub_AE38(v66);
    v31 = v107;
    sub_7EBC();
    sub_7EBC();

    v67 = v125;
  }

  else
  {

    v67 = v52;
  }

  v68 = *(v67 + 8);
  v68(v58, v49);
  v69 = v49;
  sub_727E0();
  v70 = v127;
  v71 = (*(v43 + 88))(v48, v127);
  if (v71 != enum case for Parse.directInvocation(_:))
  {
    if (v71 != enum case for Parse.uso(_:))
    {
      sub_72070();
      return (*(v43 + 8))(v48, v70);
    }

    (*(v43 + 96))(v48, v70);
    v92 = v118;
    v91 = v119;
    v93 = v116;
    (*(v118 + 32))(v116, v48, v119);
    v94 = v112;
    sub_72870();
    v95 = sub_729D0();
    (*(v113 + 8))(v94, v114);
    v96 = v115;
    sub_5F1B0(v95, v115);

    v97 = v117;
    if (sub_5124(v96, 1, v117) == 1)
    {
      v98 = &qword_A42E0;
      v99 = &unk_77840;
      v100 = v96;
    }

    else
    {
      v102 = v109;
      v103 = v108;
      (*(v109 + 32))(v108, v96, v97);
      v104 = v120;
      sub_46840(v120);
      v105 = sub_72340();
      if (sub_5124(v104, 1, v105) != 1)
      {
        sub_AEF4(v120, &qword_A54E8, &qword_76BB0);
        sub_72060();
        (*(v102 + 8))(v103, v97);
        return (*(v92 + 8))(v93, v91);
      }

      (*(v102 + 8))(v103, v97);
      v98 = &qword_A54E8;
      v99 = &qword_76BB0;
      v100 = v120;
    }

    sub_AEF4(v100, v98, v99);
    sub_72070();
    return (*(v92 + 8))(v93, v91);
  }

  (*(v43 + 96))(v48, v70);
  v72 = v126;
  v73 = v124;
  (*(v126 + 32))(v124, v48, v31);
  v74 = *(v72 + 16);
  v75 = v122;
  v74(v122, v73, v31);
  if (sub_53D4C(v75) == 3)
  {
    v76 = v111;
    swift_beginAccess();
    v77 = v121;
    v110(v121, v76, v69);
    v74(v123, v73, v31);
    v78 = v77;
    v79 = sub_73710();
    v80 = sub_73980();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v130 = v82;
      *v81 = 136315138;
      v83 = v123;
      v127 = sub_72800();
      v128 = v69;
      v84 = v31;
      v86 = v85;
      v87 = *(v126 + 8);
      v87(v83, v84);
      v88 = sub_19144(v127, v86, &v130);
      v31 = v84;

      *(v81 + 4) = v88;
      _os_log_impl(&dword_0, v79, v80, "Unsupported DirectInvocation with identifier: %s", v81, 0xCu);
      sub_AE38(v82);
      sub_7EBC();
      v73 = v124;
      sub_7EBC();

      v89 = v121;
      v90 = v128;
    }

    else
    {

      v87 = *(v126 + 8);
      v87(v123, v31);
      v89 = v78;
      v90 = v69;
    }

    v68(v89, v90);
    sub_72070();
    return (v87)(v73, v31);
  }

  else
  {
    sub_72060();
    return (*(v72 + 8))(v73, v31);
  }
}

uint64_t sub_4727C()
{
  sub_7F1C();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_506C(&qword_A42E0, &unk_77840);
  sub_B1C0(v3);
  v5 = *(v4 + 64);
  v0[7] = sub_7ED4();
  v6 = sub_729E0();
  v0[8] = v6;
  sub_7E94(v6);
  v0[9] = v7;
  v9 = *(v8 + 64);
  v0[10] = sub_7ED4();
  v10 = sub_72AB0();
  v0[11] = v10;
  sub_7E94(v10);
  v0[12] = v11;
  v13 = *(v12 + 64);
  v0[13] = sub_7ED4();
  v14 = sub_72880();
  v0[14] = v14;
  sub_7E94(v14);
  v0[15] = v15;
  v17 = *(v16 + 64);
  v0[16] = sub_7ED4();
  v18 = sub_73720();
  v0[17] = v18;
  sub_7E94(v18);
  v0[18] = v19;
  v21 = *(v20 + 64);
  v0[19] = sub_7ED4();
  v22 = sub_506C(&qword_A54E8, &qword_76BB0);
  sub_B1C0(v22);
  v24 = *(v23 + 64) + 15;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v25 = sub_72340();
  v0[23] = v25;
  sub_7E94(v25);
  v0[24] = v26;
  v28 = *(v27 + 64) + 15;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v29 = sub_72820();
  v0[27] = v29;
  sub_7E94(v29);
  v0[28] = v30;
  v32 = *(v31 + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v33 = sub_72830();
  v0[32] = v33;
  sub_7E94(v33);
  v0[33] = v34;
  v36 = *(v35 + 64);
  v0[34] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_47598()
{
  v147 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[6];
  sub_727E0();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v7 = v0 + 31;
    v6 = v0[31];
    v8 = v0[34];
    v9 = v0[28];
    v10 = v0[30];
    v11 = v0[27];
    v144 = v0 + 27;
    (*(v0[33] + 96))(v8, v0[32]);
    v12 = sub_49CE8(v9);
    v13(v12, v8, v11);
    v14 = *(v9 + 16);
    v14(v10, v6, v11);
    v15 = sub_53D4C(v10);
    if (v15 == 2)
    {
      v47 = v0[22];
      sub_7CC4(v47, 1, 1, v0[23]);
      sub_AEF4(v47, &qword_A54E8, &qword_76BB0);
    }

    else if (v15 != 3)
    {
      v17 = v0 + 26;
      v16 = v0[26];
      v18 = v0[24];
      v135 = v0 + 24;
      v140 = v0 + 28;
      v20 = v0 + 23;
      v19 = v0[23];
      v22 = v0[21];
      v21 = v0[22];
      v23 = &enum case for ConfirmationResponse.rejected(_:);
      v24 = v0[5];
      if ((v15 & 1) == 0)
      {
        v23 = &enum case for ConfirmationResponse.confirmed(_:);
      }

      (*(v18 + 104))(v0[22], *v23, v0[23]);
      sub_49CCC(v21);
      v25 = sub_49CE8(v18);
      v26(v25, v21, v19);
      (*(v18 + 16))(v22, v16, v19);
      sub_49CCC(v22);
      sub_727D0();
      goto LABEL_21;
    }

    v141 = v0[31];
    v48 = v0[29];
    v49 = v0[27];
    v50 = v0[18];
    v51 = v0[19];
    v52 = v0[17];
    v53 = sub_736F0();
    swift_beginAccess();
    (*(v50 + 16))(v51, v53, v52);
    v14(v48, v141, v49);
    v54 = sub_73710();
    v55 = sub_73980();
    v56 = os_log_type_enabled(v54, v55);
    v58 = v0[28];
    v57 = v0[29];
    v59 = v0[27];
    v61 = v0[18];
    v60 = v0[19];
    v62 = v0[17];
    if (v56)
    {
      v142 = v0[17];
      v63 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v146 = v132;
      *v63 = 136315138;
      v126 = sub_72800();
      v137 = v60;
      v65 = v64;
      v66 = v59;
      v67 = *(v58 + 8);
      v67(v57, v66);
      v68 = sub_19144(v126, v65, &v146);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_0, v54, v55, "Unsupported DirectInvocation with identifier: %s", v63, 0xCu);
      sub_AE38(v132);
      sub_7EBC();
      sub_7EBC();

      (*(v61 + 8))(v137, v142);
    }

    else
    {

      v69 = *(v58 + 8);
      v69(v57, v59);
      v67 = v69;
      (*(v61 + 8))(v60, v62);
    }

    v70 = *v7;
    v71 = *v144;
    sub_345F0();
    v72 = swift_allocError();
    sub_49C90(v72, v73);
    v74 = sub_49CF4();
    (v67)(v74);
LABEL_19:
    v91 = v0[34];
    v93 = v0[30];
    v92 = v0[31];
    v94 = v0[29];
    v96 = v0[25];
    v95 = v0[26];
    v98 = v0[21];
    v97 = v0[22];
    v99 = v0[19];
    v100 = v0[20];
    v129 = v0[16];
    v133 = v0[13];
    v138 = v0[10];
    v143 = v0[7];

    sub_7EA4();
    goto LABEL_22;
  }

  v28 = v0[33];
  v27 = v0[34];
  v29 = v0[32];
  if (v5 != enum case for Parse.uso(_:))
  {
    sub_345F0();
    v42 = swift_allocError();
    sub_49C90(v42, v43);
    v44 = *(v28 + 8);
    v45 = sub_49CF4();
    v46(v45);
    goto LABEL_19;
  }

  v7 = v0 + 16;
  v30 = v0[16];
  v31 = v0[15];
  v140 = v0 + 15;
  v32 = v0[14];
  v144 = v0 + 14;
  v34 = v0[9];
  v33 = v0[10];
  v128 = v0[8];
  v131 = v0[7];
  v136 = v0[11];
  v35 = *(v28 + 96);
  v36 = sub_49CF4();
  v37(v36);
  (*(v31 + 32))(v30, v27, v32);
  sub_72870();
  v38 = sub_729D0();
  (*(v34 + 8))(v33, v128);
  sub_5F1B0(v38, v131);

  if (sub_5124(v131, 1, v136) == 1)
  {
    v39 = v0[7];
    v40 = &qword_A42E0;
    v41 = &unk_77840;
LABEL_18:
    sub_AEF4(v39, v40, v41);
    v83 = *v7;
    v84 = *v140;
    v85 = *v144;
    sub_345F0();
    v86 = swift_allocError();
    sub_49C90(v86, v87);
    v88 = *(v84 + 8);
    v89 = sub_49CF4();
    v90(v89);
    goto LABEL_19;
  }

  v17 = v0 + 13;
  v75 = v0[13];
  v76 = v0[23];
  v77 = v0[20];
  v78 = v0[11];
  v79 = v0[7];
  v80 = sub_49CE8(v0[12]);
  v81(v80);
  sub_46840(v77);
  if (sub_5124(v77, 1, v76) == 1)
  {
    v82 = v0[20];
    (*(v0[12] + 8))(v0[13], v0[11]);
    v40 = &qword_A54E8;
    v41 = &qword_76BB0;
    v39 = v82;
    goto LABEL_18;
  }

  v103 = v0[24];
  v102 = v0[25];
  v104 = v0[23];
  v105 = v0[20];
  v106 = v0[21];
  v135 = v0 + 12;
  v107 = v0[5];
  v108 = sub_49CE8(v103);
  v109(v108);
  (*(v103 + 16))(v106, v102, v104);
  sub_49CCC(v106);
  sub_727D0();
  (*(v103 + 8))(v102, v104);
  v20 = v0 + 11;
LABEL_21:
  v110 = *v7;
  v111 = *v144;
  v112 = *v140;
  v113 = *v17;
  v114 = *v20;
  v115 = *v135;
  v116 = v0[34];
  v118 = v0[30];
  v117 = v0[31];
  v119 = v0[29];
  v121 = v0[25];
  v120 = v0[26];
  v124 = v0[22];
  v125 = v0[21];
  v127 = v0[20];
  v130 = v0[19];
  v134 = v0[16];
  v139 = v0[13];
  v122 = v0[10];
  v145 = v0[7];
  (*(v115 + 8))(v113, v114);
  (*(v112 + 8))(v110, v111);

  sub_7EA4();
LABEL_22:

  return v101();
}

uint64_t sub_47DBC()
{
  sub_7F1C();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v5 = sub_71F70();
  sub_B1C0(v5);
  v7 = *(v6 + 64);
  v1[44] = sub_7ED4();
  v8 = sub_72580();
  v1[45] = v8;
  sub_7E94(v8);
  v1[46] = v9;
  v11 = *(v10 + 64);
  v1[47] = sub_7ED4();
  v12 = sub_71560();
  v1[48] = v12;
  sub_7E94(v12);
  v1[49] = v13;
  v15 = *(v14 + 64);
  v1[50] = sub_7ED4();
  v16 = sub_506C(&unk_A6CC0, &qword_78F60);
  sub_B1C0(v16);
  v18 = *(v17 + 64);
  v1[51] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_47F00()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[43];
  v5 = v0[41];
  v6 = sub_723E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_723D0();
  v9 = v4[4];
  sub_7C78(v4, v4[3]);
  sub_71E90();
  sub_723C0();
  v11 = v10;

  (*(v2 + 8))(v1, v3);
  if (v11)
  {
    v12 = v0[51];
    v13 = v0[41];
    sub_733C0();
    sub_733E0();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v0[51];
  v16 = v0[43];
  v17 = sub_733F0();
  sub_7CC4(v15, v14, 1, v17);
  sub_7C78((v16 + 80), *(v16 + 104));
  sub_21FC0(v16, (v0 + 26));
  v18 = sub_73750();
  v0[52] = v18;
  v19 = async function pointer to TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)[1];
  v20 = swift_task_alloc();
  v0[53] = v20;
  *v20 = v0;
  v20[1] = sub_480EC;
  v21 = v0[51];

  return TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)(v21, v0 + 26, v18);
}

uint64_t sub_480EC()
{
  sub_273D0();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  sub_B044();
  *v9 = v8;
  *(v3 + 432) = v10;
  *(v3 + 440) = v0;

  sub_AEF4(v3 + 208, &qword_A6AD0, &qword_78F68);

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_48224()
{
  sub_273D0();
  v1 = sub_53F48(*(v0 + 344), 0);
  v2 = sub_48BBC();
  v4 = v3;

  *(v0 + 448) = v2;
  *(v0 + 456) = v4;
  v5 = async function pointer to static LabelTemplates.yes()[1];
  v6 = swift_task_alloc();
  *(v0 + 464) = v6;
  *v6 = v0;
  v6[1] = sub_482DC;

  return static LabelTemplates.yes()();
}

uint64_t sub_482DC()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[36] = v1;
  v3[37] = v5;
  v3[38] = v6;
  v3[39] = v0;
  v8 = *(v7 + 464);
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  v3[59] = v11;
  v3[60] = v0;

  if (v0)
  {
    sub_49A7C(v3[56], v3[57]);
  }

  sub_7F10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_483E4()
{
  sub_273D0();
  v1 = sub_53F48(*(v0 + 344), 1u);
  v2 = sub_48BBC();
  v4 = v3;

  *(v0 + 488) = v2;
  *(v0 + 496) = v4;
  v5 = async function pointer to static LabelTemplates.no()[1];
  v6 = swift_task_alloc();
  *(v0 + 504) = v6;
  *v6 = v0;
  v6[1] = sub_4849C;

  return static LabelTemplates.no()();
}

uint64_t sub_4849C()
{
  sub_273D0();
  v3 = v2;
  v5 = v4;
  sub_B0BC();
  v7 = v6;
  sub_44428();
  *v8 = v7;
  v10 = *(v9 + 504);
  v11 = *v1;
  sub_B044();
  *v12 = v11;
  v7[64] = v0;

  if (v0)
  {
    v13 = v7[61];
    v14 = v7[62];
    v15 = v7[59];
    sub_49A7C(v7[56], v7[57]);
    sub_49A7C(v13, v14);
  }

  else
  {
    v16 = v7[37];
    v7[65] = v3;
    v7[66] = v5;
    v7[67] = v16;
  }

  sub_7F10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_485D8()
{
  sub_273D0();
  v1 = *(v0 + 408);

  sub_AEF4(v1, &unk_A6CC0, &qword_78F60);
  v2 = *(v0 + 480);
  sub_49CB0();

  sub_7EA4();

  return v3();
}

uint64_t sub_48674()
{
  sub_273D0();
  sub_AEF4(*(v0 + 408), &unk_A6CC0, &qword_78F60);
  v1 = *(v0 + 440);
  sub_49CB0();

  sub_7EA4();

  return v2();
}

uint64_t sub_48704()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 472);
  v5 = *(v0 + 432);
  v6 = *(v0 + 376);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 448);
  *(v0 + 96) = v1;
  *(v0 + 104) = v4;
  *(v0 + 112) = *(v0 + 488);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  sub_71F40();
  v10 = swift_task_alloc();
  v10[2] = *(v9 + 16);
  v10[3] = *(v9 + 24);
  v10[4] = v8;
  sub_72530();

  v11 = sub_72240();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 544) = sub_72230();
  v14 = *(v0 + 96);
  v15 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v14;
  v16 = *(v0 + 128);
  *(v0 + 48) = v15;
  *(v0 + 64) = v16;
  *(v0 + 272) = &type metadata for HealthUIPluginModel;
  *(v0 + 280) = sub_49AE0();
  v17 = swift_allocObject();
  *(v0 + 248) = v17;
  sub_49B84(v0 + 16, v17 + 16);
  sub_506C(&unk_A63F0, &unk_760C0);
  v18 = swift_allocObject();
  *(v0 + 552) = v18;
  *(v18 + 16) = xmmword_752C0;
  *(v18 + 32) = v5;
  sub_49BE0(v0 + 80, v0 + 144);
  v19 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v25 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v20 = v5;
  v21 = swift_task_alloc();
  *(v0 + 560) = v21;
  *v21 = v0;
  v21[1] = sub_48924;
  v22 = *(v0 + 376);
  v23 = *(v0 + 320);

  return v25(v23, v0 + 248, v18, v22);
}

uint64_t sub_48924()
{
  sub_273D0();
  sub_B0BC();
  v2 = v1;
  sub_44428();
  *v3 = v2;
  v5 = v4[70];
  v6 = v4[69];
  v7 = v4[68];
  v8 = *v0;
  sub_B044();
  *v9 = v8;

  sub_AE38((v2 + 248));
  sub_7F10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_48A4C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);

  sub_49C3C(v0 + 80);
  (*(v4 + 8))(v3, v5);
  sub_AEF4(v2, &unk_A6CC0, &qword_78F60);

  sub_7EA4();

  return v7();
}

uint64_t sub_48B20()
{
  sub_273D0();
  v1 = *(v0 + 408);

  sub_AEF4(v1, &unk_A6CC0, &qword_78F60);
  v2 = *(v0 + 512);
  sub_49CB0();

  sub_7EA4();

  return v3();
}

uint64_t sub_48BBC()
{
  v1 = [v0 dictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v8 = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v8];
  v4 = v8;
  if (!v3)
  {
    v6 = v4;
    sub_714C0();

    swift_willThrow();

    return 0;
  }

  v5 = sub_71510();

  return v5;
}

uint64_t sub_48CC8(uint64_t a1, void *a2)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  sub_48DC0(&v10 - v5);
  v7 = sub_721F0();
  sub_7CC4(v6, 0, 1, v7);
  sub_72550();
  v8 = a2[4];
  sub_7C78(a2, a2[3]);
  sub_71ED0();
  sub_72540();
  return sub_72570();
}

uint64_t sub_48DC0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_71550();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  __chkstk_darwin(v1);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_506C(&qword_A6AE0, qword_78F70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v46 = &v42 - v6;
  v45 = sub_729A0();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_72B80();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_72A30();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v20 = sub_72A00();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_72AB0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v42 - v28;
  sub_721E0();
  sub_72AA0();
  sub_729F0();
  sub_72A90();
  sub_72A20();
  v30 = *(v23 + 16);
  v48 = v22;
  v30(v27, v29, v22);
  v31 = v13;
  v32 = v44;
  sub_72A10();
  sub_72B70();
  (*(v32 + 16))(v17, v19, v31);
  v33 = v45;
  sub_72B50();
  v34 = v46;
  v35 = v47;
  sub_71540();
  sub_72BF0();
  (*(v50 + 8))(v35, v51);
  if (sub_5124(v34, 1, v33) == 1)
  {
    sub_72990();
    if (sub_5124(v34, 1, v33) != 1)
    {
      sub_AEF4(v34, &qword_A6AE0, qword_78F70);
    }
  }

  else
  {
    (*(v43 + 32))(v49, v34, v33);
  }

  sub_72B40();
  sub_506C(&qword_A4FC0, &qword_76600);
  v36 = *(v9 + 72);
  v37 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_74B40;
  v39 = v38 + v37;
  v40 = v52;
  (*(v9 + 16))(v39, v12, v52);
  sub_72160();
  (*(v9 + 8))(v12, v40);
  (*(v32 + 8))(v19, v31);
  return (*(v23 + 8))(v29, v48);
}

uint64_t sub_49360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_4727C();
}

uint64_t sub_49400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_494CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_ACC4;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_49674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_47DBC();
}

uint64_t sub_49724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_497F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_498BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_49AD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_48CC8(a1, *(v1 + 32));
}

unint64_t sub_49AE0()
{
  result = qword_A6AD8;
  if (!qword_A6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6AD8);
  }

  return result;
}

uint64_t sub_49B34()
{
  sub_49A7C(v0[2], v0[3]);
  v1 = v0[5];

  sub_49A7C(v0[6], v0[7]);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_49C90(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_49CB0()
{
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[47];
  v5 = v0[44];
}

uint64_t sub_49CCC(uint64_t a1)
{

  return sub_7CC4(a1, 0, 1, v1);
}

uint64_t type metadata accessor for HealthWorkoutPauseCATs()
{
  result = qword_A6AE8;
  if (!qword_A6AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_49DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_74F60;
  *(v11 + 32) = 1953459315;
  *(v11 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v10, &qword_A3F98, qword_75450);
  v12 = sub_73350();
  if (sub_5124(v10, 1, v12) == 1)
  {
    sub_5B50(v10, &qword_A3F98, qword_75450);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    sub_5BAC((v11 + 48));
    sub_5C0C(v12);
    (*(v13 + 32))();
  }

  *(v11 + 80) = 0x4E74756F6B726F77;
  *(v11 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v8, &qword_A3F98, qword_75450);
  if (sub_5124(v8, 1, v12) == 1)
  {
    sub_5B50(v8, &qword_A3F98, qword_75450);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    sub_5BAC((v11 + 96));
    sub_5C0C(v12);
    (*(v14 + 32))();
  }

  sub_732A0();
}

uint64_t sub_4A090(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_74B40;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C(v7);
    (*(v8 + 32))();
  }

  sub_732A0();
}

uint64_t sub_4A22C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_4A280(a1, a2);
}

uint64_t sub_4A280(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v14 - v11, &qword_A3F90, &unk_74FC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v12;
}

void sub_4A414()
{
  sub_11784();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_73720();
  v8 = sub_5394(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_C2A4();
  v15 = v14 - v13;
  if (!v4)
  {
    v26[1] = sub_29A54();
    sub_506C(&qword_A4528, &qword_75860);
    v6 = sub_737A0();
    v4 = v16;
  }

  *(v2 + 16) = v6;
  *(v2 + 24) = v4;
  v17 = sub_736E0();
  sub_7EEC();
  (*(v10 + 16))(v15, v17, v7);

  v18 = sub_73710();
  v19 = sub_73970();

  if (os_log_type_enabled(v18, v19))
  {
    sub_221D8();
    v20 = sub_4C744();
    v26[0] = v20;
    *v1 = 136315138;
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);

    v23 = sub_19144(v21, v22, v26);

    *(v1 + 4) = v23;
    sub_4C7D0(&dword_0, v24, v25, "Starting to resolve apps for %s synchronously");
    sub_AE38(v20);
    sub_7EBC();
    sub_4C70C();
  }

  (*(v10 + 8))(v15, v7);
  sub_11754();
}

void sub_4A5E4()
{
  sub_11784();
  v108 = v0;
  v110 = v1;
  v106 = sub_731F0();
  v2 = sub_5394(v106);
  v105 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  sub_3E430(v7 - v6);
  v8 = sub_72830();
  v9 = sub_5394(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_C2A4();
  v16 = v15 - v14;
  v17 = sub_73720();
  v18 = sub_5394(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_198CC();
  sub_3E420();
  __chkstk_darwin(v23);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v24);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v25);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v26);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v27);
  v29 = v104 - v28;
  v30 = sub_736E0();
  sub_7EEC();
  v31 = v20;
  v32 = v20 + 16;
  v33 = *(v20 + 16);
  v34 = v30;
  v35 = v17;
  v113 = v32;
  v112 = v33;
  v33(v29, v30, v17);
  v36 = sub_73710();
  v37 = sub_73970();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = sub_22324();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Begin app disambiguation resolveApp", v38, 2u);
    sub_4C728();
  }

  v114 = *(v31 + 8);
  v39 = v17;
  v111 = v31 + 8;
  v114(v29, v17);
  sub_727E0();
  sub_DDA8();
  v41 = v40;
  v42 = *(v11 + 8);
  v42(v16, v8);
  if (v41)
  {
    sub_4C6F0();
    v43 = v109;
    v112(v109, v34, v35);

    v44 = sub_73710();
    v45 = sub_73970();

    if (os_log_type_enabled(v44, v45))
    {
      sub_221D8();
      v46 = sub_4C744();
      v119 = v46;
      *v16 = 136315138;
      v118 = v41;
      sub_733D0();
      sub_4C668();
      sub_4C608(v47, 255, v48);
      v49 = sub_73DA0();
      v51 = sub_19144(v49, v50, &v119);

      *(v16 + 4) = v51;
      _os_log_impl(&dword_0, v44, v45, "Found app in intent, using that (%s)", v16, 0xCu);
      sub_AE38(v46);
      sub_7EBC();
      sub_4C70C();
    }

    v114(v43, v39);
    sub_72300();
    sub_722F0();
  }

  else
  {
    sub_727E0();
    sub_ED34();
    v53 = v52;
    v55 = v54;
    v42(v16, v8);
    sub_4C6F0();
    v56 = v107;
    sub_4C650();
    v57();

    v58 = v39;
    v59 = sub_73710();
    v60 = sub_73970();

    v61 = os_log_type_enabled(v59, v60);
    v110 = v53;
    if (v61)
    {
      sub_221D8();
      v62 = sub_4C744();
      v118 = v62;
      *v16 = 136315138;
      v117[0] = v53;
      v117[1] = v55;
      sub_506C(&qword_A6D00, &unk_75D30);
      v63 = sub_73A80();
      v65 = sub_19144(v63, v64, &v118);

      *(v16 + 4) = v65;
      _os_log_impl(&dword_0, v59, v60, "Got a modality: %s", v16, 0xCu);
      sub_AE38(v62);
      sub_7EBC();
      sub_4C70C();
    }

    v66 = v111;
    v114(v56, v58);
    v67 = *(v108 + 16);
    v68 = *(v108 + 24);

    sub_4C4BC(&off_97DB8);
    v69 = sub_73400();

    sub_4C6F0();
    sub_4C650();
    v70();

    v71 = sub_73710();
    v72 = sub_73970();
    if (sub_4C760(v72))
    {
      v73 = sub_221D8();
      *v73 = 134217984;
      *(v73 + 4) = sub_FB90(v69);

      sub_4C6A8();
      _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
      sub_4C728();
    }

    else
    {
    }

    sub_4C7C4();
    v79();
    sub_72840();
    sub_7C78(v117, v117[3]);
    sub_4C698();
    if (sub_71EF0())
    {
      v80 = v104[1];
      sub_73460();
      v81 = sub_73430();
      v82 = defaultWorkoutApp(for:workoutName:)(v80, v81);
      (*(v105 + 8))(v80, v106);
      sub_4C6F0();
      sub_4C650();
      v83();

      v84 = sub_73710();
      v85 = sub_73970();

      if (os_log_type_enabled(v84, v85))
      {
        sub_221D8();
        v86 = sub_4C744();
        v115 = v82;
        v116 = v86;
        *v66 = 136315138;
        sub_733D0();
        sub_4C668();
        sub_4C608(v87, 255, v88);
        v89 = sub_73DA0();
        v91 = sub_19144(v89, v90, &v116);

        *(v66 + 4) = v91;
        sub_4C7D0(&dword_0, v92, v93, "Picked the default app for this:  %s");
        sub_AE38(v86);
        sub_7EBC();
        sub_4C70C();
      }

      sub_4C7C4();
      v94();
      sub_1DEF8();
    }

    else
    {

      sub_4C6F0();
      sub_4C650();
      v95();
      v96 = sub_73710();
      v97 = sub_73970();
      if (sub_4C760(v97))
      {
        *sub_22324() = 0;
        sub_4C6A8();
        _os_log_impl(v98, v99, v100, v101, v102, 2u);
        sub_4C728();
      }

      sub_4C7C4();
      v103();
      sub_1DB18();
    }

    sub_AE38(v117);
  }

  sub_11754();
}

uint64_t sub_4AF34(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_72090();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_4C6B8();
  sub_4C680();
  sub_4C608(v7, 255, v8);
  v9 = swift_allocError();
  *v10 = v6;
  v12[0] = v9;
  v13 = 1;
  a2(v12);
  return sub_AEF4(v12, &qword_A4810, &unk_760A0);
}

void sub_4AFFC()
{
  sub_11784();
  v1 = v0;
  v2 = sub_73720();
  v3 = sub_5394(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_198CC();
  v56 = (v8 - v9);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = sub_72830();
  v14 = sub_5394(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_C2A4();
  v21 = v20 - v19;
  v59 = v1;
  sub_727E0();
  v58 = v13;
  v57 = sub_737A0();
  v23 = v22;
  v24 = sub_736E0();
  sub_7EEC();
  v54 = *(v5 + 16);
  v55 = v24;
  v54(v12, v24, v2);

  v25 = sub_73710();
  LOBYTE(v13) = sub_73970();

  if (os_log_type_enabled(v25, v13))
  {
    sub_221D8();
    v53 = v2;
    v26 = sub_4C794();
    v52 = v5;
    v27 = v26;
    v61 = v26;
    *v2 = 136315138;
    v28 = sub_19144(v57, v23, &v61);

    *(v2 + 4) = v28;
    sub_4C6A8();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_AE38(v27);
    v5 = v52;
    sub_7EBC();
    v2 = v53;
    sub_7EBC();
  }

  else
  {
  }

  v34 = *(v5 + 8);
  v34(v12, v2);
  sub_727E0();
  sub_DDA8();
  v36 = v35;
  (*(v16 + 8))(v21, v58);
  if (v36)
  {
    sub_725B0();
    sub_725A0();
  }

  else
  {
    sub_727E0();
    v37 = sub_737A0();
    v39 = v38;
    v40 = v55;
    sub_7EEC();
    v41 = v56;
    v54(v56, v40, v2);
    v42 = sub_73710();
    v43 = sub_73980();
    if (sub_4C760(v43))
    {
      sub_221D8();
      v44 = sub_4C794();
      v60 = v44;
      *v2 = 136315138;
      v45 = sub_19144(v37, v39, &v60);

      *(v2 + 4) = v45;
      sub_4C6A8();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_AE38(v44);
      sub_4C70C();
      sub_4C728();
    }

    else
    {
    }

    v34(v41, v2);
    sub_725B0();
    sub_72590();
  }

  sub_11754();
}

void sub_4B3DC()
{
  sub_11784();
  v129 = v0;
  v130 = v1;
  v2 = sub_506C(&qword_A4050, &unk_75290);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_3E430(&v111 - v4);
  v117 = sub_72270();
  v5 = sub_5394(v117);
  v116 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_C2A4();
  sub_3E430(v10 - v9);
  v11 = sub_72890();
  v12 = sub_5394(v11);
  v119 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  sub_3E430(v17 - v16);
  v122 = sub_73390();
  v18 = sub_5394(v122);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_C2A4();
  v123 = (v24 - v23);
  v124 = sub_506C(&unk_A6CD0, &unk_75B80);
  v25 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  sub_198CC();
  sub_3E420();
  __chkstk_darwin(v26);
  v133 = (&v111 - v27);
  v28 = sub_71560();
  v29 = sub_5394(v28);
  v121 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_C2A4();
  sub_3E430(v34 - v33);
  v35 = sub_73720();
  v36 = sub_5394(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_198CC();
  v43 = (v41 - v42);
  v45 = __chkstk_darwin(v44);
  v47 = &v111 - v46;
  __chkstk_darwin(v45);
  v49 = &v111 - v48;
  v50 = sub_736E0();
  sub_7EEC();
  v51 = *(v38 + 16);
  v128 = v50;
  v134 = v35;
  v127 = v38 + 16;
  v126 = v51;
  v51(v49, v50, v35);

  v52 = sub_73710();
  v53 = sub_73970();

  v54 = os_log_type_enabled(v52, v53);
  v132 = v38;
  v115 = v47;
  v113 = v43;
  if (v54)
  {
    sub_221D8();
    v55 = sub_4C794();
    v112 = v11;
    v56 = v55;
    v137[0] = v55;
    *v38 = 136315138;
    sub_733D0();
    v57 = sub_73880();
    v59 = v28;
    v60 = v20;
    v61 = sub_19144(v57, v58, v137);

    *(v38 + 4) = v61;
    v20 = v60;
    v28 = v59;
    _os_log_impl(&dword_0, v52, v53, "Making disambiguation prompt for apps: %s", v38, 0xCu);
    sub_AE38(v56);
    v11 = v112;
    sub_7EBC();
    sub_4C728();

    v62 = *(v132 + 8);
  }

  else
  {

    v62 = *(v38 + 8);
  }

  v62(v49, v134);
  sub_72840();
  sub_7C78(v137, v138);
  v63 = v120;
  sub_4C698();
  sub_71E90();
  v64 = sub_72390();
  (*(v121 + 8))(v63, v28);
  sub_AE38(v137);
  sub_72840();
  sub_72840();
  sub_7C78(v141, v142);
  sub_4C698();
  sub_71EE0();
  sub_723A0();
  sub_AE38(v137);
  sub_AE38(v141);
  sub_73280();
  v65 = sub_73270();
  sub_506C(&qword_A4818, &unk_75B90);
  v66 = *(v20 + 72);
  v67 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_74B40;
  sub_73380();
  v137[0] = v68;
  sub_4C608(&unk_A6CE0, 255, &type metadata accessor for CATOption);
  sub_506C(&qword_A4820, qword_77FF0);
  sub_14D40();
  v69 = v123;
  sub_73B10();
  v70 = type metadata accessor for HealthCATWrapper();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  sub_4F648(v65, v69);
  v73 = v133;
  sub_4F974();

  v74 = v73;
  v75 = v125;
  sub_14DA4(v74, v125);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v137[0] = *v75;
    sub_506C(&qword_A4828, qword_75BA0);
    swift_willThrowTypedImpl();
    sub_7EEC();
    v76 = v113;
    v77 = v134;
    sub_4C7B0();
    v78();
    v79 = sub_73710();
    v80 = sub_73980();
    if (sub_4C760(v80))
    {
      v81 = sub_22324();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v65, "Something failed with the clarification views", v81, 2u);
      sub_7EBC();
    }

    v62(v76, v77);
    v82 = sub_72090();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v85 = sub_4C6B8();
    sub_4C680();
    sub_4C608(v86, 255, v87);
    v88 = swift_allocError();
    *v89 = v85;
    v137[0] = v88;
    v140 = 1;
    v90 = sub_4C77C();
    v91(v90);

    sub_AEF4(v137, &qword_A4810, &unk_760A0);
    v92 = &unk_A6CD0;
    v93 = &unk_75B80;
    v94 = v133;
  }

  else
  {
    v123 = v62;
    v124 = v64;
    v95 = v116;
    v96 = v114;
    v97 = v117;
    (*(v116 + 32))(v114, v75, v117);
    sub_72840();
    sub_72840();
    sub_7C78(v141, v142);
    sub_4C698();
    sub_71ED0();
    v98 = sub_721F0();
    v99 = v118;
    sub_7CC4(v118, 1, 1, v98);
    v136 = 0;
    memset(v135, 0, sizeof(v135));
    sub_72100();

    sub_AEF4(v135, &unk_A6D20, &qword_76D80);
    sub_AEF4(v99, &qword_A4050, &unk_75290);
    sub_AE38(v137);
    (*(v95 + 8))(v96, v97);
    sub_AE38(v141);
    sub_7EEC();
    v100 = v115;
    v101 = v134;
    sub_4C7B0();
    v102();
    v103 = sub_73710();
    v104 = sub_73970();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = sub_22324();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "Building dialog and sending success", v105, 2u);
      sub_7EBC();
    }

    v123(v100, v101);
    v138 = v11;
    v139 = &protocol witness table for AceOutput;
    v106 = sub_5BAC(v137);
    v107 = v119;
    v108 = v131;
    (*(v119 + 16))(v106, v131, v11);
    v140 = 0;
    v109 = sub_4C77C();
    v110(v109);

    (*(v107 + 8))(v108, v11);
    sub_AEF4(v133, &unk_A6CD0, &unk_75B80);
    v92 = &qword_A4810;
    v93 = &unk_760A0;
    v94 = v137;
  }

  sub_AEF4(v94, v92, v93);
  sub_11754();
}

uint64_t sub_4BF04()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_4BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_14A58;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_4C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_14EC4;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_4C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_14EC4;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)(a1, a2, a3, a4);
}

void *sub_4C2D8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_4C2FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_4C32C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_506C(qword_A6C30, &qword_79158);
  result = sub_73B40();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    sub_73E40();

    sub_73810();
    result = sub_73E60();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_73DB0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_4C4BC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_506C(&qword_A6C28, &qword_79150);
  result = sub_73B40();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v5++);
    v8 = v3[5];
    sub_73E40();
    sub_73E50(v7);
    result = sub_73E60();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(v3[6] + 8 * v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(v3[6] + 8 * v10) = v7;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    v3[2] = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_4C608(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4C6B8()
{

  return sub_72080();
}

uint64_t sub_4C6F0()
{

  return swift_beginAccess();
}

uint64_t sub_4C70C()
{
}

uint64_t sub_4C728()
{
}

uint64_t sub_4C744()
{

  return swift_slowAlloc();
}