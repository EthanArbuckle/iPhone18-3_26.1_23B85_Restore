uint64_t sub_1688()
{
  v0 = sub_11310();
  sub_1834(v0, qword_1CE88);
  sub_1898(v0, qword_1CE88);
  return sub_112E0();
}

uint64_t sub_16F4(uint64_t a1, id *a2)
{
  result = sub_11460();
  *a2 = 0;
  return result;
}

uint64_t sub_176C(uint64_t a1, id *a2)
{
  v3 = sub_11470();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17EC@<X0>(void *a1@<X8>)
{
  sub_11480();
  v2 = sub_11450();

  *a1 = v2;
  return result;
}

uint64_t *sub_1834(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1898(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18D0(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA48, type metadata accessor for FileProtectionType);
  v3 = sub_1EA4(&qword_1CA50, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1990@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_11480();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_19BC(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA08, type metadata accessor for FileAttributeKey);
  v3 = sub_1EA4(&qword_1CA10, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1A78(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1C9F8, type metadata accessor for URLFileProtection);
  v3 = sub_1EA4(&qword_1CA00, type metadata accessor for URLFileProtection);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1B34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_11450();

  *a2 = v5;
  return result;
}

uint64_t sub_1B7C(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA18, type metadata accessor for Dataclass);
  v3 = sub_1EA4(&qword_1CA20, type metadata accessor for Dataclass);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1C38()
{
  v1 = *v0;
  sub_11480();
  v2 = sub_114D0();

  return v2;
}

uint64_t sub_1C74()
{
  v1 = *v0;
  sub_11480();
  sub_114A0();
}

Swift::Int sub_1CC8()
{
  v1 = *v0;
  sub_11480();
  sub_117D0();
  sub_114A0();
  v2 = sub_117F0();

  return v2;
}

uint64_t sub_1D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_11480();
  v6 = v5;
  if (v4 == sub_11480() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_117C0();
  }

  return v9 & 1;
}

uint64_t sub_1EA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20F8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2244()
{
  v0 = sub_113B0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DataStackConfiguration();
  sub_1834(v4, qword_1CEA0);
  v5 = sub_1898(v4, qword_1CEA0);
  sub_113A0();
  return sub_2350(v3, NSFileProtectionCompleteUnlessOpen, v5);
}

uint64_t type metadata accessor for DataStackConfiguration()
{
  result = qword_1CAB0;
  if (!qword_1CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2350@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = sub_113B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - v14;
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = *(v6 + 16);
  v18(&v27 - v16, a1, v5);
  v18(v15, v17, v5);
  v18(v12, v15, v5);
  v19 = (*(v6 + 88))(v12, v5);
  if (v19 == enum case for Runtime.Environment.production(_:))
  {
    v20 = 0;
LABEL_7:
    v21 = *(v6 + 8);
    v22 = a2;
    v21(v15, v5);
    v21(v17, v5);
    v23 = v28;
    *v28 = v22;
    *(v23 + 8) = v20;
    v18(v27, a1, v5);
    v24 = v23 + *(type metadata accessor for DataStackConfiguration() + 20);
    sub_11330();
    return (v21)(a1, v5);
  }

  if (v19 == enum case for Runtime.Environment.staging(_:))
  {
    v20 = 1;
    goto LABEL_7;
  }

  if (v19 == enum case for Runtime.Environment.testing(_:))
  {
    v20 = 2;
    goto LABEL_7;
  }

  v26 = a2;
  result = sub_117B0();
  __break(1u);
  return result;
}

uint64_t sub_25EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_11350();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_11350();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2750()
{
  result = sub_11350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27CC()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CAE8);
  v1 = sub_1898(v0, qword_1CAE8);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2894(uint64_t a1)
{
  v3 = objc_allocWithZone(CKContainerOptions);
  v4 = v1;
  v5 = [v3 init];
  sub_11390();
  v6 = sub_11450();

  [v5 setApplicationBundleIdentifierOverrideForContainerAccess:v6];

  v7 = v5;
  v8 = sub_11320();

  v9 = OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer;
  *&v4[OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer] = v8;
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CAE8);
  v11 = v4;
  v12 = sub_113C0();
  v13 = sub_115D0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [*&v4[v9] containerID];

    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_0, v12, v13, "-> CloudKitStack init for container %@", v14, 0xCu);
    sub_394C(v15, &qword_1CC20, &qword_12690);
  }

  else
  {

    v12 = v11;
  }

  v20.receiver = v11;
  v20.super_class = type metadata accessor for CloudKitStackShared();
  v17 = objc_msgSendSuper2(&v20, "init");

  v18 = sub_11350();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

void sub_2AEC(unint64_t a1, _BOOL8 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CAE8);

  v11 = sub_113C0();
  v12 = sub_115D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    if (a1 >> 62)
    {
      v14 = sub_11770();
    }

    else
    {
      v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v13 + 4) = v14;

    *(v13 + 12) = 2048;
    if (a2 >> 62)
    {
      v15 = sub_11770();
    }

    else
    {
      v15 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    *(v13 + 14) = v15;

    _os_log_impl(&dword_0, v11, v12, "(uploadRecords) saving total %ld records, deleting total %ld records", v13, 0x16u);
  }

  else
  {
  }

  sub_3A84();

  v32.value._rawValue = a1;
  v32.is_nil = a2;
  isa = sub_116C0(v32, v33).super.super.super.super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  sub_116B0();
  v18 = isa;
  v19 = sub_113C0();
  v20 = sub_115D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = v18;
    v24 = [(objc_class *)v23 description];
    v25 = sub_11480();
    v27 = v26;

    v28 = sub_483C(v25, v27, &v30);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v19, v20, "(uploadRecords) operation added to a database:%s", v21, 0xCu);
    sub_3B14(v22);
  }

  v29 = [*(v5 + OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer) privateCloudDatabase];
  [v29 addOperation:v18];
}

uint64_t sub_2E50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v6 = sub_113E0();
  sub_1898(v6, qword_1CAE8);
  sub_3B60(a1, a2 & 1);
  v7 = sub_113C0();
  v8 = sub_115D0();
  sub_3B6C(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_3B60(a1, a2 & 1);
    sub_3610(&qword_1CB58, &unk_126B0);
    v11 = sub_11490();
    v13 = sub_483C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "(uploadRecords) upload records result:%s", v9, 0xCu);
    sub_3B14(v10);
  }

  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  return a3(v14);
}

id sub_303C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudKitStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudKitStackShared();
  result = sub_113F0();
  *a1 = result;
  return result;
}

void sub_30EC(uint64_t a1@<X8>)
{
  v2 = sub_11040();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_110B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C930 != -1)
  {
    swift_once();
  }

  v12 = sub_11310();
  sub_1898(v12, qword_1CE88);
  sub_112D0();
  v33[0] = 0xD000000000000016;
  v33[1] = 0x8000000000013360;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v2);
  sub_3658();
  sub_110A0();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(a1, v7);
  (*(v8 + 32))(a1, v11, v7);
  v13 = [objc_opt_self() defaultManager];
  sub_11070(v14);
  v16 = v15;
  sub_3610(&qword_1CB38, &qword_12698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_12630;
  *(inited + 32) = NSFileProtectionKey;
  v18 = NSFileProtectionKey;
  v19 = sub_11280();
  type metadata accessor for URLFileProtection(0);
  *(inited + 64) = v20;
  *(inited + 40) = v19;
  sub_3844(inited);
  swift_setDeallocating();
  sub_394C(inited + 32, &qword_1CB40, &qword_126A0);
  type metadata accessor for FileAttributeKey(0);
  sub_39AC();
  isa = sub_11420().super.isa;

  v33[0] = 0;
  v22 = [v13 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:isa error:v33];

  if (v22)
  {
    v23 = v33[0];
    v24 = sub_11280();
    sub_11050(v24);

    sub_112B0();
  }

  else
  {
    v25 = v33[0];
    sub_11030();

    swift_willThrow();
    if (qword_1C940 != -1)
    {
      swift_once();
    }

    v26 = sub_113E0();
    sub_1898(v26, qword_1CAE8);
    swift_errorRetain();
    v27 = sub_113C0();
    v28 = sub_115C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_0, v27, v28, "(getAssetsStagingFolder) Unable to create assets directory: %@", v29, 0xCu);
      sub_394C(v30, &qword_1CC20, &qword_12690);
    }

    else
    {
    }
  }
}

uint64_t sub_3610(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3658()
{
  result = qword_1CB30;
  if (!qword_1CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB30);
  }

  return result;
}

unint64_t sub_36AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_11480();
  sub_117D0();
  sub_114A0();
  v4 = sub_117F0();

  return sub_3740(a1, v4);
}

unint64_t sub_3740(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_11480();
      v9 = v8;
      if (v7 == sub_11480() && v9 == v10)
      {
        break;
      }

      v12 = sub_117C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_3844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3610(&qword_1CB48, &qword_126A8);
    v3 = sub_11780();
    v4 = a1 + 32;

    while (1)
    {
      sub_3A04(v4, &v11);
      v5 = v11;
      result = sub_36AC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_3A74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_394C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3610(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_39AC()
{
  result = qword_1CA08;
  if (!qword_1CA08)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA08);
  }

  return result;
}

uint64_t sub_3A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_3610(&qword_1CB40, &qword_126A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_3A74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_3A84()
{
  result = qword_1CB50;
  if (!qword_1CB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CB50);
  }

  return result;
}

uint64_t sub_3AD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B14(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3B60(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_3B6C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_3B78()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CB60);
  v1 = sub_1898(v0, qword_1CB60);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_3C40(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v5 = [*(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) newBackgroundContext];
  v6 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v5 setMergePolicy:v6];

  if (sub_F5D4(a2))
  {
    if (qword_1C948 != -1)
    {
      swift_once();
    }

    v7 = sub_113E0();
    sub_1898(v7, qword_1CB60);
    v8 = sub_113C0();
    v9 = sub_115D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      if (a2)
      {
        if (a2 == 1)
        {
          v12 = 0x6465636E7973;
        }

        else
        {
          v12 = 0x6465636E79736E75;
        }

        if (a2 == 1)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      else
      {
        v12 = 7958113;
        v13 = 0xE300000000000000;
      }

      v21 = sub_483C(v12, v13, &v24);

      *(v10 + 4) = v21;
      _os_log_impl(&dword_0, v8, v9, "(haveData %s) true", v10, 0xCu);
      sub_3B14(v11);
    }

    v22 = 1;
  }

  else
  {
    if (qword_1C948 != -1)
    {
      swift_once();
    }

    v14 = sub_113E0();
    sub_1898(v14, qword_1CB60);
    v15 = sub_113C0();
    v16 = sub_115D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      if (a2)
      {
        if (a2 == 1)
        {
          v19 = 0x6465636E7973;
        }

        else
        {
          v19 = 0x6465636E79736E75;
        }

        if (a2 == 1)
        {
          v20 = 0xE600000000000000;
        }

        else
        {
          v20 = 0xE800000000000000;
        }
      }

      else
      {
        v19 = 7958113;
        v20 = 0xE300000000000000;
      }

      v23 = sub_483C(v19, v20, &v24);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_0, v15, v16, "(haveData %s) false", v17, 0xCu);
      sub_3B14(v18);
    }

    v22 = 0;
  }

  *a3 = v22;
}

