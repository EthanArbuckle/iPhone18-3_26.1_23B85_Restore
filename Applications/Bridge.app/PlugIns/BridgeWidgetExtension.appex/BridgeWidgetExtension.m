unint64_t sub_100001EC4()
{
  result = qword_100068458;
  if (!qword_100068458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068458);
  }

  return result;
}

unint64_t sub_100001F1C()
{
  result = qword_100068460;
  if (!qword_100068460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068460);
  }

  return result;
}

unint64_t sub_100001FDC()
{
  result = qword_100068468;
  if (!qword_100068468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068468);
  }

  return result;
}

uint64_t sub_100002030@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100041EC8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100003930(&qword_100068488, &qword_100042768);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_100003930(&qword_100068490, &qword_100042770);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = v26 - v13;
  v14 = sub_100003930(&qword_100068498, &qword_100042778);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v29 = v26 - v17;
  v26[1] = qword_1000682B0;

  sub_100041EB8();
  sub_100003930(&qword_1000684A0, &qword_100042780);
  sub_100003930(&qword_1000684A8, &qword_100042788);
  sub_100001FDC();
  sub_100003B0C();
  sub_100003C78();
  sub_100041ED8();
  [objc_opt_self() isPingMySupportedOnActiveDevice];
  sub_100041EE8();
  v18 = *(v28 + 8);
  v18(v7, v3);
  v19 = sub_100003D80(&qword_1000684F8, &qword_100068488, &qword_100042768);
  v20 = v27;
  sub_100041B48();
  v18(v9, v3);
  sub_100041B08();
  v35 = v3;
  v36 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v22 = v30;
  sub_100041B58();

  (*(v31 + 8))(v20, v22);
  sub_100041B08();
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  sub_100041B38();

  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_10000254C@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_100041E28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v61 = sub_100003930(&qword_100068500, &qword_1000427A8);
  v10 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v60 = &v52 - v11;
  v12 = sub_100041E58();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v52 - v17;
  v18 = sub_100041EA8();
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 8);
  v20 = __chkstk_darwin(v18);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v52 - v26;
  __chkstk_darwin(v25);
  v29 = &v52 - v28;
  v63 = sub_100003930(&qword_1000684C0, &qword_100042790);
  v30 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v32 = &v52 - v31;
  v33 = *a1;
  sub_100041B08();
  sub_100041DA8();
  if (v33 == 1)
  {
    sub_100041E98();
    sub_100041E68();
    v55 = v32;
    v34 = v54;
    v35 = *(v53 + 1);
    v53 = v35;
    v35(v29, v54);
    sub_100041E88();
    v35(v27, v34);
    sub_100041E78();
    v35(v24, v34);
    sub_100041E48();
    v36 = v57;
    sub_100041E38();
    v38 = v58;
    v37 = v59;
    v39 = *(v58 + 8);
    v39(v16, v59);
    v40 = *(v63 + 36);
    v41 = &v55[v40];
    v42 = sub_100041B88();
    (*(v38 + 16))(&v41[*(v42 + 20)], v36, v37);
    sub_100003F04(&qword_100068510, &type metadata accessor for VariableColorSymbolEffect);
    v43 = v56;
    sub_100041DF8();
    v39(v36, v37);
    v53(v43, v34);
    v32 = v55;
  }

  else
  {
    sub_100041E18();
    v44 = v55;
    sub_100041E08();
    v45 = *(v4 + 8);
    v53 = (v4 + 8);
    v56 = v45;
    (v45)(v9, v3);
    v54 = v3;
    sub_100041E48();
    v46 = v57;
    sub_100041E38();
    v47 = v58;
    v48 = v59;
    v49 = *(v58 + 8);
    v49(v16, v59);
    v40 = *(v63 + 36);
    v42 = sub_100041B88();
    (*(v47 + 16))(&v32[v40 + *(v42 + 20)], v46, v48);
    sub_100003F04(&qword_100068508, &type metadata accessor for WiggleSymbolEffect);
    v50 = v54;
    sub_100041DF8();
    v49(v46, v48);
    (v56)(v44, v50);
  }

  v32[v40 + *(v42 + 24)] = 1;
  sub_100003E2C(v32, v60);
  swift_storeEnumTagMultiPayload();
  sub_100003B90();
  sub_100041B78();
  return sub_100003E9C(v32);
}

double sub_100002BC8@<D0>(char a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 1)
  {
    if (a1)
    {
      sub_100041B08();
      v4 = sub_100041C58();
      v6 = v5;
      v8 = v7;
      v10 = v9 & 1;
      sub_100003E1C(v4, v5, v9 & 1);
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v10 = 0;
      v8 = 0;
    }

    sub_100003930(&qword_1000684F0, &qword_1000427A0);
    sub_100003D04();
    sub_100041B78();
    sub_100003DC8(v4, v6, v10, v8);
  }

  else
  {
    sub_100041B08();
    sub_100041C58();
    sub_100003930(&qword_1000684F0, &qword_1000427A0);
    sub_100003D04();
    sub_100041B78();
  }

  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 32) = v14;
  return result;
}

uint64_t sub_100002D88(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_100041D18();
  }

  else
  {
    sub_100041CD8();
    sub_100041B08();
    sub_100041C58();
  }

  return sub_100041F18();
}

uint64_t sub_100002E58()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_100069E80);
  sub_1000038F8(v0, qword_100069E80);
  return sub_1000417B8();
}

uint64_t sub_100002EBC(uint64_t a1, char a2)
{
  *(v2 + 169) = a2;
  *(v2 + 144) = a1;
  return _swift_task_switch(sub_100002EE0, 0, 0);
}

uint64_t sub_100002EE0()
{
  if (qword_1000682C8 != -1)
  {
    swift_once();
  }

  v1 = sub_100041998();
  *(v0 + 152) = sub_1000038F8(v1, qword_100069E98);
  v2 = sub_100041978();
  v3 = sub_100042078();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pinging Watch", v4, 2u);
  }

  v5 = *(v0 + 169);

  if (v5 == 1)
  {
    v6 = [objc_opt_self() sharedDeviceConnection];
    *(v0 + 160) = v6;
    if (v6)
    {
      v7 = v6;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 168;
      *(v0 + 24) = sub_100003194;
      v8 = swift_continuation_init();
      *(v0 + 136) = sub_100003930(&qword_100068480, &unk_100042700);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100003354;
      *(v0 + 104) = &unk_100062F68;
      *(v0 + 112) = v8;
      [v7 playSoundOnCompanionWithCompletion:v0 + 80];
      v6 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v6);
  }

  else
  {
    v9 = sub_100041978();
    v10 = sub_100042078();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "There is no active device or it is not supported", v11, 2u);
    }

    v12 = *(v0 + 144);
    sub_100041568();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100003194()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100003274, 0, 0);
}

uint64_t sub_100003274()
{
  v1 = *(v0 + 152);

  v2 = sub_100041978();
  v3 = sub_100042078();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sounds was played", v4, 2u);
  }

  v5 = *(v0 + 144);
  sub_100041568();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100003354(uint64_t a1, char a2)
{
  **(*(*sub_100003A38((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_1000033B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000682C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000417D8();
  v3 = sub_1000038F8(v2, qword_100069E80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003470(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003510;

  return sub_100002EBC(a1, v4);
}

uint64_t sub_100003510()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_100003604@<X0>(_BYTE *a1@<X8>)
{
  result = [objc_opt_self() isPingMySupportedOnActiveDevice];
  *a1 = result;
  return result;
}

uint64_t sub_100003640(uint64_t a1)
{
  v2 = sub_100001FDC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PingMyWatchControlIntent(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PingMyWatchControlIntent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003830(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003878()
{
  v0 = sub_100041998();
  sub_100003A7C(v0, qword_100069E98);
  sub_1000038F8(v0, qword_100069E98);
  return sub_100041988();
}

uint64_t sub_1000038F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003930(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000039EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100003A38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100003A7C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003B0C()
{
  result = qword_1000684B0;
  if (!qword_1000684B0)
  {
    sub_100003830(&qword_1000684A0, &qword_100042780);
    sub_100003B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000684B0);
  }

  return result;
}

unint64_t sub_100003B90()
{
  result = qword_1000684B8;
  if (!qword_1000684B8)
  {
    sub_100003830(&qword_1000684C0, &qword_100042790);
    sub_100003D80(&qword_1000684C8, &qword_1000684D0, &qword_100042798);
    sub_100003F04(&qword_1000684D8, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000684B8);
  }

  return result;
}

unint64_t sub_100003C78()
{
  result = qword_1000684E0;
  if (!qword_1000684E0)
  {
    sub_100003830(&qword_1000684A8, &qword_100042788);
    sub_100003D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000684E0);
  }

  return result;
}

unint64_t sub_100003D04()
{
  result = qword_1000684E8;
  if (!qword_1000684E8)
  {
    sub_100003830(&qword_1000684F0, &qword_1000427A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000684E8);
  }

  return result;
}

uint64_t sub_100003D80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003830(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003DC8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100003E0C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100003E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003E1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003930(&qword_1000684C0, &qword_100042790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E9C(uint64_t a1)
{
  v2 = sub_100003930(&qword_1000684C0, &qword_100042790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003F4C()
{
  sub_100003830(&qword_100068498, &qword_100042778);
  sub_100003830(&qword_100068490, &qword_100042770);
  sub_100003830(&qword_100068488, &qword_100042768);
  sub_100003D80(&qword_1000684F8, &qword_100068488, &qword_100042768);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 initializeBufferWithCopyOfBuffer for ProgressView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProgressView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_100068518)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100068518);
    }
  }
}

uint64_t sub_100004108(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      v1 = 0x5F454D414E2FLL;
      return v1 & 0xFFFFFFFFFFFFLL | 0x4543000000000000;
    case 2:
      return 0xD000000000000013;
    case 3:
      return 0xD00000000000001ELL;
    case 4:
      return 0xD000000000000016;
    case 5:
      return 0xD000000000000015;
    case 6:
      return 0xD00000000000001DLL;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0xD00000000000001CLL;
    case 9:
      return 0xD000000000000021;
    case 10:
      v1 = 0x5F49454D4923;
      return v1 & 0xFFFFFFFFFFFFLL | 0x4543000000000000;
    case 11:
      v2 = 0x444943434923;
      goto LABEL_6;
    case 12:
      return 0x4C45435F4449452FLL;
    case 13:
      return 0xD000000000000014;
    case 14:
      v2 = 0x4C4147454C2FLL;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x435F000000000000;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100004398(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100004108(*a1);
  v5 = v4;
  if (v3 == sub_100004108(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_100004424()
{
  result = qword_100068520;
  if (!qword_100068520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068520);
  }

  return result;
}

Swift::Int sub_100004478()
{
  v1 = *v0;
  sub_100042108();
  sub_100004108(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_1000044DC()
{
  sub_100004108(*v0);
  sub_100042008();
}

Swift::Int sub_100004530()
{
  v1 = *v0;
  sub_100042108();
  sub_100004108(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_100004590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000670C();
  *a2 = result;
  return result;
}

uint64_t sub_1000045C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004108(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000465C@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10000670C();
  *a1 = result;
  return result;
}

unint64_t sub_1000046A8()
{
  result = qword_100068538;
  if (!qword_100068538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068538);
  }

  return result;
}

unint64_t sub_1000046FC()
{
  result = qword_100068540;
  if (!qword_100068540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068540);
  }

  return result;
}

uint64_t sub_100004750()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_100069EB0);
  sub_1000038F8(v0, qword_100069EB0);
  return sub_1000417B8();
}

uint64_t sub_1000047B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000415A8();
  *a1 = v5;
  return result;
}

uint64_t sub_1000047F0(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000415B8();
}

void (*sub_100004828(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

void sub_10000489C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000048E8()
{
  result = qword_100068548;
  if (!qword_100068548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068548);
  }

  return result;
}

uint64_t sub_10000493C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007398();
  v5 = sub_1000066B8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000049AC()
{
  result = qword_100068550;
  if (!qword_100068550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068550);
  }

  return result;
}

unint64_t sub_100004A04()
{
  result = qword_100068558;
  if (!qword_100068558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068558);
  }

  return result;
}

unint64_t sub_100004A5C()
{
  result = qword_100068560;
  if (!qword_100068560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068560);
  }

  return result;
}

uint64_t sub_100004B40(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007398();
  v7 = sub_1000073EC();
  v8 = sub_1000066B8();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004C0C()
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

uint64_t sub_100004D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006760();
  *a1 = result;
  return result;
}

uint64_t sub_100004D3C(uint64_t a1)
{
  v2 = sub_1000048E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100004D7C()
{
  result = qword_100068568;
  if (!qword_100068568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068568);
  }

  return result;
}

unint64_t sub_100004DD4()
{
  result = qword_100068570;
  if (!qword_100068570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068570);
  }

  return result;
}

unint64_t sub_100004E2C()
{
  result = qword_100068578;
  if (!qword_100068578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068578);
  }

  return result;
}

uint64_t sub_100004E80()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_100069EC8);
  sub_1000038F8(v7, qword_100069EC8);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100004FF4(char a1)
{
  v2 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_100003930(&qword_100068608, &qword_100042F30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_1000417D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  switch(a1)
  {
    case 8:
      v15 = sub_100041FD8();
      v16 = SFLocalizableWAPIStringKeyForKey();

      sub_100041FE8();
      break;
    default:
      break;
  }

  sub_1000417B8();
  (*(v11 + 56))(v9, 1, 1, v10);
  sub_100041658();
  v13 = sub_100041668();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  return sub_100041678();
}

uint64_t sub_10000547C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100006B7C(a1);
}

uint64_t sub_100005524(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100006E6C();
}

uint64_t sub_1000055C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005688;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005688(uint64_t a1)
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

unint64_t sub_10000578C()
{
  result = qword_100068580;
  if (!qword_100068580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068580);
  }

  return result;
}

uint64_t sub_1000057E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100006A5C();
}

uint64_t sub_100005884(uint64_t a1)
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

unint64_t sub_10000599C()
{
  result = qword_100068588;
  if (!qword_100068588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068588);
  }

  return result;
}

unint64_t sub_1000059F4()
{
  result = qword_100068590;
  if (!qword_100068590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068590);
  }

  return result;
}

