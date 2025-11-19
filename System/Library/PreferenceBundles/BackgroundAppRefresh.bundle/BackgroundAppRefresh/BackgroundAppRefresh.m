void sub_19A0(void *a1)
{
  v1 = a1;
  if (qword_1D228[0] != -1)
  {
    sub_12A08();
  }

  if (qword_1D220)
  {
    v2 = getCTGreenTeaOsLogHandle();
    v3 = v2;
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 bundleIdentifier];
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", &v6, 0x16u);
    }
  }
}

id sub_1AE8()
{
  type metadata accessor for FindBackgroundAppRefreshClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1DBC8 = result;
  return result;
}

uint64_t sub_1B48(uint64_t a1, id *a2)
{
  result = sub_12ECC();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC0(uint64_t a1, id *a2)
{
  v3 = sub_12EDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C40@<X0>(void *a1@<X8>)
{
  sub_12EEC();
  v2 = sub_12EBC();

  *a1 = v2;
  return result;
}

uint64_t sub_1C84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_12EBC();

  *a2 = v5;
  return result;
}

uint64_t sub_1CCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_12EEC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CF8(uint64_t a1)
{
  v2 = sub_2008(&qword_1C948);
  v3 = sub_2008(&unk_1C950);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void type metadata accessor for Name()
{
  if (!qword_1C928)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1C928);
    }
  }
}

uint64_t sub_1E48()
{
  v1 = *v0;
  sub_12EEC();
  v2 = sub_12F1C();

  return v2;
}

uint64_t sub_1E84()
{
  v1 = *v0;
  sub_12EEC();
  sub_12F0C();
}

Swift::Int sub_1ED8()
{
  v1 = *v0;
  sub_12EEC();
  sub_131CC();
  sub_12F0C();
  v2 = sub_131EC();

  return v2;
}

uint64_t sub_1F4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_12EEC();
  v6 = v5;
  if (v4 == sub_12EEC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_131AC();
  }

  return v9 & 1;
}

uint64_t sub_2008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_204C()
{
  v0 = sub_12B3C();
  sub_20C4(v0, qword_1DBD0);
  sub_2128(v0, qword_1DBD0);
  return sub_12B2C();
}