uint64_t sub_3FA0(char a1)
{
  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DataStackConfiguration();
  v3 = sub_1898(v2, qword_1CEA0);
  v4 = *v3;
  v5 = *(v3 + 8);
  objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v6 = sub_AAA8(v4, v5);
  if (qword_1C948 != -1)
  {
    swift_once();
  }

  v7 = sub_113E0();
  sub_1898(v7, qword_1CB60);
  v8 = sub_113C0();
  v9 = sub_115D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v12 = 0x6465636E7973;
      }

      else
      {
        v12 = 0x6465636E79736E75;
      }

      if (a1 == 1)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7958113;
    }

    v14 = sub_483C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "(haveData %s) start", v10, 0xCu);
    sub_3B14(v11);
  }

  if (qword_1C958 != -1)
  {
    v15 = swift_once();
  }

  __chkstk_darwin(v15);
  sub_11610();

  return v17;
}

uint64_t sub_4254()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CB80);
  v1 = sub_1898(v0, qword_1CB80);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_431C()
{
  v0 = sub_11600();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115F0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_11410();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_6C3C(0, &qword_1CC30, OS_dispatch_queue_ptr);
  sub_11400();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_6AD8();
  sub_3610(&qword_1CC40, &qword_12728);
  sub_6B30();
  sub_11700();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_11620();
  qword_1CEB8 = result;
  return result;
}

Class sub_4634(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *, void *))
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = a5(a3, a4);

  if (v11)
  {
    v12.super.isa = sub_114F0().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

id sub_47E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_483C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4908(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_6BDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3B14(v11);
  return v7;
}

unint64_t sub_4908(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4A14(a5, a6);
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
    result = sub_11750();
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

char *sub_4A14(uint64_t a1, unint64_t a2)
{
  v4 = sub_4A60(a1, a2);
  sub_4B90(&off_18AF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4A60(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4C7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_11750();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_114C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4C7C(v10, 0);
        result = sub_11710();
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

uint64_t sub_4B90(uint64_t result)
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

  result = sub_4CF0(result, v12, 1, v3);
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

void *sub_4C7C(uint64_t a1, uint64_t a2)
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

  sub_3610(&qword_1CC50, &qword_12730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4CF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3610(&qword_1CC50, &qword_12730);
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

void sub_4DE4(void *a1, void *a2)
{
  v4 = sub_11270();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_11300();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v11 = sub_113E0();
  v12 = sub_1898(v11, qword_1CB80);
  v13 = a2;
  v14 = a1;
  v60 = v12;
  v15 = sub_113C0();
  v16 = sub_115D0();
  if (os_log_type_enabled(v15, v16))
  {
    v56 = v4;
    v17 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v17 = 136315394;
    if (!a1)
    {

      __break(1u);
      goto LABEL_30;
    }

    v61 = [v14 identifier];
    sub_3610(&qword_1CC68, &qword_12740);
    v18 = sub_11490();
    v20 = sub_483C(v18, v19, &v62);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v61 = a2;
    v21 = v13;
    sub_3610(&qword_1CC28, &qword_12720);
    v22 = sub_11490();
    v24 = sub_483C(v22, v23, &v62);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_0, v15, v16, "->actionsForEnablingDataclass %s    %s", v17, 0x16u);
    swift_arrayDestroy();

    v4 = v56;
  }

  else
  {
  }

  sub_112F0();
  v25 = sub_112A0();
  (*(v7 + 8))(v10, v59);
  if (v25)
  {
    v26 = sub_3FA0(0);
    v27 = sub_113C0();
    v28 = sub_115D0();
    v29 = os_log_type_enabled(v27, v28);
    if (v26)
    {
      if (v29)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v27, v28, "->actionsForEnablingDataclass haveData == true)", v30, 2u);
      }

      v32 = v57;
      v31 = v58;
      (*(v58 + 104))(v57, enum case for AppleAccountUIFeature.signOutRedesign(_:), v4);
      v33 = sub_11260();
      (*(v31 + 8))(v32, v4);
      v34 = sub_113C0();
      v35 = sub_115D0();
      v36 = os_log_type_enabled(v34, v35);
      if ((v33 & 1) == 0)
      {
        if (v36)
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_0, v34, v35, "->actionsForEnablingDataclass, returning [(type: .mergeLocalDataIntoSyncData), (type: .cancel)]", v51, 2u);
        }

        sub_3610(&qword_1CC58, &qword_12738);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_126C0;
        v52 = objc_opt_self();
        v53 = [v52 actionWithType:5];
        if (v53)
        {
          v54 = v53;
          v42 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
          *(v38 + 56) = v42;
          *(v38 + 32) = v54;
          v43 = [v52 actionWithType:0];
          if (v43)
          {
            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v36)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v34, v35, "->actionsForEnablingDataclass, returning [(type: .createSyncDataStoreDeleteLocalData), (type: .mergeLocalDataIntoSyncData)]", v37, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_126C0;
      v39 = objc_opt_self();
      v40 = [v39 actionWithType:6];
      if (v40)
      {
        v41 = v40;
        v42 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v38 + 56) = v42;
        *(v38 + 32) = v41;
        v43 = [v39 actionWithType:5];
        if (!v43)
        {
          __break(1u);
          goto LABEL_17;
        }

LABEL_28:
        *(v38 + 88) = v42;
        *(v38 + 64) = v43;
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v29)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v27, v28, "->actionsForEnablingDataclass haveSyncedData == false), returning [(type: .createSyncDataStore)]", v47, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_12630;
    v49 = [objc_opt_self() actionWithType:1];
    if (v49)
    {
      v50 = v49;
      *(v48 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v48 + 32) = v50;
      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_17:
  v44 = sub_113C0();
  v45 = sub_115B0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "Returning early because group container does not exist.", v46, 2u);
  }
}

void sub_5570(void *a1, void *a2)
{
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v4 = sub_113E0();
  sub_1898(v4, qword_1CB80);
  v5 = a2;
  v6 = a1;
  v7 = sub_113C0();
  v8 = sub_115D0();
  if (!os_log_type_enabled(v7, v8))
  {

    goto LABEL_7;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v17 = v11;
  *v9 = 138412546;
  if (a1)
  {
    v12 = v11;

    v13 = [v6 identifier];
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2080;
    sub_3610(&qword_1CC28, &qword_12720);
    v14 = sub_116F0();
    v16 = sub_483C(v14, v15, &v17);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_0, v7, v8, "->actions DataclassOwner getting action for adding dataclass for account %@ for dataclas %s", v9, 0x16u);
    sub_6A70(v10);

    sub_3B14(v12);

LABEL_7:

    sub_4DE4(a1, a2);
    return;
  }

  __break(1u);
}

void sub_576C(void *a1, void *a2)
{
  v4 = sub_11300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v9 = sub_113E0();
  v10 = sub_1898(v9, qword_1CB80);
  v11 = a2;
  v12 = a1;
  v13 = sub_113C0();
  v14 = sub_115D0();
  if (os_log_type_enabled(v13, v14))
  {
    v48 = a2;
    v49 = v5;
    v50 = v4;
    v51 = v10;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v53 = v17;
    *v15 = 138412546;
    if (!a1)
    {

      __break(1u);
      goto LABEL_25;
    }

    v18 = v17;

    v19 = [v12 identifier];
    *(v15 + 4) = v19;
    *v16 = v19;
    *(v15 + 12) = 2080;
    v52 = v48;
    sub_3610(&qword_1CC28, &qword_12720);
    v20 = sub_116F0();
    v22 = sub_483C(v20, v21, &v53);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v13, v14, "->forDeletingDataClass DataclassOwner getting deleting for adding dataclass for account %@ for dataclas %s", v15, 0x16u);
    sub_6A70(v16);

    sub_3B14(v18);

    v4 = v50;
    v5 = v49;
  }

  else
  {
  }

  sub_112F0();
  v23 = sub_112A0();
  (*(v5 + 8))(v8, v4);
  if (v23)
  {
    v24 = sub_3FA0(1);
    v25 = sub_3FA0(2);
    v26 = sub_113C0();
    v27 = sub_115D0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109376;
      *(v28 + 4) = v24 & 1;
      *(v28 + 8) = 1024;
      *(v28 + 10) = v25 & 1;
      _os_log_impl(&dword_0, v26, v27, "->forDeletingDataClass syncDataExists:%{BOOL}d  unsyncDataExists:%{BOOL}d", v28, 0xEu);
    }

    v29 = v24 | v25;
    v30 = sub_113C0();
    v31 = sub_115D0();
    v32 = os_log_type_enabled(v30, v31);
    if ((v29 & 1) == 0)
    {
      if (v32)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v30, v31, "->forDeletingDataClass haveUnsyncedData == false, returning [(type: .deleteSyncData)]", v44, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_12630;
      v46 = [objc_opt_self() actionWithType:3];
      if (v46)
      {
        v47 = v46;
        *(v45 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v45 + 32) = v47;
        return;
      }

      goto LABEL_26;
    }

    if (v32)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v30, v31, "->forDeletingDataClass, returning [(type: .mergeSyncDataIntoLocalData), (with: .deleteSyncData), (type: .cancel)]", v33, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_126D0;
    v35 = objc_opt_self();
    v36 = [v35 actionWithType:2];
    if (v36)
    {
      v37 = v36;
      v38 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v34 + 56) = v38;
      *(v34 + 32) = v37;
      v39 = [v35 destructiveActionWithType:3];
      if (v39)
      {
        *(v34 + 88) = v38;
        *(v34 + 64) = v39;
        v40 = [v35 actionWithType:0];
        if (v40)
        {
          *(v34 + 120) = v38;
          *(v34 + 96) = v40;
          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = sub_113C0();
  v42 = sub_115B0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Returning early because group container does not exist.", v43, 2u);
  }
}

void sub_5D60(void *a1, void *a2)
{
  v4 = sub_11300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v9 = sub_113E0();
  v10 = sub_1898(v9, qword_1CB80);
  v11 = a2;
  v12 = a1;
  v50[1] = v10;
  v13 = sub_113C0();
  v14 = sub_115D0();
  if (os_log_type_enabled(v13, v14))
  {
    v50[0] = v4;
    v15 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v15 = 136315394;
    if (!a1)
    {

      __break(1u);
      goto LABEL_30;
    }

    v51 = [v12 identifier];
    sub_3610(&qword_1CC68, &qword_12740);
    v16 = sub_11490();
    v18 = sub_483C(v16, v17, &v52);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v51 = a2;
    v19 = v11;
    sub_3610(&qword_1CC28, &qword_12720);
    v20 = sub_11490();
    v22 = sub_483C(v20, v21, &v52);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v13, v14, "->actionsForDisablingDataclass %s    %s", v15, 0x16u);
    swift_arrayDestroy();

    v4 = v50[0];
  }

  else
  {
  }

  sub_112F0();
  v23 = sub_112A0();
  (*(v5 + 8))(v8, v4);
  if (v23)
  {
    if ((sub_3FA0(1) & 1) == 0)
    {
      v37 = sub_3FA0(2);
      v38 = sub_113C0();
      v39 = sub_115D0();
      v40 = os_log_type_enabled(v38, v39);
      if ((v37 & 1) == 0)
      {
        if (v40)
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_0, v38, v39, "->actionsForDisablingDataclass haveUnsyncedData == false, returning [(type: .deleteSyncData)]", v46, 2u);
        }

        sub_3610(&qword_1CC58, &qword_12738);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_12630;
        v48 = [objc_opt_self() actionWithType:3];
        if (v48)
        {
          v49 = v48;
          *(v47 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
          *(v47 + 32) = v49;
          return;
        }

        goto LABEL_33;
      }

      if (v40)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_0, v38, v39, "->actionsForDisablingDataclass haveUnsyncedData == true, returning [(type: .mergeSyncDataIntoLocalData), (with: .loseNonUploadedData), (type: .cancel)]", v41, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_126D0;
      v42 = objc_opt_self();
      v43 = [v42 actionWithType:2];
      if (v43)
      {
        v44 = v43;
        v31 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v27 + 56) = v31;
        *(v27 + 32) = v44;
        v45 = [v42 destructiveActionWithType:8];
        if (v45)
        {
          *(v27 + 88) = v31;
          *(v27 + 64) = v45;
          v33 = [v42 actionWithType:0];
          if (v33)
          {
            goto LABEL_24;
          }

LABEL_35:
          __break(1u);
          return;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v24 = sub_113C0();
    v25 = sub_115D0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "->actionsForDisablingDataclass haveSyncedData == true, returning [(type: .mergeSyncDataIntoLocalData), (with: .deleteSyncData), (type: .cancel)]", v26, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_126D0;
    v28 = objc_opt_self();
    v29 = [v28 actionWithType:2];
    if (v29)
    {
      v30 = v29;
      v31 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v27 + 56) = v31;
      *(v27 + 32) = v30;
      v32 = [v28 destructiveActionWithType:3];
      if (v32)
      {
        *(v27 + 88) = v31;
        *(v27 + 64) = v32;
        v33 = [v28 actionWithType:0];
        if (!v33)
        {
          __break(1u);
          goto LABEL_15;
        }

LABEL_24:
        *(v27 + 120) = v31;
        *(v27 + 96) = v33;
        return;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_15:
  v34 = sub_113C0();
  v35 = sub_115B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "Returning early because group container does not exist.", v36, 2u);
  }
}

void sub_6430(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_11300();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v12 = sub_113E0();
  v13 = sub_1898(v12, qword_1CB80);
  v48 = a3;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v17 = v15;
  v18 = sub_113C0();
  v19 = sub_115D0();

  if (os_log_type_enabled(v18, v19))
  {
    v46 = v4;
    v47 = v13;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v17;
    v45 = a1;
    *v21 = a1;
    *(v20 + 12) = 2112;
    if (!a2)
    {

      __break(1u);
      goto LABEL_30;
    }

    v23 = v22;
    v24 = v17;

    v25 = [v16 identifier];
    *(v20 + 14) = v25;
    v21[1] = v25;
    *(v20 + 22) = 2080;
    v51 = v48;
    sub_3610(&qword_1CC28, &qword_12720);
    v26 = sub_116F0();
    v28 = sub_483C(v26, v27, &v52);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_0, v18, v19, "->perform DataclassOwner perform action %@ for account %@ for dataclas %s", v20, 0x20u);
    sub_3610(&qword_1CC20, &qword_12690);
    swift_arrayDestroy();

    sub_3B14(v23);

    a1 = v45;
  }

  else
  {
  }

  sub_112F0();
  v29 = sub_112A0();
  (*(v49 + 8))(v11, v50);
  if ((v29 & 1) == 0)
  {
    v31 = sub_113C0();
    v32 = sub_115B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Returning early because group container does not exist.", v33, 2u);
    }

    goto LABEL_28;
  }

  if (a1)
  {
    v30 = [v17 type];
    if (v30 > 3)
    {
      if (v30 - 6 < 3)
      {
        sub_9DD4();
LABEL_19:
        sub_6D8C();
        goto LABEL_26;
      }

      if (v30 != &dword_4)
      {
        if (v30 != (&dword_4 + 1))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else if (v30 >= 2)
    {
      if (v30 != (&dword_0 + 2))
      {
        if (v30 != (&dword_0 + 3))
        {
          goto LABEL_26;
        }

        sub_9DD4();
        sub_9EE8();
        goto LABEL_19;
      }

LABEL_22:
      sub_9DD4();
      sub_6FC4();
LABEL_26:
      v31 = sub_113C0();
      v42 = sub_115D0();
      if (os_log_type_enabled(v31, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v31, v42, "->perform DataclassOwner done", v43, 2u);
      }

LABEL_28:

      return;
    }

    v34 = v17;
    v35 = sub_113C0();
    v36 = sub_115D0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136315138;
      v51 = [v34 type];
      type metadata accessor for ACDataclassActionType(0);
      v39 = sub_11490();
      v41 = sub_483C(v39, v40, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_0, v35, v36, "Ignoring action %s", v37, 0xCu);
      sub_3B14(v38);
    }

    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_6A70(uint64_t a1)
{
  v2 = sub_3610(&qword_1CC20, &qword_12690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6AD8()
{
  result = qword_1CC38;
  if (!qword_1CC38)
  {
    sub_115F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC38);
  }

  return result;
}

unint64_t sub_6B30()
{
  result = qword_1CC48;
  if (!qword_1CC48)
  {
    sub_6B94(&qword_1CC40, &qword_12728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC48);
  }

  return result;
}

uint64_t sub_6B94(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_6BDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_6C3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_6C84()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CEC0);
  sub_1898(v0, qword_1CEC0);
  return sub_113D0();
}

uint64_t sub_6D08()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CED8);
  sub_1898(v0, qword_1CED8);
  return sub_113D0();
}

uint64_t sub_6D8C()
{
  v1 = v0;
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v2 = sub_113E0();
  sub_1898(v2, qword_1CCE0);
  v3 = sub_113C0();
  v4 = sub_115D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Deleting all local data", v5, 2u);
  }

  if (qword_1C958 != -1)
  {
    swift_once();
  }

  v6 = qword_1CEB8;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_978C;
  *(v8 + 24) = v7;
  v13[4] = sub_A92C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_7C88;
  v13[3] = &unk_18D98;
  v9 = _Block_copy(v13);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6FC4()
{
  v1 = v0;
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v2 = sub_113E0();
  sub_1898(v2, qword_1CCE0);
  v3 = sub_113C0();
  v4 = sub_115D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Marking all records as not uploaded", v5, 2u);
  }

  if (qword_1C958 != -1)
  {
    swift_once();
  }

  v6 = qword_1CEB8;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_7F10;
  *(v8 + 24) = v7;
  v13[4] = sub_7F18;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_7C88;
  v13[3] = &unk_18C58;
  v9 = _Block_copy(v13);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_71FC()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CCE0);
  v1 = sub_1898(v0, qword_1CCE0);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_72C4(void *a1)
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v2 = sub_115E0();
  v3 = sub_11450();
  [v2 setBool:1 forKey:v3];

  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DataStackConfiguration();
  v5 = sub_1898(v4, qword_1CEA0);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v9 = sub_AAA8(v6, v7);
  v10 = *&v9[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = a1;
  v16[4] = sub_97E0;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_7CB0;
  v16[3] = &unk_18DE8;
  v12 = _Block_copy(v16);
  v13 = v10;
  v14 = v9;
  v15 = a1;

  [v13 performBlock:v12];
  _Block_release(v12);
}

void sub_74A8(uint64_t a1, void *a2, void *a3)
{
  if (MKBGetDeviceLockState() == 1)
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v6 = sub_113E0();
    sub_1898(v6, qword_1CCE0);
    oslog = sub_113C0();
    v7 = sub_115B0();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "(actionDeleteAllLocalData) unable to complete actionDeleteAllLocalData, device is locked";
LABEL_24:
    _os_log_impl(&dword_0, oslog, v7, v9, v8, 2u);

LABEL_25:

    return;
  }

  v10 = [*(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) viewContext];
  v11 = [v10 persistentStoreCoordinator];

  if (!v11 || ((v12 = [v11 persistentStores], sub_6C3C(0, &qword_1CD00, NSPersistentStore_ptr), v13 = sub_11500(), v12, v13 >> 62) ? (v14 = sub_11770()) : (v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8))), (, v11, !v14) || *(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess) != 1))
  {
LABEL_20:
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v27 = sub_113E0();
    sub_1898(v27, qword_1CCE0);
    oslog = sub_113C0();
    v7 = sub_115B0();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "(actionDeleteAllLocalData) Database is not open, unable to complete actionDeleteAllLocalData";
    goto LABEL_24;
  }

  sub_111A0();
  aBlock[0] = 0;
  if ([a2 save:aBlock])
  {
    v15 = qword_1C970;
    v16 = aBlock[0];
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_113E0();
    sub_1898(v17, qword_1CCE0);
    v18 = sub_113C0();
    v19 = sub_115D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Deleted all local data", v20, 2u);
    }

    if (qword_1C958 != -1)
    {
      swift_once();
    }

    v21 = qword_1CEB8;
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    v23 = swift_allocObject();
    v23[2] = sub_97EC;
    v23[3] = v22;
    aBlock[4] = sub_A92C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7C88;
    aBlock[3] = &unk_18E60;
    v24 = _Block_copy(aBlock);
    v25 = a3;

    dispatch_sync(v21, v24);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v28 = aBlock[0];
    sub_11030();

    swift_willThrow();
    v29 = sub_11020();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v30 = sub_113E0();
    sub_1898(v30, qword_1CCE0);
    v31 = v29;
    v32 = sub_113C0();
    v33 = sub_115C0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      osloga = v31;
      v36 = [osloga userInfo];
      sub_11430();

      v37 = sub_11440();
      v39 = v38;

      v40 = sub_483C(v37, v39, aBlock);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "Failed to delete all local data %@, %s", v34, 0x16u);
      sub_6A70(v35);

      sub_3B14(v41);
    }

    else
    {
    }
  }
}