unint64_t sub_100005A4C()
{
  result = qword_100068598;
  if (!qword_100068598)
  {
    sub_100003830(&qword_1000685A0, qword_100042B38);
    sub_1000059F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068598);
  }

  return result;
}

uint64_t sub_100005AD0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000578C();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100005B84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10000715C();
}

uint64_t sub_100005C28(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100005D44()
{
  result = qword_1000685A8;
  if (!qword_1000685A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685A8);
  }

  return result;
}

uint64_t sub_100005D98()
{
  v0 = sub_100003930(&qword_100068618, &qword_100042F38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068620, &qword_100042F40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100004E2C();
  sub_100041708();
  v9._object = 0x800000010004EA00;
  v9._countAndFlagsBits = 0xD000000000000023;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100005F64()
{
  result = qword_1000685B0;
  if (!qword_1000685B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685B0);
  }

  return result;
}

unint64_t sub_100005FBC()
{
  result = qword_1000685B8;
  if (!qword_1000685B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685B8);
  }

  return result;
}

unint64_t sub_100006014()
{
  result = qword_1000685C0;
  if (!qword_1000685C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685C0);
  }

  return result;
}

uint64_t sub_100006068()
{
  sub_1000066B8();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000060D8()
{
  result = qword_1000685C8;
  if (!qword_1000685C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685C8);
  }

  return result;
}

unint64_t sub_100006130()
{
  result = qword_1000685D0;
  if (!qword_1000685D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685D0);
  }

  return result;
}

unint64_t sub_100006188()
{
  result = qword_1000685D8;
  if (!qword_1000685D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685D8);
  }

  return result;
}

unint64_t sub_1000061E0()
{
  result = qword_1000685E0;
  if (!qword_1000685E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685E0);
  }

  return result;
}

uint64_t sub_100006278@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000038F8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100006364(uint64_t a1)
{
  v2 = sub_100004E2C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000063B4()
{
  result = qword_1000685F8;
  if (!qword_1000685F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000685F8);
  }

  return result;
}

uint64_t sub_100006410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003510;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000064D4(uint64_t a1)
{
  v2 = sub_100006188();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100006558(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000065E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000066B8()
{
  result = qword_100068610;
  if (!qword_100068610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068610);
  }

  return result;
}

uint64_t sub_10000670C()
{
  v0 = sub_1000420E8();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100006760()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068638, qword_100042F78);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 19;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100004E2C();
  return sub_1000415C8();
}