uint64_t *sub_20C4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2128(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2160()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_12EBC();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1DBE8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_21DC(uint64_t a1)
{
  sub_233C(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = sub_23F4(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3, v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_1319C();
    (*(v4 + 8))(v7, v2);
    sub_2438(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_12EBC();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_233C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_1D100, &qword_13E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AC(uint64_t *a1, uint64_t *a2)
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

void *sub_23F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2438(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for BackgroundAppRefreshNavigationDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BackgroundAppRefreshNavigationDestination(_WORD *result, int a2, int a3)
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

unint64_t sub_2580()
{
  result = qword_1C9C0;
  if (!qword_1C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9C0);
  }

  return result;
}

Swift::Int sub_25D4()
{
  sub_131CC();
  sub_131DC(0);
  return sub_131EC();
}

Swift::Int sub_2640()
{
  sub_131CC();
  sub_131DC(0);
  return sub_131EC();
}

__n128 sub_2680(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2754@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_23AC(&qword_1C9C8, &qword_13CF0);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - v5;
  v7 = sub_23AC(&qword_1C9D0, &qword_13CF8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v23 - v11;
  v31 = *v1;
  v32 = *(v1 + 2);
  sub_23AC(&qword_1C9D8, &qword_13D00);
  sub_12DEC();
  v13 = v29;
  v14 = v30;
  swift_getKeyPath();
  v31 = v13;
  v32 = v14;
  sub_12DDC();

  v27 = v1;
  sub_23AC(&qword_1C9E0, &unk_13D30);
  sub_3194(&qword_1C9E8, &qword_1C9E0, &unk_13D30);
  sub_12DAC();
  v31 = *(v1 + 24);
  LOBYTE(v32) = *(v1 + 40);
  v29 = *(v1 + 24);
  LOBYTE(v30) = *(v1 + 40);
  sub_23AC(&qword_1C9F0, &qword_14680);
  sub_12DBC();
  if (v28)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.5;
  }

  (*(v24 + 32))(v12, v6, v25);
  *&v12[*(v8 + 44)] = v15;
  v29 = v31;
  LOBYTE(v30) = v32;
  sub_12DBC();
  v16 = v28 == 0;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = v12;
  v20 = v26;
  sub_2ED4(v19, v26);
  result = sub_23AC(&qword_1C9F8, &qword_13D70);
  v22 = (v20 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_2ECC;
  v22[2] = v18;
  return result;
}

uint64_t sub_2A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_31DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2AC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2FC8();
  sub_12ACC();
}

uint64_t sub_2B60()
{
  sub_23AC(&qword_1CA00, &qword_13D78);
  sub_3194(&qword_1CA08, &qword_1CA00, &qword_13D78);
  return sub_12D4C();
}

uint64_t sub_2C30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  sub_23AC(&qword_1C9D8, &qword_13D00);
  sub_12DBC();
  v4 = *(v9 + 32);
  v3 = *(v9 + 40);

  sub_2F54();
  result = sub_12CAC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2CD4(__int128 *a1)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  sub_23AC(&qword_1C9D8, &qword_13D00);
  sub_12DBC();
  v1 = *(v7 + 16);
  v2 = *(v7 + 24);

  v3 = objc_allocWithZone(ISIcon);
  v4 = sub_12EBC();

  [v3 initWithBundleIdentifier:v4];

  v5 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  return sub_12B0C();
}

uint64_t sub_2DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[10] = *(v1 + 26);
  return sub_2754(a1);
}

uint64_t sub_2E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_31DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2E6C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_1C9D0, &qword_13CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2F54()
{
  result = qword_1CA10;
  if (!qword_1CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA10);
  }

  return result;
}

unint64_t sub_2FC8()
{
  result = qword_1CA18;
  if (!qword_1CA18)
  {
    type metadata accessor for BackgroundAppRefreshPerAppState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA18);
  }

  return result;
}

unint64_t sub_3024()
{
  result = qword_1CA20;
  if (!qword_1CA20)
  {
    sub_2E6C(&qword_1C9F8, &qword_13D70);
    sub_30DC();
    sub_3194(&qword_1CA38, &qword_1CA40, &unk_13D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA20);
  }

  return result;
}

unint64_t sub_30DC()
{
  result = qword_1CA28;
  if (!qword_1CA28)
  {
    sub_2E6C(&qword_1C9D0, &qword_13CF8);
    sub_3194(&qword_1CA30, &qword_1C9C8, &qword_13CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA28);
  }

  return result;
}

uint64_t sub_3194(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2E6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_31DC()
{
  v1 = v0;
  swift_getKeyPath();
  v10[0] = v0;
  sub_2FC8();
  sub_12ADC();

  if (qword_1C880 != -1)
  {
    swift_once();
  }

  v2 = qword_1DBE8;
  v3 = sub_12EBC();
  v4 = [v2 dictionaryForKey:v3];

  if (v4)
  {
    v5 = sub_12E8C();

    if (*(v5 + 16) && (v6 = sub_36D8(*(v1 + 16), *(v1 + 24)), (v7 & 1) != 0))
    {
      sub_3FA8(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
    }
  }

  return 1;
}

void sub_3354(uint64_t a1, char a2)
{
  if (qword_1C880 != -1)
  {
    swift_once();
  }

  v4 = qword_1DBE8;
  v5 = sub_12EBC();
  v6 = [v4 dictionaryForKey:v5];

  if (v6)
  {
    v7 = sub_12E8C();
  }

  else
  {
    v7 = sub_3E20(&_swiftEmptyArrayStorage);
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v15 = &type metadata for Bool;
  LOBYTE(v14) = a2 & 1;
  sub_3F30(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_3AC0(v13, v9, v8, isUniquelyReferenced_nonNull_native);
  v15 = sub_23AC(&qword_1CB10, &qword_13DF8);
  *&v14 = v7;
  sub_21DC(&v14);
  sub_3F40(&v14);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = sub_12EBC();
  CFNotificationCenterPostNotification(v11, v12, 0, 0, 1u);
}

uint64_t sub_353C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC20BackgroundAppRefresh31BackgroundAppRefreshPerAppState___observationRegistrar;
  v4 = sub_12AFC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for BackgroundAppRefreshPerAppState()
{
  result = qword_1CA78;
  if (!qword_1CA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_363C()
{
  result = sub_12AFC();
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

unint64_t sub_36D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_131CC();
  sub_12F0C();
  v6 = sub_131EC();

  return sub_3750(a1, a2, v6);
}

unint64_t sub_3750(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_131AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_3808(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_23AC(&qword_1CB18, &qword_13E08);
  v36 = a2;
  result = sub_1314C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_3F30(v25, v37);
      }

      else
      {
        sub_3FA8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_131CC();
      sub_12F0C();
      result = sub_131EC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_3F30(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_3AC0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_36D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_3C7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_3808(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_36D8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_131BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_2438(v23);

    return sub_3F30(a1, v23);
  }

  else
  {
    sub_3C10(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_3C10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_3F30(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_3C7C()
{
  v1 = v0;
  sub_23AC(&qword_1CB18, &qword_13E08);
  v2 = *v0;
  v3 = sub_1313C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_3FA8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_3F30(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_3E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23AC(&qword_1CB18, &qword_13E08);
    v3 = sub_1315C();
    v4 = a1 + 32;

    while (1)
    {
      sub_4004(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_36D8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3F30(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_3F30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3F40(uint64_t a1)
{
  v2 = sub_23AC(&qword_1D100, &qword_13E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4004(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_1CB20, &qword_13E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_40A4()
{
  result = qword_1CBC0;
  if (!qword_1CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC0);
  }

  return result;
}

uint64_t sub_4114()
{
  v1 = *v0;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  v3 = sub_420C();

  return SettingsPane.init(makeContent:)(sub_41D0, v1, refreshed, v3);
}

char *sub_4190@<X0>(char **a1@<X8>)
{
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsListState();
  v3 = *(refreshed + 48);
  v4 = *(refreshed + 52);
  swift_allocObject();
  result = sub_AB2C();
  *a1 = result;
  return result;
}

uint64_t sub_41D0@<X0>(void *a1@<X8>)
{

  return sub_47B8(v2, a1);
}

unint64_t sub_420C()
{
  result = qword_1CBC8;
  if (!qword_1CBC8)
  {
    type metadata accessor for BackgroundAppRefreshSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC8);
  }

  return result;
}

unint64_t sub_4278()
{
  result = qword_1CBD0;
  if (!qword_1CBD0)
  {
    sub_2E6C(&qword_1CBD8, "2\x1B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBD0);
  }

  return result;
}

void sub_42DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  v4 = *(*(refreshed - 8) + 64);
  __chkstk_darwin(refreshed - 8, v5);
  v7 = (&v25.receiver - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25.receiver = v1;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  if (qword_1C870 != -1)
  {
    swift_once();
  }

  v8.super.isa = qword_1DBC8;
  v24._countAndFlagsBits = 0x8000000000014990;
  v26._countAndFlagsBits = 0xD000000000000016;
  v26._object = 0x8000000000014970;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_12A2C(v26, v27, v8, v28, v24);
  v9 = sub_12EBC();

  [v1 setTitle:v9];

  v10 = *&v1[OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState];

  sub_47B8(v11, v7);
  v12 = objc_allocWithZone(sub_23AC(&qword_1CC10, "N\x1B"));
  v13 = sub_12C5C();
  v14 = [v13 view];
  if (!v14)
  {
    v15 = v13;
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:v15];

    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;

      [v15 setFrame:{0.0, 0.0, v21, v23}];
      [v15 setAutoresizingMask:18];
      [v1 addChildViewController:v13];
      [v13 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_474C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_47B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_12ABC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v7 = sub_12A3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_12EAC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v16 = *(type metadata accessor for BackgroundAppRefreshSettingsList() + 20);
  sub_12E9C();
  if (qword_1C870 != -1)
  {
    swift_once();
  }

  v17 = [qword_1DBC8 bundleURL];
  sub_12A7C();

  (*(v8 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v7);
  sub_12AAC();
  sub_12A5C();
  v20[0] = a1;
  type metadata accessor for BackgroundAppRefreshSettingsListState();
  result = sub_12D5C();
  v19 = v20[2];
  *a2 = v20[1];
  a2[1] = v19;
  return result;
}

uint64_t type metadata accessor for BackgroundAppRefreshSettingsList()
{
  result = qword_1CC70;
  if (!qword_1CC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4A68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_12A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_4B28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_12A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4BCC()
{
  sub_4C50();
  if (v0 <= 0x3F)
  {
    sub_12A4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4C50()
{
  if (!qword_1CC80)
  {
    type metadata accessor for BackgroundAppRefreshSettingsListState();
    v0 = sub_12D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1CC80);
    }
  }
}

uint64_t sub_4CC4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_23AC(&qword_1CCB0, &qword_13FE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v44 - v5;
  v7 = sub_12A4C();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_12E6C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  v19 = refreshed - 8;
  v20 = *(refreshed - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(refreshed, v22);
  v23 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23AC(&qword_1CCB8, &qword_13FF0);
  v51 = *(v24 - 8);
  v52 = v24;
  v25 = *(v51 + 64);
  __chkstk_darwin(v24, v26);
  v49 = v44 - v27;
  sub_8254(v1, v23);
  v28 = *(v20 + 80);
  v29 = (v28 + 16) & ~v28;
  v46 = v21;
  v44[1] = v28;
  v30 = swift_allocObject();
  v45 = v29;
  v47 = v23;
  sub_82BC(v23, v30 + v29);
  v57 = sub_8320;
  v58 = v30;
  v44[0] = v30;
  *v17 = 0xD00000000000002DLL;
  v17[1] = 0x80000000000149B0;
  v48 = v13;
  v31 = *(v13 + 104);
  v50 = v12;
  v31(v17, enum case for SettingsEventImage.graphicIcon(_:), v12);
  v32 = v11;
  (*(v55 + 16))(v11, v1 + *(v19 + 28), v56);
  v53 = v1;
  sub_7CE0();
  sub_12A8C();
  v33 = sub_12A9C();
  v34 = *(v33 - 8);
  v35 = v6;
  result = (*(v34 + 48))(v6, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = sub_23AC(&qword_1CCC0, &qword_13FF8);
    v38 = sub_3194(&qword_1CCC8, &qword_1CCC0, &qword_13FF8);
    v39 = v49;
    sub_12CCC();

    (*(v55 + 8))(v32, v56);
    (*(v48 + 8))(v17, v50);

    (*(v34 + 8))(v35, v33);
    v40 = v47;
    sub_8254(v53, v47);
    v41 = v45;
    v42 = swift_allocObject();
    sub_82BC(v40, v42 + v41);
    type metadata accessor for GlobalBackgroundAppRefreshStatePicker();
    v57 = v37;
    v58 = v38;
    swift_getOpaqueTypeConformance2();
    sub_8420();
    sub_84C4(&qword_1CCD8, type metadata accessor for GlobalBackgroundAppRefreshStatePicker);
    v43 = v52;
    sub_12D3C();

    return (*(v51 + 8))(v39, v43);
  }

  return result;
}

uint64_t sub_5284@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = sub_12A4C();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AC(&qword_1CD00, &qword_14040);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v28 - v12;
  v14 = sub_23AC(&qword_1CD08, &qword_14048);
  v15 = *(v14 - 8);
  v29 = v14;
  v30 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v28 - v18;
  v32 = a1;
  sub_23AC(&qword_1CD10, &qword_14050);
  sub_3194(&qword_1CD18, &qword_1CD10, &qword_14050);
  sub_12C7C();
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  (*(v3 + 16))(v7, a1 + *(refreshed + 20), v28);
  v21 = sub_12C9C();
  v23 = v22;
  LOBYTE(a1) = v24;
  v25 = sub_3194(&qword_1CD20, &qword_1CD00, &qword_14040);
  sub_12D2C();
  sub_8514(v21, v23, a1 & 1);

  (*(v9 + 8))(v13, v8);
  v33 = v8;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_12CBC();
  return (*(v30 + 8))(v19, v26);
}

uint64_t sub_55D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_23AC(&qword_1CD28, &qword_14058);
  v3 = *(v37 - 8);
  v4 = v3[8];
  v6 = __chkstk_darwin(v37, v5);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v31 - v9;
  v11 = sub_23AC(&qword_1CD30, &qword_14060);
  v35 = *(v11 - 8);
  v12 = v35;
  v13 = *(v35 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v31 - v19;
  v40 = a1;
  sub_61EC(&v41);
  sub_23AC(&qword_1CD38, &qword_14068);
  sub_23AC(&qword_1CD40, &qword_14070);
  sub_852C();
  sub_874C();
  v34 = v20;
  sub_12E4C();
  v39 = a1;
  sub_23AC(&qword_1CDC8, &qword_140B8);
  sub_8908();
  v32 = v10;
  sub_12E3C();
  v21 = *(v12 + 16);
  v33 = v17;
  v21(v17, v20, v11);
  v22 = v3[2];
  v23 = v36;
  v24 = v10;
  v25 = v37;
  v22(v36, v24, v37);
  v26 = v38;
  v21(v38, v17, v11);
  v27 = sub_23AC(&qword_1CDE0, &qword_140C0);
  v22(&v26[*(v27 + 48)], v23, v25);
  v28 = v3[1];
  v28(v32, v25);
  v29 = *(v35 + 8);
  v29(v34, v11);
  v28(v23, v25);
  return (v29)(v33, v11);
}

uint64_t sub_5950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23AC(&qword_1CD58, &qword_14078);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v17 - v7;
  sub_5B54(a1, v17 - v7);
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D6C();
  v10 = v17[1];
  swift_getKeyPath();
  v18 = v10;
  sub_84C4(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  if (*(v10 + 17) == 1)
  {

    v11 = 1;
  }

  else
  {
    swift_getKeyPath();
    v18 = v10;
    sub_12ADC();

    v12 = *(v10 + 19);

    v11 = v12 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v11 & 1;
  sub_9480(v8, a2);
  result = sub_23AC(&qword_1CD38, &qword_14068);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_9468;
  v16[2] = v14;
  return result;
}

uint64_t sub_5B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_23AC(&qword_1CD88, &unk_14090);
  v28 = *(v31 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v31, v4);
  v6 = &v28 - v5;
  v29 = sub_23AC(&qword_1CE28, &qword_141F8);
  v7 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29, v8);
  v10 = &v28 - v9;
  v11 = sub_23AC(&qword_1CD78, &qword_14088);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  v17 = *a1;
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D6C();
  v19 = *(v32 + 16);

  if (v19 == 1)
  {
    LOBYTE(v34) = 0;
    __chkstk_darwin(v20, v21);
    *(&v28 - 2) = a1;
    sub_23AC(&qword_1CE30, &qword_14228);
    sub_95CC(&qword_1CE38, &qword_1CE30, &qword_14228);
    sub_8420();
    sub_12BFC();
    (*(v12 + 16))(v10, v16, v11);
    swift_storeEnumTagMultiPayload();
    sub_3194(&qword_1CD70, &qword_1CD78, &qword_14088);
    sub_3194(&qword_1CD80, &qword_1CD88, &unk_14090);
    sub_12C6C();
    return (*(v12 + 8))(v16, v11);
  }

  else
  {
    v32 = v17;
    v33 = v18;
    sub_12D7C();
    v23 = v34;
    v24 = v35;
    v25 = v36;
    swift_getKeyPath();
    v34 = v23;
    v35 = v24;
    v36 = v25;
    sub_23AC(&qword_1CCE8, &qword_14030);
    sub_12DDC();

    sub_12DAC();
    v26 = v28;
    v27 = v31;
    (*(v28 + 16))(v10, v6, v31);
    swift_storeEnumTagMultiPayload();
    sub_3194(&qword_1CD70, &qword_1CD78, &qword_14088);
    sub_3194(&qword_1CD80, &qword_1CD88, &unk_14090);
    sub_12C6C();
    return (*(v26 + 8))(v6, v27);
  }
}

uint64_t sub_6044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D6C();
  v3 = sub_9778();

  sub_992C(v3);
  sub_2F54();
  result = sub_12CAC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_60FC@<X0>(uint64_t a1@<X8>)
{
  sub_12C4C();
  if (qword_1C870 != -1)
  {
    swift_once();
  }

  v2 = qword_1DBC8;
  result = sub_12C8C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_61EC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D6C();
  swift_getKeyPath();
  sub_84C4(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  v5 = v34[17];

  if (v5 == 1)
  {
    *&v35 = v4;
    *(&v35 + 1) = v3;
    sub_12D6C();
    v6 = v34[16];

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      v33 = a1;
      if (v6)
      {
        if (wapiCapability)
        {
          sub_12C4C();
          if (qword_1C870 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_12C4C();
          if (qword_1C870 == -1)
          {
            goto LABEL_36;
          }
        }
      }

      else if (wapiCapability)
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_12D6C();
  swift_getKeyPath();
  sub_12ADC();

  v10 = v34[18];

  if (v10 == 1)
  {
    *&v35 = v4;
    *(&v35 + 1) = v3;
    sub_12D6C();
    v11 = v34[16];

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v12 = result;
      v13 = MobileGestalt_get_wapiCapability();

      v33 = a1;
      if (v11)
      {
        if (v13)
        {
          sub_12C4C();
          if (qword_1C870 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_12C4C();
          if (qword_1C870 == -1)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v13)
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
LABEL_36:
          v17 = qword_1DBC8;
          v18 = sub_12C8C();
          v20 = v19;
          v22 = v21 & 1;
          sub_9358(v18, v19, v21 & 1);

          sub_12C6C();
          sub_23AC(&qword_1CDC0, &qword_140B0);
          sub_95CC(&qword_1CDB8, &qword_1CDC0, &qword_140B0);
          sub_12C6C();
          sub_8514(v18, v20, v22);

          sub_9368(v4, v3, v37);
          sub_9368(v4, v3, v37);
          sub_23AC(&qword_1CDB0, &qword_140A8);
          sub_885C();
          sub_12C6C();
          sub_93AC(v35, v3, v37);
          sub_23AC(&qword_1CDA0, &qword_140A0);
          sub_87D8();
          sub_12C6C();
          sub_93B4(v35, v3, v37);
          sub_93F8(v35, v3, v37);
          result = sub_93B4(v35, v3, v37);
          v23 = v35;
          v24 = v37;
          v25 = v38 | (v39 << 16);
          v26 = v40;
          a1 = v33;
LABEL_39:
          *a1 = v23;
          *(a1 + 16) = v24;
          *(a1 + 32) = v25;
          *(a1 + 34) = BYTE2(v25);
          *(a1 + 35) = v26;
          return result;
        }
      }

LABEL_47:
      swift_once();
      goto LABEL_36;
    }

    goto LABEL_50;
  }

  *&v36 = v4;
  *(&v36 + 1) = v3;
  sub_12D6C();
  v14 = v34[16];

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    v16 = MobileGestalt_get_wapiCapability();

    if (v14)
    {
      if (v16)
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_12C4C();
        if (qword_1C870 == -1)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v16)
    {
      sub_12C4C();
      if (qword_1C870 == -1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_12C4C();
      if (qword_1C870 == -1)
      {
LABEL_38:
        v27 = qword_1DBC8;
        v28 = sub_12C8C();
        v30 = v29;
        v32 = v31 & 1;
        sub_9358(v28, v29, v31 & 1);

        sub_12C6C();
        sub_23AC(&qword_1CDC0, &qword_140B0);
        sub_95CC(&qword_1CDB8, &qword_1CDC0, &qword_140B0);
        sub_12C6C();
        sub_8514(v28, v30, v32);

        sub_23AC(&qword_1CDA0, &qword_140A0);
        sub_23AC(&qword_1CDB0, &qword_140A8);
        sub_87D8();
        sub_885C();
        result = sub_12C6C();
        v23 = v36;
        v24 = v37;
        v25 = v38 | (v39 << 16);
        v26 = v40;
        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_38;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_7540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  v4 = *(refreshed - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(refreshed - 8, v6);
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D7C();
  swift_getKeyPath();
  sub_23AC(&qword_1CCE8, &qword_14030);
  sub_12DDC();

  v8 = v16;
  v9 = v17;
  v10 = v18;

  KeyPath = swift_getKeyPath();
  sub_8254(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_82BC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  return sub_7A28(v8, v9, v10, KeyPath, sub_8AD8, v13);
}

uint64_t sub_7710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = *a2;
  v13 = a2[1];
  v10 = *a1;

  v9 = v4;

  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D7C();
  swift_getKeyPath();
  sub_23AC(&qword_1CCE8, &qword_14030);
  sub_12DDC();

  sub_12D6C();
  swift_getKeyPath();
  sub_84C4(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  if (*(v11 + 17) == 1)
  {

    v7 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_12ADC();

    v8 = *(v11 + 19);

    v7 = v8 ^ 1;
  }

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  *(a3 + 41) = v7 & 1;
  return result;
}

uint64_t sub_792C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_9778();
  *a2 = result;
  return result;
}

uint64_t sub_7958(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_84C4(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ACC();
}

uint64_t sub_7A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23AC(&qword_1CDE8, &qword_14110);
  sub_12DBC();
  if (!(v19 >> 62))
  {
    v12 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));

LABEL_3:
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    __chkstk_darwin(v13, v14);
    sub_23AC(&qword_1D0A0, &qword_14480);
    sub_898C();
    sub_3194(&qword_1CDF0, &qword_1D0A0, &qword_14480);
    sub_3194(&qword_1CDF8, &qword_1D0A0, &qword_14480);
    swift_getKeyPath();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a5;
    v15[6] = a6;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_8ED4;
    *(v16 + 24) = v15;

    sub_23AC(&qword_1CE00, &qword_14140);
    sub_8F70();
    return sub_12E2C();
  }

  v18 = sub_1312C();

  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_7CE0()
{
  v0 = sub_12ABC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_12A3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_12EAC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  sub_23AC(&qword_1CCF8, &qword_14038);
  v12 = *(sub_12A4C() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_13F60;
  sub_12E9C();
  if (qword_1C870 != -1)
  {
    swift_once();
  }

  v16 = [qword_1DBC8 bundleURL];
  sub_12A7C();

  (*(v4 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v3);
  sub_12AAC();
  sub_12A5C();
  return v15;
}

uint64_t sub_7F7C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_12ABC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_12A3C();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v26, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_12EAC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  sub_23AC(&qword_1CCE0, &qword_14000);
  sub_12D7C();
  v17 = v31;
  v18 = v32;
  v19 = v33;
  swift_getKeyPath();
  v31 = v17;
  v32 = v18;
  v33 = v19;
  sub_23AC(&qword_1CCE8, &qword_14030);
  sub_12DDC();

  v20 = v28;
  v21 = v29;
  v22 = v30;

  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  LODWORD(v17) = *(type metadata accessor for GlobalBackgroundAppRefreshStatePicker() + 20);
  sub_12E9C();
  if (qword_1C870 != -1)
  {
    swift_once();
  }

  v23 = [qword_1DBC8 bundleURL];
  sub_12A7C();

  (*(v8 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v26);
  sub_12AAC();
  return sub_12A5C();
}

uint64_t sub_8254(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_82BC(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for BackgroundAppRefreshSettingsList();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_8320@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundAppRefreshSettingsList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5284(v4, a1);
}

uint64_t sub_83A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundAppRefreshSettingsList() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_7F7C(v4, a1);
}

unint64_t sub_8420()
{
  result = qword_1CCD0;
  if (!qword_1CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CCD0);
  }

  return result;
}

uint64_t sub_8474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_9778();
  *a2 = result;
  return result;
}

uint64_t sub_84C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8514(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_852C()
{
  result = qword_1CD48;
  if (!qword_1CD48)
  {
    sub_2E6C(&qword_1CD38, &qword_14068);
    sub_85E4();
    sub_3194(&qword_1CA38, &qword_1CA40, &unk_13D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD48);
  }

  return result;
}

unint64_t sub_85E4()
{
  result = qword_1CD50;
  if (!qword_1CD50)
  {
    sub_2E6C(&qword_1CD58, &qword_14078);
    sub_8668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD50);
  }

  return result;
}

unint64_t sub_8668()
{
  result = qword_1CD60;
  if (!qword_1CD60)
  {
    sub_2E6C(&qword_1CD68, &qword_14080);
    sub_3194(&qword_1CD70, &qword_1CD78, &qword_14088);
    sub_3194(&qword_1CD80, &qword_1CD88, &unk_14090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD60);
  }

  return result;
}

unint64_t sub_874C()
{
  result = qword_1CD90;
  if (!qword_1CD90)
  {
    sub_2E6C(&qword_1CD40, &qword_14070);
    sub_87D8();
    sub_885C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD90);
  }

  return result;
}

unint64_t sub_87D8()
{
  result = qword_1CD98;
  if (!qword_1CD98)
  {
    sub_2E6C(&qword_1CDA0, &qword_140A0);
    sub_885C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD98);
  }

  return result;
}

unint64_t sub_885C()
{
  result = qword_1CDA8;
  if (!qword_1CDA8)
  {
    sub_2E6C(&qword_1CDB0, &qword_140A8);
    sub_95CC(&qword_1CDB8, &qword_1CDC0, &qword_140B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CDA8);
  }

  return result;
}

unint64_t sub_8908()
{
  result = qword_1CDD0;
  if (!qword_1CDD0)
  {
    sub_2E6C(&qword_1CDC8, &qword_140B8);
    sub_898C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CDD0);
  }

  return result;
}

unint64_t sub_898C()
{
  result = qword_1CDD8;
  if (!qword_1CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CDD8);
  }

  return result;
}

uint64_t sub_89E8()
{
  v1 = (type metadata accessor for BackgroundAppRefreshSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_12A4C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8AD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BackgroundAppRefreshSettingsList() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_7710(a1, v6, a2);
}

uint64_t sub_8B58(unint64_t a1)
{
  sub_23AC(&qword_1CDE8, &qword_14110);
  result = sub_12DBC();
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_130FC();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v3 = *(v4 + 8 * a1 + 32);

LABEL_5:

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

__n128 sub_8C2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X6>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a1;
  type metadata accessor for BackgroundAppRefreshPerAppState();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_12DFC();
  a5(&v19, &v25);

  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  result = v20;
  *a6 = v19;
  *(a6 + 8) = result;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 41) = v17;
  return result;
}

uint64_t sub_8D90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_12C0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8DFC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8E4C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  result = sub_8B58(*a1);
  *a2 = result;
  a2[1] = v9;
  a2[2] = v10;
  return result;
}

uint64_t sub_8E84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

double sub_8ED4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[6];
  v6 = *a2;
  v5 = a2[1];
  *&result = sub_8C2C(*a1, v3[2], v3[3], v3[4], v3[5], a3).n128_u64[0];
  return result;
}

uint64_t sub_8EF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8F28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v7[1] = a1[2];
  v8 = v4;
  v7[0] = v5;
  return v2(&v8, v7);
}

unint64_t sub_8F70()
{
  result = qword_1CE08;
  if (!qword_1CE08)
  {
    sub_2E6C(&qword_1CE00, &qword_14140);
    sub_8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE08);
  }

  return result;
}

unint64_t sub_8FF4()
{
  result = qword_1CE10;
  if (!qword_1CE10)
  {
    sub_2E6C(&qword_1CE18, &qword_14148);
    sub_9080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE10);
  }

  return result;
}

unint64_t sub_9080()
{
  result = qword_1CE20;
  if (!qword_1CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE20);
  }

  return result;
}

uint64_t sub_90D4@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v9 = *(a1 + 1);
  sub_23AC(&qword_1CDE8, &qword_14110);
  result = sub_12DBC();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v6 = sub_130FC();
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v7 + 8 * v4 + 32);

LABEL_5:

    *a3 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_9194@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_90D4(v1 + 4, v1 + 7, a1);
}

uint64_t sub_91A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v5 = *a1;
  v6 = *a5;
  v12 = *a4;
  v13 = *(a4 + 1);
  sub_23AC(&qword_1CDE8, &qword_14110);
  sub_12DBC();
  v7 = v11;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    result = sub_92DC(v11);
    v7 = result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * v6;
    v10 = *(&stru_20.cmd + v9);
    *(v9 + 32) = v5;

    return sub_12DCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_927C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_92DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1312C();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_9358(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9370(uint64_t a1, uint64_t a2, char a3)
{
  sub_9358(a1, a2, a3 & 1);
}

uint64_t sub_93BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_8514(a1, a2, a3 & 1);
}

uint64_t sub_9400@<X0>(_BYTE *a1@<X8>)
{
  result = sub_12C0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_9480(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_1CD58, &qword_14078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_94F0@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  if (*(*result + 16) == 1)
  {
    __break(1u);
  }

  else
  {
    result = sub_9778();
    *a2 = result != 0;
  }

  return result;
}

uint64_t sub_9534(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_9B9C();
}

uint64_t sub_95CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2E6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9634()
{
  sub_2E6C(&qword_1CCB8, &qword_13FF0);
  type metadata accessor for GlobalBackgroundAppRefreshStatePicker();
  sub_2E6C(&qword_1CCC0, &qword_13FF8);
  sub_3194(&qword_1CCC8, &qword_1CCC0, &qword_13FF8);
  swift_getOpaqueTypeConformance2();
  sub_8420();
  sub_84C4(&qword_1CCD8, type metadata accessor for GlobalBackgroundAppRefreshStatePicker);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_9778()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  swift_getKeyPath();
  sub_12ADC();

  if (v0[17])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_12ADC();

  if (v0[20] != 1)
  {
    return 0;
  }

  if (v0[16] != 1)
  {
    return 1;
  }

  if (qword_1C880 != -1)
  {
    swift_once();
  }

  v1 = qword_1DBE8;
  v2 = sub_12EBC();
  LODWORD(v1) = [v1 BOOLForKey:v2];

  if (v1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_992C(char a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (a1)
    {
      if (a1 == 1)
      {
        if (wapiCapability)
        {
          if (qword_1C870 != -1)
          {
            swift_once();
          }

          v5.super.isa = qword_1DBC8;
          v8._countAndFlagsBits = 0x8000000000014990;
          v6._countAndFlagsBits = 1312902231;
          v6._object = 0xE400000000000000;
        }

        else
        {
          if (qword_1C870 != -1)
          {
            swift_once();
          }

          v5.super.isa = qword_1DBC8;
          v8._countAndFlagsBits = 0x8000000000014990;
          v6._countAndFlagsBits = 0x69462D6957;
          v6._object = 0xE500000000000000;
        }
      }

      else
      {
        if (wapiCapability)
        {
          v7 = "Wi-Fi & Cellular Data";
          if (qword_1C870 != -1)
          {
            swift_once();
          }

          v5.super.isa = qword_1DBC8;
          v8._countAndFlagsBits = 0x8000000000014990;
          v6._countAndFlagsBits = 0xD000000000000014;
        }

        else
        {
          v7 = "B16@?0@LSApplicationRecord8";
          if (qword_1C870 != -1)
          {
            swift_once();
          }

          v5.super.isa = qword_1DBC8;
          v8._countAndFlagsBits = 0x8000000000014990;
          v6._countAndFlagsBits = 0xD000000000000015;
        }

        v6._object = (v7 | 0x8000000000000000);
      }
    }

    else
    {
      if (qword_1C870 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1DBC8;
      v8._countAndFlagsBits = 0x8000000000014990;
      v6._countAndFlagsBits = 6710863;
      v6._object = 0xE300000000000000;
    }

    v9.value._countAndFlagsBits = 0;
    v9.value._object = 0;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return sub_12A2C(v6, v9, v5, v10, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9B70()
{
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_9778();
  }
}

uint64_t sub_9B9C()
{
  if (*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v2);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

uint64_t sub_9C9C()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  v1 = *(v0 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates);
}

uint64_t sub_9D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  *a2 = *(v3 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates);
}

uint64_t sub_9DFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ACC();
}

uint64_t sub_9EC8()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  return *(v0 + 17);
}

uint64_t sub_9F68()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  return *(v0 + 18);
}

Swift::Int sub_A01C()
{
  v1 = *v0;
  sub_131CC();
  sub_131DC(v1);
  return sub_131EC();
}

Swift::Int sub_A090()
{
  v1 = *v0;
  sub_131CC();
  sub_131DC(v1);
  return sub_131EC();
}

uint64_t sub_A0E4()
{
  v0 = sub_11660(&off_18DF0);
  result = swift_arrayDestroy();
  qword_1DBF0 = v0;
  return result;
}

uint64_t sub_A130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_A200(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

uint64_t sub_A310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_A3E0(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

uint64_t sub_A4F0()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  return *(v0 + 19);
}

uint64_t sub_A590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_A660(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

uint64_t sub_A770()
{
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  return *(v0 + 20);
}

uint64_t sub_A810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
  sub_12ADC();

  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_A8B8(uint64_t result)
{
  if (*(v1 + 20) == (result & 1))
  {
    *(v1 + 20) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

void sub_A9C8(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    [v4 setAutomaticAppUpdatesAllowed:a1 != 0];

    if (*(a2 + 16) == 1)
    {
      if (qword_1C880 != -1)
      {
        swift_once();
      }

      v9 = &type metadata for Bool;
      v8[0] = a1 == 1;
      sub_21DC(v8);
      sub_118C8(v8, &qword_1D100, &qword_13E00);
    }

    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = sub_12EBC();
    CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

char *sub_AB2C()
{
  v1 = v0;
  v159 = *v0;
  v2 = sub_23AC(&qword_1D020, &qword_14308);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v168 = (v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5, v7);
  v10 = v145 - v9;
  __chkstk_darwin(v8, v11);
  v188 = (v145 - v12);
  v155 = sub_23AC(&qword_1D028, &qword_14310);
  v154 = *(v155 - 8);
  v13 = *(v154 + 64);
  __chkstk_darwin(v155, v14);
  v153 = (v145 - v15);
  v166 = sub_23AC(&qword_1D030, &qword_14318);
  v165 = *(v166 - 8);
  v16 = *(v165 + 64);
  v18 = __chkstk_darwin(v166, v17);
  v157 = v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v19;
  __chkstk_darwin(v18, v20);
  v164 = v145 - v21;
  v170 = sub_23AC(&qword_1D038, &qword_14320);
  v163 = *(v170 - 8);
  v22 = *(v163 + 64);
  v24 = __chkstk_darwin(v170, v23);
  __chkstk_darwin(v24, v25);
  v169 = v145 - v26;
  v187 = sub_23AC(&qword_1D040, &qword_14328);
  v27 = *(v187 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v187, v29);
  v31 = (v145 - v30);
  v32 = sub_23AC(&qword_1D048, &qword_14330);
  v185 = *(v32 - 8);
  v186 = v32;
  v33 = *(v185 + 64);
  v35 = __chkstk_darwin(v32, v34);
  v177 = v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v36;
  __chkstk_darwin(v35, v37);
  v184 = v145 - v38;
  v162 = sub_23AC(&qword_1D050, &qword_14338);
  v161 = *(v162 - 8);
  v39 = *(v161 + 64);
  v41 = __chkstk_darwin(v162, v40);
  v43 = v145 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v42;
  __chkstk_darwin(v41, v44);
  v160 = v145 - v45;
  v183 = sub_12BBC();
  v46 = *(v183 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v183, v48);
  v50 = v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v52 = result;
  v149 = v22;
  v150 = v43;
  v151 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  cellularDataCapability = MobileGestalt_get_cellularDataCapability();

  *(v1 + 16) = cellularDataCapability;
  v54 = [objc_opt_self() processInfo];
  v55 = [v54 isLowPowerModeEnabled];

  *(v1 + 17) = v55;
  v56 = objc_opt_self();
  result = [v56 sharedConnection];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v57 = result;
  v179 = v10;
  v58 = [result isAutomaticAppUpdatesModificationAllowed];

  *(v1 + 19) = v58;
  result = [v56 sharedConnection];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v59 = result;
  v60 = [result isAutomaticAppUpdatesAllowed];

  *(v1 + 20) = v60;
  *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__invalidatable) = 0;
  sub_12AEC();
  v61 = sub_12B9C();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v1[3] = sub_12B8C();

  sub_12B4C();
  LOBYTE(v59) = sub_12BAC();
  (*(v46 + 8))(v50, v183);
  *(v1 + 18) = v59 & 1;
  *v31 = 1;
  v64 = *(v27 + 104);
  v148 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  v65 = v187;
  v64(v31);
  v66 = v160;
  v67 = v184;
  sub_12FDC();
  (*(v27 + 8))(v31, v65);
  v68 = *(v161 + 16);
  v147 = v161 + 16;
  v146 = v68;
  v68(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_reloadStream, v66, v162);
  v70 = v185 + 16;
  v69 = *(v185 + 16);
  v167 = v1;
  v175 = v69;
  v69(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_reloadStreamContinuation, v67, v186);
  sub_23AC(&qword_1D058, &qword_14340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14230;
  *(inited + 32) = NSProcessInfoPowerStateDidChangeNotification;
  v174 = inited + 32;
  v72 = MCEffectiveSettingsChangedNotification;
  v145[1] = inited;
  *(inited + 40) = MCEffectiveSettingsChangedNotification;
  v183 = sub_12FAC();
  v182 = sub_12FCC();
  v73 = *(v182 - 8);
  v74 = *(v73 + 56);
  v73 += 56;
  v181 = v74;
  v176 = v70;
  v173 = v70 + 16;
  v172 = (v73 - 8);
  v180 = v73;
  v171 = (v73 - 48);
  v75 = NSProcessInfoPowerStateDidChangeNotification;
  v76 = v72;
  v77 = 0;
  v78 = 0;
  v79 = &_swiftEmptyArrayStorage;
  do
  {
    LODWORD(v187) = v77;
    v80 = *(v174 + 8 * v78);
    v81 = v188;
    v82 = v182;
    v181(v188, 1, 1, v182);
    v83 = v177;
    v84 = v186;
    v175(v177, v184, v186);
    v85 = v80;
    v86 = sub_12F9C();
    v87 = v185;
    v88 = (*(v185 + 80) + 40) & ~*(v185 + 80);
    v89 = swift_allocObject();
    *(v89 + 2) = v86;
    *(v89 + 3) = &protocol witness table for MainActor;
    *(v89 + 4) = v85;
    (*(v87 + 32))(&v89[v88], v83, v84);
    v90 = v179;
    sub_F97C(v81, v179);
    LODWORD(v86) = (*v172)(v90, 1, v82);

    if (v86 == 1)
    {
      sub_118C8(v90, &qword_1D020, &qword_14308);
    }

    else
    {
      sub_12FBC();
      (*v171)(v90, v82);
    }

    v91 = *(v89 + 2);
    v92 = *(v89 + 3);
    swift_unknownObjectRetain();

    if (v91)
    {
      swift_getObjectType();
      v93 = sub_12F7C();
      v95 = v94;
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0;
      v95 = 0;
    }

    sub_118C8(v188, &qword_1D020, &qword_14308);
    v96 = swift_allocObject();
    *(v96 + 16) = &unk_14358;
    *(v96 + 24) = v89;
    if (v95 | v93)
    {
      aBlock[6] = 0;
      aBlock[7] = 0;
      aBlock[8] = v93;
      aBlock[9] = v95;
    }

    v97 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_FBE0(0, v79[2] + 1, 1, v79);
    }

    v99 = v79[2];
    v98 = v79[3];
    if (v99 >= v98 >> 1)
    {
      v79 = sub_FBE0((v98 > 1), v99 + 1, 1, v79);
    }

    v79[2] = v99 + 1;
    v79[v99 + 4] = v97;
    v77 = 1;
    v78 = 1;
  }

  while ((v187 & 1) == 0);
  v100 = v167;
  *&v167[OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_observationTasks] = v79;
  v101 = v153;
  *v153 = 1;
  v102 = v154;
  v103 = v155;
  (*(v154 + 104))(v101, v148, v155);
  sub_23AC(&qword_1CED0, &qword_142C0);

  v104 = v169;
  v105 = v164;
  sub_12FDC();
  (*(v102 + 8))(v101, v103);
  v106 = v163 + 16;
  v107 = *(v163 + 16);
  v107(&v100[OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_onApplicationsDidChangeEvent], v104, v170);
  v108 = v165;
  v109 = *(v165 + 16);
  v110 = v166;
  v109(&v100[OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_onApplicationsDidChangeEventContinuation], v105, v166);
  v111 = v157;
  v109(v157, v105, v110);
  v112 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v113 = swift_allocObject();
  (*(v108 + 32))(v113 + v112, v111, v110);
  aBlock[4] = sub_FDA8;
  aBlock[5] = v113;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_C9A0;
  aBlock[3] = &unk_191E8;
  v114 = _Block_copy(aBlock);

  SBSRegisterDisplayIdentifiersChangedBlock();
  _Block_release(v114);
  result = SBSCopyDisplayIdentifiers();
  if (!result)
  {
    goto LABEL_28;
  }

  v115 = result;

  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  v187 = v106;
  v188 = v107;
  if (v116)
  {
    aBlock[0] = 0;
    sub_1305C();

    if (aBlock[0])
    {
      v117 = aBlock[0];
    }

    else
    {
      v117 = &_swiftEmptySetSingleton;
    }
  }

  else
  {

    v117 = &_swiftEmptySetSingleton;
  }

  v118 = sub_12EBC();
  sub_19A0(v118);

  v119 = sub_CA0C(v117);

  *&v167[OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates] = v119;
  v120 = v168;
  v121 = v182;
  v122 = v181;
  v181(v168, 1, 1, v182);
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = v158;

  v125 = sub_12F9C();
  v126 = swift_allocObject();
  v126[2] = v125;
  v126[3] = &protocol witness table for MainActor;
  v126[4] = v124;
  v126[5] = v123;

  sub_C570(0, 0, v120, &unk_14370, v126);

  v122(v120, 1, 1, v121);
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = v151;
  v129 = v170;
  v188(v151, v169, v170);

  v130 = sub_12F9C();
  v131 = v163;
  v132 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v133 = (v149 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = swift_allocObject();
  *(v134 + 16) = v130;
  *(v134 + 24) = &protocol witness table for MainActor;
  (*(v131 + 32))(v134 + v132, v128, v129);
  *(v134 + v133) = v127;
  *(v134 + ((v133 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;

  v135 = v168;
  sub_C570(0, 0, v168, &unk_14380, v134);

  v181(v135, 1, 1, v182);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = v150;
  v138 = v160;
  v139 = v162;
  v146(v150, v160, v162);

  v140 = sub_12F9C();
  v141 = v161;
  v142 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v143 = (v152 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v144 = swift_allocObject();
  *(v144 + 16) = v140;
  *(v144 + 24) = &protocol witness table for MainActor;
  (*(v141 + 32))(v144 + v142, v137, v139);
  *(v144 + v143) = v136;

  sub_C570(0, 0, v168, &unk_14390, v144);

  (*(v165 + 8))(v164, v166);
  (*(v131 + 8))(v169, v170);
  (*(v185 + 8))(v184, v186);
  (*(v141 + 8))(v138, v139);
  return v167;
}

uint64_t sub_BE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_23AC(&qword_1D0E8, &qword_144B8);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_23AC(&qword_1D0F0, &qword_144C0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = sub_130AC();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = sub_12FAC();
  v5[13] = sub_12F9C();
  v14 = sub_12F7C();
  v5[14] = v14;
  v5[15] = v13;

  return _swift_task_switch(sub_BFB8, v14, v13);
}

uint64_t sub_BFB8()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  sub_130BC();

  sub_1309C();
  v4 = v0[12];
  v0[16] = sub_12F9C();
  v5 = sub_117C8(&qword_1D0F8, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_C0F0;
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_C0F0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_12F7C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_C4E4;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_12F7C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_C288;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_C288()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return _swift_task_switch(sub_C2EC, v2, v3);
}

uint64_t sub_C2EC()
{
  v1 = v0[8];
  v2 = sub_12A1C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    v4 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    sub_12FEC();
    (*(v8 + 8))(v7, v10);
    sub_118C8(v1, &qword_1D0F0, &qword_144C0);
    v11 = v0[12];
    v0[16] = sub_12F9C();
    v12 = sub_117C8(&qword_1D0F8, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_C0F0;
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v17, v12);
  }
}

uint64_t sub_C4E4()
{
  *(v0 + 16) = *(v0 + 144);
  sub_23AC(&qword_1D088, &qword_14450);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23AC(&qword_1D020, &qword_14308);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_F97C(a3, v28 - v12);
  v14 = sub_12FCC();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_118C8(v13, &qword_1D020, &qword_14308);
  }

  else
  {
    sub_12FBC();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_12F7C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_12EFC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_118C8(a3, &qword_1D020, &qword_14308);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_118C8(a3, &qword_1D020, &qword_14308);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_C860(uint64_t a1)
{
  v2 = sub_23AC(&qword_1D0D0, &qword_144A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2, v5);
  v8 = &v9 - v7;
  if (a1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = 0;
      result = sub_1305C();
      if (v10)
      {
        sub_23AC(&qword_1D030, &qword_14318);
        sub_12FFC();
        return (*(v3 + 8))(v8, v2);
      }
    }
  }

  return result;
}

void sub_C9A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_CA0C(uint64_t a1)
{
  v3 = sub_12A6C();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() enumeratorWithOptions:192];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v1;
  v39 = sub_106A0;
  v40 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v37 = sub_F558;
  v38 = &unk_192D8;
  v10 = _Block_copy(&aBlock);

  [v8 setFilter:v10];
  _Block_release(v10);
  v11 = sub_12EBC();
  sub_19A0(v11);

  v35 = &_swiftEmptyArrayStorage;
  v30 = v8;
  sub_1306C();
  sub_117C8(&qword_1D090, &type metadata accessor for NSFastEnumerationIterator);
  sub_130CC();
  if (v38)
  {
    v12 = &FindBackgroundAppRefreshClass;
    do
    {
      sub_3F30(&aBlock, v34);
      sub_3FA8(v34, v33);
      sub_113E4();
      if (swift_dynamicCast() && (v13 = v32, v14 = [v32 v12[22].base_meths], v13, v14))
      {
        v15 = sub_12EEC();
        v17 = v16;

        sub_3FA8(v34, v33);
        if (swift_dynamicCast())
        {
          v18 = v32;
          v19 = [v32 localizedName];

          v20 = sub_12EEC();
          v22 = v21;

          refreshed = type metadata accessor for BackgroundAppRefreshPerAppState();
          v24 = *(refreshed + 48);
          v25 = *(refreshed + 52);
          v26 = swift_allocObject();
          sub_12AEC();
          sub_2438(v34);
          v26[2] = v15;
          v26[3] = v17;
          v26[4] = v20;
          v26[5] = v22;
          sub_12F2C();
          if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v27 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
            sub_12F4C();
          }

          sub_12F6C();
          v12 = &FindBackgroundAppRefreshClass;
        }

        else
        {
          sub_2438(v34);
        }
      }

      else
      {
        sub_2438(v34);
      }

      sub_130CC();
    }

    while (v38);
  }

  (*(v31 + 8))(v7, v3);

  *&aBlock = sub_11350(v28);
  sub_10730(&aBlock);

  return aBlock;
}

uint64_t sub_CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_12BBC();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_23AC(&qword_1D078, &qword_14448) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_12B7C();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = sub_12FAC();
  v5[16] = sub_12F9C();
  v14 = sub_12F7C();
  v5[17] = v14;
  v5[18] = v13;

  return _swift_task_switch(sub_CFD4, v14, v13);
}

uint64_t sub_CFD4()
{
  if (qword_1C878 != -1)
  {
    swift_once();
  }

  v1 = sub_12B3C();
  v0[19] = sub_2128(v1, qword_1DBD0);
  v2 = sub_12B1C();
  v3 = sub_1308C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to monitor network path changes", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[6];
  v7 = v0[7];

  sub_12B5C();
  swift_beginAccess();
  v8 = v0[15];
  v0[20] = sub_12F9C();
  v9 = sub_117C8(&qword_1D080, &type metadata accessor for NWPathMonitor.Iterator);
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_D1A8;
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v14, v9);
}

uint64_t sub_D1A8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_12F7C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_D714;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_12F7C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_D340;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_D340()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_D3A4, v2, v3);
}

uint64_t sub_D3A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_8:
    v8 = v0[19];
    v9 = sub_12B1C();
    v10 = sub_1308C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Stopped monitoring network path changes", v11, 2u);
    }

    v12 = v0[14];
    v14 = v0[10];
    v13 = v0[11];

    v15 = v0[1];

    return v15();
  }

  v5 = v0[7];
  (*(v3 + 32))(v0[10], v1, v2);
  if (!swift_weakLoadStrong())
  {
    v7 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);
    goto LABEL_7;
  }

  if (sub_1304C())
  {
    v6 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_7:

    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_8;
  }

  v17 = v0[22];
  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  *(v22 + 24) = v18;
  sub_12E5C();
  sub_12BDC();

  (*(v19 + 8))(v18, v20);
  v23 = v0[15];
  v0[20] = sub_12F9C();
  v24 = sub_117C8(&qword_1D080, &type metadata accessor for NWPathMonitor.Iterator);
  v25 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_D1A8;
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[12];

  return dispatch thunk of AsyncIteratorProtocol.next()(v28, v29, v24);
}

uint64_t sub_D714()
{
  *(v0 + 40) = *(v0 + 176);
  sub_23AC(&qword_1D088, &qword_14450);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_D7A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_12BAC() & 1;
    if (v2 == *(v1 + 18))
    {
      *(v1 + 18) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v4);
      sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
      sub_12ACC();
    }
  }

  return result;
}

uint64_t sub_D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_23AC(&qword_1D070, &qword_14418);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = sub_12FAC();
  v6[13] = sub_12F9C();
  v11 = sub_12F7C();
  v6[14] = v11;
  v6[15] = v10;

  return _swift_task_switch(sub_DA04, v11, v10);
}

uint64_t sub_DA04()
{
  if (qword_1C878 != -1)
  {
    swift_once();
  }

  v1 = sub_12B3C();
  v0[16] = sub_2128(v1, qword_1DBD0);
  v2 = sub_12B1C();
  v3 = sub_1308C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to monitor application updates", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];

  sub_23AC(&qword_1D038, &qword_14320);
  sub_1301C();
  swift_beginAccess();
  v0[17] = 0;
  v8 = v0[12];
  v9 = sub_12F9C();
  v0[18] = v9;
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_DBBC;
  v12 = v0[11];
  v13 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v9, &protocol witness table for MainActor, v13);
}

uint64_t sub_DBBC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_DD00, v5, v4);
}

uint64_t sub_DD00()
{
  v1 = v0[5];
  if (!v1)
  {
    v4 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_7;
  }

  v2 = v0[7];
  if (!swift_weakLoadStrong())
  {
    v5 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);

    goto LABEL_7;
  }

  if (sub_1304C())
  {
    v3 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);

LABEL_7:

    v6 = v0[16];
    v7 = sub_12B1C();
    v8 = sub_1308C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Stopped monitoring application updates", v9, 2u);
    }

    v10 = v0[11];

    v11 = v0[1];

    return v11();
  }

  v13 = v0[17];
  v14 = v0[8];
  v15 = sub_12EBC();
  sub_19A0(v15);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_task_alloc();
  v17[2] = v16;
  v17[3] = v1;
  v17[4] = v14;
  sub_12E5C();
  sub_12BDC();

  v0[17] = v13;
  v18 = v0[12];
  v19 = sub_12F9C();
  v0[18] = v19;
  v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_DBBC;
  v22 = v0[11];
  v23 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v19, &protocol witness table for MainActor, v23);
}

uint64_t sub_DFF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_CA0C(a2);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  return result;
}

uint64_t sub_E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_23AC(&unk_1D060, &qword_14398);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = sub_12FAC();
  v5[11] = sub_12F9C();
  v10 = sub_12F7C();
  v5[12] = v10;
  v5[13] = v9;

  return _swift_task_switch(sub_E24C, v10, v9);
}

uint64_t sub_E24C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_23AC(&qword_1D050, &qword_14338);
  sub_1301C();
  swift_beginAccess();
  v0[14] = 0;
  v4 = v0[10];
  v5 = sub_12F9C();
  v0[15] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_E34C;
  v8 = v0[9];
  v9 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 17, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_E34C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return _swift_task_switch(sub_E490, v5, v4);
}

uint64_t sub_E490()
{
  if (*(v0 + 136) == 1 || (v1 = *(v0 + 48), !swift_weakLoadStrong()))
  {
    v3 = *(v0 + 88);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  if (sub_1304C())
  {
    v2 = *(v0 + 88);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:

    if (qword_1C878 != -1)
    {
      swift_once();
    }

    v4 = sub_12B3C();
    sub_2128(v4, qword_1DBD0);
    v5 = sub_12B1C();
    v6 = sub_1307C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Exiting loop for update stream.", v7, 2u);
    }

    v8 = *(v0 + 72);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 112);
  swift_allocObject();
  swift_weakInit();
  sub_12E5C();
  sub_12BDC();

  *(v0 + 112) = v11;
  v12 = *(v0 + 80);
  v13 = sub_12F9C();
  *(v0 + 120) = v13;
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_E34C;
  v16 = *(v0 + 72);
  v17 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v0 + 136, v13, &protocol witness table for MainActor, v17);
}

_BYTE *sub_E73C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3 == v1[17])
  {
    v1[17] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    v15 = v1;
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  v6 = objc_opt_self();
  result = [v6 sharedConnection];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result isAutomaticAppUpdatesModificationAllowed];

  if (v8 == v1[19])
  {
    v1[19] = v8;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9, v10);
    v15 = v1;
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }

  result = [v6 sharedConnection];
  if (!result)
  {
    goto LABEL_16;
  }

  v11 = result;
  v12 = [result isAutomaticAppUpdatesAllowed];

  if (v12 == v1[20])
  {
    v1[20] = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13, v14);
    sub_117C8(&qword_1CCF0, type metadata accessor for BackgroundAppRefreshSettingsListState);
    sub_12ACC();
  }
}