void sub_7BE8()
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v0 = sub_115E0();
  v1 = sub_11450();
  [v0 setBool:0 forKey:v1];
}

uint64_t sub_7CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_7CF4(void *a1)
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v2 = sub_115E0();
  v3 = sub_11450();
  [v2 setBool:1 forKey:v3];

  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DataStackConfiguration();
  v5 = sub_1898(v4, qword_1CEA0);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v9 = sub_AAA8(v6, v7);
  v10 = *&v9[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = a1;
  v16[4] = sub_9768;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_7CB0;
  v16[3] = &unk_18CA8;
  v12 = _Block_copy(v16);
  v13 = v10;
  v14 = v9;
  v15 = a1;

  [v13 performBlock:v12];
  _Block_release(v12);
}

uint64_t sub_7ED8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_7F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_7F58(void *a1, uint64_t a2, void *a3)
{
  sub_11210();
  sub_11200();
  sub_11190();
  v18 = MKBGetDeviceLockState();
  if (v18 == 1)
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v19 = sub_113E0();
    sub_1898(v19, qword_1CCE0);
    oslog = sub_113C0();
    v20 = sub_115B0();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_32;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Device is locked";
LABEL_31:
    _os_log_impl(&dword_0, oslog, v20, v22, v21, 2u);

LABEL_32:

    return;
  }

  v23 = [*(a2 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) viewContext];
  v24 = [v23 persistentStoreCoordinator];

  if (!v24 || ((v25 = [v24 persistentStores], sub_6C3C(0, &qword_1CD00, NSPersistentStore_ptr), v26 = sub_11500(), v25, v26 >> 62) ? (v27 = sub_11770()) : (v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8))), (, v24, !v27) || *(a2 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess) != 1))
  {
LABEL_27:
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v40 = sub_113E0();
    sub_1898(v40, qword_1CCE0);
    oslog = sub_113C0();
    v20 = sub_115B0();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_32;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Database is not open";
    goto LABEL_31;
  }

  aBlock[0] = 0;
  if ([a1 save:aBlock])
  {
    v28 = qword_1C970;
    v29 = aBlock[0];
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_113E0();
    sub_1898(v30, qword_1CCE0);
    v31 = sub_113C0();
    v32 = sub_115D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Marked all records as not uploaded", v33, 2u);
    }

    if (qword_1C958 != -1)
    {
      swift_once();
    }

    v34 = qword_1CEB8;
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    v36 = swift_allocObject();
    v36[2] = sub_9774;
    v36[3] = v35;
    aBlock[4] = sub_A92C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7C88;
    aBlock[3] = &unk_18D20;
    v37 = _Block_copy(aBlock);
    v38 = a3;

    dispatch_sync(v34, v37);
    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v41 = aBlock[0];
    sub_11030();

    swift_willThrow();
    v6 = sub_11020();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v7 = sub_113E0();
    sub_1898(v7, qword_1CCE0);
    v8 = v6;
    v9 = sub_113C0();
    v10 = sub_115C0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      osloga = v8;
      v13 = [osloga userInfo];
      sub_11430();

      v14 = sub_11440();
      v16 = v15;

      v17 = sub_483C(v14, v16, aBlock);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_0, v9, v10, "Error trying to mark all records as not uploaded %@, %s", v11, 0x16u);
      sub_6A70(v12);

      sub_3B14(v42);
    }

    else
    {
    }
  }
}

