uint64_t sub_100001350()
{
  sub_1000013C8(&qword_10000C168, &unk_100004490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100004410;
  v1 = sub_100003ED8();
  v2 = sub_100001410();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1000013C8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001410()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    sub_100003ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

uint64_t AppIntentsAssembly.load(in:)()
{
  v0 = sub_100004088();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004048();
  sub_1000013C8(&qword_10000C178, &qword_1000044A0);
  sub_100002978();

  sub_100003F08();
  sub_100003FE8();

  sub_100004048();
  sub_1000013C8(&qword_10000C180, &qword_1000044A8);
  sub_100002978();

  v5 = enum case for Scope.singleton(_:);
  v6 = v1[13];
  v6(v4, enum case for Scope.singleton(_:), v0);
  sub_100003FF8();

  v7 = v1[1];
  v7(v4, v0);
  sub_100004048();
  sub_1000013C8(&qword_10000C188, &qword_1000044B0);
  sub_100002978();

  sub_100004048();
  sub_1000013C8(&qword_10000C190, &qword_1000044B8);
  sub_100002978();

  sub_100004048();
  sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  sub_100002978();

  sub_100004048();
  sub_1000041B8();
  sub_100002978();

  v6(v4, v5, v0);
  sub_100003FF8();

  v7(v4, v0);
  sub_100004048();
  sub_1000013C8(&qword_10000C1A0, &qword_1000044C8);
  sub_100002978();

  sub_100004058();
  sub_100004068();
}

uint64_t sub_1000017E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C250, &qword_100004528);
  result = sub_100004008();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C280, qword_100004548);
  result = sub_100004008();
  if (v12)
  {
    sub_1000028CC(&v11, v13);
    v8 = sub_100003F08();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    result = sub_100003EF8();
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100001930(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  sub_100002860(a2, a2[3]);
  sub_1000013C8(&qword_10000C240, &qword_100004518);
  result = sub_100004008();
  if (v5[3])
  {
    sub_100003EE8();
    return sub_1000028E4(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000019BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000041E8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1000041D8();
  a1[3] = v2;
  a1[4] = &protocol witness table for NetworkMonitor;
  *a1 = result;
  return result;
}

uint64_t sub_100001A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  result = sub_100004008();
  if (v8)
  {
    v5 = sub_100004208();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_1000041F8();
    a2[3] = v5;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001ABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_100004198();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000013C8(&qword_10000C268, &qword_100004538);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1000041B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C188, &qword_1000044B0);
  result = sub_100004008();
  if (v23)
  {
    sub_1000028CC(&v22, v24);
    v18 = a1[4];
    sub_100002860(a1, a1[3]);
    sub_100004008();
    result = sub_1000028A4(v10, 1, v11);
    if (result != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      sub_100002860(v24, v24[3]);
      v19 = v21;
      (*(v3 + 104))(v6, enum case for WDSVersion.tokenServiceVersion(_:), v21);
      sub_100004218();
      (*(v3 + 8))(v6, v19);
      (*(v12 + 8))(v15, v11);
      return sub_1000028E4(v24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100001D94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (v9)
  {
    v5 = sub_100003FB8();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_100003FA8();
    a2[3] = v5;
    result = sub_100002930(&qword_10000C278, &type metadata accessor for AppConfigurationSettingsProvider);
    a2[4] = result;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_100003E88();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v17 = sub_100003F88();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003F48();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003EC8();
  sub_100003EB8();
  sub_100003E98();
  sub_100003EA8();

  v13 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (v20)
  {
    sub_1000028CC(&v19, v21);
    sub_100002860(v21, v21[3]);
    sub_100003F98();
    sub_100003F38();
    sub_100003F78();
    sub_1000041A8();
    (*(v5 + 8))(v8, v17);
    (*(v9 + 8))(v12, v16);
    return sub_1000028E4(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100004178();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v34 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100004188();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v30);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004128();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000013C8(&qword_10000C268, &qword_100004538);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v28 - v16;
  v18 = a1[4];
  sub_100002860(a1, a1[3]);
  v19 = sub_1000041B8();
  sub_100004008();
  result = sub_1000028A4(v17, 1, v19);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(v10 + 104);
  v28[1] = v13;
  v21(v13, enum case for WeatherDataCaching.disabled(_:), v9);
  (*(v6 + 104))(v31, enum case for WeatherAvailabilityCaching.disabled(_:), v30);
  (*(v32 + 104))(v34, enum case for WeatherStatisticsCaching.disabled(_:), v33);
  v22 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C180, &qword_1000044A8);
  result = sub_100004008();
  if (!v37)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C190, &qword_1000044B8);
  result = sub_100004008();
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  result = sub_100004008();
  if (v35)
  {
    v25 = sub_100004168();
    v26 = objc_allocWithZone(v25);
    result = sub_100004158();
    v27 = v29;
    v29[3] = v25;
    v27[4] = &protocol witness table for WeatherDataServiceProxy;
    *v27 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000024F4()
{
  sub_1000013C8(&qword_10000C240, &qword_100004518);
  sub_100004078();

  sub_1000013C8(&qword_10000C248, &qword_100004520);
  sub_100004078();

  sub_1000013C8(&qword_10000C250, &qword_100004528);
  sub_100004078();
}

uint64_t sub_1000025E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C1A0, &qword_1000044C8);
  result = sub_100004008();
  if (v8)
  {
    v5 = type metadata accessor for GeocodeWeatherService();
    v6 = swift_allocObject();
    sub_1000028CC(&v7, v6 + 16);
    a2[3] = v5;
    result = sub_100002930(&qword_10000C260, type metadata accessor for GeocodeWeatherService);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000026BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C258, &qword_100004530);
  result = sub_100004008();
  if (v8)
  {
    v5 = sub_100003F68();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_100003F58();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C248, &qword_100004520);
  result = sub_100004008();
  if (v8)
  {
    v5 = sub_100003F28();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_100003F18();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100002860(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000028CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000028E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002978()
{

  return sub_100004078();
}

id sub_10000299C()
{
  result = [objc_allocWithZone(NSRecursiveLock) init];
  qword_10000C288 = result;
  return result;
}

uint64_t sub_1000029D0()
{
  v0 = sub_1000040D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004018();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000013C8(&qword_10000C2A8, &qword_1000045F0);
  v10 = swift_allocObject();
  v27 = xmmword_100004410;
  *(v10 + 16) = xmmword_100004410;
  v11 = sub_100003FD8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_100003FC8();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_100002F54(&qword_10000C2B0, &type metadata accessor for Assembly);
  *(v10 + 32) = v14;
  sub_1000013C8(&qword_10000C2B8, &qword_1000045F8);
  v15 = swift_allocObject();
  *(v15 + 16) = v27;
  v16 = type metadata accessor for AppIntentsAssembly();
  v17 = swift_allocObject();
  *(v15 + 56) = v16;
  *(v15 + 64) = sub_100002F54(&qword_10000C2C0, type metadata accessor for AppIntentsAssembly);
  *(v15 + 32) = v17;
  v18 = sub_100004038();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_100004028();
  if (qword_10000C158 != -1)
  {
    swift_once();
  }

  v21 = qword_10000C288;
  *v9 = qword_10000C288;
  (*(v6 + 104))(v9, enum case for ContainerLock.lock(_:), v5);
  (*(v1 + 104))(v4, enum case for Container.Environment.normal(_:), v0);
  v22 = sub_100004108();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v21;
  result = sub_1000040E8();
  qword_10000C290 = result;
  return result;
}

uint64_t sub_100002D08()
{
  sub_100003E68();
  sub_100003E58();
  if (qword_10000C160 != -1)
  {
    swift_once();
  }

  sub_1000040F8();
  sub_100003E48();

  return sub_1000028E4(v1);
}

uint64_t sub_100002D9C(uint64_t a1)
{
  v2 = sub_100002EF0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002E48();
  sub_100004228();
  return 0;
}

unint64_t sub_100002E48()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100002EF0()
{
  result = qword_10000C2A0;
  if (!qword_10000C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A0);
  }

  return result;
}

uint64_t sub_100002F54(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100002FC4()
{
  sub_100004278();
  sub_100004288(0);
  return sub_100004298();
}

Swift::Int sub_100003018()
{
  sub_100004278();
  sub_100004288(0);
  return sub_100004298();
}

uint64_t sub_100003068()
{
  sub_1000028E4((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000030C4(uint64_t a1, void *a2)
{
  v4 = v2[6];
  sub_100002860(v2 + 2, v2[5]);
  [a2 coordinate];
  sub_100004148();
  v5 = sub_100004098();
  sub_1000041C8();
  v6 = sub_1000040A8();

  return v6;
}

uint64_t sub_100003180(uint64_t *a1)
{
  v2 = sub_1000041C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v58 = &v50 - v8;
  v9 = __chkstk_darwin(v7);
  v57 = &v50 - v10;
  v11 = __chkstk_darwin(v9);
  v61 = &v50 - v12;
  __chkstk_darwin(v11);
  v50 = &v50 - v13;
  v14 = sub_100004138();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v52 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v53 = &v50 - v26;
  v27 = *a1;
  v28 = *(*a1 + 16);
  v59 = v3;
  if (v28)
  {
    v29 = v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v60 = *(v15 + 72);
    v30 = (v3 + 32);
    v31 = &_swiftEmptyArrayStorage;
    v55 = v14;
    v56 = v2;
    v54 = v21;
    do
    {
      sub_100003780(v29, v21);
      sub_1000037E4(v21, v19);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v32 = *v30;
        v33 = v58;
        (*v30)(v58, v19, v2);
        v34 = v2;
        v35 = v57;
        v32(v57, v33, v34);
        v32(v61, v35, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1000039D0(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_1000039D0((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v2 = v56;
        v32(&v31[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v37], v61, v56);
        v21 = v54;
      }

      else
      {
        sub_100003848(v19);
      }

      v29 += v60;
      --v28;
    }

    while (v28);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
  }

  v38 = v53;
  sub_1000036B0(v31, v53);

  v39 = v52;
  sub_1000038A4(v38, v52);
  if (sub_1000028A4(v39, 1, v2) == 1)
  {
    sub_100003914(v39);
    sub_10000397C();
    swift_allocError();
    v40 = sub_1000013C8(&qword_10000C378, &qword_100004660);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_1000040B8();
  }

  else
  {
    v44 = v59;
    v45 = v50;
    (*(v59 + 32))(v50, v39, v2);
    (*(v44 + 16))(v51, v45, v2);
    v46 = sub_1000013C8(&qword_10000C378, &qword_100004660);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v43 = sub_1000040C8();
    (*(v44 + 8))(v45, v2);
  }

  sub_100003914(v38);
  return v43;
}

uint64_t sub_1000036B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1000041C8();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100003C90(a2, v7, 1, v6);
}

uint64_t sub_100003780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004138();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000037E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004138();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003848(uint64_t a1)
{
  v2 = sub_100004138();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000038A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003914(uint64_t a1)
{
  v2 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000397C()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

char *sub_1000039D0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100003ABC(v8, v7);
  v10 = *(sub_1000041C8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100003BB8(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100003ABC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000013C8(&qword_10000C380, &qword_100004668);
  v4 = *(sub_1000041C8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
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

uint64_t sub_100003BB8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000041C8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000041C8();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeocodeWeatherService.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GeocodeWeatherService.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100003DACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100003DF4()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}