uint64_t sub_EAFC()
{
  v1 = v0;
  v2 = sub_23AC(&qword_1D030, &qword_14318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v37 = &v34 - v6;
  v39 = sub_23AC(&qword_1D048, &qword_14330);
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v39, v9);
  v11 = &v34 - v10;
  SBSRegisterDisplayIdentifiersChangedBlock();
  v38 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_observationTasks;
  v12 = *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_observationTasks);
  v13 = *(v12 + 16);
  if (v13)
  {
    v35 = v3;
    v36 = v2;

    v14 = 32;
    do
    {
      v15 = *(v12 + v14);

      sub_1303C();

      v14 += 8;
      --v13;
    }

    while (v13);

    v3 = v35;
    v2 = v36;
  }

  v16 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_reloadStreamContinuation;
  v17 = v39;
  (*(v7 + 16))(v11, v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_reloadStreamContinuation, v39);
  sub_1300C();
  v18 = *(v7 + 8);
  v18(v11, v17);
  v19 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_onApplicationsDidChangeEventContinuation;
  v20 = v37;
  (*(v3 + 16))(v37, v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_onApplicationsDidChangeEventContinuation, v2);
  sub_1300C();
  v21 = *(v3 + 8);
  v21(v20, v2);
  v22 = *(v1 + 24);

  sub_12B6C();

  v23 = *(v1 + 24);

  v24 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_reloadStream;
  v25 = sub_23AC(&qword_1D050, &qword_14338);
  (*(*(v25 - 8) + 8))(v1 + v24, v25);
  v18((v1 + v16), v17);
  v26 = *(v1 + v38);

  v27 = *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates);

  v28 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState_onApplicationsDidChangeEvent;
  v29 = sub_23AC(&qword_1D038, &qword_14320);
  (*(*(v29 - 8) + 8))(v1 + v28, v29);
  v21((v1 + v19), v2);
  v30 = *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__invalidatable);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState___observationRegistrar;
  v32 = sub_12AFC();
  (*(*(v32 - 8) + 8))(v1 + v31, v32);
  return v1;
}