void sub_86B4()
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v0 = sub_115E0();
  v1 = sub_11450();
  [v0 setBool:0 forKey:v1];
}

void sub_8754(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_BDD0(a2);
  if (!v5)
  {
    v11 = v10;
    v12 = sub_BE14(a2);
    v13 = a2;
    v14 = 0;
    v15 = v12;
    v100 = v13;
    if (qword_1C970 != -1)
    {
LABEL_90:
      swift_once();
    }

    v16 = sub_113E0();
    sub_1898(v16, qword_1CCE0);

    v17 = sub_113C0();
    v18 = sub_115D0();
    v95 = a3;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (v11 >> 62)
      {
        v20 = sub_11770();
      }

      else
      {
        v20 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      }

      *(v19 + 4) = v20;

      _os_log_impl(&dword_0, v17, v18, "(actionUploadChanges) un-uploaded assets count:%ld", v19, 0xCu);
    }

    else
    {
    }

    v21 = sub_113C0();
    v22 = sub_115D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v15 >> 62)
      {
        v24 = sub_11770();
      }

      else
      {
        v24 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      *(v23 + 4) = v24;

      _os_log_impl(&dword_0, v21, v22, "(actionUploadChanges) un-uploaded attachments count:%ld", v23, 0xCu);
    }

    else
    {
    }

    v25 = sub_CB20(v100);
    if (v14)
    {
LABEL_14:

      return;
    }

    v26 = v25;
    v92 = v15;
    v93 = v11;
    v15 = 0;
    v14 = sub_CB68(v100);
    *&v101 = v26;

    sub_97F4(v27, sub_9B2C);
    v28 = *v95;
    *v95 = v101;

    v29 = sub_113C0();
    LOBYTE(v30) = sub_115D0();
    v94 = a5;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      if (v26 >> 62)
      {
LABEL_95:
        v32 = sub_11770();
      }

      else
      {
        v32 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      }

      *(v31 + 4) = v32;

      *(v31 + 12) = 2048;
      if (v14 >> 62)
      {
        v33 = sub_11770();
      }

      else
      {
        v33 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      }

      a5 = v94;

      *(v31 + 14) = v33;

      _os_log_impl(&dword_0, v29, v30, "(actionUploadChanges) will delete %ld asset records, and %ld attachment records", v31, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v34 = v15;
    v87 = *(a4 + 16);
    if (v87)
    {
      v35 = 0;
      v88 = a4 + 32;
      while (1)
      {
        v38 = (v88 + 16 * v35);
        v39 = *v38;
        v98 = v38[1];
        sub_11370();
        v14 = v34;
        if (v34)
        {
          goto LABEL_14;
        }

        v91 = v35 + 1;
        sub_3610(&qword_1CD28, &qword_12778);
        v15 = sub_11760();
        a5 = (v15 + 40);

        a3 = 0;
        v40 = &_swiftEmptyArrayStorage;
        *&v101 = &_swiftEmptyArrayStorage;
        a4 = *(v15 + 16);
LABEL_29:
        v99 = v40;
        v41 = &a5[2 * a3];
        while (a4 != a3)
        {
          if (a3 >= *(v15 + 16))
          {
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          ++a3;
          v11 = (v41 + 2);
          v42 = *(v41 - 1);
          v43 = *v41;
          swift_getObjectType();
          v44 = v42;
          v45 = sub_11360();

          v41 = v11;
          if (v45)
          {
            sub_114E0();
            if (*(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v101 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v46 = *(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8));
              sub_11520();
            }

            sub_11530();
            v40 = v101;
            goto LABEL_29;
          }
        }

        sub_97F4(v47, sub_998C);
        sub_11380();
        v14 = sub_11760();

        swift_getKeyPath();
        v103 = &_swiftEmptyArrayStorage;
        a3 = *(v14 + 16);
        if (a3)
        {
          v11 = 0;
          a5 = (v14 + 32);
          v96 = &_swiftEmptyArrayStorage;
LABEL_38:
          a4 = v11;
          while (a4 < *(v14 + 16))
          {
            v11 = a4 + 1;
            v101 = *&a5[2 * a4];
            v48 = v101;
            swift_getAtKeyPath();

            if (v102)
            {
              sub_114E0();
              if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v97 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
                sub_11520();
              }

              sub_11530();
              v96 = v103;
              if (a3 - 1 != a4)
              {
                goto LABEL_38;
              }

              goto LABEL_48;
            }

            ++a4;
            if (a3 == v11)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_89;
        }

        v96 = &_swiftEmptyArrayStorage;
LABEL_48:

        v11 = v96;

        sub_97F4(v49, sub_9B2C);
        v50 = *(v15 + 16);
        v51 = v99 >> 62;
        if (v99 >> 62)
        {
          v52 = sub_11770();
        }

        else
        {
          v52 = *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8));
        }

        a5 = v94;
        if (v50 == v52)
        {
        }

        else
        {

          v31 = sub_113C0();
          v53 = sub_115B0();
          if (os_log_type_enabled(v31, v53))
          {
            v89 = v53;
            v30 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *&v101 = v54;
            *v30 = 134218242;
            a4 = *(v15 + 16);
            v84 = v54;
            if (v99 >> 62)
            {
              v29 = sub_11770();
            }

            else
            {
              v29 = *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8));
            }

            if (__OFSUB__(a4, v29))
            {
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            *(v30 + 4) = a4 - v29;

            *(v30 + 12) = 2080;
            v55 = *(v98 + 8);
            v56 = sub_11230();
            v58 = sub_483C(v56, v57, &v101);

            *(v30 + 14) = v58;
            _os_log_impl(&dword_0, v31, v89, "Failed to create %ld %s CKRecords for saving", v30, 0x16u);
            sub_3B14(v84);

            v51 = v99 >> 62;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }

        v59 = *(v14 + 16);
        v90 = v96 >> 62;
        if (v96 >> 62)
        {
          if (v59 == sub_11770())
          {
LABEL_61:

            goto LABEL_71;
          }
        }

        else if (v59 == *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v31 = sub_113C0();
        v15 = sub_115B0();
        if (os_log_type_enabled(v31, v15))
        {
          v86 = v51;
          v30 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v101 = v60;
          *v30 = 134218242;
          a4 = *(v14 + 16);
          v85 = v60;
          if (v90)
          {
            v29 = sub_11770();
          }

          else
          {
            v29 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
          }

          if (__OFSUB__(a4, v29))
          {
            goto LABEL_94;
          }

          *(v30 + 4) = a4 - v29;

          *(v30 + 12) = 2080;
          v61 = *(v98 + 8);
          v62 = sub_11230();
          v64 = sub_483C(v62, v63, &v101);

          *(v30 + 14) = v64;
          _os_log_impl(&dword_0, v31, v15, "Failed to create %ld %s CKRecord.IDs for deletion", v30, 0x16u);
          sub_3B14(v85);

          v51 = v86;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

LABEL_71:

        v65 = sub_113C0();
        v66 = sub_115D0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *&v101 = v68;
          *v67 = 134218498;
          if (v51)
          {
            v69 = sub_11770();
          }

          else
          {
            v69 = *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8));
          }

          *(v67 + 4) = v69;

          *(v67 + 12) = 2080;
          v70 = *(v98 + 8);
          v71 = sub_11230();
          v73 = sub_483C(v71, v72, &v101);

          *(v67 + 14) = v73;
          *(v67 + 22) = 2048;
          if (v90)
          {
            v74 = sub_11770();
          }

          else
          {
            v74 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
          }

          *(v67 + 24) = v74;

          _os_log_impl(&dword_0, v65, v66, "Will upload %ld %s records and delete %ld records", v67, 0x20u);
          sub_3B14(v68);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v35 = v91;
        v34 = 0;
        v37 = v92;
        v36 = v93;
        if (v91 == v87)
        {
          goto LABEL_80;
        }
      }
    }

    v37 = v92;
    v36 = v93;
LABEL_80:
    v75 = sub_E39C(v36);

    v76 = sub_EE34(v37);

    *&v101 = v75;

    sub_97F4(v77, sub_998C);
    v78 = *a5;
    *a5 = v101;

    v79 = sub_113C0();
    v80 = sub_115D0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134218240;
      if (v75 >> 62)
      {
        v82 = sub_11770();
      }

      else
      {
        v82 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
      }

      *(v81 + 4) = v82;

      *(v81 + 12) = 2048;
      if (v76 >> 62)
      {
        v83 = sub_11770();
      }

      else
      {
        v83 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
      }

      *(v81 + 14) = v83;

      _os_log_impl(&dword_0, v79, v80, "(actionUploadChanges) will upload %ld asset records, %ld attachment records", v81, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }
}

Swift::Int sub_952C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v4 = sub_113E0();
    sub_1898(v4, qword_1CCE0);
    swift_errorRetain();
    v5 = sub_113C0();
    v6 = sub_115B0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_0, v5, v6, "Error uploading records: %@", v7, 0xCu);
      sub_6A70(v8);
    }

    swift_beginAccess();
    v10 = *(a2 + 16);
    *(a2 + 16) = a1;
  }

  else
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v11 = sub_113E0();
    sub_1898(v11, qword_1CCE0);
    v12 = sub_113C0();
    v13 = sub_115D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Completed CloudKit upload", v14, 2u);
    }
  }

  return sub_11660();
}

uint64_t sub_9798()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_97F4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_11770();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_11770();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_98EC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(&dword_10 + v11) + 32, (*(&dword_18 + v11) >> 1) - *(&dword_10 + v11), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_98EC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_11770();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_11740();
  *v1 = result;
  return result;
}

uint64_t sub_998C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_11770();
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
      result = sub_11770();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8A8(&qword_1CD40, &qword_1CD38, &qword_127B8);
          for (i = 0; i != v6; ++i)
          {
            sub_3610(&qword_1CD38, &qword_127B8);
            v9 = sub_9CCC(v13, i, a3);
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
        sub_6C3C(0, &qword_1CD30, CKRecord_ptr);
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

uint64_t sub_9B2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_11770();
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
      result = sub_11770();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8A8(&qword_1CD58, &qword_1CD50, &unk_127C0);
          for (i = 0; i != v6; ++i)
          {
            sub_3610(&qword_1CD50, &unk_127C0);
            v9 = sub_9D4C(v13, i, a3);
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
        sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
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

uint64_t (*sub_9CCC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_11730();
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
    *v3 = v4;
    return sub_A930;
  }

  __break(1u);
  return result;
}

void (*sub_9D4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_11730();
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
    *v3 = v4;
    return sub_9DCC;
  }

  __break(1u);
  return result;
}