uint64_t sub_100006A78()
{
  sub_10003FE24(0, 19, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100061908 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10003FE24((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 19);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100006B9C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v20 = PDRDevicePropertyKeyMarketingProductName;
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = [v4 sharedInstance];
      v8 = [v7 getActiveDevice];

      if (v8)
      {
        if ((v5 - 10) < 3 || v5 == 7)
        {
          v10 = [v8 supportsCapability:1252261691];

          if (v10)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v5 != 3)
          {

            goto LABEL_17;
          }

          if ([v8 valueForProperty:v20])
          {
            sub_100042088();
            swift_unknownObjectRelease();

            sub_100007388((v21 + 48), (v21 + 16));
            sub_100007320(v21 + 16);
LABEL_17:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10003FE54(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
            }

            v12 = *(&_swiftEmptyArrayStorage + 2);
            v11 = *(&_swiftEmptyArrayStorage + 3);
            if (v12 >= v11 >> 1)
            {
              sub_10003FE54((v11 > 1), v12 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
            *(&_swiftEmptyArrayStorage + v12 + 32) = v5;
            goto LABEL_4;
          }

          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
          sub_100007320(v21 + 16);
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  v13 = *(&_swiftEmptyArrayStorage + 2);
  if (v13)
  {
    sub_10003FE24(0, v13, 0);
    v14 = *(&_swiftEmptyArrayStorage + 2);
    v15 = 32;
    do
    {
      v16 = *(&_swiftEmptyArrayStorage + v15);
      v17 = *(&_swiftEmptyArrayStorage + 3);
      if (v14 >= v17 >> 1)
      {
        sub_10003FE24((v17 > 1), v14 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
      *(&_swiftEmptyArrayStorage + v14 + 32) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(v21 + 8);

  return v18(&_swiftEmptyArrayStorage);
}

uint64_t sub_100006E88()
{
  v0 = objc_opt_self();
  v1 = 0;
  v16 = PDRDevicePropertyKeyMarketingProductName;
  do
  {
    v2 = *(&off_100061908 + v1 + 32);
    v3 = [v0 sharedInstance];
    v4 = [v3 getActiveDevice];

    if (!v4)
    {
      goto LABEL_3;
    }

    if ((v2 - 10) < 3 || v2 == 7)
    {
      v6 = [v4 supportsCapability:1252261691];

      if (!v6)
      {
        goto LABEL_3;
      }
    }

    else if (v2 == 3)
    {
      if (![v4 valueForProperty:v16])
      {

        *(v17 + 16) = 0u;
        *(v17 + 32) = 0u;
        sub_100007320(v17 + 16);
        goto LABEL_3;
      }

      sub_100042088();
      swift_unknownObjectRelease();

      sub_100007388((v17 + 48), (v17 + 16));
      sub_100007320(v17 + 16);
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10003FE54(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v8 = *(&_swiftEmptyArrayStorage + 2);
    v7 = *(&_swiftEmptyArrayStorage + 3);
    if (v8 >= v7 >> 1)
    {
      sub_10003FE54((v7 > 1), v8 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v8 + 1;
    *(&_swiftEmptyArrayStorage + v8 + 32) = v2;
LABEL_3:
    ++v1;
  }

  while (v1 != 19);
  v9 = *(&_swiftEmptyArrayStorage + 2);
  if (v9)
  {
    sub_10003FE24(0, v9, 0);
    v10 = *(&_swiftEmptyArrayStorage + 2);
    v11 = 32;
    do
    {
      v12 = *(&_swiftEmptyArrayStorage + v11);
      v13 = *(&_swiftEmptyArrayStorage + 3);
      if (v10 >= v13 >> 1)
      {
        sub_10003FE24((v13 > 1), v10 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
      *(&_swiftEmptyArrayStorage + v10 + 32) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = *(v17 + 8);

  return v14(&_swiftEmptyArrayStorage);
}

uint64_t sub_100007178()
{
  v1 = 0;
  v9 = PDRDevicePropertyKeyMarketingProductName;
  while (1)
  {
    v3 = *(&off_100061908 + v1 + 32);
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 getActiveDevice];

    if (v5)
    {
      break;
    }

LABEL_3:
    if (++v1 == 19)
    {
      v3 = 19;
      goto LABEL_13;
    }
  }

  if ((v3 - 10) < 3 || v3 == 7)
  {
    v2 = [v5 supportsCapability:1252261691];

    if (v2)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if (v3 != 3)
  {

    goto LABEL_13;
  }

  if (![v5 valueForProperty:v9])
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_100007320(v0 + 16);
    goto LABEL_3;
  }

  sub_100042088();
  swift_unknownObjectRelease();

  sub_100007388((v0 + 48), (v0 + 16));
  sub_100007320(v0 + 16);
  v3 = 3;
LABEL_13:
  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_100007320(uint64_t a1)
{
  v2 = sub_100003930(&qword_100068628, &qword_100042F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100007388(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100007398()
{
  result = qword_100068640;
  if (!qword_100068640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068640);
  }

  return result;
}

unint64_t sub_1000073EC()
{
  result = qword_100068648;
  if (!qword_100068648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068648);
  }

  return result;
}

void *sub_10000746C()
{
  sub_1000418C8();
  sub_1000418E8();
  v0 = sub_100041898();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v2;
  v12 = v1;
  v8 = 0u;
  v9 = 0u;
  v10 = -1;
  sub_1000078B8(v11, v14);
  sub_1000418D8();
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v4;
  v7 = v3;
  sub_1000078B8(v6, v14);
  sub_1000418D8();
  sub_100041908();
  sub_100041878();
  memcpy(&v14[7], __src, 0x1AAuLL);
  byte_100069EE0 = 3;
  return memcpy(&unk_100069EE1, v14, 0x1B1uLL);
}

uint64_t sub_1000075C4@<X0>(void *a1@<X8>)
{
  if (qword_1000682E0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &byte_100069EE0, 0x1B2uLL);
  memcpy(a1, &byte_100069EE0, 0x1B2uLL);
  return sub_100007880(__dst, &v3);
}

void *sub_10000765C@<X0>(void *a1@<X8>)
{
  sub_1000076B0();
  sub_100041AD8();
  return memcpy(a1, v3, 0x1B2uLL);
}

unint64_t sub_1000076B0()
{
  result = qword_100068650;
  if (!qword_100068650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068650);
  }

  return result;
}

uint64_t sub_100007714(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100007738(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000774C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100007774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 434))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000077BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 434) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 434) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000791C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000025;
    v6 = 0xD000000000000022;
    if (a1 != 10)
    {
      v6 = 0xD000000000000021;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000026;
    v8 = 0xD000000000000014;
    if (a1 != 7)
    {
      v8 = 0x45545F444C4F4223;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = a1;
    v2 = 0xD00000000000001DLL;
    if (a1 == 4)
    {
      v2 = 0xD000000000000028;
    }

    if (a1 == 3)
    {
      v2 = 0xD00000000000002BLL;
    }

    v3 = 0xD000000000000014;
    if (a1 != 1)
    {
      v3 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100007AAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000791C(*a1);
  v5 = v4;
  if (v3 == sub_10000791C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_100007B38()
{
  result = qword_100068658;
  if (!qword_100068658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068658);
  }

  return result;
}

Swift::Int sub_100007B8C()
{
  v1 = *v0;
  sub_100042108();
  sub_10000791C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_100007BF0()
{
  sub_10000791C(*v0);
  sub_100042008();
}

Swift::Int sub_100007C44()
{
  v1 = *v0;
  sub_100042108();
  sub_10000791C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_100007CA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000958C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100007CD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000791C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100007D70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000958C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100007DBC()
{
  result = qword_100068670;
  if (!qword_100068670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068670);
  }

  return result;
}

unint64_t sub_100007E10()
{
  result = qword_100068678;
  if (!qword_100068678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068678);
  }

  return result;
}

uint64_t sub_100007E64()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A098);
  sub_1000038F8(v0, qword_10006A098);
  return sub_1000417B8();
}

void (*sub_100007EC8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_100007F3C()
{
  result = qword_100068680;
  if (!qword_100068680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068680);
  }

  return result;
}

uint64_t sub_100007F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009FDC();
  v5 = sub_100009538();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100008000()
{
  result = qword_100068688;
  if (!qword_100068688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068688);
  }

  return result;
}

unint64_t sub_100008058()
{
  result = qword_100068690;
  if (!qword_100068690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068690);
  }

  return result;
}

uint64_t sub_100008134(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100009FDC();
  v7 = sub_10000A030();
  v8 = sub_100009538();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100008200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000095D8();
  *a1 = result;
  return result;
}

uint64_t sub_100008228(uint64_t a1)
{
  v2 = sub_100007F3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100008268()
{
  result = qword_100068698;
  if (!qword_100068698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068698);
  }

  return result;
}

unint64_t sub_1000082C0()
{
  result = qword_1000686A0;
  if (!qword_1000686A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686A0);
  }

  return result;
}

unint64_t sub_100008318()
{
  result = qword_1000686A8;
  if (!qword_1000686A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686A8);
  }

  return result;
}

uint64_t sub_10000836C()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A0B0);
  sub_1000038F8(v7, qword_10006A0B0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_1000084DC()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100008870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_1000099F4(a1);
}

uint64_t sub_100008918(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100009C4C();
}

unint64_t sub_1000089C0()
{
  result = qword_1000686B0;
  if (!qword_1000686B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686B0);
  }

  return result;
}

uint64_t sub_100008A14(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_1000098D4();
}

unint64_t sub_100008ABC()
{
  result = qword_1000686B8;
  if (!qword_1000686B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686B8);
  }

  return result;
}

unint64_t sub_100008B14()
{
  result = qword_1000686C0;
  if (!qword_1000686C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686C0);
  }

  return result;
}

unint64_t sub_100008B6C()
{
  result = qword_1000686C8;
  if (!qword_1000686C8)
  {
    sub_100003830(&qword_1000686D0, qword_1000438B8);
    sub_100008B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686C8);
  }

  return result;
}

uint64_t sub_100008BF0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000089C0();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100008CA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_100009EA4();
}

unint64_t sub_100008D4C()
{
  result = qword_1000686D8;
  if (!qword_1000686D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686D8);
  }

  return result;
}

uint64_t sub_100008DA0()
{
  v0 = sub_100003930(&qword_100068738, &qword_100043CD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068740, &qword_100043CD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100008318();
  sub_100041708();
  v9._object = 0x800000010004EB30;
  v9._countAndFlagsBits = 0xD000000000000025;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100008F6C()
{
  result = qword_1000686E0;
  if (!qword_1000686E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686E0);
  }

  return result;
}

unint64_t sub_100008FC4()
{
  result = qword_1000686E8;
  if (!qword_1000686E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686E8);
  }

  return result;
}

unint64_t sub_10000901C()
{
  result = qword_1000686F0;
  if (!qword_1000686F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686F0);
  }

  return result;
}

uint64_t sub_100009070()
{
  sub_100009538();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000090E0()
{
  result = qword_1000686F8;
  if (!qword_1000686F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686F8);
  }

  return result;
}

unint64_t sub_100009134()
{
  result = qword_100068700;
  if (!qword_100068700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068700);
  }

  return result;
}

unint64_t sub_10000918C()
{
  result = qword_100068708;
  if (!qword_100068708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068708);
  }

  return result;
}

unint64_t sub_1000091E8()
{
  result = qword_100068710;
  if (!qword_100068710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068710);
  }

  return result;
}

uint64_t sub_1000092B8(uint64_t a1)
{
  v2 = sub_100008318();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100009308()
{
  result = qword_100068728;
  if (!qword_100068728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068728);
  }

  return result;
}

uint64_t sub_100009364(uint64_t a1)
{
  v2 = sub_10000918C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000093E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100009478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100009538()
{
  result = qword_100068730;
  if (!qword_100068730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068730);
  }

  return result;
}

uint64_t sub_10000958C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100061940;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000095D8()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068748, &qword_100043D08);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 12;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100008318();
  return sub_1000415C8();
}

uint64_t sub_1000098F0()
{
  sub_10003FE84(0, 12, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100061A80 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10003FE84((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100009A14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if ((v7 - 2) > 4 || (v8 = [objc_opt_self() sharedInstance], v9 = objc_msgSend(v8, "getActiveDevice"), v8, v9) && (v10 = objc_msgSend(v9, "supportsCapability:", 1789638251), v9, v10))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003FEB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_10003FEB4((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_10003FE84(0, v11, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 32;
    do
    {
      v14 = *(_swiftEmptyArrayStorage + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_10003FE84((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_100009C68()
{
  for (i = 0; i != 12; ++i)
  {
    v3 = *(&off_100061A80 + i + 32);
    if ((v3 - 2) <= 4)
    {
      v4 = [objc_opt_self() sharedInstance];
      v5 = [v4 getActiveDevice];

      if (!v5)
      {
        continue;
      }

      v6 = [v5 supportsCapability:1789638251];

      if (!v6)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10003FEB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v2 = _swiftEmptyArrayStorage[2];
    v1 = _swiftEmptyArrayStorage[3];
    if (v2 >= v1 >> 1)
    {
      sub_10003FEB4((v1 > 1), v2 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v2 + 1;
    *(&_swiftEmptyArrayStorage[4] + v2) = v3;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    sub_10003FE84(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 32;
    do
    {
      v10 = *(_swiftEmptyArrayStorage + v9);
      v11 = _swiftEmptyArrayStorage[3];
      if (v8 >= v11 >> 1)
      {
        sub_10003FE84((v11 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *(&_swiftEmptyArrayStorage[4] + v8) = v10;
      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v12 = *(v14 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_100009EC0()
{
  v1 = 0;
  while (1)
  {
    v2 = *(&off_100061A80 + v1 + 32);
    if ((v2 - 2) > 4)
    {
      break;
    }

    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 getActiveDevice];

    if (v4)
    {
      v5 = [v4 supportsCapability:1789638251];

      if (v5)
      {
        break;
      }
    }

    if (++v1 == 12)
    {
      v2 = 12;
      break;
    }
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

unint64_t sub_100009FDC()
{
  result = qword_100068750;
  if (!qword_100068750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068750);
  }

  return result;
}

unint64_t sub_10000A030()
{
  result = qword_100068758;
  if (!qword_100068758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068758);
  }

  return result;
}

unint64_t sub_10000A0B4()
{
  result = qword_100068760;
  if (!qword_100068760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068760);
  }

  return result;
}

Swift::Int sub_10000A108()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000A1EC()
{
  *v0;
  *v0;
  sub_100042008();
}

Swift::Int sub_10000A2BC()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000A39C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BC6C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000A3CC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v4 = 0x800000010004D6B0;
  v5 = 0xD00000000000001DLL;
  v6 = 0x800000010004D6D0;
  v7 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v7 = 0xD000000000000018;
    v6 = 0x800000010004D6F0;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xD00000000000001BLL;
  if (*v1)
  {
    v3 = 0x800000010004D690;
  }

  else
  {
    v8 = *v1;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10000A4C0()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v4 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000A55C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000BC6C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000A5A8()
{
  result = qword_100068778;
  if (!qword_100068778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068778);
  }

  return result;
}

unint64_t sub_10000A5FC()
{
  result = qword_100068780;
  if (!qword_100068780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068780);
  }

  return result;
}

uint64_t sub_10000A650()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A0C8);
  sub_1000038F8(v0, qword_10006A0C8);
  return sub_1000417B8();
}

void (*sub_10000A6B4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10000A728()
{
  result = qword_100068788;
  if (!qword_100068788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068788);
  }

  return result;
}

uint64_t sub_10000A77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C92C();
  v5 = sub_10000BC18();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000A7EC()
{
  result = qword_100068790;
  if (!qword_100068790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068790);
  }

  return result;
}

unint64_t sub_10000A844()
{
  result = qword_100068798;
  if (!qword_100068798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068798);
  }

  return result;
}

uint64_t sub_10000A920(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000C92C();
  v7 = sub_10000C980();
  v8 = sub_10000BC18();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000A9EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000BCB8();
  *a1 = result;
  return result;
}

uint64_t sub_10000AA14(uint64_t a1)
{
  v2 = sub_10000A728();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000AA54()
{
  result = qword_1000687A0;
  if (!qword_1000687A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687A0);
  }

  return result;
}

unint64_t sub_10000AAAC()
{
  result = qword_1000687A8;
  if (!qword_1000687A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687A8);
  }

  return result;
}

unint64_t sub_10000AB04()
{
  result = qword_1000687B0;
  if (!qword_1000687B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687B0);
  }

  return result;
}

uint64_t sub_10000AB58()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A0E0);
  sub_1000038F8(v7, qword_10006A0E0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10000ACC8()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10000AF50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10000C1B0(a1);
}

uint64_t sub_10000AFF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10000C488();
}

unint64_t sub_10000B0A0()
{
  result = qword_1000687B8;
  if (!qword_1000687B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687B8);
  }

  return result;
}

uint64_t sub_10000B0F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10000BFB4();
}

unint64_t sub_10000B19C()
{
  result = qword_1000687C0;
  if (!qword_1000687C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687C0);
  }

  return result;
}

unint64_t sub_10000B1F4()
{
  result = qword_1000687C8;
  if (!qword_1000687C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687C8);
  }

  return result;
}

unint64_t sub_10000B24C()
{
  result = qword_1000687D0;
  if (!qword_1000687D0)
  {
    sub_100003830(&qword_1000687D8, qword_100044068);
    sub_10000B1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687D0);
  }

  return result;
}

uint64_t sub_10000B2D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000B0A0();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000B384(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10000C760();
}

unint64_t sub_10000B42C()
{
  result = qword_1000687E0;
  if (!qword_1000687E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687E0);
  }

  return result;
}

uint64_t sub_10000B480()
{
  v0 = sub_100003930(&qword_100068840, &qword_100044458);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068848, &qword_100044460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000AB04();
  sub_100041708();
  v9._object = 0x800000010004EC30;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10000B64C()
{
  result = qword_1000687E8;
  if (!qword_1000687E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687E8);
  }

  return result;
}

unint64_t sub_10000B6A4()
{
  result = qword_1000687F0;
  if (!qword_1000687F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687F0);
  }

  return result;
}

unint64_t sub_10000B6FC()
{
  result = qword_1000687F8;
  if (!qword_1000687F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000687F8);
  }

  return result;
}

uint64_t sub_10000B750()
{
  sub_10000BC18();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000B7C0()
{
  result = qword_100068800;
  if (!qword_100068800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068800);
  }

  return result;
}

unint64_t sub_10000B818()
{
  result = qword_100068808;
  if (!qword_100068808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068808);
  }

  return result;
}

unint64_t sub_10000B870()
{
  result = qword_100068810;
  if (!qword_100068810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068810);
  }

  return result;
}

unint64_t sub_10000B8C8()
{
  result = qword_100068818;
  if (!qword_100068818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068818);
  }

  return result;
}