uint64_t sub_EEB4()
{
  sub_EAFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BackgroundAppRefreshSettingsListState()
{
  result = qword_1CEA8;
  if (!qword_1CEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_EF60()
{
  sub_F184(319, &qword_1CEB8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_F184(319, &qword_1CEC0, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_F1DC(319, &qword_1CEC8, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_F1DC(319, &unk_1CED8, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_12AFC();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_F184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_F1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2E6C(&qword_1CED0, &qword_142C0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_F248(void *a1, uint64_t a2)
{
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_12EEC();
    v8 = v7;

    v9 = sub_F460(v6, v8, a2);

    if (v9)
    {
      v10 = [a1 UIBackgroundModes];
      v11 = sub_12F3C();

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            return;
          }

          v14 = (v11 + 32 + 16 * v13);
          v16 = *v14;
          v15 = v14[1];
          v17 = qword_1C888;

          if (v17 != -1)
          {
            swift_once();
          }

          v18 = qword_1DBF0;
          if (*(qword_1DBF0 + 16))
          {
            v19 = *(qword_1DBF0 + 40);
            sub_131CC();
            sub_12F0C();
            v20 = sub_131EC();
            v21 = -1 << *(v18 + 32);
            v22 = v20 & ~v21;
            if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              break;
            }
          }

LABEL_5:
          ++v13;

          if (v13 == v12)
          {
            goto LABEL_21;
          }
        }

        v23 = ~v21;
        while (1)
        {
          v24 = (*(v18 + 48) + 16 * v22);
          v25 = *v24 == v16 && v24[1] == v15;
          if (v25 || (sub_131AC() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

LABEL_21:
    }
  }
}

uint64_t sub_F460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_131CC();
  sub_12F0C();
  v7 = sub_131EC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_131AC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_F558(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_F5B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_F6A8;

  return v7(a1);
}

uint64_t sub_F6A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_F7A0()
{
  v1 = sub_23AC(&qword_1D048, &qword_14330);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_F878(uint64_t a1)
{
  v4 = *(sub_23AC(&qword_1D048, &qword_14330) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_11B84;

  return sub_BE20(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_F97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AC(&qword_1D020, &qword_14308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F9EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FA24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_11B84;

  return sub_F5B0(a1, v5);
}

char *sub_FADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_23AC(&qword_1D0C0, &qword_14490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_FBE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23AC(&qword_1D0D8, &qword_144A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23AC(&qword_1D0E0, &qword_144B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_FD14()
{
  v1 = sub_23AC(&qword_1D030, &qword_14318);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_FDA8(uint64_t a1)
{
  v2 = *(*(sub_23AC(&qword_1D030, &qword_14318) - 8) + 80);

  return sub_C860(a1);
}

uint64_t sub_FE24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FE3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FE74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_FEBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_FF7C;

  return sub_CE48(a1, v4, v5, v7, v6);
}

uint64_t sub_FF7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10070()
{
  v1 = sub_23AC(&qword_1D038, &qword_14320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10164(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23AC(&qword_1D038, &qword_14320) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_11B84;

  return sub_D8FC(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_102AC()
{
  v1 = sub_23AC(&qword_1D050, &qword_14338);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10390(uint64_t a1)
{
  v4 = *(sub_23AC(&qword_1D050, &qword_14338) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_11B84;

  return sub_E148(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_105CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates);
  *(v1 + OBJC_IVAR____TtC20BackgroundAppRefresh37BackgroundAppRefreshSettingsListState__perAppStates) = *(v0 + 24);
}

uint64_t sub_10610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_D7A0();
}

uint64_t sub_10668()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_106A8(uint64_t a1, uint64_t a2)
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

  sub_23AC(&unk_1D0B0, &qword_14488);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10730(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1164C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_107AC(v6);
  return sub_1311C();
}

Swift::Int sub_107AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1318C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BackgroundAppRefreshPerAppState();
        v6 = sub_12F5C();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_109A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_108B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_108B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2F54();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v16 = *(v9 + 32);
      v17 = *(v9 + 40);
      v14 = *(*v11 + 32);
      v15 = *(*v11 + 40);
      result = sub_130DC();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_109A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v92 = v6;
        v87 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = 8 * v9;
        v12 = v9;
        v13 = (*a3 + 8 * v9);
        v15 = *v13;
        v14 = v13 + 2;
        v101 = *(v10 + 32);
        v104 = *(v10 + 40);
        v95 = *(v15 + 32);
        v98 = *(v15 + 40);
        sub_2F54();
        result = sub_130DC();
        v16 = result;
        v89 = v12;
        v17 = (v12 + 2);
        while (1)
        {
          v7 = v92;
          if (v92 == v17)
          {
            break;
          }

          v18 = *(v14 - 1);
          v102 = *(*v14 + 32);
          v105 = *(*v14 + 40);
          v96 = *(v18 + 32);
          v99 = *(v18 + 40);
          result = sub_130DC();
          ++v17;
          ++v14;
          if ((v16 == -1) == (result != -1))
          {
            v7 = (v17 - 1);
            break;
          }
        }

        v9 = v89;
        if (v16 == -1)
        {
          if (v7 < v89)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return result;
          }

          if (v89 < v7)
          {
            v19 = 8 * v7 - 8;
            v20 = v7;
            v21 = v89;
            do
            {
              if (v21 != --v20)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v22 = *(v23 + v11);
                *(v23 + v11) = *(v23 + v19);
                *(v23 + v19) = v22;
              }

              ++v21;
              v19 -= 8;
              v11 += 8;
            }

            while (v21 < v20);
          }
        }

        v5 = v87;
      }

      v24 = a3[1];
      if (v7 < v24)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_117;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_118;
          }

          if (v9 + a4 >= v24)
          {
            v25 = a3[1];
          }

          else
          {
            v25 = (v9 + a4);
          }

          if (v25 < v9)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v7 != v25)
          {
            v88 = v5;
            v26 = *a3;
            sub_2F54();
            v27 = v26 + 8 * v7 - 8;
            v90 = v9;
            v28 = v9 - v7;
            do
            {
              v93 = v7;
              v29 = *(v26 + 8 * v7);
              v30 = v28;
              v31 = v27;
              do
              {
                v103 = *(v29 + 32);
                v106 = *(v29 + 40);
                v97 = *(*v31 + 32);
                v100 = *(*v31 + 40);
                result = sub_130DC();
                if (result != -1)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_122;
                }

                v32 = *v31;
                v29 = v31[1];
                *v31 = v29;
                v31[1] = v32;
                --v31;
              }

              while (!__CFADD__(v30++, 1));
              v7 = (v93 + 1);
              v27 += 8;
              --v28;
            }

            while (v93 + 1 != v25);
            v7 = v25;
            v5 = v88;
            v9 = v90;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_FADC(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v35 = *(v8 + 2);
      v34 = *(v8 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        result = sub_FADC((v34 > 1), v35 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v36;
      v37 = &v8[16 * v35];
      *(v37 + 4) = v9;
      *(v37 + 5) = v7;
      v38 = *v91;
      if (!*v91)
      {
        goto LABEL_126;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v40 = *(v8 + 4);
            v41 = *(v8 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_105;
            }

            v56 = &v8[16 * v36];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_108;
            }

            v62 = &v8[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_112;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v36 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v8[16 * v36];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_107;
          }

          v69 = &v8[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_110;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v78 = *&v8[16 * v77 + 32];
          v79 = *&v8[16 * v39 + 40];
          sub_11000((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v39 + 32]), (*a3 + 8 * v79), v38);
          if (v5)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1133C(v8);
          }

          if (v77 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v80 = &v8[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_112B0(v39);
          v36 = *(v8 + 2);
          if (v36 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v8[16 * v36 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_103;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_104;
        }

        v51 = &v8[16 * v36];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_106;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v55 >= v47)
        {
          v73 = &v8[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_113;
          }

          if (v42 < v76)
          {
            v39 = v36 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_88:
  v7 = *v91;
  if (!*v91)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_1133C(v8);
    v8 = result;
  }

  v81 = v5;
  v82 = *(v8 + 2);
  if (v82 >= 2)
  {
    while (*a3)
    {
      v5 = v82 - 1;
      v83 = *&v8[16 * v82];
      v84 = *&v8[16 * v82 + 24];
      sub_11000((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v82 + 16]), (*a3 + 8 * v84), v7);
      if (v81)
      {
      }

      if (v84 < v83)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1133C(v8);
      }

      if (v82 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v85 = &v8[16 * v82];
      *v85 = v83;
      *(v85 + 1) = v84;
      result = sub_112B0(v5);
      v82 = *(v8 + 2);
      if (v82 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_11000(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_2F54();
      do
      {
        v31 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v20 = *(v18 - 1);
          v18 -= 8;
          v6 = v17;
          v21 = *v17;
          v28 = *(v20 + 32);
          v30 = *(v20 + 40);
          v24 = *(v21 + 32);
          v26 = *(v21 + 40);
          if (sub_130DC() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v31;
            goto LABEL_39;
          }
        }

        if (v19 != v31)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_2F54();
      while (1)
      {
        v27 = *(*v6 + 32);
        v29 = *(*v6 + 40);
        v23 = *(*v4 + 32);
        v25 = *(*v4 + 40);
        if (sub_130DC() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_112B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1133C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_11350(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1312C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_106A8(v3, 0);
  sub_11430(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_113E4()
{
  result = qword_1D098;
  if (!qword_1D098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D098);
  }

  return result;
}

uint64_t sub_11430(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1312C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1312C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_11ACC(&qword_1D0A8, &qword_1D0A0, &qword_14480);
          for (i = 0; i != v6; ++i)
          {
            sub_23AC(&qword_1D0A0, &qword_14480);
            v9 = sub_115C0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for BackgroundAppRefreshPerAppState();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_115C0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_130FC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_11640;
  }

  __break(1u);
  return result;
}

Swift::Int sub_11660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23AC(&qword_1D0C8, &qword_14498);
    v3 = sub_130EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_131CC();

      sub_12F0C();
      result = sub_131EC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_131AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_117C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11810(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_FF7C;

  return sub_F5B0(a1, v5);
}

uint64_t sub_118C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for BackgroundAppRefreshSettingsListState.GlobalBackgroundAppRefreshState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundAppRefreshSettingsListState.GlobalBackgroundAppRefreshState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_11ACC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2E6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_11B24()
{
  result = qword_1D118;
  if (!qword_1D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D118);
  }

  return result;
}

uint64_t sub_11C18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_12A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_11CD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_12A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GlobalBackgroundAppRefreshStatePicker()
{
  result = qword_1D178;
  if (!qword_1D178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_11DC8()
{
  sub_11E4C();
  if (v0 <= 0x3F)
  {
    sub_12A4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_11E4C()
{
  if (!qword_1D188)
  {
    v0 = sub_12E0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1D188);
    }
  }
}

uint64_t sub_11EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_12C3C();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AC(&qword_1D1D8, &qword_14678);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v27 - v13;
  v15 = sub_23AC(&qword_1D1D0, &qword_14670);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v27 - v19;
  v27 = sub_12C4C();
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v36 = *a1;
  v37 = v21;
  v38 = v22;
  sub_23AC(&qword_1C9F0, &qword_14680);
  sub_12DEC();
  v36 = v33;
  v37 = v34;
  v38 = v35;
  sub_23AC(&qword_1D1F0, &qword_14688);
  sub_12828();
  sub_1287C();
  sub_12D9C();
  v23 = sub_3194(&qword_1D1E0, &qword_1D1D8, &qword_14678);
  sub_12D0C();
  (*(v10 + 8))(v14, v9);
  sub_12C2C();
  v36 = v9;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  v25 = v30;
  sub_12CFC();
  (*(v31 + 8))(v8, v25);
  return (*(v29 + 8))(v20, v24);
}

uint64_t sub_12230()
{
  swift_getKeyPath();
  sub_23AC(&qword_1D110, qword_14530);
  sub_23AC(&qword_1D210, &unk_14690);
  sub_3194(&qword_1D218, &qword_1D110, qword_14530);
  sub_12828();
  sub_3194(&qword_1D208, &qword_1D210, &unk_14690);
  return sub_12E1C();
}

uint64_t sub_12368(char *a1)
{
  v2 = *a1;
  sub_12828();
  return sub_12BCC();
}

uint64_t sub_123E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_992C(a1);
  sub_2F54();
  result = sub_12CAC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_12438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v37 = a2;
  v32 = sub_12A4C();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v32, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AC(&qword_1D1B8, &qword_14658);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8, v10);
  v12 = v31 - v11;
  v13 = sub_23AC(&qword_1D1C0, &qword_14660);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v31 - v17;
  v38 = v2;
  v31[0] = sub_23AC(&qword_1D1C8, &qword_14668);
  v19 = sub_2E6C(&qword_1D1D0, &qword_14670);
  v20 = sub_12C3C();
  v21 = sub_2E6C(&qword_1D1D8, &qword_14678);
  v22 = sub_3194(&qword_1D1E0, &qword_1D1D8, &qword_14678);
  v39 = v21;
  v40 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v19;
  v40 = v20;
  v41 = OpaqueTypeConformance2;
  v42 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  sub_12C7C();
  (*(v3 + 16))(v7, v31[1] + *(v33 + 20), v32);
  v24 = sub_12C9C();
  v26 = v25;
  LOBYTE(v20) = v27;
  v28 = sub_3194(&qword_1D1E8, &qword_1D1B8, &qword_14658);
  sub_12D2C();
  sub_8514(v24, v26, v20 & 1);

  (*(v34 + 8))(v12, v8);
  v39 = v8;
  v40 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_12CBC();
  return (*(v36 + 8))(v18, v29);
}

unint64_t sub_12828()
{
  result = qword_1D1F8;
  if (!qword_1D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D1F8);
  }

  return result;
}

unint64_t sub_1287C()
{
  result = qword_1D200;
  if (!qword_1D200)
  {
    sub_2E6C(&qword_1D1F0, &qword_14688);
    sub_3194(&qword_1D208, &qword_1D210, &unk_14690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D200);
  }

  return result;
}

uint64_t sub_12934()
{
  sub_2E6C(&qword_1D1C0, &qword_14660);
  sub_2E6C(&qword_1D1B8, &qword_14658);
  sub_3194(&qword_1D1E8, &qword_1D1B8, &qword_14658);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}