void sub_9DD4()
{
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v0 = sub_113E0();
  sub_1898(v0, qword_1CCE0);
  v1 = sub_113C0();
  v2 = sub_115D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "(killJournalProcess) triggered", v3, 2u);
  }

  v4 = sub_11450();
  SFKillProcessNamed();
}

void sub_9EE8()
{
  v1 = sub_11350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3610(&qword_1CD08, &qword_12770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126D0;
  v7 = sub_111F0();
  v8 = sub_A774(&qword_1CD10, &type metadata accessor for JournalEntryMO);
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = sub_111D0();
  v10 = sub_A774(&qword_1CD18, &type metadata accessor for JournalMO);
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_11220();
  v12 = sub_A774(&qword_1CD20, &type metadata accessor for AppStorageMO);
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v13 = sub_115E0();
  v14 = sub_11450();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    swift_setDeallocating();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v16 = sub_113E0();
    sub_1898(v16, qword_1CCE0);
    v17 = sub_113C0();
    v18 = sub_115D0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "(actionUploadChanges) deleteAllOnNextLaunch is already set", v19, 2u);
    }

    return;
  }

  v55 = v1;
  v54 = v2;
  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for DataStackConfiguration();
  v21 = sub_1898(v20, qword_1CEA0);
  v22 = *v21;
  v23 = *(v21 + 8);
  objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v24 = sub_AAA8(v22, v23);
  v25 = *&v24[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v26 = dispatch_semaphore_create(0);
  v58 = &_swiftEmptyArrayStorage;
  v57 = &_swiftEmptyArrayStorage;
  __chkstk_darwin(v26);
  *(&v52 - 6) = v24;
  *(&v52 - 5) = v25;
  *(&v52 - 4) = &v57;
  *(&v52 - 3) = inited;
  *(&v52 - 2) = &v58;
  sub_11670();
  v56 = v0;
  if (v0)
  {

    swift_setDeallocating();

    return;
  }

  v52 = v24;
  v53 = v25;
  swift_setDeallocating();
  v27 = v58;
  v28 = v58 >> 62;
  if (v58 >> 62)
  {
    v29 = sub_11770();
  }

  else
  {
    v29 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
  }

  v30 = v55;
  if (v29)
  {
    goto LABEL_16;
  }

  if (v57 >> 62)
  {
    if (sub_11770())
    {
      goto LABEL_16;
    }
  }

  else if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_16:
    v55 = v27;
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v31 = sub_113E0();
    sub_1898(v31, qword_1CCE0);
    v32 = sub_113C0();
    v33 = sub_115D0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      if (v28)
      {
        v35 = sub_11770();
      }

      else
      {
        v35 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
      }

      *(v34 + 4) = v35;
      *(v34 + 12) = 2048;
      swift_beginAccess();
      if (v57 >> 62)
      {
        v36 = sub_11770();
      }

      else
      {
        v36 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
      }

      *(v34 + 14) = v36;
      _os_log_impl(&dword_0, v32, v33, "Will upload %ld total records and delete %ld total records", v34, 0x16u);
    }

    (*(v54 + 16))(v5, v21 + *(v20 + 20), v30);
    v37 = objc_allocWithZone(type metadata accessor for CloudKitStackShared());
    v38 = sub_2894(v5);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    swift_beginAccess();
    v40 = v57;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v26;
    v42 = v55;

    v43 = v26;
    sub_2AEC(v42, v40, sub_A858, v41);

    sub_11650();
    swift_beginAccess();
    if (*(v39 + 16))
    {
      v44 = *(v39 + 16);
      swift_willThrow();
      swift_errorRetain();
    }

    return;
  }

  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v45 = sub_113E0();
  sub_1898(v45, qword_1CCE0);
  v46 = sub_113C0();
  v47 = sub_115D0();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v53;
  v50 = v52;
  if (v48)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v46, v47, "(actionUploadChanges) nothing to upload", v51, 2u);
  }
}

uint64_t sub_A774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A7E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A818()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_getObjectType();
  v5 = *(v4 + 8);
  result = sub_11250();
  *a2 = result;
  return result;
}

uint64_t sub_A8A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6B94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_A988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A9E0()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CD88);
  v1 = sub_1898(v0, qword_1CD88);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_AAA8(void *a1, unsigned __int8 a2)
{
  v67 = sub_11110();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v67);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_11150();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v62 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_sessionID;
  sub_11140();
  v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess] = 0;
  v63 = a1;
  v18 = sub_105F0(a1, a2);
  v19 = OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container;
  *&v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container] = v18;
  v61 = v10;
  v20 = *(v10 + 16);
  v68 = v16;
  v65 = v9;
  v20(v16, &v2[v17], v9);
  v66 = v8;
  sub_11100();
  v21 = [*&v2[v19] viewContext];
  *&v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context] = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 mergeByPropertyStoreTrumpMergePolicy];
  [v23 setMergePolicy:v24];

  v25 = type metadata accessor for CoreDataStackShared();
  v70.receiver = v2;
  v70.super_class = v25;
  v26 = objc_msgSendSuper2(&v70, "init");
  if (MKBGetDeviceLockState() == 1)
  {
    v27 = v68;
    v28 = v65;
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v29 = sub_113E0();
    sub_1898(v29, qword_1CD88);
    v30 = v62;
    v20(v62, v27, v28);
    v31 = sub_113C0();
    v32 = sub_115B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      sub_BD2C();
      v35 = sub_117A0();
      v36 = v28;
      v38 = v37;
      v39 = *(v61 + 8);
      v39(v30, v36);
      v40 = sub_483C(v35, v38, aBlock);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v31, v32, "%{public}s (sharedCoredataInit) SharedDeviceInfoProvider.isDeviceLocked == TRUE, unable to complete CoreDataStackShared initialization.", v33, 0xCu);
      sub_3B14(v34);

      (*(v64 + 8))(v66, v67);
      v39(v68, v65);
    }

    else
    {

      v56 = *(v61 + 8);
      v56(v30, v28);
      (*(v64 + 8))(v66, v67);
      v56(v27, v28);
    }
  }

  else
  {
    v58 = *&v26[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container];
    v41 = v59;
    v42 = v65;
    v20(v59, v68, v65);
    v62 = v26;
    v43 = v64;
    v44 = v60;
    (*(v64 + 16))(v60, v66, v67);
    v45 = v61;
    v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v42;
    (*(v45 + 32))(v49 + v46, v50, v42);
    *(v49 + v47) = v62;
    v52 = v67;
    (*(v43 + 32))(v49 + v48, v44, v67);
    aBlock[4] = sub_BC20;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_B848;
    aBlock[3] = &unk_18F00;
    v53 = _Block_copy(aBlock);
    v54 = v58;
    v55 = v62;

    [v54 loadPersistentStoresWithCompletionHandler:v53];
    _Block_release(v53);

    (*(v43 + 8))(v66, v52);
    v26 = v62;
    (*(v45 + 8))(v68, v51);
  }

  return v26;
}

void sub_B130(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5)
{
  v9 = sub_11110();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_11150();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v20 = &v63 - v19;
  if (a2)
  {
    v21 = sub_11020();
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v22 = sub_113E0();
    sub_1898(v22, qword_1CD88);
    (*(v15 + 16))(v20, a3, v14);
    v23 = v21;
    v24 = sub_113C0();
    v25 = sub_115C0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70 = v28;
      *v26 = 136446466;
      sub_BD2C();
      v29 = sub_117A0();
      v30 = v14;
      v32 = v31;
      (*(v15 + 8))(v20, v30);
      v33 = sub_483C(v29, v32, &v70);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v34 = v23;
      _os_log_impl(&dword_0, v24, v25, "%{public}s (sharedCoredataInit) LoadPersistentStores Unresolved error: %@", v26, 0x16u);
      sub_6A70(v27);

      sub_3B14(v28);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }
  }

  else
  {
    v65 = a5;
    v66 = v18;
    a4[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess] = 1;
    v35 = [*&a4[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container] viewContext];
    v36 = [v35 persistentStoreCoordinator];

    v67 = a3;
    v64 = v13;
    if (v36)
    {
      v37 = [v36 persistentStores];

      sub_BD84();
      v38 = sub_11500();

      if (v38 >> 62)
      {
        v39 = sub_11770();
      }

      else
      {
        v39 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v39 = 0;
    }

    v68 = v10;
    v40 = v14;
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v41 = sub_113E0();
    sub_1898(v41, qword_1CD88);
    v42 = a4;
    v43 = sub_113C0();
    v44 = sub_115D0();

    v45 = os_log_type_enabled(v43, v44);
    v69 = v9;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70 = v47;
      *v46 = 136446466;
      sub_BD2C();
      v48 = sub_117A0();
      v50 = sub_483C(v48, v49, &v70);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v39;
      _os_log_impl(&dword_0, v43, v44, "%{public}s(sharedCoredataInit) persistentStoresCount:%ld", v46, 0x16u);
      sub_3B14(v47);
      v9 = v69;
    }

    v51 = v66;
    (*(v15 + 16))(v66, v67, v40);
    v52 = v68;
    v53 = v64;
    (*(v68 + 16))(v64, v65, v9);
    v54 = sub_113C0();
    v55 = sub_115D0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v56 = 136446466;
      sub_BD2C();
      v57 = sub_117A0();
      v59 = v58;
      (*(v15 + 8))(v51, v40);
      v60 = sub_483C(v57, v59, &v70);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2048;
      sub_110E0();
      v62 = v61;
      (*(v52 + 8))(v53, v69);
      *(v56 + 14) = -v62;
      _os_log_impl(&dword_0, v54, v55, "%{public}s (sharedCoredataInit) container.loadPersistentStores completed in %f seconds.", v56, 0x16u);
      sub_3B14(v67);
    }

    else
    {

      (*(v52 + 8))(v53, v9);
      (*(v15 + 8))(v51, v40);
    }
  }
}