uint64_t sub_10000B998(uint64_t a1)
{
  v2 = sub_10000AB04();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B9E8()
{
  result = qword_100068830;
  if (!qword_100068830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068830);
  }

  return result;
}

uint64_t sub_10000BA44(uint64_t a1)
{
  v2 = sub_10000B870();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000BAC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000BB58(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BC18()
{
  result = qword_100068838;
  if (!qword_100068838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068838);
  }

  return result;
}

uint64_t sub_10000BC6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100061AB0;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000BCB8()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068850, &unk_100044490);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 5;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000AB04();
  return sub_1000415C8();
}

uint64_t sub_10000BFD0()
{
  sub_10003FEE4(0, 5, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10003FEE4((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10003FEE4((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10003FEE4((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = _swiftEmptyArrayStorage[3];
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_10003FEE4((v7 > 1), v2 + 4, 1);
    v7 = _swiftEmptyArrayStorage[3];
    v8 = v7 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  if (v8 < (v2 + 5))
  {
    sub_10003FEE4((v7 > 1), v2 + 5, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 5;
  *(&_swiftEmptyArrayStorage[4] + v9) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000C1D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (!v9)
      {
        goto LABEL_4;
      }

      if (![v9 v5[3].base_prots])
      {
        break;
      }

      if (v6 == 2)
      {
        v11 = objc_opt_self();
        if (([v11 isKappaDetectionSupportedOnActiveWatch] & 1) == 0)
        {
          break;
        }

        v10 = [v11 isKappaVisible];
      }

      else
      {
        if (v6 != 3)
        {

LABEL_16:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003FF14(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v14 = _swiftEmptyArrayStorage[2];
          v13 = _swiftEmptyArrayStorage[3];
          if (v14 >= v13 >> 1)
          {
            sub_10003FF14((v13 > 1), v14 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v14 + 1;
          *(&_swiftEmptyArrayStorage[4] + v14) = v6;
          v5 = &DisplayBrightnessDataModel;
          goto LABEL_4;
        }

        if (([v9 v5[3].base_prots] & 1) == 0)
        {
          break;
        }

        v10 = [objc_opt_self() newtonTriggersEmergencySOS];
      }

      v12 = v10;

      if (v12)
      {
        goto LABEL_16;
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_4;
  }

LABEL_21:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_10003FEE4(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 32;
    do
    {
      v18 = *(_swiftEmptyArrayStorage + v17);
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_10003FEE4((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v20 = *(v22 + 8);

  return v20(_swiftEmptyArrayStorage);
}

uint64_t sub_10000C4A4()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = &DisplayBrightnessDataModel;
  do
  {
    v3 = *(&off_100061B70 + v1 + 32);
    v4 = [v0 sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if (![v5 v2[3].base_prots])
    {
      goto LABEL_2;
    }

    if (v3 == 2)
    {
      v7 = objc_opt_self();
      if (([v7 isKappaDetectionSupportedOnActiveWatch] & 1) == 0)
      {
LABEL_2:

        goto LABEL_3;
      }

      v6 = [v7 isKappaVisible];
LABEL_12:
      v8 = v6;

      if ((v8 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (v3 == 3)
    {
      if (([v5 v2[3].base_prots] & 1) == 0)
      {
        goto LABEL_2;
      }

      v6 = [objc_opt_self() newtonTriggersEmergencySOS];
      goto LABEL_12;
    }

LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10003FF14(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_10003FF14((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v3;
    v2 = &DisplayBrightnessDataModel;
LABEL_3:
    ++v1;
  }

  while (v1 != 5);
  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_10003FEE4(0, v11, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 32;
    do
    {
      v14 = *(_swiftEmptyArrayStorage + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_10003FEE4((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_10000C77C()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_100061B98 + v0 + 32);
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 getActiveDevice];

    if (!v3)
    {
      goto LABEL_3;
    }

    if ([v3 supportsCapability:292679834])
    {
      break;
    }

LABEL_2:

LABEL_3:
    if (++v0 == 5)
    {
      v1 = 5;
      goto LABEL_15;
    }
  }

  if (v1 == 2)
  {
    v5 = objc_opt_self();
    if ([v5 isKappaDetectionSupportedOnActiveWatch])
    {
      v6 = [v5 isKappaVisible];

      if (v6)
      {
        v1 = 2;
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v1 == 3)
  {
    if ([v3 supportsCapability:2528173432])
    {
      v4 = [objc_opt_self() newtonTriggersEmergencySOS];

      if (v4)
      {
        v1 = 3;
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_15:
  v7 = *(v9 + 8);

  return v7(v1);
}

unint64_t sub_10000C92C()
{
  result = qword_100068858;
  if (!qword_100068858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068858);
  }

  return result;
}

unint64_t sub_10000C980()
{
  result = qword_100068860;
  if (!qword_100068860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068860);
  }

  return result;
}

uint64_t sub_10000C9F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = a1;
    v7 = 0xD00000000000001ELL;
    v8 = 0xD000000000000020;
    if (a1 != 3)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x494D4F545355432FLL;
    v2 = 0xD000000000000019;
    if (a1 != 9)
    {
      v2 = 0x415F4B434955512FLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10000CB6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000C9F4(*a1);
  v5 = v4;
  if (v3 == sub_10000C9F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10000CBF8()
{
  result = qword_100068868;
  if (!qword_100068868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068868);
  }

  return result;
}

Swift::Int sub_10000CC4C()
{
  v1 = *v0;
  sub_100042108();
  sub_10000C9F4(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000CCB0()
{
  sub_10000C9F4(*v0);
  sub_100042008();
}

Swift::Int sub_10000CD04()
{
  v1 = *v0;
  sub_100042108();
  sub_10000C9F4(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000CD64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000EB2C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10000CD94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C9F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000CE30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000EB2C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000CE7C()
{
  result = qword_100068880;
  if (!qword_100068880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068880);
  }

  return result;
}

unint64_t sub_10000CED0()
{
  result = qword_100068888;
  if (!qword_100068888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068888);
  }

  return result;
}

uint64_t sub_10000CF24()
{
  v0 = sub_1000417C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041858();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100041FC8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000417D8();
  sub_100003A7C(v9, qword_10006A0F8);
  sub_1000038F8(v9, qword_10006A0F8);
  sub_100041FB8();
  sub_100041848();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000417E8();
}

void (*sub_10000D114(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10000D188()
{
  result = qword_100068890;
  if (!qword_100068890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068890);
  }

  return result;
}

uint64_t sub_10000D1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F640();
  v5 = sub_10000EAD8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000D24C()
{
  result = qword_100068898;
  if (!qword_100068898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068898);
  }

  return result;
}

unint64_t sub_10000D2A4()
{
  result = qword_1000688A0;
  if (!qword_1000688A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688A0);
  }

  return result;
}

uint64_t sub_10000D380(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F640();
  v7 = sub_10000F694();
  v8 = sub_10000EAD8();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000D44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EB78();
  *a1 = result;
  return result;
}

uint64_t sub_10000D474(uint64_t a1)
{
  v2 = sub_10000D188();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000D4B4()
{
  result = qword_1000688A8;
  if (!qword_1000688A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688A8);
  }

  return result;
}

unint64_t sub_10000D50C()
{
  result = qword_1000688B0;
  if (!qword_1000688B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688B0);
  }

  return result;
}

unint64_t sub_10000D564()
{
  result = qword_1000688B8;
  if (!qword_1000688B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688B8);
  }

  return result;
}

uint64_t sub_10000D5B8()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000417C8();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041858();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100041FC8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000417D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100041768();
  sub_100003A7C(v15, qword_10006A110);
  sub_1000038F8(v15, qword_10006A110);
  sub_100041FB8();
  sub_100041848();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000417E8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100041758();
}

uint64_t sub_10000D8A4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  v7 = sub_100003930(&qword_100068608, &qword_100042F30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  v11 = sub_1000417C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100041858();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_100041FC8();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000417D8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v26 = __chkstk_darwin(v20);
  if (a1 > 4u || a1 <= 1u)
  {
    sub_100041FB8();
    v25[1] = "OPEN_EMERGENCY_SOS_SETTINGS";
    sub_100041848();
    (*(v12 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
    sub_1000417E8();
  }

  else
  {
    sub_100041FB8();
    sub_100041848();
    (*(v12 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
    sub_1000417E8();
  }

  (*(v21 + 56))(v10, 1, 1, v26);
  sub_100041658();
  v23 = sub_100041668();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  return sub_100041678();
}

uint64_t sub_10000DE10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10000EF94(a1);
}

uint64_t sub_10000DEB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10000F230();
}

unint64_t sub_10000DF60()
{
  result = qword_1000688C0;
  if (!qword_1000688C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688C0);
  }

  return result;
}

uint64_t sub_10000DFB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10000EE74();
}

unint64_t sub_10000E05C()
{
  result = qword_1000688C8;
  if (!qword_1000688C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688C8);
  }

  return result;
}

unint64_t sub_10000E0B4()
{
  result = qword_1000688D0;
  if (!qword_1000688D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688D0);
  }

  return result;
}

unint64_t sub_10000E10C()
{
  result = qword_1000688D8;
  if (!qword_1000688D8)
  {
    sub_100003830(&qword_1000688E0, qword_1000447F8);
    sub_10000E0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688D8);
  }

  return result;
}

uint64_t sub_10000E190(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000DF60();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000E244(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10000F4CC();
}

unint64_t sub_10000E2EC()
{
  result = qword_1000688E8;
  if (!qword_1000688E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688E8);
  }

  return result;
}

uint64_t sub_10000E340()
{
  v0 = sub_100003930(&qword_100068948, &qword_100044BF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068950, &qword_100044BF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000D564();
  sub_100041708();
  v9._object = 0x800000010004ED30;
  v9._countAndFlagsBits = 0xD000000000000034;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10000E50C()
{
  result = qword_1000688F0;
  if (!qword_1000688F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688F0);
  }

  return result;
}

unint64_t sub_10000E564()
{
  result = qword_1000688F8;
  if (!qword_1000688F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000688F8);
  }

  return result;
}

unint64_t sub_10000E5BC()
{
  result = qword_100068900;
  if (!qword_100068900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068900);
  }

  return result;
}

uint64_t sub_10000E610()
{
  sub_10000EAD8();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000E680()
{
  result = qword_100068908;
  if (!qword_100068908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068908);
  }

  return result;
}

unint64_t sub_10000E6D8()
{
  result = qword_100068910;
  if (!qword_100068910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068910);
  }

  return result;
}

unint64_t sub_10000E730()
{
  result = qword_100068918;
  if (!qword_100068918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068918);
  }

  return result;
}

unint64_t sub_10000E788()
{
  result = qword_100068920;
  if (!qword_100068920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068920);
  }

  return result;
}

uint64_t sub_10000E858(uint64_t a1)
{
  v2 = sub_10000D564();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E8A8()
{
  result = qword_100068938;
  if (!qword_100068938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068938);
  }

  return result;
}

uint64_t sub_10000E904(uint64_t a1)
{
  v2 = sub_10000E730();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000E988(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000EA18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000EAD8()
{
  result = qword_100068940;
  if (!qword_100068940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068940);
  }

  return result;
}

uint64_t sub_10000EB2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100061BC0;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000EB78()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068958, &qword_100044C28);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 11;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000D564();
  return sub_1000415C8();
}

uint64_t sub_10000EE90()
{
  sub_10003FF44(0, 11, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100061CE8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10003FF44((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 11);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000EFB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (v9)
      {
        if (![v9 v5[3].base_prots])
        {
          goto LABEL_3;
        }

        if (v6 != 10)
        {

LABEL_12:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003FF74(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v12 = _swiftEmptyArrayStorage[2];
          v11 = _swiftEmptyArrayStorage[3];
          if (v12 >= v11 >> 1)
          {
            sub_10003FF74((v11 > 1), v12 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v12 + 1;
          *(&_swiftEmptyArrayStorage[4] + v12) = v6;
          v5 = &DisplayBrightnessDataModel;
          goto LABEL_4;
        }

        if ([v9 v5[3].base_prots])
        {
          v10 = [v9 v5[3].base_prots];

          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
LABEL_3:
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_10003FF44(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 32;
    do
    {
      v16 = *(_swiftEmptyArrayStorage + v15);
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_10003FF44((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(v20 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10000F24C()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = &DisplayBrightnessDataModel;
  do
  {
    v3 = *(&off_100061CE8 + v1 + 32);
    v4 = [v0 sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if (![v5 v2[3].base_prots])
    {
      goto LABEL_2;
    }

    if (v3 != 10)
    {

LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003FF74(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_10003FF74((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *(&_swiftEmptyArrayStorage[4] + v8) = v3;
      v2 = &DisplayBrightnessDataModel;
      goto LABEL_3;
    }

    if (([v5 v2[3].base_prots] & 1) == 0)
    {
LABEL_2:

      goto LABEL_3;
    }

    v6 = [v5 v2[3].base_prots];

    if (v6)
    {
      goto LABEL_11;
    }

LABEL_3:
    ++v1;
  }

  while (v1 != 11);
  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_10003FF44(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(_swiftEmptyArrayStorage + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_10003FF44((v13 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = *(v16 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_10000F4E8()
{
  v1 = 0;
  while (1)
  {
    v2 = *(&off_100061CE8 + v1 + 32);
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 getActiveDevice];

    if (!v4)
    {
      goto LABEL_3;
    }

    if ([v4 supportsCapability:3618757519])
    {
      break;
    }

LABEL_2:

LABEL_3:
    if (++v1 == 11)
    {
      v2 = 11;
      goto LABEL_12;
    }
  }

  if (v2 == 10)
  {
    if ([v4 supportsCapability:2481586517])
    {
      v5 = [v4 supportsCapability:240655905];

      if (v5)
      {
        v2 = 10;
        goto LABEL_12;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_12:
  v6 = *(v0 + 8);

  return v6(v2);
}

unint64_t sub_10000F640()
{
  result = qword_100068960;
  if (!qword_100068960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068960);
  }

  return result;
}

unint64_t sub_10000F694()
{
  result = qword_100068968;
  if (!qword_100068968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068968);
  }

  return result;
}

uint64_t sub_10000F708()
{
  v0 = sub_100003930(&qword_100068978, &qword_100044C90);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000F790();
  sub_1000419D8();
  return 0;
}

unint64_t sub_10000F790()
{
  result = qword_100068970;
  if (!qword_100068970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068970);
  }

  return result;
}

unint64_t sub_10000F814()
{
  result = qword_100068980;
  if (!qword_100068980)
  {
    sub_100003830(&qword_100068988, &qword_100044C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068980);
  }

  return result;
}

uint64_t sub_10000F878(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x4241524B43414A23;
    v6 = 0xD000000000000023;
    if (a1 == 10)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000030;
    if (a1 == 7)
    {
      v7 = 0xD000000000000031;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000031;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = a1;
    v2 = 0xD00000000000002ALL;
    if (a1 == 4)
    {
      v2 = 0xD00000000000002BLL;
    }

    if (a1 == 3)
    {
      v2 = 0xD00000000000002BLL;
    }

    v3 = 0xD000000000000012;
    if (a1 != 1)
    {
      v3 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000F9FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000F878(*a1);
  v5 = v4;
  if (v3 == sub_10000F878(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10000FA88()
{
  result = qword_100068990;
  if (!qword_100068990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068990);
  }

  return result;
}

Swift::Int sub_10000FADC()
{
  v1 = *v0;
  sub_100042108();
  sub_10000F878(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000FB40()
{
  sub_10000F878(*v0);
  sub_100042008();
}

Swift::Int sub_10000FB94()
{
  v1 = *v0;
  sub_100042108();
  sub_10000F878(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10000FBF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011388(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10000FC24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F878(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000FCC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100011388(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000FD0C()
{
  result = qword_1000689A8;
  if (!qword_1000689A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689A8);
  }

  return result;
}

unint64_t sub_10000FD60()
{
  result = qword_1000689B0;
  if (!qword_1000689B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689B0);
  }

  return result;
}

uint64_t sub_10000FDB4()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A128);
  sub_1000038F8(v0, qword_10006A128);
  return sub_1000417B8();
}

void (*sub_10000FE18(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10000FE8C()
{
  result = qword_1000689B8;
  if (!qword_1000689B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689B8);
  }

  return result;
}

uint64_t sub_10000FEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011F10();
  v5 = sub_100011334();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000FF50()
{
  result = qword_1000689C0;
  if (!qword_1000689C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689C0);
  }

  return result;
}

unint64_t sub_10000FFA8()
{
  result = qword_1000689C8;
  if (!qword_1000689C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689C8);
  }

  return result;
}

uint64_t sub_100010084(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011F10();
  v7 = sub_100011F64();
  v8 = sub_100011334();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100010150@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000113D4();
  *a1 = result;
  return result;
}

uint64_t sub_100010178(uint64_t a1)
{
  v2 = sub_10000FE8C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000101B8()
{
  result = qword_1000689D0;
  if (!qword_1000689D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689D0);
  }

  return result;
}

unint64_t sub_100010210()
{
  result = qword_1000689D8;
  if (!qword_1000689D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689D8);
  }

  return result;
}

unint64_t sub_100010268()
{
  result = qword_1000689E0;
  if (!qword_1000689E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689E0);
  }

  return result;
}

uint64_t sub_1000102BC()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A140);
  sub_1000038F8(v7, qword_10006A140);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10001042C()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_1000107B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_1000117F0(a1);
}

uint64_t sub_10001085C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100011AB4();
}

unint64_t sub_100010904()
{
  result = qword_1000689E8;
  if (!qword_1000689E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689E8);
  }

  return result;
}

uint64_t sub_100010958(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_1000116D0();
}

unint64_t sub_100010A00()
{
  result = qword_1000689F0;
  if (!qword_1000689F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689F0);
  }

  return result;
}

unint64_t sub_100010A58()
{
  result = qword_1000689F8;
  if (!qword_1000689F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000689F8);
  }

  return result;
}

unint64_t sub_100010AB0()
{
  result = qword_100068A00;
  if (!qword_100068A00)
  {
    sub_100003830(&qword_100068A08, qword_100044FF8);
    sub_100010A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A00);
  }

  return result;
}

uint64_t sub_100010B34(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010904();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100010BE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_100011D78();
}

unint64_t sub_100010C90()
{
  result = qword_100068A10;
  if (!qword_100068A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A10);
  }

  return result;
}

uint64_t sub_100010CE4()
{
  v0 = sub_100003930(&qword_100068A70, &qword_1000453F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068A78, &qword_1000453F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100010268();
  sub_100041708();
  v9._object = 0x800000010004EE50;
  v9._countAndFlagsBits = 0xD000000000000015;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100010EB0()
{
  result = qword_100068A18;
  if (!qword_100068A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A18);
  }

  return result;
}

unint64_t sub_100010F08()
{
  result = qword_100068A20;
  if (!qword_100068A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A20);
  }

  return result;
}

unint64_t sub_100010F60()
{
  result = qword_100068A28;
  if (!qword_100068A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A28);
  }

  return result;
}

uint64_t sub_100010FB4()
{
  sub_100011334();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100011024()
{
  result = qword_100068A30;
  if (!qword_100068A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A30);
  }

  return result;
}

unint64_t sub_10001107C()
{
  result = qword_100068A38;
  if (!qword_100068A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A38);
  }

  return result;
}

unint64_t sub_1000110D4()
{
  result = qword_100068A40;
  if (!qword_100068A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A40);
  }

  return result;
}

unint64_t sub_10001112C()
{
  result = qword_100068A48;
  if (!qword_100068A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A48);
  }

  return result;
}

uint64_t sub_1000111FC(uint64_t a1)
{
  v2 = sub_100010268();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001124C()
{
  result = qword_100068A60;
  if (!qword_100068A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A60);
  }

  return result;
}

uint64_t sub_1000112A8(uint64_t a1)
{
  v2 = sub_1000110D4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100011334()
{
  result = qword_100068A68;
  if (!qword_100068A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A68);
  }

  return result;
}

uint64_t sub_100011388(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100061D18;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000113D4()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068A80, &qword_100045428);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 12;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100010268();
  return sub_1000415C8();
}

uint64_t sub_1000116EC()
{
  sub_10003FFA4(0, 12, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100061E58 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10003FFA4((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100011810()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (v9)
      {
        if ([v9 *&v5[4].ivar_base_size])
        {
        }

        else
        {
          if (v6 > 0xB)
          {
            goto LABEL_18;
          }

          if (((1 << v6) & 0x9FC) != 0)
          {
            v10 = [v9 supportsCapability:2603595033];

            if (v10)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (((1 << v6) & 0x600) == 0)
            {
LABEL_18:

LABEL_10:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10003FFD4(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v12 = _swiftEmptyArrayStorage[2];
              v11 = _swiftEmptyArrayStorage[3];
              if (v12 >= v11 >> 1)
              {
                sub_10003FFD4((v11 > 1), v12 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v12 + 1;
              *(&_swiftEmptyArrayStorage[4] + v12) = v6;
              v5 = &DisplayBrightnessDataModel;
              goto LABEL_4;
            }

            v13 = [v9 supportsCapability:504929249];

            if (v13)
            {
              goto LABEL_10;
            }
          }
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    sub_10003FFA4(0, v14, 0);
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 32;
    do
    {
      v17 = *(_swiftEmptyArrayStorage + v16);
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_10003FFA4((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v17;
      ++v16;
      ++v15;
      --v14;
    }

    while (v14);
  }

  v19 = *(v21 + 8);

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_100011AD0()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = &DisplayBrightnessDataModel;
  do
  {
    v3 = *(&off_100061E58 + v1 + 32);
    v4 = [v0 sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if ([v5 *&v2[4].ivar_base_size])
    {

      goto LABEL_3;
    }

    if (v3 <= 0xB)
    {
      if (((1 << v3) & 0x9FC) != 0)
      {
        v6 = [v5 supportsCapability:2603595033];

        if (!v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }

      if (((1 << v3) & 0x600) != 0)
      {
        v9 = [v5 supportsCapability:504929249];

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10003FFD4(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_10003FFD4((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    *(&_swiftEmptyArrayStorage[4] + v8) = v3;
    v2 = &DisplayBrightnessDataModel;
LABEL_3:
    ++v1;
  }

  while (v1 != 12);
  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_10003FFA4(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_10003FFA4((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100011D94()
{
  for (i = 0; i != 12; ++i)
  {
    v1 = *(&off_100061E58 + i + 32);
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 getActiveDevice];

    if (!v3)
    {
      continue;
    }

    if ([v3 isAltAccount])
    {

      continue;
    }

    if ((v1 - 2) < 7)
    {
      goto LABEL_7;
    }

    if ((v1 - 9) >= 2)
    {
      if (v1 != 11)
      {

        goto LABEL_15;
      }

LABEL_7:
      v4 = [v3 supportsCapability:2603595033];

      if (v4)
      {
        goto LABEL_15;
      }

      continue;
    }

    v5 = [v3 supportsCapability:504929249];

    if (v5)
    {
      goto LABEL_15;
    }
  }

  v1 = 12;
LABEL_15:
  v6 = *(v8 + 8);

  return v6(v1);
}

unint64_t sub_100011F10()
{
  result = qword_100068A88;
  if (!qword_100068A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A88);
  }

  return result;
}

unint64_t sub_100011F64()
{
  result = qword_100068A90;
  if (!qword_100068A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A90);
  }

  return result;
}

unint64_t sub_100011FD8()
{
  result = qword_100068AA8;
  if (!qword_100068AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AA8);
  }

  return result;
}

Swift::Int sub_10001202C()
{
  sub_100042108();
  sub_100042008();
  return sub_100042128();
}

Swift::Int sub_100012080()
{
  sub_100042108();
  sub_100042008();
  return sub_100042128();
}

uint64_t sub_1000120C4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100061E88;
  v7._object = v3;
  v5 = sub_1000420C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_100012184@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100061EE8;
  result = sub_1000420C8(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_1000121C8()
{
  result = qword_100068AC0;
  if (!qword_100068AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AC0);
  }

  return result;
}

unint64_t sub_10001221C()
{
  result = qword_100068AC8;
  if (!qword_100068AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AC8);
  }

  return result;
}

uint64_t sub_100012270()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A158);
  sub_1000038F8(v0, qword_10006A158);
  return sub_1000417B8();
}

void (*sub_10001231C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_100012390()
{
  result = qword_100068AD0;
  if (!qword_100068AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AD0);
  }

  return result;
}

uint64_t sub_1000123E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014234();
  v5 = sub_1000138C4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100012454()
{
  result = qword_100068AD8;
  if (!qword_100068AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AD8);
  }

  return result;
}

unint64_t sub_1000124AC()
{
  result = qword_100068AE0;
  if (!qword_100068AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AE0);
  }

  return result;
}

uint64_t sub_100012588(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100014234();
  v7 = sub_100014288();
  v8 = sub_1000138C4();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100012654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013918();
  *a1 = result;
  return result;
}

uint64_t sub_10001267C(uint64_t a1)
{
  v2 = sub_100012390();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000126BC()
{
  result = qword_100068AE8;
  if (!qword_100068AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AE8);
  }

  return result;
}

unint64_t sub_100012714()
{
  result = qword_100068AF0;
  if (!qword_100068AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AF0);
  }

  return result;
}

unint64_t sub_10001276C()
{
  result = qword_100068AF8;
  if (!qword_100068AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068AF8);
  }

  return result;
}

uint64_t sub_1000127C0()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A170);
  sub_1000038F8(v7, qword_10006A170);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100012930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100013CEC(a1);
}

uint64_t sub_1000129D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100013F2C();
}

unint64_t sub_100012A80()
{
  result = qword_100068B00;
  if (!qword_100068B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B00);
  }

  return result;
}

uint64_t sub_100012AD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100013C14();
}

unint64_t sub_100012B7C()
{
  result = qword_100068B08;
  if (!qword_100068B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B08);
  }

  return result;
}

unint64_t sub_100012BD4()
{
  result = qword_100068B10;
  if (!qword_100068B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B10);
  }

  return result;
}

unint64_t sub_100012C2C()
{
  result = qword_100068B18;
  if (!qword_100068B18)
  {
    sub_100003830(&qword_100068B20, qword_100045788);
    sub_100012BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B18);
  }

  return result;
}

uint64_t sub_100012CB0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100012A80();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100012D64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100012E08;

  return sub_100014138();
}

uint64_t sub_100012E08(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100012F20()
{
  result = qword_100068B28;
  if (!qword_100068B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B28);
  }

  return result;
}

uint64_t sub_100012F74()
{
  v0 = sub_100003930(&qword_100068B88, &qword_100045BA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068B90, &qword_100045BB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10001276C();
  sub_100041708();
  v9._object = 0x800000010004EEE0;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

uint64_t sub_100013138()
{
  v0 = qword_100068A98;

  return v0;
}

unint64_t sub_100013178()
{
  result = qword_100068B30;
  if (!qword_100068B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B30);
  }

  return result;
}

unint64_t sub_1000131D0()
{
  result = qword_100068B38;
  if (!qword_100068B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B38);
  }

  return result;
}

unint64_t sub_100013228()
{
  result = qword_100068B40;
  if (!qword_100068B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B40);
  }

  return result;
}

uint64_t sub_10001327C()
{
  sub_1000138C4();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000132EC()
{
  result = qword_100068B48;
  if (!qword_100068B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B48);
  }

  return result;
}

unint64_t sub_100013344()
{
  result = qword_100068B50;
  if (!qword_100068B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B50);
  }

  return result;
}

unint64_t sub_10001339C()
{
  result = qword_100068B58;
  if (!qword_100068B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B58);
  }

  return result;
}

unint64_t sub_1000133F4()
{
  result = qword_100068B60;
  if (!qword_100068B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B60);
  }

  return result;
}

uint64_t sub_1000134C4(uint64_t a1)
{
  v2 = sub_10001276C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013514()
{
  result = qword_100068B78;
  if (!qword_100068B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B78);
  }

  return result;
}

uint64_t sub_100013568()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100013760(uint64_t a1)
{
  v2 = sub_10001339C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SmartStackDestination(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SmartStackDestination(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000138C4()
{
  result = qword_100068B80;
  if (!qword_100068B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068B80);
  }

  return result;
}

uint64_t sub_100013918()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068B98, &unk_100045BE0);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10001276C();
  return sub_1000415C8();
}

uint64_t sub_100013C30()
{
  sub_100040004(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100040004((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100013D0C()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    do
    {
      v3 = [v2 sharedInstance];
      v4 = [v3 getActiveDevice];

      if (v4)
      {
        if ([v4 isAltAccount])
        {
        }

        else
        {
          v5 = [v4 supportsCapability:1795521017];

          if (v5)
          {
            v15 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100040034(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v7 = _swiftEmptyArrayStorage[2];
            v6 = _swiftEmptyArrayStorage[3];
            v8 = v7 + 1;
            if (v7 >= v6 >> 1)
            {
              sub_100040034((v6 > 1), v7 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v8;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_100040004(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    do
    {
      v11 = _swiftEmptyArrayStorage[3];
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        sub_100040004((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      v10 = v12;
      --v9;
    }

    while (v9);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100013F48()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (v2)
  {
    if ([v2 isAltAccount])
    {
    }

    else
    {
      v3 = [v2 supportsCapability:1795521017];

      if (v3)
      {
        sub_100040034(0, 1, 1);
        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        v6 = v5 + 1;
        if (v5 >= v4 >> 1)
        {
          sub_100040034((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    sub_100040004(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        sub_100040004((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v8 = v10;
      --v7;
    }

    while (v7);
  }

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100014154()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (!v2)
  {
    goto LABEL_4;
  }

  if ([v2 isAltAccount])
  {

LABEL_4:
    v3 = 1;
    goto LABEL_6;
  }

  v4 = [v2 supportsCapability:1795521017];

  v3 = v4 ^ 1;
LABEL_6:
  v5 = *(v0 + 8);

  return v5(v3);
}

unint64_t sub_100014234()
{
  result = qword_100068BA0;
  if (!qword_100068BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BA0);
  }

  return result;
}

unint64_t sub_100014288()
{
  result = qword_100068BA8;
  if (!qword_100068BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BA8);
  }

  return result;
}

unint64_t sub_1000142F8()
{
  result = qword_100068BB0;
  if (!qword_100068BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BB0);
  }

  return result;
}

uint64_t sub_10001434C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100061F20;
  v7._object = v3;
  v5 = sub_1000420C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_1000143F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100061F80;
  result = sub_1000420C8(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_100014438()
{
  result = qword_100068BC8;
  if (!qword_100068BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BC8);
  }

  return result;
}

unint64_t sub_10001448C()
{
  result = qword_100068BD0;
  if (!qword_100068BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BD0);
  }

  return result;
}

uint64_t sub_1000144E0()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A188);
  sub_1000038F8(v0, qword_10006A188);
  return sub_1000417B8();
}

void (*sub_100014544(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_1000145B8()
{
  result = qword_100068BD8;
  if (!qword_100068BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BD8);
  }

  return result;
}

uint64_t sub_10001460C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100016248();
  v5 = sub_1000158D8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001467C()
{
  result = qword_100068BE0;
  if (!qword_100068BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BE0);
  }

  return result;
}

unint64_t sub_1000146D4()
{
  result = qword_100068BE8;
  if (!qword_100068BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BE8);
  }

  return result;
}

uint64_t sub_1000147B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100016248();
  v7 = sub_10001629C();
  v8 = sub_1000158D8();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10001487C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001592C();
  *a1 = result;
  return result;
}

uint64_t sub_1000148A4(uint64_t a1)
{
  v2 = sub_1000145B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000148E4()
{
  result = qword_100068BF0;
  if (!qword_100068BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BF0);
  }

  return result;
}

unint64_t sub_10001493C()
{
  result = qword_100068BF8;
  if (!qword_100068BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068BF8);
  }

  return result;
}

unint64_t sub_100014994()
{
  result = qword_100068C00;
  if (!qword_100068C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C00);
  }

  return result;
}

uint64_t sub_1000149E8()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A1A0);
  sub_1000038F8(v7, qword_10006A1A0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100014B60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100015D00(a1);
}

uint64_t sub_100014C08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100015F40();
}

unint64_t sub_100014CB0()
{
  result = qword_100068C08;
  if (!qword_100068C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C08);
  }

  return result;
}

uint64_t sub_100014D04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100015C28();
}

unint64_t sub_100014DAC()
{
  result = qword_100068C10;
  if (!qword_100068C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C10);
  }

  return result;
}

unint64_t sub_100014E04()
{
  result = qword_100068C18;
  if (!qword_100068C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C18);
  }

  return result;
}

unint64_t sub_100014E5C()
{
  result = qword_100068C20;
  if (!qword_100068C20)
  {
    sub_100003830(&qword_100068C28, qword_100045F48);
    sub_100014E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C20);
  }

  return result;
}

uint64_t sub_100014EE0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100014CB0();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100014F94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100012E08;

  return sub_10001614C();
}

unint64_t sub_10001503C()
{
  result = qword_100068C30;
  if (!qword_100068C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C30);
  }

  return result;
}

uint64_t sub_100015090()
{
  v0 = sub_100003930(&qword_100068C90, &qword_100046338);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068C98, &qword_100046340);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100014994();
  sub_100041708();
  v9._object = 0x800000010004EF40;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10001525C()
{
  result = qword_100068C38;
  if (!qword_100068C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C38);
  }

  return result;
}

unint64_t sub_1000152B4()
{
  result = qword_100068C40;
  if (!qword_100068C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C40);
  }

  return result;
}

unint64_t sub_10001530C()
{
  result = qword_100068C48;
  if (!qword_100068C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C48);
  }

  return result;
}

uint64_t sub_100015360()
{
  sub_1000158D8();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000153D0()
{
  result = qword_100068C50;
  if (!qword_100068C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C50);
  }

  return result;
}

unint64_t sub_100015428()
{
  result = qword_100068C58;
  if (!qword_100068C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C58);
  }

  return result;
}

unint64_t sub_100015480()
{
  result = qword_100068C60;
  if (!qword_100068C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C60);
  }

  return result;
}

unint64_t sub_1000154D8()
{
  result = qword_100068C68;
  if (!qword_100068C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C68);
  }

  return result;
}

uint64_t sub_1000155A8(uint64_t a1)
{
  v2 = sub_100014994();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000155F8()
{
  result = qword_100068C80;
  if (!qword_100068C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C80);
  }

  return result;
}

uint64_t sub_10001564C()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10001584C(uint64_t a1)
{
  v2 = sub_100015480();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000158D8()
{
  result = qword_100068C88;
  if (!qword_100068C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068C88);
  }

  return result;
}

uint64_t sub_10001592C()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068CA0, &unk_100046370);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100014994();
  return sub_1000415C8();
}

uint64_t sub_100015C44()
{
  sub_100040064(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100040064((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100015D20()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    do
    {
      v3 = [v2 sharedInstance];
      v4 = [v3 getActiveDevice];

      if (v4)
      {
        if ([v4 isAltAccount])
        {
        }

        else
        {
          v5 = [v4 supportsCapability:3894235144];

          if (v5)
          {
            v15 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100040094(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v7 = _swiftEmptyArrayStorage[2];
            v6 = _swiftEmptyArrayStorage[3];
            v8 = v7 + 1;
            if (v7 >= v6 >> 1)
            {
              sub_100040094((v6 > 1), v7 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v8;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_100040064(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    do
    {
      v11 = _swiftEmptyArrayStorage[3];
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        sub_100040064((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      v10 = v12;
      --v9;
    }

    while (v9);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100015F5C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (v2)
  {
    if ([v2 isAltAccount])
    {
    }

    else
    {
      v3 = [v2 supportsCapability:3894235144];

      if (v3)
      {
        sub_100040094(0, 1, 1);
        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        v6 = v5 + 1;
        if (v5 >= v4 >> 1)
        {
          sub_100040094((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    sub_100040064(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        sub_100040064((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v8 = v10;
      --v7;
    }

    while (v7);
  }

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100016168()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (!v2)
  {
    goto LABEL_4;
  }

  if ([v2 isAltAccount])
  {

LABEL_4:
    v3 = 1;
    goto LABEL_6;
  }

  v4 = [v2 supportsCapability:3894235144];

  v3 = v4 ^ 1;
LABEL_6:
  v5 = *(v0 + 8);

  return v5(v3);
}

unint64_t sub_100016248()
{
  result = qword_100068CA8;
  if (!qword_100068CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CA8);
  }

  return result;
}

unint64_t sub_10001629C()
{
  result = qword_100068CB0;
  if (!qword_100068CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CB0);
  }

  return result;
}

unint64_t sub_10001630C()
{
  result = qword_100068CB8;
  if (!qword_100068CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CB8);
  }

  return result;
}

uint64_t sub_100016360@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100061FB8;
  v7._object = v3;
  v5 = sub_1000420C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_100016408@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100062018;
  result = sub_1000420C8(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_10001644C()
{
  result = qword_100068CD0;
  if (!qword_100068CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CD0);
  }

  return result;
}

unint64_t sub_1000164A0()
{
  result = qword_100068CD8;
  if (!qword_100068CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CD8);
  }

  return result;
}

uint64_t sub_1000164F4()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A1B8);
  sub_1000038F8(v0, qword_10006A1B8);
  return sub_1000417B8();
}

void (*sub_100016558(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_1000165CC()
{
  result = qword_100068CE0;
  if (!qword_100068CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CE0);
  }

  return result;
}

uint64_t sub_100016620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000181FC();
  v5 = sub_1000178EC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100016690()
{
  result = qword_100068CE8;
  if (!qword_100068CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CE8);
  }

  return result;
}

unint64_t sub_1000166E8()
{
  result = qword_100068CF0;
  if (!qword_100068CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CF0);
  }

  return result;
}

uint64_t sub_1000167C4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000181FC();
  v7 = sub_100018250();
  v8 = sub_1000178EC();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100016890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017940();
  *a1 = result;
  return result;
}

uint64_t sub_1000168B8(uint64_t a1)
{
  v2 = sub_1000165CC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000168F8()
{
  result = qword_100068CF8;
  if (!qword_100068CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068CF8);
  }

  return result;
}

unint64_t sub_100016950()
{
  result = qword_100068D00;
  if (!qword_100068D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D00);
  }

  return result;
}

unint64_t sub_1000169A8()
{
  result = qword_100068D08;
  if (!qword_100068D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D08);
  }

  return result;
}

uint64_t sub_1000169FC()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A1D0);
  sub_1000038F8(v7, qword_10006A1D0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100016B74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100017D14(a1);
}

uint64_t sub_100016C1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100017F38();
}

unint64_t sub_100016CC4()
{
  result = qword_100068D10;
  if (!qword_100068D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D10);
  }

  return result;
}

uint64_t sub_100016D18(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100017C3C();
}

unint64_t sub_100016DC0()
{
  result = qword_100068D18;
  if (!qword_100068D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D18);
  }

  return result;
}

unint64_t sub_100016E18()
{
  result = qword_100068D20;
  if (!qword_100068D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D20);
  }

  return result;
}

unint64_t sub_100016E70()
{
  result = qword_100068D28;
  if (!qword_100068D28)
  {
    sub_100003830(&qword_100068D30, qword_1000466D8);
    sub_100016E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D28);
  }

  return result;
}

uint64_t sub_100016EF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100016CC4();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100016FA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100012E08;

  return sub_10001811C();
}

unint64_t sub_100017050()
{
  result = qword_100068D38;
  if (!qword_100068D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D38);
  }

  return result;
}

uint64_t sub_1000170A4()
{
  v0 = sub_100003930(&qword_100068D98, &qword_100046AC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068DA0, &qword_100046AD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000169A8();
  sub_100041708();
  v9._object = 0x800000010004EFA0;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100017270()
{
  result = qword_100068D40;
  if (!qword_100068D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D40);
  }

  return result;
}

unint64_t sub_1000172C8()
{
  result = qword_100068D48;
  if (!qword_100068D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D48);
  }

  return result;
}

unint64_t sub_100017320()
{
  result = qword_100068D50;
  if (!qword_100068D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D50);
  }

  return result;
}

uint64_t sub_100017374()
{
  sub_1000178EC();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000173E4()
{
  result = qword_100068D58;
  if (!qword_100068D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D58);
  }

  return result;
}

unint64_t sub_10001743C()
{
  result = qword_100068D60;
  if (!qword_100068D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D60);
  }

  return result;
}

unint64_t sub_100017494()
{
  result = qword_100068D68;
  if (!qword_100068D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D68);
  }

  return result;
}

unint64_t sub_1000174EC()
{
  result = qword_100068D70;
  if (!qword_100068D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D70);
  }

  return result;
}

uint64_t sub_1000175BC(uint64_t a1)
{
  v2 = sub_1000169A8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001760C()
{
  result = qword_100068D88;
  if (!qword_100068D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D88);
  }

  return result;
}

uint64_t sub_100017660()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100017860(uint64_t a1)
{
  v2 = sub_100017494();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000178EC()
{
  result = qword_100068D90;
  if (!qword_100068D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068D90);
  }

  return result;
}

uint64_t sub_100017940()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068DA8, &unk_100046B00);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_1000169A8();
  return sub_1000415C8();
}

uint64_t sub_100017C58()
{
  sub_1000400C4(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_1000400C4((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100017D34()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    do
    {
      v6 = [v2 sharedInstance];
      v7 = [v6 getActiveDevice];

      if (v7)
      {
        v8 = [v7 isAltAccount];

        if ((v8 & 1) == 0)
        {
          v15 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000400F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v4 = _swiftEmptyArrayStorage[2];
          v3 = _swiftEmptyArrayStorage[3];
          v5 = v4 + 1;
          if (v4 >= v3 >> 1)
          {
            sub_1000400F4((v3 > 1), v4 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v5;
        }
      }

      --v1;
    }

    while (v1);
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_1000400C4(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    do
    {
      v11 = _swiftEmptyArrayStorage[3];
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        sub_1000400C4((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      v10 = v12;
      --v9;
    }

    while (v9);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100017F54()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (!v2)
  {
    v7 = _swiftEmptyArrayStorage[2];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v3 = [v2 isAltAccount];

  if (!v3)
  {
    sub_1000400F4(0, 1, 1);
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      sub_1000400F4((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
LABEL_7:
    sub_1000400C4(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        sub_1000400C4((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v8 = v10;
      --v7;
    }

    while (v7);
  }

LABEL_13:

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100018138()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  v4 = 1;
  if (v2)
  {
    v3 = [v2 isAltAccount];

    if (!v3)
    {
      v4 = 0;
    }
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_1000181FC()
{
  result = qword_100068DB0;
  if (!qword_100068DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DB0);
  }

  return result;
}

unint64_t sub_100018250()
{
  result = qword_100068DB8;
  if (!qword_100068DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DB8);
  }

  return result;
}

unint64_t sub_1000182C0()
{
  result = qword_100068DC0;
  if (!qword_100068DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DC0);
  }

  return result;
}

uint64_t sub_100018358()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A1E8);
  sub_1000038F8(v7, qword_10006A1E8);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_1000184C8()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A200);
  sub_1000038F8(v0, qword_10006A200);
  return sub_1000417B8();
}

uint64_t sub_10001852C()
{
  v0 = sub_100003930(&qword_100068EF8, &qword_100047198);
  sub_100003A7C(v0, qword_10006A218);
  v1 = sub_1000038F8(v0, qword_10006A218);
  sub_1000415E8();
  v2 = sub_1000415F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000185EC()
{
  result = swift_getKeyPath();
  qword_10006A230 = result;
  return result;
}

uint64_t sub_100018624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100003930(&qword_100068EC8, &qword_100047148) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100003930(&qword_100068ED0, &qword_100047150) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100003930(&qword_100068ED8, &qword_100047158) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100041548();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100003930(&qword_100068EE0, &qword_100047160);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100018804, 0, 0);
}

uint64_t sub_100018804()
{
  v1 = v0[8];
  sub_1000415A8();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100019648();
  *v3 = v0;
  v3[1] = sub_1000188D4;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001AB2C, 0, &type metadata for BoldTextEntity, v4);
}

uint64_t sub_1000188D4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000189D0, 0, 0);
}

uint64_t sub_1000189D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000415A8();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000415A8();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100068370 != -1)
  {
    swift_once();
  }

  v4 = qword_10006A230;
  *(v0 + 176) = qword_10006A230;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100003D80(&qword_100068EA0, &qword_100068EA8, &unk_100047110);
  *v6 = v0;
  v6[1] = sub_100018B30;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100018B30()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100018EEC;
  }

  else
  {
    v5 = sub_100018C84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100018C84()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000415A8();
  v0[6] = v0[5];
  v8 = sub_100041748();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100041778();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000182C0();
  sub_100019A24();
  sub_100041518();
  (*(v2 + 16))(v12, v1, v3);
  sub_100041538();
  sub_100041558();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100018EEC()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_100018FB4()
{
  v0 = sub_100003930(&qword_100068EE8, &qword_100047168);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100068370 != -1)
  {
    swift_once();
  }

  sub_100041648();

  sub_100019A24();
  sub_100003D80(&qword_100068EF0, &qword_100068EE8, &qword_100047168);
  sub_100041638();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100019128@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000415A8();
  *a1 = v5;
  return result;
}

uint64_t sub_100019164(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_1000415B8();
}

void (*sub_1000191AC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_100041598();
  return sub_100019220;
}

uint64_t sub_100019224@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000415A8();
  *a1 = v5;
  return result;
}

uint64_t sub_100019260(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1000415B8();
}

void (*sub_100019298(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100041598();
  return sub_10001AB30;
}

uint64_t sub_10001930C()
{
  if (qword_100068370 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001936C()
{
  result = qword_100068DD8;
  if (!qword_100068DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DD8);
  }

  return result;
}

unint64_t sub_1000193C4()
{
  result = qword_100068DE0;
  if (!qword_100068DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DE0);
  }

  return result;
}

uint64_t sub_1000194D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100068368 != -1)
  {
    swift_once();
  }

  v2 = sub_100003930(&qword_100068EF8, &qword_100047198);
  v3 = sub_1000038F8(v2, qword_10006A218);

  return sub_10001AAB8(v3, a1);
}

uint64_t sub_100019558(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AB28;

  return sub_100018624(a1, v5, v4);
}

uint64_t sub_100019604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001A648();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100019648()
{
  result = qword_100068DE8;
  if (!qword_100068DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DE8);
  }

  return result;
}

unint64_t sub_1000196A0()
{
  result = qword_100068DF0;
  if (!qword_100068DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DF0);
  }

  return result;
}

unint64_t sub_1000196F8()
{
  result = qword_100068DF8;
  if (!qword_100068DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DF8);
  }

  return result;
}

unint64_t sub_100019750()
{
  result = qword_100068E00;
  if (!qword_100068E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E00);
  }

  return result;
}

unint64_t sub_1000197A8()
{
  result = qword_100068E08;
  if (!qword_100068E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E08);
  }

  return result;
}

unint64_t sub_1000197FC()
{
  result = qword_100068E10;
  if (!qword_100068E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E10);
  }

  return result;
}

uint64_t sub_10001987C()
{
  v1 = *(v0 + 16);
  *v1 = sub_100040FFC() & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001990C()
{
  sub_100041248(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100019974()
{
  result = qword_100068E18;
  if (!qword_100068E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E18);
  }

  return result;
}

unint64_t sub_1000199CC()
{
  result = qword_100068E20;
  if (!qword_100068E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E20);
  }

  return result;
}

unint64_t sub_100019A24()
{
  result = qword_100068E28;
  if (!qword_100068E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E28);
  }

  return result;
}

unint64_t sub_100019A7C()
{
  result = qword_100068E30;
  if (!qword_100068E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E30);
  }

  return result;
}

uint64_t sub_100019ADC@<X0>(uint64_t *a1@<X8>)
{
  sub_100019DF4();
  result = sub_100041588();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019B98(uint64_t a1)
{
  v2 = sub_100019648();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100019BE8()
{
  result = qword_100068E48;
  if (!qword_100068E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E48);
  }

  return result;
}

uint64_t sub_100019C3C(uint64_t a1)
{
  v2 = sub_100019DF4();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100019C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10001AB28;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100019D4C(uint64_t a1)
{
  v2 = sub_100019A7C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100019D9C()
{
  result = qword_100068E50;
  if (!qword_100068E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E50);
  }

  return result;
}

unint64_t sub_100019DF4()
{
  result = qword_100068E58;
  if (!qword_100068E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E58);
  }

  return result;
}

uint64_t sub_100019E48(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000417D8() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100019ED8, 0, 0);
}

uint64_t sub_100019ED8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100003930(&qword_100068DD0, qword_100046B10);
  sub_1000417B8();
  sub_100003D80(&qword_100068EA0, &qword_100068EA8, &unk_100047110);
  *v2 = sub_1000417A8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100019FFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000196A0();
  *v5 = v2;
  v5[1] = sub_100005884;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10001A0B0()
{
  result = qword_100068E60;
  if (!qword_100068E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E60);
  }

  return result;
}

unint64_t sub_10001A108()
{
  result = qword_100068E68;
  if (!qword_100068E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E68);
  }

  return result;
}

uint64_t sub_10001A160(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000196A0();
  *v6 = v2;
  v6[1] = sub_100007468;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10001A214(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000196A0();
  *v5 = v2;
  v5[1] = sub_100007444;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10001A2C8()
{
  result = qword_100068E70;
  if (!qword_100068E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E70);
  }

  return result;
}

unint64_t sub_10001A320()
{
  result = qword_100068E78;
  if (!qword_100068E78)
  {
    sub_100003830(&qword_100068E80, qword_100046FB0);
    sub_100019A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E78);
  }

  return result;
}

uint64_t sub_10001A3A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000197FC();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001A458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003510;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10001A52C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}