void sub_B848(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_B904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreDataStackShared()
{
  result = qword_1CDD0;
  if (!qword_1CDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA1C()
{
  result = sub_11150();
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

uint64_t sub_BAC4()
{
  v1 = sub_11150();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_11110();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_BC20(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_11150() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_11110() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_B130(a1, a2, (v2 + v6), v9, v10);
}

uint64_t sub_BD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_BD2C()
{
  result = qword_1CDE0;
  if (!qword_1CDE0)
  {
    sub_11150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CDE0);
  }

  return result;
}

unint64_t sub_BD84()
{
  result = qword_1CD00;
  if (!qword_1CD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CD00);
  }

  return result;
}

uint64_t sub_BE58(uint64_t a1, const char *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = v5;
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v9 = sub_113E0();
  sub_1898(v9, qword_1CDE8);
  v10 = v4;
  v11 = sub_113C0();
  v12 = sub_115D0();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = a2;
    v13 = swift_slowAlloc();
    v21 = a4;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    sub_11150();
    sub_F570(&qword_1CDE0, &type metadata accessor for UUID);
    v15 = sub_117A0();
    v17 = sub_483C(v15, v16, &v23);

    *(v13 + 4) = v17;
    v8 = v5;
    _os_log_impl(&dword_0, v11, v12, v20, v13, 0xCu);
    sub_3B14(v14);
    a4 = v21;
  }

  __chkstk_darwin(v18);
  sub_3610(a3, a4);
  result = sub_11670();
  if (!v8)
  {
    return v23;
  }

  return result;
}

uint64_t sub_C0A4()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CDE8);
  v1 = sub_1898(v0, qword_1CDE8);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_C16C(void *a1@<X1>, unint64_t *a2@<X8>)
{
  sub_11180();
  v5 = sub_11160();
  v6 = sub_11170();
  [v5 setPredicate:v6];

  v7 = sub_11690();
  if (v2)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v8 = sub_113E0();
    sub_1898(v8, qword_1CDE8);
    v9 = a1;
    swift_errorRetain();
    v10 = sub_113C0();
    v11 = sub_115C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = v5;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v12 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID);
      v15 = sub_117A0();
      v17 = sub_483C(v15, v16, &v32);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_0, v10, v11, "%{public}s (getUnuploadedAssets) Unable to get un-uploaded assets: %@", v12, 0x16u);
      sub_394C(v13, &qword_1CC20, &qword_12690);
      v5 = v30;

      sub_3B14(v14);
    }

    swift_willThrow();
  }

  else
  {
    v19 = v7;
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v20 = sub_113E0();
    sub_1898(v20, qword_1CDE8);
    swift_bridgeObjectRetain_n();
    v21 = a1;
    v22 = sub_113C0();
    v23 = sub_115D0();

    if (os_log_type_enabled(v22, v23))
    {
      v31 = v5;
      v24 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v24 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID);
      v25 = sub_117A0();
      v27 = sub_483C(v25, v26, &v32);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      if (v19 >> 62)
      {
        v28 = sub_11770();
      }

      else
      {
        v28 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      *(v24 + 14) = v28;

      _os_log_impl(&dword_0, v22, v23, "%{public}s (getUnuploadedAssets) fetched un-uploaded assets:%ld", v24, 0x16u);
      sub_3B14(v29);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *a2 = v19;
  }
}

void sub_C5F8(void *a1@<X1>, unint64_t *a2@<X8>)
{
  sub_111C0();
  v5 = sub_111B0();
  sub_3610(&qword_1CE38, &qword_128F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_12830;
  sub_6C3C(0, &qword_1CE40, NSPredicate_ptr);
  *(v6 + 32) = sub_11570();
  *(v6 + 40) = sub_11580();
  isa = sub_114F0().super.isa;

  v8 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v5 setPredicate:v8];
  v9 = sub_11690();
  if (v2)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v10 = sub_113E0();
    sub_1898(v10, qword_1CDE8);
    v11 = a1;
    swift_errorRetain();
    v12 = sub_113C0();
    v13 = sub_115C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v32 = v5;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v14 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID);
      v17 = sub_117A0();
      v19 = sub_483C(v17, v18, &v34);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_0, v12, v13, "%{public}s (getUnuploadedAttachments) Unable to get un-uploaded attachments: %@", v14, 0x16u);
      sub_394C(v15, &qword_1CC20, &qword_12690);
      v5 = v32;

      sub_3B14(v16);
    }

    swift_willThrow();
  }

  else
  {
    v21 = v9;
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v22 = sub_113E0();
    sub_1898(v22, qword_1CDE8);
    swift_bridgeObjectRetain_n();
    v23 = a1;
    v24 = sub_113C0();
    v25 = sub_115D0();

    if (os_log_type_enabled(v24, v25))
    {
      v33 = v5;
      v26 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v26 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID);
      v27 = sub_117A0();
      v29 = sub_483C(v27, v28, &v34);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2048;
      if (v21 >> 62)
      {
        v30 = sub_11770();
      }

      else
      {
        v30 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      }

      *(v26 + 14) = v30;

      _os_log_impl(&dword_0, v24, v25, "%{public}s (getUnuploadedAttachments) fetched un-uploaded attachments:%ld", v26, 0x16u);
      sub_3B14(v31);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *a2 = v21;
  }
}

void *sub_CBB0(void *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  v6 = a3();
  sub_3610(&qword_1CE38, &qword_128F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_12840;
  sub_6C3C(0, &qword_1CE40, NSPredicate_ptr);
  *(v7 + 32) = sub_11560();
  isa = sub_114F0().super.isa;

  v9 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v6 setPredicate:v9];
  v10 = a1;
  v11 = sub_11690();
  if (!v3)
  {
    v12 = v11;
    swift_getKeyPath();
    if (v12 >> 62)
    {
LABEL_22:
      v13 = sub_11770();
      v20 = v6;
      if (v13)
      {
LABEL_5:
        v14 = 0;
        v6 = (v12 & 0xC000000000000001);
        v10 = &_swiftEmptyArrayStorage;
        do
        {
          v15 = v14;
          while (1)
          {
            if (v6)
            {
              v16 = sub_11730();
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v15 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_21;
              }

              v16 = *(v12 + 8 * v15 + 32);
              v14 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            v17 = v16;
            swift_getAtKeyPath();

            if (v21)
            {
              break;
            }

            ++v15;
            if (v14 == v13)
            {
              goto LABEL_24;
            }
          }

          sub_114E0();
          if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v18 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
            sub_11520();
          }

          sub_11530();
          v10 = &_swiftEmptyArrayStorage;
        }

        while (v14 != v13);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      v20 = v6;
      if (v13)
      {
        goto LABEL_5;
      }
    }

    v10 = &_swiftEmptyArrayStorage;
LABEL_24:

    return v10;
  }

  return v10;
}

NSObject *sub_CE64(uint64_t a1, uint64_t a2, void *a3)
{
  v188 = a1;
  v4 = sub_11150();
  v181 = *(v4 - 8);
  v182 = v4;
  v5 = *(v181 + 64);
  __chkstk_darwin(v4);
  v176 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3610(&qword_1CE18, &qword_12858);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v179 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v180 = &v173 - v11;
  v12 = sub_3610(&qword_1CE20, &qword_12860);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v183 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v173 - v17;
  v19 = __chkstk_darwin(v16);
  v177 = (&v173 - v20);
  __chkstk_darwin(v19);
  v178 = &v173 - v21;
  v22 = sub_110B0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v187 = (&v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = &v173 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v173 - v31;
  __chkstk_darwin(v30);
  v34 = &v173 - v33;
  sub_11180();
  sub_F570(&qword_1CE28, &type metadata accessor for JournalEntryAssetMO);
  v35 = sub_11240();
  if (!v35)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v64 = sub_113E0();
    sub_1898(v64, qword_1CDE8);
    v65 = a3;
    v66 = sub_113C0();
    v67 = sub_115B0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v193 = v69;
      *v68 = 136315138;
      v70 = [v65 debugDescription];
      v71 = sub_11480();
      v73 = v72;

      v74 = sub_483C(v71, v73, &v193);

      *(v68 + 4) = v74;
      _os_log_impl(&dword_0, v66, v67, "Failed to create partial record for asset: %s", v68, 0xCu);
      sub_3B14(v69);
    }

    goto LABEL_16;
  }

  v36 = v35;
  v175 = v18;
  v190 = v34;
  v191 = v22;
  v37 = sub_11120();
  v39 = v38;
  sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
  v40 = sub_11340();
  v192 = a3;
  v41 = v40;
  v42 = [v40 zoneID];

  v43 = v192;
  v196._countAndFlagsBits = v37;
  v196._object = v39;
  v44.super.isa = v42;
  isa = sub_11540(v196, v44).super.isa;
  [objc_allocWithZone(CKReference) initWithRecordID:isa action:1];

  v189 = v36;
  sub_116D0();
  v46 = [v43 assetMetaData];
  if (!v46)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v75 = sub_113E0();
    sub_1898(v75, qword_1CDE8);
    v76 = v43;
    v77 = sub_113C0();
    v78 = sub_115B0();

    v79 = os_log_type_enabled(v77, v78);
    v66 = v189;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v193 = v81;
      *v80 = 136315138;
      v82 = [v76 debugDescription];
      v83 = sub_11480();
      v85 = v84;

      v86 = sub_483C(v83, v85, &v193);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_0, v77, v78, "Missing assetMetadata for asset id %s", v80, 0xCu);
      sub_3B14(v81);
    }

LABEL_16:
    return 0;
  }

  v47 = v46;
  v185 = sub_110C0();
  v186 = v48;

  v49 = sub_11120();
  v51 = v50;
  type metadata accessor for CloudKitStackShared();
  sub_30EC(v32);
  *&v193 = 0;
  *(&v193 + 1) = 0xE000000000000000;
  sub_11720(16);

  *&v193 = v49;
  *(&v193 + 1) = v51;
  v197._countAndFlagsBits = 0x654D74657373612DLL;
  v197._object = 0xEE00617461646174;
  sub_114B0(v197);
  v52 = v190;
  sub_11080();

  v53 = *(v23 + 8);
  v54 = v191;
  v188 = v23 + 8;
  v184 = v53;
  v53(v32, v191);
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v55 = sub_113E0();
  sub_1898(v55, qword_1CDE8);
  (*(v23 + 16))(v29, v52, v54);
  v56 = sub_113C0();
  v57 = sub_115A0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v193 = v59;
    *v58 = 136315138;
    sub_F570(&qword_1CE10, &type metadata accessor for URL);
    v60 = sub_117A0();
    v62 = v61;
    v184(v29, v191);
    v63 = sub_483C(v60, v62, &v193);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_0, v56, v57, "Saving assetMetadata to url: %s", v58, 0xCu);
    sub_3B14(v59);
    v43 = v192;
  }

  else
  {

    v184(v29, v54);
  }

  sub_110D0();
  v89 = objc_allocWithZone(CKAsset);
  sub_11070(v90);
  v92 = v91;
  v93 = [v89 initWithFileURL:v91];

  v94 = v93;
  v95 = v189;
  sub_116D0();

  v96 = [v95 encryptedValues];
  v97 = [v43 title];
  if (v97)
  {
    v98 = v97;
    v99 = sub_110C0();
    v101 = v100;

    v102 = &protocol witness table for Data;
    v103 = &type metadata for Data;
  }

  else
  {
    v99 = 0;
    v101 = 0;
    v103 = 0;
    v102 = 0;
    *&v194 = 0;
  }

  v104 = v179;
  *&v193 = v99;
  *(&v193 + 1) = v101;
  *(&v194 + 1) = v103;
  v195 = v102;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v105 = [v95 encryptedValues];
  v106 = [v43 assetType];
  if (v106)
  {
    v107 = v106;
    v108 = sub_11480();
    v110 = v109;

    v111 = &protocol witness table for String;
    v112 = &type metadata for String;
  }

  else
  {
    v108 = 0;
    v110 = 0;
    v112 = 0;
    v111 = 0;
    *&v194 = 0;
  }

  v113 = v177;
  *&v193 = v108;
  *(&v193 + 1) = v110;
  *(&v194 + 1) = v112;
  v195 = v111;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v114 = [v95 encryptedValues];
  v115 = [v43 createdDate];
  if (v115)
  {
    v116 = v115;
    sub_110F0();

    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v118 = sub_11110();
  v119 = *(v118 - 8);
  v120 = v119;
  v187 = *(v119 + 56);
  v179 = (v119 + 56);
  v187(v113, v117, 1, v118);
  v121 = v178;
  sub_F2F8(v113, v178, &qword_1CE20, &qword_12860);
  v177 = *(v120 + 48);
  v122 = v177(v121, 1, v118);
  v174 = v120;
  if (v122 == 1)
  {
    sub_394C(v121, &qword_1CE20, &qword_12860);
    v193 = 0u;
    v194 = 0u;
    v195 = 0;
  }

  else
  {
    *(&v194 + 1) = v118;
    v195 = &protocol witness table for Date;
    v123 = sub_F360(&v193);
    (*(v120 + 32))(v123, v121, v118);
  }

  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v124 = [v95 encryptedValues];
  swift_getObjectType();
  v125 = [v192 minimumSupportedAppVersion];
  *(&v194 + 1) = &type metadata for Int16;
  v195 = &protocol witness table for Int16;
  LOWORD(v193) = v125;
  v87 = v189;
  sub_116A0();
  swift_unknownObjectRelease();
  [v87 encryptedValues];
  sub_6C3C(0, &qword_1CE30, NSManagedObjectModel_ptr);
  v126 = sub_11640();
  v127 = sub_11630();
  v129 = v128;

  if (v129)
  {
    v130 = &protocol witness table for String;
    v131 = &type metadata for String;
  }

  else
  {
    v127 = 0;
    v131 = 0;
    v130 = 0;
    *&v194 = 0;
  }

  *&v193 = v127;
  *(&v193 + 1) = v129;
  *(&v194 + 1) = v131;
  v195 = v130;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v132 = [v87 encryptedValues];
  v133 = [v192 source];
  if (v133)
  {
    v134 = v133;
    v135 = sub_11480();
    v137 = v136;

    v138 = &protocol witness table for String;
    v139 = &type metadata for String;
  }

  else
  {
    v135 = 0;
    v137 = 0;
    v139 = 0;
    v138 = 0;
    *&v194 = 0;
  }

  v140 = v180;
  *&v193 = v135;
  *(&v193 + 1) = v137;
  *(&v194 + 1) = v139;
  v195 = v138;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  [v87 encryptedValues];
  v141 = [v192 suggestionId];
  if (v141)
  {
    v142 = v141;
    sub_11130();

    v143 = 0;
  }

  else
  {
    v143 = 1;
  }

  v144 = v181;
  v145 = v182;
  (*(v181 + 56))(v104, v143, 1, v182);
  sub_F2F8(v104, v140, &qword_1CE18, &qword_12858);
  if ((*(v144 + 48))(v140, 1, v145))
  {
    sub_394C(v140, &qword_1CE18, &qword_12858);
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    *&v194 = 0;
  }

  else
  {
    v150 = v176;
    (*(v144 + 16))(v176, v140, v145);
    sub_394C(v140, &qword_1CE18, &qword_12858);
    v151 = v144;
    v148 = sub_11120();
    v149 = v152;
    (*(v151 + 8))(v150, v145);
    v147 = &protocol witness table for String;
    v146 = &type metadata for String;
  }

  *(&v194 + 1) = v146;
  v195 = v147;
  *&v193 = v148;
  *(&v193 + 1) = v149;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v153 = [v87 encryptedValues];
  v154 = [v192 suggestionDate];
  if (v154)
  {
    v155 = v183;
    v156 = v154;
    sub_110F0();

    v157 = 0;
  }

  else
  {
    v157 = 1;
    v155 = v183;
  }

  v187(v155, v157, 1, v118);
  v158 = v175;
  sub_F2F8(v155, v175, &qword_1CE20, &qword_12860);
  if (v177(v158, 1, v118) == 1)
  {
    sub_394C(v158, &qword_1CE20, &qword_12860);
    v193 = 0u;
    v194 = 0u;
    v195 = 0;
  }

  else
  {
    *(&v194 + 1) = v118;
    v195 = &protocol witness table for Date;
    v159 = sub_F360(&v193);
    (*(v174 + 32))(v159, v158, v118);
  }

  v160 = v190;
  v161 = v192;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v162 = [v87 encryptedValues];
  swift_getObjectType();
  v163 = [v161 isSlim];
  *(&v194 + 1) = &type metadata for Bool;
  v195 = &protocol witness table for Bool;
  LOBYTE(v193) = v163;
  sub_116A0();
  swift_unknownObjectRelease();
  v164 = [v87 encryptedValues];
  v165 = [v161 osVersion];
  if (v165)
  {
    v166 = v165;
    v167 = sub_11480();
    v169 = v168;

    v170 = &protocol witness table for String;
    v171 = &type metadata for String;
  }

  else
  {
    v167 = 0;
    v169 = 0;
    v171 = 0;
    v170 = 0;
    *&v194 = 0;
  }

  v172 = v191;
  *&v193 = v167;
  *(&v193 + 1) = v169;
  *(&v194 + 1) = v171;
  v195 = v170;
  swift_getObjectType();
  sub_116A0();
  sub_F2A4(v185, v186);
  swift_unknownObjectRelease();
  v184(v160, v172);
  return v87;
}

NSObject *sub_E3C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_11040();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_110B0();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v98 - v15;
  __chkstk_darwin(v14);
  v18 = &v98 - v17;
  sub_111C0();
  sub_F570(&qword_1CE00, &type metadata accessor for JournalEntryAssetFileAttachmentMO);
  v19 = sub_11240();
  if (!v19)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v38 = sub_113E0();
    sub_1898(v38, qword_1CDE8);
    v39 = a3;
    v20 = sub_113C0();
    v40 = sub_115B0();

    if (os_log_type_enabled(v20, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v39;
      *v42 = v39;
      v43 = v39;
      _os_log_impl(&dword_0, v20, v40, "Failed to create partial record for the attachment: %@", v41, 0xCu);
      sub_394C(v42, &qword_1CC20, &qword_12690);
    }

    goto LABEL_27;
  }

  v20 = v19;
  v101 = v5;
  v102 = v4;
  v100 = v13;
  v103 = v18;
  v21 = sub_11120();
  v23 = v22;
  sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
  v24 = sub_11340();
  v25 = [v24 zoneID];

  v112._countAndFlagsBits = v21;
  v112._object = v23;
  v26.super.isa = v25;
  isa = sub_11540(v112, v26).super.isa;
  [objc_allocWithZone(CKReference) initWithRecordID:isa action:1];

  sub_116D0();
  v28 = [v20 encryptedValues];
  swift_getObjectType();
  v29 = [a3 index];
  v110 = &type metadata for Int16;
  v111 = &protocol witness table for Int16;
  LOWORD(v107) = v29;
  sub_116A0();
  swift_unknownObjectRelease();
  v30 = [v20 encryptedValues];
  v31 = [a3 name];
  if (v31)
  {
    v32 = v31;
    v33 = sub_11480();
    v35 = v34;

    v36 = &protocol witness table for String;
    v37 = &type metadata for String;
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    v109 = 0;
  }

  v107 = v33;
  v108 = v35;
  v110 = v37;
  v111 = v36;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v44 = [a3 filePath];
  v45 = v103;
  if (!v44)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v68 = sub_113E0();
    sub_1898(v68, qword_1CDE8);
    v69 = a3;
    v70 = sub_113C0();
    v71 = sub_115B0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v106 = v73;
      *v72 = 136315138;
      v74 = [v69 filePath];
      if (v74)
      {
        v75 = v74;
        v76 = sub_11480();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      v107 = v76;
      v108 = v78;
      sub_3610(&qword_1CE08, &qword_12850);
      v94 = sub_11490();
      v96 = sub_483C(v94, v95, &v106);

      *(v72 + 4) = v96;
      _os_log_impl(&dword_0, v70, v71, "Unable to get attachment url: %s", v72, 0xCu);
      sub_3B14(v73);
    }

LABEL_27:
    return 0;
  }

  v46 = v44;
  v47 = sub_11480();
  v49 = v48;

  if (qword_1C930 != -1)
  {
    swift_once();
  }

  v50 = sub_11310();
  sub_1898(v50, qword_1CE88);
  sub_112C0();
  v107 = v47;
  v108 = v49;
  v51 = v101;
  v52 = *(v101 + 104);
  v99 = v47;
  v53 = v102;
  v52(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v102);
  sub_3658();
  sub_110A0();
  (*(v51 + 8))(v8, v53);
  v54 = v104;
  v55 = *(v104 + 8);
  v56 = v16;
  v57 = v105;
  v55(v56, v105);
  v58 = [objc_opt_self() defaultManager];
  sub_11090();
  v59 = sub_11450();

  v60 = [v58 fileExistsAtPath:v59];

  if ((v60 & 1) == 0)
  {
    v102 = v55;

    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v79 = sub_113E0();
    sub_1898(v79, qword_1CDE8);
    v80 = v100;
    (*(v54 + 16))(v100, v45, v57);
    v81 = v45;
    v82 = sub_113C0();
    v83 = sub_115B0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v57;
      v86 = swift_slowAlloc();
      v107 = v86;
      *v84 = 136315138;
      sub_F570(&qword_1CE10, &type metadata accessor for URL);
      v87 = sub_117A0();
      v89 = v88;
      v90 = v80;
      v91 = v102;
      v102(v90, v85);
      v92 = sub_483C(v87, v89, &v107);

      *(v84 + 4) = v92;
      _os_log_impl(&dword_0, v82, v83, "File attachment file does not exist: %s", v84, 0xCu);
      sub_3B14(v86);

      v91(v103, v85);
    }

    else
    {

      v93 = v102;
      v102(v80, v57);
      v93(v81, v57);
    }

    return 0;
  }

  v61 = objc_allocWithZone(CKAsset);
  sub_11070(v62);
  v64 = v63;
  v65 = [v61 initWithFileURL:v63];

  v66 = v65;
  sub_116D0();
  v67 = [v20 encryptedValues];
  swift_getObjectType();
  v110 = &type metadata for String;
  v111 = &protocol witness table for String;
  v107 = v99;
  v108 = v49;
  sub_116A0();

  swift_unknownObjectRelease();
  v55(v45, v57);
  return v20;
}

SEL *sub_EE5C(unint64_t a1, SEL *a2, uint64_t (*a3)(char *, char *, void *), char *a4)
{
  v43 = a3;
  v45 = sub_11150();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v45);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v46 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v14 = sub_11770();
    v38 = a4;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v38 = a4;
    if (v14)
    {
LABEL_3:
      if (v14 >= 1)
      {
        v44 = v11;
        v15 = 0;
        v16 = a1 & 0xC000000000000001;
        v17 = (v7 + 8);
        v40 = a2;
        v41 = &_swiftEmptyArrayStorage;
        v39 = a1;
        v42 = a1 & 0xC000000000000001;
        while (1)
        {
          if (v16)
          {
            v18 = sub_11730();
          }

          else
          {
            v18 = *(a1 + 8 * v15 + 32);
          }

          v19 = v18;
          v20 = [v18 id];
          if (v20)
          {
            v21 = v20;
            sub_11130();

            v22 = [v19 *a2];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 id];
              if (v24)
              {
                v25 = a2;
                v26 = v44;
                v27 = v24;
                sub_11130();

                v28 = v43(v13, v26, v19);
                if (v28)
                {
                  v29 = v28;
                  sub_114E0();
                  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_11520();
                  }

                  sub_11530();

                  v30 = *v17;
                  v31 = v45;
                  (*v17)(v44, v45);
                  v30(v13, v31);
                  v41 = v46;
                  a1 = v39;
                  a2 = v40;
                  v16 = v42;
                }

                else
                {

                  v32 = *v17;
                  v33 = v45;
                  (*v17)(v26, v45);
                  v32(v13, v33);
                  a2 = v25;
                  v16 = v42;
                }

                goto LABEL_7;
              }

              (*v17)(v13, v45);
            }

            else
            {
              (*v17)(v13, v45);
            }
          }

LABEL_7:
          if (v14 == ++v15)
          {
            goto LABEL_22;
          }
        }
      }

      __break(1u);
LABEL_31:
      v35 = sub_11770();
      goto LABEL_27;
    }
  }

  v41 = &_swiftEmptyArrayStorage;
LABEL_22:
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v34 = sub_113E0();
  sub_1898(v34, qword_1CDE8);
  a2 = v41;

  a4 = sub_113C0();
  LOBYTE(v7) = sub_11590();
  if (!os_log_type_enabled(a4, v7))
  {

    goto LABEL_29;
  }

  v11 = swift_slowAlloc();
  *v11 = 134217984;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v35 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_27:
  *(v11 + 4) = v35;

  _os_log_impl(&dword_0, a4, v7, v38, v11, 0xCu);

LABEL_29:

  return a2;
}

uint64_t sub_F2A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_F2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3610(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_F360(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F4E4@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X3>, unint64_t *a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  a2(0);
  sub_F570(a3, a4);
  result = sub_11250();
  *a5 = result;
  return result;
}

uint64_t sub_F570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F5D4(char a1)
{
  if (qword_1C988 != -1)
  {
    swift_once();
  }

  v3 = sub_113E0();
  sub_1898(v3, qword_1CE58);
  v4 = v1;
  v5 = sub_113C0();
  v6 = sub_115D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136446466;
    sub_11150();
    sub_BD2C();
    v8 = sub_117A0();
    v10 = sub_483C(v8, v9, &v26);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x6465636E7973;
      }

      else
      {
        v11 = 0x6465636E79736E75;
      }

      if (a1 == 1)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7958113;
    }

    v13 = sub_483C(v11, v12, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_0, v5, v6, "%{public}s (haveData) type:%s started", v7, 0x16u);
    swift_arrayDestroy();
  }

  v26 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1057C();
    v14 = sub_11550();
    sub_114E0();
    if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v24 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      sub_11520();
    }

    sub_11530();
  }

  sub_1057C();
  sub_11550();
  sub_114E0();
  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v23 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    sub_11520();
  }

  sub_11530();
  sub_111F0();
  v15 = sub_111E0();
  isa = sub_114F0().super.isa;
  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v15 setPredicate:v17];
  sub_11180();
  v18 = sub_11160();
  sub_111C0();
  v19 = sub_111B0();
  v20 = v19;
  if (a1)
  {
    v21 = sub_11550();
    [v18 setPredicate:v21];
    [v20 setPredicate:v21];
  }

  __chkstk_darwin(v19);
  sub_11670();

  return v25;
}

uint64_t sub_FA94()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CE58);
  v1 = sub_1898(v0, qword_1CE58);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_FB5C(void *a1@<X2>, char a2@<W3>, char *a3@<X8>)
{
  sub_111F0();
  v6 = sub_11680();
  if (!v3)
  {
    v18 = v6;
    if (qword_1C988 != -1)
    {
      swift_once();
    }

    v19 = sub_113E0();
    sub_1898(v19, qword_1CE58);
    v20 = a1;
    v21 = sub_113C0();
    v22 = sub_115D0();

    if (os_log_type_enabled(v21, v22))
    {
      v67 = a3;
      v23 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v23 = 136446722;
      sub_11150();
      sub_BD2C();
      v24 = sub_117A0();
      v26 = sub_483C(v24, v25, &v71);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      if (a2)
      {
        if (a2 == 1)
        {
          v27 = 0x6465636E7973;
        }

        else
        {
          v27 = 0x6465636E79736E75;
        }

        if (a2 == 1)
        {
          v28 = 0xE600000000000000;
        }

        else
        {
          v28 = 0xE800000000000000;
        }
      }

      else
      {
        v27 = 7958113;
        v28 = 0xE300000000000000;
      }

      v32 = sub_483C(v27, v28, &v71);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2048;
      *(v23 + 24) = v18;
      _os_log_impl(&dword_0, v21, v22, "%{public}s (haveData) type:%s Synced entries:%ld", v23, 0x20u);
      swift_arrayDestroy();

      a3 = v67;
      if (v18)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_41;
      }
    }

    sub_11180();
    v33 = sub_11680();
    v34 = v20;
    v35 = sub_113C0();
    v36 = sub_115D0();

    if (os_log_type_enabled(v35, v36))
    {
      v68 = a3;
      v37 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v37 = 136446722;
      sub_11150();
      sub_BD2C();
      v38 = sub_117A0();
      v40 = sub_483C(v38, v39, &v71);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      if (a2)
      {
        if (a2 == 1)
        {
          v41 = 0x6465636E7973;
        }

        else
        {
          v41 = 0x6465636E79736E75;
        }

        if (a2 == 1)
        {
          v42 = 0xE600000000000000;
        }

        else
        {
          v42 = 0xE800000000000000;
        }
      }

      else
      {
        v41 = 7958113;
        v42 = 0xE300000000000000;
      }

      v43 = sub_483C(v41, v42, &v71);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2048;
      *(v37 + 24) = v33;
      _os_log_impl(&dword_0, v35, v36, "%{public}s (haveData) type:%s Synced assets:%ld", v37, 0x20u);
      swift_arrayDestroy();

      a3 = v68;
    }

    else
    {
    }

    if (!v33)
    {
      sub_111C0();
      v44 = sub_11680();
      v45 = v34;
      v46 = sub_113C0();
      v47 = sub_115D0();

      if (os_log_type_enabled(v46, v47))
      {
        v69 = a3;
        v48 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v48 = 136446722;
        sub_11150();
        sub_BD2C();
        v49 = sub_117A0();
        v51 = sub_483C(v49, v50, &v71);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        if (a2)
        {
          if (a2 == 1)
          {
            v52 = 0xE600000000000000;
            v53 = 0x6465636E7973;
          }

          else
          {
            v52 = 0xE800000000000000;
            v53 = 0x6465636E79736E75;
          }
        }

        else
        {
          v53 = 7958113;
          v52 = 0xE300000000000000;
        }

        v54 = sub_483C(v53, v52, &v71);

        *(v48 + 14) = v54;
        *(v48 + 22) = 2048;
        *(v48 + 24) = v44;
        _os_log_impl(&dword_0, v46, v47, "%{public}s (haveData) type:%s Synced attachments:%ld", v48, 0x20u);
        swift_arrayDestroy();

        a3 = v69;
      }

      else
      {
      }

      if (v44)
      {
        v29 = 1;
      }

      else
      {
        v55 = v45;
        v56 = sub_113C0();
        v57 = sub_115D0();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = a3;
          v59 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v59 = 136446466;
          sub_11150();
          sub_BD2C();
          v60 = sub_117A0();
          v62 = sub_483C(v60, v61, &v71);

          *(v59 + 4) = v62;
          *(v59 + 12) = 2080;
          if (a2)
          {
            if (a2 == 1)
            {
              v63 = 0xE600000000000000;
              v64 = 0x6465636E7973;
            }

            else
            {
              v63 = 0xE800000000000000;
              v64 = 0x6465636E79736E75;
            }
          }

          else
          {
            v64 = 7958113;
            v63 = 0xE300000000000000;
          }

          v65 = sub_483C(v64, v63, &v71);

          *(v59 + 14) = v65;
          _os_log_impl(&dword_0, v56, v57, "%{public}s (haveData) type:%s No sync data found", v59, 0x16u);
          swift_arrayDestroy();

          v29 = 0;
          a3 = v58;
        }

        else
        {

          v29 = 0;
        }
      }

      goto LABEL_42;
    }

LABEL_41:
    v29 = 1;
    goto LABEL_42;
  }

  if (qword_1C988 != -1)
  {
    swift_once();
  }

  v7 = sub_113E0();
  sub_1898(v7, qword_1CE58);
  v8 = a1;
  swift_errorRetain();
  v9 = sub_113C0();
  v10 = sub_115C0();

  if (os_log_type_enabled(v9, v10))
  {
    v66 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v11 = 136446722;
    sub_11150();
    sub_BD2C();
    v13 = sub_117A0();
    v15 = sub_483C(v13, v14, &v71);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (a2)
    {
      if (a2 == 1)
      {
        v16 = 0x6465636E7973;
      }

      else
      {
        v16 = 0x6465636E79736E75;
      }

      if (a2 == 1)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }
    }

    else
    {
      v16 = 7958113;
      v17 = 0xE300000000000000;
    }

    v30 = sub_483C(v16, v17, &v71);

    *(v11 + 14) = v30;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v31;
    *v12 = v31;
    _os_log_impl(&dword_0, v9, v10, "%{public}s (haveData) type:%s Unable to get count: %@", v11, 0x20u);
    sub_6A70(v12);

    swift_arrayDestroy();

    v29 = 0;
    a3 = v66;
  }

  else
  {

    v29 = 0;
  }

LABEL_42:
  *a3 = v29;
}

unint64_t sub_1057C()
{
  result = qword_1CE40;
  if (!qword_1CE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CE40);
  }

  return result;
}

void sub_105C8(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_FB5C(*(v1 + 32), *(v1 + 40), a1);
}

id sub_105F0(uint64_t a1, unsigned __int8 a2)
{
  sub_6C3C(0, &qword_1CE30, NSManagedObjectModel_ptr);
  v4 = sub_11640();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = sub_11450();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_10BD4(a1, a2);
  sub_3610(&qword_1CE38, &qword_128F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_12840;
  *(v9 + 32) = v8;
  sub_6C3C(0, &qword_1CE70, NSPersistentStoreDescription_ptr);
  v10 = v8;
  isa = sub_114F0().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v12 = sub_113E0();
  sub_1898(v12, qword_1CEC0);
  v13 = v7;
  v14 = sub_113C0();
  v15 = sub_115D0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = sub_11480();
    v20 = v19;

    v21 = sub_483C(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    sub_11500();

    v23 = sub_11510();
    v25 = v24;

    v26 = sub_483C(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_0, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

Swift::Int sub_10928()
{
  v1 = *v0;
  sub_117D0();
  sub_117E0(v1);
  return sub_117F0();
}

Swift::Int sub_1099C()
{
  v1 = *v0;
  sub_117D0();
  sub_117E0(v1);
  return sub_117F0();
}

uint64_t sub_109E0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_110B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v9 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v9 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v10 = 0xEF676E6967617473;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (qword_1C930 != -1)
    {
      swift_once();
    }

    v11 = sub_11310();
    sub_1898(v11, qword_1CE88);
    sub_11290();
    v13[0] = v9;
    v13[1] = v10;
    v15._countAndFlagsBits = 0x6574696C71732ELL;
    v15._object = 0xE700000000000000;
    sub_114B0(v15);
    sub_11080();

    return (*(v5 + 8))(v8, v4);
  }
}

id sub_10BD4(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_110B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_109E0(v7, a2);
  v10 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_11070(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12];

  [v14 setShouldInferMappingModelAutomatically:1];
  [v14 setShouldMigrateStoreAutomatically:1];
  [v14 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_6C3C(0, &qword_1CE78, NSNumber_ptr);
  isa = sub_116E0(1).super.super.isa;
  [v14 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v16 = sub_116E0(1).super.super.isa;
  [v14 setOption:v16 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v9, v4);
  return v14;
}

uint64_t sub_10DA8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreDataStackConfiguration.Environment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDataStackConfiguration.Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10FCC()
{
  result = qword_1CE80;
  if (!qword_1CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE80);
  }

  return result;
}